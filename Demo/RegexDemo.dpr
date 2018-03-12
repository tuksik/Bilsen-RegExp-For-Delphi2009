program RegexDemo;

uses
  Forms,
  FMain in 'FMain.pas' {FormMain},
  uDemo in 'uDemo.pas',
  uDemoScanHref in 'Samples\uDemoScanHref.pas',
  pcre in '..\Lib\pcre.pas',
  RegularExpressions in '..\Lib\RegularExpressions.pas',
  uDemoChangeDateFormat in 'Samples\uDemoChangeDateFormat.pas',
  uDemoExtractProtocol in 'Samples\uDemoExtractProtocol.pas',
  uDemoStripInvalidChars in 'Samples\uDemoStripInvalidChars.pas',
  uDemoValidateEmail in 'Samples\uDemoValidateEmail.pas',
  uRecipe in 'Recipes\uRecipe.pas',
  uRecipeUSZipCode in 'Recipes\uRecipeUSZipCode.pas',
  uRecipeCreditCards in 'Recipes\uRecipeCreditCards.pas',
  uRecipeDateMDY in 'Recipes\uRecipeDateMDY.pas',
  uRecipeEmail in 'Recipes\uRecipeEmail.pas',
  uRecipeIPv4Address in 'Recipes\uRecipeIPv4Address.pas',
  uRecipeFloatingPoint in 'Recipes\uRecipeFloatingPoint.pas',
  uRecipeUSPhoneNumber in 'Recipes\uRecipeUSPhoneNumber.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Regex Demo';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
