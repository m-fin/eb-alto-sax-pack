"""Shared helpers for generating original E-flat alto saxophone material (CC0).
All pitches are MIDI numbers in WRITTEN alto pitch (written = concert + major 6th).
Written range: Bb3 (58) .. F#6 (90); altissimo optional above 90."""
import random
LOW, HIGH = 58, 90
SHARP = ['c','cis','d','dis','e','f','fis','g','gis','a','ais','b']
FLAT  = ['c','des','d','ees','e','f','ges','g','aes','a','bes','b']
# keys: name -> (lily tonic, fifths)
MAJOR_KEYS = [('c',0),('g',1),('d',2),('a',3),('e',4),('b',5),('fis',6),('f',-1),('bes',-2),('ees',-3),('aes',-4),('des',-5)]
PC = {'c':0,'cis':1,'des':1,'d':2,'dis':3,'ees':3,'e':4,'f':5,'fis':6,'ges':6,'g':7,'gis':8,'aes':8,'a':9,'ais':10,'bes':10,'b':11}
PRETTY = {'c':'C','cis':'C♯','des':'D♭','d':'D','dis':'D♯','ees':'E♭','e':'E','f':'F','fis':'F♯','ges':'G♭','g':'G','gis':'G♯','aes':'A♭','a':'A','ais':'A♯','bes':'B♭','b':'B'}

def name(m, flats):
    pc = m % 12
    n = (FLAT if flats else SHARP)[pc]
    o = m // 12 - 4
    return n + ("'" * o if o > 0 else "," * (-o))

def fold(p, lo=LOW, hi=HIGH):
    while p > hi: p -= 12
    while p < lo: p += 12
    return p

def scale_pcs(tonic_pc, intervals):
    return sorted({(tonic_pc + i) % 12 for i in intervals})

MAJ = [0,2,4,5,7,9,11]

def dur_fill(k):
    """k sixteenths -> list of lily durations (tied)"""
    table = {16:'1',14:'2..',12:'2.',8:'2',7:'4..',6:'4.',4:'4',3:'8.',2:'8',1:'16'}
    out = []
    for v in [16,14,12,8,7,6,4,3,2,1]:
        while k >= v:
            out.append(table[v]); k -= v
    return out

PAPER = r'''
\paper {
  #(set-paper-size "letter")
  top-margin = 12\mm bottom-margin = 12\mm left-margin = 14\mm right-margin = 14\mm
  ragged-last-bottom = ##t
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #13
}
'''
def header_block(title, subtitle='', composer='Original exercise — CC0', piece=''):
    sub = subtitle.replace('"', "'")
    return (r'\header { title = "%s" composer = "%s" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"%s" \markup \vspace #0.6 '
            % (title, composer, sub))
