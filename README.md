# Prism

A skill for Claude Code that enforces an **"indirect"** mode: instead of rushing straight to the result, it selects **lenses** (ways of looking at a problem) and surfaces the challenges, concepts, and decisions to settle — **before** you build anything.

## Two paths

- `do X for me` → direct, standard.
- `/prism do X for me` → slower, but much better: the skill picks lenses, looks at the problem from many angles, and first shows what isn't obvious at a glance.

## Three sources of lenses (all live)

1. **The model's head** — lenses the model knows, even from outside the folder.
2. **Notes (`lenses/`)** — a curated, growing base of short lenses.
3. **The internet** — others' prior-art and failures for a specific domain + new lenses, when the head and the folder aren't enough.

When a good lens from outside the base comes up during work, the skill proposes **adding it to `lenses/`** (with an anti-duplicate gate). The base grows from use.

## Installation (no marketplace, no plugins)

It's a plain folder-skill. Just clone it into your Claude Code skills directory:

```bash
git clone <URL-of-this-repo> ~/.claude/skills/prism
```

On another machine, just tell Claude Code: *"clone `<URL-of-this-repo>` into `~/.claude/skills/prism`"* — and the skill is ready. To update:

```bash
cd ~/.claude/skills/prism && git pull
```

After a session (re)start, the `/prism` command becomes available. The skill has `disable-model-invocation: true` — it **does not run on its own**, only on an explicit `/prism` call.

## Structure

- `SKILL.md` — orchestration (process, gate, write-back loop). Zero domain knowledge.
- `INDEX.md` — the lens menu (name + when to use), scanned on every run.
- `lenses/*.md` — lenses in the 5-line format: `name` / `when` / `when_not` + a 1-2 sentence move.

## Base rules

- Only **generic** thinking patterns, transferable across many fields. No domain knowledge (economics, physics, specific APIs).
- A lens is a **move and a question**, not a ready answer. Short, no quotes, no essays.
- It grows but doesn't bloat: new ones are added with an anti-duplicate gate.
