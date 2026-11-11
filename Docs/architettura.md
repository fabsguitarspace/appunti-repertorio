# Architettura prevista e punti di attenzione

Stato: **scheletro implementato** l'11 novembre 2026. Ci sono configurazione, script di build, sottomodulo, capitoli e `tests/test_struttura.py`. Sono ancora previsti `data/brani/*.yaml`, `scripts/generate_standards.py`, le schede e i sorgenti LilyPond. La struttura riprende quella osservata in `../appunti-pratica` l'11 novembre 2026: Sphinx 8.2.3, tema Shibuya 2026.1.9, RTD su Ubuntu 24.04 con Python 3.12, formati PDF ed ePub.

## Albero previsto

```
README.md                 identità, logo, indirizzo pubblico
.readthedocs.yaml         come Pratica: configurazione Sphinx, requirements, PDF/ePub
requirements.txt          sphinx, shibuya (versioni fissate come nei fratelli)
requirements-music.txt    dipendenze della pipeline musicale locale
build.sh                  sphinx-build -b html -W --keep-going src/docs out
build-lilypond.sh         richiama la build di tools/appunti-musica
data/brani/<slug>.yaml    catalogo dati di ogni standard (vedi analisi 001)
tools/appunti-musica/     sottomodulo git della libreria comune (ADR 0004): build, macro, soundfont, moduli Python
scripts/
  generate_standards.py   catalogo → sezioni generate delle schede e sorgenti .ly
tests/test_struttura.py   indice, marcatori, politica melodie, navigazione, sottomodulo (eseguibile senza pytest)
src/docs/
  conf.py                 lingua it, Shibuya, nav_links verso i tre progetti, LuaLaTeX
  index.rst
  N-capitolo.rst          capitoli di metodo e di famiglia
  brani/<slug>.rst        schede monografiche
  _static/                logo, custom.css (classe .yt-video), music/
src/lilypond/
  (macro e soundfont provengono da tools/appunti-musica: -I e ricerca nella libreria)
  <slug>-<sezione>-<n>.ly sorgenti generati o manuali
```

## Flusso

1. `data/brani/<slug>.yaml` alimenta `generate_standards.py`.
2. Il generatore scrive i sorgenti `.ly` (griglia, accompagnamento, guide tones, base) e aggiorna nelle schede RST le parti racchiuse fra i marcatori BEGIN/END. Il testo scritto a mano fuori dai marcatori non viene toccato.
3. `build-lilypond.sh` produce SVG/PDF e MP3 in `src/docs/_static/music/`.
4. `build.sh` produce l'HTML in `out/`, mentre RTD costruisce HTML, PDF ed ePub.

Come in Pratica, RTD non esegue la pipeline musicale: le risorse vanno generate in locale e versionate. `.readthedocs.yaml` dichiara `submodules: exclude: all`.

## Convenzioni

- Nomi delle risorse: `<slug>-<sezione>-<n>`, per esempio `blue-monk-comp-1.svg` o `blue-monk-base-60.mp3`. Il nome base collega RST, `.ly` e risorse: rinominarlo richiede di aggiornare tutti i riferimenti.
- I file `.ly` generati non si modificano a mano (ADR 0001).
- Gli ascolti YouTube seguono l'ADR 0002: sempre un collegamento testuale, a cui si può aggiungere un iframe `.yt-video` solo in HTML.

## Punti di attenzione

1. **Pipeline comune.** Deciso con l'ADR 0004: libreria in un repository dedicato, usata come sottomodulo dai tre progetti. Un clone richiede `--recurse-submodules`. Il piano di migrazione è nell'analisi 002.
2. **Navigazione a tre.** Dall'11 novembre 2026 i `nav_links` dei tre `conf.py` sono uniformi: Teoria, Pratica, Repertorio, poi il canale YouTube. Ogni sito usa `index` per sé stesso. Una modifica all'elenco va riportata in tutti e tre.
3. **iframe nei PDF ed ePub.** Nelle uscite non HTML l'iframe non viene reso, quindi il collegamento testuale è obbligatorio.
4. **Collegamenti YouTube instabili.** I video possono essere rimossi. Va previsto un controllo periodico (`sphinx-build -b linkcheck`) che non blocchi la build HTML.
5. **Politica melodie.** Il divieto dell'ADR 0002 va reso verificabile da test automatici: nessun campo melodia nel catalogo, nessuna risorsa `*-melodia-*`. La correttezza degli studi originali richiede invece una revisione editoriale.
