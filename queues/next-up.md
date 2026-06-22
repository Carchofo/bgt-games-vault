# Next Up — BGT Priority Queue

_Updated: 2026-06-22_

## 🔧 Fixes pendientes en implementados

| Prioridad | Juego | Fix | Impacto |
|-----------|-------|-----|---------|
| 🔴 HIGH | Maracaibo | ViewModel migration (14 state vars, 3-round game) | Pérdida de partida larga |
| 🔴 HIGH | Spooktacular | Score counter tab missing | Feature incompleta |
| 🟠 MEDIUM | Cascadia | ViewModel migration (24+ state vars) | Calculadora se resetea |
| 🟠 MEDIUM | Tiletum | ViewModel migration (10 state vars, 4-round) | Pérdida posible |
| 🟡 LOW | Coimbra | Dice roller animado | UX improvement |
| 🟡 LOW | Castle Combo | Auto-advance turn counter | Minor UX |
| 🟡 LOW | CM/Tingent | Tracker verification warning | Aviso ya existe |

## 🎲 Candidatos nuevos — Por implementar

> Pendiente: ejecutar n8n research pipeline en PC → resultados en `candidates/`

### Prioridad investigar primero (conocidos, alta demanda):
1. **Viticulture** (BGG #59) — solo: Tuscany expansion bot (oficial Jamey Stegmaier)
2. **Spirit Island** (BGG #5) — solo: 1 spirit inherente, muy popular
3. **Wingspan** (BGG #65) — solo: Automa Factory oficial, ideal para BGT
4. **Arkham Horror LCG** (BGG #84) — cooperative/solo, campaña
5. **Friday / Freitag** (BGG #438) — solo puro, simple, muy pedido
6. **Pandemic** (BGG #30) — coop/solo, universal
7. **Robinson Crusoe** (BGG #160) — solo difícil, bot complejo
8. **Gloomhaven: Jaws of the Lion** (BGG #291457) — coop/solo, accessible
9. **7 Wonders Duel** (BGG #173346) — 2p pero modo solo existe
10. **Too Many Bones** (BGG #241255) — solo nativo

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
