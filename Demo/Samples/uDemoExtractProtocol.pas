unit uDemoExtractProtocol;

interface

uses
  uDemo;

type
  TDemoExtractProtocol = class(TDemo)
  strict protected
    procedure Run; override;
  public
    class function Description: String; override;
  end;

implementation

uses
  RegularExpressions;

{ TDemoExtractProtocol }

class function TDemoExtractProtocol.Description: String;
begin
  Result := 'Samples\Extract a Protocol and Port Number from a URL';
end;

{$REGION}
/// The following example uses <A>IMatch.Result</A> to extract a protocol and
/// port number from a URL.

procedure TDemoExtractProtocol.Run;
var
  R: IRegex;
  M: IMatch;
begin
  R := TRegex.Create('^(?<proto>\w+)://[^/]+?(?<port>:\d+)?/');
  M := R.Match('http://www.contoso.com:8080/letters/readme.html');
  Log(M.Result('${proto}${port}'));
end;

/// The example displays the following output:
///  http:8080
{$ENDREGION}

initialization
  RegisterDemo(TDemoExtractProtocol);

end.
