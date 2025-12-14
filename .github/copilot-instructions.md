
# Copilot Instructions for SSHA

## Project Overview
- **Annual SSH Advocacy** is a personal, long-lived advocacy and learning portfolio aligned with Better Value Sooner Safer Happier principles.
- The repository captures learning, experimentation, reflection, and contribution over time, with content ranging from raw notes to polished outputs.
- The intent is learning and contribution, not prescription.
- Numbered directories are intentionally spaced to allow future expansion without structural disruption.

## Key Files & Structure
- The repository currently contains a `README.md`, `LICENSE`, and `CONVENTIONAL_COMMITS.md` file. Content is organized in numbered directories (not present yet) to support incremental, non-disruptive growth.
- This is a documentation-first workspace: no source code, configuration, or build/test scripts are present at this time.
- The repository documents its strict Conventional Commits 1.0.0 commit message policy in `CONVENTIONAL_COMMITS.md` (see below).
- There are no other documented developer workflows, build systems, or test conventions at this time. Update this file if/when code or workflows are introduced.

## Guidance for AI Agents
- **Clarify requirements**: For any code generation, ask the user for the intended language, framework, and high-level goals.
- **Scaffold from scratch**: If implementing features, be prepared to create all necessary project structure, including source, test, and configuration files.
- **Document assumptions**: Clearly comment on any assumptions made about architecture, workflows, or conventions.
- **Reference standards**: In the absence of project-specific conventions, follow best practices for the chosen language/framework.
- **Respect the intent**: Prioritize learning, experimentation, and contribution over rigid structure or prescription.
- **Follow commit message policy**: All commit messages must strictly follow the Conventional Commits 1.0.0 format as documented in `CONVENTIONAL_COMMITS.md` at the repository root.
- **Update this file**: When new patterns, workflows, or conventions are established, update `.github/copilot-instructions.md` to reflect them.
## Commit Message Policy
- All commits must strictly follow the Conventional Commits 1.0.0 specification as described in `CONVENTIONAL_COMMITS.md` at the repository root. See that file for required types, structure, and examples. This policy is mandatory for all contributions.


## Example: Starting a Python Project
- If the user requests a Python implementation, create a `src/` directory, add a `main.py`, and set up a `requirements.txt`.
- For tests, use a `tests/` directory and `pytest` as the default framework unless otherwise specified.

## License
- The project uses the Apache 2.0 License (see LICENSE).

---
*Update this file as the project evolves to document new conventions, workflows, and architectural decisions.*
