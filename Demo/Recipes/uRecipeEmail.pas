unit uRecipeEmail;

interface

uses
  Classes,
  RegularExpressions,
  uDemo,
  uRecipe;

type
  TRecipeEmail = class(TRecipe)
  public
    class function Description: String; override;
    function Pattern: String; override;
    function Options: TRegexOptions; override;
    procedure GetInputs(const Inputs: TStrings); override;
  end;

implementation

{ TRecipeEmail }

class function TRecipeEmail.Description: String;
begin
  Result := 'Recipes\Email Address';
end;

{$REGION}
/// <B>Source</B>: http://www.regexlib.com/REDetails.aspx?regexp_id=980
///  <B>Author</B>: Micah Duke
///
/// This will validate most legal email addresses, even allows for some
/// discouraged but perfectly legal characters in local part; allows IP domains
/// with optional []; keeps final tld at a minmum of 2 chars; non capturing
/// groups for efficiency

function TRecipeEmail.Pattern: String;
begin
  Result := '^(?:[a-zA-Z0-9_''^&/+-])+(?:\.(?:[a-zA-Z0-9_''^&/+-])+)*@' +
    '(?:(?:\[?(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))\.){3}' +
    '(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\]?)|(?:[a-zA-Z0-9-]+\.)+' +
    '(?:[a-zA-Z]){2,}\.?)$';
end;

function TRecipeEmail.Options: TRegexOptions;
begin
  Result := [roIgnoreCase];
end;

procedure TRecipeEmail.GetInputs(const Inputs: TStrings);
begin
  Inputs.Add('you.me.hello@somewhere.else.cc');
  Inputs.Add('joe_smith@here.com.');
  Inputs.Add('me@[24.111.232.1]');
  Inputs.Add('.me.you@here.com');
  Inputs.Add('.murat@62.59.114.103.nl');
  Inputs.Add('test_case@here*555%there.com');
end;
{$ENDREGION}

initialization
  RegisterDemo(TRecipeEmail);

end.
