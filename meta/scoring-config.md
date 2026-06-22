# Scoring Config — BGT Game Priority

Weights used by Agent C. Edit here → affects all future pipeline runs.

## Formula

```
demand        = log10(views+1)/log10(50000) + 0.3*min(replies/200,1)  → clamp [0,1]
quality       = {official:1.0, both:1.0, fan-made:0.7, none:0.0} * min(replies/50,1)
popularity    = 1 - (bgg_rank/1000)  if rank≤1000, else 0
complexity_fit= 1 - |weight-3.0|/2   → clamp [0,1]   # sweet spot BGT=3.0
ease          = (6-impl_difficulty)/5
novelty       = 1 - overlap_risk

priority_score = 100 * (
    0.28 * demand
  + 0.22 * quality
  + 0.15 * popularity
  + 0.13 * complexity_fit
  + 0.12 * ease
  + 0.10 * novelty
)
```

## Weights

| Factor | Weight | Rationale |
|--------|-------:|-----------|
| demand | 0.28 | community asking for it = real need |
| quality | 0.22 | good solo mode = less implementation guesswork |
| popularity | 0.15 | popular game = more potential installs |
| complexity_fit | 0.13 | BGT audience expects weight ~3 euros |
| ease | 0.12 | limited dev time, baby incoming |
| novelty | 0.10 | avoid duplicating existing 7 games |

## Implemented games (overlap reference)

| Game | Mechanics |
|------|-----------|
| Maracaibo | route-building, hand-management, influence-tracks |
| Tiletum | dice-drafting, tile-placement, resource-management |
| Criaturas Maravillosas | worker-placement, card-drafting, area-control |
| Castle Combo | tableau-building, engine-building, combos |
| Coimbra | dice-placement, set-collection, influence |
| Cascadia | tile-placement, pattern-building, scoring-calculator |
| Spooktacular | movement, action-programming, area-majority |
