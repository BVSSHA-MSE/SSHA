# Theming Automation Instruction Set Index

**Created:** 2025-12-25  
**Status:** Complete (Phases 1–3)  
**Purpose:** Embed theme assignment at artifact creation; eliminate "forgot to tag" moments

---

## Phase Summary

| Phase | Objective | Artifact | Status |
|-------|-----------|----------|--------|
| **1** | Embed theme assignment in outcome facilitation | `.github/prompts/bvssh-outcome-facilitation.prompt.md` | ✅ Complete |
| **2** | Create theme selection decision guidance | `.github/instructions/copilot/theme-selection.instructions.md` | ✅ Complete |
| **3** | Define universal artifact lifecycle + types | `.github/instructions/copilot/universal-artifact-theming.instructions.md` | ✅ Complete |

---

## Quick Links

### Phase 1: Outcome Facilitation Prompt
**File:** [.github/prompts/bvssh-outcome-facilitation.prompt.md](.github/prompts/bvssh-outcome-facilitation.prompt.md)  
**Changes:**
- Step 0: Theme assignment (active: Coherence)
- Step 2: Format rule `[Theme] - [Outcome Name]`
- Slug guidance updated to match theme naming

**Impact:** Every new outcome auto-themed at creation via facilitation workflow

---

### Phase 2: Theme Selection Guidance
**File:** [.github/instructions/copilot/theme-selection.instructions.md](.github/instructions/copilot/theme-selection.instructions.md)  
**Covers:**
- Quick decision tree (3 questions)
- Coherence theme scope + core concepts
- Validation checklist (artifact fit, BVSSH dimensions, signal clarity)
- Exception logging + theme evolution process
- Examples (✅ fits, ❌ non-fits, 🤔 ambiguous)

**Impact:** Practitioners can confidently assign/validate theme for any artifact type

---

### Phase 3: Universal Artifact Theming
**File:** [.github/instructions/copilot/universal-artifact-theming.instructions.md](.github/instructions/copilot/universal-artifact-theming.instructions.md)  
**Covers:**
- **Core Principle:** Theming at creation, not post-publish
- **Artifact Lifecycle:** 5 phases (creation → evolution)
- **Step-by-Step Workflow:** 6 actionable steps from ideation to review
- **Artifact Types:** 9 types with guidance
  - Outcomes, Playbooks, Case Studies
  - Reference Models, Facilitation Kits, Policy Briefs
  - Decision Aids, Infographics, Trail Maps
- **Pre-Publish Validation:** 12-item checklist
- **Decision Tree:** Should this artifact fit a theme?
- **Exception Logging:** Structured process + quarterly review
- **Integration:** How to use with BVSSH facilitation, artifact creation workflows

**Impact:** All artifact creation follows consistent theme-first pattern; backlinks auto-populate on publish

---

## Execution Assets

| Asset | Location | Purpose |
|-------|----------|---------|
| Artifact Template | `kb/themes/coherence/artifact-template.md` | Pre-filled with `[Coherence] -` prefix; BVSSH structure |
| Exception Log | `kb/outcome-mapping/sessions/theme-exceptions-2026-01.md` | Weekly review of off-theme artifacts |
| Week 1 Guide | `kb/outcome-mapping/sessions/2026-01-week-1-execution-guide.md` | Step-by-step daily workflow; coverage tracking |
| Launch Summary | `kb/outcome-mapping/sessions/2026-launch-summary.md` | Readiness checklist; decision points; contingencies |

---

## Copilot Instructions Index

All three phases now linked in [.github/copilot-instructions.md](.github/copilot-instructions.md):
- Project Overview
- Key Files & Structure
- Guidance for AI Agents
- **Theme Selection Guidance** ← Phase 2
- **Universal Artifact Theming** ← Phase 3
- Commit Message Policy
- License
- Ruby Specs Directory Convention

---

## Next Steps

**Week 1 (Jan 1–14, 2026):** Execute Team Outcome 1 (Theme-Labeled Titles by Default)
- Use artifact template for all new content
- Confirm `[Coherence] -` prefix at creation
- Track coverage % weekly; target ≥95%
- See [2026-01-week-1-execution-guide.md](outcome-mapping/sessions/2026-01-week-1-execution-guide.md)

**Week 3–4 (Jan 15–28, 2026):** Execute Team Outcome 2 (Theme Trail Backlinks Automated)
- Depends on: Outcome 1 ≥95% coverage
- Build automation script; test <24h publish→backlink lag
- Target ≥90% auto-backlinks; zero manual corrections

**March 31 (Q1):** Program Outcome (Quarterly Theme Synthesis Published)
- First synthesis publishes; feeds into trail freshness signal
- Depends on: Team Outcomes 1–2 successful

---

## Decision Points

| Date | Outcome | Success Criteria | Next Action |
|------|---------|------------------|-------------|
| Jan 14 | Outcome 1: Theme-Labeled Titles | ≥95% coverage; 0 omissions | ✅ Proceed to Outcome 2 on Jan 15 |
| Jan 28 | Outcome 2: Theme Trail Backlinks | ≥90% auto; 0 corrections | ✅ Synthesis ready; declare success |
| Mar 31 | Program: Quarterly Synthesis | Published; trail current + linked | ✅ Close Q1; plan Q2 theme work |

---

## Quality Assurance

**Instruction Set Reviews (Pre-Publish):**
- Phase 1: Outcome facilitation prompt ✅ (embedded in BVSSH workflow)
- Phase 2: Theme selection guidance ✅ (350+ lines; decision tree + validation)
- Phase 3: Universal artifact theming ✅ (400+ lines; 5 phases, 9 types, 12-item checklist)

**Outcome Quality Scores (Post-Review):**
- Portfolio (Compounding Advocacy): 4.7/5 (Finalized)
- Program (Quarterly Synthesis): 5/5 (Active)
- Team 1 (Theme-Labeled Titles): 5/5 (Active, Weeks 1–2)
- Team 2 (Theme Trail Backlinks): 5/5 (Planned, Weeks 3–4)

**Ready for Execution:** Yes (Grade A; no blockers)

---

## References

- **BVSSH Outcome Facilitation:** [.github/prompts/bvssh-outcome-facilitation.prompt.md](.github/prompts/bvssh-outcome-facilitation.prompt.md)
- **Theme Selection:** [.github/instructions/copilot/theme-selection.instructions.md](.github/instructions/copilot/theme-selection.instructions.md)
- **Universal Artifact Theming:** [.github/instructions/copilot/universal-artifact-theming.instructions.md](.github/instructions/copilot/universal-artifact-theming.instructions.md)
- **Full Outcomes:** [bvssh/2026/](../../../bvssh/2026/)
- **Knowledge Base:** [kb/themes/coherence/](.)
