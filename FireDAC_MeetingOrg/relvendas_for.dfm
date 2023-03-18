object FormRel_vendas: TFormRel_vendas
  Left = 150
  Top = 109
  Width = 858
  Height = 563
  Caption = 'FormRel_vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 7
    Top = 2
    Width = 816
    Height = 1056
    DataSource = FormRelVendas.Dts_rel_vendas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    PageSetup.PaperSize = fpLetter
    PreviewOptions.FormStyle = fsStayOnTop
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 38
      Top = 19
      Width = 740
      Height = 105
      AutoSize = True
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
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
        Left = 200
        Top = 28
        Width = 343
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Vendas por Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 88
        Width = 49
        Height = 16
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 72
        Top = 87
        Width = 126
        Height = 16
        Caption = 'Descri'#231#227'o dos Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 358
        Top = 87
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
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
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 486
        Top = 87
        Width = 59
        Height = 16
        Alignment = taRightJustify
        Caption = 'Enc. Fin.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 587
        Top = 87
        Width = 38
        Height = 16
        Alignment = taRightJustify
        Caption = 'Desc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
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
        Font.Name = 'Arial'
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
      object rlbl1: TRLLabel
        Left = 0
        Top = 72
        Width = 49
        Height = 16
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl2: TRLLabel
        Left = 168
        Top = 72
        Width = 49
        Height = 16
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl3: TRLLabel
        Left = 72
        Top = 72
        Width = 78
        Height = 16
        Caption = 'Data Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl9: TRLLabel
        Left = 456
        Top = 57
        Width = 60
        Height = 14
        Caption = 'Data Inical:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl10: TRLLabel
        Left = 593
        Top = 57
        Width = 57
        Height = 14
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object datai: TRLLabel
        Left = 536
        Top = 57
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
        Left = 685
        Top = 57
        Width = 28
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
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
        Left = 458
        Top = 73
        Width = 73
        Height = 16
        Caption = 'Tipo Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 585
        Top = 71
        Width = 67
        Height = 16
        Caption = 'N'#186' Cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 663
        Top = 72
        Width = 51
        Height = 16
        Caption = 'N'#186' Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
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
      Top = 21
      Width = 87
      Height = 16
      Alignment = taRightJustify
      Info = itPageNumber
    end
    object rlbnd2: TRLBand
      Left = 38
      Top = 191
      Width = 740
      Height = 16
      BandType = btSummary
      object rlbl7: TRLLabel
        Left = 99
        Top = 0
        Width = 152
        Height = 16
        Caption = 'Total Geral das Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbrslt2: TRLDBResult
        Left = 320
        Top = 0
        Width = 225
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(ENC_FINANCEIRO1)'
        DataSource = FormRelVendas.Dts_rel_vendas
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object rldbrslt3: TRLDBResult
        Left = 448
        Top = -1
        Width = 178
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(DESCONTO)'
        DataSource = FormRelVendas.Dts_rel_vendas
        DisplayMask = 'R$: ##,##0.00'
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
        DataFormula = 'SUM(PRECO_TOTAL)'
        DataSource = FormRelVendas.Dts_rel_vendas
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 257
        Top = 0
        Width = 217
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'sum(PRECO_UNITARIO)'
        DataSource = FormRelVendas.Dts_rel_vendas
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object RLDBResult7: TRLDBResult
        Left = 203
        Top = 0
        Width = 190
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(QUANTIDADE)'
        DataSource = FormRelVendas.Dts_rel_vendas
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 124
      Width = 740
      Height = 67
      DataFields = 'CODIGO'
      object rlbnd1: TRLBand
        Left = 0
        Top = 0
        Width = 740
        Height = 27
        BandType = btColumnHeader
        object rlbl4: TRLLabel
          Left = 0
          Top = 4
          Width = 718
          Height = 20
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object rldbtxtCODIGO: TRLDBText
          Left = 9
          Top = 0
          Width = 56
          Height = 16
          DataField = 'CODIGO'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rldbtxtCODIGO1: TRLDBText
          Left = 100
          Top = 1
          Width = 117
          Height = 16
          Alignment = taRightJustify
          DataField = 'CODIGO_CLIENTE'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rldbtxtCODIGO_CLIENTE: TRLDBText
          Left = 240
          Top = 1
          Width = 103
          Height = 16
          DataField = 'NOME_CLIENTE'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rldbtxtCODIGO2: TRLDBText
          Left = 72
          Top = 0
          Width = 95
          Height = 16
          DataField = 'DATA_PEDIDO'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
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
        object RLDBText2: TRLDBText
          Left = 456
          Top = 2
          Width = 87
          Height = 16
          DataField = 'PAGAMENTO'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 587
          Top = 2
          Width = 68
          Height = 16
          DataField = 'N_CUPOM'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 659
          Top = 2
          Width = 76
          Height = 16
          DataField = 'NUM_NOTA'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 27
        Width = 740
        Height = 17
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 98
          Height = 14
          DataField = 'CODIGO_PRODUTO'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rldbtxtDESCRICAO_PRODUTO: TRLDBText
          Left = 72
          Top = 0
          Width = 117
          Height = 14
          DataField = 'DESCRICAO_PRODUTO'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 324
          Top = 0
          Width = 69
          Height = 14
          Alignment = taRightJustify
          DataField = 'QUANTIDADE'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 383
          Top = 0
          Width = 90
          Height = 14
          Alignment = taRightJustify
          DataField = 'PRECO_UNITARIO'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rldbtxtENC_FINANCEIRO: TRLDBText
          Left = 450
          Top = 0
          Width = 95
          Height = 14
          Alignment = taRightJustify
          DataField = 'ENC_FINANCEIRO1'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 566
          Top = 0
          Width = 59
          Height = 14
          Alignment = taRightJustify
          DataField = 'DESCONTO'
          DataSource = FormRelVendas.Dts_rel_vendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 636
          Top = 0
          Width = 77
          Height = 14
          Alignment = taRightJustify
          DataField = 'PRECO_TOTAL'
          DataSource = FormRelVendas.Dts_rel_vendas
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 44
        Width = 740
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
          DataSource = FormRelVendas.Dts_rel_vendas
          DisplayMask = 'R$: ##,##0.00'
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
          DataSource = FormRelVendas.Dts_rel_vendas
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
          DataSource = FormRelVendas.Dts_rel_vendas
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
          Left = 327
          Top = 2
          Width = 218
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(ENC_FINANCEIRO)'
          DataSource = FormRelVendas.Dts_rel_vendas
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
          DataSource = FormRelVendas.Dts_rel_vendas
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
          Width = 105
          Height = 16
          Caption = 'Total do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 644
    Top = 631
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 700
    Top = 639
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 580
    Top = 607
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'matricial'
    Left = 532
    Top = 615
  end
end
