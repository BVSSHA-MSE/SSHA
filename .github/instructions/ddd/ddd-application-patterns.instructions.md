---
name: DDD Application Patterns
description: Application service and CQRS patterns for DDD.
applyTo: '**/*.rb'
---

# DDD Application Patterns

When generating application layer code, follow these patterns

**Phase**: 🔨 implement

## Application Services
**Purpose:** Orchestrate use cases; coordinate domain objects, repos, and events
**Rules:**
- Inject dependencies (repos, services, event bus)
- No business logic—delegate to domain
- Return IDs or simple results, not domain objects

```ruby
# ✅ CORRECT: Thin orchestration, delegates to domain
class PlaceOrderService
  def initialize(order_repo:, inventory_service:, event_bus:)
    @order_repo = order_repo
    @inventory_service = inventory_service
    @event_bus = event_bus
  end

  def execute(cart:, customer_id:)
    order = OrderFactory.create_from_cart(cart, customer_id)
    @inventory_service.reserve(order.items)
    @order_repo.save(order)
    @event_bus.publish(OrderPlaced.new(order_id: order.id, customer_id: customer_id, total: order.total, occurred_at: Time.now))
    order.id
  end
end
```

## CQRS (Command Query Responsibility Segregation)

### Commands
**Purpose:** Change state
**Rules:** Return void or ID only; never return data for reading
```ruby
# ✅ Command: changes state, returns ID
class CreateUserCommand
  def execute(name:, email:)
    user = User.new(name:, email:)
    @user_repo.save(user)
    user.id
  end
end
```

### Queries
**Purpose:** Read data
**Rules:** Never change state; return DTOs or read models
```ruby
# ✅ Query: reads data, no side effects
class UsersByStatusQuery
  def execute(status:)
    @read_model.users_by_status(status)
  end
end
```

### Avoid Mixing
```ruby
# ❌ WRONG: Query that also changes state
class GetAndMarkUserAsViewedQuery
  def execute(user_id:)
    user = @repo.find(user_id)
    user.mark_as_viewed!  # side effect in query
    user
  end
end
```
