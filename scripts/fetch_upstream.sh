#!/usr/bin/env bash
# Fetch the upstream MCP servers into vendor/ (pinned as git submodules).
# Fresh clone shortcut: git clone --recurse-submodules <repo-url>
set -euo pipefail
cd "$(dirname "$0")/.."
git submodule update --init --recursive

echo
echo "Next:"
echo "  1. Ableton:  uvx --from ableton-mcp ableton-mcp-install-script   (installs the Remote Script)"
echo "               then Live → Settings → Link/Tempo/MIDI → Control Surface: AbletonMCP"
echo "  2. Max:      (cd vendor/MaxMSP-MCP-Server && uv venv && uv pip install -r requirements.txt)"
echo "               open vendor/MaxMSP-MCP-Server/MaxMSP_Agent/demo.maxpat → script npm install → script start"
echo "  3. Conductor: uv sync --extra dev && uv run pytest"
echo
echo "Update upstream later: git submodule update --remote && commit the new pins"
