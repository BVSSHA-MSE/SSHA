---
name: DDD Application Patterns (Ruby)
description: Application service and CQRS patterns for DDD in Ruby.
applyTo: '**/*.rb, **/*.md'
---

# DDD Application Patterns (Ruby)

## Application Service Example
```ruby
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

## CQRS
- **Commands:** Change state, return void/ID.
- **Queries:** Return data, never change state.
