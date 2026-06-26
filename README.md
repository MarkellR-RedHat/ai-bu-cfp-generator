# ai-bu-cfp-generator

Claude Code commands for generating, reviewing, and refining conference talk proposals (CFPs).

## What This Does

Writing CFP submissions is time-consuming. These commands help you go from a topic idea to a polished, submission-ready proposal in minutes. They also help you review drafts and explore different angles for the same talk.

Six commands are included:

- **/cfp** - Generate a complete CFP submission from a topic description. Includes title, abstract, outline, learning objectives, audience, session type recommendation, and speaker bio template. Optionally tailors the output to a specific conference (KubeCon, Red Hat Summit, DevConf, PyCon, FOSDEM, and others).

- **/cfp-review** - Feed in an existing draft and get structured feedback modeled on how program committees actually evaluate submissions. Covers title, abstract, learning objectives, audience fit, originality, and overall impression. Ends with a verdict and top three changes to make.

- **/cfp-variants** - Provide a topic and get three distinct framings for the same talk. Each variant takes a different angle (production story, how-to, comparison, problem-first, and others) so you can pick the strongest pitch or submit different versions to different conferences.

- **/cfp-from-blog** - Turn an existing blog post into a conference talk proposal. Extracts the core argument, identifies what to keep and what to cut, and generates a submission-ready CFP. Includes adaptation notes for converting written content to a live format.

- **/workshop-proposal** - Generate a hands-on workshop submission. Includes prerequisites, materials list, step-by-step outline with timing and checkpoints, and a clear description of what attendees walk away with.

- **/lightning-talk** - Generate a focused 5-minute lightning talk proposal. Enforces tight scope: one takeaway, punchy title, 100-150 word abstract, and a timed outline that fits in exactly five minutes.

## Install

Clone the repo and run the install script:

```bash
git clone https://github.com/MarkellR-RedHat/ai-bu-cfp-generator.git
cd ai-bu-cfp-generator
chmod +x install.sh
./install.sh
```

This copies the command files to `~/.claude/commands/` so they are available as slash commands in Claude Code.

Alternatively, copy the files manually:

```bash
cp commands/*.md ~/.claude/commands/
```

## Usage

### Generate a CFP

```
/cfp building GPU-aware scheduling for Kubernetes workloads
```

With a target conference:

```
/cfp building GPU-aware scheduling for Kubernetes workloads, KubeCon
```

### Review a Draft

```
/cfp-review [paste your draft CFP here]
```

### Generate Variants

```
/cfp-variants scaling inference workloads on OpenShift
```

### Turn a Blog Post into a Talk

```
/cfp-from-blog [paste your blog post text or provide a URL]
```

### Generate a Workshop Proposal

```
/workshop-proposal deploying a service mesh on OpenShift, KubeCon
```

### Generate a Lightning Talk

```
/lightning-talk three kubectl plugins every platform engineer needs
```

## Example Output

Running `/cfp automating compliance checks with Ansible across a large RHEL fleet, Red Hat Summit` produces:

**Title:** Zero to Audit-Ready in 48 Hours: Automating SCAP Compliance Across 500 RHEL Hosts with Ansible

**Abstract:**

> When your security team announces an audit in two weeks, nobody wants to hear that compliance remediation requires logging into 500 hosts one at a time. We faced exactly this situation: 500 RHEL servers across three data centers, each needing SCAP compliance scanning, remediation, and reporting before the auditors arrived. Doing it manually was not an option.
>
> We built an Ansible-based compliance pipeline that scans, remediates, and reports on our entire RHEL fleet in under 48 hours. The pipeline uses the SCAP Security Guide content bundled with RHEL, the ansible-role-rhel-system-roles for consistent configuration, and custom playbooks for remediation steps that the standard roles do not cover.
>
> This talk walks through the architecture of our compliance automation stack: how we structured inventories by security zone, designed idempotent remediation playbooks that do not break running applications, and built a reporting pipeline that gives auditors what they need without drowning them in raw scan data.

**Learning Objectives:**
- Deploy an automated SCAP compliance scanning pipeline using Ansible and RHEL system roles across a multi-datacenter fleet
- Design idempotent remediation playbooks that enforce security baselines without disrupting running applications
- Build an exception management workflow for compliance controls that cannot be applied to every host
- Configure audit-ready compliance reporting using SCAP scan output and Ansible facts

**Target Audience:** Platform engineers, security operations teams, and systems administrators responsible for RHEL compliance in enterprise environments.

**Session Type:** Breakout Session (40 min)

See the `examples/` directory for full example outputs across different topics and formats.

## Reference

The `reference/conference-tips.md` file contains practical guidance on what program committees look for, common rejection reasons, word limits for major conferences, and tips for writing stronger submissions.

## Project Structure

```
ai-bu-cfp-generator/
  commands/
    cfp.md               # Main CFP generator command
    cfp-review.md        # CFP review and feedback command
    cfp-variants.md      # Multi-angle variant generator command
    cfp-from-blog.md     # Blog-to-talk proposal converter
    workshop-proposal.md # Hands-on workshop proposal generator
    lightning-talk.md    # 5-minute lightning talk generator
  examples/
    kubecon-gpu-scheduling.md       # Example: KubeCon talk proposal
    summit-ansible-compliance.md    # Example: Red Hat Summit proposal
    lightning-talk-kubectl-plugins.md # Example: Lightning talk proposal
  reference/
    conference-tips.md   # Conference submission reference guide
  install.sh            # Installer script
  README.md             # This file
```

## Contributing

Open an issue or submit a pull request. Feedback on prompt quality, conference-specific tailoring, and new conference formats is especially welcome.

## License

Apache-2.0
