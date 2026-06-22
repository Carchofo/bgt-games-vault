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
solo_thread_url: https://boardgamegeek.com/boardgame/303553/tiletum/forums/
solo_thread_views: 
solo_thread_replies: 
bgt_status: implemented
impl_difficulty: 4
overlap_risk: 0.15
priority_score: 100
discovered: 2026-06-17
last_researched: 2026-06-22
source: seed
tags: [bgt, solo, implemented]
---

# Tiletum (2022)

## Solo mode
Official solo vs bot "Cardenal Titus" by Dávid Turczi. Titus picks dice by priority card, scores based on dice values and multipliers. 4 rounds, King phase, Fair phase. Difficulty adjustable via challenge cards (0-5 extra).

## Implementation notes
BGTScreen: TiletumSoloScreen.kt. Complex state: dice selection priorities, King track, Fair scoring per round. Scoring formula: yellow die = value, others = value×2. Contracts×Cathedrals final scoring.
