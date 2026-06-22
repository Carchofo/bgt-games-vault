---
bgg_id: 205398
name: Coimbra
slug: coimbra
publisher: Plan B Games
year: 2018
players_min: 2
players_max: 4
weight: 3.2
bgg_rank: 253
bgg_rating: 7.7
solo_type: fan-made
solo_author: skybowl / Dave Smith (BGG)
bgt_status: implemented
impl_difficulty: 3
overlap_risk: 0.1
priority_score: 100
source: seed
tags: [bgt, solo, implemented]
---

# Coimbra (2018)

## Feature audit — actual code (CoimbraSoloScreen.kt, 597 lines)

| Feature | Status | Notes |
|---------|--------|-------|
| 🤖 Solo tracker | ✅ | Round 1-4, dice roll reference table (MVNGNG mnemonic), city zone placement |
| 🏆 Score counter | ✅ | 6-category score: cards, pilgrimages, influence, coins, favors, others |
| 📖 Rules reference | ✅ | Full fan-made rules by skybowl |
| ⚙️ Setup guide | ✅ | Setup adjustments for solo |
| 💾 State persistence | ⚠️ | 8 rememberSaveable — no ViewModel |
| 🌍 Multilang | ✅ |
| 🏅 Ranking table | ✅ | Score benchmark: <130 bad → >220 incredible |

### Tabs
- **Setup** (tab 0): bot setup adjustments
- **Solo** (tab 1): bot dice roll → color → city zone placement guide, castle check
- **Scoring** (tab 2): 6-category breakdown + ranking
- **Rules** (tab 3): full fan-made rules reference

### Bot logic
Bot rolls 1d6 per die taken (M-V-N-G-N-G mnemonic). Falls back to white die if color unavailable. City placement via second d6 roll. Castle: compare 7th spare die. BGT shows quick reference tables.

## ❗ Missing / improve
- [ ] **ViewModel** — state lost
- [ ] Round tracker not persisted (player must remember current round)
- [ ] Bot dice roller — could add actual d6 tap-to-roll animation

## Priority: LOW-MEDIUM (complete, dice roller enhancement would improve UX)
