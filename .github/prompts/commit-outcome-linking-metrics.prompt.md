---
name: commit-outcome-linking-metrics
description: Compute outcome-linking coverage metrics from git history and summarize results.
model: Auto (copilot)
agent: agent
argument-hint: Provide repo path and time window (e.g., 2.weeks).
---
# Commit Outcome-Linking Metrics Prompt

Goal: Analyze commit messages for `Outcome:` footers to measure outcome-linking coverage over a time window and produce a concise report.

## Inputs
- repoPath: Path to the git repo (default: current workspace root)
- sinceWindow: Time window for analysis (default: 2.weeks)
- outcomeTag: Tag to detect outcome linkage (default: `Outcome:`)
- noneTag: Tag to detect explicit opt-outs (default: `Outcome: none`)

## Commands

### PowerShell (Windows)
Use this when running in PowerShell.
```powershell
$repoPath="z:\Business\BVSSH\SSHA"; $sinceWindow="2.weeks"; $TOTAL=(git -C $repoPath log --since=$sinceWindow --pretty=%H | Measure-Object).Count; $WITH_OUTCOME=(git -C $repoPath log --since=$sinceWindow --grep="Outcome:" --pretty=%H | Measure-Object).Count; $WITH_OUTCOME_NONE=(git -C $repoPath log --since=$sinceWindow --grep="Outcome: none" --pretty=%H | Measure-Object).Count; $COVERAGE=if ($TOTAL -gt 0) { [math]::Round(100.0 * $WITH_OUTCOME / $TOTAL, 1) } else { 0 }; Write-Output "Commits sampled: $TOTAL"; Write-Output "Outcome-linked commits: $WITH_OUTCOME ($COVERAGE%)"; Write-Output "Commits with 'Outcome: none': $WITH_OUTCOME_NONE"; Write-Output "Window: $sinceWindow";
```

### Bash (macOS/Linux)
Use this when running in a POSIX shell.
```bash
repoPath="."
sinceWindow="2.weeks"
outcomeTag="Outcome:"
noneTag="Outcome: none"

TOTAL=$(git -C "$repoPath" log --since="$sinceWindow" --pretty=%H | wc -l | awk '{print $1}')
WITH_OUTCOME=$(git -C "$repoPath" log --since="$sinceWindow" --grep "$outcomeTag" --pretty=%H | wc -l | awk '{print $1}')
WITH_OUTCOME_NONE=$(git -C "$repoPath" log --since="$sinceWindow" --grep "$noneTag" --pretty=%H | wc -l | awk '{print $1}')

if [ "$TOTAL" -gt 0 ]; then
  COVERAGE=$(awk -v t="$TOTAL" -v o="$WITH_OUTCOME" 'BEGIN{printf "%.1f", 100.0*o/t}')
else
  COVERAGE=0
fi

echo "Commits sampled: $TOTAL"
echo "Outcome-linked commits: $WITH_OUTCOME ($COVERAGE%)"
echo "Commits with 'Outcome: none': $WITH_OUTCOME_NONE"
```

### Optional: Sample Listing For Review
```powershell
# PowerShell sample listing (last two weeks)
$repoPath = "."; $sinceWindow = "2.weeks"
git -C $repoPath log --since=$sinceWindow --pretty=format:%H%n%s%n%b%n----
```
```bash
# Bash sample listing (last two weeks)
repoPath="."; sinceWindow="2.weeks"
git -C "$repoPath" log --since="$sinceWindow" --pretty=format:%H%n%s%n%b%n----
```

## Output Requirements
Produce a concise Markdown summary:
- Commits sampled: N
- Outcome-linked commits: M (X%)
- Commits with `Outcome: none`: K
- Window: <sinceWindow>
- Notes: If outcome-linking recently began, state coverage context and expected upward trend.

## Quality Notes
- Keep the report under 6 lines.
- Prefer a single window parameter; avoid mixing timeframes.
- If `TOTAL` is 0, report zeros and skip percentage math.
- Use the companion guidance if needed: [.github/instructions/copilot/commit-message-outcome-linking.instructions.md](../instructions/copilot/commit-message-outcome-linking.instructions.md).
