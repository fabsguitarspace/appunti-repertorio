# KB ARCHITECT — Appunti di Repertorio

Aggiornamento: 11 novembre 2026. Il repository è nuovo: non esistono ancora sorgenti Sphinx, LilyPond o script. Questa KB registra le decisioni prese e l'architettura prevista. Non descrive un'implementazione esistente.

## Modalità di lavoro

Prima di proporre interventi, leggere questa pagina e [architettura](architettura.md). In modalità ARCHITECT si producono analisi, alternative e ADR dentro `Docs`, senza modificare i sorgenti. Una proposta non equivale a una decisione approvata. Usare il [modello di analisi](analisi/TEMPLATE.md) e il [modello ADR](adr/TEMPLATE.md).

## Identità e perimetro

- Titolo: **Appunti di Repertorio per Chitarra Jazz**. Cartella e repository: `appunti-repertorio`.
- Repository: https://github.com/fabsguitarspace/appunti-repertorio
- Indirizzo Read the Docs previsto, da creare: `https://appunti-di-repertorio-per-chitarra-jazz.readthedocs.io`. Lo slug va confermato alla creazione del progetto su RTD.
- Argomento: gli standard jazz studiati sulla chitarra, con una scheda monografica per ogni brano. Ogni scheda tratta forma, armonia, accompagnamento, linee per improvvisare e una base audio.

Progetti fratelli:

- `../appunti-teoria` spiega strutture e relazioni.
- `../appunti-pratica` le applica alla tastiera.
- Repertorio porta entrambi dentro i brani e rimanda ai due progetti invece di ripeterne le spiegazioni.

Layout, stile didattico e pipeline musicale riprendono quelli di Pratica.

## Decisioni registrate

- [ADR 0001 — LilyPond diretto e generazione Python](adr/0001-lilypond-diretto-e-generazione-python.md): copia dell'ADR comune, Accettato il 2026-11-08. L'estensione a questo progetto è stata accettata il 2026-11-11 con l'ADR 0004.
- [ADR 0002 — Nessuna melodia degli standard; ascolti tramite YouTube](adr/0002-nessuna-melodia-ascolti-youtube.md): Accettato, 2026-11-11.
- [ADR 0003 — Struttura per famiglie e schede monografiche](adr/0003-struttura-famiglie-schede-monografiche.md): Accettato, 2026-11-11.
- [ADR 0004 — Libreria musicale comune ai tre progetti](adr/0004-libreria-musicale-comune.md): Accettato, 2026-11-11. Copia comune ai tre repository.

## Analisi disponibili

- [001 — Struttura del progetto e modello della scheda brano](analisi/001-struttura-e-scheda-brano.md): proposta di indice, modello di scheda, catalogo dati e pilota. I punti aperti sono elencati nel documento.
- [002 — Libreria musicale comune ai tre progetti](analisi/002-libreria-musicale-comune.md): inventario delle differenze fra Pratica e Teoria, collocazione e piano di migrazione.

## Gestione delle decisioni

Le nuove decisioni vanno in `adr/NNNN-titolo.md`, con numero progressivo e stato iniziale Proposto.

- Stati possibili: Proposto, Accettato, Respinto, Superato.
- Registrare decisore e data solo quando sono noti.
- Un ADR superato resta consultabile e rimanda al successore.

Le decisioni comuni con i progetti fratelli (pipeline, navigazione) vanno riportate in ciascun repository.

## Manutenzione

Quando esisteranno i sorgenti, saranno loro a prevalere sulla KB. `Docs` è distinta da `src/docs` e non entra nella build Sphinx.
