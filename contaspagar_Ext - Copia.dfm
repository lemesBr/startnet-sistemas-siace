object FormContasPagar_ext: TFormContasPagar_ext
  Left = 386
  Top = 223
  Width = 856
  Height = 480
  Caption = 'Extorno de Contas a Pagar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 41
    Align = alTop
    TabOrder = 0
    object myLabel3d1: TsLabelFX
      Left = 464
      Top = 9
      Width = 166
      Height = 37
      Caption = 'Contas Pagas'
      Color = clBtnFace
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -24
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object Label1: TsLabel
      Left = 5
      Top = 0
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object Label2: TsLabel
      Left = 122
      Top = 4
      Width = 52
      Height = 13
      Caption = 'Data Final:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object Label6: TsLabel
      Left = 229
      Top = 0
      Width = 85
      Height = 13
      Caption = 'C'#243'd. Fornecedor:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object BtnConsPro: TSpeedButton
      Left = 315
      Top = 14
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
    object DateEdit1: TsDateEdit
      Left = 5
      Top = 16
      Width = 105
      Height = 21
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
    end
    object DateEdit2: TsDateEdit
      Left = 124
      Top = 15
      Width = 97
      Height = 21
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
    end
    object suiButton2: TsBitBtn
      Left = 356
      Top = 9
      Width = 90
      Height = 27
      Caption = '&Filtrar'
      TabOrder = 2
      OnClick = suiButton2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFFF1E1FFDFBAFFD4A2FFD099FFCE97FFD19CFFD7A9FFE5C8FFF9F1FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFFF3E6FFD39FFFC37CFFBC6EFFC172FFC374FFC475FFC273FFBE70FF
        BE71FFC684FFDFBAFFFCF9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF01FEFFE7C9FFC277FFC16FFFC578FFC379FEBE78FCBE77FBBD
        77FCBE77FFC078FFC579FFC878FFBE6DFFCF93FFF6EBFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFFE2BEFFC06FFFC375FEBF78F7BA75F3B875
        F3B875F3B875F3B875F3B875F3B875F4B975F8BB76FFC379FFBF6EFFC984FFF6
        EAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFEDD4FFC473FFC375F7BB75F4
        BA74F5BA74F7BB75F9BC75FABD75FABD75F9BC75F7BB75F5BA74F4BA74F4BA74
        FDBF76FFBF6CFFD090FFFBF6FF00FFFF00FFFF00FFFF00FFFFF9F1FFCE89FFBD
        6EF7BB73F6BA73F9BC74FBBE75FEC075FFC075FBBB6EF9B96CFBBC71FEC075FB
        BE75F9BC74F6BA73F6BA73FBBD75FFBE6AFFE0B5FF00FFFF00FFFF00FFFF00FF
        FFE6C1FFBC68F9BC73F8BC73FBBE73FEC074FFC275F9B869FABB6FFDCA8DFED0
        99FBC381F7B667FDBC6EFFC175FFC074FCBE73F9BC73FCBD71FFC97DFFF7EAFF
        00FFFF00FFFFFBF6FFD18EF9BA6CF9BD72FBBE73FEC173FFC374F7B766FDCB8E
        FFF4E5FFFDFAFFFDFCFFFCF8FEE5C6FCBE71FFBE6CFFBE6CFEBD6CFCBC6CF9BA
        6BFFBB67FFE4B9FF00FFFF00FFFFF7EAFFBF6BF9BD70FBBF71FEC172FFC273FE
        BE6DFAC682FFF8EFFF00FFFF00FFFF00FFFF00FFFF00FFFFD094FFD094FFD094
        FFD094FECF94FBCE94FCD099FFE7BEFF00FFFF00FFFFF1DAF5B763FCC071FEC1
        71FFC271FFC371F5B765FCE3C1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFEDCD
        F1B462FFC270FFC371FFC371FFC16EF4BA6CFEEED8FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFFEED0F3B561FFC470FFC470FFC470FFC26EF3B968FFEDD2FF00FF
        FF00FFFF00FFFFCC66FFCC66FFCC66FFCC66FFCC66FFCC66FFCC66FFCC66FFCC
        66FFCC66FFCC66FF00FFFF00FFFFF4E1F7B861FFC66FFFC66FFFC56EFFC46EF7
        B861FFE0AAFF00FFFF00FFFF00FFFFFEFCFFCD65FFCD65FFDF76FFDF76FFDF76
        FFDF76FFDF76FFDF76FFDF76FFCD65FF00FFFF00FFFFF9EEFBC170FFC56BFFC8
        6EFFC66EFFC56EFFC46CFFCB6BFFEFCAFF00FFFF00FFFF00FFFF00FFF5B760FF
        C56EFFC56EFFC56EFFC56EFFC56EFFC56EFFC56EF5B760FF00FFFF00FFFFFEFB
        FED79EFFC062FFCA6EFFC96EFFC76DFFC76DFFCA68FFD36CFFE7AFFFF1D0FFF3
        D9FCE6C6F9CB89FDBF65FFC86DFFC86DFFC86DFFC86DFFC86DFFC76DF7B95FFF
        00FFFF00FFFF00FFFFEFD6FFC469FFCB6CFFCB6DFFC96CFFC86CFFCA6DFFD66E
        FFD362FFD569FFD66FFFD362FEC165FFC86CFFCA6DFFCA6DFFCA6DFFCA6DFFCA
        6DFFC96CF8BA5EFF00FFFF00FFFF00FFFFFEFDFFDA9EFFC15EFFCF6DFFCC6CFF
        CA6CFFC96CFFCA6CFFD56EFFD96EFFDA6EFFDA70FFCF6DFFCA6CFFCA6CFFCC6C
        FFCC6CFFCC6CFFCB6CFFCA6CF9BB5EFF00FFFF00FFFF00FFFF00FFFFF9EFFFD2
        81FFC761FFD16CFFCE6CFFCC6CFFCA6BFFCA6BFFCB6BFFCC6CFFCA6BFFCB6BFF
        CC6CFFCE6CFFCF6CFFD06CFFCF6CFFCF6CFFCC6CFBBD5DFF00FFFF00FFFF00FF
        FF00FFFF00FFFFF4E0FFD380FFC65EFFD26CFFD16CFFCF6CFFCE6CFFCE6CFFCE
        6CFFCE6CFFCF6CFFD16CFFD36DFFD16AFFC75EFFC65EFFC45EFFD06CFEBE5DFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFF9EEFFDE9AFFCB60FFCC62FFD369
        FFD56CFFD46CFFD46CFFD66CFFD66CFFD267FFCA5EFFD16EFFE1A1FFFDF8FFC9
        5EFFC65EFFC25DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFEFF
        F1D1FFE09BFFD06AFFCC5DFFCC5DFFCC5DFFCC5DFFCC5EFFD77DFFE7B1FFF6E0
        FF00FFFF00FFFF00FFFFCA5DFFC65CFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFFFEFAFFF9ECFFF5DCFFF0CBFFEFC9FFF1CFFFF7E4FF
        FBF1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFC85DFF00FF}
      SkinData.SkinSection = 'BUTTON'
    end
    object Edit1: TEdit
      Left = 228
      Top = 15
      Width = 85
      Height = 21
      TabOrder = 3
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 401
    Width = 840
    Height = 40
    Align = alBottom
    TabOrder = 1
    object Label3: TLabel
      Left = 24
      Top = 5
      Width = 4
      Height = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 643
      Top = 4
      Width = 177
      Height = 13
      Caption = 'DELETE -  Exclui um T'#237'tulo Pagto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 2
      Top = 24
      Width = 610
      Height = 13
      Caption = 
        'Obs: Para Exclus'#227'o de parcelas recebidas com cheques, Favor excl' +
        'uir o cheque na tela de baixa de cheques...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object XDBGrid1: TXDBGrid
    Left = 0
    Top = 41
    Width = 840
    Height = 360
    Align = alClient
    DataSource = DataSource1
    GridStyle.VisualStyle = vsXPStyle
    MarkerStyle = msMild
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
    TabOrder = 2
    OnKeyDown = XDBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'SEQ'
        Visible = True
        Width = 45
      end
      item
        Expanded = False
        FieldName = 'COD_PAGAR'
        Title.Caption = 'Cod. Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGO'
        Title.Caption = 'Valor Pago'
        Visible = True
        Width = 83
      end
      item
        Expanded = False
        FieldName = 'DATA_PAGTO'
        Title.Caption = 'Data Pagto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Caption = 'Documento'
        Visible = True
        Width = 80
      end
      item
        Expanded = False
        FieldName = 'CODFORNECEDOR'
        Title.Caption = 'Cod. Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Fornecedor'
        Visible = True
        Width = 193
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Caption = 'Historico'
        Visible = True
        Width = 208
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCAIXA'
        Visible = True
      end>
  end
  object Query: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'SELECT P.*, C.CODFORNECEDOR, C.DOCUMENTO, c.situacao, c.codcaixa' +
        ', C.HISTORICO, f.nome FROM contas_apagar_pago P, contas_apagar C' +
        ', fornecedores  f'
      
        'WHERE COD_PAGAR = C.CODIGO and c.codfornecedor = f.codigo AND DA' +
        'TA_PAGTO between :DATAI AND :DATAF AND C.CODFORNECEDOR =:CODF')
    Left = 184
    Top = 120
    ParamData = <
      item
        Name = 'DATAI'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATAF'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'CODF'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QuerySEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = 'SEQ'
      Required = True
    end
    object QueryCOD_PAGAR: TIntegerField
      FieldName = 'COD_PAGAR'
      Origin = 'COD_PAGAR'
      Required = True
    end
    object QueryVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object QueryDATA_PAGTO: TDateField
      FieldName = 'DATA_PAGTO'
      Origin = 'DATA_PAGTO'
    end
    object QueryCODFORNECEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryHISTORICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QueryNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QueryDOCUMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QuerySITUACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryCODCAIXA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODCAIXA'
      Origin = 'CODCAIXA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query
    Left = 264
    Top = 120
  end
end
