object FormInventario_Custo: TFormInventario_Custo
  Left = 408
  Top = 169
  Width = 838
  Height = 480
  Caption = 'FormInventario_Custo'
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
    Left = -10
    Top = 7
    Width = 794
    Height = 1123
    DataSource = DMC.DTS_Est_Atual_Custo
    DefaultFilter = Matricial
    FirstPageNumber = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PreviewOptions.FormStyle = fsStayOnTop
    ExpressionParser = RLExpressionParser1
    OnPageStarting = RLReport1PageStarting
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 108
      AutoSize = True
      BandType = btColumnHeader
      object rlbl5: TRLLabel
        Left = 0
        Top = 49
        Width = 753
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '___________________________________________'
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 92
        Width = 753
        Height = 16
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
        Left = 124
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
        Left = 581
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
        Left = 614
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
        Left = 690
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
      object RLLabel11: TRLLabel
        Left = 638
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
        Left = 637
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
        Left = 363
        Top = 66
        Width = 28
        Height = 13
        Caption = 'Und.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 48
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
      object RLLabel9: TRLLabel
        Left = 688
        Top = 16
        Width = 58
        Height = 16
        Alignment = taRightJustify
      end
      object RLDBText6: TRLDBText
        Left = 224
        Top = 23
        Width = 177
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
      object RLLabel15: TRLLabel
        Left = 398
        Top = 66
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'NCM.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLMemo3: TRLMemo
        Left = 491
        Top = 65
        Width = 89
        Height = 39
        Alignment = taCenter
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Indicador de Propriedade de posse **')
        ParentFont = False
      end
      object RLMemo4: TRLMemo
        Left = 432
        Top = 65
        Width = 57
        Height = 36
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Tipo de Item *')
        ParentFont = False
      end
    end
    object RLSystemInfo2: TRLSystemInfo
      Left = 753
      Top = 22
      Width = 11
      Height = 16
      Alignment = taRightJustify
      Info = itPageNumber
    end
    object rlsbdtl1: TRLSubDetail
      Left = 19
      Top = 127
      Width = 756
      Height = 46
      DataSource = DMC.DTS_Est_Atual_Custo
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 16
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 44
          Height = 11
          DataField = 'CODIGO'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object rldbtxtDESCRICAO_PRODUTO: TRLDBText
          Left = 124
          Top = 0
          Width = 233
          Height = 13
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 560
          Top = 0
          Width = 50
          Height = 11
          Alignment = taRightJustify
          DataField = 'ESTOQUE'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 609
          Top = 0
          Width = 75
          Height = 11
          Alignment = taRightJustify
          DataField = 'PRECO_CUSTO'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object rldbtxtENC_FINANCEIRO: TRLDBText
          Left = 658
          Top = 0
          Width = 97
          Height = 11
          Alignment = taRightJustify
          DataField = 'VALOR_EST_CUSTO'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 363
          Top = 0
          Width = 79
          Height = 11
          DataField = 'DESC_UNIDADE'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 48
          Top = 1
          Width = 87
          Height = 11
          DataField = 'CODIGO_BARRAS'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 396
          Top = 0
          Width = 43
          Height = 11
          DataField = 'NCM_SH'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 395
          Top = 1
          Width = 87
          Height = 11
          Alignment = taRightJustify
          DataField = 'TIPO_ATIVIDADE'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 426
          Top = 1
          Width = 125
          Height = 11
          Alignment = taRightJustify
          DataField = 'PRODUTO_PROPRIEDADE'
          DataSource = DMC.DTS_Est_Atual_Custo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 16
        Width = 756
        Height = 24
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
        object RLDBResult2: TRLDBResult
          Left = 443
          Top = 3
          Width = 168
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(ESTOQUE)'
          DataSource = DMC.DTS_Est_Atual_Custo
          DisplayMask = '##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 522
          Top = 2
          Width = 235
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'SUM(VALOR_EST_CUSTO)'
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
    object RLBand4: TRLBand
      Left = 19
      Top = 173
      Width = 756
      Height = 144
      BandType = btSummary
      object RLMemo1: TRLMemo
        Left = 16
        Top = 8
        Width = 185
        Height = 121
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          '*Os tipos de Item podem ser:'
          '00 - Mercadoria para Revenda'
          '01 - Mat'#233'ria-Prima'
          '03 - Produto em Processo'
          '04 - Produto Acabado'
          '05 - Subproduto'
          '06 - Produto Intermedi'#225'rio'
          '10 - Outros insumos'
          '99 - Outros')
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 264
        Top = 8
        Width = 457
        Height = 65
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          '** Os Indicadores de propriedade de posse podem ser:'
          ''
          '0 - Item de propriedade do informante e em seu poder'
          '1 - Item de propriedade do informante em posse de terceiros '
          '2- Item de propriedade de terceiros em posse do informante')
        ParentFont = False
      end
    end
  end
  object Matricial: TRLDraftFilter
    Left = 676
    Top = 706
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 726
    Top = 855
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 686
    Top = 847
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 758
    Top = 823
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 798
    Top = 847
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 574
    Top = 175
  end
end
