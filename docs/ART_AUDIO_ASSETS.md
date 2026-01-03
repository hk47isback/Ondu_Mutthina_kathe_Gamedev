# Art, Audio, & Asset Pipeline

## Asset Priorities (MVP first)
1. Environments: Beach (start), shop/market, small docks, underwater cave
2. Key props: Boat, nets, crates, shop sign, market stalls
3. Characters: Player model (local fisherman), merchant, 3 villagers (static speaking NPCs)
4. Animations: Player idle/walk/run, NPC idle & simple gestures, pickup animations, underwater swim
5. FX: Water splash, bubbles, underwater caustics, pearl shimmer
6. Audio: Ambient beach, underwater muffled sound, one music track (new/original), UI sounds

## Art Pipeline
- Modelling: Blender
- Texturing: Substance Painter (or Blender texture painting for low-cost)
- Export: glTF/GLB for Godot; FBX for certain pipelines but prefer glTF for compatibility
- LOD & atlas: Generate 2–3 LODs for complex meshes, combine small meshes into atlases where possible

## Audio Pipeline
- Field & SFX: Use royalty-free libraries for initial development (e.g., Freesound, BBC Sound Effects)
- Music: Compose or buy original tracks; avoid using film soundtrack unless licensed
- Implementation: Create an audio manager with events for ambient transitions and sfx

## Art Style & Constraints
- Stylized-realism with high-contrast lighting
- Limit vertex/tri count: aim for 15–25k per large character mesh
- Use baked or hybrid lighting for better performance in outdoor scenes

## Placeholder Strategy
- Begin with the Godot Asset Library and free marketplace packs or low-poly packs
- Replace core props and character models as time allows

## Naming Conventions
- Scenes: `scenes/<name>.tscn`
- Scripts: `scripts/<name>.gd` or `scripts/<name>.cs`
- Meshes: `assets/3d/<name>.glb`
- Textures: `tex/<type>_<baseName>`

---

## Asset List (MVP)
- `SM_Dock_01`, `SM_Boat_01`, `SM_Crate_01` - props
- `SK_Player_Fisherman` - player model
- `Item_Pearl.tscn` - special item (use `item_pearl.gd` for pickup logic)
- `M_Water_Shallow` - water material
- `SFX_Waves`, `SFX_Underwater_Bubble` - audio

## Acceptance Criteria
- All MVP assets are present and functional in the prototype level
- Asset LODs are implemented for all high-poly meshes
- Audio is implemented and transitions correctly between land and underwater

---

## Outsourcing & Marketplace
- For a solo dev: Consider buying a small set of modular village packs and a character pack for rapid iteration
- Hire a freelancer for 3–5 hero assets (player, NPCs, hero prop) if needed

## Next Steps
- Create a minimal set of placeholder assets
- Bake initial lighting and test the water shader
- Add one custom hero asset (player) and one merchant model for the prototype
