# Godot 3D Roadmap — Windows Release (Solo Developer)

This roadmap is scoped for a solo developer shipping a 3D Godot game (with some 2D UI/overlay art) for Windows. It breaks the project into practical stages with actionable steps, recommended deliverables, and pragmatic scope guidance so a single person can complete a polished vertical slice and prepare a Windows release.

## Recommended Scope (solo-friendly)
- Small number of locations (3–6 meaningful scenes)
- One core gameplay loop (find pearl → choices → ambush set-piece)
- Low-to-mid poly 3D assets, atlas'd textures, minimal animation complexity
- Mostly GDScript for speed; C# or C++ only if necessary
- Use marketplace/free assets for secondary props to save time

## Stages

**1. Planning & Setup (1 week)**
- Decide Godot version (Godot 4.x recommended for modern 3D features).
- Set up backups (no Git): create a backups folder on another drive or cloud sync.
- Create a minimal project skeleton: `scenes/`, `scripts/`, `assets/3d/`, `assets/2d/`, `audio/`, `build/`.
- Define target resolution, input mappings (keyboard + gamepad), and quality presets for Windows.
- Deliverables: repo, `project.godot`, simple README, task backlog.

**2. Prototype — Core Loop (2–4 weeks)**
- Build a playable vertical-slice prototype with placeholder art.
  - Player controller (CharacterBody3D) with movement, jump, interact.
  - Pearl pickup item and unique inventory flag (single-slot unique item).
  - Underwater tension mechanic (oxygen meter or stealth variant) implemented in one demo area.
  - Basic dialogue/choice stub (data-driven JSON or Godot Resource with simple branching).
- Keep visuals placeholder (low-poly, flat colors) — iterate mechanics first.
- Deliverable: Playable loop (10–20 minutes) with debug UI and acceptance test.

**3. Core Systems (3–6 weeks)**
- Implement reusable systems:
  - Inventory component (unique item handling, UI hooks).
  - Dialogue/choice system with flags and simple persistence.
  - Save/load using Godot's `File` API or `ConfigFile` for prototype.
  - Simple NPC behaviour: merchant, friend, and goons (state machine: idle → interact → hostile).
- Script the friend-theft and merchant negotiation sequences as event chains.
- Deliverable: Stable systems, scripted beats reproducible in editor.

**4. Level Design & Art Pass (4–8 weeks, iterative)**
- Blockout each scene; iterate with low-poly models and modular pieces.
- Replace placeholders with hand-authored or marketplace 3D assets.
- Create 2D HUD, icons, and simple portraits for dialogue.
- Audio: temporary SFX and music (royalty-free or commissioned minimally).
- Optimize: LODs on meshes, texture atlases, light baking where applicable, occlusion culling.
- Deliverable: Visually coherent vertical slice with audio and basic VFX.

**5. Polish, UX & Performance (2–4 weeks)**
- Add post-process (color grading), particle VFX for key moments, and animation polish.
- Build options menu (resolution, quality presets, input remapping, volume sliders).
- Accessibility: subtitle toggle, adjustable UI scale, invert Y option.
- Profile performance on target Windows hardware; fix hotspots (physics, draw calls).
- Deliverable: Playable, polished slice that runs acceptably on target hardware.

**6. QA, Playtesting & Balancing (2–4 weeks)**
- Internal QA pass and external playtests (friends, community testers).
- Collect bug reports, iterate on pacing, adjust difficulty/oxygen timers.
- Lock final build candidate for release testing.

**7. Release Preparation — Windows Build (1–2 weeks)**
- Prepare build pipeline: export templates for Windows (`.exe`, data folder).
- Create installer or ZIP package; include redistributable instructions.
- Prepare store/launch assets: trailer, screenshots, description, privacy/legal info.
- Run final legal checklist (credits, third-party asset licenses, “inspired by” wording).
- Deliverable: Build ready for upload to platform (Itch/Steam).

**8. Launch & Post-release (ongoing)**
- Monitor crash reports and feedback, prepare small patches.
- Promote with short trailers, dev logs, and a demo if feasible.

## Practical Tips for a Solo Developer
- Prioritize scope: finish mechanics before fidelity. Trim features aggressively.
- Reuse and modify marketplace/free assets to save time.
- Automate repetitive tasks (export templates, naming conventions).
- Keep scenes small and modular to reduce iteration time.
- Track time per task and aim for short milestones (weekly playable builds).

## Toolchain Recommendations
- Godot Engine (4.x recommended)
- Blender (modeling/UVs)
- Aseprite or Affinity/Photoshop (2D art & UI)
- Audacity / LMMS / free SFX packs (audio)
- Backups (zip snapshots + cloud/drive copy)
- OBS / simple editor for trailers

## Example Timeline (conservative)
- Planning: 1 week
- Prototype: 3 weeks
- Core systems: 4 weeks
- Art/level pass: 6 weeks (iterative)
- Polish & QA: 4 weeks
- Release prep: 1 week
- Total: ~19 weeks (4–5 months). Trim aggressively to hit 3 months for a tight vertical slice.

---

If you want, I can now:
- Scaffold a Godot project structure for you, or
- Generate a concise `Sprint 0` checklist and example `Player.gd` prototype script.

---
*File created to support a Windows-targeted Godot 3D release for a solo developer.*
