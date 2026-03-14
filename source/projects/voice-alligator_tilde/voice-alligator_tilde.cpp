/// @file
/// @ingroup    minexamples
/// @copyright  Copyright 2018 The Min-DevKit Authors. All rights reserved.
/// @license    Use of this source code is governed by the MIT License found in the License.md file.
///
/// voice-alligator~
///
/// Voice allocator with built-in per-voice ADSR envelope generation.
/// All outputs are multichannel audio signals (one channel per voice).
/// No feedback inlet required — voice completion is detected internally
/// when the ADSR reaches its inactive stage.
///
/// Outlets (each is an MC bundle with one channel per voice):
///   1  out_freq     frequency (DC, held for glide stability during release)
///   2  out_env      ADSR envelope output  ← replaces external mc.adsr~
///   3  out_glide    glide flag
///   4  out_hold     hold flag
///   5  out_sustain  sustain flag
///   6  out_seq      sequencer_note flag
///   7  out_mono     mono flag
///   8  out_impulse  1-sample impulse on every non-glide note-on
///
/// ADSR parameters are set via attributes:
///   @attack_ms  @decay_ms  @sustain_level  @release_ms
///   @attack_curve  @decay_curve  @release_curve
///   @retrigger_ms  @return_to_zero

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

long voice_alligator_tilde_multichanneloutputs(c74::max::t_object* x, long index, long count);

class voice_alligator_tilde : public object<voice_alligator_tilde>, public vector_operator<> {
public:
MIN_DESCRIPTION{"voice allocator with built-in ADSR — all outputs as multichannel audio signals"};
MIN_TAGS{"poly~, adsr, voice allocation"};
MIN_AUTHOR{"Jan Godde, Edis Ludwig"};
MIN_RELATED{"poly~, voice-alligator"};
MIN_FLAGS{documentation_flags::do_not_generate};

// Single message inlet
inlet<> in1{this, "(list) midipitch, velocity, (stream), (mono_flag), (realpitch)"};

// Nine MC signal outlets + one message outlet
outlet<> out_freq   {this, "(MC~) frequency per voice",           "multichannelsignal"};  // Outlet 1
outlet<> out_env    {this, "(MC~) ADSR envelope per voice",       "multichannelsignal"};  // Outlet 2
outlet<> out_impulse{this, "(MC~) note-on impulse",               "multichannelsignal"};  // Outlet 3
outlet<> out_glide  {this, "(MC~) glide flag per voice",          "multichannelsignal"};  // Outlet 4
outlet<> out_hold   {this, "(MC~) hold flag per voice",           "multichannelsignal"};  // Outlet 5
outlet<> out_sustain{this, "(MC~) sustain flag per voice",        "multichannelsignal"};  // Outlet 6
outlet<> out_seq    {this, "(MC~) sequencer_note flag per voice", "multichannelsignal"};  // Outlet 7
outlet<> out_mono   {this, "(MC~) mono flag per voice",           "multichannelsignal"};  // Outlet 8
outlet<> out_stream {this, "(MC~) stream flag per voice",         "multichannelsignal"};  // Outlet 9
outlet<> out_msg    {this, "messages"};                                                   // Outlet 10

message<> maxclass_setup{this, "maxclass_setup", MIN_FUNCTION{
    c74::max::t_class* c = args[0];
    c74::max::class_addmethod(c, (c74::max::method)voice_alligator_tilde_multichanneloutputs,
                              "multichanneloutputs", c74::max::A_CANT, 0);
    return {};
}};

message<> setup{this, "setup", MIN_FUNCTION{
    auto* self = (c74::max::t_pxobject*)maxobj();
    self->z_misc |= 64; // Z_MC_OUTLETS only — no MC inlet needed
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
    int value_count() { int c=0; for (const auto& v : data) if (v.has_value()) ++c; return c; }
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
// Written by the scheduler thread via atomics, consumed on the audio thread.

struct VoiceCmd {
    enum class Type : int { none = 0, note_on, note_off, flags_only };

    std::atomic<int>   cmd        {0};
    std::atomic<float> freq       {0.f};
    std::atomic<float> vel        {0.f};
    std::atomic<int>   steal      {0};
    std::atomic<float> glide      {0.f};
    std::atomic<float> hold       {0.f};
    std::atomic<float> sustain    {0.f};
    std::atomic<float> seq        {0.f};
    std::atomic<float> mono       {0.f};
    std::atomic<float> stream     {0.f};  // NEW
    std::atomic<int>   impulse    {0};
    std::atomic<int>   pending_off{0};

    VoiceCmd() = default;
    VoiceCmd(const VoiceCmd&) {}
    VoiceCmd& operator=(const VoiceCmd&) { return *this; }
};

// ─── State ────────────────────────────────────────────────────────────────────

std::vector<Note>             active_voices;
std::unordered_map<int, Note> pending_voices;
std::vector<int>              inactive_voices;
ScaleArray                    scale_array;
std::unordered_set<int>       inactive_channels;
bool                          prev_active_attr = true;

VoiceCmd voice_cmd[1024];
adsr     voice_adsr[1024];        // one lib::adsr per voice, lives on audio thread

// Current DC values held between updates
float live_freq   [1024] {};
float live_vel    [1024] {};   // normalized velocity 0.0-1.0
float live_glide  [1024] {};
float live_hold   [1024] {};
float live_sustain[1024] {};
float live_seq    [1024] {};
float live_mono   [1024] {};
float live_stream [1024] {};  

// Audio-thread tracking: is this voice's ADSR currently running?
bool audio_voice_active[1024] {};

// Impulse pending per voice — set by note_on, fired at the right sample by the audio thread
bool pending_impulse[1024] {};

// Last envelope output per voice — used to set initial value for smooth glide retrigger
float last_env_output[1024] {};

// Per-voice velocity gain ramp (audio thread only) — multiplier applied to envelope output.
// Normally 1.0; on glide retrigger transitions from 1.0 to new_vel/old_vel over attack_ms.
struct VoiceVelRamp {
    float current {1.f};
    float target  {1.f};
    float step    {0.f};
};

// Pending freq/vel to apply at the bottom of a declick ramp (return_to_zero=true, non-glide note)
struct VoicePendingFreq {
    bool  active   {false};
    float freq     {0.f};
    float vel_norm {1.f};
};
VoiceVelRamp     voice_vel_ramp   [1024];
VoicePendingFreq voice_pending_freq[1024];

// Audio → scheduler: set to 1 when ADSR finishes, drained by poll timer
std::atomic<int> voice_done_flags[1024] {};

double m_samplerate {44100.0};

// ─── ADSR parameter cache ─────────────────────────────────────────────────────

std::atomic<float> adsr_attack    {10.f};
std::atomic<float> adsr_decay     {100.f};
std::atomic<float> adsr_sustain_lvl  {0.8f};
std::atomic<float> adsr_release   {300.f};
std::atomic<float> adsr_attack_curve {0.f};
std::atomic<float> adsr_decay_curve  {0.f};
std::atomic<float> adsr_release_curve{0.f};
std::atomic<float> adsr_retrigger_ms {5.f};
std::atomic<bool>  adsr_return_to_zero{true};

// ─── Glide parameter cache ────────────────────────────────────────────────────

std::atomic<float> glide_time_ms  {0.f};   // 0 = instant (no glide)
std::atomic<float> glide_curvature{0.f};   // 0 = linear, >0 = logarithmic (exponential feel)
std::atomic<bool>  glide_retrigger{false}; // false=legato (envelope continues), true=full retrigger no declick

// ─── Per-voice glide state (audio thread only) ────────────────────────────────

struct VoiceGlide {
    float current_freq  {0.f};   // current output frequency (in Hz), interpolated each sample
    float target_freq   {0.f};   // destination frequency
    float start_freq    {0.f};   // frequency at the start of this glide segment
    int   samples_total {0};     // total samples for the current glide
    int   samples_done  {0};     // samples elapsed so far
    bool  active        {false}; // true while gliding
};

VoiceGlide voice_glide[1024];

// ─── Attributes ───────────────────────────────────────────────────────────────

attribute<bool> active_attr{this, "active", true, description{"Activates Note-On Processing (default true)"},
    setter{MIN_FUNCTION{
        bool v = args[0]; unsigned long n = args.size();
        if (n == 1) { inactive_channels.clear(); prev_active_attr = v; return {v}; }
        if (n == 2) {
            int stream = args[0]; bool val = args[1];
            if (!val) inactive_channels.insert(stream); else inactive_channels.erase(stream);
            return {prev_active_attr};
        }
        if (n > 2) cerr << "too many arguments" << endl;
        return {v};
    }}
};

attribute<bool>   debug                   {this, "debug",               false,  description{"Debug on / off"}, visibility::show};
attribute<bool>   mono_steals_release_attr{this, "mono_steals_release", false,  description{"Mono notes steal releasing mono notes (default false)"}};
attribute<bool>   hold_attr               {this, "hold",                false,  description{"Hold on / off"}};
attribute<number> basefreq_attr           {this, "basefreq",            440.0f, description{"Standard A (default 440.0 hz)"}};
attribute<bool>   steal_attr              {this, "steal",               true,   description{"Steal on / off (default true)"}};

attribute<number> glidetime_attr{this, "glidetime", 30.0,
    description{"Glide time in milliseconds. 0 = no glide (default 30)"},
    setter{MIN_FUNCTION{
        glide_time_ms.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};

attribute<number> glidetime_curvature_attr{this, "glidetime_curvature", 0.0,
    description{"Glide curvature: 0 = linear frequency interpolation, 1 = fully logarithmic/exponential (default 0)"},
    setter{MIN_FUNCTION{
        float v = std::max(0.f, std::min(1.f, (float)(number)args[0]));
        glide_curvature.store(v, std::memory_order_relaxed);
        return {(number)v};
    }}
};

attribute<bool> glide_retrigger_attr{this, "glide_retrigger", 0,
    description{"Glide note ADSR behaviour: 0 = legato, envelope continues uninterrupted (default), 1 = full retrigger with attack, no declick"},
    setter{MIN_FUNCTION{
        int v = std::max(0, std::min(1, (int)args[0]));
        glide_retrigger.store(v, std::memory_order_relaxed);
        return {v};
    }}
};

attribute<bool> glide_impulse_attr{this, "glide_impulse", false,
    description{"Send impulse on outlet 8 when a glide note is triggered (default false)"}};

// ── ADSR attributes ───────────────────────────────────────────────────────────

attribute<number> attack_attr{this, "attack", 10.0,
    description{"ADSR attack time in milliseconds (default 10)"},
    setter{MIN_FUNCTION{
        adsr_attack.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<number> decay_attr{this, "decay", 100.0,
    description{"ADSR decay time in milliseconds (default 100)"},
    setter{MIN_FUNCTION{
        adsr_decay.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<number> sustain_level_attr{this, "sustain_level", 0.8,
    description{"ADSR sustain level 0.0-1.0 (default 0.8)"},
    setter{MIN_FUNCTION{
        adsr_sustain_lvl.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<number> release_attr{this, "release", 300.0,
    description{"ADSR release time in milliseconds (default 300)"},
    setter{MIN_FUNCTION{
        adsr_release.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<number> attack_curve_attr{this, "attack_curve", 0.0,
    description{"ADSR attack curve +/-100 (default 0 = linear)"},
    setter{MIN_FUNCTION{
        adsr_attack_curve.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<number> decay_curve_attr{this, "decay_curve", 0.0,
    description{"ADSR decay curve +/-100 (default 0 = linear)"},
    setter{MIN_FUNCTION{
        adsr_decay_curve.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<number> release_curve_attr{this, "release_curve", 0.0,
    description{"ADSR release curve +/-100 (default 0 = linear)"},
    setter{MIN_FUNCTION{
        adsr_release_curve.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<number> declick_ms_attr{this, "declick_ms", 5.0,
    description{"ADSR declick ramp time in milliseconds (default 5)"},
    setter{MIN_FUNCTION{
        adsr_retrigger_ms.store((float)(number)args[0], std::memory_order_relaxed);
        return args;
    }}
};
attribute<bool> return_to_zero_attr{this, "return_to_zero", true,
    description{"ADSR retrigger returns to zero before attack (default true)"}, visibility::hide,
    setter{MIN_FUNCTION{
        adsr_return_to_zero.store((bool)args[0], std::memory_order_relaxed);
        return args;
    }}
};

// ── Voice / steal attributes ──────────────────────────────────────────────────

int  steal_case = 1;
bool steal_was_set = false;
bool steal_hold_var = false;

attribute<bool> steal_hold_attr{this, "steal_hold", true, description{"Steal Hold Notes on / off"},
    setter{MIN_FUNCTION{
        bool v = args[0]; steal_hold_var = v;
        if (steal_was_set) setStealcase(); else steal_was_set = true;
        return {v};
    }}
};

attribute<bool> scale_fill_attr{this, "scale_fill", true,
    description{"Fill non-defined scale entries with MTOF (default true)"}};

enum class mono_note_priority : int { LAST, LOW, HIGH, enum_count };
enum_map mono_note_priority_range = {"Last Note Priority", "Low Note Priority", "High Note Priority"};
attribute<mono_note_priority> mono_note_priority_attr{this, "mono_note_priority",
    mono_note_priority::LAST, mono_note_priority_range,
    description{"Mono mode: last / low / high note (default last)"}};

enum class respect_stream_priorities : int { NO, YES, MAYBE, enum_count };
enum_map respect_stream_priorities_range = {"Ignore Stream Priorities", "Stream can't steal lower Stream", "Stream can steal lower Stream"};
bool respect_stream_priorities_was_set = false;
int  respect_stream_priorities_var = 1;
attribute<respect_stream_priorities> respect_stream_priorities_attr{this, "respect_stream_priorities",
    respect_stream_priorities::YES, respect_stream_priorities_range,
    description{"0 Don't respect, 1 Respect, 2 Respect but steal (default 1)"},
    setter{MIN_FUNCTION{
        int v = args[0]; respect_stream_priorities_var = v;
        if (respect_stream_priorities_was_set) setStealcase(); else respect_stream_priorities_was_set = true;
        return {v};
    }}
};

enum class scale_def_mode : int { mpitch, freq, enum_count };
enum_map scale_def_mode_range = {"Midi Pitch", "Frequency"};
attribute<scale_def_mode> scale_def_mode_attr{this, "scale_def_mode", scale_def_mode::freq,
    scale_def_mode_range, description{"Define Scale by Midi Note or Frequency (default frequency)"}};

enum class output_mode : int { mpitch, freq, enum_count };
enum_map output_mode_range = {"Midi Pitch", "Frequency"};
attribute<output_mode> output_mode_attr{this, "output_mode", output_mode::freq,
    output_mode_range, description{"Output Midi Notes or Frequencies (default frequency)"}};

int voices = 1;

argument<int> voices_arg{this, "voices_arg", description{"Number of voices, max: 1024"},
    {MIN_ARGUMENT_FUNCTION{ voices = arg; }}
};

// ─── Constructor ──────────────────────────────────────────────────────────────

voice_alligator_tilde(const atoms& args = {}) {
    setStealcase();
    int n = voices;
    if (args.size()) n = args[0];
    if (n > 1024) { cerr << "maximum number of voices is 1024" << endl; return; }
    voices = n;
    resetVoices(n);
}

// ─── Reset all voice state ────────────────────────────────────────────────────

void resetVoices(int n) {
    inactive_voices.clear();
    active_voices.clear();
    pending_voices.clear();
    for (int i = 0; i < 1024; ++i) {
        voice_done_flags[i].store(0, std::memory_order_relaxed);
        voice_cmd[i].cmd        .store(0, std::memory_order_relaxed);
        voice_cmd[i].pending_off.store(0, std::memory_order_relaxed);
    }
    std::fill(std::begin(audio_voice_active), std::end(audio_voice_active), false);
    std::fill(std::begin(pending_impulse),    std::end(pending_impulse),    false);
    std::fill(std::begin(last_env_output),    std::end(last_env_output),    0.f);
    for (int i = 0; i < 1024; ++i) {
        voice_glide[i]        = VoiceGlide{};
        voice_vel_ramp[i]     = VoiceVelRamp{};
        voice_pending_freq[i] = VoicePendingFreq{};
    }
    for (int i = 1; i <= n; ++i) inactive_voices.push_back(i);
}

// ─── Apply ADSR params to one voice (audio thread) ───────────────────────────

void applyADSRParams(int v, float vel_norm = 1.f) {
    double sr  = m_samplerate;
    float  sl  = adsr_sustain_lvl.load(std::memory_order_relaxed);
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

// Apply only timing/curve params — does NOT touch peak, sustain, or initial.
// Used before trigger() when a declick may occur, to avoid snapping the output level.
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


    for (int v = 0; v < n; ++v) {
        // Consume pending command from scheduler thread
        int cmd = voice_cmd[v].cmd.exchange(0, std::memory_order_acquire);
        bool log_samples = false;


        if (cmd == (int)VoiceCmd::Type::note_on) {
            float new_freq  = voice_cmd[v].freq .load(std::memory_order_relaxed);
            float new_vel   = voice_cmd[v].vel  .load(std::memory_order_relaxed);
            bool  is_glide  = voice_cmd[v].glide.load(std::memory_order_relaxed) > 0.5f;
            bool  is_steal  = voice_cmd[v].steal.load(std::memory_order_relaxed) == 1;
            float gt_ms     = glide_time_ms.load(std::memory_order_relaxed);
            int   gt_samps  = (gt_ms > 0.f) ? static_cast<int>((gt_ms / 1000.f) * (float)m_samplerate) : 0;


            live_freq   [v] = new_freq;
            live_vel    [v] = new_vel;
            live_glide  [v] = voice_cmd[v].glide  .load(std::memory_order_relaxed);
            live_hold   [v] = voice_cmd[v].hold   .load(std::memory_order_relaxed);
            live_sustain[v] = voice_cmd[v].sustain.load(std::memory_order_relaxed);
            live_seq    [v] = voice_cmd[v].seq    .load(std::memory_order_relaxed);
            live_mono   [v] = voice_cmd[v].mono   .load(std::memory_order_relaxed);
            live_stream [v] = voice_cmd[v].stream .load(std::memory_order_relaxed);

            static float last_stream[1024] = {0};
            if (debug && last_stream[v] != live_stream[v]) {
                cout << "audio: voice " << v+1 << " live_stream changed from " 
                    << last_stream[v] << " to " << live_stream[v] << endl;
                last_stream[v] = live_stream[v];
            }



            if (!is_glide) {
                bool rtz      = adsr_return_to_zero.load(std::memory_order_relaxed);
                bool do_declick = is_steal || (rtz && audio_voice_active[v]);
                if (do_declick) {
                    // Always declick on steal; also declick on retrigger if return_to_zero is set.
                    applyADSRTimingOnly(v);
                    voice_adsr[v].trigger(true);
                    if (voice_adsr[v].stage() == adsr::adsr_stage::attack) {
                        // trigger() went straight to attack (voice was releasing, m_active=false).
                        // No retrigger ramp — set initial to current level for smooth crossfade.
                        voice_adsr[v].initial(last_env_output[v]);
                        voice_adsr[v].peak   (new_vel);
                        voice_adsr[v].sustain(adsr_sustain_lvl.load(std::memory_order_relaxed) * new_vel);
                        voice_glide[v].current_freq  = new_freq;
                        voice_glide[v].target_freq   = new_freq;
                        voice_glide[v].active        = false;
                    } else {
                        // retrigger stage active — defer freq/peak/sustain to bottom of declick
                        voice_pending_freq[v] = {true, new_freq, new_vel};
                    }
                } else {
                    // No declick — apply everything immediately
                    applyADSRParams(v, new_vel);
                    voice_adsr[v].trigger(true);
                    voice_glide[v].current_freq  = new_freq;
                    voice_glide[v].target_freq   = new_freq;
                    voice_glide[v].active        = false;
                    voice_pending_freq[v].active = false;
                }
                voice_vel_ramp[v] = {1.f, 1.f, 0.f};
            } else {
                const int gr = glide_retrigger.load(std::memory_order_relaxed);
                voice_adsr[v].return_to_zero(false);
                voice_pending_freq[v].active = false; // glides never defer freq

                // Set up pitch glide immediately (glides have no declick)
                if (gt_samps > 0 && voice_glide[v].current_freq > 0.f) {
                    voice_glide[v].start_freq    = voice_glide[v].current_freq;
                    voice_glide[v].target_freq   = new_freq;
                    voice_glide[v].samples_total = gt_samps;
                    voice_glide[v].samples_done  = 0;
                    voice_glide[v].active        = true;
                } else {
                    voice_glide[v].current_freq  = new_freq;
                    voice_glide[v].target_freq   = new_freq;
                    voice_glide[v].active        = false;
                }
                if (gr == 0) {
                    // Legato: envelope and velocity completely uninterrupted
                    if (debug) cout << "glide legato voice " << v+1 << endl;
                } else {
                    // Retrigger: smoothly transition from current level to new peak over attack time
                    if (debug) cout << "glide retrigger voice " << v+1
                        << " last_env=" << last_env_output[v]
                        << " new_vel=" << new_vel
                        << " m_active=" << voice_adsr[v].active()
                        << " attack_ms=" << adsr_attack.load(std::memory_order_relaxed)
                        << " sr=" << m_samplerate << endl;
                    
                    // Store current value for the transition
                    float current_env = last_env_output[v];
                    float target_vel = new_vel;
                    
                    // Calculate attack samples
                    float attack_ms = adsr_attack.load(std::memory_order_relaxed);
                    int attack_samples = static_cast<int>((attack_ms / 1000.f) * (float)m_samplerate);
                    
                    if (attack_samples > 0 && current_env > 0.001f) {
                        // Apply ADSR params with the target velocity
                        applyADSRParams(v, target_vel);
                        
                        // Set the initial value to the current envelope level
                        voice_adsr[v].initial(current_env);
                        
                        // Force the ADSR into attack stage starting from current_env
                        // We need to bypass the normal retrigger logic
                        voice_adsr[v].trigger(false);  // Force to inactive
                        voice_adsr[v].trigger(true);   // This will put it in attack stage with initial=current_env
                        
                        // Reset velocity ramp
                        voice_vel_ramp[v] = {1.f, 1.f, 0.f};
                    } else {
                        // No attack time or envelope was silent, just jump
                        applyADSRParams(v, target_vel);
                        voice_adsr[v].trigger(true);
                        voice_vel_ramp[v] = {1.f, 1.f, 0.f};
                    }
                    
                    if (debug) { 
                        cout << "  after trigger stage=" << (int)voice_adsr[v].stage() 
                            << " initial=" << current_env 
                            << " peak=" << target_vel << endl; 
                        log_samples = true; 
                    }
                }
            }
            audio_voice_active[v] = true;

            // If a note-off arrived while the note-on was pending (very short note),
            // trigger release immediately after the note-on is processed.
            if (voice_cmd[v].pending_off.exchange(0, std::memory_order_acquire)) {
                voice_adsr[v].trigger(false);
            }

            // If a note-off arrived before the audio thread could consume the note-on,
            // it was stored in pending_off — process it now so the voice releases correctly.
            if (voice_cmd[v].pending_off.exchange(0, std::memory_order_acquire)) {
                voice_adsr[v].trigger(false);
            }
        }
        else if (cmd == (int)VoiceCmd::Type::note_off) {
            live_glide  [v] = voice_cmd[v].glide  .load(std::memory_order_relaxed);
            live_hold   [v] = voice_cmd[v].hold   .load(std::memory_order_relaxed);
            live_sustain[v] = voice_cmd[v].sustain.load(std::memory_order_relaxed);
            live_seq    [v] = voice_cmd[v].seq    .load(std::memory_order_relaxed);
            live_mono   [v] = voice_cmd[v].mono   .load(std::memory_order_relaxed);
            live_stream [v] = voice_cmd[v].stream .load(std::memory_order_relaxed);
            voice_adsr[v].trigger(false);
        }
        else if (cmd == (int)VoiceCmd::Type::flags_only) {
            live_glide  [v] = voice_cmd[v].glide  .load(std::memory_order_relaxed);
            live_hold   [v] = voice_cmd[v].hold   .load(std::memory_order_relaxed);
            live_sustain[v] = voice_cmd[v].sustain.load(std::memory_order_relaxed);
            live_seq    [v] = voice_cmd[v].seq    .load(std::memory_order_relaxed);
            live_mono   [v] = voice_cmd[v].mono   .load(std::memory_order_relaxed);
            live_stream [v] = voice_cmd[v].stream .load(std::memory_order_relaxed);
        }

       // Output channel base offsets (9 MC outlets × n channels each)
        auto* ch_freq    = output.samples(0*n + v);
        auto* ch_env     = output.samples(1*n + v);
        auto* ch_impulse = output.samples(2*n + v);  // Now outlet 3
        auto* ch_glide   = output.samples(3*n + v);  // Outlet 4
        auto* ch_hold    = output.samples(4*n + v);  // Outlet 5
        auto* ch_sustain = output.samples(5*n + v);  // Outlet 6
        auto* ch_seq     = output.samples(6*n + v);  // Outlet 7
        auto* ch_mono    = output.samples(7*n + v);  // Outlet 8
        auto* ch_stream  = output.samples(8*n + v);  // Outlet 9

        const int imp = voice_cmd[v].impulse.exchange(0, std::memory_order_relaxed);
        if (imp) {
            // If ADSR is already in attack (trigger went straight, no retrigger ramp),
            // fire impulse on sample 0 of this vector via the pending flag —
            // the sample loop will catch it on the first iteration since stage_before
            // will be attack but we check pending_impulse independently.
            pending_impulse[v] = true;
        }

        // Read glide params once per vector
        const float curve = glide_curvature.load(std::memory_order_relaxed);

        int  log_count   = 0;


        for (int i = 0; i < frames; ++i) {
            const adsr::adsr_stage stage_before = voice_adsr[v].stage();
            float env = static_cast<float>(voice_adsr[v]());
            const adsr::adsr_stage stage_after  = voice_adsr[v].stage();
            last_env_output[v] = env;

            // Apply velocity gain ramp
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

            if (log_samples && log_count < 4) {
                cout << "  sample " << i << " raw_env=" << (env / voice_vel_ramp[v].current)
                     << " ramp=" << voice_vel_ramp[v].current
                     << " final_env=" << env
                     << " stage=" << (int)stage_after << endl;
                ++log_count;
            }

            // Detect envelope finishing — notify scheduler to reclaim voice
            if (audio_voice_active[v] && stage_after == adsr::adsr_stage::inactive) {
                audio_voice_active[v] = false;
                voice_done_flags[v].store(1, std::memory_order_release);
            }

            // At retrigger→attack transition: apply deferred freq, peak, sustain, initial
            if (stage_before != adsr::adsr_stage::attack && stage_after == adsr::adsr_stage::attack) {
                if (voice_pending_freq[v].active) {
                    float pvel = voice_pending_freq[v].vel_norm;
                    float sl   = adsr_sustain_lvl.load(std::memory_order_relaxed);
                    voice_adsr[v].initial(0.0);
                    voice_adsr[v].peak   (pvel);
                    voice_adsr[v].sustain(sl * pvel);
                    voice_glide[v].current_freq  = voice_pending_freq[v].freq;
                    voice_glide[v].target_freq   = voice_pending_freq[v].freq;
                    voice_glide[v].active        = false;
                    voice_pending_freq[v].active = false;
                }
            }

            // Fire impulse at retrigger→attack transition, or on sample 0 if already in attack
            bool fire_impulse = false;
            if (pending_impulse[v]) {
                bool transition = (stage_before != adsr::adsr_stage::attack &&
                                   stage_after  == adsr::adsr_stage::attack);
                bool already_attack = (stage_before == adsr::adsr_stage::attack && i == 0);
                if (transition || already_attack) {
                    fire_impulse       = true;
                    pending_impulse[v] = false;
                }
            }

            // ── Glide interpolation ───────────────────────────────────────────
            float out_freq;
            if (voice_glide[v].active) {
                const float sf = voice_glide[v].start_freq;
                const float tf = voice_glide[v].target_freq;
                const float t  = (voice_glide[v].samples_total > 0)
                    ? std::min((float)voice_glide[v].samples_done / (float)voice_glide[v].samples_total, 1.f)
                    : 1.f;

                // Linear interpolation in Hz
                const float freq_lin = sf + t * (tf - sf);

                // Logarithmic interpolation in semitone space (log2 Hz)
                float freq_log = freq_lin; // fallback if freqs aren't positive
                if (sf > 0.f && tf > 0.f)
                    freq_log = std::pow(2.f, std::log2(sf) + t * (std::log2(tf) - std::log2(sf)));

                // Blend: curve=0 → pure linear Hz, curve=1 → pure log (semitone) interp
                out_freq = freq_lin + curve * (freq_log - freq_lin);

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
            // ─────────────────────────────────────────────────────────────────

         ch_freq   [i] = out_freq;
        ch_env    [i] = env;
        ch_impulse[i] = fire_impulse ? 1.f : 0.f; 
        ch_glide  [i] = live_glide  [v];
        ch_hold   [i] = live_hold   [v];
        ch_sustain[i] = live_sustain[v];
        ch_seq    [i] = live_seq    [v];
        ch_mono   [i] = live_mono   [v];
        ch_stream [i] = live_stream [v]; 
        }
    }

    // Zero-fill spare output channels (safety)
    const int total_out = static_cast<int>(output.channel_count());
    for (int ch = 9*n; ch < total_out; ++ch) {
        auto* buf = output.samples(ch);
        for (int i = 0; i < frames; ++i) buf[i] = 0.f;
    }
}

// ─── Poll timer: drain voice_done_flags on the scheduler thread ───────────────

timer<timer_options::defer_delivery> adsr_poll{this, MIN_FUNCTION{
    const int n = voices;
    for (int v = 0; v < n; ++v) {
        if (!voice_done_flags[v].exchange(0, std::memory_order_acquire)) continue;

        const int target = v + 1;
        lock lock{m_mutex};

        if (debug) cout << "Voice " << target << " ADSR done → inactive" << endl;

        live_freq   [v] = 0.f;
        live_glide  [v] = 0.f;
        live_hold   [v] = 0.f;
        live_sustain[v] = 0.f;
        live_seq    [v] = 0.f;
        live_mono   [v] = 0.f;
        live_stream [v] = 0.f; 
        voice_glide [v] = VoiceGlide{};

        auto it = std::find_if(active_voices.begin(), active_voices.end(),
                               [target](const Note& n){ return n.target == target; });
        if (it != active_voices.end()) active_voices.erase(it);
        pending_voices.erase(target);
        inactive_voices.push_back(target);

        if (debug) cout << "  inactive_voices size=" << inactive_voices.size() << endl;
    }
    adsr_poll.delay(1);
    return {};
}};

// ─── dspsetup ────────────────────────────────────────────────────────────────

message<> dspsetup{this, "dspsetup", MIN_FUNCTION{
    m_samplerate = samplerate();
    // Full reset — clears all voice state, pending commands, glide, impulse, and vel ramp.
    // Necessary because the audio thread restarts and any stale state from the previous
    // DSP session could cause incorrect behaviour.
    {
        lock l{m_mutex};
        resetVoices(voices);
    }
    for (int v = 0; v < voices; ++v) applyADSRParams(v);
    adsr_poll.delay(1);
    return {};
}};



// ─── Mono attribute ───────────────────────────────────────────────────────────

bool mono_attr_was_set_on_load = false;

attribute<bool, threadsafe::yes> mono_attr{this, "mono", false, description{"Monophony on / off"},
    setter{MIN_FUNCTION{
        bool v = args[0];
        if (!v) {
            if (mono_attr_was_set_on_load) lock lock{m_mutex};
            mono_attr_was_set_on_load = true;
            for (auto& note : active_voices) {
                if (note.mpitch.size() > 1) note.mpitch = {note.mpitch.back()};
                if (note.freq.size()   > 1) note.freq   = {note.freq.back()};
            }
        }
        return {v};
    }}
};

// ─── Sustain attribute ────────────────────────────────────────────────────────

bool sustain_attr_was_set_on_load = false;

attribute<bool, threadsafe::yes> sustain_attr{this, "sustain", false, description{"Sustain on / off"},
    setter{MIN_FUNCTION{
        bool v = args[0];
        std::vector<Note> to_send;
        if (!v && sustain_attr_was_set_on_load) {
            lock lock{m_mutex};
            for (auto& n : active_voices)
                if (n.sustain_flag && !n.release_flag) { n.release_flag = true; to_send.push_back(n); }
        }
        for (auto& n : to_send) outputFunction(n, 0, 0, false);
        sustain_attr_was_set_on_load = true;
        return {v};
    }}
};

// ─── Scale array attribute ────────────────────────────────────────────────────

attribute<int> scale_array_maxsize_attr{this, "scalearray_maxsize", 128,
    description{"Maximum entries in scale array (default 128)"},
    setter{MIN_FUNCTION{
        int s = args[0]; scale_array.set_size(s); scale_array.fill_container(s); return {s};
    }}
};

// ─── Main inlet function ──────────────────────────────────────────────────────

function mainInletFunction = MIN_FUNCTION{
    lock lock{m_mutex};
    if (inlet == 0) {
        int    mpitch  = args[0];
        number vel     = args[1];
        unsigned long argsize = args.size();

        if (debug && argsize < 4) cout << "Note: " << mpitch << " " << vel << endl;

        Note current_note = newNote(mpitch, vel);

        if (argsize >= 3) current_note.stream = (int)args[2];
        if (debug) cout << "  stream set to " << current_note.stream << endl;
        if (argsize >= 4) {
            current_note.mono_flag            = (int)args[3];
            current_note.sequencer_note_flag  = true;
            if (debug && argsize == 4) cout << "  Sequencer note" << endl;
        }
        if (argsize >= 5) {
            number rp = args[4];
            if (output_mode_attr == output_mode::freq) {
                current_note.freq.pop_back(); current_note.freq.push_back(rp);
            } else {
                current_note.mpitch.pop_back(); current_note.mpitch.push_back((int)rp);
            }
        }

        if (vel != 0) {
            if (inactive_channels.count(current_note.stream)
             || (inactive_channels.empty() && !active_attr)) return {};
            if (output_mode_attr == output_mode::freq && argsize < 4 && !scale_array.get_value(mpitch)) {
                if (debug) cout << "mpitch " << mpitch << " not in scale_array" << endl;
                return {};
            }
            handleNoteOn(current_note, lock);
        } else {
            handleNoteOff(current_note, lock);
        }
    }
    return {};
};

// ─── Note construction ────────────────────────────────────────────────────────

Note newNote(int mpitch, int vel) {
    Note n;
    n.mpitch.push_back(mpitch);
    if (output_mode_attr == output_mode::freq && scale_array.get_value(mpitch))
        n.freq.push_back(static_cast<number>(*scale_array.get_value(mpitch)) * (basefreq_attr / 440.0));
    else
        n.freq.push_back(mpitch);
    n.vel = vel;
    return n;
}

// ─── Note on / off routing ────────────────────────────────────────────────────

void handleNoteOn(Note& note, lock& lock) {
    if      (note.sequencer_note_flag) { if (note.mono_flag) handleNoteOnMono(note, lock); else handleNoteOnPoly(note, lock); }
    else if (!mono_attr)                handleNoteOnPoly(note, lock);
    else                                handleNoteOnMono(note, lock);
}

void handleNoteOnMono(Note& note, lock& lock) {
    int  st = note.stream;
    Note nts;

    if (!note.sequencer_note_flag) {
        if (auto* mt = findFirstNoteWithPredicate([=](const Note& n){
                return n.mono_flag && !n.hold_flag && n.stream == st && !n.release_flag; })) {
            if (mono_note_priority_attr == mono_note_priority::LOW  && mt->return_lowest_mpitch()  < note.mpitch.back()) return;
            if (mono_note_priority_attr == mono_note_priority::HIGH && mt->return_highest_mpitch() > note.mpitch.back()) return;
            mt->mpitch.push_back(note.mpitch.back());
            mt->freq.push_back(note.freq.back());
            mt->vel = note.vel; mt->sustain_flag = sustain_attr;
            nts = *mt; lock.unlock();
            outputFunction(nts, 1, 1, false, true); return;
        }
    } else {
        if (auto* mt = findFirstNoteWithPredicate([=](const Note& n){
                return n.mono_flag && n.stream == st && !n.release_flag; })) {
            mt->vel = note.vel; mt->mpitch = note.mpitch; mt->freq = note.freq;
            nts = *mt; lock.unlock();
            outputFunction(nts, 1, 1, false, true); return;
        }
    }

    if (mono_steals_release_attr) {
        if (auto* mt = findFirstNoteWithPredicate([=](const Note& n){
                return n.mono_flag && n.stream == st && n.release_flag; })) {
            if (mono_note_priority_attr == mono_note_priority::LOW  && !note.sequencer_note_flag && mt->return_lowest_mpitch()  < note.mpitch.back()) return;
            if (mono_note_priority_attr == mono_note_priority::HIGH && !note.sequencer_note_flag && mt->return_highest_mpitch() > note.mpitch.back()) return;
            mt->release_flag = false; mt->sustain_flag = sustain_attr;
            mt->mpitch = {note.mpitch.back()}; mt->freq = {note.freq.back()};
            mt->vel = note.vel; nts = *mt; lock.unlock();
            outputFunction(nts, 1, 1, false, true); return;
        }
    }

    int fv = findFreeVoice();
    if (fv != -1) {
        note.target = fv; note.mono_flag = true;
        pending_voices[fv] = note;
        lock.unlock(); outputFunction(note, 1, 0); return;
    }
    Note* s = findNoteToSteal(note);
    if (s) {
        s->mpitch = note.mpitch; s->freq = note.freq; s->vel = note.vel;
        s->stream = note.stream; s->sequencer_note_flag = note.sequencer_note_flag;
        s->release_flag = false; s->hold_flag = false; s->mono_flag = true; s->sustain_flag = false;
        size_t idx = s - &active_voices[0];
        rotate(active_voices.begin()+idx, active_voices.begin()+idx+1, active_voices.end());
        nts = active_voices.back(); lock.unlock(); outputFunction(nts, 1, 1);
    }
    // If steal also failed (e.g. all remaining voices are held), fall through to poly
    // allocation so the new note is always played fresh rather than silently dropped.
    else {
        handleNoteOnPoly(note, lock);
    }
}

void handleNoteOnPoly(Note& note, lock& lock) {
    int fv = findFreeVoice();
    if (fv != -1) {
        note.target = fv; note.mono_flag = false; note.sustain_flag = sustain_attr;
        pending_voices[fv] = note;
        lock.unlock(); outputFunction(note, 1, 0);
    } else {
        Note* s = findNoteToSteal(note);
        if (s) {
            s->mpitch = note.mpitch; s->freq = note.freq; s->vel = note.vel;
            s->stream = note.stream; s->sequencer_note_flag = note.sequencer_note_flag;
            s->release_flag = false; s->hold_flag = false; s->sustain_flag = false; s->mono_flag = false;
            size_t idx = s - &active_voices[0];
            rotate(active_voices.begin()+idx, active_voices.begin()+idx+1, active_voices.end());
            lock.unlock(); outputFunction(active_voices.back(), 1, 1);
        }
    }
}

void handleNoteOff(Note& inc, lock& lock) {
    int st   = inc.stream;
    int mpit = inc.mpitch.back();
    Note nts;

    for (auto& x : active_voices)

    for (auto it = pending_voices.begin(); it != pending_voices.end(); ++it) {
        if (it->second.mpitch.back() == mpit && it->second.stream == st) {
            it->second.release_flag = true;
            nts = it->second; lock.unlock();
            outputFunction(nts, 0, 0); return;
        }
    }

    if (!inc.sequencer_note_flag) {
        if (hold_attr && !sustain_attr) {
            if (auto* n = findFirstNoteWithPredicate([=](const Note& x){
                    bool is_last_mpitch = (x.mpitch.size()==1 && x.mpitch.back()==mpit)
                                      || (x.mono_flag && x.mpitch.size()>1 &&
                                          std::find(x.mpitch.begin(), x.mpitch.end(), mpit) != x.mpitch.end() &&
                                          x.mpitch.back()==mpit);
                    return is_last_mpitch && !x.hold_flag && x.stream==st && !x.release_flag; })) {
                n->hold_flag = true; nts = *n; lock.unlock();
                outputFunction(nts, 0, 0, true); return;
            } else {
            }
        } else if (sustain_attr) {
            if (auto* n = findFirstNoteWithPredicate([=](const Note& x){
                    bool is_last_mpitch = (x.mpitch.size()==1 && x.mpitch.back()==mpit)
                                      || (x.mono_flag && x.mpitch.size()>1 &&
                                          std::find(x.mpitch.begin(), x.mpitch.end(), mpit) != x.mpitch.end() &&
                                          x.mpitch.back()==mpit);
                    return is_last_mpitch && !x.sustain_flag && x.stream==st && !x.release_flag; })) {
                n->sustain_flag = true; nts = *n; lock.unlock();
                outputFunction(nts, 0, 0, true); return;
            }
        }
    }

    if (auto* n = findFirstNoteWithPredicate([=](const Note& x){
            return x.stream==st && x.mpitch.size()==1 && x.mpitch.back()==mpit
                && !x.hold_flag && !x.sustain_flag && !x.release_flag; })) {
        n->release_flag = true; nts = *n; lock.unlock();
        outputFunction(nts, 0, 0); return;
    }

    if (auto* n = findFirstNoteWithPredicate([=](const Note& x){
            return x.stream==st && x.mono_flag && !x.hold_flag && !x.sustain_flag && !x.release_flag; })) {
        switch (mono_note_priority_attr) {
        case mono_note_priority::LAST:
            if (n->mpitch.back()==mpit && n->mpitch.size()>1) {
                n->mpitch.pop_back(); n->freq.pop_back(); n->release_flag=0; nts=*n;
                lock.unlock(); outputFunction(nts,1,1,false,true); return;
            } break;
        case mono_note_priority::HIGH:
            if (n->return_highest_mpitch()==mpit && n->mpitch.size()>1) {
                n->remove_highest_mpitch_entry(); n->release_flag=0; nts=*n;
                lock.unlock(); outputFunction(nts,1,1,false,true); return;
            } break;
        case mono_note_priority::LOW:
            if (n->return_lowest_mpitch()==mpit && n->mpitch.size()>1) {
                n->remove_lowest_mpitch_entry(); n->release_flag=0; nts=*n;
                lock.unlock(); outputFunction(nts,1,1,false,true); return;
            } break;
        default: break;
        }
        // Last mpitch being released — go into hold or sustain if active, otherwise release
        if (!inc.sequencer_note_flag) {
            if (hold_attr && !sustain_attr) {
                n->hold_flag = true; nts = *n; lock.unlock();
                outputFunction(nts, 0, 0, true); return;
            } else if (sustain_attr) {
                n->sustain_flag = true; nts = *n; lock.unlock();
                outputFunction(nts, 0, 0, true); return;
            }
        }
        n->remove_mpitch_and_freq_entry(mpit);
    }
}

// ─── Output function ──────────────────────────────────────────────────────────
// Writes a typed command into the per-voice staging slot for the audio thread.
// Also promotes pending → active for note_on commands.

void outputFunction(const Note note, bool note_on, bool steal, bool flags_only = false, bool glide_note = false) {
    int vi = note.target - 1;
    if (vi < 0 || vi >= 1024) return;

    auto store_flags = [&]() {
        voice_cmd[vi].glide  .store(glide_note               ? 1.f : 0.f, std::memory_order_relaxed);
        voice_cmd[vi].hold   .store(note.hold_flag           ? 1.f : 0.f, std::memory_order_relaxed);
        voice_cmd[vi].sustain.store(note.sustain_flag        ? 1.f : 0.f, std::memory_order_relaxed);
        voice_cmd[vi].seq    .store(note.sequencer_note_flag ? 1.f : 0.f, std::memory_order_relaxed);
        voice_cmd[vi].mono   .store(note.mono_flag           ? 1.f : 0.f, std::memory_order_relaxed);
        if (debug) cout << "outputFunction: voice " << note.target << " stream=" << note.stream << endl;
        voice_cmd[vi].stream .store((float)note.stream, std::memory_order_relaxed); 
    };

    if (note_on && !flags_only) {
        float freq_out;
        if (note.mono_flag && !glide_note) {
            switch (mono_note_priority_attr) {
            case mono_note_priority::HIGH: freq_out = (float)note.return_highest_freq(); break;
            case mono_note_priority::LOW:  freq_out = (float)note.return_lowest_freq();  break;
            default:                       freq_out = (float)note.freq.back();            break;
            }
        } else {
            freq_out = (float)note.freq.back();
        }

        if (debug) cout << "note_on voice " << note.target << " freq=" << freq_out << " glide=" << glide_note << endl;

        voice_cmd[vi].freq .store(freq_out, std::memory_order_relaxed);
        voice_cmd[vi].vel  .store((float)note.vel / 127.f, std::memory_order_relaxed);
        voice_cmd[vi].steal.store((steal && !glide_note) ? 1 : 0, std::memory_order_relaxed);
        store_flags();
        voice_cmd[vi].cmd.store((int)VoiceCmd::Type::note_on, std::memory_order_release);

        if (!glide_note) {
            voice_cmd[vi].impulse.store(1, std::memory_order_relaxed);
        } else if (glide_impulse_attr) {
            voice_cmd[vi].impulse.store(1, std::memory_order_relaxed);
}
        // Mirror original message outlet
        out_msg.send("target", note.target);
        out_msg.send("notes", freq_out, note.vel, "flags", (int)glide_note, (int)note.hold_flag, (int)note.sustain_flag, (int)note.sequencer_note_flag, (int)note.mono_flag, note.stream);

        // Promote pending → active
        auto it = pending_voices.find(note.target);
        if (it != pending_voices.end()) {
            active_voices.push_back(it->second);
            pending_voices.erase(it);
            auto vit = std::find(inactive_voices.begin(), inactive_voices.end(), note.target);
            if (vit != inactive_voices.end()) inactive_voices.erase(vit);
        }
    }
    else if (!note_on && !flags_only) {
        if (debug) cout << "note_off voice " << note.target << endl;
        store_flags();
        // If a note-on is already pending (not yet consumed by audio thread), don't overwrite it.
        // Instead mark pending_off so the audio thread processes both in order.
        if (voice_cmd[vi].cmd.load(std::memory_order_acquire) == (int)VoiceCmd::Type::note_on) {
            voice_cmd[vi].pending_off.store(1, std::memory_order_relaxed);
        } else {
            voice_cmd[vi].pending_off.store(0, std::memory_order_relaxed);
            voice_cmd[vi].cmd.store((int)VoiceCmd::Type::note_off, std::memory_order_release);
        }

        // Mirror original message outlet
        out_msg.send("target", note.target);
        out_msg.send("notes", (float)note.freq.back(), 0, "flags", (int)glide_note, (int)note.hold_flag, (int)note.sustain_flag, (int)note.sequencer_note_flag, (int)note.mono_flag, note.stream);
    }
    else {
        // flags_only (hold / sustain update)
        store_flags();
        voice_cmd[vi].cmd.store((int)VoiceCmd::Type::flags_only, std::memory_order_release);

        // Mirror original message outlet
        out_msg.send("target", note.target);
        out_msg.send("flags", (int)glide_note, (int)note.hold_flag, (int)note.sustain_flag, (int)note.sequencer_note_flag, (int)note.mono_flag, note.stream);
    }
}

// ─── Voice helpers ────────────────────────────────────────────────────────────

int findFreeVoice() {
    for (int c : inactive_voices) {
        auto it = pending_voices.find(c);
        if (it == pending_voices.end()) return c;
        if (it->second.release_flag) { pending_voices.erase(it); return c; }
    }
    return -1;
}

Note* findFirstNoteWithPredicate(std::function<bool(const Note&)> pred) {
    for (auto& n : active_voices) if (pred(n)) return &n;
    return nullptr;
}

Note* findLastNoteWithPredicate(std::function<bool(const Note&)> pred) {
    for (auto it = active_voices.rbegin(); it != active_voices.rend(); ++it)
        if (pred(*it)) return &(*it);
    return nullptr;
}

void setStealcase() {
    if      (respect_stream_priorities_var==1 && !steal_hold_var) steal_case=1;
    else if (respect_stream_priorities_var==0 && !steal_hold_var) steal_case=2;
    else if (respect_stream_priorities_var==2 && !steal_hold_var) steal_case=3;
    else if (respect_stream_priorities_var==1 &&  steal_hold_var) steal_case=4;
    else if (respect_stream_priorities_var==0 &&  steal_hold_var) steal_case=5;
    else if (respect_stream_priorities_var==2 &&  steal_hold_var) steal_case=6;
}

Note* findNoteToSteal(const Note& inc) {
    if (!steal_attr) return nullptr;
    int stream = inc.stream;
    switch (steal_case) {
    case 1:
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.hold_flag&&x.release_flag&&x.stream>stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.hold_flag&&x.release_flag&&x.stream==stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.hold_flag&&x.stream>stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.hold_flag&&x.stream==stream; })) return n;
        break;
    case 2:
        if (auto* n=findFirstNoteWithPredicate([](const Note& x){ return  x.release_flag&&!x.hold_flag; })) return n;
        if (auto* n=findFirstNoteWithPredicate([](const Note& x){ return !x.release_flag&&!x.hold_flag; })) return n;
        break;
    case 3:
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.hold_flag&&x.release_flag&&x.stream>stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.hold_flag&&x.release_flag&&x.stream==stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.hold_flag&&x.release_flag&&x.stream<stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.hold_flag&&!x.release_flag&&x.stream>stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.hold_flag&&!x.release_flag&&x.stream==stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.hold_flag&&!x.release_flag&&x.stream<stream; })) return n;
        break;
    case 4:
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return x.release_flag&&x.stream>stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return x.release_flag&&x.stream==stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return x.stream>stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return x.stream==stream; })) return n;
        break;
    case 5:
        if (auto* n=findFirstNoteWithPredicate([](const Note& x){ return  x.release_flag; })) return n;
        if (auto* n=findFirstNoteWithPredicate([](const Note& x){ return !x.release_flag; })) return n;
        break;
    case 6:
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return x.release_flag&&x.stream>stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return x.release_flag&&x.stream==stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return x.release_flag&&x.stream<stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.release_flag&&x.stream>stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.release_flag&&x.stream==stream; })) return n;
        if (auto* n=findFirstNoteWithPredicate([=](const Note& x){ return !x.release_flag&&x.stream<stream; })) return n;
        break;
    }
    return nullptr;
}

// ─── endhold / scale_def / end ────────────────────────────────────────────────

function endHold = MIN_FUNCTION{
    if (inlet == 0) {
        atom ea = "all"; if (args.size()>0) ea = args[0];
        std::vector<Note> ts;
        if      (ea=="all")   { lock l{m_mutex}; for (auto& n:active_voices) if (n.hold_flag&&!n.release_flag){n.release_flag=true;ts.push_back(n);} }
        else if (ea=="first") { lock l{m_mutex}; if (auto* p=findFirstNoteWithPredicate([](const Note& n){return n.hold_flag&&!n.release_flag;})){p->release_flag=true;ts.push_back(*p);} }
        else if (ea=="last")  { lock l{m_mutex}; if (auto* p=findLastNoteWithPredicate ([](const Note& n){return n.hold_flag&&!n.release_flag;})){p->release_flag=true;ts.push_back(*p);} }
        for (auto& n:ts) outputFunction(n,0,0,false);
    }
    return {};
};

function scaleDefineFunction = MIN_FUNCTION{
    if (inlet==0) {
        lock l{m_mutex};
        unsigned long sz = args.size();
        if (scale_fill_attr||!sz) scale_array.fill_container(scale_array_maxsize_attr);
        else scale_array.clear();
        for (int i=0; i<(int)sz; i+=2) {
            if (i+1<(int)sz) {
                int index=args[i]; number val=args[i+1];
                if (scale_def_mode_attr==scale_def_mode::mpitch) scale_array.set_value(index, 440*exp(0.057762265*(val-69)));
                else scale_array.set_value(index, val);
            } else cwarn << "scale_def: missing value for index " << args[i] << endl;
        }
    }
    return {};
};

function endFunction = MIN_FUNCTION{
    std::vector<Note> ts;
    { lock l{m_mutex};
      unsigned long sz = args.size();
      if (sz>0) { int st=args[0]; for (auto& n:active_voices) if (n.stream==st){n.release_flag=1;ts.push_back(n);} }
      else      {                 for (auto& n:active_voices)                   {n.release_flag=1;ts.push_back(n);} }
    }
    for (auto& n:ts) outputFunction(n,0,0,false);
    return {};
};

message<> print{this, "print", "Print active voices and all parameter settings to console",
    MIN_FUNCTION{
        // ── Active voices ──────────────────────────────────────────────────────
        if (active_voices.empty()) cout << "No notes in active_voices" << endl;
        else {
            cout << active_voices.size() << " notes{" << endl;
            for (auto& n:active_voices)
                cout << "  target=" << n.target << " mpitch=" << n.mpitch.back()
                     << " vel=" << n.vel << " mono=" << n.mono_flag
                     << " hold=" << n.hold_flag << " sustain=" << n.sustain_flag
                     << " release=" << n.release_flag << endl;
            cout << "}" << endl;
        }
        cout << inactive_voices.size() << " inactive voice(s)" << endl;

        // ── Parameters ────────────────────────────────────────────────────────
        cout << "─── parameters ───────────────────────────────" << endl;
        cout << "  voices              = " << voices << endl;
        cout << "  active              = " << (bool)active_attr << endl;
        cout << "  mono                = " << (bool)mono_attr << endl;
        cout << "  mono_note_priority  = " << (int)(mono_note_priority)mono_note_priority_attr << endl;
        cout << "  mono_steals_release = " << (bool)mono_steals_release_attr << endl;
        cout << "  hold                = " << (bool)hold_attr << endl;
        cout << "  sustain             = " << (bool)sustain_attr << endl;
        cout << "  steal               = " << (bool)steal_attr << endl;
        cout << "  steal_hold          = " << steal_hold_var << endl;
        cout << "  respect_stream_prio = " << respect_stream_priorities_var << endl;
        cout << "  steal_case          = " << steal_case << endl;
        cout << "  output_mode         = " << (int)(output_mode)output_mode_attr << endl;
        cout << "  scale_def_mode      = " << (int)(scale_def_mode)scale_def_mode_attr << endl;
        cout << "  basefreq            = " << (number)basefreq_attr << endl;
        cout << "─── ADSR ─────────────────────────────────────" << endl;
        cout << "  attack              = " << adsr_attack    .load() << " ms" << endl;
        cout << "  decay               = " << adsr_decay     .load() << " ms" << endl;
        cout << "  sustain_level       = " << adsr_sustain_lvl.load() << endl;
        cout << "  release             = " << adsr_release   .load() << " ms" << endl;
        cout << "  attack_curve        = " << adsr_attack_curve .load() << endl;
        cout << "  decay_curve         = " << adsr_decay_curve  .load() << endl;
        cout << "  release_curve       = " << adsr_release_curve.load() << endl;
        cout << "  retrigger_ms        = " << adsr_retrigger_ms .load() << " ms" << endl;
        cout << "  return_to_zero      = " << adsr_return_to_zero.load() << endl;
        cout << "─── glide ────────────────────────────────────" << endl;
        cout << "  glidetime           = " << glide_time_ms  .load() << " ms" << endl;
        cout << "  glidetime_curvature = " << glide_curvature.load() << endl;
        cout << "  glide_retrigger     = " << glide_retrigger.load() << endl;
        cout << "  glide_impulse       = " << (bool)glide_impulse_attr << endl;
        cout << "  debug               = " << (bool)debug << endl;
        cout << "──────────────────────────────────────────────" << endl;
        return {};
    }
};

// ─── Messages ─────────────────────────────────────────────────────────────────

message<threadsafe::yes> list     {this,"list",     "midipitch velocity (stream) (mono_flag) (realpitch)", mainInletFunction};
message<threadsafe::yes> scale_def{this,"scale_def","scale_def [index value ...]",                         scaleDefineFunction};
message<threadsafe::yes> end_hold {this,"endhold",  "End hold notes: all / last / first",                  endHold};
message<threadsafe::yes> end      {this,"end",      "Send notes into release (opt: stream)",                endFunction};

private:
mutex m_mutex;
};

// ─── MC channel count callback ────────────────────────────────────────────────
// Called by Max to ask how many channels each outlet should carry.
// All 9 MC outlets carry `voices` channels each (outlet 10 is message outlet)

long voice_alligator_tilde_multichanneloutputs(c74::max::t_object* x, long index, long count) {
    minwrap<voice_alligator_tilde>* ob = (minwrap<voice_alligator_tilde>*)(x);
    return ob->m_min_object.voices;  // 9 MC outlets × voices channels each
}

MIN_EXTERNAL(voice_alligator_tilde);
