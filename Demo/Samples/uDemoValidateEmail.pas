unit uDemoValidateEmail;

interface

uses
  uDemo;

type
  TDemoValidateEmail = class(TDemo)
  strict private
    function IsValidEmail(const Email: String): Boolean;
  strict protected
    procedure Run; override;
  public
    class function Description: String; override;
  end;

implementation

uses
  RegularExpressions;

{ TDemoValidateEmail }

class function TDemoValidateEmail.Description: String;
begin
  Result := 'Samples\Verify That Strings are in Valid E-Mail Format';
end;

{$REGION}
/// The following code example uses the class static <A>TRegex.IsMatch</A>
/// method to verify that a string is in valid e-mail format. The
/// <B>IsValidEmail</B> method returns <B>True</B> if the string contains a
/// valid e-mail address and <B>False</B> if it does not, but takes no other
/// action. You can use <B>IsValidEmail</B> to filter out e-mail addresses
/// containing invalid characters before your application stores the addresses
/// in a database or displays them in a web page.

function TDemoValidateEmail.IsValidEmail(const Email: String): Boolean;
begin
  Result := TRegex.IsMatch(Email,
    '^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$');
end;

procedure TDemoValidateEmail.Run;
var
  Email: String;
begin
  Email := 'foo@bar.com';
  if IsValidEmail(Email) then
    Log(Email + ' is valid')
  else
    Log(Email + ' is invalid!');

  Email := 'foo@bar/com';
  if IsValidEmail(Email) then
    Log(Email + ' is valid')
  else
    Log(Email + ' is invalid!');
end;
{$ENDREGION}

initialization
  RegisterDemo(TDemoValidateEmail);

end.
