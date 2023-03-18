object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = -8
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      object RLLabel1: TRLLabel
        Left = 200
        Top = 24
        Width = 33
        Height = 16
        Caption = 'teste'
      end
      object RLAngleLabel1: TRLAngleLabel
        Left = 256
        Top = 32
        Width = 249
        Height = 16
        Caption = 'teste'
      end
    end
  end
  object RLPreviewSetup1: TRLPreviewSetup
    Left = 512
    Top = 120
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 454
    Top = 62
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 424
    Top = 152
  end
end
