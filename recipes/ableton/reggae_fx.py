"""Echo/Reverb settings for the reggae tracks. The tracks are shared by part 7 (dub) and part 8 (classic), so
play_part.py switches the FX with the part:  dub = dark dotted-1/8 tape echo throws, classic = nearly dry, a touch of spring."""
import live
from tune_dreamkeys import by_name
FX = {"dub":     [("Skank Guitar", .32, .55, .3), ("Melodica", .35, .5, .25), ("Dub Horns", .3, .5, .25), ("Reggae Drums", .16, .45, .5)],
      "classic": [("Skank Guitar", .08, .25, .3), ("Melodica", .1, .25, .25), ("Dub Horns", .08, .2, .25), ("Reggae Drums", 0.0, .2, .5)]}
VERB = {"dub": .22, "classic": .14}
def set_fx(mode):
    idx = {live.cmd("get_track_info", track_index=i)["name"]: i for i in range(live.cmd("get_session_info")["track_count"])}
    for name, wet, fb, hp in FX[mode]:
        if name not in idx: continue
        ti = idx[name]
        devs = [x["name"] for x in live.cmd("get_track_info", track_index=ti)["devices"]]
        by_name(ti, devs.index("Echo"), {"L Sync": 1, "L Division": -3, "L Sync Mode": 2, "Link": 1, "Feedback": fb,
                                         "Filter On": 1, "HP Freq": hp, "LP Freq": .55, "Wobble On": 1, "Wobble Amt": .3 if mode == "dub" else .1,
                                         "Noise On": 1, "Noise Amt": .12 if mode == "dub" else .05, "Dry Wet": wet})
        by_name(ti, devs.index("Reverb"), {"Decay Time": .35, "Room Size": .45, "Dry/Wet": VERB[mode], "Predelay": .1})
    print("reggae FX:", mode)
