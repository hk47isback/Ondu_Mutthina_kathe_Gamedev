# Ondu_Mutthina_kathe_Gamedev
Tribute to Shankar Nag Sir's Ondu Mutthina Kathe - A short, narrative-driven single-player game following Aithu, a fisherman who discovers a single, perfect pearl while out at sea. The pearl acts as a catalyst for a dark moral tale: it awakens hopes and desperate plans in the village, causes friction between friends and neighbors, and culminates in a chilling betrayal and violent ambush. The game emphasizes atmosphere, personal stakes, and a tight vertical slice that explores ownership, duty, and the human cost of greed.

## Before you begin (collaborators)

Please read these docs first to keep story, scope, and tooling consistent:

- Story overview: [Story/STORY.md](Story/STORY.md)
- Level-by-level story flow: [Story/LEVEL_STORY.md](Story/LEVEL_STORY.md)
- Tech stack and tooling: [Game_design/TECH_STACK.md](Game_design/TECH_STACK.md)
- Getting started (Windows + Godot): [docs/START_HERE_GODOT.md](docs/START_HERE_GODOT.md)
- Technical setup details: [docs/TECH_SETUP.md](docs/TECH_SETUP.md)

If you propose changes that affect story beats or the tech stack, update the relevant markdown file(s) in the same PR.

## Folder structure

Repo root (docs + notes):

- `docs/` — planning, setup, roadmap
- `Story/` — story notes (core + level flow)
- `Game_design/` — design notes (tech stack, etc.)

Game project root (Godot): `ondu-muttina-kathe/`

- `ondu-muttina-kathe/project.godot` — Godot project file
- `ondu-muttina-kathe/scenes/` — `.tscn` scenes (Main, Player, NPCs, items)
- `ondu-muttina-kathe/scripts/` — GDScript (and optional C#) code
- `ondu-muttina-kathe/assets/3d/` — `.glb` models and 3D assets
- `ondu-muttina-kathe/assets/2d/` — UI textures, icons, sprites
- `ondu-muttina-kathe/audio/` — music, SFX, ambience
- `ondu-muttina-kathe/materials/` — Godot materials and shaders
- `ondu-muttina-kathe/fx/` — particles, VFX scenes/resources
- `ondu-muttina-kathe/build/` — exported builds (kept out of Git by `.gitignore`)
