object FormRelaBoletos: TFormRelaBoletos
  Left = 488
  Top = 174
  Width = 928
  Height = 480
  Caption = 'Relatorio de Boletos'
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
    Left = 33
    Top = -18
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
    OnPageStarting = RLReport1PageStarting
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 80
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object RLLabel2: TRLLabel
        Left = 0
        Top = 64
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
        Left = 152
        Top = 26
        Width = 413
        Height = 19
        AutoSize = False
        Caption = 'SIACE - Relat'#243'rio de Contas a Receber - BOLETOS'
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
      object rlbl3: TRLLabel
        Left = 170
        Top = 61
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
        Width = 95
        Height = 16
        Caption = 'Titulo/Parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl9: TRLLabel
        Left = 438
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
        Left = 507
        Top = 45
        Width = 69
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
        Left = 581
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
        Left = 645
        Top = 46
        Width = 69
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
        Left = 251
        Top = 61
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
        Left = 340
        Top = 61
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
        Left = 597
        Top = 61
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
        Left = 390
        Top = 61
        Width = 47
        Height = 16
        Caption = 'Multas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 457
        Top = 61
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
        Top = 61
        Width = 39
        Height = 16
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 123
        Top = 61
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
      object RLLabel9: TRLLabel
        Left = 502
        Top = 63
        Width = 65
        Height = 16
        Caption = 'Desconto'
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
      Top = 150
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
        Left = 297
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
        Left = 571
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
        Left = 235
        Top = 2
        Width = 202
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(VALOR_ACRESCIMO)'
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult9: TRLDBResult
        Left = 436
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
      object RLDBResult1: TRLDBResult
        Left = 374
        Top = 2
        Width = 195
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(VALOR_DESCONTO)'
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
      Left = 38
      Top = 118
      Width = 718
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object RLLabel10: TRLLabel
        Left = 0
        Top = 18
        Width = 717
        Height = 14
        Caption = 
          '................................................................' +
          '................................................................' +
          '................................................................' +
          '..............................................'
      end
      object RLDBText12: TRLDBText
        Left = -42
        Top = 14
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
        Left = 62
        Top = 14
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
        Left = 175
        Top = 14
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
        Left = 241
        Top = 14
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
        Left = 311
        Top = 14
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
        Left = 572
        Top = 14
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
        Left = 329
        Top = 14
        Width = 106
        Height = 14
        Alignment = taRightJustify
        DataField = 'VALOR_ACRESCIMO'
        DataSource = DMCOB.dts_cobranca1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText19: TRLDBText
        Left = 436
        Top = 14
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
        Top = 14
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
        Left = 108
        Top = 14
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
      object RLDBText22: TRLDBText
        Left = 8
        Top = 0
        Width = 41
        Height = 14
        DataField = 'CODIGO_CLIENTE'
        DataSource = DMCOB.dts_cobranca1
      end
      object RLDBText23: TRLDBText
        Left = 88
        Top = 0
        Width = 86
        Height = 14
        DataField = 'NOME_SACADO'
        DataSource = DMCOB.dts_cobranca1
      end
      object RLDBText1: TRLDBText
        Left = 466
        Top = 14
        Width = 102
        Height = 14
        Alignment = taRightJustify
        DataField = 'VALOR_DESCONTO'
        DataSource = DMCOB.dts_cobranca1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 67
        Top = 0
        Width = 9
        Height = 16
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 53
        Top = 14
        Width = 9
        Height = 16
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 422
    Top = 46
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
end
