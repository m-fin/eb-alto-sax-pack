"""Original modern-jazz line vocabulary generator (generic theory devices only). CC0."""
import os
import random, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import *
from spell import spell, octname

ROOTNAME={0:'c',1:'des',2:'d',3:'ees',4:'e',5:'f',6:'fis',7:'g',8:'aes',9:'a',10:'bes',11:'b'}
# quality -> (scale [(semis,letterstep)], triad pair roots (major triads, semis), pent minor root semis, chordmode suffix, guide tones)
Q={
 'm7':   ([(0,0),(2,1),(3,2),(5,3),(7,4),(9,5),(10,6)], (3,5), 2, ':m7', (3,10)),
 '7':    ([(0,0),(2,1),(4,2),(5,3),(7,4),(9,5),(10,6)], (10,0), 7, ':7', (4,10)),
 '7#11': ([(0,0),(2,1),(4,2),(6,3),(7,4),(9,5),(10,6)], (0,2), 7, ':7.11+', (4,10)),
 '7alt': ([(0,0),(1,1),(3,1),(4,2),(6,3),(8,5),(10,6)], (8,6), 3, ':7.5+.9+', (4,10)),
 'maj7': ([(0,0),(2,1),(4,2),(6,3),(7,4),(9,5),(11,6)], (0,2), 11, ':maj7', (4,11)),
 'm7b5': ([(0,0),(2,1),(3,2),(5,3),(6,4),(8,5),(10,6)], (8,10), 3, ':m7.5-', (3,10)),
 '7sus': ([(0,0),(2,1),(4,2),(5,3),(7,4),(9,5),(10,6)], (10,5), 7, ':sus4.7', (5,10)),
 'm6':   ([(0,0),(2,1),(3,2),(5,3),(7,4),(9,5),(11,6)], (5,7), 2, ':m6', (3,9)),
}
LO,HI=59,89

class Chord:
    def __init__(s, root, q):
        s.root=root%12; s.q=q
        sc,tp,pent,suf,gt=Q[q]
        s.rname=ROOTNAME[s.root]
        if q=='7alt' and s.rname=='fis': s.rname='ges'
        s.names={}
        for semi,st in sc:
            s.names[(s.root+semi)%12]=spell(s.rname,semi,st)
        s.pcs=sorted(s.names)
        s.triads=[[ (s.root+t+i)%12 for i in (0,4,7)] for t in tp]
        pr=(s.root+pent)%12
        s.pent=[(pr+i)%12 for i in (0,3,5,7,10)]
        s.ct=[(s.root+i)%12 for i in ({'m7':(0,3,7,10),'7':(0,4,7,10),'7#11':(0,4,7,10),'7alt':(0,4,8,10),'maj7':(0,4,7,11),'m7b5':(0,3,6,10),'7sus':(0,5,7,10),'m6':(0,3,7,9)}[q])]
        s.guide=[(s.root+g)%12 for g in gt]
        s.sym=s.rname+'%s'+suf
    def spell(s, m, nxt=None):
        pc=m%12
        if pc in s.names:
            nm=s.names[pc]
            if 'eses' in nm or 'isis' in nm or nm in ('fes','ces','bis','eis'):
                return name(m, flats=nm.endswith('es'))
            return octname(nm, m)
        up = nxt is None or nxt>m
        return name(m, flats=not up)

def near(pcs, p):
    c=[m for m in range(LO,HI+1) if m%12 in pcs]
    return min(c, key=lambda m: abs(m-p))

def bounce(seq):
    out=[]
    for p in seq:
        while p>HI: p-=12
        while p<LO: p+=12
        out.append(p)
    return out

def dev_bebop(ch, n, prev):
    pcs=set(ch.pcs)
    if ch.q in ('7','7sus','7#11'): pcs.add((ch.root+11)%12)
    if ch.q=='maj7': pcs.add((ch.root+8)%12)
    if ch.q in ('m7',): pcs.add((ch.root+4)%12)
    pool=[m for m in range(LO,HI+1) if m%12 in pcs]
    i=pool.index(near(pcs,prev)); d=random.choice([-1,1]); out=[]
    while len(out)<n:
        i=max(0,min(len(pool)-1,i))
        if random.random()<0.18 and len(out)<n-3:
            # enclosure of a chord tone
            t=near(ch.ct, pool[i]+d*3)
            above=[m for m in range(t+1,t+3) if m%12 in ch.names]
            out += [above[0] if above else t+2, t-1, t]
            i=pool.index(t) if t in pool else i
            continue
        out.append(pool[i])
        if random.random()<0.12: d=-d
        if not 0<=i+d<len(pool): d=-d
        i+=d
    return bounce(out[:n])

def dev_triadpair(ch, n, prev):
    A,B=ch.triads; d=random.choice([1,-1]); out=[]; p=prev; k=0
    style=random.choice(['up3','zig','open'])
    while len(out)<n:
        T=[A,B][k%2]; k+=1
        tones=[m for m in range(LO-12,HI+13) if m%12 in T]
        if d>0:
            start=[m for m in tones if m>=p-2][0]; idx=tones.index(start)
            g=tones[idx:idx+3]
        else:
            start=[m for m in tones if m<=p+2][-1]; idx=tones.index(start)
            g=tones[idx-2:idx+1][::-1]
        if style=='zig' and k%2==0: g=g[::-1]
        if style=='open': g=[g[0],g[2],g[1]+12*(1 if d>0 else -1)]
        out+=g; p=g[-1]+d
        if p>HI-4: d=-1
        if p<LO+4: d=1
    return bounce(out[:n])

def dev_fourths(ch, n, prev):
    out=[]; p=near(ch.pcs,prev); d=random.choice([1,-1])
    pool=[m for m in range(LO,HI+1) if m%12 in ch.pcs]
    while len(out)<n:
        g=[p+5*j*d for j in range(4)]
        if random.random()<0.5: g=g[:3]+[g[2]-2*d]
        out+=g
        i=pool.index(near(ch.pcs,p)); i=max(0,min(len(pool)-1,i+random.choice([1,2,-1])*(-d if random.random()<.5 else d)))
        p=pool[i]
        d=-d if random.random()<0.6 else d
        if g[-1]>HI or g[-1]<LO: d=-1 if g[-1]>HI else 1
    return bounce(out[:n])

def dev_pent(ch, n, prev):
    pool=[m for m in range(LO,HI+1) if m%12 in ch.pent]; i=pool.index(near(ch.pent,prev)); d=random.choice([1,-1]); out=[]
    pat=random.choice([[0,1,2,4],[0,2,1,3],[0,1,3,2],[3,2,0,1]])
    while len(out)<n:
        for x in pat:
            j=max(0,min(len(pool)-1,i+x*d)); out.append(pool[j])
        i+=2*d
        if i<=1 or i>=len(pool)-5: d=-d
    return out[:n]

def dev_wide(ch, n, prev):
    tones=ch.ct+[ (ch.root+t)%12 for t in (2,9)] ; out=[]; p=prev; d=random.choice([1,-1])
    for k in range(n):
        cands=[m for m in range(LO,HI+1) if m%12 in tones and 7<=abs(m-p)<=16 and (m-p)*d>0]
        if not cands: d=-d; cands=[m for m in range(LO,HI+1) if m%12 in tones and 5<=abs(m-p)<=16]
        p=random.choice(cands); out.append(p); d=-d
    return out

def dev_sideslip(ch, n, prev):
    h=max(2,n//2); sub=random.choice([dev_pent,dev_triadpair,dev_fourths])
    a=sub(ch, h, prev+1); a=[x+1 for x in a]
    b=sub(ch, n-h, a[-1]-1)
    return bounce(a+b)

def dev_super(ch, n, prev):
    sh=random.choice([6,1,-1]); r=(ch.root+sh)%12
    arp=[(r+i)%12 for i in (0,4,7,10)]
    pool=[m for m in range(LO,HI+1) if m%12 in arp]; i=pool.index(near(arp,prev)); d=random.choice([1,-1]); out=[]
    while len(out)<n-1:
        out.append(pool[i]); i+=d
        if not 0<=i<len(pool): d=-d; i+=2*d
    out.append(near(ch.guide, out[-1]))
    return out[:n]

DEVICES={'bebop':dev_bebop,'triad pair':dev_triadpair,'4ths':dev_fourths,'pentatonic':dev_pent,'wide':dev_wide,'side-slip':dev_sideslip,'superimposition':dev_super}
