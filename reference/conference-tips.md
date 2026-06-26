# Conference CFP Tips and Reference

A quick reference for what major conferences look for, common pitfalls, and practical advice for getting your talk accepted.

## What Program Committees Look For

1. **Clear value proposition.** The reviewer should know within 30 seconds what the attendee will learn. If your abstract requires re-reading to understand the point, it needs work.

2. **Specificity.** "An introduction to Kubernetes" loses to "How we migrated 40 microservices to Kubernetes in 6 months and what broke along the way." Concrete details signal real experience.

3. **Appropriate scope.** A 30-minute talk that tries to cover an entire platform end-to-end will feel shallow. Pick one angle and go deep.

4. **Evidence of expertise.** You do not need to be a maintainer or a famous speaker. But you do need to show you have hands-on experience with the topic. Mention production usage, contributions, or specific projects.

5. **Relevance to the conference.** Tailor your submission. A deeply Kubernetes-specific talk does not belong at PyCon. A beginner Python tutorial does not belong at FOSDEM's kernel track.

## Common Word Limits

| Conference | Abstract | Description |
|---|---|---|
| KubeCon / CloudNativeCon | 200-300 words | 900 words max |
| Red Hat Summit | 200 words | 500 words |
| DevConf.cz | 200 words | No strict limit |
| PyCon US | 300 words | 400 words (outline) |
| FOSDEM | 200 words | Varies by devroom |
| Open Source Summit | 200 words | 600 words |
| AnsibleFest | 200 words | 500 words |
| All Things Open | 200 words | No strict limit |

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
