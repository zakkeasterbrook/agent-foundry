#!/usr/bin/env bash
set -euo pipefail

if [ ! -d ".git" ]; then
  echo "Run this script from the repo root" >&2
  exit 1
fi

if ! command -v yq >/dev/null 2>&1; then
  echo "[info] yq not found. Install it if you want manifest templating." >&2
fi

AGENT_ID=${1:-"foundry-agent"}
MANIFEST_PATH="core/manifests/${AGENT_ID}.yaml"

if [ -f "$MANIFEST_PATH" ]; then
  echo "Manifest $MANIFEST_PATH already exists. Aborting." >&2
  exit 1
fi

cp core/manifests/oploom.yaml "$MANIFEST_PATH"
sed -i.bak "s/oploom-v0/${AGENT_ID}/" "$MANIFEST_PATH"
rm -f "${MANIFEST_PATH}.bak"

echo "Created manifest at $MANIFEST_PATH"

echo "Next steps:"
echo "  1. Edit $MANIFEST_PATH with your agent tools + constraints."
echo "  2. Create missions/<type>/<mission>/proofs/<timestamp>.json with proof-template.md."
echo "  3. Commit + open a PR describing the impact."
