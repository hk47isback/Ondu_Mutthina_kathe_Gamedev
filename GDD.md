# Game Design Document (GDD) - Ondu Muttina Kathe (inspired)

## Pitch
A short, narrative-driven single-player game following Aithu, a fisherman who discovers a single, perfect pearl while out at sea. The pearl acts as a catalyst for a dark moral tale: it awakens hopes and desperate plans in the village, causes friction between friends and neighbors, and culminates in a chilling betrayal and violent ambush. The game emphasizes atmosphere, personal stakes, and a tight vertical slice that explores ownership, duty, and the human cost of greed.

## Core Pillars
1. Exploration & atmosphere
2. Choice-driven narrative with multiple endings
3. One unique gameplay mechanic: underwater tension (oxygen, stealth, or puzzle)
4. Light resource/trading mechanics (selling to merchants)

## Target Platform(s)
- Primary: PC (Windows)
- Later: Potential Steam Deck, consoles (TBD)

## Playtime
- MVP: 60–120 minutes

## Player Experience Goals
- Evoke a coastal small-town setting with moral choices
- Make the pearl feel special, and decisions feel impactful
- Give players a strong emotional scene (underwater) that is both gameplay and narrative-driven

## Core Systems
- Player controller (third-person or first-person)
- Item pickup and inventory (pearl as a unique item)
- Dialogue system with branching choice support
- Underwater area with oxygen or alternative tension mechanic
- Simple trading system (sell pearl or other valuables)
- Save/load system

## Characters & Scenes (High Level)
- Player: Aithu — the protagonist: a fisherman who finds the pearl and faces the moral and practical implications of his discovery.
- NPCs:
	- Merchant — a friendly but suspicious buyer who appears legitimate at first.
	- Friend — a well-meaning village friend who becomes desperate and tries to take the pearl to help the village.
	- Merchant's Men — hired thugs who enforce the merchant's plan.
	- Aithu's family — his wife and child, who represent the stakes and motivation for Aithu's choices.
	- Villagers, priest/wise figure (optional) — contextual roles and observers.
- Scenes: Village market and small shop, Docks/boat (fishing area), Underwater cavern (discovery set-piece), Aithu's home, Alley/ambush location.

## Branches & Endings
This prototype focuses on a linear story with critical choice beats that affect how events unfold — but the narrative is driven toward a tragic climax to highlight the emotional stakes.
- Key beats and choice points:
	- Show & Claim: Upon finding the pearl, Aithu can choose to immediately claim ownership and keep the pearl private, publicly show it to the village, or inform a mentor/priest (setting off different social reactions).
	- Response to friend: When the friend, acting out of desperation for the village's welfare, attempts to steal the pearl, the player can choose how to respond (forgive, confront, or attempt to broker a compromise). These choices alter the player's relationships and influence later scenes.
	- Merchant negotiation: The merchant offers a deal that can be accepted or declined. Suspicions arise depending on how the negotiation goes.
	- Tragic Ambush (Prototype ending): Regardless of some earlier decisions, the merchant later returns with hired men and attempts to seize the pearl by force; the scenario escalates to a violent ambush where Aithu, his wife, and child are attacked. The prototype emphasizes this dark outcome as the climactic narrative beat.

Note: The prototype may still include variations in intermediate states for playtesting (e.g., whether the friend steals or not), but the vertical slice's emotional impact hinges on the ambush scene.

## Polish & Quality
- Focus on readability of UI, consistent and evocative sound design, and baked lighting. Use minimal voice acting and original music.

---

## Next Steps (Priority)
1. Finish `docs/TECH_SETUP.md` and create project repository.
2. Implement a vertical slice: small environment + underwater discovery sequence + the merchant and friend/interact beats.
3. Script and implement the friend-theft event and initial merchant negotiation scenes.
4. Build the merchant ambush as a scripted set-piece to end the prototype and refine audio, VFX and pacing to maximize emotional impact.
5. Milestone: vertical slice ready for playtesting (2–6 weeks).