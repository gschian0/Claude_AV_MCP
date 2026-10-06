# Receiver patches

Drop-in receivers for the `/av/...` OSC messages the conductor sends. Each
one fans the messages out to named sends so any part of your patch can do
`[r av-energy]`, `[r av-section]`, etc.

| File | Program | Port (default) |
|---|---|---|
| `max/av_receiver.maxpat` | Max/MSP 9 | 7400 |
| `pd/av_receiver.pd` | Pure Data vanilla ≥ 0.51 | 7402 |

Message reference: see [docs/ARCHITECTURE.md](../docs/ARCHITECTURE.md#osc-namespace).

These are deliberately tiny. The MaxMSP-MCP server can extend them: ask
Claude to "add a [scale 0. 1. 200. 8000.] from av-energy into the filter
cutoff" while the patch is open with the MCP agent running.
