# Copilot Workflow for Outcome Mapping (Verbose Reference)

Purpose: Facilitate Outcome Mapping end-to-end and assemble a BVSSH-ready outcome file, aligned with the Flow Engineering sequence.

References
- Flow Engineering Guide: .github/workflows/flow-engineering-guide.md
- BVSSH Outcome Facilitation: .github/instructions/bvssh-outcome-facilitation.instructions.md
- KB Map Index: kb/outcome-mapping/index.md

Workflow Overview
- Purpose: Align stakeholders on a single target outcome and produce a BVSSH outcome artifact.
- Anchors: dedicated prompt and agent (stored under .github/prompts and .github/agents).
- Output: bvssh/YYYY/<level>/<outcome-slug>.md populated via BVSSH sections.

Triggers
- Outcome Mapping work under kb/outcome-mapping or creation/edits in bvssh/2025 or bvssh/2026.
- Policy or automation changes under .github/** affecting facilitation.

Agent and Prompt
- Agent: .github/agents/bvssh-outcome-facilitator.agent.md — runs BVSSH facilitation checks and output assembly.
- Prompt: .github/prompts/bvssh-outcome-facilitation.prompt.md — guides the nine BVSSH steps with challenge/simplify/iterate flags.

Conversation Flow

- Step 0 — Year & Level: Confirm 4-digit year (current/upcoming) and Team|Program|Portfolio. Reject misaligned scope.
- Outcome Mapping 1–5:
  - Discovery: Clarify the single target outcome; reject solution-first framing.
  - Target Definition: Make success concrete via BVSSH (Better, Value, Sooner, Safer, Happier); ensure ≥3 non-generic dimensions.
  - Benefits: Why it matters; align with business value and risk/opportunity.
  - Obstacles: Identify blockers and uncertainties; avoid people-problem framing.
  - Next Steps: Smallest credible actions within weeks; tie directly to the constraint.
- BVSSH Completion:
  - Hypothesis: Smallest credible change → expected BVSSH effect → rationale.
  - Behavioral Change: Before/After and Stops/Starts; observable behaviors only.
  - Signals & Measures: 1–3 leading, 1–3 lagging; prefer trends to targets; lightweight and observable.
  - Constraints & Guardrails: Real constraints and explicit trade-offs; no generic placeholders.
  - Review Cadence: Frequency, participants, and the decision the review enables.
- Reflection (post-outcome): Surprises, validated/invalidated assumptions, what to change next time.

Validation Checks
- Challenge (❗️): people-problem framing; activity/output posing as outcome; vague behaviors; targets instead of trends; circular hypotheses.
- Simplify (⚠️): multiple unrelated changes; excessive behaviors; more than five total signals; generic constraints.
- Iterate (🔄): uncertainty or contradictions; hypothesis misaligned with desired outcome; behaviors not tied to hypothesis.

Output Assembly
- File: bvssh/YYYY/<level>/<outcome-slug>.md using bvssh/index.md conventions.
- Naming: require a 3–7 word outcome-focused name; slug is lowercase hyphenated.
- Sections: Better, Value, Sooner, Safer, Happier; Hypothesis; Behavioral Change; Signals and Measures; Constraints and Guardrails; Review Cadence; Reflection.
- Notes: optionally capture session rationale in kb/outcome-mapping/<short-slug>-session.md when traceability is useful.

Commit Message Linkage
- Policy: follow Conventional Commits (see .github/instructions/copilot/commit-message-policy.instructions.md).
- Outcome footers: add Outcome lines linking the most relevant active BVSSH outcomes (see .github/instructions/copilot/commit-message-outcome-linking.instructions.md).
- Example: docs(bvssh): draft outcome mapping; body ties to BVSSH dimensions; footers link bvssh/2026/<level>/<slug>.md.

Flow Engineering Handoff
- From Outcome Mapping to Current State VSM: select the value stream most directly delivering the outcome; map end-to-end and identify the primary constraint.
- Dependency Mapping: expose influences and causes of the constraint; avoid premature solutions.
- Future State VSM: design for smoother, faster flow; define measurable future-state targets.
- Flow Roadmapping: prioritize improvement opportunities by impact/effort; sequence Now/Next/Later; assign owners and success measures; aim for executable actions within weeks.

Guardrails
- System focus: reframe away from blame; model constraints and dependencies.
- Data-light: just enough data to act; prefer trends and directionality over static targets.
- Scope discipline: one outcome, one value stream, one primary constraint at a time.

Operational Notes
- Store facilitation artifacts and drafts in the appropriate year/level under bvssh/.
- Keep kb notes ASCII and organized; this file intentionally preserves full verbosity for reference.
- Cross-link to kb/outcome-mapping/index.md for navigation and to .github/workflows/flow-engineering-guide.md for context.
