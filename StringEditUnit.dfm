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
    Width = 252
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
    object btnCancel: TFlatButton
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
      TabOrder = 0
      BevelWidth = 1
      BevelWidthM = 2
      BevelWidthDown = 1
      Kind = bkCancel
    end
    object btnOK: TFlatButton
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
      TabOrder = 1
      BevelWidth = 1
      BevelWidthM = 2
      BevelWidthDown = 1
      Kind = bkOK
    end
  end
  object p1: TPanel
    Left = 0
    Top = 24
    Width = 252
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
    Width = 252
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
    Width = 252
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
      Caption = 'Regulärer Ausdruck'
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
    Width = 252
    Height = 164
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 48
      Width = 176
      Height = 13
      Caption = 'Diese Begriffe MÜSSEN vorkommen:'
    end
    object Label2: TLabel
      Left = 8
      Top = 91
      Width = 211
      Height = 13
      Caption = 'Diese Begriffe DÜRFEN NICHT vorkommen:'
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
    object cedtAND: TComboEdit
      Left = 8
      Top = 64
      Width = 234
      Height = 21
      Hint = 'Alt+Nach unten öffnet den Begriffseditor.'
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
      OnButtonClick = cedtButtonClick
    end
    object cedtNOT: TComboEdit
      Left = 8
      Top = 107
      Width = 234
      Height = 21
      Hint = 'Alt+Nach unten öffnet den Begriffseditor.'
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
      OnButtonClick = cedtButtonClick
    end
    object cedtOR: TComboEdit
      Left = 8
      Top = 21
      Width = 234
      Height = 21
      Hint = 'Alt+Nach unten öffnet den Begriffseditor.'
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
      OnButtonClick = cedtButtonClick
    end
    object tbLevel: TTrackBar
      Left = 148
      Top = 135
      Width = 58
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Max = 3
      Orientation = trHorizontal
      PageSize = 1
      Frequency = 1
      Position = 0
      SelEnd = 0
      SelStart = 0
      TabOrder = 3
      ThumbLength = 10
      TickMarks = tmBottomRight
      TickStyle = tsAuto
    end
  end
  object pnlWildcard: TPanel
    Left = 0
    Top = 227
    Width = 252
    Height = 63
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label3: TLabel
      Left = 8
      Top = 5
      Width = 142
      Height = 13
      Caption = 'Suchtext (Platzhalter möglich):'
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
    Width = 252
    Height = 63
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
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
      Caption = 'Syntax von Regulären Ausdrücken (Online)'
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
