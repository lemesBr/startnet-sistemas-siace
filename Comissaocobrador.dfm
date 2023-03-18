object FormComCobrador: TFormComCobrador
  Left = 26
  Top = 106
  Width = 824
  Height = 563
  Caption = 'FormComCobrador'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLLabel6: TRLLabel
    Left = 9
    Top = 642
    Width = 72
    Height = 16
    Caption = 'Vendedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RLReport1: TRLReport
    Left = 4
    Top = -22
    Width = 794
    Height = 1123
    DataSource = DMCOB.dts_cobranca1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 104
      AutoSize = True
      BandType = btHeader
      object rlbl5: TRLLabel
        Left = 0
        Top = 71
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
        Width = 368
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Comiss'#227'o Por Cobrador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 6
        Top = 88
        Width = 45
        Height = 16
        Caption = 'Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 165
        Top = 87
        Width = 107
        Height = 16
        Caption = 'Nome do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 477
        Top = 87
        Width = 73
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor Base'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 564
        Top = 88
        Width = 53
        Height = 16
        Alignment = taRightJustify
        Caption = '% Com.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 627
        Top = 88
        Width = 86
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vlr Comiss'#227'o'
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
        Left = 545
        Top = 73
        Width = 26
        Height = 13
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
        Top = 41
        Width = 62
        Height = 14
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
        Left = 72
        Top = 87
        Width = 84
        Height = 16
        Caption = 'Data Receb:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 664
        Top = 18
        Width = 54
        Height = 16
        Alignment = taRightJustify
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 631
        Top = 0
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLLabel10: TRLLabel
        Left = 1
        Top = 66
        Width = 69
        Height = 16
        Caption = 'Cobrador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 80
        Top = 65
        Width = 90
        Height = 16
        DataField = 'NomeCobrador'
        DataSource = DMCOB.dts_cobranca1
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 142
      Width = 718
      Height = 20
      object RLDBText2: TRLDBText
        Left = -56
        Top = 2
        Width = 119
        Height = 16
        Alignment = taRightJustify
        DataField = 'CODIGO_COMPRA'
        DataSource = DMCOB.dts_cobranca1
      end
      object RLDBText3: TRLDBText
        Left = 76
        Top = 2
        Width = 82
        Height = 16
        DataField = 'DATA_BAIXA'
        DataSource = DMCOB.dts_cobranca1
      end
      object RLDBText4: TRLDBText
        Left = 167
        Top = 3
        Width = 105
        Height = 16
        DataField = 'NOME_SACADO'
        DataSource = DMCOB.dts_cobranca1
      end
      object RLDBText5: TRLDBText
        Left = 460
        Top = 1
        Width = 93
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_PAGO'
        DataSource = DMCOB.dts_cobranca1
        DisplayMask = 'R$: ##,##0.00'
      end
      object RLDBText6: TRLDBText
        Left = 542
        Top = 0
        Width = 74
        Height = 16
        Alignment = taRightJustify
        DataField = 'COMISSAO'
        DataSource = DMCOB.dts_cobranca1
        DisplayMask = '%: ##,##0.00'
        AfterPrint = RLDBText6AfterPrint
      end
      object RLDBResult1: TRLDBResult
        Left = 586
        Top = 1
        Width = 129
        Height = 16
        Alignment = taRightJustify
        DataFormula = '(VALOR_PAGO * COMISSAO)/100'
        DataSource = DMCOB.dts_cobranca1
        AfterPrint = RLDBResult1AfterPrint
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 162
      Width = 718
      Height = 24
      BandType = btSummary
      object RLLabel14: TRLLabel
        Left = 1
        Top = 6
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLDBResult2: TRLDBResult
        Left = 380
        Top = 1
        Width = 174
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'sum(valor_pago)'
        DataSource = DMCOB.dts_cobranca1
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 634
        Top = 1
        Width = 81
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'sum(RLDBresult1)'
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 326
        Top = 1
        Width = 125
        Height = 16
        Caption = 'Total do Cobrador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 0
        Top = -14
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 609
    Top = 588
  end
end
