# Prism

A skill for Claude Code that enforces an **"indirect"** mode: instead of rushing straight to the result, it selects **lenses** (ways of looking at a problem) and surfaces the challenges, concepts, and decisions to settle — **before** you build anything.

## Two paths

- `do X for me` → direct, standard.
- `/prism do X for me` → slower, but much better: the skill picks lenses, looks at the problem from many angles, and first shows what isn't obvious at a glance.

## Demo

Task: **design a cache layer for an API gateway**

**Direct** — `design a cache layer for the gateway`:

> Add Redis, cache responses with a TTL, use cache-aside. Done.

**With Prism** — `/prism design a cache layer for the gateway`:

> Lenses picked: `first-principles`, `constraints-first`, `prior-art-failure-hunt`, `inversion`, `second-order`, `theory-of-constraints`.
>
> Challenges & decisions to settle **before** writing code:
> - **Resolver ≠ cache ≠ data-source** — three separate concerns; conflating them smears invalidation logic everywhere.
> - **Invalidation strategy** (the actual hard part): TTL vs event-based vs per-entity — decide before the schema.
> - **Many-to-many keys** — one resolver reads many sources; one source feeds many resolvers → cache-key and invalidation fan-out.
> - **Cache stampede** on a miss (thundering herd) → single-flight / stale-while-revalidate?
> - **Dual-write trap** — source write succeeds but cache update fails → who wins, and how do you detect drift?
> - **Consistency budget** — strong vs stale-while-revalidate, per endpoint.
> - **Bottleneck metric** (ToC): cache hit-rate is the number to optimize — instrument it first.
>
> → Settle these, then I'll propose an architecture. Go deeper, or move to design?

And it isn't just for code. Same skill, a life decision — **should I switch careers?**

**Direct:**

> It depends on your goals. Weigh the pros and cons, follow your passion, and keep some savings.

**With Prism** — `/prism should I switch careers?`:

> Lenses picked: `regret-minimization`, `inversion`, `opportunity-cost`, `reversibility`, `outside-view`, `circle-of-competence`.
>
> Questions to settle **before** deciding:
> - **Toward or away?** Running *to* the new thing, or *from* the current one? Different diagnosis, different fix.
> - **One-way or two-way door?** If it flops, can you come back — and at what cost?
> - **Outside view:** how do people who made this exact switch actually fare — not your optimistic story?
> - **Opportunity cost:** what do you concretely give up (pay, seniority, network) vs gain?
> - **Failure modes (inversion):** romanticizing the new field, no runway, burning bridges.
> - **Regret test:** at 70, which choice do you regret less?
>
> → Which of these do you *know* vs *assume*? Answer those first. Go deeper, or decide now?

Same question, either domain. One answer ships shallow; the other surfaces the decisions that actually shape the outcome.

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
