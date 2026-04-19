# /six-pager

**A Claude Code skill for writing exec-audience strategic memos.** The kind a bank, a regulator, or a board actually reads. Six pages, nine sections, institutional voice, a specific ask at the end.

The voice and form are calibrated against nine public exemplars, including [the complete six-pager Todd Bishop prepared in 2017](six-pager/references/bishop-wilke-six-pager.md) for his on-stage interview with then-Amazon Consumer CEO Jeff Wilke — read and confirmed by Wilke as faithful to Amazon's internal practice. This is the closest thing to an authentic internal Amazon six-pager that exists in the public record.

Three modes:

- **DRAFT** — interviews you, drafts a press release for your approval, then reverse-engineers the memo.
- **CORPUS** — reads a folder of your notes, maps the content to sections, writes the memo.
- **CRITIQUE** — scores an existing draft against a 10-point rubric, proposes the top 3 rewrites.

## Install

```sh
git clone https://github.com/thafman/six-pager-skill
cd six-pager-skill
./install.sh
```

Symlinks `six-pager/` into `~/.claude/skills/`. Start a new Claude Code session and type `/six-pager`.

Uninstall: `rm ~/.claude/skills/six-pager`.

## What's in the repo

```
six-pager-skill-share/
├── install.sh        ← symlink script
├── README.md
├── CHANGELOG.md
├── LICENSE
└── six-pager/        ← the skill (symlinked into ~/.claude/skills/)
    ├── SKILL.md      ← instructions Claude reads on invocation
    └── references/   ← voice calibration, 9 public exemplars
        ├── README.md
        ├── bishop-wilke-six-pager.md           ← Wilke-verified full 6-pager
        ├── porter-6-pager-notes.md             ← insider craft notes
        ├── bezos-1997-letter.md
        ├── bezos-2016-day-one-letter.md
        ├── bezos-2018-wandering-letter.md
        ├── mcallister-circulert-prfaq.md
        ├── bryar-carr-melinda-prfaq.md
        ├── freeman-pixel-vision-6-pager.md
        └── chin-commoncog-prfaq.md
```

That's it. A markdown prompt, a reading list, a symlink script. No runtime, no dependencies, no API.

New to Claude Code skills? A skill is a folder with a `SKILL.md` file that Claude Code discovers at session start and surfaces as a slash-command. The instructions live in `SKILL.md`; supporting files sit next to it.

## Why use this instead of a prompt

Four things a blank prompt won't do.

1. **Interview you for material you forgot.** "What single metric means it worked?" catches drafts headed for *explore further*. "Who's the reader, and at what level?" catches C-suite vs. Director drift. The intake is a diagnostic.
2. **Calibrate voice against real exemplars.** The skill reads the Wilke-verified six-pager (for form) and a Bezos letter (for voice) before writing. "Write like Amazon" as a prompt adjective does nothing. Reading what Amazon actually wrote — and what a sitting Amazon CEO confirmed was faithful to their internal form — does.
3. **Check in at the expensive moment.** The DRAFT flow writes the press release first, waits for your edits, then builds the 2,000-word memo. Rewriting a PR is cheap. Rewriting the memo is not.
4. **Enforce caps that don't bend.** Founder voice caps the score at 5/10. Missing a quantified ask caps at 7. These two rules catch most real-world drafts that fail.

## When to use it

- Strategy memo for a bank, an insurer, or a regulated institution.
- Briefing for a regulator or a policy body.
- Board memo, investment-committee doc, portfolio-company strategy doc.
- Anything the author won't be in the room to defend.

## When not to

- Founder update or investor email. Use a first-person voice skill.
- Marketing landing page or public press release. Different voice.
- Product spec or engineering design doc. Different form.

## DRAFT

DRAFT interviews you through 4 questions, drafts the press release, waits for your edits, then builds the 9-section memo from it. The default is working-backwards: the PR locks a date, a price, and a named customer *before* the memo gets written. Product Concept, Execution Plan, and Conclusion ask all fall out of that commitment.

```
you: /six-pager
     I want to pitch Caterpillar's Services exec on a
     predictive-maintenance subscription for fleet customers.

skill: Working-backwards DRAFT. Four questions before I write.
       - Initiative (one paragraph)
       - Reader (institution + level)
       - Win metric (the single number that means it worked)
       - Ship horizon (12 / 18 / 24 months)

you:   CatConnect Predictive — a subscription service that
       uses onboard sensor data from Caterpillar machines to
       predict component failures before they stop a job, so
       fleet operators schedule maintenance during planned
       windows instead of emergencies. Reader: SVP of
       Services. Win: 500 fleet customers in paid pilot.
       Ship: Q3 2027.

skill: Draft press release, 388 words, dated Sep 12, 2027.
       Read, edit, or approve.

       ┌───────────────────────────────────────────────────┐
       │ Caterpillar launches CatConnect Predictive, the    │
       │ first subscription service that lets construction  │
       │ and mining fleets prevent component failures       │
       │ before they stop a job                             │
       ├───────────────────────────────────────────────────┤
       │ Peoria, Ill. — Sept. 12, 2027 — Caterpillar today │
       │ launched CatConnect Predictive, a fleet-level     │
       │ service that reads onboard sensor data from Cat   │
       │ machines to predict hydraulic, drivetrain, and    │
       │ engine-component failures 48–240 hours before     │
       │ they would halt a job. The service pairs failure  │
       │ predictions with pre-staged parts at the nearest  │
       │ of 600+ Cat dealerships. Pricing is $450/machine  │
       │ /year for fleets of 25+ machines.                 │
       │                                                    │
       │ Unscheduled downtime costs construction and       │
       │ mining operators an average of $1,600/day per     │
       │ machine (McKinsey, 2024). North American Tier-4+  │
       │ fleets operate >180,000 machines (AEM, 2024).     │
       │ Telematics-first competitors — Komatsu's Komtrax  │
       │ (60% attach on Komatsu machines) and John Deere's │
       │ JDLink (55%) — have proven attach for basic       │
       │ fleet visibility, but neither predicts component  │
       │ failure at the telematics layer.                  │
       │                                                    │
       │ "Our customers do not want more dashboards," said │
       │ Joe Creed, Group President of Services. "They     │
       │ want the service truck to arrive before the       │
       │ machine stops. CatConnect Predictive turns 600+   │
       │ Cat dealerships into a pre-staging network, not   │
       │ a reactive one."                                   │
       │                                                    │
       │ How it works. A Cat machine's onboard ECM streams │
       │ vibration, oil-pressure, and thermal signatures   │
       │ to a cloud model trained on 14M hours of Cat      │
       │ component-failure data. When the model predicts a │
       │ failure window, the fleet manager sees it on a    │
       │ single pane; the nearest dealership is notified   │
       │ and pre-stages parts. Average intervention lead   │
       │ time in pilot: 96 hours.                          │
       │                                                    │
       │ "We had 140 machines on rental last quarter. Two  │
       │ hydraulic failures would have cost me a week each │
       │ — CatConnect caught both seven days out," said    │
       │ Rachel Orsini, VP Fleet Ops at Sundt Construction. │
       │ "We ran the jobs on time."                         │
       └───────────────────────────────────────────────────┘

you:   approve, but soften the Komtrax/JDLink framing —
       those are strategic partners on some lines. Use
       "incumbent fleet-telematics systems" instead of
       naming them in the PR body. Keep them in the memo.

skill: Done. Revised PR. Now building 9-section memo.

       [emits ~2,020-word memo. Product Concept reads
        "For fleet managers / For dealership service techs"
        split, derived from the PR. Execution Plan phases
        land at 0–6 mo (model calibration on three component
        families), 6–12 mo (alpha, 40 fleets), 12–18 mo
        (beta, 150 fleets), 18–21 mo (public launch, 500
        fleets, Sep 2027). Conclusion ask: $6.2M and 14
        FTEs over 21 months to deliver the Q3 2027 launch
        with a path to $47M ARR at 30% attach on the North
        American Tier-4+ installed base.

        Self-report appended:
        • Rhetorical moves used: disintermediation setup
          (§5 Strategic Imperative), asset inventory (§3
          Advantages — 4 bolded bullets on dealer network,
          installed sensor base, component-failure data,
          services-revenue growth), parallel-objective list
          (4 verb-first items), defensive-AND-offensive
          framing, future-dated endpoint.
        • Specific ask: $6.2M / 14 FTEs / 21 months /
          500 fleets by Sep 2027.
        • Gaps flagged: (1) data-sharing consent — fleet
          operators' unions flag telematics data as a
          labor-relations surface; needs legal review
          before alpha; (2) false-positive tolerance —
          the target <3% false-positive rate at 48-hour
          horizon is engineering-verified but not yet
          ratified by the dealer services team.]
```

Hate the press-release format? Say "skip the PR" and DRAFT falls back to an 8-question quiz.

## CORPUS

Point CORPUS at a folder of notes. It classifies content by section, asks 1–2 top-up questions for gaps, then emits the memo plus a sources-used trailer.

```
you: /six-pager ~/work/catconnect-predictive/notes

skill: Reading 12 markdown files. Classifying by section.

       Coverage:
         - 8 sections have corpus material
         - Conclusion ask: no file names a specific number
         - Reader: no file names the target institution

       Two top-ups: target reader? specific ask?

you:   [answers]

skill: [emits memo + trailer]

## Sources used

| Section | Source file(s) |
|---|---|
| Background | notes/market-context.md, research/q4-trends.md |
| Opportunity | notes/market-context.md, sizing/tam.md |
| ... | ... |
```

Fails loudly on empty or unrelated folders. Markdown and plain-text only.

## CRITIQUE

Paste a draft. Get a scored rubric, a section breakdown, the top 3 rewrites (current → suggested), a one-paragraph verdict.

The top-3 rewrites are where the skill earns its rent. Each one quotes a specific sentence from the draft, shows what it's failing at, and rewrites it. If your draft asserts "the market is huge and growing," CRITIQUE will replace it with a specific stat, a named competitor, and a dated trend-line — or flag that you don't have the evidence to make the claim and should stop.

```
## /six-pager Critique

**Score: 4/10**
**Status: FAIL**

### Structure (1/3)
- Background: present but labeled "Context"
- Opportunity: missing (market is asserted, never sized)
- [Proposer] Advantages: missing (proposer never named)
- Conclusion ask: vague ("explore this further")

### Voice (0/3)
- Register: first-person founder
- AI slop found: "unlock", "game-changing", "delve into",
  "we're excited to"
- Grounding: 0 stats, 0 named companies, 0 dated trend-lines
- Voice mismatch → hard cap at 5 engaged

### Top 3 rewrites

1. Opportunity — add sizing, named incumbents, dated trend.
   Current: "The predictive-maintenance market for heavy
   equipment is large and growing fast. Lots of fleet
   operators want to reduce downtime, and the technology
   has gotten much better recently."
   Suggested: "North American Tier-4+ construction and
   mining fleets operate >180,000 machines (AEM, 2024),
   with unscheduled downtime costing operators an average
   of $1,600/day per machine (McKinsey, 2024). Incumbent
   fleet-telematics systems (Komtrax, JDLink) have proven
   attach at 55–60% on their respective installed bases
   for basic visibility — but neither predicts component
   failure at the telematics layer. The gap is the
   predictive-service category this memo argues the
   company is uniquely positioned to own."

2. Conclusion — replace the vague close with a specific ask.
   Current: "We believe this is a massive opportunity and
   we should move quickly to explore it further."
   Suggested: "Fund a 21-month cross-functional sprint:
   $6.2M, 14 FTEs across engineering, data science,
   dealer operations, and services, to deliver a 500-fleet
   paid pilot by Q3 2027. Scale-funding gate at Q2 2028
   contingent on ≥30% attach and $450/machine/year ARR
   across pilot cohorts."

3. Voice — rewrite the opener in third-person institutional.
   Current: "We're really excited about this opportunity
   and believe it could be a game-changer for our services
   business. This is a chance to leverage our scale to
   unlock a huge new revenue stream."
   Suggested: "Heavy-equipment services revenue is the
   company's fastest-growing segment (11% YoY, 2023) and
   the category most exposed to third-party, OEM-agnostic
   aggregators. Samsara has scaled past 2M connected
   machines by 2024 ($1.1B ARR, 35% YoY). Absent a
   defensible OEM-native predictive service, the
   services-revenue margin migrates to the aggregation
   layer over the next 24–36 months."

### Verdict
The draft is a founder update, not an exec memo. The
structural failure (no sizing, no proposer, no ask) is
recoverable in a rewrite. The voice failure requires a
wholesale reset — first-person enthusiasm to third-person
institutional. Fix the three rewrites above and re-score
before circulating.
```

Rubric: Structure 3pts, Voice 3pts, Rhetorical moves 2pts, Density 2pts. Caps: voice mismatch at 5, missing quantified ask at 7.

## The 9 sections

Each section is a *move* in an argument, not a topic label.

| # | Section | Move |
|---|---|---|
| 1 | **Background** | Paint the trend, not the problem. Open wide, narrow to why it matters for this reader. |
| 2 | **Opportunity** | Size the addressable shift. Stats, named incumbents, observable trend-lines. |
| 3 | **[Proposer] Advantages** | Asset inventory. 3–5 bolded bullets naming what the proposer uniquely has. |
| 4 | **Why Now** | The capability shift. What's newly possible that wasn't two years ago. |
| 5 | **Strategic Imperative** | Inoculate "why bother." End with 3–4 parallel-verb objectives. |
| 6 | **Product Concept** | "For [user A]" / "For [user B]." Concrete verbs. The maturation path. |
| 7 | **Execution Plan** | 4 phases. Each with a duration, a milestone, a success criterion. |
| 8 | **Risks and Mitigations** | 1:1 pairs. Each risk paired with a specific, non-hand-waved mitigation. |
| 9 | **Conclusion** | Restate the bet. End with the specific ask — dollars, headcount, date, decision. |
| + | **Appendix** *(optional)* | Numbered endnotes matched to superscripted citations in the body. Supporting stats, source URLs, filings. See `bishop-wilke-six-pager.md` for the canonical shape. |

Full rules — voice patterns, the eight named rhetorical moves, rubric scoring, the silent-reading ritual that sets the 6-page target — in [`six-pager/SKILL.md`](six-pager/SKILL.md).

## Reference library

Nine public exemplars in [`six-pager/references/`](six-pager/references/), each with a header naming the rhetorical moves it exemplifies. Read one before drafting to prime voice.

Amazon's actual internal six-pagers are confidential. The ones that leak get pulled. The library leans into what *is* public — and the standout is the Wilke-verified complete six-pager below.

**The Wilke-verified exemplar** (the closest thing to an authentic internal Amazon 6-pager in the public record):

- [`bishop-wilke-six-pager.md`](six-pager/references/bishop-wilke-six-pager.md) — Todd Bishop of GeekWire wrote this six-pager for his 2017 on-stage interview with then-Amazon Consumer CEO Jeff Wilke. Wilke read it, confirmed the format was faithful to Amazon's internal practice, and let it stand. Complete fictional PR + three narrative sections + FAQ + Appendix with numbered endnotes. Start here.

**Insider craft notes** (the best public operating-level writing on *why* the form works):

- [`porter-6-pager-notes.md`](six-pager/references/porter-6-pager-notes.md) — Brad Porter (former Amazon VP & Distinguished Engineer). Two LinkedIn essays: the silent-reading ritual, narrative coherence ("page 2 question, page 4 answer"), the PR as "paper model," the forward-ability test.

**Bezos shareholder letters** (the public Amazon canon, SEC-filed):

- [`bezos-1997-letter.md`](six-pager/references/bezos-1997-letter.md) — "It's all about the long term." Parallel-objective list as commitment device.
- [`bezos-2016-day-one-letter.md`](six-pager/references/bezos-2016-day-one-letter.md) — *Day 1*, *disagree and commit*, *high-velocity decisions*. Term-of-art coinage masterclass.
- [`bezos-2018-wandering-letter.md`](six-pager/references/bezos-2018-wandering-letter.md) — *Wandering* vs. efficiency held as opposing framings. Defensive-AND-offensive move.

**Authored PR/FAQ samples** (ex-Amazonians teaching the form):

- [`mcallister-circulert-prfaq.md`](six-pager/references/mcallister-circulert-prfaq.md) — Ian McAllister's PR template plus the Circulert example. The scaffold DRAFT's working-backwards flow uses.
- [`bryar-carr-melinda-prfaq.md`](six-pager/references/bryar-carr-melinda-prfaq.md) — Colin Bryar & Bill Carr's Melinda sample, from the authors of *Working Backwards*. Links out to their public PR/FAQ template.
- [`freeman-pixel-vision-6-pager.md`](six-pager/references/freeman-pixel-vision-6-pager.md) — Jesse Freeman's reconstructed six-pager (the non-PR/FAQ narrative form).

**Real applied PR/FAQ** (an operator in the wild):

- [`chin-commoncog-prfaq.md`](six-pager/references/chin-commoncog-prfaq.md) — Cedric Chin's actual PR/FAQ for the Commoncog Case Library beta. Full external + internal FAQ included.

Landscape context — and why Amazon internals aren't here — in [`references/README.md`](six-pager/references/README.md).

## Invocation

| You type | Mode |
|---|---|
| `/six-pager` + topic or bullets | DRAFT (working-backwards default) |
| `/six-pager` + "skip the PR" | DRAFT (quiz-only fallback) |
| `/six-pager ~/path/to/folder` | CORPUS |
| `/six-pager` + pasted draft or file path or URL | CRITIQUE |
| `/six-pager` alone, no context | The skill asks |

## License

MIT. Borrow the library, credit the originals.
