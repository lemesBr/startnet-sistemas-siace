object FormVendas_CustosP: TFormVendas_CustosP
  Left = 351
  Top = 170
  Width = 872
  Height = 670
  Caption = 'FormVendas_CustosP'
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
    Left = 1
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DMC3.DTS_relVendas_produtos
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
      Height = 105
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
        Width = 422
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Vendas por Produtos X Custos'
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
        Left = 317
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
        Left = 372
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
        Left = 464
        Top = 88
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
        Left = 518
        Top = 87
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
        Left = 468
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
        Left = 625
        Top = 73
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
        Left = 566
        Top = 75
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
        Left = 714
        Top = 74
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
        Left = 624
        Top = 21
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
      object RLLabel7: TRLLabel
        Left = 595
        Top = 86
        Width = 67
        Height = 16
        Alignment = taRightJustify
        Caption = 'Custo Unt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 675
        Top = 89
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
      Left = 719
      Top = 39
      Width = 54
      Height = 16
      Alignment = taRightJustify
    end
    object RLSystemInfo2: TRLSystemInfo
      Left = 687
      Top = 22
      Width = 87
      Height = 16
      Alignment = taRightJustify
      Info = itPageNumber
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 124
      Width = 756
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
        Width = 155
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
        Left = 282
        Top = 2
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
        Left = 348
        Top = 3
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
      object RLDBText6: TRLDBText
        Left = 445
        Top = 2
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
        Left = 506
        Top = 2
        Width = 75
        Height = 13
        Alignment = taRightJustify
        DataField = 'PRECO_TOTAL'
        DataSource = DMC3.DTS_relVendas_produtos
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
      object RLDBText9: TRLDBText
        Left = 677
        Top = 1
        Width = 75
        Height = 13
        Alignment = taRightJustify
        DataField = 'CUSTO_TOTAL'
        DataSource = DMC3.DTS_relVendas_produtos
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 584
        Top = 2
        Width = 77
        Height = 13
        Alignment = taRightJustify
        DataField = 'PRECO_CUSTO'
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
      Left = 19
      Top = 142
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
        Left = 177
        Top = 5
        Width = 172
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'SUM(QUANTIDADE)'
        DataSource = DMC3.DTS_relVendas_produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 403
        Top = 5
        Width = 178
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'SUM(PRECO_TOTAL)'
        DataSource = DMC3.DTS_relVendas_produtos
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
        Left = 242
        Top = 5
        Width = 198
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'SUM(PRECO_UNITARIO)'
        DataSource = DMC3.DTS_relVendas_produtos
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
        Left = 347
        Top = 5
        Width = 157
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'SUM(DESCONTO)'
        DataSource = DMC3.DTS_relVendas_produtos
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
      object RLDBResult4: TRLDBResult
        Left = 486
        Top = 5
        Width = 179
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'SUM(PRECO_CUSTO)'
        DataSource = DMC3.DTS_relVendas_produtos
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
        Left = 574
        Top = 5
        Width = 178
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'sum(CUSTO_TOTAL)'
        DataSource = DMC3.DTS_relVendas_produtos
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
  end
  object Matricial: TRLDraftFilter
    Left = 513
    Top = 615
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 565
    Top = 606
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 376
    Top = 633
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 483
    Top = 618
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 427
    Top = 628
  end
end
