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
exec "$PYTHON" "$BUILDER" --project "$PROJECT_DIR" "$@"
