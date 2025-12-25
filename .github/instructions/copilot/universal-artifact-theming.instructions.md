---
name: Universal Artifact Theming Instruction Set
description: Comprehensive guidance for theming all artifact types in BVSSH advocacy work (outcomes, playbooks, case studies, policies, facilitation kits, reference models, infographics, etc.).
applyTo: 'bvssh/**/*.md, kb/**/*.md, docs/**/*.md'
---

# Universal Artifact Theming Instruction Set

Purpose: Ensure all advocacy artifacts are theme-labeled at creation, validated before publishing, and contribute to coherent, reusable advocacy trails.

---

## Core Principle

**Theming is not a post-publish task; it is a creation-time decision.** All artifacts must be assigned a theme (or logged as exceptions) before publishing.

---

## Artifact Theming Lifecycle

### Phase 1: Creation & Theme Assignment
- **When:** At artifact inception
- **Who:** Artifact creator (you, or facilitated with practitioner)
- **How:** Use decision tree; confirm theme fits core intent
- **Output:** Artifact created with `[Theme] - [Title]` in filename and H1

### Phase 2: Content Development
- **When:** During writing/designing artifact
- **Who:** Creator
- **How:** Ensure artifact stays focused on theme intent; don't drift
- **Output:** Coherent, theme-aligned content

### Phase 3: Pre-Publish Validation
- **When:** Before committing/publishing artifact
- **Who:** Creator (+ optional peer review)
- **How:** Run validation checklist; confirm theme is correct
- **Output:** Artifact meets theme + format standards; ready to publish

### Phase 4: Publishing & Backlink
- **When:** After validation passes
- **Who:** Creator (+ automation for backlinks)
- **How:** Publish artifact; automation adds backlink to theme trail
- **Output:** Artifact in KB; linked in theme trail within 24 hours

### Phase 5: Evolution & Review
- **When:** Quarterly (or as exceptions accumulate)
- **Who:** Portfolio/Program owner
- **How:** Review exceptions; decide theme evolution
- **Output:** Theme definitions refined; new themes proposed if needed

---

## Step-by-Step Workflow

### Step 1: Identify Artifact Type & Confirm Theme

**Artifact Types:**
- **Outcomes:** Portfolio, Program, or Team outcomes (BVSSH nine-step)
- **Playbooks:** Checklists, canvases, minimal scripts enabling default behaviors
- **Case Studies:** Real narratives with signals, decisions, learnings
- **Reference Models:** Visual models + rationale aligning decisions
- **Facilitation Kits:** Workshop agendas, exercises, capture templates
- **Policy Briefs:** Lightweight governance patterns, guardrails
- **Decision Aids:** Click-through tutorials, small tools shortening orientation
- **Infographics:** High-clarity visuals compressing orientation time
- **Trail Maps:** Curated indices linking artifacts by theme/topic

**Theme Decision:**
1. Use [Theme Selection Guidance](theme-selection.instructions.md) decision tree
2. Confirm: Does this artifact explore SSH coherence, outcome design, or compounding?
3. If yes → Assign active theme (current: Coherence)
4. If no → Log as exception; escalate for theme evolution review

---

### Step 2: Create Artifact from Template

**For Outcomes:**
Use template: `kb/themes/[theme]/outcome-template.md` (if multi-theme exists)  
Or: Follow BVSSH nine-step directly in outcome file with theme in Step 2 name

**For Other Artifacts:**
Copy template: `kb/themes/[theme]/artifact-template.md`

**Template Content (All Artifacts):**
```markdown
# [Theme] - [Artifact Title]

**Year:** YYYY  
**Theme:** [Theme Name]  
**Type:** [Outcome|Playbook|Case Study|Reference Model|Policy Brief|Facilitation Kit|Decision Aid|Infographic]  
**Status:** Draft

---

## Summary
[One paragraph: What does this artifact explore? Why does it matter?]

---

## Theme Alignment
[How does this artifact advance Coherence (or other theme)?]
- **Core Intent:** [Map to theme definition]
- **BVSSH Dimensions:** [Which dimensions does it advance?]

---

## Content
[Main content; structure varies by artifact type]

---

## Related Artifacts
[Links to other artifacts in this theme or related themes]

---

## Reflection (Post-Publish)
[After publishing, capture surprises, learnings, theme evolution signals]
```

---

### Step 3: Develop Content Staying Focused on Theme

**Guardrails:**
- **Stay in scope:** Does every section/concept advance the theme intent?
- **Avoid drift:** If you're adding content that feels off-theme, pause and decide: is the artifact multi-theme (log exception) or should this content move elsewhere?
- **Coherence check:** How does this artifact connect to other theme artifacts? Does it assume knowledge from another artifact, or is it self-contained?

**During Development:**
- Reference [Theme Selection Guidance](theme-selection.instructions.md) to ensure alignment
- If theme definition feels unclear, note for evolution review (don't force-fit)

---

### Step 4: Pre-Publish Validation Checklist

**Before committing artifact, verify:**

#### Theme & Title
- [ ] Filename includes `[Theme] - [Title]`?
- [ ] H1 header includes `[Theme] - [Title]`?
- [ ] Theme is correct for this artifact? (Use decision tree if uncertain)
- [ ] Title is clear and outcome-focused (not activity-focused)?

#### Content Quality
- [ ] Artifact is focused (not trying to do too much)?
- [ ] Summary clearly states intent and why it matters?
- [ ] Theme Alignment section maps to theme definition?
- [ ] BVSSH dimensions are concrete (not vague)?
- [ ] Related artifacts are linked (or none if truly standalone)?

#### Format
- [ ] Uses template structure (Summary, Theme Alignment, Content, Related, Reflection)?
- [ ] No placeholder sections (delete if not applicable)?
- [ ] Clear, ASCII-friendly formatting?

#### Exception Handling
- [ ] If artifact doesn't fit a theme, is it logged in `kb/outcome-mapping/sessions/theme-exceptions-2026-01.md`?
- [ ] Rationale captured (why it doesn't fit, proposed theme if applicable)?

**If any checkbox is "No":**
- Fix before publishing
- Or escalate if theme definition feels unclear (log exception, propose evolution)

---

### Step 5: Publishing & Backlink Automation

**Publishing:**
1. Confirm validation checklist passes
2. Commit artifact to KB
3. Automation detects `[Theme] -` prefix in filename
4. Automation adds backlink to theme trail within 24 hours

**Manual Verification (First Week):**
- Check theme trail after publishing
- Confirm backlink is correct (title, link, summary)
- Log any backlink errors for automation refinement

**Backlink Format (in theme trail):**
```markdown
- [Artifact Title](../../../path/to/artifact.md) — One-line summary
```

---

### Step 6: Evolution & Review

**Monthly (Optional):**
- Scan exceptions log for patterns
- Are theme definitions holding up?
- Do exceptions suggest clarifications?

**Quarterly (Formal):**
- Full exceptions analysis
- Decide: Keep theme scope as-is, tighten, or expand?
- Propose new themes if 3+ exceptions cluster
- Update theme definitions and this guidance

**Annual (Strategy):**
- Full portfolio review
- Assess if theming strategy is working (reuse events ↑, orientation ↓?)
- Plan theme evolution for next year

---

## Artifact Type Guidance

### Outcomes
- **Theming:** Automatically via BVSSH Outcome Facilitation Prompt (Step 0)
- **Format:** Nine-step BVSSH structure with `[Theme] - [Name]` in Step 2
- **Example:** `[Coherence] - Theme-Labeled Titles by Default`
- **Template:** BVSSH nine-step, theme pre-filled

### Playbooks
- **Intent:** Enable default outcome-first behaviors via checklists, canvases, scripts
- **Theme:** Assign based on which outcome/coherence goal it enables
- **Format:** Title + Quick Start + Steps + Checklist + Tips + Reflection
- **Example:** `[Coherence] - Outcome Discovery Workshop Checklist`

### Case Studies
- **Intent:** Real narrative showing SSH principles in context; decisions and learnings
- **Theme:** If illustrating coherence/outcome design in action (fits Coherence); if domain-specific, may be exception
- **Format:** Situation + Challenge + Approach + Signals + Learnings + Reflection
- **Example:** `[Coherence] - SSH Advocacy in a Portfolio: Learning from 2025`

### Reference Models
- **Intent:** Visual model + rationale aligning decisions; compresses explanation
- **Theme:** Maps clearly to outcome design or coherence principle
- **Format:** Visual + Legend + Rationale + Use Cases + Reflection
- **Example:** `[Coherence] - Better Value Sooner Safer Happier Outcome Map`

### Facilitation Kits
- **Intent:** Workshop agenda, exercises, capture templates producing reusable outputs
- **Theme:** Assign based on outcome or coherence goal
- **Format:** Purpose + Agenda + Exercises (with timing) + Templates + Debrief + Reflection
- **Example:** `[Coherence] - How to Run Outcome Discovery Sessions`

### Policy Briefs
- **Intent:** Lightweight governance patterns nudging practice toward BVSSH outcomes
- **Theme:** Coherence if about outcome-first governance; exception if domain-specific policy
- **Format:** Problem + Principle + Recommended Practice + Trade-offs + Reflection
- **Example:** `[Coherence] - Outcome-First as Default: Organizational Practice Guide`

### Decision Aids
- **Intent:** Click-through tutorials or small tools shortening orientation
- **Theme:** Assign based on what decision/concept it aids
- **Format:** Question Flow + Guidance + Examples + Reflection
- **Example:** `[Coherence] - Which BVSSH Dimension to Focus On? A Decision Tool`

### Infographics
- **Intent:** High-clarity visuals exposing hypotheses and compressing orientation
- **Theme:** Assign based on concept visualized
- **Format:** Visual (diagram, flowchart, matrix) + Legend + Rationale + Reflection
- **Example:** `[Coherence] - BVSSH Outcome Framework at a Glance`

### Trail Maps
- **Intent:** Curated indices linking artifacts by theme; become entry points for readers
- **Theme:** Maps are theme-specific; organize and link theme artifacts
- **Format:** Theme Intent + Ordered Artifact List + Patterns + Gaps & Next + Orientation Guide
- **Example:** `[Coherence] Theme Trail — Foundation, Design, and Practice`

---

## Decision Tree: Should This Artifact Fit a Theme?

```
Start
  ↓
Does artifact explore SSH coherence, outcome design, or compounding?
  ├─ Yes → Does it fit an active theme (Coherence)?
  │         ├─ Yes → Assign theme; proceed
  │         ├─ Maybe → Use Theme Selection Guidance decision tree
  │         └─ No → Log exception; escalate for evolution
  └─ No → Artifact may be standalone or indicate new theme need
          ├─ Strategic importance → Assign theme with exception note
          └─ Operational/Admin → Keep standalone or move to separate KB area
```

---

## Exception Logging

**When to Log:**
- Artifact doesn't clearly fit an active theme
- Artifact fits multiple themes (choose primary, note others)
- Artifact suggests a new theme should exist

**How to Log:**
Entry in `kb/outcome-mapping/sessions/theme-exceptions-2026-01.md`:
- **Artifact:** Name/link
- **Rationale:** Why it doesn't fit (or fits multiple)
- **Proposed Theme:** If pattern suggests new theme
- **Date Logged:** 
- **Status:** Open / Resolved / Evolved into new theme

**Review Cadence:**
- Weekly scan for patterns
- Quarterly formal evolution review
- Propose new themes if 3+ exceptions cluster

---

## Integration with Workflows

### BVSSH Outcome Facilitation
- Step 0 assigns theme
- Step 2 formats outcome name as `[Theme] - [Name]`
- All outcomes are auto-themed at creation

### Artifact Creation (General)
- Copy template from `kb/themes/[theme]/artifact-template.md`
- Fill in theme at H1
- Proceed with content development

### Pre-Publish Checklist
- Use validation checklist above
- Confirm theme is correct
- Log exception if needed

### Publishing & Backlinks
- Automation detects theme prefix
- Adds backlink to theme trail within 24 hours
- Manual verification first week; then automate

---

## Quick Reference

| Step | When | Who | Action | Output |
|------|------|-----|--------|--------|
| 1 | Creation | Creator | Use decision tree; confirm theme | Theme assigned |
| 2 | During dev | Creator | Use template; stay focused | Content draft |
| 3 | Dev finish | Creator | Run validation checklist | Ready to publish |
| 4 | Publish | Creator + Automation | Publish artifact; backlink auto-adds | Artifact in KB + linked |
| 5 | Quarterly | Portfolio/Program | Review exceptions; evolve themes | Themes refined |

---

## Files to Reference

- **Decision Tree:** [Theme Selection Guidance](theme-selection.instructions.md)
- **Template:** `kb/themes/coherence/artifact-template.md`
- **Exception Log:** `kb/outcome-mapping/sessions/theme-exceptions-2026-01.md`
- **Outcome Facilitation:** [BVSSH Outcome Facilitation Prompt](../../prompts/bvssh-outcome-facilitation.prompt.md)
- **GROUND_RULES:** [GROUND_RULES.md](../../../GROUND_RULES.md) — Stay concise; no comments; self-documenting code

---

## Troubleshooting

**Q: Theme feels ambiguous for my artifact. What do I do?**  
A: Log as exception with rationale. During quarterly review, clarifications are proposed. For now, assign best-fit and note.

**Q: Artifact could fit multiple themes.**  
A: Choose primary theme (what's the dominant intent?). Link related artifacts in "Related" section; don't force multi-theme.

**Q: I'm creating an artifact that doesn't fit any active theme.**  
A: Log as exception. If pattern emerges (3+ exceptions), propose new theme. For now, keep standalone or assign with explanation.

**Q: Backlink didn't appear after publishing.**  
A: Check: (1) Filename has `[Theme] -` prefix? (2) Automation ran? Log error in automation log for weekly review.

**Q: Should every artifact be themed?**  
A: Yes. If it doesn't fit a theme, log exception; don't leave it unthemed.

---

## Continuous Improvement

This instruction set evolves as themes and artifact types grow. Propose updates/clarifications via:
- Exception log (quarterly review)
- KB session notes (capture learning)
- Copilot instructions updates (after validation)

---
