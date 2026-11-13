import io, os, sys, re
from pypdf import PdfReader, PdfWriter
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
HERE=os.path.dirname(os.path.abspath(__file__)); R=os.path.join(HERE,'..')
sys.path.insert(0,HERE)
from vol2 import TITLES
pdfmetrics.registerFont(TTFont('DV','/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf'))
pdfmetrics.registerFont(TTFont('DVB','/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf'))
src=PdfReader(os.path.join(R,'vol2','pdf','vol2-modern-jazz-etudes.pdf'))
ly=open(os.path.join(R,'vol2','src','vol2-modern-jazz-etudes.ly')).read()
subs=re.findall(r'wordwrap-string #"(\d+/\d+) · ([^·]+) ·',ly)
CONCEPT_PAGES=len(src.pages)-40
buf=io.BytesIO(); c=canvas.Canvas(buf,pagesize=letter)
c.setFont('DVB',24); c.drawCentredString(306,728,'E♭ Alto Sax — Vol. 2')
c.setFont('DVB',15); c.drawCentredString(306,704,'40 Advanced Modern Jazz Études')
c.setFont('DV',9.5)
c.drawCentredString(306,686,'Original, CC0 1.0. Written pitch for E♭ alto; chord symbols in alto key. Letter size.')
c.drawCentredString(306,673,'Thirds cycles, reharmonized ii–Vs, triad pairs, 4ths, side-slipping, odd meters, altissimo ossias.')
c.setFont('DVB',11); c.drawString(54,646,'Concepts'); c.setFont('DV',9); c.drawRightString(558,646,'p. 2')
y=628; col=0
for i,t in enumerate(TITLES):
    x=54 if i<20 else 312; yy=y-(i%20)*14.5
    m,f=subs[i] if i<len(subs) else ('','')
    c.setFont('DV',8.6); c.drawString(x,yy,'%2d. %s'%(i+1,t)); c.setFont('DV',7.4); c.drawString(x+118,yy,'%s %s'%(m,f.strip())[:24])
    c.setFont('DV',8.6); c.drawRightString(x+246,yy,'p. %d'%(2+CONCEPT_PAGES+i))
c.setFont('DV',8)
c.drawString(54,52,'Every line is generated from general modern-jazz devices over original changes. Nothing quotes, transcribes or paraphrases')
c.drawString(54,41,'any recorded solo or composition. Tempos are targets: read at ~60% first. Small staves = optional altissimo.')
c.showPage(); c.save(); buf.seek(0)
w=PdfWriter()
for p in PdfReader(buf).pages: w.add_page(p)
for p in src.pages: w.add_page(p)
w.add_outline_item('Cover / contents',0)
w.add_outline_item('Concepts',1)
par=w.add_outline_item('Études',1+CONCEPT_PAGES)
for i,t in enumerate(TITLES): w.add_outline_item('%d. %s'%(i+1,t),1+CONCEPT_PAGES+i,parent=par)
w.add_metadata({'/Title':'E-flat Alto Sax Vol. 2 — 40 Advanced Modern Jazz Etudes'})
out=os.path.join(R,'vol2','eb-alto-sax-vol2-modern-jazz-etudes-COMBINED.pdf')
with open(out,'wb') as fh: w.write(fh)
print(os.path.abspath(out),len(w.pages))
