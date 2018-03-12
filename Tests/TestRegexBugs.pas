unit TestRegexBugs;

interface

uses
  TestFramework,
  RegexTrial,
  RegularExpressions;

type
  TTestRegexBugs = class(TRegexTrial)
  private
    procedure Kill65535_1(const Len: Integer);
    procedure Kill65535_2(const Len: Integer);
    procedure GroupNumbers1(const S: String; const N: Integer);
  published
    procedure TestSplitGroup;
    procedure TestMatchEmptyGroup;
    procedure TestBraces;
    procedure TestWhitespaceGrouped;
    procedure TestRangeIgnoreCase;
    procedure TestEscape0;
    procedure TestNoBitmap;
    procedure TestMultipleMatches;
    procedure TestUndefinedGroup;
    procedure TestQuantifiers1;
    procedure TestQuantifiers2;
    procedure TestQuantifiers3;
    procedure TestQuantifiers4;
    procedure TestQuantifiers5;
    procedure TestCategoryAndNegated;
    procedure TestBackspace;
    procedure TestReplaceNegOneAndStartAt;
    procedure TestSplitInfiniteLoop;
    procedure TestCaseAndSearch;
    procedure TestQuantifiersParseError;
    procedure TestNameLookupEmptyMatch;
    procedure TestHangingHyphens;
    procedure TestHangingHyphen1;
    procedure TestBug313642;
    procedure TestBug77487;
    procedure TestBug69269;
    procedure TestBug76345;
    procedure TestBug78007;
    procedure TestBug439947;
    procedure TestBug443841;
    procedure TestCharClassWithIgnoreCase;
    procedure TestNo65535Limit;
    procedure TestGroupNumbers;
    procedure TestTrials;
    procedure TestBug80544Trials;
    procedure TestBug432172;
  end;

implementation

uses
  SysUtils;

{ TTestRegexBugs }

procedure TTestRegexBugs.GroupNumbers1(const S: String; const N: Integer);
var
  Regex: IRegex;
  Groups: TIntegerArray;
  Sum, I, J: Integer;
begin
  Regex := TRegex.Create(S);
  Groups := Regex.GetGroupNumbers;
  CheckEquals(N, Length(Groups));

  Sum := 0;
  for I := 0 to Length(Groups) - 1 do
  begin
    Inc(Sum, Groups[I]);
    for J := 0 to I - 1 do
      CheckTrue(Groups[I] <> Groups[J]);
  end;
  CheckEquals((N * (N - 1)) div 2, Sum);
end;

procedure TTestRegexBugs.Kill65535_1(const Len: Integer);
var
  S: String;
  I: Integer;
  Regex: IRegex;
  Match: IMatch;
begin
  SetLength(S, Len + 2);
  S[1] := 'x';
  for I := 2 to Len + 1 do
    S[I] := 'a';
  S[Len + 2] := 'y';

  Regex := TRegex.Create('xa*y');
  Match := Regex.Match(S);
  CheckTrue(Match.Success, '#1:' + IntToStr(Len));
  CheckEquals(1, Match.Index, '#2:' + IntToStr(Len));
  CheckEquals(Length(S), Match.Length, '#3:' + IntToStr(Len));
end;

procedure TTestRegexBugs.Kill65535_2(const Len: Integer);
var
  S: String;
  I: Integer;
  Regex: IRegex;
  Match: IMatch;
begin
  SetLength(S, Len + 7);
  S[1] := 'x';
  S[2] := 'a';
  S[3] := 'a';
  S[4] := 'a';
  S[5] := 'a';
  S[6] := 'x';
  for I := 7 to Len + 6 do
    S[I] := 'a';
  S[Len + 7] := 'y';

  Regex := TRegex.Create('x.*y');
  Match := Regex.Match(S);
  CheckTrue(Match.Success, '#1:' + IntToStr(Len));
  CheckEquals(1, Match.Index, '#2:' + IntToStr(Len));
  CheckEquals(Length(S), Match.Length, '#3:' + IntToStr(Len));
end;

procedure TTestRegexBugs.TestBackspace;
var
  Regex: IRegex;
  S: String;
begin
  Regex := TRegex.Create('\b[\b]');
  S := Regex.Replace('Go, '#8'No'#8'Go', ' ');
  CheckEquals('Go, '#8'No Go', S);
end;

procedure TTestRegexBugs.TestBraces;
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('{\w+}');
  Match := Regex.Match('{   }');
  CheckFalse(Match.Success);
end;

procedure TTestRegexBugs.TestBug313642;
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('(?P<a>c)');
  Match := Regex.Match('a');
  CheckEquals(1, Match.Groups.Count);
  CheckEquals(0, Match.Groups[0].Index);
  CheckEquals(0, Match.Groups[0].Length);
  CheckFalse(Match.Groups[0].Success);
  CheckEquals('', Match.Groups[0].Value);
end;

procedure TTestRegexBugs.TestBug432172;
var
  Regex: IRegex;
begin
  Regex := TRegex.Create('^(else|elif|except|finally)([^a-zA-Z_0-9]).*');
end;

procedure TTestRegexBugs.TestBug439947;
var
  Regex: IRegex;
begin
  Regex := TRegex.Create('(?<=^|/)[^/]*\.cs$');
  CheckTrue(Regex.IsMatch('z/text2.cs'));
end;

procedure TTestRegexBugs.TestBug443841;
const
  NUMBER_STRING = '[0-9]+';
  DOUBLE_STRING = ' *[+-]? *' + NUMBER_STRING +
                  '(\.' + NUMBER_STRING +
                  ')?([eE][+-]?' + NUMBER_STRING + ')? *';
  VECTOR1TO3_STRING = DOUBLE_STRING + '(,' + DOUBLE_STRING + '(,' +
    DOUBLE_STRING + ')?)?';
var
  Regex: IRegex;
  Matches: IMatchCollection;
begin
  Regex := TRegex.Create('^' + VECTOR1TO3_STRING + '$');
  CheckTrue(Regex.IsMatch('1'));
  Matches := Regex.Matches('1');
  CheckEquals(1, Matches.Count);
  CheckEquals('1', Matches[0].Value);
end;

procedure TTestRegexBugs.TestBug69269;
const
  S = 'CREATE aa'#12'aa; CREATE bb'#10'bb; CREATE cc'#13'cc; CREATE dd'#9'dd; CREATE ee'#11'ee;';
begin
  CheckEquals(5, TRegex.Matches(S, 'CREATE[\s\S]+?;').Count);
  CheckEquals(5, TRegex.Matches(S, 'CREATE[ \f\n\r\t\v\S]+?;').Count);
end;

procedure TTestRegexBugs.TestBug76345;
const
  S1 = '''asdf''';
  S2 = '''as,''df''';
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('''.*?''');
  Match := Regex.Match(S1);
  CheckTrue(Match.Success);
  CheckEquals(S1, Match.Value);

  Regex := TRegex.Create('''[^,].*?''');
  Match := Regex.Match(S1);
  CheckTrue(Match.Success);
  CheckEquals(S1, Match.Value);

  Regex := TRegex.Create('''.*?[^,]''');
  Match := Regex.Match(S1);
  CheckTrue(Match.Success);
  CheckEquals(S1, Match.Value);

  Regex := TRegex.Create('''.*?[^,]''');
  Match := Regex.Match(S2);
  CheckTrue(Match.Success);
  CheckEquals(S2, Match.Value);
end;

procedure TTestRegexBugs.TestBug77487;
begin
  CheckTrue(TRegex.IsMatch('a a', '^(a[^a]*)*a$'));
  CheckTrue(TRegex.IsMatch('a a', '^(a *)*a$'));
  CheckTrue(TRegex.IsMatch('a a', '(a[^a]*)+a'));
  CheckTrue(TRegex.IsMatch('a a', '(a *)+a'));
end;

procedure TTestRegexBugs.TestBug78007;
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('\Ahead&gt;\<html\>');
  Match := Regex.Match('head&gt;<html>');
  CheckTrue(Match.Success);
  CheckEquals(1, Match.Index);
  CheckEquals(14, Match.Length);

  Match := Match.NextMatch;
  CheckFalse(Match.Success);
end;

procedure TTestRegexBugs.TestBug80544Trials;
const
  REGEX = '(?(?=static)|(.*))(static)';
begin
  Execute(REGEX, [], 'static', 'Pass. Group[0]=(0,6) Group[2]=(0,6)');
  Execute(REGEX, [], 'hydrostatic', 'Pass. Group[0]=(0,11) Group[1]=(0,5) Group[2]=(5,6)');
  Execute(REGEX, [], 'statics', 'Pass. Group[0]=(0,6) Group[2]=(0,6)');
  Execute(REGEX, [], 'dynamic', 'Fail.');
end;

procedure TTestRegexBugs.TestCaseAndSearch;
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('REGLER-PARAMETER', [roIgnoreCase]);

  Match := Regex.Match('!E   ZWEITBAD :REGLER-PARAMETER 20.10.2004  SEITE   1');
  CheckTrue(Match.Success);

  Match := Regex.Match(' REGLER-PARAMETER ');
  CheckTrue(Match.Success);

  Match := Regex.Match('REGLER-PARAMETER ');
  CheckTrue(Match.Success);
end;

procedure TTestRegexBugs.TestCategoryAndNegated;
var
  Regex: IRegex;
  S: String;
begin
  Regex := TRegex.Create('<\s*(\/?)\s*([\s\S]*?)\s*(\/?)\s*>');
  S := Regex.Replace('<?xml version=\"1.0\"?>', '{blue:&lt;$1}{maroon:$2}{blue:$3&gt;}');
  CheckEquals('{blue:&lt;}{maroon:?xml version=\"1.0\"?}{blue:&gt;}', S);
end;

procedure TTestRegexBugs.TestCharClassWithIgnoreCase;
const
  STR = 'Foobar qux';
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('[a-z\s]*', [roIgnoreCase]);
  Match := Regex.Match(STR);
  CheckEquals(STR, Match.Value);
end;

procedure TTestRegexBugs.TestEscape0;
var
  Regex: IRegex;
begin
  Regex := TRegex.Create('^[\s\0]*$');
  CheckTrue(Regex.Match(' '#0).Success);
end;

procedure TTestRegexBugs.TestGroupNumbers;
begin
  GroupNumbers1('a', 1);
  GroupNumbers1('(a)', 2);
  GroupNumbers1('(a)(b)', 3);
  GroupNumbers1('(a)|(b)', 3);
  GroupNumbers1('((a)(b))(c)', 5);
end;

procedure TTestRegexBugs.TestHangingHyphen1;
begin
  TRegex.IsMatch('foobar', '[a-\s]');
end;

procedure TTestRegexBugs.TestHangingHyphens;
begin
  CheckTrue(TRegex.IsMatch('mT1[', 'm[0-9A-Za-z_-]+\['));
  CheckTrue(TRegex.IsMatch('mT1[', 'm[-0-9A-Za-z_]+\['));

  CheckTrue(TRegex.IsMatch('-a;', '[--a]{3}'));
  CheckTrue(TRegex.IsMatch('-&,', '[&--]{3}'));

  CheckTrue(TRegex.IsMatch('abcz-', '[a-c-z]{5}'));
  CheckFalse(TRegex.IsMatch('defghijklmnopqrstuvwxy', '[a-c-z]'));

  CheckTrue(TRegex.IsMatch('abcxyz-', '[a-c-x-z]{7}'));
  CheckFalse(TRegex.IsMatch('defghijklmnopqrstuvw', '[a-c-x-z]'));

  CheckTrue(TRegex.IsMatch(' '#9'z-', '[\s-z]{4}'));
  CheckFalse(TRegex.IsMatch('abcdefghijklmnopqrstuvwxy', '[\s-z]'));
end;

procedure TTestRegexBugs.TestMatchEmptyGroup;
const
  STR = 'Match something from here.';
begin
  CheckFalse(TRegex.IsMatch(STR, '(something|dog)$'));
  CheckTrue(TRegex.IsMatch(STR, '(|something|dog)$'));
  CheckTrue(TRegex.IsMatch(STR, '(something||dog)$'));
  CheckTrue(TRegex.IsMatch(STR, '(something|dog|)$'));

  CheckTrue(TRegex.IsMatch(STR, '(something|dog)*'));
  CheckTrue(TRegex.IsMatch(STR, '(|something|dog)*'));
  CheckTrue(TRegex.IsMatch(STR, '(something||dog)*'));
  CheckTrue(TRegex.IsMatch(STR, '(something|dog|)*'));

  CheckTrue(TRegex.IsMatch(STR, '(something|dog)*$'));
  CheckTrue(TRegex.IsMatch(STR, '(|something|dog)*$'));
  CheckTrue(TRegex.IsMatch(STR, '(something||dog)*$'));
  CheckTrue(TRegex.IsMatch(STR, '(something|dog|)*$'));
end;

procedure TTestRegexBugs.TestMultipleMatches;
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('^(?P<path>.*(\\|/)|(/|\\))(?P<file>.*)$');
  Match := Regex.Match('d:\Temp\SomeDir\SomeDir\bla.xml');

  CheckEquals(5, Match.Groups.Count);
  CheckEquals('1', Regex.GroupNameFromNumber(1));
  CheckEquals('2', Regex.GroupNameFromNumber(2));
  CheckEquals('path', Regex.GroupNameFromNumber(3));
  CheckEquals('file', Regex.GroupNameFromNumber(4));
  CheckEquals('\', Match.Groups[1].Value);
  CheckEquals('', Match.Groups[2].Value);
  CheckEquals('d:\Temp\SomeDir\SomeDir\', Match.Groups[3].Value);
  CheckEquals('bla.xml', Match.Groups[4].Value);
end;

procedure TTestRegexBugs.TestNameLookupEmptyMatch;
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('(?P<hour>[0-9]{1,2})([\:](?P<minute>[0-9]{1,2})){0,1}([\:](?P<second>[0-9]{1,2})){0,1}\s*(?P<ampm>(?i:(am|pm)){0,1})');

  Match := Regex.Match('');
  CheckEquals('', Match.Groups.ItemsByName['hour'].Value);
  CheckEquals('', Match.Groups.ItemsByName['minute'].Value);
  CheckEquals('', Match.Groups.ItemsByName['second'].Value);
  CheckEquals('', Match.Groups.ItemsByName['ampm'].Value);

  Match := Regex.Match('12:00 pm');
  CheckEquals('12', Match.Groups.ItemsByName['hour'].Value);
  CheckEquals('00', Match.Groups.ItemsByName['minute'].Value);
  CheckEquals('', Match.Groups.ItemsByName['second'].Value);
  CheckEquals('pm', Match.Groups.ItemsByName['ampm'].Value);
end;

procedure TTestRegexBugs.TestNo65535Limit;
begin
  Kill65535_1(65535);
  Kill65535_1(65536);
  Kill65535_1(131071);
  Kill65535_1(131072);

  Kill65535_2(65530);
  Kill65535_2(65531);
  Kill65535_2(131066);
  Kill65535_2(131067);
end;

procedure TTestRegexBugs.TestNoBitmap;
var
  Regex: IRegex;
begin
  Regex := TRegex.Create('([^a-zA-Z_0-9])+');
  CheckEquals('--', Regex.Match('A--B--').Value);
end;

procedure TTestRegexBugs.TestQuantifiers1;
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('[\w\W]{8,32}');
  Match := Regex.Match('1111111');
  CheckFalse(Match.Success);
end;

procedure TTestRegexBugs.TestQuantifiers2;
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('[\w\W]{8,32}');
  Match := Regex.Match('11111111');
  CheckTrue(Match.Success);
end;

procedure TTestRegexBugs.TestQuantifiers3;
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('[\w\W]{8,32}');
  Match := Regex.Match('1111111111111111');
  CheckTrue(Match.Success);
end;

procedure TTestRegexBugs.TestQuantifiers4;
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('[\w\W]{8,32}');
  Match := Regex.Match('11111111111111111111111111111111');
  CheckTrue(Match.Success);
end;

procedure TTestRegexBugs.TestQuantifiers5;
var
  Regex: IRegex;
  Match: IMatch;
begin
  Regex := TRegex.Create('[\w\W]{8,32}');
  Match := Regex.Match('111111111111111111111111111111111');
  CheckTrue(Match.Success);
end;

procedure TTestRegexBugs.TestQuantifiersParseError;
var
  Regex: IRegex;
begin
  Regex := TRegex.Create('{1,a}');
  Regex := TRegex.Create('{a,1}');
  Regex := TRegex.Create('{a}');
  Regex := TRegex.Create('{,a}');
end;

procedure TTestRegexBugs.TestRangeIgnoreCase;
const
  S1 = 'AAABBBBAAA';
  S2 = 'AaaBBBaAa';
  S3 = 'Aaa[';
  S4 = 'Ae';
begin
  CheckTrue(TRegex.IsMatch(S1, '[A-F]+', [roIgnoreCase]));
  CheckTrue(TRegex.IsMatch(S1, '[a-f]+', [roIgnoreCase]));
  CheckTrue(TRegex.IsMatch(S1, '[A-Fa-f]+', [roIgnoreCase]));
  CheckTrue(TRegex.IsMatch(S1, '[AB]+', [roIgnoreCase]));
  CheckTrue(TRegex.IsMatch(S1, '[A-B]+', [roIgnoreCase]));

  CheckTrue(TRegex.IsMatch(S2, '[A-F]+', [roIgnoreCase]));
  CheckTrue(TRegex.IsMatch(S2, '[a-f]+', [roIgnoreCase]));
  CheckTrue(TRegex.IsMatch(S2, '[A-Fa-f]+', [roIgnoreCase]));
  CheckTrue(TRegex.IsMatch(S2, '[AB]+', [roIgnoreCase]));
  CheckTrue(TRegex.IsMatch(S2, '[A-B]+', [roIgnoreCase]));

  CheckTrue(TRegex.IsMatch(S3, '[A-a]+', [roIgnoreCase]));
  CheckTrue(TRegex.IsMatch(S4, '[A-a]+', [roIgnoreCase]));
end;

procedure TTestRegexBugs.TestReplaceNegOneAndStartAt;
var
  Regex: IRegex;
  S: String;
begin
  Regex := TRegex.Create('e+');
  S := Regex.Replace('abcdeeee', 'e', -1, 5);
  CheckEquals('abcde', S);
end;

procedure TTestRegexBugs.TestSplitGroup;
const
  EXPECTED1: array [0..3] of String = ('a','bcd','e','fg');
  EXPECTED2: array [0..6] of String = ('a','-','bcd','-','e','-','fg');
  EXPECTED3: array [0..3] of String = ('a','-','c','d-e-fg');
  EXPECTED4: array [0..4] of String = ('a','bcd','e','fg','');
var
  Regex: IRegex;
  SplitResult: TStringArray;
  I: Integer;
begin
  Regex := TRegex.Create('-');
  SplitResult := Regex.Split('a-bcd-e-fg');
  CheckEquals(Length(EXPECTED1), Length(SplitResult));
  for I := 0 to Length(EXPECTED1) - 1 do
    CheckEquals(EXPECTED1[I], SplitResult[I]);

  Regex := TRegex.Create('(-)');
  SplitResult := Regex.Split('a-bcd-e-fg');
  CheckEquals(Length(EXPECTED2), Length(SplitResult));
  for I := 0 to Length(EXPECTED2) - 1 do
    CheckEquals(EXPECTED2[I], SplitResult[I]);

  Regex := TRegex.Create('(-)b(c)');
  SplitResult := Regex.Split('a-bcd-e-fg');
  CheckEquals(Length(EXPECTED3), Length(SplitResult));
  for I := 0 to Length(EXPECTED3) - 1 do
    CheckEquals(EXPECTED3[I], SplitResult[I]);

  Regex := TRegex.Create('-');
  SplitResult := Regex.Split('a-bcd-e-fg-');
  CheckEquals(Length(EXPECTED4), Length(SplitResult));
  for I := 0 to Length(EXPECTED4) - 1 do
    CheckEquals(EXPECTED4[I], SplitResult[I]);
end;

procedure TTestRegexBugs.TestSplitInfiniteLoop;
var
  Words: TStringArray;
begin
  Words := TRegex.Split('a b c d e', '[ \t\n\r]*');
  CheckEquals(11, Length(Words));
  CheckEquals('', Words[0]);
  CheckEquals('a', Words[1]);
  CheckEquals('', Words[2]);
  CheckEquals('b', Words[3]);
  CheckEquals('', Words[4]);
  CheckEquals('c', Words[5]);
  CheckEquals('', Words[6]);
  CheckEquals('d', Words[7]);
  CheckEquals('', Words[8]);
  CheckEquals('e', Words[9]);
  CheckEquals('', Words[10]);
end;

procedure TTestRegexBugs.TestTrials;
begin
  Execute('^[^.\d]*(\d+)(?:\D+(\d+))?', [], 'MD 9.18', 'Pass. Group[0]=(0,7) Group[1]=(3,1) Group[2]=(5,2)');
  Execute('(.*:|.*)(DirName)', [], '/home/homedir/DirName', 'Pass. Group[0]=(0,21) Group[1]=(0,14) Group[2]=(14,7)');
end;

procedure TTestRegexBugs.TestUndefinedGroup;
var
  Regex: IRegex;
  Match: IMatch;
  Group: IGroup;
begin
  Regex := TRegex.Create('[A-Za-z_0-9]');
  Match := Regex.Match('123456789abc');
  Group := Match.Groups.ItemsByName['not_defined'];
  CheckNotNull(Group);
  CheckEquals(0, Group.Index);
  CheckEquals(0, Group.Length);
  CheckEquals('', Group.Value);
  CheckFalse(Group.Success);
end;

procedure TTestRegexBugs.TestWhitespaceGrouped;
begin
  CheckTrue(TRegex.IsMatch(#13, '[\s\S]'));
end;

initialization
  RegisterTest(TTestRegexBugs.Suite);

end.
