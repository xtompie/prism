# Prism

Skill do Claude Code, który wymusza tryb **„nie wprost"**: zamiast lecieć prosto do wyniku, dobiera **soczewki** (sposoby patrzenia na problem) i wydobywa wyzwania, pojęcia i decyzje do rozstrzygnięcia — **zanim** cokolwiek zbudujesz.

## Dwie drogi

- `zrób mi X` → wprost, standardowo.
- `/prism zrób mi X` → wolniej, ale dużo lepiej: skill dobiera soczewki, patrzy na problem z wielu stron i najpierw pokazuje, czego nie widać na pierwszy rzut oka.

## Trzy źródła soczewek (wszystkie żywe)

1. **Głowa modelu** — soczewki, które model zna, nawet spoza folderu.
2. **Notatki (`lenses/`)** — kuratorowana, rosnąca baza krótkich soczewek.
3. **Internet** — cudze prior-art i porażki dla konkretnej domeny + nowe soczewki, gdy głowa i folder nie wystarczają.

Gdy w trakcie pracy pojawi się dobra soczewka spoza bazy, skill proponuje **dopisać ją do `lenses/`** (z bramką anty-duplikat). Baza rośnie z użycia.

## Instalacja (bez marketplace, bez pluginów)

To zwykły folder-skill. Wystarczy sklonować go do katalogu skilli Claude Code:

```bash
git clone <URL-tego-repo> ~/.claude/skills/prism
```

Na drugiej maszynie po prostu powiedz Claude Code: *„sklonuj `<URL-tego-repo>` do `~/.claude/skills/prism`"* — i skill jest gotowy. Aktualizacja:

```bash
cd ~/.claude/skills/prism && git pull
```

Po (re)starcie sesji komenda `/prism` staje się dostępna. Skill ma `disable-model-invocation: true` — **nie uruchamia się sam**, tylko po jawnym wywołaniu `/prism`.

## Struktura

- `SKILL.md` — orkiestracja (proces, gate, pętla zapisu). Zero wiedzy domenowej.
- `INDEX.md` — menu soczewek (nazwa + kiedy użyć), skanowane przy każdym uruchomieniu.
- `lenses/*.md` — soczewki w formacie 5-liniowym: `name` / `when` / `when_not` + 1-2 zdania ruchu.

## Zasady bazy

- Tylko **generyczne** schematy myślowe, przenaszalne na wiele dziedzin. Bez wiedzy domenowej (ekonomia, fizyka, konkretne API).
- Soczewka to **ruch i pytanie**, nie gotowa odpowiedź. Krótko, bez cytatów, bez esejów.
- Rośnie, ale nie puchnie: nowe dodajemy z bramką anty-duplikat.
