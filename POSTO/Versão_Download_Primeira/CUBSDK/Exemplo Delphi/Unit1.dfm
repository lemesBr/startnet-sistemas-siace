object Form1: TForm1
  Left = 81
  Top = 212
  BorderStyle = bsSingle
  Caption = 'Exemplo2'
  ClientHeight = 272
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lstStatus: TListBox
    Left = 8
    Top = 8
    Width = 177
    Height = 257
    ItemHeight = 13
    TabOrder = 0
    OnDblClick = lstStatusDblClick
  end
  object lstVendas: TListBox
    Left = 192
    Top = 32
    Width = 417
    Height = 233
    ItemHeight = 13
    TabOrder = 1
  end
  object chkAutomatico: TCheckBox
    Left = 192
    Top = 8
    Width = 137
    Height = 17
    Caption = 'Autoriza'#231'ao Autom'#225'tica'
    TabOrder = 2
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 456
    Top = 224
  end
end
