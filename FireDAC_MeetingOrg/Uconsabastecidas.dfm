object FormConsAbastecidas: TFormConsAbastecidas
  Left = 300
  Top = 201
  Width = 785
  Height = 360
  Caption = 'CONSULTA | Abastecidas '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GRID: TXDBGrid
    Left = 0
    Top = 44
    Width = 769
    Height = 277
    Align = alClient
    DataSource = DataSource1
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
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Totals.Font.Charset = ANSI_CHARSET
    Totals.Font.Color = clWindowText
    Totals.Font.Height = -11
    Totals.Font.Name = 'Verdana'
    Totals.Font.Style = []
    OnDblClick = GRIDDblClick
    OnKeyDown = GRIDKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'SEQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'V_TOTAL'
        Title.Caption = 'V. TOTAL'
        Visible = True
        Width = 74
      end
      item
        Expanded = False
        FieldName = 'KM_VEIC'
        Title.Caption = 'KM VEIC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KM_ROD'
        Title.Caption = 'KM ROD.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KM_L'
        Title.Caption = 'KM LT'
        Visible = True
        Width = 72
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C. VEIC'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COMBUSTIVEL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PLACA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'UFPLACA'
        Title.Caption = 'UF'
        Visible = True
        Width = 61
      end
      item
        Expanded = False
        FieldName = 'COR'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CHASSI'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'RENAVAM'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'OBS1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'OBS2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'OBS3'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
      end>
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 44
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 1
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
        'C'#211'DIGO'
        'PLACA'
        'SEQ'
        'DATA')
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
  object Query: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT A.*, V.*, F.*'
      'FROM VEICULO_ABAST A, VEICULO V, FORNECEDORES F'
      'WHERE'
      'A.COD_VEI = V.CODIGO AND'
      'A.COD_FOR = F.CODIGO')
    Left = 352
    Top = 120
    object QuerySEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = 'SEQ'
      Required = True
    end
    object QueryCOD_PRO: TIntegerField
      FieldName = 'COD_PRO'
      Origin = 'COD_PRO'
    end
    object QueryCOD_FOR: TIntegerField
      FieldName = 'COD_FOR'
      Origin = 'COD_FOR'
    end
    object QueryCOD_VEI: TIntegerField
      FieldName = 'COD_VEI'
      Origin = 'COD_VEI'
      Required = True
    end
    object QueryDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object QueryQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object QueryV_TOTAL: TBCDField
      FieldName = 'V_TOTAL'
      Origin = 'V_TOTAL'
      Precision = 18
      Size = 2
    end
    object QueryKM_VEIC: TIntegerField
      FieldName = 'KM_VEIC'
      Origin = 'KM_VEIC'
    end
    object QueryOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 200
    end
    object QueryV_UNIT: TFMTBCDField
      FieldName = 'V_UNIT'
      Origin = 'V_UNIT'
      Precision = 18
      Size = 6
    end
    object QueryKM_L: TBCDField
      FieldName = 'KM_L'
      Origin = 'KM_L'
      Precision = 18
      Size = 2
    end
    object QueryKM_ROD: TIntegerField
      FieldName = 'KM_ROD'
      Origin = 'KM_ROD'
    end
    object QueryCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = 'ANO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QueryCOMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QueryPLACA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLACA'
      Origin = 'PLACA'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QueryUFPLACA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UFPLACA'
      Origin = 'UFPLACA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QueryCOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COR'
      Origin = 'COR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryOBS1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS1'
      Origin = 'OBS1'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QueryOBS2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS2'
      Origin = 'OBS2'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QueryOBS3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS3'
      Origin = 'OBS3'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QueryCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QueryCOD_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryCHASSI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QueryRENAVAM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QueryISENTO_IPVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ISENTO_IPVA'
      Origin = 'ISENTO_IPVA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QueryCODIGO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_1'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryNOME_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_1'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QueryFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QueryENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object QueryCIDADE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE_1'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QueryESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QueryCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object QueryTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QueryFAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAX'
      Origin = 'FAX'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QueryEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QueryHOMEPAGE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HOMEPAGE'
      Origin = 'HOMEPAGE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QueryTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QueryCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object QueryIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE'
      Origin = 'IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QueryREPRESCELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REPRESCELULAR'
      Origin = 'REPRESCELULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QueryUSERCAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryDATACADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryOBSERVACOES: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryREPRESNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REPRESNOME'
      Origin = 'REPRESNOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QueryREPRESFONEFAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REPRESFONEFAX'
      Origin = 'REPRESFONEFAX'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QueryREPRESEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REPRESEMAIL'
      Origin = 'REPRESEMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QueryREPRESOBSERVACOES: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'REPRESOBSERVACOES'
      Origin = 'REPRESOBSERVACOES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPRODUTOR_RURAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'PRODUTOR_RURAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QueryINSC_PRODUTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSC_PRODUTOR'
      Origin = 'INSC_PRODUTOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryCOD_LINHA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_LINHA'
      Origin = 'COD_LINHA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryLINHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LINHA'
      Origin = 'LINHA'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QueryCOD_EMPRESA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryVALOR_LEITE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_LEITE'
      Origin = 'VALOR_LEITE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Querycodigo_ibge: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_ibge'
      Origin = '"codigo_ibge"'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object QueryNUMERO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QueryTP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TP'
      Origin = 'TP'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query
    Left = 400
    Top = 120
  end
end
