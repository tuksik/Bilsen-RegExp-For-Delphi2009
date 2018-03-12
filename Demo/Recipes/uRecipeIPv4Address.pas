unit uRecipeIPv4Address;

interface

uses
  Classes,
  RegularExpressions,
  uDemo,
  uRecipe;

type
  TRecipeIPv4Address = class(TRecipe)
  public
    class function Description: String; override;
    function Pattern: String; override;
    procedure GetInputs(const Inputs: TStrings); override;
  end;

implementation

{ TRecipeIPv4Address }

class function TRecipeIPv4Address.Description: String;
begin
  Result := 'Recipes\IPv4 Address';
end;

{$REGION}
/// <B>Source</B>: http://www.regexlib.com/REDetails.aspx?regexp_id=194
///  <B>Author</B>: Andrew Polshaw
///
/// This matches an IP address, putting each number in its own group that can be
/// retrieved by number. If you do not care about capturing the numbers, then
/// you can make this shorter by putting everything after \b until immediately
/// after the first \. in a group ( ) with a {3} after it. Then put the number
/// matching regex in once more. It only permits numbers in the range 0-255.
///
/// <B>Notes</B>:
///  -Replaced "beginning of string (^)" and "end of string ($)" with
/// "word boundaries (\b)"
///  -Added support for leading zeros

function TRecipeIPv4Address.Pattern: String;
begin
  Result :=
    '\b'+
    '(\d{1,2}|0\d|0\d\d|1\d\d|2[0-4]\d|25[0-5])\.' +
    '(\d{1,2}|0\d|0\d\d|1\d\d|2[0-4]\d|25[0-5])\.' +
    '(\d{1,2}|0\d|0\d\d|1\d\d|2[0-4]\d|25[0-5])\.' +
    '(\d{1,2}|0\d|0\d\d|1\d\d|2[0-4]\d|25[0-5])\b';
end;

procedure TRecipeIPv4Address.GetInputs(const Inputs: TStrings);
begin
  Inputs.Add('0.0.0.0');
  Inputs.Add('255.255.255.02');
  Inputs.Add('192.168.0.136');
  Inputs.Add('023.44.33.22');
  Inputs.Add('256.1.3.4');
  Inputs.Add('Lorem ipsum 0.0.0.0 dolor sit amet, consectetur adipisicing');
  Inputs.Add('255.255.255.02 elit, sed do 192.168.0.136 eiusmod tempor');
  Inputs.Add('incididunt 256.1.3.4 ut labore et dolore magna aliqua.');
end;
{$ENDREGION}

initialization
  RegisterDemo(TRecipeIPv4Address);

end.
