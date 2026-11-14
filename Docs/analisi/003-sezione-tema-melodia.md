# Analisi — Una vera sezione per studiare il tema in ogni scheda

- Data: 2026-11-13
- Stato: proposta in analisi. Pilota implementato su All of Me il 2026-11-13 nel worktree `sezione-tema-all-of-me`, non ancora unito a `main`; le altre cinque schede restano invariate.
- Ambito: appunti-repertorio (schede `src/docs/brani/`, generatore, test, capitoli 1–2)
- Richiesta: valutare come aggiungere a ogni scheda standard una sezione per studiare il tema della melodia.

## Problema e risultato atteso

La sezione esiste già in tutte e sei le schede con il titolo **«Imparare la melodia a orecchio»**, ma è la parte meno strutturata del modello: due paragrafi generici, nessun compito, nessuna verifica, nessun collegamento all'ascolto, testo diverso nella forma da scheda a scheda. Chi legge non sa che cosa fare, in che ordine, né come accorgersi di aver imparato il tema.

Il risultato atteso non è una seconda sezione che ripeta quella esistente, ma **rendere quella sezione un blocco riconoscibile, uniforme e verificabile**, senza introdurre la melodia in nessuna forma. Il vincolo dell'ADR 0002 resta: niente pentagramma, TAB, audio, lead sheet, chord-melody o frammenti. Il tema si studia sull'ascolto e sulla tastiera.

## Evidenze

Rilevato il 2026-11-13, albero git pulito, ultimo commit `d346731`.

### Stato attuale delle sei schede

| Scheda | Parole nella sezione | Compito | Verifica | Link all'ascolto |
|---|---:|---|---|---|
| All of Me | 74 | no | no | no |
| Autumn Leaves | 79 | no | no | no |
| Blue Monk | 77 | no | no | no |
| I Got Rhythm | 70 | no | no | no |
| Misty | 55 | no | no | no |
| There Will Never Be Another You | 66 | no | no | no |

La sezione occupa le righe 62–67 di `src/docs/brani/all-of-me.rst` e corrisponde, nelle altre schede, allo stesso blocco di due paragrafi. Nelle altre sezioni operative il lettore trova sempre qualcosa da fare o da guardare — una griglia, uno spartito, un audio, un compito — mentre qui trova solo due paragrafi di consigli: è l'unica sezione procedurale senza un esercizio e senza una verifica.

### Perché è debole

1. **Ripete il metodo invece di applicarlo.** I passi 2 e 3 del capitolo `src/docs/2-imparare-uno-standard.rst` (righe 27–49) spiegano già come cantare e cercare il tema sulla tastiera. Le schede riscrivono lo stesso concetto con parole diverse: sei copie dello stesso testo, che divergeranno.
2. **Non è un contratto.** In `scripts/generate_standards.py` la sezione compare in `SKELETON` (riga 532) ma non in `GENERATED_IN_CARD` (riga 537): nessun marcatore, nessun campo di catalogo, nessun test sul contenuto. `tests/test_struttura.py` verifica solo che il titolo esista (righe 61–63).
3. **Non è valutabile.** Non c'è un compito, una verifica o un criterio per capire se il tema è stato imparato. Il «Piano di studio» cita il tema (per esempio «canta il tema», All of Me riga 179), ma non lo sviluppa.
4. **Non sfrutta il livello.** Le schede dichiarano un livello 1–3, ma la sezione sul tema è identica per tutti: non c'è una progressione blues → AABA → ballad.
5. **Non è specifica del brano.** Nessuna scheda dice dove cercare il tema sulla tastiera, quale frase è più insidiosa, quale accordo sostiene le note lunghe. Sono proprio le informazioni che l'ascolto non dà e che il sito può dare senza riprodurre la melodia.

### Vincoli verificati

- **ADR 0002** (righe 29–32 e 43–45): divieto di melodia in qualunque forma; la melodia si studia sugli ascolti; il catalogo non ha campi per le note. La sezione attuale è la sostituzione prevista dell'ADR, non un'aggiunta facoltativa.
- **ADR 0003**: il modello di scheda è un contratto verificabile dai test, con sezioni obbligatorie e nello stesso ordine.
- **Analisi 001** (righe 59, 64, 69): la sezione è scritta a mano, senza note, e gli ascolti non hanno minutaggi.
- **`src/docs/1-introduzione.rst`** (righe 76 e 88–101): il lettore è già preparato all'assenza della melodia e al metodo d'ascolto. La nuova sezione deve essere coerente con questo patto, non sembrare un ripensamento.

### Un difetto da correggere comunque

`tests/test_struttura.py` (righe 45–48) cerca campi `melodia`/`melody`/`tema_note` nei file `data/brani/*.yaml`, ma il catalogo è in **TOML** (`data/brani/*.toml`). Il controllo sui campi vietati esiste solo in `load_catalogue` (righe 156–158) e guarda le sole chiavi di primo livello. Se in futuro si aggiungesse una tabella `[tema]`, una chiave come `note` o `frammenti` passerebbe senza errore. Va corretto prima di toccare il catalogo.

## Alternative e criteri di confronto

Criteri: coerenza con l'ADR 0002, uniformità fra schede, valore didattico, scalabilità a 25–30 brani, manutenzione, costo.

| Opzione | Pro | Contro | Verdetto |
|---|---|---|---|
| **A. Lasciare com'è** | nessun lavoro | resta la sezione più debole; non risponde alla richiesta; nessuna verifica | scartata |
| **B. Metodo centrale + sezione locale strutturata** | una sola spiegazione della procedura; ogni scheda aggiunge solo ciò che è specifico del brano; scala bene | richiede di riscrivere sei schede e di aggiornare test e generatore | **raccomandata** |
| **C. B + «Carta del tema» generata da campi qualitativi** | uniformità reale, campi obbligatori, meno schede incomplete; indicizzabile | nuovo schema da mantenere; rischio di prosa meccanica | **raccomandata come parte di B**, con schema minimo |
| **D. Notazione o audio del tema** | completezza didattica | viola l'ADR 0002; richiede un nuovo ADR e una verifica dei diritti; schede disomogenee | scartata |
| **E. Solo un capitolo centrale, nessuna sezione per scheda** | zero duplicazione | perde la specificità monografica; l'utente ha chiesto una sezione per scheda | scartata |
| **F. Minutaggi per frase** | ascolto più preciso | i video vengono rimossi o sostituiti; l'analisi 001 li esclude; invecchia subito | scartata |

L'opzione B risolve il difetto principale (la procedura è scritta una volta sola, nel capitolo 2), mentre la C dà la garanzia di uniformità che oggi manca. Insieme sono la proposta.

## Raccomandazione

### 1. Che cosa resta centrale e che cosa resta locale

- **Capitolo 2**: la procedura completa in sette passi resta lì. Si aggiunge un solo riquadro, «Il tema nella scheda», che spiega come si usano la carta del tema, il compito e la verifica. Nessuna procedura ripetuta nelle schede.
- **Scheda**: solo ciò che è specifico del brano — profilo, appoggi armonici, insidie, posizione sulla tastiera, compito e verifica.

### 2. Struttura interna della sezione

Il titolo **resta «Imparare la melodia a orecchio»**: è il nome usato dall'ADR 0002 e dall'introduzione, e cambiarlo obbligherebbe a toccare test, indice e sei schede senza guadagno didattico.

Dentro la sezione, quattro blocchi con etichette in grassetto (non nuovi titoli RST, per non rompere il contratto dei titoli nei test):

1. **Carta del tema** — tabella generata, sei o sette righe qualitative: frase e respiro, profilo, appoggi, testo, insidia, dove cercarlo, obiettivo del livello.
2. **Profilo del brano** — due o tre frasi scritte a mano sulle scelte interpretative della versione di riferimento (rubato, swing, testo, pickup), senza descrivere intervalli o note.
3. **Compito** — un esercizio concreto, tarato sul livello della scheda.
4. **Verifica** — due o tre domande di autovalutazione a cui si risponde cantando o suonando, non a memoria di definizioni.

Esempio per All of Me (bozza, da rivedere in redazione):

```rst
Imparare la melodia a orecchio
------------------------------

.. BEGIN tema: generato da scripts/generate_standards.py, non modificare a mano

.. list-table:: Carta del tema
   :widths: 30 70

   * - Frase e respiro
     - Frasi ampie, un respiro ogni due battute; nel bridge il respiro si allunga.
   * - Profilo
     - Per gradi congiunti, con un salto all'inizio di ogni sezione.
   * - Appoggi
     - Le frasi chiudono sulla tonica o sulla terza dell'accordo del momento.
   * - Testo
     - Sì, in inglese: cantalo con le parole.
   * - Insidia
     - La voce anticipa e ritarda le frasi; il tema resta però dentro la forma.
   * - Dove cercarlo
     - Zona del terzo tasto, la stessa degli shell.
   * - Obiettivo (livello 1)
     - Canta e suona la prima frase in una posizione; riconosci dove il tema comincia e finisce.

.. END tema

**Profilo.** Billie Holiday non espone il tema a tempo metronomico: lo phraseggia
sul testo. Impara prima il ritmo delle parole, poi lascia che le note lo seguano.

**Compito.** Suona la prima frase su una sola corda, poi in una posizione.
Rifalla con la base a 60 BPM senza guardare la griglia.

**Verifica.** Sai cantare l'inizio della sezione B dopo aver ascoltato solo la fine
della A? E sai dire su quale accordo si appoggia l'ultima nota di ogni frase?
```

La tabella non contiene note, sequenze di altezze, minutaggi né indicazioni battuta per battuta. È una descrizione di carattere e di appoggio armonico, non una trascrizione.

### 3. Progressione per livello

La tabella include una riga «Obiettivo» scelta dal campo `livello` della scheda. La progressione è unica per tutte le schede:

| Livello | Obiettivo sul tema | Verifica tipica |
|---|---|---|
| 1 | Prima frase cantata e suonata in una posizione; inizio e fine del tema riconosciuti | Canti la frase subito dopo averla suonata, senza cercarla |
| 2 | Tema intero a memoria, in due posizioni, trasposto in una tonalità vicina | Riconosci una citazione del tema dentro un assolo |
| 3 | Tema in tempo con l'interpretazione del feel; uso del materiale motivico nell'improvvisazione, senza citarlo | Registri un chorus e riconosci dove il tema affiora e dove no |

La verifica di livello 3 è l'unico punto in cui si tocca l'improvvisazione: non chiede di citare il tema, ma di svilupparne ritmo e profilo. Resta dentro l'ADR 0002 perché non pubblica note.

### 4. Catalogo: campi qualitativi, nessuna altezza

Il catalogo guadagna una tabella opzionale `[tema]` con sole stringhe descrittive:

```toml
[tema]
frase = "ampia, un respiro ogni due battute"
profilo = "per gradi congiunti, con un salto all'inizio delle sezioni"
appoggi = "le frasi chiudono sulla tonica o sulla terza dell'accordo"
testo = "sì, in inglese"
insidia = "la voce anticipa e ritarda le frasi"
posizione = "zona del terzo tasto, la stessa degli shell"
ascolto = "riferimento"   # ruolo di un elemento di [[ascolti]]
```

Regole:

- chiavi ammesse solo quelle elencate (`TEMA_KEYS`); qualunque chiave numerica, `note`, `altezze`, `frammenti`, `melodia` o simile è un errore del generatore;
- `ascolto` deve corrispondere a un ruolo presente in `[[ascolti]]`;
- nessun campo è una lista di note: se un domani servisse, vuol dire che è cambiata la decisione sull'ADR 0002 e serve un nuovo ADR;
- se `[tema]` manca, la scheda resta valida ma il test sulla sezione fallisce: meglio una scheda da completare che una scheda muta.

### 5. Confini con le altre sezioni

| Sezione | Risponde a | Non deve fare |
|---|---|---|
| Ascolti guidati | quali versioni ascoltare e che cosa osservare nella forma e nell'interpretazione | spiegare come si cerca il tema sulla tastiera |
| Imparare la melodia a orecchio | come impadronirsi del tema, frase per frase, e come verificarlo | ripetere la procedura generale o descrivere l'assolo |
| Piano di studio | in quale ordine affrontare l'intero brano | duplicare il compito sul tema |
| Linee per improvvisare | che cosa suonare sugli accordi | usare il tema come materiale (se non in modo originale) |

Questa separazione va scritta nel riquadro del capitolo 2, altrimenti la duplicazione torna alla prima revisione.

### 6. Guardrail editoriali (non solo tecnici)

- Niente sequenze di nomi di nota, né in solfeggio né in lettere, nemmeno «per esempio».
- Niente descrizione battuta per battuta: al massimo un'appoggio per sezione.
- Niente incisi, note guida del tema, «la melodia fa…» con intervalli.
- Niente tablature, diagrammi, audio o iframe nella sezione.
- Niente minutaggi: si indica la versione, non il secondo.
- La verifica non chiede di riprodurre il tema per iscritto, ma di cantarlo o suonarlo.
- In redazione, la domanda di controllo è una sola: *se un lettore leggesse solo questa sezione, potrebbe ricostruire la melodia?* Se la risposta è sì, va riscritta.

## Dipendenze e impatto

| Elemento | Modifica | Rischio |
|---|---|---|
| `src/docs/brani/*.rst` (6) | riscrittura della sezione, marcatore `tema` | medio: sei testi da rivedere a mano |
| `scripts/generate_standards.py` | `SKELETON`, `GENERATED_IN_CARD`, `block_tema`, `LADDER`, validazione ricorsiva di `[tema]` | basso |
| `data/brani/*.toml` (6) | aggiunta di `[tema]` | basso |
| `tests/test_struttura.py` | titolo invariato; nuovo `test_tema`; correzione YAML → TOML; controllo ricorsivo delle chiavi | basso |
| `src/docs/2-imparare-uno-standard.rst` | riquadro «Il tema nella scheda»; nessun ottavo passo | basso |
| `src/docs/1-introduzione.rst` | solo se cambia la descrizione della sezione (non necessario col titolo invariato) | nullo |
| `Docs/analisi/001` | aggiornare la riga 5 del modello di scheda con il nuovo contenuto | nullo |
| LilyPond, `_static/music`, build PDF/ePub | nessun nuovo asset, nessun sorgente | nullo |
| Progetti fratelli | nessun impatto | nullo |

Il PDF e l'ePub non hanno problemi: la sezione è testo e una tabella RST. L'unica attenzione è la larghezza della tabella a due colonne nella resa LaTeX; si può usare `list-table` con `:widths: 30 70`, già usata nella carta d'identità.

## Piano di verifica ed eventuale attuazione

Nessuna implementazione è implicita in questa analisi. Se approvata:

1. **Decisione.** Nuovo ADR 0005, «Sezione Tema: metodo centrale, carta del tema, nessuna notazione», che modifica il modello dell'ADR 0003 senza toccare il divieto dell'ADR 0002. Stato Proposto finché l'utente non decide.
2. **Generatore.** Aggiungere `LADDER`, `TEMA_KEYS`, `block_tema`; includere `tema` fra i blocchi generati; rendere ricorsiva la verifica dei campi vietati; convalidare `ascolto`.
3. **Test.** Mantenere l'elenco `SCHEDA` invariato; aggiungere:
   - sezione presente, non vuota, almeno 120 parole;
   - presenza di `**Compito.**` e `**Verifica.**`;
   - assenza di direttive `image`, `raw`, `audio`, link YouTube e minutaggi;
   - assenza di tre o più nomi di nota consecutivi;
   - `[tema]` conforme a `TEMA_KEYS` e `ascolto` valido;
   - `test_nessuna_melodia` corretto su TOML e ricorsivo.
4. **Sei schede.** Riscrivere la sezione con la carta generata e i tre blocchi manuali. Il lavoro editoriale è la parte più lunga: circa 20–30 minuti per scheda.
5. **Capitolo 2 e introduzione.** Riquadro sui confini fra le sezioni; verificare che il patto «qui non trovi le melodie» resti coerente.
6. **Verifica finale.** `python3 tests/test_struttura.py`; `sphinx-build -b html -W --keep-going`; build PDF ed ePub; controllo a campione di una scheda in HTML, PDF ed ePub; revisione editoriale con il guardrail del punto 6.

Criteri di accettazione:

- tutte e sei le schede hanno la sezione con carta, profilo, compito e verifica;
- nessuna risorsa nuova in `src/lilypond` o `_static/music`;
- nessuna sequenza di note, nessun minutaggio, nessuna descrizione battuta per battuta;
- il generatore è stabile (rieseguirlo non cambia i file);
- la build con `-W` è pulita;
- il testo non duplica la procedura del capitolo 2.

Stima: mezza giornata per generatore e test, una giornata per le sei schede e la revisione. A regime, con i modelli di famiglia, 20–30 minuti per un brano nuovo.

## Rischi

| Rischio | Probabilità | Mitigazione |
|---|---|---|
| La prosa scivola nella trascrizione | media | guardrail del punto 6 e revisione editoriale; test sulle sequenze di note |
| La sezione torna a essere generica | alta | campi `[tema]` obbligatori e test sulle 120 parole; ogni scheda deve avere almeno un dato specifico |
| Duplicazione con Ascolti e Piano di studio | media | riquadro sui confini nel capitolo 2 e revisione incrociata |
| Tabella troppo meccanica o ripetitiva | media | frasi brevi e specifiche; la tabella è un indice, il valore sta nel profilo e nel compito |
| Il lettore si aspetta lo spartito | media | l'introduzione lo spiega già; la nuova sezione deve mostrare che il metodo d'orecchio è più ricco, non un ripiego |
| Il test sui nomi di nota dà falsi positivi | bassa | applicarlo solo alla sezione Tema e con tre nomi consecutivi; messaggio di errore esplicito |
| I video YouTube cambiano o spariscono | già noto | nessun minutaggio; la carta cita il ruolo dell'ascolto, non il link |

## Decisioni da prendere

1. **Titolo**: mantenere «Imparare la melodia a orecchio» (raccomandato) o rinominare «Studiare il tema a orecchio»?
2. **Carta del tema generata** dai campi qualitativi (raccomandata) o solo prosa manuale con struttura fissa?
3. **Progressione per livello** con la riga «Obiettivo» (raccomandata) o stesso compito per tutti?
4. **Autoregistrazione** nella verifica di livello 3 (raccomandata, uso privato, non pubblicata) o esclusa?
5. Conferma del **divieto di minutaggi** anche in questa sezione (raccomandato).
6. Approvazione di un **ADR 0005** che formalizza il modello, o modifica diretta dell'analisi 001 e dell'ADR 0003?

## Collegamenti

- [ADR 0002 — Nessuna melodia degli standard; ascolti tramite YouTube](../adr/0002-nessuna-melodia-ascolti-youtube.md)
- [ADR 0003 — Struttura per famiglie e schede monografiche](../adr/0003-struttura-famiglie-schede-monografiche.md)
- [Analisi 001 — Struttura del progetto e modello della scheda brano](001-struttura-e-scheda-brano.md)
- [Analisi 002 — Libreria musicale comune ai tre progetti](002-libreria-musicale-comune.md)