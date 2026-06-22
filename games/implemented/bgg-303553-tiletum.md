---
bgg_id: 303553
name: Tiletum
slug: tiletum
publisher: Board&Dice
year: 2022
players_min: 1
players_max: 4
weight: 3.7
bgg_rank: 182
bgg_rating: 7.9
solo_type: official
solo_author: Dávid Turczi
bgt_status: implemented
impl_difficulty: 4
overlap_risk: 0.15
priority_score: 100
source: seed
tags: [bgt, solo, implemented]
---

# Tiletum (2022)

## Feature audit — actual code (TiletumSoloScreen.kt, 1223 lines)

| Feature | Status | Notes |
|---------|--------|-------|
| 🤖 Solo tracker | ✅ | Dice priority system, round/turn counter, King phase, Fair phase |
| 🏆 Score counter | ✅ | Full final scoring: player + Titus, houses×pillars, contracts×cathedrals |
| 📖 Rules reference | ✅ | Comprehensive rules tab |
| ⚙️ Setup guide | ✅ | Full setup with coins table |
| 💾 State persistence | ⚠️ | 10 rememberSaveable — no ViewModel |
| 🌍 Multilang | ✅ |
| 🎯 Difficulty | ✅ | 0/2/5 challenge cards (Easy/Normal/Hard) |

### Tabs
- **Setup** (tab 0): preparation + challenge card selection
- **Solo** (tab 1): Titus turn — dice color priority, action selection, scoring per turn
- **Scoring** (tab 2): end-game calculator player + Titus
- **Rules** (tab 3): full reference

### Bot logic (most complex in BGT)
Titus picks dice by color priority from card. Scores: Yellow die = value, others = value×2. King phase: is Titus ahead? Fair phase: (a+b) × round multiplier. 4 rounds of 3 turns.

## ❗ Missing / improve
- [ ] **ViewModel** — state lost on process death mid-4-round game (HIGH RISK — long session)
- [ ] Challenge card content not shown — player needs physical cards
- [ ] No mid-game save/resume

## Priority: MEDIUM (ViewModel migration for long game sessions)
