object FormRelatorioAbast: TFormRelatorioAbast
  Left = 288
  Top = 126
  Width = 928
  Height = 480
  Caption = 'FormRelatorioAbast'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 48
    Top = 16
    Width = 794
    Height = 1123
    DataSource = FormRelAbastecimentos.dts_relIpva
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
        Left = 199
        Top = 37
        Width = 407
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Abastecimentos por periodo'
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
        Width = 35
        Height = 16
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 95
        Top = 87
        Width = 82
        Height = 16
        Caption = 'Combustivel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 260
        Top = 87
        Width = 92
        Height = 16
        Alignment = taRightJustify
        Caption = 'Kilometragem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 365
        Top = 87
        Width = 76
        Height = 16
        Alignment = taRightJustify
        Caption = 'Km Rodado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 472
        Top = 87
        Width = 41
        Height = 16
        Alignment = taRightJustify
        Caption = 'Litros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 567
        Top = 87
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = 'Km/l'
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
        Left = 542
        Top = 73
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
      object RLSystemInfo2: TRLSystemInfo
        Left = 631
        Top = 2
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
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 142
      Width = 718
      Height = 35
      object RLDBText1: TRLDBText
        Left = 8
        Top = 0
        Width = 38
        Height = 16
        DataField = 'DATA'
        DataSource = FormRelAbastecimentos.dts_relIpva
      end
      object RLDBText2: TRLDBText
        Left = 96
        Top = 0
        Width = 96
        Height = 16
        DataField = 'COMBUSTIVEL'
        DataSource = FormRelAbastecimentos.dts_relIpva
      end
      object RLDBText3: TRLDBText
        Left = 280
        Top = 0
        Width = 61
        Height = 16
        DataField = 'KM_VEIC'
        DataSource = FormRelAbastecimentos.dts_relIpva
      end
      object RLDBText4: TRLDBText
        Left = 464
        Top = 0
        Width = 48
        Height = 16
        Alignment = taRightJustify
        DataField = 'QUANT'
        DataSource = FormRelAbastecimentos.dts_relIpva
      end
      object RLDBText5: TRLDBText
        Left = 624
        Top = 0
        Width = 87
        Height = 16
        Alignment = taRightJustify
        DataField = 'V_TOTAL'
        DataSource = FormRelAbastecimentos.dts_relIpva
      end
      object RLDBText6: TRLDBText
        Left = 96
        Top = 16
        Width = 50
        Height = 16
        DataField = 'NOME1'
        DataSource = FormRelAbastecimentos.dts_relIpva
      end
      object RLDBText7: TRLDBText
        Left = 380
        Top = 0
        Width = 59
        Height = 16
        DataField = 'KM_ROD'
        DataSource = FormRelAbastecimentos.dts_relIpva
      end
      object RLDBText9: TRLDBText
        Left = 548
        Top = 0
        Width = 38
        Height = 16
        DataField = 'KM_L'
        DataSource = FormRelAbastecimentos.dts_relIpva
      end
      object RLDBText10: TRLDBText
        Left = 467
        Top = 18
        Width = 54
        Height = 16
        DataField = 'NOME'
        DataSource = FormRelAbastecimentos.dts_relIpva
      end
      object RLLabel14: TRLLabel
        Left = 7
        Top = 15
        Width = 82
        Height = 16
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 423
        Top = 17
        Width = 36
        Height = 16
        Caption = 'Veic:'
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
      Top = 177
      Width = 718
      Height = 23
      BandType = btSummary
      object RLLabel13: TRLLabel
        Left = 0
        Top = 6
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLDBResult1: TRLDBResult
        Left = 362
        Top = 2
        Width = 151
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(QUANT)'
        DataSource = FormRelAbastecimentos.dts_relIpva
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 548
        Top = 2
        Width = 165
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(V_TOTAL)'
        DataSource = FormRelAbastecimentos.dts_relIpva
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 184
        Top = 2
        Width = 163
        Height = 16
        Caption = 'TOTAL.............................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
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
    Left = 848
    Top = 32
  end
end
