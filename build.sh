#!/usr/bin/env bash
# Rebuild everything. Needs LilyPond 2.24.x and Python 3 with pypdf + reportlab.
set -euo pipefail
cd "$(dirname "$0")"
python3 tools/ref.py
python3 tools/jazz.py
python3 tools/sight.py
for f in src/0*.ly src/pd-*.ly; do
  lilypond -s -o "pdf/$(basename "$f" .ly)" "$f"
done
rm -f pdf/*.midi
python3 tools/combine.py
