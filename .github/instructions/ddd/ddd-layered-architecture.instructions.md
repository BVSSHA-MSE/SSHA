---
name: DDD Layered Architecture (Ruby)
description: Layered architecture and dependency rules for DDD in Ruby.
applyTo: '**/*.rb, **/*.md'
---

# DDD Layered Architecture (Ruby)

- **User Interface:** Controllers, views.
- **Application Layer:** Orchestrates use cases, no business logic.
- **Domain Layer:** Entities, value objects, domain services.
- **Infrastructure Layer:** Persistence, external APIs.

**Dependency Rule:** Only depend inward (domain has no infra dependencies).
