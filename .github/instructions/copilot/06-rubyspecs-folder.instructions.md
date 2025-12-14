---
name: Copilot Ruby Specs Directory Convention
description: Enforce that all Ruby Specs are placed in a `/specs` base directory.
applyTo: '**/*.rb'
---

# Ruby Specs Directory Convention

- All Ruby Specs **must** be placed in the `/specs` directory.
- Do **not** generate or accept Ruby Specs files outside `/specs`.
- When scaffolding or suggesting Ruby Specs, always use `/specs` as the base directory.
- If existing or legacy tests are found outside `/specs`, recommend moving them into `/specs` for consistency.
- The test files should follow standard naming conventions (e.g., ending with `_spec.rb`).

# Detecting Ruby Specs Use

The following are considered Ruby Specs test files:
- Files ending with `_spec.rb`
- Files using `require 'rspec'` or `require 'rspec/...'`
- Files using `require 'minitest/...'`

RSpec is the preferred testing framework for Ruby Specs. Use RSpec conventions and best practices when writing tests.