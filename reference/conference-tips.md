# Conference CFP Tips and Reference

A comprehensive reference for conference CFP submissions: what major conferences look for, how their review processes work, common pitfalls, and practical advice for getting your talk accepted.

## What Program Committees Look For (Ranked by Impact)

Based on publicly available reviewer guidelines and patterns across 25+ conferences, here is what matters most, in order:

1. **Clear, specific value proposition.** The reviewer should know within 30 seconds what the attendee will learn. If your abstract requires re-reading to understand the point, it needs work.
2. **Evidence of real experience.** Specific production details, metrics, failure stories, and tool-level specificity signal that the speaker has actually done this work, not just read about it.
3. **Appropriate scope for the session length.** A 30-minute talk that tries to cover an entire platform will feel shallow. A 5-minute lightning talk that requires 10 minutes of background does not work. Pick one angle and go deep.
4. **Actionable takeaway.** Talks that end with "and now you know about X" lose to talks that end with "and now you can do X on Monday morning."
5. **Relevance to the conference and track.** Tailor your submission. A Kubernetes-specific talk does not belong at PyCon. A beginner tutorial does not belong in an advanced track.
6. **Novelty.** Has this exact talk been given before? If so, what is new? Reviewers check past schedules.
7. **Strong writing quality.** Typos, grammar issues, and unclear sentences signal a talk that may also be poorly prepared.
8. **Not a vendor pitch.** Conference reviewers across every event flag proposals that read like product demos. Frame around the problem and the open source solution.

## Conference Directory

### KubeCon / CloudNativeCon (CNCF)

| Detail | Info |
|--------|------|
| Abstract limit | 200-300 words |
| Description limit | 900 words max |
| Session types | Talk (35 min), Tutorial (90 min), Lightning Talk (5 min) |
| Review process | Blind review, 3-5 reviewers per submission |
| Acceptance rate | Roughly 15-20% (varies by track) |
| CFP timeline | Opens ~5 months before event, closes ~3 months before |

**What reviewers prioritize:** Relevance to CNCF ecosystem. End-user production stories over vendor content. Novelty (reviewers check past KubeCon schedules). Technical depth with concrete results.

**Scoring rubric:** Technical merit, relevance to track, clarity of abstract, and novelty. Each scored independently.

**Tactical tip:** Co-presenting with an end-user customer strengthens your submission significantly. CNCF actively prioritizes end-user perspectives.

### Red Hat Summit

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 500 words |
| Session types | Breakout (40 min), Lab (90 min), Lightning Talk (10 min) |
| Review process | Named review, internal and external reviewers |
| CFP timeline | Opens ~6 months before event |

**What reviewers prioritize:** Business impact and customer outcomes. Cross-product integration stories (OpenShift + Ansible + RHEL). Customer co-presentations. Enterprise scale and production hardening.

**Tactical tip:** Lead with measurable outcomes ("reduced deployment time by 70%"). Customer co-presenters are strongly encouraged and significantly boost acceptance odds.

### DevConf.cz / DevConf.us

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | No strict limit |
| Session types | Talk (35 min), Workshop (60-90 min), Lightning Talk (15 min) |
| Review process | Named review, community-driven |
| Acceptance rate | Higher than commercial conferences |
| CFP timeline | Opens ~4 months before event |

**What reviewers prioritize:** Upstream community contributions. Developer tooling and practical content. Open source first. New speakers are actively welcomed.

**Tactical tip:** If this is your first conference talk, say so. DevConf actively supports new speakers and reviewers give bonus consideration for first-timers.

### PyCon US

| Detail | Info |
|--------|------|
| Abstract limit | 300 words |
| Description/outline limit | 400 words |
| Session types | Talk (30 min), Tutorial (3 hours), Poster, Lightning Talk (5 min) |
| Review process | Blind review, detailed reviewer guidelines published |
| Acceptance rate | ~20-25% for talks, ~30% for tutorials |
| CFP timeline | Opens ~6 months before event, closes ~4 months before |

**What reviewers prioritize:** Accessibility to a broad Python audience. Topic diversity (not just web frameworks and data science). Outline quality (reviewers read your outline carefully). Speaker experience is explicitly secondary to proposal quality.

**Scoring:** PyCon tells reviewers not to weigh speaker experience heavily. A first-time speaker with a clear, well-scoped proposal beats a veteran with a vague one.

**Tactical tip:** Unique topics or underrepresented areas of Python score well. PyCon actively seeks diversity of subject matter.

### FOSDEM

| Detail | Info |
|--------|------|
| Abstract limit | 200 words (varies by devroom) |
| Description limit | Varies by devroom |
| Session types | Talk (20-50 min, varies by devroom), Lightning Talk (15 min) |
| Review process | Devroom organizer review, not blind |
| CFP timeline | Devroom CFPs open ~2 months before event |

**What reviewers prioritize:** Technical depth. FOSDEM audiences are practitioners who build the software. Surface-level overviews get rejected. Upstream focus on free and open source software. Devroom fit (each devroom has its own scope and committee).

**Tactical tip:** Submit to a specific devroom, not the main track (main track is invite-only). Read the devroom description carefully. A great talk in the wrong devroom gets rejected. Lightning talks are a good entry point for first-timers.

### Open Source Summit (Linux Foundation)

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 600 words |
| Session types | Session (30 min), Tutorial (90 min), BoF (60 min), Lightning Talk (5-10 min) |
| Review process | Blind review, multiple tracks |
| CFP timeline | Opens ~5 months before event |

**What reviewers prioritize:** Cross-project collaboration. Ecosystem-level impact. Broad open source audience. Both technical and community content.

**Tactical tip:** Emphasize cross-project impact. Talks that connect multiple communities or show how different projects work together score well.

### AnsibleFest / Ansible Community Events

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 500 words |
| Session types | Breakout (40 min), Workshop (90 min), Lightning Talk (10 min) |
| Review process | Named review |
| CFP timeline | Opens ~5 months before event |

**What reviewers prioritize:** Real-world automation stories with measurable outcomes. Show your playbooks, roles, or collections. Code examples expected. Operations-focused content performs well.

**Tactical tip:** Include before/after metrics for your automation. "Reduced provisioning time from 3 days to 20 minutes" beats "automated our provisioning."

### SREcon (USENIX)

| Detail | Info |
|--------|------|
| Abstract limit | 250 words |
| Description limit | 600 words |
| Session types | Talk (25 min), Training (half-day or full-day) |
| Review process | Named review, program committee of experienced SREs |
| Acceptance rate | ~15-20% |
| CFP timeline | Opens ~6 months before event |

**What reviewers prioritize:** Production experience with specific systems. Incident analysis and post-mortem insights. Quantitative data on reliability improvements. Transferable lessons, not just "how we do it at [company]."

**Tactical tip:** SREcon reviewers are experienced operators. Hand-waving about "reliability" without specific metrics or failure analysis will not pass muster.

### All Things Open

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | No strict limit |
| Session types | Talk (30-45 min), Workshop (90 min), Lightning Talk (10 min) |
| Review process | Named review |
| CFP timeline | Opens ~5 months before event |

**What reviewers prioritize:** Broad accessibility. Open source community building. Mix of technical and cultural content. Beginner-friendly content welcome alongside advanced topics.

**Tactical tip:** All Things Open draws a diverse audience with varied experience levels. Clearly state the target skill level in your prerequisites.

### SCALE (Southern California Linux Expo)

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 500 words |
| Session types | Talk (45 min), Tutorial (90 min), Lightning Talk (5 min) |
| Review process | Community-driven |
| CFP timeline | Opens ~4 months before event |

**What reviewers prioritize:** Linux and open source community focus. Practical, hands-on content. Community-oriented. Long talk slots (45 min) allow for depth.

**Tactical tip:** SCALE's 45-minute slots give you more room than most conferences. Use the extra time for a live demo rather than trying to cover more topics.

### GopherCon

| Detail | Info |
|--------|------|
| Abstract limit | 250 words |
| Description limit | 500 words |
| Session types | Talk (25 or 45 min), Tutorial (3 hours), Lightning Talk (7 min) |
| Review process | Blind review |
| CFP timeline | Opens ~6 months before event |

**What reviewers prioritize:** Go-specific content. Idiomatic Go practices. Performance analysis with benchmarks. Standard library and toolchain content. Community building.

**Tactical tip:** Show your benchmarks. GopherCon reviewers respond well to talks backed by `go test -bench` output and profiling data.

### RustConf

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 400 words |
| Session types | Talk (30 min) |
| Review process | Blind review |
| CFP timeline | Opens ~5 months before event |

**What reviewers prioritize:** Rust-specific technical depth. Ownership, lifetimes, and type system insights. Production Rust usage. Compiler and toolchain topics. Accessibility for intermediate Rustaceans.

**Tactical tip:** Talks that show surprising or non-obvious Rust patterns backed by real code tend to do well. Avoid "Why We Rewrote X in Rust" without novel technical insights.

### GitHub Universe

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 500 words |
| Session types | Session (30 min), Workshop (90 min) |
| Review process | Named review |
| CFP timeline | Opens ~4 months before event |

**What reviewers prioritize:** Developer workflow improvements. CI/CD, Actions, and DevOps practices. Open source community stories. Security and supply chain topics.

**Tactical tip:** Tie your talk to a specific GitHub feature or workflow improvement. Concrete before/after metrics on developer productivity score well.

### QCon

| Detail | Info |
|--------|------|
| Abstract limit | 300 words |
| Description limit | 600 words |
| Session types | Talk (50 min), Workshop (half-day) |
| Review process | Track host curated |
| CFP timeline | Invitation-based for many tracks, open CFP for others |

**What reviewers prioritize:** Practitioner-led content. Production architecture case studies. QCon explicitly avoids vendor pitches. Long-form talks (50 min) allow for significant depth.

**Tactical tip:** QCon track hosts curate their own tracks. Research who is hosting the track you want and tailor your pitch to their stated focus area.

### NDC (Norwegian Developers Conference)

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 500 words |
| Session types | Talk (60 min), Lightning Talk (10 min), Workshop (full-day) |
| Review process | Named review |
| CFP timeline | Opens ~5 months before event |

**What reviewers prioritize:** Developer experience and productivity. Cross-language topics welcome. Software architecture and design. Community and culture talks alongside technical content.

**Tactical tip:** NDC's 60-minute slots are the longest standard talk format in the industry. Design your talk to use that time well rather than padding a 30-minute talk.

### DjangoCon

| Detail | Info |
|--------|------|
| Abstract limit | 300 words |
| Description limit | 500 words |
| Session types | Talk (25 or 45 min), Tutorial (3 hours), Lightning Talk (5 min) |
| Review process | Blind review |
| CFP timeline | Opens ~5 months before event |

**What reviewers prioritize:** Django-specific topics and community. Accessibility and inclusion. Both beginner and advanced content valued. Real-world Django deployment and scaling stories.

**Tactical tip:** DjangoCon actively encourages first-time speakers. If you have a production Django story with specific details, that often beats a generic web framework talk.

### Devoxx

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 500 words |
| Session types | Conference talk (50 min), Deep dive (3 hours), Quickie (15 min), Tools-in-Action (30 min) |
| Review process | Community voting + program committee |
| CFP timeline | Opens ~6 months before event |

**What reviewers prioritize:** JVM ecosystem, architecture patterns, cloud native. Developer productivity. A mix of beginner and advanced content. Community voting is part of the selection process.

**Tactical tip:** Devoxx uses community voting, which means your title and abstract need to appeal to a broad audience, not just specialists.

### EuroPython

| Detail | Info |
|--------|------|
| Abstract limit | 300 words |
| Description limit | 500 words |
| Session types | Talk (30 or 45 min), Tutorial (3 hours), Lightning Talk (5 min), Poster |
| Review process | Blind review |
| CFP timeline | Opens ~5 months before event |

**What reviewers prioritize:** Python ecosystem depth. International perspective. Community building. Both scientific/data and web/systems content welcome. Accessibility.

**Tactical tip:** EuroPython draws a more internationally diverse audience than PyCon US. Consider whether your talk's examples and context translate across regions.

### HashiConf

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 500 words |
| Session types | Talk (30 min), Workshop (90 min) |
| Review process | Named review |
| CFP timeline | Opens ~5 months before event |

**What reviewers prioritize:** HashiCorp tool ecosystem (Terraform, Vault, Consul, Nomad, Packer). Production use cases with scale numbers. Infrastructure automation. Multi-cloud and hybrid scenarios.

**Tactical tip:** Frame around the operational problem, not the tool. "How We Manage 2,000 Terraform Modules Without Going Insane" beats "Terraform Best Practices."

### PromCon (Prometheus Conference)

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 500 words |
| Session types | Talk (20-40 min), Lightning Talk (5 min) |
| Review process | Program committee review |
| CFP timeline | Opens ~4 months before event |

**What reviewers prioritize:** Prometheus ecosystem depth. PromQL expertise. Scaling and federation challenges. Integration with Grafana, Alertmanager, Thanos, Mimir. Production monitoring architecture.

**Tactical tip:** PromCon is small and deeply technical. Show your PromQL. Talks with actual query examples and dashboard screenshots from production score well.

### DockerCon

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 500 words |
| Session types | Talk (30 min), Workshop (90 min) |
| Review process | Named review |
| CFP timeline | Opens ~4 months before event |

**What reviewers prioritize:** Container workflows. Developer experience. Build optimization. Supply chain security. Multi-platform builds. Docker Compose and local development.

**Tactical tip:** Docker is refocusing on developer experience. Talks about build optimization, Compose workflows, and local development environments resonate more than orchestration topics.

### Monitorama

| Detail | Info |
|--------|------|
| Abstract limit | 300 words |
| Description limit | No strict limit |
| Session types | Talk (30 min), Lightning Talk (5 min) |
| Review process | Program committee |
| Acceptance rate | ~10-15% |
| CFP timeline | Opens ~4 months before event |

**What reviewers prioritize:** Monitoring and observability depth. Novel approaches. Production war stories with dashboards and alerts. Vendor-neutral technical content. Community focus.

**Tactical tip:** Monitorama is one of the most selective conferences. Your abstract must show something the audience has not seen before. Retreads of common monitoring advice will not make the cut.

### linux.conf.au / LCA

| Detail | Info |
|--------|------|
| Abstract limit | 200 words |
| Description limit | 500 words |
| Session types | Talk (45 min), Tutorial (90 min), Lightning Talk (5 min), Miniconf |
| Review process | Community-driven |
| CFP timeline | Opens ~4 months before event |

**What reviewers prioritize:** Linux kernel and systems programming. Open source community. Technical depth. Australian and Asia-Pacific community building. Miniconfs allow focused topics.

**Tactical tip:** LCA's miniconf system lets you propose an entire track if your topic has enough depth. Consider organizing a miniconf if you have a community around your topic.

## What Reviewers Actually Prioritize (Deep Dive)

### KubeCon / CloudNativeCon (CNCF) Reviewer Guidelines

The CNCF publishes reviewer guidelines emphasizing:
- **Relevance to cloud native ecosystem.** Proposals must connect to CNCF projects, cloud native patterns, or the Kubernetes ecosystem specifically. Generic infrastructure talks that do not mention the cloud native stack score lower.
- **End-user perspective.** CNCF actively prioritizes real-world production stories over vendor-driven content. Proposals from end users or featuring end-user co-presenters score higher.
- **Novelty over repetition.** Reviewers check past KubeCon schedules. If the same topic was covered last cycle, your version must bring new data, a new angle, or updated results.
- **Blind review.** CNCF uses blind review for most tracks. Your abstract must stand on its own without relying on your name or employer to carry it.

### FOSDEM Devroom Organizer Priorities

FOSDEM devroom organizers have shared these priorities:
- **Technical depth.** FOSDEM audiences are practitioners who build the software. Surface-level overviews get rejected. Show code, architecture, or protocol-level detail.
- **Upstream focus.** FOSDEM prioritizes free and open source software contributions. Talks about proprietary products or vendor platforms are consistently rejected.
- **Devroom fit.** Each devroom has its own review committee and scope. A great talk submitted to the wrong devroom gets rejected. Read the devroom description carefully.
- **Practical value.** Reviewers prefer talks where the audience learns a technique, discovers a tool, or gains insight they can use immediately.

### PyCon US Reviewer Guidelines

PyCon publishes detailed reviewer guidelines:
- **Accessibility.** Proposals should be understandable to a broad Python audience. Reviewers penalize unnecessary jargon and assumed knowledge not listed in prerequisites.
- **Diversity of topics.** PyCon actively seeks talks beyond web frameworks and data science. Unique topics or underrepresented areas of Python score well.
- **Speaker experience is secondary.** PyCon explicitly tells reviewers not to weigh speaker experience heavily. A first-time speaker with a clear, well-scoped proposal beats a veteran with a vague one.
- **Outline quality.** PyCon reviewers read your outline carefully. A strong outline with clear progression signals a well-prepared talk.

### SREcon Reviewer Priorities

- **Production data.** SREcon reviewers expect specific numbers: error budgets, SLO targets, incident counts, time-to-recovery improvements.
- **Transferable lessons.** "How we do it at [big company]" only works if the lessons apply to other organizations.
- **Honest failure analysis.** Talks that only show successes score lower than talks that include what went wrong and what was learned.

### General Cross-Conference Patterns

Regardless of the specific event, reviewers consistently ask themselves:
1. "Would I attend this talk?" Write your abstract so the answer is yes.
2. "Is the scope realistic?" Reviewers reject ambitious proposals that try to cover too much.
3. "Does it teach something actionable?" Talks that end with "and now you know about X" lose to talks that end with "and now you can do X."
4. "Is it a vendor pitch in disguise?" Reviewers across all conferences flag proposals that read like product demos.

## Common Rejection Reasons

1. **Too vague.** The abstract reads like a marketing blurb with no concrete content. "In this talk, we will explore the exciting world of..." tells the reviewer nothing.

2. **Too broad.** Trying to cover everything about a large topic in one session. Narrow your scope.

3. **No clear takeaway.** The proposal describes what you will talk about but not what the audience will learn or be able to do afterward.

4. **Wrong audience fit.** Submitting a deep-dive to a beginner track, or a 101-level talk to an advanced track.

5. **Duplicate content.** The same talk has been given at multiple conferences without updates. Reviewers check.

6. **Vendor pitch.** The talk is a thinly disguised product demo. Conference audiences and reviewers reject these quickly.

7. **Weak learning objectives.** "Understand X" is not an objective. "Evaluate X against Y for your production workload" is.

8. **Poor writing quality.** Typos, grammar issues, and unclear sentences signal a talk that may also be poorly prepared.

9. **Abstract reads like a table of contents.** "First we will cover A, then B, then C, then D" is an outline, not an abstract. An abstract needs a narrative arc.

10. **No evidence the speaker has done this work.** Generic descriptions that could have been written from documentation. Reviewers look for production details, failure stories, and specific metrics.

11. **Written by AI without customization.** Generic language, no specific details, no personal experience. Reviewers are increasingly trained to spot this pattern.

12. **Ignores the conference audience.** Submitting a deeply specialized talk to a generalist conference, or a beginner talk to an expert event. Read the conference description.

13. **Over-reliance on acronyms.** More than 3 unexplained acronyms in an abstract signals that the speaker does not know how to communicate to a mixed audience.

14. **Title does not match abstract.** The title promises one thing and the abstract delivers another. This is more common than you would expect.

15. **Too many speakers.** A panel of 5 people for a 30-minute slot means each person gets 6 minutes. Reviewers know this math does not work.

## Templates for Different Talk Formats

### Standard Talk (30-40 minutes)

```
Title: [Specific, concrete title that signals what the attendee learns]

Abstract:
[Opening hook: a problem, surprising fact, or provocative question. One sentence.]

[Context: what you did, built, or discovered. Two to three sentences establishing your approach.]

[What the talk covers: 2-3 specific topics with concrete details. Three to four sentences.]

[Takeaway: what the attendee walks away able to do. One to two sentences.]

Learning Objectives:
- [Action verb] [specific, measurable outcome]
- [Action verb] [specific, measurable outcome]
- [Action verb] [specific, measurable outcome]

Target Audience: [Role] with [prerequisite knowledge]. No [thing they don't need] required.

Outline:
- 0:00-5:00 - [Problem statement and hook]
- 5:00-15:00 - [Core technical content, section 1]
- 15:00-25:00 - [Core technical content, section 2, including demo or case study]
- 25:00-32:00 - [Results, lessons learned, and what you would do differently]
- 32:00-40:00 - [Takeaways and Q&A]
```

### Lightning Talk (5-10 minutes)

```
Title: [Short, punchy, under 50 characters. Creates curiosity.]

Abstract (100-150 words):
[Hook: one sentence, problem or surprising fact.]
[The core idea: what it is and why it matters. Two to three sentences.]
[Call to action: what to do next. One sentence.]

The One Takeaway: [Single sentence the audience remembers.]

Outline:
- 0:00-0:30 - Hook
- 0:30-1:00 - Minimal context
- 1:00-3:30 - Core idea (demo, example, or argument)
- 3:30-4:30 - Evidence or results
- 4:30-5:00 - Call to action
```

### Workshop / Tutorial (90 minutes to 3 hours)

```
Title: [Action verb] [specific artifact] [with specific tools]

Abstract:
[Opening: the real-world problem attendees will solve. One to two sentences.]
[What they will build by the end. One sentence.]
[Why this skill matters right now. One sentence.]

Prerequisites:
- Required knowledge: [be specific and honest about skill level]
- Required setup: [exact software, versions, accounts]
- Provided: [what the workshop gives them, e.g., cloud environment, starter code]

Learning Objectives:
- [Action verb] [maps to specific exercise]
- [Action verb] [maps to specific exercise]
- [Action verb] [maps to specific exercise]
- [Action verb] [maps to specific exercise]

What Attendees Walk Away With:
- [Working artifact they built]
- [Reusable code, templates, or configs]
- [Clear next steps for applying at work]

Outline:
- [Time] - [Section]: Instructor does [X], attendees do [Y], checkpoint: [Z]
- (repeat for each section)
```

### Panel Discussion Proposal

```
Title: [Specific question or tension the panel addresses]

Abstract:
[The question or debate this panel explores. One to two sentences.]
[Why this matters now and why a single speaker cannot cover it. One to two sentences.]
[What perspectives will be represented. One to two sentences.]

Panelists (confirmed or proposed):
- [Name], [Role], [Perspective they bring]
- [Name], [Role], [Perspective they bring]
- [Name], [Role], [Perspective they bring]

Moderator: [Name], [Why they are qualified to moderate this topic]

Format:
- 0:00-5:00 - Moderator introduction and framing question
- 5:00-10:00 - Each panelist: 90-second opening statement
- 10:00-35:00 - Moderated discussion with prepared questions
- 35:00-45:00 - Audience Q&A

Key questions to address:
1. [Specific, debatable question]
2. [Specific, debatable question]
3. [Specific, debatable question]
```

## Tips for Stronger Submissions

### Title

- Keep it under 75 characters when possible.
- Use concrete nouns and verbs. "Building," "Debugging," "Migrating" are stronger than "Exploring" or "Discussing."
- Avoid questions as titles unless the question is genuinely provocative. "What if your CI pipeline is lying to you?" works. "Have you considered service meshes?" does not.

### Abstract

- First sentence should hook. Start with a problem, a surprising fact, or a bold claim.
- Middle section should describe your approach or content.
- Last sentence should promise a clear outcome.
- Write in first person or second person. "You will learn" is more engaging than "Attendees will be presented with."

### Learning Objectives

- Use Bloom's taxonomy action verbs: Evaluate, Design, Implement, Troubleshoot, Compare, Build.
- Avoid: Understand, Learn, Know, Appreciate. These are not measurable.
- Tie each objective to something the attendee can do in their own work.

### Speaker Bio

- Keep it to 2-3 sentences.
- Lead with your most relevant credential for this specific talk.
- Mention your employer and role, but do not make it the focus.
- Include one human detail: an open source project you maintain, a community you are part of, something that makes you memorable.
- Write a different bio for each submission. A bio about your Kubernetes experience does not belong on a Python community talk.

### Multi-Speaker Proposals

- Clearly define who covers which sections.
- Explain why two speakers are better than one for this topic (different perspectives, end-user + vendor, different roles).
- Keep the total number of speakers to 2-3 for a standard talk. Panels can have 3-4 panelists plus a moderator.
- Practice transitions. Reviewers know that multi-speaker talks often have awkward handoffs.

### Resubmitting a Rejected Talk

- Read any reviewer feedback carefully. Address every point they raised.
- Do not resubmit the same abstract unchanged. Update it with new data, narrower scope, or a different angle.
- Waiting one cycle is fine. Resubmitting to the next event with improvements shows persistence.
- Consider submitting to a different conference where the topic is a better fit.
- If the talk was rejected from a major conference, a smaller regional event is a good stepping stone.

### Adapting One Talk for Multiple Conferences

- Do not submit the same abstract to every conference. Tailor the opening, examples, and emphasis.
- Adjust scope for session length. A KubeCon talk (35 min) needs tighter scope than an NDC talk (60 min).
- Match the technical depth to the audience. FOSDEM expects protocol-level detail. All Things Open expects broader accessibility.
- Reference the specific conference community in your abstract where appropriate.
- Track which version you submitted where. Reviewers occasionally compare notes across events.

## Submission Checklist

### Before Writing

- [ ] Read the CFP instructions for this specific conference. Do not assume they match last year.
- [ ] Check the word limits for abstract and description.
- [ ] Review the available session types and durations.
- [ ] Search the conference's past schedules. Has this topic been covered? If so, what is new about yours?
- [ ] Identify which track or devroom fits your topic best.

### While Writing

- [ ] First sentence is a hook, not a setup or summary.
- [ ] Abstract tells a story (problem, approach, result, takeaway), not a table of contents.
- [ ] Learning objectives use strong action verbs and are measurable.
- [ ] No buzzwords: "revolutionary," "cutting-edge," "game-changing," "deep dive," "landscape."
- [ ] No passive voice in the abstract.
- [ ] Speaker bio connects to this specific talk's topic.
- [ ] Prerequisites are honest about required skill level.
- [ ] Time allocations in the outline are realistic for the session length.

### Before Submitting

- [ ] Read the abstract out loud. Does it flow naturally?
- [ ] Ask a colleague who is NOT in your domain to read it. Do they understand the value?
- [ ] Check the word count against the conference limit.
- [ ] Verify the session type matches your content depth.
- [ ] Remove all jargon that is not essential. If you must use an acronym, define it once.
- [ ] Check for em dashes and replace them. Many style-conscious reviewers notice these.
- [ ] Spell-check everything, including the title.
- [ ] Verify any links in the description are working.

### After Submitting

- [ ] Save a copy of exactly what you submitted.
- [ ] Note the notification date so you are not checking your email anxiously for months.
- [ ] If you get reviewer feedback (accepted or rejected), save it and learn from it.
- [ ] If accepted, start preparing your slides early. The best talks are rehearsed.
- [ ] If rejected, read the feedback, revise, and submit to the next conference.

## Conference-Specific Notes

### KubeCon / CloudNativeCon
- CNCF uses a blind review process. Your abstract must stand on its own.
- End-user case studies are highly valued.
- Mention specific CNCF projects (not just "cloud native tools").
- Co-presenting with an end user strengthens your submission.

### Red Hat Summit
- Business impact matters. Connect technical content to outcomes.
- Cross-product integration stories do well (e.g., OpenShift + Ansible + RHEL).
- Customer co-presentations are strongly encouraged.

### DevConf.cz / DevConf.us
- Community and upstream focus. Show your contributions.
- Workshops and hands-on labs are popular.
- New speakers are actively welcomed. If it is your first talk, say so.

### PyCon
- The community values inclusion and accessibility.
- Tutorials (3 hours) have separate submissions from talks.
- Poster sessions are a great way to start if you have not presented before.

### FOSDEM
- Deeply technical audience. Do not oversimplify.
- Submit to a specific devroom, not the main track (main track is invite-only).
- Lightning talks are a good entry point.

### AnsibleFest / Ansible Community Events
- Real-world automation stories with measurable outcomes.
- Show your playbooks, roles, or collections. Code examples are expected.
- Operations-focused content performs well.

Note: Always check the current CFP form for the conference you are submitting to. Limits, formats, and review criteria change year to year.
