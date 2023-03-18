object frmlista_caixa1: Tfrmlista_caixa1
  Left = 489
  Top = 323
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CAIXA | Relat'#243'rios'
  ClientHeight = 279
  ClientWidth = 363
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 58
    Top = 173
    Width = 233
    Height = 50
    Shape = bsFrame
  end
  object Bevel1: TBevel
    Left = 8
    Top = 64
    Width = 345
    Height = 102
    Shape = bsFrame
  end
  object Bevel4: TBevel
    Left = 8
    Top = 5
    Width = 345
    Height = 54
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 14
    Top = 9
    Width = 81
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Relat'#243'rio: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 17
    Top = 68
    Width = 75
    Height = 13
    AutoSize = False
    Caption = 'Caixa:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 68
    Top = 178
    Width = 49
    Height = 15
    Caption = 'In'#237'cio:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 178
    Top = 176
    Width = 28
    Height = 15
    Caption = 'Fim:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lconta: TLabel
    Left = 18
    Top = 115
    Width = 75
    Height = 13
    AutoSize = False
    Caption = 'Conta:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object spbImprimir: TAdvGlowButton
    Left = 104
    Top = 229
    Width = 128
    Height = 37
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ImageIndex = 26
    Images = FormPrincipal.sAlphaImageList2
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = spbImprimirClick
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object combo_relatorio: TComboBox
    Left = 17
    Top = 25
    Width = 328
    Height = 24
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      'FOLHA DE CAIXA'
      'RESUMO DE SA'#205'DAS'
      'RESUMO DE RECEBIMENTOS'
      '---'
      'RESUMO DA FOLHA DO CAIXA')
  end
  object combo_caixa: TComboBox
    Left = 17
    Top = 85
    Width = 328
    Height = 24
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = combo_caixaChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object DateEdit1: TDateEdit
    Left = 68
    Top = 193
    Width = 103
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    GlyphKind = gkCustom
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
      8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
      F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
      D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
      BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
      F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
      8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
      CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
      F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
      95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
      E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
      F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
      A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
      FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
      FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
      B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
      FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
      FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
      F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
      F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
      7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 1
    ParentFont = False
    TabOrder = 3
    Text = '01/01/2001'
    OnKeyPress = DateEdit1KeyPress
  end
  object DateEdit2: TDateEdit
    Left = 178
    Top = 193
    Width = 104
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    GlyphKind = gkCustom
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
      8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
      F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
      D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
      BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
      F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
      8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
      CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
      F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
      95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
      E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
      F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
      A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
      FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
      FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
      B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
      FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
      FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
      F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
      F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
      7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 1
    ParentFont = False
    TabOrder = 4
    Text = '31/12/2099'
  end
  object combo_conta: TComboBox
    Left = 17
    Top = 131
    Width = 328
    Height = 24
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'TODAS'
    OnChange = combo_contaChange
    Items.Strings = (
      'TODAS'
      'SELECIONAR')
  end
  object fxcaixa: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39181.615094942100000000
    ReportOptions.LastChange = 41502.572529733800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 280
    Top = 56
    Datasets = <
      item
        DataSet = fscaixa
        DataSetName = 'fscaixa'
      end
      item
        DataSet = DM.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = DM.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 35.015770000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 32.015770000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 0.779529999999994000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '000#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 18.141732283464600000
          Width = 177.637910000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MOVIMENTO')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 18.118120000000000000
          Width = 275.905690000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'HIST'#211'RICO')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 18.118120000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR-R$')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 18.118120000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENTRADA')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 17.897650000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SA'#205'DA')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Top = 18.141732280000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.338590000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = fscaixa
        DataSetName = 'fscaixa'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 0.220470000000006000
          Width = 177.637910000000000000
          Height = 11.338590000000000000
          DataField = 'descricao_movimento'
          DataSet = fscaixa
          DataSetName = 'fscaixa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fscaixa."descricao_movimento"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 0.220470000000000000
          Width = 275.905690000000000000
          Height = 11.338590000000000000
          DataField = 'HISTORICO'
          DataSet = fscaixa
          DataSetName = 'fscaixa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fscaixa."HISTORICO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 0.220470000000006000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR'
          DataSet = fscaixa
          DataSetName = 'fscaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fscaixa."VALOR"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 0.220470000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR_ENTRADA'
          DataSet = fscaixa
          DataSetName = 'fscaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fscaixa."VALOR_ENTRADA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR_SAIDA'
          DataSet = fscaixa
          DataSetName = 'fscaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fscaixa."VALOR_SAIDA"]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'DATA'
          DataSet = fscaixa
          DataSetName = 'fscaixa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fscaixa."DATA"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 506.457020000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 3.779530000000020000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 200.315090000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 3.779527559999930000
          Width = 124.724490000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL GERAL:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000050000
          Width = 260.787570000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QTDE. DE REGISTROS: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 37.795299999999900000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 52.913419999999700000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.338590000000000000
          Top = 54.692949999999900000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DINHEIRO:')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 68.031539999999600000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 8.338590000000000000
          Top = 69.811069999999600000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CHEQUE '#192' VISTA:')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 52.913419999999700000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 41.574829999999900000
          Width = 154.960730000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'MOVIMENTO DE VENDAS')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 68.031539999999600000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 83.149659999999710000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 8.338590000000000000
          Top = 84.929189999999710000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CHEQUE '#192' PRAZO:')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 98.267779999999800000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 8.338590000000000000
          Top = 100.047310000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CART'#195'O CR'#201'DITO:')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 83.149659999999710000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 98.267779999999800000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 8.338590000000000000
          Top = 115.165430000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CART'#195'O D'#201'BITO:')
          ParentFont = False
        end
        object Shape10: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 8.338590000000000000
          Top = 130.283550000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CREDI'#193'RIO:')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 113.385900000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape12: TfrxShapeView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 128.504020000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 55.692950000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR4'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR4"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 69.811070000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR6'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR6"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 84.929190000000100000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR7'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR7"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 100.047310000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR8'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR8"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 115.165430000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR9'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR9"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 130.283550000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR5'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR5"]')
          ParentFont = False
        end
        object Shape13: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 158.622140000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          Frame.Typ = []
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 8.338590000000000000
          Top = 167.960730000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
        object Shape14: TfrxShapeView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 158.622140000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          Frame.Typ = []
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 168.960730000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR10'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR10"]')
          ParentFont = False
        end
        object Shape15: TfrxShapeView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 397.630180000000000000
          Top = 54.692950000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DINHEIRO:')
          ParentFont = False
        end
        object Shape16: TfrxShapeView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 397.630180000000000000
          Top = 69.811070000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CHEQUE '#192' VISTA:')
          ParentFont = False
        end
        object Shape17: TfrxShapeView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 52.913420000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 41.574830000000000000
          Width = 154.960730000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RECEBIMENTOS')
          ParentFont = False
        end
        object Shape18: TfrxShapeView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape19: TfrxShapeView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 397.630180000000000000
          Top = 84.929190000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CHEQUE '#192' PRAZO:')
          ParentFont = False
        end
        object Shape20: TfrxShapeView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 397.630180000000000000
          Top = 100.047310000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CART'#195'O:')
          ParentFont = False
        end
        object Shape21: TfrxShapeView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 83.149660000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape22: TfrxShapeView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 98.267780000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape23: TfrxShapeView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 397.630180000000000000
          Top = 115.165430000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BOLETO:')
          ParentFont = False
        end
        object Shape24: TfrxShapeView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 131.504020000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 397.630180000000000000
          Top = 133.283550000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
        object Shape25: TfrxShapeView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 113.385900000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape26: TfrxShapeView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 131.504020000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 55.692950000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR11'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR11"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 69.811070000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR12'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR12"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 84.929190000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR13'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR13"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 100.047310000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR14'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR14"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 115.165430000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR17'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR17"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 133.283550000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR18'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR18"]')
          ParentFont = False
        end
        object Shape27: TfrxShapeView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 150.401670000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 397.630180000000000000
          Top = 152.181200000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'JUROS:')
          ParentFont = False
        end
        object Shape28: TfrxShapeView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 150.401670000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 152.181200000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR15'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR15"]')
          ParentFont = False
        end
        object Shape29: TfrxShapeView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 165.519790000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 397.630180000000000000
          Top = 167.299320000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCONTOS:')
          ParentFont = False
        end
        object Shape30: TfrxShapeView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 165.519790000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 167.299320000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR16'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR16"]')
          ParentFont = False
        end
        object Shape31: TfrxShapeView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 582.827150000000000000
          Top = 54.692950000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DINHEIRO:')
          ParentFont = False
        end
        object Shape32: TfrxShapeView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 582.827150000000000000
          Top = 69.811070000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CHEQUE '#192' VISTA:')
          ParentFont = False
        end
        object Shape33: TfrxShapeView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 52.913420000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 41.574830000000000000
          Width = 154.960730000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PAGAMENTOS')
          ParentFont = False
        end
        object Shape34: TfrxShapeView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape35: TfrxShapeView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 582.827150000000000000
          Top = 84.929190000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CHEQUE '#192' PRAZO:')
          ParentFont = False
        end
        object Shape36: TfrxShapeView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape37: TfrxShapeView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 83.149660000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape38: TfrxShapeView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 98.267780000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 55.692950000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR19'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR19"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 69.811070000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR20'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR20"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 84.929190000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR21'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR21"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 583.047620000000000000
          Top = 100.267780000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CART'#195'O:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 676.756340000000000000
          Top = 100.267780000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR22'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR22"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 23.677179999999800000
          Width = 124.724490000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SALDO:')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 22.677179999999800000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR3'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxrelatorio."VALOR3"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 3.779530000000050000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR1'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR1"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 3.779530000000050000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR2'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR2"]')
          ParentFont = False
        end
        object Shape39: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 143.622140000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 8.338590000000000000
          Top = 145.401670000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CONV'#202'NIO:')
          ParentFont = False
        end
        object Shape40: TfrxShapeView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 143.622140000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 145.401670000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR26'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR26"]')
          ParentFont = False
        end
        object Shape41: TfrxShapeView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 170.858380000000000000
          Top = 54.692950000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DINHEIRO:')
          ParentFont = False
        end
        object Shape42: TfrxShapeView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 170.858380000000000000
          Top = 69.811070000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CHEQUE '#192' VISTA:')
          ParentFont = False
        end
        object Shape43: TfrxShapeView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 52.913420000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 41.574830000000000000
          Width = 154.960730000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE SERVI'#199'O')
          ParentFont = False
        end
        object Shape44: TfrxShapeView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape45: TfrxShapeView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 170.858380000000000000
          Top = 84.929190000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CHEQUE '#192' PRAZO:')
          ParentFont = False
        end
        object Shape46: TfrxShapeView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 170.858380000000000000
          Top = 100.047310000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CART'#195'O CR'#201'DITO:')
          ParentFont = False
        end
        object Shape47: TfrxShapeView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 83.149660000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape48: TfrxShapeView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 98.267780000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape49: TfrxShapeView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 170.858380000000000000
          Top = 115.165430000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CART'#195'O D'#201'BITO:')
          ParentFont = False
        end
        object Shape50: TfrxShapeView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 170.858380000000000000
          Top = 130.283550000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CREDI'#193'RIO:')
          ParentFont = False
        end
        object Shape51: TfrxShapeView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 113.385900000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Shape52: TfrxShapeView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 128.504020000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 55.692950000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR26'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR26"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 69.811070000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR27'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR27"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 84.929190000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR28'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR28"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 100.047310000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR29'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR29"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 115.165430000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR30'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR30"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 130.283550000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR31'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR31"]')
          ParentFont = False
        end
        object Shape53: TfrxShapeView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 143.504020000000000000
          Width = 94.488250000000000000
          Height = 49.133890000000000000
          Frame.Typ = []
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 170.858380000000000000
          Top = 167.960730000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
        object Shape54: TfrxShapeView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 143.504020000000000000
          Width = 60.472480000000000000
          Height = 49.133890000000000000
          Frame.Typ = []
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 168.960730000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'VALOR32'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxrelatorio."VALOR32"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object LEMPRESA: TfrxMemoView
          AllowVectorExport = True
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxemitente."NOME_FANTASIA"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 603.724800000000000000
          Top = 3.000000000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Siace Sistemas')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 36.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA2'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 47.236240000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA3'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Top = 59.574830000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA4'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 604.622450000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o: [Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 36.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA5'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA5"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 47.236240000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA6'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 59.574830000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA7'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 20.000000000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA1'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxrelatorio."LINHA1"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxemitente."CNPJ"]')
          ParentFont = False
        end
      end
    end
  end
  object fscaixa: TfrxDBDataset
    UserName = 'fscaixa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'descricao_movimento=descricao_movimento'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'COD_USUARIO=COD_USUARIO'
      'TIPO_MOV=TIPO_MOV'
      'VALOR_ENTRADA=VALOR_ENTRADA'
      'VALOR_SAIDA=VALOR_SAIDA'
      'VALOR=VALOR'
      'CODIGO_CC=CODIGO_CC'
      'CODIGO_VENDA=CODIGO_VENDA'
      'COD_CREDIARIO=COD_CREDIARIO'
      'COD_COMPRA=COD_COMPRA'
      'COD_PLANO=COD_PLANO'
      'PRE_DATADO=PRE_DATADO'
      'COD_CHEQUE=COD_CHEQUE'
      'COD_CONTAS_PAGAR=COD_CONTAS_PAGAR'
      'DOC_LAN=DOC_LAN'
      'CONCILIADO=CONCILIADO'
      'COD_DOC=COD_DOC'
      'HORA=HORA'
      'HISTORICO=HISTORICO'
      'STATUS=STATUS'
      'COD_FECHAMENTO=COD_FECHAMENTO'
      'USUARIO=USUARIO'
      'TIPO=TIPO'
      'NUMERO_CC=NUMERO_CC'
      'ORIGEM=ORIGEM'
      'N_CHEQUE=N_CHEQUE'
      'NOMINAL=NOMINAL'
      'COMPENSADO=COMPENSADO'
      'DOCUMENTO_LANC=DOCUMENTO_LANC'
      'COD_EMPRESA=COD_EMPRESA'
      'DB_CR=DB_CR')
    DataSet = qrcaixa
    BCDToCurrency = False
    Left = 304
    Top = 112
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 256
    Top = 148
  end
  object Qrsoma: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      
        'select sum(valor_entrada) total_entrada, sum(valor_saida) total_' +
        'saida,'
      
        '(select sum(valor_entrada) from movimento_diario where tipo_mov ' +
        '= 08),'
      
        '(select sum(valor_saida) from movimento_diario where tipo_mov = ' +
        '08)'
      'from movimento_diario')
    Left = 248
    Top = 112
  end
  object qrresumo: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'select plano.codigo, sum(caixa.valor) from planocontas plano'
      
        'JOIN movimento_diario caixa on plano.codigo = caixa.cod_plano an' +
        'd caixa.Tipo_mov = 1 and plano.indicador = '#39'A'#39
      'group by plano.Codigo')
    Left = 208
    Top = 132
    object qrresumoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PLANOCONTAS.CODIGO'
      Required = True
    end
    object qrresumoSUM: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qrcaixa: TFDQuery
    OnCalcFields = qrcaixaCalcFields
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'SELECT * FROM v_MOVIMENTO_DIARIO')
    Left = 288
    Top = 20
    object qrcaixadescricao_movimento: TStringField
      FieldKind = fkCalculated
      FieldName = 'descricao_movimento'
      Size = 40
      Calculated = True
    end
    object qrcaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'MOVIMENTO_DIARIO.CODIGO'
      Required = True
    end
    object qrcaixaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'MOVIMENTO_DIARIO.DATA'
    end
    object qrcaixaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'MOVIMENTO_DIARIO.COD_USUARIO'
    end
    object qrcaixaTIPO_MOV: TIntegerField
      FieldName = 'TIPO_MOV'
      Origin = 'MOVIMENTO_DIARIO.TIPO_MOV'
    end
    object qrcaixaCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
      Origin = 'MOVIMENTO_DIARIO.CODIGO_CC'
    end
    object qrcaixaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
      Origin = 'MOVIMENTO_DIARIO.CODIGO_VENDA'
    end
    object qrcaixaCOD_CREDIARIO: TIntegerField
      FieldName = 'COD_CREDIARIO'
      Origin = 'MOVIMENTO_DIARIO.COD_CREDIARIO'
    end
    object qrcaixaCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
      Origin = 'MOVIMENTO_DIARIO.COD_COMPRA'
    end
    object qrcaixaCOD_PLANO: TIntegerField
      FieldName = 'COD_PLANO'
      Origin = 'MOVIMENTO_DIARIO.COD_PLANO'
    end
    object qrcaixaPRE_DATADO: TDateField
      FieldName = 'PRE_DATADO'
      Origin = 'MOVIMENTO_DIARIO.PRE_DATADO'
    end
    object qrcaixaCOD_CHEQUE: TIntegerField
      FieldName = 'COD_CHEQUE'
      Origin = 'MOVIMENTO_DIARIO.COD_CHEQUE'
    end
    object qrcaixaCOD_CONTAS_PAGAR: TIntegerField
      FieldName = 'COD_CONTAS_PAGAR'
      Origin = 'MOVIMENTO_DIARIO.COD_CONTAS_PAGAR'
    end
    object qrcaixaDOC_LAN: TIntegerField
      FieldName = 'DOC_LAN'
      Origin = 'MOVIMENTO_DIARIO.DOC_LAN'
    end
    object qrcaixaCONCILIADO: TIntegerField
      FieldName = 'CONCILIADO'
      Origin = 'MOVIMENTO_DIARIO.CONCILIADO'
    end
    object qrcaixaCOD_DOC: TIntegerField
      FieldName = 'COD_DOC'
      Origin = 'MOVIMENTO_DIARIO.COD_DOC'
    end
    object qrcaixaHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'MOVIMENTO_DIARIO.HORA'
    end
    object qrcaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 150
    end
    object qrcaixaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object qrcaixaCOD_FECHAMENTO: TIntegerField
      FieldName = 'COD_FECHAMENTO'
      Origin = 'COD_FECHAMENTO'
    end
    object qrcaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      FixedChar = True
    end
    object qrcaixaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qrcaixaNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Origin = 'NUMERO_CC'
      Size = 10
    end
    object qrcaixaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Size = 3
    end
    object qrcaixaN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Origin = 'N_CHEQUE'
      Size = 8
    end
    object qrcaixaNOMINAL: TStringField
      FieldName = 'NOMINAL'
      Origin = 'NOMINAL'
      Size = 70
    end
    object qrcaixaCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      Origin = 'COMPENSADO'
      Size = 1
    end
    object qrcaixaDOCUMENTO_LANC: TStringField
      FieldName = 'DOCUMENTO_LANC'
      Origin = 'DOCUMENTO_LANC'
    end
    object qrcaixaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrcaixaDB_CR: TStringField
      FieldName = 'DB_CR'
      Origin = 'DB_CR'
      Size = 1
    end
    object qrcaixaVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Origin = 'VALOR_ENTRADA'
      Precision = 18
      Size = 2
    end
    object qrcaixaVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Origin = 'VALOR_SAIDA'
      Precision = 18
      Size = 2
    end
    object qrcaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
end
