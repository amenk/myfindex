object frmListExport: TfrmListExport
  Left = 239
  Top = 197
  Width = 370
  Height = 384
  HelpContext = 4000
  Caption = 'Dateiliste exportieren'
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
  object gbBatch: TGroupBox
    Left = 8
    Top = 120
    Width = 345
    Height = 193
    HelpContext = 4100
    Caption = ' BATCH-Optionen '
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 64
      Width = 79
      Height = 13
      Caption = 'Befehl pro Datei:'
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 145
      Height = 13
      Caption = 'Befehl vor neuem Datenträger:'
    end
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 93
      Height = 13
      Caption = 'Befehle am Anfang:'
    end
    object Label4: TLabel
      Left = 16
      Top = 144
      Width = 84
      Height = 13
      Caption = 'Befehle am Ende:'
    end
    object mFirstCmd: TMemo
      Left = 168
      Top = 24
      Width = 153
      Height = 33
      HelpContext = 4101
      Lines.Strings = (
        '@echo off'
        'if "%1"=="" goto error'
        'goto start'
        ''
        ':error'
        
          'echo Bitte übergeben Sie als Parameter den Buchstaben des CD-ROM' +
          ' Laufwerks.'
        'goto ende'
        ''
        ':start')
      TabOrder = 0
      WordWrap = False
    end
    object mDiskCmd: TMemo
      Left = 168
      Top = 104
      Width = 153
      Height = 33
      HelpContext = 4103
      Lines.Strings = (
        'echo Bitte Datenträger {disk} in Laufwerk %1: einlegen!'
        'pause')
      TabOrder = 2
      WordWrap = False
    end
    object mFileCmd: TMemo
      Left = 168
      Top = 64
      Width = 153
      Height = 33
      Hint = 
        'Folgende Platzhalter sind möglich:'#13#10'{fn} Dateiname ohne Erweiter' +
        'ung "meinbild"'#13#10'{ext} Erweiterung z.B. "jpg"'#13#10'{path} Pfad z.B. "' +
        '\Bilder\Eigene"'#13#10'{disk} Disk-Label z.B. "Bilder"'
      HelpContext = 4102
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      WordWrap = False
    end
    object mLastCmd: TMemo
      Left = 168
      Top = 144
      Width = 153
      Height = 33
      HelpContext = 4104
      Lines.Strings = (
        ':ende')
      TabOrder = 3
      WordWrap = False
    end
  end
  object gbDateiListe: TGroupBox
    Left = 8
    Top = 120
    Width = 345
    Height = 193
    HelpContext = 4200
    Caption = ' Dateiliste '
    TabOrder = 1
    object gbSpalten: TGroupBox
      Left = 16
      Top = 16
      Width = 121
      Height = 73
      HelpContext = 4210
      Caption = ' Spalten '
      TabOrder = 0
      object chkS1: TCheckBox
        Left = 8
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Name'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object chkS2: TCheckBox
        Left = 8
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Größe'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object chkS3: TCheckBox
        Left = 8
        Top = 48
        Width = 97
        Height = 17
        Caption = 'Geändert am'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
    end
    object gbOpt: TGroupBox
      Left = 144
      Top = 16
      Width = 177
      Height = 73
      HelpContext = 4220
      Caption = ' Optionen '
      TabOrder = 1
      object chkOReduce: TCheckBox
        Left = 8
        Top = 32
        Width = 153
        Height = 17
        HelpContext = 4222
        Caption = 'Dateinamen verkürzen'
        TabOrder = 1
      end
      object chkOGroup: TCheckBox
        Left = 8
        Top = 16
        Width = 153
        Height = 17
        HelpContext = 4221
        Caption = 'Gruppieren'
        TabOrder = 0
        OnClick = chkOGroupClick
      end
      object chkOSizeInByte: TCheckBox
        Left = 8
        Top = 48
        Width = 153
        Height = 17
        HelpContext = 4223
        Caption = 'Dateigröße in Byte'
        TabOrder = 2
      end
    end
    object gbLayout: TGroupBox
      Left = 16
      Top = 96
      Width = 305
      Height = 81
      HelpContext = 4230
      Caption = ' Layout '
      TabOrder = 2
      object Label5: TLabel
        Left = 8
        Top = 52
        Width = 100
        Height = 13
        Caption = 'Spaltentrennzeichen:'
      end
      object edtColSep: TEdit
        Left = 112
        Top = 44
        Width = 25
        Height = 21
        HelpContext = 4235
        TabOrder = 4
        Text = ' '
      end
      object chkColSize: TCheckBox
        Left = 8
        Top = 24
        Width = 121
        Height = 17
        HelpContext = 4231
        Caption = 'feste Spaltenbreiten:'
        TabOrder = 0
      end
      object seC1: TRxSpinEdit
        Tag = 1
        Left = 152
        Top = 20
        Width = 41
        Height = 21
        HelpContext = 4232
        ButtonKind = bkStandard
        Value = 45
        TabOrder = 1
      end
      object seC2: TRxSpinEdit
        Tag = 1
        Left = 200
        Top = 20
        Width = 41
        Height = 21
        HelpContext = 4232
        ButtonKind = bkStandard
        Value = 12
        TabOrder = 2
      end
      object seC3: TRxSpinEdit
        Tag = 1
        Left = 248
        Top = 20
        Width = 41
        Height = 21
        HelpContext = 4232
        ButtonKind = bkStandard
        Value = 18
        TabOrder = 3
      end
      object chkQuote: TCheckBox
        Left = 144
        Top = 48
        Width = 153
        Height = 17
        HelpContext = 4236
        Caption = 'Text in Anführungszeichen'
        TabOrder = 5
      end
    end
  end
  object rgTyp: TRadioGroup
    Left = 8
    Top = 8
    Width = 345
    Height = 105
    HelpContext = 4001
    Caption = ' Listentyp '
    Columns = 2
    Items.Strings = (
      'Dateiliste normal'
      'Dateiliste (nach Name)'
      'Dateiliste (nach Datum)'
      'Dateiliste (nach Größe)'
      'Dateiliste (nach Dateityp)'
      'Copy-Batch'
      'Move-Batch'
      'Delete-Batch')
    TabOrder = 0
    OnClick = rgTypClick
  end
  object btnOk: TBitBtn
    Left = 88
    Top = 322
    Width = 86
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 3
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
    Left = 186
    Top = 322
    Width = 86
    Height = 25
    TabOrder = 4
    Kind = bkCancel
  end
end
