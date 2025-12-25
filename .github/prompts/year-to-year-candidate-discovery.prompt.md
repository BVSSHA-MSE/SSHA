---
name: year-to-year-candidate-discovery
description: Workflow for discovering and organizing candidate outcomes from completed year's outcomes to next year's candidates.md
model: Auto (copilot)
agent: agent
argument-hint: Provide current year and next year (YYYY format).
---

# Year-to-Year Candidate Discovery Workflow

**Purpose:** Extract, organize, and theme candidate outcomes from completed year's outcome reflections to populate next year's `candidates.md`.

**Workflow:** Current Year Outcomes → Reflections & Learnings → Candidate Extraction → Level Organization → Theme Analysis → Next Year candidates.md

---

## Phase 1: Outcome Reflections Discovery

**Input:** `<CURRENT_YEAR>/index.md` (e.g., `bvssh/2025/index.md`)

1. List all completed outcomes by level: Portfolio, Program, Team
2. For each outcome file, read the **Reflection** section and **"What to Change Next Time"** or **"2026+ Candidate Outcomes"** sections
3. Extract all candidate outcomes mentioned (explicit or implied)
4. Capture candidates at all three levels (not just the outcome's own level; look for cross-level implications)

**Output:** Unstructured list of candidate outcomes with source outcome file for each

---

## Phase 2: Candidate Deduplication & Organization

**Input:** Unstructured candidate list from Phase 1

1. Identify duplicate/overlapping candidates across outcomes
2. Keep unique candidates; discard duplicate
3. Retain descriptive text from original outcome file (rationale, context, enabling relationship)
4. Organize unique candidates into three lists by **target level:**
   - **Portfolio Level:** Candidates that become Portfolio outcomes
   - **Program Level:** Candidates that become Program outcomes
   - **Team Level:** Candidates that become Team outcomes
5. If a candidate spans multiple levels (e.g., Team/Program automation), place in primary level and note cross-cutting nature

**Output:** Three lists (Portfolio, Program, Team) of unique candidates with descriptive text

---

## Phase 3: Candidate Themes Analysis

**Input:** Organized candidate lists from Phase 2

1. **Primary Theme Identification:**
   - All candidates in current year should fit the **active theme** (e.g., Coherence for 2025→2026)
   - Rationale: Candidates emerge from outcomes that already operate within active theme
   - Statement: "All N candidates naturally fit [Theme] — [one-sentence justification]"

2. **Secondary Theme Clustering:**
   - Scan all candidate outcomes for conceptual clusters (not primary theme)
   - Identify 2–5 secondary theme clusters (e.g., Governance, Operations, Measurement, Automation)
   - For each cluster:
     - List candidate count and names
     - One sentence insight: What operational or strategic pattern does this cluster reveal?
   - Examples:
     - **Governance** cluster → Portfolio/approval/lifecycle patterns emerging
     - **Operations** cluster → Resilience, tooling, measurement maturity blocking adoption
     - **Measurement** cluster → Moving from outputs to outcomes validation
     - **Automation** cluster → Scaling requires robustness and breadth beyond Year 1 automation

3. **Evolution Signals:**
   - State threshold: "If 3+ candidates from [Secondary Theme] move to active status in [NEXT_YEAR], consider proposing [New Theme] for [YEAR+2]."
   - Rationale: Secondary clusters that activate become strategic priorities; if consistent, warrant new theme proposal

**Output:** Candidate Themes section with primary theme, secondary clusters (count, names, insights), and evolution signals

---

## Phase 4: Candidates.md Assembly

**File:** `<NEXT_YEAR>/candidates.md` (e.g., `bvssh/2026/candidates.md`)

**Structure:**

```markdown
# <NEXT_YEAR> Candidate Outcomes

Derived from <CURRENT_YEAR> outcome reflections and learnings. Organized by level.

---

## Portfolio Level

- **[Candidate Name] ([Level]):** [Descriptive text from source outcome]
- **[Candidate Name] ([Level]):** [Descriptive text from source outcome]

---

## Program Level

- **[Candidate Name] ([Level]):** [Descriptive text from source outcome]
- ...

---

## Team Level

- **[Candidate Name] ([Level]):** [Descriptive text from source outcome]
- ...

---

## Cross-Cutting (System Maturity)

- **[Candidate Name] ([Level]):** [Descriptive text; spans multiple levels]

---

## Candidate Themes

### Primary Theme
**All N candidates naturally fit [Active Theme]** — [one-sentence justification].

### Secondary Theme Clusters
Candidates cluster around secondary themes that may become distinct in future years:

- **[Secondary Theme 1]** (M candidates): [Candidate 1, Candidate 2, ...]
  - *Insight:* [One sentence on operational/strategic pattern revealed]

- **[Secondary Theme 2]** (M candidates): [Candidate 1, Candidate 2, ...]
  - *Insight:* [One sentence on operational/strategic pattern revealed]

- ...

### <YEAR+2>+ Evolution Signals
If 3+ candidate outcomes from a secondary cluster move to active status in <NEXT_YEAR>, consider proposing a new theme for <YEAR+2> (e.g., [Secondary Theme], [Secondary Theme], [Secondary Theme]). Current secondary clusters suggest [strategic priorities] will become [strategic focus].
```

---

## Facilitation Notes

- **Scope:** This workflow is **outcome harvesting only**. Candidates are not ranked, prioritized, or selected for activation. Selection happens in separate portfolio planning sessions.
- **Timing:** Run after all <CURRENT_YEAR> outcomes are completed (or by year-end for early <NEXT_YEAR> planning).
- **Dependencies:** Requires complete outcome reflections and "What to Change Next Time" sections in all outcome files.
- **Ownership:** Portfolio/Program reviewer (not individual outcome facilitators) to ensure consistency and cross-level coherence.

---

## Example (2025→2026)

**Current Year:** 2025  
**Next Year:** 2026  
**Active Theme:** Coherence

**Phase 1 Sources:**
- `bvssh/2025/team/coherence-outcome-first-default-through-automation.md` (Reflection section)
- `bvssh/2025/team/coherence-outcome-fluency-through-mapping.md` (Reflection section)
- `bvssh/2025/program/coherence-easier-to-drive-change-with-bvssh-outcomes.md` (Reflection section)
- `bvssh/2025/portfolio/coherence-ssh-advocacy-embedded-portfolio-wide.md` (Reflection section)

**Phase 2 Result:** 15 unique candidates organized by level

**Phase 3 Result:** Coherence primary; Governance, Operations, Measurement, Automation as secondary clusters

**Phase 4 Output:** `bvssh/2026/candidates.md` (populated with structure above)

---

## References

- [BVSSH Outcome Facilitation Instructions](../instructions/bvssh-outcome-facilitation.instructions.md)
- [Theme Selection Guidance](../instructions/copilot/theme-selection.instructions.md)
- [Universal Artifact Theming](../instructions/copilot/universal-artifact-theming.instructions.md)
