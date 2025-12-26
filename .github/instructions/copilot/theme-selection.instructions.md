---
name: Theme Selection Guidance
description: Guidance for selecting, confirming, and validating theme assignments for BVSSH outcomes and artifacts.
applyTo: 'bvssh/**/*.md, kb/**/*.md'
---

# Theme Selection Guidance

Purpose: Help practitioners evaluate whether an outcome or artifact belongs to an active theme, and provide clarity on what defines each theme.

---

## Quick Decision Tree

**Ask yourself:**
1. Does this outcome/artifact primarily explore foundational SSH principles, outcome design thinking, or coherence across SSH advocacy work?
   - **Yes** → Coherence theme fits
   - **No** → May not belong to current active themes; consider exceptions process or theme evolution

2. Is there a clear, observable connection to one of the theme's core concepts?
   - **Yes** → Assign theme
   - **No** → Log as exception; may signal theme expansion need

3. Are there multiple valid themes?
   - **Yes** → Choose the primary/dominant theme; link others in "Related Artifacts"
   - **No** → Single theme is clear

---

## Active Themes (2026)

### Coherence
**Intent:** Foundational SSH principles, outcome design thinking, and coherence mechanisms that enable compounding advocacy.

**Scope & Core Concepts:**
- **What belongs:** Artifacts that help readers/practitioners understand or apply:
  - SSH advocacy outcome frame (Better, Value, Sooner, Safer, Happier)
  - Outcome design workflows and decision-making
  - Systems thinking and coherence patterns in advocacy
  - Reuse and compounding across advocacy work
  - Trail curation and synthesis (theme maps, orientation guides)
  - Portfolio governance and outcome-first practices

- **What doesn't belong:** 
  - Specific case studies (unless illustrating outcome design principle)
  - Operational checklists without outcome context
  - Tool-specific guidance (unless about outcome-focused tooling)
  - Advocacy content on specific topics (healthcare, finance, etc.) unless framed around SSH coherence

**Examples of Coherence Artifacts:**
- ✅ "Better Value Sooner Safer Happier: Outcome Design for SSH Advocacy" (reference model)
- ✅ "[Coherence] - Quarterly Theme Synthesis Published" (outcome)
- ✅ "[Coherence] - Outcome-First Default Through Automation" (process outcome)
- ✅ "Compounding Advocacy via Themes" (portfolio outcome)
- ✅ Playbook: "How to Run Outcome Discovery Sessions" (outcome design workflow)
- ✅ Case study: "SSH Advocacy in a Portfolio: Learning from 2025" (illustrates coherence + compounding)

**Non-Examples:**
- ❌ "Healthcare Innovation Roadmap 2026" (specific domain, no SSH framing)
- ❌ "Slack Channel Best Practices" (operational, no outcome intent)
- ❌ "How to Use Asciidoctor for Documentation" (tool-specific without outcome context)

### Reach
**Intent:** External engagement, audience development, and distribution mechanisms that get SSH ideas to practitioners seeking sustainable work alternatives.

**Scope & Core Concepts:**
- **What belongs:** Artifacts that help readers/practitioners understand or apply:
  - SSH advocacy production and distribution to external audiences
  - Engagement measurement (comments, shares, citations, questions)
  - Discovery mechanisms (pain naming, vocabulary development, channel selection)
  - Resonance testing (which BVSSH dimensions drive engagement)
  - Audience growth and viral spread patterns
  - External practitioner reach strategies

- **What doesn't belong:** 
  - Internal advocacy structure (belongs to Coherence)
  - Operational content production without engagement context
  - Generic marketing guidance without SSH/BVSSH framing
  - Platform-specific tactics without outcome measurement

**Examples of Reach Artifacts:**
- ✅ "[Reach] - Leaders Engage with SSH Advocacy" (Portfolio outcome; engagement measurement)
- ✅ "[Reach] - SSH Advocacy Reaches Burnt-Out Practitioners" (Program outcome; distribution coordination)
- ✅ "[Reach] - Happier-Focused Advocacy Resonates with Leaders" (Team outcome; topic cluster production)
- ✅ Playbook: "How to Test Pain Hooks with Small Audiences" (resonance validation workflow)
- ✅ Case study: "What Made Leaders Engage: Learning from Q1 2026" (engagement pattern analysis)

**Non-Examples:**
- ❌ "LinkedIn Algorithm Optimization Guide" (platform-specific, no SSH/outcome context)
- ❌ "Internal Team Communication Playbook" (internal, not external reach)
- ❌ "Content Production Velocity Dashboard" (operational metric without engagement outcome)

---

## How to Validate Theme Assignment

### For Outcomes
1. **Read the hypothesis:** Does it test a theory about outcome design, coherence, or compounding?
   - **Yes** → Coherence likely fits
   - **No** → May belong to future theme or be standalone

2. **Check BVSSH dimensions:** Are Better, Sooner, or Safer anchored to coherence/design intent?
   - **Yes** → Coherence fits
   - **No** → Consider theme evolution

3. **Check signal clarity:** Are the leading/lagging signals about outcome capability or coherence?
   - **Example:** "Trail freshness" and "reuse events" are coherence signals (trail coherence enables reuse)
   - **Example:** "Deployment frequency" is not (operational, not coherence-focused)

### For Other Artifacts (Playbooks, Case Studies, etc.)
1. **Title test:** Would you naturally describe this as "a Coherence artifact"?
   - If yes → Likely fits
   - If no → Reconsider or log exception

2. **Reader test:** Who will benefit most from this artifact, and what will they do with it?
   - **Coherence fit:** "Help advocacy practitioners understand outcome design and reuse patterns"
   - **Not fit:** "Help engineers deploy infrastructure" or "Guide on domain-specific strategy"

3. **Connection test:** What SSH principle or outcome design idea does this illustrate?
   - **Coherence fit:** Maps clearly to SSH framing, outcome design, or compounding
   - **Not fit:** Disconnected from SSH or outcome thinking

---

## When to Override or Log Exceptions

### Override (Rare)
- **When:** An artifact doesn't fit Coherence but is strategically important to the portfolio
- **How:** Explicitly log rationale in `kb/outcome-mapping/sessions/theme-exceptions-2026-01.md`
- **Example:** A domain-specific case study that illustrates SSH principles in context

### Log as Exception (Preferred)
- **When:** Artifact doesn't clearly fit active themes
- **How:** Create entry in exceptions log with:
  - Artifact name
  - Why it doesn't fit current themes
  - Proposed new theme (if pattern emerges from multiple exceptions)
  - Date logged
- **Review:** Weekly theme evolution check

### Propose New Theme
- **When:** 3+ exceptions point to a common theme gap
- **How:** Document pattern in KB; propose new theme name, scope, and examples
- **Example:** If multiple case studies emerge around "Policy & Governance Outcomes", propose that as a future theme

---

## Examples of Theme Clarity

### Coherence: Clear Fits
- "Outcome-First Becomes Default Through Automation" — Directly about outcome design practice/automation
- "Quarterly Theme Synthesis Published" — Directly about trail coherence and reuse
- "Theme-Labeled Titles by Default" — Directly about coherence mechanism (theming enables reuse)
- "How to Map BVSSH Outcomes: A Facilitation Workflow" — Teaches outcome design thinking

### Coherence: Ambiguous (Investigate)
- "Better Value Sooner Safer Happier Glossary" — Define terms? Outcome design context? If purely reference, may be borderline
  - **Resolution:** Frame as "Glossary for Outcome-First Thinking" or move to generic reference materials
- "Case Study: Healthcare System SSH Implementation" — Is it illustrating outcome design or domain-specific content?
  - **Resolution:** If showing how to apply SSH coherence in healthcare, Coherence fits; if domain-specific, log exception

### Coherence: Clear Non-Fits
- "Git Workflow for Documentation Teams" — Operational; no SSH intent
- "Annual Budget Planning Process" — Administrative; no outcome context
- "Marketing Campaign for SSH 2026" — Domain-specific advocacy; no design principle illustrated

### Reach: Clear Fits
- "Leaders Engage with SSH Advocacy" — Directly about external engagement and resonance measurement
- "SSH Advocacy Reaches Burnt-Out Practitioners" — Directly about distribution and discovery
- "Testing Pain Hooks with Small Audiences" — Resonance validation before full production
- "What Made Leaders Engage: Q1 2026 Analysis" — Learning from engagement patterns

### Reach: Ambiguous (Investigate)
- "Content Production Checklist for Advocates" — Is it about production (Team/Reach) or quality (Coherence)?
  - **Resolution:** If focused on engagement-driven production, Reach fits; if about outcome design quality, Coherence
- "LinkedIn Best Practices for SSH Advocates" — Platform-specific tactics or engagement strategy?
  - **Resolution:** If tied to engagement measurement and SSH outcomes, Reach fits; if generic platform tips, not themed

### Reach: Clear Non-Fits
- "SEO Optimization for Blog Posts" — Technical tactic without SSH/engagement context
- "Social Media Scheduling Automation" — Operational tool without outcome measurement
- "Internal Advocacy Coordination Meeting Notes" — Internal process, not external reach

---

## Communicating Theme Assignment

### In Artifacts
- **Outcome files:** `[Coherence] - [Outcome Name]` in title and Section 2
- **Other artifacts:** `[Coherence] - [Title]` in filename and H1 header
- **Rationale:** Include 1–2 sentence explanation of theme fit in artifact context/intent

### In Conversations
- **When proposing:** "This outcome fits the Coherence theme because it addresses outcome design and trail coherence."
- **When uncertain:** "This feels like it might belong to Coherence; let me validate: [Quick Decision Tree]. Does that match your intent?"

### In Exceptions Log
- **When overriding:** "Logged exception: [artifact] doesn't fit Coherence but is strategically important because [rationale]."
- **When proposing evolution:** "Three exceptions point to a 'Governance & Policy' theme; recommend exploring in Q1 2026 review."

---

## Theme Evolution & Review

### Monthly Review (Optional)
- Scan exceptions log for patterns
- Are theme definitions holding up?
- Do exceptions suggest clarifications or new themes?

### Quarterly Review (With Program outcome review)
- Full exceptions analysis
- Decide: Keep Coherence scope as-is, tighten definitions, or expand?
- Approve/reject proposed new themes
- Update this guidance as needed

---

## Quick Reference: Theme Checklist

**Before assigning theme, verify:**
- [ ] Outcome/artifact is outcome-focused (not activity-focused)?
- [ ] Clear connection to theme intent? (Coherence: outcome design/compounding; Reach: external engagement/distribution)
- [ ] Would beneficiary naturally describe this as fitting the theme?
- [ ] BVSSH signals/behaviors map to theme intent?
- [ ] Title/description is clear without apology or asterisks?

**If any "No":**
- Log as exception + rationale
- Escalate to program/portfolio review
- Or propose new theme if pattern emerges

---

## Links & References

- [Coherence Theme Trail](../../../kb/themes/coherence/index.md) — Curated artifacts for Coherence theme
- [Reach Theme Trail](../../../kb/themes/reach/index.md) — Curated artifacts for Reach theme
- [Theme Exceptions Log](../../../kb/outcome-mapping/sessions/theme-exceptions-2026-01.md) — Running log of exceptions
- [BVSSH Outcome Facilitation Prompt](../../../.github/prompts/bvssh-outcome-facilitation.prompt.md) — Step 0 theme assignment
- [Coherence Artifact Template](../../../kb/themes/coherence/artifact-template.md) — Pre-filled template for Coherence artifacts
- [Reach Artifact Template](../../../kb/themes/reach/artifact-template.md) — Pre-filled template for Reach artifacts

---
