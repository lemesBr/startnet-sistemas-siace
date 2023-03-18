object Formduplicata40col: TFormduplicata40col
  Left = 676
  Top = 116
  Width = 541
  Height = 590
  Caption = 'Formduplicata40col'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 5
    Top = 2
    Width = 272
    Height = 362
    DataSource = DMC.Dts_Crediario_contrato
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 3.000000000000000000
    Margins.RightMargin = 1.000000000000000000
    Margins.BottomMargin = 1.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 72.000000000000000000
    PageSetup.PaperHeight = 95.700000000000000000
    PageSetup.ForceEmulation = True
    PreviewOptions.FormStyle = fsStayOnTop
    PreviewOptions.ShowModal = True
    PreviewOptions.Caption = 'Venda de Produtos'
    PrintDialog = False
    ExpressionParser = RLExpressionParser1
    Transparent = False
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 4
      Top = 11
      Width = 264
      Height = 342
      DataSource = DMC.Dts_Crediario_contrato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterMeasuring = fmBeforeDetail
      ParentFont = False
      Positioning = btSummary
      Transparent = False
      object RLBand7: TRLBand
        Left = 0
        Top = 207
        Width = 264
        Height = 17
        Background.Align = faNone
        Transparent = False
        object RLDBText19: TRLDBText
          Left = 192
          Top = 1
          Width = 69
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_COMPRA'
          DataSource = DMC.Dts_Crediario_contrato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText36: TRLDBText
          Left = 115
          Top = 1
          Width = 80
          Height = 10
          Alignment = taRightJustify
          DataField = 'DATA_VENCIMENTO'
          DataSource = DMC.Dts_Crediario_contrato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText37: TRLDBText
          Left = 86
          Top = 3
          Width = 39
          Height = 10
          Alignment = taRightJustify
          DataField = 'PARCELA'
          DataSource = DMC.Dts_Crediario_contrato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText38: TRLDBText
          Left = 9
          Top = 2
          Width = 73
          Height = 10
          DataField = 'CODIGO_COMPRA'
          DataSource = DMC.Dts_Crediario_contrato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 224
        Width = 264
        Height = 16
        Background.Align = faNone
        Background.AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        object RLLabel22: TRLLabel
          Left = 140
          Top = 3
          Width = 53
          Height = 10
          Caption = 'Valor a Pagar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel41: TRLLabel
          Left = -8
          Top = -9
          Width = 283
          Height = 12
          Caption = '________________________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText12: TRLDBText
          Left = 192
          Top = 3
          Width = 69
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_COMPRA'
          DataSource = DMC.Dts_Crediario_contrato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 153
        Width = 264
        Height = 54
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        object RLLabel38: TRLLabel
          Left = 0
          Top = 24
          Width = 283
          Height = 12
          Caption = '________________________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel11: TRLLabel
          Left = -1
          Top = 39
          Width = 283
          Height = 12
          Caption = '________________________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel37: TRLLabel
          Left = 1
          Top = 37
          Width = 33
          Height = 12
          Caption = 'Fatura:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel42: TRLLabel
          Left = 97
          Top = 37
          Width = 28
          Height = 12
          Caption = 'Parc.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel43: TRLLabel
          Left = 236
          Top = 37
          Width = 27
          Height = 12
          Caption = 'Valor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel44: TRLLabel
          Left = 169
          Top = 37
          Width = 25
          Height = 12
          Caption = 'Vcto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel45: TRLLabel
          Left = 1
          Top = 18
          Width = 232
          Height = 11
          Caption = 'parcelas abaixo em seus respectivos vencimentos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel46: TRLLabel
          Left = 2
          Top = 3
          Width = 230
          Height = 11
          Caption = 'Estou  Ciente  que  pagarei  a  Quantia  Conforme'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel19: TRLLabel
          Left = -6
          Top = -9
          Width = 293
          Height = 11
          Caption = '__________________________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 264
        Height = 153
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        object RLLabel12: TRLLabel
          Left = 0
          Top = 74
          Width = 285
          Height = 13
          Caption = '_______________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 0
          Top = 56
          Width = 285
          Height = 13
          Caption = '_______________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 0
          Top = 10
          Width = 285
          Height = 13
          Caption = '_______________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel1: TRLLabel
          Left = 86
          Top = 7
          Width = 87
          Height = 11
          Caption = 'D U P P L I C A T A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 46
          Top = 24
          Width = 77
          Height = 11
          DataField = 'NOME_FANTASIA'
          DataSource = DM.DTS_Empresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 200
          Top = 52
          Width = 51
          Height = 12
          DataField = 'TELEFONE'
          DataSource = DM.DTS_Empresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 123
          Top = 38
          Width = 47
          Height = 10
          DataField = 'ENDERECO'
          DataSource = DM.DTS_Empresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 35
          Top = 53
          Width = 39
          Height = 12
          DataField = 'CIDADE'
          DataSource = DM.DTS_Empresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 23
          Top = 39
          Width = 23
          Height = 10
          DataField = 'CNPJ'
          DataSource = DM.DTS_Empresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 0
          Top = 39
          Width = 25
          Height = 12
          Caption = 'Cnpj:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 0
          Top = 24
          Width = 43
          Height = 12
          Caption = 'Empresa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 97
          Top = 38
          Width = 22
          Height = 12
          Caption = 'End:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 142
          Top = 52
          Width = 17
          Height = 13
          DataField = 'UF'
          DataSource = DM.DTS_Empresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 119
          Top = 52
          Width = 19
          Height = 13
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 0
          Top = 72
          Width = 32
          Height = 12
          Caption = 'Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 34
          Top = 72
          Width = 41
          Height = 12
          DataField = 'CODIGO'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 79
          Top = 72
          Width = 45
          Height = 12
          Caption = 'Data Vda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText8: TRLDBText
          Left = 127
          Top = 72
          Width = 68
          Height = 12
          DataField = 'DATA_PEDIDO'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 195
          Top = 72
          Width = 27
          Height = 12
          Caption = 'Vend:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText10: TRLDBText
          Left = 219
          Top = 72
          Width = 46
          Height = 12
          DataField = 'USUARIO'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel24: TRLLabel
          Left = 0
          Top = 88
          Width = 35
          Height = 12
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText21: TRLDBText
          Left = 76
          Top = 88
          Width = 74
          Height = 12
          DataField = 'NOME_CLIENTE'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel26: TRLLabel
          Left = 0
          Top = 104
          Width = 44
          Height = 12
          Caption = 'Cpf/Cnpj:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel27: TRLLabel
          Left = 0
          Top = 120
          Width = 45
          Height = 12
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText24: TRLDBText
          Left = 49
          Top = 119
          Width = 56
          Height = 12
          DataField = 'ENDERECO'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText25: TRLDBText
          Left = 42
          Top = 104
          Width = 52
          Height = 12
          DataField = 'CPF_CNPJ'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel28: TRLLabel
          Left = 166
          Top = 104
          Width = 30
          Height = 12
          Caption = 'Rg/IE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText26: TRLDBText
          Left = 199
          Top = 104
          Width = 31
          Height = 12
          DataField = 'RG_IE'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel29: TRLLabel
          Left = 171
          Top = 135
          Width = 30
          Height = 12
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText27: TRLDBText
          Left = 197
          Top = 135
          Width = 39
          Height = 12
          DataField = 'BAIRRO'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel30: TRLLabel
          Left = 0
          Top = 135
          Width = 35
          Height = 12
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText28: TRLDBText
          Left = 39
          Top = 135
          Width = 39
          Height = 12
          DataField = 'CIDADE'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel18: TRLLabel
          Left = 0
          Top = 53
          Width = 35
          Height = 12
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel35: TRLLabel
          Left = 170
          Top = 53
          Width = 27
          Height = 12
          Caption = 'Fone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText9: TRLDBText
          Left = 40
          Top = 88
          Width = 85
          Height = 12
          DataField = 'CODIGO_CLIENTE'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 240
        Width = 264
        Height = 99
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        object RLLabel36: TRLLabel
          Left = 0
          Top = -9
          Width = 283
          Height = 12
          Caption = '________________________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel33: TRLLabel
          Left = 33
          Top = 27
          Width = 214
          Height = 13
          Caption = '______________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel34: TRLLabel
          Left = 75
          Top = 40
          Width = 120
          Height = 11
          Caption = 'Assinatura do Comprador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel31: TRLLabel
          Left = 113
          Top = 66
          Width = 70
          Height = 11
          Caption = 'Siace Sistemas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 443
    Top = 6
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 412
    Top = 11
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 484
    Top = 66
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 484
    Top = 34
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 485
    Top = 7
  end
end
