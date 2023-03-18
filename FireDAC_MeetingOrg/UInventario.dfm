object FormRELinventario: TFormRELinventario
  Left = 150
  Top = 225
  Width = 817
  Height = 480
  VertScrollBar.Position = 706
  Caption = 'Invent'#225'rio'
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
    Top = -699
    Width = 794
    Height = 1123
    DataSource = DMC.DTS_Est_Atual_Custo
    DefaultFilter = RLDraftFilter1
    FirstPageNumber = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    PreviewOptions.FormStyle = fsStayOnTop
    ExpressionParser = RLExpressionParser1
    OnPageStarting = RLReport1PageStarting
    object RLBand1: TRLBand
      Left = 38
      Top = 19
      Width = 718
      Height = 83
      AutoSize = True
      BandType = btColumnHeader
      object rlbl5: TRLLabel
        Left = 0
        Top = 49
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 69
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
        Left = 256
        Top = 36
        Width = 169
        Height = 24
        Caption = 'Livro Invent'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 66
        Width = 41
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 55
        Top = 66
        Width = 114
        Height = 13
        Caption = 'Descri'#231#227'o dos Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 354
        Top = 66
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 397
        Top = 66
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pre'#231'o Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 481
        Top = 66
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Custo Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 560
        Top = 66
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pre'#231'o Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 647
        Top = 66
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Venda Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 594
        Top = 2
        Width = 31
        Height = 16
        Caption = 'P'#225'g:'
      end
      object RLDBText8: TRLDBText
        Left = 0
        Top = 4
        Width = 158
        Height = 23
        DataField = 'RAZAO_SOCIAL'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
      object RLLabel12: TRLLabel
        Left = 313
        Top = 66
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Und.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 684
        Top = 18
        Width = 29
        Height = 16
        Alignment = taRightJustify
        Caption = 'data'
      end
      object RLDBText5: TRLDBText
        Left = 224
        Top = 23
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
      object RLLabel14: TRLLabel
        Left = 205
        Top = 24
        Width = 17
        Height = 13
        Caption = 'IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSystemInfo2: TRLSystemInfo
      Left = 669
      Top = 22
      Width = 87
      Height = 16
      Alignment = taRightJustify
      Info = itPageNumber
    end
    object rlsbdtl1: TRLSubDetail
      Left = 38
      Top = 102
      Width = 718
      Height = 46
      DataSource = DMC.DTS_Est_Atual_Custo
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 44
          Height = 13
          DataField = 'CODIGO'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object rldbtxtDESCRICAO_PRODUTO: TRLDBText
          Left = 54
          Top = 0
          Width = 257
          Height = 13
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 296
          Top = 0
          Width = 88
          Height = 13
          Alignment = taRightJustify
          DataField = 'ESTOQUE_ATUAL'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 389
          Top = 0
          Width = 77
          Height = 13
          Alignment = taRightJustify
          DataField = 'PRECO_CUSTO'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object rldbtxtENC_FINANCEIRO: TRLDBText
          Left = 411
          Top = 0
          Width = 138
          Height = 13
          Alignment = taRightJustify
          DataField = 'VALOR_EST_CUSTO_ATUAL'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 557
          Top = 0
          Width = 76
          Height = 13
          Alignment = taRightJustify
          DataField = 'PRECO_VENDA'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 626
          Top = 0
          Width = 89
          Height = 13
          Alignment = taRightJustify
          DataField = 'VALOR_ESTOQUE'
          DataSource = DMC.DTS_Est_Atual_Custo
          DisplayMask = 'R$ #.###,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 261
          Top = 0
          Width = 80
          Height = 13
          Alignment = taRightJustify
          DataField = 'DESC_UNIDADE'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 16
        Width = 718
        Height = 24
        BandType = btSummary
        object rlbl11: TRLLabel
          Left = 0
          Top = 7
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLLabel10: TRLLabel
          Left = 0
          Top = -13
          Width = 718
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '______________________________________'
        end
        object RLDBResult2: TRLDBResult
          Left = 166
          Top = 3
          Width = 218
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(ESTOQUE_ATUAL)'
          DataSource = DMC.DTS_Est_Atual_Custo
          DisplayMask = '##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 497
          Top = 2
          Width = 220
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(VALOR_ESTOQUE)'
          DataSource = DMC.DTS_Est_Atual_Custo
          DisplayMask = 'R$: ##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HoldStyle = hsVertically
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 264
          Top = 2
          Width = 285
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(VALOR_EST_CUSTO_ATUAL)'
          DataSource = DMC.DTS_Est_Atual_Custo
          DisplayMask = 'R$: ##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HoldStyle = hsVertically
          ParentFont = False
        end
        object rlbl6: TRLLabel
          Left = 147
          Top = 2
          Width = 128
          Height = 16
          Caption = 'Total do Invent'#225'rio'
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
  object RLDraftFilter1: TRLDraftFilter
    Left = 604
    Top = 58
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 654
    Top = 207
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 726
    Top = 199
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 686
    Top = 175
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 614
    Top = 199
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 694
    Top = 215
  end
end
