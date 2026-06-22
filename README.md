# BGT Games Vault

Research + tracking para expansión de BGT (Board Game Tracker Android).

## Estructura

```
bgt-games-vault/
├── _templates/
│   └── game.md              # Plantilla YAML para nuevos juegos
├── games/
│   ├── implemented/         # 7 juegos ya en BGT (auditados desde código real)
│   └── candidates/          # Candidatos para implementar (pipeline n8n)
├── queues/
│   └── next-up.md           # Prioridad: fixes + nuevos juegos
├── meta/
│   └── scoring-config.md    # Fórmula de scoring para candidatos
└── import-vault.sh          # Importar batch de n8n pipeline
```

## Juegos implementados (auditoría real)

| Juego | BGG # | Bot | Score | ViewModel |
|-------|-------|-----|-------|-----------|
| Spooktacular | 311430 | ✅ | ❌ | ❌ |
| Criaturas Maravillosas | 370591 | ✅ | ✅ | ❌ |
| Tiletum | 303553 | ✅ | ✅ | ❌ |
| Maracaibo | 276086 | ✅ | ✅ | ❌ |
| Castle Combo | 358799 | ✅ | ✅ | ❌ |
| Coimbra | 205398 | ✅ | ✅ | ❌ |
| Cascadia | 295947 | ❌ | ✅ | ❌ |

**Issue global: 0/7 usan ViewModel** — state se pierde en process death.

## Pipeline investigación candidatos

n8n en PC (192.168.0.25:5678) → workflow `bgt-game-research`:
1. **Agent A** (Discovery): seed list + Qwen → 19 candidatos BGG
2. **Agent B** (Research): Qwen 2.5-coder:14b deep-dive por juego
3. **Agent C** (Scoring): fórmula determinista → priority_score
4. **Agent D** (Vault Writer): JSON → markdown → `games/candidates/`

## Workflow uso

1. `queues/next-up.md` → elegir juego por prioridad
2. Revisar nota en `games/candidates/`
3. Implementar en BGT → mover nota a `games/implemented/` + `bgt_status: implemented`

## Sync Mac ↔ PC

```bash
# PC: clonar una vez hay GitHub remote
git clone https://github.com/Carchofo/bgt-games-vault.git

# Mac → push cambios
git add . && git commit -m "vault: update" && git push

# PC → pull
git pull origin main
```
