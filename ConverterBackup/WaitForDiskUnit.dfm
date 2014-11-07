object frmWaitForDisk: TfrmWaitForDisk
  Left = 375
  Top = 539
  Width = 419
  Height = 224
  BorderIcons = [biMinimize]
  Caption = 'frmWaitForDisk'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 0
    Top = 0
    Width = 401
    Height = 27
    Align = alTop
    Pen.Style = psClear
  end
  object Label5: TLabel
    Left = 9
    Top = 2
    Width = 197
    Height = 23
    Caption = 'Datentr'#228'ger ben'#246'tigt '
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 184
    Top = 36
    Width = 126
    Height = 13
    Caption = 'Bitte Datentr'#228'ger einlegen:'
  end
  object lblDisk: TLabel
    Left = 184
    Top = 52
    Width = 217
    Height = 13
    AutoSize = False
    Caption = 'lblDisk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object fbCancel: TSpeedButton
    Left = 312
    Top = 164
    Width = 89
    Height = 25
    Caption = 'Abbrechen'
  end
  object fbLWs: TSpeedButton
    Left = 8
    Top = 164
    Width = 89
    Height = 25
    Caption = 'Laufwerke...'
    OnClick = fbLWsClick
  end
  object fbOK: TSpeedButton
    Left = 216
    Top = 164
    Width = 89
    Height = 25
    Caption = 'OK'
    OnClick = fbOKClick
  end
  object mNote: TMemo
    Left = 184
    Top = 72
    Width = 217
    Height = 81
    Lines.Strings = (
      'keine Datentr'#228'gernotiz')
    ReadOnly = True
    TabOrder = 0
  end
end
