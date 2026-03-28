'use strict';

// voice-alligator-looper.js
// Wrapper around [mtr] and coordinator for [voice-alligator].
//
// Inlets:
//   0 — commands + performer notes (list messages forwarded to voice-alligator)
//   1 — mtr output  (info/dump dicts, "end" loop-wrap event)
//
// Outlets:
//   0 — mtr inlet 0     (transport: play, stop, record, clear, loop, info, dump;
//                         also loads quantized dicts back via outlet_dictionary)
//   1 — mtr inlet 1     (track-1 specific commands)
//   2 — voice-alligator (note-off messages when notes must be cut)

inlets  = 2;
outlets = 3;
autowatch = 1;

setinletassist(0, "commands + performer notes");
setinletassist(1, "mtr output (dicts, end)");
setoutletassist(0, "mtr inlet 0");
setoutletassist(1, "mtr inlet 1 (track)");
setoutletassist(2, "voice-alligator");

// ─── Attributes ─────────────────────────────────────────────────────────────

let autoquantize_attr = false;  // auto-quantize after recording stops
let noteLen_attr      = '8n';   // quantization note length
let bpm_attr          = 0;      // 0 = auto-detect
let quantize_on_attr  = 'loop'; // 'loop' (on next mtr end) | 'note' (on next incoming note)

// ─── State ───────────────────────────────────────────────────────────────────

let infoDict        = null;
let eventsDict      = null;
let isRecording     = false;
let pendingQuantize = false;    // quantize has been scheduled

// ─── Inlet 1: mtr output ─────────────────────────────────────────────────────

function msg_dictionary(d) {
    if (inlet !== 1) return;
    if (d.type === 'info') {
        infoDict = d;
    } else {
        eventsDict = d;
    }
}

// mtr fires 'end' when the playhead wraps around the loop boundary
function end() {
    if (inlet !== 1) return;
    if (pendingQuantize && quantize_on_attr === 'loop') {
        applyQuantize();
    }
}

// ─── Inlet 0: transport commands ─────────────────────────────────────────────

function record() {
    isRecording     = true;
    pendingQuantize = false;   // cancel any pending quantize on new recording
    outlet(0, 'record');
}

function stop() {
    const wasRecording = isRecording;
    isRecording = false;
    outlet(0, 'stop');
    if (wasRecording && autoquantize_attr) {
        pendingQuantize = true;
        // Fetch fresh dicts immediately so they're ready when the trigger fires
        outlet(0, 'info');
        outlet(0, 'dump');
    }
}

// definelengthandstop stops recording AND sets the track length — same autoquantize logic
function definelengthandstop() {
    const wasRecording = isRecording;
    isRecording = false;
    outlet(0, 'definelengthandstop');
    if (wasRecording && autoquantize_attr) {
        pendingQuantize = true;
        outlet(0, 'info');
        outlet(0, 'dump');
    }
}

function play()     { outlet(0, 'play'); }
function overdub()  { isRecording = true; pendingQuantize = false; outlet(0, 'overdub'); }

function loop(v) {
    outlet(0, 'loop', v !== undefined ? v : 1);
}

function clear() {
    infoDict = eventsDict = null;
    pendingQuantize = isRecording = false;
    outlet(0, 'clear');
}

// ─── Attribute setters ────────────────────────────────────────────────────────

function autoquantize(v) { autoquantize_attr = !!parseInt(v);   }
function noteLen(v)      { noteLen_attr      = String(v);        }
function bpm(v)          { bpm_attr          = parseFloat(v)||0; }
function quantize_on(v)  { quantize_on_attr  = String(v);        }

// ─── Manual quantize ──────────────────────────────────────────────────────────

// quantize [noteLen] [bpm]  — args override stored attributes for this run
function quantize(nl, b) {
    runQuantize(nl || noteLen_attr, parseFloat(b) || bpm_attr);
}

// ─── Note passthrough ─────────────────────────────────────────────────────────

// Performer notes arrive as list messages on inlet 0.
// In 'note' mode a pending quantize fires just before the first note is sent through.
function list(...args) {
    if (inlet !== 0) return;
    if (pendingQuantize && quantize_on_attr === 'note') {
        applyQuantize();
    }
    outlet(2, ...args);
}

// ─── Internal quantize ────────────────────────────────────────────────────────

function applyQuantize() {
    pendingQuantize = false;
    if (!infoDict || !eventsDict) {
        post("looper: quantize skipped — dicts not yet received from mtr\n");
        return;
    }
    runQuantize(noteLen_attr, bpm_attr);
}

function runQuantize(noteLen, bpmArg) {
    const divisor = parseNoteLen(noteLen);
    if (divisor === null) {
        post("looper: invalid note length '" + noteLen + "'\n");
        return;
    }

    const rawEvents = getEventsArray(eventsDict);
    if (!rawEvents || rawEvents.length === 0) {
        post("looper: no events to quantize\n");
        return;
    }

    const absEvents = deltaToAbsolute(rawEvents);

    let useBpm = parseFloat(bpmArg) || 0;
    if (useBpm <= 0) {
        useBpm = detectBpm(absEvents);
        if (!useBpm) {
            post("looper: BPM auto-detection failed — set bpm attribute explicitly\n");
            return;
        }
    }
    post(`looper: quantize BPM=${useBpm.toFixed(1)} grid=${noteLen}\n`);

    const gridMs      = (4 / divisor) * (60000 / useBpm);
    const totalLength = getTotalLength(infoDict);
    const newLength   = Math.max(gridMs, Math.round(totalLength / gridMs) * gridMs);

    const quantized   = quantizePreserveDurations(absEvents, gridMs, totalLength, newLength);
    const trimmed     = quantized.filter(e => e.absTime < newLength);
    const deltaEvents = absoluteToDelta(trimmed);

    const srcTracks = getTracksObj(eventsDict);
    const srcInfo   = getTracksObj(infoDict);

    const outEvents = {
        tracks: [{
            events:     deltaEvents.map(({ time, message, args }) => ({ time, message, args })),
            length:     newLength,
            loop:       srcTracks ? srcTracks.loop       : 1,
            trackspeed: srcTracks ? srcTracks.trackspeed : 1.0,
        }]
    };

    const outInfo = {
        tracks: [{
            ...(srcInfo || {}),
            eventcount:     deltaEvents.length,
            recordedlength: newLength,
            length:         newLength,
        }],
        global_loop:       infoDict.global_loop       !== undefined ? infoDict.global_loop       : 1,
        global_length:     newLength,
        global_trackspeed: infoDict.global_trackspeed || 1.0,
        global_mode:       infoDict.global_mode       !== undefined ? infoDict.global_mode       : 0,
        speed:             infoDict.speed             || 1.0,
        type:              'info',
    };

    sendAllNotesOff();
    outlet(0, 'stop');
    outlet_dictionary(0, outInfo);
    outlet_dictionary(0, outEvents);
    outlet(0, 'play');

    post(`looper: quantize done — ${deltaEvents.length} events, length=${newLength.toFixed(1)} ms\n`);
}

// Send note-off for every possible voice target to voice-alligator.
// Format mirrors the sequencer path: target vel stream glide_flag
function sendAllNotesOff() {
    for (let v = 1; v <= 8; v++) {
        outlet(2, v, 0, 1, 0);
    }
}

// ─── BPM detection ────────────────────────────────────────────────────────────

// Returns detected BPM (integer) or null.
// Tries every integer BPM 60–200; for each, scores how many note-ons align to a
// 16th-note grid at the best phase offset. Requires ≥50 % alignment to accept.
function detectBpm(absEvents) {
    const noteOns = absEvents.filter(e =>
        e.message === 'note' && toFloat(e.args[1]) > 0
    );
    if (noteOns.length < 2) return null;

    const CHORD_GAP = 50;
    const times = [];
    let prev = -Infinity;
    for (const e of noteOns) {
        if (e.absTime - prev >= CHORD_GAP) { times.push(e.absTime); prev = e.absTime; }
    }
    if (times.length < 2) return null;

    const SNAP_TOL = 0.20;

    function scorePhase(step, phase) {
        const tol = step * SNAP_TOL;
        let n = 0;
        for (const t of times) {
            const d = ((t - phase) % step + step) % step;
            if (Math.min(d, step - d) <= tol) n++;
        }
        return n;
    }

    let bestBpm = null, bestScore = -1;
    for (let bpm = 60; bpm <= 200; bpm++) {
        const step = (60000 / bpm) / 4;
        let bpmScore = 0;
        for (const t0 of times) {
            const s = scorePhase(step, t0 % step);
            if (s > bpmScore) bpmScore = s;
        }
        if (bpmScore > bestScore) { bestScore = bpmScore; bestBpm = bpm; }
    }

    if (bestBpm !== null && bestScore >= Math.ceil(times.length * 0.5)) {
        post(`looper: auto-detected BPM=${bestBpm} (${bestScore}/${times.length} on 16th grid)\n`);
        return bestBpm;
    }
    return null;
}

// ─── Time conversion ──────────────────────────────────────────────────────────

function deltaToAbsolute(events) {
    let t = 0;
    return events.map((e, idx) => {
        t += toFloat(e.time);
        return { time: e.time, message: e.message, args: toArgsArray(e.args), absTime: t, _idx: idx };
    });
}

function absoluteToDelta(events) {
    let prevTime = 0;
    return events.map(({ time: _t, _idx, absTime, ...rest }) => {
        const delta = Math.max(0, absTime - prevTime);
        prevTime = absTime;
        return { ...rest, time: Math.round(delta * 10) / 10 };
    });
}

function snapToGrid(t, gridMs) {
    return Math.round(t / gridMs) * gridMs;
}

// ─── Core quantization ────────────────────────────────────────────────────────

// Event args format (recorded by mtr from voice-alligator output):
//   args[0] = target   (voice number — used to match on/off)
//   args[1] = velocity (> 0 note-on, 0 note-off)
//   args[2] = glide flag
//   args[3] = frequency
//
// Regular note-on  → matched with its note-off; both move by the same delta.
// Glide note-on    → standalone (no explicit note-off); snaps independently.
// If a target's pending note-on is overridden by a new note-on, it is finalised
// without a note-off first (implicitly terminated).
// Duplicate note-ons for the same target/grid-slot are discarded.
//
// Aux events are piecewise-linearly warped using note-on movements as anchors.
function quantizePreserveDurations(absEvents, gridMs, totalLength, newLength) {
    const pendingOns = {};
    const pairs      = [];
    const auxEvents  = [];

    for (const e of absEvents) {
        if (e.message !== 'note') { auxEvents.push(e); continue; }
        const voice   = e.args[0];
        const vel     = toFloat(e.args[1]);
        const isGlide = toFloat(e.args[2]) > 0;

        if (vel > 0) {
            if (pendingOns[voice]) {
                pairs.push({ on: pendingOns[voice], off: null });
                delete pendingOns[voice];
            }
            if (isGlide) {
                pairs.push({ on: e, off: null });
            } else {
                pendingOns[voice] = e;
            }
        } else {
            pairs.push({ on: pendingOns[voice] || null, off: e });
            if (pendingOns[voice]) delete pendingOns[voice];
        }
    }
    for (const v of Object.keys(pendingOns)) {
        pairs.push({ on: pendingOns[v], off: null });
    }

    const rawAnchors = [];
    const usedSlots  = new Set();
    const keptPairs  = [];

    for (const pair of pairs) {
        if (!pair.on) { keptPairs.push(pair); continue; }
        const origOn = pair.on.absTime;
        const snapOn = snapToGrid(origOn, gridMs);
        const key    = `${pair.on.args[0]}_${snapOn}`;

        if (usedSlots.has(key)) continue;
        usedSlots.add(key);

        const delta     = snapOn - origOn;
        pair.on.absTime = snapOn;
        if (pair.off) pair.off.absTime += delta;

        rawAnchors.push({ orig: origOn, snapped: snapOn });
        keptPairs.push(pair);
    }

    rawAnchors.sort((a, b) => a.orig - b.orig);
    const dedupAnchors = rawAnchors.filter((a, i) => i === 0 || a.orig !== rawAnchors[i-1].orig);

    const warpAnchors = [];
    if (!dedupAnchors.length || dedupAnchors[0].orig > 0)
        warpAnchors.push({ orig: 0, snapped: 0 });
    warpAnchors.push(...dedupAnchors);
    if (!dedupAnchors.length || dedupAnchors[dedupAnchors.length-1].orig < totalLength)
        warpAnchors.push({ orig: totalLength, snapped: newLength });

    for (const e of auxEvents) {
        e.absTime = warpTime(e.absTime, warpAnchors);
    }

    const result = [];
    for (const p of keptPairs) {
        if (p.on)  result.push(p.on);
        if (p.off) result.push(p.off);
    }
    result.push(...auxEvents);
    result.sort((a, b) => a.absTime - b.absTime || a._idx - b._idx);
    return result;
}

function warpTime(t, anchors) {
    if (!anchors.length) return t;
    if (t <= anchors[0].orig) return anchors[0].snapped;
    const last = anchors[anchors.length - 1];
    if (t >= last.orig) return last.snapped;

    let lo = 0, hi = anchors.length - 2;
    while (lo < hi) {
        const mid = (lo + hi) >> 1;
        if (anchors[mid + 1].orig <= t) lo = mid + 1; else hi = mid;
    }
    const a = anchors[lo], b = anchors[lo + 1];
    const span = b.orig - a.orig;
    if (span === 0) return a.snapped;
    return a.snapped + (t - a.orig) / span * (b.snapped - a.snapped);
}

// ─── Dict helpers ─────────────────────────────────────────────────────────────

function parseNoteLen(str) {
    const m = String(str).match(/^(\d+)n$/);
    return m ? parseInt(m[1]) : null;
}

function getEventsArray(d) {
    if (!d) return null;
    let tracks = d.tracks;
    if (!tracks) return null;
    if (Array.isArray(tracks)) tracks = tracks[0];
    if (!tracks) return null;
    const evts = tracks.events;
    if (!evts) return null;
    return Array.isArray(evts) ? evts : [evts];
}

function getTracksObj(d) {
    if (!d) return null;
    let tracks = d.tracks;
    if (Array.isArray(tracks)) tracks = tracks[0];
    return tracks || null;
}

function getTotalLength(info) {
    const tracks = getTracksObj(info);
    return toFloat((tracks && tracks.length) || info.global_length) || 0;
}

function toArgsArray(args) {
    if (Array.isArray(args)) return args;
    if (typeof args === 'string')
        return args.trim().split(/\s+/).map(v => isNaN(v) ? v : parseFloat(v));
    return args !== undefined ? [args] : [];
}

function toFloat(v) { return parseFloat(v) || 0; }

// ─── Debug ────────────────────────────────────────────────────────────────────

function debug() {
    function inspect(obj, label, depth) {
        if (depth > 4) { post(label + ": [deep]\n"); return; }
        if (obj === null || obj === undefined) { post(label + ": " + obj + "\n"); return; }
        const t = typeof obj;
        if (t !== 'object') { post(label + ": (" + t + ") " + obj + "\n"); return; }
        if (Array.isArray(obj)) {
            post(label + ": Array[" + obj.length + "]\n");
            if (obj.length > 0) inspect(obj[0], label + "[0]", depth + 1);
            return;
        }
        const keys = Object.keys(obj);
        post(label + ": {" + keys.join(", ") + "}\n");
        for (const k of keys) inspect(obj[k], label + "." + k, depth + 1);
    }
    post(`── state: recording=${isRecording} pendingQuantize=${pendingQuantize}\n`);
    post(`── attrs: autoquantize=${autoquantize_attr} noteLen=${noteLen_attr} bpm=${bpm_attr} quantize_on=${quantize_on_attr}\n`);
    post("── eventsDict ──\n"); inspect(eventsDict, "eventsDict", 0);
    post("── infoDict ──\n");   inspect(infoDict,   "infoDict",   0);
}

function debugevents() {
    const events = getEventsArray(eventsDict);
    if (!events) { post("debugevents: no events\n"); return; }
    post("events count: " + events.length + "\n");
    const n = Math.min(3, events.length);
    for (let i = 0; i < n; i++) {
        const e = events[i];
        post("event[" + i + "]: time=" + e.time + " msg=" + e.message
            + " args=" + JSON.stringify(e.args) + "\n");
    }
}
