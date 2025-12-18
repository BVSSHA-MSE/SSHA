---
name: Modularize Instruction Set
description: Split a monolithic instruction set into multiple modular markdown files.
tools: ['search', 'edit']
---
Please consider the monolith instruction set.
- It might be attached
- It might be added as a file path
- It might be vaguely referenced by name

If you are unclear about which instruction to target, please ask. Do not proceed with assumptions.

How might this instruction set be split into multiple markdown files to make it more modular?

Use modern software engineering principles and practices.

Ensure each instruction follows the correct naming convention `*.instructions.md`.

Ensure each instruction contains the appropriate frontmatter (`name`, `description`, `applyTo` in this exact order).

Example:
```md
---
name: My Modular Instruction
description: A target instruction that considers a small part of a larger instruction set
applyTo: '**' # relevant glob patterns of any combination of files, directories, and/or subdirectories
---
```