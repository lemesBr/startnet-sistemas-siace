object FormRelatoriosVeic: TFormRelatoriosVeic
  Left = 375
  Top = 195
  Width = 928
  Height = 480
  Caption = 'FormRelatoriosVeic'
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
    Left = 0
    Top = -1
    Width = 794
    Height = 1123
    DataSource = FormRelVeiculos.dts_relIpva
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
      Height = 64
      BandType = btHeader
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
        Left = 264
        Top = 26
        Width = 178
        Height = 19
        Caption = 'Relat'#243'rio de Ve'#237'culos'
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
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 102
      Width = 718
      Height = 203
      BeforePrint = RLBand3BeforePrint
      object RLLabel26: TRLLabel
        Left = -8
        Top = 183
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel9: TRLLabel
        Left = 1
        Top = 16
        Width = 66
        Height = 16
        Caption = 'Cpf/Cnpj:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 312
        Top = 81
        Width = 23
        Height = 16
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 1
        Top = 81
        Width = 68
        Height = 16
        Caption = 'Munic'#237'pio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 1
        Top = 65
        Width = 48
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 1
        Top = 112
        Width = 47
        Height = 16
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 312
        Top = 34
        Width = 21
        Height = 16
        Caption = 'IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 1
        Top = 33
        Width = 26
        Height = 16
        Caption = 'Rg:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 419
        Top = 81
        Width = 33
        Height = 16
        Caption = 'Cep:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 313
        Top = 166
        Width = 50
        Height = 16
        Caption = 'Chassi:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 1
        Top = 182
        Width = 51
        Height = 16
        Caption = 'Isento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 1
        Top = 152
        Width = 43
        Height = 16
        Caption = 'Placa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 313
        Top = 150
        Width = 52
        Height = 16
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 1
        Top = 166
        Width = 66
        Height = 16
        Caption = 'Renavan:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 313
        Top = 134
        Width = 89
        Height = 16
        Caption = 'Modelo/Ano:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 1
        Top = 134
        Width = 55
        Height = 16
        Caption = 'Veiculo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 313
        Top = 97
        Width = 53
        Height = 16
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 1
        Top = 96
        Width = 64
        Height = 16
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl3: TRLLabel
        Left = 312
        Top = 49
        Width = 19
        Height = 16
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl2: TRLLabel
        Left = 1
        Top = 0
        Width = 87
        Height = 16
        Caption = 'Propriet'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl1: TRLLabel
        Left = 1
        Top = 48
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
      object RLDBText6: TRLDBText
        Left = 104
        Top = 0
        Width = 69
        Height = 16
        DataField = 'NOME_CLI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText7: TRLDBText
        Left = 104
        Top = 17
        Width = 63
        Height = 16
        DataField = 'CNPJ_CLI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText9: TRLDBText
        Left = 104
        Top = 35
        Width = 109
        Height = 16
        DataField = 'INSC_ESTADUAL'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText10: TRLDBText
        Left = 104
        Top = 50
        Width = 84
        Height = 16
        DataField = 'ENDRES_CLI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText11: TRLDBText
        Left = 104
        Top = 66
        Width = 78
        Height = 16
        DataField = 'BAIRES_CLI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText12: TRLDBText
        Left = 104
        Top = 82
        Width = 78
        Height = 16
        DataField = 'CIDRES_CLI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText13: TRLDBText
        Left = 104
        Top = 96
        Width = 80
        Height = 16
        DataField = 'TELRES_CLI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText14: TRLDBText
        Left = 104
        Top = 112
        Width = 69
        Height = 16
        DataField = 'EMAIL_CLI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText16: TRLDBText
        Left = 104
        Top = 167
        Width = 69
        Height = 16
        DataField = 'RENAVAM'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText17: TRLDBText
        Left = 104
        Top = 152
        Width = 47
        Height = 16
        DataField = 'PLACA'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText18: TRLDBText
        Left = 104
        Top = 134
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText19: TRLDBText
        Left = 339
        Top = 34
        Width = 109
        Height = 16
        DataField = 'INSC_ESTADUAL'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText20: TRLDBText
        Left = 339
        Top = 50
        Width = 82
        Height = 16
        DataField = 'ESTRES_CLI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText21: TRLDBText
        Left = 342
        Top = 82
        Width = 86
        Height = 16
        DataField = 'NUMRES_CLI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText22: TRLDBText
        Left = 454
        Top = 82
        Width = 84
        Height = 16
        DataField = 'CEPRES_CLI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText23: TRLDBText
        Left = 369
        Top = 98
        Width = 89
        Height = 16
        DataField = 'CELULAR_CLI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLLabel29: TRLLabel
        Left = 105
        Top = 182
        Width = 62
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 408
        Top = 134
        Width = 32
        Height = 16
        DataField = 'ANO'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText24: TRLDBText
        Left = 616
        Top = 150
        Width = 64
        Height = 16
        DataField = 'UFPLACA'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText25: TRLDBText
        Left = 408
        Top = 166
        Width = 52
        Height = 16
        DataField = 'CHASSI'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLDBText26: TRLDBText
        Left = 408
        Top = 149
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = FormRelVeiculos.dts_relIpva
      end
      object RLLabel30: TRLLabel
        Left = 593
        Top = 150
        Width = 23
        Height = 16
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 62
        Top = 134
        Width = 55
        Height = 16
        DataField = 'CODIGO'
        DataSource = FormRelVeiculos.dts_relIpva
      end
    end
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 630
    Top = 133
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 662
    Top = 117
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 654
    Top = 141
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 718
    Top = 117
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 582
    Top = 80
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial 80 Colunas'
    Left = 670
    Top = 80
  end
end
