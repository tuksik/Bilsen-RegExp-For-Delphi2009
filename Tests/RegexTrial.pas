unit RegexTrial;

interface

uses
  TestFramework,
  RegularExpressions;

type
  TRegexTrial = class abstract(TTestCase)
  protected
    procedure Execute(const Pattern: String; const Options: TRegexOptions;
      const Input, Expected: String);
  end;

implementation

uses
  SysUtils;

{ TRegexTrial }

procedure TRegexTrial.Execute(const Pattern: String;
  const Options: TRegexOptions; const Input, Expected: String);
var
  Regex: IRegex;
  Match: IMatch;
  Group: IGroup;
//  Capture: ICapture;
  Result: String;
  I: Integer;
begin
  try
    Regex := TRegex.Create(Pattern, Options);
    Match := Regex.Match(Input);
    if (Match.Success) then
    begin
      Result := 'Pass.';
      for I := 0 to Match.Groups.Count - 1 do
      begin
        Group := Match.Groups[I];
        if (Group.Index > 0) then
        begin
          Result := Result + ' Group[' + IntToStr(I) + ']=';
          Result := Result + '(' + IntToStr(Group.Index - 1) + ','
            + IntToStr(Group.Length) + ')';
        end;
//        for Capture in Group.Captures do
//          Result := Result + '(' + IntToStr(Capture.Index - 1) + ','
//            + IntToStr(Capture.Length) + ')';
      end
    end
    else
      Result := 'Fail.';
  except
    Result := 'Error.';
  end;
  CheckEquals(Expected, Result,
    Format('Matching input "%s" against pattern "%s"',[Input, Pattern]));
end;

end.
