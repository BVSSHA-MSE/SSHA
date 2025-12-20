# Commit Message Outcome Linking — VS Code Integration Fix

## Summary
- Issue: Outcome references were not appearing in commit messages generated via VS Code.
- Root cause: VS Code Copilot commit generation did not include the outcome-linking instructions file.
- Fix: Add the companion instructions file to VS Code settings so Copilot uses both policy and outcome-linking guidance.

## What Changed
- Updated settings in [.vscode/settings.json](.vscode/settings.json):
  - Added entry to `github.copilot.chat.commitMessageGeneration.instructions`:

```json
{
  "git.branchProtectionPrompt": "alwaysCommit",
  "github.copilot.chat.commitMessageGeneration.instructions": [
    { "text": "Use strict conventional commit v1.0.0 message format allowing Keep a Changelog v1.1.0 generation." },
    { "file": ".github/instructions/copilot/commit-message-policy.instructions.md" },
    { "file": ".github/instructions/copilot/commit-message-outcome-linking.instructions.md" }
  ]
}
```

## Why This Works
- VS Code/Copilot reads listed instruction files to guide commit message generation.
- Including [Commit Message Outcome Linking](.github/instructions/copilot/commit-message-outcome-linking.instructions.md) enables automatic outcome discovery guidance and footer formatting suggestions.

## Verify
- Use Copilot Chat's "Generate commit message" feature in VS Code.
- Confirm suggested message includes one or two `Outcome:` footer lines referencing the most relevant latest-year BVSSH outcomes.
- If absent, recheck [.vscode/settings.json](.vscode/settings.json) and ensure commits are generated via Copilot (not manual input).

## Notes
- Documentation guides behavior; hard enforcement still requires a `commit-msg` hook or CI validation.
- Keep instructions current as `bvssh/` years and outcomes evolve.
