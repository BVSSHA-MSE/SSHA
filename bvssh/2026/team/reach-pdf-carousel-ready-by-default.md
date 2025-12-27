# [Reach] - PDF Carousel-Ready from Single Source
**Year:** 2026  
**Level:** Team  
**Theme:** Reach  
**Status:** Active (architecture first; unblocks Program SLA)

---

## 1) Year & Level
- **Year:** 2026
- **Level:** Team

## 2) Outcome Name & Theme
- **Theme:** Reach
- **Outcome Name (3–7 words):** PDF Carousel-Ready from Single Source

## 3) Context & Tension
- **Current state:** Docs-as-code using Ruby + Asciidoctor, but no output automation or framework; only playground experiments. No PDFs generated; distribution kit creation is manual and exceeds the 24h SLA. Program’s [Distribution Channels Operational by SLA](../../program/reach-distribution-channels-operational-by-sla.md) and Portfolio’s [Leaders Engage with SSH Advocacy](../../portfolio/reach-leaders-engage-ssh-advocacy.md) depend on reliable, fast output.
- **Observable tension:** Without a composable, testable output architecture, format fidelity (page size, margins, fonts) drifts, manual steps multiply, and SLA becomes impossible. Architecture clarity is the upstream constraint.
- **Why now:** Architecture clarity unblocks automation, which unblocks distribution (SLA), which enables engagement measurement. Q1 2026 needs a validated first piece.
- **Parent link:** Enables Program SLA and Portfolio engagement measurement; provides predictable artifacts for distribution.

## 4) Desired Outcome (BVSSH)
- **Primary dimensions:** Sooner, Better
  - **Sooner:** Commit→artifact within minutes on CI; distribution-ready multi-page PDF produced the same day; 24h SLA becomes feasible.
  - **Better:** Clear separation of content/style/layout/format yields consistent, legible pages (carousel-ready), reducing rework and errors.
- **Secondary:** Safer, Value, Happier
  - **Safer:** Automated validation catches format drift; fewer last-minute fixes; predictable outputs.
  - **Value:** Program executes distribution; Portfolio measures engagement; capacity freed from manual formatting.
  - **Happier:** Authors focus on content and simple conventions; anxiety over formatting disappears.

## 5) Outcome Hypothesis
- **Hypothesis:** Establishing a modular output architecture — single Asciidoctor source → theme-driven multi-page PDF with 4:5 aspect ratio, validated by tests and built on CI — will make distribution kits available within hours, because predictable, composable outputs remove manual friction and enable the Program’s 24h SLA.

## 6) Expected Behavioral Change (observable)
- **Before:** Manual formatting; no PDFs; ad-hoc scripts; blocked SLA.
- **After:** `bundle exec` build produces validated PDF artifacts consistently; content authors work in `.adoc` + simple conventions; distribution receives a carousel-ready PDF automatically.
- **Stops:** Hand-crafted layouts; untested outputs; waiting days for format fixes.
- **Starts:** Theme-driven page specs; page-break conventions (`<<<`); automated validations; CI artifacts ready the same day.

## 7) Signals & Measures (trends over targets)
- **Leading (1–3):**
  - Page-size validation: % of builds passing 4:5 page dimension ratio with tolerance (±1%).
  - Slide density validation: % of slides with ≤50 words (heuristic count) (trend: ↑ toward ≥95%).
  - Authoring time to first valid slide: median minutes from new `.adoc` to first slide passing ratio + ≤50-word checks (trend: ↓ over time).
  - Commit→artifact time: median minutes from push to CI artifact (trend: ↓ toward ≤10 minutes).
  - First LinkedIn check: manual upload of first PDF renders correctly on Carousel (trend: 100% correctness first attempt after MVP).
- **Lagging (1–3):**
  - SLA readiness: % of pieces with PDF artifacts available ≤24h post-ready (trend: ↑; enables Program outcome).
  - Manual formatting time: hours spent per piece on formatting (trend: ↓ toward near-zero).
  - Distribution throughput: PDFs produced vs. pieces released (trend: ≥90%; aligns with Program throughput).

## 8) Constraints & Guardrails
- **Constraints:** Focus on PDF as the canonical output; LinkedIn Carousel accepts multi-page PDF directly. Rasterized images (PNG/JPG) optional later (Q2) if needed.
- **Trade-offs:** Prioritize reliable, legible layouts over ornamental design; fonts must be licensed and embeddable; keep authoring conventions simple.
- **Guardrails:** Separation of concerns: content (.adoc) vs. style (theme YAML) vs. layout (conventions) vs. format (renderer config). Tests required for page dimensions and basic content density.

## 9) Review & Learning Cadence
- **Weekly (Jan):** Scaffold build tooling and theme; validate first piece; track page-size tests and CI artifact time; note friction.
- **Bi-weekly (Q1):** Assess SLA readiness and manual formatting time; decide template refinements; confirm authoring conventions.
- **Participants:** Self (architecture + CI); optional peer review for legibility and author workflow.
- **Decision enabled:** Is the architecture stable enough to hand off to Program for SLA? What refinements improve authoring speed without breaking legibility?

## 10) Reflection (post-outcome)
- **Capture:** Did page-size tests and CI artifacts stabilize outputs? Were authoring conventions clear enough? What surprised us about legibility or content density? What should change for Q2 (rasterization, template variants, fonts)?

---

## Outcome-Specific Definitions

### Carousel-Ready PDF Specs
- **Aspect ratio:** 4:5 (LinkedIn recommended 1080×1350). In PDF points, set a proportional size in theme. Pass criterion: computed page width/height ratio within **±1%** of 0.8 (4:5).
- **Page breaks:** Use `<<<` between slides/sections.
- **Text density guidance:** **≤50 words per slide**; validate heuristically in tests (acceptable threshold: ≥95% of slides under limit).
- **Margins & fonts:** Theme YAML controls margins, typography, colors; choose legible fonts with proper licensing.

### Separation of Concerns Modules
- **Content:** `.adoc` sources, includes, roles; slide-per-section with explicit breaks.
- **Style:** Asciidoctor PDF theme YAML (fonts, colors, spacing).
- **Layout:** Authoring conventions (headlines, safe margins, density) expressed via theme + content roles.
- **Format:** Renderer config/CLI options and output directories; CI artifact publishing.

### Validation & Tooling
- **PDF generation:** `asciidoctor-pdf` using theme YAML for page size/margins.
- **Image generation (optional Q2):** If needed, rasterize pages via Ruby wrappers around ImageMagick (`mini_magick`) or Poppler (`pdftocairo`). Not required for LinkedIn Carousel.
- **Automated checks:** Use `hexapdf` or Poppler tools to assert page dimensions and ratio tolerance (±1%), page count; heuristic text-length checks per slide (≤50 words, ≥95% pass); CI uploads artifacts.

### CI & Git Hooks
- **GitHub Actions:** On push/PR, run build + validations; upload PDF artifacts; fail fast on format drift.
- **Git hooks:** Pre-commit (lint/tests) and pre-push (build) to prevent broken PDFs entering main; ensure consistent developer experience.

### Signal Cascade (Team → Program → Portfolio)
- **Team leading signals** (page-size ratio pass %, ≤50-word slide pass %, authoring time, commit→artifact) increase **Program lag metrics** improvements (publish→first-engagement lag ↓; package coverage ↑) per [Program SLA outcome](../../program/reach-distribution-channels-operational-by-sla.md).
- **Program lag metrics** contribute to **Portfolio engagement lagging signals** (engagement rate %, conversation velocity, audience growth) per [Portfolio outcome](../../portfolio/reach-leaders-engage-ssh-advocacy.md).
- **Cadence sync:** Team weekly validations feed Program weekly SLA reviews; Program quarterly synthesis feeds Portfolio quarterly engagement synthesis.

---

## Next Steps (Execution Plan)
- **Scaffold Build Tooling (Due Jan 10):** `Gemfile` with `asciidoctor`, `asciidoctor-pdf`, `rspec`, optional `hexapdf`; `bin/build_pdf` CLI; sample `.adoc`; produce `output/sample.pdf`.
- **Define PDF Theme (Due Jan 12):** Theme YAML with 4:5 page size, margins, fonts; verify `<<<` page breaks.
- **Add Validation Tests (Due Jan 14):** Specs for page dimensions/count and basic density checks; green CI.
- **CI + Git Hooks (Due Jan 15):** Workflow runs build/tests, publishes artifacts; local hooks guard against broken outputs.

---
