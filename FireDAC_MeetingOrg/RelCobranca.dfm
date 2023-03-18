object FormRelCobranca: TFormRelCobranca
  Left = 309
  Top = 133
  Width = 811
  Height = 575
  HorzScrollBar.Position = 9
  Caption = 'Relatorio de Cobran'#231'a'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -8
    Top = -1
    Width = 794
    Height = 1123
    DataSource = DMCOB.dts_cobranca1
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
      Height = 107
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object RLLabel2: TRLLabel
        Left = 0
        Top = 91
        Width = 717
        Height = 15
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
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
        Left = 168
        Top = 26
        Width = 396
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Contas a Receber - Cliente'
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
        Left = 146
        Top = 91
        Width = 71
        Height = 16
        Caption = 'Dias Venc.'
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
      object RLLabel3: TRLLabel
        Left = 220
        Top = 91
        Width = 61
        Height = 16
        Caption = 'Dt Vecto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 386
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
        Left = 461
        Top = 91
        Width = 36
        Height = 16
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 534
        Top = 91
        Width = 42
        Height = 16
        Caption = 'Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 601
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
        Left = 679
        Top = 91
        Width = 36
        Height = 16
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 577
        Top = 62
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
        Left = 91
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
      object RLLabel24: TRLLabel
        Left = 289
        Top = 91
        Width = 68
        Height = 16
        Caption = 'Prev Pgto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 249
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
        Left = 136
        Top = 0
        Width = 98
        Height = 16
        Caption = 'Total do Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 345
        Top = 1
        Width = 84
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
        Left = 435
        Top = 1
        Width = 69
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
        Left = 508
        Top = 2
        Width = 73
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
        Left = 580
        Top = 1
        Width = 61
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
        Left = 640
        Top = 2
        Width = 76
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
      Height = 104
      DataFields = 'CODIGO_CLIENTE'
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 56
        BandType = btColumnHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        object RLLabel14: TRLLabel
          Left = -11
          Top = 41
          Width = 729
          Height = 14
          Caption = 
            '________________________________________________________________' +
            '_________________________________________________________'
        end
        object RLLabel20: TRLLabel
          Left = -7
          Top = 19
          Width = 729
          Height = 14
          Caption = 
            '________________________________________________________________' +
            '_________________________________________________________'
        end
        object RLDBText22: TRLDBText
          Left = 8
          Top = 0
          Width = 99
          Height = 14
          DataField = 'CODIGO_CLIENTE'
          DataSource = DMCOB.dts_cobranca1
        end
        object RLDBText23: TRLDBText
          Left = 64
          Top = 0
          Width = 86
          Height = 14
          DataField = 'NOME_SACADO'
          DataSource = DMCOB.dts_cobranca1
        end
        object RLLabel21: TRLLabel
          Left = 56
          Top = 0
          Width = 7
          Height = 14
          Caption = '-'
        end
        object RLDBText24: TRLDBText
          Left = 328
          Top = 0
          Width = 52
          Height = 14
          DataField = 'APELIDO'
          DataSource = DMCOB.Dts_clientes
        end
        object RLDBText25: TRLDBText
          Left = 577
          Top = 0
          Width = 61
          Height = 14
          DataField = 'TELEFONE'
          DataSource = DMCOB.Dts_clientes
        end
        object RLDBText26: TRLDBText
          Left = 649
          Top = 2
          Width = 54
          Height = 14
          DataField = 'CELULAR'
          DataSource = DMCOB.Dts_clientes
        end
        object RLDBText27: TRLDBText
          Left = 577
          Top = 17
          Width = 25
          Height = 14
          DataField = 'FAX'
          DataSource = DMCOB.Dts_clientes
        end
        object RLDBText28: TRLDBText
          Left = 65
          Top = 16
          Width = 62
          Height = 14
          DataField = 'ENDERECO'
          DataSource = DMCOB.Dts_clientes
        end
        object RLDBText29: TRLDBText
          Left = 328
          Top = 16
          Width = 44
          Height = 14
          DataField = 'BAIRRO'
          DataSource = DMCOB.Dts_clientes
        end
        object RLDBText30: TRLDBText
          Left = 432
          Top = 16
          Width = 45
          Height = 14
          DataField = 'CIDADE'
          DataSource = DMCOB.Dts_clientes
        end
        object RLDBText31: TRLDBText
          Left = 544
          Top = 15
          Width = 17
          Height = 14
          DataField = 'UF'
          DataSource = DMCOB.Dts_clientes
        end
        object RLDBText1: TRLDBText
          Left = 66
          Top = 34
          Width = 101
          Height = 14
          DataField = 'LOCALTRABALHO'
          DataSource = DMCOB.Dts_clientes
        end
        object RLLabel9: TRLLabel
          Left = 0
          Top = 32
          Width = 65
          Height = 16
          Caption = 'Trabalho:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 264
          Top = 32
          Width = 69
          Height = 16
          Caption = 'C'#244'njugue:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 335
          Top = 34
          Width = 91
          Height = 14
          DataField = 'NOME_CONJUGE'
          DataSource = DMCOB.Dts_clientes
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 74
        Width = 718
        Height = 16
        BandType = btSummary
        object RLLabel18: TRLLabel
          Left = 3
          Top = -1
          Width = 718
          Height = 16
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
        object RLDBResult1: TRLDBResult
          Left = 353
          Top = 2
          Width = 76
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
          Left = 432
          Top = 2
          Width = 72
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
          Left = 514
          Top = 2
          Width = 64
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
          Left = 570
          Top = 2
          Width = 72
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
          Left = 644
          Top = 2
          Width = 72
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
      object RLBand3: TRLBand
        Left = 0
        Top = 56
        Width = 718
        Height = 18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        object RLDBText12: TRLDBText
          Left = -42
          Top = 0
          Width = 93
          Height = 14
          Alignment = taRightJustify
          DataField = 'CODIGO_COMPRA'
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
          Width = 38
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
          Left = 153
          Top = 1
          Width = 63
          Height = 14
          Alignment = taCenter
          DataField = 'DIAS_VENCIDO'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 217
          Top = 2
          Width = 71
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
          Left = 363
          Top = 1
          Width = 67
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
          Left = 436
          Top = 1
          Width = 67
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
          Left = 502
          Top = 1
          Width = 77
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
          Left = 580
          Top = 1
          Width = 62
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
          Left = 643
          Top = 1
          Width = 73
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
          Left = 86
          Top = 1
          Width = 61
          Height = 14
          Alignment = taCenter
          DataField = 'NUMBOLETO'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 292
          Top = 2
          Width = 66
          Height = 14
          DataField = 'DT_PREVISAO_PGTO'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 486
    Top = 22
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 542
    Top = 14
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 582
    Top = 14
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 422
    Top = 46
  end
end
