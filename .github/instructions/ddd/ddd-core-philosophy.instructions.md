---
name: DDD Core Philosophy (Ruby)
description: Core principles and philosophy of Domain-Driven Design for Ruby projects.
applyTo: '**/*.rb, docs/**/*.md, kb/**/*.md'
---

# DDD Core Philosophy (Ruby)

When designing or reviewing Ruby DDD code, apply these core principles:

## Domain First
Model the business domain, not the database or framework.
```ruby
# ❌ WRONG: Database-driven naming
class OrderRecord
  attr_accessor :order_status_id, :fk_customer
end

# ✅ CORRECT: Domain-driven naming
class Order
  attr_reader :status, :customer
end
```

## Ubiquitous Language
Use the same terms domain experts use—in code, docs, and conversation.
```ruby
# ❌ WRONG: Technical jargon
def process_entity(dto)

# ✅ CORRECT: Business language
def place_order(cart)
```

## Bounded Contexts
Explicitly define where each model/term is valid. Same word can mean different things in different contexts.
```ruby
# Billing context: Customer has payment methods
module Billing
  class Customer
    attr_reader :payment_methods
  end
end

# Shipping context: Customer has addresses
module Shipping
  class Customer
    attr_reader :shipping_addresses
  end
end
```

## Continuous Learning
- Refine models as understanding deepens
- Expect naming and structure to evolve
- Collaborate with domain experts regularly

## Iterative Refinement
- Evolve code and language together
- Refactor toward deeper insight, not just cleaner code
- When domain expert language changes, update code to match
