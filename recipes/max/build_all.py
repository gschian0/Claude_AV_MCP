"""Rebuild every Digital Symphony Max patch into patches/max/.

    python3 recipes/max/build_all.py
"""
import pathlib, subprocess, sys

here = pathlib.Path(__file__).resolve().parent
out = here.parent.parent / "patches" / "max"
for recipe in ["tampura_drone.py", "bassline.py", "jungle_bass.py", "glass_bells.py", "feedback_and_chopper.py", "state_tools.py"]:
    subprocess.run([sys.executable, str(here / recipe), str(out)], check=True, cwd=here)
