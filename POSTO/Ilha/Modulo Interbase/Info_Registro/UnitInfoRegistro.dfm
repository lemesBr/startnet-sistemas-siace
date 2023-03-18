object InfoRegistroIBFrm: TInfoRegistroIBFrm
  Left = 229
  Top = 253
  Width = 385
  Height = 82
  Caption = 'Informa'#231#245'es de Registro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 96
    Height = 16
    Caption = 'Cadastrado em:'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 136
    Height = 16
    Caption = #218'ltima Atualiza'#231#227'o em:'
  end
  object DBText1: TDBText
    Left = 152
    Top = 8
    Width = 52
    Height = 16
    AutoSize = True
  end
  object Label4: TLabel
    Left = 224
    Top = 32
    Width = 82
    Height = 16
    Caption = 'realizada por:'
  end
  object DBText3: TDBText
    Left = 152
    Top = 32
    Width = 52
    Height = 16
    AutoSize = True
  end
  object DBText4: TDBText
    Left = 312
    Top = 32
    Width = 52
    Height = 16
    AutoSize = True
  end
  object FormStorage1: TFormStorage
    IniSection = 'InfoRegistroIBFrm'
    Options = []
    StoredProps.Strings = (
      'Label1.Caption'
      'Label2.Caption'
      'Label4.Caption')
    StoredValues = <>
    Left = 264
  end
end
