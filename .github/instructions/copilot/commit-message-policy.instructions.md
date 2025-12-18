---
name: Copilot Commit Message Policy
description: Commit message policy for all contributions to the SSHA workspace
applyTo: '**'
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