"""Check written alto-sax range in generated LilyPond sources.

The pack is engraved in written E-flat alto pitch. The README's playable
range on the main staff is low B♭3 (MIDI 58) through high F♯6 (MIDI 90).
Notes above F♯6 are allowed only in ossia/altissimo staves and in the
overtone-partial exercises (diamond-note harmonics and the lip-slur
bookpart). Chord-symbol ChordNames / \\chordmode blocks are not pitches.

This is a focused LilyPond reader, not a full engraver: absolute and
\\relative pitch, \\transpose, chords, grace notes, simultaneous voices,
the pack's \\raiseLow and \\topNote music functions, \\include, and
variable expansion. Run ``python3 tools/check_range.py``.
"""
from __future__ import annotations

import sys
from pathlib import Path

LOW = 58   # Bb3, written low B♭
HIGH = 90  # F#6

_NAT = [0, 2, 4, 5, 7, 9, 11]
_PC_NAME = ['C', 'C♯', 'D', 'E♭', 'E', 'F', 'F♯', 'G', 'A♭', 'A', 'B♭', 'B']

# Dutch note names, longest first so "fis" wins over "f" and "as" over "a".
_NOTE_NAMES = {
    'cisis': (0, 2), 'ceses': (0, -2), 'cis': (0, 1), 'ces': (0, -1), 'c': (0, 0),
    'disis': (1, 2), 'deses': (1, -2), 'dis': (1, 1), 'des': (1, -1), 'd': (1, 0),
    'eisis': (2, 2), 'eeses': (2, -2), 'eis': (2, 1), 'ees': (2, -1), 'es': (2, -1), 'e': (2, 0),
    'fisis': (3, 2), 'feses': (3, -2), 'fis': (3, 1), 'fes': (3, -1), 'f': (3, 0),
    'gisis': (4, 2), 'geses': (4, -2), 'gis': (4, 1), 'ges': (4, -1), 'g': (4, 0),
    'aisis': (5, 2), 'aeses': (5, -2), 'ais': (5, 1), 'aes': (5, -1), 'as': (5, -1), 'a': (5, 0),
    'bisis': (6, 2), 'beses': (6, -2), 'bis': (6, 1), 'bes': (6, -1), 'b': (6, 0),
}
_NOTE_ORDER = sorted(_NOTE_NAMES, key=len, reverse=True)

# Commands that ride on a note and do not start a new music expression.
_POST_CMDS = {
    'pp', 'p', 'mp', 'mf', 'f', 'ff', 'fff', 'fp', 'sfz', 'ppp',
    'harmonic', 'fermata', 'trill', 'prall', 'staccato', 'noBeam',
    'accent', 'tenuto', 'marcato', 'stopped', 'portato',
    '<', '>', '!', '(', ')',
}
_ZERO_ARG = _POST_CMDS | {'break', 'pageBreak', 'stemUp', 'stemDown', 'noBeam'}
_GRACE = {'grace', 'acciaccatura', 'appoggiatura', 'slashedGrace'}
_MUSIC_FNS = {'raiseLow', 'topNote'}


class ParseError(Exception):
    pass


class NoteHit:
    def __init__(self, midi, bar, line, origin, ossia, allow_high, spelling):
        self.midi = midi
        self.bar = bar
        self.line = line
        self.origin = origin
        self.ossia = ossia
        self.allow_high = allow_high
        self.spelling = spelling

    def __repr__(self):
        return f'NoteHit({self.spelling}={self.midi} bar={self.bar} ossia={self.ossia})'


def pitch_label(midi):
    return f'{_PC_NAME[midi % 12]}{midi // 12 - 1}'


def lily_to_midi(octave, step, alter):
    """LilyPond octave (c' == 0) to MIDI."""
    return (octave + 5) * 12 + _NAT[step] + alter


def relativize(prev, step, alter, marks):
    """Resolve one relative pitch against the previous absolute LilyPond pitch.

    ``marks`` is the number of ``'`` minus the number of ``,`` written on the
    note. LilyPond then shifts by octaves until the diatonic distance from
    the previous note is at most a fourth, and adds the previous octave.
    """
    octave = marks
    dp = step - prev[1]
    while dp < -3:
        octave += 1
        dp += 7
    while dp > 3:
        octave -= 1
        dp -= 7
    return (octave + prev[0], step, alter)


class Tok:
    def __init__(self, kind, value, line, filename):
        self.kind = kind
        self.value = value
        self.line = line
        self.filename = filename

    def __repr__(self):
        return f'{self.kind}:{self.value!r}@{self.line}'


def tokenize(text, filename):
    tokens = []
    i = 0
    line = 1
    n = len(text)

    def add(kind, value):
        tokens.append(Tok(kind, value, line, filename))

    while i < n:
        c = text[i]
        if c == '\n':
            line += 1
            i += 1
            continue
        if c in ' \t\r':
            i += 1
            continue
        if c == '%':
            if i + 1 < n and text[i + 1] == '{':
                i += 2
                while i < n and not (text[i] == '%' and i + 1 < n and text[i + 1] == '}'):
                    if text[i] == '\n':
                        line += 1
                    i += 1
                i = min(n, i + 2)
                continue
            while i < n and text[i] != '\n':
                i += 1
            continue
        if c == '"':
            i += 1
            buf = []
            while i < n and text[i] != '"':
                if text[i] == '\\' and i + 1 < n:
                    buf.append(text[i + 1])
                    i += 2
                    continue
                if text[i] == '\n':
                    line += 1
                buf.append(text[i])
                i += 1
            i += 1  # closing quote
            add('STRING', ''.join(buf))
            continue
        if c == '#':
            if text.startswith('##', i):
                j = i + 2
                while j < n and text[j].isalpha():
                    j += 1
                add('SCHEME', text[i:j])
                i = j
                continue
            if text.startswith('#"', i):
                j = i + 2
                while j < n and text[j] != '"':
                    if text[j] == '\\' and j + 1 < n:
                        j += 2
                        continue
                    if text[j] == '\n':
                        line += 1
                    j += 1
                j = min(n, j + 1)
                add('SCHEME', text[i:j])
                i = j
                continue
            if text.startswith("#'(", i) or text.startswith('#(', i):
                j = i + (3 if text.startswith("#'(", i) else 2)
                depth = 1
                while j < n and depth:
                    if text[j] == '"':
                        j += 1
                        while j < n and text[j] != '"':
                            if text[j] == '\\':
                                j += 2
                                continue
                            if text[j] == '\n':
                                line += 1
                            j += 1
                        j += 1
                        continue
                    if text[j] == '(':
                        depth += 1
                    elif text[j] == ')':
                        depth -= 1
                    if text[j] == '\n':
                        line += 1
                    j += 1
                add('SCHEME', text[i:j])
                i = j
                continue
            if text.startswith("#'", i):
                j = i + 2
                while j < n and (text[j].isalnum() or text[j] in '-_'):
                    j += 1
                add('SCHEME', text[i:j])
                i = j
                continue
            j = i + 1
            if j < n and text[j] == '-':
                j += 1
            while j < n and (text[j].isalnum() or text[j] in '.-'):
                j += 1
            add('SCHEME', text[i:j])
            i = j
            continue
        if c == '\\':
            if i + 1 < n and text[i + 1] == '\\':
                add('VOICE', '\\\\')
                i += 2
                continue
            i += 1
            if i < n and (text[i].isalpha() or text[i] == '_'):
                j = i
                while j < n and (text[j].isalnum() or text[j] in '-_'):
                    j += 1
                add('COMMAND', text[i:j])
                i = j
                continue
            if i < n:
                add('COMMAND', text[i])
                i += 1
                continue
            add('COMMAND', '')
            continue
        if c == '<':
            if i + 1 < n and text[i + 1] == '<':
                add('LANG', '<<')
                i += 2
            else:
                add('LCHORD', '<')
                i += 1
            continue
        if c == '>':
            if i + 1 < n and text[i + 1] == '>':
                add('RANG', '>>')
                i += 2
            else:
                add('RCHORD', '>')
                i += 1
            continue
        if c in 'abcdefg':
            name = None
            for candidate in _NOTE_ORDER:
                if text.startswith(candidate, i):
                    after = i + len(candidate)
                    if after < n and text[after].isalpha():
                        continue
                    name = candidate
                    break
            if name is not None:
                step, alter = _NOTE_NAMES[name]
                j = i + len(name)
                marks = 0
                while j < n and text[j] in "',":
                    marks += 1 if text[j] == "'" else -1
                    j += 1
                caution = ''
                if j < n and text[j] in '!?':
                    caution = text[j]
                    j += 1
                spelling = text[i:j]
                add('NOTE', (step, alter, marks, spelling, caution))
                i = j
                continue
        if c in 'rRs' and not (i + 1 < n and text[i + 1].isalpha()):
            add('REST', c)
            i += 1
            continue
        if c.isalpha():
            j = i + 1
            while j < n and (text[j].isalnum() or text[j] == '-'):
                j += 1
            add('WORD', text[i:j])
            i = j
            continue
        if c.isdigit():
            j = i + 1
            while j < n and text[j].isdigit():
                j += 1
            add('NUMBER', text[i:j])
            i = j
            continue
        singles = {
            '{': 'LBRACE', '}': 'RBRACE', '=': 'EQUAL', '|': 'BAR',
            '/': 'SLASH', '*': 'STAR', '.': 'DOT', ',': 'COMMA',
            ':': 'COLON', '+': 'PLUS', '^': 'DIR', '_': 'DIR',
        }
        if c == '-' and i + 1 < n and text[i + 1] in '-.^>_+!|':
            add('ARTIC', text[i:i + 2])
            i += 2
            continue
        if c == '-':
            add('MINUS', '-')
            i += 1
            continue
        if c in singles:
            add(singles[c], c)
            i += 1
            continue
        if c in '()[]~':
            add('PUNCT', c)
            i += 1
            continue
        add('PUNCT', c)
        i += 1
    tokens.append(Tok('EOF', '', line, filename))
    return tokens


class Registry:
    def __init__(self):
        self.vars = set()
        self.stack = []


class Parser:
    def __init__(self, tokens, filename, registry):
        self.toks = tokens
        self.i = 0
        self.filename = Path(filename)
        self.reg = registry

    def peek(self):
        return self.toks[self.i]

    def advance(self):
        tok = self.toks[self.i]
        if tok.kind != 'EOF':
            self.i += 1
        return tok

    def error(self, msg):
        tok = self.peek()
        raise ParseError(f'{tok.filename}:{tok.line}: {msg} (at {tok})')

    def expect(self, kind, value=None):
        tok = self.peek()
        if tok.kind != kind or (value is not None and tok.value != value):
            self.error(f'expected {kind} {value or ""}')
        return self.advance()

    def parse_statements(self):
        nodes = []
        while self.peek().kind != 'EOF':
            nodes.append(self.parse_statement())
        return nodes

    def parse_statement(self):
        tok = self.peek()
        if tok.kind == 'COMMAND':
            name = tok.value
            if name == 'include':
                return self.parse_include()
            if name == 'version':
                self.advance()
                self.expect('STRING')
                return ('nop',)
            if name in ('paper', 'layout', 'midi'):
                self.advance()
                self.skip_brace()
                return ('nop',)
            if name == 'header':
                return self.parse_header()
            if name == 'book':
                self.advance()
                return ('book', self.parse_block_statements())
            if name == 'bookpart':
                self.advance()
                return ('bookpart', self.parse_block_statements())
            if name == 'score':
                self.advance()
                return ('score', self.parse_score_body())
            if name == 'markup':
                self.advance()
                self.skip_markup()
                return ('nop',)
        if tok.kind == 'SCHEME':
            self.advance()
            return ('nop',)
        if tok.kind == 'WORD' and self.toks[self.i + 1].kind == 'EQUAL':
            return self.parse_assignment()
        return self.parse_music_expr()

    def parse_block_statements(self):
        self.expect('LBRACE')
        nodes = []
        while self.peek().kind != 'RBRACE':
            if self.peek().kind == 'EOF':
                self.error('unclosed block')
            nodes.append(self.parse_statement())
        self.advance()
        return nodes

    def parse_score_body(self):
        self.expect('LBRACE')
        nodes = []
        while self.peek().kind != 'RBRACE':
            if self.peek().kind == 'EOF':
                self.error('unclosed score')
            if self.peek().kind == 'COMMAND' and self.peek().value in ('layout', 'midi', 'paper'):
                self.advance()
                self.skip_brace()
                continue
            if self.peek().kind == 'COMMAND' and self.peek().value == 'header':
                nodes.append(self.parse_header())
                continue
            nodes.append(self.parse_music_expr())
        self.advance()
        return ('seq', nodes)

    def parse_header(self):
        self.expect('COMMAND', 'header')
        self.expect('LBRACE')
        title = ''
        while self.peek().kind != 'RBRACE':
            if self.peek().kind == 'EOF':
                self.error('unclosed header')
            if self.peek().kind == 'WORD' and self.toks[self.i + 1].kind == 'EQUAL':
                key = self.advance().value
                self.advance()
                val = self.parse_header_value()
                if key == 'title' and isinstance(val, str):
                    title = val
                continue
            self.error('bad header entry')
        self.advance()
        return ('header', title)

    def parse_header_value(self):
        tok = self.peek()
        if tok.kind == 'STRING':
            return self.advance().value
        if tok.kind in ('SCHEME', 'NUMBER', 'WORD'):
            self.advance()
            return None
        if tok.kind == 'COMMAND' and tok.value == 'markup':
            self.advance()
            self.skip_markup()
            return None
        self.error('bad header value')

    def parse_include(self):
        self.expect('COMMAND', 'include')
        spec = self.expect('STRING').value
        path = (self.filename.parent / spec).resolve()
        if not path.exists():
            self.error(f'included file not found: {spec}')
        if path in self.reg.stack:
            self.error(f'include cycle: {spec}')
        self.reg.stack.append(path)
        try:
            sub = Parser(tokenize(path.read_text(encoding='utf-8'), str(path)), path, self.reg)
            stmts = sub.parse_statements()
        finally:
            self.reg.stack.pop()
        return ('seq', stmts)

    def parse_assignment(self):
        name = self.expect('WORD').value
        self.expect('EQUAL')
        if self.peek().kind == 'SCHEME':
            self.advance()
            return ('nop',)
        expr = self.parse_music_expr()
        self.reg.vars.add(name)
        return ('assign', name, expr)

    def parse_music_expr(self):
        tok = self.peek()
        if tok.kind == 'LBRACE':
            return self.parse_seq()
        if tok.kind == 'LANG':
            return self.parse_sim()
        if tok.kind == 'NOTE':
            return self.parse_note()
        if tok.kind == 'REST':
            return self.parse_rest()
        if tok.kind == 'LCHORD':
            return self.parse_chord()
        if tok.kind == 'BAR':
            self.advance()
            return ('bar',)
        if tok.kind == 'PUNCT' or tok.kind == 'ARTIC':
            self.advance()
            return ('nop',)
        if tok.kind == 'VOICE':
            self.advance()
            return ('nop',)
        if tok.kind != 'COMMAND':
            self.error('expected music')
        name = tok.value
        if name in ('new', 'context'):
            return self.parse_context()
        if name == 'relative':
            return self.parse_relative()
        if name == 'transpose':
            return self.parse_transpose()
        if name == 'repeat':
            self.advance()
            if self.peek().kind == 'WORD':
                self.advance()
            if self.peek().kind == 'NUMBER':
                self.advance()
            return self.parse_music_expr()
        if name == 'alternative':
            self.advance()
            return self.parse_music_expr()
        if name in ('tuplet', 'times'):
            self.advance()
            self.expect('NUMBER')
            if self.peek().kind == 'SLASH':
                self.advance()
                self.expect('NUMBER')
            return self.parse_music_expr()
        if name in _GRACE:
            self.advance()
            return ('grace', self.parse_music_expr())
        if name == 'chordmode':
            self.advance()
            if self.peek().kind == 'LBRACE':
                self.skip_brace()
            return ('nop',)
        if name == 'bar':
            self.advance()
            if self.peek().kind == 'STRING':
                self.advance()
            return ('barcmd',)
        if name == 'time':
            self.advance()
            self.parse_time()
            return ('nop',)
        if name == 'key':
            self.advance()
            self.parse_abs_pitch()
            if self.peek().kind == 'COMMAND' and self.peek().value in ('major', 'minor'):
                self.advance()
            return ('nop',)
        if name == 'clef':
            self.advance()
            if self.peek().kind in ('STRING', 'WORD'):
                self.advance()
            return ('nop',)
        if name == 'tempo':
            self.advance()
            self.parse_tempo()
            return ('nop',)
        if name == 'partial':
            self.advance()
            if self.peek().kind == 'NUMBER':
                self.advance()
            if self.peek().kind == 'STAR':
                self.advance()
                if self.peek().kind == 'NUMBER':
                    self.advance()
            return ('nop',)
        if name in ('set', 'override'):
            self.advance()
            self.skip_equals_value()
            return ('nop',)
        if name == 'omit':
            self.advance()
            self.skip_dotted_word()
            return ('nop',)
        if name == 'accidentalStyle':
            self.advance()
            if self.peek().kind == 'WORD':
                self.advance()
            return ('nop',)
        if name == 'mark':
            self.advance()
            self.consume_script()
            return ('nop',)
        if name == 'markup':
            self.advance()
            self.skip_markup()
            return ('nop',)
        if name in _ZERO_ARG:
            self.advance()
            return ('nop',)
        if name in _MUSIC_FNS:
            self.advance()
            return ('call', name, self.parse_music_expr())
        if name in self.reg.vars:
            self.advance()
            return ('ref', name)
        self.error(f'unknown command \\{name}')

    def parse_seq(self):
        self.expect('LBRACE')
        nodes = []
        while self.peek().kind != 'RBRACE':
            if self.peek().kind == 'EOF':
                self.error('unclosed {')
            nodes.append(self.parse_music_expr())
        self.advance()
        return ('seq', nodes)

    def parse_sim(self):
        self.expect('LANG')
        voices = []
        while self.peek().kind != 'RANG':
            if self.peek().kind == 'EOF':
                self.error('unclosed <<')
            if self.peek().kind == 'VOICE':
                self.advance()
                continue
            voices.append(self.parse_music_expr())
        self.advance()
        return ('sim', voices)

    def parse_context(self):
        kind_cmd = self.advance().value  # new or context
        if kind_cmd == 'context' and self.peek().kind == 'LBRACE':
            self.skip_brace()
            return ('nop',)
        if self.peek().kind != 'WORD':
            self.error('expected a context name')
        cname = self.advance().value
        if self.peek().kind == 'EQUAL':
            self.advance()
            if self.peek().kind == 'STRING':
                self.advance()
        ossia = False
        if self.peek().kind == 'COMMAND' and self.peek().value == 'with':
            self.advance()
            words = self.skip_brace_words()
            ossia = 'alignAboveContext' in words
        body = self.parse_music_expr()
        return ('staff', cname, ossia, body)

    def parse_relative(self):
        self.advance()
        if self.peek().kind == 'NOTE':
            ref = self.parse_abs_pitch()
        else:
            ref = (0, 0, 0)  # c'
        return ('relative', ref, self.parse_music_expr())

    def parse_transpose(self):
        self.advance()
        src = self.parse_abs_pitch()
        dst = self.parse_abs_pitch()
        return ('transpose', src, dst, self.parse_music_expr())

    def parse_abs_pitch(self):
        tok = self.expect('NOTE')
        step, alter, marks, _spelling, _caut = tok.value
        return (marks - 1, step, alter)

    def parse_note(self):
        tok = self.advance()
        step, alter, marks, spelling, _caut = tok.value
        harmonic = self.consume_trailing()
        origin = f'{tok.filename}:{tok.line}'
        return ('note', step, alter, marks, spelling, tok.line, origin, harmonic)

    def parse_rest(self):
        self.advance()
        self.consume_trailing()
        return ('rest',)

    def parse_chord(self):
        start = self.expect('LCHORD')
        notes = []
        while self.peek().kind != 'RCHORD':
            if self.peek().kind != 'NOTE':
                self.error('expected a pitch inside <>')
            tok = self.advance()
            step, alter, marks, spelling, _caut = tok.value
            notes.append((step, alter, marks, spelling, tok.line, f'{tok.filename}:{tok.line}'))
        self.advance()
        harmonic = self.consume_trailing()
        return ('chord', notes, harmonic, start.line)

    def consume_trailing(self):
        """Duration, ties, beams, slurs, articulations and dynamics after a note."""
        harmonic = False
        if self.peek().kind == 'NUMBER':
            self.advance()
            while self.peek().kind == 'DOT':
                self.advance()
            if self.peek().kind == 'STAR':
                self.advance()
                if self.peek().kind == 'NUMBER':
                    self.advance()
                if self.peek().kind == 'SLASH':
                    self.advance()
                    if self.peek().kind == 'NUMBER':
                        self.advance()
        while True:
            tok = self.peek()
            if tok.kind == 'PUNCT' and tok.value in '()[]~':
                self.advance()
                continue
            if tok.kind == 'ARTIC':
                self.advance()
                continue
            if tok.kind == 'DIR':
                self.advance()
                if self.consume_script() == 'harmonic':
                    harmonic = True
                continue
            if tok.kind == 'COMMAND' and tok.value == 'markup':
                self.advance()
                self.skip_markup()
                continue
            if tok.kind == 'COMMAND' and tok.value in _POST_CMDS:
                if tok.value == 'harmonic':
                    harmonic = True
                self.advance()
                continue
            if tok.kind == 'STRING':
                self.advance()
                continue
            break
        return harmonic

    def consume_script(self):
        """One post-event after a direction. Returns 'harmonic' when relevant."""
        tok = self.peek()
        if tok.kind == 'COMMAND' and tok.value == 'markup':
            self.advance()
            self.skip_markup()
            return None
        if tok.kind == 'COMMAND':
            self.advance()
            return tok.value
        if tok.kind in ('STRING', 'SCHEME', 'ARTIC', 'NUMBER'):
            self.advance()
            return None
        return None

    def parse_time(self):
        if self.peek().kind != 'NUMBER':
            return
        self.advance()
        while self.peek().kind == 'COMMA':
            self.advance()
            if self.peek().kind == 'NUMBER':
                self.advance()
        if self.peek().kind == 'SLASH':
            self.advance()
            if self.peek().kind == 'NUMBER':
                self.advance()
        elif self.peek().kind == 'NUMBER':
            self.advance()
            if self.peek().kind == 'SLASH':
                self.advance()
                if self.peek().kind == 'NUMBER':
                    self.advance()

    def parse_tempo(self):
        if self.peek().kind == 'STRING':
            self.advance()
        if self.peek().kind == 'NUMBER':
            self.advance()
            if self.peek().kind == 'EQUAL':
                self.advance()
                if self.peek().kind == 'NUMBER':
                    self.advance()
                if self.peek().kind == 'MINUS' and self.toks[self.i + 1].kind == 'NUMBER':
                    self.advance()
                    self.advance()

    def skip_equals_value(self):
        guard = 0
        while self.peek().kind != 'EQUAL':
            if self.peek().kind in ('EOF', 'RBRACE', 'LANG', 'RANG'):
                self.error('expected =')
            self.advance()
            guard += 1
            if guard > 40:
                self.error('runaway assignment')
        self.advance()
        self.skip_value()

    def skip_value(self):
        tok = self.peek()
        if tok.kind in ('SCHEME', 'STRING', 'NUMBER', 'WORD'):
            self.advance()
            return
        if tok.kind == 'MINUS':
            self.advance()
            if self.peek().kind == 'NUMBER':
                self.advance()
            return
        if tok.kind == 'COMMAND':
            self.advance()
            return
        self.error('expected a value')

    def skip_dotted_word(self):
        if self.peek().kind == 'WORD':
            self.advance()
        while self.peek().kind == 'DOT' and self.toks[self.i + 1].kind == 'WORD':
            self.advance()
            self.advance()

    def skip_brace(self):
        self.skip_brace_words()

    def skip_brace_words(self):
        self.expect('LBRACE')
        depth = 1
        words = []
        while depth:
            tok = self.advance()
            if tok.kind == 'EOF':
                self.error('unclosed {')
            if tok.kind == 'WORD':
                words.append(tok.value)
            elif tok.kind == 'LBRACE':
                depth += 1
            elif tok.kind == 'RBRACE':
                depth -= 1
        return words

    def skip_markup(self):
        tok = self.peek()
        if tok.kind == 'LBRACE':
            self.advance()
            while self.peek().kind != 'RBRACE':
                if self.peek().kind == 'EOF':
                    self.error('unclosed markup')
                self.skip_markup()
            self.advance()
            return
        if tok.kind in ('STRING', 'SCHEME', 'NUMBER', 'WORD'):
            self.advance()
            return
        if tok.kind == 'COMMAND':
            self.advance()
            # \\flat / \\sharp and similar glyphs take no argument. A command
            # takes a markup argument only when one actually follows.
            if self._markup_arg_follows():
                self.skip_markup()
            return
        self.error('bad markup')

    def _markup_arg_follows(self):
        return self.peek().kind in ('LBRACE', 'STRING', 'SCHEME', 'NUMBER', 'WORD', 'COMMAND')


class State:
    def __init__(self):
        self.relative = False
        self.prev = (0, 0, 0)
        self.transpose = 0
        self.raise_low = 0
        self.top_only = 0
        self.record = False
        self.ossia = False
        self.overtone = False
        self.section_title = ''
        self.bar = 1
        self.in_score = False
        self.last_was_bar = False
        self.env = {}
        self.events = []

    def snap(self):
        return (self.relative, self.prev, self.bar, self.last_was_bar, self.transpose,
                self.raise_low, self.top_only, self.record, self.ossia, self.overtone)

    def restore(self, snap):
        (self.relative, self.prev, self.bar, self.last_was_bar, self.transpose,
         self.raise_low, self.top_only, self.record, self.ossia, self.overtone) = snap


def _has_score(node):
    kind = node[0]
    if kind in ('score', 'book', 'bookpart'):
        return True
    if kind == 'seq':
        return any(_has_score(n) for n in node[1])
    return False


def evaluate(node, state):
    kind = node[0]
    if kind == 'nop':
        return
    if kind == 'seq':
        for child in node[1]:
            evaluate(child, state)
        return
    if kind == 'book' or kind == 'bookpart':
        for child in node[1]:
            evaluate(child, state)
        return
    if kind == 'header':
        state.section_title = node[1]
        state.overtone = 'overtone' in node[1].lower()
        return
    if kind == 'score':
        saved = (state.in_score, state.bar, state.last_was_bar, state.record, state.overtone)
        state.in_score = True
        state.record = True
        state.bar = 1
        state.last_was_bar = False
        state.overtone = 'overtone' in state.section_title.lower()
        evaluate(node[1], state)
        state.in_score, state.bar, state.last_was_bar, state.record, state.overtone = saved
        return
    if kind == 'assign':
        state.env[node[1]] = node[2]
        return
    if kind == 'ref':
        try:
            body = state.env[node[1]]
        except KeyError:
            raise ParseError(f'undefined music variable \\{node[1]}')
        evaluate(body, state)
        return
    if kind == 'grace':
        evaluate(node[1], state)
        return
    if kind == 'sim':
        # LilyPond's simultaneous-relative-callback walks each voice in
        # order, starting the next voice where the previous one ended
        # (\\ does not reset the octave). The pitch that follows << >> is
        # the last voice's final pitch. Bar numbers are restarted per voice
        # so a lower voice is not reported in a later bar.
        entry_bar = state.bar
        entry_bar_flag = state.last_was_bar
        end_bar = entry_bar
        end_flag = entry_bar_flag
        for voice in node[1]:
            state.bar = entry_bar
            state.last_was_bar = entry_bar_flag
            evaluate(voice, state)
            if (state.bar > end_bar
                    or (state.bar == end_bar and state.last_was_bar and not end_flag)):
                end_bar = state.bar
                end_flag = state.last_was_bar
        state.bar = end_bar
        state.last_was_bar = end_flag
        return
    if kind == 'staff':
        _name, ossia, body = node[1], node[2], node[3]
        if _name == 'ChordNames':
            saved = state.record
            state.record = False
            evaluate(body, state)
            state.record = saved
            return
        saved = state.ossia
        if ossia:
            state.ossia = True
        evaluate(body, state)
        state.ossia = saved
        return
    if kind == 'call':
        fname, body = node[1], node[2]
        if fname == 'raiseLow':
            state.raise_low += 1
            evaluate(body, state)
            state.raise_low -= 1
        elif fname == 'topNote':
            state.top_only += 1
            evaluate(body, state)
            state.top_only -= 1
        else:
            evaluate(body, state)
        return
    if kind == 'relative':
        old_rel, old_prev = state.relative, state.prev
        state.relative = True
        state.prev = node[1]
        evaluate(node[2], state)
        if not old_rel:
            state.relative = False
            state.prev = old_prev
        return
    if kind == 'transpose':
        delta = lily_to_midi(*node[2]) - lily_to_midi(*node[1])
        state.transpose += delta
        evaluate(node[3], state)
        state.transpose -= delta
        return
    if kind == 'bar':
        state.bar += 1
        state.last_was_bar = True
        return
    if kind == 'barcmd':
        if not state.last_was_bar:
            state.bar += 1
            state.last_was_bar = True
        return
    if kind == 'rest':
        state.last_was_bar = False
        return
    if kind == 'note':
        _emit_one(state, node[1], node[2], node[3], node[4], node[5], node[6], node[7], update_prev=True)
        return
    if kind == 'chord':
        notes, harmonic = node[1], node[2]
        cursor = state.prev
        resolved = []
        for step, alter, marks, spelling, line, origin in notes:
            if state.relative:
                cursor = relativize(cursor, step, alter, marks)
            else:
                cursor = (marks - 1, step, alter)
            resolved.append((cursor, spelling, line, origin))
        if state.relative and resolved:
            state.prev = resolved[0][0]
        if state.top_only and len(resolved) > 1:
            resolved = [max(resolved, key=lambda item: lily_to_midi(*item[0]))]
        state.last_was_bar = False
        for pitch, spelling, line, origin in resolved:
            _record(state, pitch, spelling, line, origin, harmonic)
        return
    raise ParseError(f'bad node {kind}')


def _emit_one(state, step, alter, marks, spelling, line, origin, harmonic, update_prev):
    if state.relative:
        pitch = relativize(state.prev, step, alter, marks)
        if update_prev:
            state.prev = pitch
    else:
        pitch = (marks - 1, step, alter)
    state.last_was_bar = False
    _record(state, pitch, spelling, line, origin, harmonic)


def _record(state, pitch, spelling, line, origin, harmonic):
    if not state.record or not state.in_score:
        return
    midi = lily_to_midi(*pitch) + state.transpose
    if state.raise_low:
        for _ in range(state.raise_low):
            if midi < LOW:
                midi += 12
    allow_high = state.overtone or harmonic
    state.events.append(NoteHit(midi, state.bar, line, origin, state.ossia, allow_high, spelling))


def collect_source(text, filename='snippet.ly'):
    """Return NoteHit objects for one LilyPond document."""
    reg = Registry()
    parser = Parser(tokenize(text, filename), filename, reg)
    stmts = parser.parse_statements()
    if not any(_has_score(s) for s in stmts):
        stmts = [('score', ('seq', stmts))]
    state = State()
    for stmt in stmts:
        evaluate(stmt, state)
    return state.events


def collect_file(path):
    path = Path(path)
    return collect_source(path.read_text(encoding='utf-8'), str(path))


def violations(hits):
    """Human-readable range violations. Empty when the hits are playable."""
    msgs = []
    for hit in hits:
        where = f'{hit.origin}: bar {hit.bar}: {hit.spelling} ({pitch_label(hit.midi)})'
        if hit.midi < LOW:
            place = 'ossia staff' if hit.ossia else 'main staff'
            msgs.append(f'{where} below {pitch_label(LOW)} on the {place}')
        elif hit.midi > HIGH and not hit.ossia and not hit.allow_high:
            msgs.append(f'{where} above {pitch_label(HIGH)} on the main staff')
    return msgs


def pack_files(root):
    root = Path(root)
    files = sorted((root / 'src').glob('0*.ly'))
    files += sorted((root / 'src').glob('pd-*.ly'))
    files += sorted((root / 'vol2' / 'src').glob('*.ly'))
    return files


def _rng(hits):
    if not hits:
        return None
    lo = min(hits, key=lambda h: (h.midi, h.spelling))
    hi = max(hits, key=lambda h: (h.midi, h.spelling))
    return (lo, hi)


def _fmt_end(hit):
    return f'{pitch_label(hit.midi)} ({hit.spelling})'


def summarize(path, hits):
    main = [h for h in hits if not h.ossia]
    ossia = [h for h in hits if h.ossia]
    # Overtone partials sit on the main staff but are allowed above F♯6.
    regular = [h for h in main if not (h.allow_high and h.midi > HIGH)]
    high_ok = [h for h in main if h.allow_high and h.midi > HIGH]
    parts = []
    main_rng = _rng(regular) or _rng(main)
    if main_rng:
        parts.append(f'main {_fmt_end(main_rng[0])}–{_fmt_end(main_rng[1])}')
    else:
        parts.append('main (no notes)')
    ossia_rng = _rng(ossia)
    if ossia_rng:
        parts.append(f'ossia {_fmt_end(ossia_rng[0])}–{_fmt_end(ossia_rng[1])}')
    if high_ok:
        top = max(high_ok, key=lambda h: h.midi)
        parts.append(f'overtone partials to {_fmt_end(top)}')
    rel = Path(path)
    try:
        rel = rel.resolve().relative_to(Path.cwd().resolve())
    except ValueError:
        pass
    return f'{rel}  {"; ".join(parts)}  ({len(hits)} notes)'


def check_tree(root):
    """Check every pack source. Returns (summaries, violations)."""
    summaries = []
    bad = []
    for path in pack_files(root):
        try:
            hits = collect_file(path)
        except ParseError as exc:
            bad.append(f'{path}: parse error: {exc}')
            summaries.append(f'{path}  PARSE ERROR')
            continue
        if not hits:
            bad.append(f'{path}: no notes found')
        summaries.append(summarize(path, hits))
        for msg in violations(hits):
            bad.append(f'{path}: {msg}')
    return summaries, bad


def main(argv=None):
    argv = list(sys.argv[1:] if argv is None else argv)
    root = Path(__file__).resolve().parents[1]
    if argv:
        paths = [Path(a) for a in argv]
        summaries = []
        bad = []
        for path in paths:
            hits = collect_file(path)
            summaries.append(summarize(path, hits))
            bad.extend(f'{path}: {msg}' for msg in violations(hits))
    else:
        summaries, bad = check_tree(root)
    for line in summaries:
        print(line)
    if bad:
        print(f'\n{len(bad)} violation(s):', file=sys.stderr)
        for msg in bad:
            print(msg, file=sys.stderr)
        return 1
    print(f'\n{len(summaries)} file(s) within written Bb3–F#6 '
          f'(ossia and overtone partials may go higher).')
    return 0


if __name__ == '__main__':
    sys.exit(main())
