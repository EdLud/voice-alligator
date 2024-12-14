# voice-allocator
voice allocator for poly~ object in max / msp

eLum.voice-alligator is an external that manages voice allocation. It is designed to work with the [poly~] object and offers several additional features compared to the built-in voice allocation system.

The primary focus is to allow all settings of [voice-alligator] to be adjustable on the fly while maintaining coherent and intuitive behavior. The differences from the built-in voice allocation are best demonstrated through musical examples, which can be found in the "Demo Sequences" tab.

Features:

    -Switch between monophony and polyphony while playing (see demos "mono" and "monoAndHold").
    -Fast and easy scale definition format for microtonal tunings. (see tab "Defining Scales")
    -Differentiate between notes of higher and lower priority, referred to as "player notes" and "sequencer notes" (see demo x).
    -"Hold" notes to release them later.
    -Remember pitches during scale changes (see demo scale).
    -Lock parameter changes for notes of a certain kind (see demo holdAndPitchwheel).
    -Record pitches instead of MIDI notes for playback after a scale change.