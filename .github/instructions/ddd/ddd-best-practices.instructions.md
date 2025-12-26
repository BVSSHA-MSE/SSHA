---
name: DDD Best Practices (Ruby)
description: Best practices for implementing DDD in Ruby projects.
applyTo: '**/*.rb, docs/**/*.md'
---

# DDD Best Practices (Ruby)

When generating or reviewing Ruby DDD code, apply these practices:

## Model Behavior, Not Just Structure
```ruby
# ❌ WRONG: Data bag
class Order
  attr_accessor :status
end

# ✅ CORRECT: Behavior-rich
class Order
  def submit
    raise "Empty order" if @items.empty?
    @status = :submitted
  end
end
```

## Keep Aggregates Small
- Prefer value objects over entities where possible
- Reference other aggregates by ID only
- If aggregate grows large, split it

## Enforce Invariants at Boundaries
```ruby
# ✅ Validate in constructor/methods, not externally
class Money
  def initialize(amount, currency)
    raise ArgumentError, "Negative amount" if amount.negative?
    @amount, @currency = amount, currency
  end
end
```

## Organize by Feature/Subdomain
```
# ✅ CORRECT structure
billing/
  order.rb
  payment.rb
  order_repository.rb
shipping/
  shipment.rb
  carrier_service.rb
```

## Keep Domain Layer Pure
- No Rails, ActiveRecord, or ORM in domain objects
- Use dependency injection for infrastructure
- Domain depends on nothing; everything depends on domain

## Use Ports/Adapters (Hexagonal)
```ruby
# ✅ Port (interface in domain)
class OrderRepository
  def save(order); raise NotImplementedError; end
end

# ✅ Adapter (infrastructure implementation)
class PostgresOrderRepository < OrderRepository
  def save(order)
    # ActiveRecord/SQL here, not in domain
  end
end
```

## Test Domain Logic Thoroughly
- Unit test entities, value objects, domain services in isolation
- No database, no Rails, fast feedback

## Refactor as Understanding Grows
- Names evolve with ubiquitous language
- Split or merge aggregates as domain clarifies
- Continuously align code with domain expert terminology
