object frmExtSelect: TfrmExtSelect
  Left = 943
  Top = 598
  BorderStyle = bsDialog
  ClientHeight = 185
  ClientWidth = 201
  Color = clBtnFace
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
    Width = 201
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Ordnerauswahl'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnMouseDown = pnlHeadMouseDown
    DesignSize = (
      201
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
      Font.Style = []
      ParentFont = False
    end
    object btnOK: TSpeedButton
      Left = 161
      Top = 2
      Width = 38
      Height = 20
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object lvListSel: TListView
    Left = 0
    Top = 24
    Width = 201
    Height = 161
    Align = alClient
    Columns = <
      item
        Caption = 'Liste'
        Width = 125
      end
      item
        Alignment = taRightJustify
        Caption = 'Dateien'
        Width = 60
      end>
    ColumnClick = False
    HideSelection = False
    RowSelect = True
    ParentShowHint = False
    ShowHint = False
    SortType = stText
    TabOrder = 1
    ViewStyle = vsReport
    Visible = False
  end
end
