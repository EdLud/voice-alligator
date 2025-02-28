/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include "alligator_adsr.h"

using namespace c74::min;

class aAdsr : public object<aAdsr>, public sample_operator<0,2>{

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

    alligator::adsr m_adsr;

	timer <> outputMute1 { this, 
        MIN_FUNCTION {
			out3.send("mute",  1);
			return {};
		}
    };

    timer <> outputMute0 { this, 
        MIN_FUNCTION {
			out3.send("mute",  0);
			return {};
		}
    };

    samples<2> operator()() {
    auto adsr_value = m_adsr(); // get from member variable
    if(m_adsr.active() == 0.0 && m_active){
        outputMute1.delay(0.0);
        m_active = false;
    }
    return { adsr_value, m_adsr.active() };
    }


    argument<number> attack_arg { this, "attack", "Initial frequency in hertz.",
        MIN_ARGUMENT_FUNCTION {
            m_adsr.attack(arg, samplerate());
        }
    };

    argument<number> decay_arg { this, "decay", "Initial frequency in hertz.",
        MIN_ARGUMENT_FUNCTION {
            m_adsr.decay(arg, samplerate());
        }
    };

    double sustain = 1.0;
    argument<number> sustain_arg { this, "sustain", "Initial frequency in hertz.",
        MIN_ARGUMENT_FUNCTION {
            sustain = arg;
            // m_adsr.sustain(arg);
        }
    };

    argument<number> release_arg { this, "sustain", "Initial frequency in hertz.",
        MIN_ARGUMENT_FUNCTION {
            m_adsr.release(arg, samplerate());
        }
    };

    attribute<number> decklick_time {this, "declick_time", 5, description{"declick time in ms"}, setter {MIN_FUNCTION{
        int argval = args[0];
        m_adsr.retrigger(argval, samplerate());
        return {argval} ;
    }}};

    function legatoFunction = MIN_FUNCTION{
        if(inlet == 0){
             m_adsr.return_to_zero(args[0]);
        }
        return{};
    };

    function mainInletFunction = MIN_FUNCTION{
    if (inlet == 0) // notes: mpitch, vel, (channel), (monoflag), (realpitch)
    {
            double vel = args[0];
            if(vel) {
                
                m_adsr.peak(vel);
                m_adsr.sustain(sustain * vel);
                // cout << "sustain: " << sustain << " peak: " << vel << endl;
                out3.send("mute", 0);
                m_adsr.trigger(true);
                m_active = true;
            }
            else m_adsr.trigger(false);
            return {};
    }
    else if(inlet == 1)
    {
        m_adsr.attack(args[0], samplerate());
        return {};
    }
    else if(inlet == 2)
    {
        m_adsr.decay(args[0], samplerate());
        return {};
    }
    else if(inlet == 3)
    {
        double clippedSustain = std::min((static_cast<double>(args[0])), 1.0);
        m_adsr.sustain(clippedSustain);
        sustain = clippedSustain;
        return {};
    }
    else if(inlet == 4)
    {
        m_adsr.release(args[0], samplerate());
        return {};
    }
    else if(inlet == 5)
    {
        m_adsr.attack_curve(args[0]);
        return {};
    }
    else if(inlet == 6)
    {
        m_adsr.decay_curve(args[0]);
        return {};
    }
    else if(inlet == 7)
    {
        m_adsr.release_curve(args[0]);
        return {};
    }
    else return {};
    };

    message<threadsafe::yes> number{this, "number", "Velocity", mainInletFunction};
    message<threadsafe::yes> return_to_zero{this, "legato", "legato retrigger", legatoFunction};


    private:
    bool m_active = false;
};


MIN_EXTERNAL(aAdsr);
