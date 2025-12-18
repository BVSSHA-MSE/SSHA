---
name: Quality Requirements for .github Markdown Files
description: This file outlines the quality standards for markdown files located in the .github directory.
applyTo: .github/**/*.md
---
## Quality Requirements for .github/**/*.md

All markdown files under `.github/` must satisfy these quality dimensions:

### 1. Role Definition
- Intent must be clear and unambiguous.
- Responsibilities and boundaries must be explicit.

### 2. Tool Scoping
- Tools must be appropriately scoped (e.g., read-only where appropriate).
- Grant only the minimal tools necessary; no overpowered tool access.

### 3. Output Expectations
- Expected outputs must be well structured and explicit.
- Include examples (✔️ good and ❌ bad) to clarify expected responses.

### 4. Context Specificity
- Define the workspace context expected (e.g., file patterns, folder scope).
- Avoid vague references to unspecified "project context."

### 5. Phase Alignment
- Align the agent to a specific development phase (🎯 plan, 🔨 implement, 🔍 review, 🧪 verify).
- Clearly signal that phase intent in instructions.

### 6. Safety & Guardrails
- Explicitly state prohibited actions (e.g., no edits, no assumption of context not read).
- Include checks such as requiring explicit verification steps or confirming context assumptions.

### 7. File Focus & Practical Size
- Keep instruction sets focused and concise; avoid narrative bloat.
- Minimize redundancy.
- Include examples and structured guidance where needed.