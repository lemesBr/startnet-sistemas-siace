object FormChequeAvu: TFormChequeAvu
  Left = 368
  Top = 202
  Width = 725
  Height = 330
  Caption = 'FormChequeAvu'
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
    Left = 3
    Top = 1
    Width = 665
    Height = 287
    DataSource = Form_Cheques.DSQBuscaItens
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
        DataSource = Form_Cheques.DSQBuscaItens
        DisplayMask = 'R$: ##,##0.00'
      end
      object RLDBText2: TRLDBText
        Left = 1
        Top = 77
        Width = 89
        Height = 16
        DataField = 'FAVORECIDO'
        DataSource = Form_Cheques.DSQBuscaItens
      end
      object RLDBText3: TRLDBText
        Left = 260
        Top = 138
        Width = 77
        Height = 16
        DataField = 'CIDADE'
        DataSource = DM.DTS_Empresa
      end
      object rldbtxt1: TRLDBText
        Left = 3
        Top = 26
        Width = 54
        Height = 18
        DataSource = Form_Cheques.DSQBuscaItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        AfterPrint = rldbtxt1AfterPrint
      end
      object RLDBText4: TRLDBText
        Left = 363
        Top = 137
        Width = 70
        Height = 16
      end
      object RLDBText5: TRLDBText
        Left = 457
        Top = 138
        Width = 70
        Height = 16
      end
      object RLDBText6: TRLDBText
        Left = 554
        Top = 137
        Width = 70
        Height = 16
      end
    end
  end
end
