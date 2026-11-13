"""Elite original sight-reading etudes for E-flat alto sax (written pitch). CC0."""
import os
import random, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import *
from spell import spell, octname
from rhythm import *

MET=[('4/4',[4,4,4,4],'4/4'),('3/4',[4,4,4],'3/4'),('2/4',[4,4],'2/4'),('5/4',[4]*5,'5/4'),('5/8',[6,4],'3,2 5/8'),('5/8',[4,6],'2,3 5/8'),
     ('7/8',[4,4,6],'2,2,3 7/8'),('7/8',[6,4,4],'3,2,2 7/8'),('3/8',[6],'3/8'),('6/8',[6,6],'6/8'),('7/16',[4,3],'4,3 7/16'),('9/16',[6,3],'6,3 9/16'),
     ('11/16',[4,4,3],'4,4,3 11/16'),('13/16',[4,4,2,3],'4,4,2,3 13/16'),('11/8',[6,6,6,4],'3,3,3,2 11/8'),('5/16',[3,2],'3,2 5/16'),('9/8',[6,6,6],'9/8')]
KEYS=[('c',0),('g',1),('d',2),('a',3),('e',4),('b',5),('fis',6),('cis',7),('f',-1),('bes',-2),('ees',-3),('aes',-4),('des',-5),('ges',-6),('ces',-7)]
TABLES={4:SR4,6:SR6,3:SR3,2:SR2}
DYN=['\\pp','\\p','\\mp','\\mf','\\f','\\ff','\\sfz','\\fp','\\fff','\\ppp']
TEMPI=['Presto furioso','Vivacissimo','Prestissimo','Agitato','Con fuoco','Leggierissimo','Tempestoso','Volante','Feroce','Inquieto','Scherzando, molto vivo','Frenetico']

class PitchGen:
    def __init__(s, keypcs, flats):
        s.p=random.randint(64,82); s.keypcs=keypcs; s.flats=flats; s.mode=None; s.left=0
    def next_cell(s, n):
        if s.left<=0:
            s.mode=random.choice(['chrom','leap','arp','scale','row','zig','wedge','octdisp'])
            s.left=random.randint(1,3); s.d=random.choice([1,-1])
            if s.mode=='arp':
                r=random.randrange(12); s.arp={(r+i)%12 for i in random.choice([(0,4,7,11),(0,3,7,10),(0,4,8),(0,3,6,9),(0,4,7,10,14),(0,4,6,10),(0,5,10,15),(0,3,7,11)])}
            if s.mode=='row':
                s.row=random.sample(range(12),12)
        s.left-=1; out=[]
        for k in range(n):
            p=s.p
            if s.mode=='chrom': p+=s.d*random.choice([1,1,1,2])
            elif s.mode=='scale':
                p+=s.d
                while p%12 not in s.keypcs: p+=s.d
            elif s.mode=='leap': p+=s.d*random.choice([6,7,8,9,10,11,13,14]); s.d=-s.d
            elif s.mode=='zig': p+=random.choice([-11,-10,-9,-8,8,9,10,11,3,-3,1,-1])
            elif s.mode=='wedge': p+=(k+1)*(1 if k%2 else -1)
            elif s.mode=='octdisp':
                p+=s.d*random.choice([1,2,3]); 
                if random.random()<.4: p+=random.choice([12,-12])
            elif s.mode=='arp':
                p+=s.d
                while p%12 not in s.arp: p+=s.d
            elif s.mode=='row':
                pc=s.row[(k)%12]; cands=[m for m in range(LOW,HIGH+1) if m%12==pc and abs(m-s.p)<=11]
                p=random.choice(cands) if cands else p
            if p>HIGH: p-=12 if s.mode!='scale' else 12; s.d=-1
            if p<LOW: p+=12; s.d=1
            p=max(LOW,min(HIGH,p))
            s.p=p; out.append(p)
        return out
    def spell(s, seq):
        res=[]
        for j,m in enumerate(seq):
            if m%12 in s.keypcs: res.append(s.keyname(m)); continue
            nxt=seq[j+1] if j+1<len(seq) else None
            fl = (nxt is not None and nxt<m) if random.random()<0.75 else s.flats
            res.append(name(m, flats=fl))
        return res

def make_keyctx(tonic):
    nm={(PC.get(tonic, None) if tonic in PC else None):None}
    return None

def keynames(tonic, fifths):
    tpc={'cis':1,'ges':6,'ces':11}.get(tonic, PC.get(tonic))
    d={}
    for i,semi in enumerate(MAJ):
        n=spell(tonic if tonic not in ('cis','ges','ces') else tonic, semi, i)
        d[(tpc+semi)%12]=n
    return tpc,d

def etude(idx, seed):
    random.seed(seed)
    nb=random.randint(16,19)
    kidx=random.randrange(len(KEYS)); tonic,f=KEYS[kidx]
    tpc,kn=keynames(tonic,f)
    pg=PitchGen(set(kn), f<0)
    pg.keyname=lambda m: octname(kn[m%12], m)
    out=[]; prev_m=None; hairpin_open=False; ossia_count=0
    tempo=random.choice([240,260,276,288,300,320,336,352])
    tname=random.choice(TEMPI)
    nextkey=random.randint(5,8)
    feats=set()
    for b in range(nb):
        m=random.choice(MET)
        while prev_m and m[0]==prev_m[0] and random.random()<0.85: m=random.choice(MET)
        pre=''
        if m!=prev_m: pre+=r'\time %s ' % m[2]
        if b==nextkey and b<nb-3:
            kidx=random.randrange(len(KEYS)); tonic,f=KEYS[kidx]; tpc,kn=keynames(tonic,f)
            pg.keypcs=set(kn); pg.flats=f<0; pg.keyname=(lambda kn_: (lambda mm: octname(kn_[mm%12], mm)))(kn)
            pre=r'\bar "||" \key %s \major ' % tonic + pre; nextkey=b+random.randint(4,7); feats.add('key changes')
            if random.random()<0.3:
                pre+=r'\tempo "%s" ' % random.choice(['Più mosso','Subito meno mosso','Tempo I','Stringendo','A tempo, feroce'])
        prev_m=m
        cells=[]; allnotes=[]; toks_list=[]
        for sz in m[1]:
            if b==nb-1 and sz==m[1][-1] and len(toks_list)==len(m[1])-1:
                toks={4:[('N','4')],6:[('N','4.')],3:[('N','8.')],2:[('N','8')]}[sz]
            else:
                toks=pick(TABLES[sz])
            toks_list.append(toks)
        bar_notes=[]; bar_arts=[]
        for toks in toks_list:
            n=count_notes(toks)
            seq=pg.next_cell(n); sp=pg.spell(seq)
            style=random.choice(['none','stacc','slur','s2t2','acc1','marc','ten','mix','slur'])
            arts=[]
            for j in range(n):
                a=''
                if style=='stacc': a='-.'
                elif style=='acc1' and j==0: a='->'
                elif style=='marc' and j==n-1: a='-^'
                elif style=='ten': a='--'
                elif style=='s2t2': a=['(',')','-.','-.'][j%4] if n>=4 else ''
                elif style=='mix': a=random.choice(['','-.','->','--','-!'])
                arts.append(a)
            if style=='slur' and n>=2: arts[0]+='('; arts[-1]+=')'
            if style=='s2t2' and n>=4 and n%4 in (1,):
                pass
            # make sure slurs balanced in cell
            o=sum(a.count('(') for a in arts); c=sum(a.count(')') for a in arts)
            if o>c: 
                # remove the dangling opener
                for j in range(len(arts)-1,-1,-1):
                    if '(' in arts[j]: arts[j]=arts[j].replace('(','',1); break
            bar_notes.append((toks,sp,seq,arts))
        # dynamics on first note of bar
        first=bar_notes[0][3] if bar_notes[0][3] else (bar_notes[1][3] if len(bar_notes)>1 else None)
        dyn=''
        if hairpin_open or b==0 or random.random()<0.33:
            dyn=random.choice(DYN); hairpin_open=False
        if b<nb-1 and random.random()<0.3:
            dyn+=random.choice(['\\<','\\>']); hairpin_open=True
        if b==nb-1:
            if hairpin_open and not dyn: dyn=random.choice(DYN)
            hairpin_open=False
        # attach dyn to first note in bar
        for toks,sp,seq,arts in bar_notes:
            if arts: arts[0]=dyn+arts[0] if False else arts[0]+dyn; break
        # last bar: if a hairpin started in this bar remove
        body=' '.join(render(t,list(sp),list(a)) for t,sp,seq,a in bar_notes)
        allp=[x for _,_,seq,_ in bar_notes for x in seq]
        if allp and ossia_count<3 and b>2 and b<nb-1 and min(allp)>=72 and max(allp)<=83 and random.random()<0.35:
            oparts=[]
            for ci,(t,sp,seq,a) in enumerate(bar_notes):
                oa=['']*len(seq)
                if ci==0 and seq: oa[0]='^\\markup{\\tiny \\italic "altiss. ad lib."}'
                elif ci==1 and seq and not bar_notes[0][2]: oa[0]='^\\markup{\\tiny \\italic "altiss. ad lib."}'
                oparts.append(render(t,[name(x+12, pg.flats) for x in seq],oa))
            oss=' '.join(oparts)
            body=r'''<< { %s } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key %s \major %s } >>''' % (body, tonic, oss)
            # put markup on first ossia note: append to first token after key
            ossia_count+=1; feats.add('altissimo ossias')
        out.append(pre+body+' |')
    music='\n'.join(out)
    # fix ossia markup placement: markup after closing brace isn't valid -> move
    music=music.replace(r'^\markup{\tiny "altiss. ossia"} } >>', r' } >>')
    k0=KEYS[0]
    sub='Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = %d (aspirational — read it first at half speed).' % tempo
    return r'''\bookpart { \paper { page-count = 1 } %s
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key %s \major \tempo "%s" 8 = %d
%s \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }''' % (
        header_block('Sight-Reading Etude No. %d' % idx, sub, composer='Original — CC0'), KEYS[[k for k,_ in KEYS].index(tonic)][0] if False else KEYS_START[idx], tname, tempo, music)

KEYS_START={}
def etudes_ly(n=60):
    parts=[]
    for i in range(1,n+1):
        random.seed(5000+i); KEYS_START[i]=None
        parts.append(None)
    out=[]
    for i in range(1,n+1):
        random.seed(5000+i)
        nb=random.randint(16,19); kidx=random.randrange(len(KEYS)); KEYS_START[i]=KEYS[kidx][0]
        out.append(etude(i,5000+i))
    return PAPER+r'\book { '+'\n'.join(out)+' }'

if __name__=='__main__':
    open(os.path.join(os.path.dirname(os.path.abspath(__file__)),'..','src','09-elite-sight-reading-etudes.ly'),'w').write('\\version "2.24.4"\n#(set-global-staff-size 18)\n'+etudes_ly())
    print('ok')
