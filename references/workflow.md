# Workflow

## 1) Intake

- Confirm task mode: `build-new` or `restyle-existing`.
- Capture stack constraints, target files, and immovable requirements.
- Ask only blocking clarification questions.

## 2) Style Prompt Decomposition

Extract explicit and implicit signals:

- Visual mood (calm, loud, premium, playful, editorial, futuristic).
- Color behavior (high contrast, muted, monochrome, neon accents).
- Typography posture (geometric, humanist, serif-led, condensed, mixed).
- Composition behavior (grid, asymmetric, layered, minimal density).
- Motion behavior (none, subtle, expressive, theatrical).

## 3) Style Pack Selection

- Look for existing fit under `references/style-packs/`.
- Reuse existing pack when overlap is high.
- Create a new pack if prompt defines materially different direction.

## 4) Design Contract

Create a compact contract before editing code:

- 5-8 bullets for non-negotiable style choices.
- Token map draft (color, type, spacing, radius, depth, motion).
- Component behavior notes (button, card, nav, section spacing).

## 5) Implementation

- Apply tokens at root/theme scope first.
- Apply typography and spacing system next.
- Update component styles and layout rules.
- Keep behavior logic untouched unless requested.

## 6) Verification

- Test mobile-first and desktop breakpoints.
- Validate contrast and keyboard focus states.
- Check motion for reduced-motion fallback.
- Check visual consistency across repeated components.

## 7) Delivery

- Report files changed and key visual outcomes.
- Call out tradeoffs and unresolved constraints.

