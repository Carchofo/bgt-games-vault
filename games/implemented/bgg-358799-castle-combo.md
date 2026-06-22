---
bgg_id: 358799
name: Castle Combo
slug: castle-combo
publisher: Catch Up Games
year: 2023
players_min: 1
players_max: 4
weight: 2.1
bgg_rank: 520
bgg_rating: 7.4
solo_type: fan-made
solo_author: ben_uez (BGG)
bgt_status: implemented
impl_difficulty: 2
overlap_risk: 0.05
priority_score: 100
source: seed
tags: [bgt, solo, implemented]
---

# Castle Combo (2023)

## Feature audit — actual code (CastleComboSoloScreen.kt, 523 lines)

| Feature | Status | Notes |
|---------|--------|-------|
| 🤖 Solo tracker | ✅ | Turn 1-9, Anton resources: coins/keys/discounts, difficulty |
| 🏆 Score counter | ✅ | Player scrolls+keys + Anton score by difficulty table |
| 📖 Rules reference | ✅ | Full rules + scoring tables |
| ⚙️ Setup guide | ✅ | Setup guide tab |
| 💾 State persistence | ⚠️ | 8 rememberSaveable — no ViewModel |
| 🌍 Multilang | ✅ |
| 🎯 Difficulty | ✅ | Easy/Normal/Hard with different scoring multipliers |

### Tabs
- **Setup** (tab 0): preparation
- **Solo** (tab 1): Anton turn guide + resource tracking
- **Scoring** (tab 2): player + Anton final score
- **Rules** (tab 3): Anton rules + difficulty table

### Bot logic (simplest bot in BGT)
Anton accumulates: coins, keys, discounts during game. Needs decision/priority cards (physical). BGT shows turn guide + resource tracker. Final score computed by difficulty multipliers.

## ❗ Missing / improve
- [ ] Decision/priority card content — player needs to print them. Could embed card images
- [ ] **ViewModel** — state lost on rotation
- [ ] Turn counter could auto-advance

## Priority: LOW (simple, complete)
