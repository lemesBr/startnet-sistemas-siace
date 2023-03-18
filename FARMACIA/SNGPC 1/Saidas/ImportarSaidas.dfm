object fImportarSaidas: TfImportarSaidas
  Left = 1056
  Top = 528
  BorderStyle = bsSingle
  Caption = 'fImportarSaidas'
  ClientHeight = 436
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 20
    Width = 135
    Height = 13
    Caption = 'Informe o Per'#237'odo a Importar'
  end
  object wwDBDateTimePicker1: TwwDBDateTimePicker
    Left = 160
    Top = 16
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 0
  end
  object wwDBDateTimePicker2: TwwDBDateTimePicker
    Left = 288
    Top = 16
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 56
    Width = 337
    Height = 41
    Caption = '&IMPORTAR'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 528
    Top = 72
    Width = 233
    Height = 25
    Caption = '&SAIR'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 104
    Width = 753
    Height = 328
    TabStop = False
    Selected.Strings = (
      'DOCTO_PEDIDO'#9'10'#9'Pedido'
      'DATA_VEN_COM'#9'10'#9'Data'
      'PRODUTO'#9'16'#9'Produto'
      'DESCRICAO'#9'50'#9'Descri'#231#227'o'
      'QTDE'#9'10'#9'Qtde'
      'LOTE'#9'15'#9'Lote')
    IniAttributes.FileName = 'DELPHI32.ini.ini'
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dswwQuery1
    ReadOnly = True
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object wwQuery1: TwwQuery
    DatabaseName = 'Farmacia'
    SQL.Strings = (
      'SELECT PRODUTOS.NRM, SNGPC.* FROM SNGPC'
      'INNER JOIN PRODUTOS'
      'ON (PRODUTOS.PRODUTO = SNGPC.PRODUTO)'
      'WHERE   (DATA_VEN_COM >= :DATA_VEN_COM1)  '
      '   AND  (DATA_VEN_COM <= :DATA_VEN_COM2)  ')
    ValidateWithMask = True
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DATA_VEN_COM1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'DATA_VEN_COM2'
        ParamType = ptUnknown
      end>
  end
  object Transacao: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = fMenu.Conexao
    Params.Strings = (
      'read_committed'
      'rec_version'
      '')
    Left = 8
    Top = 38
  end
  object dseSaidas: TMDODataSet
    AfterPost = dseSaidasAfterPost
    Database = fMenu.Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SAIDAS'
      'WHERE'
      '  NRO_PEDIDO = :OLD_NRO_PEDIDO AND'
      '  NRO_NOTIFICACAO = :OLD_NRO_NOTIFICACAO AND'
      '  NRM = :OLD_NRM AND'
      '  LOTE = :OLD_LOTE AND'
      '  DATA_VENDA = :OLD_DATA_VENDA')
    InsertSQL.Strings = (
      'INSERT INTO SAIDAS'
      
        '  (NRO_PEDIDO, TIPO_RECEITUARIO, NRO_NOTIFICACAO, DATA_PRESCRICA' +
        'O, '
      'NOME_PRESCRITOR, '
      
        '   NRO_REG_PROFISSIONAL, CONSELHO_PROFISSIONAL, UF_CONSELHO, USO' +
        '_MEDICAMENTO, '
      '   NOME_COMPRADOR, TIPO_DOC_COMPRADOR, NRO_DOC_COMPRADOR, '
      'ORGAO_EXP_DOCTO, '
      
        '   UF_EMISSAO_DOCTO, NRM, CODIGO_BARRAS, DESCRICAO, LOTE, QUANTI' +
        'DADE, '
      'DATA_VENDA)'
      'VALUES'
      
        '  (:NRO_PEDIDO, :TIPO_RECEITUARIO, :NRO_NOTIFICACAO, :DATA_PRESC' +
        'RICAO, '
      
        '   :NOME_PRESCRITOR, :NRO_REG_PROFISSIONAL, :CONSELHO_PROFISSION' +
        'AL, '
      ':UF_CONSELHO, '
      '   :USO_MEDICAMENTO, :NOME_COMPRADOR, :TIPO_DOC_COMPRADOR, '
      ':NRO_DOC_COMPRADOR, '
      
        '   :ORGAO_EXP_DOCTO, :UF_EMISSAO_DOCTO, :NRM, :CODIGO_BARRAS, :D' +
        'ESCRICAO, '
      '   :LOTE, :QUANTIDADE, :DATA_VENDA)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE SAIDAS'
      'SET'
      '  NRO_PEDIDO = :NRO_PEDIDO,'
      '  TIPO_RECEITUARIO = :TIPO_RECEITUARIO,'
      '  NRO_NOTIFICACAO = :NRO_NOTIFICACAO,'
      '  DATA_PRESCRICAO = :DATA_PRESCRICAO,'
      '  NOME_PRESCRITOR = :NOME_PRESCRITOR,'
      '  NRO_REG_PROFISSIONAL = :NRO_REG_PROFISSIONAL,'
      '  CONSELHO_PROFISSIONAL = :CONSELHO_PROFISSIONAL,'
      '  UF_CONSELHO = :UF_CONSELHO,'
      '  USO_MEDICAMENTO = :USO_MEDICAMENTO,'
      '  NOME_COMPRADOR = :NOME_COMPRADOR,'
      '  TIPO_DOC_COMPRADOR = :TIPO_DOC_COMPRADOR,'
      '  NRO_DOC_COMPRADOR = :NRO_DOC_COMPRADOR,'
      '  ORGAO_EXP_DOCTO = :ORGAO_EXP_DOCTO,'
      '  UF_EMISSAO_DOCTO = :UF_EMISSAO_DOCTO,'
      '  NRM = :NRM,'
      '  CODIGO_BARRAS = :CODIGO_BARRAS,'
      '  DESCRICAO = :DESCRICAO,'
      '  LOTE = :LOTE,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  DATA_VENDA = :DATA_VENDA'
      'WHERE'
      '  NRO_PEDIDO = :OLD_NRO_PEDIDO AND'
      '  NRO_NOTIFICACAO = :OLD_NRO_NOTIFICACAO AND'
      '  NRM = :OLD_NRM AND'
      '  LOTE = :OLD_LOTE AND'
      '  DATA_VENDA = :OLD_DATA_VENDA')
    RefreshSQL.Strings = (
      'SELECT '
      '  NRO_PEDIDO,'
      '  TIPO_RECEITUARIO,'
      '  NRO_NOTIFICACAO,'
      '  DATA_PRESCRICAO,'
      '  NOME_PRESCRITOR,'
      '  NRO_REG_PROFISSIONAL,'
      '  CONSELHO_PROFISSIONAL,'
      '  UF_CONSELHO,'
      '  USO_MEDICAMENTO,'
      '  NOME_COMPRADOR,'
      '  TIPO_DOC_COMPRADOR,'
      '  NRO_DOC_COMPRADOR,'
      '  ORGAO_EXP_DOCTO,'
      '  UF_EMISSAO_DOCTO,'
      '  NRM,'
      '  CODIGO_BARRAS,'
      '  DESCRICAO,'
      '  LOTE,'
      '  QUANTIDADE,'
      '  DATA_VENDA'
      'FROM SAIDAS '
      'WHERE'
      '  NRO_PEDIDO = :NRO_PEDIDO AND'
      '  NRO_NOTIFICACAO = :NRO_NOTIFICACAO AND'
      '  NRM = :NRM AND'
      '  LOTE = :LOTE AND'
      '  DATA_VENDA = :DATA_VENDA')
    SelectSQL.Strings = (
      'select * from SAIDAS')
    Left = 38
    Top = 38
    object dseSaidasNRO_PEDIDO: TIntegerField
      FieldName = 'NRO_PEDIDO'
      Required = True
    end
    object dseSaidasTIPO_RECEITUARIO: TMDOStringField
      FieldName = 'TIPO_RECEITUARIO'
      Size = 1
    end
    object dseSaidasNRO_NOTIFICACAO: TMDOStringField
      FieldName = 'NRO_NOTIFICACAO'
      Required = True
      Size = 10
    end
    object dseSaidasDATA_PRESCRICAO: TDateField
      FieldName = 'DATA_PRESCRICAO'
    end
    object dseSaidasNOME_PRESCRITOR: TMDOStringField
      FieldName = 'NOME_PRESCRITOR'
      Size = 50
    end
    object dseSaidasNRO_REG_PROFISSIONAL: TMDOStringField
      FieldName = 'NRO_REG_PROFISSIONAL'
      Size = 10
    end
    object dseSaidasCONSELHO_PROFISSIONAL: TMDOStringField
      FieldName = 'CONSELHO_PROFISSIONAL'
      Size = 4
    end
    object dseSaidasUF_CONSELHO: TMDOStringField
      FieldName = 'UF_CONSELHO'
      Size = 2
    end
    object dseSaidasUSO_MEDICAMENTO: TMDOStringField
      FieldName = 'USO_MEDICAMENTO'
      Size = 1
    end
    object dseSaidasNOME_COMPRADOR: TMDOStringField
      FieldName = 'NOME_COMPRADOR'
      Size = 50
    end
    object dseSaidasTIPO_DOC_COMPRADOR: TMDOStringField
      FieldName = 'TIPO_DOC_COMPRADOR'
      Size = 2
    end
    object dseSaidasNRO_DOC_COMPRADOR: TMDOStringField
      FieldName = 'NRO_DOC_COMPRADOR'
      Size = 30
    end
    object dseSaidasORGAO_EXP_DOCTO: TMDOStringField
      FieldName = 'ORGAO_EXP_DOCTO'
      Size = 10
    end
    object dseSaidasUF_EMISSAO_DOCTO: TMDOStringField
      FieldName = 'UF_EMISSAO_DOCTO'
      Size = 2
    end
    object dseSaidasNRM: TMDOStringField
      FieldName = 'NRM'
      Required = True
      Size = 17
    end
    object dseSaidasCODIGO_BARRAS: TMDOStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      Size = 13
    end
    object dseSaidasDESCRICAO: TMDOStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object dseSaidasLOTE: TMDOStringField
      FieldName = 'LOTE'
      Required = True
      Size = 10
    end
    object dseSaidasQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object dseSaidasDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
      Required = True
    end
  end
  object dsdseSaidas: TDataSource
    AutoEdit = False
    DataSet = dseSaidas
    Left = 69
    Top = 38
  end
  object MDOQuery1: TMDOQuery
    Database = fMenu.Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 100
    Top = 8
  end
  object dseMedico: TMDODataSet
    AfterPost = dseMedicoAfterPost
    Database = fMenu.Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM MEDICO'
      'WHERE'
      '  CRM = :OLD_CRM')
    InsertSQL.Strings = (
      'INSERT INTO MEDICO'
      '  (CRM, MEDICO, CONSELHO, UF, CADASTRO)'
      'VALUES'
      '  (:CRM, :MEDICO, :CONSELHO, :UF, :CADASTRO)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE MEDICO'
      'SET'
      '  CRM = :CRM,'
      '  MEDICO = :MEDICO,'
      '  CONSELHO = :CONSELHO,'
      '  UF = :UF,'
      '  CADASTRO = :CADASTRO'
      'WHERE'
      '  CRM = :OLD_CRM')
    RefreshSQL.Strings = (
      'SELECT '
      '  CRM,'
      '  MEDICO,'
      '  CONSELHO,'
      '  UF,'
      '  CADASTRO'
      'FROM MEDICO '
      'WHERE'
      '  CRM = :CRM')
    SelectSQL.Strings = (
      'select * from MEDICO')
    Left = 100
    Top = 38
  end
  object dseClientes: TMDODataSet
    AfterPost = dseMedicoAfterPost
    Database = fMenu.Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM CLIENTES'
      'WHERE'
      '  DOCUMENTO = :OLD_DOCUMENTO AND'
      '  ORGAO_EXP = :OLD_ORGAO_EXP AND'
      '  UF_ORGAO = :OLD_UF_ORGAO AND'
      '  TIPO_DOCTO = :OLD_TIPO_DOCTO')
    InsertSQL.Strings = (
      'INSERT INTO CLIENTES'
      '  (DOCUMENTO, ORGAO_EXP, UF_ORGAO, TIPO_DOCTO, NOME_CLIENTE)'
      'VALUES'
      
        '  (:DOCUMENTO, :ORGAO_EXP, :UF_ORGAO, :TIPO_DOCTO, :NOME_CLIENTE' +
        ')')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE CLIENTES'
      'SET'
      '  DOCUMENTO = :DOCUMENTO,'
      '  ORGAO_EXP = :ORGAO_EXP,'
      '  UF_ORGAO = :UF_ORGAO,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  NOME_CLIENTE = :NOME_CLIENTE'
      'WHERE'
      '  DOCUMENTO = :OLD_DOCUMENTO AND'
      '  ORGAO_EXP = :OLD_ORGAO_EXP AND'
      '  UF_ORGAO = :OLD_UF_ORGAO AND'
      '  TIPO_DOCTO = :OLD_TIPO_DOCTO')
    RefreshSQL.Strings = (
      'SELECT '
      '  DOCUMENTO,'
      '  ORGAO_EXP,'
      '  UF_ORGAO,'
      '  TIPO_DOCTO,'
      '  NOME_CLIENTE'
      'FROM CLIENTES '
      'WHERE'
      '  DOCUMENTO = :DOCUMENTO AND'
      '  ORGAO_EXP = :ORGAO_EXP AND'
      '  UF_ORGAO = :UF_ORGAO AND'
      '  TIPO_DOCTO = :TIPO_DOCTO')
    SelectSQL.Strings = (
      'select * from CLIENTES')
    Left = 132
    Top = 38
  end
  object dswwQuery1: TDataSource
    AutoEdit = False
    DataSet = wwQuery1
    Left = 40
    Top = 6
  end
end
