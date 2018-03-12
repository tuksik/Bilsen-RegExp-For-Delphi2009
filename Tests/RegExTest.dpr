program RegExTest;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  Forms,
  TestFramework,
  GUITestRunner,
  TextTestRunner,
  TestCapture in 'TestCapture.pas',
  TestGroup in 'TestGroup.pas',
  TestGroupCollection in 'TestGroupCollection.pas',
  TestMatch in 'TestMatch.pas',
  TestMatchCollection in 'TestMatchCollection.pas',
  RegexTrial in 'RegexTrial.pas',
  TestPerl in 'TestPerl.pas',
  TestRegexBugs in 'TestRegexBugs.pas',
  TestRegex in 'TestRegex.pas',
  TestMatchTrials in 'TestMatchTrials.pas',
  TestReplace in 'TestReplace.pas',
  TestResult in 'TestResult.pas',
  pcre in '..\Lib\pcre.pas',
  RegularExpressions in '..\lib\RegularExpressions.pas';

{$R *.RES}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  if IsConsole then
    TextTestRunner.RunRegisteredTests
  else
    GUITestRunner.RunRegisteredTests;
end.

