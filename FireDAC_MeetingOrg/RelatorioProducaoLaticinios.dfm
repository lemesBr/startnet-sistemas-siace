object FormRelProdLaticinios: TFormRelProdLaticinios
  Left = 5
  Top = 166
  Width = 807
  Height = 511
  Caption = 'FormRelProdLaticinios'
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
    Left = 1
    Top = -19
    Width = 794
    Height = 1123
    DataSource = FormPordLaticinios.Dts_laticinios
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
        Left = 0
        Top = 0
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 95
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLDBText1: TRLDBText
        Left = 73
        Top = 39
        Width = 304
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
        Left = 282
        Top = 56
        Width = 20
        Height = 16
        Caption = 'IE:'
      end
      object RLLabel7: TRLLabel
        Left = 5
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
        Left = 4
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
        Left = 4
        Top = 18
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
        Left = 5
        Top = 74
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
        Left = 227
        Top = 90
        Width = 319
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Compras Mensais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbtxtRAZAO_SOCIAL1: TRLDBText
        Left = 71
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
        Left = 70
        Top = 73
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
        Left = 73
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
        Left = 304
        Top = 56
        Width = 148
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
        Left = 240
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
        Left = 392
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
      object DATAI: TRLLabel
        Left = 582
        Top = 71
        Width = 43
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        AfterPrint = DATAIAfterPrint
      end
      object DATAF: TRLLabel
        Left = 682
        Top = 71
        Width = 47
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        AfterPrint = DATAFAfterPrint
      end
      object RLLabel31: TRLLabel
        Left = 651
        Top = 71
        Width = 13
        Height = 16
        Caption = 'A'
      end
      object RLLabel29: TRLLabel
        Left = 449
        Top = 71
        Width = 127
        Height = 16
        Caption = 'Data do Movimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 555
        Top = 92
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
        Left = 623
        Top = 93
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
        Left = 656
        Top = 94
        Width = 8
        Height = 16
        Caption = '/'
      end
      object Ano: TRLLabel
        Left = 668
        Top = 94
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
      Height = 63
      BandType = btHeader
      object RLLabel20: TRLLabel
        Left = 2
        Top = 44
        Width = 753
        Height = 18
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 1
        Width = 45
        Height = 16
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 77
        Top = 3
        Width = 60
        Height = 16
        DataField = 'COD_FORNECEDOR'
        DataSource = FormPordLaticinios.Dts_laticinios
      end
      object RLDBText9: TRLDBText
        Left = 152
        Top = 3
        Width = 141
        Height = 16
        DataField = 'NOME_FORNECEDOR'
        DataSource = FormPordLaticinios.Dts_laticinios
      end
      object RLLabel10: TRLLabel
        Left = 0
        Top = 20
        Width = 62
        Height = 16
        Caption = 'Cpf/Cnpj:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 77
        Top = 21
        Width = 37
        Height = 16
        DataField = 'CNPJ'
        DataSource = FormPordLaticinios.Dts_laticinios
      end
      object RLLabel11: TRLLabel
        Left = 1
        Top = 42
        Width = 89
        Height = 16
        Caption = 'Data Emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 164
        Top = 43
        Width = 78
        Height = 16
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 285
        Top = 43
        Width = 95
        Height = 16
        Caption = 'Desc. Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 424
        Top = 43
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
        Left = 616
        Top = 41
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
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 195
      Width = 756
      Height = 22
      object RLDBText11: TRLDBText
        Left = 4
        Top = 1
        Width = 134
        Height = 16
        DataField = 'DATA_LANCAMENTO'
        DataSource = FormPordLaticinios.Dts_laticinios
      end
      object RLDBText12: TRLDBText
        Left = 158
        Top = 2
        Width = 87
        Height = 16
        Alignment = taRightJustify
        DataField = 'QUANTIDADE'
        DataSource = FormPordLaticinios.Dts_laticinios
      end
      object RLDBText14: TRLDBText
        Left = 588
        Top = 1
        Width = 102
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_TOTAL1'
        DataSource = FormPordLaticinios.Dts_laticinios
      end
      object RLDBText13: TRLDBText
        Left = 294
        Top = 2
        Width = 68
        Height = 16
        Alignment = taCenter
        DataField = 'PRODUTO'
        DataSource = FormPordLaticinios.Dts_laticinios
      end
      object RLDBText15: TRLDBText
        Left = 423
        Top = 3
        Width = 90
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_LEITE'
        DataSource = FormPordLaticinios.Dts_laticinios
      end
    end
    object RLSystemInfo2: TRLSystemInfo
      Left = 748
      Top = 1083
      Width = 11
      Height = 16
      Info = itPageNumber
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 217
      Width = 756
      Height = 25
      BandType = btSummary
      object RLLabel18: TRLLabel
        Left = 2
        Top = 8
        Width = 753
        Height = 18
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel17: TRLLabel
        Left = 0
        Top = -13
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLDBResult1: TRLDBResult
        Left = 160
        Top = 3
        Width = 85
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'sum(QUANTIDADE)'
        DataSource = FormPordLaticinios.Dts_laticinios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 486
        Top = 3
        Width = 205
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'sum(VALOR_TOTAL1)'
        DataSource = FormPordLaticinios.Dts_laticinios
        DisplayMask = 'R$: #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 1
        Top = 3
        Width = 137
        Height = 16
        Caption = 'Qtde Total em Litros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 480
        Top = 4
        Width = 78
        Height = 16
        Caption = 'Valor Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 19
      Top = 242
      Width = 756
      Height = 27
      AllowedBands = [btSummary]
      DataSource = FormPordLaticinios.DTS_CONTAS_PAGAS
      Positioning = btSummary
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 25
        object RLLabel26: TRLLabel
          Left = 3
          Top = 7
          Width = 753
          Height = 17
          Caption = 
            '________________________________________________________________' +
            '___________________________________________'
        end
        object RLLabel23: TRLLabel
          Left = 3
          Top = 4
          Width = 123
          Height = 16
          Caption = 'FDiantamentos R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 496
          Top = 3
          Width = 119
          Height = 16
          Caption = 'Saldo a Pagar R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object TOTAL: TRLLabel
          Left = 616
          Top = 3
          Width = 76
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AfterPrint = TOTALAfterPrint
        end
        object RLDBResult3: TRLDBResult
          Left = -9
          Top = 4
          Width = 254
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(SOMADEVALOR_BAIXA)'
          DataSource = FormPordLaticinios.DTS_CONTAS_PAGAS
          DisplayMask = 'R$: #,##0.00'
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
  object RLExpressionParser1: TRLExpressionParser
    Left = 524
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 569
    Top = 14
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 601
    Top = 17
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 637
    Top = 15
  end
  object Matricial: TRLDraftFilter
    Left = 489
    Top = 18
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 673
    Top = 21
  end
end
