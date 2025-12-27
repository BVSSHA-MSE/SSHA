# [Reach] - PDF + Carousel Output Architecture (Session Notes)

**Timestamp:** 2025-12-27 16:15:00  
**Year:** 2026  
**Level:** Team  
**Theme:** Reach  
**Status:** Draft

---

## Summary
Single-source Asciidoctor content must render into a multi-page PDF suitable for both direct distribution and LinkedIn Carousel upload, with clear separation of content, style, layout, and format. No output automation exists; the primary constraint is capability and pipeline reliability required to meet the 24-hour distribution SLA.

---

## Step 1 — Outcome Discovery (5 Dimensions)

- **Goals:**
  - Generate multi-page PDF from single `.adoc` source that is carousel-ready (4:5 aspect ratio) and distribution-ready.
  - Keep architecture composable (Unix philosophy), idiomatic Ruby, domain-based (Dan North).
  - Enable testable, CI/CD-ready pipeline.

- **Context:**
  - Ruby + Asciidoctor used for docs-as-code; only playground experiments so far.
  - No output automation; Program’s 24h SLA blocked; Portfolio engagement measurement blocked.
  - LinkedIn accepts multi-page PDF as Carousel; image generation is optional.

- **Pains:**
  - Manual kit creation would exceed 24h SLA; inconsistency and errors likely.
  - Format fidelity risk (wrong size/margins/fonts) and lack of separation-of-concerns.
  - Unclear ownership of pipeline pieces; brittle ad-hoc scripts.

- **Questions:**
  - Can Asciidoctor PDF set custom page sizes (1080×1350pt) reliably?  
  - If images are ever needed, which Ruby gem/tool is best to rasterize PDF pages?  
  - How to verify page size/content rules automatically (tests/lints)?

- **Ideas:**
  - Clear layered architecture: Source → Theme/Style → Renderer (asciidoctor-pdf) → Distribution Kit.
  - Use Asciidoctor PDF theme YAML to set page size, margins, fonts; `<<<` for page breaks.
  - Minimal Ruby CLI + CI job; test PDF page size via `hexapdf` or `pdftk`/`poppler`.

---

## Step 1.2 — Thematic Grouping
- **Architecture Clarity (chosen):** separation of content/style/layout/format; composability; predictable renderer outputs.  
- Automation Reliability: CI/CD, Git hooks, validation, artifacts.  
- Format Fidelity: carousel-ready specs (4:5, text density, margins, font legibility).

## Step 1.3 — Theme Selection
- **Selected Theme:** Architecture Clarity (highest impact + prerequisite for automation).

## Step 1.4 — Candidate Target Outcomes (2–5)
1) **Single-Source PDF Carousel-Ready by Default** — From one `.adoc`, produce a multi-page PDF sized for LinkedIn Carousel and direct distribution; separation-of-concerns enforced; ready by Jan 31, measurable via page-size tests.  
2) **Style/Layout/Format Modularized** — PDF theme, content includes, and renderer config are isolated modules; 90%+ of changes do not cross module boundaries; ready by Jan 31.  
3) **Output Validated Automatically** — Unit and integration checks verify page size, slide count, and basic content rules (<50 words/slide target); CI passes on main by Jan 31.  
4) **Distribution Kit Scaffolded** — A minimal folder structure and checklist produced with each build (PDF + README + spec results) within 10 min on CI; pilot by Feb 14.

---

## Step 2 — Target Outcome Definition (SMART + Constraint)

### Target Outcome (Final)
**Outcome Name:** PDF Carousel-Ready from Single Source (by Default)  
**Specific:** From a single Asciidoctor source, generate a multi-page PDF with 4:5 aspect ratio pages, using theme-driven separation (content/style/layout/format) and predictable CLI.  
**Measurable:** Page-size test passes for ≥90% builds; CI artifacts include PDF; commit→artifact ≤10 minutes; manual LinkedIn upload renders correctly on first attempt.  
**Achievable:** Uses `asciidoctor-pdf` and theme YAML; MVP within 4–6 weeks.  
**Relevant:** Unblocks Program’s 24h SLA and Portfolio engagement measurement.  
**Time-bound:** **By Jan 31, 2026** (MVP ready and validated on at least one piece).

### Stretch + Learning
- Learn how to encode carousel constraints (page size, margins, text density) in themes/templates and verify via tests.

### Trade-offs (Explicit)
- Optimize for reliable PDF first; defer optional image rasterization until the SLA stabilizes (Q2).  
- Favor simplicity in layouts over highly customized designs (legibility and speed over ornamentation).

### Behavioral Observable
- **Before:** Ad-hoc, manual formatting; no artifacts; blocked SLA.  
- **After:** `bundle exec` build produces PDF consistently; content authors work in `.adoc` + roles; distribution receives a ready PDF.

### Flow Metric Alignment
- **Lead time (commit→artifact):** target ≤10 minutes on CI for MVP.  
- **Throughput:** at least 1 validated carousel-ready PDF in Jan; trend upward.

---

## Step 3 — Benefits Clarification
- **Sooner:** Pieces become distribution-ready within hours; 24h SLA achievable.  
- **Better:** Consistent layout and typography improve readability; less rework.  
- **Safer:** Tests prevent format drift and broken outputs; fewer last-minute fixes.  
- **Value:** Program can execute distribution; Portfolio can measure engagement; capacity freed from manual formatting.  
- **Happier:** Authors focus on content; reduced anxiety over formatting.

---

## Step 4 — Obstacles Identification
- **Capability:** Asciidoctor PDF theme configuration learning curve; fonts/licensing.  
- **Technical:** Custom page sizes (points) correctness; Windows toolchain (if additional rasterization tools are needed).  
- **Automation:** CI setup, caching; Git hooks consistency across dev machines.  
- **Measurement:** Validating page size and basic content rules automatically.  
- **Priority:** Avoid over-designing templates that slow authoring.

---

## Step 5 — Next Steps (2–4 weeks)
- **Scaffold Build Tooling — Owner: Self — Due: Jan 10** — `Gemfile` with `asciidoctor`, `asciidoctor-pdf`, `rspec`, optional `hexapdf`; `bin/build_pdf` CLI; minimal `.adoc` sample.  
  **Evidence:** `output/sample.pdf` generated; CI artifact attached.  
  **Category:** Foundational.
- **Define PDF Theme — Owner: Self — Due: Jan 12** — Theme YAML with page size (4:5), margins, fonts, headings; ensure `<<<` page break works.  
  **Evidence:** Page-size test passes; manual LinkedIn upload renders correctly.  
  **Category:** Quick Win.
- **Add Validation Tests — Owner: Self — Due: Jan 14** — Specs to assert PDF exists, page count, and page dimensions via `hexapdf` or `pdftocairo`; basic content-length checks per slide.  
  **Evidence:** CI green with validations.  
  **Category:** Foundational.
- **CI + Git Hooks — Owner: Self — Due: Jan 15** — GitHub Actions workflow (`push`/PR) runs build + tests; pre-commit hook runs lint/tests locally; upload CI artifact.  
  **Evidence:** CI artifacts downloadable; hooks prevent broken PDFs.  
  **Category:** Stakeholder Management (automation enablement).

---

## Technical Notes (Answers)
- **Does Asciidoctor generate images?**  
  Asciidoctor PDF generates a PDF, not images. LinkedIn Carousel accepts multi-page PDF uploads—no image generation required. If rasterized images are needed later, use `mini_magick` (ImageMagick) or `poppler` tools (e.g., `pdftocairo`) from Ruby to convert pages to PNG/JPG.

- **Separating concerns (style, layout, content, format):**  
  - **Content:** `.adoc` sources, roles, includes, slide-per-section with `<<<` page breaks.  
  - **Style:** Asciidoctor PDF theme YAML (fonts, colors, spacing).  
  - **Layout:** Theme settings + authoring conventions (headline, body limits, safe margins).  
  - **Format:** Renderer configuration (CLI options, theme selection); output directory structure.

- **GitHub Actions + Git Hooks:**  
  - **Actions:** Build on push/PR, run validations, upload artifacts (PDF, logs).  
  - **Hooks:** Pre-commit (lint/tests) to prevent broken builds; pre-push (full build) for confidence.  
  - **Quality:** Tests validate specs; artifacts prove SLA readiness; failures caught before distribution.

---

## Handoff
Recommend creating the Team outcome artifact:  
**Slug:** `reach-pdf-carousel-ready-by-default`  
**Path:** `bvssh/2026/team/reach-pdf-carousel-ready-by-default.md`  
Proceed with BVSSH Outcome Facilitator to finalize the 10 sections and link to Program/Portfolio outcomes.
