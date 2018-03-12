program BuildTrials;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Classes,
  StrUtils;

function ConvertStringConstant(const Src: String): String;
var
  S, R: String;
  Parse: Boolean;
  I: Integer;
begin
  S := Trim(Src);
  if (S = '') then
    Exit('');

  Parse := (S[1] <> '@');
  if (not Parse) then
    S := Copy(S, 2, MaxInt);
  if (Length(S) < 2) or (S[1] <> '"') or (S[Length(S)] <> '"') then
    Exit('');
  S := Copy(S, 2, Length(S) - 2);
  S := ReplaceStr(S, '''', '''''');

  if (Parse) then
  begin
    while True do
    begin
      I := Pos('\', S);
      if (I = 0) then
        Break;
      case S[I + 1] of
        'r': R := '''#13''';
        'n': R := '''#10''';
        't': R := '''#9''';
        '\': R := #255;
      else
        R := S[I + 1];
      end;
      Delete(S, I, 2);
      Insert(R, S, I);
    end;
    for I := 1 to Length(S) - 1 do
      if (S[I] = #255) then
        S[I] := '\';
  end;

  Result := '''' + S + '''';
end;

function ConvertOptions(const Src: String): String;
var
  S, T: String;
  I: Integer;
begin
  Result := '[';
  S := Trim(Src) + '|';
  while True do
  begin
    I := Pos('|', S);
    if (I = 0) then
      Break;
    T := Trim(Copy(S, 1, I - 1));
    S := Copy(S, I + 1, MaxInt);
    if (Copy(T, 1, 13) <> 'RegexOptions.') then
      Exit('');

    if (T = 'RegexOptions.RightToLeft') then
      Exit('');

    if (T <> 'RegexOptions.None') and (T <> 'RegexOptions.Compiled') then
    begin
      if (Result <> '[') then
        Result := Result + ', ';
      Result := Result + 'ro' + Copy(T, 14, Maxint);
    end;
  end;
  Result := Result + ']';
end;

function RemoveCaptures(const Src: String): String;
var
  I, J: Integer;
begin
  Result := Src;
  I := 1;
  while True do
  begin
    I := PosEx('Group[', Result, I);
    if (I = 0) then
      Break;
    J := PosEx(']=', Result, I);
    if (J = 0) then
      Exit('');
    if (Result[J + 2] <> '(') then
    begin
      Delete(Result, I - 1, J - I + 3);
      Continue;
    end;

    I := J + 2;
    J := PosEx('Group[', Result, I);
    if (J = 0) then
      J := Length(Result);

    while (J > 0) and (Result[J] <> '(') do
      Dec(J);
    if (J = 0) then
      Exit('');

    if (I < J) then
      Delete(Result, I + 1, J - I);
  end;
end;

function ConvertTrial(const Src: String): String;
var
  S, Pattern, Options, Input, Expected: String;
  I: Integer;
begin
  Result := '';
  S := Src;
  I := Pos(' ', S);
  if (Copy(S, 1, I - 1) <> 'new') then
    Exit;

  S := Trim(Copy(S, I + 1, MaxInt));
  I := Pos('(', S);
  if (Trim(Copy(S, 1, I - 1)) <> 'RegexTrial') then
    Exit;

  S := Trim(Copy(S, I + 1, MaxInt));
  I := Pos('",', S);
  if (I = 0) then
    Exit;
  Pattern := ConvertStringConstant(Copy(S, 1, I));
  if (Pattern = '') then
    Exit;

  S := Trim(Copy(S, I + 2, MaxInt));
  I := Pos(',', S);
  if (I = 0) then
    Exit;
  Options := ConvertOptions(Copy(S, 1, I - 1));
  if (Options = '') then
    Exit;

  S := Trim(Copy(S, I + 1, MaxInt));
  I := Pos('",', S);
  if (I = 0) then
    Exit;
  Input := ConvertStringConstant(Copy(S, 1, I));
  if (Input = '') then
    Exit;

  S := Trim(Copy(S, I + 2, MaxInt));
  I := Pos('")', S);
  if (I = 0) then
    Exit;
  Expected := ConvertStringConstant(Copy(S, 1, I));
  if (Expected = '') then
    Exit;
  Expected := RemoveCaptures(Expected);
  if (Expected = '') then
    Exit;

  Result := '  Execute(' + Pattern + ', ' + Options + ', ' + Input + ', ' + Expected + ');';
end;

procedure ConvertTrials(const SrcFilename, DstFilename: String);
var
  UnitName, ClassName, S: String;
  Reader: TStreamReader;
  Writer: TStreamWriter;
  Trials: TStringList;
  I: Integer;
begin
  UnitName := ChangeFileExt(ExtractFilename(DstFilename), '');
  ClassName := 'T' + UnitName;
  Trials := TStringList.Create;
  try
    Reader := TStreamReader.Create(SrcFilename);
    try
      while (not Reader.EndOfStream) do
      begin
        S := Reader.ReadLine;
        S := Trim(S);
        S := ConvertTrial(S);
        if (S <> '') then
          Trials.Add(S);
      end;
    finally
      Reader.Free;
    end;

    Writer := TStreamWriter.Create(DstFilename, False, TEncoding.UTF8);
    try
      Writer.WriteLine('unit %s;', [UnitName]);
      Writer.WriteLine;
      Writer.WriteLine('interface');
      Writer.WriteLine;
      Writer.WriteLine('uses');
      Writer.WriteLine('  TestFramework,');
      Writer.WriteLine('  RegexTrial,');
      Writer.WriteLine('  RegularExpressions;');
      Writer.WriteLine;
      Writer.WriteLine('type');
      Writer.WriteLine('  %s = class(TRegexTrial)',[ClassName]);
      Writer.WriteLine('  published');

      for I := 0 to Trials.Count - 1 do
        Writer.WriteLine('    procedure Trial%.4d;', [I]);

      Writer.WriteLine('  end;');
      Writer.WriteLine;
      Writer.WriteLine('implementation');
      Writer.WriteLine;
      Writer.WriteLine('{ %s }', [ClassName]);
      Writer.WriteLine;

      for I := 0 to Trials.Count - 1 do
      begin
        Writer.WriteLine('procedure %s.Trial%.4d;', [ClassName, I]);
        Writer.WriteLine('begin');
        Writer.WriteLine(Trials[I]);
        Writer.WriteLine('end;');
        Writer.WriteLine;
      end;

      Writer.WriteLine('initialization');
      Writer.WriteLine('  RegisterTest(%s.Suite);', [ClassName]);
      Writer.WriteLine;
      Writer.Write('end.');
    finally
      Writer.Free;
    end;
  finally
    Trials.Free;
  end;
end;

begin
  try
    ConvertTrials('PerlTrials.cs', 'TestPerl.pas');
    ConvertTrials('RegexMatchTests.cs', 'TestMatchTrials.pas');
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
