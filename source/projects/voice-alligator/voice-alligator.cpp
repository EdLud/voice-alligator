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

inlet<> in1{this, "(list) midipitch, velocity, (channel), (monoflag), (realpitch)"};
inlet<> in2{this, "(list) voice number, muteflag"};
outlet<> out1{this, "messages to poly~ object"};

enum noteOnOff
{
    NOTEOFF,
    NOTEON
};

struct Note
{
public:
    std::vector<int> mpitch;
    double vel;
    std::vector<double> freq;
    int channel = 1; // hold notes = channel 0, player notes = channel 1, sequencer notes = channel 2
    int target;      // voice instance of poly~
    bool monoflag = false;
    bool sequencerNoteFlag = false; //if sequencer note: lock mono flag, don't set hold notes, don't be affected by sustain pedal
    bool sustainflag = false;
    bool holdflag = false;
    bool releaseflag = false; // is note in release phase?

    int return_lowest_mpitch() const {
        if (mpitch.empty()) {
            throw std::runtime_error("mpitch vector is empty");
        }
        return *std::min_element(mpitch.begin(), mpitch.end());
    }

    int return_highest_mpitch() const {
        if (mpitch.empty()) {
            throw std::runtime_error("mpitch vector is empty");
        }
        return *std::max_element(mpitch.begin(), mpitch.end());
    }

        int return_lowest_freq() const {
        if (freq.empty()) {
            throw std::runtime_error("freq vector is empty");
        }
        return *std::min_element(freq.begin(), freq.end());
    }

    int return_highest_freq() const {
        if (freq.empty()) {
            throw std::runtime_error("freq vector is empty");
        }
        return *std::max_element(freq.begin(), freq.end());
    }

    void remove_mpitch_entry(int mpitchToRemove) 
    {
    for (auto it = mpitch.begin(); it != mpitch.end(); ++it) {
        if (*it == mpitchToRemove) {
            size_t index = it - mpitch.begin(); // Pointer arithmetic to get the index
            mpitch.erase(mpitch.begin() + index);
            freq.erase(freq.begin() + index);
            break; // Exit the loop after removing the entry
            }
        }
    }

    void remove_highest_mpitch_entry() 
    {
        if (mpitch.empty()) {
            throw std::runtime_error("mpitch vector is empty");
        }

        // Find the iterator pointing to the highest mpitch
        auto it = std::max_element(mpitch.begin(), mpitch.end());
        size_t index = it - mpitch.begin(); // Calculate the index

        // Erase entries from both mpitch and freq
        mpitch.erase(mpitch.begin() + index);
        freq.erase(freq.begin() + index);

    }

    void remove_lowest_mpitch_entry() 
    {
        if (mpitch.empty()) {
            throw std::runtime_error("mpitch vector is empty");
        }

        // Find the iterator pointing to the lowest mpitch
        auto it = std::min_element(mpitch.begin(), mpitch.end());
        size_t index = it - mpitch.begin(); // Calculate the index

        // Erase entries from both mpitch and freq
        mpitch.erase(mpitch.begin() + index);
        freq.erase(freq.begin() + index);
    }
};

class ActiveVoices
{
    //not used, maybe use?
private:
    std::vector<Note> voices; // Encapsulated vector of Note objects

public:
    // Add a note to the vector
    void addNote(const Note& note)
    {
        voices.push_back(note);
    }

    // Access all notes (optional, if needed elsewhere)
    std::vector<Note>& getNotes()
    {
        return voices;
    }

    // Function to clear all entries except for the last one from "mpitch" in each Note
    void clearMpitchExceptLast()
    {
        for (auto& note : voices)
        {
            if (note.mpitch.size() > 1)
            {
                note.mpitch = { note.mpitch.back() };
            }
        }
    }

    // Function to clear all entries except for the last one from "freq" in each Note
    void clearFreqExceptLast()
    {
        for (auto& note : voices)
        {
            if (note.freq.size() > 1)
            {
                note.freq = { note.freq.back() };
            }
        }
    }

    // Optional: Clear all notes from the vector
    void clearAllNotes()
    {
        voices.clear();
    }

    // Function to replace and update a stolen note's data
    void replaceAndUpdateNote(Note* noteToSteal, const Note& newNote, bool debug = false)
    {
        if (noteToSteal)
        {
            if (debug) { std::cout << "** found note to steal **\n"; }

            // Update the stolen note's data
            noteToSteal->mpitch = newNote.mpitch;
            noteToSteal->freq = newNote.freq;
            noteToSteal->vel = newNote.vel;
            noteToSteal->channel = newNote.channel;
            noteToSteal->releaseflag = false;
            noteToSteal->holdflag = false;
            if (!newNote.sequencerNoteFlag) noteToSteal->monoflag = true;

            // Find the index of the stolen note
            size_t index = noteToSteal - &voices[0]; // Pointer arithmetic

            // Move the stolen note to the back of the vector
            std::rotate(voices.begin() + index, voices.begin() + index + 1, voices.end());

            if (debug) { std::cout << "** changed stolen note content to new note content and moved it to back of active_voices **\n"; }
        }
        else // Null pointer case
        {
            if (debug) { std::cout << "** did not find note to steal **" << std::endl; }
        }
    }
};

class Scalearray
{
public:

    void setMaxsize(int size) {
        maxsize = size;
    }

    void fillContainer(int size, double basefrequency) {
        data.resize(size); 
        for (int i = 0; i < size; ++i) {
            data[i] = static_cast<double>((basefrequency) * exp(0.057762265 * (i - 69))); // Fill with MTOF
        }
    }

    void set_value(int index, double value, double basefrequency) {
        if (index >= 0 && index < maxsize) {
            data[index] = value  * (440 / basefrequency); 
        } 
    }

    int length()
    {
        return static_cast<int>(data.size());
    }

    void clear(){
        data.clear();
        data.resize(maxsize, std::nullopt);
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
    int maxsize = 127;
};

std::vector<Note> active_voices;
std::queue<int> inactive_voices;
Scalearray scalearray;

attribute<bool>                     debug{this, "debug", false, description{"Debug on / off"}};
attribute<bool>                     mono_steals_release_attr{this, "mono_steals_release", true, description{"If false, new monophony notes will ignore monophony notes that are in release and will generate new notes (default true)"}};
attribute<bool>                     hold_attr{this, "hold", false, description{"Hold on / off"}};
attribute<double>                   basefreq{this, "basefreq", 440.0f, description{"Standard A, (default 440.0 hz) "}};
attribute<bool>                     steal{this, "steal", true, description{"Steal on / off (default true)"}};
attribute<bool>                     steal_hold{this, "steal_hold", false, description{"Steal Hold Notes on / off"}}; 
attribute<bool>                     scale_fill{this, "scale_fill", true, description{"Fill notes that are non-defined in scale_def message with MTOF (default true)"}};

enum class mono_note_priority : int
{
    LAST,
    LOW,
    HIGH,
    enum_count
};

enum_map mono_note_priority_range = {"Last Note Priority", "Low Note Priority", "High Note Priority"}; 

attribute<mono_note_priority> mono_note_priority_attr{this, "mono_note_priority", mono_note_priority::LAST, mono_note_priority_range,
                               description{"Choose Mono Mode: last note, low note, high note (default last note)"}};

enum class respect_channels : int
{
    NO,
    YES,
    MAYBE,
    enum_count
};

enum_map respect_channels_range = {"Ignore Ch. Priorities", "Ch. can't steal lower Ch.", "Ch. can steal lower Ch."}; 

attribute<respect_channels> respect_channels_attr{this, "respect_channels", respect_channels::YES, respect_channels_range,
                               description{"0 Don't respect, 1 Respect, 2 Respect but steal (default 1)"}};

enum class scale_def_mode : int
{
    mpitch,
    freq,
    enum_count
};

enum_map scale_def_mode_range = {"Midi Pitch", "Frequency"};

attribute<scale_def_mode> scale_def_mode{this, "scale_def_mode", scale_def_mode::freq, scale_def_mode_range,
                               description{"Define Scale by Midi Note or by Frequency (default frequency)"}};

enum class output_mode : int
{
    mpitch,
    freq,
    enum_count
};

enum_map output_mode_range = {"Midi Pitch", "Frequency"};

attribute<output_mode> output_mode{this, "output_mode", output_mode::freq, output_mode_range,
                               description{"Output Midi Notes or Frequencies (default frequency)"}};

// bool blockOutlet = false; 
/*^^safety variable. Blocks all output out of alligator. 
Set to true on voice change to avoid sending stuff to [poly~] while it is initializing voices to avoid a crash.
Set to false again by the muteflag of the voices of [poly~] itself after load.
*/

bool voices_attr_was_set_on_load = false;

int voices = 1; 

argument<int> voices_arg{
    this, "voices",
    description{"Number of voices, max: 1024"},
    {
        MIN_ARGUMENT_FUNCTION
        {
            voices = arg;
        }
    }
};

voice_alligator(const atoms& args = {}) { //Constructor sends out number of voices to poly~
            int voicenr = voices;
            if(args.size()) voicenr = args[0];
            if(voicenr > 1024){
            cerr << "maximum number of voices is 1024" << endl;    
                return;} 
                // if(!voices_attr_was_set_on_load) blockOutlet = true; 
                /*^this ensures we don't try to send messages to [poly~] while it is reloading voices and notes are playing.
                this caused some crashes earlier, but now the crashes are more rare. 
                the variable is set to false when the first instance of the newly reloaded
                [poly~] sends a mute 1 message see (mainInletFunction).
                */
                inactive_voices = {};
                active_voices.clear();
                for (int i = 1; i <= voicenr; ++i)
                {
                    inactive_voices.push(i);
                }
                out1.send("voices", voicenr);
                voices_attr_was_set_on_load = true;
            // cout << "post on load" << endl;
            // blockOutlet = false;
            // out1.send("voices", voices); 
}

bool mono_attr_was_set_on_load = false; //skip first mutex lock

attribute<bool, threadsafe::yes> mono_attr{
    this, "mono", false,
    description{"Monophony on / off"},
    setter
    {
        MIN_FUNCTION
        {
            bool monotrue = args[0];
            if (!monotrue)
            {
                if(mono_attr_was_set_on_load) lock lock{m_mutex};
                mono_attr_was_set_on_load = true;
                //When Monophony is being turned off we don't need multiple pitches in our Note objects, 
                //so we set the mpitch & freq lists to contain only the last element

                for (auto& note : active_voices)
                {
                    if (note.mpitch.size() > 1)
                    {
                        note.mpitch = { note.mpitch.back() };
                    }

                    if (note.freq.size() > 1)
                    {
                        note.freq = { note.freq.back() };
                    }
                }
            }
            return {monotrue};
        }
    }
};

bool sustain_attr_was_set_on_load = false; //skip first mutex lock

attribute<bool, threadsafe::yes> sustain_attr{this, "sustain", false, description{"Sustain on / off"},
    setter
    {
        MIN_FUNCTION
        {
            bool sustainoff = args[0];
            std::vector<Note*> notesToSend; // Collect notes to process

            if (!sustainoff && sustain_attr_was_set_on_load)
            {
                {
                    lock lock{m_mutex};
                    for (auto &itNote : active_voices)
                    {
                        if (itNote.sustainflag == 1 && !itNote.releaseflag)
                        {
                            itNote.releaseflag = true;
                            notesToSend.push_back(&itNote); // Add note to the array
                        }
                    }
                } // Unlock the mutex here
            }

            // Process the collected notes outside the locked section
            for (auto* note : notesToSend)
            {
                nonLockOutputFunction(*note, NOTEOFF, 0, false);
            }

            sustain_attr_was_set_on_load = true;
            return {sustainoff};
        }
    }
};

attribute<int> scalearray_maxsize{ 
//actually a vector but we called it scale array because max users know this term.
this, "scalearray_maxsize", 128,
description{"Set maximum number of entries in scale array (default 128)"},
setter
    {
        MIN_FUNCTION
        {
            int maxsize = args[0];
            scalearray.setMaxsize(maxsize);
            scalearray.fillContainer(maxsize, basefreq);
            return {maxsize};
        }
    }
};

Note* findFirstNoteWithPredicate(std::function<bool(const Note &)> predicate)
{
    for (auto &noteIt : active_voices)
    {
        if (predicate(noteIt))
        {
            return &noteIt;
        }
    }
    return nullptr;
}

Note* findLastNoteWithPredicate(std::function<bool(const Note&)> predicate)
{
    // Reverse iterate through the container
    for (auto it = active_voices.rbegin(); it != active_voices.rend(); ++it) {
        if (predicate(*it)) {
            return &(*it);
        }
    }
    return nullptr;
}

void nonLockOutputFunction(Note &note, bool noteon, bool steal, bool flagsonly = false, bool mononoteon = false)
{
    //in this context "note on" means something different than in other functions:
    // a mono note-off to [voice-alligator] can be a note-on.
    // if(blockOutlet){return;}
    if (noteon)
    {
        out1.send("target", note.target);
        out1.send("flags", note.monoflag, steal, note.holdflag, note.sustainflag, note.sequencerNoteFlag, note.channel);
        if(!flagsonly) 
        {
            if(debug)
            {
            cout << " Outlet 1: target " << note.target
                << " " << note.freq.back()
                << " " << note.vel
                << " " << note.monoflag
                << " " << steal
                << " " << note.holdflag
                << " " << note.sustainflag
                << endl;
            }        
            if(note.monoflag && !mononoteon) // if it's a (mono note on) we go to the newest freq / mpitch, if it's a (mono note off) the mono_note_priority attribute decides what to do
            {
                switch(mono_note_priority_attr)
                { //Last, Highest, Lowest

                case mono_note_priority::LAST:
                out1.send("notes", note.mpitch.back(), note.vel, note.freq.back());
                break;

                case mono_note_priority::HIGH:
                out1.send("notes",  note.return_highest_mpitch(), note.vel, note.return_highest_freq());
                break;

                case mono_note_priority::LOW:
                out1.send("notes", note.return_lowest_mpitch(), note.vel, note.return_lowest_freq());
                break;

                default:
                break;
                }
                }
            else
            {
                out1.send("notes", note.mpitch.back(), note.vel, note.freq.back());
            }
        }
    }
    else
    {
        out1.send("target", note.target);
        out1.send("flags", note.monoflag, steal, note.holdflag, note.sustainflag, note.sequencerNoteFlag, note.channel);
        if(!flagsonly) out1.send("notes", note.mpitch.back(), NOTEOFF, note.freq.back());
        if(debug)
            {
            cout << " Outlet 1: target " << note.target
                << " " << note.freq.back()
                << " " << NOTEOFF
                << " " << note.monoflag
                << " " << steal
                << " " << note.holdflag
                << " " << note.sustainflag
                << endl;
            }
    }
}

void outputFunction(Note &note, bool noteon, bool steal, lock &lock, bool flagsonly = false, bool mononoteon = false)
{
    //in this context "note on" means something different than in other functions:
    // a mono note-off to [voice-alligator] can be a note-on.
    // if(blockOutlet){return;}
    if (noteon)
    {
        lock.unlock();
        out1.send("target", note.target);
        out1.send("flags", note.monoflag, steal, note.holdflag, note.sustainflag, note.sequencerNoteFlag, note.channel);
        if(!flagsonly) 
        {
            if(debug)
            {
            cout << " Outlet 1: target " << note.target
                << " " << note.freq.back()
                << " " << note.vel
                << " " << note.monoflag
                << " " << steal
                << " " << note.holdflag
                << " " << note.sustainflag
                << endl;
            }        
            if(note.monoflag && !mononoteon) // if it's a (mono note on) we go to the newest freq / mpitch, if it's a (mono note off) the mono_note_priority attribute decides what to do
            {
                switch(mono_note_priority_attr)
                { //Last, Highest, Lowest

                case mono_note_priority::LAST:
                out1.send("notes", note.mpitch.back(), note.vel, note.freq.back());
                break;

                case mono_note_priority::HIGH:
                out1.send("notes",  note.return_highest_mpitch(), note.vel, note.return_highest_freq());
                break;

                case mono_note_priority::LOW:
                out1.send("notes", note.return_lowest_mpitch(), note.vel, note.return_lowest_freq());
                break;

                default:
                break;
                }
                }
            else
            {
                out1.send("notes", note.mpitch.back(), note.vel, note.freq.back());
            }
        }
    }
    else
    {
        lock.unlock();
        out1.send("target", note.target);
        out1.send("flags", note.monoflag, steal, note.holdflag, note.sustainflag, note.sequencerNoteFlag, note.channel);
        if(!flagsonly) out1.send("notes", note.mpitch.back(), NOTEOFF, note.freq.back());
        if(debug)
            {
            cout << " Outlet 1: target " << note.target
                << " " << note.freq.back()
                << " " << NOTEOFF
                << " " << note.monoflag
                << " " << steal
                << " " << note.holdflag
                << " " << note.sustainflag
                << endl;
            }
    }
}

Note* findNoteToSteal(Note &incomingNote)
{
    if(debug){cout << "incoming note " << incomingNote.mpitch.back() << " asked for steal" << endl;} 

    if(!steal) return nullptr;

    int stealCase = 1;  //hold notes are never stolen, channels are respected (means not allowed to steal from lower channels) (default)
    if(respect_channels_attr  == respect_channels::NO       && !steal_hold) stealCase = 2;  //hold notes are never stolen, channels are ignored
    if(respect_channels_attr  == respect_channels::MAYBE    && !steal_hold) stealCase = 3;  //hold notes are never stolen, channels are allowed to steal
    if(!(respect_channels_attr == respect_channels::YES)    && steal_hold)  stealCase = 4;  //hold notes are stolen, channels are respected (means not allowed to steal from lower channels)
    if(!(respect_channels_attr == respect_channels::NO)     && steal_hold)  stealCase = 5;  //hold notes are stolen, channels are ignored
    if(!(respect_channels_attr == respect_channels::MAYBE)  && steal_hold)  stealCase = 6;  //hold notes are stolen, channels are allowed to steal

    switch (stealCase)
    {
    case 1:  //hold notes are never stolen, channels are respected (means not allowed to steal from lower channels) (default)
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.holdflag && n.releaseflag && n.channel > incomingNote.channel; })) //note that this  !n.holdflag &&s the oldest note of a higher channel / lower priority, not the note of the highest channel, which would also be a possibilty.
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.holdflag && n.releaseflag && n.channel == incomingNote.channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.holdflag && n.channel > incomingNote.channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.holdflag && n.channel == incomingNote.channel; }))
                return note;
            break;

    case 2: //hold notes are never stolen, channels are ignored
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return n.releaseflag  && !n.holdflag;}))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return !n.releaseflag  && !n.holdflag;}))
                return note;
        break;

    case 3: //hold notes are never stolen, channels are allowed to steal
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.holdflag && n.releaseflag && n.channel > incomingNote.channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.holdflag && n.releaseflag && n.channel == incomingNote.channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.holdflag && n.releaseflag && n.channel < incomingNote.channel; }))
                return note;

            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.holdflag && !n.releaseflag && n.channel > incomingNote.channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.holdflag && !n.releaseflag && n.channel == incomingNote.channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.holdflag && !n.releaseflag && n.channel < incomingNote.channel; }))
                return note;
        break;

    case 4: //hold notes are stolen, channels are respected (means not allowed to steal from lower channels)
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return n.releaseflag && n.channel > incomingNote.channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return n.releaseflag && n.channel == incomingNote.channel;}))
                return note;
                
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.releaseflag && n.channel > incomingNote.channel; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.releaseflag && n.channel == incomingNote.channel; }))
                return note;
        break;
    
    case 5: //hold notes are stolen, channels are ignored
        if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                { return n.releaseflag; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                { return !n.releaseflag;}))
            return note;
        break;

    case 6: //hold notes are stolen, channels are allowed to steal
        if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                { return n.releaseflag && n.channel > incomingNote.channel; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                { return n.releaseflag && n.channel == incomingNote.channel; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                { return n.releaseflag && n.channel < incomingNote.channel; }))
            return note;

        if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                { return !n.releaseflag && n.channel > incomingNote.channel; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                { return !n.releaseflag && n.channel == incomingNote.channel; }))
            return note;
        if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                { return !n.releaseflag && n.channel < incomingNote.channel; }))
            return note;     
        break;
    }
    return nullptr; // no suitable note was found
}

void handleNoteOn(Note &note, lock &lock)
{
    if(note.sequencerNoteFlag) 
    // Note with locked mono flag, aka sequencer note. Not affected by mono attribute as sequencer notes remember their monoflags.
    {
        if(note.monoflag) 
        handleNoteOnMono(note, lock);
        else handleNoteOnPoly(note, lock);
    }
    
    else if (!mono_attr) // CASE: POLYPHONY
        handleNoteOnPoly(note, lock);
    else // CASE: MONOPHONY
        handleNoteOnMono(note, lock);
}

void handleNoteOnMono(Note &note, lock &lock)
{
    int freeVoice = 0;

    // Case: We have a pressed monophony note of the same channel: generate note on to same target and push_back the new mpitch
    if(!note.sequencerNoteFlag)
    {
        if (auto *monoTargetNote = findFirstNoteWithPredicate([&](const Note &n)
                                                        {return n.monoflag == 1
                                                        && n.channel == note.channel
                                                        && !n.releaseflag;}))
        {
            if((mono_note_priority_attr == mono_note_priority::LOW) && monoTargetNote->return_lowest_mpitch() < note.mpitch.back())
            {
                // we need a new NOTEON only if a lower note than our lowest note was pressed, this is not the case so we return
                return;
            }

            if((mono_note_priority_attr == mono_note_priority::HIGH) && monoTargetNote->return_highest_mpitch() > note.mpitch.back())
            {
                // we need a new NOTEON only if a higher note than our lowest note was pressed, this is not the case so we return
                return;
            }


            if(debug){cout << "Mono key was pressed, Player mono voice of channel " << monoTargetNote->channel<< " found with target " << monoTargetNote->target << endl;}
            monoTargetNote->mpitch.push_back(note.mpitch.back());
            monoTargetNote->freq.push_back(note.freq.back());
            monoTargetNote->vel = note.vel;
            outputFunction(*monoTargetNote, NOTEON, 1, lock, false, true); // -> spiele neue note mit diesem gefundenen target, mono flag 1 und steal 1
            return;
        }
    }
        else
        //sequencer Notes only need one mpitch / freq
        {
                if (auto *monoTargetNote = findFirstNoteWithPredicate([&](const Note &n)
                                                            {return n.monoflag == 1
                                                            && n.channel == note.channel
                                                            && !n.releaseflag
                                                            && n.mpitch.back() == note.mpitch.back();}))
                {
                    if(debug){cout << "Mono key was pressed, Sequencer mono voice of channel " << monoTargetNote->channel<< " found with target " << monoTargetNote->target << endl;}
                    monoTargetNote->vel = note.vel;
                    monoTargetNote->mpitch = note.mpitch;
                    monoTargetNote->freq = note.freq;
                    outputFunction(*monoTargetNote, NOTEON, 1, lock, false, true); // -> spiele neue note mit diesem gefundenen target, mono flag 1 und steal 1
                    return;
                }
        }

    // Case: We have a released monophony note of the same channel: 

    if(mono_steals_release_attr && !note.sequencerNoteFlag) // sequencer note doesn't care about mono_note_priority
        {   

        if (auto *monoTargetNote = findFirstNoteWithPredicate([&](const Note &n)
                                            {return n.monoflag == true
                                            && n.channel == note.channel
                                            && n.releaseflag;}))
        {
        if((mono_note_priority_attr == mono_note_priority::LOW) && monoTargetNote->return_lowest_mpitch() < note.mpitch.back())
        {
            // we need a new NOTEON only if a lower note than our lowest note was pressed, this is not the case so we return
            return;
        }

        if((mono_note_priority_attr == mono_note_priority::HIGH) && monoTargetNote->return_highest_mpitch() > note.mpitch.back())
        {
            // we need a new NOTEON only if a higher note than our lowest note was pressed
            return;
        }

        
            //delete mpitch list, push_back new mpitch, generate note on on old target
            if(debug){cout << "Mono key was pressed, released mono voice of channel " << monoTargetNote->channel<< " found with target " << monoTargetNote->target << endl;}
            monoTargetNote->releaseflag = 0;
            monoTargetNote->mpitch.clear();
            monoTargetNote->mpitch.push_back(note.mpitch.back());
            monoTargetNote->freq.clear();
            monoTargetNote->freq.push_back(note.freq.back());
            monoTargetNote->vel = note.vel;
            outputFunction(*monoTargetNote, NOTEON, 1, lock, false, true); // -> spiele neue note mit diesem gefundenen target, mono flag 1 und steal 1
            return;
            }
        }
    
    if(mono_steals_release_attr && note.sequencerNoteFlag)
    {
        if (auto *monoTargetNote = findFirstNoteWithPredicate([&](const Note &n)
                                            {return 
                                            n.monoflag
                                            && n.channel == note.channel;}))
            {
        
            //delete mpitch list, push_back new mpitch, generate note on on old target
            if(debug){cout << "Mono key was pressed, released mono voice of channel " << monoTargetNote->channel<< " found with target " << monoTargetNote->target << endl;}
            monoTargetNote->releaseflag = 0;
            monoTargetNote->freq = note.freq;
            monoTargetNote->mpitch = note.mpitch;
            monoTargetNote->vel = note.vel;
            outputFunction(*monoTargetNote, NOTEON, 1, lock, false, true); // -> spiele neue note mit diesem gefundenen target, mono flag 1 und steal 1
            return;
            }
    }

     if(!mono_steals_release_attr && note.sequencerNoteFlag)
    {
        if (auto *monoTargetNote = findFirstNoteWithPredicate([&](const Note &n)
                                            {return n.monoflag
                                            && n.channel == note.channel
                                            && n.releaseflag;}))
        {
            //delete mpitch list, push_back new mpitch, generate note on on old target
            if(debug){cout << "Mono key was pressed, released mono voice of channel " << monoTargetNote->channel<< " found with target " << monoTargetNote->target << endl;}
            monoTargetNote->releaseflag = 0;
            monoTargetNote->freq = note.freq;
            monoTargetNote->mpitch = note.mpitch;
            monoTargetNote->vel = note.vel;
            outputFunction(*monoTargetNote, NOTEON, 1, lock, false, true); // -> spiele neue note mit diesem gefundenen target, mono flag 1 und steal 1
            return;
            }
    }
    

    // CASE: NO MONO VOICE PLAYING ON channel, FREE VOICE AVAILABLE
    if (!inactive_voices.empty())
    {
        freeVoice = inactive_voices.front();
        inactive_voices.pop();
        note.target = freeVoice;
        if(!note.sequencerNoteFlag) note.monoflag = 1;
        active_voices.push_back(note);
        if(debug){cout << "Found inactive voice with target " << freeVoice << " and pushed new mono note to active_voices" << endl;}
        outputFunction(note, NOTEON, 0, lock); // -> spiele neue note mit mono flag 1, freiem target und steal 0
        return;
    }
    // CASE: NO FREE VOICE AVAILABLE, LOOK FOR STEALING CANDIDATES
    //       ...wenn kein freies target da ist schaue ob in activevoices eine stimme mit mono flag 0 spielt (müsste eigentlich), wenn ja:
    else
    {
        Note *noteToSteal = findNoteToSteal(note);
        if (noteToSteal)
        {
            if(debug){cout << "** found note to steal **\n";}
            noteToSteal->mpitch = note.mpitch;
            noteToSteal->freq = note.freq;
            noteToSteal->vel = note.vel;
            noteToSteal->channel = note.channel;
            noteToSteal->releaseflag = 0;
            noteToSteal->holdflag = 0;
            if(!note.sequencerNoteFlag)noteToSteal->monoflag = 1;

            // Find the index of the element
            size_t index = noteToSteal - &active_voices[0]; // Pointer arithmetic

            // Move the element to the back of the vector
            rotate(active_voices.begin() + index, active_voices.begin() + index + 1, active_voices.end());

            if(debug){cout << "** changed stolen note content to new note content and moved it to back of active_voices **\n";}
            outputFunction(active_voices.back(), NOTEON, 1, lock);
            // -> ...spiele neue note mit mono flag 1, diesem target und steal 1
        }
        else // nullpointer case
        {
            if(debug){cout << "** did not find note to steal **"<<endl;}
        }
    }
}

void handleNoteOnPoly(Note &note, lock &lock)
{
    int freeVoice = 0;

    // CASE: FREE VOICE AVAILABLE
    if (!inactive_voices.empty())
    {
        freeVoice = inactive_voices.front();
        inactive_voices.pop();
        note.target = freeVoice;
        if(!note.sequencerNoteFlag)note.monoflag = 0;
        active_voices.push_back(note);
        if(debug){cout << "Found inactive voice with target " << freeVoice << " and pushed new note with mpitch " << note.mpitch.back() << " to active_voices" << endl;}
        outputFunction(note, NOTEON, 0, lock); // -> spiele neue note mit freiem target, mono flag 0 und steal 0
    }
    // CASE: NO FREE VOICE AVAILABLE, LOOK FOR STEALING CANDIDATES
    else
    {
        Note* noteToSteal = findNoteToSteal(note);
        if (noteToSteal)
        {
            if(debug){cout << "found note to steal on target " << noteToSteal->target << " and mpitch " << noteToSteal->mpitch.back() << endl;}
            noteToSteal->mpitch = note.mpitch;
            noteToSteal->freq = note.freq;
            noteToSteal->vel = note.vel;
            noteToSteal->channel = note.channel;
            noteToSteal->releaseflag = false;
            noteToSteal->holdflag = false;
            if(!note.sequencerNoteFlag)noteToSteal->monoflag = false;

            // Find the index of the element
            size_t index = noteToSteal - &active_voices[0]; // Pointer arithmetic

            // Move the element to the back of the vector
            rotate(active_voices.begin() + index, active_voices.begin() + index + 1, active_voices.end());

            if(debug){cout << "** changed stolen note content to new note content and moved it to back of active_voices **" << endl;}
            outputFunction(active_voices.back(), NOTEON, 1, lock);
            // -> spiele geklaute note mit geklautem target, mono flag 0 und steal 1
        }
        else // nullpointer case
        {
            if(debug){cout << "** did not find note to steal **" << endl;}
        }
    }
}

void handleNoteOff(Note &incomingNote, lock &lock)
{
    if(debug) cout << "Called Handle Note Off" << endl;
    // Set hold / sustain case: On note off, set the the note to hold or sustain and return
    if(!incomingNote.sequencerNoteFlag) //but only if the note didn't come from a sequencer
    {
        if (hold_attr && !sustain_attr) //if hold is on and sustain is off: set the note to hold and return
        {
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                {return n.mpitch.back() == incomingNote.mpitch.back() 
                                                && !n.holdflag 
                                                && n.channel == incomingNote.channel;}))
            {
                if(debug)cout<<"set note " << note->mpitch.back() << "at target " << note->target << " to hold" << endl;
                note->holdflag = 1;
                note->channel = 0;
                outputFunction(*note, NOTEOFF, 0, lock, true); //send flags only = true
                return;
            }
        }
        else if (sustain_attr) 
        //if sustain is on or both are on, prefer sustain over hold as it is less impactful: set to sustain and return
        {
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                {return n.mpitch.back() == incomingNote.mpitch.back() 
                                                && !n.sustainflag 
                                                && n.channel == incomingNote.channel;}))
            {
                if(debug)cout<<"set note " << note->mpitch.back() << "at target " << note->target << " to sustain" << endl;
                note->sustainflag = 1;
                // note->channel = 0;
                outputFunction(*note, NOTEOFF, 0, lock, true); //send flags only = true
                return;
            }
        }

    }
    
    //Normal note off case: we check that our note off doesn't belong to a legato note by checking the size of the vector of mpitches. 
    //if the note only has one mpitch, we release it and return.
    if (auto *note = findFirstNoteWithPredicate([&](const Note &n) 
                                        {return n.channel == incomingNote.channel 
                                        && n.mpitch.size() == 1 
                                        && n.mpitch.back() == incomingNote.mpitch.back() 
                                        && !n.holdflag
                                        && !n.releaseflag;}))
    {
        if(debug)cout<<"released incoming note with mpitch " << incomingNote.mpitch.back() << " matching it to note " << note->mpitch.back() << " at target " << note->target << endl;
        
        note->releaseflag = 1;
        outputFunction(*note, NOTEOFF, 0, lock);
        return;
    }
    else // CASE: MONOPHONY

    {
        // if there is a mono note in our vector, which has not been released and is not in hold
        if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                             { return n.channel == incomingNote.channel 
                                               && n.monoflag 
                                               && !n.holdflag 
                                               && !n.releaseflag
                                               ;}))
        {
        // check the mpitch of the incomingNote depending on different cases
        switch (mono_note_priority_attr) {
            case mono_note_priority::LAST:
            // we need a new NOTEON only if the last note was depressed 
                if (note->mpitch.back() == incomingNote.mpitch.back()) {
                    if (note->mpitch.size() > 1) {
                        if (debug) {
                            cout << "monophony note off into note on case" << endl;
                        }
                        note->mpitch.pop_back();
                        note->freq.pop_back();
                        note->releaseflag = 0;
                        outputFunction(*note, NOTEON, 1, lock);
                        return;
                    } 
                }
                break;

            case mono_note_priority::HIGH:
            // we need a new NOTEON only if the highest mpitch was depressed
                if (note->return_highest_mpitch() == incomingNote.mpitch.back()) {
                    if (note->mpitch.size() > 1) {
                        note->remove_highest_mpitch_entry();
                        note->releaseflag = 0;
                        outputFunction(*note, NOTEON, 1, lock, false, true);
                        return;
                    } 
                }
                break;

            case mono_note_priority::LOW:
            // we need a new NOTEON only if the lowest mpitch was depressed
                if (note->return_lowest_mpitch() == incomingNote.mpitch.back()) {
                    if (note->mpitch.size() > 1) {
                        note->remove_lowest_mpitch_entry();
                        note->releaseflag = 0;
                        outputFunction(*note, NOTEON, 1, lock, false, true);
                        return;
                    } 
                }
                break;

            default:
                // Handle any unexpected values of mono_note_priority_attr
                cerr << "Invalid mono_note_priority_attr value." << endl;
                break;
        } 
        //if all of the above fails, we remove the mpitch of the incoming depress and don't send out anything
        note->remove_mpitch_entry(incomingNote.mpitch.back());
        }
    }
}

Note newNote(int mpitch, int vel)
{    
    Note newnote;
    newnote.mpitch.push_back(mpitch); //always add mpitch since we need it to match note on/offs


    if((output_mode == output_mode::freq) && scalearray.get_value(mpitch))
    {
        auto value = scalearray.get_value(mpitch);
        newnote.freq.push_back(static_cast<double>(*value));
    }

    else
    {
        newnote.freq.push_back(mpitch); //always add frequency so the vector contains something that can be printed, although this is not a frequency
    }
    newnote.vel = vel;
    return newnote;
}

void fromPoly(int target, int muteflag)
{
    if(debug){cout << "  Inlet 2: " << target << " " << muteflag << endl;}
    // if (muteflag && blockOutlet)
    // {
        // blockOutlet = false;
        // return;
    // }

        if (!muteflag)
    {
        return;
    }

    if (auto *note = findFirstNoteWithPredicate([=](const Note &n)
                                         { return n.target == target; }))
    {
        inactive_voices.push(target);
        // Find the index of the element
        size_t index = note - &active_voices[0]; // Pointer arithmetic
        // Move the element to the back of the vector
        // rotate(active_voices.begin() + index, active_voices.begin() + index + 1, active_voices.end());
        // active_voices.pop_back();
        active_voices.erase(active_voices.begin() + index);
    }
}

function mainInletFunction = MIN_FUNCTION{
    if (inlet == 0) // notes: mpitch, vel, (channel), (monoflag), (realpitch)
    {
        lock lock{m_mutex};
        int mpitch = args[0]; //mpitch is used to match note on / offs and in ouput_mode::mpitch will also be the realpitch
        double vel = args[1];
        unsigned long argsize = args.size();

        if(debug&&argsize < 4){cout << "  Player Note to Inlet 1: " << mpitch << " " << vel << endl;}

        Note currentNote = newNote(mpitch, vel);


            if(argsize >= 3)
            {
                int channel = args[2];
                currentNote.channel = channel;
            }

            if(argsize >= 4)
            /*                            
            Also having defined a mono-flag tells our system that the incoming note was a sequencer note, so it 
            mustn't go into hold / sustain and ignores the mono attribute.
            */
            { 
                int monoflag = args[3];
                currentNote.monoflag = monoflag;
                if(debug&&argsize == 4){cout << endl << "  Sequencer Note to Inlet 1: " << mpitch << " " << vel<< " "  << args[2]<< " "  << args[3]<< " " << endl;}
                currentNote.sequencerNoteFlag = true;
            }

            if(argsize >= 5)
            {
            /*
            arg 5: "real" pitch, meaning the pitch that was actually recorded by our sequencer. 
            Depending on output_mode it will either be a mpitch or a frequency.
            Note that this means that we can't record the output of [voice-alligator] with output_mode: freq and 
            send the recorded output to a [voice-alligator] with output_mode: mpitch and vice versa*/
                double realpitch = args[4];
                if(debug&&argsize == 5){cout << endl << "  Pre recorded Sequencer Note to Inlet 1: " << mpitch << " " << vel<< " "  << args[2]<< " "  << args[3]<< " " << args[4] << endl;}
                if(output_mode == output_mode::freq)
                {
                if(!currentNote.freq.empty())currentNote.freq.pop_back();                                    
                currentNote.freq.push_back(realpitch);
                } 
                else
                {
                currentNote.mpitch.pop_back();
                currentNote.mpitch.push_back(static_cast<int>(realpitch));
                }
            }                                                           
            

        if (vel != 0)
        {
            if(output_mode == output_mode::freq && !scalearray.get_value(mpitch) && argsize < 4){
            if(debug){cout << "mpitch " << mpitch << " not defined in the scalearray" << endl;}
            return {};}
            handleNoteOn(currentNote, lock);
        }
        else
        {
            handleNoteOff(currentNote, lock);
        }
    }
    else //from thispoly~
    {
        lock lock{m_mutex};
        fromPoly(args[0], args[1]);
    }
    return {};
};

function endHold = MIN_FUNCTION{
    if (inlet == 0)
    {
        atom endargument = "all"; // Default to "all" if no argument is supplied
        unsigned long size = args.size();
        if (size > 0) endargument = args[0];

        std::vector<Note*> notesToSend; // Collect notes to process

        if (endargument == "all") // Equivalent to case 0
        {
            lock lock{m_mutex};
            for (auto &itNote : active_voices)
            {
                if (itNote.holdflag == 1 && !itNote.releaseflag)
                {
                    itNote.releaseflag = true;
                    notesToSend.push_back(&itNote); // Add note to the array
                }
            }
        }
        else if (endargument == "first") // Equivalent to case 1
        {
            lock lock{m_mutex};
            if (auto* note = findFirstNoteWithPredicate([](const Note& n) { return n.holdflag == 1 && !n.releaseflag; }))
            {
                note->releaseflag = true;
                notesToSend.push_back(note); // Add the first note to the array
            }
        }
        else if (endargument == "last") // Equivalent to case 2
        {
            lock lock{m_mutex};
            if (auto* note = findLastNoteWithPredicate([](const Note& n) { return n.holdflag == 1 && !n.releaseflag; }))
            {
                note->releaseflag = true;
                notesToSend.push_back(note); // Add the last note to the array
            }
        }
        else
        {
            // Handle invalid arguments (optional)
            // e.g., log a warning or return an error
        }

        // Process the collected notes outside the locked section
        for (auto* note : notesToSend)
        {
            nonLockOutputFunction(*note, NOTEOFF, 0, false);
        }
    }
    return {};
};

function scaleDefineFunction = MIN_FUNCTION{
    if (inlet == 0)
    {
        lock lock{m_mutex};
        unsigned long size = args.size();
        if(scale_fill || !size) //if a scale_def message without args was send, we default to MTOF
        {
            if(debug){cout << "filled the scale array" << endl;}
            scalearray.fillContainer(scalearray_maxsize, basefreq);
        }
        else
        {
            if(debug){cout << "cleared the scale array" << endl;}
            scalearray.clear();
        }

        if(debug){cout << "scaledef fun got called with args:" << endl;}

        for (int i = 0; i < size; i += 2) {
            // Check if we have at least two arguments left
            if (i + 1 < size) {
                // if(debug){cout << "Arg " << i << ": " << args[i] << ", Arg " << i + 1 << ": " << args[i + 1] << endl;}
                int index = args[i];
                double value = args[i+1];
                
                if(scale_def_mode == scale_def_mode::mpitch)
                {
                    scalearray.set_value(index, (440 * exp(0.057762265 * (value - 69))), basefreq);
                }
                else if(scale_def_mode == scale_def_mode::freq)
                {
                    scalearray.set_value(index, value, basefreq);
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

function endFunction = MIN_FUNCTION{ //pseudo panic function, sends all notes into release

    std::vector<Note> notesToSend; // Array to collect notes to send

    {
        // Lock the mutex to safely access and modify active_voices
        lock lock{m_mutex};

        unsigned long size = args.size();
        if (size > 0) // If an argument was provided, end notes of channel according to argument
        {
            int channel = args[0];
            for (auto &itNote : active_voices)
            {
                if (itNote.channel == channel)
                {
                    itNote.holdflag = 0;
                    itNote.releaseflag = 1;
                    notesToSend.push_back(itNote); // Add the note to the array
                }
            }
        }
        else // Else end all notes
        {
            for (auto &itNote : active_voices)
            {
                itNote.holdflag = 0;
                itNote.releaseflag = 1;
                notesToSend.push_back(itNote); // Add the note to the array
            }
        }
    } // Unlock the mutex here

    // Send out all collected notes
    for (auto &note : notesToSend)
    {
        nonLockOutputFunction(note, NOTEOFF, 0, false);
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
                    << ", mono " << (i.monoflag)
                    << ", hold " << (i.holdflag)
                    << ", release " << (i.releaseflag)
                    << ", sequencer_note: " << (i.sequencerNoteFlag);
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

message<> printscale{this, "printscale", "Print scalearray to the max console",
        MIN_FUNCTION
        {
        int scalearraylength = scalearray.length();
        cout << "scale array length: " << scalearraylength << endl;

        for (int i = 0; i < scalearraylength; ++i) {
                if (scalearray.get_value(i)) 
                {
                    cout << "Index " << i << ": " << *scalearray.get_value(i) << endl;
                } 
            }

            return {};
        }
};

message<threadsafe::yes> list{this, "list", "Midipitch, Velocity, (channel), (monoflag), (realpitch)",
mainInletFunction};
message<threadsafe::yes> scale_def{this, "scale_def", "scale_def [index, value]", scaleDefineFunction};
message<threadsafe::yes> endhold{this, "endhold", "End hold notes: all (default, can be ommitted), last, first", endHold};
message<threadsafe::yes> end{this, "end", "Sends Notes into release. If an argument was provided, send notes of channel (argument) into release, else send all notes into release.", endFunction};

private:
mutex m_mutex;
};

MIN_EXTERNAL(voice_alligator);