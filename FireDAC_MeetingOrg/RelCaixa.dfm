object FormRelCaixa1: TFormRelCaixa1
  Left = 278
  Top = 168
  Width = 859
  Height = 597
  Caption = 'FormRelCaixa1'
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
    Left = 8
    Top = -8
    Width = 794
    Height = 1123
    DataSource = FormRelatorioCaixa.dts_avu
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
      Height = 95
      AutoSize = True
      BandType = btHeader
      object RLLabel23: TRLLabel
        Left = 0
        Top = 79
        Width = 718
        Height = 16
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
        Left = 154
        Top = 42
        Width = 361
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Lan'#231'amentos do Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 591
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
        Left = 436
        Top = 65
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
        Left = 572
        Top = 64
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
        Left = 517
        Top = 65
        Width = 26
        Height = 13
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dataf: TRLLabel
        Left = 647
        Top = 64
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
        Left = 588
        Top = 20
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
      object RLSystemInfo1: TRLSystemInfo
        Left = 663
        Top = 21
        Width = 54
        Height = 16
        Alignment = taRightJustify
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 630
        Top = 3
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLLabel30: TRLLabel
        Left = 53
        Top = 77
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
      object RLLabel28: TRLLabel
        Left = 133
        Top = 77
        Width = 61
        Height = 16
        Caption = 'Historico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 509
        Top = 77
        Width = 49
        Height = 16
        Alignment = taRightJustify
        Caption = 'Origem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 560
        Top = 76
        Width = 77
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vlr Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 653
        Top = 77
        Width = 61
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vlr Saida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 8
        Top = 75
        Width = 38
        Height = 16
        Caption = 'Lanc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 149
      Width = 718
      Height = 48
      BandType = btSummary
      object RLDBResult5: TRLDBResult
        Left = 416
        Top = 1
        Width = 223
        Height = 17
        Alignment = taRightJustify
        DataFormula = 'sum(VALOR_ENTRADA)'
        DataSource = FormRelatorioCaixa.dts_avu
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 632
        Top = 2
        Width = 86
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'sum(VALOR_SAIDA)'
        DataSource = FormRelatorioCaixa.dts_avu
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel34: TRLLabel
        Left = 496
        Top = 3
        Width = 69
        Height = 16
        Alignment = taRightJustify
        Caption = 'Sub Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 485
        Top = 27
        Width = 80
        Height = 16
        Alignment = taRightJustify
        Caption = 'Saldo Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 349
        Top = 26
        Width = 369
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'sum(VALOR_ENTRADA) - sum(VALOR_SAIDA)'
        DataSource = FormRelatorioCaixa.dts_avu
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 133
      Width = 718
      Height = 16
      object RLDBText14: TRLDBText
        Left = 509
        Top = 0
        Width = 50
        Height = 16
        DataField = 'ORIGEM'
        DataSource = FormRelatorioCaixa.dts_avu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 629
        Top = 0
        Width = 86
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_SAIDA'
        DataSource = FormRelatorioCaixa.dts_avu
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 532
        Top = 0
        Width = 105
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_ENTRADA'
        DataSource = FormRelatorioCaixa.dts_avu
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 135
        Top = 0
        Width = 368
        Height = 16
        AutoSize = False
        DataField = 'HISTORICO'
        DataSource = FormRelatorioCaixa.dts_avu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText18: TRLDBText
        Left = 61
        Top = 0
        Width = 36
        Height = 16
        DataField = 'DATA'
        DataSource = FormRelatorioCaixa.dts_avu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText19: TRLDBText
        Left = 2
        Top = 0
        Width = 50
        Height = 16
        DataField = 'CODIGO'
        DataSource = FormRelatorioCaixa.dts_avu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 601
    Top = 12
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 520
    Top = 8
  end
end
