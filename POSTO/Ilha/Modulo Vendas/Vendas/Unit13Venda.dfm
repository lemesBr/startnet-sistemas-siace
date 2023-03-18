object VendaFrm: TVendaFrm
  Left = 348
  Top = 66
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Siace Sistemas :: Frente de Caixa'
  ClientHeight = 570
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poOwnerFormCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Button1: TButton
    Left = 416
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 549
    Width = 792
    Height = 21
    Panels = <
      item
        Width = 550
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 104
    Width = 785
    Height = 81
    BevelInner = bvLowered
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 82
      Height = 20
      Caption = 'Refer'#234'ncia:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label1Click
      OnMouseEnter = Label15MouseEnter
      OnMouseLeave = Label15MouseLeave
    end
    object Label4: TLabel
      Left = 168
      Top = 8
      Width = 34
      Height = 20
      Caption = 'Qtd.:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 16
      Top = 32
      Width = 137
      Height = 32
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
    end
    object Panel4: TPanel
      Left = 240
      Top = 8
      Width = 537
      Height = 65
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 0
        Width = 60
        Height = 20
        Caption = 'Produto:'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 312
        Top = 0
        Width = 41
        Height = 20
        Caption = 'Valor:'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 432
        Top = 0
        Width = 73
        Height = 20
        Caption = 'Sub-Total:'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 24
        Width = 281
        Height = 32
        TabStop = False
        DataSource = DtsQryProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 312
        Top = 24
        Width = 105
        Height = 32
        TabStop = False
        DataSource = DtsQryProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 432
        Top = 24
        Width = 105
        Height = 32
        TabStop = False
        AutoSize = False
        DisplayFormat = ','
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 168
      Top = 32
      Width = 73
      Height = 33
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = ','
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = CurrencyEdit5Change
      OnEnter = CurrencyEdit5Enter
      OnExit = CurrencyEdit5Exit
      OnKeyDown = CurrencyEdit5KeyDown
      OnKeyPress = CurrencyEdit5KeyPress
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 456
    Width = 785
    Height = 81
    BevelInner = bvLowered
    TabOrder = 2
    object Label9: TLabel
      Left = 344
      Top = 9
      Width = 81
      Height = 20
      Caption = 'Valor pago:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 344
      Top = 31
      Width = 105
      Height = 32
      AutoSize = False
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnChange = CurrencyEdit3Change
      OnEnter = CurrencyEdit3Enter
      OnExit = CurrencyEdit3Exit
      OnKeyDown = CurrencyEdit3KeyDown
      OnKeyPress = CurrencyEdit3KeyPress
    end
    object Panel5: TPanel
      Left = 456
      Top = 8
      Width = 321
      Height = 57
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object Label10: TLabel
        Left = 8
        Top = 0
        Width = 44
        Height = 20
        Caption = 'Troco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label6: TLabel
        Left = 184
        Top = 0
        Width = 39
        Height = 20
        Caption = 'Total:'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 8
        Top = 24
        Width = 105
        Height = 32
        TabStop = False
        AutoSize = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Visible = False
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 184
        Top = 24
        Width = 129
        Height = 32
        TabStop = False
        AutoSize = False
        DisplayFormat = '0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        ZeroEmpty = False
      end
    end
    object Panel7: TPanel
      Left = 8
      Top = 8
      Width = 161
      Height = 63
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object Label11: TLabel
        Left = 8
        Top = 0
        Width = 142
        Height = 20
        Caption = 'Tipo de Pagamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBComboBox1: TDBComboBox
        Left = 8
        Top = 24
        Width = 153
        Height = 32
        Style = csDropDownList
        DataField = 'FormaPGT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 24
        Items.Strings = (
          ''
          '1 - Dinheiro'
          '2 - Cheque'
          '3 - Cart'#227'o'
          '4 - Outros')
        ParentFont = False
        TabOrder = 0
        OnEnter = DBComboBox1Enter
        OnExit = DBComboBox1Exit
        OnKeyDown = DBComboBox1KeyDown
      end
    end
    object Panel8: TPanel
      Left = 184
      Top = 8
      Width = 113
      Height = 63
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object Label8: TLabel
        Left = 0
        Top = 0
        Width = 73
        Height = 20
        Caption = 'Desconto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CurrencyEdit6: TCurrencyEdit
        Left = 0
        Top = 24
        Width = 105
        Height = 32
        AutoSize = False
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        TabOrder = 0
        OnChange = CurrencyEdit6Change
        OnEnter = CurrencyEdit6Enter
        OnExit = CurrencyEdit6Exit
        OnKeyDown = CurrencyEdit6KeyDown
        OnKeyPress = CurrencyEdit3KeyPress
      end
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 8
    Width = 785
    Height = 81
    BevelInner = bvLowered
    TabOrder = 0
    object Label12: TLabel
      Left = 104
      Top = 48
      Width = 521
      Height = 20
      Hint = 'Cliente'
      AutoSize = False
      Caption = 'Venda Avulso.'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 104
      Top = 16
      Width = 217
      Height = 20
      DataField = 'NOME'
      DataSource = DtsQryFrentista
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 344
      Top = 8
      Width = 423
      Height = 41
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Siace - Posto'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 16
      Width = 79
      Height = 20
      Caption = 'Atendente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 16
      Top = 48
      Width = 53
      Height = 20
      Caption = 'Cliente:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label15Click
      OnMouseEnter = Label15MouseEnter
      OnMouseLeave = Label15MouseLeave
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 104
      Top = 12
      Width = 217
      Height = 28
      Hint = 'Frentista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD_FRENTISTA'
      ListField = 'NOME'
      ListSource = DtsQryFrentista
      NullValueKey = 46
      ParentFont = False
      TabOrder = 0
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
      OnKeyDown = DBLookupComboBox1KeyDown
    end
  end
  object Panel6: TPanel
    Left = 8
    Top = 192
    Width = 793
    Height = 249
    BevelOuter = bvNone
    Caption = 'Panel6'
    Enabled = False
    TabOrder = 4
    object ListView1: TListView
      Left = 0
      Top = 0
      Width = 785
      Height = 241
      Columns = <
        item
          Caption = 'Refer'#234'ncia'
          Width = 151
        end
        item
          Alignment = taRightJustify
          Caption = 'Quantidade'
          Width = 87
        end
        item
          Caption = 'Produto'
          Width = 298
        end
        item
          Alignment = taRightJustify
          Caption = 'Valor'
          Width = 120
        end
        item
          Alignment = taRightJustify
          Caption = 'Sub-Total'
          Width = 120
        end
        item
          Caption = 'QuantPrm'
          Width = 0
        end
        item
          Caption = 'PrcPrm'
          Width = 0
        end
        item
          Caption = 'PrmEnabled'
          Width = 0
        end
        item
          Caption = 'NumSerie'
          Width = 0
        end
        item
          Caption = 'Cod_Produtos'
          Width = 0
        end
        item
          Caption = 'PRCCUSTONSERIE'
          Width = 0
        end
        item
          Caption = 'GARANTIAFABRICANTE'
          Width = 0
        end
        item
          Caption = 'GARANTIAAPOSVENDA'
          Width = 0
        end
        item
          Caption = 'DATACOMPRANSERIE'
          Width = 0
        end
        item
          Caption = 'CodNFEntrada'
          Width = 0
        end
        item
          Caption = 'Ref NumSerie'
          Width = 0
        end
        item
          Caption = 'Cod_Grupop'
          Width = 0
        end
        item
          Caption = 'Cod_SubGrupop'
          Width = 0
        end
        item
          Caption = 'Cod_ECF'
          Width = 0
        end
        item
          Caption = 'Cl_Fis'
          Width = 0
        end
        item
          Caption = 'S_Trib'
          Width = 0
        end
        item
          Caption = 'Aliquota_ICMS'
          Width = 0
        end
        item
          Caption = 'Aliquota_IPI'
          Width = 0
        end
        item
          Caption = 'Valor_ICMS'
          Width = 0
        end
        item
          Caption = 'Valor_IPI'
          Width = 0
        end
        item
          Caption = 'APR_UND'
          Width = 0
        end
        item
          Caption = 'COD_BICOENC_TEMP'
          Width = 20
        end>
      ColumnClick = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ReadOnly = True
      RowSelect = True
      ParentFont = False
      ShowColumnHeaders = False
      TabOrder = 0
      ViewStyle = vsReport
    end
    object Panel9: TPanel
      Left = 120
      Top = 64
      Width = 577
      Height = 121
      BevelInner = bvLowered
      BevelOuter = bvSpace
      BevelWidth = 4
      TabOrder = 1
      Visible = False
      object Label17: TLabel
        Left = 32
        Top = 48
        Width = 515
        Height = 52
        Caption = 'Imprimindo Cupom Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 31
        Top = 47
        Width = 515
        Height = 52
        Caption = 'Imprimindo Cupom Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -37
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 32
        Top = 16
        Width = 109
        Height = 29
        Caption = 'Aguarde...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 280
    Top = 352
    Width = 413
    Height = 57
    Caption = ' Promo'#231#227'o: '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Label13: TLabel
      Left = 16
      Top = 16
      Width = 385
      Height = 32
      Alignment = taRightJustify
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '2 x 60,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 192
    object CancelaltimoCupom1: TMenuItem
      Caption = 'C&ancela '#218'ltimo Cupom'
      OnClick = CancelaltimoCupom1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object LeituraX1: TMenuItem
      Caption = 'Leitura &X'
      OnClick = LeituraX1Click
    end
  end
  object QryFrentista: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select COD_FRENTISTA, NOME from FRENTISTA order by nome')
    Left = 576
    Top = 192
  end
  object QryProduto: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from Produtos'
      'order by descricao')
    Left = 608
    Top = 192
    object QryProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PRODUTOS.CODIGO'
      Required = True
    end
    object QryProdutoCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'PRODUTOS.CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object QryProdutoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PRODUTOS.DESCRICAO'
      Size = 70
    end
    object QryProdutoABREVIADO: TIBStringField
      FieldName = 'ABREVIADO'
      Origin = 'PRODUTOS.ABREVIADO'
      Size = 29
    end
    object QryProdutoPRECO_CUSTO: TIBBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRODUTOS.PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object QryProdutoMARGEM_LUCRO: TIBBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'PRODUTOS.MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object QryProdutoCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'PRODUTOS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object QryProdutoUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = 'PRODUTOS.UNIDADE'
    end
    object QryProdutoFRETE: TIBBCDField
      FieldName = 'FRETE'
      Origin = 'PRODUTOS.FRETE'
      Precision = 18
      Size = 2
    end
    object QryProdutoICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = 'PRODUTOS.ICMS'
      Precision = 18
      Size = 2
    end
    object QryProdutoIPI_IRPJ: TIBBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'PRODUTOS.IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object QryProdutoOUTROS_IMPOSTOS: TIBBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'PRODUTOS.OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object QryProdutoDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = 'PRODUTOS.DESCONTOS'
      Precision = 18
      Size = 2
    end
    object QryProdutoCLASS_FISCAL: TIBStringField
      FieldName = 'CLASS_FISCAL'
      Origin = 'PRODUTOS.CLASS_FISCAL'
      Size = 6
    end
    object QryProdutoSIT_TRIBUTARIA: TIBStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'PRODUTOS.SIT_TRIBUTARIA'
      Size = 5
    end
    object QryProdutoCUSTO_MEDIO: TIBBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = 'PRODUTOS.CUSTO_MEDIO'
      Precision = 18
      Size = 2
    end
    object QryProdutoPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRODUTOS.PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object QryProdutoDESCONTO_MAXIMO: TIBBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'PRODUTOS.DESCONTO_MAXIMO'
      Precision = 18
      Size = 2
    end
    object QryProdutoCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = 'PRODUTOS.CODIGO_GRUPO'
    end
    object QryProdutoCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = 'PRODUTOS.CODIGO_SUBGRUPO'
    end
    object QryProdutoCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = 'PRODUTOS.CODIGO_MARCA'
    end
    object QryProdutoNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = 'PRODUTOS.NOME_GRUPO'
      Size = 40
    end
    object QryProdutoNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = 'PRODUTOS.NOME_SUBGRUPO'
      Size = 40
    end
    object QryProdutoNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = 'PRODUTOS.NOME_MARCA'
      Size = 40
    end
    object QryProdutoNOME_FORNECEDOR: TIBStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = 'PRODUTOS.NOME_FORNECEDOR'
      Size = 40
    end
    object QryProdutoCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = 'PRODUTOS.CODIGO_FORNECEDORES'
    end
    object QryProdutoFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'PRODUTOS.FOTO'
      Size = 8
    end
    object QryProdutoESTOQUE_ATUAL: TIBBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'PRODUTOS.ESTOQUE_ATUAL'
      Precision = 18
      Size = 4
    end
    object QryProdutoESTOQUE_VENDIDO: TIBBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Origin = 'PRODUTOS.ESTOQUE_VENDIDO'
      Precision = 18
      Size = 2
    end
    object QryProdutoESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Origin = 'PRODUTOS.ESTOQUE'
      Precision = 18
      Size = 4
    end
    object QryProdutoVALOR_ESTOQUE_ATUAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Origin = 'PRODUTOS.VALOR_ESTOQUE_ATUAL'
      ReadOnly = True
    end
    object QryProdutoVALOR_ESTOQUE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'VALOR_ESTOQUE'
      Origin = 'PRODUTOS.VALOR_ESTOQUE'
      ReadOnly = True
    end
    object QryProdutoESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'PRODUTOS.ESTOQUE_MINIMO'
    end
    object QryProdutoESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = 'PRODUTOS.ESTOQUE_MAXIMO'
    end
    object QryProdutoDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'PRODUTOS.DATACAD'
    end
    object QryProdutoUSERCAD: TIBStringField
      FieldName = 'USERCAD'
      Origin = 'PRODUTOS.USERCAD'
    end
    object QryProdutoVALOR_EST_CUSTO_ATUAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Origin = 'PRODUTOS.VALOR_EST_CUSTO_ATUAL'
      ReadOnly = True
    end
    object QryProdutoULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'PRODUTOS.ULTIMACOMPRA'
    end
    object QryProdutoVALOR_EST_CUSTO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'VALOR_EST_CUSTO'
      Origin = 'PRODUTOS.VALOR_EST_CUSTO'
      ReadOnly = True
    end
    object QryProdutoSECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = 'PRODUTOS.SECCAO'
    end
    object QryProdutoCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'PRODUTOS.CATEGORIA'
    end
    object QryProdutoLOCALIZACAO: TIBStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'PRODUTOS.LOCALIZACAO'
      Size = 50
    end
    object QryProdutoAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Origin = 'PRODUTOS.APLICACAO'
      Size = 250
    end
    object QryProdutoESP_COD_AUX: TIBStringField
      FieldName = 'ESP_COD_AUX'
      Origin = 'PRODUTOS.ESP_COD_AUX'
      Size = 50
    end
    object QryProdutoGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      Origin = 'PRODUTOS.GARANTIA'
    end
    object QryProdutoBALANCA: TIBStringField
      FieldName = 'BALANCA'
      Origin = 'PRODUTOS.BALANCA'
      Size = 1
    end
    object QryProdutoETIQUETA: TIBStringField
      FieldName = 'ETIQUETA'
      Origin = 'PRODUTOS.ETIQUETA'
      Size = 1
    end
    object QryProdutoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'PRODUTOS.ATIVO'
      Size = 1
    end
    object QryProdutoREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = 'PRODUTOS.REFERENCIA'
      Size = 15
    end
    object QryProdutoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'PRODUTOS.COD_EMPRESA'
    end
    object QryProdutoDESC_UNIDADE: TIBStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'PRODUTOS.DESC_UNIDADE'
      Size = 6
    end
    object QryProdutoPESOBRUTO: TIBBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PRODUTOS.PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object QryProdutoPESOLIQUIDO: TIBBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PRODUTOS.PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object QryProdutoFONETICO: TIBStringField
      FieldName = 'FONETICO'
      Origin = 'PRODUTOS.FONETICO'
      Size = 60
    end
    object QryProdutoDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
      Origin = 'PRODUTOS.DATAULTALTERACAO'
    end
    object QryProdutoCUSTOREPOSICAO: TIBBCDField
      FieldName = 'CUSTOREPOSICAO'
      Origin = 'PRODUTOS.CUSTOREPOSICAO'
      Precision = 18
      Size = 2
    end
    object QryProdutoPRECO_ANT: TIBBCDField
      FieldName = 'PRECO_ANT'
      Origin = 'PRODUTOS.PRECO_ANT'
      Precision = 18
      Size = 2
    end
    object QryProdutoPRECO_PROMOCAO: TIBBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRODUTOS.PRECO_PROMOCAO'
      Precision = 18
      Size = 2
    end
    object QryProdutoFLAG_PROMOCAO: TIBStringField
      FieldName = 'FLAG_PROMOCAO'
      Origin = 'PRODUTOS.FLAG_PROMOCAO'
      Size = 1
    end
    object QryProdutoDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
      Origin = 'PRODUTOS.DT_INICIO_PROMO'
    end
    object QryProdutoDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
      Origin = 'PRODUTOS.DT_FIM_PROMO'
    end
    object QryProdutoCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
      Origin = 'PRODUTOS.COD_LABORATORIO'
    end
    object QryProdutoLABORATORIO: TIBStringField
      FieldName = 'LABORATORIO'
      Origin = 'PRODUTOS.LABORATORIO'
      Size = 70
    end
    object QryProdutoPRINCIPIO_ATIVO: TIBStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = 'PRODUTOS.PRINCIPIO_ATIVO'
      Size = 70
    end
    object QryProdutoMED_CONTROLADO: TIBStringField
      FieldName = 'MED_CONTROLADO'
      Origin = 'PRODUTOS.MED_CONTROLADO'
      Size = 1
    end
    object QryProdutoQTD_FRACIONADA: TIBBCDField
      FieldName = 'QTD_FRACIONADA'
      Origin = 'PRODUTOS.QTD_FRACIONADA'
      Precision = 18
      Size = 2
    end
    object QryProdutoQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'PRODUTOS.QTD_CAIXA'
    end
    object QryProdutoMED_GENERICO: TIBStringField
      FieldName = 'MED_GENERICO'
      Origin = 'PRODUTOS.MED_GENERICO'
      Size = 3
    end
    object QryProdutoLOTE_MED: TIBStringField
      FieldName = 'LOTE_MED'
      Origin = 'PRODUTOS.LOTE_MED'
      Size = 10
    end
    object QryProdutoVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'PRODUTOS.VALIDADE'
    end
    object QryProdutoCHEK_BOX: TIBStringField
      FieldName = 'CHEK_BOX'
      Origin = 'PRODUTOS.CHEK_BOX'
      Size = 1
    end
    object QryProdutoPRECO_VENDA2: TIBBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRODUTOS.PRECO_VENDA2'
      Precision = 18
      Size = 2
    end
    object QryProdutoMARGEM_LUCRO2: TIBBCDField
      FieldName = 'MARGEM_LUCRO2'
      Origin = 'PRODUTOS.MARGEM_LUCRO2'
      Precision = 18
      Size = 2
    end
    object QryProdutoVALIDADE_PRODUTO: TIBStringField
      FieldName = 'VALIDADE_PRODUTO'
      Origin = 'PRODUTOS.VALIDADE_PRODUTO'
      Size = 3
    end
    object QryProdutoPROD_SERV: TIBStringField
      FieldName = 'PROD_SERV'
      Origin = 'PRODUTOS.PROD_SERV'
      Size = 1
    end
    object QryProdutoUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
      Origin = 'PRODUTOS.UNIDADE_ENT'
    end
    object QryProdutoDESC_UNID_ENT: TIBStringField
      FieldName = 'DESC_UNID_ENT'
      Origin = 'PRODUTOS.DESC_UNID_ENT'
      Size = 6
    end
    object QryProdutoQUANT_SAIDA: TIBBCDField
      FieldName = 'QUANT_SAIDA'
      Origin = 'PRODUTOS.QUANT_SAIDA'
      Precision = 18
      Size = 4
    end
    object QryProdutoQUANT_ENTRADA: TIBBCDField
      FieldName = 'QUANT_ENTRADA'
      Origin = 'PRODUTOS.QUANT_ENTRADA'
      Precision = 18
      Size = 4
    end
    object QryProdutoESTOQUE_FRACAO: TIBBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = 'PRODUTOS.ESTOQUE_FRACAO'
      Precision = 18
      Size = 4
    end
    object QryProdutoDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = 'PRODUTOS.DATA_FABRICACAO'
    end
    object QryProdutoFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'PRODUTOS.FRACAO'
    end
    object QryProdutoNCM_SH: TIBStringField
      FieldName = 'NCM_SH'
      Origin = 'PRODUTOS.NCM_SH'
      Size = 8
    end
    object QryProdutoCOD_MS: TIBStringField
      FieldName = 'COD_MS'
      Origin = 'PRODUTOS.COD_MS'
      Size = 13
    end
    object QryProdutoCONTOLAESTOQUE: TIBStringField
      FieldName = 'CONTOLAESTOQUE'
      Origin = 'PRODUTOS.CONTOLAESTOQUE'
      Size = 5
    end
    object QryProdutoPRODUTOCOMPOSTO: TIBStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = 'PRODUTOS.PRODUTOCOMPOSTO'
      Size = 5
    end
    object QryProdutoTIPO_ATIVIDADE: TIBStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = 'PRODUTOS.TIPO_ATIVIDADE'
      Size = 2
    end
    object QryProdutoCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = 'PRODUTOS.COD_PRODUTO_ESTOQUE'
    end
    object QryProdutoCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = 'PRODUTOS.CODIGO_LOCAL_ESTOQUE'
    end
    object QryProdutoLISTA_ABC: TIBStringField
      FieldName = 'LISTA_ABC'
      Origin = 'PRODUTOS.LISTA_ABC'
      Size = 1
    end
    object QryProdutoGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = 'PRODUTOS.GRUPO_TRIBUTACAO'
    end
    object QryProdutoCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'PRODUTOS.COMBUSTIVEL'
      Size = 1
    end
    object QryProdutoCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'PRODUTOS.COR'
    end
    object QryProdutoENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'PRODUTOS.ENABLE_NUMSERIE'
      Required = True
    end
    object QryProdutoID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'PRODUTOS.ID_PRODUTOS'
    end
    object QryProdutoCOD_ANP: TIBStringField
      FieldName = 'COD_ANP'
      Origin = 'PRODUTOS.COD_ANP'
      Size = 9
    end
  end
  object DtsQryFrentista: TDataSource
    DataSet = QryFrentista
    Left = 576
    Top = 224
  end
  object DtsQryProduto: TDataSource
    DataSet = QryProduto
    Left = 608
    Top = 224
  end
  object DtsQryCadastro: TDataSource
    DataSet = QryCadastro
    Left = 640
    Top = 224
  end
  object QryCadastro: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from clientes order by nome_rs')
    Left = 640
    Top = 192
  end
  object SQLVendas: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 512
    Top = 192
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = Timer1Timer
    Left = 416
    Top = 192
  end
  object QryTribEcf: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODECF, NOME, VALORTRIB from TRIBECF')
    Left = 672
    Top = 192
  end
  object DtsQryTribEcf: TDataSource
    DataSet = QryTribEcf
    Left = 672
    Top = 224
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'CancelaltimoCupom1.Caption'
      'GroupBox1.Caption'
      'Label1.Caption'
      'Label10.Caption'
      'Label11.Caption'
      'Label12.Caption'
      'Label13.Caption'
      'Label16.Caption'
      'Label17.Caption'
      'Label18.Caption'
      'Label2.Caption'
      'Label3.Caption'
      'Label4.Caption'
      'Label5.Caption'
      'Label6.Caption'
      'Label8.Caption'
      'Label9.Caption'
      'LeituraX1.Caption')
    StoredValues = <>
    Left = 448
    Top = 192
  end
  object QryProdutoM: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRODUTOS_NSERIE')
    Left = 544
    Top = 192
  end
  object DstQryProdutoM: TDataSource
    DataSet = QryProdutoM
    Left = 544
    Top = 224
  end
  object QryCaixaVend: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * from CAIXAOPCL where (CODPDV = 1) and codcaixaopcl  in ' +
        '(Select max(codcaixaopcl) from CAIXAOPCL)')
    Left = 704
    Top = 192
    object QryCaixaVendSTATE: TIntegerField
      FieldName = 'STATE'
      Origin = 'CAIXAOPCL.STATE'
      Required = True
    end
    object QryCaixaVendCODCAIXAOPCL: TIntegerField
      FieldName = 'CODCAIXAOPCL'
      Origin = 'CAIXAOPCL.CODCAIXAOPCL'
      Required = True
    end
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Frente de CaixaCupom N'#227'o Fiscal'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'SP INFORM'#193'TICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0207/00393'
    RegistroUsuario.AutorizacaoKey = 'USUN-2976-LIRR-6059-AZAV'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Configura'#231#227'o de Impress'#227'o'
    TitulodoRelatorio = 'Boleto N'#227'o Fiscal de Venda '
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 384
    Top = 192
  end
  object QrySintegra_Info: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SINTEGRA_INFO')
    Left = 736
    Top = 192
  end
  object QryEnc_Temp: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BICOENC_TEMP')
    Left = 328
    Top = 200
    object QryEnc_TempCOD_BICOENC_TEMP: TIntegerField
      FieldName = 'COD_BICOENC_TEMP'
      Origin = 'BICOENC_TEMP.COD_BICOENC_TEMP'
      Required = True
    end
    object QryEnc_TempID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'BICOENC_TEMP.ID_BICO'
      Required = True
    end
    object QryEnc_TempID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'BICOENC_TEMP.ID_BOMBA'
      Required = True
    end
    object QryEnc_TempCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'BICOENC_TEMP.COD_FRENTISTA'
      Required = True
    end
    object QryEnc_TempID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'BICOENC_TEMP.ID_PRODUTOS'
      Required = True
    end
    object QryEnc_TempENC_LITROS: TIBBCDField
      FieldName = 'ENC_LITROS'
      Origin = 'BICOENC_TEMP.ENC_LITROS'
      Precision = 18
      Size = 3
    end
    object QryEnc_TempENC_DINHEIRO: TIBBCDField
      FieldName = 'ENC_DINHEIRO'
      Origin = 'BICOENC_TEMP.ENC_DINHEIRO'
      Precision = 18
      Size = 3
    end
    object QryEnc_TempPRODUTOS_DESC: TIBStringField
      FieldName = 'PRODUTOS_DESC'
      Origin = 'BICOENC_TEMP.PRODUTOS_DESC'
      Size = 30
    end
    object QryEnc_TempNIVEL_PRECO: TIntegerField
      FieldName = 'NIVEL_PRECO'
      Origin = 'BICOENC_TEMP.NIVEL_PRECO'
      Required = True
    end
    object QryEnc_TempDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = 'BICOENC_TEMP.DINHEIRO'
      Precision = 18
      Size = 3
    end
    object QryEnc_TempPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = 'BICOENC_TEMP.PRECO'
      Precision = 18
      Size = 3
    end
    object QryEnc_TempDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'BICOENC_TEMP.DATAHORA'
    end
    object QryEnc_TempLITROS: TIBBCDField
      FieldName = 'LITROS'
      Origin = 'BICOENC_TEMP.LITROS'
      Precision = 18
      Size = 3
    end
    object QryEnc_TempID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'BICOENC_TEMP.ID_TANQUE'
    end
  end
  object QryBicoEnc_Temp: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BICOENC_TEMP')
    Left = 16
    Top = 200
    object QryBicoEnc_TempCOD_BICOENC_TEMP: TIntegerField
      FieldName = 'COD_BICOENC_TEMP'
      Origin = 'BICOENC_TEMP.COD_BICOENC_TEMP'
      Required = True
    end
    object QryBicoEnc_TempID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'BICOENC_TEMP.ID_BICO'
      Required = True
    end
    object QryBicoEnc_TempID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'BICOENC_TEMP.ID_BOMBA'
      Required = True
    end
    object QryBicoEnc_TempCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'BICOENC_TEMP.COD_FRENTISTA'
      Required = True
    end
    object QryBicoEnc_TempID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'BICOENC_TEMP.ID_PRODUTOS'
      Required = True
    end
    object QryBicoEnc_TempENC_LITROS: TIBBCDField
      FieldName = 'ENC_LITROS'
      Origin = 'BICOENC_TEMP.ENC_LITROS'
      Precision = 18
      Size = 3
    end
    object QryBicoEnc_TempENC_DINHEIRO: TIBBCDField
      FieldName = 'ENC_DINHEIRO'
      Origin = 'BICOENC_TEMP.ENC_DINHEIRO'
      Precision = 18
      Size = 3
    end
    object QryBicoEnc_TempPRODUTOS_DESC: TIBStringField
      FieldName = 'PRODUTOS_DESC'
      Origin = 'BICOENC_TEMP.PRODUTOS_DESC'
      Size = 30
    end
    object QryBicoEnc_TempNIVEL_PRECO: TIntegerField
      FieldName = 'NIVEL_PRECO'
      Origin = 'BICOENC_TEMP.NIVEL_PRECO'
      Required = True
    end
    object QryBicoEnc_TempDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = 'BICOENC_TEMP.DINHEIRO'
      Precision = 18
      Size = 3
    end
    object QryBicoEnc_TempPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = 'BICOENC_TEMP.PRECO'
      Precision = 18
      Size = 3
    end
    object QryBicoEnc_TempDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'BICOENC_TEMP.DATAHORA'
    end
    object QryBicoEnc_TempLITROS: TIBBCDField
      FieldName = 'LITROS'
      Origin = 'BICOENC_TEMP.LITROS'
      Precision = 18
      Size = 3
    end
    object QryBicoEnc_TempID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'BICOENC_TEMP.ID_TANQUE'
    end
  end
  object DtsQryBicoEnc_Temp: TDataSource
    DataSet = QryBicoEnc_Temp
    Left = 16
    Top = 232
  end
end
