object frmRepair: TfrmRepair
  Left = 445
  Top = 194
  HelpContext = 7000
  BorderStyle = bsDialog
  Caption = 'Datenbank reparieren'
  ClientHeight = 168
  ClientWidth = 204
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 186
    Height = 26
    Caption = 
      'Sollte die Reparatur nicht funktionieren,'#13#10'bitte BDE-DPK-50.EXE ' +
      'installieren.'
  end
  object lblBDE5: TLabel
    Left = 31
    Top = 109
    Width = 86
    Height = 13
    Cursor = crHandPoint
    Caption = 'BDE-DPK-50.EXE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = lblBDE5Click
  end
  object gb1: TGroupBox
    Left = 8
    Top = 16
    Width = 185
    Height = 73
    Caption = ' Datenbanken '
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 52
      Height = 13
      Caption = 'Sammlung:'
    end
    object cbCol: TComboBox
      Left = 16
      Top = 40
      Width = 153
      Height = 21
      HelpContext = 7001
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object btnOk: TBitBtn
    Left = 8
    Top = 134
    Width = 86
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = btnOkClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object btnAbort: TBitBtn
    Left = 106
    Top = 134
    Width = 86
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
  object gb2: TGroupBox
    Left = 8
    Top = 168
    Width = 185
    Height = 81
    Caption = ' Fortschritt '
    TabOrder = 3
    object lblFile_: TLabel
      Left = 14
      Top = 19
      Width = 28
      Height = 13
      Caption = 'Datei:'
    end
    object lblFile: TLabel
      Left = 49
      Top = 19
      Width = 119
      Height = 13
      AutoSize = False
    end
    object lblStatus: TLabel
      Left = 8
      Top = 40
      Width = 131
      Height = 13
      Caption = 'Datenbank neu aufbauen...'
    end
    object pb: TProgressBar
      Left = 8
      Top = 56
      Width = 169
      Height = 16
      Min = 0
      Max = 100
      TabOrder = 0
    end
  end
end
