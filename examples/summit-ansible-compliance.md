# Example: Red Hat Summit CFP - Ansible Compliance

Generated with: `/cfp automating compliance checks with Ansible across a large RHEL fleet, Red Hat Summit`

---

## Title

Zero to Audit-Ready in 48 Hours: Automating SCAP Compliance Across 500 RHEL Hosts with Ansible

## Abstract

When your security team announces an audit in two weeks, nobody wants to hear that compliance remediation requires logging into 500 hosts one at a time. We faced exactly this situation: 500 RHEL servers across three data centers, each needing SCAP compliance scanning, remediation, and reporting before the auditors arrived. Doing it manually was not an option.

We built an Ansible-based compliance pipeline that scans, remediates, and reports on our entire RHEL fleet in under 48 hours. The pipeline uses the SCAP Security Guide content bundled with RHEL, the ansible-role-rhel-system-roles for consistent configuration, and custom playbooks for remediation steps that the standard roles do not cover.

This talk walks through the architecture of our compliance automation stack: how we structured inventories by security zone, designed idempotent remediation playbooks that do not break running applications, and built a reporting pipeline that gives auditors what they need without drowning them in raw scan data.

We will share the remediation patterns that worked across our fleet and the three that caused outages (and how we built guardrails to prevent repeats). You will see our approach to handling exceptions, because not every host can meet every control, and auditors need to see that you manage exceptions deliberately.

By the end of this session, you will have a reusable pattern for building your own compliance automation pipeline with Ansible and RHEL system roles.

## Detailed Description / Outline

**0:00-5:00 - The compliance problem at scale (5 min)**
- Why manual compliance does not work past 50 hosts
- The audit scenario: what auditors actually want to see
- Overview of SCAP, the SCAP Security Guide, and how RHEL ships compliance content

**5:00-12:00 - Inventory and architecture design (7 min)**
- Structuring Ansible inventories by security zone and environment
- Separating scanning, remediation, and reporting into pipeline stages
- Integration with Red Hat Satellite for host management

**12:00-22:00 - Remediation playbooks (10 min)**
- Using ansible-role-rhel-system-roles for baseline configuration
- Writing idempotent remediation tasks that do not break applications
- Demo: running a remediation playbook against a non-compliant host
- The three remediation patterns that caused outages and how we fixed them

**22:00-30:00 - Reporting and exception management (8 min)**
- Generating audit-ready reports from SCAP scan results
- Building an exception management process for controls that cannot be met
- Dashboards showing fleet-wide compliance posture over time

**30:00-37:00 - Results and operational patterns (7 min)**
- Before and after: time to compliance, manual effort, audit outcomes
- How we integrated compliance scans into our CI/CD pipeline
- Scaling from 500 to 2,000 hosts: what changed

**37:00-40:00 - Q&A (3 min)**

## Learning Objectives

- Deploy an automated SCAP compliance scanning pipeline using Ansible and RHEL system roles across a multi-datacenter fleet
- Design idempotent remediation playbooks that enforce security baselines without disrupting running applications
- Build an exception management workflow for compliance controls that cannot be applied to every host
- Configure audit-ready compliance reporting using SCAP scan output and Ansible facts

## Target Audience and Prerequisites

**Who this is for:** Platform engineers, security operations teams, and systems administrators responsible for RHEL compliance in enterprise environments.

**Prerequisites:** Basic Ansible experience (running playbooks, understanding inventory files). Familiarity with RHEL system administration. No prior SCAP or compliance automation experience required.

**Not required:** Deep knowledge of specific compliance frameworks (PCI-DSS, STIG, CIS). The talk covers the tooling, not the policy content.

## Session Type

**Breakout Session (40 min)**

This content is best suited for a Red Hat Summit breakout session. It covers a complete architecture with real production results and includes a live demo. The depth is appropriate for 40 minutes. A lab version covering the hands-on remediation workflow could work as a separate 90-minute submission.

## Speaker Bio Template

"[Name] is a [role] at [company], where they lead infrastructure automation for a fleet of [N] RHEL hosts across [N] data centers. They have been building Ansible-based compliance pipelines for [N] years and have contributed to [relevant open source project or Red Hat community]."
