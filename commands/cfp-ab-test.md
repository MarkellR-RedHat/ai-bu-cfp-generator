# CFP A/B Test

Generate two fundamentally different abstracts for the same talk, then analyze which is stronger and where to submit each.

## Input

$ARGUMENTS

Parse the input for a talk topic, technical area, or project name. If the input includes speaker experience, production results, or audience context, use those details to ground both abstracts.

## Chain of Thought (work through these steps before writing anything)

**Step 1: Name the core technical contribution.** One sentence. What does this talk give the audience that they cannot get from a blog post or documentation? This sentence anchors both abstracts.

**Step 2: Brainstorm five perspectives.** Consider the talk from the viewpoint of: the builder (who wrote the code), the operator (who runs it at 2am), the decision-maker (who approved the budget), the community member (who wants to contribute), and the person who got burned (who tried the old way and failed). Write one sentence per perspective capturing what makes this talk interesting from that angle.

**Step 3: Select two perspectives that create maximum contrast.** The two abstracts must differ in all four of these dimensions:
- **Opening hook:** Different first sentences, different emotional entry points. One might start with a failure. The other might start with a surprising result.
- **Narrative structure:** One might follow a chronological arc ("we built X, here is what happened"). The other might use problem-solution framing ("Y keeps breaking, and here is why").
- **Audience emphasis:** One leans toward practitioners who will implement this next week. The other leans toward architects or leads evaluating whether to adopt it.
- **Selling point:** One sells the outcome (the result, the metric, the before-and-after). The other sells the process (the decisions, the tradeoffs, the reasoning).

If the two perspectives do not create clear separation in all four dimensions, choose again.

## Output Format

### Abstract A: [Short Label]
**Perspective:** One sentence naming the angle.
**Title:** Conference-ready. Specific enough that a reviewer knows exactly what the talk covers.
**Abstract (200 to 300 words):** Complete and submission-ready. First sentence must hook with a concrete problem, surprising result, or specific number. Follow a clear arc: problem, approach, result, takeaway. End with what the attendee walks away able to do.
**Learning Objectives (3):** Each starts with a strong action verb: Deploy, Configure, Evaluate, Build, Implement, Design, Troubleshoot, Compare, Migrate, Debug, Integrate, or Automate.

---

### Abstract B: [Short Label]
Same structure as Abstract A. Different perspective, different hook, different narrative, different selling point.

---

### Head-to-Head Analysis

Compare the two abstracts across these dimensions:

**Conference fit:** Which is stronger for practitioner conferences (KubeCon, DevConf)? For thought-leadership conferences (Open Source Summit, Red Hat Summit)? For community conferences (FOSDEM, PyCon)? One sentence of reasoning per match.

**Memorability:** Which sticks in a reviewer's mind after reading 200 submissions? Name the specific sentence or structural choice that creates that stickiness.

**Competitive differentiation:** If three other speakers submit on the same topic, which abstract offers something the others do not? Identify the common framing most speakers would default to and explain which abstract avoids it.

**First sentence strength:** Quote both opening sentences side by side. Which makes a reviewer want to keep reading, and why?

**Risk profile:** Which is "safer" (solid, scores well with any committee)? Which is "bolder" (higher ceiling if the committee values originality, higher risk if they want conventional structure)? Be specific about what makes each one safe or bold.

### Recommendation

**Submit A to:** [specific conference types or names], because [reason].
**Submit B to:** [specific conference types or names], because [reason].
**Combine elements:** Describe one hybrid option taking the strongest pieces from both. Name the specific title, opening hook, and structural framework. Keep to 3 to 4 sentences.

## Style Rules

- Direct, technical voice. No marketing language, no hype. Real tool names, project names, and concrete outcomes.
- Never use em dashes. Use commas, periods, semicolons, "and," or colons instead.
- Do not open with "In this talk," "This session," "Join us," or "Come learn."
- Banned words: "journey," "deep dive," "landscape," "ecosystem" (as metaphor), "leverage," "at scale" (without numbers), "revolutionary," "cutting-edge," "game-changing," "next-generation," "innovative."
- Learning objectives must never start with "Understand," "Learn," "Know," or "Explore."
- Both abstracts must be complete enough to paste into a submission form without editing.
- Vary sentence length and rhythm between the two abstracts so they do not read as templates with swapped words.

## Self-Critique Checklist (verify before outputting)

- [ ] The two abstracts use genuinely different hooks, structures, and selling points, not just different wording
- [ ] Each abstract scores well independently. Neither is a strawman written to lose the comparison.
- [ ] The analysis is specific enough to make a real submission decision, not generic praise for both
- [ ] No banned buzzwords, filler phrases, or em dashes appear anywhere
- [ ] Every learning objective uses a strong action verb and is measurable
- [ ] Both first sentences are hooks, not setups or summaries
