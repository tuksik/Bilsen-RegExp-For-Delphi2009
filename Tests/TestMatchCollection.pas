unit TestMatchCollection;

interface

uses
  TestFramework,
  RegularExpressions;

type
  TTestMatchCollection = class(TTestCase)
  published
  end;

implementation

initialization
  RegisterTest(TTestMatchCollection.Suite);

end.
