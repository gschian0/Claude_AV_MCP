import json, socket, sys
def cmd(t, **p):
    s = socket.create_connection(("127.0.0.1", 9877), timeout=30)
    s.sendall(json.dumps({"type": t, "params": p}).encode())
    buf = b""
    while True:
        ch = s.recv(65536)
        if not ch: break
        buf += ch
        try: r = json.loads(buf); break
        except ValueError: continue
    s.close()
    if r.get("status") == "error": raise RuntimeError(f"{t}: {r.get('message')}")
    return r.get("result", r)
if __name__ == "__main__":
    print(json.dumps(cmd(sys.argv[1], **json.loads(sys.argv[2] if len(sys.argv) > 2 else "{}")), indent=1)[:4000])
