---
name: DDD Anti-Patterns (Ruby)
description: Common DDD anti-patterns and how to avoid them in Ruby.
applyTo: '**/*.rb, **/*.md'
---

# DDD Anti-Patterns (Ruby)

- **Anemic Domain Model:** Entities with only data, no behavior.
- **Primitive Obsession:** Use value objects, not raw strings/ints.
- **Breaking Aggregate Boundaries:** Only modify via root.
- **Fat Aggregates:** Keep small, focused.
- **Overusing Domain Services:** Prefer entity behavior.
