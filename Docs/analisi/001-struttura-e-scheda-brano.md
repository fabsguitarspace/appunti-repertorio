# Analisi — Struttura del progetto e modello della scheda brano

- Data: 2026-11-11
- Stato: struttura e scheda proposte. Le decisioni già prese sono negli ADR 0002 e 0003; i punti aperti sono elencati in fondo.
- Ambito e richiesta: nuovo progetto Read the Docs sugli standard jazz per chitarra, con lo stesso layout di Teoria e Pratica e schede monografiche per ogni standard.

## Problema e risultato atteso

Serve un percorso sul repertorio che porti nei brani i concetti di Teoria e le tecniche di Pratica, senza ripeterli e senza riprodurre materiale protetto. Il risultato atteso è un indice stabile, un modello di scheda ripetibile e un catalogo dati da cui generare le parti ricorrenti.

## Evidenze

Rilevate l'11 novembre 2026 in `../appunti-pratica` e `../appunti-teoria`.

- Stack: Sphinx 8.2.3 e Shibuya 2026.1.9 (`requirements.txt`). `conf.py` è quasi identico fra i due progetti: cambiano titolo e ordine dei `nav_links`. RTD usa Ubuntu 24.04 e Python 3.12, con PDF ed ePub.
- Contenuti: capitoli `N-nome.rst` e toctree con `maxdepth: 3`. Pratica ha la sottocartella `autori/` con pagine monografiche organizzate in obiettivi, ascolti guidati, «Che cosa osservare», studi con spartito, TAB e audio.
- Stile: blocchi **Compito** e **Verifica**. Griglie testuali `| Dm7 | G7 |`. Shell solo sulle corde 6–4–3 e 5–4–3. Audio con quattro impulsi iniziali e 60 BPM come velocità di studio.
- Pipeline: ADR 0001 e generatori `scripts/generate_*.py` con marcatori BEGIN/END nei capitoli. Ci sono test pytest sui generatori e sui formati.
- YouTube: in Pratica `raw:: html` con `<iframe class="yt-video">` (`3-conoscere-la-tastiera.rst`), regola CSS in `_static/custom.css`.
- Fonti: studi originali e nessuna trascrizione (analisi 014 e 016 di Pratica).

## Indice proposto

```
index.rst
1-introduzione            prefazione libera (come i fratelli), uso del libro, ADR 0002 spiegato al lettore
2-imparare-uno-standard   metodo: ascolto, melodia a orecchio, forma, bassi, guide tones, memoria, trasposizione
3-leggere-una-griglia     sigle, sezioni, ripetizioni, intro, coda, turnaround, differenze tra versioni
4-le-forme                blues 12, blues minore, AABA, ABAC, rhythm changes, 16 battute, modale
5-blues                   famiglia → brani/…
6-swing-medium            famiglia → brani/…
7-ballad                  famiglia → brani/…
8-latin-bossa             famiglia → brani/…
9-bebop-contrafact        rhythm changes e brani nati su altre armonie → brani/…
10-modale-moderno         famiglia → brani/…
11-piani-di-studio        tre livelli progressivi che attraversano le famiglie
12-indici                 per forma, tonalità, tempo, livello (generati)
brani/<slug>.rst
```

Ogni capitolo di famiglia contiene:

- una breve introduzione sui tratti comuni;
- una tabella dei brani (titolo, forma, tonalità, livello), generata;
- un toctree in ordine alfabetico (ADR 0003).

L'assegnazione di un brano a una sola famiglia segue questa priorità: forma particolare (blues, rhythm changes), poi stile (bossa, modale), poi tempo (ballad), infine swing medium.

## Modello della scheda `brani/<slug>.rst`

Legenda: **G** = generata dal catalogo, **M** = scritta a mano fra marcatori, **G+M** = struttura generata e testo manuale.

| # | Sezione | Contenuto | Tipo |
|---|---|---|---|
| 1 | Carta d'identità | compositori, anno, origine, forma e battute, tonalità originale e d'uso, tempo e feel, livello 1–3, famiglia | G |
| 2 | Perché studiarlo | 3–4 righe sul problema musicale che il brano insegna | M |
| 3 | Storia e contesto | prima incisione, versione che l'ha reso standard, contrafact noti; fonti citate | M |
| 4 | Ascolti guidati | 2–3 versioni (riferimento, chitarra, contrastante) con collegamento testuale ed eventuale iframe (ADR 0002); un compito d'ascolto ciascuna, senza minutaggi | G+M |
| 5 | Imparare la melodia a orecchio | procedura di ascolto e canto, ricerca sulla tastiera, punti di riferimento formali; nessuna nota della melodia | M |
| 6 | Mappa della forma | griglia testuale per sezione e spartito con sole sigle; intro, coda e turnaround d'uso indicati come prassi; varianti delle sigle con la versione seguita | G |
| 7 | Lettura armonica | aree tonali, numeri romani, punti critici, scale per area; rimandi a Teoria | M |
| 8 | Accompagnamento | livello 1 shell, livello 2 voicing a 4 note, livello 3 ritmo adatto al feel; spartito, TAB e audio; rimandi a Pratica | G+M |
| 9 | Linee per improvvisare | guide tones sull'intera forma, note bersaglio, studio originale di un chorus; spartito, TAB e audio | G+M |
| 10 | Base per suonare | basso, batteria e comping, senza melodia, con conteggio; 60 BPM e velocità d'uso; 2–3 chorus | G |
| 11 | Riarmonizzazioni (facoltativa) | sostituzioni d'uso con esempio sulle sigle; rimandi a Teoria | M |
| 12 | Piano di studio, Compito, Verifica | passi numerati; compito e verifica in stile Pratica; tonalità alternative; esercizio a memoria | M |
| 13 | Brani collegati | stessa forma o armonia, contrafact | G |

Esclusi per ADR 0002: melodia in qualunque notazione o audio, lead sheet, chord-melody, frammenti del tema.

## Catalogo dati (bozza)

```yaml
slug: blue-monk
titolo: Blue Monk
compositori: [{nome: Thelonious Monk, ruolo: musica}]
anno: 1954
origine: brano strumentale jazz
famiglia: blues
forma: {tipo: blues-12, battute: 12, sezioni: [A]}
tonalita: {originale: Bb, uso: [Bb, F]}
tempo: {feel: medium-swing, bpm_uso: 120}
livello: 1
sezioni:
  A: ["Bb7", "Eb7", "Bb7", "Bb7", "Eb7", "Edim7", "Bb7", "G7", "Cm7", "F7", "Bb7", "F7"]   # da verificare sulla versione scelta
varianti: []
ascolti:
  - {artista: …, album: …, anno: …, youtube: null, ruolo: riferimento}
collegati: []
```

La griglia di esempio è indicativa e va verificata sulla versione di riferimento prima della redazione. Il catalogo non ha campi per la melodia, e un test lo garantisce.

## Dipendenze e impatto

- Teoria e Pratica: vanno aggiunti i `nav_links` verso Repertorio e, dove serve, i rimandi inversi. Sono modifiche ai sorgenti, da fare in modalità DEVELOPER.
- Pipeline: riuso di `build_music.py`, delle macro e del soundfont di Pratica, e di parti dei generatori (voicing di `generate_progressions.py`, basi di `generate_artist_studies.py`). La modalità di riuso (copia o libreria comune) è un punto aperto.
- RTD: creare il progetto collegato al repository e verificare lo slug.

## Alternative e criteri di confronto

Le alternative per struttura, ordinamento e melodia sono confrontate negli ADR 0002 e 0003. Per il riuso della pipeline:

| Opzione | Pro | Contro |
|---|---|---|
| Copia da Pratica | Avvio immediato, indipendenza | Terza copia divergente; le correzioni vanno replicate |
| Sottomodulo o pacchetto comune | Una sola fonte | Lavoro iniziale; impatto su due repository pubblicati; serve prima il confronto delle macro |

Raccomandazione: avviare con una **copia** da Pratica, che è la versione più recente e più testata, e annotarne l'origine. L'estrazione in comune si valuta con un ADR dedicato dopo il pilota, quando i requisiti condivisi saranno noti.

## Pilota

Cinque schede: le prime tre confermate dall'utente il 2026-11-11, le ultime due aggiunte su sua richiesta lo stesso giorno.

| Brano | Forma | Famiglia | Motivo |
|---|---|---|---|
| Blue Monk | blues 12 | 5-blues | forma più breve; prova catalogo, griglia e base |
| I Got Rhythm | AABA 32 (34 nella versione originale, da verificare) | 9-bebop-contrafact | radice dei rhythm changes; prova sezioni ripetute e collegamenti ai contrafact |
| All of Me | ABAC 32 | 6-swing-medium | dominanti secondarie; prova la lettura armonica e i rimandi a Teoria |
| Misty | AABA 32 | 7-ballad | aggiunto su richiesta (2026-11-11); prima ballad: tempo lento, comping ballad, base a due velocità molto diverse |
| There Will Never Be Another You | ABAC 32 | 6-swing-medium | aggiunto su richiesta (2026-11-11); secondo ABAC: prova i collegamenti fra brani con la stessa forma e l'ordine alfabetico nella famiglia |

Criteri di accettazione: quelli dell'ADR 0003, più la verifica dei collegamenti YouTube secondo l'ADR 0002.

## Piano di attuazione (modalità DEVELOPER; passi 1–2 eseguiti il 2026-11-11)

1. ✓ Scheletro del repository: configurazione, build, CSS e logo da Pratica; pipeline, macro e soundfont tramite il sottomodulo `tools/appunti-musica` (ADR 0004).
2. ✓ Capitoli 1–4 in bozza; capitoli di famiglia, piani di studio e indici con marcatori BEGIN/END al posto dei toctree. Un toctree vuoto o un glob senza corrispondenze produrrebbe avvisi con `-W`, quindi il generatore inserirà il toctree fra i marcatori.

   Verifiche: `tests/test_struttura.py` passa; `sphinx-build -b html -W --keep-going` termina senza avvisi; `./build-lilypond.sh` raggiunge la libreria e si ferma, come atteso, con «No LilyPond sources found». Non verificati: build PDF/ePub e build su RTD (progetto RTD non ancora creato).
3. `generate_standards.py` e test: contratto della scheda, politica melodie, risorse, indici.
4. Le cinque schede pilota e le loro risorse; build HTML con `-W`; ascolto delle basi.
5. Progetto RTD ✓ e `nav_links` uniformi nei tre progetti ✓ (2026-11-11); `linkcheck` ancora da configurare.

## Punti aperti

1. ~~Conferma dei tre brani pilota~~: confermati il 2026-11-11.
2. ~~Riuso della pipeline~~: libreria comune ai tre progetti, ADR 0004 del 2026-11-11. Annulla la raccomandazione «copia da Pratica» della sezione Alternative.
3. ~~Estensione dell'ADR 0001~~: accettata con l'ADR 0004.
4. ~~Slug RTD definitivo~~: `appunti-di-repertorio-per-chitarra-jazz`, creato l'11 novembre 2026.
5. Lista del primo blocco (25–30 brani) e assegnazione alle famiglie.
