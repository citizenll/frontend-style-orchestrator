# Industrial Skeuomorphism

## Source Prompt
Industrial. A high-fidelity industrial skeuomorphism aesthetic inspired by Dieter Rams and Teenage Engineering. Tactile neumorphic elements, matte plastic surfaces, safety-orange accents, realistic hardware details (screws, vents, LEDs), and mechanical interaction physics.

## Intent
Build a light-mode industrial realism interface that feels like physical hardware rather than flat UI. Maintain a consistent top-left light model, clear elevation hierarchy, tactile press states, and manufacturing details that make modules feel assembled, bolted, and functional.

## Do
- Keep a strict top-left (45deg) lighting direction for all highlights and shadows.
- Use a neumorphic dual-shadow system for raised panels and an inset system for recessed wells.
- Reserve safety-orange (`#ff4757`) for primary actions, active indicators, and critical highlights.
- Add manufacturing details: corner screws, vent slots, LED status lights, punched holes, connector bars.
- Keep typography functional and engineered: Inter for UI copy, JetBrains Mono/Roboto Mono for data/labels.
- Use uppercase technical labels with wide letter spacing for metadata and system status.
- Preserve physical interaction cues: hover lifts, pressed inversion, translation on active state.
- Keep layouts grid-disciplined, mounted, and responsive without losing the industrial metaphor.
- Use subtle texture overlays (noise/scanline/carbon fiber) only where they reinforce material realism.

## Avoid
- Avoid dark mode unless explicitly requested for this style variant.
- Avoid flat UI treatments with no depth cues.
- Avoid overusing accent color across all components.
- Avoid inconsistent shadow direction between components.
- Avoid random rounded geometry that does not match molded hardware feel.
- Avoid decorative motion that breaks mechanical causality.

## Tokens
- Color:
  - `--background: #e0e5ec`
  - `--foreground: #f0f2f5`
  - `--muted: #d1d9e6`
  - `--text: #2d3436`
  - `--text-muted: #4a5568`
  - `--accent: #ff4757`
  - `--accent-foreground: #ffffff`
  - `--border: #babecc`
  - `--border-light: #ffffff`
  - `--border-dark: #a3b1c6`
- Type:
  - UI text: Inter 400/500/600/700/800
  - Technical text: JetBrains Mono or Roboto Mono 400/500
  - Heading tracking: tight (`-0.03em` for hero)
  - Label tracking: wide (`0.05em`-`0.08em`) uppercase monospace
- Space:
  - Base rhythm: 4/8px system
  - Section spacing: 64px mobile, 96px desktop
  - Content width target: 72rem
- Radius:
  - `sm: 4px`, `md: 8px`, `lg: 16px`, `xl: 24px`, `2xl: 30px+`, `full: 9999px`
- Depth:
  - Card: `8px 8px 16px #babecc, -8px -8px 16px #ffffff`
  - Floating: `12px 12px 24px #babecc, -12px -12px 24px #ffffff, inset 1px 1px 0 rgba(255,255,255,0.5)`
  - Pressed: `inset 6px 6px 12px #babecc, inset -6px -6px 12px #ffffff`
  - Recessed: `inset 4px 4px 8px #babecc, inset -4px -4px 8px #ffffff`
  - LED glow: `0 0 10px 2px rgba(255, 71, 87, 0.6)`
- Motion:
  - Main easing: `cubic-bezier(0.175, 0.885, 0.32, 1.275)`
  - Fast tactile: 150-200ms
  - Standard transitions: 300ms
  - Rich visual transitions: 500ms

## Component Notes
- Hero:
  - Prefer asymmetrical 60/40 layout on desktop and stacked layout on mobile.
  - Build a CSS "device" object (bezel, inner screen, hardware buttons, LED, scanline overlay).
  - Use technical badge labels (e.g., `SYSTEM OPERATIONAL`) with LED indicator.
- Navigation:
  - Desktop horizontal controls, mobile drawer with tactile neumorphic toggle.
  - Keep status LED and monospace micro-label in nav cluster.
- Buttons:
  - Primary: accent surface, white text, tactile press (`translateY(2px)` + shadow inversion).
  - Secondary: chassis tone with raised shadow, accent-on-hover text.
  - Ensure minimum 48px hit area on mobile.
- Cards:
  - Use bolted module metaphor with optional corner screws and vent details.
  - Hover lifts by one elevation level (`-translate-y-1` + floating shadow).
  - Keep repeated module geometry and detail placement consistent.
- Forms:
  - Inputs are recessed data slots with monospace value rendering.
  - Focus ring uses accent glow while keeping inset structure intact.
  - Keep labels technical and high contrast.
- Footer:
  - Dense information grouping with muted text and at least one active system indicator.
  - Include social/utility actions as mechanical ghost or recessed controls.

## Motion Notes
- Mechanical causality only: controls depress, panels lift, indicators pulse, no ornamental floating.
- Keep interactions transform/opacity-based for performance.
- Recommended micro-interactions:
  - Button active: `translateY(2px)` + pressed inset shadow.
  - Card hover: lift and slight icon rotation/scale.
  - Image hover: grayscale to color over 500ms.
  - LED pulse: slow periodic glow.

## Responsive Notes
- Preserve physical metaphor at all breakpoints; do not collapse into generic flat mobile UI.
- Grid adaptations:
  - Features: 3 -> 1
  - Stats: 4 -> 2
  - Pricing/testimonials: multi-column -> 1 column
- Hide only non-essential decorative hardware details on very small screens.
- Keep body text >= 16px and touch targets >= 48px.
- Keep section rhythm tighter on mobile while preserving panel hierarchy.

