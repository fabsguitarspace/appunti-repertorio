# Analisi — Libreria musicale comune ai tre progetti

- Data: 2026-11-11
- Stato: decisione accettata ([ADR 0004](../adr/0004-libreria-musicale-comune.md)). Fase 1 (libreria) implementata in locale il 2026-11-11, senza commit; fasi 2–5 non avviate
- Ambito: appunti-repertorio, appunti-pratica, appunti-teoria
- Richiesta: evitare una terza copia della pipeline musicale. L'utente ha chiesto che tutti e tre i progetti usino la stessa libreria comune.

## Problema e risultato atteso

Oggi Pratica e Teoria contengono ciascuno una copia di script di build, macro LilyPond e soundfont. Le copie divergono già, come segnala il punto 6 di `architettura.md` nei due progetti. Il risultato atteso è una sola fonte per gli strumenti comuni, con versione bloccata in ogni progetto e senza alcun impatto sulla pubblicazione Read the Docs.

## Evidenze (rilevate l'11 novembre 2026, alberi di lavoro git puliti)

| Elemento | Pratica | Teoria | Osservazione |
|---|---|---|---|
| `scripts/build_music.py` | con `--soundfont-overlay` e direttiva `% soundfont-overlay:` nei `.ly` | senza overlay | Pratica è un **sovrainsieme** funzionale di Teoria: stessa ricetta, più soundfont aggiuntivi caricati dopo quello predefinito |
| `include/my-chart.ly` | 19 righe | 19 righe | **identico**; usato da 3 sorgenti in Pratica e 1 in Teoria (`pentagramma.ly`) |
| `include/my-scales.ly` | `dot-radius 0.35` | `dot-radius 0.3`, `number-type arabic`, `hspace 3` | **diverso**, ma in Teoria **nessun sorgente lo include**. In Pratica lo includono 7 sorgenti (scale diminuite, toni interi, `blues-simple`) |
| `sf/Jazzernaut.sf2` | 7,3 MB | 7,3 MB | duplicato. Uguaglianza binaria da verificare con hash |
| `sf/PracticeRhythm.sf2` | 220 KB | assente | usato come overlay in 98 sorgenti di Pratica |
| Generatori Python | 11 `generate_*.py` + `artist_profiles.py`, con import incrociati diretti | nessuno | voicing (`generate_progressions.py`) e basi (`generate_artist_studies.py`) servono anche a Repertorio |
| Sorgenti `.ly` | 370 | 139 | restano nei rispettivi progetti |
| Test | 8 file, fra cui `test_music_pipeline.py` | `test_music_pipeline.py` | i test della pipeline passano alla libreria, quelli dei contenuti restano nei progetti |

Inferenza: per Teoria la riconciliazione di `my-scales.ly` è priva di effetti visibili, perché la macro non è usata. Si può adottare la versione di Pratica. La variante di Teoria viene comunque registrata qui per tracciabilità.

## Collocazione

Repository separato [`fabsguitarspace/appunti-musica`](https://github.com/fabsguitarspace/appunti-musica) (creato il 2026-11-11), collegato a ogni progetto come sottomodulo git in `tools/appunti-musica/`.

```
appunti-musica/
  pyproject.toml           dipendenze Python dichiarate e fissate
  appunti_musica/
    build.py               da build_music.py di Pratica; radice del progetto come parametro
    voicings.py            sigle → altezze, shell 6-4-3/5-4-3, voicing a 4 note
    backing.py             basso, batteria, comping, conteggio iniziale
    lilypond.py            eventi comuni → pentagramma, TAB, MIDI
  lilypond/include/        my-chart.ly, my-scales.ly
  sf/                      Jazzernaut.sf2, PracticeRhythm.sf2
  tests/
```

Nei singoli progetti restano:

- i sorgenti `src/lilypond/*.ly`;
- i generatori specifici dei contenuti;
- `build-lilypond.sh`, che richiama `tools/appunti-musica`.

I sorgenti esistenti (`\include "include/…"`, `% soundfont-overlay: sf/…`) restano invariati senza link simbolici. La build passa a LilyPond `-I tools/appunti-musica/lilypond` e cerca i soundfont prima in `src/lilypond/sf/` del progetto e poi in `sf/` della libreria. Un file del progetto con lo stesso percorso ha la precedenza. Dopo la migrazione, le cartelle `include/` e `sf/` dei progetti vanno rimosse, altrimenti continuerebbero a prevalere sulla libreria.

Read the Docs non esegue la pipeline e le risorse generate restano versionate nei progetti, quindi `.readthedocs.yaml` resta senza sottomoduli. Va comunque verificato che RTD non fallisca sui link simbolici rimasti pendenti, cioè con il sottomodulo non inizializzato: Sphinx non li legge, perché stanno sotto `src/lilypond` e non sotto `src/docs`.

## Alternative

| Opzione | Pro | Contro |
|---|---|---|
| Copie separate (stato attuale) | nessun lavoro | tre copie divergenti; correzioni da replicare a mano |
| **Sottomodulo git** | file non Python accessibili per percorso; versione bloccata per commit; aggiornamento esplicito | occorre `git submodule update --init`; link simbolici |
| Pacchetto pip da tag git | installazione standard | macro e soundfont da recuperare dentro il pacchetto installato; percorsi meno visibili |
| Subtree git | nessun passo di inizializzazione | la sincronizzazione nei due sensi è più complicata; copie fisiche nei repository |

## Piano di migrazione

Ogni fase è un intervento DEVELOPER separato e si conclude con un commit nella libreria e nel progetto.

1. **Creazione della libreria** a partire da Pratica: `build_music.py`, macro, soundfont, test della pipeline. Si estraggono soltanto i moduli di voicing e basi necessari al pilota di Repertorio.
2. **Repertorio** la usa fin dallo scheletro iniziale.
3. **Pratica**:
   - sostituisce `scripts/build_music.py`, `include/` e `sf/` con il sottomodulo;
   - i generatori importano i moduli comuni dove esistono;
   - si rigenera in modo controllato e si confrontano gli output con quelli versionati.
4. **Teoria**: stessa sostituzione, con `my-scales.ly` presa da Pratica (non usata). Si rigenera e si confrontano gli output.
5. **Pulizia**: si rimuovono le copie, si aggiornano le KB, si chiude il punto 6 di `architettura.md` nei progetti fratelli.

## Criteri di verifica

- La build musicale completa termina senza errori in tutti e tre i progetti.
- Per le fasi 3 e 4, il confronto con gli output precedenti segue questi criteri:
  - per gli SVG, uguaglianza oppure differenze ispezionate visivamente e motivate;
  - per gli MP3, uguaglianza del MIDI sorgente e ascolto a campione;
  - non si dichiara un'equivalenza solo perché la compilazione è riuscita.
- `pytest` passa nella libreria e in ogni progetto. La build HTML con `-W` è pulita e la build RTD non è alterata.
- Una modifica a una macro nella libreria, aggiornando il commit del sottomodulo, si propaga ai sorgenti che la usano. La cache di `build.py` già include le macro nell'impronta.

## Rischi e punti aperti

- ~~Nome definitivo del repository della libreria~~: `appunti-musica`, creato il 2026-11-11.
- Uguaglianza binaria di `Jazzernaut.sf2` fra i due progetti, da verificare con hash prima di eliminare una copia.
- Refactoring degli import incrociati nei generatori di Pratica: va limitato ai moduli effettivamente comuni, per non riscrivere generatori già verificati senza necessità.
- ~~Link simbolici su Windows~~: non più necessari (vedi Collocazione).

## Esito della fase 1 (2026-11-11)

Repository `appunti-musica` popolato in locale, senza commit:

- `appunti_musica/build.py`: script di Pratica con `--project`, uscita predefinita nel progetto, `-I` verso le macro della libreria, ricerca dei soundfont nel progetto e poi nella libreria, impronta estesa alle macro di entrambi. `RECIPE` portata a 3.
- `appunti_musica/rhythm_soundfont.py`: ex `generate_rhythm_soundfont.py`, ora scrive in `sf/`. Rigenera `PracticeRhythm.sf2` identico byte per byte (SHA-256 `38d96a38…`).
- `lilypond/include/` (`my-chart.ly`, `my-scales.ly` di Pratica), `sf/Jazzernaut.sf2` e `sf/PracticeRhythm.sf2`, test, README, `pyproject.toml`, `requirements-music.txt`.
- `Jazzernaut.sf2` è identico nei due progetti (SHA-256 `9440c7e3…`), quindi una copia si può eliminare senza perdite.

Verifiche:

- `tests/test_build.py` passa. Copre la separazione progetto/libreria, il percorso `-I`, l'uscita predefinita, l'invalidazione per le macro di libreria e progetto e per i soundfont, la precedenza del progetto e il ripiego sulla libreria, il ripristino dopo un errore, i soundfont aggiuntivi e i percorsi con spazi.
- Prova reale su 7 sorgenti, fra cui macro (`scala-diminuita-1`, `16-bar-blues-my-babe`, `pentagramma` di Teoria) e soundfont aggiuntivi (`modern-02`, `autori-wes-01`), compilati in progetti di prova senza `include/` e `sf/`. SVG, MIDI e MP3 sono **identici byte per byte** a quelli dello script originale di ciascun progetto con gli stessi strumenti. I PDF differiscono sempre, per i metadati di creazione.
- Rispetto alle risorse **versionate** differiscono `16-bar-blues-my-babe`, `scala-diminuita-1`, `pentagramma` (SVG) e `intervallo-p5` di Teoria (SVG, MIDI, MP3). La differenza esiste anche con lo script originale: alcune risorse pubblicate non corrispondono alla build attuale dei loro sorgenti. Non dipende dalla libreria, ma ricomparirà nella rigenerazione delle fasi 3–4 e va esaminata lì.

Scostamento dal piano: i moduli Python di voicing e basi **non** sono stati estratti. In Pratica sono tabelle di tasti in Do legate agli esercizi pubblicati, mentre il pilota richiede voicing trasponibili. Nasceranno dal generatore di Repertorio (fase 2) e passeranno nella libreria quando li userà un secondo progetto.

Limiti: nessuna verifica visiva o d'ascolto, che non serve per output identici byte per byte; nessuna build completa dei 509 sorgenti; `pytest` non è installato negli ambienti locali, quindi il test si esegue come script.
