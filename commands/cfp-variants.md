# CFP Variants

Generate three genuinely distinct CFP submissions for the same talk topic, each with a different narrative structure and strategic angle.

## Input

$ARGUMENTS

Parse the input for a talk topic, technical area, or project name. If the input includes context about the speaker's experience or results, use that to ground each variant in specifics.

## Chain of Thought Process

Work through these steps explicitly before generating output.

**Step 1: Identify the core technical contribution.** In one sentence, state what the audience will learn or be able to do after this talk. This is the anchor. Every variant must deliver on it.

**Step 2: Brainstorm at least 5 possible angles.** Consider: a production war story, a hands-on tutorial, a comparison or decision framework, a myth-busting contrarian take, a beginner's on-ramp, an architecture deep dive, a "what is coming next" forward look, or a lessons-learned retrospective. List them as bullet points with one sentence each.

**Step 3: Select the 3 most distinct angles.** Distinct means different in both framing AND narrative structure. Assign each variant a different structure from this list:
- **Story arc:** Setup, rising tension, crisis, resolution, lesson. Opens with a concrete moment.
- **Problem/solution framework:** State the problem with evidence, walk through the solution, show measurable outcomes.
- **Comparison framework:** Present two or more approaches side by side, evaluate tradeoffs with real criteria, land on actionable guidance.

Each variant MUST use a different one of these three structures. This is not optional.

**Step 4: Self-critique before output.** For each variant, verify: (a) a reviewer who values practical depth would select at least one, (b) a reviewer who values narrative and storytelling would select at least one, (c) a reviewer who values clear decision-making frameworks would select at least one. If any check fails, revise that variant.

## Output Format

For each of the three variants, generate:

### Variant [1/2/3]: [Short Label]

**Narrative Structure:** State which structure this variant uses (story arc, problem/solution, or comparison).

**Angle:** One sentence describing the strategic framing.

**Title:** A conference-ready title. No colons separating a clever phrase from a subtitle unless the subtitle adds real information.

**Abstract (200 to 300 words):** A complete, submission-ready abstract. The first sentence must hook the reader with a concrete problem, a surprising result, or a specific number. Never open with "In this talk" or "This session." Avoid: "revolutionary," "cutting-edge," "game-changing," "next-generation," "disruptive," "unlock," "harness," and "leverage."

**Target Conferences:** Name 2 to 3 specific conferences or track types where this framing fits, with one sentence of reasoning for each.

---

## Competitive Differentiation

After generating all three variants, add a section:

### How These Stand Apart

For each variant, answer: "If a program committee has already accepted two talks on this topic, why would they still pick this one?" Identify the specific gap each variant fills. Call out the common framings that other speakers are likely submitting and explain how each variant avoids those well-worn paths.

## Recommendation

End with an actionable recommendation using this structure:

**Strongest overall:** Variant [N], because [specific reason tied to the abstract's hook or structure].

**Conference-specific guidance:**
- For [specific conference name]: submit Variant [N] because [reason tied to that conference's review criteria or audience].
- For [specific conference name]: submit Variant [N] because [reason].
- For [specific conference name]: submit Variant [N] because [reason].

**Hybrid suggestion:** Describe a fourth possible submission that combines the strongest elements from all three. Identify which title to use, which opening hook, and which structural framework. Keep this to 3 to 4 sentences.

## Style Rules

- Write in a direct, technical voice. No marketing language, no hype.
- Be specific: use real tool names, project names, metric types, and concrete outcomes.
- Never use em dashes. Use commas, periods, semicolons, "and," or colons instead.
- Each abstract must be complete enough to paste into a submission form and click submit.
- Vary sentence length and rhythm across variants so they do not read as templates with swapped words.
