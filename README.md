# Frontend Style Orchestrator

A Codex skill that turns style prompts into repeatable frontend design/restyle output.

It provides:
- A structured workflow (`style extraction -> design contract -> tokens -> implementation -> QA`)
- Reusable style packs for multiple UI aesthetics
- A script to scaffold new style packs quickly

## Install

Install directly from GitHub with the Skills CLI:

```bash
npx skills add <owner/repo>
```

Example:

```bash
npx skills add citizenll/frontend-style-orchestrator
```

## Use

Invoke with:

```text
Use $frontend-style-orchestrator to redesign this page in <style>.
```

## Included Style Packs

- `cyberpunk-glitch`
- `editorial-contrast`
- `hand-drawn-sketch`
- `industrial-skeuomorphism`
- `maximalism-dopamine`
- `modern-dark-cinematic`
- `neumorphism-soft-ui`
- `tech-style-minimalist-modern`
- `terminal-cli`
- `vaporwave-outrun`

## Repo Structure

- `SKILL.md`: skill entry + execution model
- `references/workflow.md`: operating workflow
- `references/style-pack-schema.md`: schema for new style packs
- `references/style-packs/`: style definitions
- `references/quality-gates.md`: verification checklist
- `scripts/new_style_pack.ps1`: generate a new style pack file
