# CFP Generator

Generate a submission-ready conference talk proposal from a topic description.

**Input:** $ARGUMENTS
Parse the input for a topic (required) and an optional conference name (e.g., KubeCon, Red Hat Summit, DevConf, PyCon, FOSDEM).

## Thinking Process (follow these steps before writing)

1. **Identify the core insight.** What does this talk offer that no other talk does? Name one sentence that captures it.
2. **Build the narrative arc.** Structure the proposal as: Problem (what's broken or hard) -> Approach (what you did differently) -> Result (what changed, with evidence) -> Takeaway (what the audience does Monday morning).
3. **Craft the hook.** Write the first sentence of the abstract to make a reviewer stop scrolling. Use a concrete problem, a surprising statistic, or a provocative question. Not a setup. Not a summary.
4. **Write learning objectives that pass the "prove it" test.** Each one should describe something the attendee can demonstrate after the talk, not something they "understand."
5. **Check the bio.** The speaker bio must connect to THIS talk's subject, not list general credentials.

## Anti-Patterns (hard rules)

Do NOT open with "In this talk," "This session," "Join us," or "Come learn." These are dead air.
Do NOT use: "journey," "deep dive," "landscape," "ecosystem" (as metaphor), "leverage," "at scale" (without numbers), "revolutionary," "cutting-edge," "game-changing," "next-generation," or "innovative."
Do NOT write learning objectives starting with "Understand," "Learn," "Know," "Appreciate," or "Explore." These are not measurable.
Do NOT list technologies without explaining the problem they solve. "We used Tekton, ArgoCD, and Knative" means nothing without "to cut deployment time from 4 hours to 12 minutes."

Bad first sentence: "Kubernetes has become the standard for container orchestration."
Good first sentence: "Your CI pipeline breaks every Friday at 4pm, and nobody knows why."

Bad learning objective: "Understand how service meshes work."
Good learning objective: "Configure Istio traffic splitting to run canary deployments with less than 1% error budget risk."

## Output Format

### Title
Specific, concrete, and clear about what the attendee gains. Patterns that work: "How We Did X with Y," "Building Z: Lessons from Production," or "[Number] Things We Learned Running X at Y Scale."

### Abstract
If a conference is specified, match its typical word count: KubeCon (200-250 words), Red Hat Summit (150-200), DevConf (150-250), PyCon (300-400), FOSDEM (100-200). Otherwise, write 200-300 words.
The first sentence must be a hook: a real pain point, a counterintuitive fact, or a question practitioners are actually wrestling with. Follow the narrative arc: problem, approach, result, takeaway. Use active voice, concrete language, and real tool/project names. End with what the attendee walks away able to do.

### Detailed Outline
Structured sections with time allocations for a 30-40 minute talk. Include: problem statement, 3-4 technical sections, demo or case study moments, and wrap-up with Q&A.

### Learning Objectives
3-4 objectives, each starting with a strong action verb: Deploy, Configure, Evaluate, Build, Implement, Design, Troubleshoot, Compare, Migrate, Debug, Integrate, or Automate.

### Target Audience and Prerequisites
Who this talk is for (roles, experience level), what they should already know, and what they do NOT need to know.

### Session Format
Recommend Talk (30-40 min), Workshop (90-120 min), or Lightning Talk (5-10 min) with a one-sentence justification.

### Speaker Bio Template
2-3 sentences with placeholders. Connect the bio to this talk's subject matter, not generic credentials.

## Conference Tailoring
- **KubeCon/CloudNativeCon:** Cloud native, Kubernetes, CNCF projects, production war stories. Use CNCF CFP structure.
- **Red Hat Summit:** Enterprise open source, hybrid cloud, automation. Highlight customer or partner outcomes with metrics.
- **DevConf:** Upstream contributions, developer tooling, hands-on content. Community-oriented and practical.
- **PyCon:** Python-specific tooling, libraries, community practices. Beginner-friendly framing where appropriate. Longer abstracts (300-400 words).
- **FOSDEM:** Deeply technical, upstream-focused, substance over polish. Short abstracts (100-200 words).
- **AnsibleFest:** Automation, playbooks, collections, real-world operations. Show the before and after.
- **Open Source Summit:** Cross-project collaboration and ecosystem impact for a broad open source audience.

## Self-Critique Checklist (verify before outputting)
- [ ] First sentence is a hook, not a setup or summary
- [ ] No banned buzzwords or filler phrases appear anywhere
- [ ] Every learning objective uses a strong action verb and is measurable
- [ ] Abstract follows the narrative arc: problem, approach, result, takeaway
- [ ] Abstract tells a story, not a feature list
- [ ] Title is specific enough that a reviewer knows exactly what the talk covers
- [ ] Speaker bio connects to this talk's topic
- [ ] No em dashes anywhere. Use commas, periods, colons, or "and" instead.

## Voice
Direct, technical, specific. No hype. Short sentences, active voice. Show what the attendee gains. Never tell them it will be "valuable."
