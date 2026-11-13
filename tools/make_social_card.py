"""Build site/og.png: the 1200x630 preview image shown when the downloads page is shared.

    python3 tools/make_social_card.py

Left: title text. Right: the top of etude 1 ("Glass Harbor", original CC0 material) rendered from the
Vol. 1 combined PDF. Needs pdftoppm (poppler) and Pillow.
"""
import os, subprocess, tempfile
from PIL import Image, ImageDraw, ImageFont

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
PDF = os.path.join(ROOT, 'eb-alto-sax-practice-pack-COMBINED.pdf')
PAGE = 34  # first page of the Modern Jazz Etudes in the combined PDF
OUT = os.path.join(ROOT, 'site', 'og.png')
FONT = '/usr/share/fonts/truetype/dejavu/DejaVuSans{}.ttf'

W, H, SPLIT = 1200, 630, 520
BG, FG, MUT, ACC = (20, 20, 20), (236, 236, 236), (170, 170, 175), (242, 165, 65)

with tempfile.TemporaryDirectory() as d:
    subprocess.run(['pdftoppm', '-f', str(PAGE), '-l', str(PAGE), '-png', '-r', '150', PDF, f'{d}/p'], check=True)
    page = Image.open(next(os.path.join(d, f) for f in os.listdir(d))).convert('RGB')

# crop the top of the etude (title + first systems) to fill the right side
pw = page.width
left, right, top = int(pw * 0.04), int(pw * 0.96), int(page.height * 0.035)
box_h = int(H * (right - left) / (W - SPLIT))  # same aspect ratio as the right panel
crop = page.crop((left, top, right, top + box_h))
crop = crop.resize((W - SPLIT, H), Image.LANCZOS)

img = Image.new('RGB', (W, H), BG)
img.paste(crop, (SPLIT, 0))
dr = ImageDraw.Draw(img)
f = lambda size, bold=False: ImageFont.truetype(FONT.format('-Bold' if bold else ''), size)
x, y = 56, 70
dr.text((x, y), 'Free, print-ready', font=f(26), fill=MUT); y += 50
for line in ('E\u266d Alto Sax', 'Advanced', 'Practice Pack'):
    dr.text((x, y), line, font=f(54, True), fill=FG); y += 66
y += 24
for line in ('124 original etudes + PD classics', 'CC0 \u00b7 written alto pitch \u00b7 US Letter'):
    dr.text((x, y), line, font=f(24), fill=MUT); y += 36
dr.rectangle((x, H - 92, x + 64, H - 86), fill=ACC)
dr.text((x, H - 72), 'm-fin.github.io/eb-alto-sax-pack', font=f(22), fill=ACC)

os.makedirs(os.path.dirname(OUT), exist_ok=True)
img.quantize(colors=64, method=Image.Quantize.MEDIANCUT).save(OUT, optimize=True)  # flat colors: palette PNG is ~3x smaller
print('wrote', os.path.relpath(OUT, ROOT), img.size, os.path.getsize(OUT), 'bytes')
