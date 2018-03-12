unit uDemoStripInvalidChars;

interface

uses
  uDemo;

type
  TDemoStripInvalidChars = class(TDemo)
  strict private
    function CleanInput(const StrIn: String): String;
  strict protected
    procedure Run; override;
  public
    class function Description: String; override;
  end;

implementation

uses
  RegularExpressions;

{ TDemoStripInvalidChars }

class function TDemoStripInvalidChars.Description: String;
begin
  Result := 'Samples\Strip Invalid Characters from a String';
end;

{$REGION}
/// The following code example uses the class static <A>TRegex.Replace</A>
/// method to strip invalid characters from a string. You can use the
/// <B>CleanInput</B> method defined here to strip potentially harmful
/// characters that have been entered into a text field in a form that accepts
/// user input. <B>CleanInput</B> returns a string after stripping out all
/// nonalphanumeric characters except whitespace, @, - (a dash), and . (a period).

function TDemoStripInvalidChars.CleanInput(const StrIn: String): String;
begin
  Result := TRegex.Replace(StrIn, '[^\w\s\.@-]', '');
end;

procedure TDemoStripInvalidChars.Run;
var
  Input, Output: String;
begin
  Input := 'This #$%String! contains {Harmful} characters and an email addres: foo@bar.com';
  Output := CleanInput(Input);
  Log('Input: ' + Input);
  Log('Output: ' + Output);
end;
{$ENDREGION}

initialization
  RegisterDemo(TDemoStripInvalidChars);

end.
