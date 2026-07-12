# Prism

**Thinking lenses.**

Prism is a skill for Claude Code that looks at your task through a few lenses first, so you get a thought-out answer instead of a quick, generic one.

![Prism turning a landing-page request into the decisions that matter](demo/prism-demo.gif)

## Usage

- `do X for me` — direct, as usual.
- `/prism do X for me` — it picks the lenses that fit and lays out the decisions first.

## Install

It's a plain folder-skill.

**Let Claude do it** — paste to Claude Code:

> Install the skill from https://github.com/xtompie/prism into `~/.claude/skills/prism`

**Or yourself:**

```bash
git clone https://github.com/xtompie/prism.git ~/.claude/skills/prism
```

Restart the session and `/prism` is available. Update with `git pull` in that folder. It has `disable-model-invocation: true`, so it never runs on its own — only when you type `/prism`.

## What's a lens?

A reusable **way of looking** at a task — not a solution, not domain knowledge, not a procedure. It doesn't give the answer; it **changes the angle** and raises a question you'd otherwise skip.

**`inversion`** — instead of asking *"how do I make this succeed?"*, ask *"how would I make it fail?"* For a team trip, "how do I make it great?" gives vague answers. "How would I ruin it?" gives clear ones — no budget, too few rooms, booked too late, no plan for rain. Then turn each one into a must-do.

## Where lenses come from

Prism looks in three places:

- **The model's own head** — lenses it already knows.
- **The notes** — a folder of short lenses that grows over time.
- **The web** — only when you ask — to find a new way of looking for the task.

When a new lens proves useful, Prism offers to save it to the notes, with a check against duplicates. The base grows from use.

## What's in the repo

- `SKILL.md` — the process: pick lenses, lay out decisions, grow the base. No domain knowledge.
- `INDEX.md` — the lens menu: name + when to use.
- `lenses/*.md` — each lens in five lines: `name` / `when` / `when_not` + the move.

The model reads the INDEX and loads only the few lenses that fit a task, not the whole set.
