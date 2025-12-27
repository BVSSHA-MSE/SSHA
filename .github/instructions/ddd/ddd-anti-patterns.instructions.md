---
name: DDD Anti-Patterns
description: Common DDD anti-patterns and how to avoid them.
applyTo: '**/*.rb'
---

# DDD Anti-Patterns

When generating or reviewing DDD code, detect and fix these anti-patterns

**Phase**: 🔨 implement

## Anemic Domain Model
**Avoid:** Entities with only getters/setters and no behavior
```ruby
# ❌ WRONG
class Order
  attr_accessor :status, :items, :total
end
```
**Instead:** Push behavior into domain objects
```ruby
# ✅ CORRECT
class Order
  def add_item(item)
    raise "Cannot modify submitted order" if submitted?
    @items << item
    recalculate_total
  end
end
```

## Primitive Obsession
**Avoid:** Raw strings/integers for domain concepts
```ruby
# ❌ WRONG
def charge(amount, currency)  # primitives
```
**Instead:** Use value objects.
```ruby
# ✅ CORRECT
def charge(money)  # Money value object
```

## Breaking Aggregate Boundaries
**Avoid:** Modifying child entities directly from outside
```ruby
# ❌ WRONG
order.items.first.update_quantity(5)
```
**Instead:** All modifications through aggregate root
```ruby
# ✅ CORRECT
order.update_item_quantity(item_id, 5)
```

## Fat Aggregates
**Avoid:** Large aggregates with many entities
**Instead:** Keep aggregates small; reference other aggregates by ID only

## Overusing Domain Services
**Avoid:** Services that steal behavior from entities
**Instead:** Prefer entity methods; use services only for cross-aggregate operations
