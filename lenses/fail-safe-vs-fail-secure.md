---
name: fail-safe-vs-fail-secure
when: You're designing what happens on failure/no-decision — the default state under failure.
when_not: Failure is impossible or inconsequential — the default state doesn't matter.
---
When something fails, a system can default open (fail-safe: let it through, keep working) or closed (fail-secure: block, stay safe) — a deliberate choice, not an accident. Which failure mode is less costly here, and does my default actually land in it?
