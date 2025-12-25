---
name: Theme Trail Backlinks Automation
description: Automation workflow for detecting theme-labeled artifacts and generating backlinks to theme trail pages for all active themes.
applyTo: 'kb/themes/**/*.md, kb/**/*.md, bvssh/**/*.md'
---

# Theme Trail Backlinks Automation

**Purpose:** Automate detection of new `[Theme] - [Title]` artifacts and append backlinks to theme trail pages (`kb/themes/[theme]/index.md`), eliminating manual trail updates for all active themes.

**Outcome References:** 
- [bvssh/2026/team/coherence-theme-trail-backlinks-automated.md](../../../bvssh/2026/team/coherence-theme-trail-backlinks-automated.md) (Coherence theme)
- Applicable to future themes as they are activated

---

## Role Definition

**What this automation does:**
1. Detects new artifacts with `[Theme] - [Title]` pattern (in filename or H1)
2. Extracts theme prefix and artifact title
3. Generates a suggested backlink entry: `- [Artifact Title](path/to/artifact.md) — One-line summary`
4. Presents suggestion for human review/approval
5. On approval, appends backlink to corresponding theme trail
6. Tracks publish→backlink lag time and accuracy per theme

**What this automation does NOT do:**
- ❌ Create or modify artifact content
- ❌ Auto-commit without review
- ❌ Track artifact renames or theme changes (manual correction required)
- ❌ Generate summaries without AI support (keyword/heuristic fallback acceptable)
- ❌ Operate on artifacts without theme prefix (log as unthemed; escalate per exceptions policy)

**Phase:** Implementation & measurement (ongoing; activates for each theme as it reaches prerequisites)

---

## Tool Scoping

**Minimal tools required:**
- File system read (detect new artifacts, read theme trail)
- File system write (append backlinks, log operations)

**Out of scope:**
- Database operations
- External APIs (except AI/LLM)
- Network operations
- Authentication

---

## Output Expectations

### Primary Output: Backlink Entry

**Format:**
```markdown
- [Artifact Title](path/to/artifact.md) — One-line summary
```

**Examples (Good ✅):**
```markdown
- [Coherence] - Theme-Labeled Titles by Default — Enforce theme tagging at artifact creation; eliminate post-hoc tag omissions.
- [Coherence] - Outcome-First Becomes Default Through Automation — Build automation to scaffold outcomes and integrate quality review.
- [FutureTheme] - Artifact Name — Clear, outcome-focused summary under 100 characters.
```

**Examples (Bad ❌):**
```markdown
- Theme-Labeled Titles by Default (missing link path)
- [Theme-Labeled Titles by Default] — (missing artifact link in brackets)
- Coherence - Theme-Labeled Titles (format inconsistent with existing entries)
```

### Secondary Outputs

**1. Automation Log** (daily, appended to `kb/themes/[theme]/.automation-log.txt`)
```
ARTIFACT_DETECTED | [Coherence] - Quarterly Theme Synthesis Published | bvssh/2026/program/quarterly-theme-synthesis-published.md
BACKLINK_GENERATED | Suggested: Quarterly Theme Synthesis Published — Lightweight synthesis published quarterly per active theme.
BACKLINK_APPROVED | User approved; appended to trail.
METRIC | accuracy: accepted_without_edits | confidence: 92%
```

**2. Weekly Summary** (logged to `kb/themes/[theme]/automation-metrics.md` after each review)
```markdown
## Week of Jan 13–19, 2026
- Artifacts detected: 3
- Backlinks generated: 3
- Backlinks approved: 3
- Accuracy (accepted without edits): 100%
- Errors: 0
- Manual overrides: 0
```

**3. Error Log** (whenever accuracy <80% or errors occur)
```
ERROR | Theme extraction failed | filename: kb/artifacts/some-artifact.md | reason: Missing [Theme] prefix | action_taken: logged_as_exception
ERROR | Path resolution failed | artifact: [Coherence] - New Playbook | reason: Artifact not in expected kb/ or bvssh/ directory | action_taken: user_notified
```

---

## Context Specificity

### Workspace Context
- **Artifact locations:** `kb/themes/[theme]/**`, `kb/**/*[Theme]*.md`, `bvssh/**/*[Theme]*.md`
- **Theme trail locations:** `kb/themes/[active-theme]/index.md` (one per active theme)
- **Active themes:** See [theme-selection.instructions.md](theme-selection.instructions.md) for current list
- **Backlink format enforced:** `- [Title](relative/path) — One-line summary`
- **Theme prefix pattern:** Exactly `[Theme] - ` where Theme is an active theme name (no variations)

### Artifact Discovery
**Triggers:**
1. New file created in monitored directories with `[ActiveTheme] - ` in filename
2. File committed to git with `[ActiveTheme] -` in H1 header (where ActiveTheme matches active themes list)
3. Manual trigger: User requests backlink generation for existing artifact

**NOT triggered by:**
- Files without theme prefix (log as unthemed; escalate to exceptions)
- Files with inactive/unknown theme prefix (log as invalid theme; escalate)
- Renames or moves (manual correction only)
- Content-only changes (no new detection)

---

## Safety & Guardrails

### Prohibited Actions
- ❌ Auto-commit backlinks without review (unless confidence ≥95%; log as auto-accept)
- ❌ Modify artifact content; only append to theme trail
- ❌ Ignore theme extraction errors; escalate or log exception
- ❌ Skip lag time tracking; required for leading signals
- ❌ Operate on artifacts without valid theme prefix without escalation

### Required Checks
1. **Theme validation:** Extract theme prefix; reject if missing, invalid, or inactive (log as exception)
2. **Path validation:** Ensure artifact exists at resolved path before appending backlink
3. **Duplicate check:** Verify artifact not already in corresponding theme trail (no duplicate entries)
4. **Format validation:** Backlink matches format: `- [Title](path) — Summary`
5. **Trail existence:** Verify theme trail file exists (`kb/themes/[theme]/index.md`); error if missing

### Error Handling & Escalation

| Scenario | Severity | Action |
|----------|----------|--------|
| Theme prefix missing or invalid | Medium | Log to exceptions; alert user; skip automation |
| Theme not in active list | Medium | Log to exceptions; alert user; ask for clarification or correction |
| Artifact path invalid | Medium | Log error; alert user; manual override available |
| Summary generation fails (AI) | Low | Use fallback heuristic or ask user |
| Accuracy <80% for 2 weeks (per theme) | High | **ESCALATE:** Pause automation for that theme; document 3 worst misclassifications; review & adjust logic |
| Trail file missing or corrupted | Critical | Revert to last commit; manual fix required; disable automation for that theme until resolved |

### Accuracy & Acceptance Threshold
- **Target baseline:** 80%+ (artifacts accepted without edits on first review)
- **Target improvement:** 95%+ by sprint end (refine AI prompts + logic)
- **Escalation trigger:** If 2-week rolling average <80%, pause and investigate

---

## Workflow & Implementation

### 1. Detection (Real-Time or Batch)
```
FOR each new artifact in monitored directories:
  IF filename contains [Theme] - OR H1 header contains [Theme] -:
    Extract theme_prefix = text between [ and ]
    IF theme_prefix in ACTIVE_THEMES list:
      Extract title = text after " - "
      Resolve artifact path (relative from repo root)
      Resolve theme_trail_file = "kb/themes/{theme_prefix_lowercase}/index.md"
      Check if artifact already in theme_trail_file → skip if duplicate
      PROCEED to backlink generation
    ELSE:
      Log to exceptions: "Unknown theme [" + theme_prefix + "]"; skip
  ELSE:
    Log to exceptions: "No theme prefix found"; skip
```

### 2. Backlink Generation
```
INPUT: artifact_title, artifact_path, theme
AI PROMPT: "Generate a one-line summary (≤100 chars) for a [theme] advocacy artifact titled '[Title]'. Summary should be outcome-focused and start with an action verb if possible."
OUTPUT: one_line_summary

backlink_entry = "- [{title}]({path}) — {one_line_summary}"
confidence = AI confidence score (0–100)

IF confidence ≥ 95:
  suggested_action = "auto_accept (review manual)"
ELSE:
  suggested_action = "review_for_approval"
```

### 3. Review & Approval
```
PRESENT to user:
  - Detected artifact: [Title]
  - Theme: [theme]
  - Theme trail destination: kb/themes/[theme]/index.md
  - Proposed backlink: [markdown entry]
  - Summary confidence: {score}%
  
USER ACTION:
  - Approve (accept as-is)
  - Edit (modify summary or theme)
  - Reject (don't add backlink; log reason and theme clarification if applicable)
  
ON APPROVAL:
  - Append to appropriate theme trail (kb/themes/[theme]/index.md)
  - Log: timestamp, artifact, theme, lag_time_minutes, accuracy_assessment
```

### 4. Telemetry Logging
```
FOR each successful backlink:
  Log to daily automation log (kb/themes/[theme]/.automation-log.txt):
    - timestamp
    - theme
    - artifact_detected
    - artifact_path
    - backlink_entry (exact markdown)
    - lag_time_minutes (from artifact_created to backlink_approved)
    - confidence_score
    - accuracy (accepted_without_edits | edited_summary | manually_overridden)
    - manual_notes (if user edited)

WEEKLY AGGREGATION (append to kb/themes/[theme]/automation-metrics.md):
    - Theme
    - Total artifacts detected
    - Total backlinks generated
    - Approval rate (%)
    - Accuracy trend (%)
    - Errors encountered
    - Unthemed artifacts detected (if any)
```

---

## Examples & Clarifications

### Example 1: Successful Detection & Backlink

**Artifact created:**
- **Filename:** `kb/outcome-mapping/sessions/coherence-backlink-automation-planning.md`
- **H1 header:** `# [Coherence] - Backlink Automation Planning`

**Automation detects:**
```
theme = "Coherence" ✓ (verified in ACTIVE_THEMES)
title = "Backlink Automation Planning" ✓
path = "kb/outcome-mapping/sessions/coherence-backlink-automation-planning.md" ✓
theme_trail_file = "kb/themes/coherence/index.md" ✓
duplicate check = false ✓
```

**AI-generated summary:**
> "Detailed plan for automating theme trail backlink generation; includes detection logic, review workflow, and measurement approach."

**Suggested backlink:**
```markdown
- Backlink Automation Planning — Detailed plan for automating theme trail backlink generation; includes detection, review, measurement.
```

**User reviews:** Approves as-is (confidence 94%)
**Result:** ✅ Appended to theme trail; lag time 7 minutes; logged as accepted_without_edits

---

### Example 2: Theme Extraction Error

**Artifact created:**
- **Filename:** `kb/some-artifact.md`
- **H1 header:** `# Some Artifact Title` (no [Theme] prefix)

**Automation detects:**
```
theme = NOT FOUND ✗
```

**Action:**
1. Log error: "Theme prefix missing; artifact: `kb/some-artifact.md`"
2. Alert user: "Please rename to include a theme prefix (e.g., `[Coherence] - `) or log as exception in theme-exceptions."
3. Add to exceptions log: `kb/outcome-mapping/sessions/theme-exceptions-2026-01.md`
4. Skip backlink automation

---

### Example 3: Unknown Theme Detection

**Artifact created:**
- **Filename:** `kb/some-artifact.md`
- **H1 header:** `# [UnknownTheme] - Some Artifact Title`

**Automation detects:**
```
theme_prefix = "UnknownTheme"
Check against ACTIVE_THEMES = ["Coherence", ...]
theme_prefix NOT in ACTIVE_THEMES ✗
```

**Action:**
1. Log to exceptions: "Unknown theme [UnknownTheme]; artifact: `kb/some-artifact.md`"
2. Alert user: "Theme `[UnknownTheme]` is not in the active themes list. Verify theme name or add to active themes if appropriate."
3. Add to exceptions log for future theme evolution review
4. Skip backlink automation

---

### Example 4: Accuracy Drop & Escalation (Per Theme)

**Weekly review (Week ending Jan 29) for Coherence theme:**
- Artifacts generated: 4
- Accepted without edits: 2 (50%)
- **Accuracy: 50% (below 80% threshold) ⚠️**
- Common issues: Summaries too long, not outcome-focused, missing verbs

**Action:**
1. **PAUSE automation for Coherence theme** (don't generate new suggestions; other themes unaffected)
2. **Document 3 worst misclassifications:**
   - Artifact A: Generated "Discusses themes for advocacy" → User needed "Enables reuse by linking artifacts to theme trails"
   - Artifact B: Generated summary with 250 chars (exceeds 100-char target)
   - Artifact C: Generated imperative verb "Analyze" → Outcome-focused verb "Enable" more appropriate
3. **Adjust logic for Coherence:**
   - Refine AI prompt to enforce outcome-focused language
   - Add char-count validation (reject >100 chars)
   - Add verb-check heuristic
4. **Retest on 3 artifacts** before re-enabling automation for Coherence
5. **Document adjustment** in `kb/themes/coherence/automation-metrics.md` under "Refinements" section

---

## Measurement & Success Criteria

### Leading Indicators (Weekly)
- **Auto-backlink generation rate:** % of artifacts with auto-generated suggestions (target: 90%+)
- **Publish→backlink lag:** Median hours from artifact publish to backlink visible (target: <24h, ideally <2h)
- **AI suggestion quality:** % accepted without edits on first review (target: 80%+ initially; 95%+ by week 4)

### Lagging Indicators (Bi-Weekly)
- **Manual backlink corrections:** Count of post-publish corrections needed (target: ↓ trend toward 0)
- **Theme trail freshness:** % of artifacts in trail published ≤30 days (target: ↑ trend toward 100%)
- **Synthesis prep time:** Hours spent hunting/fixing backlinks before synthesis (target: ↓ trend toward 0)

### Success Definition
Automation is **successful** when (per active theme):
- ✅ ≥90% of new themed artifacts auto-generate backlinks
- ✅ Median lag time <24 hours (same-day preferred)
- ✅ AI suggestion accuracy ≥80%
- ✅ Zero critical errors per theme (trail file corruption, duplicate entries, invalid theme prefixes)
- ✅ Weekly review confirms metrics trending toward targets
- ✅ Unthemed artifacts tracked and escalated (not left invisible)

---

## References & Links

- **Outcome (Coherence):** [bvssh/2026/team/coherence-theme-trail-backlinks-automated.md](../../../bvssh/2026/team/coherence-theme-trail-backlinks-automated.md)
- **Prerequisite Outcome (Coherence):** [bvssh/2026/team/coherence-theme-labeled-titles-by-default.md](../../../bvssh/2026/team/coherence-theme-labeled-titles-by-default.md)
- **Active Theme Trails:** `kb/themes/[theme-name]/index.md` (one per active theme)
- **Exceptions Log:** [kb/outcome-mapping/sessions/theme-exceptions-2026-01.md](../../../kb/outcome-mapping/sessions/theme-exceptions-2026-01.md)
- **Theme Selection Guidance:** [theme-selection.instructions.md](theme-selection.instructions.md) (list of active themes)
- **Universal Artifact Theming:** [universal-artifact-theming.instructions.md](universal-artifact-theming.instructions.md)

---
