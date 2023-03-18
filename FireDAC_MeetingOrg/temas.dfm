object Formtemas: TFormtemas
  Left = 520
  Top = 309
  Width = 409
  Height = 219
  Caption = 'Themas para o Sistema'
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
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object suiButton1: TsuiButton
    Left = 219
    Top = 60
    Width = 154
    Height = 27
    Caption = 'Ler Tema do Arquivo...'
    AutoSize = False
    UIStyle = WinXP
    TabOrder = 0
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton1Click
    ResHandle = 0
  end
  object ListBox1: TListBox
    Left = 9
    Top = 8
    Width = 202
    Height = 161
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'SUIPack theme files(*.sui)|*.sui'
    Left = 345
    Top = 13
  end
end
