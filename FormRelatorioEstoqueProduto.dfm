object FRelatorioEstoqueProduto: TFRelatorioEstoqueProduto
  Left = 567
  Top = 256
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Estoque por Produto'
  ClientHeight = 160
  ClientWidth = 371
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 8
    Top = 64
    Width = 350
    Height = 50
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 200
    Top = 81
    Width = 7
    Height = 16
    Caption = #224
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 81
    Width = 34
    Height = 16
    Caption = 'Inicio:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object spbRelatorioContrato: TSpeedButton
    Left = 121
    Top = 124
    Width = 121
    Height = 30
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    Glyph.Data = {
      C6070000424DC607000000000000360000002800000016000000160000000100
      20000000000090070000120B0000120B00000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FADA
      B400FAD6AA00FEE2BC00FFE6C300FFE5C100FFE5C100FFE5C100FFE6C400FCDD
      B600FAD8AF00FBD8AD00FADAB400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFD59A00FDD39D00E7A3
      5900DA873200DE903E00DE903E00DE903E00DA873100F1B97900FDD29B00F9C9
      8F00FFD59A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F9F9F900F4F3F200FFDA9D00FFD39B00ECAF6A00E39C4F00E6A2
      5700E6A25700E6A25700E29A4B00F8CA9000FFE1B200FDCE9400FFD89B00F4F3
      F200F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF009C9C9C003F40
      41002B313800EBC08C00FFDBA200EBAC6600E1964700E49D5100E49D5100E49D
      5100E59F5500DE913F00D9863100FFCB8B00EDC593002B3138003F4041009C9C
      9C00EFEFEF00FFFFFF00FFFFFF0097979700424242003D3E400042424300F5C9
      9100FFE1A500F1AF6600E7984500EA9F4F00EA9F4F00EA9F4F00EA9F4F00EA9E
      4E00E89B4A00FFD29000F7CD9600424243003D3E40004242420097979700FFFF
      FF00FFFFFF008A8A8A00424242003F41440028292B00E89F4400FFAD4700FBB3
      5700FEBA6100FDB85E00FDB85E00FDB85E00FDB85E00FDB85E00FDB95F00FFB2
      4E00E79D4200292A2B003F414400424242008A8A8A00FFFFFF00FFFFFF008A8A
      8A0042424200434444003233330045392A004A3D2C00493C2C00493C2C00493C
      2C00493C2C00493C2C00493C2C00493C2C00493C2C004A3D2C0045392A003333
      330044444400424242008A8A8A00FFFFFF00FFFFFF00868686003C3C3C003C3C
      3C0041404000303740002D353F002E363F002E363F002E363F002E363F002E36
      3F002E363F002E363F002E363F002D353F0030374000414040003C3C3C003C3C
      3C0086868600FFFFFF00FFFFFF00939393005151510051515100515151005151
      5100515151005151510051515100515151005151510051515100515151005151
      510051515100515151005151510051515100515151005151510093939300FFFF
      FF00FFFFFF00A1A1A10067676700676767006767670067676700676767006767
      6700676767006767670067676700676767006767670067676700676767006767
      67006768660066636A006559710067696500A1A2A000FFFFFF00FFFFFF009D9D
      9D00616161006161610061616100616161006161610061616100616161006161
      6100616161006161610061616100616161006161610061616100605E6400636D
      5800688C4100605A66009C9AA000FFFFFF00FFFFFF00A6A6A600616161006161
      6100626262005C5D5F005C5D5F005C5D5F005C5D5F005C5D5F005C5D5F005C5D
      5F005C5D5F005C5D5F005C5D5F005C5D5F005B586300657554006CA92D005F56
      6900A5A1AA00FFFFFF00FFFFFF00EDEDED00A1A1A10066666600636363005B5D
      5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D
      5F005B5D5F005B5D5F005B5E5E00625F660063567100A1A3A000EEEEED00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700484C5100D5B08300EFC38E00E5BC
      8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00EFC3
      8E00D5B08300484C5100F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CDCCCB00FFDB9A00FFD99800FFD49500FFD49500FFD4
      9500FFD49500FFD49500FFD49500FFD49500FFD49500FFD99800FFDB9A00CDCC
      CB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFD89C00F9C98F00F9CA9000F9CA9000F9CA9000F9CA9000F9CA
      9000F9CA9000F9CA9000F9CA9000F9C98F00FFD89C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8CA
      9400F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000F9CA
      9000F9CA9000F9CA9000F8CA9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBDCB500FBD8AD00FBDA
      B100FBDAB100FBDAB100FBDAB100FBDAB100FBDAB100FBDAB100FBDAB100FBD8
      FD00FBDCB500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00}
    ParentFont = False
    OnClick = spbRelatorioContratoClick
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 350
    Height = 50
    Shape = bsFrame
  end
  object lblCliente: TLabel
    Left = 14
    Top = 24
    Width = 49
    Height = 16
    Caption = 'Produto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object BtnConsPro: TSpeedButton
    Left = 322
    Top = 23
    Width = 23
    Height = 21
    Hint = 'Consultar Produto'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FF314B62
      AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
      106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
      00FF925D5AB48C80C9A391C28F88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF3BABFFA1CAE78C7775A38372EBE0B8FEFCCFFEFCCEFCFBCCE3CF
      B1C0998CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDA4A4CEA58FFF
      EDB2FFFCCAFFFFCFFFFFCFFFFFD5FFFFEAF3EBE5A0746FFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFB67F76F4D9A1F6D095FCF4C2FFFFCFFFFFD8FFFFEEFFFF
      FAFFFFFFD5C2ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD0A792FBDC9AEE
      B87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6EEEAC2B7847EFF00FFFF00FF
      FF00FFFF00FFFF00FFDCB79AFAD796EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFF
      E3FFFFD7F8F6CBB69782FF00FFFF00FFFF00FFFF00FFFF00FFD5AF96FEE2A1EA
      A96AEFBD80FAE9B4FFFFD0FFFFD3FFFFD1FFFFD1F3EEC5B88B80FF00FFFF00FF
      FF00FFFF00FFFF00FFBB8980FCEBB1F8E2B5F0C690F0C286F7DCA5FEF3C1FEF8
      C6FFFFCFDDCEA9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3B499FF
      FFFFFFF4E2EFBD80EBAB6FF0C086FBDEA3FCF3B8AC8676FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFC6ADA7F3EBD1FFEEAFFCDE9DFEE2A1F0D4
      A4C29886FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFBB987EC19983D3AD93D1A592FF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    OnClick = BtnConsProClick
  end
  object edtFim: TDateEdit
    Left = 224
    Top = 76
    Width = 121
    Height = 25
    DefaultToday = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
    Text = '22/10/2022'
  end
  object edtIni: TDateEdit
    Left = 64
    Top = 76
    Width = 121
    Height = 25
    DefaultToday = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    Text = '22/10/2022'
  end
  object edtProduto: TEdit
    Left = 64
    Top = 21
    Width = 251
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object qrRel: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      '    PRL.DATA,'
      '    PRL.FRACAO,'
      '    PRL.ESTOQUE_ANTERIOR,'
      '    PRL.QUANTIDADE,'
      '    PRL.ESTOQUE_POSTERIOR,'
      '    PRL.SITUACAO_ESTOQUE,'
      '    PRL.OPERACAO,'
      '    PRL.ACAO_BD,'
      '    PRL.SITUACAO_ESTOQUE_OLD,'
      '    PRL.COD_VENDA,'
      '    PRL.COD_COMPRA,'
      '    PRL.HISTORICO,'
      '    PRL.HORA,'
      ''
      '    FC.NOME_RS,'
      '    PR.DESCRICAO AS NOME_PRODUTO,'
      ''
      '    EP.NOME_FANTASIA AS EMPRESA,'
      '    EP.CNPJ AS EMPRESA_CNPJ,'
      '    EP.TELEFONE AS EMPRESA_FONE,'
      '    EP.LOGOMARCA AS EMPRESA_LOGO'
      'FROM PRODUTOS_ESTOQUES_LOG PRL'
      '    LEFT JOIN EMPRESA EP ON (EP.CODIGO = PRL.ID_EMPRESA)'
      '    LEFT JOIN FUNCIONARIO FC ON (FC.CODIGO = PRL.ID_USUARIO)'
      '    LEFT JOIN PRODUTOS PR ON (PR.CODIGO = PRL.ID_PRODUTO)'
      
        '    WHERE PRL.ID_PRODUTO = :ID AND PRL.DATA between :DTINI AND :' +
        'DTFIM')
    Left = 152
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qrRelDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrRelFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object qrRelESTOQUE_ANTERIOR: TBCDField
      FieldName = 'ESTOQUE_ANTERIOR'
      Origin = 'ESTOQUE_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qrRelQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 3
    end
    object qrRelESTOQUE_POSTERIOR: TBCDField
      FieldName = 'ESTOQUE_POSTERIOR'
      Origin = 'ESTOQUE_POSTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qrRelSITUACAO_ESTOQUE: TIntegerField
      FieldName = 'SITUACAO_ESTOQUE'
      Origin = 'SITUACAO_ESTOQUE'
    end
    object qrRelOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      Size = 1
    end
    object qrRelACAO_BD: TStringField
      FieldName = 'ACAO_BD'
      Origin = 'ACAO_BD'
      Size = 1
    end
    object qrRelSITUACAO_ESTOQUE_OLD: TIntegerField
      FieldName = 'SITUACAO_ESTOQUE_OLD'
      Origin = 'SITUACAO_ESTOQUE_OLD'
    end
    object qrRelCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = 'COD_VENDA'
    end
    object qrRelCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
      Origin = 'COD_COMPRA'
    end
    object qrRelHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 100
    end
    object qrRelHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qrRelNOME_RS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object qrRelNOME_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object qrRelEMPRESA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA'
      Origin = 'NOME_FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object qrRelEMPRESA_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object qrRelEMPRESA_FONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_FONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 16
    end
    object qrRelEMPRESA_LOGO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_LOGO'
      Origin = 'LOGOMARCA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATA=DATA'
      'FRACAO=FRACAO'
      'ESTOQUE_ANTERIOR=ESTOQUE_ANTERIOR'
      'QUANTIDADE=QUANTIDADE'
      'ESTOQUE_POSTERIOR=ESTOQUE_POSTERIOR'
      'SITUACAO_ESTOQUE=SITUACAO_ESTOQUE'
      'OPERACAO=OPERACAO'
      'ACAO_BD=ACAO_BD'
      'SITUACAO_ESTOQUE_OLD=SITUACAO_ESTOQUE_OLD'
      'COD_VENDA=COD_VENDA'
      'COD_COMPRA=COD_COMPRA'
      'HISTORICO=HISTORICO'
      'HORA=HORA'
      'NOME_RS=NOME_RS'
      'NOME_PRODUTO=NOME_PRODUTO'
      'EMPRESA=EMPRESA'
      'EMPRESA_CNPJ=EMPRESA_CNPJ'
      'EMPRESA_FONE=EMPRESA_FONE'
      'EMPRESA_LOGO=EMPRESA_LOGO')
    DataSet = qrRel
    BCDToCurrency = False
    Left = 184
  end
  object frxReport: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42515.386731782400000000
    ReportOptions.LastChange = 42674.348340833320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 8
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.267780000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        RowCount = 0
        object Gradient17: TfrxGradientView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 19.653543310000000000
          Width = 710.551181100000000000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Gradient2: TfrxGradientView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 710.551183540000000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 9.559060000000000000
          Top = 1.889763780000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 107.047310000000000000
          Top = 1.826840000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 426.086890000000000000
          Top = 1.889763780000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'A'#231#227'o')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 9.559060000000000000
          Top = 22.637910000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."DATA"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 106.826840000000000000
          Top = 22.677165350000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."HORA"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 426.086890000000000000
          Top = 22.724490000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."ACAO_BD"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 92.133890000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.TopLine.Style = fsDot
          Frame.BottomLine.Style = fsDot
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 175.425328660000000000
          Top = 2.000000000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fra'#231#227'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 175.322978660000000000
          Top = 22.677165350000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."FRACAO"]')
          ParentFont = False
        end
        object Gradient3: TfrxGradientView
          AllowVectorExport = True
          Left = 100.488250000000000000
          Width = 1.511811020000000000
          Height = 38.551181100000000000
          BeginColor = clMedGray
          EndColor = clMedGray
          Style = gsHorizontal
          Frame.Typ = []
          Color = clMedGray
        end
        object Gradient4: TfrxGradientView
          AllowVectorExport = True
          Left = 171.653680000000000000
          Width = 1.511811020000000000
          Height = 38.551181100000000000
          BeginColor = clMedGray
          EndColor = clMedGray
          Style = gsHorizontal
          Frame.Typ = []
          Color = clMedGray
        end
        object Gradient5: TfrxGradientView
          AllowVectorExport = True
          Left = 512.945270000000000000
          Width = 1.889763780000000000
          Height = 38.551181100000000000
          BeginColor = clMedGray
          EndColor = clMedGray
          Style = gsHorizontal
          Frame.Typ = []
          Color = clMedGray
        end
        object Gradient6: TfrxGradientView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 1.511811020000000000
          Height = 38.551181100000000000
          BeginColor = clMedGray
          EndColor = clMedGray
          Style = gsHorizontal
          Frame.Typ = []
          Color = clMedGray
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 234.433210000000000000
          Top = 1.779530000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo Venda')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 22.456695350000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."COD_VENDA"]')
          ParentFont = False
        end
        object Gradient7: TfrxGradientView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 1.511811020000000000
          Height = 38.551181100000000000
          BeginColor = clMedGray
          EndColor = clMedGray
          Style = gsHorizontal
          Frame.Typ = []
          Color = clMedGray
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 325.141930000000000000
          Top = 1.779530000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo Compra')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 22.456695350000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."COD_COMPRA"]')
          ParentFont = False
        end
        object Gradient8: TfrxGradientView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Width = 1.511811020000000000
          Height = 38.551181100000000000
          BeginColor = clMedGray
          EndColor = clMedGray
          Style = gsHorizontal
          Frame.Typ = []
          Color = clMedGray
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 518.575140000000000000
          Top = 1.779530000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Usu'#225'rio')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 518.575140000000000000
          Top = 22.614256220000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."NOME_RS"]')
          ParentFont = False
        end
        object Gradient9: TfrxGradientView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 38.795300000000000000
          Width = 710.551183540000000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient10: TfrxGradientView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 58.472480000000000000
          Width = 710.551181100000000000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 40.574830000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Est. Anterior')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 61.322976220000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."ESTOQUE_ANTERIOR"]')
          ParentFont = False
        end
        object Gradient11: TfrxGradientView
          AllowVectorExport = True
          Left = 101.047310000000000000
          Top = 37.795300000000000000
          Width = 1.511811020000000000
          Height = 38.551181100000000000
          BeginColor = clMedGray
          EndColor = clMedGray
          Style = gsHorizontal
          Frame.Typ = []
          Color = clMedGray
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 105.047310000000000000
          Top = 40.574830000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd. Movimentado')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 105.047310000000000000
          Top = 61.322976220000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."QUANTIDADE"]')
          ParentFont = False
        end
        object Gradient12: TfrxGradientView
          AllowVectorExport = True
          Left = 210.535560000000000000
          Top = 37.795300000000000000
          Width = 1.511811020000000000
          Height = 38.551181100000000000
          BeginColor = clMedGray
          EndColor = clMedGray
          Style = gsHorizontal
          Frame.Typ = []
          Color = clMedGray
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 40.574830000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 61.322976220000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."SITUACAO_ESTOQUE"]')
          ParentFont = False
        end
        object Gradient13: TfrxGradientView
          AllowVectorExport = True
          Left = 320.921460000000000000
          Top = 37.795300000000000000
          Width = 1.511811020000000000
          Height = 38.551181100000000000
          BeginColor = clMedGray
          EndColor = clMedGray
          Style = gsHorizontal
          Frame.Typ = []
          Color = clMedGray
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 40.574830000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Opera'#231#227'o')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 61.322976220000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."OPERACAO"]')
          ParentFont = False
        end
        object Gradient14: TfrxGradientView
          AllowVectorExport = True
          Left = 430.527830000000000000
          Top = 37.795300000000000000
          Width = 1.511811020000000000
          Height = 38.551181100000000000
          BeginColor = clMedGray
          EndColor = clMedGray
          Style = gsHorizontal
          Frame.Typ = []
          Color = clMedGray
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 436.425480000000000000
          Top = 40.574830000000000000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 436.425480000000000000
          Top = 60.322976220000000000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."HISTORICO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Gradient1: TfrxGradientView
          AllowVectorExport = True
          Left = 6.338590000000000000
          Top = 31.897650000000000000
          Width = 555.590910000000000000
          Height = 3.779530000000000000
          BeginColor = 13948116
          EndColor = 13224393
          Style = gsHorizontal
          Frame.Typ = []
          Color = 13619151
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 6.118120000000000000
          Top = 8.779530000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Estoque por Produto')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 634.842920000000000000
          Top = 4.000000000000000000
          Width = 79.370130000000000000
          Height = 79.370130000000000000
          DataField = 'EMPRESA_LOGO'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Picture.Data = {
            07544269746D617036640000424D366400000000000036000000280000005000
            0000500000000100200000000000006400000000000000000000000000000000
            0000F8F5F1FFE2DDD2FFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFE2DDD2FFFAF4
            F1FFDBD6D2FFFAF4F1FFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFCF9F5FFFAF4F1FFE2DD
            D2FFD9D1CAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFF5F0ECFFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFE8E2DFFFE8E2DFFFDBD6D2FFDBD6D2FFF8F5
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFDBD6D2FFFAF4F1FFF5F0ECFFD9D1CAFFE8E2
            DFFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFD9D1CAFFF5F0ECFFFAF4F1FFE2DDD2FFD9D1
            CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFE2DDD2FFDBD6D2FFF4F3F5FFEFE9E7FFD9D1
            CAFFE2DDD2FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFD9D1
            CAFFD9D1CAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFD9D1
            CAFFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0
            ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0
            ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0
            ECFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFF5F0ECFFDBD6
            D2FFD9D1CAFFE8E2DFFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFF5F0ECFFFAF4F1FFEFE9E7FFD9D1
            CAFFE8E2DFFFFAF4F1FFFAF4F1FFDBD6D2FFD9D1CAFFDBD6D2FFF4F3F5FFF5F0
            ECFFDBD6D2FFD9D1CAFFD9D1CAFFDBD6D2FFF5F0ECFFFAF4F1FFDBD6D2FFD9D1
            CAFFE2DDD2FFF5F0ECFFD9D1CAFFD9D1CAFFE8E2DFFFFAF4F1FFE8E2DFFFD9D1
            CAFFD9D1CAFFE8E2DFFFFAF4F1FFFAF4F1FFF5F0ECFFD9D1CAFFD9D1CAFFDBD6
            D2FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFE2DDD2FFEFE9
            E7FFD9D1CAFFD9D1CAFFF5F0ECFFFAF4F1FFF5F0ECFFD9D1CAFFD9D1CAFFD9D1
            CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFE8E2DFFFFAF4F1FFEFE9E7FFD9D1
            CAFFDBD6D2FFFAF4F1FFEFE9E7FFD9D1CAFFE8E2DFFFF5F0ECFFE2DDD2FFDBD6
            D2FFD9D1CAFFE2DDD2FFEFE9E7FFEFE9E7FFD9D1CAFFEFE9E7FFD9D1CAFFD9D1
            CAFFE8E2DFFFDBD6D2FFD9D1CAFFDBD6D2FFE8E2DFFFEFE9E7FFDBD6D2FFD9D1
            CAFFEFE9E7FFE8E2DFFFE2DDD2FFFAF4F1FFE2DDD2FFD9D1CAFFF5F0ECFFEFE9
            E7FFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFD9D1CAFFD9D1CAFFE8E2DFFFE2DD
            D2FFD9D1CAFFD9D1CAFFDBD6D2FFF5F0ECFFE2DDD2FFD9D1CAFFF5F0ECFFEFE9
            E7FFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFEFE9E7FFD9D1CAFFE8E2DFFFFAF4F1FFF5F0ECFFD9D1
            CAFFD9D1CAFFFAF4F1FFF5F0ECFFD9D1CAFFDBD6D2FFFAF4F1FFE8E2DFFFD9D1
            CAFFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFEFE9E7FFDBD6D2FFD9D1CAFFDBD6
            D2FFFAF4F1FFDBD6D2FFD9D1CAFFDBD6D2FFFAF4F1FFDBD6D2FFD9D1CAFFDBD6
            D2FFFAF4F1FFFAF4F1FFEFE9E7FFE8E2DFFFD9D1CAFFDBD6D2FFFAF4F1FFF5F0
            ECFFD9D1CAFFDBD6D2FFE8E2DFFFF5F0ECFFD9D1CAFFDBD6D2FFFAF4F1FFE8E2
            DFFFD9D1CAFFD9D1CAFFF5F0ECFFDBD6D2FFD9D1CAFFDBD6D2FFFAF4F1FFFAF4
            F1FFD9D1CAFFDBD6D2FFE8E2DFFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFF5F0ECFFD9D1CAFFDBD6D2FFFAF4F1FFFAF4F1FFD9D1
            CAFFD9D1CAFFF5F0ECFFFAF4F1FFD9D1CAFFD9D1CAFFF5F0ECFFFAF4F1FFD9D1
            CAFFD9D1CAFFEFE9E7FFF5F0ECFFFAF4F1FFFAF4F1FFEFE9E7FFD9D1CAFFDBD6
            D2FFFAF4F1FFEFE9E7FFD9D1CAFFD9D1CAFFFAF4F1FFEFE9E7FFD9D1CAFFDBD6
            D2FFFAF4F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFDBD6D2FFF5F0ECFFD9D1
            CAFFDBD6D2FFD9D1CAFFE8E2DFFFE8E2DFFFD9D1CAFFD9D1CAFFFAF4F1FFF5F0
            ECFFD9D1CAFFD9D1CAFFEFE9E7FFEFE9E7FFD9D1CAFFDBD6D2FFF5F0ECFFD9D1
            CAFFDBD6D2FFD9D1CAFFE8E2DFFFE8E2DFFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFD9D1CAFFD9D1CAFFFAF4F1FFFAF4F1FFDBD6
            D2FFD9D1CAFFE8E2DFFFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFD9D1
            CAFFD9D1CAFFE8E2DFFFD9D1CAFFDBD6D2FFFAF4F1FFFAF4F1FFD9D1CAFFD9D1
            CAFFFAF4F1FFFAF4F1FFD9D1CAFFD9D1CAFFF5F0ECFFFAF4F1FFD9D1CAFFD9D1
            CAFFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFD9D1CAFFD9D1CAFFDBD6D2FFE8E2
            DFFFEFE9E7FFD9D1CAFFE2DDD2FFFAF4F1FFD9D1CAFFD9D1CAFFFAF4F1FFFAF4
            F1FFDBD6D2FFD9D1CAFFE8E2DFFFFAF4F1FFD9D1CAFFD9D1CAFFDBD6D2FFE8E2
            DFFFEFE9E7FFD9D1CAFFE2DDD2FFFAF4F1FFEFE9E7FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFDBD6D2FFD9D1CAFFE8E2DFFFFAF4F1FFE8E2
            DFFFD9D1CAFFDBD6D2FFFAF4F1FFE8E2DFFFD9D1CAFFE2DDD2FFFAF4F1FFDBD6
            D2FFD9D1CAFFEFE9E7FFEFE9E7FFD9D1CAFFDBD6D2FFFAF4F1FFDBD6D2FFD9D1
            CAFFEFE9E7FFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFDBD6D2FFD9D1
            CAFFE8E2DFFFEFE9E7FFFAF4F1FFFAF4F1FFDBD6D2FFD9D1CAFFD9D1CAFFEFE9
            E7FFFAF4F1FFD9D1CAFFD9D1CAFFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4
            F1FFE8E2DFFFD9D1CAFFDBD6D2FFFAF4F1FFDBD6D2FFD9D1CAFFD9D1CAFFEFE9
            E7FFFAF4F1FFD9D1CAFFD9D1CAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFE2DDD2FFFAF4F1FFEFE9
            E7FFD9D1CAFFD9D1CAFFF5F0ECFFF5F0ECFFD9D1CAFFD9D1CAFFFAF4F1FFE2DD
            D2FFD9D1CAFFE8E2DFFFFAF4F1FFE2DDD2FFD9D1CAFFEFE9E7FFE2DDD2FFD9D1
            CAFFE8E2DFFFFAF4F1FFE8E2DFFFD9D1CAFFE8E2DFFFFAF4F1FFDBD6D2FFD9D1
            CAFFE8E2DFFFD9D1CAFFF5F0ECFFFAF4F1FFE2DDD2FFD9D1CAFFD9D1CAFFFAF4
            F1FFFAF4F1FFDBD6D2FFD9D1CAFFF5F0ECFFE8E2DFFFD9D1CAFFE8E2DFFFFAF4
            F1FFEFE9E7FFD9D1CAFFD9D1CAFFFAF4F1FFE2DDD2FFD9D1CAFFD9D1CAFFFAF4
            F1FFFAF4F1FFDBD6D2FFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFD9D1CAFFD9D1CAFFF5F0ECFFF5F0
            ECFFD9D1CAFFD9D1CAFFE8E2DFFFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFEFE9
            E7FFD9D1CAFFDBD6D2FFFAF4F1FFF5F0ECFFD9D1CAFFE8E2DFFFE8E2DFFFD9D1
            CAFFDBD6D2FFFAF4F1FFEFE9E7FFD9D1CAFFDBD6D2FFFAF4F1FFE8E2DFFFD9D1
            CAFFE8E2DFFFDBD6D2FFDBD6D2FFFAF4F1FFEFE9E7FFD9D1CAFFD9D1CAFFEFE9
            E7FFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFF5F0ECFFD9D1CAFFD9D1CAFFFAF4
            F1FFFAF4F1FFD9D1CAFFD9D1CAFFF5F0ECFFEFE9E7FFD9D1CAFFD9D1CAFFEFE9
            E7FFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFD9D1CAFFD9D1CAFFE8E2DFFFFAF4
            F1FFD9D1CAFFD9D1CAFFE2DDD2FFF5F0ECFFE2DDD2FFD9D1CAFFEFE9E7FFFAF4
            F1FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFDBD6D2FFDBD6D2FFEFE9E7FFD9D1
            CAFFDBD6D2FFFAF4F1FFF5F0ECFFD9D1CAFFD9D1CAFFF5F0ECFFEFE9E7FFD9D1
            CAFFE2DDD2FFF5F0ECFFD9D1CAFFEFE9E7FFFAF4F1FFE8E2DFFFD9D1CAFFEFE9
            E7FFFAF4F1FFDBD6D2FFD9D1CAFFF5F0ECFFFAF4F1FFDBD6D2FFD9D1CAFFEFE9
            E7FFFAF4F1FFDBD6D2FFD9D1CAFFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFEFE9
            E7FFFAF4F1FFDBD6D2FFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFDBD6D2FFD9D1CAFFDBD6D2FFE8E2
            DFFFD9D1CAFFD9D1CAFFE8E2DFFFDBD6D2FFE2DDD2FFD9D1CAFFE8E2DFFFFAF4
            F1FFEFE9E7FFD9D1CAFFDBD6D2FFFAF4F1FFDBD6D2FFE2DDD2FFFAF4F1FFD9D1
            CAFFD9D1CAFFF5F0ECFFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFF5F0ECFFD9D1
            CAFFD9D1CAFFFAF4F1FFDBD6D2FFE2DDD2FFFAF4F1FFFAF4F1FFE2DDD2FFE2DD
            D2FFFAF4F1FFDBD6D2FFD9D1CAFFFAF4F1FFFAF4F1FFF5F0ECFFD9D1CAFFDBD6
            D2FFEFE9E7FFE2DDD2FFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFE2DDD2FFE2DD
            D2FFFAF4F1FFDBD6D2FFD9D1CAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFE8E2DFFFFAF4F1FFE2DD
            D2FFD9D1CAFFDBD6D2FFFAF4F1FFE8E2DFFFD9D1CAFFDBD6D2FFFAF4F1FFFAF4
            F1FFFAF4F1FFE8E2DFFFD9D1CAFFDBD6D2FFDBD6D2FFF5F0ECFFFAF4F1FFDBD6
            D2FFD9D1CAFFF5F0ECFFFAF4F1FFE8E2DFFFD9D1CAFFE8E2DFFFFAF4F1FFD9D1
            CAFFD9D1CAFFF5F0ECFFE8E2DFFFD9D1CAFFFAF4F1FFFAF4F1FFFAF4F1FFDBD6
            D2FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFD9D1
            CAFFD9D1CAFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFDBD6
            D2FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFFAF4F1FFFAF4F1FFE2DD
            D2FFD9D1CAFFEFE9E7FFEFE9E7FFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4
            F1FFEFE9E7FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFEFE9E7FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFE8E2
            DFFFD9D1CAFFDBD6D2FFFAF4F1FFD9D1CAFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFD9D1CAFFD9D1CAFFF5F0ECFFD9D1CAFFE8E2DFFFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFE8E2DFFFD9D1CAFFEFE9E7FFDBD6D2FFEFE9E7FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFD9D1CAFFDBD6D2FFDBD6D2FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFF5F0ECFFE8E2DFFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFD9D1
            CAFFE2DDD2FFFAF4F1FFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFAF4F1FFDBD6
            D2FFFAF4F1FFE2DDD2FFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFE2DDD2FFF8F5
            F1FF}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Top = 34.236240000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]  [Time] - [frxDBDataset."EMPRESA"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 405.630180000000000000
          Top = 55.913420000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone - [frxDBDataset."EMPRESA_FONE"] ')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Top = 55.133890000000000000
          Width = 393.071120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ: [frxDBDataset."EMPRESA_CNPJ"] ')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina: [Page#]/[TotalPages#]')
          ParentFont = False
          VAlign = vaBottom
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
end
