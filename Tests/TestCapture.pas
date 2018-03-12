unit TestCapture;

interface

uses
  TestFramework,
  RegularExpressions;

type
  TTestCapture = class(TTestCase)
  private
    FCapture: ICapture;
  protected
    procedure SetUp; override;
  published
    procedure TestCapture;
  end;

implementation

{ TTestCapture }

procedure TTestCapture.SetUp;
begin
  inherited;
  FCapture := TMatch.Empty.Groups[0];
end;

procedure TTestCapture.TestCapture;
begin
  CheckEquals(0, FCapture.Index, 'Index');
  CheckEquals(0, FCapture.Length, 'Length');
  CheckEquals('', FCapture.Value, 'Value');
  CheckEquals('', FCapture.ToString, 'ToString');
end;

initialization
  RegisterTest(TTestCapture.Suite);

end.
