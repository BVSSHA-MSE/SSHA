---
name: When to Use DDD (Ruby)
description: Guidance on when DDD is a good or poor fit for Ruby projects.
applyTo: '**/*.rb, docs/**/*.md, kb/**/*.md'
---

# When to Use DDD (Ruby)

Before applying DDD patterns, evaluate whether they fit the project:

## ✅ Good Fit — Use DDD When:
- **Complex business rules:** Logic can't be expressed as simple CRUD
- **Domain expert access:** You can collaborate with people who know the business
- **Evolving requirements:** Domain understanding will deepen over time
- **Long-lived system:** Investment in modeling pays off over years
- **Multiple bounded contexts:** Different parts of system need different models

## ❌ Poor Fit — Avoid DDD When:
- **Simple CRUD:** Just saving/retrieving data with minimal logic
- **No domain experts:** No one to validate ubiquitous language
- **Short-term prototype:** Throwaway code; modeling overhead not worth it
- **Technical domain:** Problem is infrastructure, not business (e.g., file sync)
- **Solo/small team:** Overhead of patterns may slow you down

## Decision Checklist
Ask these questions:
1. Are there business rules beyond validation?
2. Do terms mean different things in different contexts?
3. Will this system be maintained for 2+ years?
4. Can you talk to someone who understands the business deeply?

**If mostly yes → DDD is likely worth the investment.**
**If mostly no → Keep it simple; use CRUD/Active Record patterns.**
