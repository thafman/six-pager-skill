# Changelog

## v0.3 — 2026-04-17

- **Added the Wilke-verified complete six-pager** as `references/bishop-wilke-six-pager.md` — Todd Bishop of GeekWire prepared this full six-pager (fictional press release, three narrative sections, FAQ, appendix with ten endnotes) for his 2017 on-stage interview with then-Amazon Consumer CEO Jeff Wilke. Wilke read it and confirmed the form was faithful to Amazon's internal practice. The single most valuable public exemplar in the library.
- **Added insider craft notes** as `references/porter-6-pager-notes.md` — Brad Porter (former Amazon VP & Distinguished Engineer), two LinkedIn essays distilled. Covers the silent-reading ritual, narrative-coherence discipline, and the press release as "paper model."
- **Appendix promoted to the canonical section table** in `SKILL.md §3` — optional, but flagged as real. Numbered endnotes matched to superscripted citations in the body. Sourced from the Wilke memo.
- **Silent-reading ritual context** added to `SKILL.md §1` — the six-page target is calibrated to a ~3-min/page silent read in the first 15–25 minutes of a meeting. Past eight pages, the ritual breaks.
- **Narrative-coherence rule** added to `SKILL.md §4` — "a question the memo invites on page 2 must be answered by page 4." Attributed to Bezos via Porter.
- **Extended `bryar-carr-melinda-prfaq.md`** with a link to the authors' public PR/FAQ template at workingbackwards.com.
- **Updated `references/README.md`** to reflect the new five-bucket landscape (shareholder letters / authored samples / insider craft notes / verified exemplars / real applied PR/FAQ).
- SKILL.md stays under the 18KB ceiling after tightening several existing sections to offset the new material.

## v0.2 — 2026-04-17

- **Working-backwards is the default DRAFT flow.** A 4-question intake → draft press release → user approval → reverse-engineered 9-section memo. The press release anchors Product Concept, Execution Plan milestones, and the Conclusion ask. The quiz-only flow is preserved as a fallback for users who opt out of the PR.
- **CORPUS mode.** Point the skill at a folder of markdown or text notes and it emits a memo mapped onto the 9 sections, with a Sources-used trailer citing which file fed which section. Fails loudly on empty / unrelated corpora rather than hallucinating.
- **Reference library reorganized and expanded.** Moved from two starter reference files at `six-pager/` into `six-pager/references/` with seven new files across three categories:
  - Bezos shareholder letters (1997, 2016, 2018)
  - Authored PR/FAQ samples (McAllister's Circulert, Bryar & Carr's Melinda, Freeman's Pixel Vision 8)
  - Real applied PR/FAQ (Chin's Commoncog Case Library)
  - A `references/README.md` explaining the landscape — specifically why no real Amazon internal six-pagers are in the library (confidentiality policy), and what the public corpus actually is.
- **Future-dated endpoint promoted to first-class rhetorical move** in `SKILL.md §5` — it's Amazon's Working Backwards move, and it now drives the default DRAFT flow.
- **Tightened SKILL.md prose** — stays under the 18KB ceiling.
- **install.sh** — unchanged (`ln -sfn` continues to target the `six-pager/` directory; references subfolder travels with it automatically).

## v0.1 — 2026-04-15

- Initial ship.
- DRAFT mode (8-question intake → 9-section memo).
- CRITIQUE mode (10-point rubric, top-3 rewrites).
- Two reference files: `reference-sample.md` (a sample memo) and `reference-press-release.md` (companion press release).
- `install.sh` with `ln -sfn` symlink for macOS + Linux.
