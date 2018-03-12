unit TestGroupCollection;

interface

uses
  TestFramework,
  RegularExpressions;

type
  TTestGroupCollection = class(TTestCase)
  private
    FColl: IGroupCollection;
  protected
    procedure SetUp; override;
  published
    procedure TestGroupCollection;
  end;

implementation

{ TTestGroupCollection }

procedure TTestGroupCollection.SetUp;
begin
  inherited;
  FColl := TMatch.Empty.Groups;
end;

procedure TTestGroupCollection.TestGroupCollection;
begin
  CheckEquals(1, FColl.Count, 'Count');
  CheckTrue(FColl.IsReadOnly, 'IsReadOnly');
  CheckFalse(FColl.IsSynchronized, 'IsSynchronized');
  CheckNotNull(FColl.SyncRoot, 'SyncRoot');
  CheckNotNull(FColl.GetEnumerator, 'GetEnumerator');
  CheckNotNull(FColl[0], 'FColl[0]');
end;

initialization
  RegisterTest(TTestGroupCollection.Suite);

end.
