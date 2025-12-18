---
name: DDD Tactical Patterns (Ruby)
description: Tactical DDD patterns for Ruby, including Entity, Value Object, Aggregate, Domain Event, Repository, Domain Service, Factory, Specification.
applyTo: '**/*.rb, **/*.md'
---

# DDD Tactical Patterns (Ruby)

When implementing domain logic, use these tactical building blocks:

## Entity
- **Unique identity, mutable.**
```ruby
class Order
  attr_reader :id, :items, :status

  def initialize(id:, items: [], status: :draft)
    @id = id
    @items = items
    @status = status
  end

  def add_item(item)
    raise 'Max 10 items' if @items.size >= 10
    @items << item
  end

  def submit
    @status = :submitted
  end
end
```

## Value Object
- **Immutable, compared by value.**
```ruby
class Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    raise 'Negative amount' if amount < 0
    @amount = amount
    @currency = currency
  end

  def +(other)
    raise 'Currency mismatch' unless currency == other.currency
    Money.new(amount + other.amount, currency)
  end

  def ==(other)
    amount == other.amount && currency == other.currency
  end

  alias eql? ==
  def hash; [amount, currency].hash; end
end
```

## Aggregate
- **Cluster of entities/value objects, root enforces invariants.**
```ruby
class Order
  # Aggregate Root
  def add_item(product_id, quantity)
    raise 'Max 10 items' if items.size >= 10
    items << OrderItem.new(product_id, quantity)
  end

  def items
    @items.dup.freeze
  end
end
```

## Domain Event
- **Immutable, past-tense, enough info for consumers.**
```ruby
OrderPlaced = Struct.new(:order_id, :customer_id, :total, :occurred_at, keyword_init: true)
```

## Repository
- **Abstracts persistence, only for aggregate roots.**
```ruby
class OrderRepository
  def save(order)
    # persist order
  end

  def find_by_id(id)
    # fetch order
  end
end
```

## Domain Service
- **Stateless, for operations not belonging to entities/VOs.**
```ruby
class TransferMoneyService
  def transfer(from:, to:, amount:)
    from.withdraw(amount)
    to.deposit(amount)
  end
end
```

## Factory
- **Encapsulates complex creation logic.**
```ruby
class OrderFactory
  def self.create_from_cart(cart, customer_id)
    items = cart.items.map { |ci| OrderItem.new(ci.product_id, ci.quantity) }
    Order.new(id: SecureRandom.uuid, items: items, status: :draft)
  end
end
```

## Specification
- **Encapsulates selection logic, composable.**
```ruby
class OrdersOverAmount
  def initialize(amount)
    @amount = amount
  end

  def satisfied_by?(order)
    order.total > @amount
  end
end
```
