object FormRelatorioVendas: TFormRelatorioVendas
  Left = 345
  Top = 134
  Width = 831
  Height = 536
  Caption = 'Relat'#243'rio de Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 1
    Top = -17
    Width = 794
    Height = 1123
    DataSource = DMC3.dts_RelVendas_pedidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    PreviewOptions.FormStyle = fsStayOnTop
    ExpressionParser = RLExpressionParser1
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
        Left = 264
        Top = 36
        Width = 237
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Vendas'
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
        Left = 72
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
        Left = 594
        Top = 2
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
      object rlbl9: TRLLabel
        Left = 456
        Top = 56
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
        Top = 55
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
        Left = 543
        Top = 55
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
        Top = 55
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
      object RLLabel13: TRLLabel
        Left = 585
        Top = 71
        Width = 66
        Height = 16
        Caption = 'N'#186' Cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 663
        Top = 72
        Width = 53
        Height = 16
        Caption = 'N'#186' Nota'
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
      Top = 22
      Width = 87
      Height = 16
      Alignment = taRightJustify
      Info = itPageNumber
    end
    object rlsbdtl1: TRLSubDetail
      Left = 38
      Top = 146
      Width = 718
      Height = 39
      DataSource = DMC3.dts_relVendas_Itens
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 17
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 99
          Height = 13
          DataField = 'CODIGO_PRODUTO'
          DataSource = DMC3.dts_relVendas_Itens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object rldbtxtDESCRICAO_PRODUTO: TRLDBText
          Left = 72
          Top = 0
          Width = 117
          Height = 13
          DataField = 'DESCRICAO_PRODUTO'
          DataSource = DMC3.dts_relVendas_Itens
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
          DataSource = DMC3.dts_relVendas_Itens
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
          DataSource = DMC3.dts_relVendas_Itens
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
          DataSource = DMC3.dts_relVendas_Itens
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
          DataSource = DMC3.dts_relVendas_Itens
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
          DataSource = DMC3.dts_relVendas_Itens
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 17
        Width = 718
        Height = 24
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
          Left = 203
          Top = 3
          Width = 190
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(QUANTIDADE)'
          DataSource = DMC3.dts_relVendas_Itens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 516
          Top = 2
          Width = 201
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(PRECO_TOTAL)'
          DataSource = DMC3.dts_relVendas_Itens
          DisplayMask = 'R$ #.###,##'
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
          DataSource = DMC3.dts_relVendas_Itens
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HoldStyle = hsVertically
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 327
          Top = 2
          Width = 218
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(ENC_FINANCEIRO)'
          DataSource = DMC3.dts_relVendas_Itens
          DisplayMask = 'R$ #.###,##'
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
          DataSource = DMC3.dts_relVendas_Itens
          DisplayMask = 'R$ #.###,##'
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
    end
    object rlbnd1: TRLBand
      Left = 38
      Top = 123
      Width = 718
      Height = 23
      object rlbl4: TRLLabel
        Left = 0
        Top = 5
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object rldbtxtCODIGO: TRLDBText
        Left = 8
        Top = 0
        Width = 52
        Height = 16
        DataField = 'CODIGO'
        DataSource = DMC3.dts_RelVendas_pedidos
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
        DataSource = DMC3.dts_RelVendas_pedidos
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
        DataSource = DMC3.dts_RelVendas_pedidos
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
        DataSource = DMC3.dts_RelVendas_pedidos
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
      object RLDBText5: TRLDBText
        Left = 587
        Top = 2
        Width = 64
        Height = 16
        DataField = 'N_CUPOM'
        DataSource = DMC3.dts_RelVendas_pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 659
        Top = 2
        Width = 73
        Height = 16
        DataField = 'NUM_NOTA'
        DataSource = DMC3.dts_RelVendas_pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rlbnd2: TRLBand
      Left = 38
      Top = 185
      Width = 718
      Height = 20
      BandType = btSummary
      object RLLabel12: TRLLabel
        Left = 0
        Top = 5
        Width = 718
        Height = 17
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
      object rlbl7: TRLLabel
        Left = 99
        Top = 0
        Width = 152
        Height = 16
        Caption = 'Total Geral das Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbrslt2: TRLDBResult
        Left = 327
        Top = 0
        Width = 218
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(ENC_FINANCEIRO)'
        DataSource = DMC3.dts_RelVendas_pedidos
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object rldbrslt3: TRLDBResult
        Left = 395
        Top = 0
        Width = 230
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(VALOR_DESCONTO)'
        DataSource = DMC3.dts_RelVendas_pedidos
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object rldbrslt4: TRLDBResult
        Left = 516
        Top = 0
        Width = 201
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(VALOR_TOTAL)'
        DataSource = DMC3.dts_RelVendas_pedidos
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 277
        Top = 0
        Width = 196
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(VALOR_ITENS)'
        DataSource = DMC3.dts_RelVendas_pedidos
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 526
    Top = 11
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 566
    Top = 19
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 598
    Top = 11
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 494
    Top = 19
  end
end
