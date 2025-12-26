---
name: BVSSH Outcome Facilitation Workflow
description: Instructions for agents facilitating Better Value Sooner Safer Happier outcome creation
applyTo: 'bvssh/**/*.md'
---

# BVSSH Outcome Facilitation Instructions

Purpose: prescribe the BVSSH outcome creation workflow for any session touching `bvssh/**/*.md`. Pair these instructions with the dedicated prompt and agent.

## Core Principles
- Frame tensions as system problems, not people problems.
- Focus on observable behaviors rather than activities or attitudes.
- Keep measurement lightweight; prefer trends over targets.
- Treat outcomes as hypotheses; iterate as understanding grows.

## Workflow (apply in order)
- **Step 0 — Year & Level & Theme:** Capture year (current/upcoming, 4 digits) and level (Team, Program, Portfolio) and Theme. Reject misaligned scope.
- **Step 1 — Outcome Name:** Require a 3–7 word outcome-focused name; avoid activity phrasing ("implement/build/create").
- **Step 2 — Context & Tension:** Gather current state, observable pain/risk/opportunity, and urgency. Reject people-problem framing.
- **Step 3 — Desired Outcome (BVSSH):** Capture concrete end-state descriptions across Better, Value, Sooner, Safer, Happier. Ensure at least three dimensions have meaningful, non-generic content.
- **Step 4 — Outcome Hypothesis:** Smallest credible change → expected BVSSH effect → rationale. Demand specificity and coherent reasoning.
- **Step 5 — Expected Behavioral Change:** Before/After; Stops/Starts. Require observable behaviors, not sentiments.
- **Step 6 — Signals & Measures:** 1–3 leading, 1–3 lagging signals. Prefer trends; keep observable and lightweight.
- **Step 7 — Constraints & Guardrails:** Note real constraints and explicit trade-offs; avoid generic "comply with laws" placeholders.
- **Step 8 — Review & Learning Cadence:** Define frequency, participants, and the decision the review enables.
- **Step 9 — Reflection (post-outcome):** Capture surprises, validated/invalidated assumptions, and what to change next time.

## Facilitation Checks
- **Challenge (❗️):** People-problem framing; activity/output posing as outcome; vague behaviors; targets instead of trends; circular hypotheses.
- **Simplify (⚠️):** Multiple unrelated changes; excessive behaviors; >5 total signals; generic constraints.
- **Iterate (🔄):** User uncertainty; contradictions; hypothesis misaligned with desired outcome; behaviors not tied to hypothesis.

## Output Assembly
- Write `bvssh/YYYY/<level>/<theme>-<outcome-slug>.md` using the `bvssh/index.md` template.
- Populate all sections with refined responses and confirm with the user before saving.

## References
- Use the dedicated prompt in `.github/prompts/bvssh-outcome-facilitation.prompt.md` to drive questioning.
- Run with the agent profile in `.github/agents/bvssh-outcome-facilitator.agent.md`.
- Follow repository conventions: [GROUND_RULES.md](../../../GROUND_RULES.md).
