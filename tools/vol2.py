"""Vol. 2 — Original advanced modern-jazz etudes for E-flat alto sax (written pitch). CC0.
Generic modern-jazz devices only; no quotation or paraphrase of any recorded solo or composition."""
import random, sys, os
HERE=os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, HERE)
from common import *
from jazzlib import *
from jazzlib import DEVICES as BASEDEV
from rhythm import *
from jazz import chordmode, C

# ---------- extra devices ----------
def dev_outside(ch, n, prev):
    """outside-in-and-back: a pentatonic/triad-pair cell a tritone or half step away, then resolve inside."""
    out_sh=random.choice([6,1,-1,6])
    k=max(3,(n*2)//3) if n>=6 else max(1,n//2)
    fake=Chord((ch.root+out_sh)%12, ch.q if ch.q in Q else 'm7')
    a=random.choice([dev_pent,dev_triadpair,dev_fourths])(fake, k, prev)
    b=random.choice([dev_bebop,dev_triadpair])(ch, n-k, a[-1]) if n-k>0 else []
    if b: b[-1]=near(ch.guide, b[-1])
    return bounce(a+b)
def dev_enclose_wide(ch, n, prev):
    out=[]; p=prev
    while len(out)<n:
        t=near(ch.ct+ch.guide, p+random.choice([-14,-10,-7,7,10,14]))
        cell=[t+random.choice([1,2]), t-1, t] if random.random()<.6 else [t-1,t+1,t]
        out+=cell; p=t
    return bounce(out[:n])
DEV2=dict(BASEDEV); DEV2['outside-in']=dev_outside; DEV2['wide enclosures']=dev_enclose_wide
VOC2=['triad pair','pentatonic','4ths','side-slip','outside-in','wide','superimposition','bebop','wide enclosures']
WEIGHT={'triad pair':3,'pentatonic':2,'4ths':3,'side-slip':2,'outside-in':3,'wide':2,'superimposition':2,'bebop':1,'wide enclosures':2}

# ---------- rhythm tables ----------
SW4=[([N8,N8],9),([N16]*4,5),([T('3/2',N8,N8,N8)],5),([R8,N8],2),([N16,N16,N8],2),([N8,N16,N16],2),([T('6/4',*[N16]*6)],2),([T('5/4',*[N16]*5)],1),([N4],1),([R16,N16,N16,N16],1)]
ST4=[([N16]*4,10),([N8,N16,N16],2),([N16,N16,N8],2),([N16,N8,N16],2),([T('3/2',N8,N8,N8)],2),([T('6/4',*[N16]*6)],2),([T('5/4',*[N16]*5)],1),([R16,N16,N16,N16],2),([N8,N8],2),([N8d,N16],1)]
ODD6=[([N8,N8,N8],7),([N16]*6,5),([N8,N8,N16,N16],3),([N16,N16,N8,N8],2),([R8,N8,N8],2),([T('4/3',N8,N8,N8,N8)],1),([N4,N8],1)]
ODD4=[([N8,N8],7),([N16]*4,6),([T('3/2',N8,N8,N8)],3),([R8,N8],2),([N16,N16,N8],2),([T('5/4',*[N16]*5)],1)]

# ---------- progressions (original, generic theory) ----------
def cyc_up(k):      # major-thirds cycle with dominant approach, 2 beats per chord
    return [(C(k,'maj7'),8),(C(k+3,'7'),8),(C(k+8,'maj7'),8),(C(k+11,'7'),8),(C(k+4,'maj7'),8),(C(k+7,'7alt'),8),(C(k,'maj7'),16)]
def cyc_down(k):    # descending thirds variant
    return [(C(k,'maj7'),8),(C(k+7,'7alt'),8),(C(k+4,'maj7'),8),(C(k+11,'7'),8),(C(k+8,'maj7'),8),(C(k+3,'7'),8),(C(k,'maj7'),16)]
def cyc_iiV(k):     # ii-V into each of three tonal centers a major third apart
    out=[]
    for c in (k,k+8,k+4):
        out+=[(C(c+2,'m7'),8),(C(c+7,'7alt'),8),(C(c,'maj7'),16)]
    return out
def tritone_iiV(k): return [(C(k+2,'m7'),8),(C(k+1,'7#11'),8),(C(k,'maj7'),16)]
def backdoor(k):    return [(C(k+5,'m7'),16),(C(k+10,'7'),16),(C(k,'maj7'),32)]
def iiV_chain(k):   return [(C(k+2+2*j,'m7'),8) if i==0 else (C(k+7+2*j,'7alt'),8) for j in range(0,-4,-1) for i in (0,1)]+[(C(k-6,'maj7'),16)]
def coltrane_iiV(k):# ii-V with inserted thirds-cycle dominants
    return [(C(k+2,'m7'),8),(C(k+5,'7'),8),(C(k+10,'maj7'),8),(C(k+1,'7'),8),(C(k+6,'maj7'),8),(C(k+7,'7alt'),8),(C(k,'maj7'),16)]
def modal_slip(k):  return [(C(k,'m7'),16),(C(k+1,'m7'),8),(C(k,'m7'),8),(C(k+6,'7alt'),16),(C(k,'m7'),16)]
def lyd_pedal(k):   return [(C(k,'maj7'),16),(C(k+2,'7#11'),16),(C(k+8,'maj7'),16),(C(k+10,'7sus'),16)]
SEG44=[cyc_up,cyc_down,cyc_iiV,tritone_iiV,backdoor,iiV_chain,coltrane_iiV,modal_slip,lyd_pedal]
def prog44(total, seed):
    random.seed(seed); prog=[]; k=random.randrange(12)
    while sum(d for _,d in prog)<total:
        prog+=random.choice(SEG44)(k); k=(k+random.choice([1,2,3,4,5,7,8,9,10,11]))%12
    out=[];t=0
    for ch,d in prog:
        if t>=total: break
        d=min(d,total-t); out.append((ch,d)); t+=d
    return out
def prog_odd(nbars, barlen, seed):
    random.seed(seed); out=[]; k=random.randrange(12); b=0
    while b<nbars:
        r=random.random()
        if r<0.3 and b+3<=nbars:   # cycle, one chord per bar
            out+=[(C(k,'maj7'),barlen),(C(k+3,'7'),barlen),(C(k+8,'maj7'),barlen)]; b+=3
        elif r<0.55 and b+3<=nbars:
            out+=[(C(k+2,'m7'),barlen),(C(k+1,'7#11'),barlen),(C(k,'maj7'),barlen)]; b+=3
        elif r<0.8 and b+2<=nbars:
            out+=[(C(k,random.choice(['m7','7sus','7#11'])),barlen*2)]; b+=2
        else:
            out+=[(C(k,random.choice(['7alt','m7b5','maj7','m7'])),barlen)]; b+=1
        k=(k+random.choice([1,3,4,5,7,8,9,11]))%12
    return out

METER={'4/4':([4,4,4,4],'4/4'),'5/4':([4]*5,'5/4'),'7/8':([4,4,6],'2,2,3 7/8'),'9/8':([6,6,6],'9/8'),'11/8':([6,6,6,4],'3,3,3,2 11/8'),'7/4':([4]*7,'7/4')}

def build(prog, sizes_per_bar, tables, devices, start=72):
    tl=[]; t=0
    for ch,d in prog: tl.append((t,t+d,ch)); t+=d
    def chord_at(x):
        for a,b,c in tl:
            if a<=x<b: return c
        return tl[-1][2]
    cells=[]; x=0; phrase=0; plen=random.randint(8,16)
    for bar,sizes in enumerate(sizes_per_bar):
        for k,sz in enumerate(sizes):
            last=(bar==len(sizes_per_bar)-1 and k==len(sizes)-1)
            if last: toks=[('N',{4:'4',6:'4.'}[sz])]
            elif phrase>=plen: toks=rest_cell(sz); phrase=0; plen=random.randint(7,16)
            else: toks=pick(tables[sz]); phrase+=1
            cells.append([x,sz,toks,bar]); x+=sz
    groups=[]
    for c in cells:
        ch=chord_at(c[0])
        if groups and groups[-1][0] is ch: groups[-1][1].append(c)
        else: groups.append([ch,[c]])
    prev=start; used=[]
    for ch,cs in groups:
        n=sum(count_notes(c[2]) for c in cs)
        w=[WEIGHT[d] for d in devices]; dv=random.choices(devices,weights=w)[0] if n>=4 else 'bebop'; used.append(dv)
        seq=DEV2[dv](ch,n,prev) if n else []
        if seq: prev=seq[-1]
        sp=[ch.spell(m, seq[j+1] if j+1<len(seq) else None) for j,m in enumerate(seq)]
        arts=[]
        for j in range(n):
            r=random.random()
            arts.append('->' if r<.15 else '-.' if r<.2 else '-^' if r<.23 else '--' if r<.26 else '')
        for c in cs:
            k=count_notes(c[2]); nn=sp[:k]; aa=arts[:k]; mm=seq[:k]; sp=sp[k:]; arts=arts[k:]; seq=seq[k:]
            if k>=3 and random.random()<.5: aa[0]+='('; aa[-1]+=')'
            c.append(render(c[2],list(nn),list(aa))); c.append(mm); c.append(ch)
    # assemble bars, with optional altissimo ossias
    bars={}
    for c in cells: bars.setdefault(c[3],[]).append(c)
    out=[]; ossias=0; dyn=['\\mf','\\f','\\mp','\\ff','\\p']
    for b in sorted(bars):
        cs=bars[b]; body=' '.join(c[4] for c in cs)
        allp=[p for c in cs for p in c[5]]
        if b==0:
            parts=body.split(' ',1)
            if not parts[0].startswith(('r','\\')): parts[0]+='\\mf'; body=' '.join(parts)
        elif random.random()<.08:
            parts=body.split(' ',1)
            if not parts[0].startswith(('r','\\')) and '\\' not in parts[0]: parts[0]+=random.choice(dyn); body=' '.join(parts)
        if allp and ossias<3 and 2<b<len(bars)-1 and min(allp)>=73 and max(allp)<=84 and random.random()<.45:
            oparts=[]; first=True
            for c in cs:
                notes=[c[6].spell(p+12, None) if (p%12) in c[6].names else name(p+12, True) for p in c[5]]
                aa=['']*len(notes)
                if first and notes: aa[0]='^\\markup{\\tiny \\italic "altiss. ad lib."}'; first=False
                oparts.append(render(c[2],notes,aa))
            body=r'<< { %s } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { %s } >>' % (body,' '.join(oparts))
            ossias+=1
        out.append(body+' |')
    return '\n'.join(out), used, ossias

TITLES=['Cinder Grid','Black Ice Run','Neon Ladder','Torque','Glass Engine','Brushfire Math','Night Shift Dialect','Steel Origami','Crosswind','Pressure Front','Hollow Point Blue','Signal Chain','Riptide Theory','Graphite','Lantern Code','Fast Weather','Vertigo Street','Basalt','Afterburn','Jagged Halo','Overclock','Shatterline','Wolf Interval','Carbon Bloom','Smoke Geometry','Ironwood','Static Horizon','Heatwave Grammar','Northern Ledger','Switchyard','Phase Drift','Thunder Ledger','Cobalt Run','Night Market','Ember Logic','Granite Tide','Skyline Fracture','Quicksilver','Dust Devil','Last Exit East']
assert len(set(TITLES))==40

def etude(i, meter, bars, tempo, feel, tables, seed):
    random.seed(seed)
    sizes,ts=METER[meter]; bl=sum(sizes)
    prog=prog44(bl*bars,seed) if meter=='4/4' else prog_odd(bars,bl,seed)
    random.seed(seed+7)
    devs=random.sample(VOC2,5)
    line,used,oss=build(prog,[sizes]*bars,tables,devs)
    title='%d. %s' % (i, TITLES[i-1])
    harm='thirds cycles & reharmonized ii–Vs' if meter=='4/4' else 'odd-meter cycles & tritone-sub ii–Vs'
    sub='%s · %s · %s. Devices: %s.%s Chord symbols are for E♭ alto (written key).' % (meter, feel, harm, ', '.join(devs), ' Small staff = optional altissimo.' if oss else '')
    return r'''\bookpart { \paper { page-count = 1 } %s
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { %s } }
\new Staff = "main" { \time %s \tempo "%s" %s \accidentalStyle modern %s \bar "|." } >> \layout { indent = 0 } } }''' % (
        header_block(title, sub, composer='Original etude — CC0'), chordmode(prog), ts, feel, tempo, line)

def concepts():
    random.seed(42)
    txt=[
     ('Triad pairs','Two major triads a whole step apart, taken from the chord-scale (e.g. ♭III and IV over a minor 7th, ♭VI and ♭V over an altered dominant, I and II over a Lydian major 7th). Alternating them in 3-note inversions gives a six-note hexatonic sound with no avoid notes and a strong, angular contour.','triad pair','m7',0),
     ('Pentatonic superimposition','A minor pentatonic placed on a non-root degree: on the 2nd of a minor 7th, the 3rd or 7th of a major 7th, the ♭3 of an altered dominant. Grouped in four-note cells (1-2-3-5, 3-2-1-5…) and sequenced through the range it sounds modern without leaving the harmony.','pentatonic','maj7',5),
     ('Intervallic 4ths','Stacks of perfect fourths started from chord-scale tones, often broken with a step at the end of each group. Fourth shapes are fingering-friendly on sax, sound open and unresolved, and let a line cross two octaves in a few notes.','4ths','m7',2),
     ('Side-slipping / outside-in-and-back','Play a clear shape a half step (or tritone) away from the harmony, then slide back to the same shape inside. The tension only works if both halves are rhythmically strong and the return lands on a guide tone (3rd or 7th).','outside-in','m7',9),
     ('Wide intervals & octave displacement','Chord tones and tensions with every other note displaced by an octave, producing 7ths, 9ths and 10ths. Keep the air column steady and the tone even in both registers; slur the leaps first, then tongue them.','wide','7#11',7),
     ('Superimposition (tritone / half-step)','An arpeggio of the dominant a tritone or half step away from the written chord, resolved by step to a guide tone. Over altered dominants and static vamps it creates a clear second layer of harmony.','superimposition','7alt',7),
     ('Thirds cycles','Tonal centers a major third apart (e.g. C – A♭ – E), each approached by its own dominant or ii–V. Changes go by every two beats at high tempo, so target guide tones and connect them by the nearest motion.','bebop','maj7',0),
     ('Modern ii–V reharmonization','Tritone-substitute dominants (ii – ♭II7♯11 – I), backdoor progressions (iv7 – ♭VII7 – I), ii–V chains descending by whole steps, and ii–Vs with an inserted thirds cycle. Read the chord symbols first, then the line.','triad pair','7alt',2),
     ('Odd meters','5/4, 7/8 (2+2+3), 9/8 (3+3+3), 11/8 (3+3+3+2) and 7/4. Beaming shows the grouping. Count the groups, not the eighth notes, and keep the long group relaxed.','4ths','7sus',4),
     ('How to practise these etudes','Sight-read first at about 60% of the marked tempo without stopping. Then mark the three hardest bars, loop them, and bring the whole page up to tempo. Ossia staves (small, above the main staff) are optional altissimo versions of the same bar.','pentatonic','m7',11)]
    blocks=[]
    for title,prose,dev,q,root in txt:
        ch=C(root,q); prog=[(ch,32)]
        random.seed(hash(title)%1000)
        line,_,_=build(prog,[[4,4,4,4]]*2,{4:[([N16]*4,6),([N8,N8],2),([T('3/2',N8,N8,N8)],2)]},[dev] if dev in WEIGHT else ['bebop'])
        blocks.append(r'''\markup { \vspace #0.6 \bold \large "%s" } \markup \wordwrap-string #"%s"
\score { << \new ChordNames \chordmode { %s } \new Staff = "main" { \time 4/4 %s \bar "||" } >> \layout { indent = 0 } }''' % (title, prose.replace('"',"'"), chordmode(prog), line))
    return r'''\bookpart { \header { title = "Vol. 2 — Concepts" composer = "Original text and examples — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material, CC0 1.0." }
\markup \small \italic \wordwrap-string #"Every device here is general modern-jazz vocabulary. All lines in this volume are generated from these devices over original changes; none quotes, transcribes or paraphrases any recorded solo or composition." 
%s }''' % '\n'.join(blocks)

def main():
    specs=[]; i=1
    sw=[('Up swing','4 = 280'),('Burnout swing','4 = 320'),('Fast swing','4 = 260'),('Up swing','4 = 300'),('Medium-up swing','4 = 240')]
    for n in range(14):
        f,t=sw[n%5]; specs.append((i,'4/4',20,t,f,{4:SW4},3000+n)); i+=1
    for n in range(8):
        specs.append((i,'4/4',16,'4 = %d' % random.Random(n).choice([126,132,138,144,152]),'Straight 16ths, angular',{4:ST4},3100+n)); i+=1
    odd=[('5/4','4 = 240','Even 8ths, 5/4',16),('7/8','8 = 330','2+2+3 groove',24),('9/8','8 = 340','3+3+3, driving',18),('11/8','8 = 320','3+3+3+2 groove',15),('7/4','4 = 220','Even 8ths, 7/4',13)]
    n=0
    while i<=40:
        m,t,f,b=odd[n%5]; specs.append((i,m,b,t,f,{4:ODD4,6:ODD6},3200+n)); i+=1; n+=1
    body=concepts()+'\n'+'\n'.join(etude(*s) for s in specs)
    out=os.path.join(HERE,'..','vol2','src','vol2-modern-jazz-etudes.ly')
    open(out,'w').write('\\version "2.24.4"\n#(set-global-staff-size 18.5)\n'+PAPER+r'\book { '+body+' }')
    print(out, len(specs))
if __name__=='__main__': main()
