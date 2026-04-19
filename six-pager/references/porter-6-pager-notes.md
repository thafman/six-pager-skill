---
title: The Beauty of Amazon's 6-Pager + PR Process (two essays)
author: Brad Porter (former VP & Distinguished Engineer, Amazon)
year: ~2017
source_6pager: https://www.linkedin.com/pulse/beauty-amazons-6-pager-brad-porter
source_prprocess: https://www.linkedin.com/pulse/beauty-amazons-press-release-process-brad-porter
---

# Why these matter

Porter spent years as one of Amazon's most senior engineers — VP and Distinguished Engineer, overseeing robotics and operations infrastructure — before leaving to run Cobot. His two LinkedIn essays on the 6-pager and the press-release process are the best publicly available craft-level notes from inside the Amazon meeting ritual. Not a book, not a template, not a reconstruction: an insider's operating notes.

Read these for the *why* behind the form. Every other reference in this library shows the *what*.

# The silent-reading ritual — and why it sets the 6-page target

Amazon's six-pager meetings begin with silent reading. Executives read the document together, in the room, for the first 15–25 minutes of a 30-minute meeting. The six-page target is not arbitrary — it is calibrated to what a senior reader can absorb in that silent-read window, at a pace of roughly three minutes per page.

This has two structural consequences for the form:

- **Length discipline is load-bearing.** A seven-page memo breaks the ritual. A three-page memo under-prepares the room. Six is the design constraint that keeps the ritual cheap and scannable.
- **The memo must be a complete argument on its own.** The author will not be able to clarify, spin, or lobby during the read. By the time questions come, the reader has committed their interpretation. This is what makes the form expensive to write and cheap to review — exactly the opposite of a slide deck.

# Porter's observations, distilled

**On narrative coherence.** Porter attributes a specific discipline to Bezos: *"If you read the whole 6-page memo, on page 2 you have a question but on page 4 that question is answered."* The memo must anticipate the reader's reading order. A question raised in one section should be resolved in a later section of the same document — not handed to a follow-up meeting, not deferred to an appendix. This is a harder constraint than it sounds. It requires the author to predict where the reader's mind goes at each page break.

**On why bullet points fail the form.** Bullet points allow the author to imply connections without spelling them out. Full-sentence narrative forces the connections onto the page, where they can be evaluated. A reader who disagrees with a logical leap can mark the sentence that made it; a reader who disagrees with a bullet point has nothing specific to push back on.

**On decision-making velocity.** The 6-pager is a mechanism for scaling deep context-transfer. A senior leader can master an unfamiliar business domain in the 30 minutes of silent reading, provided the memo is well-written. This is why Amazon can run more decisions through a smaller number of senior leaders than a company of its size "should" be able to — the form scales the bandwidth of the reader, not the writer.

# On the press release — and why it works

Porter's second essay extends the argument to Amazon's press-release-first method. Three framings worth stealing:

**The PR as a "paper model."** Porter compares it to a film director's storyboard or a product designer's clay model. A paper model is cheap to iterate, cheap to discard, and reveals structural problems before expensive resources commit. The working-backwards press release is Amazon's paper model for a business bet.

**The "would you forward this?" test.** Porter frames the clarity filter as follows: if, after reading the draft PR, the reader does not instinctively think *"yes, I'd forward this to a few friends,"* the concept needs more work. The forward-ability test is deceptively strict. A PR that fails it usually has one of three problems — unclear customer, unclear benefit, or unclear point of distinctiveness.

**The PR as ongoing reference.** Once a PR has been approved, it becomes the document the team returns to when priorities drift or new requests come in. *"How many times have you found the vision has drifted from the original concept sufficiently that no one agrees what it is anymore?"* The written PR kills the drift by giving the team something concrete to defend or revise.

# How to use these with `/six-pager`

These notes shape three things in `SKILL.md`:

1. **Length discipline.** The default memo length (around 2,000 words / 6 pages) is not a preference — it is calibrated to the silent-reading ritual. Pushing past 8 pages breaks the form.
2. **Narrative coherence test.** When the skill self-critiques, it should check for dangling questions — a claim that invites a question in one section must be resolved in a later section. Porter's "page 2 question, page 4 answer" rule.
3. **The working-backwards rationale.** Porter's paper-model and forward-ability framings justify *why* the DRAFT flow writes the PR first. These belong in the "why this form" argument the skill makes when a new user asks what working-backwards buys them.

# Provenance

Public. Both essays are on Porter's LinkedIn, published under his own name, and widely cited in product-management communities. Citation + link is sufficient.
