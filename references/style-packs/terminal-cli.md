# Terminal CLI

## Source Prompt
Terminal CLI. A raw, functional, retro-futuristic command-line interface aesthetic with high contrast, monospaced precision, and blinking cursors.

## Intent
Build a system-level command-line visual language that feels operational, utilitarian, and authentic. Prioritize strict monospaced typography, zero-radius geometry, shell metaphors, and high-contrast phosphor-like colors while preserving usability and accessibility.

## Do
- Use dark-mode only with terminal-green primary and amber/red semantic accents.
- Keep all typography monospaced across headlines, body, labels, and controls.
- Use shell metaphors consistently (`$`, `>`, `~`, flags, status tags like `[OK]`/`[ERR]`).
- Keep borders thin and rectangular; avoid soft cards and decorative corner rounding.
- Use subtle phosphor glow on key text and active states for depth.
- Add a restrained scanline overlay to reinforce CRT character without harming legibility.
- Represent metrics as terminal-native primitives (ASCII progress bars, status lines).
- Use cursor and typing effects sparingly on hero/interactive command surfaces.
- Keep layouts as pane/window splits resembling terminal multiplexers.

## Avoid
- Avoid rounded corners, soft neumorphic depth, and glossy UI treatments.
- Avoid non-monospace typefaces in any component.
- Avoid drop shadows and heavy blur effects.
- Avoid overdoing glitch/rain effects that reduce readability.
- Avoid chart-heavy visualizations when text/ASCII equivalents work better.
- Avoid low contrast text on dark background layers.

## Tokens
- Color:
  - `--background: #0a0a0a`
  - `--foreground: #33ff00`
  - `--secondary: #ffb000`
  - `--muted: #1f521f`
  - `--accent: #33ff00`
  - `--error: #ff3333`
  - `--border: #1f521f`
- Type:
  - Primary stack: JetBrains Mono, Fira Code, VT323, monospace
  - Header posture: uppercase monospaced blocks
  - Body/code posture: monospaced, grid-snapped sizing
  - Label posture: terminal metadata format (`[TAG]`, `--flag`)
- Space:
  - Base spacing follows strict terminal rhythm (4/8 grid)
  - Window/pane padding: compact but readable (`p-4` to `p-6`)
  - Use clear separators instead of large ornamental whitespace
- Radius:
  - Default radius: `0px`
  - No rounded pills/chips unless explicitly needed for legacy constraints
- Depth:
  - No drop shadows
  - Optional text glow: `0 0 5px rgba(51,255,0,0.5)` for active foreground
  - Border emphasis through contrast and inversion, not blur/shadow
- Motion:
  - Cursor blink: standard on/off rhythm
  - Typing animation for headline/command output
  - Occasional subtle hover glitch offsets (very low frequency)
  - Keep transitions quick and minimal (100-200ms)

## Component Notes
- Hero:
  - Use ASCII-style logo or banner block.
  - Headline may type in character-by-character with trailing cursor.
  - Include one primary command CTA (`[ RUN ]`, `[ INITIATE ]` style).
- Navigation:
  - Render links as command shortcuts or tab-like terminal labels.
  - Active link state uses inverted video (green bg + black text).
- Buttons:
  - Bracketed command style (`[ DEPLOY ]`) or inverse terminal block style.
  - Hover: invert foreground/background and boost text glow slightly.
  - Active: tiny 1px translate or blink pulse.
- Cards:
  - Treat cards as terminal panes/windows with 1px borders.
  - Optional header bars: `+--- TITLE ---+` format.
  - Content should favor logs/status lines over marketing card language.
- Forms:
  - Prompt-led input (`user@host:~$`) before the editable field.
  - Focus indicated by active cursor and text inversion, not soft rings.
  - Keep field chrome minimal; no rounded outlines.
- Footer:
  - Display system metadata, version lines, and concise command links.
  - Use separators (`---`, `===`, `//`) for structure.

## Motion Notes
- Motion should feel computational, not decorative.
- Recommended effects:
  - `blink` for cursor/active indicators.
  - `typing` for command output/hero line.
  - Subtle `glitch` on selected hoverable text blocks.
- Respect reduced-motion preferences by disabling continuous blink/typing where required.

## Responsive Notes
- Keep terminal readability first on small screens.
- Mobile:
  - Stack panes vertically and reduce non-critical decorative blocks.
  - Ensure monospaced text remains legible; wrap long lines with continuation cues (`\`).
  - Keep command controls large enough for touch while retaining CLI styling.
- Tablet:
  - Use 2-column pane layouts where content density allows.
  - Preserve prompt and status formatting consistency.
- Desktop:
  - Enable fuller split-pane/tmux-like compositions and denser command dashboards.

