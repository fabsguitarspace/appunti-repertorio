#!/usr/bin/env python3
"""Genera sorgenti LilyPond e parti RST delle schede dal catalogo data/brani/*.toml.

Uso:
    python3 scripts/generate_standards.py      # scrive .ly e aggiorna le parti generate
    ./build-lilypond.sh                        # compila SVG/PDF e MP3 tramite tools/appunti-musica

Per ogni brano produce:
    <slug>-griglia.ly      forma con sole sigle e barre (nessuna melodia, ADR 0002)
    <slug>-shell.ly        accompagnamento con shell sulle corde 6-4-3 e 5-4-3
    <slug>-guide-tones.ly  linea di terze e settime su tutta la forma
    <slug>-base-studio.ly  base a velocità di studio, un chorus
    <slug>-base.ly         base a velocità d'uso, due chorus

Le basi hanno basso, batteria e accompagnamento, senza melodia. Il campo ``feel`` sceglie
il disegno ritmico: ``ballad`` (due movimenti), ``bossa`` o ``crome dritte`` (crome regolari) o swing negli altri casi. I file .ly generati
non vanno modificati a mano. Nelle schede RST il generatore riscrive solo le parti
comprese fra i marcatori ``.. BEGIN nome:`` e ``.. END nome``; se una scheda non
esiste, ne crea lo scheletro con le sezioni del modello (analisi 001).
"""
from __future__ import annotations

import math
import re
import sys
import tomllib
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DATA = ROOT / 'data/brani'
LILYPOND = ROOT / 'src/lilypond'
DOCS = ROOT / 'src/docs'

FAMILIES = {
    '5-blues': 'Blues', '6-swing-medium': 'Swing medium', '7-ballad': 'Ballad',
    '8-latin-bossa': 'Latin e bossa', '9-bebop-contrafact': 'Bebop e contrafact',
    '10-modale-moderno': 'Modale e moderno',
}
LEVELS = {1: 'Livello 1', 2: 'Livello 2', 3: 'Livello 3'}
OPEN = {6: 40, 5: 45, 4: 50, 3: 55, 2: 59, 1: 64}
LETTERS = 'CDEFGAB'
NATURAL = {'C': 0, 'D': 2, 'E': 4, 'F': 5, 'G': 7, 'A': 9, 'B': 11}
# qualità → (terza, settima o sesta, quinta) come (passi di lettera, semitoni)
QUALITIES = {
    'maj7': ((2, 4), (6, 11), (4, 7)),
    '6': ((2, 4), (5, 9), (4, 7)),
    '7': ((2, 4), (6, 10), (4, 7)),
    'm7': ((2, 3), (6, 10), (4, 7)),
    'm6': ((2, 3), (5, 9), (4, 7)),
    'm7b5': ((2, 3), (6, 10), (4, 6)),
    'dim7': ((2, 3), (6, 9), (4, 6)),
}
FOUR_NOTE = {'m7b5', 'dim7'}
# Feel con crome regolari: basso su fondamentale e quinta con anticipo, charleston e cassa.
STRAIGHT = {'bossa', 'crome dritte'}   # niente shell: servono la quinta diminuita e la terza
CHORD_RE = re.compile(r'^([A-G])([b#]?)(maj7|m7b5|dim7|m7|m6|6|7)(?:/([A-G])([b#]?))?$')
SECTION_ORDER = ['identita', 'perche', 'storia', 'ascolti', 'melodia', 'forma', 'armonia',
                 'accompagnamento', 'guide', 'base', 'piano', 'collegati']


# --------------------------------------------------------------------------- note e accordi

@dataclass(frozen=True)
class Note:
    letter: str
    acc: int = 0

    @property
    def pc(self):
        return (NATURAL[self.letter] + self.acc) % 12

    def up(self, steps, semitones):
        """Nota a `steps` lettere e `semitones` semitoni sopra, con ortografia corretta."""
        letter = LETTERS[(LETTERS.index(self.letter) + steps) % 7]
        acc = (self.pc + semitones - NATURAL[letter] + 6) % 12 - 6
        return Note(letter, acc)

    def text(self):
        return self.letter + {-2: '♭♭', -1: '♭', 0: '', 1: '♯', 2: '♯♯'}[self.acc]

    def markup(self):
        glyph = {-1: r' \raise #0.7 \fontsize #-3 \flat', 1: r' \raise #0.7 \fontsize #-3 \sharp'}
        return f'"{self.letter}"' + glyph.get(self.acc, '')

    def ly(self, midi):
        """Nome LilyPond (\\language "english") con ottava assoluta."""
        name = self.letter.lower() + ('f' * -self.acc if self.acc < 0 else 's' * self.acc)
        octave = (midi - self.acc) // 12 - 4
        return name + ("'" * octave if octave > 0 else ',' * -octave)

    def midi_near(self, target):
        base = self.pc + 12 * (target // 12)
        return min((base - 12, base, base + 12), key=lambda p: (abs(p - target), p))


def parse_note(letter, acc):
    return Note(letter, {'': 0, 'b': -1, '#': 1}[acc])


@dataclass(frozen=True)
class Chord:
    symbol: str
    root: Note
    quality: str
    bass: Note

    @classmethod
    def parse(cls, symbol):
        m = CHORD_RE.match(symbol)
        if not m:
            raise ValueError(f'Sigla non riconosciuta: {symbol}')
        root = parse_note(m[1], m[2])
        bass = parse_note(m[4], m[5]) if m[4] else root
        return cls(symbol, root, m[3], bass)

    def tone(self, which):
        third, seventh, fifth = QUALITIES[self.quality]
        steps, semis = {'3': third, '7': seventh, '5': fifth}[which]
        return self.root.up(steps, semis), semis

    def text(self):
        quality = {'m7b5': 'm7♭5'}.get(self.quality, self.quality)
        out = self.root.text() + quality
        return out + ('/' + self.bass.text() if self.bass != self.root else '')

    def markup(self):
        quality = {'m7b5': r'"m7" \raise #0.7 \fontsize #-3 \flat "5"'}.get(self.quality, f'"{self.quality}"')
        bass = f' "/" {self.bass.markup()}' if self.bass != self.root else ''
        return rf'\markup {{ \concat {{ {self.root.markup()} {quality}{bass} }} }}'


def bars_of(tune):
    """Elenco delle battute: ogni battuta è una lista di (accordo, movimenti)."""
    out = []
    for section in tune['sezioni']:
        for i, bar in enumerate(section['battute']):
            symbols = bar.split()
            if len(symbols) not in (1, 2):
                raise ValueError(f"{tune['slug']}: battuta con {len(symbols)} accordi: {bar}")
            beats = 4 // len(symbols)
            out.append(dict(chords=[(Chord.parse(s), beats) for s in symbols],
                            section=section['nome'] if i == 0 else None))
    return out


def expected_bars(tune):
    m = re.search(r'(\d+)$', tune['forma'])
    return int(m[1]) if m else None


def load_catalogue():
    tunes = [tomllib.loads(p.read_text()) for p in sorted(DATA.glob('*.toml'))]
    for t in tunes:
        if t['famiglia'] not in FAMILIES:
            raise ValueError(f"{t['slug']}: famiglia sconosciuta {t['famiglia']}")
        if len(bars_of(t)) != expected_bars(t):
            raise ValueError(f"{t['slug']}: {len(bars_of(t))} battute, forma {t['forma']}")
        for key in t:
            if key.lower() in ('melodia', 'melody', 'tema_note'):
                raise ValueError(f"{t['slug']}: campo vietato dall'ADR 0002: {key}")
        canto_of(t)                       # ADR 0005: una nota per accordo, formato valido
    return tunes


# --------------------------------------------------------------------------- voicing

def candidates(chord):
    """Shell possibili: shell 6-4-3 / 5-4-3, oppure 4 note per m7♭5 e dim7."""
    r3, s3 = chord.tone('3')
    r7, s7 = chord.tone('7')
    r5, s5 = chord.tone('5')
    root = chord.root
    out = []
    for low in (6, 5):
        f0 = (root.pc - OPEN[low]) % 12 or 12
        for f in (f0, f0 + 12):
            r = OPEN[low] + f
            if chord.quality in FOUR_NOTE:
                if low == 5:
                    plan = [(5, root, r), (4, r5, r + s5), (3, r7, r + s7), (2, r3, r + 12 + s3)]
                else:
                    plan = [(6, root, r), (4, r7, r + s7), (3, r3, r + 12 + s3), (2, r5, r + 12 + s5)]
            elif low == 6:
                plan = [(6, root, r), (4, r7, r + s7), (3, r3, r + 12 + s3)]
            else:
                plan = [(5, root, r), (4, r3, r + s3), (3, r7, r + s7)]
            frets = [p - OPEN[s] for s, n, p in plan]
            if min(frets) < 1 or max(frets) > 13 or max(frets) - min(frets) > 3:
                continue
            out.append(tuple((s, n, p) for s, n, p in plan))
    if not out:
        raise ValueError(f'Nessun voicing per {chord.symbol}')
    return out


def voice_lead(chords):
    """Sceglie per ogni accordo il voicing più vicino al precedente (moto minimo)."""
    chosen, previous = [], None
    for chord in chords:
        def cost(v):
            frets = [p - OPEN[s] for s, n, p in v]
            if previous is None:
                return abs(sum(frets) / len(frets) - 5)
            return abs(sum(frets) / len(frets) - previous) + 0.01 * frets[0]
        best = min(candidates(chord), key=cost)
        frets = [p - OPEN[s] for s, n, p in best]
        previous = sum(frets) / len(frets)
        chosen.append(best)
    return chosen


def guide_line(chords):
    """Terze e settime (o seste) con il movimento più breve, nel registro Sol3–Re5."""
    line, previous = [], None
    for chord in chords:
        options = []
        for which in ('3', '7'):
            note, _ = chord.tone(which)
            for p in range(55, 75):
                if p % 12 == note.pc:
                    options.append((note, p, which))
        if previous is None:
            pick = min((o for o in options if o[2] == '3'), key=lambda o: abs(o[1] - 64))
        else:
            pick = min(options, key=lambda o: (abs(o[1] - previous), o[1] > previous))
        previous = pick[1]
        line.append(pick)
    return line


# --------------------------------------------------------------------------- chord melody (ADR 0005)

PITCH_RE = re.compile(r'^([A-G])([b#]?)(\d)$')
# Corde per i voicing a quattro voci: drop 2 su corde adiacenti, drop 3 con una corda saltata.
CM_SETS = {(4, 3, 2, 1): 'drop 2', (5, 4, 3, 2): 'drop 2', (6, 4, 3, 2): 'drop 3', (5, 3, 2, 1): 'drop 3'}
CM_MAX_FRET = 15


def parse_pitch(text):
    """Nota con ottava ad altezza reale (E4 = prima corda a vuoto) → (Note, midi)."""
    m = PITCH_RE.match(text)
    if not m:
        raise ValueError(f'Nota al canto non riconosciuta: {text} (formato: G4, Bb4, F#5; - per una pausa; ? da trascrivere)')
    note = parse_note(m[1], m[2])
    return note, NATURAL[m[1]] + note.acc + 12 * (int(m[3]) + 1)


def canto_of(tune):
    """Note al canto, una per accordo nell'ordine delle sigle; None per una pausa ('-') o per una
    nota ancora da trascrivere ('?').

    Restituisce None se il brano non ha il campo ``canto`` in nessuna sezione."""
    sections = tune['sezioni']
    if not any('canto' in sec for sec in sections):
        return None
    out = []
    for sec in sections:
        if 'canto' not in sec or len(sec['canto']) != len(sec['battute']):
            raise ValueError(f"{tune['slug']}: sezione {sec['nome']}: canto assente o con un numero di "
                             'battute diverso da battute')
        for bar, notes in zip(sec['battute'], sec['canto']):
            tokens = notes.split()
            if len(tokens) != len(bar.split()):
                raise ValueError(f"{tune['slug']}: canto {notes!r} non ha una nota per accordo in {bar!r}")
            out += [None if tok in ('-', '?') else parse_pitch(tok) for tok in tokens]
    return out


def canto_complete(tune):
    """Vero se nessuna nota al canto è ancora da trascrivere ('?')."""
    return all('?' not in bar.split() for sec in tune['sezioni'] for bar in sec.get('canto', []))


def chord_melody_published(tune):
    if canto_of(tune) is None or tune.get('canto_verificato') is not True:
        return False
    if not canto_complete(tune):
        raise ValueError(f"{tune['slug']}: canto_verificato = true ma ci sono note da trascrivere ('?')")
    return True


def cm_pitch_classes(chord, top):
    """Classi di altezza disponibili sotto la nota al canto.

    Fondamentale, terza, quinta e settima (o sesta); una tensione al canto sostituisce la fondamentale
    (nona, ♭9, ♯9) oppure la quinta (11, ♯11, 13, ♭13), salvo negli accordi in cui la quinta
    diminuita è necessaria (m7♭5, dim7), dove sostituisce la fondamentale."""
    tones = {'R': chord.root.pc, '3': chord.tone('3')[0].pc, '5': chord.tone('5')[0].pc,
             '7': chord.tone('7')[0].pc}
    if top.pc not in tones.values():
        interval = (top.pc - chord.root.pc) % 12
        drop = 'R' if interval in (1, 2, 3) or chord.quality in FOUR_NOTE else '5'
        del tones[drop]
    required = {tones['3'], tones['7']} | ({tones['5']} if chord.quality in FOUR_NOTE and '5' in tones else set())
    return tones, required


def is_drop(pitches, kind):
    """pitches ascendenti; drop 2 / drop 3 rispetto a una posizione stretta entro l'ottava."""
    low = pitches[0] + 12
    rest = pitches[1:]
    close = sorted(rest + [low])
    if close[-1] - close[0] >= 12:
        return False
    position = close.index(low)          # 0 = più grave; 3 = più acuta
    return position == (2 if kind == 'drop 2' else 1)


def cm_candidates(chord, top_note, top):
    tones, required = cm_pitch_classes(chord, top_note)
    pcs = set(tones.values())
    names = {}
    for name, pc in tones.items():
        names[pc] = chord.root if name == 'R' else chord.tone(name)[0]
    out = []
    for strings, kind in CM_SETS.items():
        top_fret = top - OPEN[strings[-1]]
        if not 1 <= top_fret <= CM_MAX_FRET:
            continue
        lower = strings[:-1]
        options = [[OPEN[s] + f for f in range(1, CM_MAX_FRET + 1) if (OPEN[s] + f) % 12 in pcs]
                   for s in lower]
        for a in options[0]:
            for b in options[1]:
                for c in options[2]:
                    pitches = [a, b, c, top]
                    if not a < b < c < top:
                        continue
                    below = {a % 12, b % 12, c % 12}
                    if len(below) != 3 or top % 12 in below or not required <= below | {top % 12}:
                        continue
                    if not is_drop(pitches, kind):
                        continue
                    frets = [p - OPEN[s] for s, p in zip(strings, pitches)]
                    if max(frets) - min(frets) > 4:
                        continue
                    voicing = tuple((s, names[p % 12], p) for s, p in zip(strings[:-1], pitches[:-1]))
                    out.append((voicing + ((strings[-1], top_note, top),), kind))
    return out


def chord_melody_voicings(tune, chords):
    """Per ogni accordo, il voicing con la nota al canto in cima più vicino al precedente."""
    chosen, previous = [], None
    for chord, entry in zip(chords, canto_of(tune)):
        if entry is None:
            chosen.append(None)
            continue
        note, top = entry
        options = cm_candidates(chord, note, top)
        if not options:
            raise ValueError(f"{tune['slug']}: nessun voicing drop 2/drop 3 per {chord.symbol} con "
                             f'{note.text()} al canto ({top})')
        def cost(option):
            frets = [p - OPEN[s] for s, n, p in option[0]]
            centre = sum(frets) / len(frets)
            span = max(frets) - min(frets)
            return (abs(centre - (previous if previous is not None else 6)) + 0.5 * span
                    + (0.2 if option[1] == 'drop 3' else 0))
        best = min(options, key=cost)
        frets = [p - OPEN[s] for s, n, p in best[0]]
        previous = sum(frets) / len(frets)
        chosen.append(best[0])
    return chosen


# --------------------------------------------------------------------------- LilyPond

DURATION = {4: '1', 2: '2'}


def header(title, subtitle, overlay=False):
    lines = ['% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.']
    if overlay:
        lines.append('% soundfont-overlay: sf/PracticeRhythm.sf2')
    lines += ['\\version "2.26.0"', '\\language "english"',
              f'\\header {{ title = "{title}" subtitle = "{subtitle}" tagline = ##f }}']
    return '\n'.join(lines)


def paper(systems, per_system):
    height = max(120, 60 + systems * per_system)
    return (f'\\paper {{ page-breaking = #ly:one-page-breaking line-width = 160\\mm '
            f'paper-height = {height}\\mm ragged-right = ##f ragged-last-bottom = ##t }}')


def bar_lines(bars, render):
    """Unisce le battute, quattro per riga, con etichette di sezione e doppie barre."""
    out = []
    for i, bar in enumerate(bars):
        prefix = ''
        if bar['section']:
            prefix = (r'\section ' if i else '') + rf'\sectionLabel "{bar["section"]}" '
        line = prefix + render(i, bar) + ' |'
        if (i + 1) % 4 == 0 and i + 1 < len(bars):
            line += r' \break'
        out.append(line)
    return '\n  '.join(out)


def flat_chords(bars):
    return [c for bar in bars for c in bar['chords']]


def chart_music(bars):
    def render(i, bar):
        tokens = []
        for chord, beats in bar['chords']:
            tokens.append(f"b'4^{chord.markup()}" + " b'4" * (beats - 1))
        return ' '.join(tokens)
    return r'\improvisationOn ' + bar_lines(bars, render) + r' \improvisationOff \bar "|."'


def chart_score(tune, bars):
    systems = math.ceil(len(bars) / 4)
    return rf'''\score {{
 \new Staff \with {{ \remove "Clef_engraver" \override TimeSignature.stencil = ##f }} \absolute {{
  {key_of(tune)} \time 4/4 \omit Accidental
  {chart_music(bars)}
 }}
 \layout {{ indent = 0 system-count = #{systems}
  \context {{ \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 }} }}
}}'''


def voicing_token(voicing, duration, chord=None):
    notes = ' '.join(f'{n.ly(p)}\\{s}' for s, n, p in voicing)
    token = f'<{notes}>{duration}'
    return token + (f'^{chord.markup()}' if chord else '')


def comp_music(bars, voicings, labels=True):
    it = iter(voicings)
    def render(i, bar):
        return ' '.join(voicing_token(next(it), DURATION[beats], chord if labels else None)
                        for chord, beats in bar['chords'])
    return bar_lines(bars, render)


def guide_strings(line, voicings):
    """Corda per ogni nota della linea: tasto 1–12, vicino alla posizione dello shell."""
    out = []
    for (note, pitch, _), voicing in zip(line, voicings):
        position = sum(p - OPEN[s] for s, n, p in voicing) / len(voicing)
        options = [(s, pitch - OPEN[s]) for s in (1, 2, 3, 4) if 1 <= pitch - OPEN[s] <= 12]
        out.append(min(options, key=lambda o: (abs(o[1] - position), o[0]))[0])
    return out


def guide_music(bars, line, voicings):
    it = iter(zip(line, guide_strings(line, voicings)))
    def render(i, bar):
        tokens = []
        for chord, beats in bar['chords']:
            (note, pitch, _), string = next(it)
            tokens.append(f'{note.ly(pitch)}{DURATION[beats]}\\{string}^{chord.markup()}')
        return ' '.join(tokens)
    return bar_lines(bars, render)


def key_of(tune):
    tonic, mode = tune['chiave'].split()
    return f'\\key {tonic} \\{mode}'


def staff_tab(tune, music_name, systems):
    return rf'''\score {{
 \new StaffGroup <<
  \new Staff {{ \clef "treble_8" {key_of(tune)} \{music_name} }}
  \new TabStaff {{ \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \{music_name} }}
 >>
 \layout {{ indent = 0 system-count = #{systems}
  \context {{ \Voice \override TextScript.staff-padding = #2 }}
  \context {{ \Score \omit StringNumber }} }}
}}'''


def countin_guitar(bpm):
    return rf"\tempo 4 = {bpm} c'''4\p c''' c''' c''' \mf"


def shell_source(tune, bars, voicings):
    systems = math.ceil(len(bars) / 4)
    return '\n'.join([
        header(tune['titolo'], 'Accompagnamento con shell'),
        paper(systems, 42),
        f"comp = \\absolute {{ \\time 4/4\n  {comp_music(bars, voicings)} \\bar \"|.\" }}",
        staff_tab(tune, 'comp', systems),
        rf'\score {{ \new Staff {{ \set Staff.midiInstrument = "acoustic grand" {countin_guitar(tune["bpm_studio"])} \comp }} \midi {{ }} }}',
        ''])


def chord_melody_source(tune, bars, voicings):
    """Un voicing per cambio, tutti della stessa durata grafica: niente ritmo (ADR 0005)."""
    it = iter(voicings)
    def render(i, bar):
        tokens = []
        for chord, _ in bar['chords']:
            v = next(it)
            tokens.append(voicing_token(v, '1', chord) if v else f'r1^{chord.markup()}')
        return ' '.join(tokens)
    out = []
    for i, bar in enumerate(bars):
        prefix = ''
        if bar['section']:
            prefix = (r'\section ' if i else '') + rf'\sectionLabel "{bar["section"]}" '
        line = prefix + render(i, bar) + r' \bar "|"'
        if (i + 1) % 4 == 0 and i + 1 < len(bars):
            line += r' \break'
        out.append(line)
    systems = math.ceil(len(bars) / 4)
    music = '\n  '.join(out)
    return '\n'.join([
        header(tune['titolo'], 'Chord melody: un voicing per cambio, nota del tema al canto'),
        paper(systems, 42),
        f"cm = \\absolute {{ \\cadenzaOn \\omit Staff.TimeSignature\n  {music} \\bar \"|.\" }}",
        staff_tab(tune, 'cm', systems),
        ''])


def guide_source(tune, bars, voicings, line):
    systems = math.ceil(len(bars) / 4)
    return '\n'.join([
        header(tune['titolo'], 'Guide tones: terze e settime'),
        paper(systems, 42),
        f"guide = \\absolute {{ \\time 4/4\n  {guide_music(bars, line, voicings)} \\bar \"|.\" }}",
        f"comp = \\absolute {{ \\time 4/4\n  {comp_music(bars, voicings, labels=False)} }}",
        staff_tab(tune, 'guide', systems),
        rf'''\score {{ <<
  \new Staff {{ \set Staff.midiInstrument = "acoustic grand" {countin_guitar(tune['bpm_studio'])} \guide }}
  \new Staff {{ \set Staff.midiInstrument = "acoustic grand" r1 \pp \comp }}
 >> \midi {{ }} }}''',
        ''])


# --------------------------------------------------------------------------- basi

FLAT_NAMES = ['c', 'df', 'd', 'ef', 'e', 'f', 'gf', 'g', 'af', 'a', 'bf', 'b']


def pitch_name(p):
    octave = p // 12 - 4
    return FLAT_NAMES[p % 12] + ("'" * octave if octave > 0 else ',' * -octave)


def bass_root(note):
    """Fondamentale del basso fra La1 (33) e Sol♯2 (44)."""
    return 33 + (note.pc - 9) % 12


LONG_RUN = 4   # battute consecutive sullo stesso accordo oltre le quali il walking varia


def run_positions(chords):
    """Per ogni accordo: (posizione nella serie di accordi uguali, lunghezza della serie)."""
    out, i = [], 0
    while i < len(chords):
        j = i
        while j < len(chords) and chords[j][0].symbol == chords[i][0].symbol and chords[j][1] == 4:
            j += 1
        j = max(j, i + 1)
        out += [(k, j - i) for k in range(j - i)]
        i = j
    return out


def bassline(chords, feel):
    """Linea di basso come elenco di (altezza, durata LilyPond).

    Swing: walking con fondamentale, note dell'accordo e approccio cromatico; sulle serie
    lunghe dello stesso accordo (brani modali) il disegno cambia a ogni battuta.
    Ballad: due movimenti. Bossa: fondamentale e quinta con l'anticipo in levare.
    """
    events = []
    runs = run_positions(chords)
    for i, (chord, beats) in enumerate(chords):
        nxt = chords[(i + 1) % len(chords)][0]
        r = bass_root(chord.bass)
        target = bass_root(nxt.bass)
        _, s3 = chord.tone('3')
        _, s5 = chord.tone('5')
        _, s7 = chord.tone('7')
        if feel == 'ballad':
            events += [(r, '2'), (r + s5, '2')] if beats == 4 else [(r, '2')]
            continue
        if feel in STRAIGHT:
            fifth = r + s5 - 12 if r + s5 - 12 >= 31 else r + s5
            if beats == 4:
                events += [(r, '4.'), (fifth, '8'), (fifth, '4.'), (target, '8')]
            else:
                events += [(r, '4.'), (target, '8')]
            continue
        approach = target - 1 if target > r + s5 - 6 else target + 1
        position, length = runs[i]
        if beats == 4 and length >= LONG_RUN:
            last = approach if position == length - 1 else None
            pattern = [
                [r, r + s3, r + s5, r + s7],
                [r + 12, r + s7, r + s5, r + s3],
                [r, r + s5, r + s7, r + s5],
                [r + 12, r + s7, r + s5, approach],
            ][position % 4]
            if last is not None:
                pattern[3] = last
            events += [(p, '4') for p in pattern]
        elif beats == 4:
            events += [(r, '4'), (r + s3, '4'), (r + s5, '4'), (approach, '4')]
        else:
            events += [(r, '4'), (approach, '4')]
    return events


def drum_bar(feel):
    if feel == 'ballad':
        return 'cymr4 <cymr hh>4 cymr4 <cymr hh>4'
    if feel in STRAIGHT:
        return '<hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd>'
    return r'cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 }'


def base_source(tune, bars, voicings, choruses, bpm, label):
    feel = tune['feel']
    chords = flat_chords(bars)
    bass = ' '.join(f'{pitch_name(p)}{d}' for p, d in bassline(chords, feel))
    comp = ' '.join(voicing_token(v, DURATION[b]) for v, (c, b) in zip(voicings, chords))
    drums = ' '.join(drum_bar(feel) for _ in bars)
    systems = math.ceil(len(bars) / 4)
    unfold = rf'\repeat unfold {choruses}'
    return '\n'.join([
        header(tune['titolo'], label, overlay=True),
        paper(systems, 18),
        chart_score(tune, bars),
        rf'''\score {{ <<
  \new Staff {{ \tempo 4 = {bpm} s1 {unfold} {{ s1*{len(bars)} }} }}
  \new Staff {{ \set Staff.midiInstrument = "acoustic grand" r1 \pp {unfold} {{ \absolute {{ {comp} }} }} }}
  \new Staff {{ \set Staff.midiInstrument = "electric bass (finger)" r1 \mf {unfold} {{ \absolute {{ {bass} }} }} }}
  \new DrumStaff {{ \drummode {{ hh4\p hh hh hh }} {unfold} {{ \drummode {{ {drums} }} }} }}
 >> \midi {{ }} }}''',
        ''])


def write_sources(tune):
    bars = bars_of(tune)
    chords = [c for c, _ in flat_chords(bars)]
    voicings = voice_lead(chords)
    line = guide_line(chords)
    slug = tune['slug']
    files = {
        f'{slug}-griglia': '\n'.join([header(tune['titolo'], 'Forma e sigle'),
                                      paper(math.ceil(len(bars) / 4), 18), chart_score(tune, bars), '']),
        f'{slug}-shell': shell_source(tune, bars, voicings),
        f'{slug}-guide-tones': guide_source(tune, bars, voicings, line),
        f'{slug}-base-studio': base_source(tune, bars, voicings, 1, tune['bpm_studio'],
                                           f"Base, {tune['bpm_studio']} BPM, un chorus"),
        f'{slug}-base': base_source(tune, bars, voicings, 2, tune['bpm_uso'],
                                    f"Base, {tune['bpm_uso']} BPM, due chorus"),
    }
    stale = LILYPOND / f'{slug}-chord-melody.ly'
    if chord_melody_published(tune):
        files[f'{slug}-chord-melody'] = chord_melody_source(tune, bars, chord_melody_voicings(tune, chords))
    else:
        if canto_of(tune) is not None:
            chord_melody_voicings(tune, chords)      # la bozza va comunque risolta, anche se non pubblicata
        if stale.exists():
            stale.unlink()                           # bozza non verificata: niente spartito
    for stem, text in files.items():
        path = LILYPOND / f'{stem}.ly'
        if not path.exists() or path.read_text() != text:
            path.write_text(text)
    return list(files)


# --------------------------------------------------------------------------- RST

def audio(path, label):
    return f'''.. raw:: html

   <audio controls class="audio-controls" preload="none" aria-label="{label}">
     <source src="{path}.mp3" type="audio/mpeg">
   </audio>'''


def authors(tune):
    return '; '.join(f"{a['nome']} ({a['ruolo']})" for a in tune['autori'])


def block_identita(t):
    rows = [('Autori', authors(t)), ('Anno', str(t['anno'])), ('Origine', t['origine']),
            ('Forma', t['forma']), ('Tonalità', t['tonalita']),
            ('Tempo e feel', f"{t['feel']}; base a {t['bpm_studio']} e a {t['bpm_uso']} BPM"),
            ('Livello', str(t['livello'])), ('Famiglia', f":doc:`../{t['famiglia']}`"),
            ('Versione seguita', t['versione'])]
    body = '\n'.join(f'   * - {k}\n     - {v}' for k, v in rows)
    return f'.. list-table::\n   :widths: 25 75\n   :class: scheda-identita\n\n{body}'


ROLES = {'riferimento': 'versione di riferimento', 'chitarra': 'versione per chitarra'}


def block_ascolti(t):
    out = []
    for a in t.get('ascolti', []):
        title = f"**{a['artista']}** — {a['versione']} ({ROLES.get(a['ruolo'], a['ruolo'])})."
        link = f"\n\n  `Ascolta su YouTube <{a['youtube']}>`__" if a.get('youtube') else ''
        out.append(f"- {title}{link}\n\n  **Compito.** {a['compito']}")
    if any(not a.get('youtube') for a in t.get('ascolti', [])):
        out.append('Per le versioni senza collegamento cerca la registrazione nei servizi di ascolto '
                   'o in un\'edizione su disco.')
    if not any(a['ruolo'] == 'chitarra' for a in t.get('ascolti', [])):
        out.append('Una versione per chitarra sarà aggiunta in seguito.')
    return '\n\n'.join(out)


def block_forma(t, bars):
    lines, counts = [], []
    i = 0
    for section in t['sezioni']:
        n = len(section['battute'])
        rows = []
        for k in range(0, n, 4):
            cells = bars[i + k:i + min(k + 4, n)]
            rows.append('    | ' + ' | '.join(' '.join(c.text() for c, _ in b['chords']) for b in cells) + ' |')
        lines.append(f"**{section['nome']}** — {n} battute\n\n" + '\n'.join(rows))
        i += n
    return ('\n\n'.join(lines) +
            f"\n\n.. image:: ../_static/music/{t['slug']}-griglia.*\n   :width: 100%\n"
            f"   :alt: {t['titolo']}: forma e sigle, senza melodia")


def block_media(t, stem, alt, label):
    return (f".. image:: ../_static/music/{t['slug']}-{stem}.*\n   :width: 100%\n   :alt: {t['titolo']}: {alt}\n\n"
            + audio(f"../_static/music/{t['slug']}-{stem}", f"{t['titolo']}, {label}"))


def block_base(t):
    return (f"**Studio, {t['bpm_studio']} BPM, un chorus.**\n\n"
            + audio(f"../_static/music/{t['slug']}-base-studio", f"{t['titolo']}, base a {t['bpm_studio']} BPM")
            + f"\n\n**Uso, {t['bpm_uso']} BPM, due chorus.**\n\n"
            + audio(f"../_static/music/{t['slug']}-base", f"{t['titolo']}, base a {t['bpm_uso']} BPM"))


def block_collegati(t, by_slug):
    items = [f"- :doc:`{by_slug[c['slug']]['titolo']} <{c['slug']}>`: {c['motivo']}."
             for c in t.get('collegati', []) if c['slug'] in by_slug]
    return '\n'.join(items) or '*Nessun brano collegato nel catalogo attuale.*'


PRATICA_ACCORDI = 'https://appunti-pratica-per-chitarra-jazz.readthedocs.io/it/latest/6-accordi.html'
CHORD_MELODY_FEEL = {
    'ballad': 'In una ballad puoi suonare rubato: arpeggia gli accordi sotto le note lunghe e '
              'lascia respirare la fine delle frasi.',
    'bossa': 'In bossa tieni il pollice sui bassi, al primo e al terzo movimento, e la melodia sopra '
             'con le altre dita: è il modo più naturale di suonare il brano da solo.',
    'crome dritte': 'Quando un accordo dura più battute, tieni ferma la forma e muovi solo la voce più '
                    'acuta insieme al tema.',
    'up swing': 'Al tempo d\'uso un chord melody non regge: arrangia il brano lento, quasi come una '
                'ballad, e lascia a note singole i passaggi più veloci.',
}
CHORD_MELODY_SWING = ('Studialo lento ma in tempo: accordi sui tempi forti e sulle note lunghe, '
                      'note singole sulle crome.')


def longest_run(bars):
    """Numero massimo di battute consecutive con lo stesso accordo, da solo nella battuta."""
    best = run = 0
    prev = None
    for b in bars:
        cur = b['chords'][0][0].text() if len(b['chords']) == 1 else None
        run = run + 1 if cur is not None and cur == prev else (1 if cur else 0)
        prev = cur
        best = max(best, run)
    return best


def block_chordmelody(t, bars):
    """Metodo per il chord melody; con note al canto verificate, anche lo spartito dei voicing (ADR 0005)."""
    published = chord_melody_published(t)
    split = sum(len(b['chords']) == 2 for b in bars)
    run = longest_run(bars)
    rhythm = []
    if split:
        where = 'una battuta' if split == 1 else f'{split} battute'
        rhythm.append(f"In {where} su {len(bars)} gli accordi cambiano a metà battuta: "
                      'lì scegli forme drop 2 o drop 3 vicine fra loro, per non spostare la mano.')
    if run >= 4:
        rhythm.append(f"Dove un accordo dura fino a {run} battute di fila, cambia voicing sotto le note "
                      'lunghe invece di ripetere la stessa forma.')
    steps = [
        f"Trova il tema in {t['tonalita']} sulle prime tre corde, all'ottava più acuta che ti è comoda: "
        'la melodia deve restare sempre sopra gli accordi.',
        ('Su ogni cambio di accordo suona il voicing dello spartito qui sotto: ha la nota del tema al '
         'canto ed è scelto per muovere la mano il meno possibile. Se una forma non ti è comoda, cercane '
         'un\'altra drop 2 o drop 3 con la stessa nota in cima.' if published else
         'Su ogni cambio di accordo cerca un voicing drop 2 o drop 3 che abbia la nota del tema al canto. '
         'Se la nota del tema non è un suono dell\'accordo, è una tensione: la nona (o ♭9, ♯9) prende il '
         'posto della fondamentale, l\'undicesima o la tredicesima (o ♯11, ♭13) quello della quinta.'),
        'Fra un cambio e l\'altro suona le note del tema da sole, o con il solo basso sotto.',
    ]
    if rhythm:
        steps.append(' '.join(rhythm))
    steps.append(CHORD_MELODY_FEEL.get(t['feel'], CHORD_MELODY_SWING))
    first = t['sezioni'][0]
    n = len(first['battute'])
    target, pron = ((f"la prima sezione {first['nome']} ({n} battute)", 'suonala') if len(t['sezioni']) > 1
                    else (f"il primo chorus ({n} battute)", 'suonalo'))
    return (
        ('Il chord melody è il tema suonato da soli, con gli accordi sotto. La scheda propone un voicing '
           'per ogni cambio di accordo, senza ritmo e senza le note fra un cambio e l\'altro: '
           'l\'arrangiamento lo completi tu, partendo dal tema imparato a orecchio.\n\n' if published else
           'Il chord melody è il tema suonato da soli, con gli accordi sotto. La scheda non contiene né la '
           'melodia né un arrangiamento: lo costruisci tu, partendo dal tema imparato a orecchio, e resta '
           'un lavoro tuo.\n\n')
        + f"Il vocabolario è in `Voicing per il chord melody <{PRATICA_ACCORDI}#chord-melody-voicings>`__ "
        'negli Appunti di Pratica. L\'esempio '
        f"`Mettere tutto insieme: otto battute <{PRATICA_ACCORDI}#mettere-tutto-insieme-otto-battute>`__ "
        'mostra il procedimento su una progressione originale.\n\n'
        + '\n'.join(f'#. {s}' for s in steps)
        + (f"\n\n.. image:: ../_static/music/{t['slug']}-chord-melody.*\n   :width: 100%\n"
           f"   :alt: {t['titolo']}: un voicing per ogni cambio di accordo, con la nota del tema al canto"
           if published else '')
        + f"\n\n**Compito.** Arrangia {target}, con un accordo su ogni cambio, e {pron} senza base, "
        'lentamente e senza fermarti.'
        '\n\n**Verifica.** La nota più acuta di ogni accordo è sempre quella del tema? Chi ascolta '
        'riconosce il brano senza la base?'
    )


SKELETON = [
    ('identita', None), ('perche', 'Perché studiarlo'), ('storia', 'Storia e contesto'),
    ('ascolti', 'Ascolti guidati'), ('melodia', 'Imparare la melodia a orecchio'),
    ('forma', 'Mappa della forma'), ('armonia', 'Lettura armonica'),
    ('accompagnamento', 'Accompagnamento'), ('chordmelody', 'Chord melody'),
    ('guide', 'Linee per improvvisare'),
    ('base', 'Base per suonare'), ('piano', 'Piano di studio'), ('collegati', 'Brani collegati'),
]
GENERATED_IN_CARD = {'identita', 'ascolti', 'forma', 'accompagnamento', 'chordmelody', 'guide', 'base',
                     'collegati'}


def marker(name, body):
    return (f'.. BEGIN {name}: generato da scripts/generate_standards.py, non modificare a mano\n\n'
            f'{body}\n\n.. END {name}')


def skeleton(t):
    title = t['titolo']
    parts = [f".. _brano-{t['slug']}:\n\n{title}\n{'=' * len(title)}"]
    for key, heading in SKELETON:
        section = f'{heading}\n{"-" * len(heading)}\n\n' if heading else ''
        if key in GENERATED_IN_CARD:
            section += marker(key, '')
        else:
            section += '*Da scrivere.*'
        parts.append(section)
    return '\n\n'.join(parts) + '\n'


def replace_block(text, name, body, path):
    pattern = re.compile(rf'(^\.\. BEGIN {name}:[^\n]*\n).*?(^\.\. END {name}$)', re.S | re.M)
    if len(pattern.findall(text)) != 1:
        raise ValueError(f'{path}: marcatori {name} assenti o ripetuti')
    return pattern.sub(lambda m: m[1] + '\n' + body + '\n\n' + m[2], text)


def update(path, blocks, create=None):
    text = path.read_text() if path.exists() else create
    new = text
    for name, body in blocks.items():
        new = replace_block(new, name, body, path)
    if new != text or not path.exists():
        path.write_text(new)


def sort_key(t):
    return t['titolo'].lower()


def family_block(tunes):
    if not tunes:
        return '*Le schede di questa famiglia sono in preparazione.*'
    rows = '\n'.join(f"   * - :doc:`brani/{t['slug']}`\n     - {t['forma']}\n     - {t['tonalita']}\n     - {t['livello']}"
                     for t in tunes)
    toc = '\n'.join(f"   brani/{t['slug']}" for t in tunes)
    return (f'.. list-table::\n   :header-rows: 1\n   :widths: 40 20 25 15\n\n'
            f'   * - Brano\n     - Forma\n     - Tonalità\n     - Livello\n{rows}\n\n'
            f'.. toctree::\n   :hidden:\n\n{toc}')


def grouped(tunes, key, title):
    groups = {}
    for t in sorted(tunes, key=sort_key):
        groups.setdefault(key(t), []).append(t)
    out = [f'{title}\n{"-" * len(title)}']
    for name in sorted(groups):
        out.append(f'**{name}**\n\n' + '\n'.join(f"- :doc:`brani/{t['slug']}`" for t in groups[name]))
    return '\n\n'.join(out)


def indexes_block(tunes):
    return '\n\n'.join([
        grouped(tunes, lambda t: t['forma'], 'Per forma'),
        grouped(tunes, lambda t: t['tonalita'], 'Per tonalità'),
        grouped(tunes, lambda t: t['feel'], 'Per tempo e feel'),
        grouped(tunes, lambda t: LEVELS[t['livello']], 'Per livello'),
    ])


def plans_block(tunes):
    out = []
    for level, title in LEVELS.items():
        chosen = sorted((t for t in tunes if t['livello'] == level), key=sort_key)
        items = '\n'.join(f"- :doc:`brani/{t['slug']}` — {t['forma']}, {t['feel']}" for t in chosen)
        out.append(f'{title}\n{"-" * len(title)}\n\n' + (items or '*Nessun brano ancora.*'))
    return '\n\n'.join(out)


def write_docs(tunes):
    by_slug = {t['slug']: t for t in tunes}
    for t in tunes:
        bars = bars_of(t)
        update(DOCS / 'brani' / f"{t['slug']}.rst", {
            'identita': block_identita(t),
            'ascolti': block_ascolti(t),
            'forma': block_forma(t, bars),
            'accompagnamento': block_media(t, 'shell', 'accompagnamento con shell',
                                           f"accompagnamento con shell a {t['bpm_studio']} BPM"),
            'chordmelody': block_chordmelody(t, bars),
            'guide': block_media(t, 'guide-tones', 'guide tones', f"guide tones a {t['bpm_studio']} BPM"),
            'base': block_base(t),
            'collegati': block_collegati(t, by_slug),
        }, create=skeleton(t))
    for family in FAMILIES:
        members = sorted((t for t in tunes if t['famiglia'] == family), key=sort_key)
        update(DOCS / f'{family}.rst', {'brani': family_block(members)})
    update(DOCS / '11-piani-di-studio.rst', {'piani': plans_block(tunes)})
    update(DOCS / '12-indici.rst', {'indici': indexes_block(tunes)})


def main():
    tunes = load_catalogue()
    stems = []
    for t in tunes:
        stems += write_sources(t)
    write_docs(tunes)
    print(f'{len(tunes)} brani, {len(stems)} sorgenti LilyPond.')
    print('Compila con: ./build-lilypond.sh ' + ' '.join(f'--source {s}' for s in stems))


if __name__ == '__main__':
    sys.exit(main())
