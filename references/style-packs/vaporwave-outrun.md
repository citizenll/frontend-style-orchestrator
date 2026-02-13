# Vaporwave Outrun

## Source Prompt
Vaporwave. A nostalgic neon retro-futurist style with hot pink/cyan accents, deep void purple backgrounds, perspective grids, glowing horizon/sunset gradients, and CRT scanline overlays.

## Intent
Create an immersive dark-only synthetic world that combines 80s arcade nostalgia with futuristic terminal UI. Prioritize high-saturation neon contrast, layered glow effects, and theatrical hover behavior while keeping layout and tokens reusable for production code.

## Do
- Keep a dark void base and drive hierarchy through neon magenta/cyan/orange accents.
- Use perspective wireframe grids and horizon/sunset gradients as core atmospheric layers.
- Apply global CRT scanlines and subtle chromatic aberration overlays.
- Use geometric, angular composition with sharp edges and skewed interaction shapes.
- Treat hover/focus as dramatic events: un-skew, invert colors, amplify glow, and lift.
- Use terminal/window metaphors: prompt markers, title bars, control dots, status bars.
- Use Orbitron for headings and Share Tech Mono for body/UI/data for strong stylistic coherence.
- Keep neon effects tokenized (color, shadow, blur, border) to avoid one-off styling.
- Preserve readability with controlled text contrast despite maximalist visuals.

## Avoid
- Avoid light mode variants unless explicitly requested.
- Avoid muted palettes or low-energy, flat interactions.
- Avoid rounded-soft corporate cards as the default component language.
- Avoid over-blurring all layers to the point of text/edge ambiguity.
- Avoid random animation curves; keep a consistent retro-digital timing profile.
- Avoid removing signature motifs (scanlines, grid, neon border/glow).

## Tokens
- Color:
  - `--background: #090014`
  - `--foreground: #E0E0E0`
  - `--card: #1a103c`
  - `--card-alpha: rgba(26, 16, 60, 0.8)`
  - `--accent-primary: #FF00FF`
  - `--accent-secondary: #00FFFF`
  - `--accent-tertiary: #FF9900`
  - `--border: #2D1B4E`
  - `--border-active-1: #00FFFF`
  - `--border-active-2: #FF00FF`
- Type:
  - Heading: Orbitron 400/500/700/900
  - Body/UI/Code: Share Tech Mono 400
  - Hero display: 5xl-9xl equivalent with uppercase preference
  - UI labels/buttons: uppercase + wide tracking
- Space:
  - Section rhythm: 80px mobile, 128px desktop
  - Standard grid gap: 32px
  - Large gap: 48px
  - Container widths: `max-w-4xl` to `max-w-7xl` by section type
- Radius:
  - Default: `0px` (sharp)
  - Circular only for status dots, badges, and indicator nodes
- Depth:
  - Magenta glow: `0 0 10px #FF00FF` to `0 0 20px #FF00FF`
  - Cyan glow: `0 0 15px #00FFFF` to `0 0 20px rgba(0,255,255,0.2)`
  - Large ambient glow: `0 0 50px rgba(0,255,255,0.2)`
  - Text glow (white/cyan/magenta) by hierarchy intensity
- Motion:
  - Timing: `200ms`
  - Easing: `linear`
  - Hover transform set: un-skew, lift, rotate, glow amplification
  - Continuous effects: pulse, blink, subtle loop for key indicators

## Component Notes
- Hero:
  - Use oversized gradient-clipped headline with multi-line composition.
  - Place a blurred sunset orb (orange->magenta) behind main hero plane.
  - Add perspective grid floor and keep atmospheric overlays behind content.
- Navigation:
  - Keep top-level neon text controls and active state glow.
  - On mobile, keep neon borders and scanline/overlay motifs in menu panel.
- Buttons:
  - Primary: cyan-outline skewed button that un-skews and inverts on hover.
  - Secondary: magenta-filled skewed button with scale and glow amplification.
  - Outline/Ghost: retain sharp geometry and explicit border-led affordance.
- Cards:
  - Default dark glass panel with dual-border behavior (cyan top accent + purple/pink body border).
  - Title text should glow cyan; metadata in monospace muted silver.
  - Hover lifts with stronger neon bloom and optional icon rotation.
- Forms:
  - Terminal input style with underline border emphasis and neon focus glow.
  - Prompt-like prefixes (`>`) for command/console flavored fields where appropriate.
  - Keep caret/placeholder styling consistent with magenta-cyan palette.
- Footer:
  - Terminal/status-board feel with compact monospace system text.
  - Include active neon indicators and contrast-preserving link states.

## Motion Notes
- Prefer snappy retro-digital transitions (`duration-200`, `ease-linear`).
- Interaction signatures:
  - Button: un-skew + color inversion + 2x/3x glow boost.
  - Card: `-translate-y-2` + glow increase.
  - Icon containers: 45deg rotational accent on hover.
  - Highlight/status indicators: pulse or blink loop.
- Keep motion composited via transform/opacity/filter where possible.

## Responsive Notes
- Preserve core vaporwave cues across breakpoints: neon borders, glow hierarchy, grids, scanlines.
- Mobile:
  - Scale hero typography down 1-2 steps while preserving gradient/glow treatment.
  - Stack grids to single column and keep CTA controls full-width where needed.
  - Reduce glow intensity slightly to avoid visual overcrowding.
  - Keep touch targets >= 44px.
- Tablet:
  - Prefer 2-column intermediate layouts before 3/4-column desktop structures.
  - Maintain terminal chrome and perspective backgrounds with simplified density.
- Desktop:
  - Use full layered depth stack (grid + orb + scanline + neon glow amplification).

