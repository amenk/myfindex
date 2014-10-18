object frmConfig: TfrmConfig
  Left = 456
  Top = 246
  HelpContext = 6000
  BorderStyle = bsDialog
  Caption = 'Einstellungen'
  ClientHeight = 210
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Tag = 131
    Left = 144
    Top = 8
    Width = 265
    Height = 161
    Caption = ' Schriftfarben in der Dateiliste '
    TabOrder = 11
    object Label19: TLabel
      Left = 16
      Top = 24
      Width = 231
      Height = 13
      Caption = 'Klicke auf ein Feld um die Schriftfarbe zu ändern.'
    end
    object pnlColAv: TPanel
      Left = 16
      Top = 59
      Width = 233
      Height = 25
      BevelOuter = bvLowered
      Caption = '...nur auf eingelegtem Datenträger verfügbar'
      Color = clWindow
      TabOrder = 0
      OnClick = ColorPanelClick
    end
    object pnlColGray: TPanel
      Left = 16
      Top = 99
      Width = 233
      Height = 25
      BevelOuter = bvLowered
      Caption = '...nicht verfügbar (Datenträger einlegen)'
      Color = clWindow
      TabOrder = 1
      OnClick = ColorPanelClick
    end
    object pnlColCache: TPanel
      Left = 16
      Top = 83
      Width = 233
      Height = 25
      BevelOuter = bvLowered
      Caption = '...in MyFiles Cache vorhanden'
      Color = clWindow
      TabOrder = 2
      Visible = False
      OnClick = ColorPanelClick
    end
  end
  object gb212: TGroupBox
    Tag = 212
    Left = 144
    Top = 8
    Width = 265
    Height = 161
    Caption = ' Hörproben (MP3-Dateien)'
    TabOrder = 8
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 39
      Height = 13
      Caption = 'Dauer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 64
      Top = 48
      Width = 5
      Height = 13
      Caption = 's'
    end
    object Label4: TLabel
      Left = 104
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Qualität:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 8
      Top = 80
      Width = 131
      Height = 13
      Caption = 'Kompressionsparamter:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object seDur: TJvSpinEdit
      Tag = 1
      Left = 16
      Top = 40
      Width = 41
      Height = 21
      HelpContext = 91111
      ButtonKind = bkStandard
      TabOrder = 0
    end
    object cbQual: TComboBox
      Left = 112
      Top = 40
      Width = 73
      Height = 21
      HelpContext = 9112
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        '8kbps'
        '16kbps'
        '24kbps'
        '32kbps'
        '40kbps'
        '48kbps'
        '56kbps'
        '64kbps')
    end
    object edtParam: TEdit
      Left = 16
      Top = 96
      Width = 225
      Height = 21
      HelpContext = 9113
      TabOrder = 2
      Text = '--mp3input -m mono -a -b %0:s -o %1:s %2:s'
    end
  end
  object gb22: TGroupBox
    Tag = 22
    Left = 144
    Top = 8
    Width = 265
    Height = 161
    Caption = ' PlugIns'
    TabOrder = 9
    Visible = False
    object lblNotLoad: TLabel
      Left = 8
      Top = 130
      Width = 250
      Height = 26
      Caption = 
        'Dieses PlugIn ist momentan nicht geladen.'#13#10'Es wird ggf. nach sch' +
        'ließen dieses Fensters geladen.'
      Visible = False
    end
    object clbPlugIns: TCheckListBox
      Left = 8
      Top = 16
      Width = 249
      Height = 113
      ItemHeight = 13
      TabOrder = 0
      OnClick = clbPlugInsClick
    end
    object fbAboutPlugin: TSpeedButton
      Left = 56
      Top = 133
      Width = 92
      Height = 22
      Cancel = True
      Caption = 'Über...'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = fbAboutPluginClick
      BevelWidth = 1
      BevelWidthM = 2
      BevelWidthDown = 1
      NumGlyphs = 2
    end
    object fbConfigPlugin: TSpeedButton
      Left = 155
      Top = 133
      Width = 94
      Height = 22
      Cancel = True
      Caption = 'Konfigurieren...'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = fbConfigPluginClick
      BevelWidth = 1
      BevelWidthM = 2
      BevelWidthDown = 1
      NumGlyphs = 2
    end
  end
  object gb211: TGroupBox
    Tag = 211
    Left = 144
    Top = 8
    Width = 265
    Height = 161
    Caption = ' Bilder '
    TabOrder = 7
    object Label13: TLabel
      Left = 8
      Top = 24
      Width = 178
      Height = 13
      Caption = 'Maximale Abmessung (in Pixel):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 17
      Top = 58
      Width = 30
      Height = 13
      Caption = 'Breite:'
    end
    object Label1: TLabel
      Left = 122
      Top = 57
      Width = 29
      Height = 13
      Caption = 'Höhe:'
    end
    object Label9: TLabel
      Left = 8
      Top = 88
      Width = 49
      Height = 13
      Caption = 'Qualität:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 17
      Top = 127
      Width = 73
      Height = 24
      Caption = 'niedrige Qualität'#13#10'viel Speicherplatz'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 165
      Top = 127
      Width = 81
      Height = 24
      Alignment = taRightJustify
      Caption = 'hohe Qualität'#13#10'wenig Speicherplatz'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object seWidth: TJvSpinEdit
      Tag = 1
      Left = 53
      Top = 50
      Width = 44
      Height = 21
      HelpContext = 9121
      ButtonKind = bkStandard
      TabOrder = 0
    end
    object seHeight: TJvSpinEdit
      Tag = 1
      Left = 157
      Top = 50
      Width = 44
      Height = 21
      HelpContext = 9122
      ButtonKind = bkStandard
      TabOrder = 1
    end
    object tbQual: TTrackBar
      Left = 16
      Top = 108
      Width = 233
      Height = 18
      HelpContext = 9123
      Max = 100
      Orientation = trHorizontal
      PageSize = 5
      Frequency = 5
      Position = 0
      SelEnd = 0
      SelStart = 0
      TabOrder = 2
      ThumbLength = 9
      TickMarks = tmBottomRight
      TickStyle = tsAuto
    end
  end
  object GroupBox3: TGroupBox
    Tag = 111
    Left = 144
    Top = 8
    Width = 265
    Height = 161
    Caption = ' Vorschau '
    TabOrder = 12
    object Label20: TLabel
      Left = 8
      Top = 24
      Width = 74
      Height = 13
      Caption = 'Bildvorschau'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 17
      Top = 74
      Width = 30
      Height = 13
      Caption = 'Breite:'
    end
    object Label22: TLabel
      Left = 122
      Top = 73
      Width = 29
      Height = 13
      Caption = 'Höhe:'
    end
    object Label23: TLabel
      Left = 17
      Top = 42
      Width = 218
      Height = 13
      Caption = 'Größe der Einzelbilder in der Thumbnailansicht'
    end
    object Label24: TLabel
      Left = 73
      Top = 98
      Width = 110
      Height = 13
      Caption = '(MyFiles Neustart nötig)'
    end
    object sePrevWidth: TJvSpinEdit
      Tag = 1
      Left = 53
      Top = 66
      Width = 44
      Height = 21
      HelpContext = 9121
      ButtonKind = bkStandard
      TabOrder = 0
    end
    object sePrevHeight: TJvSpinEdit
      Tag = 1
      Left = 157
      Top = 66
      Width = 44
      Height = 21
      HelpContext = 9122
      ButtonKind = bkStandard
      TabOrder = 1
    end
  end
  object gb11: TGroupBox
    Tag = 11
    Left = 144
    Top = 8
    Width = 265
    Height = 161
    Caption = ' Oberfläche '
    TabOrder = 6
    object lblHinweis: TLabel
      Left = 113
      Top = 24
      Width = 140
      Height = 36
      Caption = 
        'Die Deaktivierung des Splash-'#13#10'screens ist nur in der registrier' +
        'ten'#13#10'Version möglich.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label15: TLabel
      Left = 8
      Top = 24
      Width = 85
      Height = 13
      Caption = 'Programmstart:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 72
      Width = 48
      Height = 13
      Caption = 'Toolbar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ckSplash: TCheckBox
      Left = 16
      Top = 40
      Width = 97
      Height = 17
      Caption = 'SplashScreen'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object ckToolbarShowCaptions: TCheckBox
      Left = 16
      Top = 88
      Width = 201
      Height = 17
      Caption = 'Beschriftung (MyFiles Neustart nötig)'
      TabOrder = 1
    end
    object ckOfficeXP: TCheckBox
      Left = 8
      Top = 136
      Width = 65
      Height = 17
      Caption = 'XPStyle'
      TabOrder = 3
      OnClick = ckOfficeXPClick
    end
    object ckToolbarPicture: TCheckBox
      Left = 16
      Top = 104
      Width = 206
      Height = 17
      Caption = 'Hintergrundbild (MyFiles Neustart nötig)'
      TabOrder = 2
    end
    object ckOfficeXPGrad: TCheckBox
      Left = 104
      Top = 136
      Width = 145
      Height = 17
      Caption = 'Menüs mit Farbverlauf'
      TabOrder = 4
    end
  end
  object gb12: TGroupBox
    Tag = 12
    Left = 144
    Top = 8
    Width = 265
    Height = 161
    Caption = ' Shellintergration '
    TabOrder = 4
    object ckProt: TCheckBox
      Left = 16
      Top = 24
      Width = 129
      Height = 17
      HelpContext = 9210
      Caption = '"myfiles:" Protokoll'
      State = cbGrayed
      TabOrder = 0
      OnClick = ckProtClick
      OnEnter = ckProtEnter
    end
    object ckStartMen: TCheckBox
      Left = 16
      Top = 48
      Width = 129
      Height = 17
      HelpContext = 9220
      Caption = 'Startmenüeintrag'
      TabOrder = 1
    end
  end
  object gb1: TGroupBox
    Tag = 1
    Left = 144
    Top = 8
    Width = 265
    Height = 161
    Caption = ' Einstellungen '
    TabOrder = 5
    object Label7: TLabel
      Left = 146
      Top = 42
      Width = 42
      Height = 13
      Caption = 'Einträge:'
    end
    object Label11: TLabel
      Left = 8
      Top = 24
      Width = 73
      Height = 13
      Caption = 'Adressleiste:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 8
      Top = 72
      Width = 123
      Height = 13
      Caption = 'Sammlung beim Start:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ckHist: TCheckBox
      Left = 18
      Top = 41
      Width = 103
      Height = 16
      HelpContext = 9210
      Caption = 'Verlauf speichern'
      TabOrder = 0
    end
    object seHist: TJvSpinEdit
      Tag = 1
      Left = 195
      Top = 37
      Width = 38
      Height = 21
      HelpContext = 9121
      ButtonKind = bkStandard
      TabOrder = 1
    end
    object cbDefCol: TComboBox
      Left = 16
      Top = 92
      Width = 233
      Height = 21
      HelpContext = 9300
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
    end
    object ckFastSwitch: TCheckBox
      Left = 8
      Top = 128
      Width = 252
      Height = 17
      Caption = 'Registerkartenwechsel zeigt Inhalt an (fastswitch)'
      TabOrder = 3
    end
  end
  object GroupBox1: TGroupBox
    Tag = 13
    Left = 144
    Top = 8
    Width = 265
    Height = 161
    Caption = ' MyFiles Cache '
    TabOrder = 10
    object Label16: TLabel
      Left = 16
      Top = 64
      Width = 69
      Height = 13
      Caption = 'Cache Ordner:'
    end
    object Label17: TLabel
      Left = 18
      Top = 109
      Width = 204
      Height = 36
      Anchors = [akTop]
      Caption = 
        '$myfiles'#9'der MyFiles-Ordner'#13#10'$col'#9#9'der Name der Quell-Sammlung'#13#10 +
        '$disk'#9#9'der Name des Quell-Datenträgers'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 16
      Top = 24
      Width = 213
      Height = 26
      Caption = 
        'Gib hier den Ordner an, in dem Dateien auf'#13#10'Wunsch zwischengespe' +
        'ichert werden sollen.'
    end
    object Edit1: TEdit
      Left = 16
      Top = 80
      Width = 233
      Height = 21
      TabOrder = 0
      Text = '$myfiles\Cache\$col\$disk\'
    end
  end
  object GroupBox4: TGroupBox
    Tag = 21
    Left = 144
    Top = 8
    Width = 265
    Height = 161
    Caption = ' Eintrags-Infos'
    TabOrder = 13
    Visible = False
    object Label25: TLabel
      Left = 16
      Top = 24
      Width = 136
      Height = 13
      Caption = 'Standard-Eigenschaftsfelder:'
    end
    object Label26: TLabel
      Left = 16
      Top = 64
      Width = 59
      Height = 13
      Caption = 'Datenträger:'
    end
    object Label27: TLabel
      Left = 16
      Top = 96
      Width = 35
      Height = 13
      Caption = 'Ordner:'
    end
    object Label29: TLabel
      Left = 16
      Top = 128
      Width = 40
      Height = 13
      Caption = 'Dateien:'
    end
    object cedtDisk: TComboEdit
      Left = 84
      Top = 57
      Width = 169
      Height = 21
      Hint = 'Alt+Nach unten öffnet den Eigenschaftseditor.'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Anchors = [akLeft, akTop, akRight]
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnButtonClick = cedtDiskButtonClick
    end
    object cedtFolder: TComboEdit
      Left = 84
      Top = 89
      Width = 169
      Height = 21
      Hint = 'Alt+Nach unten öffnet den Eigenschaftseditor.'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Anchors = [akLeft, akTop, akRight]
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnButtonClick = cedtDiskButtonClick
    end
    object cedtFile: TComboEdit
      Left = 84
      Top = 121
      Width = 169
      Height = 21
      Hint = 'Alt+Nach unten öffnet den Eigenschaftseditor.'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Anchors = [akLeft, akTop, akRight]
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnButtonClick = cedtDiskButtonClick
    end
  end
  object btnOk: TSpeedButton
    Left = 144
    Top = 176
    Width = 86
    Height = 26
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = btnOkClick
    BevelWidth = 1
    BevelWidthM = 2
    BevelWidthDown = 1
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
  object btnAbort: TSpeedButton
    Left = 240
    Top = 176
    Width = 86
    Height = 26
    Caption = 'Abbrechen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    BevelWidth = 1
    BevelWidthM = 2
    BevelWidthDown = 1
    Kind = bkCancel
  end
  object btnReset: TSpeedButton
    Left = 336
    Top = 176
    Width = 73
    Height = 26
    Caption = 'Reset'
    TabOrder = 2
    OnClick = btnResetClick
    BevelWidth = 1
    BevelWidthM = 2
    BevelWidthDown = 1
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
      33333333333F8888883F33330000324334222222443333388F3833333388F333
      000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
      F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
      223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
      3338888300003AAAAAAA33333333333888888833333333330000333333333333
      333333333333333333FFFFFF000033333333333344444433FFFF333333888888
      00003A444333333A22222438888F333338F3333800003A2243333333A2222438
      F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
      22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
      33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
      3333333333338888883333330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object tv: TTreeView
    Left = 8
    Top = 8
    Width = 129
    Height = 193
    HideSelection = False
    HotTrack = True
    Indent = 19
    ReadOnly = True
    TabOrder = 3
    OnChange = tvChange
    Items.Data = {
      0200000026000000000000000000000001000000FFFFFFFF0000000003000000
      0D45696E7374656C6C756E67656E2300000000000000000000000B000000FFFF
      FFFF00000000010000000A4F626572666CE46368652100000000000000000000
      006F000000FFFFFFFF000000000000000008566F7273636861751E0000000000
      0000000000000C000000FFFFFFFF0000000000000000055368656C6C1F000000
      000000000000000083000000FFFFFFFF00000000000000000646617262656E27
      000000000000000000000015000000FFFFFFFF00000000020000000E45696E74
      726167732D496E666F7320000000000000000000000016000000FFFFFFFF0000
      00000000000007506C7567496E73210000000000000000000000FFFFFFFFFFFF
      FFFF000000000200000008566F7273636861751F0000000000000000000000D3
      000000FFFFFFFF00000000000000000642696C64657221000000000000000000
      0000D4000000FFFFFFFF00000000000000000848F67270726F6265}
  end
  object ColorDialog: TColorDialog
    Ctl3D = True
    Left = 376
    Top = 16
  end
end
