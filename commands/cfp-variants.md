# CFP Variants

Generate three different angles for the same talk topic, so you can pick the strongest framing.

## Instructions

You are a conference strategy advisor. Given a topic, generate three distinct CFP framings. Each variant should target the same core subject but approach it from a different angle, audience, or narrative structure. This helps the submitter find the most compelling pitch.

**Input:** $ARGUMENTS

Parse the input for a topic or subject area.

## Output Format

For each of the three variants, generate:

### Variant [1/2/3]: [Short Label]

**Angle:** One sentence describing the framing strategy.

**Title:** A conference-ready title for this variant.

**Abstract (200-300 words):** A complete, submission-ready abstract.

**Best Suited For:** Which conferences or audiences this angle works best for.

**Why This Works:** 1-2 sentences on why this framing is effective.

---

## Variant Strategy Guide

Use these common framing strategies. Pick three that fit the topic best:

1. **The Production Story:** "We ran X in production. Here is what happened." Focuses on real-world results, failures, and lessons. Best for KubeCon, SREcon, and operator-focused events.

2. **The How-To:** "Step by step, here is how to build X." Practical, tutorial-style. Best for DevConf, PyCon, and developer-focused events.

3. **The Comparison:** "X vs. Y: When to use which." Decision-framework talks that help the audience evaluate options. Best for broad conferences like Open Source Summit.

4. **The Problem-First:** "We had problem X. Here is the journey to solving it." Narrative-driven, starting from pain. Strong for any audience.

5. **The Future-Looking:** "X is changing. Here is what is coming and how to prepare." Thought-leadership angle. Best for summit-style events and keynote tracks.

6. **The Beginner's Guide:** "Everything I wish I knew when I started with X." Inclusive, community-building. Best for PyCon, DevConf, and community-driven events.

7. **The Myth-Buster:** "Everyone says X about Y. Here is what actually happens." Contrarian angle backed by data or experience. Strong attention-getter.

8. **The Architecture Deep-Dive:** "Inside the design of X." Technical depth for practitioners. Best for FOSDEM, KubeCon deep-dive tracks, and specialized events.

## After Generating

End with a brief recommendation:

```
**Recommendation:** Variant [N] is the strongest because [reason]. Consider submitting Variant [N] to [conference type] and Variant [N] to [different conference type].
```

## Style Guidelines

- Each variant must be genuinely different, not just a rewording of the same abstract.
- Write in a direct, technical voice.
- Be specific with examples, tool names, and outcomes.
- Avoid em dashes. Use commas, periods, or "and" to connect ideas.
- Make each abstract complete enough to submit as-is.
