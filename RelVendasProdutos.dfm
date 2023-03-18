object FormRelVendasProd: TFormRelVendasProd
  Left = 395
  Top = 228
  Width = 807
  Height = 480
  VertScrollBar.Position = 17
  Caption = 'Relat'#243'rio de Vendas por produtos'
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
    Left = 6
    Top = -15
    Width = 794
    Height = 1123
    DataSource = DMC3.DTS_relVendas_produtos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    PreviewOptions.FormStyle = fsStayOnTop
    ExpressionParser = RLExpressionParser1
    AfterPrint = RLReport1AfterPrint
    OnPageStarting = RLReport1PageStarting
    object RLBand1: TRLBand
      Left = 38
      Top = 19
      Width = 718
      Height = 104
      AutoSize = True
      BandType = btHeader
      object rlbl5: TRLLabel
        Left = 0
        Top = 73
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 90
        Width = 718
        Height = 14
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 199
        Top = 37
        Width = 347
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Vendas por Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 88
        Width = 47
        Height = 16
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 151
        Top = 87
        Width = 132
        Height = 16
        Caption = 'Descri'#231#227'o dos Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 357
        Top = 87
        Width = 35
        Height = 16
        Alignment = taRightJustify
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 397
        Top = 87
        Width = 76
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vlr Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 490
        Top = 87
        Width = 55
        Height = 16
        Alignment = taRightJustify
        Caption = 'Enc. Fin.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 586
        Top = 87
        Width = 39
        Height = 16
        Alignment = taRightJustify
        Caption = 'Desc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 655
        Top = 88
        Width = 58
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vlr Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 632
        Top = 3
        Width = 31
        Height = 16
        Caption = 'P'#225'g:'
      end
      object RLDBText8: TRLDBText
        Left = 0
        Top = 4
        Width = 175
        Height = 23
        DataField = 'NOME_FANTASIA'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl9: TRLLabel
        Left = 456
        Top = 73
        Width = 67
        Height = 13
        Caption = 'Data Inical:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl10: TRLLabel
        Left = 592
        Top = 72
        Width = 62
        Height = 13
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object datai: TRLLabel
        Left = 542
        Top = 73
        Width = 26
        Height = 14
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        AfterPrint = dataiAfterPrint
      end
      object dataf: TRLLabel
        Left = 684
        Top = 72
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        AfterPrint = datafAfterPrint
      end
      object rldbtxtRAZAO_SOCIAL: TRLDBText
        Left = 1
        Top = 39
        Width = 62
        Height = 16
        DataField = 'TELEFONE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbtxtRAZAO_SOCIAL1: TRLDBText
        Left = 0
        Top = 25
        Width = 34
        Height = 16
        DataField = 'CNPJ'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl12: TRLLabel
        Left = 589
        Top = 17
        Width = 40
        Height = 16
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 89
        Top = 88
        Width = 53
        Height = 16
        Caption = 'Dt Vda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSystemInfo1: TRLSystemInfo
      Left = 700
      Top = 38
      Width = 54
      Height = 16
      Alignment = taRightJustify
    end
    object RLSystemInfo2: TRLSystemInfo
      Left = 669
      Top = 23
      Width = 87
      Height = 16
      Alignment = taRightJustify
      Info = itPageNumber
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 123
      Width = 718
      Height = 18
      object RLDBText1: TRLDBText
        Left = 0
        Top = -1
        Width = 78
        Height = 13
        DataField = 'CODIGO_PROD'
        DataSource = DMC3.DTS_relVendas_produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object rldbtxtDESCRICAO_PRODUTO: TRLDBText
        Left = 158
        Top = 1
        Width = 203
        Height = 11
        AutoSize = False
        DataField = 'DESCRICAO_PRODUTO'
        DataSource = DMC3.DTS_relVendas_produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 324
        Top = 0
        Width = 69
        Height = 13
        Alignment = taRightJustify
        DataField = 'QUANTIDADE'
        DataSource = DMC3.DTS_relVendas_produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 380
        Top = 0
        Width = 93
        Height = 13
        Alignment = taRightJustify
        DataField = 'PRECO_UNITARIO'
        DataSource = DMC3.DTS_relVendas_produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object rldbtxtENC_FINANCEIRO: TRLDBText
        Left = 453
        Top = 0
        Width = 92
        Height = 13
        Alignment = taRightJustify
        DataField = 'ENC_FINANCEIRO'
        DataSource = DMC3.DTS_relVendas_produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 567
        Top = 0
        Width = 58
        Height = 13
        Alignment = taRightJustify
        DataField = 'DESCONTO'
        DataSource = DMC3.DTS_relVendas_produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 638
        Top = 0
        Width = 75
        Height = 13
        Alignment = taRightJustify
        DataField = 'PRECO_TOTAL'
        DataSource = DMC3.DTS_relVendas_produtos
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 87
        Top = 0
        Width = 74
        Height = 13
        DataField = 'DATA_PEDIDO'
        DataSource = DMC3.DTS_relVendas_produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 141
      Width = 718
      Height = 25
      BandType = btSummary
      object rlbl11: TRLLabel
        Left = 0
        Top = 7
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel10: TRLLabel
        Left = 0
        Top = -13
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLDBResult2: TRLDBResult
        Left = 204
        Top = 3
        Width = 190
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(QUANTIDADE)'
        DataSource = DMC3.DTS_relVendas_produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 516
        Top = 3
        Width = 201
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(PRECO_TOTAL)'
        DataSource = DMC3.DTS_relVendas_produtos
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 253
        Top = 2
        Width = 220
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(PRECO_UNITARIO)'
        DataSource = DMC3.DTS_relVendas_produtos
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object RLDBResult4: TRLDBResult
        Left = 328
        Top = 2
        Width = 218
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(ENC_FINANCEIRO)'
        DataSource = DMC3.DTS_relVendas_produtos
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object RLDBResult5: TRLDBResult
        Left = 447
        Top = 2
        Width = 178
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(DESCONTO)'
        DataSource = DMC3.DTS_relVendas_produtos
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object rlbl6: TRLLabel
        Left = 147
        Top = 2
        Width = 103
        Height = 16
        Caption = 'Total do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 166
      Width = 718
      Height = 107
      DataSource = FormRel_vendas_produtos.DTSQBuscaafericao
      Positioning = btSummary
      Visible = False
      object RLBand4: TRLBand
        Left = 0
        Top = 41
        Width = 718
        Height = 16
        object RLLabel22: TRLLabel
          Left = 0
          Top = 0
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLDBText5: TRLDBText
          Left = 0
          Top = -1
          Width = 78
          Height = 13
          DataField = 'CODIGO_PROD'
          DataSource = FormRel_vendas_produtos.DTSQBuscaafericao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 95
          Top = 0
          Width = 30
          Height = 13
          DataField = 'DATA'
          DataSource = FormRel_vendas_produtos.DTSQBuscaafericao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 158
          Top = 1
          Width = 203
          Height = 11
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = FormRel_vendas_produtos.DTSQBuscaafericao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 324
          Top = 0
          Width = 69
          Height = 13
          Alignment = taRightJustify
          DataField = 'QUANTIDADE'
          DataSource = FormRel_vendas_produtos.DTSQBuscaafericao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 381
          Top = 0
          Width = 92
          Height = 13
          Alignment = taRightJustify
          DataField = 'VALOR_UNITARIO'
          DataSource = FormRel_vendas_produtos.DTSQBuscaafericao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 639
          Top = 0
          Width = 74
          Height = 13
          Alignment = taRightJustify
          DataField = 'VALOR_TOTAL'
          DataSource = FormRel_vendas_produtos.DTSQBuscaafericao
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 57
        Width = 718
        Height = 16
        BandType = btSummary
        object RLLabel23: TRLLabel
          Left = 0
          Top = 0
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLDBResult6: TRLDBResult
          Left = 204
          Top = 0
          Width = 190
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(QUANTIDADE)'
          DataSource = FormRel_vendas_produtos.DTSQBuscaafericao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult7: TRLDBResult
          Left = 253
          Top = 0
          Width = 220
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(VALOR_UNITARIO)'
          DataSource = FormRel_vendas_produtos.DTSQBuscaafericao
          DisplayMask = 'R$: ##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HoldStyle = hsVertically
          ParentFont = False
        end
        object RLDBResult8: TRLDBResult
          Left = 516
          Top = 0
          Width = 201
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(VALOR_TOTAL)'
          DataSource = FormRel_vendas_produtos.DTSQBuscaafericao
          DisplayMask = 'R$: ##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HoldStyle = hsVertically
          ParentFont = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 41
        BandType = btColumnHeader
        object RLLabel21: TRLLabel
          Left = 8
          Top = 39
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLLabel20: TRLLabel
          Left = 0
          Top = 25
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLLabel13: TRLLabel
          Left = 0
          Top = 25
          Width = 47
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 96
          Top = 25
          Width = 40
          Height = 16
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 151
          Top = 25
          Width = 132
          Height = 16
          Caption = 'Descri'#231#227'o dos Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 357
          Top = 25
          Width = 35
          Height = 16
          Alignment = taRightJustify
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 397
          Top = 25
          Width = 76
          Height = 16
          Alignment = taRightJustify
          Caption = 'Vlr Unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 655
          Top = 25
          Width = 58
          Height = 16
          Alignment = taRightJustify
          Caption = 'Vlr Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 311
          Top = 3
          Width = 81
          Height = 19
          Caption = 'Aferi'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 73
        Width = 718
        Height = 16
        BandType = btSummary
        object RLLabel24: TRLLabel
          Left = 335
          Top = 0
          Width = 58
          Height = 16
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 109
          Top = 0
          Width = 183
          Height = 16
          Caption = 'Quantidade Total dos Intes '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 576
    Top = 6
  end
  object Matricial: TRLDraftFilter
    Left = 524
    Top = 15
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 494
    Top = 18
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 438
    Top = 28
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 387
    Top = 33
  end
end
