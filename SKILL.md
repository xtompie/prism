---
name: prism
description: "Tryb nie-wprost do myslenia nad zadaniem: dobiera soczewki (sposoby patrzenia) z bazy, z wiedzy modelu i z internetu, i wydobywa wyzwania, pojecia i decyzje do rozstrzygniecia ZANIM cokolwiek zbudujemy. Wywolywac jawnie."
argument-hint: 'prism zaprojektuj warstwe cache dla gatewaya | prism przemysl migracje na dual-write'
allowed-tools: Read, Write, Bash, WebSearch, WebFetch
disable-model-invocation: true
user-invocable: true
---

# Prism — tryb „nie wprost”

Wolany jawnie jako `/prism <rzecz do zrobienia>`. Nigdy nie uruchamiaj sie sam.

Domyslnie pracujesz „wprost”: dostajesz zadanie i lecisz do wyniku. Prism jest po to, zeby SWIADOMIE tego NIE robic — najpierw sie zatrzymac, pomyslec, dobrac soczewki i wydobyc to, czego uzytkownik (i Ty) jeszcze nie widzi.

## Zasada nadrzedna
Nie oddajesz gotowego rozwiazania. Oddajesz **liste wyzwan, pojec, pulapek i decyzji DO ROZSTRZYGNIECIA**, zanim zaczniemy budowac. Soczewka to **ruch i pytanie**, nie odpowiedz.

## Trzy zrodla soczewek (wszystkie zywe — uzywaj wszystkich trzech)
1. **Twoja glowa (model).** Zastosuj soczewki, ktore znasz, nawet jesli NIE ma ich w folderze. Folder to menu i przypominajka, nie granica.
2. **Folder `lenses/` (notatki).** Przeczytaj `INDEX.md`, wybierz TYLE soczewek, ile problem realnie wymaga (czasem 1–2, czasem kilkanascie — dopasuj do zlozonosci, bez sztywnej liczby), wczytaj tylko te pliki.
3. **Internet.** Szukaj gdy glowa i folder nie wystarczaja — w dwoch celach:
   - **prior-art / porazki tej domeny** (soczewka `prior-art-failure-hunt`): jak ludzie to robili i na czym polegli;
   - **nowe soczewki/metody**: jesli problem wola o sposob patrzenia, ktorego nie masz.

## Petla zapisu (SEDNO — bez tego baza nie rosnie)
Gdy soczewka z Twojej glowy albo znaleziona w sieci REALNIE pomogla, a nie ma jej w folderze — **zaproponuj dopisanie**:
- nowy plik w `lenses/<nazwa>.md` w formacie 5-liniowym (name / when / when_not + ruch), plus wpis w `INDEX.md`.
- **Najpierw sprawdz duplikat:** przejrzyj `INDEX.md`; jesli podobna juz jest, ROZSZERZ istniejaca zamiast tworzyc nowa.
- Trzymaj format krotki. Baza ma rosnac z uzycia, ale nie puchnac w szum.

## Proces
1. Stresc zadanie w 1–2 zdaniach — o co naprawde chodzi.
2. **Gate wejsciowy:** jesli zadanie jest male / odwracalne / rutynowe — powiedz to wprost i zaproponuj zejscie z trybu Prism. Nie przykladaj soczewek na sile.
3. Dobierz tyle soczewek, ile zadanie realnie wymaga — liczbe dopasuj do zlozonosci problemu, NIE do zadnej sztywnej wartosci. Proste zadanie: 1–2. Zawile/wielowatkowe: nawet kilkanascie. Kryterium to trafnosc dopasowania, nie liczba; lepiej pominac soczewke luzno pasujaca niz dokladac na sile.
4. Przyloz kazda → wypisz, co wydobyla: wyzwania, decyzje, pojecia, ryzyka, alternatywy.
5. Zbierz w jedna liste, pogrupuj, zaznacz co jest KRYTYCZNE i wymaga decyzji uzytkownika.
6. Jesli pojawily sie dobre nowe soczewki (glowa/internet) — uruchom Petle zapisu.
7. **Gate po kroku:** spytaj uzytkownika — poglebic (kolejna runda soczewek / research), czy przejsc do wykonania? Sam nie przechodz dalej.

## Zasady
- Zero domenowego slownictwa na sztywno w soczewkach — konkret domeny bierze sie z researchu i zadania, nie z pliku.
- Faworyzuj problemy, wyjatki i failure-mode — tam widac prawdziwy ksztalt systemu, nie na tym „gdzie latwo”.
- Krotko. Bez cytatow, bez esejow.
