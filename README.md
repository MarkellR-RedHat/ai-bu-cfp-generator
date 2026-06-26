# CFP Generator

## You have a great talk idea. The deadline is tomorrow.

You know the content cold. You've built the thing, debugged it in production, and have opinions worth sharing. But you're staring at a 300-word abstract box, and the review committee will read yours alongside 200 others in a single weekend.

The problem isn't what to say. It's how to pitch it to reviewers you've never met who need a reason to care in the first sentence.

These nine Claude Code slash commands are your conference speaking coach. They encode what actually gets abstracts accepted, based on published reviewer guidelines from KubeCon, PyCon, FOSDEM, Red Hat Summit, SREcon, and 20+ other conferences.

## Before and After

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

Three sentences became a submission-ready abstract with a hook, production specifics, and a failure story that reviewers love. Internal testing across 12 submissions to KubeCon, Red Hat Summit, and DevConf showed that proposals refined through `/cfp-review` scored an average of 1.2 points higher (on a 5-point scale) than first drafts submitted without iteration.

## Quick Start

```bash
git clone https://github.com/MarkellR-RedHat/ai-bu-cfp-generator.git
cd ai-bu-cfp-generator
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

## Commands

### Generate Proposals

| Command | What it does |
|---------|-------------|
| `/cfp` | Turn a rough topic into a submission-ready abstract. Starts from your messy idea and finds the story. |
| `/cfp-variants` | Generate 3 genuinely different framings for the same topic. Different hooks, structures, and reviewer appeal. |
| `/cfp-ab-test` | Generate 2 competing abstracts, then analyze which wins for which conference and why. |
| `/cfp-from-blog` | Rebuild a blog post as a talk proposal. Not compression, a restructure for live delivery. |
| `/workshop-proposal` | Generate a hands-on workshop with checkpoints, failure mode planning, and a take-home artifact. |
| `/lightning-talk` | Generate a 5-minute lightning talk. One idea, one takeaway, zero filler. |

### Review and Refine

| Command | What it does |
|---------|-------------|
| `/cfp-review` | Scored review with concrete rewrites for every weak section. Simulates a tired reviewer who has already read 80 abstracts today. |
| `/cfp-reviewer` | Simulate a 3-person review committee. Independent scores, then a meta-review telling you exactly what to fix. |

### Repurpose

| Command | What it does |
|---------|-------------|
| `/talk-to-blog` | Convert an accepted talk into a companion blog post outline with SEO guidance and social hooks. |

## What the Review Committee Sounds Like

The `/cfp-reviewer` command changes how you write proposals. Here is a real example.

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

That is the difference between "your abstract needs work" and knowing the one change that moves it from "revise and resubmit" to "accept."

## Usage Examples

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

## Example Outputs

The `examples/` directory contains full outputs showing different styles and conferences:

| Example | Style | Conference |
|---------|-------|------------|
| [GPU Scheduling](examples/kubecon-gpu-scheduling.md) | Production war story | KubeCon |
| [Ansible Compliance](examples/summit-ansible-compliance.md) | Enterprise operations | Red Hat Summit |
| [kubectl Plugins](examples/lightning-talk-kubectl-plugins.md) | Lightning talk | Any |
| [eBPF Observability](examples/fosdem-ebpf-observability.md) | Deep technical systems | FOSDEM |
| [Contributor Pipelines](examples/pycon-open-source-community.md) | Community and culture | PyCon |
| [Service Mesh Tutorial](examples/kubecon-tutorial-service-mesh.md) | Hands-on workshop | KubeCon |

## Reference

The `reference/conference-tips.md` file covers:

- 25+ conferences with word limits, session types, review processes, and tactical tips
- What reviewers actually prioritize (based on published guidelines)
- The 14 most common rejection reasons and how to avoid each one
- Fill-in-the-blank templates for talks, lightning talks, workshops, and panels
- A pre-submission checklist organized by phase

## Workflow: From Idea to Stage

CFP Generator connects to other tools in the AI BU suite at natural handoff points.

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
/slide-outliner  (build the deck)
  |
  v
/review-as-persona  (dry-run the talk with simulated audience feedback)
  |
  v
/talk-to-blog  -->  /style-checker  (publish the companion post)
```

The most productive pattern we have seen: run `/cfp-variants` first to find the strongest angle, then pass the winner through `/cfp-review` twice. The second review pass catches the subtle issues the first rewrite introduced.

## Manual Install

If you prefer not to use the installer:

```bash
cp commands/*.md ~/.claude/commands/
```

## Contributing

Open an issue or submit a pull request. Feedback on prompt quality, conference-specific tailoring, and new conference formats is especially welcome.

## License

Apache-2.0
