object NoRegForm: TNoRegForm
  Left = 724
  Top = 522
  Width = 428
  Height = 294
  BorderIcons = []
  Caption = 'Freeware Version von MyFindex'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 409
    Height = 32
    Align = alTop
    Pen.Style = psClear
  end
  object Label8: TLabel
    Left = 9
    Top = 2
    Width = 303
    Height = 28
    Caption = 'MyFindex - Lizenzhinweis.'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10485760
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object btnOk: TSpeedButton
    Left = 323
    Top = 232
    Width = 86
    Height = 25
    Caption = 'OK'
  end
  object btnRegMe: TSpeedButton
    Left = 8
    Top = 233
    Width = 105
    Height = 25
    Caption = 'jetzt &registrieren'
    NumGlyphs = 2
  end
  object mLizenz: TMemo
    Left = 8
    Top = 40
    Width = 401
    Height = 177
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsItalic]
    Lines.Strings = (
      'Du benutzt die unregistrierte Freewareversion von MyFindex.'
      ''
      'Diese Version enth'#228'lt keine Einschr'#228'nkungen bez'#252'glich der '
      'Funktionalit'#228't (*) und unterliegt keinen Testzeitraum-'
      'Beschr'#228'nkungen.'
      
        '(*) aber: nach Registrierung verschwindet dieser Hinweis, und de' +
        'r '
      'Splash-Screen kann deaktiviert werden'
      ''
      'Falls du MyFindex jedoch regelm'#228#223'ig nutzt und an der schnellen '
      
        'Weiterentwicklung und Verbesserung intressiert bist, solltest du' +
        ' self '
      'soft MyFindex registrieren. Au'#223'erdem MUSS MyFindex registriert '
      'werden,'
      'solltest du es kommerziell nutzen wollen.'
      ''
      'Alexander Menk'
      ''
      'http://www.self-soft.de/'
      'http://reg.self-soft.de/')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
end
