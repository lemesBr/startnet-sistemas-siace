object FormRelConfEstoque: TFormRelConfEstoque
  Left = 317
  Top = 190
  Width = 919
  Height = 480
  Caption = 'FormRelConfEstoque'
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
    Left = 46
    Top = -1
    Width = 794
    Height = 1123
    DataSource = FormConfEstoque.Dts_confEstoque
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    PreviewOptions.FormStyle = fsStayOnTop
    ExpressionParser = RLExpressionParser1
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
        Width = 244
        Height = 24
        Caption = 'Confer'#234'ncia de Estoque'
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
        Left = 223
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
        Left = 638
        Top = 66
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtde Contada'
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
        Left = 475
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
      object RLLabel8: TRLLabel
        Left = 59
        Top = 66
        Width = 67
        Height = 13
        Caption = 'C'#243'd. Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 568
        Top = 66
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtde Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 146
        Top = 66
        Width = 78
        Height = 13
        Caption = 'C'#243'd. Fab/Ref.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 526
        Top = 65
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSystemInfo1: TRLSystemInfo
      Left = 700
      Top = 38
      Width = 54
      Height = 16
      Alignment = taRightJustify
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
      DataSource = FormConfEstoque.Dts_confEstoque
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        object RLDBText1: TRLDBText
          Left = 0
          Top = 1
          Width = 44
          Height = 13
          DataField = 'CODIGO'
          DataSource = FormConfEstoque.Dts_confEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object rldbtxtDESCRICAO_PRODUTO: TRLDBText
          Left = 222
          Top = 1
          Width = 247
          Height = 13
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = FormConfEstoque.Dts_confEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 472
          Top = 1
          Width = 31
          Height = 13
          Alignment = taRightJustify
          DataField = 'DESC_UNIDADE'
          DataSource = FormConfEstoque.Dts_confEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 50
          Top = 1
          Width = 90
          Height = 13
          DataField = 'CODIGO_BARRAS'
          DataSource = FormConfEstoque.Dts_confEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 636
          Top = 0
          Width = 81
          Height = 16
          Caption = '___________'
        end
        object RLDBText3: TRLDBText
          Left = 580
          Top = 2
          Width = 50
          Height = 13
          Alignment = taRightJustify
          DataField = 'ESTOQUE'
          DataSource = FormConfEstoque.Dts_confEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 146
          Top = 2
          Width = 66
          Height = 13
          DataField = 'REFERENCIA'
          DataSource = FormConfEstoque.Dts_confEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 504
          Top = 2
          Width = 58
          Height = 13
          Alignment = taRightJustify
          DataField = 'PRECO_VENDA'
          DataSource = FormConfEstoque.Dts_confEstoque
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
        object rlbl6: TRLLabel
          Left = 395
          Top = 5
          Width = 114
          Height = 16
          Caption = 'Quantidade Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 412
          Top = 4
          Width = 218
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(ESTOQUE_ATUAL)'
          DataSource = FormConfEstoque.Dts_confEstoque
          DisplayMask = '##,##0.00'
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
  object RLDraftFilter1: TRLDraftFilter
    Left = 494
    Top = 175
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 534
    Top = 167
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 630
    Top = 183
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 606
    Top = 167
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 670
    Top = 159
  end
end
