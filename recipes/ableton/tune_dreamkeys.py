import live
def by_name(ti, di, values):
    d = live.cmd("get_device_parameters", track_index=ti, device_index=di)["device"]
    names = {p["name"].strip(): p["index"] for p in d["parameters"]}
    for k, v in values.items():
        if k in names: live.cmd("set_device_parameter", track_index=ti, device_index=di, parameter_index=names[k], value=float(v))
        else: print("missing", d["name"], k, sorted(names)[:40])
if __name__ == "__main__":
    idx = {live.cmd("get_track_info", track_index=i)["name"]: i for i in range(live.cmd("get_session_info")["track_count"])}
    ti = idx["Dream Keys"]
    by_name(ti, 3, {"Dry Wet": 0.25, "Feedback": 0.42, "Wobble On": 1, "Wobble Amt": 0.25})   # Echo: soft tape echo
    by_name(ti, 4, {"Dry/Wet": 0.38})                                                           # Hybrid Reverb: big but behind
    print("dream keys tuned")
