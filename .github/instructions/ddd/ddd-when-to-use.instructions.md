---
name: When to Use DDD
description: Guidance on when DDD is a good or poor fit.
applyTo: '**/*.rb'
---

# When to Use DDD

**Phase:** 🎯 plan

**Role & Boundaries:** Decide DDD fit before implementation. Scope is domain/application code only. Produce a decision note as output.

## Output Expectations
Produce a one-paragraph decision note:
- Format: `Decision: [Use DDD | Keep Simple]. Rationale: [3–4 bullets tied to checklist]. Next: [phase-appropriate next step].`
- Examples:
	- ✅ Good: `Decision: Use DDD. Rationale: complex rules beyond CRUD; access to domain experts; multiple bounded contexts; long-lived system. Next: model core subdomain; avoid over-engineering generic.`
	- ❌ Bad: `DDD is always good; start with CQRS everywhere.`

## Context Specificity
- Workspace scope: Ruby code in this repo (**/*.rb), domain/application concerns only
- Never assume requirements; when unclear, ask up to 3 clarifying questions:
	1) Longevity: Will this system be maintained for 2+ years?
	2) Terms: Do terms mean different things in different contexts?
	3) Rule complexity: Are there business rules beyond simple validation/CRUD?

## Safety & Guardrails
- Verification: confirm checklist answers before recommending DDD; prefer CRUD/Active Record if answers skew simple

Before applying DDD patterns, evaluate whether they fit the project:

## ✅ Good Fit — Use DDD When:
- **Complex business rules:** Logic can't be expressed as simple CRUD
- **Domain expert access:** You can collaborate with people who know the business
- **Evolving requirements:** Domain understanding will deepen over time
- **Long-lived system:** Investment in modeling pays off over years
- **Multiple bounded contexts:** Different parts of system need different models

## Decision Checklist
Ask these questions:
1. Are there business rules beyond validation?
2. Do terms mean different things in different contexts?
3. Will this system be maintained for 2+ years?

**If mostly yes → DDD is likely worth the investment.**
**If mostly no → Keep it simple; use CRUD/Active Record patterns.**

> Note: if AI-driven, there's always a domain expert: the user.