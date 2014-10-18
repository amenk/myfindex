object frmBegriffe: TfrmBegriffe
  Left = 812
  Top = 349
  BorderStyle = bsDialog
  Caption = 'frmBegriffe'
  ClientHeight = 208
  ClientWidth = 216
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCount: TLabel
    Left = 96
    Top = 62
    Width = 106
    Height = 13
    Alignment = taRightJustify
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
  end
  object pnlHead: TPanel
    Left = 0
    Top = 0
    Width = 216
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Begriffe'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnMouseDown = pnlHeadMouseDown
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
      TabOrder = 0
      BevelWidth = 1
      BevelWidthM = 2
      BevelWidthDown = 1
      Kind = bkCancel
    end
    object btnOK: TSpeedButton
      Left = 176
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
  object lbList: TListBox
    Left = 8
    Top = 80
    Width = 199
    Height = 120
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    Sorted = True
    TabOrder = 3
    OnClick = lbListClick
    OnDblClick = lbListDblClick
  end
  object edtString: TEdit
    Left = 8
    Top = 32
    Width = 199
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnChange = edtStringChange
    OnKeyPress = edtStringKeyPress
  end
  object fbDel: TSpeedButton
    Left = 52
    Top = 58
    Width = 38
    Height = 20
    Hint = 'aus Liste entfernen'
    Enabled = False
    TabOrder = 2
    OnClick = fbDelClick
    BevelWidth = 1
    BevelWidthM = 2
    BevelWidthDown = 1
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      300033FFFFFF3333377739999993333333333777777F3333333F399999933333
      3300377777733333337733333333333333003333333333333377333333333333
      3333333333333333333F333333333333330033333F33333333773333C3333333
      330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
      333333377F33333333FF3333C333333330003333733333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object fbAdd: TSpeedButton
    Left = 8
    Top = 58
    Width = 38
    Height = 20
    Hint = 'zu Liste hinzufügen'
    TabOrder = 1
    OnClick = fbAddClick
    BevelWidth = 1
    BevelWidthM = 2
    BevelWidthDown = 1
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333FF33333333FF333993333333300033377F3333333777333993333333
      300033F77FFF3333377739999993333333333777777F3333333F399999933333
      33003777777333333377333993333333330033377F3333333377333993333333
      3333333773333333333F333333333333330033333333F33333773333333C3333
      330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
      333333333337733333FF3333333C333330003333333733333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
end
