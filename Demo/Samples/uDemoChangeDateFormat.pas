unit uDemoChangeDateFormat;

interface

uses
  uDemo;

type
  TDemoChangeDateFormat = class(TDemo)
  strict private
    function MDYtoDMY(const Input: String): String;
  strict protected
    procedure Run; override;
  public
    class function Description: String; override;
  end;

implementation

uses
  SysUtils,
  RegularExpressions;

{ TDemoChangeDateFormat }

class function TDemoChangeDateFormat.Description: String;
begin
  Result := 'Samples\Changing Date Formats';
end;

{$REGION}
/// The following code example uses the <A>TRegex.Replace</A> method to replace
/// dates of the form mm/dd/yy with dates of the form dd-mm-yy.

function TDemoChangeDateFormat.MDYtoDMY(const Input: String): String;
begin
  Result := TRegex.Replace(Input,
    '\b(?<month>\d{1,2})/(?<day>\d{1,2})/(?<year>\d{2,4})\b',
    '${day}-${month}-${year}');
end;

/// The following code shows how the MDYToDMY method can be called in an
/// application.

procedure TDemoChangeDateFormat.Run;
var
  DateString, ResultString: String;
begin
  DateString := FormatDateTime('m/d/yyyy', Date);
  ResultString := MDYtoDMY(DateString);
  Log('Converted %s to %s.', [DateString, ResultString]);
end;

/// <H>Regex Replacement Pattern</H>
/// This example demonstrates the use of named backreferences within the
/// replacement pattern for <A>Replace(String, String, String)</A>. Here, the
/// replacement expression <B>${day}</B> inserts the substring captured by the
/// group <B>(?<<day>…)</B>.
///
/// The <A>Replace(String, String, String)</A> function is one of several class
/// static functions that enable you to use regular expression operations
/// without creating an explicit regular expression object.
{$ENDREGION}

initialization
  RegisterDemo(TDemoChangeDateFormat);

end.
