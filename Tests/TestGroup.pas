unit TestGroup;

interface

uses
  TestFramework,
  RegularExpressions;

type
  TTestGroup = class(TTestCase)
  private
    FGroup: IGroup;
  protected
    procedure SetUp; override;
  published
    procedure TestGroup;
  end;

implementation

{ TTestGroup }

procedure TTestGroup.SetUp;
begin
  inherited;
  FGroup := TMatch.Empty.Groups[0];
end;

procedure TTestGroup.TestGroup;
begin
//  CheckNotNull(FGroup.Captures, 'Captures');
  CheckFalse(FGroup.Success, 'Success');
end;

initialization
  RegisterTest(TTestGroup.Suite);

end.
