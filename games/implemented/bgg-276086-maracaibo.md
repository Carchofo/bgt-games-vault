---
bgg_id: 276086
name: Maracaibo
slug: maracaibo
publisher: Game's Up / Capstone Games
year: 2019
players_min: 1
players_max: 4
weight: 3.9
bgg_rank: 58
bgg_rating: 8.1
solo_type: official
solo_author: Alexander Pfister
solo_thread_url: https://boardgamegeek.com/boardgame/276086/maracaibo/forums/
solo_thread_views: 
solo_thread_replies: 
bgt_status: implemented
impl_difficulty: 4
overlap_risk: 0.0
priority_score: 100
discovered: 2026-06-17
last_researched: 2026-06-22
source: seed
tags: [bgt, solo, implemented]
---

# Maracaibo (2019)

## Solo mode
Official solo mode vs bot "Jordán". Jordán follows a card deck of actions each turn — move, improve ship, collect VP. Player tries to outscore Jordán over 3 rounds. Official Pfister design included in box.

## Implementation notes
BGTScreen: MaracaiboSoloScreen.kt. Bot state: VP counter, ship improvements, hideout marker. Card deck drives bot turns. Expansion pirates variant also implemented.
