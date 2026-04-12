# Changelog

## 1.3.2
- fixed a bug that could lead to hanging notes when receiving lots of messages on the main thread
- added stereo resonator example

## 1.3.0
- some updates to helpfile and docs

## 1.2.8
- added "most_silent" steal mode to va, va~, and va-audio~: steals the quietest voice based on current ADSR output, or ext-busy signal level if connected

## 1.2.7
- added ext_busy_forces_glide attribute (default off): when on and the external busy inlet is non-zero for a voice and we are in monophony, the next note always glides regardless of the internal ADSR Status

## 1.2.6
- added an "external busy" inlet to va~ and va-audio~ and some karplus strong examples to the helpfiles
