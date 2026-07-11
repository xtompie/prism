---
name: prism
description: "Indirect mode for thinking about a task: it selects lenses (ways of looking) from the base, from the model's own knowledge, and from the internet, and surfaces the challenges, concepts, and decisions to settle BEFORE we build anything. Invoke explicitly."
argument-hint: 'prism design a cache layer for the gateway | prism think through the dual-write migration'
allowed-tools: Read, Write, WebSearch, WebFetch, Task
disable-model-invocation: true
user-invocable: true
---

# Prism — the "indirect" mode

Invoked explicitly as `/prism <thing to do>`. Never trigger it on your own.

By default you work "directly": you get a task and rush to the result. Prism exists to DELIBERATELY NOT do that — to first stop, think, pick lenses, and surface what the user (and you) don't yet see.

## Overriding principle
You don't hand back a finished solution. You hand back a **list of challenges, concepts, traps, and decisions TO BE SETTLED** before we start building. A lens is a **move and a question**, not an answer.

## Three sources of lenses (all live — use all three)
1. **Your head (the model).** Apply lenses you know, even if they are NOT in the folder. The folder is a menu and a reminder, not a boundary.
2. **The `lenses/` folder (notes).** Read `INDEX.md`, pick AS MANY lenses as the problem really needs (sometimes 1–2, sometimes a dozen — match it to complexity, no fixed number), and load only those files.
3. **The internet.** Search when your head and the folder aren't enough — for two purposes:
   - **prior-art / failures in this domain** (lens `prior-art-failure-hunt`): how people did it and where they came unstuck;
   - **new lenses/methods**: if the problem calls for a way of looking you don't have.

## The write-back loop (THE CRUX — without it the base doesn't grow)
When a lens from your head or found online GENUINELY helped and isn't in the folder — **propose adding it**:
- a new file in `lenses/<name>.md` in the 5-line format (name / when / when_not + move), plus an entry in `INDEX.md`.
- **Check for a duplicate first:** scan `INDEX.md`; if a similar one already exists, EXTEND the existing one instead of creating a new one.
- Keep the format short. The base should grow from use, but not bloat into noise.

## Process
1. Summarize the task in 1–2 sentences — what it's really about.
2. **Entry gate:** if the task is small / reversible / routine — say so plainly and propose dropping out of Prism mode. Don't force lenses onto it.
3. Pick as many lenses as the task really needs — match the count to the complexity of the problem, NOT to any fixed value. Simple task: 1–2. Tangled/multi-threaded: even a dozen. The criterion is fit, not count; better to skip a loosely-fitting lens than to pile one on.
4. Apply each → write down what it surfaced: challenges, decisions, concepts, risks, alternatives.
5. Collect it into one list, group it, mark what is CRITICAL and needs a user decision.
6. If good new lenses came up (head/internet) — run the write-back loop.
7. **Post-step gate:** ask the user — go deeper (another round of lenses / research), or move to execution? Don't proceed on your own.

## Rules
- No hard-coded domain vocabulary in the lenses — the domain specifics come from research and the task, not from the file.
- Favor problems, exceptions, and failure modes — that's where the real shape of the system shows, not "where it's easy."
- Keep it short. No quotes, no essays.
- **Language:** this skill's files are in English (they are config for the model). ALWAYS reply to the USER in the user's own language (e.g. Polish) — never switch the conversation to English just because the lenses are English.
