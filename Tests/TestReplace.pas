unit TestReplace;

interface

uses
  TestFramework,
  RegularExpressions;

type
  TTestReplace = class(TTestCase)
  private
    procedure Execute(const Original, Pattern, Replacement, Expected: String);
  published
    procedure TestReplace;
    procedure TestReplace001;
    procedure TestReplace002;
    procedure TestReplace003;
    procedure TestReplace004;
    procedure TestReplace005;
    procedure TestReplace006;
    procedure TestReplace007;
    procedure TestReplace008;
    procedure TestReplace009;
    procedure TestReplace010;
//    procedure TestReplace011;
//    procedure TestReplace012;
//    procedure TestReplace013;
//    procedure TestReplace014;
//    procedure TestReplace015;
//    procedure TestReplace016;
//    procedure TestReplace017;
//    procedure TestReplace018;
//    procedure TestReplace019;
//    procedure TestReplace020;
    procedure TestReplace021;
    procedure TestReplace022;
//    procedure TestReplace023;
//    procedure TestReplace024;
//    procedure TestReplace025;
    procedure TestReplace026;
    procedure TestReplace027;
    procedure TestReplace028;
//    procedure TestReplace029;
//    procedure TestReplace030;
//    procedure TestReplace031;
//    procedure TestReplace032;
    procedure TestReplace033;
    procedure TestReplace034;
    procedure TestReplace035;
    procedure TestReplace036;
//    procedure TestReplace037;
//    procedure TestReplace038;
//    procedure TestReplace039;
//    procedure TestReplace040;
//    procedure TestReplace041;
//    procedure TestReplace042;
    procedure TestReplace043;
    procedure TestReplace044;
    procedure TestReplace045;
//    procedure TestReplace046;
//    procedure TestReplace047;
//    procedure TestReplace048;
//    procedure TestReplace049;
//    procedure TestReplace050;
//    procedure TestReplace051;
//    procedure TestReplace052;
//    procedure TestReplace053;
//    procedure TestReplace054;
//    procedure TestReplace055;
//    procedure TestReplace056;
//    procedure TestReplace057;
//    procedure TestReplace058;
//    procedure TestReplace059;
//    procedure TestReplace060;
//    procedure TestReplace061;
//    procedure TestReplace062;
//    procedure TestReplace063;
//    procedure TestReplace064;
//    procedure TestReplace065;
//    procedure TestReplace066;
//    procedure TestReplace067;
//    procedure TestReplace068;
//    procedure TestReplace069;
//    procedure TestReplace070;
//    procedure TestReplace071;
//    procedure TestReplace072;
//    procedure TestReplace073;
//    procedure TestReplace074;
//    procedure TestReplace075;
    procedure TestReplace076;
    procedure TestReplace077;
    procedure TestReplace078;
    procedure TestReplace079;
    procedure TestReplace080;
    procedure TestReplace081;
    procedure TestReplace082;
    procedure TestReplace083;
    procedure TestReplace084;
    procedure TestReplace085;
    procedure TestReplace086;
    procedure TestReplace087;
    procedure TestReplace088;
    procedure TestReplace089;
    procedure TestReplace090;
    procedure TestReplace091;
//    procedure TestReplace092;
//    procedure TestReplace093;
//    procedure TestReplace094;
//    procedure TestReplace095;
//    procedure TestReplace096;
//    procedure TestReplace097;
    procedure TestReplace098;
    procedure TestReplace099;
    procedure TestReplace100;
    procedure TestReplace101;
    procedure TestReplace102;
    procedure TestReplace103;
  end;

implementation

uses
  SysUtils;

const
  TESTCASES: array [0..45, 0..3] of String = (
  // Original            Pattern                                  Replacement      Expected
    ('text',	           'x',                                     'y',             'teyt'                  ),
    ('text',             'x',                                     '$',             'te$t'                  ),
    ('text',             'x',                                     '$1',            'te$1t'                 ),
    ('text',             'x',                                     '${1}',          'te${1}t'               ),
    ('text',             'x',                                     '$5',            'te$5t'                 ),
    ('te(x)t',           'x',                                     '$5',            'te($5)t'               ),
    ('text',             'x',                                     '${5',           'te${5t'                ),
    ('text',             'x',                                     '${foo',         'te${foot'              ),
    ('text',             '(x)',                                   '$5',            'te$5t'                 ),
    ('text',             '(x)',                                   '$1',            'text'                  ),
    ('text',             'e(x)',                                  '$1',            'txt'                   ),
    ('text',             'e(x)',                                  '$5',            't$5t'                  ),
    ('text',             'e(x)',                                  '$4',            't$4t'                  ),
    ('text',             'e(x)',                                  '$3',            't$3t'                  ),
    ('text',             'e(x)',                                  '${1}',          'txt'                   ),
    ('text',             'e(x)',                                  '${3}',          't${3}t'                ),
    ('text',             'e(x)',                                  '${1}${3}',      'tx${3}t'               ),
    ('text',             'e(x)',                                  '${1}${name}',   'tx${name}t'            ),
    ('text',             'e(?<foo>x)',                            '${1}${name}',   'tx${name}t'            ),
    ('text',             'e(?<foo>x)',                            '${1}${foo}',    'txxt'                  ),
    ('text',             'e(?<foo>x)',                            '${goll}${foo}', 't${goll}xt'            ),
    ('text',             'e(?<foo>x)',                            '${goll${foo}',  't${gollxt'             ),
    ('text',             'e(?<foo>x)',                            '${goll${foo}}', 't${gollx}t'            ),
    ('text',             'e(?<foo>x)',                            '$${foo}}',      't${foo}}t'             ),
    ('text',             'e(?<foo>x)',                            '${${foo}}',     't${x}t'                ),
    ('text',             'e(?<foo>x)',                            '$${foo}}',      't${foo}}t'             ),
    ('text',             'e(?<foo>x)',                            '$${bfoo}}',     't${bfoo}}t'            ),
    ('text',             'e(?<foo>x)',                            '$${foo}}',      't${foo}}t'             ),
    ('text',             'e(?<foo>x)',                            '$${foo}',       't${foo}t'              ),
    ('text',             'e(?<foo>x)',                            '$$',            't$t'                   ),
    ('text',             '(?<foo>e)(?<foo>x)',                    '${foo}$2$3',    'txx$3t'                ),
    ('text',             '(e)(?<foo>x)',                          '${foo}$1$2',    'txext'                 ),
    ('text',             '(?<foo>e)(x)',                          '${foo}$1$2',    'texet'                 ),
    ('text',             '(e)(?<foo>x)',                          '${foo}$1$2$+',  'txexxt'                ),
    ('text',             '(?<foo>e)(x)',                          '${foo}$1$2$+',  'texeet'                ),
    ('314 1592 65358',   '\d\d\d\d|\d\d\d',                       'a',             'a a a8'                ),
    ('2 314 1592 65358', '\d\d\d\d|\d\d\d',                       'a',             '2 a a a8'              ),
    ('<i>am not</i>',    '<(.+?)>',                               '[$0:$1]',       '[<i>:i]am not[</i>:/i]'),
    ('texts',            '(?<foo>e)(x)',                          '${foo}$1$2$_',  'texetextsts'           ),
    ('texts',            '(?<foo>e)(x)',                          '${foo}$1$2$`',  'texetts'               ),
    ('texts',            '(?<foo>e)(x)',                          '${foo}$1$2$''', 'texetsts'              ),
    ('texts',            '(?<foo>e)(x)',                          '${foo}$1$2$&',  'texeexts'              ),
    ('F2345678910L71',   '(F)(2)(3)(4)(5)(6)(7)(8)(9)(10)(L)\11', '${S}$11$1',     'F2345678910L71'        ),
    ('F2345678910LL1',   '(F)(2)(3)(4)(5)(6)(7)(8)(9)(10)(L)\11', '${S}$11$1',     '${S}LF1'               ),
    ('a',                'a',                                     '\\',            '\\'                    ),  // bug #317092
    ('a',                '^',                                     'x',             'xa'                    )); // bug #324390

{ TTestReplace }

procedure TTestReplace.Execute(const Original, Pattern, Replacement,
  Expected: String);
var
  Result: String;
begin
  try
    Result := TRegex.Replace(Original, Pattern, Replacement);
  except
    Result := 'Error.';
  end;
  CheckEquals(Expected, Result,
    Format('Original: %s, Pattern: %s, Replacement: %s',
    [Original, Pattern, Replacement]));
end;

procedure TTestReplace.TestReplace;
var
  I: Integer;
  Result: String;
begin
  for I := 0 to Length(TESTCASES) - 1 do
  begin
    try
      Result := TRegex.Replace(TESTCASES[I, 0], TESTCASES[I, 1], TESTCASES[I, 2]);
    except
      on E: Exception do
        Fail(E.Message);
    end;
    CheckEquals(TESTCASES[I, 3], Result,
      Format('%d: Original: %s, Pattern: %s, Replacement: %s',
      [I, TESTCASES[I, 0], TESTCASES[I, 1], TESTCASES[I, 2]]));
  end;
end;

procedure TTestReplace.TestReplace001;
begin
  Execute('(?(w)a|o)', '\(\?\(\w+\).*\|?.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace002;
begin
  Execute('(?(w)|o)', '\(\?\(\w+\).*\|?.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace003;
begin
  Execute('(?(w)a)', '\(\?\(\w+\).*\|?.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace004;
begin
  Execute('(?(w)a|)', '\(\?\(\w+\).*\|?.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace005;
begin
  Execute('(?(w)?|a|o)', '\(\?\(\w+\).*\|?.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace006;
begin
  Execute('(?(w)||o)', '\(\?\(\w+\).*\|?.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace007;
begin
  Execute('(?(w)(a)', '\(\?\(\w+\).*\|?.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace008;
begin
  Execute('(?(w))\a|)', '\(\?\(\w+\).*\|?.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace009;
begin
  Execute('(?(2)a|o)', '\(\?\([^\)]+\).*\|?.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace010;
begin
  Execute('(?(|)a|o)', '\(\?\([^\)]+\).*\|?.*\)', 'r', 'r');
end;

(*procedure TTestReplace.TestReplace011;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('a\3b', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\(\d+)', '\5', 'a\5b');
end;

procedure TTestReplace.TestReplace012;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\3b', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\(\d+)', '\5', '\5b');
end;

procedure TTestReplace.TestReplace013;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\3b', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\(\d+)', '\5', '\\3b');
end;

procedure TTestReplace.TestReplace014;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\\3b', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\(\d+)', '\5', '\\\5b');
end;

procedure TTestReplace.TestReplace015;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('a\\\\3b', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\(\d+)', '\5', 'a\\\\3b');
end;

procedure TTestReplace.TestReplace016;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\\k<g>', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\k<(\w+)>', '\5', '\\\5');
end;

procedure TTestReplace.TestReplace017;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('a\\\k<g>', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\k<(\w+)>', '\5', 'a\\\5');
end;

procedure TTestReplace.TestReplace018;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\\\k''g''', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\k''(\w+)''', '\5', '\\\\k''g''');
end;

procedure TTestReplace.TestReplace019;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('a\\\\k''g''', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\k''(\w+)''', '\5', 'a\\\\k''g''');
end;

procedure TTestReplace.TestReplace020;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\k''g''', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\k''(\w+)''', '\5', '\5');
end;*)

procedure TTestReplace.TestReplace021;
begin
  Execute('(?<n1-n2>)', '\(\?<[A-Za-z]\w*-[A-Za-z]\w*>.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace022;
begin
  Execute('(?''n1-n2''a)', '\(\?''[A-Za-z]\w*-[A-Za-z]\w*''.*\)', 'r', 'r');
end;

(*procedure TTestReplace.TestReplace023;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\p{Isa}', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255}\\[pP]\{)Is(?=\w+\})', 'In', '\p{Ina}');
end;

procedure TTestReplace.TestReplace024;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\p{Is}', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255}\\[pP]\{)Is(?=\w+\})', 'In', '\p{Is}');
end;

procedure TTestReplace.TestReplace025;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\p{Isa', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255}\\[pP]\{)Is(?=\w+\})', 'In', '\p{Isa');
end;*)

procedure TTestReplace.TestReplace026;
begin
  Execute('a(?#|)', '\(\?#[^\)]*\)', '', 'a');
end;

procedure TTestReplace.TestReplace027;
begin
  Execute('(?#|)', '\(\?#[^\)]*\)', '', '');
end;

procedure TTestReplace.TestReplace028;
begin
  Execute('(?#|)', '\#[^\n\r]*', '', '(?');
end;

(*procedure TTestReplace.TestReplace029;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('(?inm-xs:\#)', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255}\()\?[imsx]*n[-imsx]*:[^\)]+\)', 'r', '(r');
end;

procedure TTestReplace.TestReplace030;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('(?ni:())', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255}\()\?[imsx]*n[-imsx]*:[^\)]+\)', 'r', '(r)');
end;

procedure TTestReplace.TestReplace031;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('(?x-i:)', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255}\()\?[imsx]*n[-imsx]*:[^\)]+\)', 'r', '(?x-i:)');
end;

procedure TTestReplace.TestReplace032;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('(?n:))', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255}\()\?[imsx]*n[-imsx]*:[^\)]+\)', 'r', '(?n:))');
end;*)

procedure TTestReplace.TestReplace033;
begin
  Execute('(?<n1>)', '\(\?<[A-Za-z]\w*>.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace034;
begin
  Execute('(?''n1''y)', '\(\?''[A-Za-z]\w*''.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace035;
begin
  Execute('(?<45>y)', '\(\?<\d+>.*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace036;
begin
  Execute('(?''7''o)', '\(\?''\d+''.*\)', 'r', 'r');
end;

(*procedure TTestReplace.TestReplace037;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\\(', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\\(', 'r', '\\r');
end;

procedure TTestReplace.TestReplace038;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('a\\\(', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\\(', 'r', 'a\\r');
end;

procedure TTestReplace.TestReplace039;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\(', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\\(', 'r', '\\(');
end;

procedure TTestReplace.TestReplace040;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('a\\(', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\\(', 'r', 'a\\(');
end;

procedure TTestReplace.TestReplace041;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\(', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\\(', 'r', 'r');
end;

procedure TTestReplace.TestReplace042;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('a\(', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\\(', 'r', 'ar');
end;*)

procedure TTestReplace.TestReplace043;
begin
  Execute('?:', '(?:^\?[:imnsx=!>-]|^\?<[!=])', 'r', 'r');
end;

procedure TTestReplace.TestReplace044;
begin
  Execute('?<!', '(?:^\?[:imnsx=!>-]|^\?<[!=])', 'r', 'r');
end;

procedure TTestReplace.TestReplace045;
begin
  Execute('?-', '(?:^\?[:imnsx=!>-]|^\?<[!=])', 'r', 'r');
end;

(*procedure TTestReplace.TestReplace046;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\(?<n>', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255}\()\?<[A-Za-z]\w*>', 'r', '\\(r');
end;

procedure TTestReplace.TestReplace047;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('a\\(?''n''', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255}\()\?''[A-Za-z]\w*''', 'r', 'a\\(r');
end;

procedure TTestReplace.TestReplace048;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\\\(?<2>', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255}\()\?<\d+>', 'r', '\\\\(r');
end;

procedure TTestReplace.TestReplace049;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('(?''2''', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255}\()\?''\d+''', 'r', '(r');
end;

procedure TTestReplace.TestReplace050;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\[\b]', '(?<=(?:\A|[^\\])(?:[\\]{2})*(?:\[|\[[^\[\]]*[^\[\]\\])(?:[\\]{2})* )\\b(?=[^\[\]]*\])', '\\u0008', '\\[\\u0008]');
end;

procedure TTestReplace.TestReplace051;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\[a\bb]', '(?<=(?:\A|[^\\])(?:[\\]{2})*(?:\[|\[[^\[\]]*[^\[\]\\])(?:[\\]{2})* )\\b(?=[^\[\]]*\])', '\\u0008', '\\[a\\u0008b]');
end;

procedure TTestReplace.TestReplace052;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\[\b]', '(?<=(?:\A|[^\\])(?:[\\]{2})*(?:\[|\[[^\[\]]*[^\[\]\\])(?:[\\]{2})* )\\b(?=[^\[\]]*\])', '\\u0008', '\[\b]');
end;

procedure TTestReplace.TestReplace053;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\[\\b]', '(?<=(?:\A|[^\\])(?:[\\]{2})*(?:\[|\[[^\[\]]*[^\[\]\\])(?:[\\]{2})* )\\b(?=[^\[\]]*\])', '\\u0008', '\\[\\b]');
end;

procedure TTestReplace.TestReplace054;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\[\\\b]', '(?<=(?:\A|[^\\])(?:[\\]{2})*(?:\[|\[[^\[\]]*[^\[\]\\])(?:[\\]{2})* )\\b(?=[^\[\]]*\])', '\\u0008', '\\[\\\\u0008]');
end;

procedure TTestReplace.TestReplace055;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('[[]', '(?<=(?:\A|[^\\])(?:[\\]{2})*(?:\[|\[[^\[\]]*[^\[\]\\])(?:[\\]{2})* )\[(?=[^\[\]]*\])', '\\[', '[\\[]');
end;

procedure TTestReplace.TestReplace056;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\[[]', '(?<=(?:\A|[^\\])(?:[\\]{2})*(?:\[|\[[^\[\]]*[^\[\]\\])(?:[\\]{2})* )\[(?=[^\[\]]*\])', '\\[', '\[[]');
end;

procedure TTestReplace.TestReplace057;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\[\\[]', '(?<=(?:\A|[^\\])(?:[\\]{2})*(?:\[|\[[^\[\]]*[^\[\]\\])(?:[\\]{2})* )\[(?=[^\[\]]*\])', '\\[', '\\[\\\\[]');
end;

procedure TTestReplace.TestReplace058;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\[\\\[]', '(?<=(?:\A|[^\\])(?:[\\]{2})*(?:\[|\[[^\[\]]*[^\[\]\\])(?:[\\]{2})* )\[(?=[^\[\]]*\])', '\\[', '\\[\\\[]');
end;

procedure TTestReplace.TestReplace059;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\{', '(?<=(?:\A|[^\\])(?:[\\]{2})* )\{(?!\d\d*(,(\d\d* )?)?\})', '\\{', '\\\\{');
end;

procedure TTestReplace.TestReplace060;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\{', '(?<=(?:\A|[^\\])(?:[\\]{2})* )\{(?!\d\d*(,(\d\d* )?)?\})', '\\{', '\\\\{');
end;

procedure TTestReplace.TestReplace061;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\{1,2}', '(?<=(?:\A|[^\\])(?:[\\]{2})* )\{(?!\d\d*(,(\d\d* )?)?\})', '\\{', '\\{1,2}');
end;

procedure TTestReplace.TestReplace062;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\{1}', '(?<=(?:\A|[^\\])(?:[\\]{2})* )\{(?!\d\d*(,(\d\d* )?)?\})', '\\{', '\\{1}');
end;

procedure TTestReplace.TestReplace063;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\{1,}', '(?<=(?:\A|[^\\])(?:[\\]{2})* )\{(?!\d\d*(,(\d\d* )?)?\})', '\\{', '\\{1,}');
end;

procedure TTestReplace.TestReplace064;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\{1', '(?<=(?:\A|[^\\])(?:[\\]{2})* )\{(?!\d\d*(,(\d\d* )?)?\})', '\\{', '\{1');
end;

procedure TTestReplace.TestReplace065;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\}', '(?<!(\A|[^\\])(\\{2})*\{\d\d*(,(\d\d* )?)?)\}', '\\}', '\\\\}');
end;

procedure TTestReplace.TestReplace066;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('{\\}', '(?<!(\A|[^\\])(\\{2})*\{\d\d*(,(\d\d* )?)?)\}', '\\}', '{\\\\}');
end;

procedure TTestReplace.TestReplace067;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('{1,2}', '(?<!(\A|[^\\])(\\{2})*\{\d\d*(,(\d\d* )?)?)\}', '\\}', '{1,2}');
end;

procedure TTestReplace.TestReplace068;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\{1}', '(?<!(\A|[^\\])(\\{2})*\{\d\d*(,(\d\d* )?)?)\}', '\\}', '\\{1}');
end;

procedure TTestReplace.TestReplace069;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\{1\}', '(?<!(\A|[^\\])(\\{2})*\{\d\d*(,(\d\d* )?)?)\}', '\\}', '\\{1\\\}');
end;

procedure TTestReplace.TestReplace070;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\{1}', '(?<!(\A|[^\\])(\\{2})*\{\d\d*(,(\d\d* )?)?)\}', '\\}', '\{1\\}');
end;

procedure TTestReplace.TestReplace071;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('{1,}', '(?<!(\A|[^\\])(\\{2})*\{\d\d*(,(\d\d* )?)?)\}', '\\}', '{1,}');
end;

procedure TTestReplace.TestReplace072;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\0', '(?<=(?:\A|[^\\])(?:[\\]{2})* )\\0(?!\d)', '\\u0000', '\\u0000');
end;

procedure TTestReplace.TestReplace073;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\03', '(?<=(?:\A|[^\\])(?:[\\]{2})* )\\0(?!\d)', '\\u0000', '\03');
end;

procedure TTestReplace.TestReplace074;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\0', '(?<=(?:\A|[^\\])(?:[\\]{2})* )\\0(?!\d)', '\\u0000', '\\0');
end;

procedure TTestReplace.TestReplace075;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\\0a', '(?<=(?:\A|[^\\])(?:[\\]{2})* )\\0(?!\d)', '\\u0000', '\\\\u0000a');
end;*)

procedure TTestReplace.TestReplace076;
begin
  Execute('a(?<=b*c)', '\(\?\<[=!][^\)]*(?:[\*\+]|\{\d+,\}).*\)', 'r', 'ar');
end;

procedure TTestReplace.TestReplace077;
begin
  Execute('a(?<=b*c)', '\(\?\<[=!][^\)]*(?:[\*\+]|\{\d+,\}).*\)', 'r', 'ar');
end;

procedure TTestReplace.TestReplace078;
begin
  Execute('a(?<=b*c)', '\(\?\<[=!][^\)]*(?:[\*\+]|\{\d+,\}).*\)', 'r', 'ar');
end;

procedure TTestReplace.TestReplace079;
begin
  Execute('a(?<=b+c)', '\(\?\<[=!][^\)]*(?:[\*\+]|\{\d+,\}).*\)', 'r', 'ar');
end;

procedure TTestReplace.TestReplace080;
begin
  Execute('a(?<!b+c)', '\(\?\<[=!][^\)]*(?:[\*\+]|\{\d+,\}).*\)', 'r', 'ar');
end;

procedure TTestReplace.TestReplace081;
begin
  Execute('a(?<!b*c)', '\(\?\<[=!][^\)]*(?:[\*\+]|\{\d+,\}).*\)', 'r', 'ar');
end;

procedure TTestReplace.TestReplace082;
begin
  Execute('(?<!b{1}c))', '\(\?\<[=!][^\)]*(?:[\*\+]|\{\d+,\}).*\)', 'r', '(?<!b{1}c))');
end;

procedure TTestReplace.TestReplace083;
begin
  Execute('(?<!b{1,}c)', '\(\?\<[=!][^\)]*(?:[\*\+]|\{\d+,\}).*\)', 'r', 'r');
end;

procedure TTestReplace.TestReplace084;
begin
  Execute('(?<!b{1,4}c)', '\(\?\<[=!][^\)]*(?:[\*\+]|\{\d+,\}).*\)', 'r', '(?<!b{1,4}c)');
end;

procedure TTestReplace.TestReplace085;
begin
  Execute('\p{Isa}', '(?<=\\[pP]\{)Is(?=\w+\})', 'In', '\p{Ina}');
end;

procedure TTestReplace.TestReplace086;
begin
  Execute('\p{Is}', '(?<=\\[pP]\{)Is(?=\w+\})', 'In', '\p{Is}');
end;

procedure TTestReplace.TestReplace087;
begin
  Execute('\p{Isa', '(?<=\\[pP]\{)Is(?=\w+\})', 'In', '\p{Isa');
end;

procedure TTestReplace.TestReplace088;
begin
  Execute('a\3b', '\\(\d+)', '\5', 'a\5b');
end;

procedure TTestReplace.TestReplace089;
begin
  Execute('\3b', '\\(\d+)', '\5', '\5b');
end;

procedure TTestReplace.TestReplace090;
begin
  Execute('\\3b', '(?<=\\)\\(\d)', '\5', '\\5b');
end;

procedure TTestReplace.TestReplace091;
begin
  Execute('\\\3b', '(?<=\\\\)\\(\d)', '\5', '\\\5b');
end;

(*procedure TTestReplace.TestReplace092;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('a\\\\3b', '(?<=(\\){0,5})\\(\d)', '\5', 'a\\\\5b');
end;

procedure TTestReplace.TestReplace093;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\\k<g>', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\k<(\w)>', '\5', '\\\5');
end;

procedure TTestReplace.TestReplace094;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('a\\\k<g>', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\k<(\w)>', '\5', 'a\\\5');
end;

procedure TTestReplace.TestReplace095;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\\\\k''g''', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\k''(\w)''', '\5', '\\\\k''g''');
end;

procedure TTestReplace.TestReplace096;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('a\\\\k''g''', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\k''(\w)''', '\5', 'a\\\\k''g''');
end;

procedure TTestReplace.TestReplace097;
begin
  // PCRE cannot compile this: 'lookbehind assertion is not fixed length'
  Execute('\k''g''', '(?<=(?:\A|[^\\])(?:[\\]{2}){0,255})\\k''(\w)''', '\5', '\5');
end;*)

procedure TTestReplace.TestReplace098;
begin
  Execute('\\(?<={1}', '(\A|((\A|[^\\])([\\]{2})*\((\?([:>=!]|<([=!]|(\w+>))))?))\{\d+(,(\d+)?)?\}', '\8', '\8');
end;

procedure TTestReplace.TestReplace099;
begin
  Execute('{1}', '(\A|((\A|[^\\])([\\]{2})*\((\?([:>=!]|<([=!]|(\w+>))))?))\{\d+(,(\d+)?)?\}', 'r', 'r');
end;

procedure TTestReplace.TestReplace100;
begin
  Execute('({1}', '(\A|((\A|[^\\])([\\]{2})*\((\?([:>=!]|<([=!]|(\w+>))))?))\{\d+(,(\d+)?)?\}', 'r', 'r');
end;

procedure TTestReplace.TestReplace101;
begin
  Execute('(?{1}', '(\A|((\A|[^\\])([\\]{2})*\((\?([:>=!]|<([=!]|(\w+>))))?))\{\d+(,(\d+)?)?\}', 'r', '(?{1}');
end;

procedure TTestReplace.TestReplace102;
begin
  Execute('(?:{1}', '(\A|((\A|[^\\])([\\]{2})*\((\?([:>=!]|<([=!]|(\w+>))))?))\{\d+(,(\d+)?)?\}', 'r', 'r');
end;

procedure TTestReplace.TestReplace103;
begin
  Execute('\({1}', '(\A|((\A|[^\\])([\\]{2})*\((\?([:>=!]|<([=!]|(\w+>))))?))\{\d+(,(\d+)?)?\}', 'r', '\({1}');
end;

initialization
  RegisterTest(TTestReplace.Suite);

end.
