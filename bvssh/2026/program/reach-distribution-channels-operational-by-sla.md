# [Reach] - Distribution Channels Operational by SLA

**Year:** 2026  
**Level:** Program  
**Theme:** Reach  
**Status:** Active (starting Q1; first quarterly review March 31)

---

## 1) Year & Level
- **Year:** 2026
- **Level:** Program

## 2) Outcome Name & Theme
- **Theme:** Reach
- **Outcome Name (3–7 words):** Distribution Channels Operational by SLA

## 3) Context & Tension
- **Current state:** Team owns production via docs-as-code (Ruby + Asciidoctor); 6+ pieces target in 2026. No systematic distribution process yet; pieces will be produced without guaranteed channel readiness (LinkedIn, Substack, optional INSPO).
- **Observable tension:** Without operational distribution by SLA, pieces sit unpublished or ship inconsistently → publish→engagement lag grows → Portfolio cannot measure resonance → learning cycles stall → future piece prioritization guesses.
- **Why now:** Portfolio outcome (Leaders Engage with SSH Advocacy) assumes Program delivers reliable distribution. Burnout cascade risk persists if discovery lag exceeds 7 days (leaders lose momentum). Q1 2026 is go-live; distribution system must be operationalized by end of January.
- **Parent link:** Enables Portfolio outcome [bvssh/2026/portfolio/reach-leaders-engage-ssh-advocacy.md](../portfolio/reach-leaders-engage-ssh-advocacy.md) (engagement measurement depends on timely, consistent distribution). Unblocks Team outcome (production) by clarifying distribution expectations and formats.

## 4) Desired Outcome (BVSSH)
- **Primary dimensions:** Sooner, Value
- **Sooner:** Channel-ready packages published within 24 hours of Team piece release; leaders discover SSH ideas within days (not weeks); feedback loops compress (engagement patterns inform next piece within 2–4 weeks).
- **Value:** Predictable, systematic distribution unlocks Portfolio learning on resonance; capacity freed as processes stabilize (SLA met without heroics); engagement signals enable recruiting multiplier (engaged leaders → future advocates).
- **Secondary:** Better, Happier, Safer
- **Better:** Clear channel practices + templates reduce cognitive load; consistent packaging improves piece discoverability and relevance.
- **Happier:** Leaders discover relief faster; knowing distribution is handled lets Team focus on content quality.
- **Safer:** Prevents missed windows and rework cycles; reduces burnout from ad-hoc publishing.

## 5) Outcome Hypothesis
- **Hypothesis:** Operationalizing a 24-hour channel SLA (LinkedIn + Substack post + article package per piece) — with instrumented analytics and weekly cadence review — will reduce publish→first-engagement lag to under 7 days for ≥80% of pieces by Q2 2026, because systematic packaging and scheduled posting remove friction from discovery and enable data-driven resonance learning.

## 6) Expected Behavioral Change (observable)
- **Before:** Pieces ship ad-hoc; distribution timing varies; channel-specific norms unknown; no engagement baseline; resonance data unavailable for months.
- **After:** Every piece gets a distribution kit (post + article + summary variants) within 24h of Team release; posted on LinkedIn + Substack on defined cadence; UTM tags capture views/comments/shares/questions; weekly review of lag and coverage; quarterly resonance synthesis informs next quarter's piece prioritization.
- **Stops:** Ad-hoc posting; waiting for "the right time" to publish; duplicated cross-posting with format drift; unmeasured engagement; guessing at resonance.
- **Starts:** Systematic package creation (template-driven, 2–3h per piece); scheduled posting per channel playbook; analytics tracking without heroics; weekly SLA review; quarterly learning loops.

## 7) Signals & Measures (trends over targets)
- **Leading (1–3):**
  - Package coverage: % of pieces with post + article + analytics ready within 24h (trend: ↑ toward ≥90% by Feb).
  - Publish→first-engagement lag: median days from piece release to first comment/share/citation (trend: ↓ toward <7 days by end Q2).
  - Analytics readiness: UTM in place, weekly metrics rollup produced without heroics (trend: consistency — 100% weeks on schedule).
- **Lagging (1–3):**
  - Engagement rate per piece: (comments + shares + citations + questions) / views, aggregated quarterly (trend: ↑; baseline ≥3% Q1, target 5%+ by Q4).
  - Audience growth: LinkedIn followers + Substack subscribers (trend: ↑ quarter over quarter; enables compounding reach).
  - Distribution throughput: packages completed per week vs. pieces released (trend: ≥90% throughput; WIP ≤2 concurrent).

## 8) Constraints & Guardrails
- **Constraints:** Team must produce pieces on agreed cadence (Program assumes 6+ by Q4). Distribution limited to LinkedIn + Substack in H1 (optional INSPO as cross-post). Multi-format assets (Leanpub e-books, whitepapers) deferred to Q2+ (don't jeopardize 24h SLA).
- **Trade-offs:** Optimize for timeliness + engagement over maximal long-form depth on secondary channels. Canonical article location (Substack vs blog) chosen early to avoid duplicate SEO penalties. Cross-post risk accepted (duplication in reach for speed).
- **Guardrails:** 24h SLA is aspirational for Jan–Feb; escalate blockers immediately (script failures, analytics gaps). Weekly cadence review non-negotiable (catch lag drift). Quarterly resonance synthesis feeds next-quarter decisions (dimension hypothesis validation). If engagement rate <2% by end Q1, pause and diagnose (hooks? packaging? timing? audience?).

## 9) Review & Learning Cadence
- **Weekly (Weeks 1–4):** Draft channel playbooks (LinkedIn, Substack); build distribution kit template; pilot end-to-end on first piece; track lag and coverage; note friction.
- **Weekly (ongoing, Q1–Q4):** Review SLA compliance (24h coverage, lag trend); track WIP; escalate blockers; adjust cadence if needed.
- **Quarterly reviews (Q1, Q2, Q3, Q4 2026):** Aggregate engagement rate per piece; validate dimension resonance patterns; assess audience growth; decide: continue current channels? expand to INSPO/other? refine packaging or cadence? What pieces recruited advocates?
- **Participants:** Self (distribution operations, analytics, weekly review); optional: 1–2 external practitioners for channel feedback (is timing right? is hook clear? what format works best?).
- **Decision enabled:** Which channels and formats drive highest engagement by Q2? Should we expand to podcasts/conferences in H2, or deepen LinkedIn/Substack? When to introduce e-books/whitepapers without jeopardizing SLA? Which pieces should become advocates' go-to references?

## 10) Reflection (post-outcome)
- **Capture (post-Q4 2026):** Did 24h SLA hold? What blockers emerged? Which pieces achieved <7 day lag? What format/cadence/hook worked best per channel? Did audience growth compound as expected? Which pieces recruited advocates? Did resonance patterns match hypothesis (Happier primary, Sooner secondary)? What surprised us about engagement timing? What to change for 2027 (expand channels? invest in e-books? shift to different platforms)?

---

## Outcome-Specific Definitions

### 24-Hour Channel SLA
**Definition:** From Team piece release → Program distribution kit (LinkedIn post + Substack article + analytics setup) ready within 24 hours.

**Kit Contents:**
- Post variants: 150-char hook (LinkedIn post), 600-char summary (LinkedIn article), tags/hashtags
- Article: 1200–2000 word canonical form for Substack; include byline, image, UTM links
- Images: Hero image (1200×630px LinkedIn, 1024×576px Substack), author bio image
- Links: Canonical Substack URL, internal cross-links, optional INSPO linkback
- Analytics: UTM params (source=linkedin/substack, campaign=reach-2026, content=[piece-slug]), tracking codes

**Measured from:** Team declares piece "ready for distribution" (Git commit + notification)  
**Measured to:** Kit uploaded to shared location (Google Drive, Notion, repo) + Substack draft + LinkedIn draft ready for scheduling

### Publish→First-Engagement Lag
**Definition:** Days elapsed from scheduled post on LinkedIn/Substack → first comment, share, citation, or question from external audience.

**Tracked:** Per piece, aggregated weekly/quarterly  
**Counted as:** Comments (critical or supportive), shares, citations (references in external content), questions (DMs, comments)  
**Not counted:** Likes, bookmarks, passive views

### Distribution Kit Template
**Location (repo):** `docs/distribution-templates/` or similar  
**Structure:**
```
[piece-slug]-distribution-kit
├── post-variants.md (150-char hook, 600-char summary, tags)
├── article-canonical.md (1200–2000 words, Substack-ready)
├── images/
│   ├── hero-linkedin.png (1200×630)
│   └── hero-substack.png (1024×576)
├── utm-params.txt
└── checklist.md (image check, links check, publishing cadence check)
```

### Channel Playbooks
**LinkedIn Playbook:**
- Post type: Option A (short hook + link), Option B (article format with inline links)
- Length: 150–600 chars for hook; article 600–1500 chars with image
- Hashtags: #SSH, #SustainableWork, #SustainableSoftwareDevelopment (max 3)
- Images: Hero 1200×630px; post-specific images optional
- Timing: Best engagement 8am–10am EST Tue/Wed/Thu (test and adjust)
- Frequency: 1 piece per 1–2 weeks; space posts to avoid follower fatigue
- Engagement: Reply to comments within 24h; encourage critical comments as validation

**Substack Playbook:**
- Article length: 1200–2000 words (deep dives; contrasts LinkedIn short-form)
- Format: Narrative or framework + examples + call-to-action
- Images: Hero image + inline images if needed
- Send cadence: Weekly email (Tuesday); coordinate with LinkedIn post (same day or day after)
- Links: Internal cross-links, prior piece references, external resources
- Canonical flag: Mark as canonical; avoid duplicate content penalties

### Analytics Baseline (Week 1)
**Capture:**
- LinkedIn: Views, impressions, engagement (reactions, comments, shares, clicks)
- Substack: Opens, clicks, replies, forwards
- Manual: Citations (search piece title/author in external blogs/Twitter/communities monthly)
- UTM rollup: Track utm_campaign=reach-2026, utm_source=[linkedin|substack], utm_content=[piece-slug]

**Weekly Report:**
```
[Piece] | Published | Views | Comments | Shares | Citations | Questions | Lag (days) | Engagement %
[slug1] | Jan 8    | 1200  | 5        | 8      | 2         | 3         | 2          | 1.8%
...
```

### Audience Segments (Distribution Targets)
- Agile/delivery practitioners
- Engineering leaders managing teams
- Product managers in scaling organizations
- Operations teams in high-chaos environments
- Team leads drowning in overhead
- Directors noticing organizational slowdown

### Multi-Format Assets (Out of Scope, Q2+)
- E-book/Leanpub: 3–5 pieces compiled + formatted; requires additional pipeline (markdown → Leanpub template → PDF)
- Whitepaper PDF: Formal research format; candidate for gated download (LinkedIn lead gen)
- INSPO posts: Low/no formatting cross-posts of LinkedIn hooks; treated as viral amplification channel (optional)

**Decision Gate:** Introduce only after Q1 baseline achieved (24h SLA ≥90%, lag <7 days for 80%+ pieces).

---

## Dependencies & Assumptions

### Team Must Deliver
- ✓ 6+ pieces produced via docs-as-code (Ruby + Asciidoctor) by Q4 2026
- ✓ Pieces released with standard metadata (title, slug, publish date, author, summary)
- ✓ Asciidoctor output supports HTML/Markdown export (for Substack import)

### Platform Assumptions
- ✓ LinkedIn + Substack remain viable channels in 2026
- ✓ Analytics track views, engagement (comments, shares) reliably
- ✓ UTM tags propagate correctly (no stripping by platforms)
- ✓ Audience has capacity to engage (comment, share, cite) not just read passively

### Program Scope (What We Operationalize)
- ✅ Distribution kit creation (post + article + images + UTM)
- ✅ Channel-specific playbooks and cadence
- ✅ Analytics instrumentation and weekly reporting
- ✅ First-engagement lag tracking and quarterly resonance synthesis
- ❌ Piece production (Team owns)
- ❌ Engagement measurement (Portfolio owns; Program provides data)
- ❌ Channel expansion decisions (defer to portfolio review)

---

## Next Steps (Q1 2026, Weeks 1–4)

### Week 1: Foundations
- Draft Channel Playbooks (LinkedIn, Substack) — formats, lengths, timing, image specs, link policy
- Create Distribution Kit Template (repo) — markdown boilerplate, image specs, UTM recipe, checklist
- Define Analytics Baseline — UTM scheme, metric definitions, weekly rollup format

### Week 2: Setup
- Build Minimal Export Path from Asciidoctor → markdown/HTML for Substack; PDF option for future whitepapers
- Set up analytics tracking — verify LinkedIn/Substack dashboards, create UTM shortlinks, define manual citation tracking
- Establish weekly review cadence — standing meeting, checklist, escalation path for blockers

### Week 3: Pilot & Iterate
- Coordinate with Team on first piece release
- Run end-to-end distribution kit creation (target <3h; measure friction)
- Publish post + article on cadence; measure first-engagement lag; note what slowed down kit creation
- Capture Week 3 learnings for Week 4 adjustment

### Week 4: Stabilize & Scale
- Refine distribution kit template based on Week 3 feedback
- Confirm 24h SLA is achievable; adjust if needed
- Define WIP limit and escalation path (e.g., if >2 pieces waiting for kit, escalate to Team)
- Baseline analytics data in place; first weekly report due

---

## Success Criteria (Operationalization)

| Phase | Measure | Target | By When |
|-------|---------|--------|---------|
| **Jan (Stabilization)** | 24h SLA compliance (kit ready) | ≥80% | Jan 31 |
| **Jan (Stabilization)** | Analytics baseline in place | 100% tracking active | Jan 31 |
| **Feb–Mar (Optimization)** | Publish→engagement lag | <7 days for ≥50% pieces | Mar 31 |
| **Q2 (Validation)** | Publish→engagement lag | <7 days for ≥80% pieces | Jun 30 |
| **Q1 (Engagement)** | Baseline engagement rate | ≥3% (comments+shares+questions) / views | Mar 31 |

---

