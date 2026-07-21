# CFP A/B Test

Your abstract is not evaluated in isolation. It sits in a spreadsheet next to 15 other submissions on the same topic. The reviewer is deciding which ONE to accept. Two competing drafts let you see your own talk through the reviewer's eyes and pick the version that wins the comparison.

## Input

$ARGUMENTS

Parse the input for a talk topic, technical area, or project name. If the input includes speaker experience, production results, or audience context, use those details to ground both abstracts in specifics rather than generalities.

## Handling Edge Cases (check before proceeding)

**Vague topic with no clear angle.** If the input is broad ("something about Kubernetes" or "AI stuff"), do NOT generate two vague abstracts. Instead, ask 3 to 4 sharpening questions: What specific problem have you solved? What surprised you? What do you know that most people in the room do not? Two abstracts built on a vague foundation are just two flavors of generic. You need a real story before the A/B test has any value.

**First-time speaker.** If the user has never submitted a CFP before, lean toward making Abstract A the safer, more structured option and Abstract B the bolder swing. Explain the risk profile in concrete terms so the speaker can make an informed bet. Recommend starting with Abstract A for a first submission and note conferences that welcome new speakers (DevConf, All Things Open, PyCon, DjangoCon).

**Unshipped product or pre-release work.** If the talk covers something not yet in production, both abstracts must be honest about it. One abstract can frame the work as "design decisions and early results" while the other can take a forward-looking angle on open questions. Neither should fabricate production metrics. Make the pre-release status a feature of the narrative, not a liability to hide.

**Unusual CFP requirements.** If the user mentions a conference that requires nonstandard fields (video submission, diversity statement, extended outline), generate those fields for both abstracts. The A/B comparison should extend to every required section, not just the abstract body.

## Chain of Thought (work through these steps silently before writing anything)

**Step 1: Name the core contribution.** One sentence. What does this talk give the audience that they cannot get from a blog post, a README, or a vendor demo? This sentence anchors both abstracts and prevents them from drifting into vagueness.

**Step 2: Brainstorm five perspectives.** Consider the talk from: the builder (who wrote the code), the operator (who runs it at 2am), the decision-maker (who approved the budget), the community member (who wants to contribute), and the person who got burned (who tried the old way and failed). Write one sentence per perspective capturing what makes this talk compelling from that angle.

**Step 3: Design for stickiness.** After reading 200 abstracts, a reviewer remembers maybe 10. What makes an abstract stick? A specific number. A surprising failure. A bold claim that makes the reviewer think "I need to hear how this turned out." Plan how each abstract will be memorable in a different way: one through concrete evidence, the other through narrative tension or an unexpected framing.

**Step 4: Select two perspectives that create maximum contrast.** The two abstracts must differ across all four of these dimensions:
- **Opening hook:** Different first sentences, different emotional entry points. One might open with a failure or a counterintuitive result. The other might open with a specific metric or a question the audience has been afraid to ask.
- **Narrative structure:** One might follow a chronological build arc ("we started here, hit this wall, ended here"). The other might use problem-first framing ("this keeps breaking, and here is why nobody talks about it").
- **Audience emphasis:** One targets practitioners who will implement something next week. The other targets architects, leads, or evaluators deciding whether to adopt.
- **Selling point:** One sells the outcome (the result, the metric, the transformation). The other sells the process (the decisions, the tradeoffs, the reasoning that got you there).

If the two perspectives do not create clear separation in all four dimensions, choose again.

## Output Format

### Abstract A: [Short Label]
**Perspective:** One sentence naming the angle and why it creates a distinct entry point.
**Title:** Conference-ready. Specific enough that a reviewer knows exactly what the talk covers without reading the abstract.
**Abstract (200 to 300 words):** Complete and submission-ready. First sentence must hook with a concrete problem, surprising result, or specific number. Follow a clear arc: problem, approach, result, takeaway. End with what the attendee walks away able to do. This abstract should be designed to stick in a reviewer's memory for a specific, identifiable reason.
**Learning Objectives (3):** Each starts with a strong action verb: Deploy, Configure, Evaluate, Build, Implement, Design, Troubleshoot, Compare, Migrate, Debug, Integrate, or Automate.

---

### Abstract B: [Short Label]
Same structure as Abstract A. Different perspective, different hook, different narrative, different selling point. If Abstract A is the version you would submit with confidence, Abstract B should be the version that makes you nervous because it takes a bigger swing.

---

### Head-to-Head Analysis

Think like a poker player evaluating two hands. One abstract might be the safe play: solid, well-structured, reliable 3.5 from any review committee. The other might be the bold play: scores a 5 from committees that value originality, scores a 2 from committees that want conventional structure. Help the speaker understand which bet to make for which conference.

**Conference fit:** Which is stronger for practitioner conferences (KubeCon, DevConf)? For thought-leadership events (Open Source Summit, All Things Open)? For community conferences (FOSDEM, PyCon)? One sentence of reasoning per match, grounded in what each conference's reviewers tend to reward.

**Memorability:** Which sticks in a reviewer's mind after a long day of scoring? Name the specific sentence, structural choice, or claim that creates that stickiness. Be honest: if neither version is truly memorable yet, say so and explain what would fix it.

**Competitive differentiation:** If three other speakers submit on the same topic, which abstract offers something the others probably will not? Identify the common framing most speakers would default to and explain which abstract avoids that gravitational pull.

**First sentence strength:** Quote both opening sentences side by side. Which makes a reviewer want to keep reading, and why? Which one could be swapped into any abstract on any topic without anyone noticing?

**Risk profile:** Label each abstract as "safe" or "bold" and be specific about why. A safe abstract scores consistently well with any committee but rarely gets championed by an individual reviewer. A bold abstract gets championed by one reviewer who fights for it in committee, but risks a low score from reviewers who prefer conventional framing. Name the specific element that creates the risk in the bold version.

### Recommendation

**Submit A to:** [specific conference types or names], because [one sentence of strategic reasoning].
**Submit B to:** [specific conference types or names], because [one sentence of strategic reasoning].
**Combine elements:** Describe one hybrid option taking the strongest pieces from both. Name the specific title, opening hook, and structural framework. Keep to 3 to 4 sentences. The hybrid should not split the difference; it should take the boldest defensible position.

## Style Rules

- Direct, technical voice. No marketing language, no hype. Real tool names, project names, and concrete outcomes.
- Never use em dashes. Use commas, periods, semicolons, "and," or colons instead.
- Do not open with "In this talk," "This session," "Join us," or "Come learn."
- Banned words: "journey," "deep dive," "landscape," "ecosystem" (as metaphor), "leverage," "at scale" (without numbers), "revolutionary," "cutting-edge," "game-changing," "next-generation," "innovative."
- Learning objectives must never start with "Understand," "Learn," "Know," or "Explore."
- Both abstracts must be complete enough to paste into a submission form without editing.
- Vary sentence length and rhythm between the two abstracts so they do not read as templates with swapped words.

## Self-Critique Checklist (verify before outputting)

- [ ] The two abstracts use genuinely different hooks, structures, and selling points, not just different wording of the same idea
- [ ] Each abstract scores well independently. Neither is a strawman written to lose the comparison.
- [ ] At least one abstract contains a specific number, result, or claim bold enough to be memorable after 200 submissions
- [ ] The risk profile analysis is honest. If both abstracts are actually safe, say so.
- [ ] The analysis is specific enough to drive a real submission decision, not generic praise for both
- [ ] No banned buzzwords, filler phrases, or em dashes appear anywhere in the output
- [ ] Every learning objective uses a strong action verb and describes a measurable skill
- [ ] Both first sentences are hooks, not setups or summaries

## Calibration: Bad vs. Good A/B Output

**Bad A/B test (two versions of the same abstract):**
Abstract A opens with: "Deploying ML models at scale requires careful architecture decisions."
Abstract B opens with: "Scaling ML inference presents unique infrastructure challenges."
These are the same sentence wearing different clothes. A reviewer would not remember either one.

**Good A/B test (genuinely different bets):**
Abstract A (safe, evidence-led) opens with: "We serve 200 models on hardware that was struggling with 40. Three architectural changes made the difference, and none of them required new GPUs."
Abstract B (bold, contrarian) opens with: "Most GPU scheduling talks tell you to buy smarter hardware. We did the opposite: we stopped trusting the scheduler and built a routing layer that treats models like cattle, not pets. Our inference costs dropped 73%."

Abstract A is the reliable hand: clear value, specific numbers, reviewers know what they are getting. Abstract B is the swing: it challenges conventional wisdom, and a reviewer who values originality will champion it in committee. A reviewer who wants safe picks will score it lower. The speaker should submit A to conferences where the committee is conservative (enterprise conferences, curated vendor tracks) and B to conferences that reward provocation (FOSDEM, SREcon, KubeCon experience reports).

## Next Steps

After generating your A/B abstracts:
- Run `/cfp-review` on the version you plan to submit for scored feedback and concrete rewrites before the deadline.
- Run `/slide-outliner` to start building the deck once your chosen abstract is accepted.
