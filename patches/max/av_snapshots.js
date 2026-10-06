// Digital Symphony SNAPSHOTS — save / recall every control of every open instrument, live.
// Instruments are found in every open window under patches/max/, including ones embedded as
// bpatchers (digital_symphony.maxpat, granular_side.maxpat): each bpatcher's varname is its
// instrument name (jongly_chopper, conductor, ...). A snapshot is patches/max/snapshots/<name>.json:
//   { "saved": "...", "instruments": { "<instrument>": [ {cls, rect:[x,y,w,h], value}, ... ] } }
// Messages: store <n> · recall <n> · save <name> · load <name> · scope <all|instrument> · list
autowatch = 1;
inlets = 1;
outlets = 2;   // 0: status text (set ...) · 1: names for the saved-snapshots menu

var UI = { multislider: 1, number: 1, flonum: 1, toggle: 1, slider: 1, dial: 1, umenu: 1 };
var SKIP_KEYS = { snapshots: 1, state_capture: 1, demo: 1, av_receiver: 1, digital_symphony: 1, symphony: 1, granular_side: 1 };
// controls whose 0 is only a display value (the chopper's rate box): restoring 0 would stop the drums
var SKIP_ZERO = { jongly_chopper: [[640, 598]], jongly_granular: [[640, 598]] };
var scopeKey = "all";

function stem(n) { return String(n).replace(/\.maxpat$/, ""); }
// the folder of the saved patch we live in (embedded bpatchers have no filepath of their own: walk up)
function folder() {
	var p = this.patcher;
	while (p && !p.filepath && p.parentpatcher) p = p.parentpatcher;
	var fp = (p && p.filepath) ? p.filepath : "";
	return fp.substring(0, fp.lastIndexOf("/") + 1);
}
function snapdir() { return folder() + "snapshots/"; }
function status(t) { outlet(0, "set", t); post("snapshots: " + t + "\n"); }

// instrument name -> [patcher, ...] for everything open right now
function instruments() {
	var map = {};
	var w = max.frontpatcher ? max.frontpatcher.wind : null;
	var guard = 0;
	while (w && guard < 500) {
		var p = w.assoc;
		if (p && p.filepath && p.filepath.indexOf("patches/max/") >= 0) visit(p, stem(p.name), map, 0);
		w = w.next; guard++;
	}
	return map;
}
function visit(p, key, map, depth) {
	if (!SKIP_KEYS[key]) { if (!map[key]) map[key] = []; map[key].push(p); }
	if (depth > 3) return;
	for (var o = p.firstobject; o; o = o.nextobject) {
		if (o.maxclass !== "bpatcher") continue;
		var sp = null;
		try { sp = o.subpatcher(); } catch (e) { sp = null; }
		if (!sp) continue;
		var k = o.varname || (sp.name ? stem(sp.name) : "");
		if (k) visit(sp, k, map, depth + 1);
	}
}
function hasOutputs(o) {
	try { if (o.patchcords && o.patchcords.outputs) return o.patchcords.outputs.length > 0; } catch (e) {}
	return true;
}
function collect(p) {
	var items = [];
	for (var o = p.firstobject; o; o = o.nextobject) {
		if (!UI[o.maxclass]) continue;
		var v = null;
		try { v = o.getvalueof(); } catch (e) { v = null; }
		if (v !== null && typeof v === "object" && v.length !== undefined) { var a = []; for (var i = 0; i < v.length; i++) a.push(v[i]); v = a; }
		items.push({ cls: o.maxclass, rect: [o.rect[0], o.rect[1], o.rect[2] - o.rect[0], o.rect[3] - o.rect[1]], value: v });
	}
	return items;
}

function writeText(path, text) {
	var f = new File(path, "write", "TEXT");
	if (!f.isopen) { status("can't write " + path); return false; }
	f.eof = 0;
	for (var i = 0; i < text.length; i += 1000) f.writestring(text.substr(i, 1000));
	f.close(); return true;
}
function readText(path) {
	var f = new File(path, "read", "TEXT");
	if (!f.isopen) return null;
	var s = "";
	while (f.position < f.eof) s += f.readstring(800);
	f.close(); return s;
}

function save(name) {
	name = String(name);
	var map = instruments(), snap = { saved: new Date().toString(), instruments: {} }, n = 0, k;
	for (k in map) { var items = collect(map[k][0]); if (items.length) { snap.instruments[k] = items; n += items.length; } }
	if (writeText(snapdir() + name + ".json", JSON.stringify(snap, null, 1)))
		status("saved " + name + ": " + n + " controls in " + Object.keys(snap.instruments).length + " instruments");
	list();
}
function load(name) {
	name = String(name);
	var text = readText(snapdir() + name + ".json");
	if (text === null) { status("no snapshot " + name); return; }
	var snap = JSON.parse(text), map = instruments(), n = 0, missing = [], k;
	for (k in snap.instruments) {
		if (scopeKey !== "all" && k !== scopeKey) continue;
		if (!map[k]) { missing.push(k); continue; }
		var skip0 = SKIP_ZERO[k] || [];
		for (var pi = 0; pi < map[k].length; pi++) n += apply(map[k][pi], snap.instruments[k], skip0);
	}
	status("recalled " + name + (scopeKey === "all" ? "" : " (" + scopeKey + " only)") + ": " + n + " controls" +
	       (missing.length ? " · not open: " + missing.join(", ") : ""));
}
function apply(p, items, skip0) {
	var objs = [], o, n = 0;
	for (o = p.firstobject; o; o = o.nextobject) if (UI[o.maxclass]) objs.push(o);
	for (var i = 0; i < items.length; i++) {
		var it = items[i];
		if (it.value === null) continue;
		for (var j = 0; j < objs.length; j++) {
			o = objs[j];
			var same = o.maxclass === it.cls || ((o.maxclass === "number" || o.maxclass === "flonum") && (it.cls === "number" || it.cls === "flonum"));
			if (!same || Math.abs(o.rect[0] - it.rect[0]) > 1 || Math.abs(o.rect[1] - it.rect[1]) > 1) continue;
			if (!hasOutputs(o)) break;
			var isZero = (typeof it.value === "number" && it.value === 0) || (it.value.length === 1 && it.value[0] === 0);
			var z = false; for (var s = 0; s < skip0.length; s++) if (Math.abs(skip0[s][0] - it.rect[0]) <= 1 && Math.abs(skip0[s][1] - it.rect[1]) <= 1) z = true;
			if (z && isZero) break;
			try { o.setvalueof(it.value); n++; } catch (e) {}
			break;
		}
	}
	return n;
}

function store(n) { save("slot" + n); }
function recall(n) { load("slot" + n); }
function scope(k) { scopeKey = String(k); status("recall scope: " + scopeKey); }
function list() {
	var f = new Folder(snapdir()), names = [];
	f.typelist = [];
	while (!f.end) { if (/\.json$/.test(f.filename)) names.push(f.filename.replace(/\.json$/, "")); f.next(); }
	f.close();
	names.sort();
	outlet(1, "clear");
	for (var i = 0; i < names.length; i++) outlet(1, "append", names[i]);
}
function bang() {}   // an empty "on the bar" release sends a bang: ignore it
