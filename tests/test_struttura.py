"""Struttura del progetto e politica sulle melodie (ADR 0002, 0003, 0004).

Esecuzione: python3 tests/test_struttura.py   (anche pytest raccoglie i test_*)
"""
import re
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
    for path in (ROOT / 'data/brani').glob('*.yaml'):
        keys = re.findall(r'^\s*-?\s*(melodia|melody|tema_note)\s*:', path.read_text(),
                          re.MULTILINE | re.IGNORECASE)
        assert not keys, (path.name, keys)


def test_navigazione_e_libreria():
    conf = (DOCS / 'conf.py').read_text()
    for title in ['Appunti di Repertorio', 'Appunti di Teoria', 'Appunti di Pratica']:
        assert f'"title": "{title}"' in conf, title
    # ADR 0004: libreria come sottomodulo; Read the Docs non la scarica.
    assert 'path = tools/appunti-musica' in (ROOT / '.gitmodules').read_text()
    assert 'exclude: all' in (ROOT / '.readthedocs.yaml').read_text()
    assert 'tools/appunti-musica/appunti_musica/build.py' in (ROOT / 'build-lilypond.sh').read_text()


if __name__ == '__main__':
    for name, test in list(globals().items()):
        if name.startswith('test_'):
            test()
    print('PASS: indice, marcatori generati, nessuna melodia, navigazione e libreria')
