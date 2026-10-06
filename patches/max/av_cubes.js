// Wireframe cubes for the feedback loop. Creates N jit.gl.gridshape cubes that draw into
// the jit.gl.node named "cubes" (captured to a texture and fed into the feedback pix).
// Messages: tick <seconds> (animate), count <n>, size <s>, speed <x>.
inlets = 1;
outlets = 0;

var NODE = "cubes";
var cubes = [];
var count = 5, size = 0.18, speed = 1.0;

function build() {
	for (var i = 0; i < cubes.length; i++) cubes[i].freepeer();
	cubes = [];
	for (var i = 0; i < count; i++) {
		var c = new JitterObject("jit.gl.gridshape", NODE);
		c.shape = "cube";
		c.poly_mode = [1, 1];          // wireframe front and back
		c.lighting_enable = 0;
		c.line_width = 2;
		c.depth_enable = 0;
		c.blend_enable = 1;
		cubes.push(c);
	}
}

function tick(t) {
	if (cubes.length !== count) build();
	t *= speed;
	for (var i = 0; i < cubes.length; i++) {
		var ph = i / count * Math.PI * 2;
		// each cube orbits on its own Lissajous path and tumbles at its own rate
		cubes[i].position = [0.75 * Math.sin(t * 0.31 + ph), 0.45 * Math.sin(t * 0.47 + ph * 1.7), 0.2 * Math.sin(t * 0.23 + ph)];
		cubes[i].rotatexyz = [(t * (23 + 7 * i)) % 360, (t * (31 + 5 * i)) % 360, (t * (13 + 3 * i)) % 360];
		var s = size * (0.8 + 0.4 * Math.sin(t * 0.9 + ph));
		cubes[i].scale = [s, s, s];
		// rainbow that keeps turning, each cube a different part of it (like the ring)
		cubes[i].color = [0.5 + 0.5 * Math.sin(t * 0.5 + ph), 0.5 + 0.5 * Math.sin(t * 0.5 + ph + 2.094),
		                  0.5 + 0.5 * Math.sin(t * 0.5 + ph + 4.188), 1];
	}
}

function msg_float(t) { tick(t); }
function anything() {
	var a = arrayfromargs(arguments);
	if (messagename === "count") { count = Math.max(1, Math.min(24, a[0] | 0)); build(); }
	else if (messagename === "size") size = a[0];
	else if (messagename === "speed") speed = a[0];
}

function notifydeleted() { for (var i = 0; i < cubes.length; i++) cubes[i].freepeer(); }
