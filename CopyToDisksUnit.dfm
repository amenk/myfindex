object frmCopyDisksUsed: TfrmCopyDisksUsed
  Left = 389
  Top = 106
  BorderStyle = bsToolWindow
  Caption = 'Benötigte Datenträger'
  ClientHeight = 183
  ClientWidth = 147
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 147
    Height = 183
    Align = alClient
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 0
    object lbDisks: TListBox
      Left = 5
      Top = 5
      Width = 137
      Height = 173
      ExtendedSelect = False
      ItemHeight = 13
      TabOrder = 0
    end
  end
end
