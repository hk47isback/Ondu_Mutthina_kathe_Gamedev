# Super Productivity Task List (Project Manager Mode)

This is a **step-by-step task list** for you (solo dev) to build the Godot vertical slice described in `GDD.md`.

How to use in Super Productivity:
- Copy sections into Super Productivity as tasks (the `- [ ]` lines).
- If Super Productivity supports Markdown import in your setup, import this file.
- Do not try to do everything at once—finish tasks in order.

Scope target:
- Godot 4.x, Windows release
- 3D world + 2D UI
- Vertical slice: pearl discovery → merchant negotiation → friend theft → ambush ending

---

## Phase 0 — One-time Setup (Tools + Workspace) (1–2 hours)

- [ ] 001. Create a permanent project folder on disk (example `D:\\Games\\PearlGame\\`)
- [ ] 002. Install Godot 4.x (stable)
- [ ] 003. Install Blender (stable)
- [ ] 004. Install Krita (stable)
- [ ] 005. Set up backups (no Git): create a backup folder on another drive or cloud sync
- [ ] 006. Create a “Reference” folder for notes/screenshots (not in repo)
- [ ] 007. Decide your camera style: third-person (recommended) or first-person
- [ ] 008. Decide your art style: low-poly (recommended) or stylized-realism
- [ ] 009. Read the pitch + pillars in `GDD.md` (5 minutes)
- [ ] 010. Read `docs/START_HERE_GODOT.md` once end-to-end

---

## Phase 1 — Project Skeleton + Backups (Sprint 0A) (1–2 hours)

- [ ] 011. Create a backups folder (example `D:\\Games\\PearlGame_BACKUPS\\`)
- [ ] 012. Create folders: `scenes/`, `scripts/`, `assets/3d/`, `assets/2d/`, `audio/`, `materials/`, `fx/`, `build/`
- [ ] 013. Create a backup habit: after each milestone, zip the whole project folder
- [ ] 014. Name backups like `PearlGame_YYYY-MM-DD_001.zip`
- [ ] 015. Test restore once: unzip a backup and open the project in Godot
- [ ] 016. Create the Godot project in the repo root
- [ ] 017. Confirm the project runs (press Play → blank window)
- [ ] 018. Create `scenes/Main.tscn` (Node3D)
- [ ] 019. Set Project Settings → Run → Main Scene = `scenes/Main.tscn`
- [ ] 020. Backup snapshot: “Initial Godot project skeleton” (zip)

---

## Phase 2 — Input Map + Player Controller (Sprint 0B) (2–4 hours)

- [ ] 021. Add input actions: `move_forward`, `move_back`, `move_left`, `move_right`
- [ ] 022. Add input actions: `interact`, `confirm`, `cancel`
- [ ] 023. Add input action: `inventory`
- [ ] 024. Create `scenes/Player.tscn` (CharacterBody3D)
- [ ] 025. Add CollisionShape3D to Player
- [ ] 026. Add MeshInstance3D to Player (temporary capsule/cube)
- [ ] 027. Add Camera3D to Player (simple third-person placement)
- [ ] 028. Add Player to group: `player`
- [ ] 029. Create `scripts/player.gd` and attach to Player
- [ ] 030. Implement basic movement (no camera-relative yet)
- [ ] 031. Instance Player into `Main.tscn`
- [ ] 032. Add a basic floor mesh in Main (so you don’t fall)
- [ ] 033. Press Play: confirm movement works
- [ ] 034. Backup snapshot: “Player movement + input map” (zip)

---

## Phase 3 — Interaction System (Sprint 1A) (3–6 hours)

Goal: pressing `interact` triggers something near the player.

- [ ] 035. Decide interaction method: Area3D overlap (recommended)
- [ ] 036. Add an Area3D to Player named `InteractSensor`
- [ ] 037. Add a CollisionShape3D to `InteractSensor` (small sphere)
- [ ] 038. Create `scripts/interactable.gd` (base script)
- [ ] 039. Define an `interact(actor)` function in `interactable.gd`
- [ ] 040. Create `scenes/Interactable.tscn` (Area3D + CollisionShape3D)
- [ ] 041. Attach `interactable.gd` to Interactable
- [ ] 042. In Player script, detect overlapping interactables
- [ ] 043. In Player script, on `interact` pressed, call `interact(self)` on nearest
- [ ] 044. Create a test interactable object that prints a message
- [ ] 045. Test: stand near object → press interact → message prints
- [ ] 046. Backup snapshot: “Interaction base system” (zip)

---

## Phase 4 — Pearl Pickup + Inventory Flag (Sprint 1B) (3–6 hours)

Goal: pick up the pearl and track it (simple boolean is fine).

- [ ] 047. Create `scenes/Item_Pearl.tscn` (Area3D)
- [ ] 048. Add MeshInstance3D sphere + CollisionShape3D sphere
- [ ] 049. Add `scripts/item_pearl.gd` with `picked_up` signal
- [ ] 050. Make pearl detect Player (group `player`) and emit + queue_free
- [ ] 051. In Main, create `has_pearl` variable
- [ ] 052. Connect pearl signal to Main → set `has_pearl = true`
- [ ] 053. Place pearl in scene and test pickup
- [ ] 054. Create `scripts/inventory.gd` (simple inventory data)
- [ ] 055. Replace `has_pearl` with inventory state (still can be boolean)
- [ ] 056. Backup snapshot: “Pearl pickup + inventory flag” (zip)

---

## Phase 5 — HUD (Pearl Counter + Prompts) (Sprint 1C) (3–6 hours)

- [ ] 057. Add CanvasLayer to Main
- [ ] 058. Add Label: `PearlLabel`
- [ ] 059. Update UI when pearl picked up (Pearl: 0/1)
- [ ] 060. Add Label: `PromptLabel` (shows “Press E” when near interactable)
- [ ] 061. When interactable is in range, show prompt
- [ ] 062. When not in range, hide prompt
- [ ] 063. Backup snapshot: “HUD: pearl + interact prompt” (zip)

---

## Phase 6 — Level Blockout (Beach + Dock + Market) (Sprint 1D) (6–12 hours)

- [ ] 064. Create `scenes/Level_Beach.tscn` (Node3D)
- [ ] 065. Add primitive blockout meshes (ground, dock, stalls)
- [ ] 066. Add a clear path the player can follow
- [ ] 067. Add lighting (DirectionalLight3D + WorldEnvironment)
- [ ] 068. Add placeholder water plane (simple mesh)
- [ ] 069. Instance Level_Beach into Main
- [ ] 070. Move spawn point to beach start
- [ ] 071. Backup snapshot: “Blockout beach + dock + market” (zip)

---

## Phase 7 — Dialogue System (Simple + Data-driven) (Sprint 2A) (8–16 hours)

Goal: talk to merchant, pick options, set flags.

- [ ] 072. Choose dialogue format: JSON file (recommended)
- [ ] 073. Create `data/` folder (optional) or store JSON in `assets/2d/` for now
- [ ] 074. Define dialogue schema: nodes with `id`, `text`, `choices[]`
- [ ] 075. Create `scripts/dialogue_runtime.gd` to load JSON
- [ ] 076. Create `scenes/UI_Dialogue.tscn` (Control)
- [ ] 077. UI: Label for text + buttons for choices
- [ ] 078. Implement: show node text
- [ ] 079. Implement: clicking choice navigates to next node
- [ ] 080. Implement: choices can set flags (dictionary)
- [ ] 081. Implement: close dialogue returns control to player
- [ ] 082. Add input: `confirm` selects focused button
- [ ] 083. Add input: `cancel` closes dialogue
- [ ] 084. Backup snapshot: “Dialogue system + UI” (zip)

---

## Phase 8 — Merchant NPC + Trade Choice (Sprint 2B) (8–16 hours)

Goal: merchant interaction offers trade; player can accept/decline.

- [ ] 085. Create `scenes/Merchant.tscn` (CharacterBody3D or Node3D)
- [ ] 086. Give merchant a placeholder mesh + collision
- [ ] 087. Add Area3D interact trigger to merchant
- [ ] 088. Attach `scripts/merchant.gd`
- [ ] 089. On interact: open merchant dialogue
- [ ] 090. Dialogue options: Sell / Refuse
- [ ] 091. If Sell: remove pearl from inventory, set `flag_sold_pearl = true`
- [ ] 092. If Refuse: keep pearl, set `flag_refused = true`
- [ ] 093. Update HUD after selling (Pearl: 0)
- [ ] 094. Add “merchant suspicious” follow-up line based on choice
- [ ] 095. Backup snapshot: “Merchant + trade flow” (zip)

---

## Phase 9 — Underwater Area + Oxygen (Sprint 3) (12–20 hours)

Goal: underwater set-piece with oxygen meter.

- [ ] 096. Create `scenes/Level_Underwater.tscn` (blockout cave)
- [ ] 097. Add a clear entry/exit path
- [ ] 098. Add underwater lighting + fog (WorldEnvironment)
- [ ] 099. Create `scenes/WaterArea.tscn` (Area3D)
- [ ] 100. On enter WaterArea: set `is_underwater = true`
- [ ] 101. On exit WaterArea: set `is_underwater = false`
- [ ] 102. Create `scripts/oxygen.gd` component for Player
- [ ] 103. If underwater: oxygen decreases over time
- [ ] 104. If not underwater: oxygen refills
- [ ] 105. Add HUD oxygen bar (TextureProgressBar)
- [ ] 106. At low oxygen: show warning UI
- [ ] 107. At zero oxygen: apply damage or forced fail state
- [ ] 108. Place pearl discovery moment in underwater area (if not already)
- [ ] 109. Add bubble particle effect (Particles3D)
- [ ] 110. Add underwater ambient sound
- [ ] 111. Backup snapshot: “Underwater + oxygen mechanic” (zip)

---

## Phase 10 — Friend NPC + Theft Beat (Sprint 4) (12–20 hours)

Goal: friend tries to steal; player reacts; flags record outcome.

- [ ] 112. Create `scenes/Friend.tscn` (CharacterBody3D or Node3D)
- [ ] 113. Placeholder mesh + collision
- [ ] 114. Add interaction trigger + `scripts/friend.gd`
- [ ] 115. Define story flags: `flag_friend_forgiven`, `flag_friend_confronted`, `flag_friend_bargained`
- [ ] 116. Trigger theft event after condition (example: after pearl obtained)
- [ ] 117. Implement theft cut: disable player movement briefly
- [ ] 118. Show dialogue choices: Forgive / Confront / Bargain
- [ ] 119. Choice sets flags accordingly
- [ ] 120. If theft succeeds path: set `flag_pearl_taken = true`, remove pearl
- [ ] 121. If theft prevented path: set `flag_pearl_retained = true`
- [ ] 122. Update merchant behavior based on theft flags
- [ ] 123. Add simple animation placeholder (AnimationPlayer with transforms)
- [ ] 124. Backup snapshot: “Friend theft beat + flags” (zip)

---

## Phase 11 — Ambush Set-piece (Sprint 5–6) (16–30 hours)

Goal: scripted ending sequence with basic AI + camera cuts.

- [ ] 125. Create `scenes/Level_Ambush.tscn` (dock alley blockout)
- [ ] 126. Add chokepoint layout for tension
- [ ] 127. Create `scenes/Goon.tscn` (CharacterBody3D)
- [ ] 128. Add placeholder mesh + collision
- [ ] 129. Create `scripts/goon_ai.gd` (simple state machine)
- [ ] 130. States: idle → approach → attack
- [ ] 131. Add basic navigation (NavMesh + pathing) OR simple direct chase
- [ ] 132. Create `scripts/ambush_director.gd`
- [ ] 133. Ambush trigger: entering area starts sequence
- [ ] 134. Spawn goons at spawn points
- [ ] 135. Lock player control briefly (or limit movement)
- [ ] 136. Add camera cut system (Camera3D nodes + AnimationPlayer)
- [ ] 137. Create AnimationPlayer timeline for camera cuts + timing
- [ ] 138. Add sound hits + music sting
- [ ] 139. End state screen (Control scene) after climax
- [ ] 140. Backup snapshot: “Ambush set-piece + ending” (zip)

---

## Phase 12 — Save/Load (Sprint 6) (6–12 hours)

Goal: save key flags and inventory.

- [ ] 141. Decide save format: JSON in user data folder
- [ ] 142. Create `scripts/save_system.gd`
- [ ] 143. Save: inventory state + story flags + last checkpoint
- [ ] 144. Load: restore inventory + flags
- [ ] 145. Add save at checkpoints (after pearl pickup, after merchant, after friend)
- [ ] 146. Add load on startup option
- [ ] 147. Test save/load twice (close game, reopen)
- [ ] 148. Backup snapshot: “Save/load system” (zip)

---

## Phase 13 — Art Pipeline (Blender + Krita) (ongoing)

Start with placeholders, then replace gradually.

- [ ] 149. Blender: create a simple base humanoid mesh (low poly)
- [ ] 150. Blender: rig with a basic armature
- [ ] 151. Blender: test 3 poses (arms up, walk pose, crouch)
- [ ] 152. Blender: create 3 variants (Aithu, Merchant, Friend) by swapping clothes/hair
- [ ] 153. Blender: export each as `.glb` into `assets/3d/`
- [ ] 154. Godot: replace placeholder meshes with imported `.glb`
- [ ] 155. Krita: create pearl icon PNG
- [ ] 156. Krita: create basic UI panel background PNG
- [ ] 157. Godot: swap UI to use Krita textures
- [ ] 158. Backup snapshot: “First art pass (characters + UI)” (zip)

---

## Phase 14 — Audio (SFX + Music) (6–12 hours)

- [ ] 159. Collect placeholder SFX (footsteps, pickup, waves)
- [ ] 160. Add AudioBus layout (Master, SFX, Music)
- [ ] 161. Implement ambient crossfade between beach and underwater
- [ ] 162. Add pickup sound to pearl
- [ ] 163. Add dialogue UI sounds (confirm/cancel)
- [ ] 164. Add ambush music sting
- [ ] 165. Backup snapshot: “Audio pass” (zip)

---

## Phase 15 — Polish + Performance (8–20 hours)

- [ ] 166. Add pause menu (resume, settings, quit)
- [ ] 167. Add settings: volume sliders
- [ ] 168. Add settings: resolution/fullscreen toggle
- [ ] 169. Add settings: quality preset (if needed)
- [ ] 170. Improve lighting and readability (contrast, fog tuning)
- [ ] 171. Remove obvious bugs in interaction and UI
- [ ] 172. Fix camera clipping issues
- [ ] 173. Use Godot profiler to find biggest bottleneck
- [ ] 174. Reduce heavy meshes/textures if needed
- [ ] 175. Backup snapshot: “Polish pass” (zip)

---

## Phase 16 — Windows Export (Release Prep) (2–6 hours)

- [ ] 176. Configure export preset: Windows Desktop
- [ ] 177. Export a test build into `build/`
- [ ] 178. Run the exported EXE (outside Godot) and test basics
- [ ] 179. Confirm save path works in exported build
- [ ] 180. Create a short README for testers (controls + goal)
- [ ] 181. Create a feedback form (simple Google Form)
- [ ] 182. Package build as ZIP
- [ ] 183. Backup snapshot: “Windows export ready” (zip)

---

## Phase 17 — Playtest Loop (repeat) (ongoing)

- [ ] 184. Playtest 1: watch someone try without help
- [ ] 185. Write down every confusion point (UI, controls, objective)
- [ ] 186. Fix top 3 confusions
- [ ] 187. Playtest 2: confirm fixes worked
- [ ] 188. Fix top 3 bugs
- [ ] 189. Final pass: pacing + emotional impact of ambush sequence
- [ ] 190. Final build export for release

---

## Optional “Manager Rules” (to stay productive)

- Only do tasks in order.
- If a task takes more than 2 hours, split it into 2–4 smaller tasks.
- Always keep the game runnable (no broken main branch).
- Replace placeholders only after mechanics work.
