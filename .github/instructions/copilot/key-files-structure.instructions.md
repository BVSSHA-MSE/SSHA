---
name: Copilot Key Files & Structure
description: Key files and directory structure for the SSHA workspace
applyTo: '**'
---
# Key Files & Structure

- The repository contains:
	- README.md, LICENSE, CONVENTIONAL_COMMITS.md, and GROUND_RULES.md at the root.
	- Content is organized in numbered directories under ssha/ (e.g., 00-annual-advocacy/, 99-archive/) with index.md files for navigation.
	- docs/ and src/doc/ hold supporting documentation; kb/ is the knowledge base for concise agent notes and references.
	- playground/ hosts Ruby experiments. Current projects: asciidoctor_doc_system/ (Asciidoctor-focused clean architecture) and clean_architecture_experiment/. Each keeps code and specs in its own directory with specs/ as the test root.
	- output/ captures generated artifacts (e.g., rendered Asciidoctor outputs).
- This is documentation-first; experiments live in playground/ and remain self-contained.
- Conventional Commits 1.0.0 applies to all contributions; see CONVENTIONAL_COMMITS.md.
- Update this file when new workflows, directories, or experiments are added.
