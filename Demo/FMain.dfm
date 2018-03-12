object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Regular Expressions Demo'
  ClientHeight = 672
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter: TSplitter
    Left = 329
    Top = 0
    Height = 672
    ExplicitLeft = 284
    ExplicitTop = 36
    ExplicitHeight = 100
  end
  object TreeViewDemos: TTreeView
    Left = 0
    Top = 0
    Width = 329
    Height = 672
    Align = alLeft
    HideSelection = False
    Indent = 19
    ReadOnly = True
    TabOrder = 0
    OnChange = TreeViewDemosChange
  end
  object PanelClient: TPanel
    Left = 332
    Top = 0
    Width = 697
    Height = 672
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object SplitterRight: TSplitter
      Left = 0
      Top = 277
      Width = 697
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 0
      ExplicitWidth = 424
    end
    object RichEdit: TRichEdit
      Left = 0
      Top = 280
      Width = 697
      Height = 392
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object TreeView: TTreeView
      Left = 0
      Top = 0
      Width = 697
      Height = 277
      Align = alClient
      Indent = 19
      ReadOnly = True
      TabOrder = 1
    end
  end
end
