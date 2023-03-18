object FormRel_VendasNotas: TFormRel_VendasNotas
  Left = 306
  Top = 181
  Width = 931
  Height = 480
  Caption = 
    'Relat'#243'rio de Produtos com emiss'#227'o de Nfe ou Nfc-e por Grupo de T' +
    'ributa'#231#227'o'
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
    Left = 21
    Top = 14
    Width = 794
    Height = 1123
    DataSource = FormRelVendaNotas.DTS_RELGRUPO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    PreviewOptions.FormStyle = fsStayOnTop
    ExpressionParser = RLExpressionParser1
    OnPageStarting = RLReport1PageStarting
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 104
      AutoSize = True
      BandType = btHeader
      object rlbl5: TRLLabel
        Left = 0
        Top = 68
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 90
        Width = 753
        Height = 14
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
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
        Width = 322
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Notas Fiscais Por Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 265
        Top = 88
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 329
        Top = 87
        Width = 43
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 701
        Top = 88
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vda Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 632
        Top = 3
        Width = 26
        Height = 15
        Caption = 'P'#225'g:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 0
        Top = 4
        Width = 171
        Height = 22
        DataField = 'NOME_FANTASIA'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl9: TRLLabel
        Left = 478
        Top = 67
        Width = 64
        Height = 13
        Caption = 'Data Inical:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl10: TRLLabel
        Left = 627
        Top = 67
        Width = 61
        Height = 13
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object datai: TRLLabel
        Left = 563
        Top = 67
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
        Left = 710
        Top = 67
        Width = 26
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object rldbtxtRAZAO_SOCIAL: TRLDBText
        Left = 1
        Top = 39
        Width = 66
        Height = 15
        DataField = 'TELEFONE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbtxtRAZAO_SOCIAL1: TRLDBText
        Left = 0
        Top = 25
        Width = 36
        Height = 15
        DataField = 'CNPJ'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl12: TRLLabel
        Left = 625
        Top = 22
        Width = 32
        Height = 15
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl1: TRLLabel
        Left = 0
        Top = 88
        Width = 51
        Height = 13
        Caption = 'N'#186' Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl3: TRLLabel
        Left = 58
        Top = 88
        Width = 63
        Height = 13
        Caption = 'Data Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 137
        Top = 88
        Width = 42
        Height = 13
        Caption = 'N'#186' Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 628
        Top = 87
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'Desconto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 193
        Top = 87
        Width = 52
        Height = 13
        Caption = 'Tipo Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSystemInfo1: TRLSystemInfo
      Left = 713
      Top = 41
      Width = 59
      Height = 15
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object RLSystemInfo2: TRLSystemInfo
      Left = 764
      Top = 21
      Width = 9
      Height = 15
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Info = itPageNumber
      ParentFont = False
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 141
      Width = 756
      Height = 25
      BandType = btSummary
      object rlbl11: TRLLabel
        Left = 0
        Top = 7
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel10: TRLLabel
        Left = 0
        Top = -13
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLDBResult1: TRLDBResult
        Left = 635
        Top = 5
        Width = 119
        Height = 12
        Alignment = taRightJustify
        DataFormula = 'SUM(VL_TOTAL)'
        DataSource = FormRelVendaNotas.DTS_RELGRUPO
        DisplayMask = '##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object rlbl6: TRLLabel
        Left = 147
        Top = 4
        Width = 97
        Height = 12
        Caption = 'Total Geral das Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 541
        Top = 5
        Width = 143
        Height = 12
        Alignment = taRightJustify
        DataFormula = 'SUM(VL_DESCONTOS)'
        DataSource = FormRelVendaNotas.DTS_RELGRUPO
        DisplayMask = '##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 123
      Width = 756
      Height = 18
      object RLDBText1: TRLDBText
        Left = 263
        Top = 2
        Width = 66
        Height = 12
        DataField = 'COD_CLIENTE'
        DataSource = FormRelVendaNotas.DTS_RELGRUPO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object rldbtxtDESCRICAO_PRODUTO: TRLDBText
        Left = 328
        Top = 2
        Width = 210
        Height = 13
        AutoSize = False
        DataField = 'NOME_CLIENTE_FOR'
        DataSource = FormRelVendaNotas.DTS_RELGRUPO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 704
        Top = 2
        Width = 49
        Height = 12
        Alignment = taRightJustify
        DataField = 'VL_TOTAL'
        DataSource = FormRelVendaNotas.DTS_RELGRUPO
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object rldbtxtCODIGO: TRLDBText
        Left = 134
        Top = 2
        Width = 46
        Height = 12
        DataField = 'NR_NOTA'
        DataSource = FormRelVendaNotas.DTS_RELGRUPO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object rldbtxtCODIGO2: TRLDBText
        Left = 60
        Top = 1
        Width = 60
        Height = 12
        DataField = 'DT_EMISSAO'
        DataSource = FormRelVendaNotas.DTS_RELGRUPO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 2
        Top = 0
        Width = 56
        Height = 12
        DataField = 'NR_PEDIDO'
        DataSource = FormRelVendaNotas.DTS_RELGRUPO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 608
        Top = 3
        Width = 74
        Height = 12
        Alignment = taRightJustify
        DataField = 'VL_DESCONTOS'
        DataSource = FormRelVendaNotas.DTS_RELGRUPO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 196
        Top = 3
        Width = 43
        Height = 12
        DataField = 'MODELO'
        DataSource = FormRelVendaNotas.DTS_RELGRUPO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 411
    Top = 559
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 462
    Top = 554
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 518
    Top = 544
  end
  object Matricial: TRLDraftFilter
    Left = 548
    Top = 541
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 600
    Top = 532
  end
end
