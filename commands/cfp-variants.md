# CFP Variants

Most speakers submit one abstract and pray. The best speakers know that the SAME content can be a war story, a tutorial, or a contrarian take, and each framing appeals to a different type of reviewer.

A program committee isn't a monolith. One reviewer loves production war stories. Another wants practical how-to content. A third is looking for the surprising take nobody else submitted. Three variants let you play to all three.

Generate three genuinely distinct CFP submissions for the same talk topic, each with a different narrative structure and strategic angle. Think like a speaking coach who also understands marketing positioning.

## Input

$ARGUMENTS

Parse the input for a talk topic, technical area, or project name. If the input includes context about the speaker's experience or results, use that to ground each variant in specifics.

## Handling Edge Cases (check before proceeding)

**Vague topic with no formed talk.** If the input is broad ("something about Kubernetes" or "AI stuff"), do NOT generate three vague variants. Ask 3 to 4 sharpening questions first: What specific problem have you solved? What surprised you? What would you tell a colleague over coffee? Three variants of a vague idea are three flavors of generic. You need a real story before the variants have strategic value.

**First-time speaker.** If the user is new to speaking, make at least one variant a straightforward problem/solution structure. This gives the speaker a safe submission for their first conference while the other variants let them take bigger swings. Note conferences that welcome new speakers (DevConf, All Things Open, PyCon, DjangoCon) in the conference-specific guidance.

**Unshipped product or pre-release work.** If the talk covers something not yet in production, all three variants must be honest about it. The story arc variant can frame the work as a design journey. The problem/solution variant can focus on early benchmarks and decisions. The comparison variant can evaluate approaches without claiming production outcomes you do not yet have. Never fabricate metrics in any variant.

**Unusual CFP requirements.** If the user mentions a conference requiring nonstandard fields (video submission, diversity statement, extended outline), generate those fields for the recommended variant and note how the framing would shift for the other two.

## Chain of Thought Process

Work through these steps explicitly before generating output.

**Step 1: Identify the core technical contribution.** In one sentence, state what the audience will learn or be able to do after this talk. This is the anchor that every variant must deliver on, no matter how different the framing.

**Step 2: Map the reviewer psychology.** Program committees review dozens of submissions on popular topics. When a reviewer reads your abstract, they are unconsciously comparing it to every other submission on that topic. Each variant should trigger a different mental comparison, one that you win. Before brainstorming angles, consider: What are the obvious framings that 18 out of 20 speakers will default to? Name those explicitly so you can avoid them.

**Step 3: Brainstorm at least 5 possible angles.** Consider: a production war story, a hands-on tutorial, a comparison or decision framework, a myth-busting contrarian take, a beginner's on-ramp, an architecture deep dive, a "what is coming next" forward look, or a lessons-learned retrospective. List them as bullet points with one sentence each.

**Step 4: Select the 3 most distinct angles.** Distinct means different in both framing AND narrative structure. If 20 people submit talks on the same topic, 18 of them will frame it the same way. Your job is to be one of the other two. Assign each variant a different structure from this list:

- **Story arc:** Setup, rising tension, crisis, resolution, lesson. Opens with a concrete moment. This structure wins over reviewers who value narrative and lived experience. It signals "I have actually done this, and something went wrong, and I learned from it."
- **Problem/solution framework:** State the problem with evidence, walk through the solution, show measurable outcomes. This structure wins over reviewers who value practical depth and reproducibility. It signals "you will leave this talk with something you can use on Monday."
- **Comparison framework:** Present two or more approaches side by side, evaluate tradeoffs with real criteria, land on actionable guidance. This structure wins over reviewers who value clear thinking and intellectual honesty. It signals "I will save you six months of evaluating this yourself."

Each variant MUST use a different one of these three structures. This is not optional.

**Step 5: Pressure-test for competitive positioning.** For each variant, ask: "If a reviewer has already read five submissions on this exact topic, what makes this one feel different in the first sentence?" If the answer is "nothing," revise the angle until it passes. The goal is not just to be good. The goal is to be uncategorizable alongside the other submissions.

**Step 6: Self-critique before output.** For each variant, verify: (a) a reviewer who values practical depth would select at least one, (b) a reviewer who values narrative and storytelling would select at least one, (c) a reviewer who values clear decision-making frameworks would select at least one. If any check fails, revise that variant. Also verify that the three variants would appeal to genuinely different people. If two variants would attract the same reviewer profile, one of them needs to change.

## Output Format

For each of the three variants, generate:

### Variant [1/2/3]: [Short Label]

**Narrative Structure:** State which structure this variant uses (story arc, problem/solution, or comparison).

**Angle:** One sentence describing the strategic framing. Then add one sentence explaining what type of reviewer this angle is designed to win over.

**Title:** A conference-ready title. No colons separating a clever phrase from a subtitle unless the subtitle adds real information. The title should be specific enough that a reviewer can picture the talk before reading the abstract.

**Abstract (200 to 300 words):** A complete, submission-ready abstract. The first sentence must hook the reader with a concrete problem, a surprising result, or a specific number. Never open with "In this talk" or "This session." Avoid: "revolutionary," "cutting-edge," "game-changing," "next-generation," "disruptive," "unlock," "harness," and "leverage." Remember that a reviewer will spend 90 seconds on your abstract. The first two sentences determine whether they keep reading or start skimming. Make those sentences do real work.

**Target Conferences:** Name 2 to 3 specific conferences or track types where this framing fits, with one sentence of reasoning for each.

---

## Competitive Differentiation

After generating all three variants, add a section:

### How These Stand Apart

For each variant, answer: "If a program committee has already accepted two talks on this topic, why would they still pick this one?" Identify the specific gap each variant fills.

Then add a subsection called **The Submissions You Are Competing Against.** Describe the 2 to 3 most common framings that other speakers are likely submitting on this topic. Be specific about the patterns: the typical titles, the usual opening sentences, the predictable structures. For each common framing, explain how each of your variants sidesteps it. This is where you prove that the variants are not just different from each other. They are different from the field.

## Recommendation

End with an actionable recommendation using this structure:

**Strongest overall:** Variant [N], because [specific reason tied to the abstract's hook, structure, or competitive positioning].

**Conference-specific guidance:**
- For [specific conference name]: submit Variant [N] because [reason tied to that conference's review criteria or audience].
- For [specific conference name]: submit Variant [N] because [reason].
- For [specific conference name]: submit Variant [N] because [reason].

**Hybrid suggestion:** Describe a fourth possible submission that combines the strongest elements from all three. Identify which title to use, which opening hook, and which structural framework. Explain which reviewer psychology this hybrid targets. Keep this to 3 to 5 sentences.

## Style Rules

- Write in a direct, technical voice. No marketing language, no hype.
- Be specific: use real tool names, project names, metric types, and concrete outcomes.
- Never use em dashes. Use commas, periods, semicolons, "and," or colons instead.
- Each abstract must be complete enough to paste into a submission form and click submit.
- Vary sentence length and rhythm across variants so they do not read as templates with swapped words.
- Write as a strategic coach, not a content mill. Every sentence should feel like it was chosen, not generated.

## Calibration: Bad vs. Good Variant Differentiation

**Bad variants (same idea, different words):**
- Variant 1: "Scaling GPU Scheduling for Modern Workloads", opens with "GPU utilization is a growing challenge..."
- Variant 2: "Efficient GPU Management in Kubernetes", opens with "Managing GPU resources effectively..."
- Variant 3: "Optimizing GPU Allocation for ML Training", opens with "Machine learning teams need better GPU access..."

These are the same talk with different titles. A reviewer who reads all three learns nothing new from the second or third.

**Good variants (genuinely different angles, different reviewers want each one):**
- Variant 1 (Story arc): "How We Stopped Wasting $1.2M in GPU Capacity", opens with "Our ML teams waited four hours for GPUs while utilization sat at 35%. Six months later, it was 72%. This is the architecture that got us there."
- Variant 2 (Problem/solution): "Three Scheduling Plugins That Cut GPU Idle Time in Half", opens with "Default Kubernetes scheduling ignores GPU topology. That single fact costs most clusters 40-60% of their accelerator budget. Here are the three plugins we wrote to fix it, with configs you can deploy this week."
- Variant 3 (Comparison): "GPU Scheduling: Bin-Packing vs. Topology-Aware vs. Time-Slicing in Production", opens with "We benchmarked three GPU scheduling strategies on the same 48-node cluster over 90 days. The winner was not the one we expected."

Each of these wins with a different reviewer. The first wins the practitioner who values war stories. The second wins the implementer who wants something to deploy Monday. The third wins the architect comparing strategies.

## Next Steps

After picking your strongest variant:
- Run `/cfp-review` to get scored feedback and paste-ready rewrites before submitting.
