object FormComissaoRecebida: TFormComissaoRecebida
  Left = 735
  Top = 476
  Width = 821
  Height = 474
  Caption = 'Comiss'#245'es'
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
    Left = 6
    Top = -1
    Width = 794
    Height = 1123
    DataSource = FormRelatorioComissao.Dts_com_avista
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
      Height = 105
      AutoSize = True
      BandType = btHeader
      object rlbl5: TRLLabel
        Left = 0
        Top = 68
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
        Left = 151
        Top = 37
        Width = 423
        Height = 19
        Caption = 'Relat'#243'rio de Comiss'#227'o Por Vendedor Recebidas Avista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
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
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 165
        Top = 87
        Width = 110
        Height = 16
        Caption = 'Nome do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
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
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 628
        Top = 88
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vlr Comiss'#227'o'
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
      object rlbl9: TRLLabel
        Left = 456
        Top = 69
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
        Left = 592
        Top = 68
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
        Left = 545
        Top = 69
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
        Left = 685
        Top = 68
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
        Left = 72
        Top = 87
        Width = 66
        Height = 16
        Caption = 'Data Vda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
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
        Width = 70
        Height = 16
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 143
      Width = 718
      Height = 42
      DataSource = FormRelatorioComissao.Dts_com_avista
      Positioning = btColumnHeader
      object RLBand3: TRLBand
        Left = 0
        Top = 20
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
          Left = 364
          Top = 2
          Width = 190
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'sum(VALOR_BASE)'
          DataSource = FormRelatorioComissao.Dts_com_avista
          DisplayMask = 'R$: ##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 340
          Top = 2
          Width = 90
          Height = 16
          Caption = 'Total a Vista:'
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
        object RLDBResult3: TRLDBResult
          Left = 490
          Top = 3
          Width = 226
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'sum(VALOR_COMISSAO)'
          DataSource = FormRelatorioComissao.Dts_com_avista
          DisplayMask = 'R$: ##,##0.00'
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
        Top = 0
        Width = 718
        Height = 20
        object RLDBText2: TRLDBText
          Left = 0
          Top = 2
          Width = 68
          Height = 16
          Alignment = taRightJustify
          DataField = 'VENDA_ID'
          DataSource = FormRelatorioComissao.Dts_com_avista
        end
        object RLDBText3: TRLDBText
          Left = 76
          Top = 2
          Width = 90
          Height = 16
          DataField = 'VENDA_DATA'
          DataSource = FormRelatorioComissao.Dts_com_avista
        end
        object RLDBText4: TRLDBText
          Left = 167
          Top = 3
          Width = 300
          Height = 16
          AutoSize = False
          DataField = 'CLIENTE_NOME'
          DataSource = FormRelatorioComissao.Dts_com_avista
        end
        object RLDBText5: TRLDBText
          Left = 462
          Top = 1
          Width = 91
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR_BASE'
          DataSource = FormRelatorioComissao.Dts_com_avista
        end
        object RLDBText11: TRLDBText
          Left = 591
          Top = 1
          Width = 125
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR_COMISSAO'
          DataSource = FormRelatorioComissao.Dts_com_avista
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 185
      Width = 718
      Height = 41
      BandType = btSummary
      object RLLabel21: TRLLabel
        Left = 0
        Top = 25
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
      object RLLabel16: TRLLabel
        Left = 6
        Top = 23
        Width = 45
        Height = 16
        Caption = 'Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 72
        Top = 23
        Width = 66
        Height = 16
        Caption = 'Data Vda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 165
        Top = 23
        Width = 110
        Height = 16
        Caption = 'Nome do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 477
        Top = 23
        Width = 73
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor Base'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 628
        Top = 23
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vlr Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 143
        Top = 1
        Width = 434
        Height = 19
        Caption = 'Relat'#243'rio de Comiss'#227'o Por Vendedor Recebidas a Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 226
      Width = 718
      Height = 79
      DataSource = FormRelatorioComissao.dts_com_prazo
      Positioning = btSummary
      object RLBand4: TRLBand
        Left = 0
        Top = 20
        Width = 718
        Height = 53
        BandType = btSummary
        object RLLabel24: TRLLabel
          Left = 0
          Top = 31
          Width = 718
          Height = 19
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLLabel6: TRLLabel
          Left = 1
          Top = 6
          Width = 718
          Height = 19
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLLabel8: TRLLabel
          Left = 340
          Top = 2
          Width = 104
          Height = 16
          Caption = 'Total a Aprazo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 0
          Top = -14
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLDBResult5: TRLDBResult
          Left = 490
          Top = 3
          Width = 226
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'sum(VALOR_COMISSAO)'
          DataSource = FormRelatorioComissao.dts_com_prazo
          DisplayMask = 'R$: ##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 364
          Top = 2
          Width = 190
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'sum(VALOR_BASE)'
          DataSource = FormRelatorioComissao.dts_com_prazo
          DisplayMask = 'R$: ##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 348
          Top = 26
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
        object RLLabel25: TRLLabel
          Left = 626
          Top = 26
          Width = 89
          Height = 16
          Alignment = taRightJustify
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AfterPrint = RLLabel25AfterPrint
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 20
        object RLDBText6: TRLDBText
          Left = 0
          Top = 2
          Width = 68
          Height = 16
          Alignment = taRightJustify
          DataField = 'VENDA_ID'
          DataSource = FormRelatorioComissao.dts_com_prazo
        end
        object RLDBText7: TRLDBText
          Left = 76
          Top = 2
          Width = 90
          Height = 16
          DataField = 'VENDA_DATA'
          DataSource = FormRelatorioComissao.dts_com_prazo
        end
        object RLDBText9: TRLDBText
          Left = 167
          Top = 3
          Width = 300
          Height = 16
          AutoSize = False
          DataField = 'CLIENTE_NOME'
          DataSource = FormRelatorioComissao.dts_com_prazo
        end
        object RLDBText10: TRLDBText
          Left = 462
          Top = 1
          Width = 91
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR_BASE'
          DataSource = FormRelatorioComissao.dts_com_prazo
        end
        object RLDBText12: TRLDBText
          Left = 591
          Top = 1
          Width = 125
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR_COMISSAO'
          DataSource = FormRelatorioComissao.dts_com_prazo
        end
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 446
    Top = 15
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 540
    Top = 29
  end
end
