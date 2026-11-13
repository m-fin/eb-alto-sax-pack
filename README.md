# E♭ Alto Sax Advanced Practice Pack

A print-ready pack of **advanced** reading material for **E♭ alto saxophone**. Everything is in
**written alto pitch** (written = concert + major 6th) on **US Letter** paper.

It's meant for fast readers. There's a short scale/reference section, then most of the pack is dense
modern-jazz vocabulary, odd-meter etudes, and elite sight-reading pages, followed by public-domain
classical and 1920s studies.

**Start here:** [`eb-alto-sax-practice-pack-COMBINED.pdf`](eb-alto-sax-practice-pack-COMBINED.pdf)
(219 pages, with a cover page, table of contents and PDF bookmarks).

## What's inside

| File | Pages | What it is | License |
|---|---:|---|---|
| `pdf/01-ref-major-scales-arpeggios.pdf` | 4 | 12 major scales, maj7 arpeggios, broken 3rds over the full range (low B♭ to high F♯) | CC0 |
| `pdf/02-ref-chromatic-symmetric-runs.pdf` | 2 | Chromatic (16ths and sextuplets), diminished and whole-tone runs over the full range | CC0 |
| `pdf/03-blues-scales-12-keys.pdf` | 3 | Full-range blues scales in 12 keys, plus triplet cascades | CC0 |
| `pdf/04-long-tones-overtones.pdf` | 2 | Chromatic pp‹ff›pp long tones; overtone series (partials 2–6) and lip slurs | CC0 |
| `pdf/05-articulation-drills.pdf` | 4 | Slur/tongue patterns, displaced accents, double-tongue bursts at 4 = 152–208 | CC0 |
| `pdf/06-ii-V-I-all-keys.pdf` | 8 | ii–V–I lines in all 12 keys using bebop/enclosure, triad pair, 4ths and superimposition | CC0 |
| `pdf/07-modern-vocabulary-sheets.pdf` | 9 | Triad pairs, intervallic 4ths, pentatonic superimposition, side-slipping and wide intervals in 12 keys | CC0 |
| `pdf/08-modern-jazz-etudes.pdf` | 24 | 24 one-page **Modern Jazz Etudes** over original changes: up swing at 4 = 260–320, plus 5/4, 7/8, 11/8, 7/4, 9/8 and 5/8 grooves | CC0 |
| `pdf/09-elite-sight-reading-etudes.pdf` | 60 | 60 one-page **Elite Sight-Reading Etudes**: the meter changes almost every bar (up to 13/16), with 5- and 7-tuplets, 32nds, key changes mid-piece, detailed articulations and dynamics, and optional altissimo ossias | CC0 |
| `pdf/pd-bach-bwv1013-alto.pdf` | 6 | J. S. Bach, Partita in A minor BWV 1013 (flute), transposed for alto: written F♯ minor | PD (+ CC0 transposition) |
| `pdf/pd-bach-cello-suite-1-bwv1007-alto.pdf` | 6 | J. S. Bach, Cello Suite No. 1, for alto: written E major | PD (+ CC0 transposition) |
| `pdf/pd-bach-cello-suite-3-bwv1009-alto.pdf` | 8 | J. S. Bach, Cello Suite No. 3, for alto: written A major | PD (+ CC0 transposition) |
| `pd-scans/pd-ferling-48-studies-op31-spehr-1837.pdf` | 24 | Ferling, 48 Studies Op. 31, from the 1837 edition (read as written) | PD |
| `pd-scans/pd-ferling-18-studies-op12-spehr-c1830.pdf` | 14 | Ferling, 18 Studies Op. 12, from the c. 1830 edition | PD |
| `pd-scans/pd-wilkinson-modern-rhythmic-studies-rubank-1927.pdf` | 25 | C. E. Wilkinson, *Modern Rhythmic Studies for Saxophone* (Rubank, 1927) | PD in the US |
| `pd-scans/pd-dorsey-100-hot-breaks-eb-alto-robbins-1926.pdf` | 19 | Jimmy Dorsey, *100 Hot Breaks for E♭ Alto Saxophone* (Robbins, 1926) | PD in the US |
| `pd-scans/pd-deville-universal-method-saxophone-fischer-1908.pdf` | 322 | P. De Ville, *Universal Method for the Saxophone* (Carl Fischer, 1908/1911). A reference method, **not** in the combined PDF | PD |

See [`SOURCES.md`](SOURCES.md) for where each public-domain item came from and why it's public domain.

## Not included, on purpose

There are no copyrighted transcriptions, no modern lead sheets or Real Book material, no modern
copyrighted editions, and no Chris Potter material. The "Modern Jazz Etudes" are original lines built
from general modern-jazz devices (triad pairs, 4ths, side-slipping, superimposition, odd meters). They
don't quote, transcribe or paraphrase any recorded solo or composition.

## How to print

* Print the combined PDF, or any single file, at **100% / "Actual size"** on US Letter. Every page in
  the combined PDF is already letter size, with the scans scaled to fit.
* Use duplex (double-sided) if you like. Each original etude is exactly one page.
* The tempo markings on the original etudes (♪ = 240–352, 4 = 260–320) are **targets**. Read each one
  at half speed first.
* Ossia staves (small staves above the main one) are **optional altissimo** versions of a bar.
* The Ferling studies are oboe originals. Alto players read them exactly as written (standard practice).

## How to rebuild

You need [LilyPond 2.24](https://lilypond.org) and Python 3 with `pypdf` and `reportlab`.

```bash
./build.sh
```

* `tools/ref.py` builds the reference pages, `tools/jazz.py` (with `jazzlib.py`) builds the ii–V–I,
  vocabulary and jazz etude pages, and `tools/sight.py` builds the sight-reading etudes. All of these
  write to `src/*.ly`.
* `src/pd-*.ly` wrap the public-domain Mutopia Project LilyPond sources in `src/mutopia/` and add the
  alto transposition. The Mutopia files in `src/mutopia/` are unmodified.
* `tools/combine.py` builds the cover, table of contents and bookmarks, and writes the combined PDF.

**Transposition check.** The written pitches of the Bach arrangements were compared note-for-note
(via MIDI) against the original Mutopia files:

* BWV 1013: every note is the flute pitch − 3 semitones. The alto sounds an octave below the flute.
* BWV 1007/1009: every note is the cello pitch + 21 semitones. The alto sounds an octave above the
  cello. The few notes below low B♭ are raised an octave.

The original material stays within written B♭3–F♯6 on the main staff. Only the optional ossias and
overtone partials go higher.

## Contributing

Pull requests are welcome if they keep the pack legally clean:

1. **Original work only**, dedicated to CC0. Or **clearly public-domain** work, where both the composer
   *and* the specific edition or typesetting are public domain in the US (for example, published
   before 1931 with no newer editorial layer, or a Mutopia file marked "Public Domain").
2. Add every public-domain item to `SOURCES.md`, with a source link and your reasoning.
3. Write in E♭ alto written pitch, fit the alto range (or mark it ossia), and use letter paper.
4. Don't add transcriptions of recorded solos, modern lead sheets, or anything you aren't sure about.

## License

The original material in this repository (all exercises and etudes in `pdf/01`–`09`, the generator
code, and the alto transpositions) is dedicated to the public domain under **CC0 1.0** (see
`LICENSE`). Public-domain works remain public domain. The CC0 dedication doesn't change their status
or claim any rights in them.
