# ai-bu-cfp-generator

Claude Code commands for generating, reviewing, and refining conference talk proposals (CFPs).

## What This Does

Writing CFP submissions is time-consuming. These commands help you go from a topic idea to a polished, submission-ready proposal in minutes. They also help you review drafts and explore different angles for the same talk.

Three commands are included:

- **/cfp** - Generate a complete CFP submission from a topic description. Includes title, abstract, outline, learning objectives, audience, session type recommendation, and speaker bio template. Optionally tailors the output to a specific conference (KubeCon, Red Hat Summit, DevConf, PyCon, FOSDEM, and others).

- **/cfp-review** - Feed in an existing draft and get structured feedback modeled on how program committees actually evaluate submissions. Covers title, abstract, learning objectives, audience fit, originality, and overall impression. Ends with a verdict and top three changes to make.

- **/cfp-variants** - Provide a topic and get three distinct framings for the same talk. Each variant takes a different angle (production story, how-to, comparison, problem-first, and others) so you can pick the strongest pitch or submit different versions to different conferences.

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

## Example Output

Running `/cfp automating compliance checks with Ansible, Red Hat Summit` produces:

**Title:** Automating Compliance at Scale: Using Ansible to Enforce Security Baselines Across 500 RHEL Hosts

**Abstract:** (200-300 word abstract tailored for Red Hat Summit, emphasizing enterprise impact and the Red Hat ecosystem)

**Outline:** Structured breakdown with time allocations for a 40-minute session

**Learning Objectives:**
- Implement automated SCAP compliance scanning using Ansible playbooks
- Design a remediation workflow that enforces baselines without manual intervention
- Evaluate compliance reporting patterns for audit readiness
- Troubleshoot common failure modes in large-scale compliance automation

**Target Audience:** Platform engineers, security teams, and operations leads managing RHEL at scale

**Session Type:** Talk (40 min)

**Speaker Bio Template:** "[Name] is a [role] at [company], where they [relevant experience]. They have [specific credential related to the topic]."

## Reference

The `reference/conference-tips.md` file contains practical guidance on what program committees look for, common rejection reasons, word limits for major conferences, and tips for writing stronger submissions.

## Project Structure

```
ai-bu-cfp-generator/
  commands/
    cfp.md            # Main CFP generator command
    cfp-review.md     # CFP review and feedback command
    cfp-variants.md   # Multi-angle variant generator command
  reference/
    conference-tips.md # Conference submission reference guide
  install.sh          # Installer script
  README.md           # This file
```

## Contributing

Open an issue or submit a pull request. Feedback on prompt quality, conference-specific tailoring, and new conference formats is especially welcome.

## License

Apache-2.0
