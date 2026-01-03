# Asset List — MVP: Vertical Slice

This document lists the assets required for the vertical slice (12-week prototype range). Each entry includes: Purpose, Priority, Complexity, Suggested Source (Placeholder / Marketplace / Custom), and technical notes (format, LOD, poly-count targets, texture size). Use this as both an acquisition checklist and a Kanban backlog input.

## Summary (counts & priorities)
- Environments: 4 scenes / 12 major assets (Must Have)
- Props: 30–50 modular props (Must Have)
- Characters: 4–5 characters (Player + merchant + 3 NPCs) (Must Have)
- Animations: 20–35 animations for characters + underwater (Must Have)
- VFX: 10–20 effects (Underwater + ambient) (Must Have)
- Audio: 12+ SFX + 3 music tracks + 1-2 voice actors for dialog lines (Must Have)
- UI: 8–12 UI assets (icons, HUD, fonts) (Must Have)
- Cinematics/AnimationPlayer sequences: 3–6 short camera sequences (Must Have)
- Technical/Systems: Inventory item(s), dialogue node JSON, Save system (File/JSON), Scenes & Scripts (Must Have)

---

## Environments (scenes & major meshes)
(Use modular tilesets where possible so a few meshes create many layouts.)

1. Beach (start) — Priority: Must Have
   - Terrain mesh or heightmap (one) — Complexity: Low
   - Sand material + normal/roughness (T_terrain_sand) — 2K texture
   - Rocks/Beach-cliffs (3 variations, `SM_Rock_01..03`) — Medium complexity
   - Vegetation/grass clumps (3–5 assets) — Low complexity (foliage) 
   - Boat (SM_Boat_01) — Medium complexity; skeletal if animated
   - Worn wooden dock pieces — `SM_Dock_01..03`
   - LODs: 2-3 per mesh, 2k/1k/512 textures accordingly

2. Small village / market square — Priority: Must Have
   - Market stall set (modular pieces): Van, tents, stalls `SM_Market_Stall_*` — 6–10 props
   - Crate/Barrel/Boxes: `SM_Crate_01` `SM_Barrel_01` — 4–6 props
   - Shop sign & counters — `SM_Shop_Counter`, `SM_Shop_Sign` — Low complexity
   - Merchant stand assets (counters & shelves) — Low/Medium

3. Dock / Boat area (adjacent to beach) — Priority: Must Have
   - Larger boat `SM_Boat_Big`, mooring ropes `SM_Rope_01`, dock extension pieces — Medium
   - Fishing nets, buoys — 3–6 props

4. Underwater cavern — Priority: Must Have
   - Rock cave modular meshes (ceiling, floor, arch) — 6–10 modular meshes
   - Corals/sea foliage (stylized) — 6–8 assets
   - Giant octopus (or mechanical creature) model for the set-piece — `SK_Octopus` - High complexity (may be static/prop for prototype) or marketplace creature AI
   - Water material + caustics + particle foam assets — particle FX or pre-made pack (use `Particles3D`/`GPUParticles3D`)

Optional added environment assets (Nice-to-Have): Lighthouse, shrine, cliff lookout

---

## Props (interactable & decorative)
- Item_Pearl.tscn (special item) — Priority: Must Have — small, polished sphere with shader for glow + VFX attached. Texture: 1K, tiny poly count.
- item_crate.tscn / crate_sell_stack (trading props) — Must Have
- Shop registers & scales `SM_Scale` — Must Have (1)
- Net items & fish props `SM_Fish_01` `SM_Net` — Must Have
- NPC props: walking sticks, satchels, baskets — 6 items (Low)
- Environmental: Torches, lanterns, ropes, barrels, broken shells (15–30 decorative props) — Must Have for atmosphere

Notes: All static props use 1k textures minimum; use atlases where possible. Props can be low-poly (1–5k tris) for small objects.

---

## Characters (models & rigging)
- Player character — `SK_Player_Fisherman` — Priority: Must Have
  - Rigged, full body with root bone; skeleton compatible with common retargeting tools or reuse a base skeleton for animation retargeting
  - Animations: idle/walk/run/jump/interact/pickup/underwater swim (8–12 basic anims)
  - Texture Size: 2k Albedo + Metallic, Normal
- Merchant (shopkeeper) — `SK_Merchant` — Priority: Must Have
  - Animations: idle, talk, point, trade/accept gestures (6–8 anims)\n- 2–3 villagers (minor NPCs) — `SK_Villager_01..03` — Priority: Must Have (reused rigs/skins)
- Optional: Rival buyer/antagonist (may be a simple character or static) — Nice-to-Have

Technical notes:
- Target polycount: 10–25k tris for player if using specialized models; 5–15k for NPCs. For stylized low poly dev, reduce counts accordingly.
- LODs: 3 LODs (High/Med/Low)
- If using high-fidelity models, adjust poly/texture budgets carefully to match target performance.

---

## Animations & UX Movement
- Player: Idle, Walk, Run, Walk+Hold Pearl, Pickup, Interact, Swim Idle, Swim Forward, Swim Escape/Climb (8–10)
- Merchant: Idle_Talk, Gestures (3–4)
- NPC villagers: Idle variations (2–3), walk (2)
- Underwater creature: Idle, Attack, limb movement (if animated) (3–5)
- Optional small animations: boat rocking, fish swim cycles, net toss

Suggestion: Use retargetable animations from marketplace or mocap sources to reduce custom animation costs.

---

## VFX (Particles3D/GPUParticles3D)
- Water splashes for contact points (3 variants) — Must Have (low cost)
- Underwater bubble streams and caustic highlights — Must Have
- Pearl shimmer / glow (shader + small particle dust) — Must Have
- UI feedback particles (pickup, sell success) — Must Have
- Fog & mist / beach ambient particles — Nice-to-Have
- Light shafts for underwater sequences (volumetric) — Nice-to-Have

---

## Audio (SFX & music)
### SFX
- Footsteps (sand/water/wood/stone) — 4 variants — Must Have
- Wave ambient loop — 1 (loop 30–60s) — Must Have
- Water entry / surface sounds for underwater — Must Have
- Bubble SFX & underwater muffled sound — Must Have
- Pickup sound (pearl pickup jingle) — Must Have
- UI SFX (confirm, cancel, notification) — 4–6 sounds — Must Have
- Shop ambience (conversational murmur) — Must Have
- Minor creature SFX (for octopus) — 2–3 — Nice-to-Have

### Music
- Ambient coastal track (loop) — 1 track (2–3 min) — Must Have
- Underwater tense loop — 1 track (1–2 min) — Must Have
- Shop/merchant theme (short loop) — 1 track — Nice-to-Have
- Ending short theme(s) (~45–90s each) — 1–2 tracks — Must Have (or map to ending variations)

### Voice
- Merchant: ~10 short lines (offer, haggle, thanks, refusal) — Must Have
- Player (if voiced): Optional (short lines 4–10) — Nice-to-Have for prototype
- Villagers: 2–3 lines per NPC — Nice-to-Have

Technical for audio:
- Formats: WAV or OGG (lossless for important SFX); streaming for long music tracks
- Implementation: Use `AudioStreamPlayer`/`AudioStreamPlayer2D` and Godot's AudioBus to cross-fade and duck ambient music

---

## UI / UX assets
- HUD: health/hunger/oxygen indicator (separate icons and bar) — Must Have
- Inventory: Item slot icon (pearl icon), inventory window frame, small icons for items (3–6) — Must Have
- Dialogue box: background panel, text font, speaker portrait placeholders — Must Have
- Buttons: Interact, Confirm, Cancel (gamepad icons & keyboard) — Must Have
- Menus: Main menu splash, pause menu, settings basic controls — Must Have

---

## Materials & Shaders
- Water surface material (shoreline wet sand, normal + foam) — Must Have
- Underwater post-processing (muffling, color correction, caustic overlay) — Must Have
- Pearl shader with Fresnel + Rim glow and spec highlights — Must Have
- Simple stylized skin shader for characters (if stylized) — Nice-to-Have

---

## Cinematics / Cutscenes (AnimationPlayer)
- 3 short shot sequences:
  - Intro establishing shot (beach at dawn) — Must Have
  - Underwater set piece (parallelor first-person closeup) — Must Have
  - Ending shot (spinning out depending on player choice) — Must Have

Each sequence: camera tracks, short cinematic triggers, simple cutscene animations (2–5s each)

---

## Technical assets (Scenes & Scripts)
- `Player.tscn` / `player.gd` (Character controller) — Must Have
- `Item_Pearl.tscn` / `item_pearl.gd` (pickup + unique item ID) — Must Have
- `Interactable.tscn` / `interactable.gd` generic base (pickup, talkable, trade) — Must Have
- `Merchant.tscn` / `merchant.gd` (sells, dialogue triggers) — Must Have
- Save system (`save.gd`) using JSON or Godot `File` API — Must Have
- Dialogue system (JSON or Godot Resource) — Must Have
- Scene streaming or instancing patterns for larger levels — Must Have

---

## Testing & QA content
- Playtest checklist (scenarios to validate) — Must Have
- 10–20 tester accounts or notes for branching (basic telemetry or JSON logging) — Must Have

---

## Acquisition Strategy & Prioritization
1. Start with placeholders for all characters and props using the Godot Asset Library or other free low-poly packs. (Immediate)
2. Acquire hero props / hero player model (custom or purchased) — Pawn/Player + merchant are priority custom assets. (Week 2–6)
3. Buy or commission 3 short music tracks or source royalty-free tracks; replace if custom music later. (Week 4–8)
4. For underwater creature, use placeholder static or marketplace model unless you can invest more in its animation. (Week 5–7)
5. Voice lines: hire a voice actor for merchant if budgets allow; otherwise use TTS for prototype. (Week 7–10)

---

## Naming Conventions & Standards
- Scenes: `scenes/<name>.tscn` (e.g., `scenes/player.tscn`, `scenes/merchant.tscn`)
- Scripts: `scripts/<name>.gd` or `scripts/<name>.cs` (e.g., `scripts/player.gd`)
- Assets: `assets/3d/<name>.glb`, `assets/2d/<name>.png`
- Textures: `tex/<type>_<name>_<res>` e.g., `tex_base_pearl_1k`
- Sound files: `audio/sfx_<category>_<name>.wav` and `audio/mus_<name>_loop.ogg`

---

## Format & Export Guidelines
- Mesh exports: glTF 2.0 (GLB) recommended for Godot compatibility
- Normals and texture maps: normal, roughness, metallic; occlusion & emissive where required
- Rigging: Standard skeletons exported via glTF; prefer animations compatible with glTF retargeting tools
- Audio: 44.1kHz or 48kHz WAV for SFX; long music tracks may be compressed/OGG for final builds
- Texture sizes: 2k for characters (player), 1k for mid-size props, 512 for small props

---

## Checklist for Prototype Delivery (Minimal list)
- [ ] `Player.tscn` + 1 player model with 4 core animations
- [ ] `Item_Pearl.tscn` with VFX and shader
- [ ] Beach scene (placeholders) + small dock + basic props
- [ ] One merchant NPC with dialogue interact, one merchant stand
- [ ] One underwater cavern with a short event and ambient music
- [ ] Inventory UI & Dialogue UI implemented
- [ ] Sound: Ambient beach loop, underwater loop, UI pickup, and 2 NPC SFX for dialogue triggers
- [ ] Simple ending trigger & save/load (using Godot `File` API)

---

## Outsourcing Suggestion (Microtasks)
- Purchase: 1 hero player model, 1 merchant model, a modular village pack, and an underwater pack if possible
- Commission: Short music/ambient tracks (one composer), 5–10 voice lines for merchant (~100–200 USD for small gigs)
- Freelance: Just 1 hero asset (player head & rigging) if you lack art time

---

## Next steps
- Convert this list into a CSV for import to your Kanban (Trello/Asana/Notion) or spreadsheet.
- If you'd like, I can create this CSV for easy import and tracking.

If you'd like I can also create an acquisition priority CSV with estimated cost/time per asset. Which would be more useful?