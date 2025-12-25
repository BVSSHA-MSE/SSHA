---
name: bvssh-outcome-review-quality
description: Review and analyze the quality of BVSSH outcomes
agent: bvssh-outcome-facilitator
---
# BVSSH Outcome Review & Quality Analysis Prompt

## Purpose
Systematically review BVSSH outcomes (Portfolio, Program, Team) for quality, alignment with BVSSH principles, and coherence across levels.

## When to Use
- Before committing a new outcome
- During periodic outcome reviews (quarterly, milestone-based)
- When refining or evolving existing outcomes
- When assessing Portfolio > Program > Team alignment

---

## Quality Analysis Framework

### 1. Outcome Integrity Check

**For each outcome, verify:**

#### Context & Tension
- [ ] Describes observable current state, pain, risk, or opportunity
- [ ] Explains why change is needed now
- [ ] Avoids people-blaming language; frames as system issue
- [ ] Specific enough to validate later

#### BVSSH Dimensions
- [ ] Clearly identifies 1–2 primary dimensions
- [ ] Justifies why those dimensions matter most
- [ ] Avoids claiming all four equally (forces choice)

#### Hypothesis
- [ ] States clear if-then belief about what drives change
- [ ] Connects action/investment to expected outcome
- [ ] Testable and falsifiable
- [ ] Avoids circular logic (hypothesis isn't just the outcome restated)

#### Behavioral Changes
- [ ] Observable and repeatable (not internal mindsets)
- [ ] Specific enough to recognize when you see it
- [ ] Describes what people will start/stop/continue doing
- [ ] Avoids vague aspirations ("better collaboration")

#### Signals & Measures
- [ ] **Leading:** Early indicators you can influence (not activities)
- [ ] **Lagging:** Results you'll see after behaviors shift
- [ ] Lightweight (1–3 of each, no more)
- [ ] Trends over targets (directional, not rigid goals)
- [ ] Avoids vanity metrics or gaming risk

#### Constraints & Trade-offs
- [ ] Names what's fixed, limited, or off-limits
- [ ] Explicit about what you won't do to make room
- [ ] Realistic about time/capacity/scope
- [ ] Acknowledges known risks or tensions

#### Review Cadence
- [ ] Defines when and how progress is checked
- [ ] Rhythm matches outcome timescale
- [ ] Lightweight enough to sustain

---

### 2. BVSSH Principle Alignment

**Check against core BVSSH values:**

#### Outcomes Over Outputs
- [ ] Focuses on change/impact, not deliverables
- [ ] Leading indicators measure capability, not tasks completed
- [ ] Avoids "done" language; uses "trending" or "emerging"

#### Better Value
- [ ] Tied to meaningful business/mission outcomes
- [ ] Clear who benefits and why it matters
- [ ] Not just efficiency; delivers actual value

#### Sooner
- [ ] Accelerates feedback or learning
- [ ] Reduces time-to-impact
- [ ] Small, iterative steps preferred over big-bang

#### Safer
- [ ] Reduces risk, error, or rework
- [ ] Improves quality or resilience
- [ ] Makes failure cheaper/faster to detect

#### Happier
- [ ] Improves clarity, autonomy, or engagement
- [ ] Reduces toil or frustration
- [ ] Respects people and their context

---

### 3. Cross-Level Coherence Check

**When reviewing Portfolio > Program > Team relationships:**

#### Nesting Validation
- [ ] Program outcomes enable Portfolio outcomes (not alternatives)
- [ ] Team outcomes deliver Program outcomes
- [ ] Each level articulates its role in the value chain

#### Hypothesis Alignment
- [ ] Child hypotheses support parent hypotheses
- [ ] No contradictions or competing theories of change
- [ ] Clear line of sight from Team to Portfolio

#### Signal Cascading
- [ ] Child leading indicators influence parent lagging indicators
- [ ] Measurements connect across levels
- [ ] No measurement silos (isolated metrics that don't connect)

#### Review Cadence Sync
- [ ] Child reviews feed parent reviews
- [ ] Timing allows learning to propagate upward
- [ ] No review orphans (outcomes without a review home)

---

### 4. Anti-Pattern Detection

**Flag these common issues:**

#### Anemic Outcomes
- Outcome is just a restatement of activity
- No behavioral change articulated
- Hypothesis is circular ("If we do X, then X will happen")

#### Activity-as-Outcome
- Leading indicators are tasks, not early outcome signals
- Measures completion, not progress toward change

#### People-Problem Framing
- Blames individuals or "resistance"
- Implies people are the problem, not the system

#### Vanity Metrics
- Signals that can be gamed or don't reflect real progress
- Targets instead of trends
- Lagging-only (no leading indicators to steer)

#### Fat Outcomes
- Too many dimensions (tries to do everything)
- Too many signals (measurement overload)
- Too many behaviors (unfocused change)

#### Orphan Outcomes
- No clear parent (Program/Team with no Portfolio)
- No review cadence or ownership
- Disconnected from other work

---

## Review Process

### Step 1: Load Context
Read the outcome file(s) to be reviewed.

### Step 2: Apply Quality Framework
Systematically check each section against the framework above.

### Step 3: Assess BVSSH Alignment
Validate alignment with BVSSH principles (outcomes over outputs, Better/Value/Sooner/Safer/Happier).

### Step 4: Check Cross-Level Coherence
If reviewing multiple levels, validate nesting and signal cascading.

### Step 5: Detect Anti-Patterns
Flag any common issues from the anti-pattern list.

### Step 6: Synthesize Findings
Provide:
- **Strengths:** What's working well
- **Gaps:** Missing or weak sections
- **Recommendations:** Specific, actionable improvements
- **Priority:** Focus on highest-impact changes first

### Step 7: Update or Coach
- If user approves, update the outcome file(s)
- If user wants to learn, coach them through the changes
- Save findings to `kb/bvssh-reviews/` for learning

---

## Agent Behavior

### Mode: Validator & Coach
- Challenge weak framing with clarifying questions
- Push back on activity-as-outcome
- Surface contradictions or circular logic
- Explain *why* something doesn't align, not just *that* it doesn't

### Guardrails
- Respect user expertise; recommend, don't prescribe
- Prioritize high-impact issues over nitpicks
- Anchor feedback in BVSSH principles, not personal preference
- Keep review lightweight; avoid paralysis by analysis

### Output Style
- Concise, specific, actionable
- Use examples to clarify recommendations
- Celebrate strengths before highlighting gaps
- Propose concrete edits when possible

---

## Example Review Output

**Outcome:** [Program] Easier to Drive Change with BVSSH Outcomes

**Strengths:**
✅ Clear hypothesis connecting ease-of-use to adoption  
✅ Behavioral changes are observable and specific  
✅ Context articulates system issue (habits, human error) not people-blaming  

**Gaps:**
⚠️ Leading indicators are activities ("establish automation") not outcome signals  
⚠️ Missing connection to parent Portfolio outcome  

**Recommendations:**
1. **Reframe leading indicators** to measure the capability outcome:
   - Current: "Establish BVSSH outcome automation"
   - Suggested: "Median time to form BVSSH outcome (minutes)"
2. **Add explicit parent link** in Context or Hypothesis:
   - "Enables Portfolio outcome: SSH Advocacy Embedded Portfolio-Wide"

**Priority:** High (activity-as-outcome is a BVSSH anti-pattern)

---

## Usage Examples:

```
/bvssh-outcome-review-quality review the [Portfolio/Program/Team] outcome at [path]
```

```
/bvssh-outcome-review-quality check quality and alignment across 2025 outcomes
```

```
/bvssh-outcome-review-quality analyze coherence between Portfolio, Program, and Team outcomes for 2025
```

## References

- kb/outcome-mapping/rubrics/coherence-outcome-quality-rubric.md - outcome quality rubric