unit uDemo;

interface

uses
  Classes,
  SysUtils,
  ComCtrls;

type
  {$TYPEINFO ON} { To make TDemo.UnitName work }
  TDemo = class abstract
  strict private
    FTreeView: TTreeView;
  strict protected
    procedure Run; virtual; abstract;
    procedure Log(const Msg: String); overload;
    procedure Log(const Msg: String; const Params: array of const); overload;

    property TreeView: TTreeView read FTreeView;
  public
    constructor Create; virtual;
    procedure Execute(const ATreeView: TTreeView);

    class function Description: String; virtual;
  end;
  {$TYPEINFO OFF}
  TDemoClass = class of TDemo;

procedure RegisterDemo(const DemoClass: TDemoClass);
function RegisteredDemos: TStringList;

implementation

var
  GlobalRegisteredDemos: TStringList = nil;

procedure RegisterDemo(const DemoClass: TDemoClass);
begin
  GlobalRegisteredDemos.AddObject(DemoClass.Description, Pointer(DemoClass));
end;

function RegisteredDemos: TStringList;
begin
  Result := GlobalRegisteredDemos;
end;

{ TDemo }

constructor TDemo.Create;
begin
  inherited Create;
end;

class function TDemo.Description: String;
begin
  Result := ClassName;
end;

procedure TDemo.Execute(const ATreeView: TTreeView);
begin
  Assert(Assigned(ATreeView));
  FTreeView := ATreeView;
  FTreeView.Items.BeginUpdate;
  try
    Run;
  finally
    FTreeView.Items.EndUpdate;
  end;
end;

procedure TDemo.Log(const Msg: String);
begin
  FTreeView.Items.AddChild(nil, Msg);
end;

procedure TDemo.Log(const Msg: String; const Params: array of const);
begin
  Log(Format(Msg, Params));
end;

initialization
  GlobalRegisteredDemos := TStringList.Create;

finalization
  FreeAndNil(GlobalRegisteredDemos);

end.
