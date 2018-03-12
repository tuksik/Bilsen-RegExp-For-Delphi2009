unit uRecipe;

interface

uses
  Classes,
  RegularExpressions,
  uDemo;

type
  TRecipe = class abstract(TDemo)
  strict protected
    procedure Run; override;
  public
    function Pattern: String; virtual; abstract;
    function Options: TRegexOptions; virtual;
    procedure GetInputs(const Inputs: TStrings); virtual; abstract;
  end;

implementation

uses
  ComCtrls;

{ TRecipe }

function TRecipe.Options: TRegexOptions;
begin
  Result := [];
end;

procedure TRecipe.Run;
var
  Inputs: TStringList;
  Regex: IRegex;
  Match: IMatch;
  Group: IGroup;
  Input: String;
  I: Integer;
  GroupNames: TStringArray;
  Node, MatchNode, NonMatchNode: TTreeNode;
begin
  MatchNode := TreeView.Items.AddChild(nil, 'The following inputs match the regular expression:');
  NonMatchNode := TreeView.Items.AddChild(nil, 'The following inputs do NOT match:');
  Inputs := TStringList.Create;
  try
    GetInputs(Inputs);

    Regex := TRegex.Create(Pattern, Options);
    GroupNames := Regex.GetGroupNames;
    for Input in Inputs do
    begin
      Match := Regex.Match(Input);
      if (Match.Success) then
      begin
        while (Match.Success) do
        begin
          Node := TreeView.Items.AddChild(MatchNode, Input);
          for I := 0 to Length(GroupNames) - 1 do
          begin
            Group := Match.Groups.ItemsByName[GroupNames[I]];
            if (Group.Success) then
              TreeView.Items.AddChild(Node, 'Group[' + GroupNames[I] + '] = ' + Group.Value);
          end;
          Match := Match.NextMatch;
        end;
      end
      else
        TreeView.Items.AddChild(NonMatchNode, Input);
    end;
    MatchNode.Expand(False);
    NonMatchNode.Expand(False);
    TreeView.Selected := MatchNode;
    TreeView.TopItem := MatchNode;
  finally
    Inputs.Free;
  end;
end;

end.
