# Cyberpunk Glitch

## Source Prompt
Cyberpunk. High-contrast neon on black with glitch motion, terminal/monospace typography, and tech-oriented dystopian decorations inspired by 80s sci-fi and hacker culture.

## Intent
Deliver a dark, volatile, high-tech/low-life interface that feels like a hacked terminal feed. Emphasize neon illumination against void backgrounds, chamfered industrial geometry, and controlled corruption effects (glitch, scanline, chromatic aberration) while keeping tokens reusable and component architecture maintainable.

## Do
- Keep dark mode mandatory with deep void backgrounds and luminous accent colors.
- Use a strict neon hierarchy: green primary, magenta secondary, cyan tertiary.
- Apply scanline and subtle circuit/grid texture layers to establish digital atmosphere.
- Use monospace-first typography and uppercase tracking-heavy labels for terminal character.
- Build chamfered components using clip-path corner cuts instead of rounded cards.
- Use real glow stacks for borders/text/focus states, not flat color-only highlights.
- Include at least one clear terminal section with prompt markers and cursor motif.
- Add controlled glitch/chromatic aberration to hero or key headline moments.
- Keep effects tokenized and centralized to prevent one-off ad hoc styling.

## Avoid
- Avoid light mode or low-contrast soft palettes.
- Avoid rounded, friendly, consumer-style visual language as default.
- Avoid constant aggressive animation that hurts readability or performance.
- Avoid inconsistent neon usage that removes visual hierarchy.
- Avoid removing required signatures (scanlines, corner cuts, terminal cues).
- Avoid overusing heavy multi-shadow on every element; reserve intensity for priority layers.

## Tokens
- Color:
  - `--background: #0a0a0f`
  - `--foreground: #e0e0e0`
  - `--card: #12121a`
  - `--muted: #1c1c2e`
  - `--muted-foreground: #6b7280`
  - `--accent: #00ff88`
  - `--accent-secondary: #ff00ff`
  - `--accent-tertiary: #00d4ff`
  - `--border: #2a2a3a`
  - `--input: #12121a`
  - `--ring: #00ff88`
  - `--destructive: #ff3366`
- Type:
  - Headings: Orbitron, Share Tech Mono, monospace
  - Body: JetBrains Mono, Fira Code, Consolas, monospace
  - Labels/UI meta: Share Tech Mono, monospace, uppercase with wide tracking
  - Hero scale: 6xl-8xl equivalents with bold/black weight
- Space:
  - Base grid: 8px
  - Section rhythm: 96-128px
  - Component spacing: dense internals, generous outer section padding
  - Main container: `max-w-7xl`
- Radius:
  - Default: `0px`
  - Minimal fallback: `2px` to `4px` only where required (inputs)
  - Primary shape language: chamfer clip-path corner cuts
- Depth:
  - Neon sm: `0 0 3px #00ff88, 0 0 6px #00ff8830`
  - Neon base: `0 0 5px #00ff88, 0 0 10px #00ff8840`
  - Neon lg: `0 0 10px #00ff88, 0 0 20px #00ff8860, 0 0 40px #00ff8830`
  - Magenta: `0 0 5px #ff00ff, 0 0 20px #ff00ff60`
  - Cyan: `0 0 5px #00d4ff, 0 0 20px #00d4ff60`
- Motion:
  - Standard digital snap: `100ms steps(4)` or `150ms cubic-bezier(0.4,0,0.2,1)`
  - Glitch cadence: brief/infrequent burst style
  - Cursor blink: `1s step-end infinite`
  - Respect reduced motion fallback for all animated corruption effects

## Component Notes
- Hero:
  - Use glitched/chromatic aberration headline with occasional jitter animation.
  - Pair with high-contrast CTA cluster (primary neon + secondary magenta).
  - Optional HUD/info panel in asymmetric split layout.
- Navigation:
  - Compact technical nav with uppercase micro-labels and active neon indicator.
  - On mobile, keep strong border geometry and terminal-style menu affordances.
- Buttons:
  - Default: transparent background + accent border, fill on hover with glow.
  - Secondary: magenta variant with corresponding glow set.
  - Glitch CTA: solid accent with subtle corruption text treatment.
  - Maintain 44px+ touch targets on mobile.
- Cards:
  - Dark card base, border-led structure, chamfered corners mandatory.
  - Terminal variant includes top bar and traffic-light dots.
  - Holographic variant uses muted translucent panel + blur + corner accents.
- Forms:
  - Input fields include `>`-style prefix option and monospace content.
  - Focus state: accent border + glow ring; placeholder in muted foreground.
  - Keep terminal-style alignment and spacing consistency.
- Footer:
  - System/status board tone with compact monospace metadata and technical links.
  - Include at least one live status motif (blinking cursor or active tag).

## Motion Notes
- Motion should feel digital, sharp, and slightly unstable.
- Recommended animations:
  - `blink` for cursor/status markers.
  - `glitch` for headline or key label corruption bursts.
  - `rgbShift` for chromatic pulse on hero accent text.
  - Optional scanline sweep overlay loop (very subtle).
- Keep glitch effects sparse and low duty cycle to avoid distraction.

## Responsive Notes
- Preserve cyberpunk signatures on all breakpoints: dark void, neon glow, chamfer cuts, terminal cues, scanlines.
- Mobile:
  - Scale hero typography down while keeping uppercase/tracking style.
  - Collapse grids to 1 column and keep CTA/control hit areas >= 44px.
  - Reduce glow intensity and animation frequency for clarity/performance.
- Tablet:
  - Move to 2-column intermediate layouts for features/content cards.
  - Keep HUD/terminal framing but reduce decorative density.
- Desktop:
  - Use full asymmetric compositions, layered backgrounds, and richer glow hierarchy.

