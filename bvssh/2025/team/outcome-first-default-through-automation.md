# Outcome-First Becomes Default Through Automation

## Context & Tension

**Current situation:** BVSSH outcome-driven change is hard when new; we rely on manual effort and memory to stay outcome-focused, making us error-prone and vulnerable to old habits.

**Observable pain, friction, risk, or missed opportunity:**
- We advocate for BVSSH outcomes but frequently jump to activities without articulating outcomes first, compromising our integrity.
- Manual outcome formation and review takes significant time; contributors forget to link commits to active outcomes.
- "We say outcomes, do activities" contradiction undermines credibility with external audiences and SSHA community.

**Why this matters now:**
- Ending 2025 and starting 2026 with outcome-first as the default enables Portfolio/Program outcomes and unlocks 2026 content commitments (6+ substantial pieces).
- Making this the default now saves us from ongoing resistance and builds muscle memory for the long term.

**Enables:**
- [Portfolio: SSH Advocacy Embedded Portfolio-Wide](../portfolio/ssh-advocacy-embedded-portfolio-wide.md) by reducing friction in practicing BVSSH across all work.
- [Program: Easier to Drive Change with BVSSH Outcomes](../program/easier-to-drive-change-with-bvssh-outcomes.md) by building automation that removes friction and guides outcome-first behavior.

---

## Desired Outcome

### Better
- Every commit scaffolded with outcome context; automation discovers active outcomes and shapes conventional commit messages with outcome-oriented language.
- Outcome formation guided by integrated quality review; initial reviews surface ≤3 minor improvements 90% of the time.
- Quality rubric (1–5) reliably distinguishes strong outcomes from weak; averages ≥4.0.

### Value
- 90% of commits reference an active outcome; work demonstrably aligned with outcomes.
- Outcome quality scores validate genuine reasoning, not template compliance.

### Sooner
- Median outcome formation time ≤5 minutes via automation (enables Program adoption speed).
- Two-pass review cadence (surfaces improvements, then applies) accelerates learning cycles.

### Safer
- Quality guardrails catch shallow outcomes before they propagate.

### Happier
- Zero manual toil in outcome formation; contributors focus on reasoning, not formatting.
- Automation handles discovery, scaffolding, and review—eliminating cognitive overhead.

**Primary dimensions:** Better (quality guardrails), Sooner (formation speed → enables Program)
**Supporting:** Safer (automated quality adherence), Value (alignment validation), Happier (toil elimination)

---

## Outcome Hypothesis

**We believe that**  
Building automation to discover active outcomes, scaffold conventional commits, and integrate quality review into outcome facilitation workflows

**Will result in**  
Technical capability that enables Program adoption: 90% of commits reference active outcomes, median formation time ≤5 minutes, quality rubric scores ≥4.0—removing friction and enabling portfolio-wide practice.

**Because**  
Automation eliminates cognitive load at the point of contribution (commit, formation, review), prompts outcome-first thinking without depending solely on memory or discipline, and provides immediate quality feedback—making the Program's adoption goals achievable and enabling Portfolio governance without resistance.

### Risks & Assumptions

- **Assumes:** Friction is the primary barrier. If motivation gap is deeper than friction, automation alone won't help.
- **Risk:** Over-automation could reduce critical thinking—contributors may "fill templates" without genuine outcome reasoning.
- **Risk:** GitHub/Copilot dependency—if we can't pay or account is dropped, we lose all automation capability.
- **Risk:** We may not understand BVSSH as well as we think; rubric scoring may not reliably measure quality.
- **Risk:** Workflow fragility—if automation breaks, recovery may be difficult or time-consuming.
- **Mitigation:**
  - Quality review automation catches shallow outcomes; human validation required.
  - Document fallback paths (local scripts, manual templates) before automation is critical.
  - Timebox automation work (e.g., 2 hours/week) to avoid burnout from competing life priorities.
  - Test rubric on 3 existing outcomes before scaling.

---

## Expected Behavioral Change

### Before
Jumping directly to tasks and activities without articulating outcomes; commits lack outcome context.

### Stop
- Proposing work without outcome context
- Accepting vague "improve X" statements as outcomes
- Manual, time-consuming outcome formation and review cycles
- Activity-first proposals that get rejected or require realignment later

### Start
- Open work proposals with outcome context over listing activities (prompted by automation)
- Generating conventional commit messages that reference active outcomes (identified automatically)
- Reviews with "does this advance the stated outcome?" as a standard question
- New outcomes with leading/lagging signals from initial draft (facilitated by integrated review)

### After
- Outcomes articulated before any work proposal
- Conventional commits naturally reference active outcomes using BVSSH language (e.g., "Reduces median setup time (Sooner)" or "Closes hypothesis validation for Outcome XYZ")
- Reviews open with outcome validation ("Does this conventional commit advance [Outcome Name]?").

---

## Signals & Measures

### Leading
- Median outcome formation time (trend: ≤5 minutes by Q1 2026)
- % of sampled commit messages demonstrate outcome reasoning in commit body, not just keyword matching (trend: ≥90%)

### Lagging
- Outcome quality rubric scores (1–5; trend: average ≥4.0)
- Strategy pivots due to misalignment (trend: decrease)

**Alignment:** These leading indicators directly enable Portfolio outcome by accelerating adoption; lagging indicators validate internalization, not just compliance.

---

## Constraints & Guardrails

- **Automation over manual:** Prioritize automation that drives review and quality analysis over manual activity; defer non-essential automation (dashboards, retro summaries).
- **Focus trade-off:** Accept slower expansion of other capabilities to focus on outcome-first automation for ending 2025 well and enabling 2026 commitments.
- **Human validation required:** Automation guides and checks, but humans validate reasoning and genuine outcome alignment to avoid "template filling."
- **Out of scope for 2025:** Building Asciidoctor documentation; comprehensive dashboards or retrospective summaries; CI/CD integration (GitHub Copilot Workflows primary focus).

---

## Review & Learning Cadence

**Frequency:**
- Every commit can reference active outcomes (continuous signal via leading measure)
- Monthly spot checks of commit samples to validate outcome alignment and language quality
- Quarterly review to assess leading/lagging trends and adjust hypothesis

**Participants:** SSH Advocacy Team (owners), AI partner (Copilot workflows), Portfolio/Program reviewers (consumers of outcomes)

**Decision enabled:**
- **Continue:** Leading and lagging signals trending toward targets (or holding steady)
- **Adjust hypothesis:** Signals flat/mixed; rubric, threshold, or automation approach may need refinement
- **Pivot:** Signals trending opposite to expectation (e.g., motivation gap deeper than friction); underlying assumption invalidated; new approach needed

**Cascading reviews:** Team outcome completion triggers Program review (validates "easier to drive change with BVSSH outcomes"); Program review bubbles up to Portfolio review (validates "advocacy embedded portfolio-wide").

---

## Reflection

What did we learn by pursuing this outcome?

- **What surprised us:**
- **What assumptions held or broke:**
- **What we would do differently next time:**

> To be completed after outcome is achieved or retired.
