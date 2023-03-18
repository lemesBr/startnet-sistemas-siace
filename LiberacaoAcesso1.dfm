object FormLiberacaoNew: TFormLiberacaoNew
  Left = 394
  Top = 91
  Width = 592
  Height = 575
  Caption = 'Libera'#231#227'o de Acessos'
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 9
    Top = 3
    Width = 149
    Height = 25
    Caption = 'Carregar Menus'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object TreeView1: TTreeView
    Left = -16
    Top = 29
    Width = 589
    Height = 501
    Indent = 19
    TabOrder = 1
  end
end
