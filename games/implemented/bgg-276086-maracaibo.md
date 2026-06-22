---
bgg_id: 276086
name: Maracaibo
slug: maracaibo
publisher: Capstone Games
year: 2019
players_min: 1
players_max: 4
weight: 3.9
bgg_rank: 58
bgg_rating: 8.1
solo_type: official
solo_author: Alexander Pfister
bgt_status: implemented
impl_difficulty: 4
overlap_risk: 0.0
priority_score: 100
source: seed
tags: [bgt, solo, implemented]
---

# Maracaibo (2019)

## Feature audit — actual code (MaracaiboSoloScreen.kt, 1237 lines — largest screen)

| Feature | Status | Notes |
|---------|--------|-------|
| 🤖 Solo tracker | ✅ | 6 bot counters: VP, hideout marker (0-3), ship upgrades, missions, residences, rivers explored |
| 🏆 Score counter | ✅ | Jordan final score + player score comparison, result |
| 📖 Rules reference | ✅ | Rules tab with Jordan priority card |
| ⚙️ Setup guide | ✅ | Full setup: board, player, Jordan, doubloons table |
| 💾 State persistence | ⚠️ | 14 rememberSaveable — no ViewModel (HIGHEST risk — 3 round game) |
| 🌍 Multilang | ✅ |
| 🎯 Difficulty | ✅ | B-cards count (0-6) + Expansion pirates toggle |

### Tabs
- **Setup** (tab 0): preparation, difficulty, expansion toggle, prep checklist
- **Solo** (tab 1): Jordan turn — gulf detection, card B check, bonus action, main action priority, ship upgrade effect
- **Scoring** (tab 2): final score comparison
- **Rules** (tab 3): Jordan rules reference

### Bot logic (most state in BGT)
Jordan tracks: VP, ship upgrades (4 slots), hideout marker position, missions completed, residences placed, rivers explored, treasures. Gulf rule adds bonus actions. Expansion adds fort/captain mechanics.

## ❗ Missing / improve
- [ ] **ViewModel** — CRITICAL: 3-round game with heavy state. Process death = restart entire game
- [ ] Card B content not shown (needs physical cards) — could add card B text
- [ ] Expansion rules partially implicit

## Priority: HIGH — ViewModel migration (long game, heavy state, most played)
