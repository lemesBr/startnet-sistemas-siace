object FormRel_Comissao_resumo: TFormRel_Comissao_resumo
  Left = 311
  Top = 119
  Width = 855
  Height = 553
  Caption = 'FormRel_Comissao_resumo'
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
    Left = -5
    Top = -18
    Width = 794
    Height = 1123
    DataSource = DM.DTS_Empresa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    AfterPrint = RLReport1AfterPrint
    OnPageStarting = RLReport1PageStarting
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 85
      AutoSize = True
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 175
        Top = 53
        Width = 371
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Comiss'#227'o Por Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 614
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
        Left = 458
        Top = 72
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
        Left = 594
        Top = 71
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
        Left = 547
        Top = 72
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
        Left = 686
        Top = 71
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
        Left = 587
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
      object RLSystemInfo1: TRLSystemInfo
        Left = 662
        Top = 18
        Width = 54
        Height = 16
        Alignment = taRightJustify
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 644
        Top = 3
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLLabel10: TRLLabel
        Left = 1
        Top = 66
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
      object RLLabel2: TRLLabel
        Left = 79
        Top = 67
        Width = 58
        Height = 16
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 318
      Width = 718
      Height = 25
      BandType = btSummary
      object RLLabel27: TRLLabel
        Left = 305
        Top = 4
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
      object RLLabel18: TRLLabel
        Left = 645
        Top = 2
        Width = 71
        Height = 16
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 502
        Top = 2
        Width = 71
        Height = 16
        Alignment = taRightJustify
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
      Top = 123
      Width = 718
      Height = 99
      DataSource = FormRelatorioComissao.dts_comissao_r
      object RLBand4: TRLBand
        Left = 0
        Top = 71
        Width = 718
        Height = 28
        BandType = btSummary
        object RLLabel8: TRLLabel
          Left = 1
          Top = 6
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLLabel15: TRLLabel
          Left = 301
          Top = 2
          Width = 131
          Height = 16
          Caption = 'Total dos Produtos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 8
          Top = -14
          Width = 1040
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '________________________________________________________________' +
            '____________________'
        end
        object RLLabel21: TRLLabel
          Left = 500
          Top = 2
          Width = 71
          Height = 16
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 646
          Top = 2
          Width = 71
          Height = 16
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 51
        Width = 718
        Height = 20
        object RLDBText9: TRLDBText
          Left = 83
          Top = 2
          Width = 74
          Height = 14
          DataField = 'DATA_PEDIDO'
          DataSource = FormRelatorioComissao.dts_comissao_r
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 523
          Top = 2
          Width = 74
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_BASE'
          DataSource = FormRelatorioComissao.dts_comissao_r
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 633
          Top = 1
          Width = 84
          Height = 14
          Alignment = taRightJustify
          DataField = 'COMISSAO_REC'
          DataSource = FormRelatorioComissao.dts_comissao_r
          DisplayMask = '##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 8
          Top = 2
          Width = 52
          Height = 14
          DataField = 'N_VENDA'
          DataSource = FormRelatorioComissao.dts_comissao_r
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 171
          Top = 3
          Width = 78
          Height = 14
          DataField = 'NOME_CLIENTE'
          DataSource = FormRelatorioComissao.dts_comissao_r
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 51
        BandType = btColumnHeader
        object RLLabel36: TRLLabel
          Left = 0
          Top = 17
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLLabel37: TRLLabel
          Left = 8
          Top = 36
          Width = 1033
          Height = 14
          Caption = 
            '________________________________________________________________' +
            '________________________________________________________________' +
            '___________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 80
          Top = 32
          Width = 69
          Height = 16
          Caption = 'Data Vda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 523
          Top = 32
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
        object RLLabel42: TRLLabel
          Left = 631
          Top = 32
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
        object RLLabel43: TRLLabel
          Left = 321
          Top = 6
          Width = 92
          Height = 23
          Caption = 'Produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel44: TRLLabel
          Left = 8
          Top = 35
          Width = 53
          Height = 16
          Caption = 'N'#186' Vda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 173
          Top = 35
          Width = 118
          Height = 16
          Caption = 'Cliente da Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 222
      Width = 718
      Height = 96
      DataSource = FormRelatorioComissao.Dts_comissao_S
      object RLBand2: TRLBand
        Left = 0
        Top = 71
        Width = 718
        Height = 25
        BandType = btSummary
        object RLLabel7: TRLLabel
          Left = 1
          Top = 6
          Width = 669
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '_______________________________'
        end
        object RLLabel13: TRLLabel
          Left = 303
          Top = 3
          Width = 127
          Height = 16
          Caption = 'Total dos Servi'#231'os:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 0
          Top = -14
          Width = 1040
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '________________________________________________________________' +
            '____________________'
        end
        object RLLabel6: TRLLabel
          Left = 499
          Top = 3
          Width = 71
          Height = 16
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 643
          Top = 3
          Width = 71
          Height = 16
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 51
        Width = 718
        Height = 20
        object RLDBText3: TRLDBText
          Left = 82
          Top = 2
          Width = 74
          Height = 14
          DataField = 'DATA_PEDIDO'
          DataSource = FormRelatorioComissao.Dts_comissao_S
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 493
          Top = 2
          Width = 74
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_BASE'
          DataSource = FormRelatorioComissao.Dts_comissao_S
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 629
          Top = 1
          Width = 84
          Height = 14
          Alignment = taRightJustify
          DataField = 'COMISSAO_REC'
          DataSource = FormRelatorioComissao.Dts_comissao_S
          DisplayMask = '##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 9
          Top = 2
          Width = 52
          Height = 14
          DataField = 'N_VENDA'
          DataSource = FormRelatorioComissao.Dts_comissao_S
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 171
          Top = 3
          Width = 78
          Height = 14
          DataField = 'NOME_CLIENTE'
          DataSource = FormRelatorioComissao.Dts_comissao_S
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 51
        BandType = btColumnHeader
        object RLLabel26: TRLLabel
          Left = 0
          Top = 14
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLLabel28: TRLLabel
          Left = 8
          Top = 36
          Width = 1033
          Height = 14
          Caption = 
            '________________________________________________________________' +
            '________________________________________________________________' +
            '___________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 80
          Top = 32
          Width = 69
          Height = 16
          Caption = 'Data Vda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 493
          Top = 32
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
        object RLLabel33: TRLLabel
          Left = 627
          Top = 32
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
        object RLLabel34: TRLLabel
          Left = 321
          Top = 5
          Width = 86
          Height = 23
          Caption = 'Servicos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 8
          Top = 35
          Width = 53
          Height = 16
          Caption = 'N'#186' Vda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel35: TRLLabel
          Left = 173
          Top = 35
          Width = 118
          Height = 16
          Caption = 'Cliente da Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 601
    Top = 676
  end
end
