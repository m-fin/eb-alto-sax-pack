"""Re-run the LilyPond generators and require byte-for-byte output.

tools/ref.py, jazz.py, sight.py and vol2.py write the committed sources
under src/ and vol2/src/. They seed Python's random module, so a second
run must match the files on disk. A generator that seeds from hash()
would not: str hashing is salted per process (PYTHONHASHSEED).
"""
from __future__ import annotations

import importlib
import pathlib
import sys

ROOT = pathlib.Path(__file__).resolve().parents[1]
TOOLS = ROOT / 'tools'
GENERATORS = ('ref.py', 'jazz.py', 'sight.py', 'vol2.py', 'jazzlib.py', 'rhythm.py', 'common.py', 'spell.py')


def _load(name):
    sys.path.insert(0, str(TOOLS))
    return importlib.import_module(name)


def rendered():
    """Map each generated path to the text a fresh run would write."""
    ref = _load('ref')
    jazz = _load('jazz')
    sight = _load('sight')
    vol2 = _load('vol2')
    src = ROOT / 'src'
    version = '\\version "2.24.4"\n'
    return {
        src / '01-ref-major-scales-arpeggios.ly': version + ref.scales_ly(),
        src / '02-ref-chromatic-symmetric-runs.ly': version + ref.chromatic_ly(),
        src / '03-blues-scales-12-keys.ly': version + ref.blues_ly(),
        src / '04-long-tones-overtones.ly': version + ref.longtone_ly(),
        src / '05-articulation-drills.ly': version + ref.artic_ly(),
        src / '06-ii-V-I-all-keys.ly': version + jazz.iivi_ly(),
        src / '07-modern-vocabulary-sheets.ly': version + jazz.vocab_ly(),
        src / '08-modern-jazz-etudes.ly': version + jazz.etudes_ly(),
        src / '09-elite-sight-reading-etudes.ly': version + '#(set-global-staff-size 18)\n' + sight.etudes_ly(),
        ROOT / 'vol2' / 'src' / 'vol2-modern-jazz-etudes.ly': vol2.ly_source(),
    }


def unseeded_hash_uses():
    """hash() of a str is not a stable seed. Flag it in the generators."""
    hits = []
    for name in GENERATORS:
        text = (TOOLS / name).read_text(encoding='utf-8')
        if 'hash(' in text:
            hits.append(name)
    return hits


def problems():
    """Empty when the generators are deterministic and match the tree."""
    errs = [f'{name} calls hash(); that is not a stable random seed' for name in unseeded_hash_uses()]
    first = rendered()
    second = rendered()
    for path, text in first.items():
        rel = path.relative_to(ROOT)
        if text != second[path]:
            errs.append(f'{rel} is not deterministic across two runs')
            continue
        disk = path.read_text(encoding='utf-8')
        if disk != text:
            errs.append(f'{rel} differs from a fresh generator run ({len(disk)} bytes on disk, {len(text)} generated)')
    return errs


def main():
    errs = problems()
    if errs:
        print('FAIL generator drift:')
        for err in errs:
            print(' ', err)
        return 1
    print('PASS generators reproduce the committed LilyPond files byte-for-byte')
    return 0


if __name__ == '__main__':
    sys.exit(main())
