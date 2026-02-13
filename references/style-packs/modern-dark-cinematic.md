# Modern Dark Cinematic

## Source Prompt
Modern Dark. A cinematic, high-precision dark mode style with layered ambient lighting, animated gradient blobs, mouse-tracking spotlights, and premium software micro-interactions.

## Intent
Create a premium developer-tool visual system that feels precise, fast, and expensive. Use deep near-black foundations, restrained indigo accents, atmospheric background layering, and subtle but highly tuned interaction details to achieve a polished modern dark experience.

## Do
- Keep dark mode base in near-black tones (`#050506` family), never pure black.
- Build a multi-layer background (radial base, noise, grid, ambient blobs) for depth.
- Use large blurred gradient blobs with slow float motion for cinematic lighting.
- Add mouse-tracking spotlight effects on interactive cards/panels.
- Keep motion minimal, precise, and expo-out; prefer 4-8px movement max.
- Use multi-layer shadow stacks (hairline + diffuse + ambient + optional accent glow).
- Keep accent usage deliberate: interaction, focus, hierarchy cues only.
- Use asymmetric bento-style layouts on desktop rather than uniform card grids.
- Preserve strong focus visibility and reduced-motion support.

## Avoid
- Avoid flat single-color backgrounds.
- Avoid pure black/white hard contrast (`#000` and `#fff`) as defaults.
- Avoid playful bouncy/spring-heavy animation.
- Avoid oversized hover transforms and dramatic rotations.
- Avoid oversaturating the UI with accent color.
- Avoid thick/high-contrast borders that break subtle premium tone.

## Tokens
- Color:
  - `--background-deep: #020203`
  - `--background-base: #050506`
  - `--background-elevated: #0a0a0c`
  - `--surface: rgba(255,255,255,0.05)`
  - `--surface-hover: rgba(255,255,255,0.08)`
  - `--foreground: #EDEDEF`
  - `--foreground-muted: #8A8F98`
  - `--foreground-subtle: rgba(255,255,255,0.60)`
  - `--accent: #5E6AD2`
  - `--accent-bright: #6872D9`
  - `--accent-glow: rgba(94,106,210,0.3)`
  - `--border-default: rgba(255,255,255,0.06)`
  - `--border-hover: rgba(255,255,255,0.10)`
  - `--border-accent: rgba(94,106,210,0.30)`
- Type:
  - Primary stack: Inter, Geist Sans, system-ui, sans-serif
  - Display headings: semibold with tight/negative tracking
  - Labels/meta: mono style with wide tracking where needed
  - Body text: relaxed line-height with off-white foreground
- Space:
  - Base unit: 4px
  - Section rhythm: `py-16` mobile, `py-24` tablet, `py-32` desktop
  - Card padding: `p-6` to `p-8`
  - Grid gaps: `gap-4` to `gap-8`
- Radius:
  - Large containers/cards: `16px`
  - Buttons/inputs: `8px`
  - Icon containers: `12px`
  - Pills: full radius
- Depth:
  - Card base: `0 0 0 1px rgba(255,255,255,0.06), 0 2px 20px rgba(0,0,0,0.4), 0 0 40px rgba(0,0,0,0.2)`
  - Card hover: `0 0 0 1px rgba(255,255,255,0.1), 0 8px 40px rgba(0,0,0,0.5), 0 0 80px rgba(94,106,210,0.1)`
  - CTA glow: `0 0 0 1px rgba(94,106,210,0.5), 0 4px 12px rgba(94,106,210,0.3), inset 0 1px 0 rgba(255,255,255,0.2)`
  - Inner highlight: `inset 0 1px 0 rgba(255,255,255,0.1)`
- Motion:
  - Primary easing: `[0.16, 1, 0.3, 1]` (expo-out)
  - Quick interactions: `200ms`
  - Standard transitions: `300ms`
  - Entrance: `600ms`
  - Blob float: `8s` to `10s`, `ease-in-out`, infinite

## Component Notes
- Hero:
  - Use gradient text treatment and cinematic ambient backlighting.
  - Include subtle scroll-linked opacity/scale/y parallax behavior.
  - Keep composition clean with high typographic hierarchy and controlled contrast.
- Navigation:
  - Desktop inline nav; mobile menu with blurred dark backdrop and smooth 0.2s reveal.
  - Ensure active/focus states use accent ring or glow with clear visibility.
- Buttons:
  - Primary: solid accent with layered glow and slight active compression (`scale 0.98`).
  - Secondary: translucent surface with refined border/inner highlight behavior.
  - Ghost: transparent baseline, subtle surface lift and text brighten on hover.
- Cards:
  - Glass-gradient surfaces with subtle top-edge highlight and 1px border tone.
  - Optional spotlight radial glow follows cursor (low-opacity, soft falloff).
  - Hover should brighten border and increase depth, not jump dramatically.
- Forms:
  - Elevated dark input background, subtle border, strong accent focus ring.
  - Placeholder/subtle text should remain legible without flattening contrast hierarchy.
- Footer:
  - Deepest background layer with restrained dividers and muted technical metadata.
  - Keep consistency with ambient lighting language but reduce visual noise.

## Motion Notes
- Motion must feel immediate and premium, not playful.
- Recommended patterns:
  - Hover lift: `-4px` to `-8px` max.
  - Active press: quick scale down and shadow reduction.
  - Staggered reveal: `0.08s` interval between siblings.
  - Scroll reveal: fade-up + slight scale from `0.95` to `1`.
- Respect `prefers-reduced-motion`: disable blob/parallax/spotlight animations or reduce to static fallback.

## Responsive Notes
- Keep visual language intact across breakpoints while reducing complexity on small screens.
- Mobile:
  - Collapse bento layouts to single column.
  - Scale hero typography down while preserving gradient treatment.
  - Tone down blob intensity and glow spread to avoid crowding.
  - Keep controls full-width where appropriate and touch targets >= 44px.
- Tablet:
  - Use 2-3 column intermediate layouts and simplified asymmetric spans.
  - Keep menu/section transitions smooth and lightweight.
- Desktop:
  - Enable full ambient stack, asymmetric bento expression, and richer spotlight behavior.

