# Prototype Timeline (12 Weeks — max 3 months)

This plan assumes a single developer working 20–40 hours per week (adjust proportionally). It balances Design, Logic, Music, Gameplay, and Asset work to deliver a polished vertical slice demo within 12 weeks.

Total: 12 weekly sprints (sprint = 1 week), target total hours (example):
- 25 hrs/week * 12 weeks = 300 hrs
- 32 hrs/week * 12 weeks = 384 hrs
- 40 hrs/week * 12 weeks = 480 hrs

Below we provide a breakdown both as percentages and as hours for a 25–hr and 40-hr weekly plan.

## Time Allocation (Prototype overall)
- Design: 15% (45–72 hours)
- Logic (code/systems): 30% (90–144 hours)
- Music (composition & SFX integration): 8% (24–38 hours)
- Gameplay (mechanics design & tuning): 32% (96–154 hours)
- Assets (art / placeholders -> finalization): 15% (45–72 hours)
- Contingency / Project mgmt: 5% (15–24 hours)

> Percentages are approximate and can be adjusted depending on developer skill set and scheduling constraints.

---

## Weekly Breakdown
### Weeks 1–2: Setup & Core Design (Design-heavy)
- Goals: Completed project skeleton, GDD for vertical slice, risk plan, example level layout.
- Tasks & time split:
  - Design: 60–70% (Refine story beats, final sequences, dialogue outlines)
  - Logic: 20–30% (Project creation, player controller scaffolding, input mapping)
  - Assets: 10% (Placeholders/Quick environment layout)
  - Music: 5% (Pick & test placeholder tracks or mood samples)
  - Gameplay: 20% (Basic interactions: pickup, interact, UI skeleton)
- Deliverable: Playable movement, placeholder level, initial dialogue sketch

### Weeks 3–4: Inventory, UI & Dialogue (Logic + Gameplay + Assets)
- Goals: Implement pick-up system (pearl), UI for inventory, simple dialogue system
- Tasks & time split:
  - Logic: 45–55% (Inventory component, pickup mechanics, SaveGame skeleton)
  - Gameplay: 25–30% (Dialogue flow & choice system, HUD integration)
  - Design: 15% (Dialogue branching & NPC personality)
  - Assets: 20% (NPC placeholder, UI icons)
  - Music: 5% (Implement SFX for UI & pickup)
- Deliverable: Player can pick up pearl, view in inventory, and talk to merchant (roughly)

### Weeks 5–6: Underwater Sequence & Physics (Gameplay + Assets)
- Goals: Build underwater scene with oxygen or tension mechanic and a set-piece event
- Tasks & time split:
  - Gameplay: 45–55% (Underwater mechanic, oxygen/time penalties, simple puzzle or hazard)
  - Logic: 25–30% (Volume detection, oxygen component; stash / triggers)
  - Assets: 30% (Underwater props, VFX, bubble SFX, amphibious/creature placeholder)
  - Design: 10% (Situational beats & cinematic triggers)
  - Music: 10% (Begin composing underwater ambiances)
- Deliverable: Underwater scene playable; oxygen starts functioning; initial event (e.g., retrieve something; escape)

### Weeks 7–8: NPC Dialogue Expansion & Trading (Logic + Gameplay)
- Goals: Merchant trade flow, choices flow to branch outcomes, refine NPC interactions
- Tasks & time split:
  - Logic: 40–50% (Trade UI, sell item logic; branch flags for choices)
  - Gameplay: 30% (NPC schedules / basic AI like face-buttons to start conversations; trade consequences)
  - Design: 15% (Refine dialogues & branching consequences)
  - Assets: 20% (Merchant models, shop props), Music: 5% (Short shop theme)
- Deliverable: Merchant interaction to sell the pearl, branch recording; player's choice toggles states

### Weeks 9–10: Endings, Save, & Integration (Polish + Logic)
- Goals: Implement branching endings, Save/load, integration & initial polish
- Tasks & time split:
  - Logic: 35–45% (Save/Load & ending triggers, branch flag resolution)
  - Gameplay: 25–35% (Connect ending logic to gameplay & dialogue)
  - Design: 20% (Finalize dialogues & story beats for endings)
  - Assets: 20% (Polish key props & connective scenes)
  - Music: 10% (Draft ending score variations and integrate runtime mixers)
- Deliverable: Two or three endings reachable via player choices; Save/load works between key moments

### Weeks 11–12: Polish, QA, Playtesting & Demo Packaging (Finish)
- Goals: QA pass, UI polish, balancing, packaging a demo build with README & release notes
- Tasks & time split:
  - QA & Playtests: 40% (Bug fixes, performance & design adjustments)
  - Assets: 20% (Swap placeholders for final assets if feasible; LODs)
  - Gameplay: 20% (Tweak difficulty & fix edge cases)
  - Music: 15% (Mix and final placement)
  - Design: 5% (Last-minute tweaks and text changes)
- Deliverable: Packaged demo for distribution, a short trailer or document with play instructions, and a bug list

---

## Example Hours Summary (for 25 hr/week plan, 12 weeks = 300 hrs):
- Design: 15% = 45 hrs
- Logic: 30% = 90 hrs
- Music: 8% = 24 hrs
- Gameplay: 32% = 96 hrs
- Assets: 15% = 45 hrs
- Contingency: 5% = 15 hrs

Example for 40 hr/week plan, 12 weeks = 480 hrs:
- Design: 72 hrs
- Logic: 144 hrs
- Music: 38 hrs
- Gameplay: 154 hrs
- Assets: 72 hrs
- Contingency: 24 hrs

---

## Milestones & Acceptance Criteria
1. End of Week 2: Project scaffolded and GDD for vertical slice written; player can run and walk; placeholders in the environment
2. End of Week 4: Inventory & dialogue implemented; player can pick up pearl and talk to merchant
3. End of Week 6: Underwater mechanic functioning and event playable
4. End of Week 8: Trade & branching recorded; merchant can purchase the pearl
5. End of Week 10: Endings implemented; save/load works
6. End of Week 12: Packaged demo build with QA & minimal marketing assets

---

## Risk & Contingency Recommendations
- If you hit a blocker, swap non-critical custom art for placeholders and continue logic/coding work.
- Prioritize core mechanics: Movement, pickups, dialogue and one polished set-piece; all other work is optional until the end.
- Use quick outsourcing for hero assets taking >1 week to produce; hire microtasks.

---

## Quick Tips for Time Savings
- Use the Godot Asset Library or other free marketplaces for low-cost, high-quality props to reduce modeling time.
- Use audio loops and intuitive SFX libraries for early work
- Modular level design: a few tiles reused to make the world look bigger
- Keep the underwater sequence short to reduce art and animation time

---

## Next Steps
- Approve the time distribution you prefer (25, 32, 40 hr/week) and any trade-offs (e.g., more polish vs broader content).
- I can generate a printable sprint checklist CSV or Trello board with specific tasks for each week and automatically create tasks using Copilot prompts.
