---
bgg_id: 266192
name: Wingspan
slug: wingspan
publisher: Stonemaier Games
year: 2019
players_min: 1
players_max: 5
weight: 2.4
solo_type: official
solo_author: Automa Factory
bgt_status: candidate
priority_score: 8.13
demand: 9
quality: 8
complexity_fit: 7
ease: 7
novelty: 6
popularity: 10
source: research
tags: [candidate, solo, automa]
---

# Wingspan (2019)

## Solo mode
Wingspan's official solo Automa (by Automa Factory) uses a deck of 30 cards to simulate a competing player. Each round the Automa draws a card, takes the depicted action, and scores points via its own tracker. A companion app would handle card draws, Automa scoring, and round tracking across 4 rounds.

## What BGT would implement
- Tab Solo: Automa card draw reference + round tracker (4 rounds)
- Tab Scoring: player score + Automa score comparison
- Tab Rules: Automa priority rules
- Tab Setup: game preparation

## Feasibility
**Medium.** Automa rules are well-documented. Card draw can be simulated by the app. No complex state — just round counter + Automa score accumulator.

## Priority: 🥇 #1 — High demand, feasible, huge player base
