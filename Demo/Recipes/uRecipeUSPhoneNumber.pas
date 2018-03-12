unit uRecipeUSPhoneNumber;

interface

uses
  Classes,
  uDemo,
  uRecipe;

type
  TRecipeUSPhoneNumber = class(TRecipe)
  public
    class function Description: String; override;
    function Pattern: String; override;
    procedure GetInputs(const Inputs: TStrings); override;
  end;

implementation

{ TRecipeUSPhoneNumber }

class function TRecipeUSPhoneNumber.Description: String;
begin
  Result := 'Recipes\US Phone Number';
end;

{$REGION}
/// <B>Source</B>: http://www.regexlib.com/REDetails.aspx?regexp_id=283
///  <B>Author</B>: kode kode
///
/// This regular expression matches 10 digit US Phone numbers in different
/// formats. Some examples are 1) area code in paranthesis. 2) space between
/// different parts of the phone number. 3) no space between different parts of
/// the number. 4) dashes between parts.

function TRecipeUSPhoneNumber.Pattern: String;
begin
  Result := '^\(?[\d]{3}\)?[\s-]?[\d]{3}[\s-]?[\d]{4}$';
end;

procedure TRecipeUSPhoneNumber.GetInputs(const Inputs: TStrings);
begin
  Inputs.Add('(573)8841878');
  Inputs.Add('573-884-1234');
  Inputs.Add('573 234 1256');
  Inputs.Add('(573)(673)2345');
  Inputs.Add('573-12-2345');
end;
{$ENDREGION}

initialization
  RegisterDemo(TRecipeUSPhoneNumber);

end.
