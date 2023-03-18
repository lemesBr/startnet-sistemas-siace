object frmResumo: TfrmResumo
  Left = 287
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Resumo Financeiro'
  ClientHeight = 452
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 8
    Top = 8
    Width = 202
    Height = 13
    Caption = 'Contas a receber hoje e anteriores :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 406
    Top = 8
    Width = 217
    Height = 13
    Caption = 'Contas a receber nos pr'#243'ximos 5 dias :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 205
    Width = 138
    Height = 13
    Caption = 'Conta a pagar vencidas :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 406
    Top = 205
    Width = 206
    Height = 13
    Caption = 'Contas a pagar nos pr'#243'ximos 5 dias :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 280
    Top = 191
    Width = 35
    Height = 13
    Caption = 'Total :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 680
    Top = 191
    Width = 35
    Height = 13
    Caption = 'Total :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 280
    Top = 413
    Width = 35
    Height = 13
    Caption = 'Total :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 680
    Top = 413
    Width = 35
    Height = 13
    Caption = 'Total :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TCTRVenc: TLabel
    Left = 317
    Top = 191
    Width = 31
    Height = 13
    Caption = 'Total :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TCTR: TLabel
    Left = 717
    Top = 191
    Width = 31
    Height = 13
    Caption = 'Total :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TCTP: TLabel
    Left = 717
    Top = 413
    Width = 31
    Height = 13
    Caption = 'Total :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TCTPVenc: TLabel
    Left = 317
    Top = 413
    Width = 31
    Height = 13
    Caption = 'Total :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 431
    Width = 54
    Height = 13
    Caption = 'Subtotal :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Sub1: TLabel
    Left = 68
    Top = 431
    Width = 31
    Height = 13
    Caption = 'Total :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 406
    Top = 431
    Width = 54
    Height = 13
    Caption = 'Subtotal :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Sub2: TLabel
    Left = 466
    Top = 431
    Width = 31
    Height = 13
    Caption = 'Total :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 27
    Width = 385
    Height = 158
    DataSource = SCTRVenc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopCTRvenc
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO_CLIENTE'
        Title.Caption = 'Cod. Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_RS'
        Title.Caption = '  Cliente'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGAR'
        Title.Caption = '  Valor a receber  '
        Width = 96
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 406
    Top = 27
    Width = 379
    Height = 158
    DataSource = SCTR
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO_CLIENTE'
        Title.Caption = ' C'#243'd. Cliente '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_RS'
        Title.Caption = 'Cliente'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGAR'
        Title.Caption = ' Valor a Receber '
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 16
    Top = 224
    Width = 385
    Height = 183
    DataSource = SCTPVenc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCONTA'
        Title.Caption = ' C'#243'digo '
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFORNECEDOR'
        Title.Caption = ' C'#243'd. Fornec.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = ' Fornecedor '
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Title.Caption = ' Data Emiss'#227'o '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Caption = ' Data de vencimento '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = ' Valor a pagar'
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 406
    Top = 224
    Width = 379
    Height = 183
    DataSource = SCTP
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCONTA'
        Title.Caption = ' C'#243'digo '
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFORNECEDOR'
        Title.Caption = ' C'#243'd. Fornec. '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = ' Fornecedor '
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Title.Caption = ' Data de emiss'#227'o '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Caption = ' Data de vecto '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = ' Valor a pagar '
        Width = 89
        Visible = True
      end>
  end
  object CTRVenc: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select CTR.*, CLI.nome_rs from CREDIARIO CTR INNER JOIN CLIENTES' +
        ' CLI ON (CTR.CODIGO_CLIENTE = CLI.CODIGO)')
    Left = 232
    Top = 56
    object CTRVencVALOR_PAGAR: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'VALOR_PAGAR'
      Origin = 'CREDIARIO.VALOR_PAGAR'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object CTRVencNOME_RS: TIBStringField
      FieldName = 'NOME_RS'
      Origin = 'CLIENTES.NOME_RS'
      Required = True
      Size = 70
    end
    object CTRVencCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = '"CREDIARIO"."CODIGO_CLIENTE"'
      Required = True
    end
  end
  object CTR: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select CTR.*, CLI.nome_rs from CREDIARIO CTR INNER JOIN CLIENTES' +
        ' CLI ON (CTR.CODIGO_CLIENTE = CLI.CODIGO)')
    Left = 616
    Top = 48
    object CTRCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CREDIARIO.CODIGO_CLIENTE'
      Required = True
    end
    object CTRVALOR_PAGAR: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'VALOR_PAGAR'
      Origin = 'CREDIARIO.VALOR_PAGAR'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object CTRNOME_RS: TIBStringField
      FieldName = 'NOME_RS'
      Origin = 'CLIENTES.NOME_RS'
      Required = True
      Size = 70
    end
  end
  object CTPVenc: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.*, f.nome from contas_apagar c, fornecedores f where c.' +
        'codfornecedor = f.codigo')
    Left = 200
    Top = 320
    object CTPVencCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CONTAS_APAGAR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CTPVencDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = '"CONTAS_APAGAR"."DATA_EMISSAO"'
    end
    object CTPVencDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CONTAS_APAGAR"."DATA_VENCIMENTO"'
    end
    object CTPVencDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CONTAS_APAGAR"."DATA_PAGAMENTO"'
    end
    object CTPVencCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
      Origin = '"CONTAS_APAGAR"."CODCONTA"'
    end
    object CTPVencCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = '"CONTAS_APAGAR"."CODFORNECEDOR"'
    end
    object CTPVencVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CONTAS_APAGAR"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object CTPVencVALORPAGO: TIBBCDField
      FieldName = 'VALORPAGO'
      Origin = '"CONTAS_APAGAR"."VALORPAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object CTPVencLIQUIDO: TIBBCDField
      FieldName = 'LIQUIDO'
      Origin = '"CONTAS_APAGAR"."LIQUIDO"'
      Precision = 18
      Size = 2
    end
    object CTPVencDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CONTAS_APAGAR"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object CTPVencACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = '"CONTAS_APAGAR"."ACRESCIMO"'
      Precision = 18
      Size = 2
    end
    object CTPVencDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CONTAS_APAGAR"."DOCUMENTO"'
    end
    object CTPVencNOTAFISCAL: TIBStringField
      FieldName = 'NOTAFISCAL'
      Origin = '"CONTAS_APAGAR"."NOTAFISCAL"'
    end
    object CTPVencHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CONTAS_APAGAR"."HISTORICO"'
      Size = 60
    end
    object CTPVencC: TIBStringField
      FieldName = 'C'
      Origin = '"CONTAS_APAGAR"."C"'
      Size = 1
    end
    object CTPVencE: TIBStringField
      FieldName = 'E'
      Origin = '"CONTAS_APAGAR"."E"'
      Size = 1
    end
    object CTPVencFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Origin = '"CONTAS_APAGAR"."FILTRO"'
    end
    object CTPVencESPECIE: TIBStringField
      FieldName = 'ESPECIE'
      Origin = '"CONTAS_APAGAR"."ESPECIE"'
    end
    object CTPVencSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = '"CONTAS_APAGAR"."SITUACAO"'
    end
    object CTPVencCODNOTA: TIntegerField
      FieldName = 'CODNOTA'
      Origin = '"CONTAS_APAGAR"."CODNOTA"'
    end
    object CTPVencMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Origin = '"CONTAS_APAGAR"."MOVIMENTO"'
    end
    object CTPVencCODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      Origin = '"CONTAS_APAGAR"."CODCAIXA"'
    end
    object CTPVencNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FORNECEDORES"."NOME"'
      Required = True
      Size = 70
    end
  end
  object CTP: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.*, f.nome from contas_apagar c, fornecedores f where c.' +
        'codfornecedor = f.codigo')
    Left = 600
    Top = 320
    object CTPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CONTAS_APAGAR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CTPDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = '"CONTAS_APAGAR"."DATA_EMISSAO"'
    end
    object CTPDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CONTAS_APAGAR"."DATA_VENCIMENTO"'
    end
    object CTPDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CONTAS_APAGAR"."DATA_PAGAMENTO"'
    end
    object CTPCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
      Origin = '"CONTAS_APAGAR"."CODCONTA"'
    end
    object CTPCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = '"CONTAS_APAGAR"."CODFORNECEDOR"'
    end
    object CTPVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CONTAS_APAGAR"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object CTPVALORPAGO: TIBBCDField
      FieldName = 'VALORPAGO'
      Origin = '"CONTAS_APAGAR"."VALORPAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object CTPLIQUIDO: TIBBCDField
      FieldName = 'LIQUIDO'
      Origin = '"CONTAS_APAGAR"."LIQUIDO"'
      Precision = 18
      Size = 2
    end
    object CTPDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CONTAS_APAGAR"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object CTPACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = '"CONTAS_APAGAR"."ACRESCIMO"'
      Precision = 18
      Size = 2
    end
    object CTPDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CONTAS_APAGAR"."DOCUMENTO"'
    end
    object CTPNOTAFISCAL: TIBStringField
      FieldName = 'NOTAFISCAL'
      Origin = '"CONTAS_APAGAR"."NOTAFISCAL"'
    end
    object CTPHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CONTAS_APAGAR"."HISTORICO"'
      Size = 60
    end
    object CTPC: TIBStringField
      FieldName = 'C'
      Origin = '"CONTAS_APAGAR"."C"'
      Size = 1
    end
    object CTPE: TIBStringField
      FieldName = 'E'
      Origin = '"CONTAS_APAGAR"."E"'
      Size = 1
    end
    object CTPFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Origin = '"CONTAS_APAGAR"."FILTRO"'
    end
    object CTPESPECIE: TIBStringField
      FieldName = 'ESPECIE'
      Origin = '"CONTAS_APAGAR"."ESPECIE"'
    end
    object CTPSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = '"CONTAS_APAGAR"."SITUACAO"'
    end
    object CTPCODNOTA: TIntegerField
      FieldName = 'CODNOTA'
      Origin = '"CONTAS_APAGAR"."CODNOTA"'
    end
    object CTPMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Origin = '"CONTAS_APAGAR"."MOVIMENTO"'
    end
    object CTPCODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      Origin = '"CONTAS_APAGAR"."CODCAIXA"'
    end
    object CTPNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FORNECEDORES"."NOME"'
      Required = True
      Size = 70
    end
  end
  object SCTRVenc: TDataSource
    DataSet = CTRVenc
    Left = 272
    Top = 56
  end
  object SCTR: TDataSource
    DataSet = CTR
    Left = 576
    Top = 48
  end
  object SCTPVenc: TDataSource
    DataSet = CTPVenc
    Left = 232
    Top = 320
  end
  object SCTP: TDataSource
    DataSet = CTP
    Left = 568
    Top = 320
  end
  object Totais: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 384
    Top = 224
  end
  object PopCTRvenc: TPopupMenu
    Left = 320
    Top = 56
    object Abrircadastrodocliente1: TMenuItem
      Caption = 'Abrir Cadastro do Cliente'
      OnClick = Abrircadastrodocliente1Click
    end
    object Abrircontasareceber1: TMenuItem
      Caption = 'Abrir Contas a Receber'
      OnClick = Abrircontasareceber1Click
    end
  end
  object QConsCliente: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT C.*, O.NOME_CON'
      'FROM CLIENTES C'
      'LEFT JOIN CONVENIO O'
      'ON (C.CODIGO = O.COD_CON)')
    Left = 192
    Top = 56
    object QConsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CLIENTES.CODIGO'
      Required = True
    end
    object QConsClienteNOME_RS: TIBStringField
      FieldName = 'NOME_RS'
      Origin = 'CLIENTES.NOME_RS'
      Required = True
      Size = 70
    end
    object QConsClienteENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CLIENTES.ENDERECO'
      Size = 44
    end
    object QConsClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CLIENTES.CIDADE'
      Size = 40
    end
    object QConsClienteUF: TIBStringField
      FieldName = 'UF'
      Origin = 'CLIENTES.UF'
      Size = 2
    end
    object QConsClienteCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CLIENTES.CEP'
      FixedChar = True
      Size = 10
    end
    object QConsClienteTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'CLIENTES.TELEFONE'
      Size = 15
    end
    object QConsClienteTELEFONE2: TIBStringField
      FieldName = 'TELEFONE2'
      Origin = 'CLIENTES.TELEFONE2'
      Size = 15
    end
    object QConsClienteEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'CLIENTES.EMAIL'
      Size = 50
    end
    object QConsClienteNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
      Origin = 'CLIENTES.NASCIMENTO_IA'
    end
    object QConsClienteSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'CLIENTES.SEXO'
      Size = 15
    end
    object QConsClienteFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Origin = 'CLIENTES.FOTO_LOGOMARCA'
      Size = 8
    end
    object QConsClienteBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CLIENTES.BAIRRO'
      Size = 30
    end
    object QConsClienteRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = 'CLIENTES.RG_IE'
      FixedChar = True
      Size = 15
    end
    object QConsClienteFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'CLIENTES.FAX'
      Size = 15
    end
    object QConsClienteCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = 'CLIENTES.CELULAR'
      Size = 15
    end
    object QConsClienteUSERCAD: TIBStringField
      FieldName = 'USERCAD'
      Origin = 'CLIENTES.USERCAD'
    end
    object QConsClienteDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'CLIENTES.DATACAD'
    end
    object QConsClienteCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CLIENTES.CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object QConsClienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'CLIENTES.OBSERVACOES'
      Size = 8
    end
    object QConsClienteCREDIARIO: TIBStringField
      FieldName = 'CREDIARIO'
      Origin = 'CLIENTES.CREDIARIO'
      Size = 3
    end
    object QConsClienteESTADOCIVIL: TIBStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'CLIENTES.ESTADOCIVIL'
      Size = 10
    end
    object QConsClienteRESIDENCIA_SEDE: TIBStringField
      FieldName = 'RESIDENCIA_SEDE'
      Origin = 'CLIENTES.RESIDENCIA_SEDE'
      Size = 10
    end
    object QConsClientePAI: TIBStringField
      FieldName = 'PAI'
      Origin = 'CLIENTES.PAI'
      Size = 70
    end
    object QConsClienteMAE: TIBStringField
      FieldName = 'MAE'
      Origin = 'CLIENTES.MAE'
      Size = 70
    end
    object QConsClienteNOME_CONJUGE: TIBStringField
      FieldName = 'NOME_CONJUGE'
      Origin = 'CLIENTES.NOME_CONJUGE'
      Size = 70
    end
    object QConsClienteCPF_CONJUGE: TIBStringField
      FieldName = 'CPF_CONJUGE'
      Origin = 'CLIENTES.CPF_CONJUGE'
      FixedChar = True
      Size = 18
    end
    object QConsClienteNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
      Origin = 'CLIENTES.NASCIMENTO_CONJUGE'
    end
    object QConsClienteTRABALHO_CONJUGE: TIBStringField
      FieldName = 'TRABALHO_CONJUGE'
      Origin = 'CLIENTES.TRABALHO_CONJUGE'
      Size = 70
    end
    object QConsClientePROFISSAO_CONJUGE: TIBStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Origin = 'CLIENTES.PROFISSAO_CONJUGE'
      Size = 70
    end
    object QConsClienteLOCALTRABALHO: TIBStringField
      FieldName = 'LOCALTRABALHO'
      Origin = 'CLIENTES.LOCALTRABALHO'
      Size = 70
    end
    object QConsClientePROFISSAO_RA: TIBStringField
      FieldName = 'PROFISSAO_RA'
      Origin = 'CLIENTES.PROFISSAO_RA'
      Size = 70
    end
    object QConsClienteTELEFONE_TRABALHO: TIBStringField
      FieldName = 'TELEFONE_TRABALHO'
      Origin = 'CLIENTES.TELEFONE_TRABALHO'
      Size = 15
    end
    object QConsClienteFAX_TRABALHO: TIBStringField
      FieldName = 'FAX_TRABALHO'
      Origin = 'CLIENTES.FAX_TRABALHO'
      Size = 15
    end
    object QConsClienteOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Origin = 'CLIENTES.OBSERVACOES_TRABALHO'
      Size = 8
    end
    object QConsClienteBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = 'CLIENTES.BANCO'
      Size = 70
    end
    object QConsClienteNOME_AGENCIA: TIBStringField
      FieldName = 'NOME_AGENCIA'
      Origin = 'CLIENTES.NOME_AGENCIA'
      Size = 70
    end
    object QConsClienteNUMERO_AGENCIA: TIBStringField
      FieldName = 'NUMERO_AGENCIA'
      Origin = 'CLIENTES.NUMERO_AGENCIA'
      Size = 10
    end
    object QConsClienteCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
      Origin = 'CLIENTES.CONTA_CORRENTE'
    end
    object QConsClienteNOME1_REFERENCIA: TIBStringField
      FieldName = 'NOME1_REFERENCIA'
      Origin = 'CLIENTES.NOME1_REFERENCIA'
      Size = 70
    end
    object QConsClienteNOME2_REFERENCIA: TIBStringField
      FieldName = 'NOME2_REFERENCIA'
      Origin = 'CLIENTES.NOME2_REFERENCIA'
      Size = 70
    end
    object QConsClienteTELEFONE1_REFERENCIA: TIBStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Origin = 'CLIENTES.TELEFONE1_REFERENCIA'
      Size = 15
    end
    object QConsClienteTELEFONE2_REFERENCIA: TIBStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Origin = 'CLIENTES.TELEFONE2_REFERENCIA'
      Size = 15
    end
    object QConsClienteBANCO_REFERENCIA: TIBStringField
      FieldName = 'BANCO_REFERENCIA'
      Origin = 'CLIENTES.BANCO_REFERENCIA'
      Size = 70
    end
    object QConsClienteAPELIDO: TIBStringField
      FieldName = 'APELIDO'
      Origin = 'CLIENTES.APELIDO'
      Size = 30
    end
    object QConsClienteTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'CLIENTES.TIPO'
      FixedChar = True
      Size = 1
    end
    object QConsClienteOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Origin = 'CLIENTES.OBSERVACOES_COMERCIAIS'
      Size = 8
    end
    object QConsClienteOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Origin = 'CLIENTES.OBSERVACOES_BANCO'
      Size = 8
    end
    object QConsClientePG_CREDIARIO: TIBStringField
      FieldName = 'PG_CREDIARIO'
      Origin = 'CLIENTES.PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object QConsClientePG_CHEQUE: TIBStringField
      FieldName = 'PG_CHEQUE'
      Origin = 'CLIENTES.PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object QConsClientePG_FINANCEIRA: TIBStringField
      FieldName = 'PG_FINANCEIRA'
      Origin = 'CLIENTES.PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object QConsClienteREMUNERACAO: TIBBCDField
      FieldName = 'REMUNERACAO'
      Origin = 'CLIENTES.REMUNERACAO'
      Precision = 18
      Size = 2
    end
    object QConsClienteNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'CLIENTES.NUMERO'
      Size = 6
    end
    object QConsClienteCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'CLIENTES.COMPLEMENTO'
      Size = 30
    end
    object QConsClienteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'CLIENTES.COD_EMPRESA'
    end
    object QConsClienteORGAO_EMISSOR: TIBStringField
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'CLIENTES.ORGAO_EMISSOR'
      Size = 10
    end
    object QConsClienteDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
      Origin = 'CLIENTES.DATA_EMISSAO_RG'
    end
    object QConsClienteNATURALIDADE: TIBStringField
      FieldName = 'NATURALIDADE'
      Origin = 'CLIENTES.NATURALIDADE'
      Size = 40
    end
    object QConsClienteNATURALIDADE_UF: TIBStringField
      FieldName = 'NATURALIDADE_UF'
      Origin = 'CLIENTES.NATURALIDADE_UF'
      Size = 2
    end
    object QConsClienteCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'CLIENTES.COD_CIDADE'
    end
    object QConsClienteCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = 'CLIENTES.COD_BAIRRO'
    end
    object QConsClienteDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'CLIENTES.DATA_ALTERACAO'
    end
    object QConsClienteCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
      Origin = 'CLIENTES.COD_ZONA'
    end
    object QConsClientePONTO_REFERENCIA: TIBStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = 'CLIENTES.PONTO_REFERENCIA'
      Size = 200
    end
    object QConsClienteATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'CLIENTES.ATIVO'
      Size = 1
    end
    object QConsClienteCONTATO1: TIBStringField
      FieldName = 'CONTATO1'
      Origin = 'CLIENTES.CONTATO1'
      Size = 60
    end
    object QConsClienteCONTATO2: TIBStringField
      FieldName = 'CONTATO2'
      Origin = 'CLIENTES.CONTATO2'
      Size = 60
    end
    object QConsClienteCX_POSTAL: TIBStringField
      FieldName = 'CX_POSTAL'
      Origin = 'CLIENTES.CX_POSTAL'
      Size = 10
    end
    object QConsClienteVALOR_ALUGUEL: TIBBCDField
      FieldName = 'VALOR_ALUGUEL'
      Origin = 'CLIENTES.VALOR_ALUGUEL'
      Precision = 18
      Size = 2
    end
    object QConsClienteTEMPO_RESIDENCIA: TIBStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Origin = 'CLIENTES.TEMPO_RESIDENCIA'
      Size = 10
    end
    object QConsClienteNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
      Origin = 'CLIENTES.NUMERO_DEPENDENTES'
    end
    object QConsClienteENDERECO_REFERENCIA1: TIBStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Origin = 'CLIENTES.ENDERECO_REFERENCIA1'
      Size = 44
    end
    object QConsClienteENDERECO_REFERENCIA2: TIBStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Origin = 'CLIENTES.ENDERECO_REFERENCIA2'
      Size = 44
    end
    object QConsClienteDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
      Origin = 'CLIENTES.DATA_ADMISSAO_REFERENCIA1'
    end
    object QConsClienteDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
      Origin = 'CLIENTES.DATA_ADMISSAO_REFERENCIA2'
    end
    object QConsClienteRG_CONJUGUE: TIBStringField
      FieldName = 'RG_CONJUGUE'
      Origin = 'CLIENTES.RG_CONJUGUE'
      Size = 15
    end
    object QConsClienteRENDA_CONJUGUE: TIBBCDField
      FieldName = 'RENDA_CONJUGUE'
      Origin = 'CLIENTES.RENDA_CONJUGUE'
      Precision = 18
      Size = 2
    end
    object QConsClienteDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
      Origin = 'CLIENTES.DATA_ADMINSSAO_CONJUGUE'
    end
    object QConsClienteFONE_CONJUGUE: TIBStringField
      FieldName = 'FONE_CONJUGUE'
      Origin = 'CLIENTES.FONE_CONJUGUE'
      Size = 15
    end
    object QConsClienteENDERECO_COBRANCA: TIBStringField
      FieldName = 'ENDERECO_COBRANCA'
      Origin = 'CLIENTES.ENDERECO_COBRANCA'
      Size = 44
    end
    object QConsClienteCEP_COBRANCA: TIBStringField
      FieldName = 'CEP_COBRANCA'
      Origin = 'CLIENTES.CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object QConsClienteCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
      Origin = 'CLIENTES.COD_CIDADE_COBRANCA'
    end
    object QConsClienteCX_POSTAL_COBRANCA: TIBStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      Origin = 'CLIENTES.CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object QConsClienteLIMITE_DE_CREDITO: TIBBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Origin = 'CLIENTES.LIMITE_DE_CREDITO'
      Precision = 18
      Size = 2
    end
    object QConsClienteINSC_MUNICIPAL: TIBStringField
      FieldName = 'INSC_MUNICIPAL'
      Origin = 'CLIENTES.INSC_MUNICIPAL'
      Size = 15
    end
    object QConsClientePRODUTOR_RURAL: TIBStringField
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'CLIENTES.PRODUTOR_RURAL'
      Size = 1
    end
    object QConsClienteINSC_PRODUTOR_RURAL: TIBStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Origin = 'CLIENTES.INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object QConsClienteCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
      Origin = 'CLIENTES.COD_BAIRRO_COBRANCA'
    end
    object QConsClienteCIDADE_COBRANCA: TIBStringField
      FieldName = 'CIDADE_COBRANCA'
      Origin = 'CLIENTES.CIDADE_COBRANCA'
      Size = 40
    end
    object QConsClienteBAIRRO_COBRANCA: TIBStringField
      FieldName = 'BAIRRO_COBRANCA'
      Origin = 'CLIENTES.BAIRRO_COBRANCA'
      Size = 30
    end
    object QConsClienteUF_COBRANCA: TIBStringField
      FieldName = 'UF_COBRANCA'
      Origin = 'CLIENTES.UF_COBRANCA'
      Size = 2
    end
    object QConsClienteCONTA_BANCARIA: TIBStringField
      FieldName = 'CONTA_BANCARIA'
      Origin = 'CLIENTES.CONTA_BANCARIA'
    end
    object QConsClienteNOME_PROPRIEDADE: TIBStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = 'CLIENTES.NOME_PROPRIEDADE'
      Size = 70
    end
    object QConsClienteNOME_VETERINARIO: TIBStringField
      FieldName = 'NOME_VETERINARIO'
      Origin = 'CLIENTES.NOME_VETERINARIO'
      Size = 70
    end
    object QConsClienteSOCIO1: TIBStringField
      FieldName = 'SOCIO1'
      Origin = 'CLIENTES.SOCIO1'
      Size = 40
    end
    object QConsClienteCPFSOCIO1: TIBStringField
      FieldName = 'CPFSOCIO1'
      Origin = 'CLIENTES.CPFSOCIO1'
      Size = 11
    end
    object QConsClienteDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
      Origin = 'CLIENTES.DATANASCSOCIO1'
    end
    object QConsClienteSOCIO2: TIBStringField
      FieldName = 'SOCIO2'
      Origin = 'CLIENTES.SOCIO2'
      Size = 40
    end
    object QConsClienteCPFSOCIO2: TIBStringField
      FieldName = 'CPFSOCIO2'
      Origin = 'CLIENTES.CPFSOCIO2'
      Size = 11
    end
    object QConsClienteDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
      Origin = 'CLIENTES.DATANASCSOCIO2'
    end
    object QConsClienteSOCIO3: TIBStringField
      FieldName = 'SOCIO3'
      Origin = 'CLIENTES.SOCIO3'
      Size = 40
    end
    object QConsClienteCPFSOCIO3: TIBStringField
      FieldName = 'CPFSOCIO3'
      Origin = 'CLIENTES.CPFSOCIO3'
      Size = 11
    end
    object QConsClienteDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
      Origin = 'CLIENTES.DATANASCSOCIO3'
    end
    object QConsClienteSOCIO4: TIBStringField
      FieldName = 'SOCIO4'
      Origin = 'CLIENTES.SOCIO4'
      Size = 40
    end
    object QConsClienteCPFSOCIO4: TIBStringField
      FieldName = 'CPFSOCIO4'
      Origin = 'CLIENTES.CPFSOCIO4'
      Size = 11
    end
    object QConsClienteDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
      Origin = 'CLIENTES.DATANASCSOCIO4'
    end
    object QConsClienteDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
      Origin = 'CLIENTES.DATAFUNDACAO'
    end
    object QConsClienteCAPITALSOCIAL: TIBBCDField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'CLIENTES.CAPITALSOCIAL'
      Precision = 18
      Size = 2
    end
    object QConsClienteFATURAMENTOBRUTO: TIBBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Origin = 'CLIENTES.FATURAMENTOBRUTO'
      Precision = 18
      Size = 2
    end
    object QConsClienteREGJUNTACOM: TIBStringField
      FieldName = 'REGJUNTACOM'
      Origin = 'CLIENTES.REGJUNTACOM'
      Size = 12
    end
    object QConsClienteENDSOCIO1: TIBStringField
      FieldName = 'ENDSOCIO1'
      Origin = 'CLIENTES.ENDSOCIO1'
      Size = 40
    end
    object QConsClienteRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
      Origin = 'CLIENTES.RGSOCIO1'
    end
    object QConsClienteENDSOCIO2: TIBStringField
      FieldName = 'ENDSOCIO2'
      Origin = 'CLIENTES.ENDSOCIO2'
      Size = 40
    end
    object QConsClienteRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
      Origin = 'CLIENTES.RGSOCIO2'
    end
    object QConsClienteENDSOCIO3: TIBStringField
      FieldName = 'ENDSOCIO3'
      Origin = 'CLIENTES.ENDSOCIO3'
      Size = 40
    end
    object QConsClienteRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
      Origin = 'CLIENTES.RGSOCIO3'
    end
    object QConsClienteENDSOCIO4: TIBStringField
      FieldName = 'ENDSOCIO4'
      Origin = 'CLIENTES.ENDSOCIO4'
      Size = 40
    end
    object QConsClienteRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
      Origin = 'CLIENTES.RGSOCIO4'
    end
    object QConsClienteAUTORIZADO1: TIBStringField
      FieldName = 'AUTORIZADO1'
      Origin = 'CLIENTES.AUTORIZADO1'
      Size = 70
    end
    object QConsClienteAUTORIZADO2: TIBStringField
      FieldName = 'AUTORIZADO2'
      Origin = 'CLIENTES.AUTORIZADO2'
      Size = 70
    end
    object QConsClienteAUTORIZADO3: TIBStringField
      FieldName = 'AUTORIZADO3'
      Origin = 'CLIENTES.AUTORIZADO3'
      Size = 70
    end
    object QConsClienteCPF_AUT1: TIBStringField
      FieldName = 'CPF_AUT1'
      Origin = 'CLIENTES.CPF_AUT1'
      FixedChar = True
      Size = 18
    end
    object QConsClienteCPF_AUT2: TIBStringField
      FieldName = 'CPF_AUT2'
      Origin = 'CLIENTES.CPF_AUT2'
      FixedChar = True
      Size = 18
    end
    object QConsClienteCPF_AUT3: TIBStringField
      FieldName = 'CPF_AUT3'
      Origin = 'CLIENTES.CPF_AUT3'
      FixedChar = True
      Size = 18
    end
    object QConsClienteFUNCIONARIO: TIBStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'CLIENTES.FUNCIONARIO'
      Size = 1
    end
    object QConsClienteCTPS: TIBStringField
      FieldName = 'CTPS'
      Origin = 'CLIENTES.CTPS'
      Size = 15
    end
    object QConsClienteTESTA_CREDITO: TIBStringField
      FieldName = 'TESTA_CREDITO'
      Origin = 'CLIENTES.TESTA_CREDITO'
      Size = 1
    end
    object QConsClienteTESTA_LIMITE: TIBStringField
      FieldName = 'TESTA_LIMITE'
      Origin = 'CLIENTES.TESTA_LIMITE'
      Size = 1
    end
    object QConsClienteNOME_CON: TIBStringField
      FieldName = 'NOME_CON'
      Origin = 'CONVENIO.NOME_CON'
      Size = 70
    end
  end
  object PopCTR: TPopupMenu
    Left = 536
    Top = 48
    object MenuItem1: TMenuItem
      Caption = 'Abrir Cadastro do Cliente'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Abrir Contas a Receber'
      OnClick = MenuItem2Click
    end
  end
end
