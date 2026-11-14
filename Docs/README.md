# KB ARCHITECT — Appunti di Repertorio

Aggiornamento: 11 novembre 2026. Esiste lo **scheletro** del progetto: configurazione Sphinx e Read the Docs, la libreria `tools/appunti-musica` come sottomodulo, i capitoli 1–4 in bozza, i capitoli di famiglia, i piani di studio e gli indici con i soli marcatori del generatore, e i test di struttura. Dal 2026-11-11 esistono anche il catalogo `data/brani/*.toml`, il generatore `scripts/generate_standards.py` e le **cinque schede pilota** (Blue Monk, I Got Rhythm, All of Me, Misty, There Will Never Be Another You), con griglie, shell, guide tones e basi audio. Il catalogo comprende anche **Autumn Leaves** (aggiunto l'11 novembre 2026, primo brano in tonalità minore). Il 13 novembre 2026 si sono aggiunti **Blue Bossa** (primo brano della famiglia latin e bossa, feel `bossa`) e **So What** (primo brano modale): otto brani in tutto, con almeno una scheda in ogni famiglia.

I capitoli 1–4 e i testi delle schede pilota sono bozze scritte con assistenza e vanno rilette dall'autore. La prefazione riprende quella di Pratica.

Versione: **0.1** (`VERSIONE` in `src/docs/conf.py`). Per decisione dell'utente dell'11 novembre 2026 verrà incrementata ai prossimi rilasci; Teoria e Pratica sono passati alla 1.0. Dal 14 novembre 2026, su richiesta dell'utente, la versione completa è **MAJOR.MINOR.PATCH**: MAJOR.MINOR si scrive a mano nella riga `VERSIONE = "X.Y"` di `src/docs/conf.py`; la patch conta i commit successivi all'ultimo cambio di quella riga, quindi avanza a ogni push su main e riparte da 0 quando si cambia MAJOR.MINOR. La data di aggiornamento è quella dell'ultimo commit. Entrambe compaiono in fondo alla homepage e nel frontespizio del PDF ed ePub; il calcolo è in `src/docs/versione_git.py`, copia identica nei tre volumi, e `.readthedocs.yaml` completa la storia git prima della build.

## Modalità di lavoro

Prima di proporre interventi, leggere questa pagina e [architettura](architettura.md). In modalità ARCHITECT si producono analisi, alternative e ADR dentro `Docs`, senza modificare i sorgenti. Una proposta non equivale a una decisione approvata. Usare il [modello di analisi](analisi/TEMPLATE.md) e il [modello ADR](adr/TEMPLATE.md).

## Identità e perimetro

- Titolo: **Appunti di Repertorio per Chitarra Jazz**. Cartella e repository: `appunti-repertorio`.
- Repository: https://github.com/fabsguitarspace/appunti-repertorio
- Read the Docs: https://appunti-di-repertorio-per-chitarra-jazz.readthedocs.io/it/latest/ (progetto creato l'11 novembre 2026).
- Argomento: gli standard jazz studiati sulla chitarra, con una scheda monografica per ogni brano. Ogni scheda tratta forma, armonia, accompagnamento, linee per improvvisare e una base audio.

Progetti fratelli:

- `../appunti-teoria` spiega strutture e relazioni.
- `../appunti-pratica` le applica alla tastiera.
- Repertorio porta entrambi dentro i brani e rimanda ai due progetti invece di ripeterne le spiegazioni.

Layout, stile didattico e pipeline musicale riprendono quelli di Pratica.

## Mappa dei capitoli

- `src/docs/1-introduzione.rst`: prefazione, organizzazione, modello di scheda, assenza delle melodie, convenzioni.
- `src/docs/2-imparare-uno-standard.rst`: metodo in sette passi.
- `src/docs/3-leggere-una-griglia.rst`: battute, sezioni, sigle, varianti, intro e finali.
- `src/docs/4-le-forme.rst`: blues, blues minore, AABA, rhythm changes, ABAC, altre forme, forme modali.
- `src/docs/5-blues.rst` … `10-modale-moderno.rst`: famiglie; schede fra `.. BEGIN brani` ed `.. END brani`.
- `src/docs/11-piani-di-studio.rst`, `12-indici.rst`: contenuto generato fra marcatori.
- `src/docs/brani/`: schede monografiche; le parti fra marcatori sono generate dal catalogo, il resto è scritto a mano.

## Decisioni registrate

- [ADR 0001 — LilyPond diretto e generazione Python](adr/0001-lilypond-diretto-e-generazione-python.md): copia dell'ADR comune, Accettato il 2026-11-08. L'estensione a questo progetto è stata accettata il 2026-11-11 con l'ADR 0004.
- [ADR 0002 — Nessuna melodia degli standard; ascolti tramite YouTube](adr/0002-nessuna-melodia-ascolti-youtube.md): Accettato, 2026-11-11; modificato lo stesso giorno: ammessi anche caricamenti YouTube di terzi.
- [ADR 0003 — Struttura per famiglie e schede monografiche](adr/0003-struttura-famiglie-schede-monografiche.md): Accettato, 2026-11-11.
- [ADR 0004 — Libreria musicale comune ai tre progetti](adr/0004-libreria-musicale-comune.md): Accettato, 2026-11-11. Copia comune ai tre repository.

## Analisi disponibili

- [001 — Struttura del progetto e modello della scheda brano](analisi/001-struttura-e-scheda-brano.md): proposta di indice, modello di scheda, catalogo dati e pilota. I punti aperti sono elencati nel documento.
- [002 — Libreria musicale comune ai tre progetti](analisi/002-libreria-musicale-comune.md): inventario delle differenze fra Pratica e Teoria, collocazione e piano di migrazione.
- [003 — Una vera sezione per studiare il tema in ogni scheda](analisi/003-sezione-tema-melodia.md): stato attuale, alternative, modello proposto, campi qualitativi del catalogo, test e piano di attuazione. Proposta, non decisione.

## Gestione delle decisioni

Le nuove decisioni vanno in `adr/NNNN-titolo.md`, con numero progressivo e stato iniziale Proposto.

- Stati possibili: Proposto, Accettato, Respinto, Superato.
- Registrare decisore e data solo quando sono noti.
- Un ADR superato resta consultabile e rimanda al successore.

Le decisioni comuni con i progetti fratelli (pipeline, navigazione) vanno riportate in ciascun repository.

## Manutenzione

Quando esisteranno i sorgenti, saranno loro a prevalere sulla KB. `Docs` è distinta da `src/docs` e non entra nella build Sphinx.
