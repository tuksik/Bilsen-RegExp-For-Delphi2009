unit uRecipeCreditCards;

interface

uses
  Classes,
  RegularExpressions,
  uDemo,
  uRecipe;

type
  TRecipeCreditCards = class(TRecipe)
  public
    class function Description: String; override;
    function Pattern: String; override;
    function Options: TRegexOptions; override;
    procedure GetInputs(const Inputs: TStrings); override;
  end;

implementation

{ TRecipeCreditCards }

class function TRecipeCreditCards.Description: String;
begin
  Result := 'Recipes\Credit Card: Visa + MC';
end;

{$REGION}
/// <B>Source</B>: http://www.regexlib.com/REDetails.aspx?regexp_id=1840
///  <B>Author</B>: Dan Partain
///
/// A simple regex to check for only Visa and MasterCard with no dashes or
/// spaces. Visa starts with a 4 and is 13 or 16 digits long, MasterCard starts
/// with a 51 through 55 and is 16 digits long.
///
/// <B>Notes</B>:
///  -Replaced "beginning of string (^)" and "end of string ($)" with
/// "word boundaries (\b)"
///  -The "roExplicitCapture" options is used to prevent capturing the second
/// 4-digit code as a capturing group.

function TRecipeCreditCards.Pattern: String;
begin
  Result := '\b(5[1-5]\d{2})\d{12}|(4\d{3})(\d{12}|\d{9})\b'
end;

function TRecipeCreditCards.Options: TRegexOptions;
begin
  Result := [roExplicitCapture];
end;

procedure TRecipeCreditCards.GetInputs(const Inputs: TStrings);
begin
  Inputs.Add('5555555555554444');
  Inputs.Add('5105105105105100');
  Inputs.Add('4012888888881881');
  Inputs.Add('4222222222222');
  Inputs.Add('123412341234');
  Inputs.Add('4222-2222-2222-2222');
  Inputs.Add('visa');
  Inputs.Add('41231234123412345');
  Inputs.Add('Lorem ipsum dolor sit 5555555555554444 amet, consectetur');
  Inputs.Add('5105105105105100 adipisicing elit, sed 4012888888881881 do');
  Inputs.Add('eiusmod 4222222222222 tempor incididunt ut labore et dolore');
  Inputs.Add('magna 4222-2222-2222-2222 aliqua. Ut enim ad minim veniam,');
  Inputs.Add('quis nostrud 41231234123412345 exercitation ullamco laboris');
  Inputs.Add('nisi ut aliquip ex ea commodo consequat.');
end;
{$ENDREGION}

initialization
  RegisterDemo(TRecipeCreditCards);

end.
