object Form1: TForm1
  Left = 334
  Top = 136
  Width = 928
  Height = 480
  Caption = 'FreePad'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 424
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'NewFile'
      object RichEdit1: TRichEdit
        Left = 0
        Top = 0
        Width = 904
        Height = 396
        Align = alClient
        PlainText = True
        PopupMenu = PopupMenu1
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 884
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N18: TMenuItem
        Caption = #1053#1086#1074#1099#1081
        ShortCut = 16462
        OnClick = N18Click
      end
      object N5: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        ShortCut = 16463
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 16467
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        ShortCut = 16471
        OnClick = N8Click
      end
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      object N9: TMenuItem
        Action = EditCopy1
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      end
      object N10: TMenuItem
        Action = EditCut1
        Caption = #1042#1099#1088#1077#1079#1072#1090#1100
      end
      object N11: TMenuItem
        Action = EditPaste1
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      end
      object N12: TMenuItem
        Action = EditUndo1
        Caption = #1054#1090#1084#1077#1085#1072
      end
      object N17: TMenuItem
        Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
        ShortCut = 16449
        OnClick = N17Click
      end
      object N19: TMenuItem
        Caption = #1055#1077#1088#1077#1085#1086#1089' '#1089#1090#1088#1086#1082
        Checked = True
        OnClick = N19Click
      end
    end
    object N3: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      object N13: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1072#1090#1100
        ShortCut = 16464
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1087#1088#1080#1085#1090#1077#1088
        OnClick = N14Click
      end
    end
    object N4: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      object N15: TMenuItem
        Caption = #1042#1077#1088#1089#1080#1103
        OnClick = N15Click
      end
      object N16: TMenuItem
        Caption = #1055#1086#1084#1086#1097#1100
        ShortCut = 112
        OnClick = N16Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 856
  end
  object SaveDialog1: TSaveDialog
    Left = 824
  end
  object PrintDialog1: TPrintDialog
    Left = 800
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 776
  end
  object PopupMenu1: TPopupMenu
    Left = 744
    object Copy1: TMenuItem
      Action = EditCut1
      Caption = #1042#1099#1088#1077#1079#1072#1090#1100
    end
    object Cut1: TMenuItem
      Action = EditCopy1
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
    end
    object Paste1: TMenuItem
      Action = EditPaste1
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
    end
    object SelectAll1: TMenuItem
      Action = EditSelectAll1
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
    end
  end
  object ActionList1: TActionList
    Left = 720
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
  end
end
