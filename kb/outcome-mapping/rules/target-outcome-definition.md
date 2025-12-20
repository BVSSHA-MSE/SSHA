# Target Outcome Definition

Second step of Flow Engineering's Outcome Mapping phase. Converts candidate outcomes into one SMART, constraint-aligned target.

## Core: SMART + Constraint Alignment

| SMART Element | Constraint Leverage | Example |
|---------------|---------------------|---------|
| **Specific** | What exact behavior/state changes? | "Deploy to prod 2× per week" not "improve deployment" |
| **Measurable** | What signal confirms progress? | "Lead time < 48hrs" not "faster releases" |
| **Achievable** | Given current constraint, what's credible? | If approval is bottleneck, can we eliminate 1 gate? |
| **Relevant** | Does this unlock the constraint? | Automating non-bottleneck steps = waste |
| **Time-bound** | When do we evaluate? | "By Q1 2026" not "eventually" |

## Beyond SMART: Flow Engineering Additions

### 1. Stretch + Learning
- Target should require **new capability** (not just effort)
- Example: "First time deploying without manual QA sign-off"
- Ask: *"What will we learn that we don't know today?"*

### 2. Trade-offs (Explicit)
- What are we **not** optimizing?
- Example: "Speed over feature completeness" or "Reliability over new features"
- Ask: *"What gets worse if we succeed?"*

### 3. Constraint Validation
- Does success require the constraint to move?
- Example: If approval is constraint, outcome must reduce approval time/frequency
- Ask: *"Can we hit this target without touching the bottleneck?"* (If yes, wrong outcome)

### 4. Behavioral Observable
- What **stops/starts** when outcome is achieved?
- Example: "Teams stop waiting for security review" not "security is faster"
- Ties to BVSSH Step 5 (Expected Behavioral Change)

### 5. Flow Metric Alignment
- Pick 1–2 flow metrics (lead time, deployment freq, WIP, throughput)
- Example: "Reduce lead time from 2 weeks → 3 days"
- Avoid: vanity metrics (story points, velocity)

## Checklist Before Finalizing Target Outcome

| Question | Purpose |
|----------|---------|
| Does it unlock the **primary constraint**? | Ensures relevance |
| Can we measure it **within 4–8 weeks**? | Enables fast feedback |
| Is it a **stretch** (requires new capability)? | Drives learning + motivation |
| Have we named the **trade-off**? | Prevents hidden misalignment |
| Is success **observable** (behavior change)? | Makes validation concrete |
| Does it tie to **one of the 5 outcome discovery themes**? | Maintains coherence |

## Example Target Outcome (BVSSH-aligned)

**Theme:** Approval bottleneck  
**Target Outcome:** Reduce deployment approval cycle from 5 days → 24 hours by eliminating manual security gate for low-risk changes, validated by ≥10 prod deploys/week by March 2026.

- **Specific:** 24hr approval, 10 deploys/week  
- **Measurable:** Approval time, deploy frequency  
- **Achievable:** Constraint is approval; we can automate classification  
- **Relevant:** Directly addresses bottleneck  
- **Time-bound:** March 2026  
- **Stretch:** Never done risk-based automation before  
- **Trade-off:** Speed over manual review of all changes  
- **Behavioral:** Teams stop waiting; security reviews async  

## Risks to Watch

- **Too many outcomes:** Pick **one** per value stream per cycle  
- **Output posing as outcome:** "Implement CI/CD" ≠ outcome; "Deploy daily" = outcome  
- **Ignoring constraint:** Beautiful target that doesn't touch bottleneck = waste  
- **No learning component:** If we already know how, it's execution, not outcome
