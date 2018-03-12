unit uDemoScanHref;

interface

uses
  uDemo;

type
  TDemoScanHref = class(TDemo)
  strict private
    procedure DumpHRefs(const InputString: String);
  strict protected
    procedure Run; override;
  public
    class function Description: String; override;
  end;

implementation

uses
  SysUtils,
  RegularExpressions;

{ TDemoScanHref }

class function TDemoScanHref.Description: String;
begin
  Result := 'Samples\Scanning for HREFs';
end;

{$REGION}
/// The following example searches an input string and prints out all the
/// href="…" values and their locations in the string.
///
/// <H>The TRegex Object</H>
/// Because the <A>TRegex</A> object is used in the <B>DumpHRefs</B> method,
/// which can be called multiple times from user code, the class static
/// <A>TRegex.Match(String, String, TRegexOptions)</A> method is used. This
/// enables the regular expression engine to cache regular expressions and
/// avoids the overhead of instantiating a new <A>IRegex</A> object each time
/// the method is called. An <A>IMatch</A> object is then used to iterate
/// through all matches in the string. In this example, the metacharacter
/// <B>\s</B> matches any space character, and <B>\S</B> matches any non-space
/// character.

procedure TDemoScanHref.DumpHRefs(const InputString: String);
var
  Match: IMatch;
begin
  Match := TRegex.Match(InputString, 'href\s*=\s*(?:"(?<1>[^"]*)"|(?<1>\S+))',
    [roIgnoreCase]);
  while (Match.Success) do
  begin
    Log('Found href %s at %d', [Match.Groups[1].ToString, Match.Groups[1].Index]);
    Match := Match.NextMatch;
  end;
end;

/// The following example then illustrates a call to the DumpHRefs method.

procedure TDemoScanHref.Run;
begin
  DumpHRefs(
    'My favorite web sites include:</P>' +
    '<A HREF="http://edn.embarcadero.com/delphi">' +
    'Embarcadero Developer Network | Delphi Programming Community</A></P>' +
    '<A HREF="http://www.embarcadero.com">' +
    'Embarcadero Home Page</A></P>' +
    '<A HREF="http://www.delphifeeds.com">' +
    'Delphi community and news</A></P>');
end;

/// The example displays the following output:
///  - Found href http://edn.embarcadero.com/delphi at 44
///  - Found href http://www.embarcadero.com at 156
///  - Found href http://www.delphifeeds.com at 222
///
/// <H>Match Result Class</H>
/// The results of a search are stored in an <A>IMatch</A> object, which
/// provides access to all the substrings extracted by the search. It also
/// remembers the string being searched and the regular expression being used,
/// so it can use them to perform another search starting where the last one
/// ended.
///
/// <H>Explicitly Named Captures</H>
/// In traditional regular expressions, capturing parentheses are automatically
/// numbered sequentially. This leads to two problems. First, if a regular
/// expression is modified by inserting or removing a set of parentheses, all
/// code that refers to the numbered captures must be rewritten to reflect the
/// new numbering. Second, because different sets of parentheses often are used
/// to provide two alternative expressions for an acceptable match, it might be
/// difficult to determine which of the two expressions actually returned a
/// result.
///
/// To address these problems,the <A>TRegex</A> class supports the syntax
/// <B>(?<<name>...)</B> for capturing a match into a specified slot (the slot
/// can be named using a string or an integer; integers can be recalled more
/// quickly). Thus, alternative matches for the same string all can be directed
/// to the same place. In case of a conflict, the last match dropped into a slot
/// is the successful match.
{$ENDREGION}

initialization
  RegisterDemo(TDemoScanHref);

end.
