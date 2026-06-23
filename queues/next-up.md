# Next Up — BGT Priority Queue

_Updated: 2026-06-23_

## 🔧 Fixes en implementados

| Estado | Juego | Fix | Sesión |
|--------|-------|-----|--------|
| ✅ DONE | Maracaibo | ViewModel migration (MaracaiboViewModel.kt) | 2026-06-23 |
| ✅ DONE | Cascadia | ViewModel migration (CascadiaViewModel.kt) | 2026-06-23 |
| ✅ DONE | Tiletum | ViewModel migration (TiletumViewModel.kt) | 2026-06-23 |
| ✅ DONE | CM/Tingent | ViewModel migration (CMViewModel.kt) | 2026-06-23 |
| ✅ DONE | Castle Combo | ViewModel migration (CastleComboViewModel.kt) | 2026-06-23 |
| ✅ DONE | Spooktacular | Score counter tab + ranking | 2026-06-23 |
| ✅ DONE | Coimbra | Dice roller animado (6 colores) | 2026-06-23 |
| ✅ DONE | libs.versions.toml | kotlin-android plugin missing | 2026-06-23 |

## 🎲 Candidatos nuevos — Por implementar

> Investigación completada 2026-06-23 con Qwen 2.5-coder:14b. Notas en `games/candidates/`.

### Ranking por prioridad (formula: demand×0.28 + quality×0.22 + popularity×0.15 + complexity_fit×0.13 + ease×0.12 + novelty×0.10):

| # | Juego | Score | Solo type | Feasibility |
|---|-------|-------|-----------|-------------|
| 🥇 1 | **Wingspan** | 8.13 | Automa oficial | Medium |
| 🥈 2 | **Friday** | 7.89 | Solo-only | High ← NEXT |
| 3 | Spirit Island | 7.72 | Nativo | Low (parcial OK) |
| 4 | Arkham Horror LCG | 7.44 | Nativo | Low-Medium |
| 5 | Viticulture | 7.40 | Automa oficial | Medium |
| 6 | Too Many Bones | 6.96 | Nativo | Low-Medium |
| 7 | Gloomhaven: Jaws | 6.87 | Nativo | Low |
| 8 | Robinson Crusoe | 6.79 | Nativo | Low-Medium |
| 9 | Pandemic | 6.78 | Cooperativo | Medium |
| 10 | 7 Wonders Duel | 6.23 | Fan-made | High (score calc) |

**Recomendación:** implementar **Friday** primero (más simple, solo-only, alta calidad) luego **Wingspan** (mayor demanda).

### Factores scoring (formula):
```
priority = demand×0.28 + quality×0.22 + popularity×0.15 + complexity_fit×0.13 + ease×0.12 + novelty×0.10
```

## 📋 Checklist estado por juego implementado

### Spooktacular ✅ (setup, game) ⬜ (score counter)
- [x] Solo tracker — 3 decks A/B/C
- [x] Rules reference
- [x] Setup guide
- [ ] Score counter
- [ ] ViewModel persistence

### Criaturas Maravillosas ✅
- [x] Solo tracker (Tingent 1-24)
- [x] Score counter
- [x] Rules + Setup
- [ ] ViewModel persistence
- [ ] Verify tracker actions all difficulties

### Tiletum ✅
- [x] Solo tracker (Titus dice)
- [x] Score counter (Titus + player)
- [x] Difficulty (0/2/5 cards)
- [x] Rules + Setup
- [ ] ViewModel persistence

### Maracaibo ✅ (most complete)
- [x] Solo tracker (Jordan 6 counters)
- [x] Score counter
- [x] Difficulty + Expansion toggle
- [x] Rules + Setup
- [ ] ViewModel persistence ← URGENTE

### Castle Combo ✅
- [x] Solo tracker (Anton, 9 turns)
- [x] Score counter (3 difficulties)
- [x] Rules + Setup
- [ ] ViewModel persistence

### Coimbra ✅
- [x] Solo tracker (dice table)
- [x] Score counter (6 categories + ranking)
- [x] Rules + Setup
- [ ] ViewModel persistence
- [ ] Dice roller animado

### Cascadia ✅ (calculator only)
- [ ] Solo tracker — no aplica (no bot)
- [x] Score counter (5 animales × 4 variantes + habitats)
- [x] Variant selector A/B/C/D
- [x] Rules + Setup
- [ ] ViewModel persistence ← URGENTE (24+ vars)
