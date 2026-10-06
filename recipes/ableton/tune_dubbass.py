import live
from tune_dreamkeys import by_name
idx = {live.cmd("get_track_info", track_index=i)["name"]: i for i in range(live.cmd("get_session_info")["track_count"])}
ti = idx["Dub Bass"]
by_name(ti, 0, {"Volume": 0.6, "Osc-A Feedb": 15, "Ae Release": 0.35})                # Operator: sine sub, a touch of feedback grit
by_name(ti, 1, {"Drive": 0.68, "Output": 0.6})                                         # Saturator: weight + harmonics that read on small speakers
by_name(ti, 2, {"Frequency": 0.38, "Resonance": 0.3, "LFO Amount": 0.15, "Env Amount": 0.3})  # Auto Filter: dark, slow breathing
print("dub bass tuned")
