"""python3 play_part.py 1   → Warp Garden (118 BPM, slot 1)
   python3 play_part.py 2   → Jungle breakdown (170 BPM, slot 2)"""
import live, sys
part = int(sys.argv[1]) if len(sys.argv) > 1 else 1
slot, tempo = {1: (0, 118.0), 2: (1, 170.0)}[part]
live.cmd("set_tempo", tempo=tempo)
for i in range(live.cmd("get_session_info")["track_count"]):
    t = live.cmd("get_track_info", track_index=i)
    if t["clip_slots"][slot].get("has_clip"): live.cmd("fire_clip", track_index=i, clip_index=slot)
    else: live.cmd("stop_clip", track_index=i, clip_index=0)
live.cmd("start_playback"); print("part", part, "at", tempo, "BPM")
