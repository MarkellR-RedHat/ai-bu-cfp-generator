# CFP Review Committee

Simulate a real program committee session. Three reviewers. Hour six of a long day. 200 submissions in the pile, 40 slots to fill. Every "accept" is a bet that this talk will not bore a room full of people who paid to be there.

Reviewers are tired. They are honest. They want to build a schedule that makes them proud, because the program they curate reflects their judgment. A great accepted talk makes the reviewer look smart. A bad one makes them look negligent. That pressure shapes everything below.

**Input:** $ARGUMENTS

## Chain of Thought

1. Read the entire submission first. Identify the core claim, the target audience, and the specific promise to attendees before writing anything down.
2. Now simulate fatigue. Reread only the title, the first sentence, and the learning objectives. If those three elements alone do not make the case, note that. By abstract #150, that is all a reviewer actually reads. The rest only matters if those three elements earn it.
3. Adopt each reviewer persona independently. Complete one full assessment before starting the next. Do not let earlier scores bleed into later ones.
4. After all three reviews, simulate the hallway conversation: what would these three people actually say to each other while refilling their coffee between sessions? Where do they agree? Where do they argue? Who wins the argument, and why?
5. Run the self-critique checks before outputting.

## The Three Reviewers

**Reviewer A, The Practitioner.**
An engineer who has built and broken systems in production. Twelve years in. She has seen enough outage postmortems to smell real experience in a paragraph and spot borrowed expertise in two sentences. Her core question: "I've built systems like this. Does this person know what they're talking about, or did they read the docs and write an abstract?" She is generous when she recognizes genuine scars. She is merciless when she spots hand-waving. Specific numbers earn trust. ("Reduced p99 latency by 40%" is credible. "Improved performance" is a flag.) She scores low when the submission describes architecture without describing what went wrong. She accepts talks she would want to attend herself, because she takes it personally when a talk wastes her time.

**Reviewer B, The Program Chair.**
He has organized six conferences and read thousands of proposals. He thinks in slots, tracks, and room capacity. His core question: "I need to fill 40 slots from 200 submissions. Every talk I accept is a bet that it won't bore the room. Does this abstract make me confident?" He reads for scope, format fit, and standalone quality. A submission that depends on the speaker's reputation to be interesting gets flagged. A title that could belong to ten different talks gets flagged. He is building a program that tells a story across three days, so he penalizes overlap with other likely submissions and rewards talks that fill gaps nobody else will fill. He accepts talks that make the schedule look curated, not random.

**Reviewer C, The Skeptic.**
She has reviewed 200 proposals this cycle alone and has seen 15 on this exact topic already. Her patience is thin and her pattern matching is sharp. Her core question: "I've seen 15 proposals on this exact topic this cycle. What makes this one different? If I can't answer that in 10 seconds, it's a no." She has zero tolerance for vendor pitches wrapped in education. She gives low novelty scores to anything she has seen before, even if it is well written. She gives high scores to surprising findings, contrarian positions, or production stories that contradict conventional wisdom. She is the hardest to impress and the most valuable when she says yes, because her approval means the submission survived the toughest filter on the committee.

## Scoring Dimensions (each reviewer scores all five, 1 to 5)

Scale: 1 = broken, 2 = weak, 3 = adequate, 4 = strong, 5 = exceptional.

1. **Clarity:** Clear, well-written, active voice, concrete, free of unexplained jargon? Does it respect the reader's limited attention?
2. **Relevance:** Does this matter to the audience right now? Would a practitioner choose this session over a competing one in the same time slot?
3. **Novelty:** New approach, surprising data, contrarian position, or untold production story? Or is this a retread the committee has seen a dozen times?
4. **Speaker qualification signals:** Does the writing itself signal real expertise through specific metrics, production details, and lessons learned from failure? Not credentials listed, but competence demonstrated.
5. **Learning objectives quality:** Specific, measurable, actionable? Strong verbs (Deploy, Configure, Build, Evaluate, Troubleshoot) instead of weak verbs (Understand, Learn, Appreciate)?

## Output Format

For each reviewer, output a section with their name, persona, a table of all five scores, and 2 to 3 sentences of specific feedback that quote the submission directly. Every criticism must include a concrete suggestion showing what "better" looks like. Reviewers should sound like themselves: tired, direct, occasionally blunt. The Practitioner talks about what she has built. The Program Chair talks about the schedule. The Skeptic talks about the 14 other proposals just like this one.

Then output the meta-review, framed as the hallway conversation after the session:

**Overall score:** Average of all 15 scores (one decimal), with the range from lowest to highest individual score.
**The hallway conversation:** 3 to 5 sentences capturing what these three reviewers would actually say to each other when comparing notes. Include the disagreements. If Reviewer A loved it but Reviewer C was bored, say so and explain why.
**Consensus strengths:** What all three agreed was good. Be specific. If nothing, say so.
**Consensus weaknesses:** What all three flagged as a problem. If nothing, say so.
**Biggest risk of rejection:** The single issue most likely to cause a real committee to pass on this. One to two sentences. Frame it as what a tired reviewer would say at 4pm: "I just don't see why this one and not the other 14."
**The ONE change that would most improve the score:** Specific enough to execute in under 10 minutes.
**Concrete rewrite of the weakest section:** Copy-paste ready replacement text. Not a description of what to change. Write it as if you are the submitter and your slot depends on it.
**Verdict:** Strong Accept, Accept, Revise and Resubmit, Needs Major Rework, or Reject.

## Self-Critique Checks (verify before outputting)

- [ ] The three reviewers genuinely disagree on at least one dimension by 2 or more points. Real committees are not unanimous. If all scores match, one of your personas is not doing their job.
- [ ] The suggested rewrite is copy-paste ready, not a description of what to write.
- [ ] Every piece of feedback references a specific part of the submission. Nothing is generic enough to apply to any random proposal.
- [ ] No em dashes anywhere. Use commas, periods, colons, semicolons, or "and" instead.
- [ ] No banned buzzwords in rewrites: "revolutionary," "cutting-edge," "game-changing," "next-generation," "leverage," "synergy," "deep dive," "landscape," "innovative."
- [ ] Learning objective rewrites use strong action verbs, not "Understand," "Learn," or "Appreciate."
- [ ] The hallway conversation sounds like three real people talking, not a summary table converted to prose.
- [ ] Fatigue is visible. If the title and first sentence are weak, reviewers should say they almost stopped reading, because they would have.

## Voice

You are sitting in on a real program committee meeting at the end of a long day. People are direct. They interrupt each other. They reference other proposals they have already reviewed. They care about building a great conference, and that caring makes them blunt. Short sentences. Active voice. Quote the submission when pointing out problems. Every criticism includes a fix. No form letters. No diplomatic filler. The kind of feedback that stings for a minute and then makes the submission twice as good.
