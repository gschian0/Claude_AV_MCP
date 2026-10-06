#!/usr/bin/env bash
# Clone the upstream MCP servers into vendor/ (gitignored).
# If you already have them elsewhere, symlink instead:
#   ln -s ~/path/to/ableton-mcp vendor/ableton-mcp
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p vendor

clone() {
  local url=$1 dir=vendor/$2
  if [ -e "$dir" ]; then
    echo "✓ $dir exists"
  else
    git clone --depth 1 "$url" "$dir"
  fi
}

clone https://github.com/ahujasid/ableton-mcp ableton-mcp
clone https://github.com/tiianhk/MaxMSP-MCP-Server MaxMSP-MCP-Server

echo
echo "Next:"
echo "  1. Ableton:  uvx --from ableton-mcp ableton-mcp-install-script   (installs the Remote Script)"
echo "               then Live → Settings → Link/Tempo/MIDI → Control Surface: AbletonMCP"
echo "  2. Max:      (cd vendor/MaxMSP-MCP-Server && uv venv && uv pip install -r requirements.txt)"
echo "               open vendor/MaxMSP-MCP-Server/MaxMSP_Agent/demo.maxpat → script npm install → script start"
echo "  3. Conductor: uv sync --extra dev && uv run pytest"
