---
name: frontend-style-orchestrator
description: Transform user-provided visual style prompts into frontend webpage design or redesign implementations through a repeatable pipeline (style extraction, design contract, token system, implementation, and QA). Use when the user asks to build a web page in a specific style, refactor an existing page to a new style, or iterate through multiple style directions across rounds.
---

# Frontend Style Orchestrator

Deliver consistent, high-quality frontend styling outcomes from free-form style prompts.

## Use This Execution Model

1. Read the user prompt and classify the task mode:
   - `build-new`: create a new page/component with the requested style.
   - `restyle-existing`: keep existing structure/business logic and replace visual language.
2. Resolve hard constraints first:
   - Stack and framework.
   - Files that can or cannot be changed.
   - Responsiveness, accessibility, performance constraints.
3. Convert the style prompt into a compact design contract:
   - Mood and tone.
   - Color system.
   - Typography direction.
   - Layout rhythm.
   - Component treatment.
   - Motion behavior.
4. Select a style pack:
   - If a matching pack exists in `references/style-packs/`, adapt it.
   - Otherwise create a new pack using `scripts/new_style_pack.ps1` and fill it.
5. Implement with token-first architecture:
   - Define CSS variables/tokens before component-level styling.
   - Separate structure from skin (layout classes vs style classes).
   - Keep visual decisions centralized for easy iteration.
6. Validate against quality gates in `references/quality-gates.md`.
7. Return concise delivery notes:
   - What changed.
   - Which files were modified.
   - Any tradeoffs or remaining risks.

## Reference Loading Rules

- Read `references/workflow.md` for end-to-end execution order.
- Read `references/style-pack-schema.md` when creating or updating a style pack.
- Read `references/quality-gates.md` before finalizing changes.
- Read only the specific file in `references/style-packs/` that matches the target style.

## Output Contract Per Request

For each style request, produce:

1. `Style Contract` (short): 5-8 bullets describing core visual intent.
2. `Implementation` (code changes): update or create frontend files.
3. `Verification` (short): report responsiveness/accessibility checks completed.

## Iteration Rules

- Keep semantic HTML and behavior intact unless user explicitly asks for structural rewrite.
- Prefer incremental edits for restyling tasks; avoid unnecessary refactors.
- When user sends a new style prompt, create a new style pack or revise an existing one, then re-run the same pipeline.
