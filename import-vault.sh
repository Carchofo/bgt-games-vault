#!/bin/bash
# import-vault.sh — Mac side: SCP batch from PC → populate Obsidian vault
# Run after n8n pipeline finishes on PC
# Usage: ./import-vault.sh

set -e

VAULT_DIR="$(dirname "$0")"
PC_USER="perka"
PC_IP="192.168.0.25"
BATCH_FILE="bgt-vault-batch.json"

echo "==> Fetching batch from PC..."
scp "$PC_USER@$PC_IP:C:/Users/perka/$BATCH_FILE" /tmp/bgt-vault-batch.json

echo "==> Parsing batch and writing vault notes..."
python3 << 'PYEOF'
import json, os, sys

vault = os.path.dirname(os.path.abspath(__file__))
candidates_dir = os.path.join(vault, "games", "candidates")
queues_dir = os.path.join(vault, "queues")

with open("/tmp/bgt-vault-batch.json") as f:
    batch = json.load(f)

notes = batch.get("notes", [])
written = 0
skipped = 0

for note in notes:
    filename = note.get("filename")
    content = note.get("content")
    if not filename or not content:
        skipped += 1
        continue
    path = os.path.join(candidates_dir, filename)
    # Don't overwrite existing notes (protect manual edits)
    if os.path.exists(path):
        print(f"  SKIP (exists): {filename}")
        skipped += 1
        continue
    with open(path, "w") as f:
        f.write(content)
    print(f"  WROTE: {filename} (score: {note.get('priority_score', '?')})")
    written += 1

# Write next-up index
index_path = os.path.join(queues_dir, "next-up.md")
with open(index_path, "w") as f:
    f.write(batch.get("index_content", "# No content"))
print(f"  WROTE: queues/next-up.md")

# Update pipeline run log
run_log = os.path.join(vault, "meta", "pipeline-runs.md")
entry = f"\n## {batch.get('generated', 'unknown')}\n- Notes written: {written}\n- Skipped: {skipped}\n- Total candidates: {len(notes)}\n"
with open(run_log, "a") as f:
    f.write(entry)

print(f"\n==> Done: {written} written, {skipped} skipped")
PYEOF

echo "==> Vault updated at: $VAULT_DIR"
echo ""
echo "Open Obsidian → bgt-games-vault → queues/next-up.md to see top candidates"
