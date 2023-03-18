object FormCobrancaGeral: TFormCobrancaGeral
  Left = 223
  Top = 197
  Width = 818
  Height = 480
  Align = alClient
  Caption = 'FormCobrancaGeral'
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
    Left = -3
    Top = -12
    Width = 794
    Height = 1123
    DataSource = DMCOB.dts_cobranca1
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
      Height = 107
      BandType = btHeader
      object RLLabel2: TRLLabel
        Left = 0
        Top = 91
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object rlbl5: TRLLabel
        Left = 0
        Top = 46
        Width = 718
        Height = 16
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
        Left = 176
        Top = 26
        Width = 382
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Contas a Receber - Geral'
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
      object rlbl1: TRLLabel
        Left = 96
        Top = 75
        Width = 64
        Height = 16
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl3: TRLLabel
        Left = 160
        Top = 91
        Width = 75
        Height = 16
        Caption = 'Movimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl2: TRLLabel
        Left = 0
        Top = 62
        Width = 132
        Height = 16
        Caption = 'Cliente/Titulo/Parc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl9: TRLLabel
        Left = 504
        Top = 46
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
      object datai: TRLLabel
        Left = 583
        Top = 45
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
      object rlbl10: TRLLabel
        Left = 616
        Top = 46
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
      object dataf: TRLLabel
        Left = 684
        Top = 46
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
      object RLLabel11: TRLLabel
        Left = 608
        Top = 0
        Width = 31
        Height = 16
        Caption = 'P'#225'g:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 631
        Top = 1
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 664
        Top = 17
        Width = 54
        Height = 16
        Alignment = taRightJustify
      end
      object RLLabel3: TRLLabel
        Left = 248
        Top = 91
        Width = 80
        Height = 16
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 344
        Top = 91
        Width = 38
        Height = 16
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 392
        Top = 91
        Width = 74
        Height = 16
        Caption = 'Valor Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 472
        Top = 91
        Width = 92
        Height = 16
        Caption = 'Valor a Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 584
        Top = 91
        Width = 39
        Height = 16
        Caption = 'Juros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 627
        Top = 91
        Width = 90
        Height = 16
        Caption = 'Total a Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 580
        Top = 63
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
      object RLLabel12: TRLLabel
        Left = 664
        Top = 62
        Width = 48
        Height = 16
        Caption = 'Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 104
        Top = 91
        Width = 45
        Height = 16
        Caption = 'Boleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rlbnd1: TRLBand
      Left = 38
      Top = 226
      Width = 718
      Height = 32
      BandType = btSummary
      object RLLabel18: TRLLabel
        Left = 0
        Top = 1
        Width = 718
        Height = 19
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel14: TRLLabel
        Left = 168
        Top = 0
        Width = 78
        Height = 16
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 200
        Top = 0
        Width = 185
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(VALOR_COMPRA)'
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 297
        Top = 2
        Width = 168
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(VALOR_PAGO)'
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 394
        Top = 2
        Width = 175
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(VALOR_PAGAR)'
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult4: TRLDBResult
        Left = 453
        Top = 2
        Width = 172
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(VALOR_JUROS)'
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult5: TRLDBResult
        Left = 538
        Top = 2
        Width = 174
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
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 145
      Width = 718
      Height = 81
      DataFields = 'CODIGO_CLIENTE'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 34
        BandType = btHeader
        object RLLabel21: TRLLabel
          Left = 56
          Top = 0
          Width = 8
          Height = 16
          Caption = '-'
        end
        object RLLabel20: TRLLabel
          Left = 9
          Top = 16
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLDBText31: TRLDBText
          Left = 543
          Top = 17
          Width = 16
          Height = 14
          DataField = 'UF'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText30: TRLDBText
          Left = 435
          Top = 16
          Width = 40
          Height = 14
          DataField = 'CIDADE'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText29: TRLDBText
          Left = 296
          Top = 16
          Width = 42
          Height = 14
          DataField = 'BAIRRO'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText28: TRLDBText
          Left = 97
          Top = 17
          Width = 57
          Height = 14
          DataField = 'ENDERECO'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 580
          Top = 16
          Width = 24
          Height = 14
          DataField = 'FAX'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText26: TRLDBText
          Left = 651
          Top = 1
          Width = 50
          Height = 14
          DataField = 'CELULAR'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 580
          Top = 0
          Width = 54
          Height = 14
          DataField = 'TELEFONE'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 288
          Top = 0
          Width = 46
          Height = 14
          DataField = 'APELIDO'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 65
          Top = 1
          Width = 83
          Height = 14
          DataField = 'NOME_SACADO'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 8
          Top = 0
          Width = 89
          Height = 14
          DataField = 'CODIGO_CLIENTE'
          DataSource = DMCOB.dts_cobranca1
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
        Top = 34
        Width = 718
        Height = 18
        object RLDBText12: TRLDBText
          Left = 8
          Top = 0
          Width = 43
          Height = 14
          Alignment = taRightJustify
          DataField = 'CODIGO'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 46
          Top = 0
          Width = 52
          Height = 14
          Alignment = taCenter
          DataField = 'PARCELA'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 156
          Top = 0
          Width = 82
          Height = 14
          Alignment = taCenter
          DataField = 'DATA_COMPRA'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 248
          Top = 0
          Width = 103
          Height = 14
          DataField = 'DATA_VENCIMENTO'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 291
          Top = 0
          Width = 90
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_COMPRA'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 387
          Top = 0
          Width = 76
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_PAGO'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 479
          Top = 0
          Width = 83
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_PAGAR'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 554
          Top = 0
          Width = 80
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_JUROS'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 634
          Top = 0
          Width = 80
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_TOTAL'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 91
          Top = 1
          Width = 66
          Height = 14
          Alignment = taCenter
          DataField = 'NUMBOLETO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 52
        Width = 718
        Height = 25
        BandType = btSummary
        object RLLabel19: TRLLabel
          Left = 0
          Top = 7
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
          Left = 136
          Top = 0
          Width = 109
          Height = 16
          Caption = 'Total do Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult6: TRLDBResult
          Left = 200
          Top = 0
          Width = 185
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'sum(VALOR_COMPRA)'
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult7: TRLDBResult
          Left = 297
          Top = 2
          Width = 168
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'sum(VALOR_PAGO)'
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult8: TRLDBResult
          Left = 394
          Top = 2
          Width = 175
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'sum(VALOR_PAGAR)'
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult9: TRLDBResult
          Left = 453
          Top = 2
          Width = 172
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'sum(VALOR_JUROS)'
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult10: TRLDBResult
          Left = 538
          Top = 2
          Width = 174
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
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 542
    Top = 20
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 606
    Top = 20
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'matricial'
    Left = 486
    Top = 20
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 646
    Top = 20
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 590
    Top = 20
  end
end
