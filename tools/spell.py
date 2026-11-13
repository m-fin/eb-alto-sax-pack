LET='cdefgab'; NAT=[0,2,4,5,7,9,11]
def lily(letter, acc):
    return letter + ('is'*acc if acc>0 else 'es'*(-acc))
def spell(tonic, semis, steps):
    """tonic like 'fis'; return lily pitch-class name semis above using letter offset steps."""
    tl=tonic[0]; tacc=tonic.count('is')-tonic.count('es') if tonic not in('ees','aes') else -1
    if tonic in ('ees','aes'): tacc=-1
    tpc=(NAT[LET.index(tl)]+tacc)%12
    li=(LET.index(tl)+steps)%7; target=(tpc+semis)%12
    acc=(target-NAT[li]+6)%12-6
    return lily(LET[li],acc)
def octname(pcname, midi):
    # octave marks for a spelled name whose sounding midi is given
    letter=pcname[0]; acc=pcname.count('is')-pcname.count('es')
    if pcname in ('ees','aes'): acc=-1
    if pcname.startswith('ees') or pcname.startswith('aes'): acc=-(len(pcname)-1)//2
    base=midi-acc  # natural letter midi
    o=base//12-4
    return pcname+("'"*o if o>0 else ","*(-o))
