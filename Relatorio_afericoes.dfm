object FormRelAfericoes: TFormRelAfericoes
  Left = 356
  Top = 236
  Width = 807
  Height = 480
  Caption = 'FormRelAfericoes'
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
    Left = -18
    Top = -1
    Width = 794
    Height = 1123
    DataSource = FormRelAfercao.DSLOG
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
      Height = 104
      AutoSize = True
      BandType = btHeader
      object rlbl5: TRLLabel
        Left = 0
        Top = 73
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 90
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
      object RLLabel2: TRLLabel
        Left = 0
        Top = 88
        Width = 83
        Height = 16
        Caption = 'Lan'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 156
        Top = 87
        Width = 132
        Height = 16
        Caption = 'Tipo do Combust'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 357
        Top = 87
        Width = 35
        Height = 16
        Alignment = taRightJustify
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 397
        Top = 87
        Width = 76
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vlr Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 498
        Top = 88
        Width = 58
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vlr Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
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
        Left = 456
        Top = 71
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
        Left = 592
        Top = 72
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
        Left = 542
        Top = 71
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
        Left = 684
        Top = 72
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
        Left = 89
        Top = 88
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
      object RLLabel19: TRLLabel
        Left = 287
        Top = 43
        Width = 184
        Height = 19
        Caption = 'Rela'#231#227'o das Aferi'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 576
        Top = 88
        Width = 52
        Height = 16
        Alignment = taRightJustify
        Caption = 'Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
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
      Top = 23
      Width = 87
      Height = 16
      Alignment = taRightJustify
      Info = itPageNumber
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 123
      Width = 718
      Height = 16
      object RLDBText5: TRLDBText
        Left = 0
        Top = -1
        Width = 44
        Height = 13
        DataField = 'CODIGO'
        DataSource = FormRelAfercao.DSLOG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 91
        Top = 0
        Width = 30
        Height = 13
        DataField = 'DATA'
        DataSource = FormRelAfercao.DSLOG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 158
        Top = 1
        Width = 203
        Height = 11
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = FormRelAfercao.DSLOG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 324
        Top = 0
        Width = 69
        Height = 13
        Alignment = taRightJustify
        DataField = 'QUANTIDADE'
        DataSource = FormRelAfercao.DSLOG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 381
        Top = 0
        Width = 92
        Height = 13
        Alignment = taRightJustify
        DataField = 'VALOR_UNITARIO'
        DataSource = FormRelAfercao.DSLOG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 482
        Top = 0
        Width = 74
        Height = 13
        Alignment = taRightJustify
        DataField = 'VALOR_TOTAL'
        DataSource = FormRelAfercao.DSLOG
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 578
        Top = 0
        Width = 50
        Height = 13
        Alignment = taRightJustify
        DataField = 'USERCAD'
        DataSource = FormRelAfercao.DSLOG
        DisplayMask = 'R$ #.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 139
      Width = 718
      Height = 19
      BandType = btSummary
      object RLLabel23: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLDBResult6: TRLDBResult
        Left = 204
        Top = 0
        Width = 190
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(QUANTIDADE)'
        DataSource = FormRelAfercao.DSLOG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult7: TRLDBResult
        Left = 392
        Top = 0
        Width = 81
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(VALOR_UNITARIO)'
        DataSource = FormRelAfercao.DSLOG
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 354
        Top = 0
        Width = 201
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(VALOR_TOTAL)'
        DataSource = FormRelAfercao.DSLOG
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HoldStyle = hsVertically
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 13
        Top = 0
        Width = 183
        Height = 16
        Caption = 'Quantidade Total dos Itens '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 0
        Top = -15
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
    end
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 387
    Top = 33
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 438
    Top = 28
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 494
    Top = 18
  end
  object Matricial: TRLDraftFilter
    Left = 524
    Top = 15
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 576
    Top = 6
  end
end
