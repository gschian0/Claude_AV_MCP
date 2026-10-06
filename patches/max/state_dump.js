// Walks every open Max window, records the value of each UI control in the
// Digital Symphony patches, and writes captured_state.json next to this file.
// Run it by opening state_capture.maxpat (it fires on load) or clicking its button.
autowatch = 1;
inlets = 1;
outlets = 1;

var UI = { multislider: 1, number: 1, flonum: 1, toggle: 1, slider: 1, dial: 1, umenu: 1 };

function bang() {
	var out = {};
	var count = 0;
	var w = max.frontpatcher ? max.frontpatcher.wind : null;
	var guard = 0;
	while (w && guard < 500) {
		var p = w.assoc;
		if (p && p.filepath && p.filepath.indexOf("patches/max/") >= 0 && p.name.indexOf("state_capture") < 0) {
			var items = collect(p);
			if (!out[p.filepath]) out[p.filepath] = [];
			out[p.filepath].push(items);
			count += items.length;
		}
		w = w.next;
		guard++;
	}
	var text = JSON.stringify(out, null, 1);
	var path = folder() + "captured_state.json";
	var f = new File(path, "write", "TEXT");
	f.eof = 0;
	for (var i = 0; i < text.length; i += 1000) f.writestring(text.substr(i, 1000));
	f.close();
	post("state_dump: " + count + " controls from " + Object.keys(out).length + " patches -> " + path + "\n");
	outlet(0, "done", count);
}

function collect(p) {
	var items = [];
	for (var o = p.firstobject; o; o = o.nextobject) {
		if (!UI[o.maxclass]) continue;
		var v = null;
		try { v = o.getvalueof(); } catch (e) { v = null; }
		if (v !== null && typeof v === "object" && v.length !== undefined) {
			var a = []; for (var i = 0; i < v.length; i++) a.push(v[i]); v = a;
		}
		items.push({ cls: o.maxclass, rect: [o.rect[0], o.rect[1], o.rect[2], o.rect[3]], value: v });
	}
	return items;
}

function folder() {
	var fp = this.patcher.filepath;
	return fp.substring(0, fp.lastIndexOf("/") + 1);
}
