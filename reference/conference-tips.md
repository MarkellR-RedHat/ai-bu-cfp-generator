# Conference CFP Tips and Reference

A quick reference for what major conferences look for, common pitfalls, and practical advice for getting your talk accepted.

## What Program Committees Look For

1. **Clear value proposition.** The reviewer should know within 30 seconds what the attendee will learn. If your abstract requires re-reading to understand the point, it needs work.

2. **Specificity.** "An introduction to Kubernetes" loses to "How we migrated 40 microservices to Kubernetes in 6 months and what broke along the way." Concrete details signal real experience.

3. **Appropriate scope.** A 30-minute talk that tries to cover an entire platform end-to-end will feel shallow. Pick one angle and go deep.

4. **Evidence of expertise.** You do not need to be a maintainer or a famous speaker. But you do need to show you have hands-on experience with the topic. Mention production usage, contributions, or specific projects.

5. **Relevance to the conference.** Tailor your submission. A deeply Kubernetes-specific talk does not belong at PyCon. A beginner Python tutorial does not belong at FOSDEM's kernel track.

## What Reviewers Actually Look For

Based on publicly available reviewer guidelines from major conferences:

### KubeCon / CloudNativeCon (CNCF)
The CNCF publishes reviewer guidelines emphasizing:
- **Relevance to cloud native ecosystem.** Proposals must connect to CNCF projects, cloud native patterns, or the Kubernetes ecosystem specifically. Generic infrastructure talks that do not mention the cloud native stack score lower.
- **End-user perspective.** CNCF actively prioritizes real-world production stories over vendor-driven content. Proposals from end users or featuring end-user co-presenters score higher.
- **Novelty over repetition.** Reviewers check past KubeCon schedules. If the same topic was covered last cycle, your version must bring new data, a new angle, or updated results.
- **Blind review.** CNCF uses blind review for most tracks. Your abstract must stand on its own without relying on your name or employer to carry it.
- **Scoring rubric:** Technical merit, relevance to the track, clarity of the abstract, and novelty. Each dimension is scored independently.

### FOSDEM
FOSDEM devroom organizers have shared these priorities:
- **Technical depth.** FOSDEM audiences are practitioners who build the software. Surface-level overviews get rejected. Show code, architecture, or protocol-level detail.
- **Upstream focus.** FOSDEM prioritizes free and open source software contributions. Talks about proprietary products or vendor platforms are consistently rejected.
- **Devroom fit.** Each devroom has its own review committee and scope. A great talk submitted to the wrong devroom gets rejected. Read the devroom description carefully.
- **Practical value.** Reviewers prefer talks where the audience learns a technique, discovers a tool, or gains insight they can use immediately.

### PyCon US
PyCon publishes detailed reviewer guidelines:
- **Accessibility.** Proposals should be understandable to a broad Python audience. Reviewers penalize unnecessary jargon and assumed knowledge that is not listed in prerequisites.
- **Diversity of topics.** PyCon actively seeks talks that are not just web frameworks and data science. Unique topics or underrepresented areas of Python score well.
- **Speaker experience is secondary.** PyCon explicitly tells reviewers not to weigh speaker experience heavily. A first-time speaker with a clear, well-scoped proposal beats a veteran with a vague one.
- **Outline quality.** PyCon reviewers read your outline carefully. A strong outline with clear progression signals a well-prepared talk.

### General Patterns Across Conferences
Regardless of the specific event, reviewers consistently prioritize:
1. **Would I attend this talk?** The most common question reviewers ask themselves. Write your abstract so the answer is yes.
2. **Is the scope realistic?** Reviewers reject ambitious proposals that try to cover too much. A focused, achievable scope beats an impressive-sounding but unrealistic one.
3. **Does it teach something actionable?** Talks that end with "and now you know about X" lose to talks that end with "and now you can do X."
4. **Is it a vendor pitch in disguise?** Reviewers across all conferences flag proposals that read like product demos. Even if you work for a vendor, frame the talk around the problem and the open source solution, not the product.

## Common Word Limits

| Conference | Abstract | Description | Session Types |
|---|---|---|---|
| KubeCon / CloudNativeCon | 200-300 words | 900 words max | Talk (35 min), Tutorial (90 min), Lightning Talk (5 min) |
| Red Hat Summit | 200 words | 500 words | Breakout (40 min), Lab (90 min), Lightning Talk (10 min) |
| DevConf.cz | 200 words | No strict limit | Talk (35 min), Workshop (60-90 min), Lightning Talk (15 min) |
| PyCon US | 300 words | 400 words (outline) | Talk (30 min), Tutorial (3 hours), Poster, Lightning Talk (5 min) |
| FOSDEM | 200 words | Varies by devroom | Talk (20-50 min varies by devroom), Lightning Talk (15 min) |
| Open Source Summit | 200 words | 600 words | Session (30 min), Tutorial (90 min), BoF (60 min), Lightning Talk (5-10 min) |
| AnsibleFest | 200 words | 500 words | Breakout (40 min), Workshop (90 min), Lightning Talk (10 min) |
| All Things Open | 200 words | No strict limit | Talk (30-45 min), Workshop (90 min), Lightning Talk (10 min) |
| SREcon | 250 words | 600 words | Talk (25 min), Training (half-day or full-day) |
| SCALE (Southern California Linux Expo) | 200 words | 500 words | Talk (45 min), Tutorial (90 min), Lightning Talk (5 min) |
| GopherCon | 250 words | 500 words | Talk (25 or 45 min), Tutorial (3 hours), Lightning Talk (7 min) |
| RustConf | 200 words | 400 words | Talk (30 min) |
| GitHub Universe | 200 words | 500 words | Session (30 min), Workshop (90 min) |
| QCon | 300 words | 600 words | Talk (50 min), Workshop (half-day) |
| Strange Loop | 300 words | No strict limit | Talk (40 min) |
| NDC | 200 words | 500 words | Talk (60 min), Lightning Talk (10 min), Workshop (full-day) |

Note: Always check the current CFP form for the conference you are submitting to. Limits change year to year.

## Common Rejection Reasons

1. **Too vague.** The abstract reads like a marketing blurb with no concrete content. "In this talk, we will explore the exciting world of..." tells the reviewer nothing.

2. **Too broad.** Trying to cover everything about a large topic in one session. Narrow your scope.

3. **No clear takeaway.** The proposal describes what you will talk about but not what the audience will learn or be able to do afterward.

4. **Wrong audience fit.** Submitting a deep-dive to a beginner track, or a 101-level talk to an advanced track.

5. **Duplicate content.** The same talk has been given at multiple conferences without updates. Reviewers check.

6. **Vendor pitch.** The talk is a thinly disguised product demo. Conference audiences and reviewers reject these quickly.

7. **Weak learning objectives.** "Understand X" is not an objective. "Evaluate X against Y for your production workload" is.

8. **Poor writing quality.** Typos, grammar issues, and unclear sentences signal a talk that may also be poorly prepared.

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
- Include one human detail (open source project you maintain, community you are part of, something that makes you memorable).

### Before You Submit

- [ ] Read your abstract out loud. Does it flow?
- [ ] Ask a colleague who is NOT in your domain to read it. Do they understand the value?
- [ ] Check the word count against the conference limit.
- [ ] Verify the session type matches your content depth.
- [ ] Search the conference's past schedules. Has this exact talk been done? If so, what is new about yours?
- [ ] Remove all jargon that is not essential. If you must use an acronym, define it once.

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
