---
name: defense-in-depth
when: Stakes are high and a single mechanism can fail (security, quality, reliability).
when_not: Risk is low, or layers give a false sense of safety at the cost of real simplicity.
---
Don't rely on one barrier — stack independent layers so that breaching one doesn't mean the whole thing fails (validation + tests + review + monitoring). Where do I have a single point where one slip passes straight through, and what independent layer can I add?
