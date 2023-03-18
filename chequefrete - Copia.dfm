object FormChequeFrete: TFormChequeFrete
  Left = 495
  Top = 198
  Width = 693
  Height = 326
  Caption = 'FormChequeFrete'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 5
    Top = -4
    Width = 665
    Height = 287
    DataSource = DMC.dscheques
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 2.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 176.000000000000000000
    PageSetup.PaperHeight = 76.000000000000000000
    OnPageStarting = RLReport1PageStarting
    object RLBand1: TRLBand
      Left = 19
      Top = 8
      Width = 627
      Height = 259
      object RLDBText1: TRLDBText
        Left = 505
        Top = 3
        Width = 48
        Height = 16
        DataField = 'VALOR'
        DataSource = DMC.dscheques
        DisplayMask = 'R$: ##,##0.00'
      end
      object RLDBText2: TRLDBText
        Left = 1
        Top = 77
        Width = 89
        Height = 16
        DataField = 'FAVORECIDO'
        DataSource = DMC.dscheques
      end
      object rldbtxt1: TRLDBText
        Left = 3
        Top = 26
        Width = 54
        Height = 18
        DataSource = DMC.dscheques
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 363
        Top = 137
        Width = 70
        Height = 16
        DataSource = DMC.dscheques
      end
      object RLDBText5: TRLDBText
        Left = 457
        Top = 138
        Width = 70
        Height = 16
        DataSource = DMC.dscheques
      end
      object RLDBText6: TRLDBText
        Left = 554
        Top = 137
        Width = 70
        Height = 16
        DataSource = DMC.dscheques
      end
      object RLLabel1: TRLLabel
        Left = 262
        Top = 139
        Width = 58
        Height = 16
      end
    end
  end
end
