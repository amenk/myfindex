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
    Width = 420
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
      'Diese Version enthält keine Einschränkungen bezüglich der '
      'Funktionalität (*) und unterliegt keinen Testzeitraum-'
      'Beschränkungen.'
      
        '(*) aber: nach Registrierung verschwindet dieser Hinweis, und de' +
        'r '
      'Splash-Screen kann deaktiviert werden'
      ''
      'Falls du MyFindex jedoch regelmäßig nutzt und an der schnellen '
      
        'Weiterentwicklung und Verbesserung intressiert bist, solltest du' +
        ' self '
      'soft MyFindex registrieren. Außerdem MUSS MyFindex registriert '
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
    TabOrder = 2
  end
  object btnOk: TSpeedButton
    Left = 323
    Top = 232
    Width = 86
    Height = 25
    Caption = 'OK'
<<<<<<< Updated upstream
=======
    Kind = bkOK
>>>>>>> Stashed changes
  end
  object btnRegMe: TSpeedButton
    Left = 8
    Top = 233
    Width = 105
    Height = 25
    Caption = 'jetzt &registrieren'
    Default = True
    ModalResult = 6
    NumGlyphs = 2
  end
  object XPMenu: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = ANSI_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = True
    AutoDetect = False
    Active = True
    Left = 8
    Top = 8
  end
end
