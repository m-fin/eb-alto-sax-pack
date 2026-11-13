"""Build cover + TOC and the combined, letter-size practice pack."""
import sys, io, os
from pypdf import PdfReader, PdfWriter, PageObject, Transformation
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
import glob, os
R=os.path.join(os.path.dirname(os.path.abspath(__file__)),'..')+'/'
ITEMS=[
 ('Reference','pdf/01-ref-major-scales-arpeggios.pdf','12 major scales, maj7 arpeggios, broken 3rds — full range','Original (CC0)'),
 ('Reference','pdf/02-ref-chromatic-symmetric-runs.pdf','Chromatic, diminished, whole-tone full-range runs','Original (CC0)'),
 ('Reference','pdf/03-blues-scales-12-keys.pdf','Blues scales in 12 keys + triplet cascades','Original (CC0)'),
 ('Reference','pdf/04-long-tones-overtones.pdf','Chromatic long tones; overtone series & lip slurs','Original (CC0)'),
 ('Reference','pdf/05-articulation-drills.pdf','Articulation drills, double-tongue bursts','Original (CC0)'),
 ('Modern jazz','pdf/06-ii-V-I-all-keys.pdf','ii–V–I lines in all 12 keys (4 devices per key)','Original (CC0)'),
 ('Modern jazz','pdf/07-modern-vocabulary-sheets.pdf','Triad pairs, 4ths, pentatonic, side-slip, wide intervals','Original (CC0)'),
 ('Modern jazz','pdf/08-modern-jazz-etudes.pdf','24 Modern Jazz Etudes — swing 260–320, 5/4, 7/8, 11/8, 7/4, 9/8, 5/8','Original (CC0)'),
 ('Sight-reading','pdf/09-elite-sight-reading-etudes.pdf','60 Elite Sight-Reading Etudes — mixed meters, 5/7-tuplets, key changes','Original (CC0)'),
 ('Public domain','pdf/pd-bach-bwv1013-alto.pdf','J. S. Bach — Partita in A minor BWV 1013 (alto, F♯ minor)','PD (Mutopia ed.)'),
 ('Public domain','pdf/pd-bach-cello-suite-1-bwv1007-alto.pdf','J. S. Bach — Cello Suite No. 1 BWV 1007 (alto, E major)','PD (Mutopia ed.)'),
 ('Public domain','pdf/pd-bach-cello-suite-3-bwv1009-alto.pdf','J. S. Bach — Cello Suite No. 3 BWV 1009 (alto, A major)','PD (Mutopia ed.)'),
 ('Public domain','pd-scans/pd-ferling-48-studies-op31-spehr-1837.pdf','F. W. Ferling — 48 Studies Op. 31 (Spehr, 1837 edition)','PD scan'),
 ('Public domain','pd-scans/pd-ferling-18-studies-op12-spehr-c1830.pdf','F. W. Ferling — 18 Studies Op. 12 (c. 1830 edition)','PD scan'),
 ('Public domain','pd-scans/pd-wilkinson-modern-rhythmic-studies-rubank-1927.pdf','C. E. Wilkinson — Modern Rhythmic Studies for Sax (Rubank, 1927)','PD in US (1927)'),
 ('Public domain','pd-scans/pd-dorsey-100-hot-breaks-eb-alto-robbins-1926.pdf','Jimmy Dorsey — 100 Hot Breaks for E♭ Alto Sax (Robbins, 1926)','PD in US (1926)'),
]
pdfmetrics.registerFont(TTFont('DV','/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf')) if os.path.exists('/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf') else None
FONT='DV' if 'DV' in pdfmetrics.getRegisteredFontNames() else 'Helvetica'
FONTB='DVB'
try:
    pdfmetrics.registerFont(TTFont('DVB','/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf'))
except Exception: FONTB='Helvetica-Bold'

def fit_letter(page):
    W,H=612,792
    w=float(page.mediabox.width); h=float(page.mediabox.height)
    if abs(w-W)<2 and abs(h-H)<2: return page
    s=min((W-36)/w,(H-36)/h)
    blank=PageObject.create_blank_page(width=W,height=H)
    tx=(W-w*s)/2 - float(page.mediabox.left)*s; ty=(H-h*s)/2 - float(page.mediabox.bottom)*s
    blank.merge_transformed_page(page, Transformation().scale(s).translate(tx,ty))
    return blank

def cover(pagemap):
    buf=io.BytesIO(); c=canvas.Canvas(buf,pagesize=letter)
    c.setFont(FONTB,26); c.drawCentredString(306,720,'E♭ Alto Sax Advanced Practice Pack')
    c.setFont(FONT,11)
    c.drawCentredString(306,698,'Written pitch for E♭ alto saxophone (written = concert + major 6th). Letter size.')
    c.drawCentredString(306,683,'Original material: CC0 1.0. Public-domain items stay public domain. See SOURCES.md.')
    y=645; sec=None
    for (s,f,desc,lic),(start,n) in zip(ITEMS,pagemap):
        if s!=sec:
            y-=8; c.setFont(FONTB,12); c.drawString(54,y,s); y-=17; sec=s
        c.setFont(FONT,9.5); c.drawString(66,y,desc[:88]); c.drawRightString(515,y,lic); c.drawRightString(558,y,'p. %d'%start); y-=14
    c.setFont(FONT,8.5)
    c.drawString(54,60,'Tempos on original etudes are aspirational targets. Altissimo ossias are optional (small staff above).')
    c.drawString(54,48,'Not included on purpose: copyrighted transcriptions, modern lead sheets, Real Book material, or any Chris Potter material.')
    c.showPage(); c.save(); buf.seek(0); return PdfReader(buf)

def main():
    readers=[PdfReader(R+f) for _,f,_,_ in ITEMS]
    pagemap=[]; p=2
    for r in readers: pagemap.append((p,len(r.pages))); p+=len(r.pages)
    w=PdfWriter()
    for pg in cover(pagemap).pages: w.add_page(pg)
    parents={}
    for (s,f,desc,lic),r,(start,n) in zip(ITEMS,readers,pagemap):
        first=len(w.pages)
        for pg in r.pages: w.add_page(fit_letter(pg))
        if s not in parents: parents[s]=w.add_outline_item(s, first)
        w.add_outline_item(desc, first, parent=parents[s])
    w.add_metadata({'/Title':'E-flat Alto Sax Advanced Practice Pack','/Subject':'Original CC0 exercises + public-domain studies'})

    out=R+'eb-alto-sax-practice-pack-COMBINED.pdf'
    with open(out,'wb') as fh: w.write(fh)
    print(out, len(w.pages))
    for (s,f,desc,lic),(start,n) in zip(ITEMS,pagemap): print(f'{f}\t{n}\tstarts p.{start}')
main()
