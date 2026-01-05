---
name: Values & Code of Conduct for SSHA Advocacy Materials
description: Mandatory guardrails for all SSHA/BVSSH advocacy artifacts, outcomes, documentation, and communications. Ensures all materials reflect SSH principles and maintain movement integrity.
applyTo: 'bvssh/**/*.md, docs/**/*.md, output/**/*.md, kb/**/*.md'
---

# Values & Code of Conduct for SSHA Advocacy Materials

**Phase:** 🎯 plan, 🔨 implement, 🔍 review, 🧪 verify (all phases)  
**Scope:** All BVSSH outcomes, advocacy artifacts, documentation, commit messages, and communications created in SSHA workspace.  
**Authority:** Grounded in [GROUND_RULES.md](../../../GROUND_RULES.md); applies to all contributors (human + AI agents).

---

## Role Definition

This instruction defines non-negotiable values and conduct guardrails for all advocacy materials in the SSHA workspace. All BVSSH outcomes, artifacts, documentation, and communications must adhere to these values or risk violating SSH movement integrity.

**Who:** All contributors (advocates, agents, facilitators, reviewers) creating or editing BVSSH/advocacy materials.  
**When:** During creation, editing, review, and publication of any artifact under `bvssh/`, `docs/`, `kb/`, or `output/`.  
**Why:** Advocacy work carries movement credibility; violation of values erodes trust and undermines SSH principles.

---

## Core Values Operationalized

### Empathy
**Operationalization:** All advocacy materials must approach change with compassion and avoid divisive framing.

- ✅ **Good:** "Organizations at different maturity levels have distinct starting points; we meet them where they are."
- ❌ **Bad:** "Companies that don't adopt SSH practices are misguided and resist change."
- ✅ **Good:** Outcome language: "Enable teams to see value in SSH principles without judgment of current state."
- ❌ **Bad:** Framing as prescriptive or dismissive of alternative approaches.

### Credibility
**Operationalization:** All claims, evidence, and assertions must be honest, verifiable, and grounded in outcome data.

- ✅ **Good:** "Signal shows: 35% of trials led to sustained adoption; still testing what drives the remaining 65%."
- ❌ **Bad:** "SSH adoption rates are universally high across all implementations." (unverified, overgeneralized)
- ✅ **Good:** Cite sources, acknowledge uncertainty, reflect on learnings.
- ❌ **Bad:** Vague claims without evidence or with hidden assumptions.

### Uniqueness
**Operationalization:** Materials must acknowledge that SSH advocacy is not one-size-fits-all; celebrate diverse approaches and contexts.

- ✅ **Good:** "Organizations contextualize Better/Value/Sooner/Safer/Happier differently based on constraints; both valid."
- ❌ **Bad:** "The only way to do outcome design is X."
- ✅ **Good:** Surface trade-offs; offer options.
- ❌ **Bad:** Present single solution as universal.

### Community
**Operationalization:** All materials must actively contribute to shared learning and reusability. Avoid gatekeeping; enable others.

- ✅ **Good:** Artifacts tagged with theme; backlinks visible; patterns explicit; others can build on work.
- ❌ **Bad:** Artifact exists but isn't connected to theme trail; others can't reuse or learn from it.
- ✅ **Good:** Reflection captures learnings; documented for future advocates.
- ❌ **Bad:** Outcomes/artifacts with zero reflection or context for others.

---

## Code of Conduct for Contributors

### Respect
**Rule:** Treat all individuals, organizations, and viewpoints with respect. Avoid divisive language even on challenging topics.

- ✅ **Do:** Use "obstacle," "challenge," "concern" instead of "resistance."
- ❌ **Never:** "People who oppose this are..." (personalizing/divisive)
- ✅ **Do:** "This approach works better for context X; context Y may prefer alternative Z."
- ❌ **Never:** "Only foolish organizations would reject SSH."

### Professionalism & Integrity
**Rule:** Commit to honesty, transparency, and accountability in all work.

- ✅ **Do:** State uncertainties: "We believe X, but haven't validated with this audience yet."
- ✅ **Do:** Accept feedback and iterate; update artifacts when learnings change perspective.
- ❌ **Never:** Misrepresent signals or hide contrary evidence.
- ❌ **Never:** Publish without reviewing for accuracy.

### Collaboration
**Rule:** All advocacy work must enable others to build, learn, and contribute.

- ✅ **Do:** Theme-tag artifacts (enables reuse); link related work; document for future advocates.
- ✅ **Do:** Share interim learnings; unblock others with notes in KB.
- ❌ **Never:** Hoard insights; create silos.
- ❌ **Never:** Publish outcomes without accessible reflection/rationale.

### Inclusivity
**Rule:** Ensure all materials are accessible, welcoming, and avoid biases.

- ✅ **Do:** Use inclusive language; acknowledge diverse perspectives; welcome all maturity levels.
- ✅ **Do:** Write clearly; assume no prior knowledge unless context specifies otherwise.
- ❌ **Never:** Use jargon without explanation; exclude voices or viewpoints.
- ❌ **Never:** Frame any group/approach as inherently superior.

### Confidentiality
**Rule:** Respect confidentiality of unreleased outcomes, sensitive organizational contexts, and private information.

- ✅ **Do:** Anonymize case studies; avoid disclosing unreleased BVSSH outcomes in public materials.
- ✅ **Do:** Check with outcome owner before referencing their work externally.
- ❌ **Never:** Share unreleased outcomes, signals, or sensitive org data without explicit permission.
- ❌ **Never:** Identify individuals/orgs in reflections without consent.

### Compliance
**Rule:** All advocacy materials must comply with SSHA workspace conventions.

- ✅ **Do:** Comply with all applicable laws, regulations, and policies governing our advocacy activities.
- ✅ **Do:** Reference BVSSH outcomes in commits; follow conventional commit format; validate quality before publish.
- ✅ **Do:** Use theme-labeled titles; maintain artifact metadata; keep exception logs current.
- ❌ **Never:** Commit without outcome reference or skip conventional commit format.
- ❌ **Never:** Publish advocacy material that violates GROUND_RULES.md or workspace standards.

---

## Output Expectations: What Adherence Looks Like

### ✅ GOOD — Example BVSSH Outcome
```markdown
# [Coherence] - Outcome-First as Default Through Practice
**Context:** Teams default to solutions before clarifying outcomes.
**Hypothesis:** Lightweight outcome scaffolding lowers friction; teams adopt outcome-first naturally.
**Signals:** (Sooner) Decision time ↓; (Better) Solution fit ↑; (Safer) Misalignment risk ↓
**Reflection:** Tried 3 scaffolds; users preferred lightweight version. Why? Low friction removes "one more thing." Next: Test with 5 diverse orgs.
```
✅ Outcome is honest (reflects what actually happened); credible (signals are measurable); unique (acknowledges org variation in adoption); collaborative (reflection enables others to build).

### ❌ BAD — Example Outcome Violating Values
```markdown
# Outcome-First is the Only Way Forward
**Why:** All organizations need to adopt outcome-first thinking or they will fail.
**Evidence:** We believe this is true.
**Next:** Rollout universally to all customer segments.
```
❌ Divisive language ("only way"); unverified claims; lacks empathy for orgs at different maturity; no reflection. Erodes credibility.

---

## Prohibited Actions (No Exceptions)

| Action | Why | Escalation |
|--------|-----|------------|
| Publish advocacy material with unverified claims | Violates credibility | Stop; verify before resubmit |
| Use divisive language (e.g., "resistance," "enforce," "foolish," "wrong") | Violates empathy/respect | Rewrite; check GROUND_RULES.md forbidden words |
| Commit outcome/artifact without outcome reference or valid conventional commit | Violates compliance/integrity | Reject commit; require proper format |
| Share unreleased outcomes externally without explicit permission | Violates confidentiality | Stop; request approval; document in KB |
| Publish outcome/artifact with zero reflection or rationale | Violates community/learning | Reject; require reflection section |
| Create artifacts that don't fit active themes without logging exception | Violates coherence standards | Redirect to exception log in KB |

---

## Verification & Escalation

### Pre-Publish Verification
**Before committing any advocacy material, verify:**
- [ ] Language is empathetic and avoids divisive framing? (check GROUND_RULES forbidden words)
- [ ] Claims are credible (verifiable or marked as hypothesis)?
- [ ] Material acknowledges diversity of context/approach (not one-size-fits-all)?
- [ ] Material enables others (theme-tagged, linked, documented, reflection present)?
- [ ] Sensitive/unreleased content is protected (anonymized, approved, confidential)?
- [ ] Commit follows conventional commit + outcome reference format?

**If any "No":** Revise before submitting.

### Escalation Path (Values Violation)
1. **Minor (formatting/language):** Revise and resubmit.
2. **Moderate (unverified claims, missing reflection):** Request corrections; provide feedback on what's missing.
3. **Serious (confidentiality breach, divisive framing, integrity issue):** Flag for review; may result in removal/revision; document in KB.

---

## Links & References
- [GROUND_RULES.md](../../../GROUND_RULES.md) — Forbidden words, honesty guardrails
- [Theme Selection Guidance](../copilot/theme-selection.instructions.md) — How to tag artifacts correctly
- [Universal Artifact Theming](../copilot/universal-artifact-theming.instructions.md) — Full artifact lifecycle

---