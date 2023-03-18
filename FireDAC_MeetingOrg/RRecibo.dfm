object FormRelRecibo: TFormRelRecibo
  Left = 388
  Top = 120
  Width = 837
  Height = 593
  Caption = 'FormRelRecibo'
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
    Top = 1
    Width = 794
    Height = 527
    DataSource = FormRecibo.DataSource1
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 139.500000000000000000
    object RLBand1: TRLBand
      Left = 38
      Top = 19
      Width = 718
      Height = 150
      object RLLabel1: TRLLabel
        Left = 267
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
        Left = 18
        Top = 41
        Width = 110
        Height = 16
        Caption = 'Recebi(emos) de: '
      end
      object RLLabel4: TRLLabel
        Left = 19
        Top = 99
        Width = 110
        Height = 16
        Caption = 'A importancia de: '
      end
      object RLDBText1: TRLDBText
        Left = 385
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
        Left = 152
        Top = 42
        Width = 97
        Height = 16
        DataField = 'DESTINATARIO'
        DataSource = FormRecibo.DataSource1
      end
      object RLLabel3: TRLLabel
        Left = 514
        Top = 8
        Width = 80
        Height = 16
        Caption = 'Valor de R$: '
      end
      object RLDBText8: TRLDBText
        Left = 605
        Top = 8
        Width = 48
        Height = 16
        DataField = 'VALOR'
        DataSource = FormRecibo.DataSource1
      end
      object RLDBText3: TRLDBMemo
        Left = 152
        Top = 100
        Width = 550
        Height = 41
        Behavior = [beSiteExpander]
        DataField = 'VALOR_EXT'
        DataSource = FormRecibo.DataSource1
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 169
      Width = 718
      Height = 23
      AutoSize = True
      object RLLabel5: TRLLabel
        Left = 20
        Top = 0
        Width = 78
        Height = 16
        Caption = 'Referente a: '
      end
      object RLDBMemo2: TRLDBMemo
        Left = 144
        Top = 3
        Width = 565
        Height = 20
        Behavior = [beSiteExpander]
        DataField = 'HISTORICO'
        DataSource = FormRecibo.DataSource1
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 192
      Width = 718
      Height = 113
      object RLLabel8: TRLLabel
        Left = 18
        Top = 9
        Width = 218
        Height = 16
        Caption = 'Para maior clareza firmo o presente: '
      end
      object RLDBText5: TRLDBText
        Left = 340
        Top = 9
        Width = 38
        Height = 16
        DataField = 'DATA'
        DataSource = FormRecibo.DataSource1
      end
      object RLLabel12: TRLLabel
        Left = 341
        Top = 58
        Width = 361
        Height = 16
        Caption = '___________________________________________________'
      end
      object RLDBText6: TRLDBText
        Left = 340
        Top = 74
        Width = 68
        Height = 16
        DataField = 'EMITENTE'
        DataSource = FormRecibo.DataSource1
      end
      object RLDBText7: TRLDBText
        Left = 340
        Top = 90
        Width = 108
        Height = 16
        DataField = 'CNPJ_EMITENTE'
        DataSource = FormRecibo.DataSource1
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 630
    Top = 43
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 537
    Top = 27
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 545
    Top = 75
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 481
    Top = 43
  end
end
