object Fprincipal: TFprincipal
  Left = 338
  Top = 150
  Width = 870
  Height = 480
  Align = alClient
  Caption = 'Fprincipal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    Top = 16
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object este1: TMenuItem
        Caption = 'Teste'
        OnClick = este1Click
      end
    end
  end
end
