# Tech Stack

## Engine
- **Godot Engine 4.x** (latest stable release)

## Scripting
- **GDScript** (primary)
- **C# (Mono) / native modules** only if needed for integrations or performance-critical parts

## Platform Targets
- **Primary:** PC (Windows)
- **Later (TBD):** Android / Steam Deck / consoles

## DCC & Content Tools
- **Blender** for 3D modeling and simple animation
  - Export format: **glTF 2.0 (.glb)**
- **Krita** for 2D UI images, icons, and textures

## Editor / IDE
- **Godot Editor** (primary)
- **VS Code** with a Godot extension (for script editing + debugging workflow)

## Asset/Project Conventions
- Start from a **3D project**.
- Suggested project folders:
  - scenes/
  - scripts/
  - assets/3d/, assets/2d/
  - audio/, materials/, fx/
  - build/
  - docs/

## Backups & Versioning
- Keep a backups folder outside the project.
- Zip the whole project folder after each milestone.
- Naming suggestion: PearlGame_YYYY-MM-DD_001.zip

## Build / CI (Optional)
- Automated export using Godot CLI / headless export templates for Windows builds.

## Key Technical Systems (Prototype)
- Player controller (third-person or first-person)
- Item pickup + inventory (pearl as unique item)
- Branching dialogue/choices
- Underwater tension mechanic (e.g., oxygen)
- Simple trading system
- Save/load
