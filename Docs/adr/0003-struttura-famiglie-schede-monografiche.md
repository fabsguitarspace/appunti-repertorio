# ADR 0003 — Struttura per famiglie e schede monografiche

- Stato: Accettato
- Data: 2026-11-11
- Decisore: utente responsabile dei progetti, nella conversazione di lavoro
- Ambito: appunti-repertorio
- Analisi collegata: [001 — Struttura e scheda brano](../analisi/001-struttura-e-scheda-brano.md)

## Contesto ed evidenze

L'utente ha chiesto un nuovo progetto Read the Docs sul repertorio degli standard per chitarra, con lo stesso layout di Teoria e Pratica. Ha anche chiesto esplicitamente che ogni sezione contenga schede monografiche dedicate ai singoli standard.

Pratica usa già una sottocartella di pagine monografiche (`src/docs/autori/`) richiamata da un capitolo indice.

## Opzioni considerate

- Un solo elenco alfabetico di brani: semplice, ma senza un percorso didattico.
- Capitoli per difficoltà: c'è un percorso, ma brani simili finiscono lontani tra loro.
- **Capitoli di metodo più capitoli per famiglia (forma o stile), con schede monografiche e indici trasversali.**

## Decisione

1. Titolo: **Appunti di Repertorio per Chitarra Jazz**. Cartella e repository: `appunti-repertorio`.
2. Indice composto da capitoli di metodo, capitoli per famiglia e indici trasversali (forma, tonalità, tempo, livello). La proposta di indice è nell'analisi 001.
3. Ogni standard ha una scheda monografica `src/docs/brani/<slug>.rst`, con un modello fisso di sezioni. Il capitolo di famiglia la presenta e la include nel proprio toctree.
4. Dentro ogni famiglia i brani sono ordinati **alfabeticamente**. Il livello di difficoltà è indicato nella carta d'identità della scheda e negli indici, e il percorso progressivo è affidato al capitolo dei piani di studio.
5. Pilota: tre schede per validare modello e generatore prima di estendere il catalogo: *Blue Monk* (blues), *I Got Rhythm* (AABA, rhythm changes) e *All of Me* (ABAC). Brani confermati il 2026-11-11.

## Conseguenze

- Il modello di scheda diventa un contratto verificabile dai test: sezioni obbligatorie presenti e nello stesso ordine.
- Le sezioni ricavabili dai dati sono generate dal catalogo, il resto è scritto a mano fra marcatori.
- Gli indici trasversali vengono generati dal catalogo, così restano coerenti con le schede.

## Verifica

Il pilota è accettato quando:

- le tre schede rispettano il modello;
- la build HTML con `-W` è pulita;
- le risorse sono presenti;
- le parti generate si ricreano in modo ripetibile;
- la revisione editoriale e l'ascolto delle basi hanno esito positivo.

## Collegamenti

[ADR 0002](0002-nessuna-melodia-ascolti-youtube.md) per i contenuti esclusi dalle schede.
