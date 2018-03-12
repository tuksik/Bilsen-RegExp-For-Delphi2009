unit TestMatch;

interface

uses
  TestFramework,
  RegularExpressions;

type
  TTestMatch = class(TTestCase)
  published
    procedure TestMatch;
    procedure TestReplacementEmpty;
    procedure TestMatchEmpty;
  end;

implementation

uses
  SysUtils;

{ TTestMatch }

procedure TTestMatch.TestMatch;
var
  M: IMatch;
begin
  M := TMatch.Empty;
  CheckNotNull(M, 'Empty');
  CheckNotNull(M.Groups, 'Groups');
  CheckSame(M, M.NextMatch, 'NextMatch');
end;

procedure TTestMatch.TestMatchEmpty;
begin
  ExpectedException := EArgumentException;
  CheckEquals('', TMatch.Empty.Result('whatever'));
end;

procedure TTestMatch.TestReplacementEmpty;
var
  Email: IRegex;
  M: IMatch;
begin
  Email := TRegex.Create('(?<user>[^@]+)@(?<domain>.+)');
  M := Email.Match('mono@go-mono.com');
  CheckEquals('', M.Result(''));
end;

initialization
  RegisterTest(TTestMatch.Suite);

end.
