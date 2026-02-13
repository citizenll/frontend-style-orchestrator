# Neumorphism Soft UI

## Source Prompt
Neumorphism. Extruded and inset elements via dual shadows on monochromatic backgrounds. Soft, tactile, physically grounded, and accessibility-aware.

## Intent
Create a calm, tactile interface where depth is communicated entirely through opposing light/dark shadow pairs on a unified cool-grey surface. Maintain strong readability and focus affordances while preserving the soft molded-from-one-material illusion.

## Do
- Keep a single cool-grey base surface and derive depth from shadow physics, not color variety.
- Apply consistent top-left light source and bottom-right dark shadow direction.
- Use extruded states for resting controls/cards and inset states for wells/pressed elements.
- Use deep inset wells for inputs and icon sockets to reinforce carved depth.
- Keep corners soft and rounded (16px to 32px) for pillowed material feel.
- Use smooth, short micro-interactions (shadow + tiny transform) to mimic physical press/lift.
- Keep accent usage sparse and functional (CTA, focus, active/positive states).
- Enforce high text contrast and visible keyboard focus on all interactive elements.
- Preserve neumorphic depth cues across mobile and desktop, including navigation.

## Avoid
- Avoid flat UI blocks with no depth transitions.
- Avoid pure white card backgrounds that break same-surface illusion.
- Avoid opaque hard-coded hex shadows without alpha blending.
- Avoid sharp corners and thin radii that conflict with soft UI language.
- Avoid low-contrast body text in muted tones below AA thresholds.
- Avoid hidden/weak focus indicators on interactive controls.

## Tokens
- Color:
  - `--background: #E0E5EC`
  - `--foreground: #3D4852`
  - `--muted: #6B7280`
  - `--accent: #6C63FF`
  - `--accent-light: #8B84FF`
  - `--accent-secondary: #38B2AC`
  - `--border: transparent`
- Type:
  - Display: Plus Jakarta Sans 500/600/700/800
  - Body/UI: DM Sans 400/500/700
  - Headline style: tight tracking with bold/extrabold weight
  - Body contrast: primary `#3D4852`, secondary `#6B7280`
- Space:
  - Hero/major sections: `py-32`
  - Grid spacing: `gap-12`
  - Container width: `max-w-7xl`
  - Card padding: `p-8` to `p-20` based on prominence
- Radius:
  - Cards/containers: `32px`
  - Controls/buttons/inputs: `16px`
  - Inner elements/wells: `12px` or full for circles
- Depth:
  - Extruded: `9px 9px 16px rgb(163 177 198 / 0.6), -9px -9px 16px rgba(255,255,255,0.5)`
  - Extruded hover: `12px 12px 20px rgb(163 177 198 / 0.7), -12px -12px 20px rgba(255,255,255,0.6)`
  - Extruded small: `5px 5px 10px rgb(163 177 198 / 0.6), -5px -5px 10px rgba(255,255,255,0.5)`
  - Inset: `inset 6px 6px 10px rgb(163 177 198 / 0.6), inset -6px -6px 10px rgba(255,255,255,0.5)`
  - Inset deep: `inset 10px 10px 20px rgb(163 177 198 / 0.7), inset -10px -10px 20px rgba(255,255,255,0.6)`
  - Inset small: `inset 3px 3px 6px rgb(163 177 198 / 0.6), inset -3px -3px 6px rgba(255,255,255,0.5)`
- Motion:
  - Standard UI transitions: `300ms ease-out`
  - Depth-heavy/nested visuals: `500ms ease-out`
  - Ambient float loops: ~3s ease-in-out infinite
  - Interaction delta: tiny lift/press only (`-1px` hover, `+0.5px` active)

## Component Notes
- Hero:
  - Keep generous spacing and a monochrome tactile background.
  - Use nested depth decorative circles (extruded/inset/extruded) to showcase system physics.
  - Ensure headline contrast remains strong against base surface.
- Navigation:
  - Sticky header can use subtle backdrop blur while preserving extruded controls.
  - Mobile nav should slide/reveal with matching soft shadow language.
- Buttons:
  - Default/secondary on base surface with extruded shadows.
  - Hover: slight lift + deeper extruded shadow.
  - Active: slight press + inset shadow.
  - Primary can use accent fill but must still preserve tactile press physics.
- Cards:
  - Background matches page surface (`#E0E5EC`) with no white card blocks.
  - Rounded 32px corners and soft dual shadows as default.
  - Hover should increase depth subtly, never dramatic.
  - Use icon wells inset within cards for tactile hierarchy.
- Forms:
  - Inputs use inset/inset-deep shadow treatments by state.
  - Focus adds visible accent ring with offset on base background.
  - Placeholders remain subdued but readable.
- Footer:
  - Keep monochrome continuity and depth cues without introducing new color surfaces.
  - Preserve clear text contrast and navigation affordance.

## Motion Notes
- Motion should feel physical, smooth, and quiet.
- Recommended interactions:
  - Card hover: `translateY(-1px)` + shadow deepening.
  - Button active: `translateY(0.5px)` + inset shift.
  - Nested decorative circles: mild scale/rotation changes on hover.
  - Optional ambient float for non-essential decorative clusters.
- Respect reduced-motion preferences by disabling ambient loops and minimizing transform deltas.

## Responsive Notes
- Keep neumorphic cues intact on all breakpoints (extruded controls, inset wells, rounded geometry).
- Mobile:
  - Collapse multi-column layouts to single column.
  - Keep hero visual present with constrained width and simplified depth complexity.
  - Maintain 44px+ touch targets and clear focus states.
- Tablet:
  - Move to 2-column structures with preserved spacing and depth hierarchy.
  - Keep shadows readable without overcrowding dense layouts.
- Desktop:
  - Enable full nested-depth compositions and larger spacing expression.

