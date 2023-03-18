object FormRelPisCofins: TFormRelPisCofins
  Left = 211
  Top = 146
  Width = 789
  Height = 480
  Caption = 'FormRelPisCofins'
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
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DMC5.DTS_PIS_COFINS
    DefaultFilter = RLDraftFilter1
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
      Height = 84
      AutoSize = True
      BandType = btColumnHeader
      object rlbl5: TRLLabel
        Left = -1
        Top = 49
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel4: TRLLabel
        Left = -1
        Top = 69
        Width = 717
        Height = 15
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 224
        Top = 36
        Width = 327
        Height = 23
        Caption = 'Totais por data e Lista de Pis/Cofins'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 66
        Width = 89
        Height = 14
        Caption = 'Lista Pis/Cofins'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 367
        Top = 66
        Width = 66
        Height = 14
        Alignment = taRightJustify
        Caption = 'Total Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 468
        Top = 66
        Width = 63
        Height = 14
        Alignment = taRightJustify
        Caption = 'Total Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 565
        Top = 66
        Width = 63
        Height = 14
        Alignment = taRightJustify
        Caption = 'Total Desc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 639
        Top = 66
        Width = 74
        Height = 14
        Alignment = taRightJustify
        Caption = 'Total Liquido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 594
        Top = 2
        Width = 31
        Height = 16
        Caption = 'P'#225'g:'
      end
      object RLDBText8: TRLDBText
        Left = 0
        Top = 4
        Width = 169
        Height = 22
        DataField = 'NOME_FANTASIA'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbtxtRAZAO_SOCIAL: TRLDBText
        Left = 1
        Top = 39
        Width = 71
        Height = 16
        DataField = 'TELEFONE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbtxtRAZAO_SOCIAL1: TRLDBText
        Left = 0
        Top = 25
        Width = 38
        Height = 16
        DataField = 'CNPJ'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl12: TRLLabel
        Left = 589
        Top = 17
        Width = 37
        Height = 16
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 257
        Top = 66
        Width = 64
        Height = 14
        Alignment = taRightJustify
        Caption = 'Qtde Vend.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 631
        Top = 2
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 664
        Top = 19
        Width = 54
        Height = 16
        Alignment = taRightJustify
      end
      object RLLabel9: TRLLabel
        Left = -1
        Top = -15
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 122
      Width = 718
      Height = 55
      DataFields = 'DATA_PEDIDO'
      object RLBand2: TRLBand
        Left = 0
        Top = 16
        Width = 718
        Height = 17
        AutoSize = True
        Transparent = False
        object RLDBText11: TRLDBText
          Left = 0
          Top = 2
          Width = 153
          Height = 14
          AutoSize = False
          DataField = 'LISTA'
          DataSource = DMC5.DTS_PIS_COFINS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText12: TRLDBText
          Left = 248
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QUANTIDADE'
          DataSource = DMC5.DTS_PIS_COFINS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText13: TRLDBText
          Left = 448
          Top = 2
          Width = 83
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_TOTAL'
          DataSource = DMC5.DTS_PIS_COFINS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText15: TRLDBText
          Left = 344
          Top = 2
          Width = 89
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_CUSTO'
          DataSource = DMC5.DTS_PIS_COFINS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText16: TRLDBText
          Left = 544
          Top = 3
          Width = 83
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DESCONTO1'
          DataSource = DMC5.DTS_PIS_COFINS
          DisplayMask = '#.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText17: TRLDBText
          Left = 629
          Top = 2
          Width = 84
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTAL_LIQUIDO'
          DataSource = DMC5.DTS_PIS_COFINS
          DisplayMask = '#.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 33
        Width = 718
        Height = 20
        BandType = btColumnFooter
        object RLLabel18: TRLLabel
          Left = 0
          Top = 0
          Width = 718
          Height = 15
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLLabel22: TRLLabel
          Left = 0
          Top = -14
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLLabel23: TRLLabel
          Left = 144
          Top = 0
          Width = 98
          Height = 16
          Caption = 'Total por Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 161
          Top = 2
          Width = 160
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'SUM(QUANTIDADE)'
          DataSource = DMC5.DTS_PIS_COFINS
          DisplayMask = '#.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 336
          Top = 3
          Width = 96
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'sum(PRECO_CUSTO)'
          DataSource = DMC5.DTS_PIS_COFINS
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult3: TRLDBResult
          Left = 448
          Top = 3
          Width = 83
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'sum(PRECO_TOTAL)'
          DataSource = DMC5.DTS_PIS_COFINS
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 470
          Top = 2
          Width = 157
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'sum(DESCONTO1)'
          DataSource = DMC5.DTS_PIS_COFINS
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult5: TRLDBResult
          Left = 624
          Top = 2
          Width = 88
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'sum(TOTAL_LIQUIDO)'
          DataSource = DMC5.DTS_PIS_COFINS
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        BandType = btColumnHeader
        object RLLabel3: TRLLabel
          Left = 85
          Top = 0
          Width = 37
          Height = 16
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 120
          Top = 2
          Width = 73
          Height = 12
          AutoSize = False
          DataField = 'DATA_PEDIDO'
          DataSource = DMC5.DTS_PIS_COFINS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 177
      Width = 718
      Height = 20
      BandType = btSummary
      object RLLabel10: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 15
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel13: TRLLabel
        Left = 0
        Top = -14
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel14: TRLLabel
        Left = 144
        Top = 0
        Width = 79
        Height = 16
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 161
        Top = 2
        Width = 160
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'SUM(QUANTIDADE)'
        DataSource = DMC5.DTS_PIS_COFINS
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult7: TRLDBResult
        Left = 336
        Top = 3
        Width = 96
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(PRECO_CUSTO)'
        DataSource = DMC5.DTS_PIS_COFINS
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 448
        Top = 3
        Width = 83
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(PRECO_TOTAL)'
        DataSource = DMC5.DTS_PIS_COFINS
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult9: TRLDBResult
        Left = 470
        Top = 2
        Width = 157
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(DESCONTO1)'
        DataSource = DMC5.DTS_PIS_COFINS
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult10: TRLDBResult
        Left = 624
        Top = 2
        Width = 88
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(TOTAL_LIQUIDO)'
        DataSource = DMC5.DTS_PIS_COFINS
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 604
    Top = 58
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 686
    Top = 175
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 726
    Top = 199
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 640
    Top = 235
  end
end
