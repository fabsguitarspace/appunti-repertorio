# ADR 0005 — Voicing di chord melody scelti sul tema

- Stato: Accettato; generatore e test attuati il 2026-11-15, note al canto da trascrivere
- Data: 2026-11-15
- Decisore: utente responsabile dei progetti, nella conversazione di lavoro
- Ambito: appunti-repertorio
- Analisi collegata: [001 — Struttura e scheda brano](../analisi/001-struttura-e-scheda-brano.md), sezione 8b
- Supera in parte: [ADR 0002](0002-nessuna-melodia-ascolti-youtube.md), punto 1, limitatamente al chord melody

## Contesto ed evidenze

Dal 2026-11-15 ogni scheda ha una sezione «Chord melody». Spiega come arrangiare il tema imparato a orecchio, ma non contiene alcuna nota, perché l'ADR 0002 (punto 1) esclude il chord-melody in qualunque forma. Il vocabolario è solo nel capitolo generale di Pratica (`chord-melody-voicings`), staccato dagli accordi del brano.

Sono state valutate due varianti:

- un **dizionario a regola fissa**: per ogni accordo della griglia, tutte le forme con ogni possibile nota al canto, decise solo dalla sigla. Non dipende dalla melodia e rientra già nell'ADR 0002 (accompagnamenti e voicing sono ammessi);
- una **selezione**: per ogni cambio di accordo, il voicing che porta al canto la nota del tema.

La selezione rende visibile la sequenza delle note al canto sui cambi, cioè uno scheletro della melodia. L'ADR 0002 trattava questo caso come riproduzione parziale e ne rimandava la riammissione a un nuovo ADR che documentasse la verifica dei diritti.

**Valutazione dell'utente (2026-11-15):** la selezione non viola i diritti sulle opere. Questo ADR registra quella valutazione come base della decisione. Non è un parere legale. Nella stessa conversazione l'assistente ha indicato una posizione più prudente: lo scheletro sui cambi potrebbe essere considerato una riproduzione parziale riconoscibile. La decisione resta dell'utente.

## Opzioni considerate

| Opzione | Benefici | Costi e rischi |
|---|---|---|
| Stato attuale: solo il metodo, nessuna nota | Nessun rischio; già pubblicato | Lo studente non ha riferimenti concreti sul brano |
| Dizionario a regola fissa | Vocabolario sugli accordi del brano; nessuna dipendenza dalla melodia | Pagine lunghe (circa 50–60 forme per Misty); la scelta resta tutta allo studente |
| **Selezione di un voicing per cambio, con la nota del tema al canto** | Massima utilità didattica: un punto di partenza suonabile | Rende visibile lo scheletro della melodia; serve un dato nuovo nel catalogo, da verificare a orecchio |
| Arrangiamento completo (ritmo, note di passaggio, audio) | Pronto da suonare | Riproduzione della melodia; escluso anche da questo ADR |

## Decisione

1. Le schede possono pubblicare, nella sezione «Chord melody», **un voicing per ogni cambio di accordo** con la nota del tema al canto.
2. I voicing sono **statici**: sigla e forma, in notazione e TAB, senza ritmo, durate, note di passaggio o legature di frase. Ogni voicing occupa la stessa durata grafica.
3. **Non si pubblicano** l'audio della sequenza, le note del tema fra un cambio e l'altro, né lead sheet, pentagramma o TAB della melodia. Il resto dell'ADR 0002 resta in vigore: niente melodia in alcuna forma fuori da questa eccezione, ascolti tramite YouTube.
4. Il catalogo può avere un campo **`canto`**: una nota per ogni accordo della griglia, nell'ordine delle sigle. Restano vietate le chiavi `melodia`, `melody` e `tema_note`.
5. Ogni valore di `canto` va **verificato a orecchio** sulla versione di riferimento della scheda prima della pubblicazione. Un brano non ancora verificato non pubblica la selezione.
6. Il generatore sceglie, fra le forme drop 2 e drop 3 con quella nota in cima, quella che muove meno la mano rispetto alla precedente. Nessuna forma si sceglie a mano (ADR 0001).

## Conseguenze

- **Editoriali.** La sezione «Chord melody» passa dal solo metodo a metodo più voicing. Compito e verifica restano: ritmo e note di passaggio li aggiunge lo studente a orecchio. Il passo 2 del metodo rimanda allo spartito.
- **Tecniche.** Nuovo campo `canto` nel catalogo; nuova sorgente `<slug>-chord-melody.ly` (spartito e TAB, senza MIDI né MP3); nuovo blocco generato o estensione di `chordmelody`.
- **Test.** Il test «nessuna melodia» va adattato: `canto` deve avere esattamente un valore per accordo; nessun file `*-chord-melody.mp3` o `.midi`; restano vietati i file `*-melodia-*` e le chiavi della melodia.
- **Reversibilità.** Togliere il campo `canto` e rigenerare riporta le schede allo stato precedente, senza modifiche a mano.
- **Rischio residuo.** È quello indicato nel Contesto, accettato dall'utente. Se un titolare dei diritti contesta un brano, si toglie `canto` da quel brano e si rigenera.

## Verifica

- I test automatici del punto Test passano.
- La revisione editoriale conferma, brano per brano, che i valori di `canto` sono stati verificati a orecchio e che lo spartito non mostra ritmo né note di passaggio.

## Attuazione (2026-11-15)

- **Formato.** In ogni sezione del catalogo, `canto` è parallelo a `battute`: una stringa per battuta, con una nota per accordo separata da spazi. Le note sono ad altezza reale con ottava (`E4` = prima corda a vuoto, `G4` = prima corda al terzo tasto). `-` indica una pausa sull'attacco dell'accordo, `?` una nota ancora da trascrivere.
- **Quale nota.** La nota che suona sull'attacco dell'accordo, anche se tenuta o anticipata dalla battuta precedente. Se lì il tema tace, la prima nota attaccata mentre dura l'accordo; `-` solo se il tema tace per tutto l'accordo. L'ottava si sceglie per la chitarra: dove una nota è troppo grave per tre voci sotto, si sposta all'ottava superiore.
- **Verifica.** Ogni brano ha `canto_verificato`. Il generatore pubblica lo spartito `<slug>-chord-melody` solo con `canto_verificato = true` e nessun `?`; altrimenti la sezione resta il solo metodo e un eventuale spartito precedente viene cancellato.
- **Voicing.** Quattro voci sulle corde 4-3-2-1 o 5-4-3-2 (drop 2) e 6-4-3-2 o 5-3-2-1 (drop 3), tasti 1–15, estensione massima di quattro tasti, terza e settima sempre presenti. Una tensione al canto sostituisce la fondamentale (nona, ♭9, ♯9) o la quinta (11, ♯11, 13, ♭13); nei m7♭5 e dim7 sostituisce sempre la fondamentale. Fra le forme valide si sceglie la più vicina alla precedente. Dal 2026-11-18 senza settima al basso e con le famiglie di ripiego: vedi la sezione dedicata.
- **Test.** `test_chord_melody` verifica, con dati sintetici e nessuna melodia reale, corde, nota in cima, struttura drop, terza e settima, estensione e rifiuto dei formati errati. `test_nessuna_melodia` vieta MP3 e MIDI `*-chord-melody` e ora controlla davvero i file TOML (prima cercava file YAML, assenti).

## Regola confermata (2026-11-18)

Su richiesta dell'utente, nel chord melody degli standard si usano **solo voicing drop 2 e drop 3**. Si usano le varianti con un'estensione al canto (9, 11, 13) o un'alterazione (♭9, ♯9, ♯11, ♭13) solo quando la nota del tema non è un suono dell'accordo. La sostituzione è quella del punto Voicing dell'Attuazione. La regola vale sia per lo spartito generato sia per il metodo che la scheda propone allo studente. Per questo il testo generato non suggerisce più forme ridotte («due o tre voci») né, nei brani modali, gli accordi per quarte. Gli accordi per quarte restano ammessi nell'accompagnamento. La selezione del generatore rispettava già la regola: nessuno spartito è cambiato.

## Niente settima al basso e famiglie di ripiego (2026-11-18)

Su richiesta dell'utente, nella stessa giornata:

1. **Settima mai al basso.** Fra le forme drop 2 e drop 3 si scartano quelle con la settima minore o maggiore come voce più grave. La sesta degli accordi 6 e la settima diminuita dei dim7 restano ammesse al basso.
2. **Ripiego.** Se un accordo non ha alcun drop 2 o drop 3 valido senza settima al basso, il generatore prova le altre famiglie in quest'ordine e usa la prima che ha soluzioni (`CM_FALLBACK`):
   - **close position**: i suoni del drop (con la stessa sostituzione delle tensioni) entro un'ottava;
   - **rootless**: senza fondamentale, con terza, quinta, settima e le tensioni ammesse;
   - **per quarte**: intervalli di quarta giusta fra voci vicine, l'ultimo anche di terza maggiore;
   - **upper structure**, solo sugli accordi di dominante: la terza al basso e sopra una triade maggiore su II, ♭III, ♭V, ♭VI o VI;
   - **spread**: forma aperta con la terza al basso.
3. **Regole comuni a tutte le famiglie.** Quattro voci su quattro corde qualsiasi; tasti 1–15; estensione massima di quattro tasti; terza e settima presenti (anche la quinta in m7♭5 e dim7); settima mai al basso. Le tensioni ammesse sotto il canto sono in `CM_TENSIONS`: 9 e 13 su maj7 e 7, 9 su 6, 9 e 11 su m7, m6 e dim7, 11 e ♭13 su m7♭5. Una tensione al canto è sempre ammessa.
4. **Scelta.** Dentro la famiglia vince la forma più vicina alla precedente. A parità di comodità, sotto il canto la nona viene prima dell'undicesima e della tredicesima.

**Effetto sui dieci brani.** Prima della modifica 60 dei 288 voicing pubblicati avevano la settima al basso. Ne cambiano 72: gli altri 12 cambiano a cascata, per la scelta del voicing più vicino al precedente. Solo quattro accordi escono dai drop. In Blue Bossa, Fm7 con Fa5 al canto diventa uno spread La♭-Mi♭-Sol-Fa (corde 5-4-3-1, tasti 11-13-12-13). In Misty, Abmaj7 con Do4 al canto diventa, tre volte, un rootless Si♭-Mi♭-Sol-Do (corde 6-5-4-3, tasti 6-6-5-5). La scelta della forma spread per Fm7 è dell'utente.

## Questioni aperte

1. **Trascrizione (2026-11-15).** L'assistente ha ricavato le note al canto di nove brani da lead sheet forniti dall'utente, letti fuori dal repository e non copiati. Tutti i brani restano con `canto_verificato = false` fino al confronto a orecchio con la versione di riferimento. Maiden Voyage manca dalla raccolta fornita: le sue note restano `?`.
2. **Differenze di armonia fra lead sheet e catalogo.** In Misty (ultime due battute delle sezioni A dopo la prima) e There Will Never Be Another You (sezione C) i lead sheet hanno un'armonia diversa da quella del catalogo; le note sono state assegnate agli accordi del catalogo. Da verificare a orecchio.
3. **So What.** Il tema è affidato al basso; come nota al canto si è presa la voce superiore della prima risposta degli accordi (Si su Dm7, Do su E♭m7), e `-` nelle battute del solo basso. Da confermare.
4. **Now's the Time (2026-11-18).** Note al canto ricavate dal lead sheet fornito dall'utente, letto fuori dal repository e non copiato, sulla griglia del tema: Fa su tutte le battute 1–8 (anche su E7 ed E♭7 e su D7, dove è la ♯9 del D7(♯9) del lead sheet), La su Gm7, Sol su C7 (prima nota dopo la pausa), Do su F7 nelle ultime due battute (la seconda è l'anacrusi della ripresa). Verificate a orecchio dall'utente il 2026-11-18 (`canto_verificato = true`), spartito pubblicato. Con queste note il generatore sceglie solo forme drop 3, senza ripiego.
5. **Oleo (2026-11-20).** Note al canto ricavate dal lead sheet fornito dall'utente, letto fuori dal repository e non copiato. Su ogni accordo la nota sull'attacco o, dopo una pausa, la prima attaccata: per esempio Si♭ su B♭6 e Do su Gm7 alla prima battuta, Sol su B♭7 alla quinta (dopo la pausa), Si♭ su G7 alla settima, ♯9 dell'accordo. Il lead sheet scrive Cm7–F7–B♭6 nell'ultima battuta della seconda e della terza A; il catalogo ha F7–B♭6, con Re♭ su F7 e Si♭ (anticipato) su B♭6. Bridge senza tema: `-` su tutte le otto battute. Con queste note il generatore sceglie 34 forme drop 3 e 14 drop 2, senza ripiego. Verificate a orecchio dall'utente il 2026-11-20 (`canto_verificato = true`), spartito pubblicato.

## Collegamenti

- Supera in parte l'[ADR 0002](0002-nessuna-melodia-ascolti-youtube.md), punto 1, solo per il chord melody.
- [ADR 0001](0001-lilypond-diretto-e-generazione-python.md): file `.ly` generati, mai modificati a mano.
