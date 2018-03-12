unit TestRegex;

interface

uses
  TestFramework,
  RegularExpressions,
  Generics.Collections;

type
  TTestRegex = class(TTestCase)
  private
    function Evaluator(const Match: IMatch): String;
    procedure Execute(const Name, Text, Regex: String;
      const Matches: array of String);
    function GetPrimes(const M: Integer): TList<Integer>;
  published
    procedure TestRegex;
    procedure TestSimple;
    procedure TestUnescape;
    procedure TestMatch1;
    procedure TestMatch2;
    procedure Trial001;
    procedure Trial002;
    procedure Trial003;
    procedure Trial004;
    procedure Trial005;
    procedure TestPrimeRegex;

    { Custom tests }
    procedure TestPersist;
    procedure TestPersistStudied;
    procedure TestUnicode;
  end;

implementation

uses
  SysUtils,
  Classes;

{ TTestRegex }

function TTestRegex.Evaluator(const Match: IMatch): String;
begin
  Result := '';
end;

procedure TTestRegex.Execute(const Name, Text, Regex: String;
  const Matches: array of String);
var
  I, J, Len: Integer;
  R: IRegex;
  MC: IMatchCollection;
  M: IMatch;
begin
  Len := Length(Matches);
  R := TRegex.Create(Regex);

  // Incremental mode - default array property
  MC := R.Matches(Text);
  CheckEquals(Len, MC.Count, Format('%s:count', [Name]));
  for I := 0 to Len - 1 do
    CheckEquals(Matches[I], MC[I].Value, Format('%s[%d]', [Name, I]));

  // Incremental mode - enumerator
  MC := R.Matches(Text);
  I := 0;
  for M in MC do
  begin
    CheckEquals(Matches[I], M.Value, Format('%s:enum:%d', [Name, I]));
    Inc(I);
  end;
  CheckEquals(I, Len, Format('%s:enum:count', [Name]));

  // random mode
  Randomize;
  for J := 0 to (Len * 5) - 1 do
  begin
    I := Random(Len);
    CheckEquals(Matches[I], MC[I].Value, Format('%s:random%d:[%d]', [Name, J, I]));
  end;

  // Non-incremental mode
  MC := R.Matches(Text);
  CheckEquals(Len, MC.Count, Format('%s:count', [Name]));
  I := 0;
  for M in MC do
  begin
    CheckEquals(Matches[I], M.Value, Format('%s:nienum:%d', [Name, I]));
    Inc(I);
  end;
  for I := 0 to Len - 1 do
    CheckEquals(Matches[I], MC[I].Value, Format('%s:ni[%d]', [Name, I]));
end;

function TTestRegex.GetPrimes(const M: Integer): TList<Integer>;
var
  W: TDictionary<Integer, Integer>;
  P2, N, N1: Integer;
begin
  Result := TList<Integer>.Create;
  Result.Add(2);

  W := TDictionary<Integer, Integer>.Create;
  try
    N := 3;
    while (N < M) do
    begin
      if (W.TryGetValue(N, P2)) then
      begin
        W.Remove(N);
        N1 := N + P2;
      end
      else
      begin
        Result.Add(N);
        N1 := N * N;
        P2 := N + N;

        if ((N1 div N) <> N) or (N1 >= M) then
        begin
          Inc(N, 2);
          Continue;
        end;
      end;

      while (W.ContainsKey(N1)) do
        Inc(N1, P2);
      W.Add(N1, P2);

      Inc(N, 2);
    end;
  finally
    W.Free;
  end;
end;

procedure TTestRegex.TestMatch1;
var
  Email: IRegex;
  Match: IMatch;
begin
  Email := TRegex.Create('(?<user>[^@]+)@(?<domain>.+)');

  Match := Email.Match('mono@go-mono.com');
  CheckTrue(Match.Success);
  CheckEquals('mono', Match.Groups.ItemsByName['user'].Value);
  CheckEquals('go-mono.com', Match.Groups.ItemsByName['domain'].Value);

  Match := Email.Match('mono.bugs@go-mono.com');
  CheckTrue(Match.Success);
  CheckEquals('mono.bugs', Match.Groups.ItemsByName['user'].Value);
  CheckEquals('go-mono.com', Match.Groups.ItemsByName['domain'].Value);
end;

procedure TTestRegex.TestMatch2;
var
  Regex: IRegex;
  Col: IMatchCollection;
begin
  Regex := TRegex.Create('(?<tab>\t)|(?<text>[^\t]*)');
  Col := Regex.Matches(#9'just a text');
  CheckEquals(3, Col.Count);
  CheckEquals(#9, Col[0].Value);
  CheckEquals('just a text', Col[1].Value);
  CheckEquals('', Col[2].Value);
end;

procedure TTestRegex.TestPersist;
var
  Regex: IRegex;
  Stream: TMemoryStream;
begin
  Stream := TMemoryStream.Create;
  try
    Regex := TRegex.Create('(a*|b*)[cd]');
    Regex.Save(Stream);
    CheckEquals(111, Stream.Size, 'Stream.Size');

    Regex := nil;
    Regex := TRegex.Create;
    Stream.Position := 0;
    Regex.Load(Stream);

    CheckTrue(Regex.IsMatch('aaaac'));
    CheckTrue(Regex.IsMatch('bbd'));
    CheckTrue(Regex.IsMatch('c'));
    CheckTrue(Regex.IsMatch('d'));
    CheckTrue(Regex.IsMatch('abc'));
    CheckTrue(Regex.IsMatch('abcd'));
    CheckFalse(Regex.IsMatch('efg'));
  finally
    Stream.Free;
  end;
end;

procedure TTestRegex.TestPersistStudied;
var
  Regex: IRegex;
  Stream: TMemoryStream;
begin
  Stream := TMemoryStream.Create;
  try
    Regex := TRegex.Create('(a*|b*)[cd]', [roStudy]);
    Regex.Save(Stream);
    CheckEquals(151, Stream.Size, 'Stream.Size');

    Regex := nil;
    Regex := TRegex.Create;
    Stream.Position := 0;
    Regex.Load(Stream);

    CheckTrue(Regex.IsMatch('aaaac'));
    CheckTrue(Regex.IsMatch('bbd'));
    CheckTrue(Regex.IsMatch('c'));
    CheckTrue(Regex.IsMatch('d'));
    CheckTrue(Regex.IsMatch('abc'));
    CheckTrue(Regex.IsMatch('abcd'));
    CheckFalse(Regex.IsMatch('efg'));
  finally
    Stream.Free;
  end;
end;

procedure TTestRegex.TestPrimeRegex;
var
  Composite: IRegex;
  Primes: TList<Integer>;
  I, P: Integer;
  X: String;
begin
  // Perl regex oneliner by: abigail@fnx.com (Abigail)
  // from: http://www.mit.edu:8008/bloom-picayune.mit.edu/perl/10138
  // perl -wle 'print "Prime" if (1 x shift) !~ /^1?$|^(11+?)\1+$/'

  // This is a backtracking torture test
  Composite := TRegex.Create('^1?$|^(11+?)\1+$');
  Primes := GetPrimes(3333);
  try
    X := '';
    I := 0;
    for P in Primes do
    begin
      while (I < P) do
      begin
        CheckTrue(Composite.IsMatch(X));
        Inc(I);
        X := X + '1';
      end;
      CheckFalse(Composite.IsMatch(X));
      Inc(I);
      X := X + '1';
    end;
  finally
    Primes.Free;
  end;
end;

procedure TTestRegex.TestRegex;
var
  Results: TStringArray;
begin
  CheckEquals('', TRegex.Escape(''), 'Escape');
  CheckEquals('', TRegex.Unescape(''), 'Unescape');

  CheckTrue(TRegex.IsMatch('', ''), 'IsMatch');
  CheckTrue(TRegex.IsMatch('', '', [roSingleline]), 'IsMatch2');

  CheckNotNull(TRegex.Match('', ''), 'Match');
  CheckNotNull(TRegex.Match('', '', [roSingleLine]), 'Match2');

  CheckEquals(1, TRegex.Matches('', '').Count, 'Matches');
  CheckEquals(1, TRegex.Matches('', '', [roSingleline]).Count, 'Matches2');

  CheckEquals('', TRegex.Replace('', '', Evaluator), 'Replace');
  CheckEquals('', TRegex.Replace('', '', Evaluator, [roSingleline]), 'Replace2');
  CheckEquals('', TRegex.Replace('', '', ''), 'Replace3');
  CheckEquals('', TRegex.Replace('', '', '', [roSingleline]), 'Replace4');

  Results := TRegex.Split('', '');
  CheckEquals(2, Length(Results), 'Split');
  Results := TRegex.Split('', '', [roSingleline]);
  CheckEquals(2, Length(Results), 'Split2');

  CheckEquals(15, TRegex.CacheSize, 'CacheSize');
end;

procedure TTestRegex.TestSimple;
const
  S = #32#8212#32;
begin
  CheckTrue(TRegex.IsMatch(S, S), 'char');
end;

procedure TTestRegex.TestUnescape;
const
  INPUT = '\a\b\t\r\v\f\n\e\02400\x231\cC\ufffff\*';
  EXPECTED = #7#8#9#13#11#12#10#27#20#48#48#35#49#3#65535#102#42;
var
  Output: String;
begin
  Output := TRegex.Unescape(INPUT);
  CheckEquals(EXPECTED, Output, 'Unescape');
end;

procedure TTestRegex.TestUnicode;
begin
  CheckTrue(TRegex.IsMatch('正则表达式', '则表'));
  CheckFalse(TRegex.IsMatch('正则表达式', '表则'));
  CheckEquals('正取代达式', TRegex.Replace('正则表达式', '则表', '取代'));
end;

procedure TTestRegex.Trial001;
begin
	Execute('word', 'the fat cat ate the rat', '(?<word>\w+)',
    ['the','fat', 'cat', 'ate', 'the', 'rat']);
end;

procedure TTestRegex.Trial002;
begin
  Execute('digit', '0 1 2 3 4 5 6a7b8c9d10', '(?<digit>\d+)',
    ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10']);
end;

procedure TTestRegex.Trial003;
begin
  Execute('line',
    'Two little dragons lived in the forest'#10 +
    'They spent their days collecting honey suckle,'#10 +
    'And eating curds and whey'#10 +
    'Until an evil sorcer came along'#10 +
    'And chased my dragon friends away',
    '(?<line>.+)',
   ['Two little dragons lived in the forest',
    'They spent their days collecting honey suckle,',
    'And eating curds and whey',
    'Until an evil sorcer came along',
    'And chased my dragon friends away']);
end;

procedure TTestRegex.Trial004;
begin
  Execute('nonwhite', 'ab 12 cde 456 fghi .,'#10'iou', '(?<nonwhite>\S+)',
    ['ab', '12', 'cde', '456', 'fghi', '.,', 'iou']);
end;

procedure TTestRegex.Trial005;
begin
  Execute('nondigit', 'ab0cd1ef2', '(?<nondigit>\D+)',
    ['ab', 'cd', 'ef']);
end;

initialization
  RegisterTest(TTestRegex.Suite);

end.
