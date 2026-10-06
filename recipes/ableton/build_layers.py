"""Layer full-quality (mostly sampled) library sounds under the synth/physical-model parts for a fatter mix.
Each layer track copies every clip of its source track (all slots), with a pitch transform, and ends in a Utility gain trim."""
import live
from tune_dreamkeys import by_name
def tracks(): return {live.cmd("get_track_info", track_index=i)["name"]: i
                      for i in range(live.cmd("get_session_info")["track_count"])}
LAYERS = [  # layer name, source track, preset uri, transpose, utility gain dB
 ("Keys Layer · Grand Piano",  "Dream Keys",   "query:Sounds#Piano%20&%20Keys:FileId_14453", 0,  -7),
 ("Pad Layer · Ensemble",      "Meld Pad",     "query:Sounds#Pad:FileId_14499",              0,  -8),
 ("Bass Layer · Analog",       "Tension Bass", "query:Sounds#Bass:FileId_14764",             0,  -6),
 ("Dub Mid · Saturated",       "Dub Bass",     "query:Sounds#Bass:FileId_14775",             12, -9),   # octave up: dub line reads on small speakers
 ("Kick Sub · Boom",           "Kick",         "query:Sounds#Bass:FileId_14778",             -10, -6),  # DS kick note 48 -> D2 (38), in key
 ("Drum Layer · 909",          "Jungle Kit",   "query:Drums#FileId_15006",                   None, -6),
]
# DS Drum Rack pad -> role (FM zaps / clang have no layer)
DS_ROLE = {36: "kick", 38: "clap", 39: "snare", 40: "snare", 41: "tom", 43: "tom", 47: "tom",
           42: "closed", 44: "closed", 46: "open", 49: "crash", 51: "crash"}
ROLE_KEYS = {"kick": ["kick", "bass drum", "bd"], "snare": ["snare", "sd"], "clap": ["clap", "cp"], "tom": ["tom"],
             "closed": ["closed", "hh c", "chh", "hihat", "hi-hat", "hat"], "open": ["open", "ohh"], "crash": ["crash", "cymbal", "ride"]}

def drum_map(ti):
    d = live.cmd("get_device_parameters", track_index=ti, device_index=0)["device"]
    names = []
    for i, c in enumerate(d.get("chains", [])):
        nm = " ".join([c.get("name") or ""] + [x["name"] for x in c.get("devices", [])]).lower()
        names.append((36 + i, nm))
    print("  909 pads:", names)
    m = {}
    for role, keys in ROLE_KEYS.items():
        for k in keys:
            hit = next((note for note, nm in names if k in nm and not (role == "closed" and "open" in nm)), None)
            if hit: m[role] = hit; break
    print("  role map:", m)
    return {ds: m[r] for ds, r in DS_ROLE.items() if r in m}

idx = tracks()
for name, src, uri, tr, gain in LAYERS:
    if name not in idx:
        ti = live.cmd("get_session_info")["track_count"]
        live.cmd("create_midi_track", index=-1); live.cmd("set_track_name", track_index=ti, name=name)
        live.cmd("load_browser_item", track_index=ti, item_uri=uri)
        live.cmd("load_browser_item", track_index=ti, item_uri="query:AudioFx#Utility")
        idx = tracks()
    ti, si = idx[name], idx[src]
    devs = live.cmd("get_track_info", track_index=ti)["devices"]
    # Utility Gain is normalized -1..1 (0 = 0 dB, +1 = +35 dB); gain/35 is an approximate trim
    util = {"Gain": max(-1.0, gain / 35.0)}
    if "Bass" in name or "Dub" in name or "Kick" in name or "Drum" in name: util["Bass Mono"] = 1
    by_name(ti, len(devs) - 1, util)
    remap = drum_map(ti) if tr is None else None
    slots = live.cmd("get_track_info", track_index=si)["clip_slots"]
    for s, slot in enumerate(slots):
        if not slot.get("has_clip"): continue
        c = live.cmd("get_clip_notes", track_index=si, clip_index=s)
        notes = []
        for x in c["notes"]:
            p = remap.get(x["pitch"]) if remap is not None else x["pitch"] + tr
            if p is None: continue
            notes.append({"pitch": p, "start_time": x["start_time"], "duration": x["duration"],
                          "velocity": x["velocity"], "mute": x["mute"]})
        if live.cmd("get_track_info", track_index=ti)["clip_slots"][s].get("has_clip"):
            live.cmd("delete_clip", track_index=ti, clip_index=s)
        live.cmd("create_clip", track_index=ti, clip_index=s, length=float(c["length"]))
        live.cmd("add_notes_to_clip", track_index=ti, clip_index=s, notes=notes)
        live.cmd("set_clip_name", track_index=ti, clip_index=s, name=f"{name} ← {c['clip_name']}")
    print(name, "←", src, [d["name"] for d in live.cmd("get_track_info", track_index=ti)["devices"]],
          sum(1 for s in slots if s.get("has_clip")), "clips")
