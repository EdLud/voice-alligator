/// @file
/// @ingroup     voice-alligator
/// @copyright   Copyright 2024 Edis Ludwig. All rights reserved.

#include "c74_min.h"
#include <vector>
#include <algorithm>
#include <cmath>
#include <random>
#include <unordered_map>
#include <unordered_set>
#include <string>
#include <chrono>
#include <set>
#include <limits>

using namespace c74::min;

// ─── Timing ──────────────────────────────────────────────────────────────────

static double getTimeMs() {
    using clk = std::chrono::steady_clock;
    using ms  = std::chrono::duration<double, std::milli>;
    return ms(clk::now().time_since_epoch()).count();
}

// ─── Event ───────────────────────────────────────────────────────────────────

struct LoopEvent {
    double time   { 0.0 };
    int    target { 0 };
    double freq   { 0.0 };
    double vel    { 0.0 };   // 0 = note-off
    bool   glide  { false };
    int    idx    { 0 };     // global recording order for stable sort
};

// ─── Looper ──────────────────────────────────────────────────────────────────

class voice_alligator_looper : public object<voice_alligator_looper> {
public:
    MIN_DESCRIPTION { "Note looper for voice-alligator" };
    MIN_TAGS        { "voice-alligator, looper" };
    MIN_AUTHOR      { "Edis Ludwig" };
    MIN_RELATED     { "voice-alligator" };
    MIN_FLAGS       { documentation_flags::do_not_generate };

    inlet<>  in1  { this, "(list) voice-alligator output + commands" };
    inlet<>  in2  { this, "(list) aux input for parameter recording" };
    outlet<> out1 { this, "voice-alligator input" };
    outlet<> out2 { this, "aux output" };
    outlet<> out3 { this, "notifications" };

    // ── Stream argument ──────────────────────────────────────────────────

    argument<int> stream_arg { this, "stream", description{"stream to output to (default 2)"},
        MIN_ARGUMENT_FUNCTION {
            m_stream = int(arg);
        }
    };

    // ── Attributes ───────────────────────────────────────────────────────

    attribute<bool> debug { this, "debug", false,
        description { "Print event-level debug info to the Max console (default false)" }
    };

    attribute<double> speed { this, "speed", 1.0,
        description { "Playback speed as ratio (default 1.0)" },
        setter { MIN_FUNCTION {
            if (bool(debug))
                cout << "speed = " << double(args[0]) << endl;
            return args;
        }}
    };

    attribute<bool> record_pressed { this, "record_pressed", true,
        description { "Inject currently pressed notes as note-ons at loop start when recording begins (default true)" }
    };

    attribute<bool> autoplay { this, "autoplay", true,
        description { "Start playback automatically when recording stops (default true)" }
    };

    attribute<bool> autostop_play { this, "autostop_play", false,
        description { "Stop playback when record is turned on (default false)" }
    };

    attribute<double> vol { this, "vol", 100.0,
        description { "Volume as percentage of recorded velocity (default 100)" }
    };

    attribute<int> volJitter { this, "volJitter", 0,
        description { "Volume jitter: randomly subtract 0..N% from velocity (default 0)" }
    };

    attribute<double> transpose_attr { this, "transpose", 0.0,
        description { "Transpose in semitones (default 0)" }
    };

    attribute<double> pitchJitter { this, "pitchJitter", 0.0,
        description { "Pitch jitter: randomly offset pitch by +/-N semitones (default 0)" }
    };

    attribute<bool> autoquantize { this, "autoquantize", false,
        description { "Auto-quantize on record stop or overdub loop wrap (default false)" }
    };

    attribute<bool> autotempo { this, "autotempo", true,
        description { "Auto-detect BPM for quantization; if false, use the bpm attribute (default true)" }
    };

    attribute<double> bpm { this, "bpm", 120.0,
        description { "BPM for quantization when autotempo is off (default 120)" }
    };

    // Setting this attribute during runtime triggers quantization with the given grid.
    // On object creation (before setup fires) it only stores the value.
    attribute<symbol> quantize { this, "quantize", "8n",
        description { "Quantization grid (e.g. 8n, 16n). Setting during runtime triggers quantization." },
        setter { MIN_FUNCTION {
            m_noteLen = std::string(static_cast<const char*>(symbol(args[0])));
            if (m_initialized && !m_events.empty())
                triggerQuantize();
            return args;
        }}
    };

    attribute<symbol> quantize_mode { this, "quantize_mode", "next",
        description { "'next': apply immediately, skip elapsed events; 'wrap': apply at next loop wrap" },
        setter { MIN_FUNCTION {
            m_quantize_mode = std::string(static_cast<const char*>(symbol(args[0])));
            return args;
        }}
    };

    // ── Setup — fires after object creation, marks initialization complete ─

    message<> m_setup_msg { this, "setup", MIN_FUNCTION {
        m_initialized = true;
        return {};
    }};

    // ── Messages ─────────────────────────────────────────────────────────

    message<> record_msg { this, "record", "record 1/0: start or stop recording",
        MIN_FUNCTION {
            int val = args.size() > 0 ? int(args[0]) : 1;
            if (val) startRecording(); else stopRecording();
            return {};
        }
    };

    message<> play_msg { this, "play", "play 1/0: start or stop playback",
        MIN_FUNCTION {
            int val = args.size() > 0 ? int(args[0]) : 1;
            if (val) startPlayback(); else stopPlayback();
            return {};
        }
    };

    message<> clear_msg { this, "clear", "clear the recorded loop",
        MIN_FUNCTION {
            stopPlayback();
            m_events.clear();
            m_pending_events.clear();
            m_has_pending      = false;
            m_loop_length      = 0.0;
            m_active_notes.clear();
            m_sounding.clear();
            m_overlap_targets.clear();
            m_pending_quantize = false;
            m_recording        = false;
            m_record_idx       = 0;
            resetOverdub();
            return {};
        }
    };

    // overdub [1/0] ["next"|"now"] [N|"inf"]
    message<> overdub_msg { this, "overdub", "overdub [1/0] [next|now] [N|inf]",
        MIN_FUNCTION {
            if (args.size() == 0) return {};
            int onoff = int(args[0]);

            if (onoff == 0) {
                mergeOverdubBuffer();
                setOverdubState(OD::OFF);
                out3.send("overdub", 0);
                return {};
            }

            std::string mode = "next";
            if (args.size() >= 2 && args[1].type() == message_type::symbol_argument)
                mode = std::string(static_cast<const char*>(symbol(args[1])));

            int loops = 0;
            if (args.size() >= 3) {
                if (args[2].type() == message_type::symbol_argument &&
                    std::string(static_cast<const char*>(symbol(args[2]))) == "inf")
                    loops = std::numeric_limits<int>::max();
                else
                    loops = int(args[2]);
            }

            m_overdub_loops  = loops;
            m_overdub_had_on = false;
            m_overdub_buf.clear();
            m_overdub_ignore.clear();

            if (mode == "now") {
                for (auto& [tgt, _] : m_active_notes)
                    m_overdub_ignore.insert(tgt);
                setOverdubState(OD::ACTIVE);
                out3.send("overdub", 1);
            } else {
                setOverdubState(OD::ARMED);
            }
            return {};
        }
    };

    // permutate [N]: N=0 shuffles all, N>0 does N random slot swaps
    message<> permutate_msg { this, "permutate", "permutate [N]: shuffle note positions",
        MIN_FUNCTION {
            int n = args.size() > 0 ? int(args[0]) : 0;
            doPermutate(n);
            return {};
        }
    };

    message<> list_msg { this, "list", "messages from voice-alligator",
        MIN_FUNCTION {
            if (inlet == 0) handleInlet0(args);
            // inlet 1: aux — not yet implemented
            return {};
        }
    };

private:
    enum class OD { OFF, ARMED, ACTIVE };

    // ── Core state ───────────────────────────────────────────────────────

    int    m_stream            { 2 };
    bool   m_recording         { false };
    bool   m_playing           { false };
    bool   m_initialized       { false };
    double m_record_start      { 0.0 };
    double m_loop_length       { 0.0 };
    bool   m_pending_quantize  { false };
    int    m_record_idx        { 0 };   // global monotonic event index

    std::string m_noteLen       { "8n" };
    std::string m_quantize_mode { "next" };

    std::vector<LoopEvent>            m_events;
    std::vector<LoopEvent>            m_pending_events;  // for "wrap" quantize mode
    bool                              m_has_pending { false };

    std::unordered_map<int,LoopEvent> m_active_notes;  // notes currently pressed by performer
    std::unordered_set<int>           m_sounding;        // targets sounding this loop iteration
    std::unordered_set<int>           m_overlap_targets; // held notes whose off is yet to be recorded

    std::size_t m_play_idx        { 0 };
    double      m_loop_start_time { 0.0 };

    // Overdub
    OD   m_overdub_state  { OD::OFF };
    int  m_overdub_loops  { 0 };       // remaining loop iterations; INT_MAX = infinite
    bool m_overdub_had_on { false };
    std::unordered_set<int> m_overdub_ignore;  // targets pressed before overdub started
    std::vector<LoopEvent>  m_overdub_buf;

    std::mt19937 m_rng { std::random_device{}() };

    // Playback timer
    timer<> m_timer { this, MIN_FUNCTION {
        tickPlayback();
        return {};
    }};

    // Deferred quantize timer — fires after playback has started
    timer<> m_quantize_timer { this, MIN_FUNCTION {
        applyDeferredQuantize();
        return {};
    }};

    // ── Overdub helpers ──────────────────────────────────────────────────

    void setOverdubState(OD s) { m_overdub_state = s; }

    void resetOverdub() {
        m_overdub_state  = OD::OFF;
        m_overdub_loops  = 0;
        m_overdub_had_on = false;
        m_overdub_buf.clear();
        m_overdub_ignore.clear();
    }

    void mergeOverdubBuffer() {
        if (m_overdub_buf.empty()) return;
        for (auto& e : m_overdub_buf)
            m_events.push_back(e);
        m_overdub_buf.clear();
        sortEvents();
    }

    // Called at every loop wrap. Returns true if overdub events were merged.
    bool onLoopWrapOverdub() {
        if (m_overdub_state == OD::OFF) return false;

        if (m_overdub_state == OD::ARMED) {
            // Activate on this wrap
            for (auto& [tgt, _] : m_active_notes)
                m_overdub_ignore.insert(tgt);
            setOverdubState(OD::ACTIVE);
            out3.send("overdub", 1);
            return false;
        }

        // ACTIVE: merge last iteration's buffer
        bool had_events = !m_overdub_buf.empty();
        mergeOverdubBuffer();

        if (m_overdub_had_on) {
            if (m_overdub_loops == std::numeric_limits<int>::max()) {
                m_overdub_had_on = false;  // infinite — keep going
            } else if (m_overdub_loops > 0) {
                m_overdub_loops--;
                m_overdub_had_on = false;
            } else {
                // Done
                setOverdubState(OD::OFF);
                m_overdub_had_on = false;
                out3.send("overdub", 0);
            }
        }
        // If !had_note_on: stay ACTIVE, keep listening

        return had_events;
    }

    // ── Recording ────────────────────────────────────────────────────────

    void startRecording() {
        if (m_recording) return;

        // Always stop playback before a new recording.  m_events will be cleared,
        // so leaving the old timer alive would fire newly-recorded events as playback,
        // creating orphan voices in va that m_sounding forgets on the next startPlayback().
        if (m_playing)
            stopPlayback();

        m_events.clear();
        m_pending_events.clear();
        m_has_pending = false;
        m_record_idx  = 0;
        m_sounding.clear();
        m_overlap_targets.clear();
        resetOverdub();

        if (bool(record_pressed)) {
            for (auto& [tgt, ev] : m_active_notes) {
                LoopEvent inj = ev;
                inj.time = 0.0;
                inj.idx  = m_record_idx++;
                m_events.push_back(inj);
            }
        }

        m_record_start     = getTimeMs();
        m_recording        = true;
        m_pending_quantize = false;

        if (bool(debug)) cout << "--- record START ---" << endl;
        out3.send("record", 1);
    }

    void stopRecording() {
        if (!m_recording) return;
        m_recording   = false;
        m_loop_length = getTimeMs() - m_record_start;

        closeOpenNotes();
        if (bool(debug)) {
            cout << "--- record STOP  loop_len=" << m_loop_length
                 << " events=" << m_events.size()
                 << " overlap=" << m_overlap_targets.size() << " ---" << endl;
            for (auto& ev : m_events)
                cout << "  [" << ev.idx << "] t=" << ev.time << " tgt=" << ev.target
                     << (ev.vel > 0 ? " ON" : " OFF")
                     << " freq=" << ev.freq << (ev.glide ? " glide" : "") << endl;
        }
        out3.send("record", 0);

        if (m_events.empty()) return;

        if (bool(autoplay)) {
            startPlayback();
            if (bool(autoquantize))
                m_quantize_timer.delay(1.0);  // deferred so playback starts first
        }
    }

    // Close unclosed note-ons when recording stops.
    // Notes still held by the player are left open so they can overlap the loop boundary;
    // their note-off will be recorded whenever the player releases.
    void closeOpenNotes() {
        std::unordered_map<int, double> open_freq;
        for (auto& e : m_events) {
            if (e.vel > 0.0 && !e.glide)
                open_freq[e.target] = e.freq;
            else if (e.vel == 0.0)
                open_freq.erase(e.target);
        }
        for (auto& [tgt, fr] : open_freq) {
            if (m_active_notes.count(tgt)) {
                // Player is still holding this note — let it overlap the loop boundary
                m_overlap_targets.insert(tgt);
            } else {
                // Released during recording but somehow unclosed — close at loop_length
                LoopEvent off;
                off.time   = m_loop_length;
                off.target = tgt;
                off.freq   = fr;
                off.vel    = 0.0;
                off.idx    = m_record_idx++;
                m_events.push_back(off);
            }
        }
    }

    // ── Inlet 0 ──────────────────────────────────────────────────────────

    void handleInlet0(const atoms& a) {
        int fi = -1;
        for (int i = 0; i < (int)a.size(); i++) {
            if (a[i].type() == message_type::symbol_argument &&
                std::string(static_cast<const char*>(symbol(a[i]))) == "flags") {
                fi = i; break;
            }
        }
        if (fi >= 0) parseVAMessage(a, fi);
    }

    void parseVAMessage(const atoms& a, int fi) {
        if ((int)a.size() < 2) return;
        if (fi == 1) return;              // flags-only — no note content
        if ((int)a.size() < fi + 5) return;

        int    target = int(a[0]);
        double freq   = double(a[1]);
        double vel    = double(a[2]);
        bool   glide  = int(a[fi + 1]) != 0;
        bool   seq    = int(a[fi + 4]) != 0;

        if (seq) return;  // already from a sequencer — ignore

        // Track active (pressed) notes
        if (vel > 0.0) {
            LoopEvent active;
            active.target = target; active.freq = freq;
            active.vel    = vel;    active.glide = glide;
            m_active_notes[target] = active;
        } else {
            m_active_notes.erase(target);
            m_overdub_ignore.erase(target);  // note released — no longer ignored in overdub
        }

        // Normal recording
        if (m_recording) {
            LoopEvent ev;
            ev.time   = getTimeMs() - m_record_start;
            ev.target = target; ev.freq = freq;
            ev.vel    = vel;    ev.glide = glide;
            ev.idx    = m_record_idx++;
            m_events.push_back(ev);
            if (bool(debug)) {
                if (vel > 0.0)
                    cout << "rec  ON  t=" << ev.time << " tgt=" << target
                         << " freq=" << freq << (glide ? " glide" : "") << endl;
                else
                    cout << "rec  OFF t=" << ev.time << " tgt=" << target << endl;
            }
            return;
        }

        // Overlap note-off: player released a note that was held when recording stopped
        if (vel == 0.0 && m_overlap_targets.count(target)) {
            m_overlap_targets.erase(target);
            if (m_playing) {
                double spd = std::max(0.01, double(speed));
                double t   = std::fmod((getTimeMs() - m_loop_start_time) * spd, m_loop_length);
                if (t < 0.0) t += m_loop_length;  // fmod can go negative when timer jitter overshoots
                LoopEvent off;
                off.time   = t;
                off.target = target;
                off.freq   = m_active_notes.count(target) ? m_active_notes.at(target).freq : 0.0;
                off.vel    = 0.0;
                off.idx    = m_record_idx++;
                m_events.push_back(off);
                if (bool(debug))
                    cout << "rec  OVERLAP-OFF t=" << t << " tgt=" << target
                         << " loop_len=" << m_loop_length << endl;
                sortEvents();
                // Update play_idx: skip events already elapsed
                double elapsed = (getTimeMs() - m_loop_start_time) * spd;
                m_play_idx = 0;
                while (m_play_idx < m_events.size() && m_events[m_play_idx].time <= elapsed)
                    m_play_idx++;
                scheduleNext();
            }
            return;
        }

        // Overdub recording
        if (m_overdub_state == OD::ACTIVE && !m_overdub_ignore.count(target)) {
            if (vel > 0.0) m_overdub_had_on = true;
            double spd = std::max(0.01, double(speed));
            double t   = (getTimeMs() - m_loop_start_time) * spd;
            t = std::fmod(t, m_loop_length);
            LoopEvent ev;
            ev.time   = t;      ev.target = target; ev.freq = freq;
            ev.vel    = vel;    ev.glide  = glide;
            ev.idx    = m_record_idx++;
            m_overdub_buf.push_back(ev);
        }
    }

    // ── Playback ─────────────────────────────────────────────────────────

    void startPlayback() {
        if (m_events.empty() || m_loop_length <= 0.0) return;
        sortEvents();
        m_playing         = true;
        m_play_idx        = 0;
        m_loop_start_time = getTimeMs();
        m_sounding.clear();
        scheduleNext();
        if (bool(debug)) cout << "--- play  START  loop_len=" << m_loop_length << " ---" << endl;
        out3.send("play", 1);
    }

    void stopPlayback() {
        if (!m_playing) return;
        m_playing = false;
        m_timer.stop();
        m_quantize_timer.stop();
        sendHardAllNotesOff();
        m_sounding.clear();
        if (bool(debug)) cout << "--- play  STOP  ---" << endl;
        out3.send("play", 0);
    }

    void tickPlayback() {
        if (!m_playing || m_events.empty()) return;

        double spd     = std::max(0.01, double(speed));
        double now     = getTimeMs();
        double elapsed = (now - m_loop_start_time) * spd;

        while (true) {
            // Fire all events due by now
            while (m_play_idx < m_events.size() &&
                   m_events[m_play_idx].time <= elapsed) {
                outputEvent(m_events[m_play_idx]);
                m_play_idx++;
            }

            if (m_play_idx < m_events.size()) break;  // more events remain — schedule next

            // ── Loop wrap ────────────────────────────────────────────────

            sendAllNotesOff();
            m_sounding.clear();

            // Apply pending quantized events (wrap mode)
            if (m_has_pending) {
                m_events      = std::move(m_pending_events);
                m_pending_events.clear();
                m_has_pending = false;
                sortEvents();
                out3.send("quantize_done");
            }

            // Handle overdub state machine
            bool had_overdub = onLoopWrapOverdub();
            if (had_overdub && bool(autoquantize))
                m_quantize_timer.delay(1.0);

            m_loop_start_time += m_loop_length / spd;
            elapsed = (now - m_loop_start_time) * spd;
            m_play_idx = 0;

            if (m_loop_length / spd < 1.0) break;  // guard against micro-loops
        }

        scheduleNext();
    }

    void scheduleNext() {
        if (!m_playing || m_events.empty()) return;
        double spd    = std::max(0.01, double(speed));
        double now    = getTimeMs();
        double elap   = (now - m_loop_start_time) * spd;
        double next_t = (m_play_idx < m_events.size())
            ? m_events[m_play_idx].time : m_loop_length;
        double delay  = (next_t - elap) / spd;
        m_timer.delay(std::max(1.0, delay));
    }

    void outputEvent(const LoopEvent& ev) {
        double vel_out  = ev.vel;
        double freq_out = ev.freq;

        if (vel_out > 0.0) {
            // Voice steal: non-glide note-on while same target is already sounding.
            // Send a synthetic off first so va releases the old voice before allocating a new one.
            if (!ev.glide && m_sounding.count(ev.target)) {
                if (bool(debug))
                    cout << "play STEAL-OFF t=" << ev.time << " tgt=" << ev.target << endl;
                out1.send(ev.target, 0, m_stream, 0);
            }

            m_sounding.insert(ev.target);

            vel_out *= double(vol) / 100.0;
            if (int(volJitter) > 0) {
                std::uniform_real_distribution<double> d(0.0, double(int(volJitter)) / 100.0);
                vel_out -= ev.vel * d(m_rng);
            }
            vel_out = std::max(1.0, std::min(127.0, vel_out));

            double semitones = double(transpose_attr);
            if (double(pitchJitter) > 0.0) {
                std::uniform_real_distribution<double> d(-double(pitchJitter), double(pitchJitter));
                semitones += d(m_rng);
            }
            if (semitones != 0.0)
                freq_out *= std::pow(2.0, semitones / 12.0);

            if (bool(debug))
                cout << "play ON  t=" << ev.time << " tgt=" << ev.target
                     << " freq=" << freq_out << (ev.glide ? " glide" : "") << endl;
            out1.send(ev.target, vel_out, m_stream, ev.glide ? 1 : 0, freq_out);
        } else {
            m_sounding.erase(ev.target);
            if (bool(debug))
                cout << "play OFF t=" << ev.time << " tgt=" << ev.target << endl;
            out1.send(ev.target, 0, m_stream, 0);
        }
    }

    // Called at loop wrap.
    // Kills every sounding note EXCEPT wrapping notes (off.time < on.time), which span the
    // loop boundary intentionally and will be killed by their scheduled off in the next cycle.
    // Overlap targets (no off recorded yet) do NOT satisfy the wrapping condition, so they ARE
    // killed — preventing voice accumulation when the player holds a note across multiple loops.
    void sendAllNotesOff() {
        std::unordered_map<int, double> last_on, last_off;
        for (auto& ev : m_events) {
            if (ev.vel > 0.0 && !ev.glide) last_on[ev.target]  = ev.time;
            else if (ev.vel == 0.0)         last_off[ev.target] = ev.time;
        }
        for (int tgt : m_sounding) {
            bool wraps = last_on.count(tgt) && last_off.count(tgt)
                      && last_off[tgt] < last_on[tgt];
            if (bool(debug)) {
                if (wraps)
                    cout << "wrap SKIP tgt=" << tgt << " (wrapping: off="
                         << last_off[tgt] << " < on=" << last_on[tgt] << ")" << endl;
                else
                    cout << "wrap KILL tgt=" << tgt << endl;
            }
            if (wraps) continue;
            out1.send(tgt, 0, m_stream, 0);
        }
    }

    // Called on stopPlayback — unconditionally kills every note that could
    // possibly be sounding.  Collects targets from three sources to be safe:
    //   1. m_sounding  — notes the looper turned on that haven't had their off yet
    //   2. m_overlap_targets — held notes whose off hasn't been recorded yet
    //   3. every note-on in m_events — safety net for targets whose scheduled off
    //      already fired (m_sounding empty) but va may still consider alive
    void sendHardAllNotesOff() {
        std::unordered_set<int> targets;
        for (int tgt : m_sounding)        targets.insert(tgt);
        for (int tgt : m_overlap_targets) targets.insert(tgt);
        for (auto& ev : m_events)
            if (ev.vel > 0.0) targets.insert(ev.target);
        if (bool(debug)) {
            cout << "hard-off: killing " << targets.size() << " targets:";
            for (int tgt : targets) cout << " " << tgt;
            cout << " (sounding:";
            for (int tgt : m_sounding) cout << " " << tgt;
            cout << ")" << endl;
        }
        for (int tgt : targets)
            out1.send(tgt, 0, m_stream, 0);
        m_overlap_targets.clear();
        m_sounding.clear();
    }

    void sortEvents() {
        std::sort(m_events.begin(), m_events.end(),
            [](const LoopEvent& a, const LoopEvent& b) {
                if (a.time != b.time) return a.time < b.time;
                return a.idx < b.idx;
            });
    }

    // ── Quantization ─────────────────────────────────────────────────────

    // Entry point from attribute setter or autoquantize
    void triggerQuantize() {
        double useBpm = resolveBpm();
        if (useBpm <= 0.0) {
            cerr << "voice-alligator-looper: BPM auto-detect failed — set bpm explicitly" << endl;
            return;
        }
        if (m_quantize_mode == "wrap") {
            buildPendingQuantize(useBpm);
        } else {
            applyQuantizeNext(useBpm);
        }
    }

    // Entry point for deferred (timer-based) quantize
    void applyDeferredQuantize() {
        if (m_events.empty()) return;
        double useBpm = resolveBpm();
        if (useBpm <= 0.0) {
            cerr << "voice-alligator-looper: BPM auto-detect failed — set bpm explicitly" << endl;
            return;
        }
        if (m_quantize_mode == "wrap") {
            buildPendingQuantize(useBpm);
        } else {
            applyQuantizeNext(useBpm);
        }
    }

    double resolveBpm() {
        if (bool(autotempo)) {
            double detected = (double)detectBpm(m_events);
            return detected > 0.0 ? detected : double(bpm);
        }
        return double(bpm);
    }

    // Compute quantized events and store for swap at next loop wrap
    void buildPendingQuantize(double useBpm) {
        int divisor = parseNoteLen(m_noteLen);
        if (divisor <= 0) return;
        double gridMs    = (4.0 / divisor) * (60000.0 / useBpm);
        double totalLen  = m_loop_length;
        double newLength = std::max(gridMs, std::round(totalLen / gridMs) * gridMs);

        auto q = quantizePreserveDurations(m_events, gridMs, totalLen, newLength);
        q.erase(std::remove_if(q.begin(), q.end(),
            [newLength](const LoopEvent& e){ return e.time >= newLength; }), q.end());

        m_pending_events = std::move(q);
        m_has_pending    = true;
        // m_loop_length updated at swap (wrap)
    }

    // Compute and apply immediately; skip already-elapsed events; protect sustained note-offs
    void applyQuantizeNext(double useBpm) {
        int divisor = parseNoteLen(m_noteLen);
        if (divisor <= 0) {
            cerr << "voice-alligator-looper: invalid note length '" << m_noteLen << "'" << endl;
            return;
        }

        cout << "voice-alligator-looper: quantize BPM=" << useBpm << " grid=" << m_noteLen << endl;

        double gridMs    = (4.0 / divisor) * (60000.0 / useBpm);
        double totalLen  = m_loop_length;
        double newLength = std::max(gridMs, std::round(totalLen / gridMs) * gridMs);

        // Remember original note-off times for currently sounding voices
        std::unordered_map<int, double> sustained_off;
        for (auto& e : m_events) {
            if (e.vel == 0.0 && m_sounding.count(e.target))
                sustained_off[e.target] = e.time;
        }

        auto q = quantizePreserveDurations(m_events, gridMs, totalLen, newLength);
        q.erase(std::remove_if(q.begin(), q.end(),
            [newLength](const LoopEvent& e){ return e.time >= newLength; }), q.end());

        // Restore note-off times for sustained voices
        for (auto& e : q) {
            if (e.vel == 0.0 && sustained_off.count(e.target))
                e.time = sustained_off[e.target];
        }

        m_events      = std::move(q);
        m_loop_length = newLength;

        std::sort(m_events.begin(), m_events.end(),
            [](const LoopEvent& a, const LoopEvent& b){
                if (a.time != b.time) return a.time < b.time;
                return a.idx < b.idx;
            });

        cout << "voice-alligator-looper: quantize done — "
             << m_events.size() << " events, length=" << newLength << " ms" << endl;
        out3.send("quantize_done");

        if (m_playing) {
            double spd     = std::max(0.01, double(speed));
            double elapsed = (getTimeMs() - m_loop_start_time) * spd;
            // Skip events already elapsed — no double triggers
            m_play_idx = 0;
            while (m_play_idx < m_events.size() &&
                   m_events[m_play_idx].time <= elapsed)
                m_play_idx++;
            scheduleNext();
        }
    }

    // ── Permutate ────────────────────────────────────────────────────────

    void doPermutate(int n) {
        if (m_events.empty()) return;

        struct Pair {
            LoopEvent on;
            bool      has_off  { false };
            LoopEvent off;
            bool      is_glide   { false };
            bool      is_sounding { false };
        };

        // Re-pair events
        std::vector<Pair>                  pairs;
        std::unordered_map<int, LoopEvent> pendingOns;

        for (auto& e : m_events) {
            if (e.vel > 0.0) {
                if (pendingOns.count(e.target)) {
                    Pair p; p.on = pendingOns[e.target];
                    p.is_sounding = m_sounding.count(p.on.target) > 0;
                    pairs.push_back(p);
                    pendingOns.erase(e.target);
                }
                if (e.glide) {
                    Pair p; p.on = e; p.is_glide = true;
                    p.is_sounding = m_sounding.count(e.target) > 0;
                    pairs.push_back(p);
                } else {
                    pendingOns[e.target] = e;
                }
            } else {
                if (pendingOns.count(e.target)) {
                    Pair p; p.on = pendingOns[e.target]; p.has_off = true; p.off = e;
                    p.is_sounding = m_sounding.count(p.on.target) > 0;
                    pairs.push_back(p);
                    pendingOns.erase(e.target);
                }
                // Orphan note-off: discard (shouldn't normally happen)
            }
        }
        for (auto& [tgt, ev] : pendingOns) {
            Pair p; p.on = ev; p.is_sounding = m_sounding.count(tgt) > 0;
            pairs.push_back(p);
        }

        // Collect indices of free (permutable) pairs: non-glide, non-sounding
        std::vector<int> free_idx;
        for (int i = 0; i < (int)pairs.size(); i++) {
            if (!pairs[i].is_glide && !pairs[i].is_sounding)
                free_idx.push_back(i);
        }

        if ((int)free_idx.size() < 2) return;

        // Collect on-times (slots) of free pairs
        std::vector<double> slots;
        for (int i : free_idx)
            slots.push_back(pairs[i].on.time);

        // Shuffle or swap N pairs
        if (n <= 0) {
            std::shuffle(slots.begin(), slots.end(), m_rng);
        } else {
            for (int k = 0; k < n && (int)slots.size() >= 2; k++) {
                std::uniform_int_distribution<int> d(0, (int)slots.size() - 1);
                int a = d(m_rng), b;
                do { b = d(m_rng); } while (b == a);
                std::swap(slots[a], slots[b]);
            }
        }

        // Reassign slots: move on-times, carry off-times by same delta
        for (int k = 0; k < (int)free_idx.size(); k++) {
            Pair& p      = pairs[free_idx[k]];
            double delta = slots[k] - p.on.time;
            p.on.time    = slots[k];
            if (p.has_off) p.off.time += delta;
        }

        // Rebuild m_events
        m_events.clear();
        for (auto& p : pairs) {
            m_events.push_back(p.on);
            if (p.has_off) m_events.push_back(p.off);
        }
        sortEvents();

        // Update play_idx to skip already-elapsed events
        if (m_playing) {
            double spd     = std::max(0.01, double(speed));
            double elapsed = (getTimeMs() - m_loop_start_time) * spd;
            m_play_idx = 0;
            while (m_play_idx < m_events.size() &&
                   m_events[m_play_idx].time <= elapsed)
                m_play_idx++;
            scheduleNext();
        }
    }

    // ── Quantize algorithm ───────────────────────────────────────────────

    static int parseNoteLen(const std::string& s) {
        if (s.size() >= 2 && s.back() == 'n') {
            try { return std::stoi(s.substr(0, s.size() - 1)); }
            catch (...) {}
        }
        return -1;
    }

    static int detectBpm(const std::vector<LoopEvent>& events) {
        std::vector<double> times;
        double prev = -std::numeric_limits<double>::infinity();
        for (auto& e : events) {
            if (e.vel > 0.0 && e.time - prev >= 50.0) {
                times.push_back(e.time);
                prev = e.time;
            }
        }
        if ((int)times.size() < 2) return 0;

        const double SNAP_TOL = 0.20;
        int bestBpm = 0, bestScore = -1;
        for (int b = 60; b <= 200; b++) {
            double step = (60000.0 / b) / 4.0;
            double tol  = step * SNAP_TOL;
            int bpmScore = 0;
            for (double t0 : times) {
                double phase = std::fmod(t0, step);
                int score = 0;
                for (double t : times) {
                    double d = std::fmod(t - phase + step * 10000.0, step);
                    if (d > step * 0.5) d = step - d;
                    if (d <= tol) score++;
                }
                if (score > bpmScore) bpmScore = score;
            }
            if (bpmScore > bestScore) { bestScore = bpmScore; bestBpm = b; }
        }
        int minRequired = (int)std::ceil(times.size() * 0.5);
        return (bestBpm > 0 && bestScore >= minRequired) ? bestBpm : 0;
    }

    struct Anchor { double orig, snapped; };

    static double warpTime(double t, const std::vector<Anchor>& anchors) {
        if (anchors.empty()) return t;
        if (t <= anchors.front().orig) return anchors.front().snapped;
        if (t >= anchors.back().orig)  return anchors.back().snapped;
        int lo = 0, hi = (int)anchors.size() - 2;
        while (lo < hi) {
            int mid = (lo + hi) >> 1;
            if (anchors[mid + 1].orig <= t) lo = mid + 1; else hi = mid;
        }
        const Anchor& a = anchors[lo];
        const Anchor& b = anchors[lo + 1];
        double span = b.orig - a.orig;
        if (span == 0.0) return a.snapped;
        return a.snapped + (t - a.orig) / span * (b.snapped - a.snapped);
    }

    static std::vector<LoopEvent> quantizePreserveDurations(
        std::vector<LoopEvent> events, double gridMs, double totalLength, double newLength)
    {
        struct Pair {
            LoopEvent on;
            bool      has_off { false };
            LoopEvent off;
        };

        std::vector<Pair>                  pairs;
        std::vector<LoopEvent>             auxEvents;   // glide events — time-warped, not grid-snapped
        std::unordered_map<int, LoopEvent> pendingOns;

        // Glide notes continue the voice started by the preceding non-glide on for the
        // same target.  They must NOT flush the pending on — instead they go into auxEvents
        // and get time-warped alongside the main pair.  The note-off that terminates the
        // chain pairs with the original non-glide on so its duration is preserved.
        for (auto& e : events) {
            if (e.vel > 0.0) {
                if (e.glide) {
                    // Glide continues an existing voice — don't disturb pendingOns.
                    // Just stash in auxEvents so it gets time-warped later.
                    auxEvents.push_back(e);
                } else {
                    // Non-glide note-on.  If there's already a pending on for this
                    // target, flush it as an orphan pair (voice steal).
                    if (pendingOns.count(e.target)) {
                        Pair p; p.on = pendingOns[e.target];
                        pairs.push_back(p);
                        pendingOns.erase(e.target);
                    }
                    pendingOns[e.target] = e;
                }
            } else {
                if (pendingOns.count(e.target)) {
                    Pair p; p.on = pendingOns[e.target]; p.has_off = true; p.off = e;
                    pairs.push_back(p);
                    pendingOns.erase(e.target);
                }
            }
        }
        for (auto& [tgt, ev] : pendingOns) { Pair p; p.on = ev; pairs.push_back(p); }

        std::vector<Anchor>   rawAnchors;
        std::set<std::string> usedSlots;
        std::vector<Pair>     keptPairs;

        for (auto& pair : pairs) {
            double origOn = pair.on.time;
            double snapOn = std::round(origOn / gridMs) * gridMs;
            std::string key = std::to_string(pair.on.target) + "_" +
                              std::to_string(static_cast<long long>(snapOn));
            if (usedSlots.count(key)) continue;
            usedSlots.insert(key);

            double delta   = snapOn - origOn;
            pair.on.time   = snapOn;
            if (pair.has_off) {
                pair.off.time += delta;
                if (pair.off.time >= newLength)
                    pair.off.time = newLength - 1.0;
            }

            // If the snapped note-on lands at or past loop end, discard the whole pair.
            // The individual-event filter in applyQuantizeNext would remove the on but keep
            // the clamped off, producing a spurious note-off with no prior note-on.
            if (pair.on.time >= newLength) continue;

            rawAnchors.push_back({ origOn, snapOn });
            keptPairs.push_back(pair);
        }

        std::sort(rawAnchors.begin(), rawAnchors.end(),
            [](const Anchor& a, const Anchor& b){ return a.orig < b.orig; });
        rawAnchors.erase(std::unique(rawAnchors.begin(), rawAnchors.end(),
            [](const Anchor& a, const Anchor& b){ return a.orig == b.orig; }), rawAnchors.end());

        std::vector<Anchor> warpAnchors;
        if (rawAnchors.empty() || rawAnchors.front().orig > 0.0)
            warpAnchors.push_back({ 0.0, 0.0 });
        for (auto& a : rawAnchors) warpAnchors.push_back(a);
        if (rawAnchors.empty() || rawAnchors.back().orig < totalLength)
            warpAnchors.push_back({ totalLength, newLength });

        for (auto& e : auxEvents)
            e.time = warpTime(e.time, warpAnchors);

        // Fix orphan note-ons produced by voice steals (same target, consecutive note-ons).
        // Sort keptPairs by on.time so we can find the next note on the same target.
        std::sort(keptPairs.begin(), keptPairs.end(),
            [](const Pair& a, const Pair& b){ return a.on.time < b.on.time; });

        for (int i = 0; i < (int)keptPairs.size(); i++) {
            Pair& p = keptPairs[i];
            if (p.has_off || p.on.glide) continue;
            // Find the next pair for the same target and add a synthetic note-off before it
            for (int j = i + 1; j < (int)keptPairs.size(); j++) {
                if (keptPairs[j].on.target == p.on.target) {
                    p.has_off  = true;
                    p.off      = p.on;
                    p.off.vel  = 0.0;
                    p.off.time = std::max(p.on.time + 1.0, keptPairs[j].on.time - 1.0);
                    break;
                }
            }
            // If still no off found: the note was orphaned with no successor — discard it
        }

        std::vector<LoopEvent> result;
        for (auto& p : keptPairs) {
            if (!p.has_off && !p.on.glide) continue;  // discard orphan note-ons
            result.push_back(p.on);
            if (p.has_off) result.push_back(p.off);
        }
        for (auto& e : auxEvents) result.push_back(e);

        std::sort(result.begin(), result.end(),
            [](const LoopEvent& a, const LoopEvent& b){
                if (a.time != b.time) return a.time < b.time;
                return a.idx < b.idx;
            });
        return result;
    }
};

MIN_EXTERNAL(voice_alligator_looper);
