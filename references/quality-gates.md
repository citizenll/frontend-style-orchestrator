# Quality Gates

Pass all gates before final response.

## Visual Coherence

- Typography, color, spacing, and depth reflect one clear direction.
- No mixed visual languages unless explicitly intentional.
- Repeated components are styled consistently.

## Responsiveness

- Layout is usable at common mobile width and desktop width.
- Text remains readable without clipping or overflow.
- Navigation and key actions remain discoverable on small screens.

## Accessibility

- Body text and interactive elements keep usable contrast.
- Focus states are visible for keyboard users.
- Motion has reduced-motion fallback where relevant.

## Implementation Hygiene

- Visual tokens are centralized rather than scattered.
- Existing business logic is preserved for restyling tasks.
- Changes are scoped to required files and avoid unrelated churn.

## Prompt Fidelity

- Result clearly reflects the requested style prompt.
- If tradeoffs were made, report them explicitly.

