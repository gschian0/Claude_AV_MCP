"""symphony.maxpat — every instrument's control panel in one window (bpatchers of the
presentation views). Open this INSTEAD of the individual patches: it runs one copy of each."""
import json, sys
from maxgen import Patch, check
out = sys.argv[1]

def panel_size(name):
    d = json.load(open(f"{out}/{name}"))["patcher"]
    r = [b["box"]["presentation_rect"] for b in d["boxes"] if b["box"].get("presentation")]
    return [max(x + w for x, y, w, h in r) + 10, max(y + h for x, y, w, h in r) + 10]

ROWS = [["conductor.maxpat"],
        ["jongly_chopper.maxpat"],
        ["gen_feedback.maxpat", "vocal_chops.maxpat"],
        ["sine_test.maxpat", "glass_bells.maxpat"],
        ["bassline.maxpat"],
        ["jungle_bass.maxpat"]]
p = Patch([0.0, 40.0, 1500.0, 940.0])
p.present = False
p.comment("DIGITAL SYMPHONY — the conductor on top runs everything; every instrument's panel below. Open this instead of the single patches (it runs one copy of each). Turn audio on with any speaker. Visuals: keys work in fullscreen (see the feedback panel).", 10, 6, 1400)
y = 40
for row in ROWS:
    x, row_h = 10, 0
    for name in row:
        w, h = panel_size(name)
        p.comment(name.replace(".maxpat", "").replace("_", " ").upper(), x, y, 300)
        p.box("bpatcher", x, y + 22, w, h, 0, 0, name=name, offset=[0.0, 0.0], embed=0, bgmode=0, border=1,
              clickthrough=0, enablehscroll=0, enablevscroll=0, lockeddragscroll=0, viewvisibility=1)
        x += w + 20; row_h = max(row_h, h + 22)
    y += row_h + 20
p.rect = [0.0, 40.0, 1500.0, min(y, 940.0)]
p.dump(f"{out}/symphony.maxpat"); check(f"{out}/symphony.maxpat")

# digital_symphony.maxpat: the same layout with every instrument EMBEDDED, so the whole set is one patch file.
# It still needs its neighbours in patches/max: the av_*.js scripts and buddha_smear~.maxpat (pfft~ loads it by name).
for b in p.boxes:
    box = b["box"]
    if box["maxclass"] == "bpatcher":
        box["embed"] = 1
        box["patcher"] = json.load(open(f"{out}/{box['name']}"))["patcher"]
        del box["name"]
p.boxes[0]["box"]["text"] = ("DIGITAL SYMPHONY (all-in-one) — every instrument embedded in this one file; the conductor on top runs everything. "
                             "Keep it in patches/max next to the av_*.js scripts and buddha_smear~.maxpat.")
p.dump(f"{out}/digital_symphony.maxpat"); check(f"{out}/digital_symphony.maxpat")
for row in ROWS:
    print("   ", "  |  ".join(f"{n}: {panel_size(n)}" for n in row))

# granular_side.maxpat: the granular chopper in its OWN window, to open next to digital_symphony / symphony.
# It is not inside those patches, so there is only ever one copy running. It follows the speed chopper's clock
# (receive~ jongly_phase) and the conductor's "gran" fader across windows.
w, h = panel_size("jongly_granular.maxpat")
g = Patch([0.0, 40.0, w + 20, h + 50])
g.present = False
g.comment("JONGLY GRANULAR — open next to digital_symphony.maxpat (it syncs to the speed chopper there). Don't also open jongly_granular.maxpat.", 10, 6, w)
gb = g.box("bpatcher", 10, 28, w, h, 0, 0, offset=[0.0, 0.0], embed=1, bgmode=0, border=1, clickthrough=0,
           enablehscroll=0, enablevscroll=0, lockeddragscroll=0, viewvisibility=1)
g.boxes[-1]["box"]["patcher"] = json.load(open(f"{out}/jongly_granular.maxpat"))["patcher"]
g.dump(f"{out}/granular_side.maxpat"); check(f"{out}/granular_side.maxpat")
