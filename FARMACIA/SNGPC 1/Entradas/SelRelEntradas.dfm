object fSelRelEntradas: TfSelRelEntradas
  Left = 507
  Top = 397
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fSelRelEntradas'
  ClientHeight = 151
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 20
    Width = 146
    Height = 13
    Caption = 'Data Recebimento Inicial/Final'
  end
  object Data1: TwwDBDateTimePicker
    Left = 168
    Top = 16
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 0
  end
  object Data2: TwwDBDateTimePicker
    Left = 304
    Top = 16
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 352
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF60000000000000076000000280000000F000000100000000100
      04000000000080000000C40E0000C40E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03303301BBBBBBBB033033011BBBBBBB0330330111BBBBBB03303301110BBBBB
      03303301110BBBBB03303301110BBBBB03303301110BBBBB03303301110BBBBB
      03303301110BBBBB0330330111B0BBBB03303301110BBBBB03303301110BBBBB
      03303301E10BBBBB03303301EE0BBBBB03303300000000000330}
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 120
    Width = 171
    Height = 25
    Caption = '&Gerar'
    TabOrder = 2
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object Ordem: TRadioGroup
    Left = 8
    Top = 44
    Width = 417
    Height = 68
    Caption = 'Ordenado por'
    ItemIndex = 0
    Items.Strings = (
      'RECEBIDO, NOTA_FISCAL, DESCRI'#199#195'O'
      'DESCRI'#199#195'O')
    TabOrder = 4
  end
end
