"""python3 play_part.py 1   → Warp Garden (118 BPM, slot 1)
   python3 play_part.py 2   → Jungle breakdown (170 BPM, slot 2)
   python3 play_part.py 3   → Half-time trip-hop (85 BPM, slot 3)
   python3 play_part.py 4   → Warp Garden B section (118 BPM, slot 4)
   python3 play_part.py 5   → Jungle breakdown 2 + dub bass (170 BPM, slot 5)
   python3 play_part.py 6   → Classic jump-up DnB outro (174 BPM, slot 6)
   python3 play_part.py 7   → Vintage reggae / dub breakdown (75 BPM, slot 7)
   python3 play_part.py 8   → Classic roots reggae (75 BPM, slot 8)"""
import live, sys
part = int(sys.argv[1]) if len(sys.argv) > 1 else 1
slot, tempo = {1: (0, 118.0), 2: (1, 170.0), 3: (2, 85.0), 4: (3, 118.0), 5: (4, 170.0), 6: (5, 174.0), 7: (6, 75.0), 8: (7, 75.0)}[part]
live.cmd("set_tempo", tempo=tempo)
if part in (7, 8): import reggae_fx; reggae_fx.set_fx("dub" if part == 7 else "classic")   # shared tracks, different FX
for i in range(live.cmd("get_session_info")["track_count"]):
    t = live.cmd("get_track_info", track_index=i)
    if t["clip_slots"][slot].get("has_clip"): live.cmd("fire_clip", track_index=i, clip_index=slot)
    else: live.cmd("stop_clip", track_index=i, clip_index=0)
live.cmd("start_playback"); print("part", part, "at", tempo, "BPM")
