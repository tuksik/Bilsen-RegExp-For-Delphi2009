unit uRecipeDateMDY;

interface

uses
  Classes,
  RegularExpressions,
  uDemo,
  uRecipe;

type
  TRecipeDateMDY = class(TRecipe)
  public
    class function Description: String; override;
    function Pattern: String; override;
    procedure GetInputs(const Inputs: TStrings); override;
  end;

implementation

{ TRecipeDateMDY }

class function TRecipeDateMDY.Description: String;
begin
  Result := 'Recipes\Date MDY';
end;

{$REGION}
/// <B>Source</B>: http://www.regexlib.com/REDetails.aspx?regexp_id=113
///  <B>Author</B>: Michael Ash
///
/// This expression validates dates in the US m/d/y format from 1/1/1600 -
/// 12/31/9999.
///
/// <B>Notes</B>:
///  -Replaced "beginning of string (^)" and "end of string ($)" with
/// "word boundaries (\b)"
///  -Added named capturing groups to extract month, day and year

function TRecipeDateMDY.Pattern: String;
begin
  Result :=
    // Alternative 1
    '\b(?:(?:(?<month>0?[13578]|1[02])(?<sep1>\/|-|\.)31)\k<sep1>|' +
    '(?:(?<month>0?[13-9]|1[0-2])(?<sep2>\/|-|\.)' +
    '(?<day>29|30)\k<sep2>))' +
    '(?<year>(?:1[6-9]|[2-9]\d)?\d{2})\b|' +
    // Alternative 2
    '\b(?:(?<month>0?2)(?<sep3>\/|-|\.)' +
    '(?<day>29)\k<sep3>' +
    '(?:(?<year>(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|' +
    '(?:(?:16|[2468][048]|[3579][26])00))))\b|' +
    // Alternative 3
    '\b(?<month>(?:0?[1-9])|(?:1[0-2]))(?<sep4>\/|-|\.)' +
    '(?<day>0?[1-9]|1\d|2[0-8])\k<sep4>' +
    '(?<year>(?:1[6-9]|[2-9]\d)?\d{2})\b'
end;

procedure TRecipeDateMDY.GetInputs(const Inputs: TStrings);
begin
  Inputs.Add('01.1.02');
  Inputs.Add('11-30-2001');
  Inputs.Add('2/29/2000');
  Inputs.Add('02/29/01');
  Inputs.Add('13/01/2002');
  Inputs.Add('11/00/02');
  Inputs.Add('Lorem ipsum 01.1.02 dolor sit amet, consectetur adipisicing');
  Inputs.Add('elit, 11-30-2001 sed do eiusmod 2/29/2000 tempor incididunt ut');
  Inputs.Add('labore 02/29/01 et dolore magna 13/01/2002 aliqua. Ut enim ad');
  Inputs.Add('minim veniam, 11/00/02 quis nostrud exercitation ullamco');
  Inputs.Add('laboris nisi ut aliquip ex ea commodo consequat.');
end;
{$ENDREGION}

initialization
  RegisterDemo(TRecipeDateMDY);

end.
