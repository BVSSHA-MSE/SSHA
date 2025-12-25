---
name: Quality Requirements for .github Markdown Files
description: This file outlines the quality standards for markdown files located in the .github directory.
applyTo: '.github/**/*.md'
---
# Quality Requirements for .github/**/*.md

These are mandatory baseline standards for all `.github/**/*.md` files across all development phases. 

> **Note**: This file must strictly adhere to these requirements. Treat all issues as errors requiring correction.

**Scoring Dimensions**
Ensure each dimension can be scored 1-5 with those scores aggregated across all dimensions to a total score out of the maximum. The aggregate score percentage must be greater than 85%.

## 1. Role Definition
- Intent must be clear and unambiguous
- Responsibilities and boundaries must be explicit
- Do not assume context or knowledge not explicitly provided

## 2. Tool Scoping
- Tools must be appropriately scoped (e.g., read-only where appropriate)
- Grant only minimal necessary tools; no overpowered access
- No tools should be granted without explicit justification
- Instructions and prompts may not specify tools

## 3. Output Expectations
- Expected outputs must be well-structured and explicit
- Include examples: ✔️ good and ❌ bad responses

## 4. Context Specificity
- Define workspace context explicitly (file patterns, folder scope)
- Never assume requirements
- Don't operate outside intended boundaries
- When unclear, ask up to 3 clarifying questions instead of assuming

## 5. Phase Alignment
- Align to a specific phase: 🎯 plan, 🔨 implement, 🔍 review, or 🧪 verify
- Signal phase intent clearly to prevent unintentional operations

## 6. Safety & Guardrails
- Explicitly state prohibited actions
- Include verification steps before operations propagate
- Ask for clarifications rather than assume context
- Do not modify files directly; influence other modification operations to ensure quality

## 7. File Focus & Practical Size
- Keep instruction sets focused and concise
- Avoid redundancy without new value
- Include examples and structured guidance
- Maximize reasoning capacity for narrow, specific problems

These dimensions directly impact whether the instructions lead to solving the right challenges safely, efficiently, and correctly

### Score 1/5 Example (Fails)

```markdown
---
name: Example Role Definition
description: This document outlines the roles and responsibilities for the project.
tools: ['edit']
---

# Role Definition Example

## Intent
The purpose of this document is to clarify the roles involved in the project.

## Responsibilities
- **Project Manager**: Oversees project timelines and deliverables.
- **Developer**: Responsible for coding and implementing features.
- **Tester**: Conducts testing to ensure quality and functionality.

Don't assume these are the only responsibilities on the project.

## Phase: this is relevant for before the project begins.

## Boundaries
Each role has specific tasks and should not overlap with others unless explicitly stated.

> **Note**: While the roles are defined, some context about the project specifics is assumed and not detailed here.

## Output
- Roles and Responsiblities
```

❌ **Critical Failures Across All Dimensions**:

| Dimension | Score | Why It Fails |
|-----------|-------|-------------|
| Role Definition | 1/5 | Vague intent, no clear responsibilities, "Don't assume these are the only responsibilities" undermines clarity |
| Tool Scoping | 1/5 | Grants 'edit' tool without explicit justification or minimal necessary access |
| Output Expectations | 1/5 | "Output the roles and responsibilities" is vague. No structure, no examples (✔️ good/❌ bad), no format specification. What format? JSON? Markdown table? Free text? |
| Context Specificity | 1/5 | "Project specifics is assumed and not detailed here." This admits context is missing but doesn't define it. Which project? What are the actual boundaries? |
| Phase Alignment | 1/5 | "Phase: this is relevant for before the project begins" is malformed and unclear. Should explicitly state: 🎯 plan / 🔨 implement / 🔍 review / 🧪 verify. |
| Safety & Guardrails | 1/5 | Vague boundaries ("should not overlap unless explicitly stated"). No prohibited actions, no verification steps. |
| File Focus & Practical Size | 1/5 | The admission of missing context creates confusion rather than clarity. |

**Aggregate Score**: 7/35 = **20%** ❌ **Fails** (extremely below 85% threshold)
