unit TestMatchTrials;

interface

uses
  TestFramework,
  RegexTrial,
  RegularExpressions;

type
  TTestMatchTrials = class(TRegexTrial)
  published
    procedure Trial0000;
    procedure Trial0001;
    procedure Trial0002;
    procedure Trial0003;
    procedure Trial0004;
    procedure Trial0005;
    procedure Trial0006;
    procedure Trial0007;
    procedure Trial0008;
    procedure Trial0009;
    procedure Trial0010;
    procedure Trial0011;
    procedure Trial0012;
    procedure Trial0013;
    procedure Trial0014;
    procedure Trial0015;
    procedure Trial0016;
    procedure Trial0017;
    procedure Trial0018;
    procedure Trial0019;
    procedure Trial0020;
    procedure Trial0021;
    procedure Trial0022;
    procedure Trial0023;
    procedure Trial0024;
    procedure Trial0025;
    procedure Trial0026;
    procedure Trial0027;
    procedure Trial0028;
    procedure Trial0029;
    procedure Trial0030;
    procedure Trial0031;
  end;

implementation

{ TTestMatchTrials }

procedure TTestMatchTrials.Trial0000;
begin
  Execute('(a)(b)(c)', [roExplicitCapture], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestMatchTrials.Trial0001;
begin
  Execute('(a)(?<1>b)(c)', [roExplicitCapture], 'abc', 'Pass. Group[0]=(0,3) Group[1]=(1,1)');
end;

procedure TTestMatchTrials.Trial0002;
begin
  Execute('(a)(?<foo>b)(c)', [roExplicitCapture], 'abc', 'Pass. Group[0]=(0,3) Group[1]=(1,1)');
end;

procedure TTestMatchTrials.Trial0003;
begin
  Execute('(F)(2)(3)(4)(5)(6)(7)(8)(9)(10)(L)\11', [], 'F2345678910LL', 'Pass. Group[0]=(0,13) Group[1]=(0,1) Group[2]=(1,1) Group[3]=(2,1) Group[4]=(3,1) Group[5]=(4,1) Group[6]=(5,1) Group[7]=(6,1) Group[8]=(7,1) Group[9]=(8,1) Group[10]=(9,2) Group[11]=(11,1)');
end;

procedure TTestMatchTrials.Trial0004;
begin
  Execute('(F)(2)(3)(4)(5)(6)(7)(8)(9)(10)(L)\11', [roExplicitCapture], 'F2345678910LL', 'Fail.');
end;

procedure TTestMatchTrials.Trial0005;
begin
  Execute('(F)(2)(3)(4)(5)(6)(?<S>7)(8)(9)(10)(L)\1', [], 'F2345678910L71', 'Fail.');
end;

procedure TTestMatchTrials.Trial0006;
begin
  Execute('(F)(2)(3)(4)(5)(6)(7)(8)(9)(10)(L)\11', [], 'F2345678910LF1', 'Fail.');
end;

procedure TTestMatchTrials.Trial0007;
begin
  Execute('\P{Hebrew}', [], 'Fì', 'Pass. Group[0]=(0,1)');
end;

procedure TTestMatchTrials.Trial0008;
begin
  Execute('(?<=a{1})(?:a)*bc', [], 'aabc', 'Pass. Group[0]=(1,3)');
end;

procedure TTestMatchTrials.Trial0009;
begin
  Execute('(?<=a{1}?)(?:a)*bc', [], 'aabc', 'Pass. Group[0]=(1,3)');
end;

procedure TTestMatchTrials.Trial0010;
begin
  Execute('(?<=a{1}?)(?:a)*bc', [], 'aabc', 'Pass. Group[0]=(1,3)');
end;

procedure TTestMatchTrials.Trial0011;
begin
  Execute('abc*(?=c*)', [], 'abcc', 'Pass. Group[0]=(0,4)');
end;

procedure TTestMatchTrials.Trial0012;
begin
  Execute('abc*(?=c+)', [], 'abcc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestMatchTrials.Trial0013;
begin
  Execute('abc*(?=c{1})', [], 'abcc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestMatchTrials.Trial0014;
begin
  Execute('abc*(?=c{1,5})', [], 'abcc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestMatchTrials.Trial0015;
begin
  Execute('abc*(?=c{1,})', [], 'abcc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestMatchTrials.Trial0016;
begin
  Execute('abc*(?=c*?)', [], 'abcc', 'Pass. Group[0]=(0,4)');
end;

procedure TTestMatchTrials.Trial0017;
begin
  Execute('abc*(?=c+?)', [], 'abcc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestMatchTrials.Trial0018;
begin
  Execute('abc*(?=c{1}?)', [], 'abcc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestMatchTrials.Trial0019;
begin
  Execute('abc*(?=c{1,5}?)', [], 'abcc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestMatchTrials.Trial0020;
begin
  Execute('abc*(?=c{1,}?)', [], 'abcc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestMatchTrials.Trial0021;
begin
  Execute('abc*?(?=c*)', [], 'abcc', 'Pass. Group[0]=(0,2)');
end;

procedure TTestMatchTrials.Trial0022;
begin
  Execute('abc*?(?=c+)', [], 'abcc', 'Pass. Group[0]=(0,2)');
end;

procedure TTestMatchTrials.Trial0023;
begin
  Execute('abc*?(?=c{1})', [], 'abcc', 'Pass. Group[0]=(0,2)');
end;

procedure TTestMatchTrials.Trial0024;
begin
  Execute('abc*?(?=c{1,5})', [], 'abcc', 'Pass. Group[0]=(0,2)');
end;

procedure TTestMatchTrials.Trial0025;
begin
  Execute('abc*?(?=c{1,})', [], 'abcc', 'Pass. Group[0]=(0,2)');
end;

procedure TTestMatchTrials.Trial0026;
begin
  Execute('abc*(?!c*)', [], 'abcc', 'Fail.');
end;

procedure TTestMatchTrials.Trial0027;
begin
  Execute('abc*(?!c+)', [], 'abcc', 'Pass. Group[0]=(0,4)');
end;

procedure TTestMatchTrials.Trial0028;
begin
  Execute('abc*(?!c{1})', [], 'abcc', 'Pass. Group[0]=(0,4)');
end;

procedure TTestMatchTrials.Trial0029;
begin
  Execute('abc*(?!c{1,5})', [], 'abcc', 'Pass. Group[0]=(0,4)');
end;

procedure TTestMatchTrials.Trial0030;
begin
  Execute('abc*(?!c{1,})', [], 'abcc', 'Pass. Group[0]=(0,4)');
end;

procedure TTestMatchTrials.Trial0031;
begin
  Execute('(?>a*).', [roExplicitCapture], 'aaaa', 'Fail.');
end;

initialization
  RegisterTest(TTestMatchTrials.Suite);

end.