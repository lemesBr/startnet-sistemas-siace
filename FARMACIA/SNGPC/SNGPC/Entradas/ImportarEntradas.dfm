object fImportarEntradas: TfImportarEntradas
  Left = 430
  Top = 172
  BorderStyle = bsSingle
  Caption = 'fImportarEntradas'
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
    Left = 8
    Top = 20
    Width = 135
    Height = 13
    Caption = 'Informe o Per'#237'odo a Importar'
  end
  object wwDBDateTimePicker1: TwwDBDateTimePicker
    Left = 154
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
    Left = 285
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
    Left = 8
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
    DisableThemes = False
    Selected.Strings = (
      'Docto'#9'12'#9'NF'
      'Data'#9'10'#9'Data'
      'PRODUTO'#9'16'#9'Produto'
      'DESCRICAO'#9'50'#9'Descri'#231#227'o'
      'Qtde'#9'10'#9'Qtde'
      'Lote'#9'15'#9'Lote')
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
      
        'SELECT IT_MVEST.*, DISTRIB.CIC_CGC CNPJ, DISTRIB.NOME, PRODUTOS.' +
        'NRM, PRODUTOS.DESCRICAO, PRODUTOS.PSICOTROPICO FROM IT_MVEST'
      ''
      'INNER JOIN DISTRIB'
      'ON (DISTRIB.DISTRIBUIDOR = IT_MVEST.DISTRIBUIDOR)'
      ''
      'INNER JOIN PRODUTOS'
      'ON (PRODUTOS.PRODUTO = IT_MVEST.PRODUTO)'
      ''
      'WHERE  LOTE <> '#39#39
      '   AND PSICOTROPICO = '#39'S'#39
      '   AND (DATA >= :DATA1)  '
      '   AND  (DATA <= :DATA2)  ')
    ValidateWithMask = True
    Left = 8
    Top = 6
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptUnknown
      end>
  end
  object Transacao: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = fMenu.coneccao
    Params.Strings = (
      'read_committed'
      'rec_version'
      '')
    Left = 8
    Top = 38
  end
  object dseEntradas: TMDODataSet
    AfterPost = dseEntradasAfterPost
    Database = fMenu.coneccao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM ENTRADAS'
      'WHERE'
      '  NOTA_FISCAL = :OLD_NOTA_FISCAL AND'
      '  TIPO_OP_NF = :OLD_TIPO_OP_NF AND'
      '  EMISSAO_NF = :OLD_EMISSAO_NF AND'
      '  CNPJ_FORNECEDOR = :OLD_CNPJ_FORNECEDOR AND'
      '  NRM = :OLD_NRM AND'
      '  LOTE = :OLD_LOTE')
    InsertSQL.Strings = (
      'INSERT INTO ENTRADAS'
      
        '  (NOTA_FISCAL, TIPO_OP_NF, EMISSAO_NF, CNPJ_FORNECEDOR, NOME_FO' +
        'RNECEDOR, '
      '   CODIGO_BARRAS, NRM, DESCRICAO, LOTE, QUANTIDADE, RECEBIDO)'
      'VALUES'
      
        '  (:NOTA_FISCAL, :TIPO_OP_NF, :EMISSAO_NF, :CNPJ_FORNECEDOR, :NO' +
        'ME_FORNECEDOR, '
      
        '   :CODIGO_BARRAS, :NRM, :DESCRICAO, :LOTE, :QUANTIDADE, :RECEBI' +
        'DO)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE ENTRADAS'
      'SET'
      '  NOTA_FISCAL = :NOTA_FISCAL,'
      '  TIPO_OP_NF = :TIPO_OP_NF,'
      '  EMISSAO_NF = :EMISSAO_NF,'
      '  CNPJ_FORNECEDOR = :CNPJ_FORNECEDOR,'
      '  NOME_FORNECEDOR = :NOME_FORNECEDOR,'
      '  CODIGO_BARRAS = :CODIGO_BARRAS,'
      '  NRM = :NRM,'
      '  DESCRICAO = :DESCRICAO,'
      '  LOTE = :LOTE,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  RECEBIDO = :RECEBIDO'
      'WHERE'
      '  NOTA_FISCAL = :OLD_NOTA_FISCAL AND'
      '  TIPO_OP_NF = :OLD_TIPO_OP_NF AND'
      '  EMISSAO_NF = :OLD_EMISSAO_NF AND'
      '  CNPJ_FORNECEDOR = :OLD_CNPJ_FORNECEDOR AND'
      '  NRM = :OLD_NRM AND'
      '  LOTE = :OLD_LOTE')
    RefreshSQL.Strings = (
      'SELECT '
      '  NOTA_FISCAL,'
      '  TIPO_OP_NF,'
      '  EMISSAO_NF,'
      '  CNPJ_FORNECEDOR,'
      '  NOME_FORNECEDOR,'
      '  CODIGO_BARRAS,'
      '  NRM,'
      '  DESCRICAO,'
      '  LOTE,'
      '  QUANTIDADE,'
      '  RECEBIDO'
      'FROM ENTRADAS '
      'WHERE'
      '  NOTA_FISCAL = :NOTA_FISCAL AND'
      '  TIPO_OP_NF = :TIPO_OP_NF AND'
      '  EMISSAO_NF = :EMISSAO_NF AND'
      '  CNPJ_FORNECEDOR = :CNPJ_FORNECEDOR AND'
      '  NRM = :NRM AND'
      '  LOTE = :LOTE')
    SelectSQL.Strings = (
      'select * from ENTRADAS')
    Left = 73
    Top = 38
    object dseEntradasNOTA_FISCAL: TMDOStringField
      FieldName = 'NOTA_FISCAL'
      Origin = '"ENTRADAS"."NOTA_FISCAL"'
      Required = True
    end
    object dseEntradasTIPO_OP_NF: TMDOStringField
      FieldName = 'TIPO_OP_NF'
      Origin = '"ENTRADAS"."TIPO_OP_NF"'
      Required = True
      Size = 1
    end
    object dseEntradasEMISSAO_NF: TDateField
      FieldName = 'EMISSAO_NF'
      Origin = '"ENTRADAS"."EMISSAO_NF"'
      Required = True
    end
    object dseEntradasCNPJ_FORNECEDOR: TMDOStringField
      FieldName = 'CNPJ_FORNECEDOR'
      Origin = '"ENTRADAS"."CNPJ_FORNECEDOR"'
      Required = True
      Size = 18
    end
    object dseEntradasNOME_FORNECEDOR: TMDOStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = '"ENTRADAS"."NOME_FORNECEDOR"'
      Size = 50
    end
    object dseEntradasCODIGO_BARRAS: TMDOStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = '"ENTRADAS"."CODIGO_BARRAS"'
      Required = True
      Size = 13
    end
    object dseEntradasNRM: TMDOStringField
      FieldName = 'NRM'
      Origin = '"ENTRADAS"."NRM"'
      Required = True
    end
    object dseEntradasDESCRICAO: TMDOStringField
      FieldName = 'DESCRICAO'
      Origin = '"ENTRADAS"."DESCRICAO"'
      Size = 50
    end
    object dseEntradasLOTE: TMDOStringField
      FieldName = 'LOTE'
      Origin = '"ENTRADAS"."LOTE"'
      Required = True
      Size = 10
    end
    object dseEntradasQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"ENTRADAS"."QUANTIDADE"'
      Required = True
    end
    object dseEntradasRECEBIDO: TDateField
      FieldName = 'RECEBIDO'
      Origin = '"ENTRADAS"."RECEBIDO"'
      Required = True
    end
  end
  object dsdseEntradas: TDataSource
    AutoEdit = False
    DataSet = dseEntradas
    Left = 106
    Top = 38
  end
  object MDOQuery1: TMDOQuery
    Database = fMenu.coneccao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 172
    Top = 38
  end
  object dseLabDistr: TMDODataSet
    AfterPost = dseLabDistrAfterPost
    Database = fMenu.coneccao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM LABORATORIO'
      'WHERE'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'INSERT INTO LABORATORIO'
      '  (CNPJ, NOME)'
      'VALUES'
      '  (:CNPJ, :NOME)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE LABORATORIO'
      'SET'
      '  CNPJ = :CNPJ,'
      '  NOME = :NOME'
      'WHERE'
      '  CNPJ = :OLD_CNPJ')
    RefreshSQL.Strings = (
      'SELECT '
      '  CNPJ,'
      '  NOME'
      'FROM LABORATORIO '
      'WHERE'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select *  from LABORATORIO')
    Left = 139
    Top = 38
  end
  object dswwQuery1: TDataSource
    AutoEdit = False
    DataSet = wwQuery1
    Left = 40
    Top = 6
  end
  object dseCabEntradas: TMDODataSet
    AfterPost = dseEntradasAfterPost
    Database = fMenu.coneccao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM CAB_ENTRADAS'
      'WHERE'
      '  NOTA_FISCAL = :OLD_NOTA_FISCAL AND'
      '  TIPO_OP_NF = :OLD_TIPO_OP_NF AND'
      '  EMISSAO_NF = :OLD_EMISSAO_NF AND'
      '  CNPJ_FORNECEDOR = :OLD_CNPJ_FORNECEDOR')
    InsertSQL.Strings = (
      'INSERT INTO CAB_ENTRADAS'
      
        '  (NOTA_FISCAL, TIPO_OP_NF, EMISSAO_NF, CNPJ_FORNECEDOR, RECEBID' +
        'O, NOME_FORNECEDOR)'
      'VALUES'
      
        '  (:NOTA_FISCAL, :TIPO_OP_NF, :EMISSAO_NF, :CNPJ_FORNECEDOR, :RE' +
        'CEBIDO, '
      '   :NOME_FORNECEDOR)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE CAB_ENTRADAS'
      'SET'
      '  NOTA_FISCAL = :NOTA_FISCAL,'
      '  TIPO_OP_NF = :TIPO_OP_NF,'
      '  EMISSAO_NF = :EMISSAO_NF,'
      '  CNPJ_FORNECEDOR = :CNPJ_FORNECEDOR,'
      '  RECEBIDO = :RECEBIDO,'
      '  NOME_FORNECEDOR = :NOME_FORNECEDOR'
      'WHERE'
      '  NOTA_FISCAL = :OLD_NOTA_FISCAL AND'
      '  TIPO_OP_NF = :OLD_TIPO_OP_NF AND'
      '  EMISSAO_NF = :OLD_EMISSAO_NF AND'
      '  CNPJ_FORNECEDOR = :OLD_CNPJ_FORNECEDOR')
    RefreshSQL.Strings = (
      'SELECT '
      '  NOTA_FISCAL,'
      '  TIPO_OP_NF,'
      '  EMISSAO_NF,'
      '  CNPJ_FORNECEDOR,'
      '  RECEBIDO,'
      '  NOME_FORNECEDOR'
      'FROM CAB_ENTRADAS '
      'WHERE'
      '  NOTA_FISCAL = :NOTA_FISCAL AND'
      '  TIPO_OP_NF = :TIPO_OP_NF AND'
      '  EMISSAO_NF = :EMISSAO_NF AND'
      '  CNPJ_FORNECEDOR = :CNPJ_FORNECEDOR')
    SelectSQL.Strings = (
      'select * from  CAB_ENTRADAS')
    Left = 40
    Top = 38
  end
end
