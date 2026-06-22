# BGT Games Research Vault

Knowledge base for solo board games under research for the BGT app.

## Structure

```
_templates/game.md     → template for new game notes
games/implemented/     → 7 games already in BGT (reference for overlap scoring)
games/candidates/      → pipeline output, sorted by priority_score
queues/next-up.md      → top candidates to implement next
queues/discovery-raw.md → latest pipeline run dump
meta/scoring-config.md → scoring weights and formula
meta/pipeline-runs.md  → run log
```

## Pipeline

n8n on PC (192.168.0.25:5678) → workflow `bgt-game-research`:
1. **Agent A** (Discovery): seed list + Qwen suggestions → candidate BGG IDs
2. **Agent B** (Research): Qwen deep-dives one game → structured JSON
3. **Agent C** (Scoring): deterministic formula → priority_score
4. **Agent D** (Vault Writer): JSON → markdown note → updates index

BGG internal API (`/api/geekitems`) for basic game data.
Qwen 2.5-coder:14b for solo mode research and scoring rationale.

## How to use

Open `queues/next-up.md` → pick top game → check its note in `games/candidates/` → implement in BGT.

After implementing: move note to `games/implemented/`, update `bgt_status: implemented`.
