# ai-bu-cfp-generator

You have a great talk idea. You know the content cold. But you're staring at a 300-word abstract box and the deadline is in 48 hours.

The problem isn't that you don't know what to say. The problem is that you don't know how to pitch it to a review committee you've never met, who will read your abstract alongside 200 others in a single weekend. You have one sentence to make them care.

These nine Claude Code slash commands are your conference speaking coach. They encode what actually gets abstracts accepted, based on published reviewer guidelines from KubeCon, PyCon, FOSDEM, Red Hat Summit, SREcon, and 20+ other conferences.

## Commands

### Generate Proposals

| Command | What it does |
|---------|-------------|
| `/cfp` | Turn a rough topic into a submission-ready CFP. Starts from your messy idea and finds the story. |
| `/cfp-variants` | Generate 3 genuinely different framings for the same topic. Different hooks, different structures, different reviewers they appeal to. |
| `/cfp-ab-test` | Generate 2 competing abstracts, then analyze which wins for which conference and why. |
| `/cfp-from-blog` | Convert a blog post into a talk proposal. Not a compression. A rebuild for live delivery. |
| `/workshop-proposal` | Generate a hands-on workshop with checkpoints, failure mode planning, and a take-home artifact. |
| `/lightning-talk` | Generate a 5-minute lightning talk. One idea, one takeaway, zero filler. |

### Review and Refine

| Command | What it does |
|---------|-------------|
| `/cfp-review` | Scored review with concrete rewrites for every weak section. Simulates a tired reviewer who has already read 80 abstracts today. |
| `/cfp-reviewer` | Simulate a 3-person review committee. Three reviewers with different priorities score your submission independently, then a meta-review tells you exactly what to fix. |

### Repurpose

| Command | What it does |
|---------|-------------|
| `/talk-to-blog` | Convert an accepted talk into a companion blog post outline with SEO guidance and social hooks. |

## Install

```bash
git clone https://github.com/MarkellR-RedHat/ai-bu-cfp-generator.git
cd ai-bu-cfp-generator
chmod +x install.sh
./install.sh
```

This copies all command files to `~/.claude/commands/` so they're available as slash commands in Claude Code.

Or copy manually:

```bash
cp commands/*.md ~/.claude/commands/
```

## What the Review Committee Actually Sounds Like

The `/cfp-reviewer` command is the one that changes how you write proposals. Here is a real example.

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

**The review committee catches what you missed:**

```
### Reviewer A: The Practitioner

| Dimension                    | Score |
|------------------------------|-------|
| Clarity                      | 4     |
| Relevance                    | 5     |
| Novelty                      | 4     |
| Speaker qualification signals| 4     |
| Learning objectives quality  | 2     |

"The production details are strong. '48-GPU cluster' and 'six months'
tell me this person actually built something. But there are zero learning
objectives. I can't tell what I'll be able to DO after this talk. Add 3
objectives starting with action verbs: Deploy, Configure, Evaluate."
```

```
### Reviewer B: The Program Chair

"I need to fill 40 slots from 200 submissions. GPU scheduling talks are
common at KubeCon. I've seen five this cycle already. What's new here?
The bin-packing failure story is the differentiator, but it's buried in
the last sentence. Lead with it."
```

```
### Reviewer C: The Skeptic

"'Cut waste by half' is vague. Half of what? What was baseline utilization,
and what is it now? Give me '35% average GPU utilization to 72%' and this
abstract jumps from a 3 to a 4."
```

```
## Meta-Review

Biggest risk of rejection: Missing learning objectives and insufficient
differentiation from existing GPU scheduling talks.

The ONE change that would most improve the score: Add specific
before/after utilization numbers and 3 learning objectives with
strong action verbs.
```

Three reviewers. Independent scores. Feedback that quotes your text and tells you exactly what to fix. That is the difference between "your abstract needs work" and knowing the one change that moves it from "revise and resubmit" to "accept."

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
- What reviewers actually prioritize (based on published guidelines from KubeCon, PyCon, FOSDEM, SREcon, and others)
- The 14 most common rejection reasons and how to avoid each one
- Fill-in-the-blank templates for talks, lightning talks, workshops, and panels
- A pre-submission checklist organized by phase

## Project Structure

```
ai-bu-cfp-generator/
  commands/
    cfp.md                  # Main CFP generator
    cfp-review.md           # Scored review with rewrite suggestions
    cfp-reviewer.md         # 3-person review committee simulation
    cfp-variants.md         # 3 different angles for one topic
    cfp-ab-test.md          # 2 competing abstracts with analysis
    cfp-from-blog.md        # Blog post to talk proposal
    workshop-proposal.md    # Hands-on workshop generator
    lightning-talk.md       # 5-minute lightning talk generator
    talk-to-blog.md         # Talk proposal to blog post outline
  examples/
    kubecon-gpu-scheduling.md
    summit-ansible-compliance.md
    lightning-talk-kubectl-plugins.md
    fosdem-ebpf-observability.md
    pycon-open-source-community.md
    kubecon-tutorial-service-mesh.md
  reference/
    conference-tips.md      # Comprehensive conference submission guide
  install.sh               # Installer script
  README.md                # This file
```

## Contributing

Open an issue or submit a pull request. Feedback on prompt quality, conference-specific tailoring, and new conference formats is especially welcome.

## License

Apache-2.0
