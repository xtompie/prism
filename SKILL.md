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
3. **The internet — never automatic, never silent.** A standing policy, not tied to any single lens (lenses can change or be removed). Its purpose here: find a NEW way of looking / method suited to this KIND of problem — a candidate for a new lens — NOT task-specific facts. It is offered only as an explicit menu choice (Process step 7, option 3) and runs only on the user's OK. If a good new lens turns up, offer to save it to the base (write-back loop). Never reach for the web on your own.

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
7. **Post-step gate — the menu (a loop).** First present the surfaced list (merge/dedupe so each lens shows once). Then ask plainly and offer a numbered menu:

   **What next?**
   1. **Look again in my head** — surface more lenses I know that we haven't applied yet.
   2. **Look again in the notes** — re-scan the base for lenses we skipped.
   3. **Search the web** — hunt for a new way of looking for this kind of problem (a candidate lens).
   4. **Execute it** — stop analyzing and do the task.
   5. **Execute in sub-agents** — run each selected lens as its own sub-agent (isolated, parallel), then synthesize.
   6. *(shown ONLY if a new lens surfaced this run)* **Add to the base** — save the new lens(es) to the skill's `lenses/` folder (`~/.claude/skills/prism/lenses/`) via the write-back loop.

   After options 1, 2, or 3: fold the new findings into the list (dedupe), then re-present the updated list and this menu again — loop. Only 4 or 5 ends the loop. Option 6 appears only when something genuinely new (from head or web) turned up; list the candidates comma-separated so the user can take all or some. Never search the web, spawn agents, write to the base, or proceed on your own — always wait for the choice. The user may type a number, several, or just say what they want in words — follow that.

## Rules
- No hard-coded domain vocabulary in the lenses — the domain specifics come from research and the task, not from the file.
- Favor problems, exceptions, and failure modes — that's where the real shape of the system shows, not "where it's easy."
- Keep it short. No quotes, no essays.
- **Language:** this skill's files are in English (they are config for the model). ALWAYS reply to the USER in the user's own language (e.g. Polish) — never switch the conversation to English just because the lenses are English.
