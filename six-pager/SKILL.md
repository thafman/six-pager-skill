---
name: six-pager
description: |
  Write or critique an exec-audience strategic memo — roughly six pages, 9
  canonical sections, institutional third-person voice. Use when the reader
  is a C-suite / VP / board-level audience at a large institution (bank,
  regulator, enterprise partner, portfolio company) and the memo has to
  survive being forwarded without the author in the room.
  Two modes:
    DRAFT    — runs an intake quiz, then generates the memo.
    CRITIQUE — scores an existing draft against a 10-point rubric.
  Canonical reference sample lives at six-pager/reference-sample.md.
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

Write or grade a strategic memo for an institutional-exec reader. The form is a ~6-page argument with 9 canonical sections, measured third-person voice, and an explicit ask at the end. The reference sample at `six-pager/reference-sample.md` is the quality bar — read it once before you trust the rules below.

## 1. What this form is

A strategic memo, roughly six pages, for a reader who is an executive at a large institution — a bank, a regulator, a Fortune 500 partner, a board member, a portfolio company CEO. The reader will not have the author on the phone. They will read the memo, forward it, and let it do the persuading inside their org.

The form's job is to make a case that survives being passed around. It is not a founder update, not a pitch deck, not an internal team doc. It is corporate-grade argumentation.

## 2. When to use

**Use `/six-pager` for:**
- Internal strategy memos for a bank, insurer, or regulated institution
- Regulator-facing or policy-body strategy docs
- Enterprise-partner strategy briefings (Fortune 500 exec teams)
- Board briefings, investment-committee memos, and portfolio-company strategy docs
- Any writing where the author will not be in the room and the doc has to carry the argument

**Don't use for:**
- Founder updates, investor emails, or Slack messages → use a first-person voice skill instead
- Marketing, landing copy, or press releases → use a marketing voice skill
- Product specs or engineering design docs → use a spec skill
- Internal team notes → use a notes / journal workflow

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

## 4. Voice rules

This voice may be different from the default voice skill your org uses for founder comms. It is **third-person, institutional, measured, stat-grounded.**

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

**Patterns to avoid:**

- Hype ("revolutionary", "game-changing", "unprecedented"). The form never hypes.
- "AI-powered" as a selling point. Mention AI as a capability, not as brand.
- Emoji, exclamation points, first-person emotions.
- Long winding sentences. Two to three sentences per paragraph, average ~20 words.
- Generic AI slop phrases ("in today's landscape", "delve into", "leverage", "harness", "unlock").

## 5. Named rhetorical moves

Use this as a menu. Deploy at least three in any 6-pager.

1. **Disintermediation setup** — trend opens, incumbent's position erodes, bet is framed as the response. Typically spans Background + Strategic Imperative.
2. **Asset inventory** — 3–5 bolded bullets of what the proposer uniquely has, positioned right before the ask. This is the `[Proposer] Advantages` section.
3. **Parallel-objective list** — numbered list of 3–4 strategic objectives the bet achieves simultaneously, verb-first, shared grammatical shape. Lives at the end of Strategic Imperative.
4. **Objection inoculation** — "X is not a new Y; it is Z" structure, preempting the obvious pushback.
5. **Defensive-AND-offensive framing** — refuse the either/or, hold both framings simultaneously ("both a hedge and a catalyst").
6. **Term-of-art coinage** — italicize a new concept, define it inline, use it as scaffolding for the rest of the memo.
7. **The Why Now question** — italicized framing question that reframes the initiative. Example shape: *"What new kinds of experiences become possible now that could not have existed before?"*
8. **Future-dated endpoint** — optional companion artifact (a press release, a screenshot, a milestone doc) dated 18–24 months out, making the success state tangible. See `reference-press-release.md`.

## 6. Mode selection

On invocation, pick a mode from what the user supplied:

- **User pastes a draft, gives a file path, or links a doc** → CRITIQUE
- **User gives a topic, bullets, notes, or goal** → DRAFT
- **User asks "what is this skill"** → show this doc, offer both modes
- **Ambiguous** → ask: "Draft a new 6-pager, or critique an existing draft?"

---

## 7. DRAFT mode

### 7.1 Intake quiz (run before drafting)

Do not start writing until you have enough material to fill all 9 sections. Walk the user through the questions below, in this order. Adapt wording to the context; skip questions the user already answered in their opening prompt; batch any that have clean discrete options into a single `AskUserQuestion` call.

1. **The proposal — in one paragraph.** What is the initiative, and what's the core bet? (Open-ended text.)
2. **The reader.** Which institution will read this? At what level — C-suite, VP, Director, Board? (Multi-choice OK for level; open-ended for institution.)
3. **The proposer.** Whose memo is this — which company or institution is proposing? What are its 3–5 structural advantages that give it a credible right to win (compliance, infrastructure, data, brand, distribution, talent, existing relationships)?
4. **Why now.** What capability shift makes this newly possible that wasn't two to three years ago? (Technology breakthrough, regulatory change, behavioral shift, market timing.)
5. **The threat.** What does the proposer lose if they don't act? What's the disintermediation or relevance-loss story?
6. **The ask.** What is the conclusion asking for? Specific: dollar amount, headcount, a sprint window, a decision, an approval. "Explore further" is not an ask.
7. **Raw material.** Paste any stats, named incumbents, data points, constraints, timeline, or prior art the draft should incorporate.
8. **Length target.** Default ~2,000 words / 6 pages. Offer: 4-page (~1,400 w), 6-page (~2,000 w), 8-page (~2,800 w).

After the user answers, echo back a short summary of what you've gathered, flag any gaps, and **wait for green light before drafting**. If any section is thin — typically #3 (advantages), #5 (threat), or #6 (ask) — ask one targeted follow-up per gap.

### 7.2 Drafting procedure

Once the intake is complete:

1. Read `reference-sample.md` to re-prime on the bar.
2. Map the user's material onto the 9-section structure. Identify which sections are data-rich and which need more.
3. Pick 3–5 rhetorical moves from section 5 to deploy explicitly in this draft.
4. Draft the memo section by section. Each section is a *move*, not a description. Every claim gets a stat, a name, or a trend.
5. Self-run the critique rubric in section 8 before returning. Fix anything scored below 7.
6. Return the memo as markdown, followed by a short self-report:
   - Which rhetorical moves you used (by name, from section 5)
   - What the specific ask is
   - Any input gaps the user should fill before sending

---

## 8. CRITIQUE mode

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
- At least 3 named moves from section 5 used? (1 pt)
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
- Moves used: [list from section 5]
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

## 9. Quick reference card

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
SAMPLE:     six-pager/reference-sample.md (the bar)
COMPANION:  six-pager/reference-press-release.md (optional future-dated endpoint)
```

## 10. Companion skills (optional)

If these skills are installed in your environment, use them as follow-ups to a DRAFT pass:

- A generic voice linter — run after DRAFT to catch residual AI slop.
- A humanizer skill — run if the output feels too AI-smooth.
- A first-person founder voice — if critique reveals the draft is actually meant for a founder / investor audience, redirect there.

These are optional. The `/six-pager` skill is self-contained and does not require any of them to function.
