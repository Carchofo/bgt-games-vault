---
bgg_id: 295947
name: Cascadia
slug: cascadia
publisher: Alderac Entertainment / Flatout Games
year: 2021
players_min: 1
players_max: 4
weight: 1.8
bgg_rank: 31
bgg_rating: 7.9
solo_type: official
solo_author: Randy Flynn
bgt_status: implemented
impl_difficulty: 1
overlap_risk: 0.0
priority_score: 100
source: seed
tags: [bgt, solo, implemented]
---

# Cascadia (2021)

## Feature audit — actual code (CascadiaScoreScreen.kt, 658 lines)

| Feature | Status | Notes |
|---------|--------|-------|
| 🤖 Solo tracker | ❌ | No bot — pure score calculator |
| 🏆 Score counter | ✅ | Most complete scorer in BGT: 5 animals (4 variants each) + 5 habitats + nature tokens |
| 📖 Rules reference | ✅ | Per-animal rule summaries (all 4 variants) |
| ⚙️ Setup guide | ✅ | Full setup tab |
| 💾 State persistence | ⚠️ | 24+ rememberSaveable — no ViewModel (MOST state in BGT) |
| 🌍 Multilang | ✅ |
| 📐 Variant selector | ✅ | A/B/C/D per animal |

### Tabs
- **Setup** (tab 0): game preparation
- **Scoring** (tab 1): full 5-animal + habitat calculator
- **Rules** (tab 2): per-animal scoring rules for all variants

### Score logic
Bears (4 variants), Salmon (4 variants), Elk (4 variants), Hawks (4 variants), Foxes (4 variants). Each with different counters and formulas. Habitats: largest group per type + solo bonus. Nature tokens counter.

## ❗ Missing / improve
- [ ] **ViewModel** — CRITICAL: 24+ state vars, most likely to lose on rotation/death
- [ ] No total score animation/result screen (just shows sum)
- [ ] Could add score history (last 3 games)
- [ ] Scoring variant can't be changed mid-session without losing progress

## Priority: MEDIUM — ViewModel migration for score persistence
