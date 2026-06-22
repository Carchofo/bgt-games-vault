---
bgg_id: 311430
name: Spooktacular
slug: spooktacular
publisher: Samaruc Games
year: 2022
players_min: 1
players_max: 5
weight: 2.8
bgg_rank: 780
bgg_rating: 7.2
solo_type: official
solo_author: Samaruc Games
bgt_status: implemented
impl_difficulty: 3
overlap_risk: 0.05
priority_score: 100
source: seed
tags: [bgt, solo, implemented]
---

# Spooktacular (2022)

## Feature audit — actual code (SoloModeScreen.kt, 713 lines)

| Feature | Status | Notes |
|---------|--------|-------|
| 🤖 Solo tracker | ✅ | 3 decks (A/B/C), deck index, turn counter |
| 🏆 Score counter | ❌ | No score input — player tracks manually |
| 📖 Rules reference | ✅ | Card-by-card execution guide in tab |
| ⚙️ Setup guide | ✅ | Full board setup instructions |
| 💾 State persistence | ⚠️ | 8 rememberSaveable — no ViewModel (process death = reset) |
| 🌍 Multilang | ✅ | es/en/fr/de/it strings |

### Tabs
- **Setup** (tab 0): board preparation, Killtron placement, deck explanation
- **Game** (tab 1): 3-card bot turn (A→B→C), movement resolver

### Bot logic
Killtron draws 1 card per deck per turn. Each card has step-by-step instructions. BGT shows the card + steps in sequence. Movement determined by final card of turn.

## ❗ Missing / improve
- [ ] **Score counter** — player needs to track own score manually. Add: simple +1/-1 counter visible during game
- [ ] **ViewModel** — state lost on process death mid-game
- [ ] **Game end detection** — no win/lose result screen

## Priority: LOW (functional, just missing score counter)
