# Lightning Talk Generator

Generate a submission-ready 5-minute lightning talk proposal.

## Why Five Minutes Changes Everything

Five minutes is not a short talk. It is a completely different format. The rules that govern a 35-minute session do not apply here, and the instincts you have built from giving longer talks will actively hurt you. In a 35-minute session, you can recover from a slow start. You can take a detour, tell a story, circle back. In five minutes, a slow start IS the talk. By the time you realize you have spent 90 seconds on background, you have burned nearly a third of your time and the audience has already decided whether this is going to land.

You get one idea, one hook, one takeaway, and zero runway.

The best lightning talks are the ones people quote to their coworkers at lunch. "Did you see the one about X?" That reaction only happens when the talk has a single, specific, memorable point. Not two points that are both kind of interesting. Not a broad overview with several takeaways. One point, driven home with enough force that it sticks in someone's memory through the rest of the afternoon sessions, through the evening social, through the flight home.

Lightning talk reviewers are looking for ideas that are small enough to land in five minutes but useful enough to remember for five months. That is a narrow target. Most submissions miss it by being too broad (a 30-minute talk crammed into five minutes, with everything rushed and nothing landing) or too trivial (a neat trick that gets a nod but changes nothing). The sweet spot is a single insight that shifts how someone thinks about a tool, a workflow, or a problem they face every week.

Your proposal needs to prove you understand this. Every word in a lightning talk proposal is auditioned at a higher standard than a full-length talk, because the format leaves no room to recover from a misfire.

## Instructions

**Input:** $ARGUMENTS
Parse the input for a topic or subject area (required) and a conference name (optional).

## Think Step by Step

Before writing anything, work through this sequence internally. Do not skip steps. The thinking is what separates a tight proposal from a rambling one.

1. **The bar test.** Could you explain why this talk matters in the time it takes to order a drink? Not explain the topic. Explain why it matters, why someone should care, why this is worth five minutes of a room full of people's attention. If you cannot do that in two sentences, the topic is too broad. Narrow it. Then narrow it again. The most common mistake in lightning talk proposals is scope that belongs in a full session.

2. **Distill to ONE takeaway.** State the single thing the audience will remember tomorrow. One sentence, no conjunctions joining two separate ideas. If you find yourself writing "and also" or "additionally," you have two talks fighting for the same five minutes. Pick the stronger one. Let the other one go. This is the hardest step because it means killing ideas that are genuinely good. Do it anyway.

3. **Design the hook.** What makes someone look up from their laptop in the first 10 seconds? A surprising number, a bold claim, a live terminal command that fails spectacularly, a question the audience realizes they cannot answer. The hook is not decoration. It is structural. Without it, you are talking to the tops of people's heads while they read Slack. With it, you have the room. Ten seconds is all you get to earn their attention. Make those seconds count.

4. **Build the arc.** Every second of the 5-minute structure must serve the single takeaway. If a segment does not connect back to it, cut it. This is where most lightning talks go wrong: the speaker includes a section because it is interesting or because it provides context, but it does not serve the one point. Cut it. The audience will not miss what they never heard. They will absolutely notice when the talk loses focus.

5. **The Monday morning test.** Would someone actually try this when they get back to work on Monday? If the answer is no, sharpen the call to action until the answer is yes. The call to action should be concrete: a command to run, a config to change, a tool to install. "Think differently about X" is not a call to action. "Run `tool audit --verbose` on your CI pipeline" is.

6. **Self-critique.** Before outputting, verify: Can someone who missed the talk explain its value based on the proposal alone? Is every second accounted for in the outline? Is the closing moment memorable, something the audience will repeat, or does the talk just trail off? A lightning talk that ends weakly wastes all the momentum it built.

## Anti-Patterns (reject these)

- No background section longer than 30 seconds. If the audience needs more context than that, this is a full session, not a lightning talk. Redesign the scope.
- No "Part 1 of a series." Lightning talks are self-contained. They do not set up future talks. They deliver value right now.
- No multiple competing ideas. One talk, one point. This is not a suggestion. It is a structural requirement of the format.
- No buzzwords: "revolutionary," "cutting-edge," "game-changing," "next-generation," "disruptive." These words mean nothing. They fill space. You do not have space to fill.

## Output Format

### Title
Short (under 50 characters), creates curiosity, names the specific tool or technique. "Stop Writing Dockerfiles by Hand" works. "An Update on Project X" does not. The title should make a reviewer want to read the abstract. It should make an attendee want to walk into the room. Test it: would you click on this title in a conference schedule?

### The One Takeaway
One sentence. The single thing the audience remembers. Test it: does it pass the bar test? Could you say this to a stranger and have them understand why it matters? If the takeaway requires a paragraph of context before it makes sense, it is not a takeaway. It is a conclusion buried inside a longer argument.

### Abstract (100-150 words, not a word more)
The first sentence hooks with a problem or surprising fact. Never open with "In this lightning talk" or "This short session." Be direct. Every sentence earns its place or gets cut. Count the words and confirm compliance. An abstract for a lightning talk should feel like the talk itself: tight, purposeful, with no wasted motion. If you can cut a sentence without losing meaning, cut it.

### Slide or Terminal Decision
Before outlining visuals, decide: does this talk benefit more from slides or from a single live terminal demo? State your recommendation and the reasoning behind it.
- Terminal demo: the tool's output IS the argument. Seeing it run beats any slide. The risk is real (things break live), but the payoff is worth it when the tool speaks for itself.
- Slides (8 max): the idea is conceptual, visual, or data-driven. One idea per slide, no walls of text. If a slide has more than 10 words, it has too many.
- Hybrid: a few context slides, then switch to terminal for the payoff. This works when the audience needs 30 seconds of framing before the demo makes sense.

### 5-Minute Outline
Break the talk into timed segments. Adapt to fit the specific topic, but always include a hook, the core idea, and a closing moment.
```
0:00-0:30  Hook: problem statement or surprising fact
0:30-1:00  Context: minimal background, just enough to follow
1:00-3:30  Core idea: demo, example, or key argument
3:30-4:15  Evidence: data, before/after, production numbers
4:15-4:45  Call to action: "try this Monday," "run this command," "read this RFC"
4:45-5:00  Closing moment: a punchline, a dramatic before/after, or a provocative question
```
The last 15 seconds matter more than any other 15 seconds in the talk. Do not trail off. Do not say "and that's my time." End on something the audience will repeat to a colleague. Plan this moment as carefully as you plan the hook.

### Learning Objectives
Exactly 1-2 objectives. Each starts with an action verb: Deploy, Configure, Evaluate, Build, Implement, Debug, Compare, Migrate, Integrate, or Automate. One strong objective beats three weak ones. In five minutes, you earn one learning outcome. Maybe two if they are tightly related. Resist the urge to promise more.

### Target Audience
One sentence. Lightning talks should be broadly accessible. If the audience needs specialized knowledge to follow along, say so, but also ask yourself whether the scope is right for this format.

### Speaker Bio Template
One sentence. Match the format's brevity. A multi-paragraph bio next to a five-minute talk proposal signals a mismatch in judgment.

### Why This Works as a Lightning Talk
2-3 sentences. Good reasons: the idea is simple but not widely known, a live demo shows impact in under 2 minutes, it is a single trick with immediate practical value. If the topic requires significant background, multiple competing arguments, or nuanced caveats, say so honestly and suggest narrowing further. The best lightning talk proposals know exactly why they belong in this format.

## Style
Direct, specific, no filler. Short active sentences. No em dashes anywhere. Use commas, periods, colons, semicolons, or "and" instead. Every word in the proposal should justify its presence. If it does not serve the one takeaway, cut it.
