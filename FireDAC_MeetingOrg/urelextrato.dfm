object FormExtImovel: TFormExtImovel
  Left = 544
  Top = 270
  Width = 558
  Height = 163
  Caption = 'Relat'#243'rio de extrato do Im'#243'vel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 542
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label95: TLabel
      Left = 2
      Top = 14
      Width = 49
      Height = 13
      AutoSize = False
      Caption = 'C. Custos'
    end
    object Label96: TLabel
      Left = 15
      Top = 50
      Width = 36
      Height = 13
      AutoSize = False
      BiDiMode = bdRightToLeftNoAlign
      Caption = 'Im'#243'vel'
      ParentBiDiMode = False
    end
    object eCentro: TRzButtonEdit
      Left = 51
      Top = 10
      Width = 71
      Height = 21
      TabOrder = 0
      OnKeyPress = eCentroKeyPress
      OnButtonClick = eCentroButtonClick
    end
    object EnomeCentro: TEdit
      Left = 123
      Top = 10
      Width = 398
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EImovel: TRzButtonEdit
      Left = 53
      Top = 42
      Width = 67
      Height = 21
      TabOrder = 2
      OnKeyPress = EImovelKeyPress
      OnButtonClick = EImovelButtonClick
    end
    object EnomeImovel: TEdit
      Left = 125
      Top = 42
      Width = 396
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 83
    Width = 542
    Height = 41
    Align = alBottom
    TabOrder = 1
    object suiButton7: TsBitBtn
      Left = 328
      Top = 6
      Width = 110
      Height = 27
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = suiButton7Click
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 110
      Images = FormPrincipal.sAlphaImageList1
    end
    object suiButton1: TsBitBtn
      Left = 207
      Top = 6
      Width = 97
      Height = 27
      Caption = 'Fec&har'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = suiButton1Click
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 137
      Images = FormPrincipal.sAlphaImageList1
    end
    object suiButton3: TsBitBtn
      Left = 79
      Top = 6
      Width = 97
      Height = 27
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = suiButton3Click
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 148
      Images = FormPrincipal.sAlphaImageList1
    end
  end
  object qrrelImoveis: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from VIEW_IMOVEL')
    Left = 104
    object qrrelImoveisENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 283
    end
    object qrrelImoveisID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object qrrelImoveisID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
    end
    object qrrelImoveisALUGUEL: TBCDField
      FieldName = 'ALUGUEL'
      Origin = 'ALUGUEL'
      Precision = 18
      Size = 2
    end
    object qrrelImoveisVENDA: TBCDField
      FieldName = 'VENDA'
      Origin = 'VENDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrrelImoveisSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 30
    end
    object qrrelImoveisN_LOTE: TStringField
      FieldName = 'N_LOTE'
      Origin = 'N_LOTE'
      Size = 5
    end
    object qrrelImoveisQUADRA: TStringField
      FieldName = 'QUADRA'
      Origin = 'QUADRA'
      Size = 5
    end
    object qrrelImoveisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object qrrelImoveisPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrrelImoveisPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      currency = True
      Precision = 18
      Size = 3
    end
    object qrrelImoveisMARGEM_LUCRO: TBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object qrrelImoveisPERC_IMPOSTO: TBCDField
      FieldName = 'PERC_IMPOSTO'
      Origin = 'PERC_IMPOSTO'
      Precision = 18
      Size = 2
    end
    object qrrelImoveisESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object qrrelImoveisVALOR_COMPRA: TBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Precision = 18
      Size = 2
    end
    object qrrelImoveisDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
      Origin = 'DATA_COMPRA'
    end
    object qrrelImoveisID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
      Origin = 'ID_CENTRO_CUSTO'
    end
  end
  object fximovies: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39179.400035798600000000
    ReportOptions.LastChange = 42476.750403842590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 296
    Top = 56
    Datasets = <
      item
        DataSet = frxDBImpostos
        DataSetName = 'frxelimpostos'
      end
      item
        DataSet = frxDBnotas
        DataSetName = 'frxelNotas'
      end
      item
        DataSet = frxExtImovel
        DataSetName = 'frxextratoImoveis'
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSetName = 'fsContabil1'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 137.606370000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 38.574830000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina: [Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxemitente."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 132.078850000000000000
          Top = 62.472480000000000000
          Width = 476.220780000000000000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '[fxrelatorio."LINHA1"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 623.622450000000000000
          Top = 6.779530000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            'Siace Sistemas')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 22.677180000000000000
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
          Memo.UTF8 = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 34.015770000000000000
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
          Memo.UTF8 = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Top = 45.354360000000000000
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
          Memo.UTF8 = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 623.622450000000000000
          Top = 22.677180000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            'Emiss'#195#163'o: [Date]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 306.141930000000000000
          Top = 22.677180000000000000
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
          Memo.UTF8 = (
            '[fxrelatorio."LINHA5"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 306.141930000000000000
          Top = 34.015770000000000000
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
          Memo.UTF8 = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 306.141930000000000000
          Top = 45.354360000000000000
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
          Memo.UTF8 = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 109.826840000000000000
          Top = 116.472480000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 661.417750000000000000
          Top = 116.472480000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor Venda')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 559.370440000000000000
          Top = 116.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor Compra')
          ParentFont = False
        end
        object Line1: TfrxLineView
          ShiftMode = smDontShift
          Left = 2.779530000000000000
          Top = 137.370130000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Top = 116.929190000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Lote')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 52.913420000000000000
          Top = 116.929190000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Qdra')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 464.882190000000000000
          Top = 115.929190000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Data Compra')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = -3.779530000000000000
          Top = 94.488250000000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DADOS DO IM'#195#8220'VEL')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 699.213050000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999910000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 3.779530000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SIACE SISTEMAS')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 249.448980000000000000
          Top = 3.779530000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'www.siacesistemas.com.br')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'siace@siacesistemas.com.br')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        DataSet = frxExtImovel
        DataSetName = 'frxextratoImoveis'
        RowCount = 0
        object frxextratoImoveisN_LOTE: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'N_LOTE'
          DataSet = frxExtImovel
          DataSetName = 'frxextratoImoveis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxextratoImoveis."N_LOTE"]')
          ParentFont = False
        end
        object frxextratoImoveisQUADRA: TfrxMemoView
          Left = 45.354360000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'QUADRA'
          DataSet = frxExtImovel
          DataSetName = 'frxextratoImoveis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxextratoImoveis."QUADRA"]')
          ParentFont = False
        end
        object frxextratoImoveisENDERECO: TfrxMemoView
          Left = 109.606370000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frxExtImovel
          DataSetName = 'frxextratoImoveis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxextratoImoveis."ENDERECO"]')
          ParentFont = False
        end
        object frxextratoImoveisDATA_COMPRA: TfrxMemoView
          Left = 464.882190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_COMPRA'
          DataSet = frxExtImovel
          DataSetName = 'frxextratoImoveis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxextratoImoveis."DATA_COMPRA"]')
          ParentFont = False
        end
        object frxextratoImoveisVALOR_COMPRA: TfrxMemoView
          Left = 559.370440000000000000
          Top = 0.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_COMPRA'
          DataSet = frxExtImovel
          DataSetName = 'frxextratoImoveis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxextratoImoveis."VALOR_COMPRA"]')
          ParentFont = False
        end
        object frxextratoImoveisVENDA: TfrxMemoView
          Left = 657.638220000000000000
          Top = 0.220470000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'VENDA'
          DataSet = frxExtImovel
          DataSetName = 'frxextratoImoveis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxextratoImoveis."VENDA"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 740.409927000000000000
        DataSet = frxDBImpostos
        DataSetName = 'frxelimpostos'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          DataField = 'HISTORICO'
          DataSet = frxDBImpostos
          DataSetName = 'frxelimpostos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxelimpostos."HISTORICO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          Left = 661.417750000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR'
          DataSet = frxDBImpostos
          DataSetName = 'frxelimpostos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxelimpostos."VALOR"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DataField = 'DOCUMENTO'
          DataSet = frxDBImpostos
          DataSetName = 'frxelimpostos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxelimpostos."DOCUMENTO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 525.354670000000000000
        Width = 740.409927000000000000
        object Memo8: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Total das Despesas')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 661.417750000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSetName = 'fsContabil1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxelNotas."TOTAL_NOTA">,DetailData2)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 260.787570000000000000
        Width = 740.409927000000000000
        object Memo19: TfrxMemoView
          Top = 17.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Hist'#195#179'rico')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 658.638220000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Documento')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'CUSTAS DO IM'#195#8220'VEL')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 480.000310000000000000
        Width = 740.409927000000000000
        DataSet = frxDBnotas
        DataSetName = 'frxelNotas'
        RowCount = 0
        object Memo23: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          DataField = 'FORNECEDOR'
          DataSet = frxDBnotas
          DataSetName = 'frxelNotas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxelNotas."FORNECEDOR"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo34: TfrxMemoView
          Left = 661.417750000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL_NOTA'
          DataSet = frxDBnotas
          DataSetName = 'frxelNotas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxelNotas."TOTAL_NOTA"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DataField = 'NUM_NOTA'
          DataSet = frxDBnotas
          DataSetName = 'frxelNotas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxelNotas."NUM_NOTA"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 419.527830000000000000
        Width = 740.409927000000000000
        object Memo20: TfrxMemoView
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESPESAS COM CONSTRU'#195#8225#195#402'O')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Top = 17.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 658.638220000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Documento')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        object Memo40: TfrxMemoView
          Left = 525.354670000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Total das Custas')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 661.417750000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSetName = 'fsContabil1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxelimpostos."VALOR">,DetailData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 616.063390000000000000
        Width = 740.409927000000000000
        object Memo11: TfrxMemoView
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'GANHOS DE CAPITAL')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 30.236240000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frmlista_Contabil.fsconta
          DataSetName = 'fsContabil1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxextratoImoveis."VALOR_COMPRA">,DetailData2)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 15.118120000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Custo de Compra')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 154.960730000000000000
          Top = 18.897650000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Custo Atual')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 151.181200000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frmlista_Contabil.fsconta
          DataSetName = 'fsContabil1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<frxextratoImoveis."VALOR_COMPRA">,DetailData2) + SUM(<frxe' +
              'limpostos."VALOR">,DetailData1) + SUM(<frxelNotas."TOTAL_NOTA">,' +
              'DetailData2)]  ')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 302.362400000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Valor da Venda')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 312.921460000000000000
          Top = 37.795300000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxExtImovel
          DataSetName = 'frxextratoImoveis'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxextratoImoveis."VENDA">,MasterData1)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 445.984540000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Valor do Ganho')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 619.842920000000000000
          Top = 18.118120000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Valor do Imposto')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 460.882190000000000000
          Top = 37.795300000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxExtImovel
          DataSetName = 'frxextratoImoveis'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[sum(<frxextratoImoveis."VENDA">, MasterData1) - (SUM(<frxextrat' +
              'oImoveis."VALOR_COMPRA">,DetailData2) + SUM(<frxelimpostos."VALO' +
              'R">,DetailData1) + SUM(<frxelNotas."TOTAL_NOTA">,DetailData2))]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 627.401980000000000000
          Top = 34.015770000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxExtImovel
          DataSetName = 'frxextratoImoveis'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[(sum(<frxextratoImoveis."VENDA">, MasterData1) - (SUM(<frxextra' +
              'toImoveis."VALOR_COMPRA">,DetailData2) + SUM(<frxelimpostos."VAL' +
              'OR">,DetailData1) + SUM(<frxelNotas."TOTAL_NOTA">,DetailData2)))' +
              ' * MAX(<frxextratoImoveis."PERC_IMPOSTO">,MasterData1)/100] ')
          ParentFont = False
        end
      end
    end
  end
  object frxExtImovel: TfrxDBDataset
    UserName = 'frxextratoImoveis'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENDERECO=ENDERECO'
      'ID=ID'
      'ID_PRODUTOS=ID_PRODUTOS'
      'ALUGUEL=ALUGUEL'
      'VENDA=VENDA'
      'SITUACAO=SITUACAO'
      'N_LOTE=N_LOTE'
      'QUADRA=QUADRA'
      'DESCRICAO=DESCRICAO'
      'PRECO_CUSTO=PRECO_CUSTO'
      'PRECO_VENDA=PRECO_VENDA'
      'MARGEM_LUCRO=MARGEM_LUCRO'
      'PERC_IMPOSTO=PERC_IMPOSTO'
      'ESTOQUE=ESTOQUE'
      'VALOR_COMPRA=VALOR_COMPRA'
      'DATA_COMPRA=DATA_COMPRA'
      'ID_CENTRO_CUSTO=ID_CENTRO_CUSTO')
    DataSet = qrrelImoveis
    BCDToCurrency = False
    Left = 152
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
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 328
    Top = 60
  end
  object qrRelImpostos: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from contas_apagar')
    Left = 112
    Top = 32
    object qrRelImpostosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrRelImpostosDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qrRelImpostosDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object qrRelImpostosDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = 'DATA_PAGAMENTO'
    end
    object qrRelImpostosCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
      Origin = 'CODCONTA'
    end
    object qrRelImpostosCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
    end
    object qrRelImpostosVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrRelImpostosVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      Origin = 'VALORPAGO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrRelImpostosLIQUIDO: TBCDField
      FieldName = 'LIQUIDO'
      Origin = 'LIQUIDO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrRelImpostosDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrRelImpostosACRESCIMO: TBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrRelImpostosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object qrRelImpostosNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'NOTAFISCAL'
    end
    object qrRelImpostosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 60
    end
    object qrRelImpostosC: TStringField
      FieldName = 'C'
      Origin = 'C'
      Size = 1
    end
    object qrRelImpostosE: TStringField
      FieldName = 'E'
      Origin = 'E'
      Size = 1
    end
    object qrRelImpostosFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Origin = 'FILTRO'
    end
    object qrRelImpostosESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
    end
    object qrRelImpostosSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object qrRelImpostosCODNOTA: TIntegerField
      FieldName = 'CODNOTA'
      Origin = 'CODNOTA'
    end
    object qrRelImpostosMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTO'
    end
    object qrRelImpostosCODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      Origin = 'CODCAIXA'
    end
    object qrRelImpostosCOD_CENTRO_CUSTO: TIntegerField
      FieldName = 'COD_CENTRO_CUSTO'
      Origin = 'COD_CENTRO_CUSTO'
    end
    object qrRelImpostosCOD_IMOVEL: TIntegerField
      FieldName = 'COD_IMOVEL'
      Origin = 'COD_IMOVEL'
    end
  end
  object frxDBImpostos: TfrxDBDataset
    UserName = 'frxelimpostos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'DATA_PAGAMENTO=DATA_PAGAMENTO'
      'CODCONTA=CODCONTA'
      'CODFORNECEDOR=CODFORNECEDOR'
      'VALOR=VALOR'
      'VALORPAGO=VALORPAGO'
      'LIQUIDO=LIQUIDO'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'DOCUMENTO=DOCUMENTO'
      'NOTAFISCAL=NOTAFISCAL'
      'HISTORICO=HISTORICO'
      'C=C'
      'E=E'
      'FILTRO=FILTRO'
      'ESPECIE=ESPECIE'
      'SITUACAO=SITUACAO'
      'CODNOTA=CODNOTA'
      'MOVIMENTO=MOVIMENTO'
      'CODCAIXA=CODCAIXA'
      'COD_CENTRO_CUSTO=COD_CENTRO_CUSTO'
      'COD_IMOVEL=COD_IMOVEL')
    DataSet = qrRelImpostos
    BCDToCurrency = False
    Left = 152
    Top = 32
  end
  object QrNotas: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from notasfiscais')
    Left = 112
    Top = 64
    object QrNotasCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Origin = 'CODIGO_NOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrNotasNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
      Required = True
    end
    object QrNotasSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Origin = 'SERIE_NF'
      Size = 15
    end
    object QrNotasCFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      Origin = 'CFOP_NOTA'
      Size = 5
    end
    object QrNotasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object QrNotasCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
    end
    object QrNotasFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 70
    end
    object QrNotasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object QrNotasTOTAL_NOTA: TBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = 'TOTAL_NOTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QrNotasCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object QrNotasIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object QrNotasUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
      Origin = 'USUARIO_CADASTRO'
    end
    object QrNotasDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object QrNotasOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object QrNotasMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object QrNotasANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object QrNotasCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Origin = 'CHAVE_NFE'
      Size = 44
    end
    object QrNotasPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      Origin = 'PROTOCOLO_NFE'
      Size = 30
    end
    object QrNotasBASE_CALCULO_ICMS: TBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = 'BASE_CALCULO_ICMS'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_ICMS: TBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object QrNotasBASE_CALC_ICMS_SUBST: TBCDField
      FieldName = 'BASE_CALC_ICMS_SUBST'
      Origin = 'BASE_CALC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_ICMS_SUBST: TBCDField
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'VALOR_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_FRETE: TBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_SEGURO: TBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_OUTRAS_DESPESAS: TBCDField
      FieldName = 'VALOR_OUTRAS_DESPESAS'
      Origin = 'VALOR_OUTRAS_DESPESAS'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_TOTAL_PRODUTOS: TBCDField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Origin = 'VALOR_TOTAL_PRODUTOS'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_TOTAL_ITENS_NOTA: TBCDField
      FieldName = 'VALOR_TOTAL_ITENS_NOTA'
      Origin = 'VALOR_TOTAL_ITENS_NOTA'
      Precision = 18
      Size = 2
    end
    object QrNotasVLR_ICMS_GARANTIDO: TBCDField
      FieldName = 'VLR_ICMS_GARANTIDO'
      Origin = 'VLR_ICMS_GARANTIDO'
      Precision = 18
      Size = 2
    end
    object QrNotascod_pagto: TIntegerField
      FieldName = 'cod_pagto'
      Origin = '"cod_pagto"'
    end
    object QrNotasTP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      Size = 1
    end
    object QrNotasENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Origin = 'ENDERECO_CLI_FORN'
      Size = 44
    end
    object QrNotasEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
      Origin = 'END_NUM_CLIENTE'
    end
    object QrNotasCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      Size = 7
    end
    object QrNotasCEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      Origin = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object QrNotasBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Origin = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object QrNotasTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      Size = 1
    end
    object QrNotasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object QrNotasCIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Origin = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object QrNotasUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Origin = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object QrNotasDESC_PAGTO: TStringField
      FieldName = 'DESC_PAGTO'
      Origin = 'DESC_PAGTO'
      Size = 70
    end
    object QrNotasVALOR_AVISTA: TBCDField
      FieldName = 'VALOR_AVISTA'
      Origin = 'VALOR_AVISTA'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_PRAZO: TBCDField
      FieldName = 'VALOR_PRAZO'
      Origin = 'VALOR_PRAZO'
      Precision = 18
      Size = 2
    end
    object QrNotaspagamento: TStringField
      FieldName = 'pagamento'
      Origin = '"pagamento"'
      Size = 30
    end
    object QrNotasMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object QrNotasEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Origin = 'EMITENTE'
      Size = 1
    end
    object QrNotasVALOR_COFINS: TBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_PIS: TBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_PIS_ST: TBCDField
      FieldName = 'VALOR_PIS_ST'
      Origin = 'VALOR_PIS_ST'
      Precision = 18
      Size = 2
    end
    object QrNotasVALOR_COFIS_ST: TBCDField
      FieldName = 'VALOR_COFIS_ST'
      Origin = 'VALOR_COFIS_ST'
      Precision = 18
      Size = 2
    end
    object QrNotasPERC_ICMS: TBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object QrNotasCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object QrNotasSUB_SERIE: TStringField
      FieldName = 'SUB_SERIE'
      Origin = 'SUB_SERIE'
      Size = 10
    end
    object QrNotasTRANSP_NOME: TStringField
      FieldName = 'TRANSP_NOME'
      Origin = 'TRANSP_NOME'
      Size = 60
    end
    object QrNotasTRANSP_PLACA: TStringField
      FieldName = 'TRANSP_PLACA'
      Origin = 'TRANSP_PLACA'
      Size = 10
    end
    object QrNotasTRANSP_PLACAUF: TStringField
      FieldName = 'TRANSP_PLACAUF'
      Origin = 'TRANSP_PLACAUF'
      Size = 2
    end
    object QrNotasTRANSP_IE: TStringField
      FieldName = 'TRANSP_IE'
      Origin = 'TRANSP_IE'
      Size = 25
    end
    object QrNotasTRANSP_CNPJ: TStringField
      FieldName = 'TRANSP_CNPJ'
      Origin = 'TRANSP_CNPJ'
      Size = 25
    end
    object QrNotasTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      Origin = 'TRANSP_ENDERECO'
      Size = 40
    end
    object QrNotasTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      Origin = 'TRANSP_CIDADE'
      Size = 30
    end
    object QrNotasTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      Origin = 'TRANSP_UF'
      Size = 2
    end
    object QrNotasTRANSP_QTDE: TBCDField
      FieldName = 'TRANSP_QTDE'
      Origin = 'TRANSP_QTDE'
      Precision = 18
      Size = 3
    end
    object QrNotasTRANSP_ESPECIE: TStringField
      FieldName = 'TRANSP_ESPECIE'
      Origin = 'TRANSP_ESPECIE'
    end
    object QrNotasTRANSP_MARCA: TStringField
      FieldName = 'TRANSP_MARCA'
      Origin = 'TRANSP_MARCA'
    end
    object QrNotasTRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
      Origin = 'TRANSP_NUMERO'
    end
    object QrNotasTRANSP_PESOBRUTO: TBCDField
      FieldName = 'TRANSP_PESOBRUTO'
      Origin = 'TRANSP_PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object QrNotasTRANSP_PESOLIQUIDO: TBCDField
      FieldName = 'TRANSP_PESOLIQUIDO'
      Origin = 'TRANSP_PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object QrNotasOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 60
    end
    object QrNotasOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 60
    end
    object QrNotasOBS3: TStringField
      FieldName = 'OBS3'
      Origin = 'OBS3'
      Size = 60
    end
    object QrNotasOBS4: TStringField
      FieldName = 'OBS4'
      Origin = 'OBS4'
      Size = 60
    end
    object QrNotasOBS5: TStringField
      FieldName = 'OBS5'
      Origin = 'OBS5'
      Size = 60
    end
    object QrNotasOBS6: TStringField
      FieldName = 'OBS6'
      Origin = 'OBS6'
      Size = 60
    end
    object QrNotasOBS7: TStringField
      FieldName = 'OBS7'
      Origin = 'OBS7'
      Size = 60
    end
    object QrNotasOBS8: TStringField
      FieldName = 'OBS8'
      Origin = 'OBS8'
      Size = 60
    end
    object QrNotasSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object QrNotasITENS: TIntegerField
      FieldName = 'ITENS'
      Origin = 'ITENS'
    end
    object QrNotasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object QrNotasNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NOTA_FISCAL'
      Size = 6
    end
    object QrNotasICMS_ISENTO: TBCDField
      FieldName = 'ICMS_ISENTO'
      Origin = 'ICMS_ISENTO'
      Precision = 18
      Size = 2
    end
    object QrNotasICMS_OUTRAS: TBCDField
      FieldName = 'ICMS_OUTRAS'
      Origin = 'ICMS_OUTRAS'
      Precision = 18
      Size = 2
    end
    object QrNotasDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
      Origin = 'DESCONTO_INCIDENTE'
    end
    object QrNotasITEM_FRETE_VALOR: TBCDField
      FieldName = 'ITEM_FRETE_VALOR'
      Origin = 'ITEM_FRETE_VALOR'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_FRETE_BASE: TBCDField
      FieldName = 'ITEM_FRETE_BASE'
      Origin = 'ITEM_FRETE_BASE'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_FRETE_ALIQUOTA: TBCDField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
      Origin = 'ITEM_FRETE_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_FRETE_ICMS: TBCDField
      FieldName = 'ITEM_FRETE_ICMS'
      Origin = 'ITEM_FRETE_ICMS'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_SEGURO_VALOR: TBCDField
      FieldName = 'ITEM_SEGURO_VALOR'
      Origin = 'ITEM_SEGURO_VALOR'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_SEGURO_BASE: TBCDField
      FieldName = 'ITEM_SEGURO_BASE'
      Origin = 'ITEM_SEGURO_BASE'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_SEGURO_ALIQUOTA: TBCDField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
      Origin = 'ITEM_SEGURO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_SEGURO_ICMS: TBCDField
      FieldName = 'ITEM_SEGURO_ICMS'
      Origin = 'ITEM_SEGURO_ICMS'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_PIS_VALOR: TBCDField
      FieldName = 'ITEM_PIS_VALOR'
      Origin = 'ITEM_PIS_VALOR'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_PIS_BASE: TBCDField
      FieldName = 'ITEM_PIS_BASE'
      Origin = 'ITEM_PIS_BASE'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_PIS_ALIQUOTA: TBCDField
      FieldName = 'ITEM_PIS_ALIQUOTA'
      Origin = 'ITEM_PIS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_PIS_ICMS: TBCDField
      FieldName = 'ITEM_PIS_ICMS'
      Origin = 'ITEM_PIS_ICMS'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_COMPLEMENTO_VALOR: TBCDField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
      Origin = 'ITEM_COMPLEMENTO_VALOR'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_COMPLEMENTO_BASE: TBCDField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
      Origin = 'ITEM_COMPLEMENTO_BASE'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_COMPLEMENTO_ALIQUOTA: TBCDField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Origin = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_COMPLEMENTO_ICMS: TBCDField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
      Origin = 'ITEM_COMPLEMENTO_ICMS'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_SERVICO_VALOR: TBCDField
      FieldName = 'ITEM_SERVICO_VALOR'
      Origin = 'ITEM_SERVICO_VALOR'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_SERVICO_BASE: TBCDField
      FieldName = 'ITEM_SERVICO_BASE'
      Origin = 'ITEM_SERVICO_BASE'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_SERVICO_ALIQUOTA: TBCDField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
      Origin = 'ITEM_SERVICO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_SERVICO_ICMS: TBCDField
      FieldName = 'ITEM_SERVICO_ICMS'
      Origin = 'ITEM_SERVICO_ICMS'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_OUTRAS_VALOR: TBCDField
      FieldName = 'ITEM_OUTRAS_VALOR'
      Origin = 'ITEM_OUTRAS_VALOR'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_OUTRAS_BASE: TBCDField
      FieldName = 'ITEM_OUTRAS_BASE'
      Origin = 'ITEM_OUTRAS_BASE'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_OUTRAS_ALIQUOTA: TBCDField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
      Origin = 'ITEM_OUTRAS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_OUTRAS_ICMS: TBCDField
      FieldName = 'ITEM_OUTRAS_ICMS'
      Origin = 'ITEM_OUTRAS_ICMS'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_ESPECIAL_TOTAL: TBCDField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
      Origin = 'ITEM_ESPECIAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object QrNotasITEM_ESPECIAL_VALOR: TBCDField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Origin = 'ITEM_ESPECIAL_VALOR'
      Precision = 18
      Size = 2
    end
    object QrNotasBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
      Origin = 'BASEICMS_PRODUTOS'
    end
    object QrNotasCONF_ITEM_ESPECIAL: TBCDField
      FieldName = 'CONF_ITEM_ESPECIAL'
      Origin = 'CONF_ITEM_ESPECIAL'
      Precision = 18
      Size = 3
    end
    object QrNotasCREDITO_ICMS: TBCDField
      FieldName = 'CREDITO_ICMS'
      Origin = 'CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object QrNotasOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      Size = 1
    end
    object QrNotasINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
      Origin = 'INTEGRACAO'
    end
    object QrNotasAPROVEITA_CREDITO_ICMS: TStringField
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Origin = 'APROVEITA_CREDITO_ICMS'
      Size = 1
    end
    object QrNotasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object QrNotasICMSRETIDO: TBCDField
      FieldName = 'ICMSRETIDO'
      Origin = 'ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object QrNotasPERC_ICMSRETIDO: TBCDField
      FieldName = 'PERC_ICMSRETIDO'
      Origin = 'PERC_ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object QrNotasESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 5
    end
    object QrNotasCODREMETENTE: TIntegerField
      FieldName = 'CODREMETENTE'
      Origin = 'CODREMETENTE'
    end
    object QrNotasREMETENTE: TStringField
      FieldName = 'REMETENTE'
      Origin = 'REMETENTE'
      Size = 50
    end
    object QrNotasVALOR_MERCADORIAS: TBCDField
      FieldName = 'VALOR_MERCADORIAS'
      Origin = 'VALOR_MERCADORIAS'
      Precision = 18
      Size = 2
    end
    object QrNotasCONF_BASEICMS: TBCDField
      FieldName = 'CONF_BASEICMS'
      Origin = 'CONF_BASEICMS'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_VALORICMS: TBCDField
      FieldName = 'CONF_VALORICMS'
      Origin = 'CONF_VALORICMS'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_BASESUB: TBCDField
      FieldName = 'CONF_BASESUB'
      Origin = 'CONF_BASESUB'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_VALORSUB: TBCDField
      FieldName = 'CONF_VALORSUB'
      Origin = 'CONF_VALORSUB'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_FRETE: TBCDField
      FieldName = 'CONF_FRETE'
      Origin = 'CONF_FRETE'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_SEGURO: TBCDField
      FieldName = 'CONF_SEGURO'
      Origin = 'CONF_SEGURO'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_OUTRAS: TBCDField
      FieldName = 'CONF_OUTRAS'
      Origin = 'CONF_OUTRAS'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_IPI: TBCDField
      FieldName = 'CONF_IPI'
      Origin = 'CONF_IPI'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_DESCONTO: TBCDField
      FieldName = 'CONF_DESCONTO'
      Origin = 'CONF_DESCONTO'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_TOTALPRODUTOS: TBCDField
      FieldName = 'CONF_TOTALPRODUTOS'
      Origin = 'CONF_TOTALPRODUTOS'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_TOTALNOTA: TBCDField
      FieldName = 'CONF_TOTALNOTA'
      Origin = 'CONF_TOTALNOTA'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_ICMSRETIDO: TBCDField
      FieldName = 'CONF_ICMSRETIDO'
      Origin = 'CONF_ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object QrNotasCONF_ICMSREDITO_PERC: TBCDField
      FieldName = 'CONF_ICMSREDITO_PERC'
      Origin = 'CONF_ICMSREDITO_PERC'
      Precision = 18
      Size = 3
    end
    object QrNotasCONFI_PIS: TBCDField
      FieldName = 'CONFI_PIS'
      Origin = 'CONFI_PIS'
      Precision = 18
      Size = 2
    end
    object QrNotasCONF_COFINS: TBCDField
      FieldName = 'CONF_COFINS'
      Origin = 'CONF_COFINS'
      Precision = 18
      Size = 2
    end
    object QrNotasCOD_CENTRO_CUSTO: TIntegerField
      FieldName = 'COD_CENTRO_CUSTO'
      Origin = 'COD_CENTRO_CUSTO'
    end
    object QrNotasCOD_IMOVEL: TIntegerField
      FieldName = 'COD_IMOVEL'
      Origin = 'COD_IMOVEL'
    end
  end
  object frxDBnotas: TfrxDBDataset
    UserName = 'frxelNotas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO_NOTA=CODIGO_NOTA'
      'NUM_NOTA=NUM_NOTA'
      'SERIE_NF=SERIE_NF'
      'CFOP_NOTA=CFOP_NOTA'
      'DATA_EMISSAO=DATA_EMISSAO'
      'COD_FORNECEDOR=COD_FORNECEDOR'
      'FORNECEDOR=FORNECEDOR'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'TOTAL_NOTA=TOTAL_NOTA'
      'CNPJ=CNPJ'
      'IE=IE'
      'USUARIO_CADASTRO=USUARIO_CADASTRO'
      'DATA_CADASTRO=DATA_CADASTRO'
      'OBSERVACOES=OBSERVACOES'
      'MES=MES'
      'ANO=ANO'
      'CHAVE_NFE=CHAVE_NFE'
      'PROTOCOLO_NFE=PROTOCOLO_NFE'
      'BASE_CALCULO_ICMS=BASE_CALCULO_ICMS'
      'VALOR_ICMS=VALOR_ICMS'
      'BASE_CALC_ICMS_SUBST=BASE_CALC_ICMS_SUBST'
      'VALOR_ICMS_SUBST=VALOR_ICMS_SUBST'
      'VALOR_FRETE=VALOR_FRETE'
      'VALOR_SEGURO=VALOR_SEGURO'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'VALOR_OUTRAS_DESPESAS=VALOR_OUTRAS_DESPESAS'
      'VALOR_IPI=VALOR_IPI'
      'VALOR_TOTAL_PRODUTOS=VALOR_TOTAL_PRODUTOS'
      'VALOR_TOTAL_ITENS_NOTA=VALOR_TOTAL_ITENS_NOTA'
      'VLR_ICMS_GARANTIDO=VLR_ICMS_GARANTIDO'
      'cod_pagto=cod_pagto'
      'TP=TP'
      'ENDERECO_CLI_FORN=ENDERECO_CLI_FORN'
      'END_NUM_CLIENTE=END_NUM_CLIENTE'
      'COD_IBGE=COD_IBGE'
      'CEP_CLIENTE_FORN=CEP_CLIENTE_FORN'
      'BAIRRO_CLIENTE_FORN=BAIRRO_CLIENTE_FORN'
      'TIPO_PESSOA=TIPO_PESSOA'
      'TELEFONE=TELEFONE'
      'CIDADE_CLIENTE_FORN=CIDADE_CLIENTE_FORN'
      'UF_CLIENTE_FORN=UF_CLIENTE_FORN'
      'DESC_PAGTO=DESC_PAGTO'
      'VALOR_AVISTA=VALOR_AVISTA'
      'VALOR_PRAZO=VALOR_PRAZO'
      'pagamento=pagamento'
      'MODELO=MODELO'
      'EMITENTE=EMITENTE'
      'VALOR_COFINS=VALOR_COFINS'
      'VALOR_PIS=VALOR_PIS'
      'VALOR_PIS_ST=VALOR_PIS_ST'
      'VALOR_COFIS_ST=VALOR_COFIS_ST'
      'PERC_ICMS=PERC_ICMS'
      'CST=CST'
      'SUB_SERIE=SUB_SERIE'
      'TRANSP_NOME=TRANSP_NOME'
      'TRANSP_PLACA=TRANSP_PLACA'
      'TRANSP_PLACAUF=TRANSP_PLACAUF'
      'TRANSP_IE=TRANSP_IE'
      'TRANSP_CNPJ=TRANSP_CNPJ'
      'TRANSP_ENDERECO=TRANSP_ENDERECO'
      'TRANSP_CIDADE=TRANSP_CIDADE'
      'TRANSP_UF=TRANSP_UF'
      'TRANSP_QTDE=TRANSP_QTDE'
      'TRANSP_ESPECIE=TRANSP_ESPECIE'
      'TRANSP_MARCA=TRANSP_MARCA'
      'TRANSP_NUMERO=TRANSP_NUMERO'
      'TRANSP_PESOBRUTO=TRANSP_PESOBRUTO'
      'TRANSP_PESOLIQUIDO=TRANSP_PESOLIQUIDO'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'OBS7=OBS7'
      'OBS8=OBS8'
      'SITUACAO=SITUACAO'
      'ITENS=ITENS'
      'TIPO=TIPO'
      'NOTA_FISCAL=NOTA_FISCAL'
      'ICMS_ISENTO=ICMS_ISENTO'
      'ICMS_OUTRAS=ICMS_OUTRAS'
      'DESCONTO_INCIDENTE=DESCONTO_INCIDENTE'
      'ITEM_FRETE_VALOR=ITEM_FRETE_VALOR'
      'ITEM_FRETE_BASE=ITEM_FRETE_BASE'
      'ITEM_FRETE_ALIQUOTA=ITEM_FRETE_ALIQUOTA'
      'ITEM_FRETE_ICMS=ITEM_FRETE_ICMS'
      'ITEM_SEGURO_VALOR=ITEM_SEGURO_VALOR'
      'ITEM_SEGURO_BASE=ITEM_SEGURO_BASE'
      'ITEM_SEGURO_ALIQUOTA=ITEM_SEGURO_ALIQUOTA'
      'ITEM_SEGURO_ICMS=ITEM_SEGURO_ICMS'
      'ITEM_PIS_VALOR=ITEM_PIS_VALOR'
      'ITEM_PIS_BASE=ITEM_PIS_BASE'
      'ITEM_PIS_ALIQUOTA=ITEM_PIS_ALIQUOTA'
      'ITEM_PIS_ICMS=ITEM_PIS_ICMS'
      'ITEM_COMPLEMENTO_VALOR=ITEM_COMPLEMENTO_VALOR'
      'ITEM_COMPLEMENTO_BASE=ITEM_COMPLEMENTO_BASE'
      'ITEM_COMPLEMENTO_ALIQUOTA=ITEM_COMPLEMENTO_ALIQUOTA'
      'ITEM_COMPLEMENTO_ICMS=ITEM_COMPLEMENTO_ICMS'
      'ITEM_SERVICO_VALOR=ITEM_SERVICO_VALOR'
      'ITEM_SERVICO_BASE=ITEM_SERVICO_BASE'
      'ITEM_SERVICO_ALIQUOTA=ITEM_SERVICO_ALIQUOTA'
      'ITEM_SERVICO_ICMS=ITEM_SERVICO_ICMS'
      'ITEM_OUTRAS_VALOR=ITEM_OUTRAS_VALOR'
      'ITEM_OUTRAS_BASE=ITEM_OUTRAS_BASE'
      'ITEM_OUTRAS_ALIQUOTA=ITEM_OUTRAS_ALIQUOTA'
      'ITEM_OUTRAS_ICMS=ITEM_OUTRAS_ICMS'
      'ITEM_ESPECIAL_TOTAL=ITEM_ESPECIAL_TOTAL'
      'ITEM_ESPECIAL_VALOR=ITEM_ESPECIAL_VALOR'
      'BASEICMS_PRODUTOS=BASEICMS_PRODUTOS'
      'CONF_ITEM_ESPECIAL=CONF_ITEM_ESPECIAL'
      'CREDITO_ICMS=CREDITO_ICMS'
      'OPERACAO=OPERACAO'
      'INTEGRACAO=INTEGRACAO'
      'APROVEITA_CREDITO_ICMS=APROVEITA_CREDITO_ICMS'
      'COD_EMPRESA=COD_EMPRESA'
      'ICMSRETIDO=ICMSRETIDO'
      'PERC_ICMSRETIDO=PERC_ICMSRETIDO'
      'ESPECIE=ESPECIE'
      'CODREMETENTE=CODREMETENTE'
      'REMETENTE=REMETENTE'
      'VALOR_MERCADORIAS=VALOR_MERCADORIAS'
      'CONF_BASEICMS=CONF_BASEICMS'
      'CONF_VALORICMS=CONF_VALORICMS'
      'CONF_BASESUB=CONF_BASESUB'
      'CONF_VALORSUB=CONF_VALORSUB'
      'CONF_FRETE=CONF_FRETE'
      'CONF_SEGURO=CONF_SEGURO'
      'CONF_OUTRAS=CONF_OUTRAS'
      'CONF_IPI=CONF_IPI'
      'CONF_DESCONTO=CONF_DESCONTO'
      'CONF_TOTALPRODUTOS=CONF_TOTALPRODUTOS'
      'CONF_TOTALNOTA=CONF_TOTALNOTA'
      'CONF_ICMSRETIDO=CONF_ICMSRETIDO'
      'CONF_ICMSREDITO_PERC=CONF_ICMSREDITO_PERC'
      'CONFI_PIS=CONFI_PIS'
      'CONF_COFINS=CONF_COFINS'
      'COD_CENTRO_CUSTO=COD_CENTRO_CUSTO'
      'COD_IMOVEL=COD_IMOVEL')
    DataSet = QrNotas
    BCDToCurrency = False
    Left = 152
    Top = 64
  end
end
