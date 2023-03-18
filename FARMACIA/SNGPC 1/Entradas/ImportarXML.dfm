object fImportarXML: TfImportarXML
  Left = 1085
  Top = 497
  BorderStyle = bsSingle
  Caption = 'Importar do arquivo XML'
  ClientHeight = 172
  ClientWidth = 470
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
    Top = 16
    Width = 455
    Height = 26
    Alignment = taCenter
    Caption = 
      'ATEN'#199#195'O!! Ser'#225' importado somente os produtos que estiverem cadas' +
      'trados no sistema, os demais ser'#227'o despresados.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object BitBtn1: TBitBtn
    Left = 64
    Top = 72
    Width = 337
    Height = 41
    Caption = '&IMPORTAR'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 356
    Top = 136
    Width = 107
    Height = 25
    Caption = '&SAIR'
    TabOrder = 1
    OnClick = BitBtn2Click
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
  object dseEntradas: TMDODataSet
    AfterPost = dseEntradasAfterPost
    Database = fMenu.Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsdseCabEntradas
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
      'select * from ENTRADAS'
      'where NOTA_FISCAL = :NOTA_FISCAL'
      'and TIPO_OP_NF = :TIPO_OP_NF'
      'and EMISSAO_NF = :EMISSAO_NF'
      'and CNPJ_FORNECEDOR = :CNPJ_FORNECEDOR')
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
  object qryTmp: TMDOQuery
    Database = fMenu.Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 140
    Top = 38
  end
  object dseLabDistr: TMDODataSet
    AfterPost = dseLabDistrAfterPost
    Database = fMenu.Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM LABORATORIO'
      'WHERE'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'INSERT INTO LABORATORIO'
      
        '  (CNPJ, NOME, ENDERECO, BAIRRO, CEP, CIDADE, UF, INSCRICAO, FON' +
        'E)'
      'VALUES'
      
        '  (:CNPJ, :NOME, :ENDERECO, :BAIRRO, :CEP, :CIDADE, :UF, :INSCRI' +
        'CAO, :FONE)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE LABORATORIO'
      'SET'
      '  CNPJ = :CNPJ,'
      '  NOME = :NOME,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  INSCRICAO = :INSCRICAO,'
      '  FONE = :FONE'
      'WHERE'
      '  CNPJ = :OLD_CNPJ')
    RefreshSQL.Strings = (
      'SELECT '
      '  CNPJ,'
      '  NOME,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CEP,'
      '  CIDADE,'
      '  UF,'
      '  INSCRICAO,'
      '  FONE'
      'FROM LABORATORIO '
      'WHERE'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select *  from LABORATORIO')
    Left = 107
    Top = 38
  end
  object dseCabEntradas: TMDODataSet
    AfterPost = dseEntradasAfterPost
    Database = fMenu.Conexao
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
    object dseCabEntradasNOTA_FISCAL: TMDOStringField
      FieldName = 'NOTA_FISCAL'
      Origin = '"CAB_ENTRADAS"."NOTA_FISCAL"'
      Required = True
    end
    object dseCabEntradasTIPO_OP_NF: TMDOStringField
      FieldName = 'TIPO_OP_NF'
      Origin = '"CAB_ENTRADAS"."TIPO_OP_NF"'
      Required = True
      Size = 1
    end
    object dseCabEntradasEMISSAO_NF: TDateField
      FieldName = 'EMISSAO_NF'
      Origin = '"CAB_ENTRADAS"."EMISSAO_NF"'
      Required = True
    end
    object dseCabEntradasCNPJ_FORNECEDOR: TMDOStringField
      FieldName = 'CNPJ_FORNECEDOR'
      Origin = '"CAB_ENTRADAS"."CNPJ_FORNECEDOR"'
      Required = True
      Size = 18
    end
    object dseCabEntradasRECEBIDO: TDateField
      FieldName = 'RECEBIDO'
      Origin = '"CAB_ENTRADAS"."RECEBIDO"'
      Required = True
    end
    object dseCabEntradasNOME_FORNECEDOR: TMDOStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = '"CAB_ENTRADAS"."NOME_FORNECEDOR"'
      Size = 50
    end
  end
  object OpenDialog1: TOpenDialog
    Ctl3D = False
    DefaultExt = 'XML'
    Filter = 'Arquivos XML|*.XML'
    Left = 12
    Top = 8
  end
  object dsdseCabEntradas: TDataSource
    AutoEdit = False
    DataSet = dseCabEntradas
    Left = 38
    Top = 70
  end
end
