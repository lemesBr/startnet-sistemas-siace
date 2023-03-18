object frmxloc_combustivel: Tfrmxloc_combustivel
  Left = 383
  Top = 183
  Caption = 'COMBUSTIVEL'
  ClientHeight = 355
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GRID: TwwDBGrid
    Left = 0
    Top = 44
    Width = 778
    Height = 311
    Selected.Strings = (
      'CODIGO'#9'10'#9'CODIGO'#9#9
      'DESCRICAO'#9'65'#9'Descri'#231#227'o'#9'F'
      'PRECO_CUSTO'#9'10'#9'P. Custo'#9'F'#9
      'PRECO_VENDA'#9'10'#9'P. Venda'#9'F'#9
      'ATIVO'#9'4'#9'Ativo'#9'F'#9
      'COMBUSTIVEL'#9'4'#9'Comb.'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 44
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 1
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
      Left = 712
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 734
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
      Left = 722
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
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'DESCRIC'#195'O'
      Items.Strings = (
        'DESCRIC'#195'O'
        'C'#211'DIGO')
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
      ItemIndex = 1
      ParentFont = False
      TabOrder = 2
      Text = 'PARTE'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 433
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
  object ds: TDataSource
    DataSet = query
    Left = 424
    Top = 232
  end
  object query: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select * from produtos where codigo Is NOT NULL and combustivel=' +
        #39'S'#39' ORDER BY DESCRICAO ASC')
    Left = 472
    Top = 232
    object queryCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object queryDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object queryABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Origin = 'ABREVIADO'
      Size = 29
    end
    object queryPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object queryMARGEM_LUCRO: TBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object queryCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object queryUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
    end
    object queryFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object queryICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object queryIPI_IRPJ: TBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object queryOUTROS_IMPOSTOS: TBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object queryDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Origin = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object queryCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Origin = 'CLASS_FISCAL'
      Size = 6
    end
    object querySIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object queryCUSTO_MEDIO: TBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      Precision = 18
      Size = 2
    end
    object queryPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object queryDESCONTO_MAXIMO: TBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      Precision = 18
      Size = 2
    end
    object queryCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = 'CODIGO_GRUPO'
    end
    object queryCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = 'CODIGO_SUBGRUPO'
    end
    object queryCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = 'CODIGO_MARCA'
    end
    object queryNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Origin = 'NOME_GRUPO'
      Size = 40
    end
    object queryNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = 'NOME_SUBGRUPO'
      Size = 40
    end
    object queryNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Origin = 'NOME_MARCA'
      Size = 40
    end
    object queryNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = 'NOME_FORNECEDOR'
      Size = 70
    end
    object queryCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = 'CODIGO_FORNECEDORES'
    end
    object queryFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object queryESTOQUE_ATUAL: TBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
      Precision = 18
    end
    object queryESTOQUE_VENDIDO: TBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Origin = 'ESTOQUE_VENDIDO'
      Precision = 18
      Size = 2
    end
    object queryESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object queryVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Origin = 'VALOR_ESTOQUE_ATUAL'
      Precision = 18
      Size = 6
    end
    object queryVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Origin = 'VALOR_ESTOQUE'
      Precision = 18
      Size = 6
    end
    object queryESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'ESTOQUE_MINIMO'
    end
    object queryESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = 'ESTOQUE_MAXIMO'
    end
    object queryDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object queryUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object queryVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Origin = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 18
      Size = 6
    end
    object queryULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ULTIMACOMPRA'
    end
    object queryVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Origin = 'VALOR_EST_CUSTO'
      Precision = 18
      Size = 6
    end
    object querySECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = 'SECCAO'
    end
    object queryCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object queryLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 50
    end
    object queryAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 500
    end
    object queryESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Origin = 'ESP_COD_AUX'
      Size = 50
    end
    object queryGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      Origin = 'GARANTIA'
    end
    object queryBALANCA: TStringField
      FieldName = 'BALANCA'
      Origin = 'BALANCA'
      Size = 1
    end
    object queryETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      Size = 1
    end
    object queryATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object queryREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 15
    end
    object queryCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object queryDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object queryPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object queryPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object queryFONETICO: TStringField
      FieldName = 'FONETICO'
      Origin = 'FONETICO'
      Size = 60
    end
    object queryDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
      Origin = 'DATAULTALTERACAO'
    end
    object queryCUSTOREPOSICAO: TBCDField
      FieldName = 'CUSTOREPOSICAO'
      Origin = 'CUSTOREPOSICAO'
      Precision = 18
      Size = 2
    end
    object queryPRECO_ANT: TBCDField
      FieldName = 'PRECO_ANT'
      Origin = 'PRECO_ANT'
      Precision = 18
      Size = 3
    end
    object queryPRECO_PROMOCAO: TBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRECO_PROMOCAO'
      Precision = 18
      Size = 3
    end
    object queryFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Origin = 'FLAG_PROMOCAO'
      Size = 1
    end
    object queryDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
      Origin = 'DT_INICIO_PROMO'
    end
    object queryDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
      Origin = 'DT_FIM_PROMO'
    end
    object queryCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
      Origin = 'COD_LABORATORIO'
    end
    object queryLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
      Size = 70
    end
    object queryPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = 'PRINCIPIO_ATIVO'
      Size = 70
    end
    object queryMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Origin = 'MED_CONTROLADO'
      Size = 1
    end
    object queryQTD_FRACIONADA: TBCDField
      FieldName = 'QTD_FRACIONADA'
      Origin = 'QTD_FRACIONADA'
      Precision = 18
      Size = 2
    end
    object queryQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
    end
    object queryMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Origin = 'MED_GENERICO'
      Size = 3
    end
    object queryLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      Size = 10
    end
    object queryVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object queryCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object queryPRECO_VENDA2: TBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      Precision = 18
      Size = 3
    end
    object queryMARGEM_LUCRO2: TBCDField
      FieldName = 'MARGEM_LUCRO2'
      Origin = 'MARGEM_LUCRO2'
      Precision = 18
      Size = 2
    end
    object queryVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Origin = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object queryPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object queryUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
      Origin = 'UNIDADE_ENT'
    end
    object queryDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Origin = 'DESC_UNID_ENT'
      Size = 6
    end
    object queryQUANT_SAIDA: TBCDField
      FieldName = 'QUANT_SAIDA'
      Origin = 'QUANT_SAIDA'
      Precision = 18
    end
    object queryQUANT_ENTRADA: TBCDField
      FieldName = 'QUANT_ENTRADA'
      Origin = 'QUANT_ENTRADA'
      Precision = 18
    end
    object queryESTOQUE_FRACAO: TBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = 'ESTOQUE_FRACAO'
      Precision = 18
    end
    object queryDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
    end
    object queryFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object queryNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object queryCOD_MS: TStringField
      FieldName = 'COD_MS'
      Origin = 'COD_MS'
      Size = 13
    end
    object queryCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Origin = 'CONTOLAESTOQUE'
      Size = 5
    end
    object queryPRODUTOCOMPOSTO: TStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = 'PRODUTOCOMPOSTO'
      Size = 5
    end
    object queryTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object queryCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = 'COD_PRODUTO_ESTOQUE'
    end
    object queryCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = 'CODIGO_LOCAL_ESTOQUE'
    end
    object queryLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Origin = 'LISTA_ABC'
      Size = 1
    end
    object queryGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = 'GRUPO_TRIBUTACAO'
    end
    object queryCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object queryCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object queryENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'ENABLE_NUMSERIE'
      Required = True
    end
    object queryID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
    end
    object queryCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      Size = 9
    end
    object queryCESTA: TStringField
      FieldName = 'CESTA'
      Origin = 'CESTA'
      Size = 1
    end
    object queryML_QUANT_BEB: TBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object queryUND_TRIB: TStringField
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      Size = 3
    end
    object queryCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 44
    end
    object queryCOR_DESC: TStringField
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      Size = 30
    end
    object queryN_MOTOR: TStringField
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      Size = 30
    end
    object queryANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      Size = 4
    end
    object queryANO_MOD_FAB: TStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      Size = 4
    end
    object queryTIPO_VEIC: TStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      Size = 10
    end
    object queryN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      Size = 30
    end
    object queryCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      Size = 30
    end
    object queryESPECIE_VEICULO: TStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      Size = 10
    end
    object queryCOD_COR_DENATRAN: TStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      Size = 10
    end
    object queryTIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      Size = 10
    end
    object queryVEICULO: TStringField
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      Size = 1
    end
    object queryUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
      Origin = 'USA_RENTABILIDADE'
    end
    object queryUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Origin = 'USA_SERIAL'
    end
    object queryUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Origin = 'USA_GRADE'
    end
    object queryPRODUTO_PROPRIEDADE: TIntegerField
      FieldName = 'PRODUTO_PROPRIEDADE'
      Origin = 'PRODUTO_PROPRIEDADE'
    end
    object queryMULTIP_FRACAO: TIntegerField
      FieldName = 'MULTIP_FRACAO'
      Origin = 'MULTIP_FRACAO'
    end
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
end
