/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
#include <algorithm>
#include "c74_min.h"
#include <vector>
#include <cmath>
#include <optional>
#include <unordered_set>
#include <atomic>
#include <unordered_map>
#include <chrono>

using namespace c74::min;
using namespace c74::min::lib;

// Forward declaration for MC channel count callback
long voice_alligator_multichanneloutputs(c74::max::t_object* x, long index, long count);

// Simple single-producer single-consumer lock-free ring buffer
template<typename T, size_t N>
class spsc_ring_buffer {
    std::atomic<size_t> head{0};
    std::atomic<size_t> tail{0};
    T buffer[N];
public:
    bool try_push(T value) {
        size_t h = head.load(std::memory_order_relaxed);
        size_t t = tail.load(std::memory_order_acquire);
        if ((t + 1) % N == h) return false; // full
        buffer[t] = value;
        tail.store((t + 1) % N, std::memory_order_release);
        return true;
    }
    bool try_pop(T& value) {
        size_t h = head.load(std::memory_order_acquire);
        size_t t = tail.load(std::memory_order_relaxed);
        if (h == t) return false; // empty
        value = buffer[h];
        head.store((h + 1) % N, std::memory_order_release);
        return true;
    }
};

class voice_alligator : public object<voice_alligator>, public vector_operator<> {
public:
MIN_DESCRIPTION{"voice allocator for poly~ object"};
MIN_TAGS{"velocities, pitches, etc."};
MIN_AUTHOR{"Jan Godde, Edis Ludwig"};
MIN_RELATED{"poly~"};
MIN_FLAGS{documentation_flags::do_not_generate};

inlet<> in1{this, "(list) midipitch, velocity, (stream), (mono_flag), (realpitch)"};
inlet<> in2{this, "(multichannelsignal) adsr~ signals from poly~ voices, one channel per voice", "multichannelsignal"};
outlet<> out1{this, "messages to poly~ object, [(notes), freq, velocity, (flags), glide, hold, sustain, sequencer, mono, stream]"};

// Register the MC channel count callback so Max knows how many channels in2 expects,
// and set Z_MC_INLETS so the audio bundle receives all channels of the MC inlet.
message<> maxclass_setup{this, "maxclass_setup", MIN_FUNCTION{
    c74::max::t_class* c = args[0];
    c74::max::class_addmethod(c, (c74::max::method)voice_alligator_multichanneloutputs, "multichanneloutputs", c74::max::A_CANT, 0);
    return {};
}};

// Set Z_MC_INLETS on the object instance so Max passes all MC channels to operator().
// This must be done per-instance (not per-class) by setting the z_misc field directly.
message<> setup{this, "setup", MIN_FUNCTION{
    auto* self = (c74::max::t_pxobject*)maxobj();
    self->z_misc |= 32; // Z_MC_INLETS — object knows how to count channels of incoming MC signals
    return {};
}};

struct Note
{
    number vel{80};
    std::vector<number> freq; // actual pitch (frequency or midi number depending on output mode)
    std::vector<int> mpitch;  // midi pitch used for matching note on/off
    int stream{1};
    int target{1};
    bool mono_flag{false};
    bool sequencer_note_flag{false};
    bool sustain_flag{false};
    bool hold_flag{false};
    bool release_flag{false};

    int return_lowest_mpitch() const {
        return *std::min_element(mpitch.begin(), mpitch.end());
    }

    int return_highest_mpitch() const {
        return *std::max_element(mpitch.begin(), mpitch.end());
    }

    number return_lowest_freq() const {
        return *std::min_element(freq.begin(), freq.end());
    }

    number return_highest_freq() const {
        return *std::max_element(freq.begin(), freq.end());
    }

    void remove_mpitch_and_freq_entry(int mpitchToRemove){
        for (auto it = mpitch.begin(); it != mpitch.end(); ++it){
            if (*it == mpitchToRemove) {
                size_t index = it - mpitch.begin();
                mpitch.erase(mpitch.begin() + index);
                freq.erase(freq.begin() + index);
                break;
            }
        }
    }

    void remove_highest_mpitch_entry(){
        auto it = std::max_element(mpitch.begin(), mpitch.end());
        size_t index = it - mpitch.begin();
        mpitch.erase(mpitch.begin() + index);
        freq.erase(freq.begin() + index);
    }

    void remove_lowest_mpitch_entry(){
        auto it = std::min_element(mpitch.begin(), mpitch.end());
        size_t index = it - mpitch.begin();
        mpitch.erase(mpitch.begin() + index);
        freq.erase(freq.begin() + index);
    }
};

class ScaleArray
{
public:
    void set_size(int size) {
        arrsize = size;
    }

    void fill_container(int size) {
        data.resize(size); 
        for (int i = 0; i < size; ++i) {
            data[i] = static_cast<number>(440 * (exp(0.057762265 * (i - 69)))); // MTOF
        }
    }

    void set_value(int index, number value) {
        if (index >= 0 && index < arrsize) {
            data[index] = value; 
        } 
    }

    int length(){
        return static_cast<int>(data.size());
    }

    int value_count(){
        int count = 0;
        for (const auto& val : data) {
            if (val.has_value()) ++count;
        }
        return count;
    }

    void clear(){
        data.clear();
        data.resize(arrsize, std::nullopt);
    }

    std::optional<number> get_value(int index) {
        if (index >= 0 && index < static_cast<int>(data.size())) {
            return data[index];
        }
        return std::nullopt;
    }

private:
    std::vector<std::optional<number>> data;
    int arrsize = 127;
};

// Voice containers
std::vector<Note> active_voices;                 // currently sounding voices (ADSR on)
std::unordered_map<int, Note> pending_voices;    // sent to poly~ but ADSR not yet confirmed (target -> Note)
std::unordered_set<int> inactive_voices_set;     // fast membership test
std::vector<int> inactive_voices_list;           // round‑robin allocation
ScaleArray scale_array;

bool prev_active_attr = true;

attribute<bool> active_attr{this, "active", true, description{"Activates Note-On Processing (default true)"},
setter{
    MIN_FUNCTION{
        bool argvar = args[0]; 
        unsigned long argsize = args.size();
        if(argsize == 1){
            inactive_voices_set.clear();
            prev_active_attr = argvar;
            return{argvar};
        }
        if (argsize == 2) {
            int stream = args[0];
            bool value  = args[1];
            if (!value) {
                inactive_voices_set.insert(stream);
                return {prev_active_attr};
            } else {
                inactive_voices_set.erase(stream);
                return {value};
            }
        }
        if(argsize > 2){
            cerr << "too many arguments, expected (value) or (stream, value)" << endl;   
            return{argvar};
        }
        return{argvar};
    }
}};

attribute<bool> debug{this, "debug", false, description{"Debug on / off"}, visibility::show};
attribute<bool> mono_steals_release_attr{this, "mono_steals_release", false, description{"If false, new monophony notes will ignore monophony notes that are in release and will generate new notes (default false)"}};
attribute<bool> hold_attr{this, "hold", false, description{"Hold on / off"}};
attribute<number> basefreq_attr{this, "basefreq", 440.0f, description{"Standard A, (default 440.0 hz) "}};
attribute<bool> steal_attr{this, "steal", true, description{"Steal on / off (default true)"}};

int steal_case = 1;
bool steal_was_set = false;
bool steal_hold_var = false;

attribute<bool> steal_hold_attr{this, "steal_hold", true, description{"Steal Hold Notes on / off"}, 
setter{
    MIN_FUNCTION{
        bool argvar = args[0];
        steal_hold_var = argvar;
        if (steal_was_set){
            setStealcase();
        }
        else steal_was_set = true;
        return{argvar};
    }
}}; 

attribute<bool> scale_fill_attr{this, "scale_fill", true, description{"Fill notes that are non-defined in scale_def message with MTOF (default true)"}};

enum class mono_note_priority : int{
    LAST,
    LOW,
    HIGH,
    enum_count
};
enum_map mono_note_priority_range = {"Last Note Priority", "Low Note Priority", "High Note Priority"}; 
attribute<mono_note_priority> mono_note_priority_attr{this, "mono_note_priority", mono_note_priority::LAST, mono_note_priority_range,
                               description{"Choose Mono Mode: last note, low note, high note (default last note)"}};

enum class respect_stream_priorities : int{
    NO,
    YES,
    MAYBE,
    enum_count
};
enum_map respect_stream_priorities_range = {"Ignore Stream Priorities", "Stream can't steal lower Stream", "Stream can steal lower Stream"}; 

bool respect_stream_priorities_was_set = false;
int respect_stream_priorities_var = 1;

attribute<respect_stream_priorities> respect_stream_priorities_attr{this, "respect_stream_priorities", respect_stream_priorities::YES, respect_stream_priorities_range,
                                description{"0 Don't respect, 1 Respect, 2 Respect but steal (default 1)"}, 
                                setter{
                                    MIN_FUNCTION{
                                        int argvar = args[0];
                                        respect_stream_priorities_var = argvar;
                                        if (respect_stream_priorities_was_set){
                                            setStealcase();
                                        }
                                        else respect_stream_priorities_was_set = true;
                                        return{argvar};  
                                    }
                                }};

enum class scale_def_mode : int{
    mpitch,
    freq,
    enum_count
};
enum_map scale_def_mode_range = {"Midi Pitch", "Frequency"};
attribute<scale_def_mode> scale_def_mode_attr{this, "scale_def_mode", scale_def_mode::freq, scale_def_mode_range,
                               description{"Define Scale by Midi Note or by Frequency (default frequency)"}};

enum class output_mode : int{
    mpitch,
    freq,
    enum_count
};
enum_map output_mode_range = {"Midi Pitch", "Frequency"};
attribute<output_mode> output_mode_attr{this, "output_mode", output_mode::freq, output_mode_range,
                               description{"Output Midi Notes or Frequencies (default frequency)"}};

int voices = 1; 

argument<int> voices_arg{
    this, "voices_arg",
    description{"Number of voices, max: 1024"},
    {
        MIN_ARGUMENT_FUNCTION{
            voices = arg;
        }
    }
};

voice_alligator(const atoms& args = {}){
    setStealcase();
    int voicenr = voices;
    if(args.size()) voicenr = args[0];
    if(voicenr > 1024){
        cerr << "maximum number of voices is 1024" << endl;    
        return;
    }
    voices = voicenr;
    inactive_voices_list.clear();
    inactive_voices_set.clear();
    active_voices.clear();
    pending_voices.clear();
    std::fill(std::begin(adsr_active), std::end(adsr_active), false);
    for (int i = 1; i <= voicenr; ++i){
        inactive_voices_list.push_back(i);
        inactive_voices_set.insert(i);
    }
}

// DSP operator: reads the multichannel ADSR signal from inlet 2.
// Channel index (0-based) maps to voice target (1-based): channel 0 = target 1, etc.
// A voice is "started" when its ADSR first goes above zero → promote pending → active.
// A voice is "finished" when its ADSR returns to zero after being active → return to inactive pool.
// Audio thread writes events into the lock‑free queue.
static constexpr double ADSR_THRESHOLD = 1e-5;

// Lock‑free event queue (target, event) where event: 1 = start, -1 = finish, 2 = blip
spsc_ring_buffer<std::pair<int, int>, 2048> adsr_events;

void operator()(audio_bundle input, audio_bundle output){
    const int offset = 1;
    const int total_channels = static_cast<int>(input.channel_count());
    const int num_voices = std::min(voices, total_channels - offset);

    for (int v = 0; v < num_voices; ++v){
        const int ch  = v + offset;
        const auto* samples = input.samples(ch);
        const int frames = input.frame_count();

        double peak = 0.0;
        for (int i = 0; i < frames; ++i)
            if (samples[i] > peak) peak = samples[i];
        const double last = frames > 0 ? samples[frames - 1] : 0.0;

        const bool was_active  = adsr_active[v];
        const bool went_active = (peak  > ADSR_THRESHOLD);
        const bool still_active = (last > ADSR_THRESHOLD);

        if (!was_active && went_active && !still_active){
            // entire note life within one vector
            adsr_events.try_push({v + 1, 2});
        }
        else if (!was_active && went_active){
            adsr_events.try_push({v + 1, 1});
        }
        else if (was_active && !still_active){
            adsr_events.try_push({v + 1, -1});
        }

        adsr_active[v] = still_active;
    }
}

// Timer runs on the scheduler thread and drains adsr_events safely.
timer<timer_options::defer_delivery> adsr_poll{this, MIN_FUNCTION{
    std::pair<int, int> event;
    lock lock{m_mutex};

    // Process all queued ADSR events
    while (adsr_events.try_pop(event)) {
        int target = event.first;
        int type = event.second;

        if (type == 1){
            // ADSR went non-zero: promote pending → active
            auto it = pending_voices.find(target);
            if (it != pending_voices.end()){
                if(debug){cout << "ADSR on for target " << target << " → promoting to active_voices" << endl;}
                // Remove from inactive sets
                if (inactive_voices_set.erase(target)) {
                    auto vit = std::find(inactive_voices_list.begin(), inactive_voices_list.end(), target);
                    if (vit != inactive_voices_list.end()) inactive_voices_list.erase(vit);
                }
                active_voices.push_back(it->second);
                pending_voices.erase(it);
            } else {
                if(debug){cout << "Warning: ADSR on for target " << target << " with no pending note" << endl;}
            }
        }
        else if (type == 2){
            // ADSR fired and finished within the same vector
            auto it = pending_voices.find(target);
            if (it != pending_voices.end()){
                if(debug){cout << "ADSR blip for target " << target << " → note complete, discarding from pending" << endl;}
                pending_voices.erase(it);
            }
        }
        else{ // type == -1
            if(debug){cout << "ADSR off for target " << target << " → returning to inactive_voices" << endl;}
            // Remove from active_voices
            auto noteIt = std::find_if(active_voices.begin(), active_voices.end(),
                                       [target](const Note& n){ return n.target == target; });
            if (noteIt != active_voices.end()){
                // Add to inactive sets
                if (inactive_voices_set.insert(target).second) {
                    inactive_voices_list.push_back(target);
                }
                active_voices.erase(noteIt);
            } else {
                // Might be in pending_voices? Shouldn't happen, but clean up
                auto pit = pending_voices.find(target);
                if (pit != pending_voices.end()) {
                    if(debug){cout << "ADSR off for pending target " << target << " - discarding pending" << endl;}
                    pending_voices.erase(pit);
                }
                // Ensure it's in inactive sets
                if (inactive_voices_set.insert(target).second) {
                    inactive_voices_list.push_back(target);
                }
            }
        }
    }

    adsr_poll.delay(1);
    return {};
}};

message<> voicesMessage{this, "voices", "set voices",
    MIN_FUNCTION{
        int voiceMessNr = voices;
        if(args.size()) voiceMessNr = args[0];
        if(voiceMessNr > 1024){
            cerr << "maximum number of voices is 1024" << endl;    
            return{};
        } 
        lock lock{m_mutex};
        inactive_voices_list.clear();
        inactive_voices_set.clear();
        active_voices.clear();
        pending_voices.clear();
        std::fill(std::begin(adsr_active), std::end(adsr_active), false);
        for (int i = 1; i <= voiceMessNr; ++i){
            inactive_voices_list.push_back(i);
            inactive_voices_set.insert(i);
        }
        out1.send("voices", voiceMessNr);
        return {};
    }
};

bool mono_attr_was_set_on_load = false;

attribute<bool, threadsafe::yes> mono_attr{
    this, "mono", false,
    description{"Monophony on / off"},
    setter{
        MIN_FUNCTION{
            bool mono_true = args[0];
            if (!mono_true){
                if(mono_attr_was_set_on_load) lock lock{m_mutex}; //skip first lock
                mono_attr_was_set_on_load = true;
                for (auto& note : active_voices){
                    if (note.mpitch.size() > 1){
                        note.mpitch = { note.mpitch.back() };
                    }
                    if (note.freq.size() > 1){
                        note.freq = { note.freq.back() };
                    }
                }
            }
            return {mono_true};
        }
    }
};

bool sustain_attr_was_set_on_load = false;

attribute<bool, threadsafe::yes> sustain_attr{this, "sustain", false, description{"Sustain on / off"},
    setter{
        MIN_FUNCTION{
            bool sustain_off = args[0];
            std::vector<Note> notes_to_send;

            if (!sustain_off && sustain_attr_was_set_on_load){
                lock lock{m_mutex};
                for (auto &it_note : active_voices){
                    if (it_note.sustain_flag == 1 && !it_note.release_flag){
                        it_note.release_flag = true;
                        notes_to_send.push_back(it_note);
                    }
                }
            }
            for (auto &note : notes_to_send){
                outputFunction(note, 0, 0, false);
            }

            sustain_attr_was_set_on_load = true;
            return {sustain_off};
        }
    }
};

attribute<int> scale_array_maxsize_attr{ 
    this, "scalearray_maxsize", 128,
    description{"Set maximum number of entries in scale array (default 128)"},
    setter{
        MIN_FUNCTION{
            int maxsize = args[0];
            scale_array.set_size(maxsize);
            scale_array.fill_container(maxsize);
            return {maxsize};
        }
    }
};

function mainInletFunction = MIN_FUNCTION{
    lock lock{m_mutex};
    if (inlet == 0){
        int mpitch = args[0];
        number vel = args[1];
        unsigned long argsize = args.size();

        if(debug && argsize < 4){cout << "Player Note to Inlet 1: " << mpitch << " " << vel << endl;}

        Note current_note = newNote(mpitch, vel);

        if(argsize >= 3){
            int stream = args[2];
            current_note.stream = stream;
        }

        if(argsize >= 4){
            int mono_flag = args[3];
            if(debug && argsize == 4){cout << "  Sequencer Note to Inlet 1: " << mpitch << " " << vel<< " "  << args[2]<< " "  << mono_flag << endl;}
            current_note.mono_flag = mono_flag;
            current_note.sequencer_note_flag = true;
        }

        if(argsize >= 5){
            number realpitch = args[4];
            if(debug && argsize == 5){cout << "Pre-recorded Sequencer Note to Inlet 1: " << mpitch << " " << vel<< " "  << args[2]<< " "  << args[3]<< " " << args[4] << endl;}
            if(output_mode_attr == output_mode::freq){
                current_note.freq.pop_back();                                    
                current_note.freq.push_back(realpitch);
            } 
            else{
                current_note.mpitch.pop_back();
                current_note.mpitch.push_back(static_cast<int>(realpitch));
            }
        }                                                           

        if (vel != 0){
            if(inactive_voices_set.count(current_note.stream)
               || (inactive_voices_set.empty() && !active_attr)) return{};
            if(output_mode_attr == output_mode::freq && argsize < 4 && !scale_array.get_value(mpitch)){
                if(debug){cout << "mpitch " << mpitch << " not defined in the scale_array" << endl;}
                return {};
            }
            handleNoteOn(current_note, lock);
        }
        else{
            handleNoteOff(current_note, lock);
        }
    }
    return {};
};

Note newNote(int mpitch, int vel){    
    Note new_note;
    new_note.mpitch.push_back(mpitch);

    if((output_mode_attr == output_mode::freq) && scale_array.get_value(mpitch)){
        auto value = scale_array.get_value(mpitch);
        new_note.freq.push_back(static_cast<number>(*value) * (basefreq_attr / 440));
    }
    else{
        new_note.freq.push_back(mpitch);
    }
    new_note.vel = vel;
    return new_note;
}

void handleNoteOn(Note &note, lock &lock){
    if(note.sequencer_note_flag){
        if(note.mono_flag) 
            handleNoteOnMono(note, lock);
        else 
            handleNoteOnPoly(note, lock);
    }
    else if (!mono_attr)
        handleNoteOnPoly(note, lock);
    else
        handleNoteOnMono(note, lock);
}

void handleNoteOnMono(Note &note, lock &lock){
    int free_voice = -1;
    int incoming_note_stream = note.stream;
    Note note_to_send;

    if(!note.sequencer_note_flag){
        if (auto *mono_target_note = findFirstNoteWithPredicate([=](const Note &n)
                                                        {return n.mono_flag == 1
                                                        && !n.hold_flag
                                                        && n.stream == incoming_note_stream
                                                        && !n.release_flag;})){
            if((mono_note_priority_attr == mono_note_priority::LOW) && mono_target_note->return_lowest_mpitch() < note.mpitch.back()){
                return;
            }
            if((mono_note_priority_attr == mono_note_priority::HIGH) && mono_target_note->return_highest_mpitch() > note.mpitch.back()){
                return;
            }
            if(debug){cout << "Mono key was pressed, Player mono voice of stream " << mono_target_note->stream<< " found with target " << mono_target_note->target << endl;}
            mono_target_note->mpitch.push_back(note.mpitch.back());
            mono_target_note->freq.push_back(note.freq.back());
            mono_target_note->vel = note.vel;
            note_to_send = *mono_target_note;
            lock.unlock();
            outputFunction(note_to_send, 1, 1, false, true);
            return;
        }
    }
    else{
        if (auto *mono_target_note = findFirstNoteWithPredicate([=](const Note &n)
                                                            {return n.mono_flag == true
                                                            && n.stream == incoming_note_stream
                                                            && !n.release_flag;})){
            if(debug){cout << "Mono key was pressed, Sequencer mono voice of stream " << mono_target_note->stream<< " found with target " << mono_target_note->target << endl;}
            mono_target_note->vel = note.vel;
            mono_target_note->mpitch = note.mpitch;
            mono_target_note->freq = note.freq;
            note_to_send = *mono_target_note;
            lock.unlock();
            outputFunction(note_to_send, 1, 1, false, true);
            return;
        }
    }

    if(mono_steals_release_attr){   
        if (auto *mono_target_note = findFirstNoteWithPredicate([=](const Note &n)
                                            {return n.mono_flag == true
                                            && n.stream == incoming_note_stream
                                            && n.release_flag;})){
            if((mono_note_priority_attr == mono_note_priority::LOW && !note.sequencer_note_flag) && mono_target_note->return_lowest_mpitch() < note.mpitch.back()){
                return;
            }
            if((mono_note_priority_attr == mono_note_priority::HIGH) && !note.sequencer_note_flag && mono_target_note->return_highest_mpitch() > note.mpitch.back()){
                return;
            }
            if(debug){cout << "Mono key was pressed, released mono voice of stream " << mono_target_note->stream<< " found with target " << mono_target_note->target << endl;}
            mono_target_note->release_flag = false;
            mono_target_note->mpitch.clear();
            mono_target_note->mpitch.push_back(note.mpitch.back());
            mono_target_note->freq.clear();
            mono_target_note->freq.push_back(note.freq.back());
            mono_target_note->vel = note.vel;
            note_to_send = *mono_target_note;
            lock.unlock();
            outputFunction(note_to_send, 1, 1, false, true);
            return;
        }
    }

    free_voice = findFreeVoice();
    if (free_voice != -1){
        note.target = free_voice;
        note.mono_flag = true;
        pending_voices[free_voice] = note;
        if(debug){cout << "Found inactive voice with target " << free_voice << " and added new mono note to pending_voices" << endl;}
        lock.unlock();
        outputFunction(note, 1, 0);
        return;
    }
    else{
        Note *noteToSteal = findNoteToSteal(note);
        if (noteToSteal){
            if(debug){cout << "** found note to steal **\n";}
            noteToSteal->mpitch = note.mpitch;
            noteToSteal->freq = note.freq;
            noteToSteal->vel = note.vel;
            noteToSteal->stream = note.stream;
            noteToSteal->sequencer_note_flag = note.sequencer_note_flag;
            noteToSteal->release_flag = false;
            noteToSteal->hold_flag = false;
            noteToSteal->mono_flag = true;
            noteToSteal->sustain_flag = false;

            size_t index = noteToSteal - &active_voices[0];
            rotate(active_voices.begin() + index, active_voices.begin() + index + 1, active_voices.end());

            if(debug){cout << "** changed stolen note content to new note content and moved it to back of active_voices **\n";}
            note_to_send = active_voices.back();
            lock.unlock();
            outputFunction(note_to_send, 1, 1);
        }
        else{
            if(debug){cout << "** did not find note to steal **"<<endl;}
            // Last resort: if steal_attr is true but no candidate found, steal the oldest active voice
            if (!active_voices.empty()) {
                Note* oldest = &active_voices[0];
                if(debug){cout << "** stealing oldest active voice as fallback **" << endl;}
                oldest->mpitch = note.mpitch;
                oldest->freq = note.freq;
                oldest->vel = note.vel;
                oldest->stream = note.stream;
                oldest->sequencer_note_flag = note.sequencer_note_flag;
                oldest->release_flag = false;
                oldest->hold_flag = false;
                oldest->mono_flag = true;
                oldest->sustain_flag = false;
                // Move to back
                rotate(active_voices.begin(), active_voices.begin() + 1, active_voices.end());
                note_to_send = active_voices.back();
                lock.unlock();
                outputFunction(note_to_send, 1, 1);
            } else {
                lock.unlock(); // ensure unlock even if no action
            }
        }
    }
}

void handleNoteOnPoly(Note &note, lock &lock){
    int free_voice = -1;

    free_voice = findFreeVoice();
    if(debug){cout << "handleNoteOnPoly: findFreeVoice=" << free_voice << " inactive_voices size=" << inactive_voices_list.size() << " active_voices size=" << active_voices.size() << " pending size=" << pending_voices.size() << endl;}
    if (free_voice != -1){
        note.target = free_voice;
        note.mono_flag = false;
        pending_voices[free_voice] = note;
        if(debug){cout << "Found inactive voice with target " << free_voice << " and added new note with mpitch " << note.mpitch.back() << " to pending_voices" << endl;}
        lock.unlock();
        outputFunction(note, 1, 0);
    }
    else{
        Note* noteToSteal = findNoteToSteal(note);
        if (noteToSteal){
            if(debug){cout << "Found note to steal on target " << noteToSteal->target << " and mpitch " << noteToSteal->mpitch.back() << endl;}
            noteToSteal->mpitch = note.mpitch;
            noteToSteal->freq = note.freq;
            noteToSteal->vel = note.vel;
            noteToSteal->stream = note.stream;
            noteToSteal->sequencer_note_flag = note.sequencer_note_flag;
            noteToSteal->release_flag = false;
            noteToSteal->hold_flag = false;
            noteToSteal->sustain_flag = false;
            noteToSteal->mono_flag = false;

            size_t index = noteToSteal - &active_voices[0];
            rotate(active_voices.begin() + index, active_voices.begin() + index + 1, active_voices.end());

            if(debug){cout << "** changed stolen note content to new note content and moved it to back of active_voices **" << endl;}
            lock.unlock();
            outputFunction(active_voices.back(), 1, 1);
        }
        else{
            if(debug){cout << "** did not find note to steal **" << endl;}
            // Last resort: if steal_attr is true but no candidate found, steal the oldest active voice
            if (!active_voices.empty()) {
                Note* oldest = &active_voices[0];
                if(debug){cout << "** stealing oldest active voice as fallback **" << endl;}
                oldest->mpitch = note.mpitch;
                oldest->freq = note.freq;
                oldest->vel = note.vel;
                oldest->stream = note.stream;
                oldest->sequencer_note_flag = note.sequencer_note_flag;
                oldest->release_flag = false;
                oldest->hold_flag = false;
                oldest->sustain_flag = false;
                oldest->mono_flag = false;
                // Move to back
                rotate(active_voices.begin(), active_voices.begin() + 1, active_voices.end());
                lock.unlock();
                outputFunction(active_voices.back(), 1, 1);
            } else {
                lock.unlock(); // ensure unlock even if no action
            }
        }
    }
}

void handleNoteOff(Note &incoming_note, lock &lock){
    if(debug) cout << "Called Handle Note Off" << endl;
    int incoming_note_stream = incoming_note.stream;
    int incoming_note_mpitch_back = incoming_note.mpitch.back();
    Note note_to_send;

    // If the note is still pending (ADSR not yet confirmed), send the note-off to poly~ and
    // mark release_flag so adsr_poll can clean up once the ADSR finishes.
    for (auto it = pending_voices.begin(); it != pending_voices.end(); ++it){
        if (it->second.mpitch.back() == incoming_note_mpitch_back && it->second.stream == incoming_note_stream){
            if(debug) cout << "Note off for pending target " << it->first << " → sending note-off to poly~ and marking release_flag" << endl;
            it->second.release_flag = true;
            Note note_to_send = it->second;
            lock.unlock();
            outputFunction(note_to_send, 0, 0);
            return;
        }
    }

    // Set hold / sustain case: On note off, set the note to hold or sustain and return
    if(!incoming_note.sequencer_note_flag){
        if (hold_attr && !sustain_attr){
            if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                {return n.mpitch.back() == incoming_note_mpitch_back 
                                                && !n.hold_flag
                                                && n.stream == incoming_note_stream
                                                && !n.release_flag;})){
                if(debug)cout<<"set note " << note->mpitch.back() << " at target " << note->target << " to hold" << endl;
                note->hold_flag = true;
                note_to_send = *note;
                lock.unlock();
                outputFunction(note_to_send, 0, 0, true);
                return;
            }
        }
        else if (sustain_attr){
            if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                {return n.mpitch.back() == incoming_note_mpitch_back
                                                && !n.sustain_flag 
                                                && n.stream == incoming_note_stream
                                                && !n.release_flag;})){
                if(debug)cout<<"set note " << note->mpitch.back() << " at target " << note->target << " to sustain" << endl;
                note->sustain_flag = true;
                note_to_send = *note;
                lock.unlock();
                outputFunction(note_to_send, 0, 0, true);
                return;
            }
        }
    }

    // Normal note off case
    if (auto *note = findFirstNoteWithPredicate([=](const Note &n) 
                                        {return n.stream == incoming_note_stream 
                                        && n.mpitch.size() == 1 
                                        && n.mpitch.back() == incoming_note_mpitch_back
                                        && !n.hold_flag
                                        && !n.sustain_flag
                                        && !n.release_flag;})){
        if(debug)cout<<"released incoming note with mpitch " << incoming_note_mpitch_back << " at target " << note->target << endl;
        note->release_flag = true;
        note_to_send = *note;
        lock.unlock();
        outputFunction(note_to_send, 0, 0);
        return;
    }
    else{ // MONOPHONY case
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return n.stream == incoming_note_stream 
                                               && n.mono_flag 
                                               && !n.hold_flag
                                               && !n.sustain_flag
                                               && !n.release_flag;})){
            switch (mono_note_priority_attr) {
                case mono_note_priority::LAST:
                    if (note->mpitch.back() == incoming_note_mpitch_back){
                        if (note->mpitch.size() > 1) {
                            if (debug) cout << "monophony note off into note on case" << endl;
                            note->mpitch.pop_back();
                            note->freq.pop_back();
                            note->release_flag = 0;
                            note_to_send = *note;
                            lock.unlock();
                            outputFunction(note_to_send, 1, 1, false, true);
                            return;
                        } 
                    }
                    break;
                case mono_note_priority::HIGH:
                    if (note->return_highest_mpitch() == incoming_note_mpitch_back) {
                        if (note->mpitch.size() > 1) {
                            note->remove_highest_mpitch_entry();
                            note->release_flag = 0;
                            note_to_send = *note;
                            lock.unlock();
                            outputFunction(note_to_send, 1, 1, false, true);
                            return;
                        } 
                    }
                    break;
                case mono_note_priority::LOW:
                    if (note->return_lowest_mpitch() == incoming_note_mpitch_back) {
                        if (note->mpitch.size() > 1) {
                            note->remove_lowest_mpitch_entry();
                            note->release_flag = 0;
                            note_to_send = *note;
                            lock.unlock();
                            outputFunction(note_to_send, 1, 1, false, true);
                            return;
                        } 
                    }
                    break;
                default: break;
            } 
            if (note->mpitch.size() == 1 && note->mpitch.back() == incoming_note_mpitch_back) {
                note->release_flag = true;
                note_to_send = *note;
                lock.unlock();
                outputFunction(note_to_send, 0, 0);
                return;
            }
            note->remove_mpitch_and_freq_entry(incoming_note_mpitch_back);
        }
    }
}

int findFreeVoice(){
    for (int candidate : inactive_voices_list){
        auto it = pending_voices.find(candidate);
        if (it == pending_voices.end())
            return candidate;
        if (it->second.release_flag){
            if(debug){cout << "findFreeVoice: discarding stale pending note on target " << candidate << endl;}
            pending_voices.erase(it);
            return candidate;
        }
    }
    return -1;
}

Note* findFirstNoteWithPredicate(std::function<bool(const Note &)> predicate){
    for (auto &noteIt : active_voices){
        if (predicate(noteIt)){
            return &noteIt;
        }
    }
    return nullptr;
}

Note* findLastNoteWithPredicate(std::function<bool(const Note&)> predicate){
    for (auto it = active_voices.rbegin(); it != active_voices.rend(); ++it){
        if (predicate(*it)){
            return &(*it);
        }
    }
    return nullptr;
}

void setStealcase(){
    if(     respect_stream_priorities_var   == 1  && !steal_hold_var)  steal_case = 1;
    else if(respect_stream_priorities_var   == 0  && !steal_hold_var)  steal_case = 2;
    else if(respect_stream_priorities_var   == 2  && !steal_hold_var)  steal_case = 3;
    else if(respect_stream_priorities_var   == 1  &&  steal_hold_var)  steal_case = 4;
    else if(respect_stream_priorities_var   == 0  &&  steal_hold_var)  steal_case = 5;
    else if(respect_stream_priorities_var   == 2  &&  steal_hold_var)  steal_case = 6;
}

Note* findNoteToSteal(const Note &incoming_note){
    if(debug){cout << "incoming note " << incoming_note.mpitch.back() << " asked for steal" << endl;} 
    if(!steal_attr) return nullptr;
    int stream = incoming_note.stream;

    switch (steal_case){
    case 1:
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.hold_flag && n.release_flag && n.stream > stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.hold_flag && n.release_flag && n.stream == stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.hold_flag && n.stream > stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.hold_flag && n.stream == stream; }))
            return note;
        break;
    case 2:
        if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                             { return n.release_flag  && !n.hold_flag;}))
            return note;
        if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                             { return !n.release_flag  && !n.hold_flag;}))
            return note;
        break;
    case 3:
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.hold_flag && n.release_flag && n.stream > stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.hold_flag && n.release_flag && n.stream == stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.hold_flag && n.release_flag && n.stream < stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.hold_flag && !n.release_flag && n.stream > stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.hold_flag && !n.release_flag && n.stream == stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.hold_flag && !n.release_flag && n.stream < stream; }))
            return note;
        break;
    case 4:
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return n.release_flag && n.stream > stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return n.release_flag && n.stream == stream;}))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.release_flag && n.stream > stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return !n.release_flag && n.stream == stream; }))
            return note;
        break;
    case 5:
        if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                { return n.release_flag; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                { return !n.release_flag;}))
            return note;
        break;
    case 6:
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                { return n.release_flag && n.stream > stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                { return n.release_flag && n.stream == stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                { return n.release_flag && n.stream < stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                { return !n.release_flag && n.stream > stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                { return !n.release_flag && n.stream == stream; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                { return !n.release_flag && n.stream < stream; }))
            return note;     
        break;
    }
    return nullptr; // no suitable note found
}

void outputFunction(const Note note, bool note_on, bool steal, bool flags_only = false, bool glide_note = false){
    // Always print a simple message to confirm output (remove this line if too noisy)
    cout << "outputFunction: " << (note_on ? "ON" : "OFF") << " target=" << note.target << " pitch=" << note.mpitch.back() << " vel=" << (note_on ? note.vel : 0) << endl;

    if (note_on){
        out1.send("target", note.target);
        if(!flags_only) {
            if(debug){cout << "Outlet 1: target " << note.target    << " " << note.mpitch.back()    << " " << note.freq.back()    << " " << note.vel    << " " << note.mono_flag    << " " << steal    << " " << note.hold_flag    << " " << note.sustain_flag    << endl;}        
            if(note.mono_flag && !glide_note){
                switch(mono_note_priority_attr){
                case mono_note_priority::LAST:
                    out1.send("notes", note.freq.back(), note.vel, "flags", glide_note, note.hold_flag, note.sustain_flag, note.sequencer_note_flag, note.mono_flag, note.stream);
                    break;
                case mono_note_priority::HIGH:
                    out1.send("notes", note.return_highest_freq(), note.vel, "flags", glide_note, note.hold_flag, note.sustain_flag, note.sequencer_note_flag, note.mono_flag, note.stream);
                    break;
                case mono_note_priority::LOW:
                    out1.send("notes", note.return_lowest_freq(), note.vel, "flags", glide_note, note.hold_flag, note.sustain_flag, note.sequencer_note_flag, note.mono_flag, note.stream);
                    break;
                default: break;
                }
            }
            else{
                out1.send("notes", note.freq.back(), note.vel, "flags", glide_note, note.hold_flag, note.sustain_flag, note.sequencer_note_flag, note.mono_flag, note.stream);
            }
        }
    }
    else{
        out1.send("target", note.target);
        if(!flags_only) out1.send("notes", note.freq.back(), 0, "flags", glide_note, note.hold_flag, note.sustain_flag, note.sequencer_note_flag, note.mono_flag, note.stream);
        else{
            out1.send("flags", glide_note, note.hold_flag, note.sustain_flag, note.sequencer_note_flag, note.mono_flag, note.stream);
        }
        if(debug){cout << "Outlet 1: target " << note.target<< " " << note.mpitch.back()<< " " << note.freq.back()<< " " << 0<< " " << note.mono_flag<< " " << steal<< " " << note.hold_flag<< " " << note.sustain_flag<< endl;}
    }
}

function endHold = MIN_FUNCTION{
    if (inlet == 0){
        atom end_argument = "all";
        unsigned long size = args.size();
        if (size > 0) end_argument = args[0];
        if(debug){cout << " Endhold function called" << endl;}

        std::vector<Note> notes_to_send;

        if (end_argument == "all"){
            lock lock{m_mutex};
            for (auto &it_note : active_voices){
                if (it_note.hold_flag == 1 && !it_note.release_flag){
                    it_note.release_flag = true;
                    notes_to_send.push_back(it_note);
                }
            }
        }
        else if (end_argument == "first"){
            lock lock{m_mutex};
            if (auto* noteptr = findFirstNoteWithPredicate([](const Note& n) { return n.hold_flag == 1 && !n.release_flag; })){
                noteptr->release_flag = true;
                notes_to_send.push_back(*noteptr);
            }
        }
        else if (end_argument == "last"){
            lock lock{m_mutex};
            if (auto* noteptr = findLastNoteWithPredicate([](const Note& n) { return n.hold_flag == 1 && !n.release_flag; })){
                noteptr->release_flag = true;
                notes_to_send.push_back(*noteptr);
            }
        }

        for (auto &note : notes_to_send){
            outputFunction(note, 0, 0, false);
        }
    }
    return {};
};

function scaleDefineFunction = MIN_FUNCTION{
    if (inlet == 0){
        lock lock{m_mutex};
        unsigned long size = args.size();
        if(scale_fill_attr || !size){
            if(debug){cout << "filled the scale array" << endl;}
            scale_array.fill_container(scale_array_maxsize_attr);
        }
        else{
            if(debug){cout << "cleared the scale array" << endl;}
            scale_array.clear();
        }

        if(debug){cout << "scaledef fun got called with args:" << endl;}

        for (int i = 0; i < size; i += 2) {
            if (i + 1 < size) {
                int index = args[i];
                number value = args[i+1];
                if(scale_def_mode_attr == scale_def_mode::mpitch)
                {
                    scale_array.set_value(index, (440 * exp(0.057762265 * (value - 69))));
                }
                else if(scale_def_mode_attr == scale_def_mode::freq)
                {
                    scale_array.set_value(index, value);
                }
            } 
            else {
                cwarn << "Tried to define note index " << args[i] << " without providing value" << endl;
            }
        }
    }
    return {};
};

function endFunction = MIN_FUNCTION{
    std::vector<Note> notes_to_send;

    {
        lock lock{m_mutex};

        unsigned long size = args.size();
        if (size > 0) {
            int stream = args[0];
            for (auto &it_note : active_voices){
                if (it_note.stream == stream){
                    it_note.release_flag = 1;
                    notes_to_send.push_back(it_note);
                }
            }
        }
        else {
            for (auto &it_note : active_voices){
                it_note.release_flag = 1;
                notes_to_send.push_back(it_note);
            }
        }
    }

    for (auto &note : notes_to_send){
        outputFunction(note, 0, 0, false);
    }

    return {};
};

message<> print{this, "print", "Print info to the max console",
    MIN_FUNCTION
    {
        if(!active_voices.size())
            cout << "No notes in active_voices" << endl;
        else
        {
            cout << active_voices.size() << " notes in active_voices{" << endl;
            for (auto &i : active_voices)
            {
                cout << "mpitch [";
                for (int j : i.mpitch) cout << j << " ";
                cout << "], vel " << i.vel
                     << ", stream " << i.stream
                     << ", target " << i.target
                     << ", freq [";
                for (number k : i.freq) cout << k << " ";
                cout << "], mono " << (i.mono_flag)
                     << ", hold " << (i.hold_flag)
                     << ", sustain " << (i.sustain_flag)
                     << ", release " << (i.release_flag)
                     << ", sequencer_note: " << (i.sequencer_note_flag);
                cout << endl;
            }
            cout << "}" << endl; 
        }

        if (inactive_voices_list.empty())
            cout << "There are no inactive voices available" << endl;
        else if (inactive_voices_list.size() == 1)
            cout << "There is " << inactive_voices_list.size() << " inactive voice available" << endl;
        else
            cout << "There are " << inactive_voices_list.size() << " inactive voices available" << endl;
        return {};
    }
};

message<> printscale{this, "printscale", "Print contents of scale_array to the max console as midi or freq (default midi)",
    MIN_FUNCTION{
        atom modeselect = "midi";
        unsigned long size = args.size();
        if (size > 0) modeselect = args[0];

        int scale_arraylength = scale_array.length();
        int count_of_defined_values = scale_array.value_count();
        cout << "count of defined values: " << count_of_defined_values << endl;

        if(modeselect == "midi" || modeselect == "midinote"){
            for (int i = 0; i <= scale_arraylength; ++i){
                if (scale_array.get_value(i)) {
                    cout << i << ": " << (12 * std::log10(*scale_array.get_value(i) / 440.) / std::log10(2) + 69) << endl;
                } 
            }
            return {};
        }
        if(modeselect == "freq" || modeselect == "frequency"){
            for (int i = 0; i <= scale_arraylength; ++i){
                if (scale_array.get_value(i)) {
                    cout << i << ": " << *scale_array.get_value(i)<< endl;
                } 
            }
            return {};
        }
    }
};

// Panic message: emergency cleanup of all notes
message<> panic{this, "panic", "Emergency cleanup of all notes",
    MIN_FUNCTION {
        lock lock{m_mutex};
        std::vector<Note> all_notes;
        for (auto& note : active_voices) all_notes.push_back(note);
        for (auto& kv : pending_voices) all_notes.push_back(kv.second);
        
        active_voices.clear();
        pending_voices.clear();
        inactive_voices_list.clear();
        inactive_voices_set.clear();
        for (int i = 1; i <= voices; ++i){
            inactive_voices_list.push_back(i);
            inactive_voices_set.insert(i);
        }
        std::fill(std::begin(adsr_active), std::end(adsr_active), false);
        
        lock.unlock();
        for (auto& note : all_notes) {
            outputFunction(note, 0, 0, false);
        }
        cout << "Panic: cleared all notes" << endl;
        return {};
    }
};

message<threadsafe::yes> list{this, "list", "Midipitch, Velocity, (stream), (mono_flag), (realpitch)", mainInletFunction};
message<threadsafe::yes> scale_def{this, "scale_def", "scale_def [index, value]", scaleDefineFunction};
message<threadsafe::yes> end_hold{this, "endhold", "End hold notes: all (default, can be ommitted), last, first", endHold};
message<threadsafe::yes> end{this, "end", "Sends Notes into release. If an argument was provided, send notes of stream (argument) into release, else send all notes into release.", endFunction};

message<> dspstate{this, "dspstate", MIN_FUNCTION{
    bool audio_on = (bool)args[0];
    if (!audio_on) adsr_poll.stop();
    return {};
}};

message<> dspsetup{this, "dspsetup", MIN_FUNCTION{
    std::vector<Note> to_release;
    {
        lock l{m_mutex};
        for (auto& n : active_voices)
            if (!n.release_flag) { n.release_flag = true; to_release.push_back(n); }
        for (auto& kv : pending_voices)
            if (!kv.second.release_flag) { kv.second.release_flag = true; to_release.push_back(kv.second); }
    }
    for (auto& n : to_release) outputFunction(n, 0, 0, false);

    {
        lock l{m_mutex};
        active_voices.clear();
        pending_voices.clear();
        inactive_voices_list.clear();
        inactive_voices_set.clear();
        for (int i = 1; i <= voices; ++i){
            inactive_voices_list.push_back(i);
            inactive_voices_set.insert(i);
        }
        std::fill(std::begin(adsr_active), std::end(adsr_active), false);
    }

    adsr_poll.delay(1);
    return {};
}};

private:
mutex m_mutex;
bool adsr_active[1024] {}; // per-voice active state tracked on the audio thread
};

// MC callback: tells Max how many channels inlet 2 expects (one per voice)
long voice_alligator_multichanneloutputs(c74::max::t_object* x, long index, long count) {
    minwrap<voice_alligator>* ob = (minwrap<voice_alligator>*)(x);
    return ob->m_min_object.voices;
}

MIN_EXTERNAL(voice_alligator);