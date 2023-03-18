object FormRelPedidocompra: TFormRelPedidocompra
  Left = 139
  Top = 160
  Width = 836
  Height = 578
  Caption = 'FormRelPedidocompra'
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
    Top = -6
    Width = 794
    Height = 1123
    DataSource = FormPedidoCompra.Dts_pedidos
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
      Height = 67
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object rlbl5: TRLLabel
        Left = 0
        Top = 46
        Width = 717
        Height = 15
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object rldbtxtRAZAO_SOCIAL: TRLDBText
        Left = 1
        Top = 41
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
      object RLDBText8: TRLDBText
        Left = 0
        Top = 2
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
      object RLLabel1: TRLLabel
        Left = 200
        Top = 18
        Width = 335
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Pedido de Compras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl12: TRLLabel
        Left = 605
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
      object RLLabel11: TRLLabel
        Left = 608
        Top = 0
        Width = 26
        Height = 15
        Caption = 'P'#225'g:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 639
        Top = 1
        Width = 79
        Height = 15
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 682
        Top = 17
        Width = 36
        Height = 15
        Alignment = taRightJustify
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 64
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object RLLabel20: TRLLabel
        Left = -7
        Top = 48
        Width = 729
        Height = 14
        Caption = 
          '________________________________________________________________' +
          '_________________________________________________________'
      end
      object RLLabel21: TRLLabel
        Left = 56
        Top = 0
        Width = 7
        Height = 14
        Caption = '-'
      end
      object RLDBText24: TRLDBText
        Left = 136
        Top = 0
        Width = 36
        Height = 14
        DataField = 'NOME'
        DataSource = DM.DTS_Fornecedores
      end
      object RLDBText25: TRLDBText
        Left = 617
        Top = 0
        Width = 61
        Height = 14
        DataField = 'TELEFONE'
        DataSource = DM.DTS_Fornecedores
      end
      object RLDBText28: TRLDBText
        Left = 89
        Top = 0
        Width = 45
        Height = 14
        DataField = 'CODIGO'
        DataSource = DM.DTS_Fornecedores
      end
      object RLDBText29: TRLDBText
        Left = 86
        Top = 24
        Width = 62
        Height = 14
        DataField = 'ENDERECO'
        DataSource = DM.DTS_Fornecedores
      end
      object RLLabel9: TRLLabel
        Left = 8
        Top = -4
        Width = 77
        Height = 16
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 555
        Top = -1
        Width = 59
        Height = 16
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 402
        Top = 41
        Width = 62
        Height = 16
        Caption = 'Qtde Int.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 112
        Top = 42
        Width = 143
        Height = 16
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 50
        Top = 42
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
      object RLLabel18: TRLLabel
        Left = 539
        Top = 41
        Width = 82
        Height = 16
        Caption = 'Pre'#231'o Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 468
        Top = 41
        Width = 70
        Height = 16
        Caption = 'Qtde Frac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 632
        Top = 41
        Width = 82
        Height = 16
        Caption = 'Pre'#231'o Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 335
        Top = 42
        Width = 67
        Height = 16
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 20
        Width = 69
        Height = 16
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 411
        Top = 20
        Width = 52
        Height = 16
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 465
        Top = 22
        Width = 62
        Height = 14
        DataField = 'CIDADE;UF'
        DataSource = DM.DTS_Fornecedores
      end
      object RLLabel5: TRLLabel
        Left = 4
        Top = 42
        Width = 32
        Height = 16
        Caption = 'Seq.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 169
      Width = 718
      Height = 18
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object RLDBText12: TRLDBText
        Left = 48
        Top = -1
        Width = 59
        Height = 14
        Alignment = taRightJustify
        DataField = 'COD_PRODUTO'
        DataSource = FormPedidoCompra.Dts_pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 112
        Top = 0
        Width = 62
        Height = 14
        DataField = 'DESCRICAO'
        DataSource = FormPedidoCompra.Dts_pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 545
        Top = 0
        Width = 78
        Height = 14
        Alignment = taRightJustify
        DataField = 'PRECO_CUSTO'
        DataSource = FormPedidoCompra.Dts_pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText19: TRLDBText
        Left = 408
        Top = 0
        Width = 57
        Height = 14
        Alignment = taRightJustify
        DataField = 'QUANT_INTEIRA'
        DataSource = FormPedidoCompra.Dts_pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText20: TRLDBText
        Left = 635
        Top = 0
        Width = 80
        Height = 14
        Alignment = taRightJustify
        DataField = 'VALOR_TOTAL'
        DataSource = FormPedidoCompra.Dts_pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 472
        Top = 2
        Width = 64
        Height = 14
        Alignment = taRightJustify
        DataField = 'QUANT_FRACAO'
        DataSource = FormPedidoCompra.Dts_pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 336
        Top = 0
        Width = 68
        Height = 14
        DataField = 'DESCRICAO1'
        DataSource = FormPedidoCompra.Dts_pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = -31
        Top = 0
        Width = 70
        Height = 14
        Alignment = taRightJustify
        DataField = 'CODIGO_SEQ'
        DataSource = FormPedidoCompra.Dts_pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 187
      Width = 718
      Height = 16
      BandType = btSummary
      object RLLabel19: TRLLabel
        Left = 3
        Top = -1
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel17: TRLLabel
        Left = 0
        Top = -14
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel15: TRLLabel
        Left = 232
        Top = 0
        Width = 108
        Height = 16
        Caption = 'Total do Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 364
        Top = 2
        Width = 165
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(Quant_fracao)'
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult9: TRLDBResult
        Left = 536
        Top = 2
        Width = 89
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(PRECO_CUSTO)'
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
        Width = 92
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(VALOR_TOTAL)'
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 275
        Top = 2
        Width = 166
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(Quant_Inteira)'
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
  object RLExpressionParser1: TRLExpressionParser
    Left = 496
    Top = 18
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 472
    Top = 26
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 552
    Top = 26
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 448
    Top = 34
  end
end
