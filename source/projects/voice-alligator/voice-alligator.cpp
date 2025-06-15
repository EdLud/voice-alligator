/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include <vector>
#include <queue>
#include <cmath>
#include <optional>

using namespace c74::min;
using namespace c74::min::lib;

class voice_alligator : public object<voice_alligator>
{
public:
MIN_DESCRIPTION{"voice allocator for poly~ object"};
MIN_TAGS{"velocities, pitches, etc."};
MIN_AUTHOR{"Jan Godde, Edis Ludwig"};
MIN_RELATED{"poly~"};

inlet<> in1{this, "(list) midipitch, velocity, (channel), (mono_flag), (realpitch)"};
inlet<> in2{this, "(list) voice number, muteflag"};
// outlet<thread_check::scheduler, thread_action::assert> out1{this, "messages to [poly~] object"};
outlet<> out1{this, "messages to poly~ object"};

struct Note
{
    double vel{80};
    std::vector<double> freq;
    std::vector<int> mpitch;
    int channel{1};
    int target{1};      // voice instance of poly~
    bool mono_flag{false};
    bool sequencer_note_flag{false}; //if sequencer note: lock mono flag, don't set hold notes, don't be affected by sustain pedal
    bool sustain_flag{false};
    bool hold_flag{false};
    bool release_flag{false}; // is note in release phase?

    int return_lowest_mpitch() const {
        return *std::min_element(mpitch.begin(), mpitch.end());
    }

    int return_highest_mpitch() const {
        return *std::max_element(mpitch.begin(), mpitch.end());
    }

    double return_lowest_freq() const {
    return *std::min_element(freq.begin(), freq.end());
    }

    double return_highest_freq() const {
        return *std::max_element(freq.begin(), freq.end());
    }

    void remove_mpitch_entry(int mpitchToRemove){
        for (auto it = mpitch.begin(); it != mpitch.end(); ++it){
            if (*it == mpitchToRemove) {
                size_t index = it - mpitch.begin(); // Pointer arithmetic to get the index
                mpitch.erase(mpitch.begin() + index); //mpitch and index are always in pairs
                freq.erase(freq.begin() + index);
                break; // Exit the loop after removing the entry
            }
        }
    }

    void remove_highest_mpitch_entry(){
        // Find the iterator pointing to the highest mpitch
        auto it = std::max_element(mpitch.begin(), mpitch.end());
        size_t index = it - mpitch.begin(); // Calculate the index
        mpitch.erase(mpitch.begin() + index);
        freq.erase(freq.begin() + index);
    }

    void remove_lowest_mpitch_entry(){
        // Find the iterator pointing to the lowest mpitch
        auto it = std::min_element(mpitch.begin(), mpitch.end());
        size_t index = it - mpitch.begin(); // Calculate the index

        // Erase entries from both mpitch and freq
        mpitch.erase(mpitch.begin() + index);
        freq.erase(freq.begin() + index);
    }
};

struct WrappedNote{
    Note note;
    bool note_on;
    bool steal; 
    bool flags_only{false};
    bool glide_note{false};
    bool finished{false};
};

private:
fifo<WrappedNote> notes_fifo{15000};
//fifo<int> finished_notes_fifo{1024};

public:

class ScaleArray
{
    public:

    void setSize(int size) {
        arrsize = size;
    }

    void fillContainer(int size) {
        data.resize(size); 
        for (int i = 0; i < size; ++i) {
            data[i] = static_cast<double>(440 * (exp(0.057762265 * (i - 69)))); // Fill with MTOF
        }
    }

    void set_value(int index, double value) {
        if (index >= 0 && index < arrsize) {
            data[index] = value; 
        } 
    }

    int length()
    {
        return static_cast<int>(data.size());
    }

    void clear(){
        data.clear();
        data.resize(arrsize, std::nullopt);
    }

    std::optional<double> get_value(int index) //const 
    {
        if (index >= 0 && index < static_cast<int>(data.size())) {
            return data[index]; // Return the value or "nothing"
        }
        else {return std::nullopt;} // Index out of bounds
    }

private:
    std::vector<std::optional<double>> data;
    int arrsize = 127;
};

// timer <> finished_note_deliverer { this, 
//         MIN_FUNCTION {

//             int target;
//             while(finished_notes_fifo.try_dequeue(target)){ 
                
//                 }
//             }
// 			return {};
// 		}
//     };

timer <> note_deliverer { this, 
        MIN_FUNCTION {

            WrappedNote note;
            while(notes_fifo.try_dequeue(note)){
                if(note.finished){
                    int target = note.note.target;
                    if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return n.target == target; })){
                        if(debug){cout << "Searching for Note To Remove from Vector"<< endl;}
                        inactive_voices.push(target);
                        size_t index = note - &active_voices[0];
                        active_voices.erase(active_voices.begin() + index);
                    }
                } else {
                    nonLockOutputFunction(note.note, note.note_on, note.steal, note.flags_only, note.glide_note);
                }
            }
			return {};
	    }
    };

std::vector<Note> active_voices;
std::queue<int> inactive_voices;
ScaleArray scale_array;

attribute<bool>                     on_attr{this, "on", true, description{"Activates Note-On Processing (default true)"}};
attribute<bool>                     debug{this, "debug", false, description{"Debug on / off"}};
attribute<bool>                     mono_steals_release_attr{this, "mono_steals_release", true, description{"If false, new monophony notes will ignore monophony notes that are in release and will generate new notes (default true)"}};
attribute<bool>                     hold_attr{this, "hold", false, description{"Hold on / off"}};
attribute<double>                   basefreq_attr{this, "basefreq", 440.0f, description{"Standard A, (default 440.0 hz) "}};
attribute<bool>                     steal_attr{this, "steal", true, description{"Steal on / off (default true)"}};

int steal_case = 1;  //set at different places in the code, used in a switch case in the findNoteToSteal function.
bool steal_was_set = false; //steal case is set in the constructor when the external loads
bool steal_hold_var = false;

attribute<bool>                     steal_hold_attr{this, "steal_hold", false, description{"Steal Hold Notes on / off"}, 
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
}
}; 

attribute<bool>                     scale_fill_attr{this, "scale_fill", true, description{"Fill notes that are non-defined in scale_def message with MTOF (default true)"}};

enum class mono_note_priority : int{
    LAST,
    LOW,
    HIGH,
    enum_count
};

enum_map mono_note_priority_range = {"Last Note Priority", "Low Note Priority", "High Note Priority"}; 

attribute<mono_note_priority> mono_note_priority_attr{this, "mono_note_priority", mono_note_priority::LAST, mono_note_priority_range,
                               description{"Choose Mono Mode: last note, low note, high note (default last note)"}};

enum class respect_channel_priorities : int{
    NO,
    YES,
    MAYBE,
    enum_count
};

enum_map respect_channel_priorities_range = {"Ignore Ch. Priorities", "Ch. can't steal lower Ch.", "Ch. can steal lower Ch."}; 

bool respect_channel_priorities_was_set = false;
int respect_channel_priorities_var = 1;

attribute<respect_channel_priorities> respect_channel_priorities_attr{this, "respect_channel_priorities", respect_channel_priorities::YES, respect_channel_priorities_range,
                                description{"0 Don't respect, 1 Respect, 2 Respect but steal (default 1)"}, 
                                setter{
                                    MIN_FUNCTION{
                                    int argvar = args[0];
                                    respect_channel_priorities_var = argvar;
                                        if (respect_channel_priorities_was_set){
                                            setStealcase();
                                        }
                                        else respect_channel_priorities_was_set = true;
                                    return{argvar};
                                    }
                                }
                               };

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

voice_alligator(const atoms& args = {}) {
            //constructor
            setStealcase();
            int voicenr = voices;
            if(args.size()) voicenr = args[0];
            if(voicenr > 1024){
                cerr << "maximum number of voices is 1024" << endl;    
                return;
            } 
            inactive_voices = {};
            active_voices.clear();
            for (int i = 1; i <= voicenr; ++i){
                inactive_voices.push(i);
            }
}

message<> voicesMessage{this, "voices", "set voices",
        MIN_FUNCTION{
            int voiceMessNr = voices;
            if(args.size()) voiceMessNr = args[0];
            if(voiceMessNr > 1024){
                cerr << "maximum number of voices is 1024" << endl;    
                return{};
            } 
            inactive_voices = {};
            active_voices.clear();
                for (int i = 1; i <= voiceMessNr; ++i){
                    inactive_voices.push(i);
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
                mono_attr_was_set_on_load = true;
                //When Monophony is being turned off we don't need multiple pitches in our Note objects, 
                //so we set the mpitch & freq lists to contain only the last element

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
            std::vector<Note*> notes_to_send; // Collect notes to process

            if (!sustain_off && sustain_attr_was_set_on_load){
                    for (auto &it_note : active_voices){
                        if (it_note.sustain_flag == 1 && !it_note.release_flag){
                            it_note.release_flag = true;
                            notes_to_send.push_back(&it_note); // Add note to the array
                        }
                    } 
            }       
            for (auto* note : notes_to_send){
                queueNote(*note, 0, 0, false);
            }

            sustain_attr_was_set_on_load = true;
            return {sustain_off};
        }
    }
};

attribute<int> scale_array_maxsize_attr{ 
//actually a vector but we called it scale array because max users know this term.
this, "scalearray_maxsize", 128,
description{"Set maximum number of entries in scale array (default 128)"},
    setter{
        MIN_FUNCTION{
            int maxsize = args[0];
            scale_array.setSize(maxsize);
            scale_array.fillContainer(maxsize);
            return {maxsize};
        }
    }
};

function mainInletFunction = MIN_FUNCTION{

    // lock lock { m_mutex };

    if (inlet == 0){ //notes: mpitch, vel, (channel), (mono flag), (real pitch)
        int mpitch = args[0]; //mpitch is used to match note on / offs, and in ouput_mode::mpitch will also be the realpitch (see further down)
        double vel = args[1];
        unsigned long argsize = args.size();

        if(debug&&argsize < 4){cout << "  Player Note to Inlet 1: " << mpitch << " " << vel << endl;}

        Note current_note = newNote(mpitch, vel);

        if(argsize >= 3){
            int channel = args[2];
            current_note.channel = channel;
        }

        if(argsize >= 4){
        /*                            
        Also having provided a mono-flag tells our system that the incoming note was a sequencer note, so it 
        mustn't go into hold / sustain and ignores the mono attribute.
        */
            int mono_flag = args[3];
            if(debug&&argsize == 4){cout << "  Sequencer Note to Inlet 1: " << mpitch << " " << vel<< " "  << args[2]<< " "  << mono_flag << endl;}
            current_note.mono_flag = mono_flag;
            current_note.sequencer_note_flag = true;
        }

        if(argsize >= 5){
        /*
        Pre-recorded Sequencer Note.
        arg 5: "real" pitch, meaning the pitch that was actually recorded by our sequencer. 
        Depending on output_mode it will either be a mpitch or a frequency.
        Note that this means that we can't record the output of [voice-alligator] with output_mode: freq and 
        send the recorded output to a [voice-alligator] with output_mode: mpitch and vice versa*/
            double realpitch = args[4];
            if(debug&&argsize == 5){cout << "  Pre-recorded Sequencer Note to Inlet 1: " << mpitch << " " << vel<< " "  << args[2]<< " "  << args[3]<< " " << args[4] << endl;}
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
            if(!on_attr) return{};
            if(output_mode_attr == output_mode::freq && argsize < 4 && !scale_array.get_value(mpitch)){
                if(debug){cout << "mpitch " << mpitch << " not defined in the scale_array" << endl;}
                return {};}
            handleNoteOn(current_note);
        }
        else{
            handleNoteOff(current_note);
        }
    }

    else{ //inlet 2, from thispoly~
        fromPoly(args[0], args[1]);
    }
    return {};
};

Note newNote(int mpitch, int vel){    
    Note new_note;
    new_note.mpitch.push_back(mpitch); //always add mpitch since we need it to match note on/offs


    if((output_mode_attr == output_mode::freq) && scale_array.get_value(mpitch)){
        auto value = scale_array.get_value(mpitch);
        new_note.freq.push_back(static_cast<double>(*value) * (basefreq_attr / 440));
    }

    else{
        new_note.freq.push_back(mpitch); //always add frequency so the vector contains something that can be printed, although this is not a frequency
    }
    new_note.vel = vel;
    return new_note;
}

void handleNoteOn(Note &note){
    if(note.sequencer_note_flag){
        if(note.mono_flag) 
        handleNoteOnMono(note);
        else handleNoteOnPoly(note );
    }
    else if (!mono_attr) // CASE: POLYPHONY
        handleNoteOnPoly(note);
    else // CASE: MONOPHONY
        handleNoteOnMono(note);
}

void handleNoteOnMono(Note &note ){
    int free_voice = 0;
    int incoming_note_channel = note.channel;

    // Case: We have a pressed monophony note of the same channel: generate note on to same target and push_back the new mpitch
    if(!note.sequencer_note_flag){
        if (auto *mono_target_note = findFirstNoteWithPredicate([=](const Note &n)
                                                        {return n.mono_flag == 1
                                                        && !n.hold_flag
                                                        && n.channel == incoming_note_channel
                                                        && !n.release_flag;})){
            if((mono_note_priority_attr == mono_note_priority::LOW) && mono_target_note->return_lowest_mpitch() < note.mpitch.back()){
                // we need a new NOTEON only if a lower note than our lowest note was pressed, this is not the case so we return
                return;
            }

            if((mono_note_priority_attr == mono_note_priority::HIGH) && mono_target_note->return_highest_mpitch() > note.mpitch.back()){
                // we need a new NOTEON only if a higher note than our lowest note was pressed, this is not the case so we return
                return;
            }

            if(debug){cout << "Mono key was pressed, Player mono voice of channel " << mono_target_note->channel<< " found with target " << mono_target_note->target << endl;}
            mono_target_note->mpitch.push_back(note.mpitch.back());
            mono_target_note->freq.push_back(note.freq.back());
            mono_target_note->vel = note.vel;
            queueNote(*mono_target_note, 1, 1, false, true); // -> spiele neue note mit diesem gefundenen target, mono flag 1 und steal 1
            return;
        }
    }
    else{
    //sequencer Notes only need one mpitch / freq
            if (auto *mono_target_note = findFirstNoteWithPredicate([=](const Note &n)
                                                        {return n.mono_flag == true
                                                        && n.channel == incoming_note_channel
                                                        && !n.release_flag
                                                        ;})){//&& n.mpitch.back() == note.mpitch.back()
                if(debug){cout << "Mono key was pressed, Sequencer mono voice of channel " << mono_target_note->channel<< " found with target " << mono_target_note->target << endl;}
                mono_target_note->vel = note.vel;
                mono_target_note->mpitch = note.mpitch;
                mono_target_note->freq = note.freq;
                queueNote(*mono_target_note, 1, 1, false, true); // -> spiele neue note mit diesem gefundenen target, mono flag 1 und steal 1
                return;
            }
    }

    // Case: We have a released monophony note of the same channel: 

    if(mono_steals_release_attr){   

        if (auto *mono_target_note = findFirstNoteWithPredicate([=](const Note &n)
                                            {return n.mono_flag == true
                                            && n.channel == incoming_note_channel
                                            // && !n.hold_flag //??
                                            && n.release_flag;})){
            if((mono_note_priority_attr == mono_note_priority::LOW && !note.sequencer_note_flag) && mono_target_note->return_lowest_mpitch() < note.mpitch.back()){// sequencer note doesn't care about mono_note_priority
                // we need a new NOTEON only if a lower note than our lowest note was pressed, this is not the case so we return
                return;
            }

            if((mono_note_priority_attr == mono_note_priority::HIGH) && !note.sequencer_note_flag && mono_target_note->return_highest_mpitch() > note.mpitch.back()){
                // we need a new NOTEON only if a higher note than our lowest note was pressed
                return;
            }

            
            //delete mpitch list, push_back new mpitch, generate note on on old target
            if(debug){cout << "Mono key was pressed, released mono voice of channel " << mono_target_note->channel<< " found with target " << mono_target_note->target << endl;}
            mono_target_note->release_flag = false;
            mono_target_note->mpitch.clear();
            mono_target_note->mpitch.push_back(note.mpitch.back());
            mono_target_note->freq.clear();
            mono_target_note->freq.push_back(note.freq.back());
            mono_target_note->vel = note.vel;
            queueNote(*mono_target_note, 1, 1, false, true); // -> spiele neue note mit diesem gefundenen target, mono flag 1 und steal 1
            return;
        }
    }
    

    // CASE: NO MONO VOICE PLAYING ON channel, FREE VOICE AVAILABLE
    if (!inactive_voices.empty()){
        free_voice = inactive_voices.front();
        inactive_voices.pop();
        note.target = free_voice;
        note.mono_flag = true;
        active_voices.push_back(note);
        if(debug){cout << "Found inactive voice with target " << free_voice << " and pushed new mono note to active_voices" << endl;}
        queueNote(note, 1, 0);
        return;
    }
    // CASE: NO FREE VOICE AVAILABLE, LOOK FOR STEALING CANDIDATES
    else{
        Note *noteToSteal = findNoteToSteal(note);
        if (noteToSteal){
            if(debug){cout << "** found note to steal **\n";}
            noteToSteal->mpitch = note.mpitch;
            noteToSteal->freq = note.freq;
            noteToSteal->vel = note.vel;
            noteToSteal->channel = note.channel;
            noteToSteal->release_flag = false;
            noteToSteal->hold_flag = false;
            noteToSteal->mono_flag = true;

            // Find the index of the element
            size_t index = noteToSteal - &active_voices[0]; // Pointer arithmetic

            // Move the element to the back of the vector
            rotate(active_voices.begin() + index, active_voices.begin() + index + 1, active_voices.end());

            if(debug){cout << "** changed stolen note content to new note content and moved it to back of active_voices **\n";}
            queueNote(active_voices.back(), 1, 1);
            // -> ...spiele neue note mit mono flag 1, diesem target und steal 1 macht das sinn?
        }
        else{ // nullpointer case
            if(debug){cout << "** did not find note to steal **"<<endl;}
        }
    }
}

void handleNoteOnPoly(Note &note){
    int free_voice = 0;

    // CASE: FREE VOICE AVAILABLE
    if (!inactive_voices.empty()){
        free_voice = inactive_voices.front();
        inactive_voices.pop();
        note.target = free_voice;
        note.mono_flag = false;
        active_voices.push_back(note);
        if(debug){cout << "Found inactive voice with target " << free_voice << " and pushed new note with mpitch " << note.mpitch.back() << " to active_voices" << endl;}
        queueNote(note, 1, 0); // -> spiele neue note mit freiem target, mono flag 0 und steal 0
    }
    // CASE: NO FREE VOICE AVAILABLE, LOOK FOR STEALING CANDIDATES
    else{
        Note* noteToSteal = findNoteToSteal(note);
        if (noteToSteal){
            if(debug){cout << "found note to steal on target " << noteToSteal->target << " and mpitch " << noteToSteal->mpitch.back() << endl;}
            noteToSteal->mpitch = note.mpitch;
            noteToSteal->freq = note.freq;
            noteToSteal->vel = note.vel;
            noteToSteal->channel = note.channel;
            noteToSteal->release_flag = false;
            noteToSteal->hold_flag = false;
            noteToSteal->mono_flag = false;

            // Find the index of the element
            size_t index = noteToSteal - &active_voices[0]; // Pointer arithmetic

            // Move the element to the back of the vector
            rotate(active_voices.begin() + index, active_voices.begin() + index + 1, active_voices.end());

            if(debug){cout << "** changed stolen note content to new note content and moved it to back of active_voices **" << endl;}
            queueNote(active_voices.back(), 1, 1);
            // -> spiele geklaute note mit geklautem target, mono flag 0 und steal 1
        }
        else{ // nullpointer case
            if(debug){cout << "** did not find note to steal **" << endl;}
        }
    }
}

void handleNoteOff(Note &incoming_note){
    if(debug) cout << "Called Handle Note Off" << endl;

    int incoming_note_channel = incoming_note.channel;
    int incoming_note_mpitch_back = incoming_note.mpitch.back();
    // Set hold / sustain case: On note off, set the the note to hold or sustain and return
    if(!incoming_note.sequencer_note_flag){ //but only if the note didn't come from a sequencer
        if (hold_attr && !sustain_attr){ //if hold is on and sustain is off: set the note to hold and return
            if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                {return n.mpitch.back() == incoming_note_mpitch_back 
                                                && !n.hold_flag //?
                                                && n.channel == incoming_note_channel;})){
                if(debug)cout<<"set note " << note->mpitch.back() << "at target " << note->target << " to hold" << endl;
                note->hold_flag = true;
                queueNote(*note, 0, 0, true); //send flags only = true
                return;
            }
        }
        else if (sustain_attr){
            //if sustain is on or both are on, prefer sustain over hold as it is less impactful: set to sustain and return
            if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                {return n.mpitch.back() == incoming_note_mpitch_back
                                                && !n.sustain_flag 
                                                && n.channel == incoming_note_channel;})){
                if(debug)cout<<"set note " << note->mpitch.back() << "at target " << note->target << " to sustain" << endl;
                note->sustain_flag = 1;
                // note->channel = 0;
                queueNote(*note, 0, 0, true); //send flags only = true
                return;
            }
        }
    }
    
    //From here on, sequencer notes are also processed
    //Normal note off case: we check that our note off doesn't belong to a legato note by checking the size of the vector of mpitches. 
    //if the note only has one mpitch, we release it and return.
    if (auto *note = findFirstNoteWithPredicate([=](const Note &n) 
                                        {return n.channel == incoming_note_channel 
                                        && n.mpitch.size() == 1 
                                        && n.mpitch.back() == incoming_note_mpitch_back
                                        && !n.hold_flag
                                        && !n.release_flag;})){
        if(debug)cout<<"released incoming note with mpitch " << incoming_note_mpitch_back << " matching it to note " << note->mpitch.back() << " at target " << note->target << endl;
        
        note->release_flag = true;
        queueNote(*note, 0, 0);
        return;
    }
    else{ // CASE: MONOPHONY
        // if there is a mono note in our vector, which has not been released and is not in hold
        if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                             { return n.channel == incoming_note_channel 
                                               && n.mono_flag 
                                               && !n.hold_flag 
                                               && !n.release_flag
                                               ;})){
        // check the mpitch of the incoming_note depending on different cases
            switch (mono_note_priority_attr) {
                case mono_note_priority::LAST:
                // we need a new NOTEON only if the last note was depressed 
                    if (note->mpitch.back() == incoming_note_mpitch_back){
                        if (note->mpitch.size() > 1) {
                            if (debug) {
                                cout << "monophony note off into note on case" << endl;
                            }
                            note->mpitch.pop_back();
                            note->freq.pop_back();
                            note->release_flag = 0;
                            queueNote(*note, 1, 1, false, true);
                            return;
                        } 
                    }
                    break;

                case mono_note_priority::HIGH:
                // we need a new NOTEON only if the highest mpitch was depressed
                    if (note->return_highest_mpitch() == incoming_note_mpitch_back) {
                        if (note->mpitch.size() > 1) {
                            note->remove_highest_mpitch_entry();
                            note->release_flag = 0;
                            queueNote(*note, 1, 1, false, true);
                            return;
                        } 
                    }
                    break;

                case mono_note_priority::LOW:
                // we need a new NOTEON only if the lowest mpitch was depressed
                    if (note->return_lowest_mpitch() == incoming_note_mpitch_back) {
                        if (note->mpitch.size() > 1) {
                            note->remove_lowest_mpitch_entry();
                            note->release_flag = 0;
                            queueNote(*note, 1, 1, false, true);
                            return;
                        } 
                    }
                    break;
            } 
        //if all of the above fails, we remove the mpitch of the incoming depress and don't send out anything
        note->remove_mpitch_entry(incoming_note_mpitch_back);
        }
    }
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
    // Reverse iterate through the container
    for (auto it = active_voices.rbegin(); it != active_voices.rend(); ++it){
        if (predicate(*it)){
            return &(*it);
        }
    }
    return nullptr;
}

void setStealcase(){
    if(     respect_channel_priorities_var   == 1  && !steal_hold_var)  steal_case = 1;  //hold notes are never stolen, channels are respected (means not allowed to steal from lower channels) (default)
    else if(respect_channel_priorities_var   == 0  && !steal_hold_var)  steal_case = 2;  //hold notes are never stolen, channels are ignored
    else if(respect_channel_priorities_var   == 2  && !steal_hold_var)  steal_case = 3;  //hold notes are never stolen, channels are allowed to steal, but will first try to steal of any higher channel
    else if(respect_channel_priorities_var   == 1  &&  steal_hold_var)  steal_case = 4;  //hold notes are stolen, channels are respected (means not allowed to steal from lower channels)
    else if(respect_channel_priorities_var   == 0  &&  steal_hold_var)  steal_case = 5;  //hold notes are stolen, channels are ignored
    else if(respect_channel_priorities_var   == 2  &&  steal_hold_var)  steal_case = 6;  //hold notes are stolen, channels are allowed to steal, but will first try to steal of any higher channel
}

Note* findNoteToSteal(const Note &incoming_note){
    if(debug){cout << "incoming note " << incoming_note.mpitch.back() << " asked for steal" << endl;} 

    if(!steal_attr) return nullptr;
    int channel = incoming_note.channel; //this got rid of a bug. Before, we captured incoming_note.channel by reference in the lambdas below, this lead to crashes

    switch (steal_case){
        case 1:  //hold notes are never stolen, channels are respected (means not allowed to steal from lower channels) (default)
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.hold_flag && n.release_flag && n.channel > channel; })) //note that this steals the oldest note of a higher channel / lower priority, not the note of the highest channel, which could also be a possibilty.
                    return note;
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.hold_flag && n.release_flag && n.channel == channel; }))
                    return note;
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.hold_flag && n.channel > channel; }))
                    return note;
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.hold_flag && n.channel == channel; }))
                    return note;
                break;

        case 2: //hold notes are never stolen, channels are ignored
                if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                    { return n.release_flag  && !n.hold_flag;}))
                    return note;
                if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                    { return !n.release_flag  && !n.hold_flag;}))
                    return note;
            break;

        case 3: //hold notes are never stolen, channels are allowed to steal
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.hold_flag && n.release_flag && n.channel > channel; }))
                    return note;
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.hold_flag && n.release_flag && n.channel == channel; }))
                    return note;
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.hold_flag && n.release_flag && n.channel < channel; }))
                    return note;

                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.hold_flag && !n.release_flag && n.channel > channel; }))
                    return note;
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.hold_flag && !n.release_flag && n.channel == channel; }))
                    return note;
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.hold_flag && !n.release_flag && n.channel < channel; }))
                    return note;
            break;

        case 4: //hold notes are stolen, channels are respected (means not allowed to steal from lower channels)
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return n.release_flag && n.channel > channel; }))
                    return note;
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return n.release_flag && n.channel == channel;}))
                    return note;
                    
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.release_flag && n.channel > channel; }))
                    return note;
                if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.release_flag && n.channel == channel; }))
                    return note;
            break;
        
        case 5: //hold notes are stolen, channels are ignored
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                    { return n.release_flag; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                    { return !n.release_flag;}))
                return note;
            break;

        case 6: //hold notes are stolen, channels are allowed to steal
            if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return n.release_flag && n.channel > channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return n.release_flag && n.channel == channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return n.release_flag && n.channel < channel; }))
                return note;

            if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.release_flag && n.channel > channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.release_flag && n.channel == channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                                    { return !n.release_flag && n.channel < channel; }))
                return note;     
            break;
        }
    return nullptr; // no suitable note was found
}

void nonLockOutputFunction(const Note &note, bool note_on, bool steal, bool flags_only = false, bool glide_note = false){
    // in this context "note on" means something different than in other contexts:
    // a note-off to [voice-alligator] will be a note-on if there is still a key on the same channel pressed in monophony.
    
    if (note_on){
        // glide, hold, sustain, sequencerNote, mono, steal, channel

        out1.send("target", note.target);
        out1.send("flags", glide_note, note.hold_flag, note.sustain_flag, note.sequencer_note_flag, note.mono_flag, steal, note.channel);
        if(!flags_only) {
            if(debug){cout << " Outlet 1: target " << note.target    << " " << note.mpitch.back()    << " " << note.freq.back()    << " " << note.vel    << " " << note.mono_flag    << " " << steal    << " " << note.hold_flag    << " " << note.sustain_flag    << endl;}        
            if(note.mono_flag && !glide_note){ // if it's a (mono note on) we go to the newest freq / mpitch, if it's a (mono note off) the mono_note_priority attribute decides what to do
                switch(mono_note_priority_attr){ //Last, Highest, Lowest

                    case mono_note_priority::LAST:
                        out1.send("notes", note.mpitch.back(), note.vel, note.freq.back());
                        break;

                    case mono_note_priority::HIGH:
                        out1.send("notes",  note.return_highest_mpitch(), note.vel, note.return_highest_freq());
                        break;

                    case mono_note_priority::LOW:
                        out1.send("notes", note.return_lowest_mpitch(), note.vel, note.return_lowest_freq());
                        break;
                }
            }
            else{
                out1.send("notes", note.mpitch.back(), note.vel, note.freq.back());
            }
        }
    }
    else{
        out1.send("target", note.target);
        out1.send("flags", glide_note, note.hold_flag, note.sustain_flag, note.sequencer_note_flag, note.mono_flag, steal, note.channel);
        if(!flags_only) out1.send("notes", note.mpitch.back(), 0, note.freq.back());
        if(debug){cout << " Outlet 1: target " << note.target<< " " << note.mpitch.back()<< " " << note.freq.back()<< " " << 0<< " " << note.mono_flag<< " " << steal<< " " << note.hold_flag<< " " << note.sustain_flag<< endl;}
    }
}

void queueNote(const Note &note, bool note_on, bool steal, bool flags_only = false, bool glide_note = false){
    //in this context "note on" means something different than in other functions:
    // a legato note-off to [voice-alligator] can be a note-on.

    WrappedNote wrapped_note;
    wrapped_note.note = note;
    wrapped_note.note_on = note_on;
    wrapped_note.steal = steal;
    wrapped_note.flags_only = flags_only;
    wrapped_note.glide_note = glide_note;
	if(!notes_fifo.try_enqueue(wrapped_note)){
        cout << "failed to queue note " << note.target << endl;
    };
    note_deliverer.delay(0.0);
    // note_deliverer.tick();
}

    // if (note_on){
    //     out1.send("target", note.target);
    //     out1.send("flags", note.mono_flag, steal, note.hold_flag, note.sustain_flag, note.sequencer_note_flag, note.channel);
    //     if(!flags_only) {
    //         if(debug){cout << " Outlet 1: target " << note.target    << " " << note.freq.back()    << " " << note.vel    << " " << note.mono_flag    << " " << steal    << " " << note.hold_flag    << " " << note.sustain_flag    << endl;}        
    //         if(note.mono_flag && !glide_note){ // if it's a (mono note on) we go to the newest freq / mpitch, if it's a (mono note off) the mono_note_priority attribute decides what to do
    //             switch(mono_note_priority_attr)
    //             { //Last, Highest, Lowest

    //             case mono_note_priority::LAST:
    //             out1.send("notes", note.mpitch.back(), note.vel, note.freq.back());
    //             break;

    //             case mono_note_priority::HIGH:
    //             out1.send("notes",  note.return_highest_mpitch(), note.vel, note.return_highest_freq());
    //             break;

    //             case mono_note_priority::LOW:
    //             out1.send("notes", note.return_lowest_mpitch(), note.vel, note.return_lowest_freq());
    //             break;

    //             default:
    //             break;
    //             }
    //             }
    //         else{
    //             out1.send("notes", note.mpitch.back(), note.vel, note.freq.back());
    //         }
    //     }
    // }
    // else{
    //     out1.send("target", note.target);
    //     out1.send("flags", note.mono_flag, steal, note.hold_flag, note.sustain_flag, note.sequencer_note_flag, note.channel);
    //     if(!flags_only) out1.send("notes", note.mpitch.back(), 0, note.freq.back());
    //     if(debug){cout << " Outlet 1: target " << note.target<< " " << note.freq.back()<< " " << 0<< " " << note.mono_flag<< " " << steal<< " " << note.hold_flag<< " " << note.sustain_flag<< endl;}
    // }
// }

void fromPoly(const int target, const int muteflag){
    if(debug){cout << "  Inlet 2 target: " << target << " muteflag: " << muteflag << endl;}
    if (!muteflag)return;
    WrappedNote wrappedNote;
    Note note;
    note.target = target;
    wrappedNote.note = note;
    wrappedNote.finished = true;
	if(!notes_fifo.try_enqueue(wrappedNote)){
        cout << "failed to end note " << note.target << endl;
    };
    note_deliverer.delay(0.0);
}

function endHold = MIN_FUNCTION{
    if (inlet == 0){
        atom end_argument = "all"; // Default to "all" if no argument was provided
        unsigned long size = args.size();
        if (size > 0) end_argument = args[0];
        if(debug){cout << " Endhold function called" << endl;}

        std::vector<Note*> notes_to_send; // Collect notes to process

        if (end_argument == "all"){
            for (auto &it_note : active_voices){
                if (it_note.hold_flag == 1 && !it_note.release_flag){
                    it_note.release_flag = true;
                    notes_to_send.push_back(&it_note); // Add note to the array
                }
            }
        }
        else if (end_argument == "first"){
            if (auto* note = findFirstNoteWithPredicate([](const Note& n) { return n.hold_flag == 1 && !n.release_flag; })){
                note->release_flag = true;
                notes_to_send.push_back(note); // Add the first note to the array
            }
        }
        else if (end_argument == "last"){
            if (auto* note = findLastNoteWithPredicate([](const Note& n) { return n.hold_flag == 1 && !n.release_flag; })){
                note->release_flag = true;
                notes_to_send.push_back(note); // Add the last note to the array
            }
        }

        for (auto* note : notes_to_send){
            queueNote(*note, 0, 0, false);
        }
    }
    return {};
};

function scaleDefineFunction = MIN_FUNCTION{
    if (inlet == 0){
        unsigned long size = args.size();
        if(scale_fill_attr || !size){ //if a scale_def message without args was send, we default to MTOF
            if(debug){cout << "filled the scale array" << endl;}
            scale_array.fillContainer(scale_array_maxsize_attr);
        }
        else{
            if(debug){cout << "cleared the scale array" << endl;}
            scale_array.clear();
        }

        if(debug){cout << "scaledef fun got called with args:" << endl;}

        for (int i = 0; i < size; i += 2) {
            // Check if we have at least two arguments left
            if (i + 1 < size) {
                // if(debug){cout << "Arg " << i << ": " << args[i] << ", Arg " << i + 1 << ": " << args[i + 1] << endl;}
                int index = args[i];
                double value = args[i+1];
                
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
            // Handle the case when there is only one argument left
            cwarn << "Tried to define note index " << args[i] << " without providing value" << endl;
            }
        }
    }
    return {};
};

function endFunction = MIN_FUNCTION{ //sends notes into release

    std::vector<Note> notes_to_send; // Array to collect notes to send

    {

        unsigned long size = args.size();
        if (size > 0) // If an argument was provided, end notes of channel according to argument
        {
            int channel = args[0];
            for (auto &it_note : active_voices)
            {
                if (it_note.channel == channel)
                {
                    // it_note.hold_flag = 0;
                    it_note.release_flag = 1;
                    notes_to_send.push_back(it_note); // Add the note to the array
                }
            }
        }
        else // Else end all notes
        {
            for (auto &it_note : active_voices)
            {
                // it_note.hold_flag = 0;
                it_note.release_flag = 1;
                notes_to_send.push_back(it_note); // Add the note to the array
            }
        }
    }

    // Send out all collected notes
    for (auto &note : notes_to_send)
    {
        queueNote(note, 0, 0, false);
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
            
            for (int j : i.mpitch)
            {
                cout << j << " ";
            }
            cout << "], vel " << i.vel
                    << ", channel " << i.channel
                    << ", target " << i.target
                    << ", freq [";
            
            for (double k : i.freq)
            {
                cout << k << " ";
            }
            cout << "], vel " << i.vel
                    << ", mono " << (i.mono_flag)
                    << ", hold " << (i.hold_flag)
                    << ", release " << (i.release_flag)
                    << ", sequencer_note: " << (i.sequencer_note_flag);
            cout << endl;
        }
        cout << "}" << endl; 
    }

        if (inactive_voices.empty())
        {
            cout << "There are no inactive voices available" << endl;
        }
        else if (inactive_voices.size() == 1)
        {
            cout << "There is " << inactive_voices.size() << " inactive voice available" << endl;
        }
        else
        {
            cout << "There are " << inactive_voices.size() << " inactive voices available" << endl;
        }
    return {};
    }
};

message<> printscale{this, "printscale", "Print scale_array to the max console",
        MIN_FUNCTION{
            int scale_arraylength = scale_array.length();
            cout << "scale array length: " << scale_arraylength << endl;
            for (int i = 0; i < scale_arraylength; ++i) {
                    if (scale_array.get_value(i)) {
                        cout << "Index " << i << ": " << *scale_array.get_value(i) << endl;
                    } 
                }

            return {};
        }
};

message<threadsafe::yes> list{this, "list", "Midipitch, Velocity, (channel), (mono_flag), (realpitch)", mainInletFunction};
message<threadsafe::yes> scale_def{this, "scale_def", "scale_def [index, value]", scaleDefineFunction};
message<threadsafe::yes> end_hold{this, "endhold", "End hold notes: all (default, can be ommitted), last, first", endHold};
message<threadsafe::yes> end{this, "end", "Sends Notes into release. If an argument was provided, send notes of channel (argument) into release, else send all notes into release.", endFunction};

private:
// mutex m_mutex;
};

MIN_EXTERNAL(voice_alligator);