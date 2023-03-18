object FormRelLaticiniosLinhas: TFormRelLaticiniosLinhas
  Left = 106
  Top = 155
  Width = 806
  Height = 551
  Caption = 'FormRelLaticiniosLinhas'
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
    Left = -4
    Top = 0
    Width = 794
    Height = 1123
    DataSource = FormPordLaticinios.dts_linhas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PreviewOptions.Caption = 'Rel'#225'torio de Compras - Latic'#237'nios'
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 113
      BandType = btHeader
      object RLLabel3: TRLLabel
        Left = 1
        Top = 1
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel2: TRLLabel
        Left = 1
        Top = 95
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLDBText1: TRLDBText
        Left = 150
        Top = 39
        Width = 68
        Height = 16
        DataField = 'ENDERECO'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 308
        Top = 53
        Width = 20
        Height = 16
        Caption = 'IE:'
      end
      object RLLabel7: TRLLabel
        Left = 81
        Top = 56
        Width = 37
        Height = 16
        Caption = 'Cnpj:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 81
        Top = 38
        Width = 68
        Height = 16
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 83
        Top = 20
        Width = 63
        Height = 16
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 82
        Top = 75
        Width = 68
        Height = 16
        Caption = 'Fone/Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 157
        Top = 90
        Width = 408
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Compras Mensais por Linhas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbtxtRAZAO_SOCIAL1: TRLDBText
        Left = 150
        Top = 55
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
      object rldbtxtRAZAO_SOCIAL: TRLDBText
        Left = 151
        Top = 74
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
      object RLDBText8: TRLDBText
        Left = 152
        Top = 17
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
      object RLDBText6: TRLDBText
        Left = 344
        Top = 54
        Width = 16
        Height = 16
        DataField = 'IE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 247
        Top = 72
        Width = 29
        Height = 16
        DataField = 'FAX'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 729
        Top = 36
        Width = 18
        Height = 16
        DataField = 'UF'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 401
        Top = 39
        Width = 54
        Height = 16
        DataField = 'BAIRRO'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 576
        Top = 37
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 685
        Top = 16
        Width = 55
        Height = 16
      end
      object RLDBImage1: TRLDBImage
        Left = 4
        Top = 19
        Width = 70
        Height = 53
        DataField = 'LOGOMARCA'
        DataSource = DM.DTS_Empresa
        Scaled = True
      end
      object RLLabel21: TRLLabel
        Left = 604
        Top = 66
        Width = 62
        Height = 16
        Caption = 'Mes/Ano:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Mes: TRLLabel
        Left = 672
        Top = 66
        Width = 29
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        AfterPrint = MesAfterPrint
      end
      object RLLabel24: TRLLabel
        Left = 705
        Top = 67
        Width = 8
        Height = 16
        Caption = '/'
      end
      object Ano: TRLLabel
        Left = 717
        Top = 67
        Width = 29
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        AfterPrint = AnoAfterPrint
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 132
      Width = 756
      Height = 40
      BandType = btTitle
      object RLLabel13: TRLLabel
        Left = 1
        Top = 22
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 0
        Width = 44
        Height = 16
        Caption = 'Linha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 2
        Top = 18
        Width = 73
        Height = 16
        Caption = 'Produtores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 337
        Top = 21
        Width = 73
        Height = 16
        Caption = 'Qtde Litros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 412
        Top = 20
        Width = 92
        Height = 16
        Caption = 'Valor Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 667
        Top = 19
        Width = 74
        Height = 16
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object linha: TRLLabel
        Left = 58
        Top = 1
        Width = 31
        Height = 16
        AfterPrint = linhaAfterPrint
      end
      object RLLabel10: TRLLabel
        Left = 518
        Top = 21
        Width = 99
        Height = 16
        Caption = 'FDiantamentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 172
      Width = 756
      Height = 22
      object RLDBText7: TRLDBText
        Left = 1
        Top = 0
        Width = 66
        Height = 16
        DataField = 'COD_FORNECEDOR'
        DataSource = FormPordLaticinios.dts_linhas
      end
      object RLDBText9: TRLDBText
        Left = 70
        Top = 1
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = FormPordLaticinios.dts_linhas
      end
      object rldbtxtSOMAQUANTIDADE: TRLDBText
        Left = 286
        Top = 2
        Width = 126
        Height = 16
        Alignment = taRightJustify
        DataField = 'SOMAQUANTIDADE'
        DataSource = FormPordLaticinios.dts_linhas
      end
      object RLDBResult1: TRLDBResult
        Left = 304
        Top = 2
        Width = 202
        Height = 16
        Alignment = taRightJustify
        ComputeNulls = False
        DataFormula = '(SOMAVALOR_TOTAL)'
        DataSource = FormPordLaticinios.dts_linhas
      end
      object RLDBResult5: TRLDBResult
        Left = 401
        Top = 2
        Width = 217
        Height = 16
        Alignment = taRightJustify
        ComputeNulls = False
        DataFormula = '(SOMADEVALOR_BAIXA)'
        DataSource = FormPordLaticinios.dts_linhas_bx
      end
      object sub_total: TRLDBResult
        Left = 679
        Top = 0
        Width = 61
        Height = 16
        Alignment = taRightJustify
        ComputeNulls = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnCompute = sub_totalCompute
      end
    end
    object RLSystemInfo2: TRLSystemInfo
      Left = 748
      Top = 1083
      Width = 25
      Height = 16
      Info = itPageNumber
    end
    object RLLabel15: TRLLabel
      Left = 715
      Top = 1083
      Width = 31
      Height = 16
      Caption = 'Pag:'
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 194
      Width = 756
      Height = 31
      BandType = btSummary
      object RLLabel19: TRLLabel
        Left = 3
        Top = -12
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel18: TRLLabel
        Left = 1
        Top = 15
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel17: TRLLabel
        Left = 3
        Top = 4
        Width = 168
        Height = 16
        Caption = 'Total Geral de Produtores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 186
        Top = 4
        Width = 226
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'sum(SOMAQUANTIDADE)'
        DataSource = FormPordLaticinios.dts_linhas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 266
        Top = 4
        Width = 237
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'sum(SOMAVALOR_TOTAL)'
        DataSource = FormPordLaticinios.dts_linhas
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult4: TRLDBResult
        Left = 365
        Top = 4
        Width = 251
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'sum(SOMADEVALOR_BAIXA)'
        DataSource = FormPordLaticinios.dts_linhas_bx
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TOTAL: TRLLabel
        Left = 665
        Top = 4
        Width = 76
        Height = 16
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        AfterPrint = TOTALAfterPrint
      end
      object RLLabel20: TRLLabel
        Left = 626
        Top = 5
        Width = 20
        Height = 16
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 449
    Top = 13
  end
end
