"""Bake a live snapshot (patches/max/snapshots/<name>.json, saved from snapshots.maxpat) into the
recipes' startup state, recipes/max/state/<instrument>.maxpat.json, so the set opens that way.

    python3 recipes/max/bake_snapshot.py slot3 && python3 recipes/max/build_all.py
"""
import json, pathlib, sys
here = pathlib.Path(__file__).resolve().parent
name = sys.argv[1] if len(sys.argv) > 1 else "slot1"
snap = json.load(open(here.parent.parent / "patches" / "max" / "snapshots" / f"{name}.json"))
EXCLUDE = {"jongly_chopper": [[640, 598]], "jongly_granular": [[640, 598]]}   # display-only rate box (see save_state.py)
for inst, items in snap["instruments"].items():
    keep = [{"cls": it["cls"], "at": it["rect"][:2], "value": it["value"]} for it in items
            if it["rect"][:2] not in EXCLUDE.get(inst, [])]
    (here / "state" / f"{inst}.maxpat.json").write_text(json.dumps(keep, indent=1) + "\n")
    print(f"baked {inst}: {len(keep)} controls")
