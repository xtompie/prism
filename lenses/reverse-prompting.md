---
name: reverse-prompting
when: the task is underspecified and you're missing answers only the requester has (audience, goal, the one action)
when_not: nothing is missing from the requester — if the blocker is hard limits, use constraints-first
---
Ask for the missing inputs first, then produce. Ask: what must I learn from the requester before building anything at all?
