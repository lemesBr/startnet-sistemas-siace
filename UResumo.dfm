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
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Caption = ' Data de vecto '
        Width = 64
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
  object CTRVenc: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      
        'select CTR.*, CLI.nome_rs from CREDIARIO CTR INNER JOIN CLIENTES' +
        ' CLI ON (CTR.CODIGO_CLIENTE = CLI.CODIGO)')
    Left = 136
    Top = 56
    object CTRVencVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Origin = 'VALOR_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object CTRVencNOME_RS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object CTRVencCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      Required = True
    end
  end
  object CTR: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
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
    object CTRVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Origin = 'VALOR_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object CTRNOME_RS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
  end
  object CTPVenc: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      
        'select c.*, f.nome from contas_apagar c, fornecedores f where c.' +
        'codfornecedor = f.codigo')
    Left = 168
    Top = 320
    object CTPVencCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CTPVencDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object CTPVencDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object CTPVencDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = 'DATA_PAGAMENTO'
    end
    object CTPVencCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
      Origin = 'CODCONTA'
    end
    object CTPVencCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
    end
    object CTPVencVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object CTPVencVALORPAGO: TFMTBCDField
      FieldName = 'VALORPAGO'
      Origin = 'VALORPAGO'
      Precision = 18
      Size = 2
    end
    object CTPVencLIQUIDO: TFMTBCDField
      FieldName = 'LIQUIDO'
      Origin = 'LIQUIDO'
      Precision = 18
      Size = 2
    end
    object CTPVencDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object CTPVencACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object CTPVencDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object CTPVencNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'NOTAFISCAL'
    end
    object CTPVencHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 60
    end
    object CTPVencC: TStringField
      FieldName = 'C'
      Origin = 'C'
      Size = 1
    end
    object CTPVencE: TStringField
      FieldName = 'E'
      Origin = 'E'
      Size = 1
    end
    object CTPVencFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Origin = 'FILTRO'
    end
    object CTPVencESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
    end
    object CTPVencSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object CTPVencCODNOTA: TIntegerField
      FieldName = 'CODNOTA'
      Origin = 'CODNOTA'
    end
    object CTPVencMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTO'
    end
    object CTPVencCODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      Origin = 'CODCAIXA'
    end
    object CTPVencCOD_CENTRO_CUSTO: TIntegerField
      FieldName = 'COD_CENTRO_CUSTO'
      Origin = 'COD_CENTRO_CUSTO'
    end
    object CTPVencCOD_IMOVEL: TIntegerField
      FieldName = 'COD_IMOVEL'
      Origin = 'COD_IMOVEL'
    end
    object CTPVencCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object CTPVencNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
  end
  object CTP: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      
        'select c.*, f.nome from contas_apagar c, fornecedores f where c.' +
        'codfornecedor = f.codigo')
    Left = 600
    Top = 320
    object CTPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CTPDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object CTPDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object CTPDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = 'DATA_PAGAMENTO'
    end
    object CTPCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
      Origin = 'CODCONTA'
    end
    object CTPCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
    end
    object CTPVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object CTPVALORPAGO: TFMTBCDField
      FieldName = 'VALORPAGO'
      Origin = 'VALORPAGO'
      Precision = 18
      Size = 2
    end
    object CTPLIQUIDO: TFMTBCDField
      FieldName = 'LIQUIDO'
      Origin = 'LIQUIDO'
      Precision = 18
      Size = 2
    end
    object CTPDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object CTPACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object CTPDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object CTPNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'NOTAFISCAL'
    end
    object CTPHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 60
    end
    object CTPC: TStringField
      FieldName = 'C'
      Origin = 'C'
      Size = 1
    end
    object CTPE: TStringField
      FieldName = 'E'
      Origin = 'E'
      Size = 1
    end
    object CTPFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Origin = 'FILTRO'
    end
    object CTPESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
    end
    object CTPSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object CTPCODNOTA: TIntegerField
      FieldName = 'CODNOTA'
      Origin = 'CODNOTA'
    end
    object CTPMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTO'
    end
    object CTPCODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      Origin = 'CODCAIXA'
    end
    object CTPCOD_CENTRO_CUSTO: TIntegerField
      FieldName = 'COD_CENTRO_CUSTO'
      Origin = 'COD_CENTRO_CUSTO'
    end
    object CTPCOD_IMOVEL: TIntegerField
      FieldName = 'COD_IMOVEL'
      Origin = 'COD_IMOVEL'
    end
    object CTPCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object CTPNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
  end
  object SCTRVenc: TDataSource
    DataSet = CTRVenc
    Left = 192
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
  object Totais: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    Left = 384
    Top = 224
  end
  object PopCTRvenc: TPopupMenu
    Left = 256
    Top = 64
    object Abrircadastrodocliente1: TMenuItem
      Caption = 'Abrir Cadastro do Cliente'
      OnClick = Abrircadastrodocliente1Click
    end
    object Abrircontasareceber1: TMenuItem
      Caption = 'Abrir Contas a Receber'
      OnClick = Abrircontasareceber1Click
    end
  end
  object QConsCliente: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'SELECT C.*, O.NOME_CON'
      'FROM CLIENTES C'
      'LEFT JOIN CONVENIO O'
      'ON (C.CODIGO = O.COD_CON)')
    Left = 72
    Top = 56
    object QConsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConsClienteNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      Required = True
      Size = 70
    end
    object QConsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object QConsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object QConsClienteUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object QConsClienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object QConsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object QConsClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      Size = 15
    end
    object QConsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object QConsClienteNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
      Origin = 'NASCIMENTO_IA'
    end
    object QConsClienteSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 15
    end
    object QConsClienteFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Origin = 'FOTO_LOGOMARCA'
    end
    object QConsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object QConsClienteRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      FixedChar = True
    end
    object QConsClienteFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object QConsClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object QConsClienteUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object QConsClienteDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object QConsClienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object QConsClienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object QConsClienteCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Origin = 'CREDIARIO'
      Size = 3
    end
    object QConsClienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
      Size = 10
    end
    object QConsClienteRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Origin = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object QConsClientePAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 70
    end
    object QConsClienteMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 70
    end
    object QConsClienteNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Origin = 'NOME_CONJUGE'
      Size = 70
    end
    object QConsClienteCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      Origin = 'CPF_CONJUGE'
      FixedChar = True
      Size = 18
    end
    object QConsClienteNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
      Origin = 'NASCIMENTO_CONJUGE'
    end
    object QConsClienteTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Origin = 'TRABALHO_CONJUGE'
      Size = 70
    end
    object QConsClientePROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Origin = 'PROFISSAO_CONJUGE'
      Size = 70
    end
    object QConsClienteLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Origin = 'LOCALTRABALHO'
      Size = 70
    end
    object QConsClientePROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Origin = 'PROFISSAO_RA'
      Size = 70
    end
    object QConsClienteTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Origin = 'TELEFONE_TRABALHO'
      Size = 16
    end
    object QConsClienteFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Origin = 'FAX_TRABALHO'
      Size = 15
    end
    object QConsClienteOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Origin = 'OBSERVACOES_TRABALHO'
    end
    object QConsClienteBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 70
    end
    object QConsClienteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Origin = 'NOME_AGENCIA'
      Size = 70
    end
    object QConsClienteNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Origin = 'NUMERO_AGENCIA'
      Size = 10
    end
    object QConsClienteCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
      Origin = 'CONTA_CORRENTE'
    end
    object QConsClienteNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Origin = 'NOME1_REFERENCIA'
      Size = 70
    end
    object QConsClienteNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Origin = 'NOME2_REFERENCIA'
      Size = 70
    end
    object QConsClienteTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Origin = 'TELEFONE1_REFERENCIA'
      Size = 16
    end
    object QConsClienteTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Origin = 'TELEFONE2_REFERENCIA'
      Size = 16
    end
    object QConsClienteBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Origin = 'BANCO_REFERENCIA'
      Size = 70
    end
    object QConsClienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      Size = 30
    end
    object QConsClienteTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object QConsClienteOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Origin = 'OBSERVACOES_COMERCIAIS'
    end
    object QConsClienteOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Origin = 'OBSERVACOES_BANCO'
    end
    object QConsClientePG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      Origin = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object QConsClientePG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      Origin = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object QConsClientePG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      Origin = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object QConsClienteREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Origin = 'REMUNERACAO'
      Precision = 18
      Size = 2
    end
    object QConsClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object QConsClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object QConsClienteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object QConsClienteORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'ORGAO_EMISSOR'
      Size = 10
    end
    object QConsClienteDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
      Origin = 'DATA_EMISSAO_RG'
    end
    object QConsClienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 40
    end
    object QConsClienteNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Origin = 'NATURALIDADE_UF'
      Size = 2
    end
    object QConsClienteCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object QConsClienteCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = 'COD_BAIRRO'
    end
    object QConsClienteDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object QConsClienteCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
      Origin = 'COD_ZONA'
    end
    object QConsClientePONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = 'PONTO_REFERENCIA'
      Size = 200
    end
    object QConsClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object QConsClienteCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Origin = 'CONTATO1'
      Size = 60
    end
    object QConsClienteCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Origin = 'CONTATO2'
      Size = 60
    end
    object QConsClienteCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Origin = 'CX_POSTAL'
      Size = 10
    end
    object QConsClienteVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Origin = 'VALOR_ALUGUEL'
      Precision = 18
      Size = 2
    end
    object QConsClienteTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Origin = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object QConsClienteNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
      Origin = 'NUMERO_DEPENDENTES'
    end
    object QConsClienteENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Origin = 'ENDERECO_REFERENCIA1'
      Size = 44
    end
    object QConsClienteENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Origin = 'ENDERECO_REFERENCIA2'
      Size = 44
    end
    object QConsClienteDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
      Origin = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object QConsClienteDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
      Origin = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object QConsClienteRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Origin = 'RG_CONJUGUE'
    end
    object QConsClienteRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Origin = 'RENDA_CONJUGUE'
      Precision = 18
      Size = 2
    end
    object QConsClienteDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
      Origin = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object QConsClienteFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Origin = 'FONE_CONJUGUE'
      Size = 15
    end
    object QConsClienteENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Origin = 'ENDERECO_COBRANCA'
      Size = 44
    end
    object QConsClienteCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      Origin = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object QConsClienteCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
      Origin = 'COD_CIDADE_COBRANCA'
    end
    object QConsClienteCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      Origin = 'CX_POSTAL_COBRANCA'
      FixedChar = True
    end
    object QConsClienteLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Origin = 'LIMITE_DE_CREDITO'
      Precision = 18
      Size = 2
    end
    object QConsClienteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Origin = 'INSC_MUNICIPAL'
    end
    object QConsClientePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'PRODUTOR_RURAL'
      Size = 1
    end
    object QConsClienteINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Origin = 'INSC_PRODUTOR_RURAL'
    end
    object QConsClienteCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
      Origin = 'COD_BAIRRO_COBRANCA'
    end
    object QConsClienteCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Origin = 'CIDADE_COBRANCA'
      Size = 40
    end
    object QConsClienteBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Origin = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object QConsClienteUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Origin = 'UF_COBRANCA'
      Size = 2
    end
    object QConsClienteCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
      Origin = 'CONTA_BANCARIA'
    end
    object QConsClienteNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = 'NOME_PROPRIEDADE'
      Size = 70
    end
    object QConsClienteNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Origin = 'NOME_VETERINARIO'
      Size = 70
    end
    object QConsClienteSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Origin = 'SOCIO1'
      Size = 40
    end
    object QConsClienteCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Origin = 'CPFSOCIO1'
      Size = 11
    end
    object QConsClienteDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
      Origin = 'DATANASCSOCIO1'
    end
    object QConsClienteSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Origin = 'SOCIO2'
      Size = 40
    end
    object QConsClienteCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Origin = 'CPFSOCIO2'
      Size = 11
    end
    object QConsClienteDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
      Origin = 'DATANASCSOCIO2'
    end
    object QConsClienteSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Origin = 'SOCIO3'
      Size = 40
    end
    object QConsClienteCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Origin = 'CPFSOCIO3'
      Size = 11
    end
    object QConsClienteDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
      Origin = 'DATANASCSOCIO3'
    end
    object QConsClienteSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Origin = 'SOCIO4'
      Size = 40
    end
    object QConsClienteCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Origin = 'CPFSOCIO4'
      Size = 11
    end
    object QConsClienteDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
      Origin = 'DATANASCSOCIO4'
    end
    object QConsClienteDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
      Origin = 'DATAFUNDACAO'
    end
    object QConsClienteCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'CAPITALSOCIAL'
      Precision = 18
      Size = 2
    end
    object QConsClienteFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Origin = 'FATURAMENTOBRUTO'
      Precision = 18
      Size = 2
    end
    object QConsClienteREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Origin = 'REGJUNTACOM'
      Size = 12
    end
    object QConsClienteENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Origin = 'ENDSOCIO1'
      Size = 40
    end
    object QConsClienteRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
      Origin = 'RGSOCIO1'
    end
    object QConsClienteENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Origin = 'ENDSOCIO2'
      Size = 40
    end
    object QConsClienteRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
      Origin = 'RGSOCIO2'
    end
    object QConsClienteENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Origin = 'ENDSOCIO3'
      Size = 40
    end
    object QConsClienteRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
      Origin = 'RGSOCIO3'
    end
    object QConsClienteENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Origin = 'ENDSOCIO4'
      Size = 40
    end
    object QConsClienteRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
      Origin = 'RGSOCIO4'
    end
    object QConsClienteAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Origin = 'AUTORIZADO1'
      Size = 70
    end
    object QConsClienteAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Origin = 'AUTORIZADO2'
      Size = 70
    end
    object QConsClienteAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Origin = 'AUTORIZADO3'
      Size = 70
    end
    object QConsClienteCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      Origin = 'CPF_AUT1'
      FixedChar = True
      Size = 18
    end
    object QConsClienteCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      Origin = 'CPF_AUT2'
      FixedChar = True
      Size = 18
    end
    object QConsClienteCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      Origin = 'CPF_AUT3'
      FixedChar = True
      Size = 18
    end
    object QConsClienteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Size = 1
    end
    object QConsClienteCTPS: TStringField
      FieldName = 'CTPS'
      Origin = 'CTPS'
      Size = 15
    end
    object QConsClienteTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Origin = 'TESTA_CREDITO'
      Size = 1
    end
    object QConsClienteTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Origin = 'TESTA_LIMITE'
      Size = 1
    end
    object QConsClienteCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
      Origin = 'COD_CONV'
    end
    object QConsClienteFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 80
    end
    object QConsClienteDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'DATA_ULTIMA_COMPRA'
    end
    object QConsClienteFUNC_SALARIO: TFMTBCDField
      FieldName = 'FUNC_SALARIO'
      Origin = 'FUNC_SALARIO'
      Precision = 18
      Size = 2
    end
    object QConsClienteFUNC_DATA_ADMISSAO: TDateField
      FieldName = 'FUNC_DATA_ADMISSAO'
      Origin = 'FUNC_DATA_ADMISSAO'
    end
    object QConsClienteFUNC_SITUACAO: TStringField
      FieldName = 'FUNC_SITUACAO'
      Origin = 'FUNC_SITUACAO'
      Size = 1
    end
    object QConsClienteFUNC_DEMISSAO: TDateField
      FieldName = 'FUNC_DEMISSAO'
      Origin = 'FUNC_DEMISSAO'
    end
    object QConsClienteFUNC_CARGO: TStringField
      FieldName = 'FUNC_CARGO'
      Origin = 'FUNC_CARGO'
      Size = 30
    end
    object QConsClienteDOCUMENTOS: TBlobField
      FieldName = 'DOCUMENTOS'
      Origin = 'DOCUMENTOS'
    end
    object QConsClienteIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      FixedChar = True
    end
    object QConsClientePARENTESCO_AUT1: TStringField
      FieldName = 'PARENTESCO_AUT1'
      Origin = 'PARENTESCO_AUT1'
      Size = 100
    end
    object QConsClientePARENTESCO_AUT2: TStringField
      FieldName = 'PARENTESCO_AUT2'
      Origin = 'PARENTESCO_AUT2'
      Size = 100
    end
    object QConsClientePARENTESCO_AUT3: TStringField
      FieldName = 'PARENTESCO_AUT3'
      Origin = 'PARENTESCO_AUT3'
      Size = 100
    end
    object QConsClientePOSSUE_LAUDO: TStringField
      FieldName = 'POSSUE_LAUDO'
      Origin = 'POSSUE_LAUDO'
      FixedChar = True
      Size = 1
    end
    object QConsClienteVENCIMENTO_LAUDO: TDateField
      FieldName = 'VENCIMENTO_LAUDO'
      Origin = 'VENCIMENTO_LAUDO'
    end
    object QConsClienteNOME_CON: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CON'
      Origin = 'NOME_CON'
      ProviderFlags = []
      ReadOnly = True
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
