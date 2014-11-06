object frmStringEdit: TfrmStringEdit
  Left = 880
  Top = 333
  Width = 260
  Height = 397
  Color = clBtnFace
  Constraints.MinWidth = 245
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHead: TPanel
    Left = 0
    Top = 0
    Width = 227
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Suchtexteditor'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnMouseDown = pnlHeadMouseDown
    DesignSize = (
      227
      24)
    object btnCancel: TSpeedButton
      Left = 2
      Top = 2
      Width = 36
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnOK: TSpeedButton
      Left = 212
      Top = 2
      Width = 38
      Height = 20
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object p1: TPanel
    Left = 0
    Top = 24
    Width = 227
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object rbBegriffe: TRadioButton
      Tag = 1
      Left = 8
      Top = 4
      Width = 177
      Height = 15
      Cursor = crHandPoint
      Caption = 'Suche nach einzelnen Begriffen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 0
      OnClick = rbGenClick
    end
  end
  object p2: TPanel
    Left = 0
    Top = 210
    Width = 227
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object rbWildcard: TRadioButton
      Tag = 2
      Left = 8
      Top = 0
      Width = 177
      Height = 17
      Cursor = crHandPoint
      Caption = 'Wildcard-Suche'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 0
      OnClick = rbGenClick
    end
  end
  object p3: TPanel
    Left = 0
    Top = 290
    Width = 227
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object rbRegExp: TRadioButton
      Tag = 3
      Left = 8
      Top = 0
      Width = 177
      Height = 17
      Cursor = crHandPoint
      Caption = 'Regul'#228'rer Ausdruck'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 0
      OnClick = rbGenClick
    end
  end
  object pnlBegriffe: TPanel
    Left = 0
    Top = 46
    Width = 227
    Height = 164
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      227
      164)
    object Label1: TLabel
      Left = 8
      Top = 48
      Width = 176
      Height = 13
      Caption = 'Diese Begriffe M'#220'SSEN vorkommen:'
    end
    object Label2: TLabel
      Left = 8
      Top = 91
      Width = 211
      Height = 13
      Caption = 'Diese Begriffe D'#220'RFEN NICHT vorkommen:'
    end
    object Label6: TLabel
      Left = 8
      Top = 5
      Width = 217
      Height = 13
      Caption = 'Mind. einer dieser Begriffe MUSS vorkommen:'
    end
    object Label7: TLabel
      Left = 8
      Top = 136
      Width = 69
      Height = 13
      Caption = 'Fehlertoleranz:'
    end
    object Label8: TLabel
      Left = 120
      Top = 136
      Width = 22
      Height = 12
      Caption = 'keine'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 214
      Top = 136
      Width = 20
      Height = 12
      Anchors = [akTop, akRight]
      Caption = 'hoch'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object cedtAND: TEdit
      Left = 8
      Top = 64
      Width = 234
      Height = 21
      Hint = 'Alt+Nach unten '#246'ffnet den Begriffseditor.'
      Anchors = [akLeft, akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object cedtNOT: TEdit
      Left = 8
      Top = 107
      Width = 234
      Height = 21
      Hint = 'Alt+Nach unten '#246'ffnet den Begriffseditor.'
      Anchors = [akLeft, akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object cedtOR: TEdit
      Left = 8
      Top = 21
      Width = 234
      Height = 21
      Hint = 'Alt+Nach unten '#246'ffnet den Begriffseditor.'
      Anchors = [akLeft, akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object tbLevel: TTrackBar
      Left = 148
      Top = 135
      Width = 58
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Max = 3
      PageSize = 1
      TabOrder = 3
      ThumbLength = 10
    end
  end
  object pnlWildcard: TPanel
    Left = 0
    Top = 227
    Width = 227
    Height = 63
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      227
      63)
    object Label3: TLabel
      Left = 8
      Top = 5
      Width = 142
      Height = 13
      Caption = 'Suchtext (Platzhalter m'#246'glich):'
    end
    object Label4: TLabel
      Left = 10
      Top = 45
      Width = 234
      Height = 12
      Anchors = [akTop]
      Caption = '* = beliebige Anzahl von Zeichen, ? = genau ein Zeichen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edtWildcard: TEdit
      Left = 8
      Top = 21
      Width = 234
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object pnlRegExp: TPanel
    Left = 0
    Top = 307
    Width = 227
    Height = 63
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    DesignSize = (
      227
      63)
    object Label5: TLabel
      Left = 8
      Top = 5
      Width = 48
      Height = 13
      Caption = 'Ausdruck:'
    end
    object lblSyntaxLink: TLabel
      Left = 10
      Top = 45
      Width = 181
      Height = 12
      Cursor = crHandPoint
      Anchors = [akTop]
      Caption = 'Syntax von Regul'#228'ren Ausdr'#252'cken (Online)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lblSyntaxLinkClick
    end
    object edtRegExp: TEdit
      Left = 8
      Top = 21
      Width = 234
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
end
