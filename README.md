# voice-alligator
voice allocator for poly~ object in max / msp

[voice-alligator] is an external that manages voice allocation. It is designed to work with the [poly~] object and offers several additional features compared to the built-in voice allocation system.

The primary focus is to allow all settings of [voice-alligator] to be adjustable on the fly while maintaining coherent and intuitive behavior. The differences from the built-in voice allocation are best demonstrated through musical examples, which can be found in the "Demo Sequences" tab.

Features:

    - Switch between monophony and polyphony while playing (see demos 1-mono and 2-monoAndHold).
    - Fast and easy scale definition format for alternative scales/microtonal tunings.
    - Differentiate between notes of higher and lower priority on different "streams". (see demo 8-notePriorities)
    - "Hold" notes: notes that stay sustained after key de-press, end/release them at a later time. (see demo 3-portamentoAndHold)
    - Remember pitches during scale changes (see demo 5-scale).
    - Treat notes of different kinds or streams differently, e.g. regarding parameter changes (see demo 4-holdAndPitchwheel)
    - Record pitches instead of MIDI notes for playback after scale changes. (see demo 6-noteLooper and 7-noteLooper2)

Written by 
Edis Ludwig (https://edisludwig.com/) and
Jan Godde (https://www.jangodde.com/)