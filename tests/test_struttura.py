"""Struttura del progetto e politica sulle melodie (ADR 0002, 0003, 0004).

Esecuzione: python3 tests/test_struttura.py   (anche pytest raccoglie i test_*)
"""
import re
import tomllib
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DOCS = ROOT / 'src/docs'
FAMILIES = ['5-blues', '6-swing-medium', '7-ballad', '8-latin-bossa',
            '9-bebop-contrafact', '10-modale-moderno']
GENERATED = {name: 'brani' for name in FAMILIES} | {'11-piani-di-studio': 'piani', '12-indici': 'indici'}


def toctree_entries():
    text = (DOCS / 'index.rst').read_text()
    block = text.split('.. toctree::', 1)[1]
    return [line.strip() for line in block.splitlines()
            if line.startswith('  ') and line.strip() and not line.strip().startswith(':')]


def test_indice():
    entries = toctree_entries()
    assert entries == ['1-introduzione', '2-imparare-uno-standard', '3-leggere-una-griglia',
                       '4-le-forme', *FAMILIES, '11-piani-di-studio', '12-indici'], entries
    for entry in entries:
        assert (DOCS / (entry + '.rst')).is_file(), entry


def test_marcatori_generati():
    # Il generatore riscrive solo ciò che sta fra BEGIN ed END: una coppia per file.
    for name, tag in GENERATED.items():
        text = (DOCS / (name + '.rst')).read_text()
        begin = re.findall(r'^\.\. BEGIN ' + tag + r':', text, re.MULTILINE)
        end = re.findall(r'^\.\. END ' + tag + r'$', text, re.MULTILINE)
        assert len(begin) == 1 and len(end) == 1, name
        assert text.index('.. BEGIN ' + tag) < text.index('.. END ' + tag), name


def test_nessuna_melodia():
    # ADR 0002: nessuna melodia degli standard in alcuna forma.
    for folder in [ROOT / 'src/lilypond', DOCS / '_static/music']:
        offending = [p.name for p in folder.rglob('*') if 'melodia' in p.name.lower()]
        assert not offending, offending
    g = generator()
    for path in (ROOT / 'data/brani').glob('*.toml'):
        data = tomllib.loads(path.read_text())
        keys = [k for k in g.all_keys(data) if k.lower() in g.FORBIDDEN_KEYS]
        assert not keys, (path.name, keys)


def test_navigazione_e_libreria():
    conf = (DOCS / 'conf.py').read_text()
    for title in ['Appunti di Repertorio', 'Appunti di Teoria', 'Appunti di Pratica']:
        assert f'"title": "{title}"' in conf, title
    # ADR 0004: libreria come sottomodulo; Read the Docs non la scarica.
    assert 'path = tools/appunti-musica' in (ROOT / '.gitmodules').read_text()
    assert 'exclude: all' in (ROOT / '.readthedocs.yaml').read_text()
    assert 'tools/appunti-musica/appunti_musica/build.py' in (ROOT / 'build-lilypond.sh').read_text()


SCHEDA = ['Perché studiarlo', 'Storia e contesto', 'Ascolti guidati', 'Imparare la melodia a orecchio',
          'Mappa della forma', 'Lettura armonica', 'Accompagnamento', 'Linee per improvvisare',
          'Base per suonare', 'Piano di studio', 'Brani collegati']
SUFFIXES = {'griglia': ('svg',), 'shell': ('svg', 'mp3'), 'guide-tones': ('svg', 'mp3'),
            'base-studio': ('mp3',), 'base': ('mp3',)}


def generator():
    import sys
    sys.path.insert(0, str(ROOT / 'scripts'))
    import generate_standards
    return generate_standards


def test_catalogo_e_schede():
    g = generator()
    tunes = g.load_catalogue()      # valida famiglie, battute e campi vietati
    assert tunes
    for t in tunes:
        card = (DOCS / 'brani' / (t['slug'] + '.rst')).read_text()
        headings = [h for h in re.findall(r'^(.+)\n-+$', card, re.MULTILINE)]
        assert headings == SCHEDA, (t['slug'], headings)
        assert '*Da scrivere.*' not in card, t['slug']
        for stem, exts in SUFFIXES.items():
            for ext in exts:
                path = DOCS / '_static/music' / f"{t['slug']}-{stem}.{ext}"
                assert path.is_file() and path.stat().st_size, path
        family = (DOCS / (t['famiglia'] + '.rst')).read_text()
        assert f"brani/{t['slug']}" in family, (t['slug'], t['famiglia'])


def test_ascolti():
    # ADR 0002: collegamento testuale nella forma standard; un compito per ogni ascolto.
    g = generator()
    for t in g.load_catalogue():
        assert t.get('ascolti'), t['slug']
        for a in t['ascolti']:
            assert a['ruolo'] in g.ROLES and a['compito'].strip(), (t['slug'], a['artista'])
            if a.get('youtube'):
                assert re.fullmatch(r'https://www\.youtube\.com/watch\?v=[\w-]{11}', a['youtube']), a['youtube']
                card = (DOCS / 'brani' / (t['slug'] + '.rst')).read_text()
                assert a['youtube'] in card, (t['slug'], a['youtube'])


def card_section(card, heading):
    """Testo fra un titolo di sezione e il successivo."""
    match = re.search(rf'^{re.escape(heading)}\n-+\n\n(.*?)(?=^[^\n]+\n-+\n)', card, re.M | re.S)
    assert match, heading
    return match.group(1)


SOFLEGE = r'(?:Do|Re|Mi|Fa|Sol|La|Si)'
NOTE_RUN = re.compile(rf'\b{SOFLEGE}\b(?:[\s,;–—-]+\b{SOFLEGE}\b){{2,}}', re.IGNORECASE)


def test_tema():
    # Analisi 003: la sezione sul tema è descrittiva, senza note né supporti (ADR 0002).
    g = generator()
    for t in g.load_catalogue():
        if 'tema' not in t:
            continue
        card = (DOCS / 'brani' / (t['slug'] + '.rst')).read_text()
        section = card_section(card, 'Imparare la melodia a orecchio')
        assert '.. BEGIN tema:' in section and '.. END tema' in section, t['slug']
        assert 'Carta del tema' in section, t['slug']
        assert '**Compito.**' in section, (t['slug'], 'Compito')
        assert '**Verifica.**' in section, (t['slug'], 'Verifica')
        assert len(section.split()) >= 120, (t['slug'], len(section.split()))
        for forbidden in ('.. image::', '.. raw::', '<audio', 'youtube.com', 'http'):
            assert forbidden not in section, (t['slug'], forbidden)
        assert not re.search(r'\b\d{1,2}:\d{2}\b', section), (t['slug'], 'minutaggio')
        assert not NOTE_RUN.search(section), (t['slug'], NOTE_RUN.search(section).group(0))
        roles = {a['ruolo'] for a in t['ascolti']}
        assert t['tema'].get('ascolto', 'riferimento') in roles, t['slug']


def test_ordine_alfabetico():
    g = generator()
    tunes = g.load_catalogue()
    for family in g.FAMILIES:
        text = (DOCS / (family + '.rst')).read_text()
        listed = re.findall(r'^   brani/(\S+)$', text, re.MULTILINE)
        expected = [t['slug'] for t in sorted((t for t in tunes if t['famiglia'] == family), key=g.sort_key)]
        assert listed == expected, (family, listed)


def test_voicing():
    g = generator()
    for t in g.load_catalogue():
        chords = [c for c, _ in g.flat_chords(g.bars_of(t))]
        for chord, voicing in zip(chords, g.voice_lead(chords)):
            strings = tuple(s for s, n, p in voicing)
            if chord.quality in g.FOUR_NOTE:
                assert len(strings) == 4, chord.symbol
            else:
                assert strings in ((6, 4, 3), (5, 4, 3)), (chord.symbol, strings)
            assert voicing[0][1] == chord.root, chord.symbol           # fondamentale al basso
            pcs = {n.pc for s, n, p in voicing}
            assert {chord.tone('3')[0].pc, chord.tone('7')[0].pc} <= pcs, chord.symbol
            assert all(p % 12 == n.pc for s, n, p in voicing), chord.symbol


def test_generatore_stabile():
    # Rieseguire il generatore non deve cambiare sorgenti né schede.
    g = generator()
    paths = list((ROOT / 'src/lilypond').glob('*.ly')) + list(DOCS.rglob('*.rst'))
    before = {p: p.read_bytes() for p in paths}
    tunes = g.load_catalogue()
    for t in tunes:
        g.write_sources(t)
    g.write_docs(tunes)
    changed = [p.name for p in paths if p.read_bytes() != before[p]]
    assert not changed, changed


if __name__ == '__main__':
    for name, test in list(globals().items()):
        if name.startswith('test_'):
            test()
    print('PASS: indice, marcatori, nessuna melodia, navigazione e libreria, catalogo e schede, ascolti, '
          'tema, ordine alfabetico, voicing, generatore stabile')
