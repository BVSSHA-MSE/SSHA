---
name: DDD Strategic Patterns (Ruby)
description: Strategic DDD patterns for Ruby, including Bounded Context, Context Mapping, and Subdomains.
applyTo: '**/*.rb, **/*.md'
---

# DDD Strategic Patterns (Ruby)

## Bounded Context
- **Definition:** Explicit boundary for a domain model.
- **Implementation:** Ruby module, gem, or Rails engine.
```ruby
module Billing
  # All billing-related models and logic
end
```

## Context Mapping
- **Relationships:** Use Ruby interfaces/adapters for ACLs, shared gems for Shared Kernel, etc.

## Subdomains
- **Core Domain:** Invest most effort here.
- **Supporting/Generic:** Use gems or libraries for generic subdomains.
