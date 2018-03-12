unit TestResult;

interface

uses
  TestFramework,
  RegularExpressions;

type
  TTestResult = class(TTestCase)
  private
    procedure Execute(const Original, Pattern, Replacement, Expected: String);
  published
    procedure TestResult001;
    procedure TestResult002;
    procedure TestResult003;
    procedure TestResult004;
    procedure TestResult005;
    procedure TestResult006;
    procedure TestResult007;
    procedure TestResult008;
    procedure TestResult009;
    procedure TestResult010;
    procedure TestResult011;
    procedure TestResult012;
    procedure TestResult013;
    procedure TestResult014;
    procedure TestResult015;
    procedure TestResult016;
    procedure TestResult017;
    procedure TestResult018;
    procedure TestResult019;
    procedure TestResult020;
    procedure TestResult021;
    procedure TestResult022;
    procedure TestResult023;
    procedure TestResult024;
    procedure TestResult025;
    procedure TestResult026;
    procedure TestResult027;
    procedure TestResult028;
    procedure TestResult029;
    procedure TestResult030;
    procedure TestResult031;
    procedure TestResult032;
    procedure TestResult033;
    procedure TestResult034;
    procedure TestResult035;
    procedure TestResult036;
    procedure TestResult037;
    procedure TestResult038;
    procedure TestResult039;
    procedure TestResult040;
    procedure TestResult041;
    procedure TestResult042;
    procedure TestResult043;
    procedure TestResult044;
    procedure TestResult045;
    procedure TestResult046;
  end;

implementation

uses
  SysUtils;

{ TTestResult }

procedure TTestResult.Execute(const Original, Pattern, Replacement,
  Expected: String);
var
  Match: IMatch;
  Result: String;
begin
  try
    Match := TRegex.Match(Original, Pattern);
    Result := Match.Result(Replacement);
  except
    Result := 'Error.';
  end;
  CheckEquals(Expected, Result,
    Format('Original: %s, Pattern: %s, Replacement: %s',
    [Original, Pattern, Replacement]));
end;

procedure TTestResult.TestResult001;
begin
  Execute('F2345678910L71', '(F)(2)(3)(4)(5)(6)(7)(8)(9)(10)(L)\11', '${S}$11$1', 'Error.');
end;

procedure TTestResult.TestResult002;
begin
  Execute('F2345678910LL1', '(F)(2)(3)(4)(5)(6)(7)(8)(9)(10)(L)\11', '${S}$11$1', '${S}LF');
end;

procedure TTestResult.TestResult003;
begin
  Execute('texts', '(?<foo>e)(x)', '${foo}$1$2$&', 'exeex');
end;

procedure TTestResult.TestResult004;
begin
  Execute('texts', '(?<foo>e)(x)', '${foo}$1$2$_', 'exetexts');
end;

procedure TTestResult.TestResult005;
begin
  Execute('texts', '(?<foo>e)(x)', '${foo}$1$2$`', 'exet');
end;

procedure TTestResult.TestResult006;
begin
  Execute('texts', '(?<foo>e)(x)', '${foo}$1$2$''', 'exets');
end;

procedure TTestResult.TestResult007;
begin
  Execute('text', 'x', 'y', 'y');
end;

procedure TTestResult.TestResult008;
begin
  Execute('text', 'x', '$', '$');
end;

procedure TTestResult.TestResult009;
begin
  Execute('text', 'x', '$1', '$1');
end;

procedure TTestResult.TestResult010;
begin
  Execute('text', 'x', '${1}', '${1}');
end;

procedure TTestResult.TestResult011;
begin
  Execute('text', 'x', '$5', '$5');
end;

procedure TTestResult.TestResult012;
begin
  Execute('te(x)t', 'x', '$5', '$5');
end;

procedure TTestResult.TestResult013;
begin
  Execute('text', 'x', '${5', '${5');
end;

procedure TTestResult.TestResult014;
begin
  Execute('text', 'x', '${foo', '${foo');
end;

procedure TTestResult.TestResult015;
begin
  Execute('text', '(x)', '$5', '$5');
end;

procedure TTestResult.TestResult016;
begin
  Execute('text', '(x)', '$1', 'x');
end;

procedure TTestResult.TestResult017;
begin
  Execute('text', 'e(x)', '$1', 'x');
end;

procedure TTestResult.TestResult018;
begin
  Execute('text', 'e(x)', '$5', '$5');
end;

procedure TTestResult.TestResult019;
begin
  Execute('text', 'e(x)', '$4', '$4');
end;

procedure TTestResult.TestResult020;
begin
  Execute('text', 'e(x)', '$3', '$3');
end;

procedure TTestResult.TestResult021;
begin
  Execute('text', 'e(x)', '${1}', 'x');
end;

procedure TTestResult.TestResult022;
begin
  Execute('text', 'e(x)', '${3}', '${3}');
end;

procedure TTestResult.TestResult023;
begin
  Execute('text', 'e(x)', '${1}${3}', 'x${3}');
end;

procedure TTestResult.TestResult024;
begin
  Execute('text', 'e(x)', '${1}${name}', 'x${name}');
end;

procedure TTestResult.TestResult025;
begin
  Execute('text', 'e(?<foo>x)', '${1}${name}', 'x${name}');
end;

procedure TTestResult.TestResult026;
begin
  Execute('text', 'e(?<foo>x)', '${1}${foo}', 'xx');
end;

procedure TTestResult.TestResult027;
begin
  Execute('text', 'e(?<foo>x)', '${goll}${foo}', '${goll}x');
end;

procedure TTestResult.TestResult028;
begin
  Execute('text', 'e(?<foo>x)', '${goll${foo}', '${gollx');
end;

procedure TTestResult.TestResult029;
begin
  Execute('text', 'e(?<foo>x)', '${goll${foo}}', '${gollx}');
end;

procedure TTestResult.TestResult030;
begin
  Execute('text', 'e(?<foo>x)', '$${foo}}', '${foo}}');
end;

procedure TTestResult.TestResult031;
begin
  Execute('text', 'e(?<foo>x)', '${${foo}}', '${x}');
end;

procedure TTestResult.TestResult032;
begin
  Execute('text', 'e(?<foo>x)', '$${foo}}', '${foo}}');
end;

procedure TTestResult.TestResult033;
begin
  Execute('text', 'e(?<foo>x)', '$${bfoo}}', '${bfoo}}');
end;

procedure TTestResult.TestResult034;
begin
  Execute('text', 'e(?<foo>x)', '$${foo}}', '${foo}}');
end;

procedure TTestResult.TestResult035;
begin
  Execute('text', 'e(?<foo>x)', '$${foo}', '${foo}');
end;

procedure TTestResult.TestResult036;
begin
  Execute('text', 'e(?<foo>x)', '$$', '$');
end;

procedure TTestResult.TestResult037;
begin
  Execute('text', '(?<foo>e)(?<foo>x)', '${foo}$2$3', 'xx$3');
end;

procedure TTestResult.TestResult038;
begin
  Execute('text', '(e)(?<foo>x)', '${foo}$1$2', 'xex');
end;

procedure TTestResult.TestResult039;
begin
  Execute('text', '(?<foo>e)(x)', '${foo}$1$2', 'exe');
end;

procedure TTestResult.TestResult040;
begin
  Execute('text', '(e)(?<foo>x)', '${foo}$1$2$+', 'xexx');
end;

procedure TTestResult.TestResult041;
begin
  Execute('text', '(?<foo>e)(x)', '${foo}$1$2$+', 'exee');
end;

procedure TTestResult.TestResult042;
begin
  Execute('314 1592 65358', '\d\d\d\d|\d\d\d', 'a', 'a');
end;

procedure TTestResult.TestResult043;
begin
  Execute('2 314 1592 65358', '\d\d\d\d|\d\d\d', 'a', 'a');
end;

procedure TTestResult.TestResult044;
begin
  Execute('<i>am not</i>', '<(.+?)>', '[$0:$1]', '[<i>:i]');
end;

procedure TTestResult.TestResult045;
begin
  Execute('F2345678910L71', '(F)(2)(3)(4)(5)(6)(?<S>7)(8)(9)(10)(L)\7', '${S}$11$1', '77F');
end;

procedure TTestResult.TestResult046;
begin
  Execute('a', 'a', '\\', '\\');
end;

initialization
  RegisterTest(TTestResult.Suite);

end.
