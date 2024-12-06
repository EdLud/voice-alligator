/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include <iostream>
#include <vector>
#include <queue>
#include <cmath>
#include <optional>

using namespace c74::min;
using namespace c74::min::lib;

class seqprepare : public object<seqprepare>
{
public:
MIN_DESCRIPTION{"voice allocator for poly~ object"};
MIN_TAGS{"velocities, pitches, etc."};
MIN_AUTHOR{"Jan Godde, Edis Ludwig"};
MIN_RELATED{"poly~"};

inlet<> in1{this, "(list) midipitch, velocity, (channel)"};
inlet<> in2{this, "(list) voice number, muteflag"};
outlet<> out1{this, "messages to poly~ object"};

struct Note
{
public:
    std::vector<int> mpitch;
    int vel;
    std::vector<double> freq;
    int channel = 1; // hold notes = channel 0, player notes = channel 1, sequencer notes = channel 2
    int target;      // voice instanz von poly~
    bool monoflag = false;
    bool holdflag = false;
    bool releaseflag = false; // ist note in release phase?
};


std::vector<Note> active_voices;
std::queue<int> inactive_voices;

attribute<bool>                     debug{this, "debug", false, description{"Debug on / off"}};

attribute<int> voices
{
    this, "voices", 4,
    description{"Number of voices, default: 4"}, range{1, 1024},
    setter
    {
        MIN_FUNCTION
        {
            int voicenr = (int)args[0];
            if(voicenr > 1024){return {voicenr};} 
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

void printActive()
{
    if(!active_voices.size()){cout << "No notes in active_voices" << endl;}
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
                 << ", release " << (i.releaseflag);
            cout << endl;
        }
        cout << "}" << endl; 
    }
}

void printInactive()
{
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
}

function listInlets = MIN_FUNCTION
{

    if (inlet == 0)
    {
        lock lock{m_mutex};
        int mpitch = args[0];
        int vel = args[1];
        int channel = 1;
        return {};
    }
};


message<> print{this, "print", "Print info to the max console",
        MIN_FUNCTION
        {
            printActive();
            printInactive();
            return {};
        }
};

message<threadsafe::yes> list{this, "list", "midipitch, velocity, channel", listInlets};

private:
mutex m_mutex;
};

MIN_EXTERNAL(seqprepare);
