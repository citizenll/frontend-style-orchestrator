# Tech Style Minimalist Modern

## Source Prompt
Tech Style. A bold minimalist-modern system with Electric Blue gradients, Calistoga + Inter typography, animated hero graphics, inverted contrast sections, and premium micro-interactions.

## Intent
Deliver a clean but high-impact product aesthetic that balances restraint and personality. Use generous whitespace, strong structural hierarchy, and a concentrated Electric Blue accent system to create a professional interface with clear brand character.

## Do
- Keep the UI mostly neutral and let Electric Blue gradient accents carry emphasis.
- Use a dual-font system: Calistoga for hero/section display headlines, Inter for UI/body.
- Add strategic inverted dark sections to create rhythm and highlight key content.
- Keep layouts clean and modular, then add selective asymmetry for design tension.
- Use animated hero motifs (slow rotating rings, floating cards, pulsing indicators) for liveliness.
- Apply subtle texture layers (dot pattern/radial glow) to avoid sterile flat surfaces.
- Use gradient icon backgrounds and gradient border strokes for featured elements.
- Keep micro-interactions crisp: small lifts, shadow deepening, icon translation, no noisy motion.
- Maintain strong accessibility and touch target sizing while preserving aesthetic confidence.

## Avoid
- Avoid using accent color as a constant background wash across the whole page.
- Avoid sterile monochrome minimalism with no signature visual moments.
- Avoid excessive element count that breaks minimalist clarity.
- Avoid overly dramatic animation amplitude or springy playful motion.
- Avoid rigidly uniform grids everywhere; include selective asymmetry.
- Avoid weak contrast in inverted sections and interactive states.

## Tokens
- Color:
  - `--background: #FAFAFA`
  - `--foreground: #0F172A`
  - `--muted: #F1F5F9`
  - `--muted-foreground: #64748B`
  - `--accent: #0052FF`
  - `--accent-secondary: #4D7CFF`
  - `--accent-foreground: #FFFFFF`
  - `--border: #E2E8F0`
  - `--card: #FFFFFF`
  - `--ring: #0052FF`
- Type:
  - Display: Calistoga, Georgia, serif
  - UI/body: Inter, system-ui, sans-serif
  - Technical/meta labels: JetBrains Mono, monospace
  - Label styling: uppercase + wide tracking for section markers
- Space:
  - Section rhythm: `py-28` to `py-44`
  - Container width: `max-w-6xl`
  - Card density: tighter internal spacing with generous outer whitespace
  - Grid gaps: `gap-5` to `gap-8`
- Radius:
  - Buttons: `12px`
  - Inputs: `8px` to `12px`
  - Cards: `12px` to `16px`
  - Pills: full radius
- Depth:
  - Base card: subtle white surface with border + `shadow-md`
  - Hover card: deeper lift (`shadow-xl`) with optional accent tint
  - Accent glow: `0 4px 14px rgba(0,82,255,0.25)`
  - Accent glow strong: `0 8px 24px rgba(0,82,255,0.35)`
- Motion:
  - Standard transitions: `200ms` ease-out
  - Hover elevation: `300ms`
  - Entrance reveal: `700ms` with stagger
  - Continuous motifs: 4-5s float, 60s rotation, 2-3s pulse
  - Primary easing: `[0.16, 1, 0.3, 1]`

## Component Notes
- Hero:
  - Use asymmetric text/visual split with text column slightly dominant.
  - Highlight a key word in gradient text and optionally include a soft gradient underline.
  - Include abstract animated graphic cluster (ring, floating cards, geometric accents).
- Navigation:
  - Keep simple and professional; mobile uses compact panel with clear CTA.
  - Preserve visible hover/focus feedback with accent ring and subtle elevation.
- Buttons:
  - Primary: gradient background (`accent` -> `accent-secondary`), white text, accent glow on hover.
  - Secondary/outline: neutral base with accent-tinted border shift on hover.
  - Ghost: minimal chrome, foreground shift on hover.
  - Active states use slight compression (`scale 0.98`) for tactile response.
- Cards:
  - White elevated surfaces with subtle borders and refined shadows.
  - Featured cards can use 2px gradient border wrapper for emphasis.
  - Hover may add low-opacity gradient wash and icon scale.
- Forms:
  - Clean bordered fields with strong accent ring focus states.
  - Keep placeholders muted and maintain clear field hierarchy.
- Footer:
  - Can use inverted contrast section style with subtle textures and restrained accent usage.
  - Preserve legibility and structure over decorative density.

## Motion Notes
- Motion should feel polished, quick, and intentional.
- Recommended interactions:
  - Button hover: `-translate-y-0.5`, brighter gradient, icon nudge.
  - Card hover: depth increase + optional accent-tinted overlay fade-in.
  - Section reveal: fade-up with staggered timing.
  - Ambient motifs: slow rotation and gentle float only.
- Respect reduced-motion preferences: disable continuous float/rotation/pulse where required.

## Responsive Notes
- Keep bold identity on mobile while simplifying structure.
- Mobile:
  - Collapse hero to single column and hide heavy decorative graphics when needed.
  - Stack CTA controls vertically with full-width touch-friendly sizing.
  - Remove desktop-only offsets (e.g., testimonial center lift).
  - Maintain inverted contrast sections and gradient accents.
- Tablet:
  - Move to 2-column structure in feature/content grids.
  - Keep spacing generous without oversized decorative layers.
- Desktop:
  - Enable full asymmetric layouts, gradient border accents, and animated hero composition.

