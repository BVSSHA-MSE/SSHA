# Convention Commit 1.0.0 - Strict Commit Message Format

**Structure:**
```
<type>[optional scope][!]: <description>
[optional body]
[optional footer(s)]
```

## 1. Type
Use one of the following types:
- feat:     A new feature
- fix:      A bug fix
- docs:     Documentation only changes
- style:    Changes that do not affect meaning (formatting, etc)
- refactor: Code change that neither fixes a bug nor adds a feature
- perf:     Code change that improves performance
- test:     Adding or correcting tests
- build:    Changes that affect the build system or dependencies
- ci:       Changes to CI configuration files and scripts
- chore:    Other changes that don’t modify src or test files
- revert:   Reverts a previous commit

## 2. Scope (optional)
A noun describing the section of the codebase affected, in parentheses, e.g.:
```
feat(parser): add ability to parse arrays
```

## 3. Breaking Changes
If the commit introduces a breaking change, add a ! after the type/scope:
```
feat(api)!: change API response format
```
And include a BREAKING CHANGE: section in the footer.

## 4. Description
- Use the imperative mood ("add", not "adds" or "added")
- No trailing period
- Keep under 72 characters

## 5. Body (optional)
- Explain what and why vs. how
- Wrap at 72 characters

## 6. Footer (optional)
- For breaking changes:  
  BREAKING CHANGE: <explanation>
- For issues:  
  Fixes #123, Closes #456

---

## Example

```
feat(auth)!: require 2FA for all users

Enforce two-factor authentication on login for all user accounts.

BREAKING CHANGE: Users must set up 2FA before logging in.
Closes #42
```

---

**References:**  
- [Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/)
- [Keep a Changelog 1.1.0](https://keepachangelog.com/en/1.1.0/)
