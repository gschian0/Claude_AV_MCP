"""Tiny helper for writing .maxpat JSON with embedded gen codeboxes."""
import json, pathlib
STATE_DIR = pathlib.Path(__file__).resolve().parent / "state"
SAME_KIND = {"number": {"number", "flonum"}, "flonum": {"number", "flonum"}}
APPV = {"major": 9, "minor": 0, "revision": 0, "architecture": "x64", "modernui": 1}

class Patch:
    def __init__(self, rect, ns="box"):
        self.rect, self.ns, self.boxes, self.lines, self.n = rect, ns, [], [], 0
    def _id(self):
        self.n += 1; return f"obj-{self.n}"
    def box(self, maxclass, x, y, w, h, nin, nout, otypes=None, **kw):
        oid = self._id()
        b = {"id": oid, "maxclass": maxclass, "numinlets": nin, "numoutlets": nout, "patching_rect": [x, y, w, h], **kw}
        if nout: b["outlettype"] = otypes or [""] * nout
        self.boxes.append({"box": b}); return oid
    def obj(self, text, x, y, nin, nout, otypes=None, w=None, **kw):
        return self.box("newobj", x, y, w or max(36.0, 7.0 * len(text) + 14), 22.0, nin, nout, otypes, text=text, **kw)
    def msg(self, text, x, y, w=None):
        return self.box("message", x, y, w or 7.0 * len(text) + 18, 22.0, 2, 1, text=text)
    def comment(self, text, x, y, w=300.0):
        lines = int(7 * len(text) // w) + 1
        return self.box("comment", x, y, w, 20.0 * lines, 1, 0, text=text, linecount=lines)
    def wire(self, a, ao, b, bi):
        self.lines.append({"patchline": {"source": [a, ao], "destination": [b, bi]}})
    def to_dict(self):
        return {"fileversion": 1, "appversion": APPV, "classnamespace": self.ns, "rect": self.rect,
                "boxes": self.boxes, "lines": self.lines}
    def dump(self, path):
        state = STATE_DIR / (pathlib.Path(path).name + ".json")
        if state.exists():
            self.apply_state(json.load(open(state)), state.name)
        open(path, "w").write(json.dumps({"patcher": self.to_dict()}, indent=1) + "\n")

    def apply_state(self, items, label):
        """SAVED STATE block: on load, push each captured control value back into its control.
        Controls are matched by class + position. Display-only boxes (nothing connected out) are
        skipped; boxes that follow an [r ...] restore a beat later so they win over the broadcast."""
        boxes = {b["box"]["id"]: b["box"] for b in self.boxes}
        has_out = {l["patchline"]["source"][0] for l in self.lines}
        fed_by_r = {l["patchline"]["destination"][0] for l in self.lines
                    if boxes[l["patchline"]["source"][0]].get("text", "").startswith("r ")}
        def fmt(v):
            vals = v if isinstance(v, list) else [v]
            return " ".join(str(int(x)) if float(x).is_integer() else f"{x:.4g}" for x in vals)
        x0 = max(b["patching_rect"][0] + b["patching_rect"][2] for b in boxes.values()) + 40
        self.comment(f"SAVED STATE — re-applied on load (recipes/max/state/{label}; recapture with state_capture.maxpat)", x0, 10, 300)
        lb = self.obj("loadbang", x0, 70, 1, 1, ["bang"])
        early = self.obj("delay 600", x0, 96, 2, 1, ["bang"]); late = self.obj("delay 900", x0 + 80, 96, 2, 1, ["bang"])
        self.wire(lb, 0, early, 0); self.wire(lb, 0, late, 0)
        y = 130
        for it in items:
            kinds = SAME_KIND.get(it["cls"], {it["cls"]})
            hit = [b for b in boxes.values() if b["maxclass"] in kinds
                   and abs(b["patching_rect"][0] - it["at"][0]) <= 1 and abs(b["patching_rect"][1] - it["at"][1]) <= 1]
            if not hit or it["value"] is None or hit[0]["id"] not in has_out:
                continue
            m = self.msg(fmt(it["value"]), x0, y, 260); y += 26
            self.wire(late if hit[0]["id"] in fed_by_r else early, 0, m, 0); self.wire(m, 0, hit[0]["id"], 0)

def gen_sub(ns, code, n_in, n_out):
    """Gen subpatcher: [in k] -> codebox -> [out k]."""
    g = Patch([60.0, 60.0, 760.0, 560.0], ns)
    ins = [g.obj(f"in {i+1}", 20 + 60 * i, 15, 0, 1) for i in range(n_in)]
    cb = g.box("codebox", 20, 50, 700, 440, max(n_in, 1), n_out, code=code, fontface=0, fontname="<Monospaced>", fontsize=12.0)
    outs = [g.obj(f"out {i+1}", 20 + 60 * i, 510, 1, 0) for i in range(n_out)]
    for i, o in enumerate(ins): g.wire(o, 0, cb, i)
    for i, o in enumerate(outs): g.wire(cb, i, o, 0)
    return g.to_dict()

def check(path):
    d = json.load(open(path))["patcher"]
    ids = {b["box"]["id"]: b["box"] for b in d["boxes"]}
    bad = [l for l in d["lines"] if (s := l["patchline"]["source"])[0] not in ids or (t := l["patchline"]["destination"])[0] not in ids
           or s[1] >= ids[s[0]]["numoutlets"] or t[1] >= ids[t[0]]["numinlets"]]
    print(f"{path}: {len(ids)} boxes, {len(d['lines'])} cords, bad cords: {bad}")
