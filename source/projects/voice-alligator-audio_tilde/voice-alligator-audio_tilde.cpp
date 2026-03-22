/// @file
/// @ingroup    minexamples
/// @copyright  Copyright 2018 The Min-DevKit Authors. All rights reserved.
/// @license    Use of this source code is governed by the MIT License found in the License.md file.
///
/// voice-alligator-audio~
///
/// Audio-to-audio voice allocator. Three signal inlets drive voice allocation:
///   1  trigger   — rising edge (0 → non-zero) fires note-on(s)
///   2  pitch     — MIDI note number (rounded to int, looked up in scale array) when @scale 1
///                  or raw frequency (Hz) when @scale 0 (default)
///                  If non-zero at trigger, overrides the pitch list for all notes.
///   3  velocity  — 0.0–1.0 (sampled at trigger moment)
///                  If non-zero at trigger, overrides the vel list for all notes.
///
/// Multi-note triggers:
///   Two messages set per-note lists for a single trigger event:
///     pitch <f1> <f2> ...  — frequencies in Hz (or MIDI notes when @scale 1)
///     vel  <v1> <v2> ...   — velocities 0.0–1.0
///   The longest list determines how many notes a single trigger fires.
///   Shorter lists wrap around (modulo). Signal inlets override pitch/vel
///   when non-zero but do not change the note count.
///
/// The ADSR envelope is one-shot: attack → decay → release (no sustain hold).
/// After attack+decay the release is triggered automatically;
/// the voice is recycled once the envelope reaches zero.
///
/// Outlets (each is an MC bundle, one channel per voice):
///   1  out_freq     frequency (Hz)
///   2  out_env      ADSR envelope
///   3  out_impulse  1-sample impulse on note-on
///   4  out_ramp     linear ramp 0→1 over attack + decay + sustain_dur + release
///   5  out_stream   stream index (1-indexed, 0 = no stream)

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
MIN_DESCRIPTION{"audio-to-audio voice allocator with built-in ADSR — trigger/pitch/velocity as signals"};
MIN_TAGS{"poly~, adsr, voice allocation"};
MIN_AUTHOR{"Jan Godde, Edis Ludwig"};
MIN_RELATED{"poly~, voice-alligator, voice-alligator~"};
MIN_FLAGS{documentation_flags::do_not_generate};

// Three signal inlets
inlet<>  in_trigger  {this, "(signal) rising edge triggers note-on",          "signal"};
inlet<>  in_pitch    {this, "(signal) MIDI note number or frequency",         "signal"};
inlet<>  in_velocity {this, "(signal) velocity 0-1, sampled at trigger",      "signal"};

// Five MC signal outlets
outlet<> out_freq   {this, "(MC~) frequency per voice",                         "multichannelsignal"};  // 1
outlet<> out_env    {this, "(MC~) ADSR envelope per voice",                     "multichannelsignal"};  // 2
outlet<> out_impulse{this, "(MC~) note-on impulse",                             "multichannelsignal"};  // 3
outlet<> out_ramp   {this, "(MC~) note ramp 0→1 over attack+decay+sustain+rel", "multichannelsignal"};  // 4
outlet<> out_stream {this, "(MC~) stream index per voice (1-indexed)",           "multichannelsignal"};  // 5

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
    std::atomic<int>   impulse      {0};
    std::atomic<int>   pending_off  {0};

    // Per-note ADSR params (set by scheduler, read by audio thread on note_on)
    std::atomic<float> p_attack_ms      {10.f};
    std::atomic<float> p_decay_ms       {100.f};
    std::atomic<float> p_sustain        {0.8f};
    std::atomic<float> p_sustain_dur_ms {100.f};
    std::atomic<float> p_release_ms     {300.f};
    std::atomic<float> p_attack_curve   {0.f};
    std::atomic<float> p_decay_curve    {0.f};
    std::atomic<float> p_release_curve  {0.f};
    std::atomic<int>   p_return_to_zero {1};
    // Per-note glide params
    std::atomic<float> p_glide_time_ms  {0.f};
    std::atomic<float> p_glide_curvature{0.f};
    std::atomic<int>   p_glide_retrigger{0};
    std::atomic<int>   p_glide_impulse  {0};

    VoiceCmd() = default;
    VoiceCmd(const VoiceCmd&) {}
    VoiceCmd& operator=(const VoiceCmd&) { return *this; }
};

// ─── State ────────────────────────────────────────────────────────────────────

std::vector<Note>             active_voices;
std::unordered_map<int, Note> pending_voices;
std::vector<int>              inactive_voices;
ScaleArray                    scale_array;

// Per-trigger note lists (scheduler thread only)
std::vector<float> msg_freq_list;
std::vector<float> msg_vel_list;
std::vector<float> msg_attack_list;
std::vector<float> msg_decay_list;
std::vector<float> msg_sustain_list;
std::vector<float> msg_sustain_dur_list;
std::vector<float> msg_release_list;
std::vector<float> msg_attack_curve_list;
std::vector<float> msg_decay_curve_list;
std::vector<float> msg_release_curve_list;
std::vector<float> msg_return_to_zero_list;
std::vector<float> msg_glidetime_list;
std::vector<float> msg_glide_curve_list;
std::vector<float> msg_glide_retrigger_list;
std::vector<float> msg_glide_impulse_list;
std::vector<float> msg_mono_list;

// Stream → voice mapping (scheduler thread only)
std::vector<int> stream_voice_map;

// Voice → stream mapping (scheduler writes, audio reads)
std::atomic<int> voice_stream[1024] {};

VoiceCmd voice_cmd[1024];
adsr     voice_adsr[1024];

float live_freq [1024] {};
float live_vel  [1024] {};

// Per-voice ADSR/glide param snapshots (audio thread; set on note_on from VoiceCmd)
struct VoiceParamSnapshot {
    float attack_ms      = 10.f;
    float decay_ms       = 100.f;
    float sustain        = 0.8f;
    float sustain_dur_ms = 100.f;
    float release_ms     = 300.f;
    float attack_curve   = 0.f;
    float decay_curve    = 0.f;
    float release_curve  = 0.f;
    bool  return_to_zero = true;
    float glide_time_ms  = 0.f;
    float glide_curvature= 0.f;
    bool  glide_retrigger= false;
    bool  glide_impulse  = false;
};
VoiceParamSnapshot voice_params[1024];

// Audio-thread: is this voice's ADSR running?
bool  audio_voice_active[1024] {};
bool  pending_impulse   [1024] {};
float last_env_output   [1024] {};
bool  voice_is_glide    [1024] {};  // true when current note is a glide note

// Per-voice sustain hold countdown (audio thread)
int   voice_sustain_dur_remaining[1024] {};
bool  voice_sustain_dur_active   [1024] {};

// Per-voice note ramp (audio thread only)
// Outputs 0.0 at note-on, ramps linearly to 1.0 over attack + decay + sustain_dur + release.
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
std::atomic<int> voice_release_flags[1024] {};  // set when ADSR enters release phase

double m_samplerate {44100.0};

// Previous trigger signal — for rising edge detection (audio thread)
float prev_trigger_sample {0.f};

// ─── Global params (audio thread reads directly) ──────────────────────────────

std::atomic<float> adsr_retrigger_ms {5.f};  // declick_ms — stays as attribute

// ─── Default fallbacks (used when lists are empty and signal is zero) ─────────

std::atomic<float> default_freq{440.f};
std::atomic<float> default_vel {0.5f};

// ─── Per-note default values ──────────────────────────────────────────────────

static constexpr float DEF_ATTACK      = 10.f;
static constexpr float DEF_DECAY       = 100.f;
static constexpr float DEF_SUSTAIN     = 0.8f;
static constexpr float DEF_SUSTAIN_DUR = 100.f;
static constexpr float DEF_RELEASE     = 300.f;
static constexpr float DEF_ATTACK_CURVE  = 0.f;
static constexpr float DEF_DECAY_CURVE   = 0.f;
static constexpr float DEF_RELEASE_CURVE = 0.f;
static constexpr float DEF_RETURN_TO_ZERO = 1.f;
static constexpr float DEF_GLIDETIME     = 30.f;
static constexpr float DEF_GLIDE_CURVE   = 0.f;
static constexpr float DEF_GLIDE_RETRIGGER = 0.f;
static constexpr float DEF_GLIDE_IMPULSE  = 0.f;

// ─── Helper: look up per-stream param from list with wrap-around ──────────────

static float getP(const std::vector<float>& list, size_t idx, float def) {
    if (list.empty()) return def;
    return list[idx % list.size()];
}

// ─── List messages ───────────────────────────────────────────────────────────

message<> pitch_msg{this, "pitch", "Set frequency list (Hz/MIDI) for multi-note triggers",
    MIN_FUNCTION{
        msg_freq_list.clear();
        for (const auto& a : args)
            msg_freq_list.push_back(std::max(0.f, (float)(number)a));
        if (!msg_freq_list.empty())
            default_freq.store(msg_freq_list[0], std::memory_order_relaxed);
        return {};
    }
};
message<> vel_msg{this, "vel", "Set velocity list (0-1)",
    MIN_FUNCTION{
        msg_vel_list.clear();
        for (const auto& a : args)
            msg_vel_list.push_back((float)(number)a);
        if (!msg_vel_list.empty())
            default_vel.store(msg_vel_list[0], std::memory_order_relaxed);
        return {};
    }
};
message<> attack_msg{this, "attack", "Set attack time list (ms)",
    MIN_FUNCTION{
        msg_attack_list.clear();
        for (const auto& a : args)
            msg_attack_list.push_back(std::max(0.f, (float)(number)a));
        return {};
    }
};
message<> decay_msg{this, "decay", "Set decay time list (ms)",
    MIN_FUNCTION{
        msg_decay_list.clear();
        for (const auto& a : args)
            msg_decay_list.push_back(std::max(0.f, (float)(number)a));
        return {};
    }
};
message<> sustain_msg{this, "sustain", "Set sustain level list (0-1)",
    MIN_FUNCTION{
        msg_sustain_list.clear();
        for (const auto& a : args)
            msg_sustain_list.push_back(std::clamp((float)(number)a, 0.f, 1.f));
        return {};
    }
};
message<> sustain_dur_msg{this, "sustain_dur", "Set sustain hold duration list (ms, default 100)",
    MIN_FUNCTION{
        msg_sustain_dur_list.clear();
        for (const auto& a : args)
            msg_sustain_dur_list.push_back(std::max(0.f, (float)(number)a));
        return {};
    }
};
message<> release_msg{this, "release", "Set release time list (ms)",
    MIN_FUNCTION{
        msg_release_list.clear();
        for (const auto& a : args)
            msg_release_list.push_back(std::max(0.f, (float)(number)a));
        return {};
    }
};
message<> attack_curve_msg{this, "attack_curve", "Set attack curve list (-1 to 1)",
    MIN_FUNCTION{
        msg_attack_curve_list.clear();
        for (const auto& a : args)
            msg_attack_curve_list.push_back(std::clamp((float)(number)a, -1.f, 1.f));
        return {};
    }
};
message<> decay_curve_msg{this, "decay_curve", "Set decay curve list (-1 to 1)",
    MIN_FUNCTION{
        msg_decay_curve_list.clear();
        for (const auto& a : args)
            msg_decay_curve_list.push_back(std::clamp((float)(number)a, -1.f, 1.f));
        return {};
    }
};
message<> release_curve_msg{this, "release_curve", "Set release curve list (-1 to 1)",
    MIN_FUNCTION{
        msg_release_curve_list.clear();
        for (const auto& a : args)
            msg_release_curve_list.push_back(std::clamp((float)(number)a, -1.f, 1.f));
        return {};
    }
};
message<> return_to_zero_msg{this, "return_to_zero", "Set return-to-zero list (0/1)",
    MIN_FUNCTION{
        msg_return_to_zero_list.clear();
        for (const auto& a : args)
            msg_return_to_zero_list.push_back((float)(number)a > 0.5f ? 1.f : 0.f);
        return {};
    }
};
message<> glidetime_msg{this, "glidetime", "Set glide time list (ms)",
    MIN_FUNCTION{
        msg_glidetime_list.clear();
        for (const auto& a : args)
            msg_glidetime_list.push_back(std::max(0.f, (float)(number)a));
        return {};
    }
};
message<> glide_curve_msg{this, "glide_curve", "Set glide curve list (-1 to 1)",
    MIN_FUNCTION{
        msg_glide_curve_list.clear();
        for (const auto& a : args)
            msg_glide_curve_list.push_back(std::clamp((float)(number)a, -1.f, 1.f));
        return {};
    }
};
message<> glide_retrigger_msg{this, "glide_retrigger", "Set glide retrigger list (0/1)",
    MIN_FUNCTION{
        msg_glide_retrigger_list.clear();
        for (const auto& a : args)
            msg_glide_retrigger_list.push_back((float)(number)a > 0.5f ? 1.f : 0.f);
        return {};
    }
};
message<> glide_impulse_msg{this, "glide_impulse", "Set glide impulse list (0/1)",
    MIN_FUNCTION{
        msg_glide_impulse_list.clear();
        for (const auto& a : args)
            msg_glide_impulse_list.push_back((float)(number)a > 0.5f ? 1.f : 0.f);
        return {};
    }
};
message<> mono_msg{this, "mono", "Set per-stream mono/glide enable list (0/1)",
    MIN_FUNCTION{
        msg_mono_list.clear();
        for (const auto& a : args)
            msg_mono_list.push_back((float)(number)a > 0.5f ? 1.f : 0.f);
        return {};
    }
};
message<> reset_msg{this, "reset", "Reset all lists and defaults",
    MIN_FUNCTION{
        msg_freq_list.clear();
        msg_vel_list.clear();
        msg_attack_list.clear();
        msg_decay_list.clear();
        msg_sustain_list.clear();
        msg_sustain_dur_list.clear();
        msg_release_list.clear();
        msg_attack_curve_list.clear();
        msg_decay_curve_list.clear();
        msg_release_curve_list.clear();
        msg_return_to_zero_list.clear();
        msg_glidetime_list.clear();
        msg_glide_curve_list.clear();
        msg_glide_retrigger_list.clear();
        msg_glide_impulse_list.clear();
        msg_mono_list.clear();
        default_freq.store(440.f, std::memory_order_relaxed);
        default_vel .store(0.5f,  std::memory_order_relaxed);
        stream_voice_map.clear();
        m_active = true;
        m_debug  = false;
        return {};
    }
};

message<> active_msg{this, "active", "Activate/deactivate note-on processing (0/1)",
    MIN_FUNCTION{
        m_active = args.size() > 0 && (int)args[0] != 0;
        return {};
    }
};
message<> debug_msg{this, "debug", "Debug on/off (0/1)",
    MIN_FUNCTION{
        m_debug = args.size() > 0 && (int)args[0] != 0;
        return {};
    }
};

bool m_active{true};
bool m_debug{false};

// ─── Attributes (only those that stay) ────────────────────────────────────────

enum class steal_mode : int { oldest, most_advanced, enum_count };
enum_map steal_mode_range = {"oldest", "most_advanced"};

attribute<bool> steal_attr{this, "steal", true,
    description{"Voice stealing on / off (default true)"}};

attribute<steal_mode> steal_mode_attr{this, "steal_mode", steal_mode::oldest,
    steal_mode_range,
    description{"Voice stealing mode. "
                "oldest (default): steal oldest releasing note, fall back to oldest active note. "
                "most_advanced: steal the note closest to the end of its envelope."}};

attribute<bool> scale_attr{this, "scale", false,
    description{"If true, inlet 2 is a MIDI note number looked up in the scale array. "
                "If false (default), inlet 2 is treated as a raw frequency in Hz."}};

attribute<number> declick_ms_attr{this, "declick_ms", 5.0,
    description{"Declick ramp time in milliseconds (default 5)"},
    setter{MIN_FUNCTION{
        float v = std::max(0.f, (float)(number)args[0]);
        adsr_retrigger_ms.store(v, std::memory_order_relaxed);
        return {(number)v};
    }}
};

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
    stream_voice_map.clear();
    for (int i = 0; i < 1024; ++i) {
        voice_done_flags   [i].store(0, std::memory_order_relaxed);
        voice_release_flags[i].store(0, std::memory_order_relaxed);
        voice_stream       [i].store(0, std::memory_order_relaxed);
        voice_cmd[i].cmd         .store(0,   std::memory_order_relaxed);
        voice_cmd[i].freq        .store(0.f, std::memory_order_relaxed);
        voice_cmd[i].vel         .store(0.f, std::memory_order_relaxed);
        voice_cmd[i].steal       .store(0,   std::memory_order_relaxed);
        voice_cmd[i].glide       .store(0.f, std::memory_order_relaxed);
        voice_cmd[i].impulse     .store(0,   std::memory_order_relaxed);
        voice_cmd[i].pending_off .store(0,   std::memory_order_relaxed);
    }
    std::fill(std::begin(audio_voice_active),           std::end(audio_voice_active),           false);
    std::fill(std::begin(pending_impulse),               std::end(pending_impulse),               false);
    std::fill(std::begin(last_env_output),               std::end(last_env_output),               0.f);
    std::fill(std::begin(voice_is_glide),                std::end(voice_is_glide),                false);
    std::fill(std::begin(live_freq),                     std::end(live_freq),                     0.f);
    std::fill(std::begin(live_vel),                      std::end(live_vel),                      0.f);
    std::fill(std::begin(voice_sustain_dur_remaining),   std::end(voice_sustain_dur_remaining),   0);
    std::fill(std::begin(voice_sustain_dur_active),      std::end(voice_sustain_dur_active),      false);
    std::fill(std::begin(voice_ramp_value),              std::end(voice_ramp_value),              0.f);
    std::fill(std::begin(voice_ramp_step),               std::end(voice_ramp_step),               0.f);
    std::fill(std::begin(voice_ramp_frozen),             std::end(voice_ramp_frozen),             false);
    prev_trigger_sample = 0.f;
    { TriggerEvent evt; while (trigger_fifo.try_dequeue(evt)) {} }
    for (int i = 0; i < 1024; ++i) {
        voice_glide[i]         = VoiceGlide{};
        voice_vel_ramp[i]      = VoiceVelRamp{};
        voice_pending_freq[i]  = VoicePendingFreq{};
        voice_params[i]        = VoiceParamSnapshot{};
        new (&voice_adsr[i]) adsr{};
    }
    for (int i = 1; i <= n; ++i) inactive_voices.push_back(i);
}

// ─── Apply ADSR params ────────────────────────────────────────────────────────

void applyADSRParams(int v, float vel_norm = 1.f) {
    double sr = m_samplerate;
    auto& p  = voice_params[v];
    voice_adsr[v].attack        (p.attack_ms,      sr);
    voice_adsr[v].decay         (p.decay_ms,       sr);
    voice_adsr[v].sustain       (p.sustain * vel_norm);
    voice_adsr[v].release       (p.release_ms,     sr);
    voice_adsr[v].attack_curve  (p.attack_curve);
    voice_adsr[v].decay_curve   (p.decay_curve);
    voice_adsr[v].release_curve (p.release_curve);
    voice_adsr[v].retrigger     (adsr_retrigger_ms.load(std::memory_order_relaxed), sr);
    voice_adsr[v].return_to_zero(p.return_to_zero);
    voice_adsr[v].initial       (0.0);
    voice_adsr[v].peak          (vel_norm);
    voice_adsr[v].end           (0.0);
}

void applyADSRTimingOnly(int v) {
    double sr = m_samplerate;
    auto& p  = voice_params[v];
    voice_adsr[v].attack        (p.attack_ms,      sr);
    voice_adsr[v].decay         (p.decay_ms,       sr);
    voice_adsr[v].release       (p.release_ms,     sr);
    voice_adsr[v].attack_curve  (p.attack_curve);
    voice_adsr[v].decay_curve   (p.decay_curve);
    voice_adsr[v].release_curve (p.release_curve);
    voice_adsr[v].retrigger     (adsr_retrigger_ms.load(std::memory_order_relaxed), sr);
    voice_adsr[v].return_to_zero(p.return_to_zero);
    voice_adsr[v].end           (0.0);
}

// ─── Audio operator ───────────────────────────────────────────────────────────

void operator()(audio_bundle input, audio_bundle output) {
    const int n      = voices;
    const int frames = static_cast<int>(input.frame_count());

    const double* trig_buf  = input.samples(0);  // inlet 1: trigger
    const double* pitch_buf = input.samples(1);  // inlet 2: pitch
    const double* vel_buf   = input.samples(2);  // inlet 3: velocity

    // ── Rising-edge detection → post to poll timer via fifo ──────────────────
    for (int i = 0; i < frames; ++i) {
        float trig = (float)trig_buf[i];
        if (trig != 0.f && prev_trigger_sample == 0.f) {
            float pitch_val = (float)pitch_buf[i];
            float vel_norm  = (float)vel_buf[i];
            trigger_fifo.try_enqueue({pitch_val, vel_norm});
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

            // Snapshot per-note params from VoiceCmd
            auto& p = voice_params[v];
            p.attack_ms       = voice_cmd[v].p_attack_ms      .load(std::memory_order_relaxed);
            p.decay_ms        = voice_cmd[v].p_decay_ms       .load(std::memory_order_relaxed);
            p.sustain         = voice_cmd[v].p_sustain         .load(std::memory_order_relaxed);
            p.sustain_dur_ms  = voice_cmd[v].p_sustain_dur_ms .load(std::memory_order_relaxed);
            p.release_ms      = voice_cmd[v].p_release_ms     .load(std::memory_order_relaxed);
            p.attack_curve    = voice_cmd[v].p_attack_curve   .load(std::memory_order_relaxed);
            p.decay_curve     = voice_cmd[v].p_decay_curve    .load(std::memory_order_relaxed);
            p.release_curve   = voice_cmd[v].p_release_curve  .load(std::memory_order_relaxed);
            p.return_to_zero  = voice_cmd[v].p_return_to_zero .load(std::memory_order_relaxed) != 0;
            p.glide_time_ms   = voice_cmd[v].p_glide_time_ms  .load(std::memory_order_relaxed);
            p.glide_curvature = voice_cmd[v].p_glide_curvature.load(std::memory_order_relaxed);
            p.glide_retrigger = voice_cmd[v].p_glide_retrigger.load(std::memory_order_relaxed) != 0;
            p.glide_impulse   = voice_cmd[v].p_glide_impulse  .load(std::memory_order_relaxed) != 0;

            float gt_ms    = p.glide_time_ms;
            int   gt_samps = (gt_ms > 0.f)
                ? static_cast<int>((gt_ms / 1000.f) * (float)m_samplerate) : 0;

            live_freq[v] = new_freq;
            live_vel [v] = new_vel;
            voice_is_glide[v] = is_glide;

            if (!is_glide) {
                bool rtz       = p.return_to_zero;
                bool do_declick = is_steal || (rtz && audio_voice_active[v]);
                if (do_declick) {
                    applyADSRTimingOnly(v);
                    voice_adsr[v].trigger(true);
                    if (voice_adsr[v].stage() == adsr::adsr_stage::attack) {
                        voice_adsr[v].initial(last_env_output[v]);
                        voice_adsr[v].peak   (new_vel);
                        voice_adsr[v].sustain(p.sustain * new_vel);
                        voice_glide[v].current_freq = new_freq;
                        voice_glide[v].target_freq  = new_freq;
                        voice_glide[v].active       = false;
                        voice_ramp_value [v] = 0.f;
                        voice_ramp_frozen[v] = false;
                    } else {
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
                const bool gr = p.glide_retrigger;
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
                    voice_adsr[v].return_to_zero(false);
                    voice_adsr[v].initial(last_env_output[v]);
                    voice_adsr[v].peak   (new_vel);
                    voice_adsr[v].sustain(p.sustain * new_vel);
                    voice_adsr[v].trigger(false);
                    voice_adsr[v].trigger(true);
                    voice_vel_ramp[v] = {1.f, 1.f, 0.f};
                }
            }

            audio_voice_active[v] = true;

            if (!is_glide || p.glide_retrigger) {
                voice_sustain_dur_active[v] = false;  // reset; will start on decay→sustain

                // Ramp 0→1 over attack + decay + sustain_dur + release
                int total = static_cast<int>(((p.attack_ms + p.decay_ms + p.sustain_dur_ms + p.release_ms)
                            / 1000.f) * (float)m_samplerate);
                voice_ramp_value[v] = 0.f;
                voice_ramp_step [v] = (total > 0) ? 1.f / (float)total : 1.f;
            }

            // pending_off handling (very short notes)
            if (voice_cmd[v].pending_off.exchange(0, std::memory_order_acquire)) {
                voice_adsr[v].trigger(false);
                voice_sustain_dur_active[v] = false;
            }
        }
        else if (cmd == (int)VoiceCmd::Type::note_off) {
            voice_adsr[v].trigger(false);
            voice_sustain_dur_active[v] = false;
        }

        // ── Output channel pointers ───────────────────────────────────────────
        auto* ch_freq    = output.samples(0*n + v);
        auto* ch_env     = output.samples(1*n + v);
        auto* ch_impulse = output.samples(2*n + v);
        auto* ch_ramp    = output.samples(3*n + v);
        auto* ch_stream  = output.samples(4*n + v);

        const int imp = voice_cmd[v].impulse.exchange(0, std::memory_order_relaxed);
        if (imp) pending_impulse[v] = true;

        const float curve = voice_params[v].glide_curvature;

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

            // Start sustain_dur countdown when sustain is reached
            if (stage_before == adsr::adsr_stage::decay && stage_after == adsr::adsr_stage::sustain) {
                if (audio_voice_active[v]) {
                    float sdur = voice_params[v].sustain_dur_ms;
                    int samps = static_cast<int>((sdur / 1000.f) * (float)m_samplerate);
                    if (samps <= 0) {
                        voice_adsr[v].trigger(false);
                        voice_release_flags[v].store(1, std::memory_order_release);
                    } else {
                        voice_sustain_dur_remaining[v] = samps;
                        voice_sustain_dur_active[v]    = true;
                    }
                }
            }

            // Sustain_dur countdown — fire release when expired
            if (voice_sustain_dur_active[v] && audio_voice_active[v]) {
                --voice_sustain_dur_remaining[v];
                if (voice_sustain_dur_remaining[v] <= 0) {
                    voice_adsr[v].trigger(false);
                    voice_sustain_dur_active[v] = false;
                    voice_release_flags[v].store(1, std::memory_order_release);
                }
            }

            // retrigger→attack transition: apply pending freq, reset ramp
            if (stage_before != adsr::adsr_stage::attack && stage_after == adsr::adsr_stage::attack) {
                if (voice_pending_freq[v].active) {
                    float pvel = voice_pending_freq[v].vel_norm;
                    voice_adsr[v].initial(0.0);
                    voice_adsr[v].peak   (pvel);
                    voice_adsr[v].sustain(voice_params[v].sustain * pvel);
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
                bool legato_glide   = (voice_is_glide[v] && !voice_params[v].glide_retrigger && i == 0);
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
                // Interpolate in log-frequency space for perceptually linear glide
                if (sf > 0.f && tf > 0.f) {
                    const float log_sf = std::log(sf);
                    const float log_tf = std::log(tf);
                    out_freq = std::exp(log_sf + t_curved * (log_tf - log_sf));
                } else {
                    out_freq = sf + t_curved * (tf - sf);
                }
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
            ch_stream [i] = (float)voice_stream[v].load(std::memory_order_relaxed);

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
    for (int ch = 5*n; ch < total_out; ++ch) {
        auto* buf = output.samples(ch);
        for (int i = 0; i < frames; ++i) buf[i] = 0.f;
    }
}

// ─── Poll timer: drain voice_done_flags ──────────────────────────────────────

timer<timer_options::deliver_on_scheduler> adsr_poll{this, MIN_FUNCTION{
    // ── Drain trigger fifo — stream-based multi-note triggers ───────────────
    {
        // Snapshot lists once per poll tick so they stay consistent
        const auto snap_freq      = msg_freq_list;
        const auto snap_vel       = msg_vel_list;
        const auto snap_mono      = msg_mono_list;
        const auto snap_attack    = msg_attack_list;
        const auto snap_decay     = msg_decay_list;
        const auto snap_sustain   = msg_sustain_list;
        const auto snap_sus_dur   = msg_sustain_dur_list;
        const auto snap_release   = msg_release_list;
        const auto snap_atk_crv   = msg_attack_curve_list;
        const auto snap_dec_crv   = msg_decay_curve_list;
        const auto snap_rel_crv   = msg_release_curve_list;
        const auto snap_rtz       = msg_return_to_zero_list;
        const auto snap_glidetime = msg_glidetime_list;
        const auto snap_glide_crv = msg_glide_curve_list;
        const auto snap_glide_rt  = msg_glide_retrigger_list;
        const auto snap_glide_imp = msg_glide_impulse_list;

        const ParamSnap psnap{snap_attack, snap_decay, snap_sustain, snap_sus_dur,
                              snap_release, snap_atk_crv, snap_dec_crv, snap_rel_crv,
                              snap_rtz, snap_glidetime, snap_glide_crv, snap_glide_rt,
                              snap_glide_imp};

        TriggerEvent evt;
        while (trigger_fifo.try_dequeue(evt)) {
            if (!m_active) continue;

            bool  use_sa       = (bool)scale_attr;
            float freq_default = default_freq.load(std::memory_order_relaxed);
            float vel_default  = default_vel .load(std::memory_order_relaxed);

            // Note count = longest list (minimum 1)
            size_t n_notes = std::max({snap_freq.size(), snap_vel.size(), snap_mono.size()});
            if (n_notes == 0) n_notes = 1;

            size_t old_streams = stream_voice_map.size();
            if (n_notes > stream_voice_map.size())
                stream_voice_map.resize(n_notes, 0);

            lock lk{m_mutex};

            for (size_t i = 0; i < n_notes; ++i) {
                // ── Frequency ────────────────────────────────────────────
                float freq_out;
                if (evt.signal_pitch != 0.f) {
                    if (use_sa) {
                        int  midi = (int)std::round(evt.signal_pitch);
                        auto val  = scale_array.get_value(midi);
                        freq_out  = val.has_value() ? (float)*val
                                  : (float)(440.0 * exp(0.057762265 * (midi - 69)));
                    } else {
                        freq_out = evt.signal_pitch;
                    }
                } else if (!snap_freq.empty()) {
                    float raw = snap_freq[i % snap_freq.size()];
                    if (use_sa) {
                        int  midi = (int)std::round(raw);
                        auto val  = scale_array.get_value(midi);
                        freq_out  = val.has_value() ? (float)*val
                                  : (float)(440.0 * exp(0.057762265 * (midi - 69)));
                    } else {
                        freq_out = raw;
                    }
                } else {
                    freq_out = freq_default;
                }

                // ── Velocity ─────────────────────────────────────────────
                float vel_out;
                if (evt.signal_velocity != 0.f) {
                    vel_out = evt.signal_velocity;
                } else if (!snap_vel.empty()) {
                    vel_out = snap_vel[i % snap_vel.size()];
                } else {
                    vel_out = vel_default;
                }

                // ── Per-stream params ────────────────────────────────────
                NoteParams np = lookupStreamParams(i, psnap);

                // ── Stream logic: glide if mono, else allocate new ────────
                bool stream_mono = !snap_mono.empty()
                    && snap_mono[i % snap_mono.size()] > 0.5f;

                int existing_target = stream_voice_map[i];
                bool has_active = false;
                if (stream_mono && existing_target > 0) {
                    auto it = std::find_if(active_voices.begin(), active_voices.end(),
                        [existing_target](const Note& n){ return n.target == existing_target && !n.release_flag; });
                    if (it != active_voices.end()) has_active = true;
                }

                if (has_active) {
                    glideVoice(existing_target, freq_out, vel_out, np);
                } else {
                    // Release old voice on this stream if mono and it exists
                    if (stream_mono && existing_target > 0) {
                        auto it = std::find_if(active_voices.begin(), active_voices.end(),
                            [existing_target](const Note& n){ return n.target == existing_target && !n.release_flag; });
                        if (it != active_voices.end()) {
                            int vi = existing_target - 1;
                            voice_cmd[vi].cmd.store((int)VoiceCmd::Type::note_off, std::memory_order_release);
                            it->release_flag = true;
                        }
                    }
                    int nv = allocateNewVoice(freq_out, vel_out, np, (int)(i + 1));
                    stream_voice_map[i] = nv;
                }
            }

            // Release orphaned streams (list shrunk)
            for (size_t i = n_notes; i < old_streams; ++i) {
                int target = stream_voice_map[i];
                if (target > 0) {
                    int vi = target - 1;
                    auto it = std::find_if(active_voices.begin(), active_voices.end(),
                        [target](const Note& n){ return n.target == target && !n.release_flag; });
                    if (it != active_voices.end()) {
                        voice_cmd[vi].cmd.store((int)VoiceCmd::Type::note_off, std::memory_order_release);
                        it->release_flag = true;
                    }
                }
            }
            stream_voice_map.resize(n_notes);
        }
    }

    // ── Drain release flags (ADSR entered release phase) ──────────────────────
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

        if (m_debug) cout << "Voice " << target << " done → inactive" << endl;

        live_freq[v] = 0.f;
        voice_stream[v].store(0, std::memory_order_relaxed);
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
    // voice_params[] will be set per-note on first note_on via VoiceCmd
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

void printParamList(const char* name, const std::vector<float>& list, float def, const char* unit) {
    cout << "  " << name;
    for (int p = 20 - (int)strlen(name); p > 0; --p) cout << " ";
    cout << "= ";
    if (list.empty()) cout << def << " (default)";
    else { for (auto v : list) cout << v << " "; }
    cout << unit << endl;
}

message<threadsafe::yes> print_msg{this, "print",
    "Print active voices and all parameter settings to console",
    MIN_FUNCTION{
        lock lk{m_mutex};
        if(m_debug){
            if (active_voices.empty()) cout << "voice-alligator-audio~: No notes in active_voices" << endl;
        else {
            cout << "voice-alligator-audio~: " << active_voices.size() << " active voice(s)" << endl;
            for (auto& n : active_voices)
                cout << "  voice " << n.target << " pitch=" << n.mpitch.back()
                     << " freq=" << n.freq.back() << " vel=" << n.vel << endl;
        }
        cout << "voice-alligator-audio~: " << inactive_voices.size() << " inactive voice(s)" << endl;
        cout << "  streams             = " << stream_voice_map.size() << " [";
        for (size_t i = 0; i < stream_voice_map.size(); ++i) cout << (i?" ":"") << stream_voice_map[i];
        cout << "]" << endl;
        }
        
        // cout << "─── parameters ───────────────────" << endl;
        // cout << "  voices              = " << voices << endl;
        // cout << "  active              = " << m_active << endl;
        // cout << "  steal               = " << (bool)steal_attr << endl;
        // cout << "  steal_mode          = " << (int)(steal_mode)steal_mode_attr << endl;
        // cout << "  scale               = " << (bool)scale_attr << endl;
        printParamList("pitch",           msg_freq_list,           default_freq.load(), "");
        printParamList("vel",             msg_vel_list,            default_vel.load(), "");
        printParamList("mono",            msg_mono_list,           0.f, "");
        // cout << "─── ADSR ──────────────────────" << endl;
        printParamList("attack",          msg_attack_list,         DEF_ATTACK,       " ms");
        printParamList("decay",           msg_decay_list,          DEF_DECAY,        " ms");
        printParamList("sustain",         msg_sustain_list,        DEF_SUSTAIN,      "");
        printParamList("sustain_dur",     msg_sustain_dur_list,    DEF_SUSTAIN_DUR,  " ms");
        printParamList("release",         msg_release_list,        DEF_RELEASE,      " ms");
        printParamList("attack_curve",    msg_attack_curve_list,   DEF_ATTACK_CURVE, "");
        printParamList("decay_curve",     msg_decay_curve_list,    DEF_DECAY_CURVE,  "");
        printParamList("release_curve",   msg_release_curve_list,  DEF_RELEASE_CURVE,"");
        // printParamList("return_to_zero",  msg_return_to_zero_list, DEF_RETURN_TO_ZERO,"");
        // cout << "  declick_ms          = " << adsr_retrigger_ms.load() << " ms" << endl;
        // cout << "─── glide ───────────────────────" << endl;
        printParamList("glidetime",       msg_glidetime_list,       DEF_GLIDETIME,       " ms");
        printParamList("glide_curve",     msg_glide_curve_list,     DEF_GLIDE_CURVE,     "");
        printParamList("glide_retrigger", msg_glide_retrigger_list, DEF_GLIDE_RETRIGGER, "");
        printParamList("glide_impulse",   msg_glide_impulse_list,   DEF_GLIDE_IMPULSE,   "");
        // cout << "  m_               = " << m_m_ << endl;
        // cout << "──────────────────────────────" << endl;
        return {};
    }
};

// ─── Per-note params struct (scheduler thread) ───────────────────────────────

struct NoteParams {
    float attack_ms      = DEF_ATTACK;
    float decay_ms       = DEF_DECAY;
    float sustain        = DEF_SUSTAIN;
    float sustain_dur_ms = DEF_SUSTAIN_DUR;
    float release_ms     = DEF_RELEASE;
    float attack_curve   = DEF_ATTACK_CURVE;
    float decay_curve    = DEF_DECAY_CURVE;
    float release_curve  = DEF_RELEASE_CURVE;
    float return_to_zero = DEF_RETURN_TO_ZERO;
    float glide_time_ms  = DEF_GLIDETIME;
    float glide_curvature= DEF_GLIDE_CURVE;
    float glide_retrigger= DEF_GLIDE_RETRIGGER;
    float glide_impulse  = DEF_GLIDE_IMPULSE;
};

struct ParamSnap {
    const std::vector<float>& attack;
    const std::vector<float>& decay;
    const std::vector<float>& sustain;
    const std::vector<float>& sus_dur;
    const std::vector<float>& release;
    const std::vector<float>& atk_crv;
    const std::vector<float>& dec_crv;
    const std::vector<float>& rel_crv;
    const std::vector<float>& rtz;
    const std::vector<float>& glidetime;
    const std::vector<float>& glide_crv;
    const std::vector<float>& glide_rt;
    const std::vector<float>& glide_imp;
};

static NoteParams lookupStreamParams(size_t i, const ParamSnap& s) {
    NoteParams np;
    np.attack_ms       = getP(s.attack,    i, DEF_ATTACK);
    np.decay_ms        = getP(s.decay,     i, DEF_DECAY);
    np.sustain         = getP(s.sustain,   i, DEF_SUSTAIN);
    np.sustain_dur_ms  = getP(s.sus_dur,   i, DEF_SUSTAIN_DUR);
    np.release_ms      = getP(s.release,   i, DEF_RELEASE);
    np.attack_curve    = getP(s.atk_crv,   i, DEF_ATTACK_CURVE);
    np.decay_curve     = getP(s.dec_crv,   i, DEF_DECAY_CURVE);
    np.release_curve   = getP(s.rel_crv,   i, DEF_RELEASE_CURVE);
    np.return_to_zero  = getP(s.rtz,       i, DEF_RETURN_TO_ZERO);
    np.glide_time_ms   = getP(s.glidetime, i, DEF_GLIDETIME);
    np.glide_curvature = getP(s.glide_crv, i, DEF_GLIDE_CURVE);
    np.glide_retrigger = getP(s.glide_rt,  i, DEF_GLIDE_RETRIGGER);
    np.glide_impulse   = getP(s.glide_imp, i, DEF_GLIDE_IMPULSE);
    return np;
}

// ─── Voice allocation (scheduler thread) ─────────────────────────────────────

Note* findNoteToSteal() {
    if (!(bool)steal_attr) return nullptr;
    if (active_voices.empty()) return nullptr;

    if (steal_mode_attr == steal_mode::oldest) {
        for (auto& n : active_voices)
            if (n.release_flag) return &n;
        return &active_voices.front();
    }
    else {
        Note* best = nullptr;
        float best_remaining = std::numeric_limits<float>::max();
        Note* fallback = &active_voices.front();
        for (auto& n : active_voices) {
            int vi = n.target - 1;
            float step = voice_ramp_step[vi];
            if (step <= 0.f) continue;
            float remaining = (1.0f - voice_ramp_value[vi]) / step;
            if (remaining < best_remaining) { best_remaining = remaining; best = &n; }
        }
        return best ? best : fallback;
    }
}

int findFreeVoice() {
    for (int c : inactive_voices) {
        auto it = pending_voices.find(c);
        if (it == pending_voices.end()) return c;
        if (it->second.release_flag) { pending_voices.erase(it); return c; }
    }
    // Reusing a releasing active voice is a form of stealing
    if ((bool)steal_attr) {
        for (auto& n : active_voices)
            if (n.release_flag) return n.target;
    }
    return -1;
}

void sendNoteOn(Note& note, bool steal, bool glide, const NoteParams& np) {
    int   vi       = note.target - 1;
    voice_done_flags[vi].store(0, std::memory_order_relaxed);
    voice_release_flags[vi].store(0, std::memory_order_relaxed);
    float freq_out = (float)note.freq.back();
    float vel_norm = (float)note.vel;

    if (m_debug) cout << "note_on voice " << note.target << " freq=" << freq_out
                    << " vel=" << vel_norm << " steal=" << steal
                    << " glide=" << glide << endl;

    voice_cmd[vi].freq              .store(freq_out,                     std::memory_order_relaxed);
    voice_cmd[vi].vel               .store(vel_norm,                      std::memory_order_relaxed);
    voice_cmd[vi].steal             .store(steal ? 1 : 0,                std::memory_order_relaxed);
    voice_cmd[vi].glide             .store(glide ? 1.f : 0.f,           std::memory_order_relaxed);
    // Pack per-note params
    voice_cmd[vi].p_attack_ms       .store(np.attack_ms,                 std::memory_order_relaxed);
    voice_cmd[vi].p_decay_ms        .store(np.decay_ms,                  std::memory_order_relaxed);
    voice_cmd[vi].p_sustain         .store(np.sustain,                   std::memory_order_relaxed);
    voice_cmd[vi].p_sustain_dur_ms  .store(np.sustain_dur_ms,            std::memory_order_relaxed);
    voice_cmd[vi].p_release_ms      .store(np.release_ms,                std::memory_order_relaxed);
    voice_cmd[vi].p_attack_curve    .store(np.attack_curve,              std::memory_order_relaxed);
    voice_cmd[vi].p_decay_curve     .store(np.decay_curve,               std::memory_order_relaxed);
    voice_cmd[vi].p_release_curve   .store(np.release_curve,             std::memory_order_relaxed);
    voice_cmd[vi].p_return_to_zero  .store(np.return_to_zero > 0.5f ? 1 : 0, std::memory_order_relaxed);
    voice_cmd[vi].p_glide_time_ms   .store(np.glide_time_ms,            std::memory_order_relaxed);
    voice_cmd[vi].p_glide_curvature .store(np.glide_curvature,           std::memory_order_relaxed);
    voice_cmd[vi].p_glide_retrigger .store(np.glide_retrigger > 0.5f ? 1 : 0, std::memory_order_relaxed);
    voice_cmd[vi].p_glide_impulse   .store(np.glide_impulse > 0.5f ? 1 : 0,   std::memory_order_relaxed);
    // Impulse
    if (!glide || np.glide_impulse > 0.5f)
        voice_cmd[vi].impulse       .store(1,                            std::memory_order_relaxed);
    voice_cmd[vi].cmd               .store((int)VoiceCmd::Type::note_on, std::memory_order_release);

    // Promote pending → active
    auto it = pending_voices.find(note.target);
    if (it != pending_voices.end()) {
        active_voices.push_back(it->second);
        pending_voices.erase(it);
        auto vit = std::find(inactive_voices.begin(), inactive_voices.end(), note.target);
        if (vit != inactive_voices.end()) inactive_voices.erase(vit);
    }
}

// Allocate a new voice for a stream (poly allocation + steal)
// stream_idx is 1-indexed (0 = no stream)
int allocateNewVoice(float freq, float vel_norm, const NoteParams& np, int stream_idx = 0) {
    Note note;
    note.freq      = {freq};
    note.mpitch    = {(int)std::round(freq)};
    note.vel       = vel_norm;
    note.stream    = stream_idx;
    note.mono_flag = false;

    int fv = findFreeVoice();
    if (fv != -1) {
        note.target = fv;
        voice_stream[fv - 1].store(stream_idx, std::memory_order_relaxed);
        auto ait = std::find_if(active_voices.begin(), active_voices.end(),
                                [fv](const Note& n){ return n.target == fv; });
        if (ait != active_voices.end()) {
            *ait = note;
            sendNoteOn(*ait, true, false, np);
        } else {
            pending_voices[fv] = note;
            sendNoteOn(note, false, false, np);
        }
        return fv;
    }
    Note* s = findNoteToSteal();
    if (s) {
        s->freq         = note.freq;
        s->mpitch       = note.mpitch;
        s->vel          = note.vel;
        s->stream       = stream_idx;
        s->release_flag = false;
        s->mono_flag    = false;
        size_t idx = s - &active_voices[0];
        rotate(active_voices.begin()+idx, active_voices.begin()+idx+1, active_voices.end());
        int target = active_voices.back().target;
        voice_stream[target - 1].store(stream_idx, std::memory_order_relaxed);
        sendNoteOn(active_voices.back(), true, false, np);
        return target;
    }
    return 0;
}

// Glide an existing voice to a new pitch
void glideVoice(int target, float freq, float vel_norm, const NoteParams& np) {
    auto it = std::find_if(active_voices.begin(), active_voices.end(),
                           [target](const Note& n){ return n.target == target; });
    if (it == active_voices.end()) return;
    it->freq   = {freq};
    it->mpitch = {(int)std::round(freq)};
    it->vel    = vel_norm;
    sendNoteOn(*it, false, true, np);  // glide=true
}

message<> dblclick{this, "dblclick", "Print info on double-click",
    MIN_FUNCTION{
        print_msg();
        return {};
    }
};

private:
    mutex m_mutex;

    struct TriggerEvent {
        float signal_pitch;
        float signal_velocity;
    };

    fifo<TriggerEvent> trigger_fifo { 2048 };

};

// ─── MC channel count callback ────────────────────────────────────────────────

long voice_alligator_audio_tilde_multichanneloutputs(c74::max::t_object* x, long index, long count) {
    minwrap<voice_alligator_audio_tilde>* ob = (minwrap<voice_alligator_audio_tilde>*)(x);
    return ob->m_min_object.voices;
}

MIN_EXTERNAL(voice_alligator_audio_tilde);