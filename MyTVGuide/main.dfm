object frmMain: TfrmMain
  Left = 218
  Top = 205
  Width = 615
  Height = 468
  Caption = 'MyTVGuide'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 135
    Top = 31
    Height = 403
    AutoSnap = False
    Beveled = True
    Color = clBtnFace
    MinSize = 135
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 138
    Top = 31
    Width = 469
    Height = 403
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BiDiMode = bdRightToLeftNoAlign
    Ctl3D = False
    UseDockManager = False
    FullRepaint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Memo1: TMemo
      Left = 2
      Top = 2
      Width = 465
      Height = 399
      Align = alClient
      BevelInner = bvNone
      BorderStyle = bsNone
      HideSelection = False
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
      WantReturns = False
      WordWrap = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 607
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    UseDockManager = False
    FullRepaint = False
    TabOrder = 1
    object sbClear: TSpeedButton
      Left = 142
      Top = 3
      Width = 23
      Height = 23
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1077#1089#1100' '#1089#1087#1080#1089#1086#1082
      Flat = True
      Glyph.Data = {
        EE000000424DEE0000000000000076000000280000000D0000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        F000F00000000000F000F0FFFFFFFFF0F000F0FCF00000F0F000F0FFFFFFFFF0
        F000F0FCF00000F0F000F0FFFFFFFFF0F000F0FCF00000F0F000F0FFFF09FFF0
        F000F0FCF0990F09F000F0FFFFF99090F000F0FFFFF0990FF000F0FFFF009990
        F000F00000990F990000FFFFFF9FFFFFF000}
      ParentShowHint = False
      ShowHint = True
      OnMouseDown = sbClearMouseDown
    end
    object sbOpen: TSpeedButton
      Left = 3
      Top = 3
      Width = 23
      Height = 23
      Hint = #1054#1090#1082#1088#1099#1090#1100'...'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000635A000000
        000052C6DE0052C6DE004AC6DE0052C6DE0042BDDE0042BDDE0042BDDE0039BD
        DE0031B5D60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000635A008CFF
        FF000000000052C6DE0052C6DE0052C6DE0052C6DE004AC6DE004AC6DE0042BD
        DE0039BDDE0039BDDE0000000000FFFFFF00FFFFFF00FFFFFF0000635A008CFF
        FF0000CEFF000000000052C6DE0052C6DE0052C6DE0052C6DE004AC6DE004AC6
        DE0042BDDE0042BDDE0039BDD60000000000FFFFFF00FFFFFF0000635A008CFF
        FF00FFFFFF0000CEFF000000000063CEE70052C6DE0052C6DE0052C6DE004AC6
        DE004AC6DE004AC6DE0042BDDE0039BDDE0000000000FFFFFF0000635A008CFF
        FF0000CEFF00EFFFFF0000CEFF00000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000635A008CFF
        FF00EFFFFF0000CEFF00FFFFFF0000CEFF00FFFFFF0000CEFF00EFFFFF0000CE
        FF00EFFFFF0000CEFF0000000000FFFFFF00FFFFFF00FFFFFF0000635A008CFF
        FF0000CEFF00FFFFFF0000CEFF00EFFFFF008CFFFF008CFFFF008CFFFF008CFF
        FF008CFFFF008CFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000635A008CFF
        FF00FFFFFF0000CEFF00EFFFFF0000CEFF008CFFFF0000635A0000635A000063
        5A0000635A0000635A0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000063
        5A008CFFFF008CFFFF008CFFFF008CFFFF0000635A00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000635A0000635A0000635A0000635A00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = tbOpenClick
    end
    object sbFileUp: TSpeedButton
      Left = 31
      Top = 3
      Width = 23
      Height = 23
      Hint = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1074#1074#1077#1088#1093
      Flat = True
      Glyph.Data = {
        A6020000424DA6020000000000003600000028000000110000000C0000000100
        1800000000007002000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFF000000000000000000000000000000000000000000FFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFF0000000C9A18000000FFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFF0000000C9A18000000FFFFFFFFFFFF000000FFFFFFFF0000FF0000FF0000
        FFFFFF000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000000C9A18000000FF
        FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFF
        FFFFFFFFFFFFFFFFFFFF00000021A318000000FFFFFFFFFFFF000000FFFFFFFF
        0000FF0000FF0000FFFFFF000000FFFFFF00FFFFFF0000000000000000000000
        0021A318000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFF00FFFFFFFFFFFF00000021A31821A3181CB03321A31821A3180000
        00000000000000000000000000FF0000FFFFFF000000FFFFFF00FFFFFFFFFFFF
        FFFFFF0000001CB0352DC55136CB5F000000FFFFFFFFFFFF000000C0C0C00000
        00FFFFFFFFFFFF000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000041E073
        000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000FFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnMouseDown = sbFileUpMouseDown
    end
    object sbFileDown: TSpeedButton
      Left = 58
      Top = 3
      Width = 23
      Height = 23
      Hint = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1074#1085#1080#1079
      Flat = True
      Glyph.Data = {
        A6020000424DA6020000000000003600000028000000110000000C0000000100
        1800000000007002000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000FFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFF00000041E073000000FFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFFFFFFFFFFFFFF00
        00001CB0352DC55136CB5F000000FFFFFF000000FFFFFFFF0000FF0000FF0000
        FFFFFF000000FFFFFF00FFFFFFFFFFFF00000021A31821A3181CB03321A31821
        A318000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFF
        FF00000000000000000000000021A318000000000000000000000000FFFFFFFF
        0000FF0000FF0000FFFFFF000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
        0021A318000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000000C9A18000000FFFFFFFFFF
        FF000000000000000000000000FF0000FFFFFF000000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF0000000C9A18000000FFFFFFFFFFFFFFFFFF000000C0C0C00000
        00FFFFFFFFFFFF000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000000C9A18
        000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000FFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnMouseDown = sbFileDownMouseDown
    end
    object sbEditName: TSpeedButton
      Left = 86
      Top = 3
      Width = 23
      Height = 23
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1090#1077#1083#1077#1082#1072#1085#1072#1083#1072
      Flat = True
      Glyph.Data = {
        B6030000424DB603000000000000360000002800000012000000100000000100
        1800000000008003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF00
        0000000000FFFFFF0000FFFFFFFF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000000000FFFFFFFFFFFFFFFFFF
        0000FFFFFFFF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF8000000000FFFFFFFFFFFFFFFFFF0000FFFFFFFF8000
        FFFFFFFFFFFFFFFFFFFFFFFFFF8000FFFFFFFF8000FFFFFFFFFFFFFFFFFFFF80
        00FF8000000000FFFFFFFFFFFFFFFFFF0000FFFFFFFF8000FFFFFFFF8000FF80
        00FFFFFFFF8000FF8000FF8000FFFFFFFF8000FF8000FFFFFFFF8000000000FF
        FFFFFFFFFFFFFFFF0000FFFFFFFF8000FF8000FFFFFFFFFFFFFFFFFFFF8000FF
        8000FF8000FFFFFFFF8000FF8000FFFFFFFF8000000000FFFFFFFFFFFFFFFFFF
        0000FFFFFFFF8000FF8000FF8000FF8000FFFFFFFF8000FF8000FF8000FFFFFF
        FF8000FF8000FFFFFFFF8000000000FFFFFFFFFFFFFFFFFF0000FFFFFFFF8000
        FFFFFFFFFFFFFFFFFFFF8000FF8000FF8000FF8000FFFFFFFFFFFFFFFFFFFF80
        00FF8000000000FFFFFFFFFFFFFFFFFF0000FFFFFFFF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FFFFFFFF8000FF8000FF8000FF8000000000FF
        FFFFFFFFFFFFFFFF0000FFFFFFFF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FFFFFFFF8000FF8000FF8000FF8000000000FFFFFFFFFFFFFFFFFF
        0000FFFFFFFF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF8000000000FFFFFFFFFFFFFFFFFF0000FFFFFFFF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF8000000000FFFFFFFFFFFFFFFFFF0000FFFFFFFF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000000000FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF000000000000FFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbEditNameClick
    end
    object sbFileDel: TSpeedButton
      Left = 116
      Top = 3
      Width = 23
      Height = 23
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '
      Flat = True
      Glyph.Data = {
        F6000000424DF60000000000000076000000280000000F000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFF0FF0FFFFFFFFFF0F0F090FFFFFFFFF9F0F9990FFFFFFF0FF0F9999FFFFFF0
        9FF0FF9990FFFF09FFF0FFF9990FF099FFF0FFFF9990099FFFF0FFFFF99999FF
        FFF0FFFFF09990FFFFF0FFFF0999990FFFF0FF00999FF990FFF0F09999FFFF99
        0FF0F9999FFFFFF990F0F999FFFFFFFFF9F0FFFFFFFFFFFFFFF0}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbFileDelClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 31
    Width = 135
    Height = 403
    Align = alLeft
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object tv: TTreeView
      Left = 2
      Top = 2
      Width = 131
      Height = 399
      Align = alClient
      BevelInner = bvLowered
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HideSelection = False
      Indent = 19
      MultiSelectStyle = []
      ParentFont = False
      RowSelect = True
      ShowButtons = False
      ShowLines = False
      ShowRoot = False
      TabOrder = 0
      ToolTips = False
      OnChange = tvChange
      OnContextPopup = tvContextPopup
      OnExpanding = tvExpanding
      OnKeyDown = tvKeyDown
      OnKeyUp = tvKeyUp
    end
  end
  object XPManifest1: TXPManifest
    Left = 41
    Top = 50
  end
  object Op: TOpenDialog
    Filter = #1060#1072#1081#1083' NDX (*.ndx)|*.ndx|'#1060#1072#1081#1083' PDT (*.pdt)|*.pdt'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    OptionsEx = [ofExNoPlacesBar]
    Left = 8
    Top = 51
  end
end
