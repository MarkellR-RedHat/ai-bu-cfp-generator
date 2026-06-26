# ai-bu-cfp-generator

Claude Code slash commands for generating conference talk proposals that actually get accepted.

## Why This Exists

Writing a CFP that stands out in a pile of 500 submissions takes hours. These commands compress that work into minutes. They encode what conference program committees actually look for, based on published reviewer guidelines from KubeCon, PyCon, FOSDEM, Red Hat Summit, and others.

Nine commands. Three categories: generate, review, repurpose.

## Commands

### Generate Proposals

| Command | What it does |
|---------|-------------|
| `/cfp` | Generate a complete CFP from a topic. Tailors output to specific conferences. |
| `/cfp-variants` | Generate 3 genuinely different framings for the same topic. |
| `/cfp-ab-test` | Generate 2 competing abstracts with different hooks and structures, then analyze which is stronger for which conference. |
| `/cfp-from-blog` | Convert a blog post into a talk proposal. Identifies what works live vs. written. |
| `/workshop-proposal` | Generate a hands-on workshop with checkpoints, failure mode planning, and take-home artifacts. |
| `/lightning-talk` | Generate a 5-minute lightning talk. One takeaway, zero filler. |

### Review and Refine

| Command | What it does |
|---------|-------------|
| `/cfp-review` | Scored review with concrete rewrite suggestions for every weak section. |
| `/cfp-reviewer` | **Simulate a 3-person review committee.** Three reviewers with different priorities score your submission independently, then a meta-review synthesizes the verdict. |

### Repurpose

| Command | What it does |
|---------|-------------|
| `/talk-to-blog` | Convert an accepted talk proposal into a companion blog post outline with SEO guidance and social media hooks. |

## Install

```bash
git clone https://github.com/MarkellR-RedHat/ai-bu-cfp-generator.git
cd ai-bu-cfp-generator
chmod +x install.sh
./install.sh
```

This copies all command files to `~/.claude/commands/` so they are available as slash commands in Claude Code.

Or copy manually:

```bash
cp commands/*.md ~/.claude/commands/
```

## The Review Committee in Action

The `/cfp-reviewer` command is the one that changes how you write proposals. Here is what it looks like:

```
/cfp-reviewer Most Kubernetes clusters waste 40-60% of their GPU capacity.
Pods request full GPUs they only partially use, scheduling decisions ignore
topology, and teams queue for hours while expensive accelerators sit idle.
We hit this wall running ML training on a 48-GPU cluster and spent six months
building a scheduling layer that cut waste by half. This talk covers the
architecture: custom resource definitions, topology-aware scheduling plugins,
and real-time utilization metrics from DCGM. You will see how we implemented
fractional GPU sharing for inference while reserving whole GPUs for training,
and our monitoring stack for per-pod GPU utilization that feeds back into
scheduling. We will also cover failures: our first bin-packing attempt caused
memory contention that crashed training runs.
```

**What you get back:**

```
### Reviewer A: The Practitioner

| Dimension                    | Score |
|------------------------------|-------|
| Clarity                      | 4     |
| Relevance                    | 5     |
| Novelty                      | 4     |
| Speaker qualification signals| 4     |
| Learning objectives quality  | 2     |

Feedback: "The production details are strong. '48-GPU cluster' and 'six months'
signal real experience, and the bin-packing failure story adds credibility.
However, this abstract has no learning objectives at all. Add 3-4 starting
with action verbs: Deploy, Configure, Build, Evaluate."

### Reviewer B: The Program Chair

| Dimension                    | Score |
|------------------------------|-------|
| Clarity                      | 4     |
| Relevance                    | 5     |
| Novelty                      | 3     |
| Speaker qualification signals| 4     |
| Learning objectives quality  | 2     |

Feedback: "The scope is right for a 35-minute talk. The problem statement
hooks well. But GPU scheduling talks are common at KubeCon. The abstract
needs to sharpen what is new here versus the dozen GPU talks already on
YouTube. The bin-packing failure is the differentiator. Lead with it."

### Reviewer C: The Skeptic

| Dimension                    | Score |
|------------------------------|-------|
| Clarity                      | 3     |
| Relevance                    | 4     |
| Novelty                      | 2     |
| Speaker qualification signals| 5     |
| Learning objectives quality  | 2     |

Feedback: "I have seen five GPU scheduling proposals this review cycle.
This one has better production signals than most, but 'cut waste by half'
is vague. Half of what? What was the baseline utilization, and what is it
now? The mention of DCGM and CRDs is good, but I need to know what is
genuinely new versus assembling known tools."

## Meta-Review: Committee Synthesis

Overall score: 3.5 (range: 2 to 5)

Biggest risk of rejection: Missing learning objectives and insufficient
differentiation from existing GPU scheduling talks.

The ONE change that would most improve the score: Add the specific
before/after utilization numbers ("from 35% average GPU utilization to
72%") and add 3 learning objectives with strong action verbs.
```

Three reviewers. Independent scores. Specific feedback that quotes your text. A concrete rewrite you can paste directly into your submission. That is the difference between "your abstract needs work" and knowing exactly what to fix.

## Usage Examples

```bash
# Generate a CFP for a specific conference
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

# Review a draft
/cfp-review [paste your draft CFP here]

# Simulate a review committee
/cfp-reviewer [paste your abstract here]

# Convert an accepted talk to a blog post outline
/talk-to-blog [paste your talk proposal here]
```

## Example Outputs

The `examples/` directory contains full outputs showing different styles:

| Example | Style | Conference |
|---------|-------|------------|
| [GPU Scheduling](examples/kubecon-gpu-scheduling.md) | Production war story | KubeCon |
| [Ansible Compliance](examples/summit-ansible-compliance.md) | Enterprise operations | Red Hat Summit |
| [kubectl Plugins](examples/lightning-talk-kubectl-plugins.md) | Lightning talk | Any |
| [eBPF Observability](examples/fosdem-ebpf-observability.md) | Deep technical systems | FOSDEM |
| [Contributor Pipelines](examples/pycon-open-source-community.md) | Community and culture | PyCon |
| [Service Mesh Tutorial](examples/kubecon-tutorial-service-mesh.md) | Hands-on workshop | KubeCon |

## Reference

The `reference/conference-tips.md` file is a comprehensive guide covering:

- 25+ conferences with word limits, session types, review processes, and tactical tips
- What reviewers actually prioritize (based on published guidelines from KubeCon, PyCon, FOSDEM, and others)
- Common rejection reasons and how to avoid them
- Fill-in-the-blank templates for talks, lightning talks, workshops, and panels
- Pre-submission checklist

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
    kubecon-gpu-scheduling.md          # KubeCon talk proposal
    summit-ansible-compliance.md       # Red Hat Summit proposal
    lightning-talk-kubectl-plugins.md  # Lightning talk
    fosdem-ebpf-observability.md       # FOSDEM deep technical talk
    pycon-open-source-community.md     # PyCon community talk
    kubecon-tutorial-service-mesh.md   # KubeCon workshop/tutorial
  reference/
    conference-tips.md      # Comprehensive conference submission guide
  install.sh               # Installer script
  README.md                # This file
```

## Contributing

Open an issue or submit a pull request. Feedback on prompt quality, conference-specific tailoring, and new conference formats is especially welcome.

## License

Apache-2.0
