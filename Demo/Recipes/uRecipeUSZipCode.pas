unit uRecipeUSZipCode;

interface

uses
  Classes,
  RegularExpressions,
  uDemo,
  uRecipe;

type
  TRecipeUSZipCode = class(TRecipe)
  public
    class function Description: String; override;
    function Pattern: String; override;
    function Options: TRegexOptions; override;
    procedure GetInputs(const Inputs: TStrings); override;
  end;

implementation

{ TRecipeUSZipCode }

class function TRecipeUSZipCode.Description: String;
begin
  Result := 'Recipes\US ZIP (5 or 5+4)';
end;

{$REGION}
/// <B>Source</B>: http://www.regexlib.com/REDetails.aspx?regexp_id=74
///  <B>Author</B>: Blake Facey
///
/// Matches standard 5 digit US Zip Codes, or the US ZIP + 4 Standard.
///
/// <B>Notes</B>:
///  -Replaced "beginning of string (^)" and "end of string ($)" with
/// "word boundaries (\b)"
///  -The "roExplicitCapture" options is used to prevent capturing the second
/// 4-digit code as a capturing group.

function TRecipeUSZipCode.Pattern: String;
begin
  Result := '\b\d{5}(-\d{4})?\b';
end;

function TRecipeUSZipCode.Options: TRegexOptions;
begin
  Result := [roExplicitCapture];
end;

procedure TRecipeUSZipCode.GetInputs(const Inputs: TStrings);
begin
  Inputs.Add('55555-5555');
  Inputs.Add('34564-3342');
  Inputs.Add('90210');
  Inputs.Add('434454444');
  Inputs.Add('645-32-2345');
  Inputs.Add('abc');
  Inputs.Add('Lorem ipsum dolor sit 55555-5555 amet, consectetur adipisicing');
  Inputs.Add('34564-3342 elit, sed do 90210 eiusmod tempor incididunt ut');
  Inputs.Add('labore et dolore 434454444 magna aliqua. Ut enim ad minim');
  Inputs.Add('veniam, quis 645-32-2345 nostrud exercitation ullamco laboris');
  Inputs.Add('nisi ut aliquip ex ea commodo consequat.');
end;
{$ENDREGION}

initialization
  RegisterDemo(TRecipeUSZipCode);

end.
