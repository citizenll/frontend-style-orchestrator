# Hand-Drawn Sketch

## Source Prompt
Hand-Drawn / Sketch. Organic wobbly borders, handwritten typography, paper textures, and playful imperfection. Elements should feel marker/pencil sketched on textured paper.

## Intent
Create a human, approachable, and playful interface that feels physically sketched rather than digitally manufactured. Prioritize irregular forms, hard offset shadows, hand-written typography, and tactile paper/collage details while keeping component behavior reusable and consistent.

## Do
- Use irregular multi-value border-radius for all major UI surfaces.
- Keep linework bold and visible with thick borders (`2px` to `4px`).
- Use hard offset shadows only (no blur) to simulate paper layering.
- Apply warm paper background with subtle dot/grain texture.
- Use handwritten fonts: Kalam for headings, Patrick Hand for body/UI.
- Introduce slight tilt and asymmetry (`-2deg` to `2deg`) to avoid rigid layouts.
- Add sketch-like decorations (tape strips, tacks, dashed connectors, arrows, squiggles).
- Keep color palette tight: paper tones + marker red + pen blue.
- Preserve playful micro-interactions: quick jiggle/rotate, press-flat buttons.

## Avoid
- Avoid perfect geometric shapes and default rounded classes as the only radius treatment.
- Avoid soft blurred shadows and modern glassmorphism effects.
- Avoid sterile spacing/rhythm that removes handcrafted character.
- Avoid corporate typography stacks that conflict with handwritten identity.
- Avoid adding too many accent colors outside the defined sketch palette.
- Avoid heavy animation complexity; keep motion simple and snappy.

## Tokens
- Color:
  - `--background: #fdfbf7`
  - `--foreground: #2d2d2d`
  - `--muted: #e5e0d8`
  - `--accent: #ff4d4d`
  - `--accent-secondary: #2d5da1`
  - `--border: #2d2d2d`
- Type:
  - Headings: Kalam 700
  - Body/UI: Patrick Hand 400
  - Optional technical labels: JetBrains Mono for section chips/meta
- Space:
  - Section rhythm: `py-20`
  - Container width targets: `max-w-5xl`, `max-w-3xl`
  - Grid gaps: `gap-8`
- Radius:
  - Use custom wobbly values via inline style/CSS variables
  - Example large: `255px 15px 225px 15px / 15px 225px 15px 255px`
  - Define reusable presets (`wobbly`, `wobblyMd`) in style token config
- Depth:
  - Standard: `4px 4px 0 0 #2d2d2d`
  - Emphasis: `8px 8px 0 0 #2d2d2d`
  - Hover reduced: `2px 2px 0 0 #2d2d2d` or `6px 6px 0 0 #2d2d2d`
  - No blur-based shadow usage
- Motion:
  - Default transitions: `100ms` transform-driven
  - Hover jiggle: small rotate shift
  - Gentle decorative bounce: ~3s loop for non-critical accents
  - Button active press: remove shadow and increase translation

## Component Notes
- Hero:
  - Use bold handwritten heading with occasional playful glyph treatment.
  - Include at least one hand-drawn arrow/squiggle pointing to CTA.
  - Optionally place decorative rotating/bouncing sketch element on desktop only.
- Navigation:
  - Keep clean but hand-drawn in tone (wavy underline accents, sketch badge labels).
  - Preserve clear affordances with thick borders and offset shadows.
- Buttons:
  - Wobbly shape + thick border + hard offset shadow in default state.
  - Hover: fill with marker red (or blue for secondary), reduce shadow offset, slight translate.
  - Active: flatten completely (shadow removed), stronger translate.
  - Maintain minimum 48px touch-friendly height.
- Cards:
  - White or post-it surfaces with irregular border radii and visible linework.
  - Optional decorations: tape strip, tack pin, dashed outline, sticky-note labels.
  - Hover can add slight rotation and offset-shadow shift for “paper lift.”
- Forms:
  - Full bordered hand-drawn inputs with wobbly radius.
  - Focus: pen-blue border + subtle ring tint while retaining sketch style.
  - Keep placeholder text soft and handwritten.
- Footer:
  - Continue sketchbook tone with dashed dividers and playful link interactions.
  - Preserve readability and spacing despite decorative elements.

## Motion Notes
- Motion should feel tactile, imperfect, and quick.
- Recommended interactions:
  - Card hover: ±1deg rotation with slight shadow/position shift.
  - Button hover: small translation plus color fill.
  - Decorative accents: low-frequency bounce/float loops.
  - Optional scribble line draw-in for section transitions.
- Respect reduced-motion preferences by disabling continuous decorative loops.

## Responsive Notes
- Preserve hand-drawn identity across breakpoints (wobbly borders, handwritten fonts, hard shadows).
- Mobile:
  - Collapse layouts to single column and reduce extreme rotations.
  - Hide non-essential decorations (arrows, squiggles, dashed highlight rings).
  - Keep primary controls large and separated (44px+ touch targets).
- Tablet:
  - Expand to 2 columns where appropriate with mild asymmetry.
  - Retain decorative hierarchy without crowding.
- Desktop:
  - Enable fuller collage-style layering, rotated accents, and richer sketch ornamentation.

