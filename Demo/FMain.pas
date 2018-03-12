unit FMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, uDemo, StdCtrls;

type
  TFormMain = class(TForm)
    TreeViewDemos: TTreeView;
    Splitter: TSplitter;
    PanelClient: TPanel;
    RichEdit: TRichEdit;
    SplitterRight: TSplitter;
    TreeView: TTreeView;
    procedure FormCreate(Sender: TObject);
    procedure TreeViewDemosChange(Sender: TObject; Node: TTreeNode);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FSourceCodeDir: String;
    FCurrentDemo: TDemo;
    procedure ShowSourceCode(Node: TTreeNode; const UnitName: String);
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses
  uSourceCodeConverter;

procedure TFormMain.FormCreate(Sender: TObject);
var
  Demos: TStringList;
  I, J: Integer;
  Node: TTreeNode;
  S, Folder: String;
begin
  ReportMemoryLeaksOnShutdown := True;
  FSourceCodeDir := ExtractFilePath(Application.ExeName);

  Demos := RegisteredDemos;
  TreeViewDemos.Items.BeginUpdate;
  try
    for I := 0 to Demos.Count - 1 do
    begin
      Node := nil;
      S := Demos[I];
      J := Pos('\', S);
      if (J <> 0) then
      begin
        Folder := Copy(S, 1, J - 1);
        S := Copy(S, J + 1, MaxInt);
        for J := 0 to TreeViewDemos.Items.Count - 1 do
          if SameText(TreeViewDemos.Items[J].Text, Folder) then
          begin
            Node := TreeViewDemos.Items[J];
            Break;
          end;
        if (Node = nil) then
          Node := TreeViewDemos.Items.AddChild(nil, Folder);
      end;
      Node := TreeViewDemos.Items.AddChild(Node, S);
      Node.Data := Demos.Objects[I];
    end;
  finally
    TreeViewDemos.Items.EndUpdate;
  end;
  TreeViewDemos.FullExpand;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  FCurrentDemo.Free;
end;

procedure TFormMain.ShowSourceCode(Node: TTreeNode; const UnitName: String);
var
  Path, Title: String;
  SourceCode: TStringList;
begin
  Path := '';
  Title := Node.Text;
  Node := Node.Parent;
  while Assigned(Node) do
  begin
    if (Path = '') then
      Path := Node.Text
    else
      Path := Node.Text + PathDelim + Path;
    Node := Node.Parent;
  end;
  Path := FSourceCodeDir + Path + PathDelim + UnitName + '.pas';
  if FileExists(Path) then
  begin
    SourceCode := TStringList.Create;
    try
      SourceCode.LoadFromFile(Path);
      SourceCodeToRichText(Title, SourceCode, RichEdit);
    finally
      SourceCode.Free;
    end;
  end
  else
    RichEdit.Text := 'Cannot find source file: ' + Path + #13#10 +
      'To view documentation and source code, please make sure that the ' +
      'source is available in the appropriate directory.';
end;

procedure TFormMain.TreeViewDemosChange(Sender: TObject; Node: TTreeNode);
var
  DemoClass: TDemoClass;
begin
  TreeView.Items.Clear;
  RichEdit.Clear;
  if Assigned(Node) then
  begin
    DemoClass := Node.Data;
    if Assigned(DemoClass) then
    begin
      FreeAndNil(FCurrentDemo);
      FCurrentDemo := DemoClass.Create;
      ShowSourceCode(Node, FCurrentDemo.UnitName);
      FCurrentDemo.Execute(TreeView);
    end;
  end;
end;

end.
