/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"

using namespace c74::min;

class aAdsr : public object<aAdsr>, public lib::adsr, public sample_operator<0,2>{

public:
    MIN_DESCRIPTION	{ "adsr~ clone for alligator" };
    MIN_TAGS		{ "audio, envelope" };
    MIN_AUTHOR		{ "Cycling '74" };
    MIN_RELATED		{ "adsr~, live.adsr~" };

    inlet<>  in1 {this, "(number / list) velocity / flags"};
    inlet<>  in2 {this, "(number) attack"};
    inlet<>  in3 {this, "(number) decay"};
    inlet<>  in4 {this, "(number) sustain"};
    inlet<>  in5 {this, "(number) release"};
    inlet<>  in6 {this, "(number) attack slope"};
    inlet<>  in7 {this, "(number) decay slope"};
    inlet<>  in8 {this, "(number) release slope"};
    outlet<> out1 {this, "(signal) envelope", "signal"};
    outlet<> out2 {this, "(signal) new envelope trigger", "signal"};
    outlet<> out3 {this, "(message) mute outlet"};

    argument<number> attack_arg { this, "attack", "Initial frequency in hertz.",
        MIN_ARGUMENT_FUNCTION {
            attack(arg, samplerate());
        }
    };

    argument<number> decay_arg { this, "decay", "Initial frequency in hertz.",
        MIN_ARGUMENT_FUNCTION {
            decay(arg, samplerate());
        }
    };

    argument<number> sustain_arg { this, "sustain", "Initial frequency in hertz.",
        MIN_ARGUMENT_FUNCTION {
            sustain(arg);
        }
    };

    argument<number> release_arg { this, "sustain", "Initial frequency in hertz.",
        MIN_ARGUMENT_FUNCTION {
            release(arg, samplerate());
        }
    };

    attribute<number> decklick_time {this, "declick_time", 5, description{"declick time in ms"}, setter {MIN_FUNCTION{
        int argval = args[0];
        retrigger(argval, samplerate());
        return {argval} ;
    }}};

    function mainInletFunction = MIN_FUNCTION{
    if (inlet == 0) // notes: mpitch, vel, (channel), (monoflag), (realpitch)
    {
            double vel = args[0];
            peak(vel);
            if(vel) trigger(true);
            else trigger(false);
            return {};
    }
    else if(inlet == 1)
    {
        attack(args[0], samplerate());
        return {};
    }
    else if(inlet == 2)
    {
        decay(args[0], samplerate());
        return {};
    }
    else if(inlet == 3)
    {
        double sustainClamp = std::min((static_cast<double>(args[0])), 1.0);
        sustain(sustainClamp);
        return {};
    }
    else if(inlet == 4)
    {
        release(args[0], samplerate());
        return {};
    }
    else if(inlet == 5)
    {
        attack_curve(args[0]);
        return {};
    }
    else if(inlet == 6)
    {
        decay_curve(args[0]);
        return {};
    }
    else if(inlet == 7)
    {
        release_curve(args[0]);
        return {};
    }
    else return {};
    };

    message<threadsafe::yes> number{this, "number", "Midipitch, Velocity, (channel), (monoflag), (realpitch)",
    mainInletFunction};
};

MIN_EXTERNAL(aAdsr);
