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

class voice_allocator : public object<voice_allocator>
{
public:
MIN_DESCRIPTION{"voice allocator for poly~ object"};
MIN_TAGS{"velocities, pitches, etc."};
MIN_AUTHOR{"Jan Godde, Edis Ludwig"};
MIN_RELATED{"poly~"};

inlet<> in1{this, "(list) midipitch, velocity, (channel)"};
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
    int vel;
    std::vector<double> freq;
    int type = 1; // hold notes = type 0, player notes = type 1, sequencer notes = type 2
    int target;      // voice instanz von poly~
    bool monoflag = false;
    bool sustainflag = false;
    bool holdflag = false;
    bool releaseflag = false; // ist note in release phase?

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

};

class Scalearray 
{
public:

    void setMaxsize(int size) {
        maxsize = size;
    }

    void fillContainer(int size) {
        data.resize(size); 
        for (int i = 0; i < size; ++i) {
            data[i] = static_cast<double>(440 * exp(0.057762265 * (i - 69))); // Fill with MTOF
        }
    }

    void set_value(int index, double value) {
        if (index >= 0 && index < maxsize) {
            data[index] = value; 
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

Scalearray scalearray;
std::vector<Note> active_voices;
std::queue<int> inactive_voices;

attribute<bool>                     debug{this, "debug", false, description{"Debug on / off"}};

attribute<bool>                     mono_steals_release_attr{this, "mono_steals_release", true, 
description{"If false, new monophony notes will ignore monophony notes that are in release and will generate new notes"}};
attribute<bool>                     hold_attr{this, "hold", false, description{"Hold on / off"}};
attribute<bool>                     sustain_attr{this, "sustain", false, description{"Sustain on / off"}};
attribute<double>                   basefreq{this, "basefreq", 440.000, description{"Standard A, Default: 440 hz "}};
attribute<bool>                     steal{this, "steal", true, description{"Steal on / off"}};
attribute<bool>                     steal_hold{this, "steal_hold", false, description{"Steal Hold Notes on / off"}}; 
attribute<bool>                     sequencer_steals{this, "sequencer_steals", false, description{"Sequencer steals on / off"}}; 
attribute<bool>                     scale_fill{this, "scale_fill", true, description{"Fill notes that are non-defined in scale_def message with MTOF"}};

enum class mono_mode : int
{
    last_note,
    low_note,
    high_note,
    enum_count
};

enum_map mono_mode_range = {"Last Note Priority", "Low Note Priority", "High Note Priority"}; //not implemented 

attribute<mono_mode> mono_mode{this, "mono_mode", mono_mode::last_note, mono_mode_range,
                               description{"Choose Mono Mode: Last Note, Low Note, High Note"}};

enum class scale_def_mode : int
{
    mpitch,
    freq,
    enum_count
};

enum_map scale_def_mode_range = {"Midi Pitch", "Frequency"};

attribute<scale_def_mode> scale_def_mode{this, "scale_def_mode", scale_def_mode::freq, scale_def_mode_range,
                               description{"Define Scale by Midi Note or by Frequency"}};

enum class output_mode : int
{
    mpitch,
    freq,
    enum_count
};

enum_map output_mode_range = {"Midi Pitch", "Frequency"};

attribute<output_mode> output_mode{this, "output_mode", output_mode::freq, output_mode_range,
                               description{"Output Midi Notes or Frequencies"}};
// attribute<int, threadsafe::yes>     legato_mode{this, "legato_mode", false, description{"retrigger / don't retrigger / ??"}};
/*
legato_mode -> für noten, die noch gespielt werden, also nicht released sind!
                wenn release, dann neue note/voice bzw. note/voice steal
                d.h. alles folgende gilt für attack decay sustain phase
        legato_mode = legato -> adsr wird bei mono noten nicht geretriggert, adsr der ersten note läuft über alle noten
        legato_mode = retrigger -> adsr wird bei mono noten geretriggert, aber nicht von 0, sondern von letztem wert aus (zb sustain)
                                    im fall note in sustain auf 0.5 -> neue adsr geht von 0.5 in attack auf 1 etc.
                                    im fall note in sustain auf 0.0 -> wie komplettes neu triggern
       
        NEU:
        legato_mode = glide -> adsr wird bei mono noten nicht geretriggert, pitch UND velocity fahren in glidezeit auf neuen wert
*/    

int blockOutlet = false; 
/*^^safety variable. Blocks all output out of alligator. 
Set to true on voice change to avoid sending stuff to [poly~] while it is initializing voices to avoid a crash.
Set to false again by the muteflag of the voices of [poly~] itself after load.
*/

// argument<int> voices { this, "voices", "Number of voices, default: 4",
    // MIN_ARGUMENT_FUNCTION {
        // int voicenr = arg;
        // inactive_voices = {};
        // active_voices.clear();
        // for (int i = 1; i <= voicenr; ++i)
        // {
            // inactive_voices.push(i);
        // }
        // out1.send("voices", voicenr);
    // }
// }; 

attribute<int> voices
{
    this, "voices", 4,
    description{"Number of voices, default: 4, max: 1024"}, range{1, 1024},
    setter
    {
        MIN_FUNCTION
        {
            int voicenr = (int)args[0];
            if(voicenr > 1024){return {voicenr};} 
            /*range doesn't block for some reason, so we need to make sure, that we 
            don't have more inactive_voices in alligator max voices of [poly~]*/
                blockOutlet = true; 
                /*^this tries to ensure we don't try to send messages to [poly~] while it is reloading voices and notes are playing.
                this caused some crashes earlier, but now the crashes are more rare. 
                the variable is set to false when the first instance of the newly reloaded
                [poly~] sends a mute 1 message. we should make this clear to the user.
                */
                inactive_voices = {};
                active_voices.clear();
                for (int i = 1; i <= voicenr; ++i)
                {
                    inactive_voices.push(i);
                }
                out1.send("voices", voicenr);
            return {voicenr};
        }
    }
};


bool mono_attr_was_set_on_load = false;

attribute<bool, threadsafe::yes> mono_attr
{
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
                if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                     { return n.type == 1 && n.mpitch.size() > 1; }))
                {
                    int tempMpitch = note->mpitch.back();
                    double tempFreq = note->freq.back();
                    note->mpitch.clear();
                    note->mpitch.push_back(tempMpitch);
                    note->freq.clear();
                    note->freq.push_back(tempFreq);
                }
            }
            return {monotrue};
        }
    }
};

attribute<int> scalearray_maxsize
{ //actually a vector but we called it scale array because max users know this term.
this, "scalearray_maxsize", 128,
description{"Set maximum number of entries in scale array (default 128)"},
setter
    {
        MIN_FUNCTION
        {
            int maxsize = args[0];
            scalearray.setMaxsize(maxsize);
            scalearray.fillContainer(maxsize);
            return {maxsize};
        }
    }
};


void printScalearray()
{
    int scalearraylength = scalearray.length();
    cout << "scale array length: " << scalearraylength << endl;

    for (int i = 0; i < scalearraylength; ++i) {
            if (scalearray.get_value(i)) 
            {
                cout << "Index " << i << ": " << *scalearray.get_value(i) << endl;
            } 
        }
}

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

void outputFunction(Note note, bool noteon, bool steal, lock &lock, bool flagsonly = false)
{
    if(blockOutlet){return;}
    if (noteon)
    {
        lock.unlock();
        if(output_mode == output_mode::freq)
        {
            out1.send("target", note.target);
            out1.send("flags", note.monoflag, steal, note.holdflag, note.sustainflag);
            if(!flagsonly) out1.send("notes", note.freq.back() * (440 / basefreq), note.vel);
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
        }
        else
        {
            out1.send("target", note.target);
            out1.send("flags", note.monoflag, steal, note.holdflag, note.sustainflag);
            if(!flagsonly) out1.send("notes", note.mpitch.back() * (440 / basefreq), note.vel);
            
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
        }
    }
    else
    //note off
    {
        lock.unlock();
        if(output_mode == output_mode::freq)
        {
            out1.send("target", note.target);
            out1.send("flags", note.monoflag, steal, note.holdflag, note.sustainflag);
            if(!flagsonly) out1.send("notes", note.freq.back() * (440 / basefreq), NOTEOFF);
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
        else
        {
            out1.send("target", note.target);
            out1.send("flags", note.monoflag, steal, note.holdflag, note.sustainflag);
            if(!flagsonly) out1.send("notes", note.mpitch.back() * (440 / basefreq), NOTEOFF);
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
}

Note *findNoteToSteal(Note &incomingNote)
{
    if(debug){cout << "incoming note " << incomingNote.mpitch.back() << " asked for steal" << endl;} 

    if(!steal) return nullptr;

    int stealCase = 1;                                  //sequencer never steals non-sequencer notes, hold notes are never stolen
    if(sequencer_steals && !steal_hold) stealCase = 2;  //sequencer can steal non-sequencer notes, hold notes are never stolen
    if(sequencer_steals && steal_hold)  stealCase = 3;  //sequencer can steal non-sequencer notes, hold notes are stolen
    if(!sequencer_steals && steal_hold) stealCase = 4;  //sequencer never steals non-sequencer notes, hold notes are stolen


    switch (stealCase)
    {
    case 1: //sequencer never steals non-sequencer notes, hold notes are never stolen
        if (incomingNote.type == 1)
        { // PLAYER NOTE
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return n.releaseflag && n.type > 1; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return n.releaseflag && n.type == 1; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return !n.releaseflag && n.type > 1; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return !n.releaseflag && n.type == 1; }))
                return note;
        }
        else if (incomingNote.type > 1)
        { // SEQUENCER NOTE
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return n.releaseflag && n.type > 1; }))
                return note;

            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                { return !n.releaseflag && n.type > 1; }))
                return note;

            // if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                //  { return n.releaseflag && n.type > 0; }))
                // return note;
        break;
        }

    case 2: //sequencer can steal non-sequencer notes, hold notes are never stolen
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return n.releaseflag && n.type > 1; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return n.releaseflag && n.type == 1; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return !n.releaseflag && n.type > 1; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return !n.releaseflag && n.type == 1; }))
                return note;
        break;

    case 3: //sequencer can steal non-sequencer notes, hold notes are stolen
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return n.releaseflag && n.type > incomingNote.type; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return n.releaseflag && n.type == incomingNote.type; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return n.releaseflag && n.type < incomingNote.type; }))
                return note;

            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.releaseflag && n.type > incomingNote.type; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.releaseflag && n.type == incomingNote.type; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                                 { return !n.releaseflag && n.type < incomingNote.type; }))
                return note;
        break;

    case 4: //sequencer never steals non-sequencer notes, hold notes are stolen (but not by sequencer)
        if (incomingNote.type == 1)
        { // PLAYER NOTE
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return n.releaseflag && n.type > 1; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return n.releaseflag && n.type == 1; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return n.releaseflag && n.type < 1; }))
                return note;
                
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return !n.releaseflag && n.type > 1; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return !n.releaseflag && n.type == 1; }))
                return note;
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return !n.releaseflag && n.type < 1; }))
                return note;

        }
        else if (incomingNote.type > 1)
        { // SEQUENCER NOTE
            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                 { return n.releaseflag && n.type > 1; }))
                return note;

            if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                { return !n.releaseflag && n.type > 1; }))
                return note;

            // if (auto *note = findFirstNoteWithPredicate([](const Note &n)
                                                //  { return n.releaseflag && n.type > 0; }))
                // return note;
        }
        break;
    }
    return nullptr; // no suitable note was found
}

void handleNoteOn(Note &note, lock &lock)
{
    int freeVoice = 0;

    if (!mono_attr) // CASE: POLYPHONY
    {
        handleNoteOnPoly(note, lock);
    }

    else // CASE: MONOPHONY
    {
        handleNoteOnMono(note, lock);
    }
}

void handleNoteOnMono(Note &note, lock &lock)
{
    // mono_steals_release_attr:
    // If false, new monophony notes will ignore monophony notes that are in release and will generate new notes
    int freeVoice = 0;
    // Case: We have a pressed monophony note of the same type: generate note on to same target and push_back the new mpitch
    if (auto *monoTargetNote = findFirstNoteWithPredicate([&](const Note &n)
                                                    {return n.monoflag == 1
                                                    && n.type == note.type
                                                    && !n.releaseflag;}))
    {
        if(debug){cout << "Mono key was pressed, mono voice of type " << monoTargetNote->type<< " found with target " << monoTargetNote->target << endl;}
            if(monoTargetNote->mpitch.back() != note.mpitch.back())
            {
            monoTargetNote->mpitch.push_back(note.mpitch.back());
            monoTargetNote->freq.push_back(note.freq.back());
            }
        monoTargetNote->vel = note.vel;
        outputFunction(*monoTargetNote, NOTEON, 1, lock); // -> spiele neue note mit diesem gefundenen target, mono flag 1 und steal 1
        return;
    }
    // Case: We have a released monophony note of the same type and mono_steals_release is 1: 
    if (auto *monoTargetNote = findFirstNoteWithPredicate([&](const Note &n)
                                        {return n.monoflag == 1
                                        && n.type == note.type
                                        && n.releaseflag;}))
    {
        if(mono_steals_release_attr)
        {
        //delete mpitch list, push_back new mpitch, generate note on on old target
        if(debug){cout << "Mono key was pressed, released mono voice of type " << monoTargetNote->type<< " found with target " << monoTargetNote->target << endl;}
        monoTargetNote->releaseflag = 0;
        monoTargetNote->mpitch.clear();
        monoTargetNote->mpitch.push_back(note.mpitch.back());
        monoTargetNote->freq.clear();
        monoTargetNote->freq.push_back(note.freq.back());
        monoTargetNote->vel = note.vel;
        outputFunction(*monoTargetNote, NOTEON, 1, lock); // -> spiele neue note mit diesem gefundenen target, mono flag 1 und steal 1
        return;
        }
        }
        // Case: We have a released monophony note of the same type and mono_steals_release is 0: Generate new Note On.... 
        // ....so we continue.

        // CASE: NO MONO VOICE PLAYING ON type, FREE VOICE AVAILABLE
        if (!inactive_voices.empty())
        {
            freeVoice = inactive_voices.front();
            inactive_voices.pop();
            note.target = freeVoice;
            note.monoflag = 1;
            active_voices.push_back(note);
            if(debug){cout << "Found inactive voice with target " << freeVoice << " and pushed new note to active_voices" << endl;}
            outputFunction(note, NOTEON, 0, lock); // -> spiele neue note mit mono flag 1, freiem target und steal 0
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
                noteToSteal->type = note.type;
                noteToSteal->releaseflag = 0;
                noteToSteal->holdflag = 0;
                noteToSteal->monoflag = 1;

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
            return;
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
        note.monoflag = 0;
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
            noteToSteal->type = note.type;
            noteToSteal->releaseflag = 0;
            noteToSteal->holdflag = 0;
            noteToSteal->monoflag = 0;

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
    // Set hold case. On note off, set the the note to hold
    if (hold_attr)
    {
        if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                            {return n.mpitch.back() == incomingNote.mpitch.back() 
                                            && !n.holdflag 
                                            && n.type == incomingNote.type;}))
        {
            if(debug)cout<<"set note " << note->mpitch.back() << "at target " << note->target << " to hold" << endl;
            note->holdflag = 1;
            note->type = 0;
            outputFunction(*note, NOTEOFF, 0, lock, true); //send flags only = true
            return;
        }
    }
    //Monophony note off case: we check that our note off doesn't belong to a legato note by checking the size of the vector of mpitches, and release it.
    if (auto *note = findFirstNoteWithPredicate([&](const Note &n) 
                                        {return n.type == incomingNote.type 
                                        && n.mpitch.size() == 1 
                                        && n.mpitch.back() == incomingNote.mpitch.back() 
                                        && !n.holdflag
                                        && !n.releaseflag;}))
    {
        if(debug)cout<<"released incoming note with mpitch " << incomingNote.mpitch.back() << " matching it to note " << note->mpitch.back() << " at target " << note->target << " in monophony" << endl;
        
        note->releaseflag = 1;
        outputFunction(*note, NOTEOFF, 0, lock);
        return;
    }

    if (!mono_attr) // CASE: POLYPHONY
    {
        //most normal note off
        if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                            { return n.type == incomingNote.type 
                                            && n.mpitch == incomingNote.mpitch 
                                            && !n.holdflag; }))
        {
            if(debug)cout<<"most normal release with note " << note->mpitch.back() << "at target " << note->target << endl;
            note->releaseflag = 1;
            outputFunction(*note, NOTEOFF, 0, lock);
        }

        else
        {
            if(debug){cout << "Note off with mpitch " << incomingNote.mpitch.front() << " with no matching note in active_voices, did nothing" << endl;}
        }
    }

    else // CASE: MONOPHONY
    {
        if (auto *note = findFirstNoteWithPredicate([&](const Note &n)
                                             { return n.type == incomingNote.type 
                                               && n.monoflag 
                                               && !n.holdflag 
                                               && !n.releaseflag
                                               ;}))
        {
            if (note->mpitch.back() == incomingNote.mpitch.back()) // we need a new NOTEON only if the player releases the last note that was played in monophony 
            {
                if (note->mpitch.size() > 1)
                {
                    if(debug) cout << "monophony note off into note on case" << endl;
                    note->mpitch.pop_back();
                    note->freq.pop_back();
                    note->releaseflag = 0;
                    outputFunction(*note, NOTEON, 1, lock);
                    //now delete the mpitch (see further down)
                }
                else
                {
                    cout << "never case?" << endl;
                    note->releaseflag = 1;
                    outputFunction(*note, NOTEOFF, 1, lock);
                }
                return;
            }
            //what we always do: remove the pitch entry of the note that was just released
            for (auto it = note->mpitch.begin(); it != note->mpitch.end(); ++it)
            {
                if (*it == incomingNote.mpitch.back())
                {
                    size_t index = it - note->mpitch.begin(); // Pointer arithmetic
                    note->mpitch.erase(note->mpitch.begin() + index);
                    note->freq.erase(note->freq.begin() + index);
                    if(debug)cout<<"removed entry with mpitch "<< incomingNote.mpitch.back() << "from mpitch vector of mono note" << endl;
                    // note->mpitch.erase(it);
                    break;
                }
            }
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
    if(debug){cout << endl
         << "  Inlet 2: " << target << " " << muteflag << endl;}
    if (muteflag && blockOutlet)
    {
        blockOutlet = false;
        return;
    }

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

function listInlets = MIN_FUNCTION //mpitch, vel, (type), (realpitch), (monoflag) //print: 8 60. 2 600. 0
{
    if (inlet == 0)
    {
        lock lock{m_mutex};
        int mpitch = args[0]; //if the input comes from a sequencer this will actually be a tranformed "target" message
        int vel = args[1];

        if(debug){cout << endl << "  Player Note to Inlet 1: " << mpitch << " " << vel << endl;}

        Note currentNote = newNote(mpitch, vel);

        unsigned long argsize = args.size();

            if(argsize >= 3)
            {
                int type = args[2];
                currentNote.type = type;
            }

       
            if(argsize >= 4)
            /*                            
            arg 4: "real" pitch, meaning the pitch that was actually recorded by our sequencer. 
            Depending on output_mode it will either be a mpitch or a frequency.
            Note that this means that we can't record the output of [voice-alligator] with output_mode: freq and 
            send the recorded output to a [voice-alligator] with output_mode: mpitch and vice versa
            */
            { 
                double realpitch = args[3];

                if(output_mode == output_mode::freq)
                {
                if(!currentNote.freq.empty()) currentNote.freq.pop_back();                                    
                currentNote.freq.push_back(realpitch);
                } 
                else
                {
                currentNote.mpitch.pop_back();
                currentNote.mpitch.push_back(static_cast<int>(realpitch));
                }                                                           
            }

            if(argsize >= 5)
            {
                int monoflag = args[4];
                currentNote.monoflag = args[4];
            }
            

        if (vel != 0)
        {
            if(output_mode == output_mode::freq && !scalearray.get_value(mpitch) && argsize < 3){
            if(debug){cout << "mpitch " << mpitch << " not defined in the scalearray" << endl;}
            return {};}
            handleNoteOn(currentNote, lock);
        }
        else
        {
            handleNoteOff(currentNote, lock);
        }
    }
    else
    {
        lock lock{m_mutex};
        fromPoly(args[0], args[1]);
    }
    return {};
};

function endHold = MIN_FUNCTION
{
    if (inlet == 0)
    {
        int endargument = 0;
        unsigned long size = args.size();
        if(size > 0) endargument = args[0];
        switch (endargument)
        {
            case 0: //all
            {
                for (auto &itNote : active_voices)
                {
                    lock lock{m_mutex};
                    if (itNote.holdflag == 1 && !itNote.releaseflag)
                    {
                        itNote.releaseflag = true;
                        outputFunction(itNote, NOTEOFF, 0, lock);
                    }
                }
                break;
            }
            case 1: //first
            {
                if (auto* note = findFirstNoteWithPredicate([](const Note& n) {return n.holdflag == 1 && !n.releaseflag;}))
                {
                    lock lock{m_mutex};
                    note->releaseflag = true;
                    outputFunction(*note, NOTEOFF, 0, lock);
                }
                break;
            }
            case 2: //last
            {
                if (auto* note = findLastNoteWithPredicate([](const Note& n) {return n.holdflag == 1 && !n.releaseflag;}))
                {
                    lock lock{m_mutex};
                    note->releaseflag = true;
                    outputFunction(*note, NOTEOFF, 0, lock);
                }
                break;
            }
            default:
            {
                break;
            }
        }
    }
    return {};
};

function scaleDefineFunction = MIN_FUNCTION
{
    if (inlet == 0)
    {
        lock lock{m_mutex};
        unsigned long size = args.size();
        if(scale_fill || !size)
        {
            if(debug){cout << "filled the scale array" << endl;}
            scalearray.fillContainer(scalearray_maxsize);
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
                    scalearray.set_value(index, (440 * exp(0.057762265 * (value - 69))));
                }
                else if(scale_def_mode == scale_def_mode::freq)
                {
                    scalearray.set_value(index, value);
                }
            } 
            else {
            // Handle the case when there is only one argument left
            cout << "warning: tried to define note index " << i << " without providing value" << endl;
            }
        }
        if(debug){cout << endl;}
    }
    return {};
};

function endallFunction = MIN_FUNCTION
{
        unsigned long size = args.size();
        if(size > 0) //if an argument was provided, end notes of type according to argument
        {
        int type = args[0];
            for (auto &itNote : active_voices)
            {
                lock lock{m_mutex};
                if(itNote.type == type)
                {
                itNote.holdflag = 0;
                itNote.releaseflag = 1;
                outputFunction(itNote, NOTEOFF, 0, lock);
                }
            }
        }
        else        //else end all notes
        {
            for (auto &itNote : active_voices)
            {
                lock lock{m_mutex};
                itNote.holdflag = 0;
                itNote.releaseflag = 1;
                outputFunction(itNote, NOTEOFF, 0, lock);
            }
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
                    << ", type " << i.type
                    << ", target " << i.target
                    << ", freq [";
            
            for (double k : i.freq)
            {
                cout << k << " ";
            }
            cout << "], vel " << i.vel
                    << ", mono " << (i.monoflag)
                    << ", hold " << (i.holdflag)
                    << ", release " << (i.releaseflag);
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

message<threadsafe::yes> list{this, "list", "midipitch, velocity, type", listInlets};
message<threadsafe::yes> scale_def{this, "scale_def", "scale_def [index, value]", scaleDefineFunction};
message<threadsafe::yes> endhold{this, "endhold", "End hold notes 0 = all, 1 = last, 2 = first", endHold};
message<threadsafe::yes> endall{this, "endall", "send message to release all voices", endallFunction};

private:
mutex m_mutex;
};

MIN_EXTERNAL(voice_allocator);