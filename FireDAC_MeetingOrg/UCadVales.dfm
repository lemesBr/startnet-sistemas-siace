inherited FrmCadVales: TFrmCadVales
  Left = 431
  Top = 292
  Caption = 'Vales Funcion'#225'rio'
  ClientHeight = 210
  ClientWidth = 663
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    Width = 663
    Height = 159
    FullHeight = 151
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 59
      Height = 13
      Caption = 'Cod.Func.(*)'
    end
    object BtnConsFun: TSpeedButton
      Left = 61
      Top = 72
      Width = 23
      Height = 21
      Hint = 'Consultar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
        BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
        2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
        00FFA87875C4A398D5B6A7D0A59FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF55BDFFB5D6EDA3908EB69B8BF0E7C8FEFDDAFEFDD9FDFCD8EADA
        C2CEAEA3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCB7B7D9B8A5FF
        F1C3FFFDD6FFFFDAFFFFDAFFFFDFFFFFEFF6F0EBB48D89FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFC6978FF7E2B5F8DBAAFDF7D0FFFFDAFFFFE1FFFFF2FFFF
        FBFFFFFFDFD0BEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDBBAA8FCE4AFF2
        C897FCF4CCFFFFDBFFFFE4FFFFF9FFFFFBFFFFECF2EFD0C79C96FF00FFFF00FF
        FF00FFFF00FFFF00FFE4C7AFFBE0ABEFBA86F9E3B6FFFFD9FFFFDEFFFFE8FFFF
        EAFFFFE0FAF8D7C6AC9AFF00FFFF00FFFF00FFFF00FFFF00FFDFC0ABFEE9B5EF
        BB84F3CC98FBEEC4FFFFDBFFFFDDFFFFDCFFFFDCF6F2D2C8A298FF00FFFF00FF
        FF00FFFF00FFFF00FFCAA098FDF0C2FAE9C5F4D3A6F4D09DF9E4B8FEF6CFFEFA
        D3FFFFDAE5D9BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDC4AEFF
        FFFFFFF7E9F3CC98F0BD89F4CE9DFCE6B6FDF6C8BE9D8FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFD3BFBAF6F0DCFFF2C0FDE6B1FEE9B5F4DE
        B7D0AD9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFCAAD96CFAE9BDDBFA9DCB8A8FF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnConsFunClick
    end
    object BtnAddFun: TSpeedButton
      Left = 86
      Top = 72
      Width = 23
      Height = 21
      Hint = 'Cadastrar'
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        700077777777777770007777700077777000777770C077777000777770C07777
        7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
        7000777770C07777700077777000777770007777777777777000777777777777
        7000}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnAddFunClick
    end
    object Label5: TLabel
      Left = 112
      Top = 56
      Width = 101
      Height = 13
      Caption = 'Nome do Funcion'#225'rio'
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 114
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Data(*)'
    end
    object Label10: TLabel
      Left = 8
      Top = 104
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label3: TLabel
      Left = 112
      Top = 104
      Width = 68
      Height = 13
      Caption = 'Autorizado por'
    end
    object Label6: TLabel
      Left = 368
      Top = 8
      Width = 73
      Height = 13
      Caption = 'Total Pendente'
    end
    object EdtCodFun: TAlignEdit
      Left = 8
      Top = 72
      Width = 49
      Height = 21
      Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar'
      Color = clSilver
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnEnter = EdtCodFunEnter
      OnExit = EdtCodFunExit
      OnKeyDown = EdtCodFunKeyDown
      OnKeyPress = EdtCodFunKeyPress
      Alignment = taRightJustify
      ColorOnFocus = clWindow
      ColorOnNoFocus = clWindow
      FontOnFocus.Charset = DEFAULT_CHARSET
      FontOnFocus.Color = clWindowText
      FontOnFocus.Height = -11
      FontOnFocus.Name = 'MS Sans Serif'
      FontOnFocus.Style = []
      FontOnNoFocus.Charset = DEFAULT_CHARSET
      FontOnNoFocus.Color = clWindowText
      FontOnNoFocus.Height = -11
      FontOnNoFocus.Name = 'MS Sans Serif'
      FontOnNoFocus.Style = []
    end
    object EdtNomeFun: TEdit
      Left = 112
      Top = 72
      Width = 345
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object cod_vale: TAlignEdit
      Left = 8
      Top = 24
      Width = 73
      Height = 21
      TabStop = False
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Alignment = taRightJustify
      ColorOnFocus = clWindow
      ColorOnNoFocus = clWindow
      FontOnFocus.Charset = DEFAULT_CHARSET
      FontOnFocus.Color = clWindowText
      FontOnFocus.Height = -11
      FontOnFocus.Name = 'MS Sans Serif'
      FontOnFocus.Style = []
      FontOnNoFocus.Charset = DEFAULT_CHARSET
      FontOnNoFocus.Color = clWindowText
      FontOnNoFocus.Height = -11
      FontOnNoFocus.Name = 'MS Sans Serif'
      FontOnNoFocus.Style = []
    end
    object EdtData: TDateTimePicker
      Left = 114
      Top = 24
      Width = 97
      Height = 21
      Date = 37989.501641851800000000
      Time = 37989.501641851800000000
      Color = clSilver
      TabOrder = 1
    end
    object EdtValor: TCurrencyEdit
      Left = 8
      Top = 119
      Width = 89
      Height = 21
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      FormatOnEditing = True
      TabOrder = 3
      ZeroEmpty = False
      OnExit = EdtValorExit
    end
    object EdtAutorizado: TEdit
      Left = 112
      Top = 120
      Width = 345
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      MaxLength = 80
      TabOrder = 4
    end
    object EdtPendente: TCurrencyEdit
      Left = 368
      Top = 23
      Width = 89
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FormatOnEditing = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      ZeroEmpty = False
    end
  end
  inherited Panel2: TAdvPanel
    Top = 159
    Width = 663
    FullHeight = 51
    inherited BtnConsultar: TAdvGlowButton
      OnClick = BtnConsultarClick
    end
  end
  object IBSQLVale: TIBSQL
    Database = DM.IBDatabase
    Transaction = IBTRVale
    Left = 240
    Top = 56
  end
  object IBTRVale: TIBTransaction
    DefaultDatabase = DM.IBDatabase
    Left = 312
    Top = 56
  end
  object frxVale: TfrxReport
    Version = '4.8.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'PFDr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41541.473408611100000000
    ReportOptions.LastChange = 41541.543219155090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 376
    Top = 104
    Datasets = <>
    Variables = <
      item
        Name = ' dados_rel'
        Value = Null
      end
      item
        Name = 'empresa'
        Value = Null
      end
      item
        Name = 'valor'
        Value = Null
      end
      item
        Name = 'funcionario'
        Value = Null
      end
      item
        Name = 'local'
        Value = Null
      end
      item
        Name = 'data_extenso'
        Value = Null
      end
      item
        Name = 'valor_extenso'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 366.614410000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape3: TfrxShapeView
          Align = baClient
          Width = 740.409927000000000000
          Height = 366.614410000000000000
          ShowHint = False
        end
        object Shape2: TfrxShapeView
          Width = 740.787401570000000000
          Height = 34.015770000000000000
          ShowHint = False
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.559060000000000000
          Width = 733.228820000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 18.897650000000000000
          Top = 49.133890000000000000
          Width = 230.551330000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 428.323130000000000000
          Top = 56.692950000000000000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 523.913730000000000000
          Top = 53.913420000000000000
          Width = 207.874150000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 15000804
          Shape = skRoundRectangle
        end
        object Memo6: TfrxMemoView
          Left = 529.134200000000000000
          Top = 60.472480000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 17.897650000000000000
          Top = 146.519790000000000000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Left = 17.897650000000000000
          Top = 168.858380000000000000
          Width = 710.551640000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 15000804
          Shape = skRoundRectangle
        end
        object Memo8: TfrxMemoView
          Left = 23.015770000000000000
          Top = 172.858380000000000000
          Width = 699.213050000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 17.897650000000000000
          Top = 202.874150000000000000
          Width = 185.196970000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Left = 17.897650000000000000
          Top = 225.212740000000000000
          Width = 710.551640000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 15000804
          Shape = skRoundRectangle
        end
        object Memo10: TfrxMemoView
          Left = 23.015770000000000000
          Top = 229.212740000000000000
          Width = 699.213050000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 132.283550000000000000
          Top = 265.905690000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 181.417440000000000000
          Top = 328.819110000000000000
          Width = 389.291590000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 257.008040000000000000
          Top = 332.598640000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 18.897650000000000000
          Top = 90.708720000000000000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 18.897650000000000000
          Top = 113.047310000000000000
          Width = 710.551640000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 15000804
          Shape = skRoundRectangle
        end
        object Memo5: TfrxMemoView
          Left = 24.015770000000000000
          Top = 117.047310000000000000
          Width = 699.213050000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
