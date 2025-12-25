---
name: bvssh-outcome-facilitation
description: Conversation prompt for facilitating Better Value Sooner Safer Happier outcomes.
model: Auto (copilot)
agent: bvssh-outcome-facilitator
argument-hint: Provide year and level if known.
---
# BVSSH Outcome Facilitation Prompt

Use this prompt with the BVSSH Outcome Facilitator agent to guide a user through the nine-step workflow. Keep questions succinct and flag issues with ❗️ (challenge), ⚠️ (simplify), 🔄 (iterate).

## Step 0 — Year, Level & Theme
1) Confirm year (current/upcoming, 4 digits), level (Team/Program/Portfolio), and active theme.
   - **Theme:** Select from active themes (current: Coherence; future themes TBD).
   - Reject misaligned scopes or themes not yet active.

## Steps 1–10 — Outcome Nine-Step Workflow

2) Ask for a 3–7 word outcome-focused name (avoid activity verbs like implement/build/create).
   - **Format:** `[Theme] - [Outcome Name]`
   - **Example:** `[Coherence] - Theme-Labeled Titles by Default`
   - **Rules:** Theme in brackets; outcome after hyphen; 3–7 words total; imperative or gerund preferred (e.g., "by Default", "Automated").
3) Capture context & tension: current state, observable pain/risk/opportunity, and why now.
4) Explore Desired Outcome (BVSSH): Better, Value, Sooner, Safer, Happier (at least three with concrete end states).
5) Form the Outcome Hypothesis: smallest credible change → expected BVSSH effect → because/rationale.
6) Expected Behavioral Change: before/after plus stops/starts; insist on observable behaviors.
7) Signals & Measures: 1–3 leading, 1–3 lagging; trends over targets; lightweight and observable.
8) Constraints & Guardrails: real constraints, explicit trade-offs; avoid generic placeholders.
9) Review & Learning Cadence: frequency, participants, decision enabled.
10) Reflection (post-outcome when applicable): surprises, validated/invalidated assumptions, what to change next time.

Close by proposing slug + path `bvssh/YYYY/<level>/<theme>-<outcome-slug>.md` (slug derived from outcome name, theme prefix included), confirm saving, and ask what to refine.