# Technical Setup & Tools

## Recommended Engine & Version
- Godot Engine 4.x (latest stable release)

## Project Template
- Start from a 3D project; use a `Player.tscn` / `CharacterBody3D` setup for a third-person controller, or a first-person setup if preferred.

## Languages & Systems
- GDScript: Primary for rapid iteration and fast iteration.
- C# (Mono) or Native modules only if necessary for platform integrations or performance-critical code.

## Backups (no Git)
- Create a backups folder outside the project (another drive if possible).
- After each milestone, zip the entire project folder.
- Name backups like `PearlGame_YYYY-MM-DD_001.zip` so you can roll back easily.

## CI / Build
- Optional (advanced): automated export using Godot CLI / headless export templates for Windows builds
- Optional: custom export scripts that call Godot's headless `--export` functionality for packaging.

## Required Plugins & Tools
- Godot Asset Library packages for water, FX, and environment packs where useful
- Third-party water shaders or simple Godot `WaterArea` scene for underwater effects
- Godot's `Particles3D`/`GPUParticles3D` for VFX and `AnimationPlayer` for cutscenes
- Low-poly characters and face/portrait systems (no cloud high-fidelity service required)

## Project Structure (suggested)
- `scenes/` — top-level `.tscn` files (e.g., `Player.tscn`, `Merchant.tscn`)
- `scripts/` — GDScript/C# files (e.g., `player.gd`, `inventory.gd`)
- `assets/3d/`, `assets/2d/`, `audio/`, `materials/`, `fx/`
- `build/` — export artifacts
- `docs/`

## Asset Pipeline
- Use Blender for modeling and export using glTF 2.0 (GLB) for best compatibility with Godot.
- LODs: Prepare LODs as needed; keep character LODs minimal for a small project.
- Naming standard: `Player.tscn`, `item_pearl.tscn`, and `*.gd` scripts; keep file and node naming consistent.

## Input Mapping
- Use Godot's Input Map (`Project Settings > Input Map`) and define actions:
  - `move_forward`, `move_back`, `move_left`, `move_right` (WSAD / left stick)
  - `interact` (E / gamepad face button)
  - `inventory` (I / start)
  - `confirm` (space / gamepad face button)

## Useful Starter Packages / Asset Library
- Low-poly water and shoreline packs from the Godot Asset Library
- Small village / dock props and modular environment pieces
- Underwater FX shaders or particles
- Low-poly character packs adapted for Godot

## Development Tools & Plugins (workflow)
- Godot Editor (primary) and VSCode with the Godot extension for editing scripts and remote debugging
- Blender: modeling & simple animations (export to glTF/GLB)
- Aseprite / Affinity / Photoshop: 2D UI and sprites
- Copilot in VSCode: assist GDScript generation, scene scaffolding, and editor steps

## Debugging & Profiling
- Godot's built-in profiler (Frame, Physics, Rendering) and the remote debugger
- Use `print()` logging, and inspect the `Monitor` and `Profiler` panels for bottlenecks
- Toggle VSync and test on target hardware for frame pacing

## Acceptance Criteria for Technical Setup
- Project loads and runs in the Godot Editor
- Backups are working (you can restore from a zipped snapshot)
- A placeholder scene, character `Player.tscn`, and pickup (`Item_Pearl.tscn`) present and playable in editor
- A CI job or script that can export a Windows build using Godot's headless export (optional)

---

## Copilot-Assisted Workflow

Once you create your Godot project and open the folder in VSCode or the Godot Editor:

1. **Say "Start Sprint 0"** — Copilot will generate:
   - Backup checklist (what to zip, and when)
   - `project.godot` settings and export profile checklist
   - Project folder structure checklist and `input_map` entries
   - Starter scenes and script skeletons

2. **For each sprint task**, ask Copilot for:
   - GDScript files (copy into `scripts/`)
   - Scene/Node scaffolds as step-by-step instructions or scene snippets (`.tscn`)
   - JSON configs (dialogue, save data schemas)
   - Debugging help and reproduction steps when things break

3. **Copilot can generate**:
   - GDScript components (`inventory.gd`, `oxygen.gd`, etc.)
   - Simple AI state machine scripts and behavior scaffolds
   - Dialogue node structures and branching logic
   - VFX parameter guidance for `Particles3D` and `AnimationPlayer` timing
   - Export steps and packaging checklist for Windows builds

---

## Next Steps (technical tasks)
- Set up a new Godot project with `Player.tscn` and a placeholder environment.
- Add an `Item_Pearl.tscn` with basic pickup logic (connect signals to an `inventory.gd`).
- Create your first backup zip snapshot after the project runs.
- Open project folder in VSCode or Godot Editor and say "Start Sprint 0" to begin.