"""symphony.maxpat — every instrument's control panel in one window (bpatchers of the
presentation views). Open this INSTEAD of the individual patches: it runs one copy of each."""
import json, sys
from maxgen import Patch, check
out = sys.argv[1]

def panel_size(name):
    d = json.load(open(f"{out}/{name}"))["patcher"]
    r = [b["box"]["presentation_rect"] for b in d["boxes"] if b["box"].get("presentation")]
    return [max(x + w for x, y, w, h in r) + 10, max(y + h for x, y, w, h in r) + 10]

ROWS = [["jongly_chopper.maxpat", "gen_feedback.maxpat"],
        ["sine_test.maxpat", "glass_bells.maxpat"],
        ["bassline.maxpat"],
        ["jungle_bass.maxpat"]]
p = Patch([0.0, 40.0, 1500.0, 940.0])
p.present = False
p.comment("DIGITAL SYMPHONY — every instrument in one window. Open this instead of the single patches (it runs one copy of each). Turn audio on with any speaker. Visuals: keys work in fullscreen (see the feedback panel).", 10, 6, 1400)
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
for row in ROWS:
    print("   ", "  |  ".join(f"{n}: {panel_size(n)}" for n in row))
