object frmEFD: TfrmEFD
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmEFD'
  ClientHeight = 164
  ClientWidth = 600
  Color = 6241300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 600
    Height = 164
    Align = alClient
    Center = True
    ExplicitLeft = 280
    ExplicitTop = 64
  end
  object sLabelFX1: TsLabelFX
    Left = 23
    Top = 48
    Width = 548
    Height = 56
    Caption = 'FIM DA GERA'#199#195'O DO SPED....'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = []
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -3
    Shadow.OffsetKeeper.RightBottom = 5
  end
  object BitBtn1: TBitBtn
    Left = 496
    Top = 131
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
end
