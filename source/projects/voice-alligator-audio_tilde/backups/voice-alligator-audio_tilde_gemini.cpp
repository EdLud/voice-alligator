/// @file
/// @ingroup    minexamples
/// @copyright  Copyright 2018 The Min-DevKit Authors. All rights reserved.
/// @license    Use of this source code is governed by the MIT License found in the License.md file.
///
/// voice-alligator-audio~
///
/// Audio-to-audio voice allocator. Three signal inlets drive voice allocation:
///   1  trigger   — rising edge (0 → non-zero) fires a note-on
///   2  pitch     — MIDI note number (rounded to int, looked up in scale array) when @scale 1
///                  or raw frequency (Hz) when @scale 0 (default)
///   3  velocity  — 0.0–1.0 (sampled at trigger moment)
///
/// Note duration is set via @duration attribute (milliseconds).
/// After duration_ms samples the note-off is triggered internally;
/// the ADSR release then runs through before the voice is recycled.
///
/// Outlets (each is an MC bundle, one channel per voice):
///   1  out_freq     frequency (Hz)
///   2  out_env      ADSR envelope
///   3  out_impulse  1-sample impulse on note-on
///   4  out_ramp     linear ramp 0→1 over duration + release time
///   5  out_glide    glide flag
///   6  out_mono     mono flag

#include <algorithm>
#include "c74_min.h"
#include <vector>
#include <cmath>
#include <optional>
#include <unordered_set>
#include <atomic>
#include <unordered_map>

using namespace c74::min;
using namespace c74::min::lib;

long voice_alligator_audio_tilde_multichanneloutputs(c74::max::t_object* x, long index, long count);

class voice_alligator_audio_tilde : public object<voice_alligator_audio_tilde>, public vector_operator<> {
public:
MIN_DESCRIPTION{"audio-to-audio voice allocator with built-in ADSR — trigger/pitch/velocity as signals, duration as attribute"};
MIN_TAGS{"poly~, adsr, voice allocation"};
MIN_AUTHOR{"Jan Godde, Edis Ludwig"};
MIN_RELATED{"poly~, voice-alligator, voice-alligator~"};
MIN_FLAGS{documentation_flags::do_not_generate};

// Three signal inlets
inlet<>  in_trigger {this, "(signal) rising edge triggers note-on",          "signal"};
inlet<>  in_pitch   {this, "(signal) MIDI note number or frequency",         "signal"};
inlet<>  in_velocity{this, "(signal) velocity, sampled at trigger", "signal"};

// Six MC signal outlets
outlet<> out_freq   {this, "(MC~) frequency per voice",                        "multichannelsignal"};  // 1
outlet<> out_env    {this, "(MC~) ADSR envelope per voice",                    "multichannelsignal"};  // 2
outlet<> out_impulse{this, "(MC~) note-on impulse",                            "multichannelsignal"};  // 3
outlet<> out_ramp   {this, "(MC~) note ramp 0→1 over duration + release time", "multichannelsignal"};  // 4
outlet<> out_glide  {this, "(MC~) glide flag per voice",                       "multichannelsignal"};  // 5
outlet<> out_mono   {this, "(MC~) mono flag per voice",                        "multichannelsignal"};  // 6

message<> maxclass_setup{this, "maxclass_setup", MIN_FUNCTION{
    c74::max::t_class* c = args[0];
    c74::max::class_addmethod(c, (c74::max::method)voice_alligator_audio_tilde_multichanneloutputs,
                              "multichanneloutputs", c74::max::A_CANT, 0);
    return {};
}};

message<> setup{this, "setup", MIN_FUNCTION{
    auto* self = (c74::max::t_pxobject*)maxobj();
    self->z_misc |= 64; // Z_MC_OUTLETS only
    return {};
}};

// ─── Note struct ──────────────────────────────────────────────────────────────

struct Note {
    number vel{80};
    std::vector<number> freq;
    std::vector<int>    mpitch;
    int  stream{1};
    int  target{1};
    bool mono_flag{false};
    bool sequencer_note_flag{false};
    bool sustain_flag{false};
    bool hold_flag{false};
    bool release_flag{false};

    int    return_lowest_mpitch()  const { return *std::min_element(mpitch.begin(), mpitch.end()); }
    int    return_highest_mpitch() const { return *std::max_element(mpitch.begin(), mpitch.end()); }
    number return_lowest_freq()    const { return *std::min_element(freq.begin(),  freq.end());  }
    number return_highest_freq()   const { return *std::max_element(freq.begin(),  freq.end());  }

    void remove_mpitch_and_freq_entry(int p) {
        for (auto it = mpitch.begin(); it != mpitch.end(); ++it) {
            if (*it == p) {
                size_t i = it - mpitch.begin();
                mpitch.erase(mpitch.begin() + i);
                freq.erase  (freq.begin()   + i);
                break;
            }
        }
    }
    void remove_highest_mpitch_entry() {
        size_t i = std::max_element(mpitch.begin(), mpitch.end()) - mpitch.begin();
        mpitch.erase(mpitch.begin() + i); freq.erase(freq.begin() + i);
    }
    void remove_lowest_mpitch_entry() {
        size_t i = std::min_element(mpitch.begin(), mpitch.end()) - mpitch.begin();
        mpitch.erase(mpitch.begin() + i); freq.erase(freq.begin() + i);
    }
};

// ─── ScaleArray ───────────────────────────────────────────────────────────────

class ScaleArray {
public:
    void set_size(int size) { arrsize = size; }
    void fill_container(int size) {
        data.resize(size);
        for (int i = 0; i < size; ++i)
            data[i] = static_cast<number>(440.0 * exp(0.057762265 * (i - 69)));
    }
    void set_value(int index, number value) {
        if (index >= 0 && index < arrsize) data[index] = value;
    }
    int length()      { return static_cast<int>(data.size()); }
    void clear()      { data.clear(); data.resize(arrsize, std::nullopt); }
    std::optional<number> get_value(int index) {
        if (index >= 0 && index < static_cast<int>(data.size())) return data[index];
        return std::nullopt;
    }
private:
    std::vector<std::optional<number>> data;
    int arrsize = 127;
};

// ─── Per-voice command staging ────────────────────────────────────────────────

struct VoiceCmd {
    enum class Type : int { none = 0, note_on, note_off };

    std::atomic<int>   cmd          {0};
    std::atomic<float> freq         {0.f};
    std::atomic<float> vel          {0.f};   // normalised 0–1
    std::atomic<int>   steal        {0};
    std::atomic<float> glide        {0.f};   // 1.f = glide note, 0.f = fresh note-on
    std::atomic<float> mono         {0.f};
    std::atomic<int>   impulse      {0};
    std::atomic<int>   pending_off  {0};
    std::atomic<int>   duration_samps{0};

    VoiceCmd() = default;
    VoiceCmd(const VoiceCmd&) {}
    VoiceCmd& operator=(const VoiceCmd&) { return *this; }
};

// ─── State ────────────────────────────────────────────────────────────────────

std::vector<Note>             active_voices;
std::unordered_map<int, Note> pending_voices;
std::vector<int>              inactive_voices;
ScaleArray                    scale_array;

VoiceCmd voice_cmd[1024];
adsr     voice_adsr[1024];

float live_freq [1024] {};
float live_vel  [1024] {};
float live_mono [1024] {};

// Audio-thread: is this voice's ADSR running?
bool  audio_voice_active[1024] {};
bool  pending_impulse   [1024] {};
float last_env_output   [1024] {};
bool  voice_is_glide    [1024] {};  // true when current note is a glide note

// Per-voice duration counter (audio thread only)
// Counts down from duration_samps to 0, then triggers note-off
int   voice_duration_remaining[1024] {};
bool  voice_duration_active   [1024] {};  // true while counting

// Per-voice note ramp (audio thread only)
// Outputs 1.0 at note-on, ramps linearly to 0.0 at end of release.
// Total ramp length = duration_samps + release_samps.
float voice_ramp_value  [1024] {};   // current output value
float voice_ramp_step   [1024] {};   // per-sample increment
bool  voice_ramp_frozen [1024] {};   // true during declick — hold value, don't advance

struct VoiceVelRamp {
    float current {1.f};
    float target  {1.f};
    float step    {0.f};
};

struct VoicePendingFreq {
    bool  active   {false};
    float freq     {0.f};
    float vel_norm {1.f};
};

VoiceVelRamp     voice_vel_ramp   [1024];
VoicePendingFreq voice_pending_freq[1024];

struct VoiceGlide {
    float current_freq  {0.f};
    float target_freq   {0.f};
    float start_freq    {0.f};
    int   samples_total {0};
    int   samples_done  {0};
    bool  active        {false};
};
VoiceGlide voice_glide[1024];

std::atomic<int> voice_done_flags   [1024] {};
std::atomic<int> voice_release_flags[1024] {};  // set when duration fires note-off

double m_samplerate {44100.0};

// Previous trigger signal — for rising edge detection (audio thread)
float prev_trigger_sample {0.f};

// Pending trigger: audio thread writes, poll timer reads and fires note-on
std::atomic<int>   pending_trigger_flag  {0};
std::atomic<float> pending_trigger_pitch {0.f};
std::atomic<float> pending_trigger_vel   {0.f};
std::atomic<int>   pending_trigger_dur   {0};

// ─── ADSR parameter cache ─────────────────────────────────────────────────────

std::atomic<float> adsr_attack       {10.f};
std::atomic<float> adsr_decay        {100.f};
std::atomic<float> adsr_sustain_lvl  {0.8f};
std::atomic<float> adsr_release      {300.f};
std::atomic<float> adsr_attack_curve {0.f};
std::atomic<float> adsr_decay_curve  {0.f};
std::atomic<float> adsr_release_curve{0.f};
std::atomic<float> adsr_retrigger_ms {5.f};
std::atomic<bool>  adsr_return_to_zero{true};

// ─── Glide parameter cache ────────────────────────────────────────────────────

std::atomic<float> glide_time_ms  {0.f};
std::atomic<float> glide_curvature{0.f};
std::atomic<bool>  glide_retrigger{false};

// ─── Duration attribute ───────────────────────────────────────────────────────

std::atomic<float> duration_ms{1000.f};

attribute<number> duration_attr{this, "duration", 1000.0,
    description{"Note duration in milliseconds (default 1000)"},
    setter{MIN_FUNCTION{
        float v = std::max(0.f, (float)(number)args[0]);
        duration_ms.store(v, std::memory_order_relaxed);
        return {(number)v};
    }}
};

// ─── Steal/mono state ─────────────────────────────────────────────────────────

// ─── Attributes ───────────────────────────────────────────────────────────────

attribute<bool> active_attr{this, "active", true,
    description{"Activates note-on processing (default true)"}};

attribute<bool> debug{this, "debug", false,
    description{"Debug on / off"}, visibility::show};

attribute<bool> steal_attr{this, "steal", true,
    description{"Voice stealing on / off (default true)"}};

attribute<bool> scale_attr{this, "scale", false,
    description{"If true, inlet 2 is a MIDI note number looked up in the scale array. "
                "If false (default), inlet 2 is treated as a raw frequency in Hz."}};

attribute<number> basefreq_attr{this, "basefreq", 440.0f,
    description{"Standard A tuning reference (default 440.0 Hz)"}};

// ── ADSR attributes ───────────────────────────────────────────────────────────

attribute<number> attack_attr{this, "attack", 10.0,
    description{"ADSR attack time in milliseconds (default 10)"},
    setter{MIN_FUNCTION{
        float v = std::max(0.f, (float)(number)args[0]);
        adsr_attack.store(v, std::memory_order_relaxed);
        return {(number)v};
    }}
};
attribute<number> decay_attr{this, "decay", 100.0,
    description{"ADSR decay time in milliseconds (default 100)"},
    setter{MIN_FUNCTION{
        float v = std::max(0.f, (float)(number)args[0]);
        adsr_decay.store(v, std::memory_order_relaxed);
        return {(number)v};
    }}
};
attribute<number, threadsafe::no, limit::clamp> sustain_level_attr{this, "sustain_level", 0.8,
    description{"ADSR sustain level 0.0-1.0 (default 0.8)"},
    range { 0.0, 1.0 },
    setter{MIN_FUNCTION{
        adsr_sustain_lvl.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<number> release_attr{this, "release", 300.0,
    description{"ADSR release time in milliseconds (default 300)"},
    setter{MIN_FUNCTION{
        float v = std::max(0.f, (float)(number)args[0]);
        adsr_release.store(v, std::memory_order_relaxed);
        return {(number)v};
    }}
};
attribute<number, threadsafe::no, limit::clamp> attack_curve_attr{this, "attack_curve", 0.0,
    description{"ADSR attack curve -1 to 1 (default 0 = linear)"},
    range { -1.0, 1.0 },
    setter{MIN_FUNCTION{
        adsr_attack_curve.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<number, threadsafe::no, limit::clamp> decay_curve_attr{this, "decay_curve", 0.0,
    description{"ADSR decay curve -1 to 1 (default 0 = linear)"},
    range { -1.0, 1.0 },
    setter{MIN_FUNCTION{
        adsr_decay_curve.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<number, threadsafe::no, limit::clamp> release_curve_attr{this, "release_curve", 0.0,
    description{"ADSR release curve -1 to 1 (default 0 = linear)"},
    range { -1.0, 1.0 },
    setter{MIN_FUNCTION{
        adsr_release_curve.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<number> declick_ms_attr{this, "declick_ms", 5.0,
    description{"Declick ramp time in milliseconds (default 5)"},
    setter{MIN_FUNCTION{
        float v = std::max(0.f, (float)(number)args[0]);
        adsr_retrigger_ms.store(v, std::memory_order_relaxed);
        return {(number)v};
    }}
};
attribute<bool> return_to_zero_attr{this, "return_to_zero", true,
    description{"Retrigger declick on non-steal note-ons (default true)"}, visibility::hide,
    setter{MIN_FUNCTION{
        adsr_return_to_zero.store((bool)args[0], std::memory_order_relaxed);
        return args;
    }}
};

// ── Glide attributes ──────────────────────────────────────────────────────────

attribute<number> glidetime_attr{this, "glidetime", 30.0,
    description{"Glide time in milliseconds. 0 = no glide (default 30)"},
    setter{MIN_FUNCTION{
        float v = std::max(0.f, (float)(number)args[0]);
        glide_time_ms.store(v, std::memory_order_relaxed);
        return {(number)v};
    }}
};
attribute<number, threadsafe::no, limit::clamp> glide_curve_attr{this, "glide_curve", 0.0,
    description{"Glide curve -1 to 1 (default 0 = linear)"},
    range { -1.0, 1.0 },
    setter{MIN_FUNCTION{
        glide_curvature.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<bool> glide_retrigger_attr{this, "glide_retrigger", false,
    description{"Retrigger envelope on glide notes (default false)"},
    setter{MIN_FUNCTION{
        glide_retrigger.store((bool)args[0], std::memory_order_relaxed);
        return args;
    }}
};

attribute<bool> glide_impulse_attr{this, "glide_impulse", false,
    description{"Fire impulse on outlet 3 on glide notes (default false)"}};

// ── Mono attribute ────────────────────────────────────────────────────────────

attribute<bool, threadsafe::yes> mono_attr{this, "mono", false,
    description{"Monophony on / off — all triggers play on one persistent voice with glide"}};

attribute<bool> mono_steals_release_attr{this, "mono_steals_release", false,
    description{"If true, a new trigger steals the mono voice while it is still releasing. "
                "If false (default), the new note gets its own voice and the release rings out."}};

// ── Scale attributes ──────────────────────────────────────────────────────────

enum class scale_def_mode : int { midi, freq, enum_count };
enum_map scale_def_mode_range = {"midi", "freq"};
attribute<scale_def_mode> scale_def_mode_attr{this, "scale_def_mode", scale_def_mode::freq,
    scale_def_mode_range, description{"Scale definition mode: 0 MIDI, 1 frequency (default frequency)"}};

attribute<bool> scale_fill_attr{this, "scale_fill", true,
    description{"Fill undefined scale entries with MTOF values (default true)"}};

attribute<int> scale_array_maxsize_attr{this, "scalearray_maxsize", 128,
    description{"Maximum scale array size (default 128)"},
    setter{MIN_FUNCTION{
        int v = (int)args[0];
        scale_array.set_size(v);
        scale_array.fill_container(v);
        return {v};
    }}
};

int voices = 1;

argument<int> voices_arg{this, "voices_arg", description{"Number of voices, max: 1024"},
    {MIN_ARGUMENT_FUNCTION{ voices = arg; }}
};

// ─── Constructor ──────────────────────────────────────────────────────────────

voice_alligator_audio_tilde(const atoms& args = {}) {
    int n = voices;
    if (args.size()) n = args[0];
    if (n > 1024) { cerr << "maximum number of voices is 1024" << endl; return; }
    voices = n;
    scale_array.fill_container(128);
    resetVoices(n);
}

// ─── Reset all voice state ────────────────────────────────────────────────────

void resetVoices(int n) {
    inactive_voices.clear();
    active_voices.clear();
    pending_voices.clear();
    for (int i = 0; i < 1024; ++i) {
        voice_done_flags   [i].store(0, std::memory_order_relaxed);
        voice_release_flags[i].store(0, std::memory_order_relaxed);
        voice_cmd[i].cmd           .store(0,   std::memory_order_relaxed);
        voice_cmd[i].freq          .store(0.f, std::memory_order_relaxed);
        voice_cmd[i].vel           .store(0.f, std::memory_order_relaxed);
        voice_cmd[i].steal         .store(0,   std::memory_order_relaxed);
        voice_cmd[i].glide         .store(0.f, std::memory_order_relaxed);
        voice_cmd[i].mono          .store(0.f, std::memory_order_relaxed);
        voice_cmd[i].impulse       .store(0,   std::memory_order_relaxed);
        voice_cmd[i].pending_off   .store(0,   std::memory_order_relaxed);
        voice_cmd[i].duration_samps.store(0,   std::memory_order_relaxed);
    }
    std::fill(std::begin(audio_voice_active),       std::end(audio_voice_active),       false);
    std::fill(std::begin(pending_impulse),           std::end(pending_impulse),           false);
    std::fill(std::begin(last_env_output),           std::end(last_env_output),           0.f);
    std::fill(std::begin(voice_is_glide),            std::end(voice_is_glide),            false);
    std::fill(std::begin(live_freq),                 std::end(live_freq),                 0.f);
    std::fill(std::begin(live_vel),                  std::end(live_vel),                  0.f);
    std::fill(std::begin(live_mono),                 std::end(live_mono),                 0.f);
    std::fill(std::begin(voice_duration_remaining),  std::end(voice_duration_remaining),  0);
    std::fill(std::begin(voice_duration_active),     std::end(voice_duration_active),     false);
    std::fill(std::begin(voice_ramp_value),          std::end(voice_ramp_value),          0.f);
    std::fill(std::begin(voice_ramp_step),           std::end(voice_ramp_step),           0.f);
    std::fill(std::begin(voice_ramp_frozen),         std::end(voice_ramp_frozen),         false);
    prev_trigger_sample = 0.f;
    pending_trigger_flag .store(0, std::memory_order_relaxed);
    pending_trigger_pitch.store(0.f, std::memory_order_relaxed);
    pending_trigger_vel  .store(0.f, std::memory_order_relaxed);
    pending_trigger_dur  .store(0,   std::memory_order_relaxed);
    for (int i = 0; i < 1024; ++i) {
        voice_glide[i]         = VoiceGlide{};
        voice_vel_ramp[i]      = VoiceVelRamp{};
        voice_pending_freq[i]  = VoicePendingFreq{};
        new (&voice_adsr[i]) adsr{};
    }
    for (int i = 1; i <= n; ++i) inactive_voices.push_back(i);
}

// ─── Apply ADSR params ────────────────────────────────────────────────────────

void applyADSRParams(int v, float vel_norm = 1.f) {
    double sr = m_samplerate;
    float  sl = adsr_sustain_lvl.load(std::memory_order_relaxed);
    voice_adsr[v].attack        (adsr_attack    .load(std::memory_order_relaxed), sr);
    voice_adsr[v].decay         (adsr_decay     .load(std::memory_order_relaxed), sr);
    voice_adsr[v].sustain       (sl * vel_norm);
    voice_adsr[v].release       (adsr_release   .load(std::memory_order_relaxed), sr);
    voice_adsr[v].attack_curve  (adsr_attack_curve  .load(std::memory_order_relaxed));
    voice_adsr[v].decay_curve   (adsr_decay_curve   .load(std::memory_order_relaxed));
    voice_adsr[v].release_curve (adsr_release_curve .load(std::memory_order_relaxed));
    voice_adsr[v].retrigger     (adsr_retrigger_ms  .load(std::memory_order_relaxed), sr);
    voice_adsr[v].return_to_zero(adsr_return_to_zero.load(std::memory_order_relaxed));
    voice_adsr[v].initial       (0.0);
    voice_adsr[v].peak          (vel_norm);
    voice_adsr[v].end           (0.0);
}

void applyADSRTimingOnly(int v) {
    double sr = m_samplerate;
    voice_adsr[v].attack        (adsr_attack    .load(std::memory_order_relaxed), sr);
    voice_adsr[v].decay         (adsr_decay     .load(std::memory_order_relaxed), sr);
    voice_adsr[v].release       (adsr_release   .load(std::memory_order_relaxed), sr);
    voice_adsr[v].attack_curve  (adsr_attack_curve  .load(std::memory_order_relaxed));
    voice_adsr[v].decay_curve   (adsr_decay_curve   .load(std::memory_order_relaxed));
    voice_adsr[v].release_curve (adsr_release_curve .load(std::memory_order_relaxed));
    voice_adsr[v].retrigger     (adsr_retrigger_ms  .load(std::memory_order_relaxed), sr);
    voice_adsr[v].return_to_zero(adsr_return_to_zero.load(std::memory_order_relaxed));
    voice_adsr[v].end           (0.0);
}

// ─── Audio operator ───────────────────────────────────────────────────────────

void operator()(audio_bundle input, audio_bundle output) {
    const int n      = voices;
    const int frames = static_cast<int>(input.frame_count());

    const double* trig_buf  = input.samples(0);  // inlet 1: trigger
    const double* pitch_buf = input.samples(1);  // inlet 2: pitch
    const double* vel_buf   = input.samples(2);  // inlet 3: velocity

    // ── Rising-edge detection → post to poll timer via atomics ───────────────
    for (int i = 0; i < frames; ++i) {
        float trig = (float)trig_buf[i];
        if (trig != 0.f && prev_trigger_sample == 0.f) {
            float pitch_val = (float)pitch_buf[i];
            float vel_norm  = (float)vel_buf[i];
            float dur_ms    = duration_ms.load(std::memory_order_relaxed);
            int   dur_samps = (dur_ms > 0.f)
                ? static_cast<int>((dur_ms / 1000.f) * (float)m_samplerate) : 0;

            pending_trigger_pitch.store(pitch_val, std::memory_order_relaxed);
            pending_trigger_vel  .store(vel_norm,  std::memory_order_relaxed);
            pending_trigger_dur  .store(dur_samps, std::memory_order_relaxed);
            pending_trigger_flag .store(1,         std::memory_order_release);
        }
        prev_trigger_sample = (float)trig_buf[i];
    }

    // ── Per-voice audio processing ────────────────────────────────────────────
    for (int v = 0; v < n; ++v) {
        int cmd = voice_cmd[v].cmd.exchange(0, std::memory_order_acquire);

        if (cmd == (int)VoiceCmd::Type::note_on) {
            float new_freq = voice_cmd[v].freq .load(std::memory_order_relaxed);
            float new_vel  = voice_cmd[v].vel  .load(std::memory_order_relaxed);
            bool  is_steal = voice_cmd[v].steal.load(std::memory_order_relaxed) == 1;
            bool  is_glide = voice_cmd[v].glide.load(std::memory_order_relaxed) > 0.5f;
            float gt_ms    = glide_time_ms.load(std::memory_order_relaxed);
            int   gt_samps = (gt_ms > 0.f)
                ? static_cast<int>((gt_ms / 1000.f) * (float)m_samplerate) : 0;

            live_freq[v] = new_freq;
            live_vel [v] = new_vel;
            live_mono[v] = voice_cmd[v].mono.load(std::memory_order_relaxed);
            voice_is_glide[v] = is_glide;

            if (!is_glide) {
                bool rtz       = adsr_return_to_zero.load(std::memory_order_relaxed);
                bool do_declick = is_steal || (rtz && audio_voice_active[v]);
                if (do_declick) {
                    applyADSRTimingOnly(v);
                    voice_adsr[v].trigger(true);
                    if (voice_adsr[v].stage() == adsr::adsr_stage::attack) {
                        // No retrigger ramp — declick resolved immediately
                        voice_adsr[v].initial(last_env_output[v]);
                        voice_adsr[v].peak   (new_vel);
                        voice_adsr[v].sustain(adsr_sustain_lvl.load(std::memory_order_relaxed) * new_vel);
                        voice_glide[v].current_freq = new_freq;
                        voice_glide[v].target_freq  = new_freq;
                        voice_glide[v].active       = false;
                        // Declick already done — reset ramp immediately
                        voice_ramp_value [v] = 0.f;
                        voice_ramp_frozen[v] = false;
                    } else {
                        // Retrigger stage active — freeze ramp until declick finishes
                        voice_ramp_frozen[v] = true;
                        voice_pending_freq[v] = {true, new_freq, new_vel};
                    }
                } else {
                    applyADSRParams(v, new_vel);
                    voice_adsr[v].trigger(true);
                    voice_glide[v].current_freq = new_freq;
                    voice_glide[v].target_freq  = new_freq;
                    voice_glide[v].active       = false;
                    voice_pending_freq[v].active = false;
                }
                voice_vel_ramp[v] = {1.f, 1.f, 0.f};
            } else {
                // Glide note
                const bool gr = glide_retrigger.load(std::memory_order_relaxed);
                voice_adsr[v].return_to_zero(false);
                voice_pending_freq[v].active = false;

                if (gt_samps > 0 && voice_glide[v].current_freq > 0.f) {
                    voice_glide[v].start_freq    = voice_glide[v].current_freq;
                    voice_glide[v].target_freq   = new_freq;
                    voice_glide[v].samples_total = gt_samps;
                    voice_glide[v].samples_done  = 0;
                    voice_glide[v].active        = true;
                } else {
                    voice_glide[v].current_freq = new_freq;
                    voice_glide[v].target_freq  = new_freq;
                    voice_glide[v].active       = false;
                }

                if (gr) {
                    // Retrigger from current envelope level with new velocity.
                    // We bypass lib::adsr's retrigger stage entirely by using
                    // trigger(false)+trigger(true) — this puts the ADSR straight
                    // into attack from initial=last_env_output, avoiding the
                    // one-sample retrigger resolution that causes discontinuities.
                    float sl = adsr_sustain_lvl.load(std::memory_order_relaxed);
                    voice_adsr[v].return_to_zero(false);
                    voice_adsr[v].initial(last_env_output[v]);
                    voice_adsr[v].peak   (new_vel);
                    voice_adsr[v].sustain(sl * new_vel);
                    voice_adsr[v].trigger(false);  // m_active → false
                    voice_adsr[v].trigger(true);   // straight to attack, no retrigger stage
                    voice_vel_ramp[v] = {1.f, 1.f, 0.f};
                }
            }

            audio_voice_active[v] = true;

            // Start duration countdown and note ramp
            int dur = voice_cmd[v].duration_samps.load(std::memory_order_relaxed);
            if (dur > 0) {
                voice_duration_remaining[v] = dur;
                voice_duration_active[v]    = true;
                // Ramp: 1.0 at note-on → 0.0 at end of release
                // Total length = duration + release time in samples
                float release_ms   = adsr_release.load(std::memory_order_relaxed);
                int   release_samps = (release_ms > 0.f)
                    ? static_cast<int>((release_ms / 1000.f) * (float)m_samplerate) : 0;
                int   total_samps   = dur + release_samps;
                voice_ramp_value[v] = 0.f;
                voice_ramp_step [v] = (total_samps > 0) ? 1.f / (float)total_samps : 1.f;
            } else {
                // dur==0 means play indefinitely (no auto note-off) — ramp stays at 1
                voice_duration_active[v] = false;
                voice_ramp_value[v] = 1.f;
                voice_ramp_step [v] = 0.f;
            }

            // pending_off handling (very short notes)
            if (voice_cmd[v].pending_off.exchange(0, std::memory_order_acquire)) {
                voice_adsr[v].trigger(false);
                voice_duration_active[v] = false;
            }
        }
        else if (cmd == (int)VoiceCmd::Type::note_off) {
            voice_adsr[v].trigger(false);
            voice_duration_active[v] = false;
        }

        // Duration countdown — fire note-off when expired
        if (voice_duration_active[v] && audio_voice_active[v]) {
            voice_duration_remaining[v] -= frames;
            if (voice_duration_remaining[v] <= 0) {
                voice_adsr[v].trigger(false);
                voice_duration_active[v] = false;
                voice_release_flags[v].store(1, std::memory_order_release);
            }
        }

        // ── Output channel pointers ───────────────────────────────────────────
        auto* ch_freq    = output.samples(0*n + v);
        auto* ch_env     = output.samples(1*n + v);
        auto* ch_impulse = output.samples(2*n + v);
        auto* ch_ramp    = output.samples(3*n + v);
        auto* ch_glide   = output.samples(4*n + v);
        auto* ch_mono    = output.samples(5*n + v);

        const int imp = voice_cmd[v].impulse.exchange(0, std::memory_order_relaxed);
        if (imp) pending_impulse[v] = true;

        const float curve = glide_curvature.load(std::memory_order_relaxed);

        for (int i = 0; i < frames; ++i) {
            const adsr::adsr_stage stage_before = voice_adsr[v].stage();
            float env = static_cast<float>(voice_adsr[v]());
            const adsr::adsr_stage stage_after  = voice_adsr[v].stage();
            last_env_output[v] = env;

            // Vel ramp
            if (voice_vel_ramp[v].step != 0.f) {
                voice_vel_ramp[v].current += voice_vel_ramp[v].step;
                bool done = voice_vel_ramp[v].step > 0.f
                    ? voice_vel_ramp[v].current >= voice_vel_ramp[v].target
                    : voice_vel_ramp[v].current <= voice_vel_ramp[v].target;
                if (done) {
                    voice_vel_ramp[v].current = voice_vel_ramp[v].target;
                    voice_vel_ramp[v].step    = 0.f;
                }
            }
            env *= voice_vel_ramp[v].current;

            // Voice done detection
            if (audio_voice_active[v] && stage_after == adsr::adsr_stage::inactive) {
                audio_voice_active[v] = false;
                voice_done_flags[v].store(1, std::memory_order_release);
            }

            // sustain_level=0 auto-release
            if (stage_before == adsr::adsr_stage::decay && stage_after == adsr::adsr_stage::sustain) {
                float sl = adsr_sustain_lvl.load(std::memory_order_relaxed);
                if (sl <= 0.f && audio_voice_active[v]) {
                    voice_adsr[v].trigger(false);
                    audio_voice_active[v] = false;
                    voice_done_flags[v].store(1, std::memory_order_release);
                }
            }

            // retrigger→attack transition: apply pending freq, reset ramp
            if (stage_before != adsr::adsr_stage::attack && stage_after == adsr::adsr_stage::attack) {
                if (voice_pending_freq[v].active) {
                    float pvel = voice_pending_freq[v].vel_norm;
                    float sl   = adsr_sustain_lvl.load(std::memory_order_relaxed);
                    voice_adsr[v].initial(0.0);
                    voice_adsr[v].peak   (pvel);
                    voice_adsr[v].sustain(sl * pvel);
                    voice_glide[v].current_freq = voice_pending_freq[v].freq;
                    voice_glide[v].target_freq  = voice_pending_freq[v].freq;
                    voice_glide[v].active       = false;
                    voice_pending_freq[v].active = false;
                }
                // Declick finished — reset ramp to 0 and unfreeze
                voice_ramp_value [v] = 0.f;
                voice_ramp_frozen[v] = false;
            }

            // Impulse
            bool fire_impulse = false;
            if (pending_impulse[v]) {
                bool transition     = (stage_before != adsr::adsr_stage::attack &&
                                       stage_after  == adsr::adsr_stage::attack);
                bool already_attack = (stage_before == adsr::adsr_stage::attack && i == 0);
                bool legato_glide   = (voice_is_glide[v] && !glide_retrigger.load(std::memory_order_relaxed) && i == 0);
                if (transition || already_attack || legato_glide) {
                    fire_impulse        = true;
                    pending_impulse[v]  = false;
                }
            }

            // Glide interpolation
            float out_freq;
            if (voice_glide[v].active) {
                const float sf = voice_glide[v].start_freq;
                const float tf = voice_glide[v].target_freq;
                const float t  = (voice_glide[v].samples_total > 0)
                    ? std::min((float)voice_glide[v].samples_done / (float)voice_glide[v].samples_total, 1.f)
                    : 1.f;
                float t_curved = t;
                if (std::abs(curve) > 0.00001f) {
                    const float k_power = 5.f;
                    float exp_val = (curve > 0.f)
                        ? 1.f + curve * k_power
                        : 1.f / (1.f + (-curve) * k_power);
                    t_curved = std::pow(t, exp_val);
                }
                out_freq = sf + t_curved * (tf - sf);
                ++voice_glide[v].samples_done;
                if (voice_glide[v].samples_done >= voice_glide[v].samples_total) {
                    voice_glide[v].current_freq = tf;
                    voice_glide[v].active       = false;
                } else {
                    voice_glide[v].current_freq = out_freq;
                }
            } else {
                out_freq = voice_glide[v].current_freq;
            }

            ch_freq   [i] = out_freq;
            ch_env    [i] = env;
            ch_impulse[i] = fire_impulse ? 1.f : 0.f;
            ch_glide  [i] = (voice_glide[v].active || voice_glide[v].samples_done > 0) ? 1.f : 0.f;
            ch_mono   [i] = live_mono[v];

            // Advance ramp (frozen during declick)
            if (!voice_ramp_frozen[v] && voice_ramp_step[v] != 0.f) {
                voice_ramp_value[v] += voice_ramp_step[v];
                if (voice_ramp_value[v] > 1.f) {
                    voice_ramp_value[v] = 1.f;
                    voice_ramp_step [v] = 0.f;
                }
            }
            ch_ramp[i] = voice_ramp_value[v];
        }
    }

    // Zero-fill spare output channels
    const int total_out = static_cast<int>(output.channel_count());
    for (int ch = 6*n; ch < total_out; ++ch) {
        auto* buf = output.samples(ch);
        for (int i = 0; i < frames; ++i) buf[i] = 0.f;
    }
}

// ─── Poll timer: drain voice_done_flags ──────────────────────────────────────

timer<timer_options::deliver_on_scheduler> adsr_poll{this, MIN_FUNCTION{
    // ── Drain pending trigger from audio thread ───────────────────────────────
    if (pending_trigger_flag.exchange(0, std::memory_order_acquire)) {
        float pitch_val = pending_trigger_pitch.load(std::memory_order_relaxed);
        float vel_norm  = pending_trigger_vel  .load(std::memory_order_relaxed);
        int   dur_samps = pending_trigger_dur  .load(std::memory_order_relaxed);

        // Resolve frequency (scale array lookup is scheduler-thread safe here)
        float freq_out = 0.f;
        bool  use_sa   = (bool)scale_attr;
        if (use_sa) {
            int  midi = (int)std::round(pitch_val);
            auto val  = scale_array.get_value(midi);
            freq_out  = val.has_value() ? (float)*val
                      : (float)(440.0 * exp(0.057762265 * (midi - 69)));
        } else {
            freq_out = pitch_val;
        }

        lock lk{m_mutex};
        fireNoteOn(freq_out, vel_norm, dur_samps);
    }

    // ── Drain release flags (duration expired, ADSR now in release) ──────────
    const int n = voices;
    for (int v = 0; v < n; ++v) {
        if (!voice_release_flags[v].exchange(0, std::memory_order_acquire)) continue;
        const int target = v + 1;
        lock lk{m_mutex};
        auto it = std::find_if(active_voices.begin(), active_voices.end(),
                               [target](const Note& n){ return n.target == target; });
        if (it != active_voices.end()) it->release_flag = true;
    }

    // ── Drain voice done flags ────────────────────────────────────────────────
    for (int v = 0; v < n; ++v) {
        if (!voice_done_flags[v].exchange(0, std::memory_order_acquire)) continue;

        const int target = v + 1;
        lock lk{m_mutex};

        if (debug) cout << "Voice " << target << " done → inactive" << endl;

        live_freq[v] = 0.f;
        live_mono[v] = 0.f;
        voice_glide[v] = VoiceGlide{};
        voice_ramp_value [v] = 0.f;
        voice_ramp_step  [v] = 0.f;
        voice_ramp_frozen[v] = false;

        auto it = std::find_if(active_voices.begin(), active_voices.end(),
                               [target](const Note& n){ return n.target == target; });
        if (it != active_voices.end()) active_voices.erase(it);
        pending_voices.erase(target);
        inactive_voices.push_back(target);
    }
    adsr_poll.delay(1);
    return {};
}};

// ─── dspsetup ────────────────────────────────────────────────────────────────

message<> dspsetup{this, "dspsetup", MIN_FUNCTION{
    m_samplerate = samplerate();
    {
        lock l{m_mutex};
        resetVoices(voices);
    }
    for (int v = 0; v < voices; ++v) applyADSRParams(v);
    adsr_poll.delay(1);
    return {};
}};

// ─── Scheduler-side messages ──────────────────────────────────────────────────

message<threadsafe::yes> scale_def{this, "scale_def", "scale_def [index value ...]",
    MIN_FUNCTION{
        lock lk{m_mutex};
        if (scale_fill_attr) scale_array.fill_container((int)scale_array_maxsize_attr);
        else                 scale_array.clear();
        for (size_t i = 0; i + 1 < args.size(); i += 2) {
            int    idx = (int)args[i];
            number val = (scale_def_mode_attr == scale_def_mode::midi)
                ? (number)(440.0 * exp(0.057762265 * ((double)args[i+1] - 69)))
                : (number)args[i+1];
            scale_array.set_value(idx, val);
        }
        return {};
    }
};

message<threadsafe::yes> print_msg{this, "print",
    "Print active voices and all parameter settings to console",
    MIN_FUNCTION{
        lock lk{m_mutex};
        if (active_voices.empty()) cout << "voice-alligator-audio~: No notes in active_voices" << endl;
        else {
            cout << "voice-alligator-audio~: " << active_voices.size() << " active voice(s)" << endl;
            for (auto& n : active_voices)
                cout << "  voice " << n.target << " pitch=" << n.mpitch.back()
                     << " freq=" << n.freq.back() << " vel=" << n.vel << endl;
        }
        cout << "voice-alligator-audio~: " << inactive_voices.size() << " inactive voice(s)" << endl;
        cout << "─── parameters ──────────────────" << endl;
        cout << "  voices              = " << voices << endl;
        cout << "  active              = " << (bool)active_attr << endl;
        cout << "  mono                = " << (bool)mono_attr << endl;
        cout << "  mono_steals_release = " << (bool)mono_steals_release_attr << endl;
        cout << "  steal               = " << (bool)steal_attr << endl;
        cout << "  scale               = " << (bool)scale_attr << endl;
        cout << "  duration_ms         = " << duration_ms.load() << " ms" << endl;
        cout << "─── ADSR ────────────────────────" << endl;
        cout << "  attack              = " << adsr_attack    .load() << " ms" << endl;
        cout << "  decay               = " << adsr_decay     .load() << " ms" << endl;
        cout << "  sustain_level       = " << adsr_sustain_lvl.load() << endl;
        cout << "  release             = " << adsr_release   .load() << " ms" << endl;
        cout << "  attack_curve        = " << adsr_attack_curve .load() << endl;
        cout << "  decay_curve         = " << adsr_decay_curve  .load() << endl;
        cout << "  release_curve       = " << adsr_release_curve.load() << endl;
        cout << "  declick_ms          = " << adsr_retrigger_ms .load() << " ms" << endl;
        cout << "  return_to_zero      = " << adsr_return_to_zero.load() << endl;
        cout << "─── glide ───────────────────────" << endl;
        cout << "  glidetime           = " << glide_time_ms  .load() << " ms" << endl;
        cout << "  glide_curve         = " << glide_curvature.load() << endl;
        cout << "  glide_retrigger     = " << glide_retrigger.load() << endl;
        cout << "  glide_impulse       = " << (bool)glide_impulse_attr << endl;
        cout << "  debug               = " << (bool)debug << endl;
        cout << "─────────────────────────────────" << endl;
        return {};
    }
};

// ─── Voice allocation (scheduler thread) ─────────────────────────────────────

void fireNoteOn(float freq, float vel_norm, int dur_samps) {
    if (!(bool)active_attr) return;
    if (debug) cout << "fireNoteOn freq=" << freq << " vel=" << vel_norm
                    << " mono=" << (bool)mono_attr
                    << " active=" << active_voices.size()
                    << " inactive=" << inactive_voices.size() << endl;

    if ((bool)mono_attr) {
        handleNoteOnMono(freq, vel_norm, dur_samps);
    } else {
        Note note;
        note.freq      = {freq};
        note.mpitch    = {(int)std::round(freq)};
        note.vel       = vel_norm;
        note.stream    = 1;
        note.mono_flag = false;
        handleNoteOnPoly(note, dur_samps);
    }
}

Note* findNoteToSteal() {
    if (!(bool)steal_attr) return nullptr;
    if (active_voices.empty()) return nullptr;
    // Prefer releasing voices
    for (auto it = active_voices.rbegin(); it != active_voices.rend(); ++it)
        if (it->release_flag) return &(*it);
    return &active_voices.front();
}

int findFreeVoice() {
    for (int c : inactive_voices) {
        auto it = pending_voices.find(c);
        if (it == pending_voices.end()) return c;
        if (it->second.release_flag) { pending_voices.erase(it); return c; }
    }
    // Releasing non-mono active voices are also free
    for (auto& n : active_voices)
        if (n.release_flag && !n.mono_flag) return n.target;
    return -1;
}

void sendNoteOn(Note& note, bool steal, bool glide, int dur_samps) {
    int   vi       = note.target - 1;
    voice_done_flags[vi].store(0, std::memory_order_relaxed);
    voice_release_flags[vi].store(0, std::memory_order_relaxed);
    float freq_out = (float)note.freq.back();
    float vel_norm = (float)note.vel;

    if (debug) cout << "note_on voice " << note.target << " freq=" << freq_out
                    << " vel=" << vel_norm << " steal=" << steal
                    << " glide=" << glide << endl;

    voice_cmd[vi].freq          .store(freq_out,          std::memory_order_relaxed);
    voice_cmd[vi].vel           .store(vel_norm,           std::memory_order_relaxed);
    voice_cmd[vi].steal         .store(steal ? 1 : 0,     std::memory_order_relaxed);
    voice_cmd[vi].mono          .store(note.mono_flag ? 1.f : 0.f, std::memory_order_relaxed);
    voice_cmd[vi].duration_samps.store(dur_samps,          std::memory_order_relaxed);
    // glide notes don't fire impulse — use glide flag on the existing VoiceCmd glide field
    // We repurpose the glide atomic: audio thread reads it to decide is_glide
    voice_cmd[vi].glide         .store(glide ? 1.f : 0.f, std::memory_order_relaxed);
    if (!glide || (bool)glide_impulse_attr)
        voice_cmd[vi].impulse   .store(1,                  std::memory_order_relaxed);
    voice_cmd[vi].cmd           .store((int)VoiceCmd::Type::note_on, std::memory_order_release);

    // Promote pending → active
    auto it = pending_voices.find(note.target);
    if (it != pending_voices.end()) {
        active_voices.push_back(it->second);
        pending_voices.erase(it);
        auto vit = std::find(inactive_voices.begin(), inactive_voices.end(), note.target);
        if (vit != inactive_voices.end()) inactive_voices.erase(vit);
    }
}

void allocateNewMonoVoice(float freq, float vel_norm, int dur_samps) {
    int fv = findFreeVoice();
    Note note;
    note.freq      = {freq};
    note.mpitch    = {(int)std::round(freq)};
    note.vel       = vel_norm;
    note.stream    = 1;
    note.mono_flag = true;
    if (fv == -1) {
        Note* s = findNoteToSteal();
        if (!s) return;
        s->freq         = note.freq;
        s->mpitch       = note.mpitch;
        s->vel          = vel_norm;
        s->mono_flag    = true;
        s->release_flag = false;
        size_t idx = s - &active_voices[0];
        rotate(active_voices.begin()+idx, active_voices.begin()+idx+1, active_voices.end());
        sendNoteOn(active_voices.back(), true, false, dur_samps);
        return;
    }
    note.target = fv;
    auto ait = std::find_if(active_voices.begin(), active_voices.end(),
                            [fv](const Note& n){ return n.target == fv; });
    if (ait != active_voices.end()) {
        *ait = note;
        sendNoteOn(*ait, true, false, dur_samps);
    } else {
        pending_voices[fv] = note;
        sendNoteOn(note, false, false, dur_samps);
    }
}

void handleNoteOnMono(float freq, float vel_norm, int dur_samps) {
    if (debug) {
        cout << "handleNoteOnMono freq=" << freq << endl;
        for (auto& n : active_voices)
            cout << "  active voice " << n.target << " mono=" << n.mono_flag
                 << " release=" << n.release_flag << endl;
    }

    // Find existing active (non-releasing) mono voice — always glide into it
    for (auto& n : active_voices) {
        if (n.mono_flag && !n.release_flag) {
            if (debug) cout << "  → glide into voice " << n.target << endl;
            n.freq   = {freq};
            n.mpitch = {(int)std::round(freq)};
            n.vel    = vel_norm;
            sendNoteOn(n, false, true, dur_samps);  // glide=true
            return;
        }
    }

    // Find a releasing mono voice
    for (auto& n : active_voices) {
        if (n.mono_flag && n.release_flag) {
            if ((bool)mono_steals_release_attr) {
                // Steal it — glide to new pitch, cutting off the release
                n.release_flag = false;
                n.freq   = {freq};
                n.mpitch = {(int)std::round(freq)};
                n.vel    = vel_norm;
                sendNoteOn(n, false, true, dur_samps);  // glide=true
            } else {
                // Let release ring out — allocate a new poly voice
                Note pnote;
                pnote.freq      = {freq};
                pnote.mpitch    = {(int)std::round(freq)};
                pnote.vel       = vel_norm;
                pnote.stream    = 1;
                pnote.mono_flag = false;
                handleNoteOnPoly(pnote, dur_samps);
            }
            return;
        }
    }

    // No mono voice yet — allocate one
    allocateNewMonoVoice(freq, vel_norm, dur_samps);
}

void handleNoteOnPoly(Note& note, int dur_samps) {
    int fv = findFreeVoice();
    if (fv != -1) {
        note.target    = fv;
        note.mono_flag = false;
        auto ait = std::find_if(active_voices.begin(), active_voices.end(),
                                [fv](const Note& n){ return n.target == fv; });
        if (ait != active_voices.end()) {
            *ait = note;
            sendNoteOn(*ait, true, false, dur_samps);
        } else {
            pending_voices[fv] = note;
            sendNoteOn(note, false, false, dur_samps);
        }
        return;
    }
    Note* s = findNoteToSteal();
    if (s) {
        s->freq         = note.freq;
        s->mpitch       = note.mpitch;
        s->vel          = note.vel;
        s->release_flag = false;
        s->mono_flag    = false;
        size_t idx = s - &active_voices[0];
        rotate(active_voices.begin()+idx, active_voices.begin()+idx+1, active_voices.end());
        active_voices.back().target = active_voices.back().target; 
        sendNoteOn(active_voices.back(), true, false, dur_samps);
    }
}

private:
    mutex m_mutex;

    struct TriggerEvent {
    double pitch;
    double velocity;
    int    stream;   // <--- NEW: Maps directly to the MC channel index
    };

    fifo<TriggerEvent> trigger_fifo { 2048 };

};

// ─── MC channel count callback ────────────────────────────────────────────────

long voice_alligator_audio_tilde_multichanneloutputs(c74::max::t_object* x, long index, long count) {
    minwrap<voice_alligator_audio_tilde>* ob = (minwrap<voice_alligator_audio_tilde>*)(x);
    return ob->m_min_object.voices;
}

MIN_EXTERNAL(voice_alligator_audio_tilde);