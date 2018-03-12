unit TestCaptureCollection;

interface

uses
  TestFramework,
  RegularExpressions;

type
  TTestCaptureCollection = class(TTestCase)
  private
    FColl: ICaptureCollection;
  protected
    procedure SetUp; override;
  published
    procedure TestCaptureCollection;
  end;

implementation

uses
  SysUtils;

{ TTestCaptureCollection }

procedure TTestCaptureCollection.SetUp;
begin
  inherited;
  FColl := TMatch.Empty.Captures;
end;

procedure TTestCaptureCollection.TestCaptureCollection;
begin
  CheckEquals(0, FColl.Count, 'Count');
  CheckTrue(FColl.IsReadOnly, 'IsReadOnly');
  CheckFalse(FColl.IsSynchronized, 'IsSynchronized');
  CheckNotNull(FColl.SyncRoot, 'SyncRoot');
  CheckNotNull(FColl.GetEnumerator, 'GetEnumerator');

  ExpectedException := EArgumentOutOfRangeException;
  CheckNotNull(FColl[0], 'FColl[0]');
end;

initialization
  RegisterTest(TTestCaptureCollection.Suite);

end.
