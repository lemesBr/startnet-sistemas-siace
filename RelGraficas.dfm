object FormRelGrafica: TFormRelGrafica
  Left = -3
  Top = 185
  Width = 1044
  Height = 576
  HorzScrollBar.Position = 42
  Caption = 'FormRelGrafica'
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
    Left = -36
    Top = -1
    Width = 1123
    Height = 794
    DataSource = FormGrafica.dts_vendas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PageSetup.Orientation = poLandscape
    ExpressionParser = RLExpressionParser1
    OnPageStarting = RLReport1PageStarting
    object RLBand1: TRLBand
      Left = 38
      Top = 19
      Width = 1047
      Height = 40
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 409
        Top = 6
        Width = 241
        Height = 24
        Caption = 'RELAT'#211'RIO DE VENDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl9: TRLLabel
        Left = 784
        Top = 23
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
        Left = 855
        Top = 23
        Width = 63
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
        Left = 920
        Top = 23
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
        Left = 989
        Top = 23
        Width = 56
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
        Left = 953
        Top = 0
        Width = 31
        Height = 16
        Caption = 'P'#225'g:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 997
        Top = 1
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 81
      Width = 1047
      Height = 22
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 1
        Top = 5
        Width = 58
        Height = 16
        DataField = 'DATA_COMPRA'
        DataSource = FormGrafica.dts_vendas
      end
      object RLDBText2: TRLDBText
        Left = 86
        Top = 3
        Width = 39
        Height = 16
        DataField = 'N_OS'
        DataSource = FormGrafica.dts_vendas
      end
      object RLDBText3: TRLDBText
        Left = 151
        Top = 4
        Width = 62
        Height = 16
        DataField = 'DATA_VENCIMENTO'
        DataSource = FormGrafica.dts_vendas
      end
      object RLDBText4: TRLDBText
        Left = 228
        Top = 4
        Width = 33
        Height = 16
        DataField = 'TIPO'
        DataSource = FormGrafica.dts_vendas
      end
      object RLDBText5: TRLDBText
        Left = 314
        Top = 3
        Width = 72
        Height = 16
        DataField = 'DATA_BAIXA'
        DataSource = FormGrafica.dts_vendas
      end
      object RLDBText6: TRLDBText
        Left = 396
        Top = 5
        Width = 105
        Height = 16
        DataField = 'NOME_SACADO'
        DataSource = FormGrafica.dts_vendas
      end
      object RLDBText7: TRLDBText
        Left = 657
        Top = 3
        Width = 77
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_COMPRA'
        DataSource = FormGrafica.dts_vendas
      end
      object RLDBText8: TRLDBText
        Left = 753
        Top = 4
        Width = 93
        Height = 16
        Alignment = taRightJustify
        DataField = 'VLR_GRAFICA'
        DataSource = FormGrafica.dts_vendas
      end
      object RLDBText9: TRLDBText
        Left = 851
        Top = 3
        Width = 84
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_COMISAO'
        DataSource = FormGrafica.dts_vendas
      end
      object RLDBText10: TRLDBText
        Left = 961
        Top = 3
        Width = 81
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_TOTAL'
        DataSource = FormGrafica.dts_vendas
      end
      object RLDBText11: TRLDBText
        Left = 269
        Top = 4
        Width = 39
        Height = 16
        DataField = 'PARCELA'
        DataSource = FormGrafica.dts_vendas
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 103
      Width = 1047
      Height = 26
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 538
        Top = 5
        Width = 194
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'sum(valor_compra))'
        DataSource = FormGrafica.dts_vendas
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 749
        Top = 5
        Width = 97
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(VLR_GRAFICA)'
        DataSource = FormGrafica.dts_vendas
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 851
        Top = 5
        Width = 84
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(VALOR_COMISAO)'
        DataSource = FormGrafica.dts_vendas
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult4: TRLDBResult
        Left = 961
        Top = 5
        Width = 83
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SUM(VALOR_TOTAL)'
        DataSource = FormGrafica.dts_vendas
        DisplayMask = 'R$: ##,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 363
        Top = 5
        Width = 266
        Height = 16
        Caption = 'Total do Per'#237'odo:......................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 59
      Width = 1047
      Height = 22
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel4: TRLLabel
        Left = 6
        Top = 5
        Width = 33
        Height = 16
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 85
        Top = 5
        Width = 35
        Height = 16
        Caption = 'O. S.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 151
        Top = 5
        Width = 40
        Height = 16
        Caption = 'Vecto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 229
        Top = 5
        Width = 32
        Height = 16
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 314
        Top = 5
        Width = 41
        Height = 16
        Caption = 'Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 397
        Top = 5
        Width = 49
        Height = 16
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 683
        Top = 5
        Width = 52
        Height = 16
        Caption = 'Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 797
        Top = 5
        Width = 50
        Height = 16
        Caption = 'Gr'#225'fica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 884
        Top = 5
        Width = 52
        Height = 16
        Caption = 'Repres.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 972
        Top = 5
        Width = 70
        Height = 16
        Caption = 'A Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 270
        Top = 4
        Width = 37
        Height = 16
        Caption = 'Parc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 551
    Top = 193
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 1018
    Top = 233
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 851
    Top = 221
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 684
    Top = 198
  end
end
