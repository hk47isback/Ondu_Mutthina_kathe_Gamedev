# Sprint Backlog: 6-Week Vertical Slice (Merchant Ambush Arc)

This backlog breaks down the Next Steps into weekly sprints, with tasks and acceptance criteria to get a playable vertical slice that executes the friend-theft and merchant ambush beats.

Assumptions & Notes
- Solo developer (you) with optional micro-outsourcing for hero assets or music.
- Platform: Godot Engine (Windows).
- Week durations are 1 week; adjust per hour capacity.

## Sprint 0 — Setup (1 week)
Goal: Project scaffolded and initial environment in place.
- Task 0.1: Create project folder + backups (no Git). (AC: Backups folder exists; you can restore from a zip snapshot)
- Task 0.2: Create Godot project (3D template), default player controller placeholder (`Player.tscn`). (AC: Editor runs, project opens)
- Task 0.3: Add initial placeholder level with terrain, beach, dock. (AC: Beach scene loads and camera playable)
- Task 0.4: Configure Editor performance & packaging settings for your laptop (Scalability, texture pool). (AC: Documented settings in `docs/DEV_SETUP.md`)

## Sprint 1 — Player & Pearl (1 week)
Goal: Implement player movement, pearl item with pickup, and inventory visual.
- Task 1.1: Implement `Player.tscn` / `player.gd` (movement, interact input). (AC: Player moves & interacts with items)
- Task 1.2: Implement `Item_Pearl.tscn` with pickup logic and UI display. (AC: Player picks up pearl, UI shows 'Pearl: 1')
- Task 1.3: Add `item_base.gd` base script for items and simple inventory array. (AC: Inventory holds pearl & represented in HUD)
- Task 1.4: VFX: simple pearl glow + pickup SFX. (AC: VFX visible and SFX plays on pickup)

## Sprint 2 — Merchant & Dialogue (1 week)
Goal: Implement merchant NPC with negotiation and choice UI.
- Task 2.1: Implement `Merchant.tscn` with dialogue triggers. (AC: Press 'interact' action to start dialogue)
- Task 2.2: Dialogue system: JSON node schema and parsing; simple choice UI. (AC: Dialogue choices lead to flag changes)
- Task 2.3: Implement trade logic: accept/decline offers and record choice as `Flag_MerchantOffer`. (AC: Merchant will buy pearl if accepted)
- Task 2.4: Merchant persona: initial pleasant lines with suspicious hints. (AC: Merchant dialogue contains flagged lines)

## Sprint 3 — Underwater Discovery Sequence (1 week)
Goal: Implement underwater area with oxygen mechanic and core discovery beat.
- Task 3.1: Create underwater cavern level block with lighting & materials. (AC: Underwater area is reachable)
- Task 3.2: Create `WaterArea.tscn` or `oxygen.gd` with oxygen countdown and HUD meter. (AC: Oxygen drains, low alert triggers, player takes damage at 0)
- Task 3.3: Place pearl discovery as a chest or object; add underwater VFX & sound ambients. (AC: Player discovers pearl underwater and can pick it up)
- Task 3.4: Add simple underwater interaction (swim & reach). (AC: Player can swim & navigate the cave)

## Sprint 4 — Friend Theft Event & Consequences (1 week)
Goal: Implement friend's attempt to steal the pearl and choices to react.
- Task 4.1: Implement `Friend.tscn` with simple behavior & an 'attempt_to_steal' action. (AC: NPC can attempt to take the pearl)
- Task 4.2: Implement player reaction choices (Forgive, Confront, Bargain). (AC: Each choice sets a `FriendFlag` and triggers different dialog responses)
- Task 4.3: Consequence: If the player allows or fails, set flag `PearlTaken` true and modify merchant interaction; else `PearlRetained`. (AC: Flags transition correctly)
- Task 4.4: Add a short cutscene or animation for the theft attempt to heighten drama. (AC: Scene triggers & is visually distinct)

## Sprint 5 — Merchant Ambush Setup (1 week)
Goal: Implement merchant suspicious behavior and final ambush setup.
- Task 5.1: Merchant suspicion logic: merchant notes the pearl's location & decides to return. (AC: Merchant will set `MerchantAssignedAmbush` flag after a timer or event)
- Task 5.2: Merchant men spawn logic and alert system (AI spawners with simple pathing to ambush location). (AC: Spawners create men who path to the player's location)
- Task 5.3: Prepare ambush location: alley/dock area with environmental gameplay (tactical choke points, cover). (AC: Ambush area loaded and plays out in preview)
- Task 5.4: Implement 'merchant goons' AI: simple approach, grapple, and attack states. (AC: Simple AI attacks player and family)

## Sprint 6 — Ambush Set-Piece & Playtest (1 week)
Goal: Build the ambush sequence to completion, polish audio & VFX, and prepare demo build.
- Task 6.1: Scripted set-piece for the ambush with cinematic beats using `AnimationPlayer`/timeline (timings, camera cuts). (AC: Ambush plays as a coherent cinematic sequence)
- Task 6.2: Add VFX: blood splatter, impact effects, tear in the scene, and music tension. (AC: VFX cues align with beats & audio cues)
- Task 6.3: Implement end condition & save/load of state for demo. (AC: Demo ends on the final cinematic and supports basic save/load)
- Task 6.4: Polish & QA: lighting, audio mixing, particle tuning; fix critical bugs. (AC: Build is stable for 1–5 playtests)
- Task 6.5: Create demo package, short play instructions, and a playtest feedback form. (AC: Packaged demo, instructions & form ready)

---

## Acceptance Testing & Playtest plan
- Playtest after Sprint 2, Sprint 4, and Sprint 6:
  - Focus early: Core systems & UX
  - Mid: Emotional beats (friend theft & merchant behavior)
  - Final: Ambush sequencing and emotional impact

## Deliverables by end of Sprint 6
- Playable vertical slice: discovery -> friend theft sequence -> merchant ambush ending with basic VFX, audio, and UI
- Playtest feedback report
- Demo package for distribution

---

## Follow-ups & Branches
- Post-prototype: Add branching endings (escape vs tragedy), more refined merchant AI, and additional NPC arcs.
- Use the vertical slice to pitch and to recruit for art/voice/music as needed.


---

If you'd like, I can generate a CSV of these tasks for Trello import. Which format would you prefer?