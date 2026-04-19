---
name: six-pager
description: |
  Write or critique an exec-audience strategic memo — roughly six pages, 9
  canonical sections, institutional third-person voice. Use when the reader
  is a C-suite / VP / board-level audience at a large institution (bank,
  regulator, enterprise partner, portfolio company) and the memo has to
  survive being forwarded without the author in the room.
  Three modes:
    DRAFT    — working-backwards-first by default (press release, then memo).
               Falls back to an intake quiz if the user opts out of the PR.
    CORPUS   — point the skill at a folder of markdown/text notes; it maps
               them onto the 9 sections and emits a memo with source cites.
    CRITIQUE — scores an existing draft against a 10-point rubric.
  A library of public references lives at six-pager/references/.
allowed-tools:
  - Read
  - Write
  - Edit
  - Grep
  - Glob
  - WebFetch
  - AskUserQuestion
---

# /six-pager

Write or grade a strategic memo for an institutional-exec reader. The form is a ~6-page argument with 9 canonical sections, measured third-person voice, and an explicit ask at the end. Before trusting the rules below, skim one or two files in `six-pager/references/` — that's the calibration material.

## 1. What this form is

A strategic memo, roughly six pages, for a reader who is an executive at a large institution — a bank, a regulator, a Fortune 500 partner, a board member, a portfolio company CEO. The reader will not have the author on the phone. They will read the memo, forward it, and let it do the persuading inside their org.

The form's job is to make a case that survives being passed around. It is not a founder update, not a pitch deck, not an internal team doc. It is corporate-grade argumentation.

**Why roughly six pages.** Calibrated to Amazon's silent-reading ritual — executives read the memo in the first 15–25 minutes of the meeting at ~3 min/page. Past 8 pages the ritual breaks; under 4, the case is under-made. See `references/porter-6-pager-notes.md`.

## 2. When to use

**Use for:** bank/insurer/regulated-institution strategy memos, regulator-facing policy docs, enterprise-partner strategy briefings, board briefings, investment-committee memos, portfolio-company strategy docs. Anything where the author won't be in the room and the doc has to carry the argument.

**Don't use for:** founder updates or investor emails (use a first-person voice skill), marketing copy or public press releases (use a marketing skill — though the internal PR inside DRAFT's working-backwards flow is fine), product specs (use a spec skill), internal team notes (use a notes workflow).

## 3. Canonical structure (9 sections)

Every section is a *move* in an argument, not a topic label. Each section earns the next.

| # | Section | Move |
|---|---|---|
| 1 | **Background** | Paint the trend, not the problem. Open wide — industry, consumer, or tech shift — then narrow to why it matters for this reader. |
| 2 | **Opportunity** | Size the addressable shift with stats (population, $ volume, growth rate), named incumbents, and observable trend-lines. |
| 3 | **[Proposer] Advantages** | Asset inventory. 3–5 bolded bullets naming what the proposing institution uniquely has — compliance, infrastructure, data, brand, distribution. Positions *the reader's* strengths before proposing the bet. |
| 4 | **Why Now** | The capability shift. Name the technology, behavior, or regulatory change that makes this newly possible. Answers: "why not three years ago, why not three years from now." |
| 5 | **Strategic Imperative** | Inoculate "why bother." Paint the disintermediation or relevance-loss threat. End with a numbered list of 3–4 parallel-verb objectives the bet achieves simultaneously. |
| 6 | **Product Concept** | Split in two halves: "For [user A]" and "For [user B]." Concrete verbs (verifies, deposits, exchanges). Name the maturation path over time. |
| 7 | **Execution Plan** | 4 phases. Each phase has a duration in months, a clear milestone, and a success criterion. No vague "explore" or "learn." |
| 8 | **Risks and Mitigations** | 1:1 pairs. Each risk paired with a specific, non-hand-waved mitigation. 4–6 risks total. |
| 9 | **Conclusion** | Restate the bet in two paragraphs. End with the specific ask — dollar amount, headcount, timeline, or decision to be made. |
| + | **Appendix** *(optional)* | Numbered endnotes matched to superscripted citations in the body. Supporting stats, source URLs, filings. About one per page is right. See `references/bishop-wilke-six-pager.md`. |

## 4. Voice rules

Third-person, institutional, measured, stat-grounded.

**Patterns to use:**

- **Em dashes allowed.** Liberally, as connective punctuation between clauses.
- **Third-person institutional register.** "The company" / "the institution" / "this initiative." First-person ("we") enters only in execution, risks, and conclusion.
- **Real connective tissue.** "Therefore," "however," "together these…" do actual work — they carry the logical load between paragraphs.
- **Italicized terms-of-art with inline definition.** When coining a concept, italicize it and define it in the same sentence. Example form: `*new-term*: a world where X, Y, and Z.`
- **Bolded lead-ins on bullets.** `**Technology readiness.** [Claim about the readiness].` The bold carries the label; the prose carries the claim.
- **Every claim grounded.** A stat (population, dollar volume, growth rate), a named company or institution, or an observable trend. No floating assertions.
- **Parallel structure.** Verb-first lists, same grammatical shape, 3–4 items. Example form: "Preserve X. Seed Y. Differentiate on Z. Attract W."
- **Objection inoculation in-line.** "X is not a new Y; it is Z." Head off the obvious pushback before the reader forms it.
- **Defensive-AND-offensive framing.** Hold two stances at once — a hedge against one risk and a catalyst for one opportunity.
- **Narrative coherence.** A question the memo invites on page 2 must be answered by page 4. Track where the reader's mind goes at each section break; rewrite dangling questions. See `references/porter-6-pager-notes.md`.

**Patterns to avoid:** hype ("revolutionary", "game-changing", "unprecedented"), "AI-powered" as branding, emoji / exclamation points / first-person emotions, long winding sentences (2–3 sentences per paragraph, ~20 words average), AI slop phrases ("in today's landscape", "delve into", "leverage", "harness", "unlock").

## 5. Named rhetorical moves

Use this as a menu. Deploy at least three in any 6-pager.

1. **Disintermediation setup** — trend opens, incumbent's position erodes, bet is framed as the response. Typically spans Background + Strategic Imperative.
2. **Asset inventory** — 3–5 bolded bullets of what the proposer uniquely has, positioned right before the ask. This is the `[Proposer] Advantages` section.
3. **Parallel-objective list** — numbered list of 3–4 strategic objectives the bet achieves simultaneously, verb-first, shared grammatical shape. Lives at the end of Strategic Imperative.
4. **Objection inoculation** — "X is not a new Y; it is Z" structure, preempting the obvious pushback.
5. **Defensive-AND-offensive framing** — refuse the either/or, hold both framings simultaneously ("both a hedge and a catalyst").
6. **Term-of-art coinage** — italicize a new concept, define it inline, use it as scaffolding for the rest of the memo.
7. **The Why Now question** — italicized framing question that reframes the initiative. Example shape: *"What new kinds of experiences become possible now that could not have existed before?"*
8. **Future-dated endpoint** — a press release dated 12–24 months out that makes the success state tangible. This is Amazon's Working Backwards move. In `/six-pager`, it drives the default DRAFT flow.

Every reference file in `six-pager/references/` notes which of these moves it exemplifies.

## 6. Mode selection

| User provides | Mode |
|---|---|
| Pasted draft / file path to an existing memo | CRITIQUE |
| Folder path, or explicit list of markdown/text files, as raw material | CORPUS |
| Topic, bullets, goal, or nothing | DRAFT (working-backwards default) |
| "Skip the press release" or user already has a PR drafted | DRAFT (quiz-only fallback) |
| Ambiguous | Ask which mode |

---

## 7. DRAFT mode

DRAFT has two sub-flows. Default is working-backwards; the quiz-only fallback is preserved for users who don't want to draft a press release first.

### 7.1 Working-backwards flow (default)

The logic: the press release locks the end state, and the 6-pager argues for getting there. The PR anchors Product Concept (what users actually get), Execution Plan milestones (phases that end with PR true), and the Conclusion ask (what funds the PR date). The other six sections come from intake + any corpus material.

**Step 1 — Four-question intake.** Ask these in a single `AskUserQuestion` batch where options exist; open-ended otherwise.

1. **Initiative.** In one paragraph, what's the bet?
2. **Reader.** Which institution will receive this, at what level (C-suite, VP, Director, Board)?
3. **Win metric.** At launch, what single metric demonstrates the bet worked? (e.g., "5,000 families in pilot", "$25M in committed deposits", "approval from regulator X")
4. **Ship horizon.** When does this go live? (12, 18, or 24 months out.)

**Step 2 — Draft the press release.** Under 400 words, dated on the ship horizon. Use McAllister's structure (see `references/mcallister-circulert-prfaq.md`): title (`[Company] announces [product] to enable [customer] to [benefit]`), subtitle, dateline, 3–4 sentence intro, top 3–4 ranked problems, solution, leader quote (why, not what), how-it-works walk-through, mundane customer quote, and a getting-started line.

**Step 3 — Show the PR to the user. Wait for green-light or edits before proceeding.** The PR is the locking artifact; if it's wrong, the memo will be wrong.

**Step 4 — Reverse-engineer the 9-section memo from the approved PR.**

- **Product Concept** is derived directly from the PR's product description. Split into the two user halves as required by the canonical structure.
- **Execution Plan** is written backward from the PR date. Four phases, each ending with a milestone that must be true for the PR to be shippable on the dateline.
- **Conclusion ask** is the funding / headcount / decision required to make the Execution Plan feasible.

**Step 5 — Fill the remaining six sections.** Background, Opportunity, [Proposer] Advantages, Why Now, Strategic Imperative, Risks and Mitigations. Source from the intake answers and any corpus files the user has provided. If a section is thin, ask one targeted follow-up question — don't hallucinate.

**Step 6 — Self-critique.** Run the rubric in §9 silently; fix anything scoring below 7 before returning.

**Step 7 — Return the memo + the press release as a companion artifact.** Follow with a short self-report: which of the eight rhetorical moves you used, what the specific ask is, and what gaps the user should fill before sending.

### 7.2 Quiz-only flow (fallback)

Triggered when the user says "skip the press release", "I already have one", or asks for the quiz. Eight questions: proposal (one paragraph), reader (institution + level), proposer (company + 3–5 structural advantages), why now (capability shift), threat (what's lost by not acting), ask (dollar / headcount / sprint / decision), raw material (stats, incumbents, constraints, prior art), length target (default ~2,000 w / 6 pages; offer 4-/6-/8-page). Echo back a summary, flag gaps, wait for green light, draft section by section.

### 7.3 Drafting procedure (shared across sub-flows)

Read 1–2 reference files first (default: `bishop-wilke-six-pager.md` for form, `bezos-1997-letter.md` for voice). Pick 3–5 rhetorical moves from §5 to deploy. Draft section by section — each section a *move*, each claim grounded in a stat, a name, or a trend. Self-run the §9 rubric; fix anything below 7. Return memo + self-report (moves used, specific ask, gaps).

---

## 8. CORPUS mode

When the user has already done the thinking — notes, brainstorms, scattered docs — and wants the memo assembled from that material rather than generated from a quiz.

### 8.1 Inputs

A folder path or an explicit list of file paths. Only `.md` and `.txt` files are read. No Notion, Confluence, Drive, or other integrations. Skipped file types are noted in the output.

### 8.2 Extraction procedure

1. **Walk the corpus** — read every markdown/text file.
2. **Classify passages by section.** A single passage can feed more than one of the 9 sections.
3. **Check coverage.** The two highest-risk gaps: specific ask (Conclusion) and named reader / target institution.
4. **Top-up intake** — only if coverage has gaps. Don't re-ask questions the corpus already answers. Usually just reader + ask.
5. **Draft the memo.** Attribute load-bearing claims to their source file.
6. **Emit the Sources trailer** (§8.3).

### 8.3 Sources trailer format

```
## Sources used

| Section | Source file(s) |
|---|---|
| Background | notes/market-context.md, research/2025-q4-trends.md |
| Opportunity | notes/market-context.md, sizing/tam-analysis.md |
| ... | ... |
```

### 8.4 Fail-loudly rules

- **Empty corpus.** If the folder has no readable markdown/text files, stop. Report what was found and ask for a different path.
- **Unrelated corpus.** If the corpus is clearly about a different topic than the user's stated goal, stop. Report the mismatch. Do not try to force a connection.
- **No hallucinating.** If a section has zero corpus support and the user declined to answer top-up questions, mark the section `[corpus did not cover — needs author input]` and return the partial memo. Do not invent stats, names, or trends to fill gaps.

---

## 9. CRITIQUE mode

### Input

- **Draft** (required): pasted text, file path, or URL.

### Procedure

Read the draft. Score against the rubric below. Flag every gap. Suggest rewrites for the 3 highest-leverage fixes.

### Rubric (0–10 scale)

**Structure (0–3 points)**
- All 9 canonical sections present, in order? (1 pt)
- Each header is a *move*, not a label? (1 pt)
- Conclusion ends with a specific ask (dollar / headcount / date)? (1 pt)

**Voice (0–3 points)**
- Third-person institutional register? (1 pt)
- Every claim grounded in a stat, named company, or observable trend? (1 pt)
- No hype, no "AI-powered" as brand, no generic AI slop? (1 pt)

**Rhetorical moves (0–2 points)**
- At least 3 named moves from §5 used? (1 pt)
- Objection inoculation or defensive-AND-offensive framing present? (1 pt)

**Density (0–2 points)**
- Every paragraph earns its place? No filler transitions, no restatement? (1 pt)
- Parallel-structure list somewhere (verb-first, numbered objectives)? (1 pt)

### Output format

```
## /six-pager Critique

**Score: X/10**
**Status: PASS (≥8) | WARN (5–7) | FAIL (≤4)**

### Structure (X/3)
- Section Background:        [present / missing / mislabeled] — [note]
- Section Opportunity:        [...]
- Section [Proposer] Advantages: [...]
- Section Why Now:            [...]
- Section Strategic Imperative: [...]
- Section Product Concept:    [...]
- Section Execution Plan:     [...]
- Section Risks & Mitigations:[...]
- Section Conclusion:         [...]
- Conclusion ask:             [specific / vague / missing]

### Voice (X/3)
- Register: [institutional / mixed / first-person-founder]
- Grounding: [every claim / most / frequent floaters]
- AI slop: [list any found]

### Rhetorical moves (X/2)
- Moves used: [list from §5]
- Missing obvious opportunity: [if applicable]

### Density (X/2)
- Padding flagged: [quote filler passages]
- Parallel-list present: [yes / no]

### Top 3 rewrites

1. **[Section name]** — current: "…" → suggested: "…"
2. **[Section name]** — current: "…" → suggested: "…"
3. **[Section name]** — current: "…" → suggested: "…"

### Verdict
[One paragraph: what's working, what's the single biggest fix, whether to ship.]
```

### Scoring notes

- A 6-pager that is a thinly disguised founder email fails regardless of content. Voice mismatch is a hard cap at 5.
- Missing the specific ask in the conclusion caps the score at 7. An exec memo without an ask is a blog post.
- Using ≥4 of the 8 named rhetorical moves is a hallmark of the bar — call it out in the verdict when achieved.

---

## 10. Quick reference card

```
FORM:       ~6-page strategic memo for an institutional exec reader
VOICE:      third-person, measured, stat-grounded, em-dashes allowed
STRUCTURE:  Background → Opportunity → [Proposer] Advantages → Why Now →
            Strategic Imperative → Product Concept → Execution →
            Risks & Mitigations → Conclusion
MOVES:      disintermediation setup · asset inventory ·
            parallel-objective list · objection inoculation ·
            defensive-AND-offensive · term-of-art coinage ·
            why-now question · future-dated endpoint
END:        conclusion with a specific ask ($, headcount, date, decision)
MODES:      DRAFT (working-backwards default | quiz-only fallback) ·
            CORPUS (folder → memo + sources trailer) ·
            CRITIQUE (rubric + top-3 rewrites)
REFS:       six-pager/references/ — Wilke-verified full 6-pager (Bishop),
            insider craft notes (Porter), Bezos letters (1997/2016/2018),
            PR/FAQ samples (McAllister, Bryar/Carr, Freeman, Chin).
APPENDIX:   optional — numbered endnotes matched to body citations.
```

## 11. Companion skills (optional)

Optional follow-ups if installed: a voice linter, a humanizer, or a first-person founder voice skill. `/six-pager` is self-contained.
