---
name: Copilot Commit Message Policy
description: Commit message policy for all contributions to the SSHA workspace
---
# Commit Message Policy

- All commits must strictly follow the Conventional Commits 1.0.0 specification as described in [CONVENTIONAL_COMMITS.md](../../../CONVENTIONAL_COMMITS.md) at the repository root.
- Required format: `<type>[optional scope][!]: <description>`; keep the description under 72 characters; use imperative mood (e.g., "add", "fix").
- For breaking changes, append `!` after type/scope and include a `BREAKING CHANGE:` footer.
- Use meaningful scopes aligned to this workspace (e.g., `bvssh`, `ssha`, `docs`, `kb`); prefer feature/subdomain names.
- Types must match the spec; see the full list and details in [CONVENTIONAL_COMMITS.md](../../../CONVENTIONAL_COMMITS.md).
- This policy is mandatory for all contributors and automation (agents, scripts, CI).

## Examples

```
feat(bvssh): add 2026 annual index

```

```
feat(docs)!: restructure project overview section

BREAKING CHANGE: Renamed overview anchors; external links may need updates.
```

```
feat(kb): introduce advanced search filters

Previously, users could only filter by date and author; now they can filter by tags and categories as well.
```

## Outcome Referencing (BVSSH)

- Mandatory: every conventional commit must reference the most relevant active BVSSH outcome(s) from the latest year under `bvssh/`.
- Guidance: follow the companion instructions in [commit-message-outcome-linking.instructions.md](commit-message-outcome-linking.instructions.md) to discover outcomes and determine relevance.
- Formatting: add one footer line for each relevant outcome after the commit body using:
	- `Outcome: bvssh/<YYYY>/<level>/<theme>-<outcome-slug>.md — <Outcome Title>`
- Number of outcomes: include one if clearly dominant; otherwise include up to two outcomes.
- Exception (rare): if no outcome applies, add `Outcome: none — <brief reason>`.

### Outcome Referencing Examples

```
docs(copilot): clarify outcome discovery heuristics

Strengthens commit-time outcome linkage (Sooner, Better)

Outcome: bvssh/2025/team/outcome-first-default-through-automation.md — Outcome-First Becomes Default Through Automation
Outcome: bvssh/2025/program/easier-to-drive-change-with-bvssh-outcomes.md — Easier to Drive Change with BVSSH Outcomes
```

```
docs(bvssh): tighten portfolio signals language

Align governance language with Program enablement (Value, Safer)

Outcome: bvssh/2025/portfolio/ssh-advocacy-embedded-portfolio-wide.md — SSH Advocacy Embedded Portfolio-Wide
```