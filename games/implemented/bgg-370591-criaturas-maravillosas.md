---
bgg_id: 370591
name: Criaturas Maravillosas
slug: criaturas-maravillosas
publisher: Samaruc Games
year: 2023
players_min: 1
players_max: 4
weight: 3.1
bgg_rank: 450
bgg_rating: 7.6
solo_type: official
solo_author: Dávid Turczi
bgt_status: implemented
impl_difficulty: 3
overlap_risk: 0.1
priority_score: 100
source: seed
tags: [bgt, solo, implemented]
---

# Criaturas Maravillosas (2023)

## Feature audit — actual code (CMSoloModeScreen.kt, 1097 lines)

| Feature | Status | Notes |
|---------|--------|-------|
| 🤖 Solo tracker | ✅ | Tracker pos (1-24), yellow→brown zone transition, difficulty |
| 🏆 Score counter | ✅ | Player vs Tingent score comparison, result screen |
| 📖 Rules reference | ✅ | Full rules tab |
| ⚙️ Setup guide | ✅ | Full setup tab |
| 💾 State persistence | ⚠️ | 11 rememberSaveable — no ViewModel |
| 🌍 Multilang | ✅ |

### Tabs
- **Setup** (tab 0): game preparation
- **Solo** (tab 1): Tingent tracker + card draw per turn
- **Scoring** (tab 2): final score comparison
- **Rules** (tab 3): reference

### Bot logic
Tracker advances based on card red gear icons. Zone transition at difficulty threshold. Each difficulty level has different tracker actions (some unverified → warning shown).

## ❗ Missing / improve
- [ ] **ViewModel** — state lost on process death
- [ ] Unverified difficulty tracker actions (⚠️ warning shown to user — needs validation)
- [ ] Card image assets (text-only currently)

## Priority: LOW-MEDIUM (complete, tracker verification needed)
