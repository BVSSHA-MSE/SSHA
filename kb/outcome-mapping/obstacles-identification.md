# Obstacles Identification

Fourth step of Flow Engineering's Outcome Mapping phase. Identifies what could block success before execution begins, enabling proactive mitigation and realistic planning.

## Purpose
Identify what could block success *before* execution begins, enabling proactive mitigation and realistic planning.

## Core Obstacle Dimensions

| Dimension | Guiding Questions |
|-----------|-------------------|
| **Hypothesized Constraint** | If we suspect a bottleneck, what makes it hard to validate or unlock? |
| **Dependency Risks** | Which external teams, approvals, or services could delay us? |
| **Capability Gaps** | What skills, tools, or knowledge do we lack? |
| **Political/Cultural** | What policies, norms, or power dynamics resist change? |
| **Technical Debt** | What legacy systems, architecture, or code blocks progress? |
| **Resource Availability** | Are people, budget, or time genuinely available? |
| **Measurement Blind Spots** | Can we actually observe the signals we need? |
| **Competing Priorities** | What other initiatives could starve this effort? |

## Additional Dimensions to Consider

### 1. Systemic Obstacles
- Organizational structure misalignment (teams own parts, not the whole)
- Incentive conflicts (rewarded for outputs, outcome requires flow)
- Cross-boundary handoffs (multiple approval layers, information loss)

### 2. Assumptions/Unknowns
- Untested hypotheses (we *assume* automation will help, but have we proven it?)
- Hidden dependencies not yet surfaced
- Regulatory/compliance surprises

### 3. External Forces
- Market shifts (customer needs change mid-effort)
- Vendor/partner reliability
- Regulatory changes

### 4. Temporal Risks
- Learning curve longer than expected
- Delay cascade (one blocker triggers others)
- Seasonal constraints (budget cycles, freeze windows)

### 5. Communication Breakdowns
- Stakeholder misalignment not yet visible
- Ubiquitous language gaps between teams
- Handoff documentation missing/unclear

### 6. Behavioral/Adoption
- Resistance to new workflows
- Muscle memory (reverting to old habits under pressure)
- Lack of psychological safety to experiment

## Output: Obstacle Register

Capture 3–7 obstacles in this format:

**Obstacle Name:** `<What could block success>`  
**Type:** `<Constraint | Dependency | Capability | Political | Technical | Resource | Measurement | Priority>`

## Example (from Target Outcome: "Reduce deployment approval cycle from 5 days → 24hrs")

| Obstacle | Type |
|----------|------|
| **Security team lacks trust in automated risk classification** | Political/Cultural |
| **No tooling for automated approval routing** | Capability Gap |
| **Compliance policy requires manual sign-off** | Political |
| **Team unfamiliar with new workflow** | Behavioral |
| **Competing priority: Q1 feature deadline** | Competing Priorities |

## Critical Checks

| Question | Purpose |
|----------|---------|
| **If we have a hypothesized constraint, does this obstacle make it harder to unlock?** | Ensures alignment with suspected bottleneck |
| **Can we detect this obstacle early?** | Enables proactive response |
| **Have we named *who* or *what* creates the obstacle?** | Makes mitigation concrete |
| **Is this obstacle actually inside our sphere of influence?** | Prevents wasted effort on uncontrollable forces |
| **Are we confusing symptoms with root obstacles?** | Ensures we're addressing causes, not effects |

## Flow Engineering Alignment

| **Outcome Mapping Phase** | **Obstacles Context** |
|---------------------------|-----------------------|
| Outcome Discovery → Target → Benefits → **Obstacles** | We surface risks **before** measuring the system |
| Constraint is **hypothesized** (if at all) | Obstacles may or may not relate to constraint |
| Next step: **Current State VSM** validates constraint | Obstacles inform whether we can execute improvement |

**Key Insight:** Obstacles identified here prepare us for execution. The **primary constraint** won't be validated until Current State Value Stream Mapping.

## Anti-Patterns to Avoid

| ❌ Avoid | ✅ Instead |
|---------|-----------|
| Generic risks ("things might change") | Specific, named obstacles with owners |
| Only listing technical obstacles | Balance technical, political, capability, and behavioral |
| Assuming we know the constraint | Treat constraint as hypothesis until Current State VSM confirms it |
