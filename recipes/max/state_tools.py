"""The state capture patch: open it while the instruments are open and it writes
patches/max/captured_state.json (see state_dump.js). Then run
`python3 recipes/max/save_state.py` to bake that snapshot into the recipes."""
import sys
from maxgen import Patch, check
out = sys.argv[1]
p = Patch([100.0, 100.0, 420.0, 200.0])
p.comment("STATE CAPTURE — reads every open Digital Symphony patch's controls on open (or click) → captured_state.json", 20, 8, 380)
lb = p.obj("loadbang", 20, 60, 1, 1, ["bang"]); dl = p.obj("delay 300", 20, 86, 2, 1, ["bang"]); p.wire(lb, 0, dl, 0)
b = p.box("button", 120, 60, 24, 24, 1, 1, ["bang"]); p.comment("capture again", 148, 62, 100)
js = p.obj("js state_dump.js", 20, 116, 1, 1); p.wire(dl, 0, js, 0); p.wire(b, 0, js, 0)
pr = p.obj("print state", 20, 146, 1, 0); p.wire(js, 0, pr, 0)
p.dump(f"{out}/state_capture.maxpat"); check(f"{out}/state_capture.maxpat")
