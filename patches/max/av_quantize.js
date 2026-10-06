// Snap a semitone offset (0-24) to the nearest note of the current scale, so any
// pattern (presets, hand-drawn sliders) stays in key. Send it the scale as a list
// (same format as av_scale: semitones, duplicates allowed) and ints to snap.
inlets = 1;
outlets = 1;

var scale = [0, 2, 3, 5, 7, 8, 10, 12, 14, 15, 17, 19, 20, 22, 24];

function list() {
	var a = arrayfromargs(arguments);
	if (a.length) scale = a;
}

function msg_int(v) {
	var best = scale[0], dist = 1e9;
	for (var i = 0; i < scale.length; i++) {
		for (var o = -24; o <= 24; o += 12) {          // allow the scale to repeat above and below
			var s = scale[i] + o, d = Math.abs(s - v);
			if (d < dist || (d === dist && s < best)) { best = s; dist = d; }
		}
	}
	outlet(0, best);
}

function msg_float(v) { msg_int(Math.round(v)); }
