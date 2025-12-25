# 2026 Team Outcome — Theme-Labeled Titles by Default
**Year:** 2026  
**Level:** Team  
**Status:** Active (Weeks 1–2, Jan 1–14, 2026)

---

## 1) Year & Level
- **Year:** 2026
- **Level:** Team

## 2) Outcome Name (3–7 words)
- **Theme-Labeled Titles by Default**

## 3) Context & Tension
- **Current state:** Artifact naming pattern `[Theme] - [Title]` is defined (Portfolio outcome) but not operationalized; no mechanism ensures consistent application at creation.
- **Observable tension:** New artifacts are sometimes created without theme tags; "forgot to tag" moments happen post-creation, breaking the default behavior.
- **Why now:** Theme tagging consistency is a blocker for Program's quarterly synthesis and Team's downstream automation (backlink generation); without default enforcement, reuse trails stay stale.
- **Parent link:** Enables Program outcome [bvssh/2026/program/quarterly-theme-synthesis-published.md](bvssh/2026/program/quarterly-theme-synthesis-published.md); unblocks Team outcome [bvssh/2026/team/theme-trail-backlinks-automated.md](bvssh/2026/team/theme-trail-backlinks-automated.md).

## 4) Desired Outcome (BVSSH)
- **Primary dimensions:** Sooner, Better
- **Sooner:** Theme decision happens at artifact start (not post-hoc); no decision friction at creation time.
- **Better:** Consistent tagging enables pattern recognition and downstream automation; reduces rework and re-explanation.
- **Secondary:** Value, Safer, Happier
- **Value:** Reuse trails become reliable; synthesis work lighter; 6 significant SSH Advocacy pieces become achievable.
- **Safer:** Consistent tagging prevents misclassification and theme drift; system is predictable and auditable.
- **Happier:** One fewer thing to remember post-publish; "forgot to tag" anxiety disappears.

## 5) Outcome Hypothesis
- **Hypothesis:** Making theme tag a default in artifact creation (via template + checklist) — and blocking publish if missing — will eliminate tag omissions and shift theme assignment upstream to creation time, because practitioners will tag at start (when context is fresh) rather than post-hoc (when memory fades).

## 6) Expected Behavioral Change (observable)
- **Before:** Artifacts created without theme tag; theme assignment happens after writing or at publish time; "forgot to tag" incidents occur.
- **After:** All new artifacts start with `[Theme] - [Title]` template; practitioners confirm/override theme at creation; zero tag omissions by publish.
- **Stops:** Adding theme tags post-hoc; remembering to tag before commit; last-minute "what theme is this?"
- **Starts:** Using theme-prefilled template for all new artifacts; confirming theme intent at artifact start; blocking publish if tag is missing.

## 7) Signals & Measures (trends over targets)
- **Leading (1–3):**
  - Template adoption: % of new artifacts created from theme template (trend: ↑ toward 100%).
  - Tag decision lag: median seconds from artifact creation to theme confirmation (trend: ↓ toward <30s).
  - Theme mismatch incidents: artifacts tagged with clearly wrong theme (count per sprint, trend: ↓ toward 0; validates Safer).
- **Lagging (1–3):**
  - Theme tag coverage: % of new artifacts with `[Theme] -` in title at publish (trend: ↑ toward ≥95%).
  - Tag omission incidents: count per sprint (trend: ↓ toward 0).
  - Exception log completeness: % of non-standard artifacts captured with rationale (trend: ↑ as tool for theme evolution; informs future theme development).

## 8) Constraints & Guardrails
- **Constraints:** Only one active theme initially (Coherence); defer multi-theme until adoption is stable. Template must be frictionless (<15 seconds to copy/fill).
- **Trade-offs:** Rigidity (must use template) vs. flexibility (allow exceptions if logged). Accept some friction from checklist discipline in exchange for consistency.
- **Guardrails:** All exceptions (artifacts without theme) must be logged in KB with rationale (informs theme evolution); never skip template as a "quick" shortcut; review exceptions weekly.

## 9) Review & Learning Cadence
- **Weekly check-in:** Count coverage %, incidents, template adoption; decide if threshold (≥95%) is met.
- **Sprint end (2 weeks):** Publish final coverage %, exception log; decide: succeed/iterate/extend.
- **Participants:** Self (daily logging); optional peer review of exceptions.
- **Decision enabled:** Outcome 1 success unlocks Outcome 2 start; if coverage <95%, pause and investigate exceptions.

## 10) Reflection (post-outcome)
- **Capture:** Did template default work? Which artifacts resisted tagging and why? What theme clarifications emerged? How close to 95% did we get? What surprised us?

---

## Outcome-Specific Definitions

### Theme-Labeled Title Pattern
- **Format:** `[Theme] - [Title]`
- **Example:** `[Coherence] - Better Value Sooner Safer Happier: Advocacy Outcome Design`
- **Location:** Artifact filename and H1 header
- **Enforcement:** Pre-filled in template; validated at publish

### Template Location
- **Path:** `kb/themes/coherence/artifact-template.md`
- **Content:** H1 with pre-filled `[Coherence] - ` prefix; placeholder for artifact title; body boilerplate (e.g., "## Summary", "## BVSSH Intent")

### Exception Definition
- **What counts:** Artifacts that don't use `[Theme] -` pattern or fit into a different theme
- **Logging:** Entry in `kb/outcome-mapping/sessions/theme-exceptions-2026-01.md` with: artifact name, rationale, proposed theme (if applicable)
- **Review:** Weekly; surfaces theme evolution opportunities

### Coverage Threshold
- **Target:** ≥95% of new artifacts published with theme tag
- **Measurement:** Weekly count: (tagged artifacts) / (total new artifacts) = %
- **Pass criterion:** 95%+ by sprint end

---
