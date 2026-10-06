"""Bake patches/max/captured_state.json (written by state_capture.maxpat) into
recipes/max/state/<patch>.json, which maxgen.Patch.dump() turns into a
SAVED STATE block that re-applies every control on load.

    python3 recipes/max/save_state.py && python3 recipes/max/build_all.py
"""
import json, pathlib

here = pathlib.Path(__file__).resolve().parent
captured = here.parent.parent / "patches" / "max" / "captured_state.json"
state_dir = here / "state"
# render/fullscreen toggles are performance switches, not settings: don't bake "render off" into the visuals
SKIP = {"gen_feedback.maxpat"}

state_dir.mkdir(exist_ok=True)
for path, instances in json.load(open(captured)).items():
    name = path.rsplit("/", 1)[-1]
    if name in SKIP:
        print(f"skip  {name}"); continue
    if len(instances) > 1:
        print(f"note  {name} was open {len(instances)} times; using the front-most copy")
    items = [{"cls": it["cls"], "at": it["rect"][:2], "value": it["value"]} for it in instances[0]]
    (state_dir / f"{name}.json").write_text(json.dumps(items, indent=1) + "\n")
    print(f"saved {name}: {len(items)} controls")
