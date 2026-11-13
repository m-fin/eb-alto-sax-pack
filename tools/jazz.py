import random, sys
import os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import *
from jazzlib import *
from rhythm import *

def chordmode(prog):
    out=[]
    for ch,d in prog:
        out.append(ch.sym % ('1*%d/16' % d))
    return ' '.join(out)

def build_line(prog, cells_per_bar, cell_tables, devices, rest_prob=0.12, seed=None, swing=True, start=72):
    """prog: list of (Chord, dur16). cells_per_bar: list per bar of cell sizes (16ths). returns lily string."""
    # timeline of chords
    tl=[]; t=0
    for ch,d in prog: tl.append((t,t+d,ch)); t+=d
    def chord_at(x):
        for a,b,c in tl:
            if a<=x<b: return c
        return tl[-1][2]
    # choose rhythms
    cells=[]; x=0; phrase=0; plen=random.randint(6,14)
    for bar,sizes in enumerate(cells_per_bar):
        for k,sz in enumerate(sizes):
            last_cell = (bar==len(cells_per_bar)-1 and k==len(sizes)-1)
            if last_cell:
                toks=[('N',{4:'4',6:'4.',3:'8.',2:'8'}[sz])]
            elif phrase>=plen:
                toks=rest_cell(sz); phrase=0; plen=random.randint(5,14)
            else:
                toks=pick(cell_tables[sz]); phrase+=1
            cells.append((x,sz,toks,bar)); x+=sz
    # group notes by chord
    pitches=[]; prev=start; i=0; dv=None
    groups=[]
    for c in cells:
        ch=chord_at(c[0])
        if groups and groups[-1][0] is ch: groups[-1][1].append(c)
        else: groups.append([ch,[c]])
    labels=[]
    for ch,cs in groups:
        n=sum(count_notes(c[2]) for c in cs)
        name_=random.choice(devices)
        seq=DEVICES[name_](ch,n,prev) if n else []
        if seq: prev=seq[-1]
        # spell
        sp=[ch.spell(m, seq[j+1] if j+1<len(seq) else None) for j,m in enumerate(seq)]
        labels.append(name_)
        # articulations
        arts=[]
        for j in range(n):
            a=''
            r=random.random()
            if r<0.16: a='->'
            elif r<0.22: a='-.'
            elif r<0.25: a='-^'
            elif r<0.29: a='--'
            arts.append(a)
        for c in cs:
            k=count_notes(c[2])
            nn=sp[:k]; aa=arts[:k]; sp=sp[k:]; arts=arts[k:]
            if k>=3 and random.random()<0.45: aa[0]+='('; aa[-1]+=')'
            c2=list(c); c2.append(render(c[2],nn,aa)); pitches.append(c2)
    # assemble with bar checks and dynamics
    out=[]; curbar=0; dyn_cycle=['\\mf','\\f','\\mp','\\ff','\\p']
    for c in pitches:
        if c[3]!=curbar: out.append('|\n'); curbar=c[3]
        s=c[4]
        if out and random.random()<0.06 and not s.startswith('r') and '\\tuplet' not in s.split(' ')[0]:
            parts=s.split(' ',1); parts[0]+=random.choice(dyn_cycle); s=' '.join(parts)
        out.append(s)
    first=out[0].split(' ',1); 
    if not first[0].startswith('r') and not first[0].startswith('\\'): first[0]+='\\mf'
    out[0]=' '.join(first)
    return ' '.join(out), labels

# ---------- progression generators (original, generic) ----------
def C(r,q): return Chord(r,q)
def seg_251(k, alt=True): return [(C(k+2,'m7'),16),(C(k+7,'7alt' if alt else '7'),16),(C(k,'maj7'),32)]
def seg_251_short(k): return [(C(k+2,'m7'),8),(C(k+7,'7alt'),8),(C(k,'maj7'),16)]
def seg_minor251(k): return [(C(k+2,'m7b5'),16),(C(k+7,'7alt'),16),(C(k,'m6'),32)]
def seg_modal(r,q,bars=4): return [(C(r,q),16*bars)]
def seg_slip(r): return [(C(r,'m7'),32),(C(r+1,'m7'),16),(C(r,'m7'),16)]
def seg_thirds(k): return [(C(k,'maj7'),8),(C(k+3,'7'),8),(C(k+8,'maj7'),8),(C(k+11,'7'),8),(C(k+4,'maj7'),8),(C(k+7,'7alt'),8),(C(k,'maj7'),16)]
def seg_chrom(k): return [(C(k+2,'m7'),8),(C(k+7,'7'),8),(C(k+1,'m7'),8),(C(k+6,'7'),8),(C(k,'m7'),8),(C(k+5,'7#11'),8),(C(k+11,'maj7'),16)]
def seg_lyd(k): return [(C(k,'7#11'),32),(C(k+10,'7#11'),32)]
def seg_sus(k): return [(C(k,'7sus'),32),(C(k+5,'7sus'),16),(C(k+3,'7sus'),16)]
SEGS=[lambda k:seg_251(k),lambda k:seg_251_short(k)+seg_251_short(k+10),seg_minor251,lambda k:seg_modal(k,'m7'),seg_slip,seg_thirds,seg_chrom,seg_lyd,seg_sus]

def make_prog(total16, seed):
    random.seed(seed); prog=[]; k=random.randrange(12)
    while sum(d for _,d in prog)<total16:
        seg=random.choice(SEGS)(k)
        prog+=seg; k=(k+random.choice([5,7,3,9,1,11,2,10,4,8]))%12
    # trim to total
    out=[];t=0
    for ch,d in prog:
        if t>=total16: break
        d=min(d,total16-t); out.append((ch,d)); t+=d
    return out

# ---------- odd-meter progression: chords per bar ----------
def bars_prog(nbars, barlen, seed):
    random.seed(seed); out=[]; k=random.randrange(12)
    pool=[('m7',0),('7sus',0),('maj7',0),('7#11',0),('7alt',0),('m7b5',0)]
    b=0
    while b<nbars:
        choice=random.random()
        if choice<0.4 and b+3<=nbars:
            out+=[(C(k+2,'m7'),barlen),(C(k+7,'7alt'),barlen),(C(k,'maj7'),barlen)]; b+=3
        elif choice<0.7 and b+2<=nbars:
            q=random.choice(['m7','7sus','7#11']); out+=[(C(k,q),barlen*2)]; b+=2
        else:
            q=random.choice(['maj7','m7','7#11','m7b5']); out+=[(C(k,q),barlen)]; b+=1
        k=(k+random.choice([1,2,3,4,5,7,8,9,10,11]))%12
    return out

METERS={'4/4':([4,4,4,4],'4/4'),'5/4':([4,4,4,4,4],'5/4'),'7/8':([4,4,6],'2,2,3 7/8'),'11/8':([6,6,6,4],'3,3,3,2 11/8'),'7/4':([4]*7,'7/4'),'9/8':([6,6,6],'9/8'),'5/8':([6,4],'3,2 5/8'),'6/4':([4]*6,'6/4')}
TITLES=['Glass Harbor','Signal Fire','Undertow','Night Ferry','Copper Wire','Static Bloom','Switchback','Iron Lantern','Paper Moons','Coastline','Firebreak','Overpass','Low Orbit','Shoreline Code','Red Shift','Northbound','Drift Logic','Afterimage','Fault Line','Sodium Lights','Quarry','Wire Walker','Tidal','Outrider','Ember Count','High Desert','Vapor Trail','Kite String']
VOCAB=list(DEVICES)

def etude(idx, meter, bars, tempo, feel, seed):
    random.seed(seed)
    sizes,timesig=METERS[meter]; barlen=sum(sizes)
    if meter=='4/4': prog=make_prog(barlen*bars, seed)
    else: prog=bars_prog(bars, barlen, seed)
    random.seed(seed+1)
    devs=random.sample(VOCAB, 4)
    tables={4:JAZZ4,6:JAZZ6}
    line,labels=build_line(prog,[sizes]*bars,tables,devs,seed=seed)
    title='%d. %s' % (idx, TITLES[(idx-1)%len(TITLES)])
    sub='%s %s. Vocabulary: %s. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto.' % (meter, feel, ', '.join(devs))
    tempo_s = r'\tempo "%s" %s' % (feel, tempo)
    return r'''\bookpart { \paper { page-count = 1 } %s
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { %s } }
\new Staff { \time %s %s \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers %s \bar "|." } >> \layout { indent = 0 } } }''' % (
     header_block(title, sub, composer='Original etude — CC0'), chordmode(prog), timesig, tempo_s, line)

def etudes_ly():
    random.seed(2026)
    specs=[]
    feels44=[('Up swing','4 = 280'),('Burnout swing','4 = 320'),('Fast swing','4 = 260'),('Straight-8th fusion','4 = 200'),('Up swing','4 = 300'),('Medium-up swing','4 = 220')]
    i=1
    for n in range(12):
        f,t=feels44[n%len(feels44)]; specs.append((i,'4/4',32,t,f,1000+n)); i+=1
    odd=[('7/8','8 = 320','Straight 8ths, 2+2+3'),('5/4','4 = 220','Straight 8ths'),('11/8','8 = 300','3+3+3+2 groove'),('7/4','4 = 200','Even 8ths'),('9/8','8 = 330','3+3+3, flowing'),('5/8','8 = 300','3+2 groove')]
    for n in range(12):
        m,t,f=odd[n%len(odd)]; bars={'7/8':32,'5/4':24,'11/8':20,'7/4':18,'9/8':24,'5/8':36}[m]
        specs.append((i,m,bars,t,f,2000+n)); i+=1
    body='\n'.join(etude(*s) for s in specs)
    return PAPER+r'\book { '+body+' }'

# ---------- ii-V-I workbook ----------
def iivi_ly():
    random.seed(77)
    keys=[0,5,10,3,8,1,6,11,4,9,2,7]
    parts=[]
    for k in keys:
        lines=[]
        for dev in ['bebop','triad pair','4ths','superimposition']:
            prog=[(C(k+2,'m7'),16),(C(k+7,'7alt' if dev!='bebop' else '7'),16),(C(k,'maj7'),32)]
            sizes=[[4,4,4,4]]*4
            line,_=build_line(prog,sizes,{4:[([N8,N8],10),([N16,N16,N16,N16],3),([T('3/2',N8,N8,N8)],3)]},[dev],seed=k*10+len(lines))
            lines.append((dev,prog,line))
        P=PRETTY[ROOTNAME[k]] if ROOTNAME[k] in PRETTY else ROOTNAME[k]
        for dev,prog,line in lines:
            parts.append(r'''\score { << \new ChordNames \chordmode { %s }
\new Staff { \time 4/4 \accidentalStyle modern %s^\markup{\bold "%s"} %s \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }''' % (chordmode(prog), '', ('%s major — %s' % (P,dev)), line))
    hdr=header_block('ii–V–I Lines in All 12 Keys','Four original lines per key: bebop/enclosure, triad pair (♭VI/♭V over alt), intervallic 4ths, tritone/half-step superimposition. Swing, 4 = 200–300. Written alto key.')
    fixed=[]
    for p in parts:
        # attach markup to first note: move the empty-string placeholder
        p=p.replace("%s^\\markup" % '', '\\once \\override Score.RehearsalMark.self-alignment-X = #LEFT \\mark \\markup', 1) if False else p
        fixed.append(p)
    body='\n'.join(fixed).replace(' ^\\markup{\\bold', ' \\mark \\markup{\\bold')
    return PAPER+r'\layout { \context { \Score \override RehearsalMark.self-alignment-X = #LEFT \override RehearsalMark.font-size = #-1 } } \book { '+hdr+body+' }'

# ---------- vocabulary sheets ----------
def vocab_ly():
    random.seed(99); parts=[]
    for dev,q in [('triad pair','m7'),('triad pair','7alt'),('4ths','m7'),('pentatonic','maj7'),('side-slip','m7'),('wide','7#11')]:
        for k in [0,7,2,9,4,11,6,1,8,3,10,5]:
            ch=C(k,q); prog=[(ch,32)]
            line,_=build_line(prog,[[4,4,4,4]]*2,{4:[([N16]*4,8),([T('6/4',*[N16]*6)],1)]},[dev],seed=k+len(parts)*13)
            parts.append(r'''\score { << \new ChordNames \chordmode { %s }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "%s"} %s \bar "||" } >> \layout { indent = 0 } }''' % (chordmode(prog), '%s over %s%s' % (dev, PRETTY.get(ch.rname,ch.rname), {'m7':'m7','7alt':'7alt','maj7':'maj7','7#11':'7♯11'}[q]), line))
    hdr=header_block('Modern Vocabulary Sheets','Triad pairs, intervallic 4ths, pentatonic superimposition, side-slipping and wide-interval chord-tone lines in 12 keys. 16ths, 4 = 120–200.')
    return PAPER+r'\layout { \context { \Score \override RehearsalMark.self-alignment-X = #LEFT \override RehearsalMark.font-size = #-1 } } \book { '+hdr+'\n'.join(parts)+' }'

if __name__=='__main__':
    o=os.path.join(os.path.dirname(os.path.abspath(__file__)),'..','src')+'/'
    open(o+'06-ii-V-I-all-keys.ly','w').write('\\version "2.24.4"\n'+iivi_ly())
    open(o+'07-modern-vocabulary-sheets.ly','w').write('\\version "2.24.4"\n'+vocab_ly())
    open(o+'08-modern-jazz-etudes.ly','w').write('\\version "2.24.4"\n'+etudes_ly())
    print('ok')
