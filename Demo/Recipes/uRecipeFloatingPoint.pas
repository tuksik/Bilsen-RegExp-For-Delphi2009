unit uRecipeFloatingPoint;

interface

uses
  Classes,
  RegularExpressions,
  uDemo,
  uRecipe;

type
  TRecipeFloatingPoint = class(TRecipe)
  public
    class function Description: String; override;
    function Pattern: String; override;
    procedure GetInputs(const Inputs: TStrings); override;
  end;

implementation

{ TRecipeFloatingPoint }

class function TRecipeFloatingPoint.Description: String;
begin
  Result := 'Recipes\Floating Point Numbers';
end;

{$REGION}
/// <B>Source</B>: http://www.regexlib.com/REDetails.aspx?regexp_id=139
///  <B>Author</B>: Srinivas Gummadi
///
/// This matches floating point expression in a more rigorous way - accepts both
/// exponent as well as non exponent notations.

function TRecipeFloatingPoint.Pattern: String;
begin
  Result := '^[-+]?[0-9]+[.]?[0-9]*([eE][-+]?[0-9]+)?$';
end;

procedure TRecipeFloatingPoint.GetInputs(const Inputs: TStrings);
begin
  Inputs.Add('123');
  Inputs.Add('-123.35');
  Inputs.Add('-123.35e-2');
  Inputs.Add('abc');
  Inputs.Add('123.32e');
  Inputs.Add('123.32.3');
end;
{$ENDREGION}

initialization
  RegisterDemo(TRecipeFloatingPoint);

end.
