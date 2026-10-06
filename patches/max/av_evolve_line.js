// Slowly rewrites a 16-step bassline so it keeps evolving but stays recognisable.
// in:  a list = the current pattern (from the multislider), "scale ..." = the current scale,
//      "evolve n [tie]" = rewrite n steps (plus the odd octave jump / groove shift);
//      tie = chance a rewritten step becomes a tie (default 0.25; the jungle bass uses more)
// out: the new pattern as a list (back into the multislider)
// Slider values: 1 = root, 13 = octave up, 0 = tie. Step 1 always lands on a note.
inlets = 1;
outlets = 1;

var pat = [];
var sc = [0, 2, 3, 5, 7, 8, 10, 12, 14, 15, 17, 19, 20, 22, 24];

function list() { pat = arrayfromargs(arguments); }

function scale() { var a = arrayfromargs(arguments); if (a.length) sc = a; }

function rnd(n) { return Math.floor(Math.random() * n); }

function evolve(n, tie) {
	if (pat.length < 2) return;
	if (tie === undefined) tie = 0.25;
	var p = pat.slice();
	for (var k = 0; k < n; k++) {
		var i = 1 + rnd(p.length - 1);                       // leave step 1 alone: it anchors the bar
		p[i] = Math.random() < tie ? 0 : sc[rnd(sc.length)] + 1;
	}
	if (Math.random() < 0.2) {                               // sometimes jump two notes up an octave
		for (var k = 0; k < 2; k++) { var i = 1 + rnd(p.length - 1); if (p[i] > 0 && p[i] <= 13) p[i] += 12; }
	}
	if (Math.random() < 0.1) {                               // rarely, nudge the groove by two steps
		var first = p[0]; p = p.slice(-2).concat(p.slice(0, -2)); p[0] = first || 1;
	}
	if (p[0] === 0) p[0] = 1;
	outlet(0, p);
}
