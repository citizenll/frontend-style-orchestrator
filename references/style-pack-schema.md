# Style Pack Schema

Use this schema for each file under `references/style-packs/`.

## Required Fields

- `Pack Name`: Human-readable style label.
- `Intent`: One paragraph describing the visual outcome.
- `Do`: 5-10 positive directives.
- `Avoid`: 3-8 anti-patterns.
- `Tokens`: Initial token recommendations.
- `Component Notes`: How core UI pieces should look and behave.
- `Motion Notes`: Timing, easing, and where to animate.
- `Responsive Notes`: Mobile and desktop adaptations.

## Token Groups

- `Color`: `--bg`, `--surface`, `--text`, `--muted`, `--accent`, `--border`.
- `Type`: font families, scale ratios, line-height posture.
- `Space`: base unit and section rhythm.
- `Radius`: corner language (sharp/soft/mixed).
- `Depth`: shadows, borders, glass/noise treatments.
- `Motion`: durations, easings, choreography rules.

## Style Pack Template

```markdown
# <Pack Name>

## Intent
<1 short paragraph>

## Do
- ...

## Avoid
- ...

## Tokens
- Color:
- Type:
- Space:
- Radius:
- Depth:
- Motion:

## Component Notes
- Hero:
- Navigation:
- Buttons:
- Cards:
- Forms:
- Footer:

## Motion Notes
- ...

## Responsive Notes
- ...
```

