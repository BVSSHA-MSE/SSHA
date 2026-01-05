# Convention Commit 1.0.0 - Strict Commit Message Format

**Structure:**
```
<type>[optional scope][!]: <description>
[optional body]
[optional footer(s)]
```

## 1. Type
Use one of the following types:
- feat:     A new feature
- fix:      A bug fix
- docs:     Documentation only changes
- style:    Changes that do not affect meaning (formatting, etc)
- refactor: Code change that neither fixes a bug nor adds a feature
- perf:     Code change that improves performance
- test:     Adding or correcting tests
- build:    Changes that affect the build system or dependencies
- ci:       Changes to CI configuration files and scripts
- chore:    Other changes that don’t modify src or test files
- revert:   Reverts a previous commit

## 2. Scope (optional)
A noun describing the section of the codebase affected, in parentheses, e.g.:
```
feat(parser): add ability to parse arrays
```

## 3. Breaking Changes
If the commit introduces a breaking change, add a ! after the type/scope:
```
feat(api)!: change API response format
```
And include a BREAKING CHANGE: section in the footer.

## 4. Description
- Use the imperative mood ("add", not "adds" or "added")
- No trailing period
- Keep under 72 characters

## 5. Body (optional)
- Explain what and why vs. how
- Wrap at 72 characters

## 6. Footer (optional)
- For breaking changes:  
  BREAKING CHANGE: <explanation>
- For issues:  
  Fixes #123, Closes #456

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

## Review & Spot-Checks
- Spot-check "Outcome: none" usage and correctness of selected outcomes during regular reviews.
- Iterate heuristics as the BVSSH structure evolves.

## Links

- Use the index.md file for relevant outcomes of the latest year: `bvssh/<YYYY>/index.md`.

## Example

```
feat(auth)!: require 2FA for all users

Enforce two-factor authentication on login for all user accounts.

BREAKING CHANGE: Users must set up 2FA before logging in.
Closes #42

Outcome: bvssh/2026/team/coherence-theme-labeled-titles-by-default.md - Coherence Theme Labeled Titles by Default
```

---

**References:**  
- [Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/)
- [Keep a Changelog 1.1.0](https://keepachangelog.com/en/1.1.0/)
