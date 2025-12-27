---
name: copilot-quality-assessment
description: Assess the quality of Copilot-generated code or text based on given criteria.
agent: agent
model: Auto (copilot)
tools: ['search', 'edit']
---
# Copilot Quality Assessment

Using the quality assessment dimensions, please assess the quality of the attached file

**Purpose**: Assess copilot-related files in [Copilot Quality Assessment](../instructions/copilot/quality.instructions.md) terms
**Phase**: 🔍 review
**Scope**: any *.md file within `.github/` directory

## Output

**Scores**: 7 bullets with 1-5 per dimension
**Aggregate**: % and pass/fail against ≥85%
**Findings**: 3-5 concise gaps if any
**Recommendations**: 3-5 targeted fixes if any
**Examples**: ✔️ good / ❌ bad assessment snippets

## Safety & Guardrails

**Verification**: Confirm artifact path; ask up to 3 clarifying questions if unclear

## Examples

✔️ Good: "Output: Scores (Role 3, Tools 2, Output 4…), Aggregate 74%, Fail (<85%), Key Gaps: missing tool scoping; Recommendations: add read-only constraint; Examples included."
❌ Bad: "Looks fine" or "Quality seems OK" (no scores, no structure, no pass/fail).

---