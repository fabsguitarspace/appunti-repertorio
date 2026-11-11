#!/bin/sh
# Build musicale tramite la libreria comune appunti-musica (ADR 0004).
set -eu
PROJECT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
BUILDER="$PROJECT_DIR/tools/appunti-musica/appunti_musica/build.py"
if [ ! -f "$BUILDER" ]; then
    echo "Libreria musicale assente: esegui 'git submodule update --init'" >&2
    exit 1
fi
if [ -x "$PROJECT_DIR/.venv/bin/python" ]; then
    PYTHON="$PROJECT_DIR/.venv/bin/python"
else
    PYTHON=python3
fi
# MP3 a 64 kbps mono: circa 5 MB per brano invece di 9 (analisi 001, peso dell'audio).
exec "$PYTHON" "$BUILDER" --project "$PROJECT_DIR" --mp3-options "-m m -b 64" "$@"
