object FormRelRecibo40: TFormRelRecibo40
  Left = 335
  Top = 141
  Width = 928
  Height = 480
  Caption = 'Form'
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
    Top = 2
    Width = 283
    Height = 527
    DataSource = FormRecibo.DataSource1
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 3.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 75.000000000000000000
    PageSetup.PaperHeight = 139.500000000000000000
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 11
      Top = 19
      Width = 261
      Height = 156
      object RLLabel1: TRLLabel
        Left = 35
        Top = 8
        Width = 113
        Height = 19
        Caption = 'R E C I B O  N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 1
        Top = 62
        Width = 91
        Height = 14
        Caption = 'Recebi(emos) de: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 1
        Top = 114
        Width = 90
        Height = 14
        Caption = 'A importancia de: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 153
        Top = 8
        Width = 67
        Height = 19
        DataField = 'RECIBO'
        DataSource = FormRecibo.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 2
        Top = 79
        Width = 77
        Height = 14
        DataField = 'DESTINATARIO'
        DataSource = FormRecibo.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 34
        Top = 32
        Width = 86
        Height = 16
        Caption = 'Valor de R$: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 133
        Top = 32
        Width = 84
        Height = 16
        DataField = 'VALOR'
        DataSource = FormRecibo.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBMemo
        Left = 0
        Top = 131
        Width = 257
        Height = 14
        Behavior = [beSiteExpander]
        DataField = 'VALOR_EXT'
        DataSource = FormRecibo.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 11
      Top = 175
      Width = 261
      Height = 33
      AutoSize = True
      object RLLabel5: TRLLabel
        Left = 4
        Top = 0
        Width = 66
        Height = 14
        Caption = 'Referente a: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBMemo2: TRLDBMemo
        Left = 0
        Top = 19
        Width = 257
        Height = 14
        Behavior = [beSiteExpander]
        DataField = 'HISTORICO'
        DataSource = FormRecibo.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 11
      Top = 208
      Width = 261
      Height = 127
      object RLLabel8: TRLLabel
        Left = 2
        Top = 9
        Width = 181
        Height = 14
        Caption = 'Para maior clareza firmo o presente: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 4
        Top = 25
        Width = 32
        Height = 14
        DataField = 'DATA'
        DataSource = FormRecibo.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 5
        Top = 58
        Width = 244
        Height = 16
        Caption = '___________________________________________________'
      end
      object RLDBText6: TRLDBText
        Left = 4
        Top = 74
        Width = 50
        Height = 14
        DataField = 'EMITENTE'
        DataSource = FormRecibo.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 4
        Top = 90
        Width = 81
        Height = 14
        DataField = 'CNPJ_EMITENTE'
        DataSource = FormRecibo.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 81
        Top = 114
        Width = 123
        Height = 12
        Caption = 'StartNet Sistemas  - SIACE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 324
    Top = 50
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 268
    Top = 19
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 299
    Top = 14
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 332
    Top = 34
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 341
    Top = 15
  end
end
