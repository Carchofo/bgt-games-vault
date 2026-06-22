---
bgg_id: 358799
name: Castle Combo
slug: castle-combo
publisher: Catch Up Games
year: 2023
players_min: 1
players_max: 4
weight: 2.1
bgg_rank: 520
bgg_rating: 7.4
solo_type: fan-made
solo_author: ben_uez
solo_thread_url: https://boardgamegeek.com/boardgame/358799/castle-combo/forums/
solo_thread_views: 
solo_thread_replies: 
bgt_status: implemented
impl_difficulty: 2
overlap_risk: 0.05
priority_score: 100
discovered: 2026-06-17
last_researched: 2026-06-22
source: seed
tags: [bgt, solo, implemented]
---

# Castle Combo (2023)

## Solo mode
Fan-made solo vs "Anton" (BGG user ben_uez). Anton follows a deck of decision cards + priority cards. Anton takes cards free, scoring by difficulty multiplier at end (keys, coins, discounts × modifier).

## Implementation notes
BGTScreen: CastleComboSoloScreen.kt. Mechanics: decision card priority, resource tracking, difficulty table. Requires printed decision+priority card decks per fan-made rules.
