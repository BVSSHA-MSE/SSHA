---
name: DDD Strategic Patterns (Ruby)
description: Strategic DDD patterns for Ruby, including Bounded Context, Context Mapping, and Subdomains.
applyTo: '**/*.rb, **/*.md'
---

# DDD Strategic Patterns (Ruby)

When designing system boundaries and relationships, apply these strategic patterns:

## Bounded Context
**Purpose:** Define explicit boundaries where a model and its language are consistent.
**Implementation:** Ruby module, gem, or Rails engine.
```ruby
# ✅ Separate contexts with clear boundaries
module Billing
  class Customer
    attr_reader :payment_methods, :billing_address
  end
end

module Shipping
  class Customer
    attr_reader :shipping_addresses, :delivery_preferences
  end
end
```
**Rule:** Same term can mean different things in different contexts - that's intentional.

## Context Mapping
**Purpose:** Define relationships between bounded contexts.

| Relationship | Ruby Implementation |
|--------------|---------------------|
| **Shared Kernel** | Shared gem with common value objects |
| **Customer/Supplier** | Upstream context publishes events; downstream subscribes |
| **Anti-Corruption Layer** | Adapter translates external models |
| **Conformist** | Downstream adopts upstream's model directly |

```ruby
# ✅ ACL: Billing context adapts Shipping's model
module Billing
  class ShippingCustomerAdapter
    def from_shipping(shipping_customer)
      Customer.new(id: shipping_customer.id)
    end
  end
end
```

## Subdomains
**Purpose:** Identify and prioritize different parts of the business domain.

| Type | Investment | Ruby Approach |
|------|------------|---------------|
| **Core** | Maximum | Custom DDD, rich domain model |
| **Supporting** | Moderate | Simpler patterns, some custom code |
| **Generic** | Minimal | Gems, libraries, SaaS (auth, email, payments) |

**Rule:** Focus DDD effort on core subdomain; don't over-engineer generic concerns.
