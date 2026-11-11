# ADR 0002 — Nessuna melodia degli standard; ascolti tramite YouTube

- Stato: Accettato
- Data: 2026-11-11
- Decisore: utente responsabile dei progetti, nella conversazione di lavoro
- Ambito: appunti-repertorio
- Analisi collegata: [001 — Struttura e scheda brano](../analisi/001-struttura-e-scheda-brano.md)

## Contesto ed evidenze

Il progetto tratta il repertorio degli standard. Melodie e testi della maggior parte degli standard sono ancora protetti. In UE la tutela dura 70 anni dalla morte dell'ultimo autore, e il sito pubblicato su Read the Docs è raggiungibile anche dagli USA. Una melodia semplificata ma riconoscibile resta una riproduzione o un arrangiamento dell'opera, e lo stesso vale per l'audio sintetizzato della melodia.

Le sequenze di accordi e le forme in genere non sono tutelabili come tali. Questa è una valutazione generale, non un parere legale.

I progetti fratelli usano già solo materiale originale. Le analisi 014 e 016 di Pratica escludono le trascrizioni dal repertorio.

## Opzioni considerate

| Opzione | Benefici | Costi e rischi |
|---|---|---|
| Lead sheet completi | Utilità immediata | Riproduzione di opere protette |
| Lead sheet semplificati | Didatticamente efficaci | Stesso problema: la semplificazione non elimina la riproduzione |
| Melodia solo per i brani di pubblico dominio in UE e USA | Lecito per un insieme ristretto | Insieme piccolo; verifica brano per brano; schede disomogenee |
| Brevi frammenti a fini di citazione | Supporto all'analisi | Confini incerti; richiede una verifica legale caso per caso |
| **Nessuna melodia; ascolto tramite YouTube** | Regola semplice, uniforme e verificabile | La melodia si impara a orecchio, fuori dal sito |

## Decisione

1. Nessuna scheda contiene la melodia di uno standard in alcuna forma: niente pentagramma, TAB, audio, lead sheet anche semplificato, chord-melody o frammenti. Vale anche per i brani di pubblico dominio, per uniformità.
2. La melodia si studia sugli ascolti: collegamenti YouTube quando sono disponibili, con compiti d'ascolto e indicazioni per l'apprendimento a orecchio.
3. Sono pubblicabili: forma, sigle, analisi armonica, accompagnamenti, guide tones, studi originali sulle armonie e basi senza melodia.
4. Gli studi originali non devono parafrasare la melodia del brano. Il controllo spetta alla revisione editoriale.

## Criteri per i collegamenti YouTube

- Si possono collegare sia caricamenti ufficiali (canali di artisti ed etichette, canali «Topic» generati da YouTube, il canale @fabsguitarspace) sia caricamenti di terzi. Il vincolo iniziale dei soli caricamenti ufficiali è stato tolto dall'utente il 2026-11-11 (vedi Modifiche). Se della stessa registrazione esistono entrambi, si preferisce quello ufficiale, che ha meno probabilità di essere rimosso.
- Ogni ascolto riporta il collegamento testuale (artista, album o versione, anno). L'iframe `.yt-video` è un'aggiunta facoltativa solo per HTML, perché PDF ed ePub non lo rendono.
- Se non si trova alcun caricamento, si citano album ed etichetta senza collegamento.
- I collegamenti vengono verificati periodicamente con `linkcheck`. Un video rimosso si sostituisce con un altro caricamento della stessa registrazione oppure si toglie.

## Conseguenze

- Le schede non hanno una sezione Melodia con notazione. È sostituita dalla sezione «Imparare la melodia a orecchio» (vedi analisi 001).
- Il catalogo dati non prevede alcun campo per le note della melodia.
- Test previsti: nessun file `*-melodia-*` in `src/lilypond` o in `_static/music`, nessuna chiave `melodia` nel catalogo, presenza di un collegamento testuale per ogni ascolto.
- La decisione è reversibile solo con un nuovo ADR, che dovrebbe documentare la verifica dei diritti o le licenze ottenute.

## Verifica

Test automatici come sopra, più una revisione editoriale di ogni scheda prima della pubblicazione.

## Collegamenti

- Nessun ADR precedente superato.
- Legge 633/1941 (diritto d'autore italiano), art. 70: citazione per critica e insegnamento. Non usata come base della decisione.

## Modifiche

- **2026-11-11**, decisa dall'utente: tolta la regola che ammetteva soltanto caricamenti ufficiali. Restano invariati il divieto di qualunque forma di melodia e l'obbligo del collegamento testuale. Al momento della modifica 8 collegamenti su 12 erano su canali ufficiali (verificati con oEmbed) e 4 su canali di terzi.
