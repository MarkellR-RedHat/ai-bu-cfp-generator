# Example: PyCon Community Talk - Open Source Contributor Pipelines

Generated with: `/cfp building sustainable open source contributor pipelines, PyCon`

---

## Title

From Bus Factor 2 to 40 Contributors: Building an Open Source Community That Does Not Burn You Out

## Abstract

You are the maintainer of a growing open source project. You review every pull request. You triage every issue. You answer every question in the discussion forum, usually at 11 PM. One day you realize that if you and one other person both got sick, the project would stop. This is not a theoretical risk. This is where we were 18 months ago.

Our Python-based infrastructure tooling project had two active maintainers, a growing user base filing issues faster than we could close them, and a contribution process so opaque that enthusiastic newcomers would open one PR, never hear back, and disappear. We were the bottleneck, and the project was one bad week away from becoming unmaintained.

This talk is the story of how we rebuilt our contributor experience from the ground up and went from 2 maintainers to 40 active contributors in 18 months. We will cover the specific, concrete changes that worked: structured "first issue" programs with real mentorship (not just labels), contributor office hours that actually attracted people, a review SLA that we published and tracked, and a governance model that gave contributors a real path to maintainership.

We will also share what failed. Gamification backfired. Our first mentorship attempt burned out the mentors. Automated "good first issue" labeling produced issues that were not actually good or first.

Every decision we made is backed by data: contributor retention rates, time-to-first-merge, review turnaround times, and the community survey results that told us what newcomers actually needed. You will leave with a repeatable playbook, not just inspiration. This is not a talk about why community matters. It is a talk about the specific mechanics of building one.

## Detailed Description / Outline

**0:00-3:00 - The breaking point (3 min)**
- The state of the project 18 months ago: 2 maintainers, 200+ open issues, 6-week average PR review time
- The "bus factor" conversation that forced us to act
- Why "just label issues as good-first-issue" does not build a contributor pipeline

**3:00-10:00 - Making the front door wider (7 min)**
- Auditing the contributor experience: what a newcomer sees in their first 30 minutes
- Rewriting CONTRIBUTING.md as a genuine onboarding guide, not a legal document
- Development environment setup: from 14 steps to `make dev` (and why that single change doubled first-time PRs)
- Creating "first contribution" issues that are genuinely scoped, documented, and mentored

**10:00-18:00 - Building the contributor ladder (8 min)**
- The four stages: first-timer, contributor, reviewer, maintainer
- What each stage requires and what each stage unlocks
- Contributor office hours: format, cadence, what we covered, attendance trends
- The review SLA: publishing response time targets and tracking them publicly
- Data: contributor retention at each stage, and where people dropped off

**18:00-24:00 - Governance that scales (6 min)**
- Moving from "benevolent dictator" to a documented governance model
- How we defined decision-making authority at each level
- The maintainer nomination and approval process
- Making governance changes visible: public meeting notes, recorded decisions, transparent roadmaps

**24:00-28:00 - What failed (4 min)**
- Gamification (badges, leaderboards) attracted drive-by contributions, not sustained engagement
- First mentorship program burned out two of our best contributors in 8 weeks
- Automated issue labeling created bad first issues that frustrated newcomers
- How we adapted each failed experiment into something that worked

**28:00-32:00 - Results and the repeatable playbook (4 min)**
- 18 months later: 40 active contributors, 3 new maintainers, median PR review time under 48 hours
- The five changes that had the biggest measurable impact
- How to sequence these changes (what to do first, what can wait)

**32:00-35:00 - Q&A (3 min)**

## Learning Objectives

- Design a structured contributor onboarding process that reduces time-to-first-merge and improves retention of new contributors
- Implement a contributor ladder with clear, documented expectations at each stage from first-timer to maintainer
- Establish review SLAs and governance processes that distribute maintainer workload without sacrificing code quality
- Measure contributor pipeline health using retention rates, review turnaround times, and community survey data

## Target Audience and Prerequisites

**Who this is for:** Open source maintainers, project leads, developer advocates, and anyone responsible for building or sustaining a contributor community around a software project.

**Prerequisites:** None. Experience maintaining or contributing to open source projects is helpful context but not required. The patterns described apply to projects of any size and in any language, though examples are drawn from the Python ecosystem.

**Not required:** Technical depth in any particular domain. This is a community and process talk, not a code talk.

## Session Type

**Talk (35 min)**

This content fits a standard PyCon talk slot. The narrative arc, from crisis to solution to results, works well in a presentation format. The data-heavy sections benefit from slides with charts. No hands-on exercises or live coding needed. A 45-minute slot would allow more Q&A but the core content fits comfortably in 35 minutes.

## Speaker Bio Template

"[Name] is a [role] at [company] and a maintainer of [project name]. Over the past two years, they have focused on building contributor communities for open source infrastructure tools. They care about making open source sustainable for the people who do the work."
