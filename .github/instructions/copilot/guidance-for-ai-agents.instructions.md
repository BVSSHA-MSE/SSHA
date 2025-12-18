---
name: Copilot Guidance for AI Agents
description: Guidance and best practices for AI agents contributing to the SSHA workspace
applyTo: '**'
---
# Guidance for AI Agents

- Honor [GROUND_RULES.md](../../../GROUND_RULES.md): stay concise, honest, and proactive about risks or ambiguity.
- Clarify requirements early: confirm language, target directories, and deliverables before generating code or content.
- Keep notes in kb/: write concise, ASCII-only markdown, organized by topic; prefer incremental updates over long dumps.
- Playground etiquette: keep experiments self-contained within their directory (asciidoctor_doc_system, clean_architecture_experiment); place specs in specs/ alongside code.
- Prefer self-documenting code: use expressive names; reconsider the code expressiveness before adding comments.
- Follow Conventional Commits 1.0.0 for all commits; align scopes with workspace areas (e.g., bvssh, docs, kb, playground, asciidoctor).
- When touching Ruby or DDD-oriented work, consult [.github/instructions/ddd.instructions.md](../ddd.instructions.md) and Ruby/Asciidoctor guidance as applicable.
- Update `.github/copilot-instructions.md` and related modules when new workflows or conventions emerge.
