# Maximalism Dopamine

## Source Prompt
Maximalism. Clashing patterns, dense layouts, oversaturated colors, intentional visual clutter. More is more.

## Intent
Create an unapologetically loud, joy-forward interface where visual abundance is the core brand language. Replace minimalist restraint with layered patterns, rotating accent palettes, oversized typography, and animated decorative chaos while keeping interaction states and readability structurally reliable.

## Do
- Use a dark foundation and rotate five high-saturation accent colors systematically across sections.
- Layer at least 2-3 patterns per major section (dots, stripes, checker, mesh).
- Use thick borders (`4px`/`8px`) with intentionally clashing colors.
- Apply multi-layer shadows on elevated elements (hard offset stacks plus optional glow).
- Keep headlines oversized, uppercase, and high-impact with text-shadow stacking.
- Introduce controlled asymmetry: rotation, vertical offsets, overlap, broken grid spans.
- Add decorative floating shapes/emoji and occasional massive background typography.
- Make hover states theatrical: combine scale, color shift, and shadow amplification.
- Preserve strong focus visibility and readable body copy despite visual density.

## Avoid
- Avoid neutral, low-energy border and accent treatments.
- Avoid flat single-layer shadows on key UI components.
- Avoid perfectly symmetrical, uniform, static layouts.
- Avoid stripping pattern density to near-zero on mobile.
- Avoid using accent colors for long-form body text.
- Avoid inaccessible contrast combinations in noisy backgrounds.

## Tokens
- Color:
  - `--background: #0D0D1A`
  - `--foreground: #FFFFFF`
  - `--muted: #2D1B4E`
  - `--accent-1: #FF3AF2`
  - `--accent-2: #00F5D4`
  - `--accent-3: #FFE600`
  - `--accent-4: #FF6B35`
  - `--accent-5: #7B2FFF`
  - `--border-base: #FF3AF2`
- Type:
  - Heading: Outfit or Unbounded 700-900
  - Body/UI: DM Sans 400-700
  - Display accent: Bangers or Bungee (sparingly for special callouts)
  - Headline style: uppercase + heavy weights + tight tracking
- Space:
  - Section rhythm: `py-24` to `py-32`
  - Container padding: `px-6` mobile, `px-8` desktop
  - Card padding: `p-8` to `p-12`
  - Dense grid gaps: `gap-6` to `gap-12` with deliberate variance
- Radius:
  - Buttons: full pill
  - Cards: `24px`
  - Containers: `16px`
  - Selective contrast elements: sharp corners where useful
- Depth:
  - Glow base: `0 0 20px rgba(255,58,242,0.5), 0 0 40px rgba(0,245,212,0.3)`
  - Glow large: `0 0 40px rgba(255,58,242,0.6), 0 0 80px rgba(255,230,0,0.4), 0 0 120px rgba(123,47,255,0.3)`
  - Hard stack: `8px 8px 0 var(--accent-x), 16px 16px 0 var(--accent-y)`
  - Hard triple: `12px 12px 0 var(--accent-x), 24px 24px 0 var(--accent-y), 36px 36px 0 var(--accent-z)`
- Motion:
  - Micro interactions: 100-300ms
  - Standard transitions: 300-500ms
  - Decorative loops: 1-8s by effect type
  - Slow rotations/background shifts: up to 20s

## Component Notes
- Hero:
  - Oversized headline with multi-layer text shadow or animated gradient text treatment.
  - Include floating decorative shapes and optional oversized background wordmark.
  - Use mixed pattern overlays behind content with controlled opacity.
- Navigation:
  - Bold, high-contrast nav chrome with colorful hover/focus transitions.
  - Preserve strong keyboard focus (double ring + structural change).
- Buttons:
  - Primary: multi-stop accent gradient + clashing border + stacked shadow.
  - Secondary/outline: dashed or mixed border styles with dramatic hover fill/scale.
  - Ghost: playful underline/pattern reveal on hover.
  - Keep minimum touch height >= 44px (prefer 56px baseline).
- Cards:
  - Semi-transparent dark cards with thick accent borders and rotated/asymmetric placement.
  - Use varied border styles within the same section (solid + dashed + dotted/double).
  - Hover increases rotation/scale/shadow depth rather than subtle tint only.
- Forms:
  - Inputs use thick colored borders and strong focus ring offsets.
  - Keep text readable at large size; placeholders subdued but visible.
  - Labels may use rotated accent tags for stylistic continuity.
- Footer:
  - Maintain maximalist identity with layered textures and vivid section accents.
  - Keep core navigation/meta legible despite decorative density.

## Motion Notes
- Motion should feel playful, energetic, and abundant.
- Recommended effects:
  - Float / float-reverse for decorative shapes.
  - Pulse-glow for key CTAs.
  - Gradient-shift for feature headlines and CTA backgrounds.
  - Slow spin for rings or decorative glyphs.
  - Wiggle/bounce for selected emoji/icons.
- Respect reduced-motion preferences by disabling continuous loops and keeping essential transitions short.

## Responsive Notes
- Preserve maximalist identity on mobile; simplify structure, not personality.
- Mobile:
  - Stack layouts vertically while retaining bold color/pattern language.
  - Reduce decorative element count but keep at least a minimal floating set.
  - Keep hero typography large (avoid dropping below bold visual impact).
  - Maintain thick borders and strong interactive affordances.
- Tablet:
  - Move to 2-column broken-grid compositions with moderate overlap.
  - Restore fuller pattern layering and animated accents.
- Desktop:
  - Enable full density mode: multi-pattern sections, overlap choreography, richer decorative field.

