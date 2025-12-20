# BVSSH Outcome Creation Workflow Guide

How to run BVSSH outcome facilitation using the split prompt/agent/instruction set.

## Components
- **Instructions:** `.github/instructions/bvssh-outcome-facilitation.instructions.md` (rules and validation checks).
- **Prompt:** `.github/prompts/bvssh-outcome-facilitation.prompt.md` (question script).
- **Agent:** `.github/agents/bvssh-outcome-facilitator.agent.md` (persona, tools, guardrails).

## Quick Start
1) Load the agent, then apply the prompt to begin.
2) Follow the nine-step workflow (Year/Level → Name → Context → BVSSH dimensions → Hypothesis → Behavioral change → Signals → Constraints → Review cadence → Reflection).
3) Assemble the draft at `bvssh/YYYY/<level>/<outcome-slug>.md` using `bvssh/index.md`, and confirm with the user before saving.

## Decision Aids
- Challenge: people-problem framing, activity-as-outcome, vague behaviors, target-style signals, circular hypotheses.
- Simplify: too many changes, >5 total signals, generic constraints.
- Iterate: contradictions, weak alignment between hypothesis and desired outcome, unclear user responses.

## Example Path
- Year: 2025
- Level: Portfolio
- Name: Humane Outcome-First Advocacy Rhythm
- File: `bvssh/2025/portfolio/humane-outcome-first-advocacy-rhythm.md`

## Maintenance
Review when the BVSSH template changes or new facilitation patterns emerge. Update the prompt, agent, and instructions together to keep them aligned.
