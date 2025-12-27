---
name: DDD Modeling Guidelines (Ruby)
description: Guidelines for discovering and refining domain models in Ruby DDD projects.
applyTo: '**/*.rb'
---

# DDD Modeling Guidelines (Ruby)

When discovering or refining domain models, apply these techniques:

## Make Implicit Concepts Explicit
**When:** You see strings/symbols representing domain concepts.
```ruby
# ❌ WRONG: Implicit status as symbol
order.status = :pending_approval

# ✅ CORRECT: Explicit status object with behavior
class PendingApproval
  def can_ship?; false; end
  def can_cancel?; true; end
end
order.status = PendingApproval.new
```

## Push Behavior Into Domain Objects
**When:** Logic operates on object's data from outside.
```ruby
# ❌ WRONG: External logic
if order.total > 100 && order.customer.vip?
  discount = order.total * 0.1
end

# ✅ CORRECT: Behavior inside domain object
class Order
  def vip_discount
    return Money.zero unless customer.vip? && total > Money.new(100)
    total * 0.1
  end
end
```

## Extract Value Objects From Primitives
**When:** Primitives have validation, formatting, or operations.
```ruby
# ❌ WRONG: Primitive string with implicit rules
email = "user@example.com"

# ✅ CORRECT: Value object with validation
class Email
  def initialize(address)
    raise "Invalid email" unless address.match?(URI::MailTo::EMAIL_REGEXP)
    @address = address.downcase
  end
end
```

## Use Domain Events for Temporal Concepts
**When:** "When X happens, then Y" appears in requirements.
```ruby
# ✅ Capture the moment something happened
OrderPlaced = Struct.new(:order_id, :placed_at, keyword_init: true)
PaymentReceived = Struct.new(:order_id, :amount, :received_at, keyword_init: true)
```

## Discovery Techniques
- **Event Storming:** Map domain events on timeline with domain experts
- **Example Mapping:** Concrete examples reveal edge cases and rules
- **Domain Expert Interviews:** Listen for nouns (entities) and verbs (behaviors)
