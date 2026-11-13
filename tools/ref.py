import sys, random
import os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import *
from spell import spell, octname

def run_full(pcs_names, lo=LOW, hi=HIGH):
    """pcs_names: dict pc->lily name. Up from lowest member to highest and back."""
    up=[m for m in range(lo,hi+1) if m%12 in pcs_names]
    seq=up+up[-2::-1]
    return [octname(pcs_names[m%12], m) for m in seq]

def to_bars16(names, art=None):
    out=[]
    for i,n in enumerate(names[:-1]):
        d='16'
        out.append(n+d+(art(i) if art else ''))
    used=(len(names)-1)%16
    fill=dur_fill(16-used if used else 16)
    last=names[-1]
    out.append('~ '.join(last+f for f in fill))
    return ' '.join(out)

def major_names(tonic):
    steps=[0,1,2,3,4,5,6]
    return {(PC[tonic]+MAJ[i])%12: spell(tonic, MAJ[i], i) for i in range(7)}

def scales_ly():
    parts=[]
    for tonic,f in MAJOR_KEYS:
        sn=major_names(tonic)
        sc=run_full(sn)
        arp={k:v for k,v in sn.items() if (k-PC[tonic])%12 in (0,4,7,11)}
        ar=run_full(arp)
        # thirds: diatonic broken thirds up full range
        up=[m for m in range(LOW,HIGH+1) if m%12 in sn]
        th=[]
        for i in range(len(up)-2): th += [up[i], up[i+2]]
        th.append(up[-1])
        thn=[octname(sn[m%12],m) for m in th]
        P=PRETTY[tonic]
        parts.append(r'\key %s \major %s^\markup{\bold "%s major — scale"} %s \bar "||" \break' % (tonic, sc[0]+'16', P, to_bars16(sc)[len(sc[0])+2:]))
        parts.append(r'%s^\markup{\bold "maj7 arpeggio"} %s \bar "||" \break' % (ar[0]+'16', to_bars16(ar)[len(ar[0])+2:]))
        parts.append(r'%s^\markup{\bold "broken 3rds"} %s \bar "||" \break' % (thn[0]+'16', to_bars16(thn)[len(thn[0])+2:]))
    music=r'\time 4/4 \tempo "Reference" 4 = 120-160 ' + '\n'.join(parts)
    return PAPER + r'''\book { %s
\score { \new Staff { \accidentalStyle modern-cautionary \omit Score.BarNumber %s \bar "|." } \layout { indent = 0 } } }''' % (
      header_block("Reference: 12 Major Scales, maj7 Arpeggios, Broken 3rds", "Full written range, low B♭ – high F♯. Slur-2/tongue-2 or all tongued; push the metronome."), music)

def blues_ly():
    parts=[]
    tonics=['c','f','bes','ees','aes','des','fis','b','e','a','d','g']
    for t in tonics:
        nm={ (PC[t]+s)%12: spell(t,s,st) for s,st in [(0,0),(3,2),(5,3),(6,4),(7,4),(10,6)]}
        # #4 vs b5: spelled as b5 (step 4) and 5 (step 4) -> natural/flat same letter; fine
        seq=run_full(nm)
        parts.append(r'\key c \major %s^\markup{\bold "%s blues"} %s \bar "||" \break' % (seq[0]+'16', PRETTY[t], to_bars16(seq)[len(seq[0])+2:]))
        # triplet lick pattern: blues scale in 3-note descending groups across range
        up=[m for m in range(LOW+5,HIGH+1) if m%12 in nm]
        cells=[]
        for i in range(len(up)-1, 2, -2):
            g=[up[i],up[i-1],up[i-3]] if i>=3 else [up[i],up[i-1],up[i-2]]
            cells.append(r'\tuplet 3/2 { %s }' % ' '.join(octname(nm[m%12],m)+'8' for m in g))
        while len(cells)%4: cells.append('r4')
        parts.append(r'%s \bar "||" \break' % ' '.join(cells))
    music=r'\time 4/4 \tempo "Blues scales" 4 = 160-240 ' + '\n'.join(parts)
    return PAPER + r'''\book { %s
\score { \new Staff { \omit Score.BarNumber %s \bar "|." } \layout { indent = 0 } } }''' % (
      header_block("Blues Scale Sheets — All 12 Keys", "Full-range blues scale (1 ♭3 4 ♭5 5 ♭7) + descending triplet cascade. Swing or straight."), music)

def longtone_ly():
    random.seed(7)
    lt=[]
    for m in range(LOW, HIGH+1):
        n=name(m, flats=True)
        lt.append(r'%s1\pp\< | %s1\ff\> | %s2\pp r2' % (n,n,n))
    long_music=' |\n'.join(lt)
    # overtones
    ov=[]
    for f in range(58,65):
        fn=name(f, True)
        partials=[f+12,f+19,f+24,f+28,f+31]
        txt='fing. low '+fn.replace("es","♭").replace("is","♯").upper().replace("'","").replace(",","")
        ov.append(r'%s2^\markup{\small "%s"} %s \bar "||"' % (fn, txt, ' '.join(name(p,True)+'4\\harmonic' for p in partials)+' '+name(partials[-1],True)+'4\\harmonic r2'))
        # lip slur pattern 8ths
        pat=[partials[0],partials[1],partials[2],partials[1],partials[2],partials[3],partials[4],partials[3]]
        ov.append(' '.join(name(p,True)+'8'+('(' if i==0 else (')' if i==7 else '')) for i,p in enumerate(pat)) + ' ' + ' '.join(name(p,True)+'8'+('(' if i==0 else (')' if i==7 else '')) for i,p in enumerate(pat[::-1])) + r' \bar "||" \break')
    over_music='\n'.join(ov)
    return PAPER + r'''\book {
\bookpart { %s
\score { \new Staff { \time 4/4 \tempo "Long tones" 4 = 60 \omit Score.BarNumber %s \bar "|." } \layout { indent = 0 } } }
\bookpart { %s
\score { \new Staff { \time 4/4 \tempo "Overtones" 4 = 72-120 \omit Score.BarNumber \accidentalStyle forget %s \bar "|." } \layout { indent = 0 } } } }''' % (
      header_block("Long Tones — Chromatic, Full Range", "pp ‹ ff › pp on every written note, low B♭ to high F♯. Tuner on; no pitch sag on the diminuendo."),
      long_music,
      header_block("Overtone Series & Lip Slurs", "Finger the written fundamental; voice partials 2–6 (diamond heads) without changing fingering. Then slur the patterns."),
      over_music)

def artic_ly():
    random.seed(11)
    keys=['c','ees','e','aes','b','d','f','fis','bes','des','a','g']
    patterns=[('all tongued, staccato', lambda i:'-.'),
              ('slur 2, tongue 2', lambda i:['(',')','-.','-.'][i%4]),
              ('tongue 1, slur 3', lambda i:['-.','(','',')'][i%4]),
              ('slur 3, tongue 1', lambda i:['(','',')','-.'][i%4]),
              ('accent every 3rd 16th (displaced)', lambda i:'->' if i%3==0 else '-.'),
              ('accent every 5th 16th', lambda i:'->' if i%5==0 else ''),
              ('marcato on off-16ths', lambda i:'-^' if i%4 in (1,3) else '-.'),
              ('tenuto/staccatissimo alternation', lambda i:'--' if i%2==0 else '-!')]
    parts=[]
    for idx,(label,fn) in enumerate(patterns):
        for rep in range(2):
            t=keys[(idx*2+rep)%12]; sn=major_names(t)
            pool=[m for m in range(LOW+2,HIGH-1) if m%12 in sn]
            # 4 bars of 16ths: sweeping line, scale steps with leaps
            i=random.randrange(len(pool)); notes=[]; d=1
            for k in range(64):
                notes.append(pool[i])
                step=random.choice([1,1,1,2,-1,3])*d
                if not 0<=i+step<len(pool): d=-d; step=-step
                i+=step
                if random.random()<0.08: d=-d
            s=[]
            for k,m in enumerate(notes):
                a=fn(k%4 if 'slur' in label or 'tongue' in label else k)
                if k==63 and a=='(' : a=''
                s.append(octname(sn[m%12],m)+'16'+a)
            if fn(3 if True else 0)=='' and 'tongue 1' in label: pass
            mk=(r'^\markup{\bold "%s"}' % label) if rep==0 else ''
            first=s[0]; s[0]=first+mk
            # ensure slurs closed
            line=' '.join(s)
            if line.count('(')>line.count(')'): line=line+')' if False else line
            parts.append(r'\key %s \major %s \bar "||" \break' % (t, line))
    # double-tongue triplet bursts
    for rep in range(4):
        t=keys[rep*3]; sn=major_names(t)
        pool=[m for m in range(LOW+4,HIGH-2) if m%12 in sn]
        cells=[]
        for b in range(16):
            m=random.choice(pool); m2=pool[min(pool.index(m)+random.choice([1,2]),len(pool)-1)]
            cells.append(r'\tuplet 3/2 { %s16-. %s-. %s-. } %s8-^' % (octname(sn[m%12],m), octname(sn[m%12],m), octname(sn[m2%12],m2), octname(sn[m2%12],m2)))
        mk=r'^\markup{\bold "double-tongue bursts (T-K-T)"}' if rep==0 else ''
        cells[0]=cells[0].replace('16-.', '16-.'+mk,1)
        parts.append(r'\key %s \major %s \bar "||" \break' % (t,' '.join(cells)))
    music='\n'.join(parts)
    return PAPER + r'''\book { %s
\score { \new Staff { \time 4/4 \tempo "Articulation" 4 = 152-208 \omit Score.BarNumber %s \bar "|." } \layout { indent = 0 } } }''' % (
      header_block("Articulation Drills", "Each pattern twice, two keys. Start at 152, finish above 200. Keep the air constant through every tongued note."), music)

def chromatic_ly():
    random.seed(3)
    parts=[]
    up=list(range(LOW,HIGH+1)); seq=up+up[-2::-1]
    names=[name(m, False) for m in up]+[name(m,True) for m in up[-2::-1]]
    parts.append(r'%s^\markup{\bold "Chromatic, full range (sharps up / flats down)"} %s \bar "||" \break' % (names[0]+'16', to_bars16(names)[len(names[0])+2:]))
    # chromatic in sextuplets
    nm=[name(m, False) for m in up]+[name(m,True) for m in up[-2::-1]]
    cells=[]; i=0
    while i+6<=len(nm):
        cells.append(r'\tuplet 6/4 { %s }' % ' '.join(x+'16' for x in nm[i:i+6])); i+=6
    rest=nm[i:]
    while len(cells)%4: cells.append('r4')
    cells[0]=cells[0].replace('16','16^\\markup{\\bold "Chromatic sextuplets"}',1)
    parts.append(' '.join(cells)+r' \bar "||" \break')
    # diminished & whole-tone full range
    for lab,ints in [('Diminished (H–W) on low B♭',[0,1,3,4,6,7,9,10]),('Diminished (W–H) on low B',[0,2,3,5,6,8,9,11]),('Whole tone on low B♭',[0,2,4,6,8,10]),('Whole tone on low B',[0,2,4,6,8,10])]:
        base=58 if 'B♭' in lab else 59
        pcs={(base+i)%12 for i in ints}
        up=[m for m in range(LOW,HIGH+1) if m%12 in pcs]
        seq=up+up[-2::-1]; nm=[name(m, True) for m in seq]
        parts.append(r'%s^\markup{\bold "%s"} %s \bar "||" \break' % (nm[0]+'16', lab, to_bars16(nm)[len(nm[0])+2:]))
    music='\n'.join(parts)
    return PAPER + r'''\book { %s
\score { \new Staff { \time 4/4 \tempo "Full-range runs" 4 = 132-184 \omit Score.BarNumber \accidentalStyle neo-modern %s \bar "|." } \layout { indent = 0 } } }''' % (
      header_block("Full-Range Runs: Chromatic, Diminished, Whole Tone", "Symmetric scales low B♭ to high F♯ and back."), music)

if __name__=='__main__':
    out=os.path.join(os.path.dirname(os.path.abspath(__file__)),'..','src')+'/'
    for fn,f in [('01-ref-major-scales-arpeggios.ly',scales_ly),('02-ref-chromatic-symmetric-runs.ly',chromatic_ly),('03-blues-scales-12-keys.ly',blues_ly),('04-long-tones-overtones.ly',longtone_ly),('05-articulation-drills.ly',artic_ly)]:
        open(out+fn,'w').write('\\version "2.24.4"\n'+f())
    print('ok')
