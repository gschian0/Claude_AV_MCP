# Plan

Goal: an AV rig where Claude can **build** the instruments and visuals and
**conduct** a live set — first on a MacBook Pro M5 (32 GB) with Ableton +
Max, then on a cheap Linux laptop with an all-open-source stack.

Each phase ends with something you can demo. Don't start a phase until the
previous demo works end-to-end.

---

## Phase 0 — Plumbing (this commit)

- [x] Repo layout, `av-conductor` MCP server, OSC scene model, tests
- [x] Receiver patches for Max and Pd
- [x] `.mcp.json` wiring all three servers for Claude Code
- [ ] **On the Mac:** run `scripts/fetch_upstream.sh` (inits the `vendor/`
      submodules), install the Ableton Remote Script,
      `npm install` in the Max agent patch
- [ ] Verify each server alone: ask Claude "what tracks are in my set?"
      (Ableton) and "explain the selected objects" (Max)
- [ ] `av-osc-monitor --port 7499`, enable the `monitor` target, call
      `set_scene` — see messages arrive

**Demo:** one prompt that creates a Live MIDI clip *and* a Max object, then
`recall_cue drop` shows up in the monitor.

## Phase 1 — Audio ⇄ control loop (Mac)

- [ ] Sync: enable **Ableton Link** in Live; Max gets it via the Link package (`[link.phasor~]`,
      from the Package Manager) so Max patches lock to Live's beat
- [ ] Audio into Max for analysis — either a **Max for Live** device on the
      master (needs Live Suite) or route Live → BlackHole → Max `[adc~]`
- [ ] Analysis patch: `[peakamp~]`/envelope follower + 3-band energy
      (`[fffb~]` or `[pfft~]`), sending OSC **directly** to the visuals port
      (realtime plane, ~60 Hz)
- [ ] Map `[r av-energy]` to something audible (filter, reverb send, density)
- [ ] Prompt library in `prompts/` — reusable, tested prompts like
      "build a 4-bar drop and ramp energy to 1 over 8 bars"

**Demo:** Claude ramps `energy` 0→1 over 16 s; Live filter opens via Max,
and the analysis stream reflects it.

## Phase 2 — Choose & wire the visual engine

See [visuals/README.md](../visuals/README.md) for the candidates and
criteria. Pick by running the same 30-minute test in each: receive
`/av/scene/energy` + `/av/scene/palette` + a per-frame audio band, and
render something that responds to all three.

- [ ] Pick engine (Mac-first, but weight Linux availability heavily)
- [ ] Receiver sketch in `visuals/<engine>/`
- [ ] If it needs non-OSC transport, add a `Target` in `src/av_mcp/adapters/`
- [ ] Optional: a small **visuals MCP** so Claude can author the visuals
      too (e.g. write/hot-reload a shader file, switch scenes) — the
      authoring-plane equivalent of the Max server

**Demo:** a full minute where a prompt-driven cue change visibly and audibly
transforms in sync.

## Phase 3 — Performance tooling

- [ ] Persist cues to disk (`cues/*.toml`), set lists (ordered cues with
      durations)
- [ ] `ramp` curves (exp/log/s-curve), beat-quantised cue changes (read
      Link beat via a Max/Pd → conductor OSC return path)
- [ ] Safety: "panic" tool (energy 0, stop clips), rate limiting, a dry-run
      mode that only prints OSC
- [ ] A physical controller (MIDI) as an override that always wins over Claude
- [ ] Recording: capture each show's tool calls + OSC to replay/iterate

## Phase 4 — Linux port (open source)

See [LINUX_PORT.md](LINUX_PORT.md). Because everything between programs is
OSC + Link, the port is mostly: swap the *authoring* servers, keep the
conductor and the receivers.

- [ ] Pure Data replaces Max — write a **pd-mcp** server (Pd's FUDI
      `[netreceive]` + dynamic patching messages map almost 1:1 onto the
      MaxMSP-MCP tool set)
- [ ] DAW replacement: Ardour (has an OSC surface) *or* go DAW-less with
      SuperCollider/Pd — decide after Phase 3 based on how much you lean
      on Live's clip launcher
- [ ] Open-source visual engine (if Phase 2 chose a Mac-only one)
- [ ] PipeWire/JACK audio routing, `abl_link~` in Pd for sync
- [ ] Local LLM option via an MCP-capable open-source client, if fully
      offline is a requirement (expect weaker tool use than Claude)

**Demo:** the Phase 2 demo, same cues, on the Linux laptop.

---

## Open decisions

| Decision | When | Leaning |
|---|---|---|
| Visual engine | Phase 2 | Something that runs on both macOS and Linux |
| Linux DAW vs DAW-less | Phase 4 | Depends on how much Live's session view matters to the shows |
| Vendor upstream as submodules vs script | Decided | Submodules — pinned commits are backed up with the repo; bump with `git submodule update --remote` |
| Conductor state persistence | Phase 3 | TOML files in repo |
