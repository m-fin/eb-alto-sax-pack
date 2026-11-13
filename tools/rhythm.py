import random
# token: ('N',dur16_str) ('R',dur) or ('T', ratio, [tokens])
def T(r,*toks): return ('T',r,list(toks))
N8=('N','8'); N16=('N','16'); N4=('N','4'); R8=('R','8'); R16=('R','16'); N8d=('N','8.'); N4d=('N','4.'); N32=('N','32')
JAZZ4=[([N8,N8],12),([N16,N16,N16,N16],3),([T('3/2',N8,N8,N8)],4),([R8,N8],3),([N4],2),([N16,N16,N8],2),([N8,N16,N16],2),([T('6/4',*[N16]*6)],1),([T('5/4',*[N16]*5)],1)]
JAZZ6=[([N8,N8,N8],10),([N16]*6,2),([N8,N8,N16,N16],2),([R8,N8,N8],3),([N4,N8],2),([N8,N4],2)]
SR4=[([N16]*4,6),([N8,N16,N16],3),([N16,N16,N8],3),([N16,N8,N16],3),([N8d,N16],2),([N16,N8d],2),([T('3/2',N8,N8,N8)],3),([T('5/4',*[N16]*5)],3),([T('7/4',*[N16]*7)],2),([T('6/4',*[N16]*6)],2),([N32]*8,2),([N16,N32,N32,N16,N16],2),([R16,N16,N16,N16],2),([R8,N16,N16],1),([N8,N8],2),([N4],1),([T('3/2',N8,R8,N8)],1),([T('5/4',N16,N16,R16,N16,N16)],1),([N32,N32,N16,N8],1)]
SR6=[([N16]*6,4),([N8,N8,N8],3),([N8d,N8d],2),([N4,N8],1),([N8,N4],1),([N16,N16,N8,N8],2),([N32,N32,N16,N8,N8],2),([R8,N8,N8],2),([T('4/3',N8,N8,N8,N8)],2),([T('5/6',*[N16]*5)],0),([N16,N8,N16,N8],2)]
SR3=[([N16,N16,N16],4),([N8d],1),([N16,N8],2),([N8,N16],2),([T('4/3',*[N16]*4)],0),([N32,N32,N16,N16],2)]
SR2=[([N16,N16],3),([N8],2),([T('3/2',N16,N16,N16)],3),([N32]*4,1),([R16,N16],1)]
def pick(tbl):
    tot=sum(w for _,w in tbl if w); r=random.uniform(0,tot)
    for t,w in tbl:
        if not w: continue
        r-=w
        if r<=0: return t
    return tbl[0][0]
def count_notes(toks):
    c=0
    for t in toks:
        if t[0]=='N': c+=1
        elif t[0]=='T': c+=count_notes(t[2])
    return c
def rest_cell(size):
    return {4:[('R','4')],6:[('R','4.')],3:[('R','8.')],2:[('R','8')]}[size]
def render(toks, notes, arts):
    """notes: list of lily pitch strings, arts: list of suffix strings; consumed in order"""
    out=[]
    for t in toks:
        if t[0]=='N': out.append(notes.pop(0)+t[1]+arts.pop(0))
        elif t[0]=='R': out.append('r'+t[1])
        else: out.append(r'\tuplet %s { %s }' % (t[1], render(t[2],notes,arts)))
    return ' '.join(out)
