# Prototype Plan & Core Systems

Goal: Build a vertical slice that demonstrates the game's core loop: Explore → Discover pearl → Make a meaningful choice.

## Prototype Scope
- One small beach + village area
- Underwater cavern (single set-piece) with oxygen or tension mechanic
- One NPC (merchant) and a dialogue branch for selling vs not selling
- Inventory with single special item (the pearl)
- Branching outcome (two short endings depending on the player's choice)

## Prototype Tasks
1. Project Setup (1 day)
   - Create a new Godot 3D project with input mappings and placeholder assets
   - Add `Player.tscn` / `player.gd`, basic movement, and camera
2. Implement pickup item (2–3 days)
   - `Item_Pearl.tscn` with pickup & inventory logic (`item_pearl.gd`)
   - UI indicator for holding the pearl
3. Dialogue/Choice system (3–5 days)
   - Implement a simple text-based node system (data-driven JSON or Godot Resource)
   - Create merchant `Merchant.tscn` with a conversation to sell or refuse
4. Underwater sequence (3–7 days)
   - Create underwater area with oxygen timer OR a stealth mechanic
   - Add a simple enemy or event (e.g., mechanical octopus or obstacle)
5. Endings & Consequences (2–4 days)
   - Add branching endings, triggerable through a save state
6. Playtests & Iteration (ongoing)
   - Internal testing after each milestone, refine based on playtest notes

## Acceptance Criteria (Prototype)
- Player can move, enter both land and underwater areas
- Player can pick up the pearl and see it in inventory
- Player can talk to merchant and choose to sell or not
- Underwater triggerting event occurs and is playable
- One of two endings is triggered correctly based on the player's decision

## Tools & Tips
- Use placeholders from the Godot Asset Library or free low-poly packs for NPCs and props
- Use Copilot to scaffold GDScript inventory and dialogue systems and scene snippets
- Keep levels compact to ensure quick iteration

---

## Deliverables
- Playable vertical slice package
- Short walkthrough video and a playtest feedback form
- A task list for expanding from prototype to production
