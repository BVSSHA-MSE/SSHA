---
name: Commit Message Outcome Linking
description: Guidance for discovering and referencing the most relevant BVSSH outcomes in conventional commits.
---

# Commit Message Outcome Linking

Purpose: ensure every conventional commit references the most relevant active BVSSH outcome(s) by discovering outcomes from the latest year and applying clear relevance heuristics.

## Discovery
- Latest year: scan `bvssh/` for 4-digit year directories and select the highest (e.g., `bvssh/2026/`).
- Outcomes: look under `bvssh/<YYYY>/portfolio/`, `bvssh/<YYYY>/program/`, `bvssh/<YYYY>/team/` for Markdown files; each file is an outcome.
- Title: use the first H1 (`# ...`) in the outcome file; if absent, use the filename slug with spaces (e.g., `outcome-first-default-through-automation.md` → "Outcome First Default Through Automation").

## Relevance Rules
- Direct edits win: if your changes directly touch an outcome file under `bvssh/<YYYY>/<level>/<theme>-<outcome-slug>.md`, reference that outcome first.
- Path-based heuristics when not direct:
  - `bvssh/<YYYY>/**` content changes not directly in an outcome file: choose the closest level directory affected.
  - `.github/**` (policies, instructions): prefer `team` outcome (automation/default behavior), then `program` outcome.
  - `docs/**` or `kb/**` (governance/portfolio language): prefer `portfolio` outcome.
  - `output/**` (advocacy artifact): prefer `team` outcome.
  - `playground/**` These should never be checked in. Prompt the user to not commit and review the `.gitignore` file.
- Limit outcomes: include up to two outcomes; choose the highest-relevance pair. If a single outcome is clearly most relevant, include only that one.
- Fallback order when unclear: `team` → `program` → `portfolio` based on the nature of the change.

## Commit Formatting
- Keep Conventional Commits 1.0.0 structure intact (type, optional scope, description; optional body; optional footers).
- Add outcome footers (one line per outcome) after the body:
  - Format: `Outcome: bvssh/<YYYY>/<level>/<theme>-<outcome-slug>.md — <Outcome Title>`
- Preferred body nudge: one concise line tying the change to BVSSH dimensions (e.g., "Strengthens commit-time outcome linkage (Sooner, Better)").
- Exceptions (rare): if truly no outcome applies, add `Outcome: none — <brief reason>`.

## Examples (using 2025 outcomes)
- Policy refinement:
  - Outcome: `bvssh/2025/team/outcome-first-default-through-automation.md` — Outcome-First Becomes Default Through Automation
  - Outcome: `bvssh/2025/program/easier-to-drive-change-with-bvssh-outcomes.md` — Easier to Drive Change with BVSSH Outcomes
- Portfolio governance doc:
  - Outcome: `bvssh/2025/portfolio/ssh-advocacy-embedded-portfolio-wide.md` — SSH Advocacy Embedded Portfolio-Wide

## Review & Spot-Checks
- Spot-check "Outcome: none" usage and correctness of selected outcomes during regular reviews.
- Iterate heuristics as the BVSSH structure evolves.

## Links

- Use the index.md file for relevant outcomes of the latest year: `bvssh/<YYYY>/index.md`.