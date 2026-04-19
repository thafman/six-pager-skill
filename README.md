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

Paste a draft. Get a scored rubric, the rewrite CRITIQUE would emit, and a verdict on whether to ship. Two hard caps don't bend: voice mismatch caps at 5/10, missing a quantified ask caps at 7/10.

The cleanest way to show what CRITIQUE does is a before/after.

**Before — a typical founder-voice team update (155 words):**

> Hey team,
>
> Wanted to give a quick update on where things are with the Q2 launch, since a few moving pieces came up this week and I don't want anyone surprised.
>
> Overall we've been making solid progress across the workstreams, but the compliance side has developed in a way that's going to need a decision from us soon. Our current vendor is raising some concerns that we may not be able to fully resolve on the timeline we'd hoped, and we've also been looking at alternatives that have come up in conversations. Both paths have trade-offs worth working through.
>
> I want to flag this early so we can start thinking about implications for the launch and any downstream effects on the roadmap. There's also some engineering bandwidth questions depending on which way we go.
>
> Happy to jump on a call later this week. Let me know when works.

**CRITIQUE's score: 2/10. Voice-mismatch cap engaged.** First-person register, zero grounded claims, no dates, no named vendors, no specific ask. "Solid progress across the workstreams," "some concerns," "moving pieces," "trade-offs worth working through" — hedging language doing the work that specifics should.

**After — the rewrite CRITIQUE emits:**

> **TLDR.** Q2 pilot launches May 4, not April 20, unless we switch consent vendors by Wednesday. Missing May 4 means missing the partner demo at the May board.
>
> **The choice.** Stay with the current vendor (another ~2 weeks of compliance review, no eng work now) or migrate to the alternative (5 engineering days now, unblocks May 4, cleaner DPA posture going forward).
>
> **What migration costs.** Sarah and two others come off the onboarding rewrite, which pushes that work into June. Onboarding is on Retention's Q2 roadmap. The PM there will push back, and she's right to.
>
> **My read.** Migrate anyway. The board demo and the cleaner compliance posture are worth the onboarding slip. I'll own the Retention conversation.
>
> **Ask.** Yes or no by EOD Wednesday.

Same author, same facts on the ground. The difference is specificity — dates, names, costs — a visible ask with a deadline, and a reader who can decide without a follow-up meeting.

Rubric: Structure 3pts, Voice 3pts, Rhetorical moves 2pts, Density 2pts.

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
