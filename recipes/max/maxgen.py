"""Tiny helper for writing .maxpat JSON with embedded gen codeboxes."""
import json, pathlib
STATE_DIR = pathlib.Path(__file__).resolve().parent / "state"
SAME_KIND = {"number": {"number", "flonum"}, "flonum": {"number", "flonum"}}
PANEL_UI = {"multislider", "number", "flonum", "toggle", "slider", "button", "ezdac~", "umenu", "textedit"}
APPV = {"major": 9, "minor": 0, "revision": 0, "architecture": "x64", "modernui": 1}

class Patch:
    def __init__(self, rect, ns="box"):
        self.rect, self.ns, self.boxes, self.lines, self.n = rect, ns, [], [], 0
        self.present = False   # True: open in presentation mode showing only the controls (used by symphony.maxpat)
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
        d = {"fileversion": 1, "appversion": APPV, "classnamespace": self.ns, "rect": self.rect,
             "boxes": self.boxes, "lines": self.lines}
        if self.present:
            d["openinpresentation"] = 1
        return d

    def make_panel(self):
        """Presentation view = the controls, their labels and the preset/action messages, at their
        patching positions shifted to the top-left. Plumbing (objects, internal messages) stays hidden."""
        boxes = {b["box"]["id"]: b["box"] for b in self.boxes}
        srcs = {}
        for l in self.lines:
            srcs.setdefault(l["patchline"]["destination"][0], []).append(boxes[l["patchline"]["source"][0]])
        def trigger_ok(src):   # messages fired by load or by an auto-picker [sel 0 1 2 3 4 ...] are still user presets
            t = src.get("text", "")
            return t == "loadbang" or (t.startswith("delay") and t not in ("delay 600", "delay 900")) \
                or (t.startswith("sel ") and len(t.split()) >= 6)
        show = []
        for b in boxes.values():
            c = b["maxclass"]
            if c in PANEL_UI or (c == "comment" and not b.get("text", "").startswith("SAVED STATE")) \
                    or (c == "message" and all(trigger_ok(s) for s in srcs.get(b["id"], []))):
                show.append(b)
        def squeeze(spans, gap=12):
            """Map a coordinate so that empty stretches (where hidden plumbing sat) shrink to `gap` px."""
            spans = sorted(spans); cuts = []; end = spans[0][0]; removed = spans[0][0] - 10
            for a, b in spans:
                if a - end > gap: removed += (a - end) - gap
                if a > end: cuts.append((a, removed))
                end = max(end, b)
            cuts.insert(0, (spans[0][0], spans[0][0] - 10))
            return lambda v: v - max(r for a, r in cuts if a <= v)
        fx = squeeze([(b["patching_rect"][0], b["patching_rect"][0] + b["patching_rect"][2]) for b in show])
        fy = squeeze([(b["patching_rect"][1], b["patching_rect"][1] + b["patching_rect"][3]) for b in show])
        for b in show:
            x, y, w, h = b["patching_rect"]
            b["presentation"] = 1; b["presentation_rect"] = [fx(x), fy(y), w, h]
        self.panel_size = [max(b["presentation_rect"][0] + b["presentation_rect"][2] for b in show) + 10,
                           max(b["presentation_rect"][1] + b["presentation_rect"][3] for b in show) + 10]
    def dump(self, path):
        state = STATE_DIR / (pathlib.Path(path).name + ".json")
        if state.exists():
            self.apply_state(json.load(open(state)), state.name)
        if self.present:
            self.make_panel()
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

def add_pocket(p, clocks, x, y, top, dip):
    """POCKET: on every beat (each 4th jongly step) the bass's lowpass dips and its level ducks a little, then
    both recover over ~260 ms, so the bass breathes with the drums. Gentle by design: at amount 1 the cutoff
    drops by `dip` (fraction of `top` Hz) and the level by 30%. Returns (cutoff signal, gain signal)."""
    S = ["signal"]
    p.comment("POCKET — each beat the filter dips + level ducks a touch, then opens (amount 0-1; conductor: av_pocket)", x, y, 330)
    amt = p.box("flonum", x, y + 44, 50, 22, 1, 2, ["", "bang"], format=6, minimum=0.0, maximum=1.0)
    p.wire(p.obj("loadmess 0.5", x + 60, y + 44, 1, 1), 0, amt, 0); p.wire(p.obj("r av_pocket", x + 150, y + 44, 0, 1), 0, amt, 0)
    b4 = p.obj("% 4", x, y + 74, 2, 1, ["int"])
    for c in clocks: p.wire(c, 0, b4, 0)
    bs = p.obj("sel 0", x, y + 100, 2, 2, ["bang", ""]); p.wire(b4, 0, bs, 0)
    em = p.msg("0, 1 260", x, y + 126); p.wire(bs, 0, em, 0)
    env = p.obj("line~ 1", x, y + 152, 2, 2, S + ["bang"]); p.wire(em, 0, env, 0)
    inv = p.obj("!-~ 1", x, y + 178, 2, 1, S); p.wire(env, 0, inv, 0)
    d = p.obj("*~ 0.5", x, y + 204, 2, 1, S); p.wire(inv, 0, d, 0); p.wire(amt, 0, d, 1)
    cm = p.obj(f"*~ {-top*dip:g}", x + 90, y + 230, 2, 1, S); p.wire(d, 0, cm, 0)
    cut = p.obj(f"+~ {top:g}", x + 90, y + 256, 2, 1, S); p.wire(cm, 0, cut, 0)
    gm = p.obj("*~ -0.3", x, y + 230, 2, 1, S); p.wire(d, 0, gm, 0)
    gain = p.obj("+~ 1.", x, y + 256, 2, 1, S); p.wire(gm, 0, gain, 0)
    return cut, gain
