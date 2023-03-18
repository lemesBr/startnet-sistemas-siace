object frmxloc_Funcionario: Tfrmxloc_Funcionario
  Left = 349
  Top = 203
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FUNCION'#193'RIOS | Localizar'
  ClientHeight = 352
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 44
    Width = 708
    Height = 3
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 44
    Color = clWhite
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    UseDockManager = True
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 114
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 37
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 648
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 670
      Top = 11
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 658
      Top = 24
      Width = 44
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 12
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO'
        'CPF')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 12
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'IN'#205'CIO'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 369
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object GRID: TXDBGrid
    Left = 0
    Top = 47
    Width = 708
    Height = 305
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    GridStyle.VisualStyle = vsXPStyle
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Totals.Font.Charset = ANSI_CHARSET
    Totals.Font.Color = clWindowText
    Totals.Font.Height = -11
    Totals.Font.Name = 'Verdana'
    Totals.Font.Style = []
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOME_RS'
        Title.Caption = 'NOME'
        Visible = True
        Width = 230
      end
      item
        Expanded = False
        FieldName = 'FUNC_SALARIO'
        Title.Caption = 'SALARIO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FUNC_CARGO'
        Title.Caption = 'CARGO'
        Visible = True
        Width = 170
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
        Width = 220
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
        Width = 200
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
        Width = 87
      end
      item
        Expanded = False
        FieldName = 'TELEFONE2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NASCIMENTO_IA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FOTO_LOGOMARCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'RG_IE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FAX'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ESTADOCIVIL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'RESIDENCIA_SEDE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PAI'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'MAE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOME_CONJUGE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CPF_CONJUGE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NASCIMENTO_CONJUGE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TRABALHO_CONJUGE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PROFISSAO_CONJUGE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'LOCALTRABALHO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PROFISSAO_RA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TELEFONE_TRABALHO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FAX_TRABALHO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'OBSERVACOES_TRABALHO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BANCO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOME_AGENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NUMERO_AGENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CONTA_CORRENTE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOME1_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOME2_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TELEFONE1_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TELEFONE2_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BANCO_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'APELIDO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'REMUNERACAO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COMPLEMENTO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COD_EMPRESA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ORGAO_EMISSOR'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_EMISSAO_RG'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NATURALIDADE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NATURALIDADE_UF'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_ALTERACAO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COD_ZONA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PONTO_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ATIVO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CONTATO1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CONTATO2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CX_POSTAL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_ALUGUEL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TEMPO_RESIDENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NUMERO_DEPENDENTES'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENDERECO_REFERENCIA1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENDERECO_REFERENCIA2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_ADMISSAO_REFERENCIA1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_ADMISSAO_REFERENCIA2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'RG_CONJUGUE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'RENDA_CONJUGUE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_ADMINSSAO_CONJUGUE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FONE_CONJUGUE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENDERECO_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CEP_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COD_CIDADE_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CX_POSTAL_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COD_BAIRRO_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CIDADE_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BAIRRO_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'UF_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CONTA_BANCARIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CTPS'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FOTO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FUNC_DATA_ADMISSAO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FUNC_SITUACAO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FUNC_DEMISSAO'
        Visible = True
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 504
    Top = 240
  end
  object query: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from clientes ')
    Left = 464
    Top = 232
    object queryCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      Required = True
      Size = 70
    end
    object queryENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object queryCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object queryUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object queryCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object queryTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object queryTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      Size = 15
    end
    object queryEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object queryNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
      Origin = 'NASCIMENTO_IA'
    end
    object querySEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 15
    end
    object queryFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Origin = 'FOTO_LOGOMARCA'
    end
    object queryBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object queryRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      FixedChar = True
    end
    object queryFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object queryCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object queryUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object queryDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object queryCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object queryOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object queryCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Origin = 'CREDIARIO'
      Size = 3
    end
    object queryESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
      Size = 10
    end
    object queryRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Origin = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object queryPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 70
    end
    object queryMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 70
    end
    object queryNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Origin = 'NOME_CONJUGE'
      Size = 70
    end
    object queryCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      Origin = 'CPF_CONJUGE'
      FixedChar = True
      Size = 18
    end
    object queryNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
      Origin = 'NASCIMENTO_CONJUGE'
    end
    object queryTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Origin = 'TRABALHO_CONJUGE'
      Size = 70
    end
    object queryPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Origin = 'PROFISSAO_CONJUGE'
      Size = 70
    end
    object queryLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Origin = 'LOCALTRABALHO'
      Size = 70
    end
    object queryPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Origin = 'PROFISSAO_RA'
      Size = 70
    end
    object queryTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Origin = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object queryFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Origin = 'FAX_TRABALHO'
      Size = 15
    end
    object queryOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Origin = 'OBSERVACOES_TRABALHO'
    end
    object queryBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 70
    end
    object queryNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Origin = 'NOME_AGENCIA'
      Size = 70
    end
    object queryNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Origin = 'NUMERO_AGENCIA'
      Size = 10
    end
    object queryCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
      Origin = 'CONTA_CORRENTE'
    end
    object queryNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Origin = 'NOME1_REFERENCIA'
      Size = 70
    end
    object queryNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Origin = 'NOME2_REFERENCIA'
      Size = 70
    end
    object queryTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Origin = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object queryTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Origin = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object queryBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Origin = 'BANCO_REFERENCIA'
      Size = 70
    end
    object queryAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      Size = 30
    end
    object queryTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object queryOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Origin = 'OBSERVACOES_COMERCIAIS'
    end
    object queryOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Origin = 'OBSERVACOES_BANCO'
    end
    object queryPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      Origin = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object queryPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      Origin = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object queryPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      Origin = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object queryREMUNERACAO: TBCDField
      FieldName = 'REMUNERACAO'
      Origin = 'REMUNERACAO'
      Precision = 18
      Size = 2
    end
    object queryNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object queryCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object queryCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object queryORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'ORGAO_EMISSOR'
      Size = 10
    end
    object queryDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
      Origin = 'DATA_EMISSAO_RG'
    end
    object queryNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 40
    end
    object queryNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Origin = 'NATURALIDADE_UF'
      Size = 2
    end
    object queryCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object queryCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = 'COD_BAIRRO'
    end
    object queryDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object queryCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
      Origin = 'COD_ZONA'
    end
    object queryPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = 'PONTO_REFERENCIA'
      Size = 200
    end
    object queryATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object queryCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Origin = 'CONTATO1'
      Size = 60
    end
    object queryCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Origin = 'CONTATO2'
      Size = 60
    end
    object queryCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Origin = 'CX_POSTAL'
      Size = 10
    end
    object queryVALOR_ALUGUEL: TBCDField
      FieldName = 'VALOR_ALUGUEL'
      Origin = 'VALOR_ALUGUEL'
      Precision = 18
      Size = 2
    end
    object queryTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Origin = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object queryNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
      Origin = 'NUMERO_DEPENDENTES'
    end
    object queryENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Origin = 'ENDERECO_REFERENCIA1'
      Size = 44
    end
    object queryENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Origin = 'ENDERECO_REFERENCIA2'
      Size = 44
    end
    object queryDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
      Origin = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object queryDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
      Origin = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object queryRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Origin = 'RG_CONJUGUE'
    end
    object queryRENDA_CONJUGUE: TBCDField
      FieldName = 'RENDA_CONJUGUE'
      Origin = 'RENDA_CONJUGUE'
      Precision = 18
      Size = 2
    end
    object queryDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
      Origin = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object queryFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Origin = 'FONE_CONJUGUE'
      Size = 15
    end
    object queryENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Origin = 'ENDERECO_COBRANCA'
      Size = 44
    end
    object queryCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      Origin = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object queryCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
      Origin = 'COD_CIDADE_COBRANCA'
    end
    object queryCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      Origin = 'CX_POSTAL_COBRANCA'
      FixedChar = True
    end
    object queryLIMITE_DE_CREDITO: TBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Origin = 'LIMITE_DE_CREDITO'
      Precision = 18
      Size = 2
    end
    object queryINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Origin = 'INSC_MUNICIPAL'
    end
    object queryPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'PRODUTOR_RURAL'
      Size = 1
    end
    object queryINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Origin = 'INSC_PRODUTOR_RURAL'
    end
    object queryCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
      Origin = 'COD_BAIRRO_COBRANCA'
    end
    object queryCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Origin = 'CIDADE_COBRANCA'
      Size = 40
    end
    object queryBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Origin = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object queryUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Origin = 'UF_COBRANCA'
      Size = 2
    end
    object queryCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
      Origin = 'CONTA_BANCARIA'
    end
    object queryNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = 'NOME_PROPRIEDADE'
      Size = 70
    end
    object queryNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Origin = 'NOME_VETERINARIO'
      Size = 70
    end
    object querySOCIO1: TStringField
      FieldName = 'SOCIO1'
      Origin = 'SOCIO1'
      Size = 40
    end
    object queryCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Origin = 'CPFSOCIO1'
      Size = 11
    end
    object queryDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
      Origin = 'DATANASCSOCIO1'
    end
    object querySOCIO2: TStringField
      FieldName = 'SOCIO2'
      Origin = 'SOCIO2'
      Size = 40
    end
    object queryCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Origin = 'CPFSOCIO2'
      Size = 11
    end
    object queryDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
      Origin = 'DATANASCSOCIO2'
    end
    object querySOCIO3: TStringField
      FieldName = 'SOCIO3'
      Origin = 'SOCIO3'
      Size = 40
    end
    object queryCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Origin = 'CPFSOCIO3'
      Size = 11
    end
    object queryDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
      Origin = 'DATANASCSOCIO3'
    end
    object querySOCIO4: TStringField
      FieldName = 'SOCIO4'
      Origin = 'SOCIO4'
      Size = 40
    end
    object queryCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Origin = 'CPFSOCIO4'
      Size = 11
    end
    object queryDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
      Origin = 'DATANASCSOCIO4'
    end
    object queryDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
      Origin = 'DATAFUNDACAO'
    end
    object queryCAPITALSOCIAL: TBCDField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'CAPITALSOCIAL'
      Precision = 18
      Size = 2
    end
    object queryFATURAMENTOBRUTO: TBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Origin = 'FATURAMENTOBRUTO'
      Precision = 18
      Size = 2
    end
    object queryREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Origin = 'REGJUNTACOM'
      Size = 12
    end
    object queryENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Origin = 'ENDSOCIO1'
      Size = 40
    end
    object queryRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
      Origin = 'RGSOCIO1'
    end
    object queryENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Origin = 'ENDSOCIO2'
      Size = 40
    end
    object queryRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
      Origin = 'RGSOCIO2'
    end
    object queryENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Origin = 'ENDSOCIO3'
      Size = 40
    end
    object queryRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
      Origin = 'RGSOCIO3'
    end
    object queryENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Origin = 'ENDSOCIO4'
      Size = 40
    end
    object queryRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
      Origin = 'RGSOCIO4'
    end
    object queryAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Origin = 'AUTORIZADO1'
      Size = 70
    end
    object queryAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Origin = 'AUTORIZADO2'
      Size = 70
    end
    object queryAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Origin = 'AUTORIZADO3'
      Size = 70
    end
    object queryCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      Origin = 'CPF_AUT1'
      FixedChar = True
      Size = 18
    end
    object queryCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      Origin = 'CPF_AUT2'
      FixedChar = True
      Size = 18
    end
    object queryCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      Origin = 'CPF_AUT3'
      FixedChar = True
      Size = 18
    end
    object queryFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Size = 1
    end
    object queryCTPS: TStringField
      FieldName = 'CTPS'
      Origin = 'CTPS'
      Size = 15
    end
    object queryTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Origin = 'TESTA_CREDITO'
      Size = 1
    end
    object queryTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Origin = 'TESTA_LIMITE'
      Size = 1
    end
    object queryCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
      Origin = 'COD_CONV'
    end
    object queryFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 80
    end
    object queryDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'DATA_ULTIMA_COMPRA'
    end
    object queryFUNC_SALARIO: TBCDField
      FieldName = 'FUNC_SALARIO'
      Origin = 'FUNC_SALARIO'
      Precision = 18
      Size = 2
    end
    object queryFUNC_DATA_ADMISSAO: TDateField
      FieldName = 'FUNC_DATA_ADMISSAO'
      Origin = 'FUNC_DATA_ADMISSAO'
    end
    object queryFUNC_SITUACAO: TStringField
      FieldName = 'FUNC_SITUACAO'
      Origin = 'FUNC_SITUACAO'
      Size = 1
    end
    object queryFUNC_DEMISSAO: TDateField
      FieldName = 'FUNC_DEMISSAO'
      Origin = 'FUNC_DEMISSAO'
    end
    object queryFUNC_CARGO: TStringField
      FieldName = 'FUNC_CARGO'
      Origin = 'FUNC_CARGO'
      Size = 30
    end
  end
end
