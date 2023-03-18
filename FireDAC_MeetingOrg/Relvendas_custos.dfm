object FormRelVendas_custos: TFormRelVendas_custos
  Left = 301
  Top = 110
  Width = 840
  Height = 640
  Caption = 'FormRelVendas_custos'
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
    Top = 5
    Width = 794
    Height = 1123
    DataSource = DMC3.Dts_venda_prod_cliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    PreviewOptions.FormStyle = fsStayOnTop
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 104
      AutoSize = True
      BandType = btHeader
      object rlbl5: TRLLabel
        Left = 0
        Top = 73
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 90
        Width = 753
        Height = 14
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
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
        Left = 119
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
        Top = 88
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
        Left = 396
        Top = 87
        Width = 70
        Height = 16
        Alignment = taRightJustify
        Caption = 'Pre'#231'o Vda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 484
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
        Left = 530
        Top = 88
        Width = 65
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vda Total'
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
        Left = 478
        Top = 72
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
        Left = 627
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
        Left = 563
        Top = 72
        Width = 26
        Height = 14
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dataf: TRLLabel
        Left = 707
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
        Left = 625
        Top = 22
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
        Left = 57
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
      object rlbl1: TRLLabel
        Left = 0
        Top = 72
        Width = 47
        Height = 16
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl3: TRLLabel
        Left = 72
        Top = 72
        Width = 80
        Height = 16
        Caption = 'Data Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl2: TRLLabel
        Left = 168
        Top = 72
        Width = 48
        Height = 16
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 609
        Top = 88
        Width = 63
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vlr Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 676
        Top = 88
        Width = 77
        Height = 16
        Alignment = taRightJustify
        Caption = 'Custo Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSystemInfo1: TRLSystemInfo
      Left = 718
      Top = 41
      Width = 54
      Height = 16
      Alignment = taRightJustify
    end
    object RLSystemInfo2: TRLSystemInfo
      Left = 686
      Top = 21
      Width = 87
      Height = 16
      Alignment = taRightJustify
      Info = itPageNumber
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 161
      Width = 756
      Height = 25
      BandType = btSummary
      object rlbl11: TRLLabel
        Left = 0
        Top = 7
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel10: TRLLabel
        Left = 0
        Top = -13
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLDBResult2: TRLDBResult
        Left = 219
        Top = 5
        Width = 172
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'SUM(QUANTIDADE)'
        DataSource = DMC3.Dts_venda_prod_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 416
        Top = 5
        Width = 178
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'SUM(PRECO_TOTAL)'
        DataSource = DMC3.Dts_venda_prod_cliente
        DisplayMask = '##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 264
        Top = 5
        Width = 198
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'SUM(PRECO_UNITARIO)'
        DataSource = DMC3.Dts_venda_prod_cliente
        DisplayMask = '##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object RLDBResult5: TRLDBResult
        Left = 367
        Top = 5
        Width = 157
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'SUM(DESCONTO)'
        DataSource = DMC3.Dts_venda_prod_cliente
        DisplayMask = '##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object rlbl6: TRLLabel
        Left = 147
        Top = 1
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
      object RLDBResult4: TRLDBResult
        Left = 490
        Top = 5
        Width = 179
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'SUM(PRECO_CUSTO)'
        DataSource = DMC3.Dts_venda_prod_cliente
        DisplayMask = '##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object RLDBResult7: TRLDBResult
        Left = 572
        Top = 5
        Width = 179
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'SUM(CUSTO_TOTAL)'
        DataSource = DMC3.Dts_venda_prod_cliente
        DisplayMask = '##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 19
      Top = 123
      Width = 756
      Height = 38
      DataFields = 'CODIGO_CLIENTE'
      object rlbnd1: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 20
        BandType = btColumnHeader
        object rlbl4: TRLLabel
          Left = 0
          Top = 2
          Width = 753
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '___________________________________________'
        end
        object rldbtxtCODIGO: TRLDBText
          Left = 8
          Top = 0
          Width = 74
          Height = 16
          DataField = 'CODIGO_ID'
          DataSource = DMC3.Dts_venda_prod_cliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rldbtxtCODIGO1: TRLDBText
          Left = 108
          Top = 1
          Width = 109
          Height = 16
          Alignment = taRightJustify
          DataField = 'CODIGO_CLIENTE'
          DataSource = DMC3.Dts_venda_prod_cliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rldbtxtCODIGO_CLIENTE: TRLDBText
          Left = 240
          Top = 1
          Width = 96
          Height = 16
          DataField = 'NOME_CLIENTE'
          DataSource = DMC3.Dts_venda_prod_cliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rldbtxtCODIGO2: TRLDBText
          Left = 72
          Top = 0
          Width = 95
          Height = 16
          DataField = 'DATA_PEDIDO'
          DataSource = DMC3.Dts_venda_prod_cliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlbl8: TRLLabel
          Left = 228
          Top = 2
          Width = 10
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 20
        Width = 756
        Height = 18
        object RLDBText1: TRLDBText
          Left = 0
          Top = -1
          Width = 78
          Height = 13
          DataField = 'CODIGO_PROD'
          DataSource = DMC3.Dts_venda_prod_cliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object rldbtxtDESCRICAO_PRODUTO: TRLDBText
          Left = 119
          Top = 0
          Width = 227
          Height = 13
          AutoSize = False
          DataField = 'DESCRICAO_PRODUTO'
          DataSource = DMC3.Dts_venda_prod_cliente
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
          DataSource = DMC3.Dts_venda_prod_cliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 370
          Top = 0
          Width = 93
          Height = 13
          Alignment = taRightJustify
          DataField = 'PRECO_UNITARIO'
          DataSource = DMC3.Dts_venda_prod_cliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 466
          Top = 0
          Width = 58
          Height = 13
          Alignment = taRightJustify
          DataField = 'DESCONTO'
          DataSource = DMC3.Dts_venda_prod_cliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 518
          Top = 3
          Width = 75
          Height = 13
          Alignment = taRightJustify
          DataField = 'PRECO_TOTAL'
          DataSource = DMC3.Dts_venda_prod_cliente
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 677
          Top = 1
          Width = 75
          Height = 13
          Alignment = taRightJustify
          DataField = 'CUSTO_TOTAL'
          DataSource = DMC3.Dts_venda_prod_cliente
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 596
          Top = 1
          Width = 77
          Height = 13
          Alignment = taRightJustify
          DataField = 'PRECO_CUSTO'
          DataSource = DMC3.Dts_venda_prod_cliente
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 462
    Top = 554
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 518
    Top = 544
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 411
    Top = 559
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 600
    Top = 532
  end
  object Matricial: TRLDraftFilter
    Left = 548
    Top = 541
  end
end
