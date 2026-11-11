# Appunti di Repertorio per Chitarra Jazz

<div style="text-align: center">
    <a href="https://youtube.com/@fabsguitarspace" title="Fabrizio's Guitar Space" target="_blank">
        <img src="https://raw.githubusercontent.com/fabsguitarspace/appunti-pratica/refs/heads/main/src/docs/_static/logo.png" 
            alt="" style="height: 256px">
    </a>
</div>


https://appunti-di-repertorio-per-chitarra-jazz.readthedocs.io

**[youtube.com/@fabsguitarspace](https://youtube.com/@fabsguitarspace)**

## Sviluppo locale

```sh
git clone --recurse-submodules https://github.com/fabsguitarspace/appunti-repertorio.git
python3 -m venv .venv && .venv/bin/pip install -r requirements.txt -r requirements-music.txt
./build.sh            # HTML in out/
./build-lilypond.sh   # spartiti e audio tramite tools/appunti-musica
.venv/bin/python tests/test_struttura.py
```
