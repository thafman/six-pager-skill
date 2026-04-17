# /six-pager — a Claude Code skill for writing strategic memos

A Claude Code skill that helps you draft or critique exec-audience strategic memos in the 6-page institutional form — the kind that has to survive being forwarded inside a bank, regulator, or Fortune 500 partner without the author in the room.

## What it does

Two modes:

- **DRAFT** — runs an 8-question intake quiz (proposal, reader, proposer, why-now, threat, ask, raw material, length target), echoes back a summary, then generates the full memo across 9 canonical sections.
- **CRITIQUE** — scores an existing draft against a 10-point rubric (structure, voice, rhetorical moves, density) and suggests the 3 highest-leverage rewrites.

The 9 canonical sections:

1. Background
2. Opportunity
3. [Proposer] Advantages
4. Why Now
5. Strategic Imperative
6. Product Concept
7. Execution Plan
8. Risks and Mitigations
9. Conclusion

## Install

Claude Code reads skills from `~/.claude/skills/`. To install:

```sh
./install.sh
```

This symlinks `six-pager/` into `~/.claude/skills/six-pager`. It will appear in the skills index on your next session start and can be invoked as `/six-pager`.

To uninstall: `rm ~/.claude/skills/six-pager`.

## What's inside

```
six-pager/
  SKILL.md                     # the skill itself — rules, quiz, rubric
  reference-sample.md          # canonical quality-bar sample memo
  reference-press-release.md   # companion press-release example (optional)
```

## Usage

```
/six-pager
```

If you start with a topic or bullets, it enters DRAFT mode and runs the intake quiz. If you paste a draft or give it a file path, it enters CRITIQUE mode. If ambiguous, it asks.

## The reference sample

`reference-sample.md` is a real exec strategic memo proposing a family-targeted AI companion product at a Fortune 500 financial institution. The skill uses it as the bar for voice, structure, and rhetorical moves. Treat its domain details as incidental — the form is what matters.

## Source

Built from studying one memo that was consistently cited as the quality bar for institutional strategic writing. The rules distilled here (9-section structure, measured institutional voice, 8 named rhetorical moves, specific-ask close) are extracted from what that memo does well.

## License

MIT. Do what you want with it.
