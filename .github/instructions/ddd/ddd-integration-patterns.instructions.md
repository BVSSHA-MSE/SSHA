---
name: DDD Integration Patterns
description: Integration patterns for DDD, including ACL and domain events.
applyTo: '**/*.rb'
---

# DDD Integration Patterns

When integrating with external systems or other bounded contexts, apply these patterns

**Phase**: 🔨 implement

## Anti-Corruption Layer (ACL)
**Purpose:** Translate external models to protect your domain from outside pollution
**Rules:**
- Never let external DTOs/schemas leak into domain
- Create adapters that translate to/from domain objects

```ruby
# ❌ WRONG: External API model leaks into domain
class OrderService
  def create(stripe_payment_intent)
    Order.new(payment_id: stripe_payment_intent['id'])
  end
end

# ✅ CORRECT: ACL adapter translates external to domain
class StripePaymentAdapter
  def to_payment(stripe_intent)
    Payment.new(
      id: stripe_intent['id'],
      amount: Money.new(stripe_intent['amount'], stripe_intent['currency']),
      status: map_status(stripe_intent['status'])
    )
  end

  private

  def map_status(stripe_status)
    { 'succeeded' => :completed, 'pending' => :processing }[stripe_status] || :unknown
  end
end
```

## Domain Events
**Purpose:** Enable loose coupling and eventual consistency between contexts
**Rules:**
- Name in past tense (something happened)
- Include all data consumers need
- Immutable once created

```ruby
# ✅ Domain event: immutable, past-tense, self-contained
OrderShipped = Struct.new(:order_id, :tracking_number, :carrier, :shipped_at, keyword_init: true)

# ✅ Publishing events
class OrderService
  def ship(order, tracking_number, carrier)
    order.mark_shipped
    @event_bus.publish(OrderShipped.new(
      order_id: order.id,
      tracking_number: tracking_number,
      carrier: carrier,
      shipped_at: Clock.now
    ))
  end
end
```
