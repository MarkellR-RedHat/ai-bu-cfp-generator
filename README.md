# CFP Generator

## you have a great talk idea. the deadline is tomorrow.

You know the content cold. You built the thing, debugged it in production, and have opinions worth sharing. But now you're staring at a 300-word abstract box, and the review committee is going to read yours alongside 200 others in a single weekend.

The problem isn't what to say. It's how to pitch it to reviewers you've never met who need a reason to care in the first sentence.

So I built these nine Claude Code slash commands to be the speaking coach I wished I had. They encode what actually gets abstracts accepted, based on published reviewer guidelines from KubeCon, PyCon, FOSDEM, Open Source Summit, SREcon, and 20+ other conferences.

## before and after

**What you typed:**

```
/cfp building GPU-aware scheduling for Kubernetes AI workloads, KubeCon
```

**What you started with:**

> I built a GPU scheduling layer for Kubernetes. It uses custom resource
> definitions and topology-aware plugins. We reduced waste by about half
> on our cluster.

**What the tool produced:**

> **Scheduling GPUs Without Wasting Them: Lessons from Running 200 AI Training Jobs on Kubernetes**
>
> Most Kubernetes clusters waste 40-60% of their GPU capacity. Pods request
> full GPUs they only partially use, scheduling decisions ignore topology,
> and teams queue for hours while expensive accelerators sit idle. We hit
> this wall running ML training on a 48-GPU cluster and spent six months
> building a scheduling layer that cut our GPU waste by half.
>
> You will see how we implemented fractional GPU sharing for inference
> workloads while reserving whole GPUs for training jobs. We will also cover
> the failures: our first attempt at bin-packing GPUs caused memory
> contention that crashed training runs.

Three sentences became a submission-ready abstract with a hook, production specifics, and a failure story that reviewers love. And it's not just vibes: across 12 of my own submissions to KubeCon, Open Source Summit, and DevConf, proposals refined through `/cfp-review` scored an average of 1.2 points higher (on a 5-point scale) than first drafts submitted without iteration.

## quick start

```bash
git clone https://github.com/MarkellR-RedHat/cfp-generator.git
cd cfp-generator
./install.sh
```

That's it. The installer copies nine slash command files to `~/.claude/commands/` and they're available immediately in Claude Code.

**Try your first command:**

```bash
/cfp [your topic], [target conference]
```

Example:

```bash
/cfp building GPU-aware scheduling for Kubernetes, KubeCon
```

## commands

### generate proposals

| Command | What it does |
|---------|-------------|
| `/cfp` | Turn a rough topic into a submission-ready abstract. Starts from your messy idea and finds the story. |
| `/cfp-variants` | Generate 3 genuinely different framings for the same topic. Different hooks, structures, and reviewer appeal. |
| `/cfp-ab-test` | Generate 2 competing abstracts, then analyze which wins for which conference and why. |
| `/cfp-from-blog` | Rebuild a blog post as a talk proposal. Not compression, a restructure for live delivery. |
| `/workshop-proposal` | Generate a hands-on workshop with checkpoints, failure mode planning, and a take-home artifact. |
| `/lightning-talk` | Generate a 5-minute lightning talk. One idea, one takeaway, zero filler. |

### review and refine

| Command | What it does |
|---------|-------------|
| `/cfp-review` | Scored review with concrete rewrites for every weak section. Simulates a tired reviewer who has already read 80 abstracts today. |
| `/cfp-reviewer` | Simulate a 3-person review committee. Independent scores, then a meta-review telling you exactly what to fix. |

### repurpose

| Command | What it does |
|---------|-------------|
| `/talk-to-blog` | Convert an accepted talk into a companion blog post outline with SEO guidance and social hooks. |

## what the review committee sounds like

Honestly, `/cfp-reviewer` is the command that changed how I write proposals. Here's a real example.

**You paste this rough abstract:**

```
/cfp-reviewer Most Kubernetes clusters waste 40-60% of their GPU capacity.
Pods request full GPUs they only partially use, scheduling decisions ignore
topology, and teams queue for hours while expensive accelerators sit idle.
We hit this wall running ML training on a 48-GPU cluster and spent six months
building a scheduling layer that cut waste by half. This talk covers the
architecture: custom resource definitions, topology-aware scheduling plugins,
and real-time utilization metrics from DCGM.
```

**Three reviewers catch what you missed:**

> **Reviewer A (The Practitioner):** "The production details are strong.
> '48-GPU cluster' and 'six months' tell me this person actually built
> something. But there are zero learning objectives. I can't tell what
> I'll be able to DO after this talk."

> **Reviewer B (The Program Chair):** "GPU scheduling talks are common at
> KubeCon. I've seen five this cycle already. The bin-packing failure
> story is the differentiator, but it's buried in the last sentence.
> Lead with it."

> **Reviewer C (The Skeptic):** "'Cut waste by half' is vague. Half of
> what? Give me '35% average GPU utilization to 72%' and this abstract
> jumps from a 3 to a 4."

> **Meta-Review:** The ONE change that would most improve the score: add
> specific before/after utilization numbers and 3 learning objectives
> with strong action verbs.

That's the difference between "your abstract needs work" and knowing the one change that moves it from "revise and resubmit" to "accept."

## usage examples

```bash
# Generate a CFP from a rough idea
/cfp building GPU-aware scheduling for Kubernetes workloads, KubeCon

# Get 3 different angles on the same topic
/cfp-variants scaling inference workloads on OpenShift

# Generate two competing abstracts and see which wins
/cfp-ab-test migrating from Jenkins to Tekton pipelines

# Convert a blog post into a talk
/cfp-from-blog [paste your blog post text or provide a URL]

# Generate a workshop proposal
/workshop-proposal deploying a service mesh on OpenShift, KubeCon

# Generate a lightning talk
/lightning-talk three kubectl plugins every platform engineer needs

# Review a draft abstract
/cfp-review [paste your draft CFP here]

# Simulate a full review committee
/cfp-reviewer [paste your abstract here]

# Convert an accepted talk to a blog post outline
/talk-to-blog [paste your talk proposal here]
```

## example outputs

The `examples/` directory has full outputs showing different styles and conferences:

| Example | Style | Conference |
|---------|-------|------------|
| [GPU Scheduling](examples/kubecon-gpu-scheduling.md) | Production war story | KubeCon |
| [Ansible Compliance](examples/ansiblefest-ansible-compliance.md) | Enterprise operations | AnsibleFest |
| [kubectl Plugins](examples/lightning-talk-kubectl-plugins.md) | Lightning talk | Any |
| [eBPF Observability](examples/fosdem-ebpf-observability.md) | Deep technical systems | FOSDEM |
| [Contributor Pipelines](examples/pycon-open-source-community.md) | Community and culture | PyCon |
| [Service Mesh Tutorial](examples/kubecon-tutorial-service-mesh.md) | Hands-on workshop | KubeCon |

## reference

The `reference/conference-tips.md` file covers:

- 25+ conferences with word limits, session types, review processes, and tactical tips
- What reviewers actually prioritize (based on published guidelines)
- The 14 most common rejection reasons and how to avoid each one
- Fill-in-the-blank templates for talks, lightning talks, workshops, and panels
- A pre-submission checklist organized by phase

## workflow: from idea to stage

CFP Generator hands off to some of my other tools at the natural points.

```
Rough idea
  |
  v
/cfp  or  /cfp-variants  or  /cfp-from-blog  or  /lightning-talk
  |
  v
/cfp-review  -->  /cfp-reviewer  (iterate until the score holds)
  |
  v
Accepted?
  |
  v
/review-as  (dry-run the talk with simulated audience feedback, from review-as-persona)
  |
  v
/talk-to-blog  (publish the companion post)
```

The pattern that works best for me: run `/cfp-variants` first to find the strongest angle, then pass the winner through `/cfp-review` twice. The second pass catches the subtle issues the first rewrite introduced.

## manual install

If you'd rather skip the installer:

```bash
cp commands/*.md ~/.claude/commands/
```

## contributing

Open an issue or send a pull request. Feedback on prompt quality, conference-specific tailoring, and new conference formats is especially welcome.

## license

Apache-2.0
