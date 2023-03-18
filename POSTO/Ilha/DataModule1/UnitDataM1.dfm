object DM1: TDM1
  OldCreateOrder = False
  Left = 383
  Top = 151
  Height = 332
  Width = 681
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Siace\SIACE.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = [tfError, tfConnect]
    AllowStreamedConnected = False
    Left = 24
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TARollback
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 24
    Top = 64
  end
  object QryPermissaoUser: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'Select * from PERMISSAOUSER where codsetoruser = :coduser')
    Left = 504
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'coduser'
        ParamType = ptUnknown
      end>
  end
  object QryPermissaoForm: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'Select * from PERMISSAOFORM where CODPERMISSAO in '
      
        '(Select CODPERMISSAO from PERMISSAOUSER where codsetoruser = :co' +
        'duser)')
    Left = 504
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'coduser'
        ParamType = ptUnknown
      end>
  end
  object IBStatisticalService1: TIBStatisticalService
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    DatabaseName = 'C:\Projetos\Tk-GuardaIB\Banco\Tkautoib.gdb'
    Options = []
    Left = 24
    Top = 120
  end
  object IBLogService1: TIBLogService
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    Left = 24
    Top = 176
  end
  object IBServerProperties1: TIBServerProperties
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    Options = []
    Left = 24
    Top = 240
  end
  object OpenDialog1: TOpenDialog
    Left = 512
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Arquivos de Log (*.log)|*.log|Todos os Arquivos (*.*)|*.*'
    Left = 512
    Top = 56
  end
  object IBSQLGen_id: TIBSQL
    Database = IBDatabase1
    ParamCheck = True
    SQL.Strings = (
      'SELECT GEN_ID(GeneratorName, IncrementValue) FROM RDB$DATABASE')
    Transaction = IBTransaction1
    Left = 112
    Top = 240
  end
  object DstCUB: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CUB'
      'where'
      '  COD_CUB = :OLD_COD_CUB')
    InsertSQL.Strings = (
      'insert into CUB'
      
        '  (NUM_BOMBAS, ULTATUAL, ULTATUALCODSETOR, ULTATUALCODSETORUSER,' +
        ' DATAHORA, '
      '   ENABLED, OBS)'
      'values'
      
        '  (:NUM_BOMBAS, :ULTATUAL, :ULTATUALCODSETOR, :ULTATUALCODSETORU' +
        'SER, :DATAHORA, '
      '   :ENABLED, :OBS)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_CUB,'
      '  NUM_BOMBAS,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER,'
      '  DATAHORA,'
      '  ENABLED,'
      '  OBS'
      'from CUB '
      'where'
      '  COD_CUB = :COD_CUB')
    SelectSQL.Strings = (
      'select * from CUB')
    ModifySQL.Strings = (
      'update CUB'
      'set'
      '  NUM_BOMBAS = :NUM_BOMBAS,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  DATAHORA = :DATAHORA,'
      '  ENABLED = :ENABLED,'
      '  OBS = :OBS'
      'where'
      '  COD_CUB = :OLD_COD_CUB')
    Left = 176
    Top = 8
  end
  object DstTanque: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TANQUE'
      'where'
      '  COD_TANQUE = :OLD_COD_TANQUE')
    InsertSQL.Strings = (
      'insert into TANQUE'
      
        '  (COD_PRODUTOS, DATAHORA, ENABLED, ID_TANQUE, LITROS, OBS, ULTA' +
        'TUAL, ULTATUALCODSETOR, '
      '   ULTATUALCODSETORUSER, LITROS_ATUAL)'
      'values'
      
        '  (:COD_PRODUTOS, :DATAHORA, :ENABLED, :ID_TANQUE, :LITROS, :OBS' +
        ', :ULTATUAL, '
      '   :ULTATUALCODSETOR, :ULTATUALCODSETORUSER, :LITROS_ATUAL)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_TANQUE,'
      '  ID_TANQUE,'
      '  LITROS,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER,'
      '  DATAHORA,'
      '  ENABLED,'
      '  OBS,'
      '  COD_PRODUTOS,'
      '  LITROS_ATUAL'
      'from TANQUE '
      'where'
      '  COD_TANQUE = :COD_TANQUE')
    SelectSQL.Strings = (
      
        'select COD_PRODUTOS, COD_TANQUE, DATAHORA, ENABLED, ID_TANQUE, L' +
        'ITROS, OBS, ULTATUAL, ULTATUALCODSETOR, ULTATUALCODSETORUSER, LI' +
        'TROS_ATUAL, PRODUTOS.NOME from TANQUE'
      
        'left outer join PRODUTOS on (TANQUE.COD_PRODUTOS = PRODUTOS.COD_' +
        'PRODUTOS)'
      'order  by ID_TANQUE')
    ModifySQL.Strings = (
      'update TANQUE'
      'set'
      '  COD_PRODUTOS = :COD_PRODUTOS,'
      '  DATAHORA = :DATAHORA,'
      '  ENABLED = :ENABLED,'
      '  ID_TANQUE = :ID_TANQUE,'
      '  LITROS = :LITROS,'
      '  OBS = :OBS,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  LITROS_ATUAL = :LITROS_ATUAL'
      'where'
      '  COD_TANQUE = :OLD_COD_TANQUE')
    Left = 176
    Top = 64
    object DstTanqueCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'TANQUE.COD_TANQUE'
      Required = True
    end
    object DstTanqueID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'TANQUE.ID_TANQUE'
      Required = True
    end
    object DstTanqueLITROS: TIBBCDField
      FieldName = 'LITROS'
      Origin = 'TANQUE.LITROS'
      Required = True
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstTanqueULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'TANQUE.ULTATUAL'
    end
    object DstTanqueULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'TANQUE.ULTATUALCODSETOR'
    end
    object DstTanqueULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'TANQUE.ULTATUALCODSETORUSER'
    end
    object DstTanqueDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'TANQUE.DATAHORA'
    end
    object DstTanqueENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'TANQUE.ENABLED'
    end
    object DstTanqueOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'TANQUE.OBS'
      Size = 257
    end
    object DstTanqueLITROS_ATUAL: TIBBCDField
      FieldName = 'LITROS_ATUAL'
      Origin = 'TANQUE.LITROS_ATUAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstTanqueCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'TANQUE.COD_PRODUTOS'
    end
    object DstTanqueNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Size = 50
    end
  end
  object DstTribECF: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TRIBECF'
      'where'
      '  CODECF = :OLD_CODECF')
    InsertSQL.Strings = (
      'insert into TRIBECF'
      
        '  (DATAHORA, VALORTRIB, NOME, OBS, ULTATUAL, ULTATUALCODSETORUSE' +
        'R, ULTATUALCODSETOR, '
      '   ENABLED)'
      'values'
      
        '  (:DATAHORA, :VALORTRIB, :NOME, :OBS, :ULTATUAL, :ULTATUALCODSE' +
        'TORUSER, '
      '   :ULTATUALCODSETOR, :ENABLED)')
    RefreshSQL.Strings = (
      'Select '
      '  CODECF,'
      '  DATAHORA,'
      '  VALORTRIB,'
      '  NOME,'
      '  OBS,'
      '  ULTATUAL,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR,'
      '  ENABLED'
      'from TRIBECF '
      'where'
      '  CODECF = :CODECF')
    SelectSQL.Strings = (
      'select * from TRIBECF')
    ModifySQL.Strings = (
      'update TRIBECF'
      'set'
      '  DATAHORA = :DATAHORA,'
      '  VALORTRIB = :VALORTRIB,'
      '  NOME = :NOME,'
      '  OBS = :OBS,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ENABLED = :ENABLED'
      'where'
      '  CODECF = :OLD_CODECF')
    Left = 176
    Top = 120
  end
  object DstSintegra_R60: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from SINTEGRA_R60'
      'where'
      '  COD_SINTEGRA_R60 = :OLD_COD_SINTEGRA_R60')
    InsertSQL.Strings = (
      'insert into SINTEGRA_R60'
      
        '  (NRO_SERIE_EQP, NRO_ORDEM_EQP, MODELO_DOC, BRANCOS_60M, R60M, ' +
        'DATA_EMISSAO, '
      
        '   CANCELAMENTO, DESCONTO, SUBSTITUICAO_TRIBUTARIA, ISENTO, NAO_' +
        'INCIDENCIA, '
      
        '   ISSQN, ALIQUOTA01, VALOR_TPARCIAL01, BRANCOS_60A01, R60A01, A' +
        'LIQUOTA02, '
      
        '   VALOR_TPARCIAL02, BRANCOS_60A02, R60A02, ALIQUOTA03, VALOR_TP' +
        'ARCIAL03, '
      
        '   BRANCOS_60A03, R60A03, ALIQUOTA04, VALOR_TPARCIAL04, BRANCOS_' +
        '60A04, '
      
        '   R60A04, ALIQUOTA05, VALOR_TPARCIAL05, BRANCOS_60A05, R60A05, ' +
        'DATAHORA, '
      
        '   ULTATUAL, ULTATUALCODSETORUSER, ULTATUALCODSETOR, NRO_CONTADO' +
        'R_INICIO, '
      
        '   NRO_CONTADOR_FIM, NRO_CONTADOR_Z, CONTADOR_REINICIO, VALOR_TO' +
        'TAL_GERAL, '
      '   VALOR_VENDA_BRUTA)'
      'values'
      
        '  (:NRO_SERIE_EQP, :NRO_ORDEM_EQP, :MODELO_DOC, :BRANCOS_60M, :R' +
        '60M, :DATA_EMISSAO, '
      
        '   :CANCELAMENTO, :DESCONTO, :SUBSTITUICAO_TRIBUTARIA, :ISENTO, ' +
        ':NAO_INCIDENCIA, '
      
        '   :ISSQN, :ALIQUOTA01, :VALOR_TPARCIAL01, :BRANCOS_60A01, :R60A' +
        '01, :ALIQUOTA02, '
      
        '   :VALOR_TPARCIAL02, :BRANCOS_60A02, :R60A02, :ALIQUOTA03, :VAL' +
        'OR_TPARCIAL03, '
      
        '   :BRANCOS_60A03, :R60A03, :ALIQUOTA04, :VALOR_TPARCIAL04, :BRA' +
        'NCOS_60A04, '
      
        '   :R60A04, :ALIQUOTA05, :VALOR_TPARCIAL05, :BRANCOS_60A05, :R60' +
        'A05, :DATAHORA, '
      
        '   :ULTATUAL, :ULTATUALCODSETORUSER, :ULTATUALCODSETOR, :NRO_CON' +
        'TADOR_INICIO, '
      
        '   :NRO_CONTADOR_FIM, :NRO_CONTADOR_Z, :CONTADOR_REINICIO, :VALO' +
        'R_TOTAL_GERAL, '
      '   :VALOR_VENDA_BRUTA)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_SINTEGRA_R60,'
      '  NRO_SERIE_EQP,'
      '  NRO_ORDEM_EQP,'
      '  MODELO_DOC,'
      '  BRANCOS_60M,'
      '  R60M,'
      '  DATA_EMISSAO,'
      '  CANCELAMENTO,'
      '  DESCONTO,'
      '  SUBSTITUICAO_TRIBUTARIA,'
      '  ISENTO,'
      '  NAO_INCIDENCIA,'
      '  ISSQN,'
      '  ALIQUOTA01,'
      '  VALOR_TPARCIAL01,'
      '  BRANCOS_60A01,'
      '  R60A01,'
      '  ALIQUOTA02,'
      '  VALOR_TPARCIAL02,'
      '  BRANCOS_60A02,'
      '  R60A02,'
      '  ALIQUOTA03,'
      '  VALOR_TPARCIAL03,'
      '  BRANCOS_60A03,'
      '  R60A03,'
      '  ALIQUOTA04,'
      '  VALOR_TPARCIAL04,'
      '  BRANCOS_60A04,'
      '  R60A04,'
      '  ALIQUOTA05,'
      '  VALOR_TPARCIAL05,'
      '  BRANCOS_60A05,'
      '  R60A05,'
      '  DATAHORA,'
      '  ULTATUAL,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR,'
      '  NRO_CONTADOR_INICIO,'
      '  NRO_CONTADOR_FIM,'
      '  NRO_CONTADOR_Z,'
      '  CONTADOR_REINICIO,'
      '  VALOR_TOTAL_GERAL,'
      '  VALOR_VENDA_BRUTA'
      'from SINTEGRA_R60 '
      'where'
      '  COD_SINTEGRA_R60 = :COD_SINTEGRA_R60')
    SelectSQL.Strings = (
      'select * from SINTEGRA_R60'
      'ORDER BY DATA_EMISSAO DESC, NRO_SERIE_EQP')
    ModifySQL.Strings = (
      'update SINTEGRA_R60'
      'set'
      '  NRO_SERIE_EQP = :NRO_SERIE_EQP,'
      '  NRO_ORDEM_EQP = :NRO_ORDEM_EQP,'
      '  MODELO_DOC = :MODELO_DOC,'
      '  BRANCOS_60M = :BRANCOS_60M,'
      '  R60M = :R60M,'
      '  DATA_EMISSAO = :DATA_EMISSAO,'
      '  CANCELAMENTO = :CANCELAMENTO,'
      '  DESCONTO = :DESCONTO,'
      '  SUBSTITUICAO_TRIBUTARIA = :SUBSTITUICAO_TRIBUTARIA,'
      '  ISENTO = :ISENTO,'
      '  NAO_INCIDENCIA = :NAO_INCIDENCIA,'
      '  ISSQN = :ISSQN,'
      '  ALIQUOTA01 = :ALIQUOTA01,'
      '  VALOR_TPARCIAL01 = :VALOR_TPARCIAL01,'
      '  BRANCOS_60A01 = :BRANCOS_60A01,'
      '  R60A01 = :R60A01,'
      '  ALIQUOTA02 = :ALIQUOTA02,'
      '  VALOR_TPARCIAL02 = :VALOR_TPARCIAL02,'
      '  BRANCOS_60A02 = :BRANCOS_60A02,'
      '  R60A02 = :R60A02,'
      '  ALIQUOTA03 = :ALIQUOTA03,'
      '  VALOR_TPARCIAL03 = :VALOR_TPARCIAL03,'
      '  BRANCOS_60A03 = :BRANCOS_60A03,'
      '  R60A03 = :R60A03,'
      '  ALIQUOTA04 = :ALIQUOTA04,'
      '  VALOR_TPARCIAL04 = :VALOR_TPARCIAL04,'
      '  BRANCOS_60A04 = :BRANCOS_60A04,'
      '  R60A04 = :R60A04,'
      '  ALIQUOTA05 = :ALIQUOTA05,'
      '  VALOR_TPARCIAL05 = :VALOR_TPARCIAL05,'
      '  BRANCOS_60A05 = :BRANCOS_60A05,'
      '  R60A05 = :R60A05,'
      '  DATAHORA = :DATAHORA,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  NRO_CONTADOR_INICIO = :NRO_CONTADOR_INICIO,'
      '  NRO_CONTADOR_FIM = :NRO_CONTADOR_FIM,'
      '  NRO_CONTADOR_Z = :NRO_CONTADOR_Z,'
      '  CONTADOR_REINICIO = :CONTADOR_REINICIO,'
      '  VALOR_TOTAL_GERAL = :VALOR_TOTAL_GERAL,'
      '  VALOR_VENDA_BRUTA = :VALOR_VENDA_BRUTA'
      'where'
      '  COD_SINTEGRA_R60 = :OLD_COD_SINTEGRA_R60')
    Left = 344
    Top = 80
    object DstSintegra_R60COD_SINTEGRA_R60: TIntegerField
      FieldName = 'COD_SINTEGRA_R60'
      Origin = 'SINTEGRA_R60.COD_SINTEGRA_R60'
      Required = True
    end
    object DstSintegra_R60NRO_SERIE_EQP: TIBStringField
      FieldName = 'NRO_SERIE_EQP'
      Origin = 'SINTEGRA_R60.NRO_SERIE_EQP'
    end
    object DstSintegra_R60NRO_ORDEM_EQP: TIBStringField
      FieldName = 'NRO_ORDEM_EQP'
      Origin = 'SINTEGRA_R60.NRO_ORDEM_EQP'
      Size = 3
    end
    object DstSintegra_R60MODELO_DOC: TIBStringField
      FieldName = 'MODELO_DOC'
      Origin = 'SINTEGRA_R60.MODELO_DOC'
      FixedChar = True
      Size = 2
    end
    object DstSintegra_R60BRANCOS_60M: TIBStringField
      FieldName = 'BRANCOS_60M'
      Origin = 'SINTEGRA_R60.BRANCOS_60M'
      Size = 37
    end
    object DstSintegra_R60R60M: TIBStringField
      FieldName = 'R60M'
      Origin = 'SINTEGRA_R60.R60M'
      Size = 256
    end
    object DstSintegra_R60DATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
      Origin = 'SINTEGRA_R60.DATA_EMISSAO'
    end
    object DstSintegra_R60CANCELAMENTO: TIBBCDField
      FieldName = 'CANCELAMENTO'
      Origin = 'SINTEGRA_R60.CANCELAMENTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60DESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'SINTEGRA_R60.DESCONTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60SUBSTITUICAO_TRIBUTARIA: TIBBCDField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
      Origin = 'SINTEGRA_R60.SUBSTITUICAO_TRIBUTARIA'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60ISENTO: TIBBCDField
      FieldName = 'ISENTO'
      Origin = 'SINTEGRA_R60.ISENTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60NAO_INCIDENCIA: TIBBCDField
      FieldName = 'NAO_INCIDENCIA'
      Origin = 'SINTEGRA_R60.NAO_INCIDENCIA'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60ISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = 'SINTEGRA_R60.ISSQN'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60ALIQUOTA01: TIBBCDField
      FieldName = 'ALIQUOTA01'
      Origin = 'SINTEGRA_R60.ALIQUOTA01'
      DisplayFormat = '###,##0.00'
      Precision = 4
      Size = 2
    end
    object DstSintegra_R60VALOR_TPARCIAL01: TIBBCDField
      FieldName = 'VALOR_TPARCIAL01'
      Origin = 'SINTEGRA_R60.VALOR_TPARCIAL01'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60BRANCOS_60A01: TIBStringField
      FieldName = 'BRANCOS_60A01'
      Origin = 'SINTEGRA_R60.BRANCOS_60A01'
      Size = 79
    end
    object DstSintegra_R60R60A01: TIBStringField
      FieldName = 'R60A01'
      Origin = 'SINTEGRA_R60.R60A01'
      Size = 256
    end
    object DstSintegra_R60ALIQUOTA02: TIBBCDField
      FieldName = 'ALIQUOTA02'
      Origin = 'SINTEGRA_R60.ALIQUOTA02'
      DisplayFormat = '###,##0.00'
      Precision = 4
      Size = 2
    end
    object DstSintegra_R60VALOR_TPARCIAL02: TIBBCDField
      FieldName = 'VALOR_TPARCIAL02'
      Origin = 'SINTEGRA_R60.VALOR_TPARCIAL02'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60BRANCOS_60A02: TIBStringField
      FieldName = 'BRANCOS_60A02'
      Origin = 'SINTEGRA_R60.BRANCOS_60A02'
      Size = 79
    end
    object DstSintegra_R60R60A02: TIBStringField
      FieldName = 'R60A02'
      Origin = 'SINTEGRA_R60.R60A02'
      Size = 256
    end
    object DstSintegra_R60ALIQUOTA03: TIBBCDField
      FieldName = 'ALIQUOTA03'
      Origin = 'SINTEGRA_R60.ALIQUOTA03'
      DisplayFormat = '###,##0.00'
      Precision = 4
      Size = 2
    end
    object DstSintegra_R60VALOR_TPARCIAL03: TIBBCDField
      FieldName = 'VALOR_TPARCIAL03'
      Origin = 'SINTEGRA_R60.VALOR_TPARCIAL03'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60BRANCOS_60A03: TIBStringField
      FieldName = 'BRANCOS_60A03'
      Origin = 'SINTEGRA_R60.BRANCOS_60A03'
      Size = 79
    end
    object DstSintegra_R60R60A03: TIBStringField
      FieldName = 'R60A03'
      Origin = 'SINTEGRA_R60.R60A03'
      Size = 256
    end
    object DstSintegra_R60ALIQUOTA04: TIBBCDField
      FieldName = 'ALIQUOTA04'
      Origin = 'SINTEGRA_R60.ALIQUOTA04'
      DisplayFormat = '###,##0.00'
      Precision = 4
      Size = 2
    end
    object DstSintegra_R60VALOR_TPARCIAL04: TIBBCDField
      FieldName = 'VALOR_TPARCIAL04'
      Origin = 'SINTEGRA_R60.VALOR_TPARCIAL04'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60BRANCOS_60A04: TIBStringField
      FieldName = 'BRANCOS_60A04'
      Origin = 'SINTEGRA_R60.BRANCOS_60A04'
      Size = 79
    end
    object DstSintegra_R60R60A04: TIBStringField
      FieldName = 'R60A04'
      Origin = 'SINTEGRA_R60.R60A04'
      Size = 256
    end
    object DstSintegra_R60ALIQUOTA05: TIBBCDField
      FieldName = 'ALIQUOTA05'
      Origin = 'SINTEGRA_R60.ALIQUOTA05'
      DisplayFormat = '###,##0.00'
      Precision = 4
      Size = 2
    end
    object DstSintegra_R60VALOR_TPARCIAL05: TIBBCDField
      FieldName = 'VALOR_TPARCIAL05'
      Origin = 'SINTEGRA_R60.VALOR_TPARCIAL05'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60BRANCOS_60A05: TIBStringField
      FieldName = 'BRANCOS_60A05'
      Origin = 'SINTEGRA_R60.BRANCOS_60A05'
      Size = 79
    end
    object DstSintegra_R60R60A05: TIBStringField
      FieldName = 'R60A05'
      Origin = 'SINTEGRA_R60.R60A05'
      Size = 256
    end
    object DstSintegra_R60DATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'SINTEGRA_R60.DATAHORA'
    end
    object DstSintegra_R60ULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'SINTEGRA_R60.ULTATUAL'
    end
    object DstSintegra_R60ULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'SINTEGRA_R60.ULTATUALCODSETORUSER'
    end
    object DstSintegra_R60ULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'SINTEGRA_R60.ULTATUALCODSETOR'
    end
    object DstSintegra_R60NRO_CONTADOR_INICIO: TIntegerField
      FieldName = 'NRO_CONTADOR_INICIO'
      Origin = 'SINTEGRA_R60.NRO_CONTADOR_INICIO'
    end
    object DstSintegra_R60NRO_CONTADOR_FIM: TIntegerField
      FieldName = 'NRO_CONTADOR_FIM'
      Origin = 'SINTEGRA_R60.NRO_CONTADOR_FIM'
    end
    object DstSintegra_R60NRO_CONTADOR_Z: TIntegerField
      FieldName = 'NRO_CONTADOR_Z'
      Origin = 'SINTEGRA_R60.NRO_CONTADOR_Z'
    end
    object DstSintegra_R60CONTADOR_REINICIO: TIntegerField
      FieldName = 'CONTADOR_REINICIO'
      Origin = 'SINTEGRA_R60.CONTADOR_REINICIO'
    end
    object DstSintegra_R60VALOR_TOTAL_GERAL: TIBBCDField
      FieldName = 'VALOR_TOTAL_GERAL'
      Origin = 'SINTEGRA_R60.VALOR_TOTAL_GERAL'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object DstSintegra_R60VALOR_VENDA_BRUTA: TIBBCDField
      FieldName = 'VALOR_VENDA_BRUTA'
      Origin = 'SINTEGRA_R60.VALOR_VENDA_BRUTA'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object DstSintegra_Info: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from SINTEGRA_INFO'
      'where'
      '  COD_SINTEGRA_INFO = :OLD_COD_SINTEGRA_INFO')
    InsertSQL.Strings = (
      'insert into SINTEGRA_INFO'
      
        '  (CGC, INSC_EST, NOME_CONTRIBUINTE, MUNICIPIO, UF, FAX, COD_CON' +
        'VENIO, '
      
        '   COD_OPERACAO, COD_FINALIDADE, LOGRADOURO, NRO, COMPLEMENTO, B' +
        'AIRRO, '
      
        '   CEP, NOME_CONTATO, TELEFONE, DATAHORA, ULTATUAL, ULTATUALCODS' +
        'ETORUSER, '
      
        '   ULTATUALCODSETOR, ENABLED, CONTRIBUINTE_IPI, SUBSTITUTO_TRIBU' +
        'TARIO, '
      '   ENABLED_SINTEGRA)'
      'values'
      
        '  (:CGC, :INSC_EST, :NOME_CONTRIBUINTE, :MUNICIPIO, :UF, :FAX, :' +
        'COD_CONVENIO, '
      
        '   :COD_OPERACAO, :COD_FINALIDADE, :LOGRADOURO, :NRO, :COMPLEMEN' +
        'TO, :BAIRRO, '
      
        '   :CEP, :NOME_CONTATO, :TELEFONE, :DATAHORA, :ULTATUAL, :ULTATU' +
        'ALCODSETORUSER, '
      
        '   :ULTATUALCODSETOR, :ENABLED, :CONTRIBUINTE_IPI, :SUBSTITUTO_T' +
        'RIBUTARIO, '
      '   :ENABLED_SINTEGRA)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_SINTEGRA_INFO,'
      '  CGC,'
      '  INSC_EST,'
      '  NOME_CONTRIBUINTE,'
      '  MUNICIPIO,'
      '  UF,'
      '  FAX,'
      '  COD_CONVENIO,'
      '  COD_OPERACAO,'
      '  COD_FINALIDADE,'
      '  LOGRADOURO,'
      '  NRO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CEP,'
      '  NOME_CONTATO,'
      '  TELEFONE,'
      '  DATAHORA,'
      '  ULTATUAL,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR,'
      '  ENABLED,'
      '  CONTRIBUINTE_IPI,'
      '  SUBSTITUTO_TRIBUTARIO,'
      '  ENABLED_SINTEGRA'
      'from SINTEGRA_INFO '
      'where'
      '  COD_SINTEGRA_INFO = :COD_SINTEGRA_INFO')
    SelectSQL.Strings = (
      'select * from SINTEGRA_INFO')
    ModifySQL.Strings = (
      'update SINTEGRA_INFO'
      'set'
      '  CGC = :CGC,'
      '  INSC_EST = :INSC_EST,'
      '  NOME_CONTRIBUINTE = :NOME_CONTRIBUINTE,'
      '  MUNICIPIO = :MUNICIPIO,'
      '  UF = :UF,'
      '  FAX = :FAX,'
      '  COD_CONVENIO = :COD_CONVENIO,'
      '  COD_OPERACAO = :COD_OPERACAO,'
      '  COD_FINALIDADE = :COD_FINALIDADE,'
      '  LOGRADOURO = :LOGRADOURO,'
      '  NRO = :NRO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  NOME_CONTATO = :NOME_CONTATO,'
      '  TELEFONE = :TELEFONE,'
      '  DATAHORA = :DATAHORA,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ENABLED = :ENABLED,'
      '  CONTRIBUINTE_IPI = :CONTRIBUINTE_IPI,'
      '  SUBSTITUTO_TRIBUTARIO = :SUBSTITUTO_TRIBUTARIO,'
      '  ENABLED_SINTEGRA = :ENABLED_SINTEGRA'
      'where'
      '  COD_SINTEGRA_INFO = :OLD_COD_SINTEGRA_INFO')
    Left = 344
    Top = 32
    object DstSintegra_InfoCOD_SINTEGRA_INFO: TIntegerField
      FieldName = 'COD_SINTEGRA_INFO'
      Origin = 'SINTEGRA_INFO.COD_SINTEGRA_INFO'
      Required = True
    end
    object DstSintegra_InfoINSC_EST: TIBStringField
      FieldName = 'INSC_EST'
      Origin = 'SINTEGRA_INFO.INSC_EST'
      Size = 30
    end
    object DstSintegra_InfoNOME_CONTRIBUINTE: TIBStringField
      FieldName = 'NOME_CONTRIBUINTE'
      Origin = 'SINTEGRA_INFO.NOME_CONTRIBUINTE'
      Size = 50
    end
    object DstSintegra_InfoMUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Origin = 'SINTEGRA_INFO.MUNICIPIO'
      Size = 50
    end
    object DstSintegra_InfoUF: TIBStringField
      FieldName = 'UF'
      Origin = 'SINTEGRA_INFO.UF'
      Size = 2
    end
    object DstSintegra_InfoFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'SINTEGRA_INFO.FAX'
      Size = 30
    end
    object DstSintegra_InfoCOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
      Origin = 'SINTEGRA_INFO.COD_CONVENIO'
    end
    object DstSintegra_InfoCOD_OPERACAO: TIntegerField
      FieldName = 'COD_OPERACAO'
      Origin = 'SINTEGRA_INFO.COD_OPERACAO'
    end
    object DstSintegra_InfoCOD_FINALIDADE: TIntegerField
      FieldName = 'COD_FINALIDADE'
      Origin = 'SINTEGRA_INFO.COD_FINALIDADE'
    end
    object DstSintegra_InfoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = 'SINTEGRA_INFO.LOGRADOURO'
      Size = 50
    end
    object DstSintegra_InfoNRO: TIntegerField
      FieldName = 'NRO'
      Origin = 'SINTEGRA_INFO.NRO'
    end
    object DstSintegra_InfoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'SINTEGRA_INFO.COMPLEMENTO'
      Size = 50
    end
    object DstSintegra_InfoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'SINTEGRA_INFO.BAIRRO'
      Size = 50
    end
    object DstSintegra_InfoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'SINTEGRA_INFO.CEP'
      Size = 30
    end
    object DstSintegra_InfoNOME_CONTATO: TIBStringField
      FieldName = 'NOME_CONTATO'
      Origin = 'SINTEGRA_INFO.NOME_CONTATO'
      Size = 30
    end
    object DstSintegra_InfoTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'SINTEGRA_INFO.TELEFONE'
      Size = 30
    end
    object DstSintegra_InfoDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'SINTEGRA_INFO.DATAHORA'
    end
    object DstSintegra_InfoULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'SINTEGRA_INFO.ULTATUAL'
    end
    object DstSintegra_InfoULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'SINTEGRA_INFO.ULTATUALCODSETORUSER'
    end
    object DstSintegra_InfoULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'SINTEGRA_INFO.ULTATUALCODSETOR'
    end
    object DstSintegra_InfoENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'SINTEGRA_INFO.ENABLED'
    end
    object DstSintegra_InfoCONTRIBUINTE_IPI: TSmallintField
      FieldName = 'CONTRIBUINTE_IPI'
      Origin = 'SINTEGRA_INFO.CONTRIBUINTE_IPI'
      Required = True
    end
    object DstSintegra_InfoSUBSTITUTO_TRIBUTARIO: TSmallintField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Origin = 'SINTEGRA_INFO.SUBSTITUTO_TRIBUTARIO'
      Required = True
    end
    object DstSintegra_InfoENABLED_SINTEGRA: TSmallintField
      FieldName = 'ENABLED_SINTEGRA'
      Origin = 'SINTEGRA_INFO.ENABLED_SINTEGRA'
      Required = True
    end
    object DstSintegra_InfoCGC: TIBStringField
      FieldName = 'CGC'
      Origin = 'SINTEGRA_INFO.CGC'
      Size = 30
    end
  end
  object DstSintegra_GNRE: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SINTEGRA_GNRE'
      'where'
      '  COD_SINTEGRA_GNRE = :OLD_COD_SINTEGRA_GNRE')
    InsertSQL.Strings = (
      'insert into SINTEGRA_GNRE'
      
        '  (UF_SUBST, UF_FAVORECIDA, BANCO_GNRE, AGENCIA_GNRE, NRO_GNRE, ' +
        'VALOR_GNRE, '
      
        '   DATA_VENCIMENTO, MES_ANO_REFERENCIA, NRO_CONVENIO, ULTATUAL, ' +
        'ULTATUALCODSETOR, '
      
        '   BRANCOS, ULTATUALCODSETORUSER, DATAHORA_GNRE, ENABLED, DATAHO' +
        'RA, CNPJ_SUBST)'
      'values'
      
        '  (:UF_SUBST, :UF_FAVORECIDA, :BANCO_GNRE, :AGENCIA_GNRE, :NRO_G' +
        'NRE, :VALOR_GNRE, '
      
        '   :DATA_VENCIMENTO, :MES_ANO_REFERENCIA, :NRO_CONVENIO, :ULTATU' +
        'AL, :ULTATUALCODSETOR, '
      
        '   :BRANCOS, :ULTATUALCODSETORUSER, :DATAHORA_GNRE, :ENABLED, :D' +
        'ATAHORA, '
      '   :CNPJ_SUBST)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_SINTEGRA_GNRE,'
      '  UF_SUBST,'
      '  UF_FAVORECIDA,'
      '  BANCO_GNRE,'
      '  AGENCIA_GNRE,'
      '  NRO_GNRE,'
      '  VALOR_GNRE,'
      '  DATA_VENCIMENTO,'
      '  MES_ANO_REFERENCIA,'
      '  NRO_CONVENIO,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  BRANCOS,'
      '  ULTATUALCODSETORUSER,'
      '  DATAHORA_GNRE,'
      '  ENABLED,'
      '  DATAHORA,'
      '  IE_SUBST,'
      '  CNPJ_SUBST'
      'from SINTEGRA_GNRE '
      'where'
      '  COD_SINTEGRA_GNRE = :COD_SINTEGRA_GNRE')
    SelectSQL.Strings = (
      'select * from SINTEGRA_GNRE')
    ModifySQL.Strings = (
      'update SINTEGRA_GNRE'
      'set'
      '  UF_SUBST = :UF_SUBST,'
      '  UF_FAVORECIDA = :UF_FAVORECIDA,'
      '  BANCO_GNRE = :BANCO_GNRE,'
      '  AGENCIA_GNRE = :AGENCIA_GNRE,'
      '  NRO_GNRE = :NRO_GNRE,'
      '  VALOR_GNRE = :VALOR_GNRE,'
      '  DATA_VENCIMENTO = :DATA_VENCIMENTO,'
      '  MES_ANO_REFERENCIA = :MES_ANO_REFERENCIA,'
      '  NRO_CONVENIO = :NRO_CONVENIO,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  BRANCOS = :BRANCOS,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  DATAHORA_GNRE = :DATAHORA_GNRE,'
      '  ENABLED = :ENABLED,'
      '  DATAHORA = :DATAHORA,'
      '  CNPJ_SUBST = :CNPJ_SUBST'
      'where'
      '  COD_SINTEGRA_GNRE = :OLD_COD_SINTEGRA_GNRE')
    Left = 347
    Top = 136
    object DstSintegra_GNRECOD_SINTEGRA_GNRE: TIntegerField
      FieldName = 'COD_SINTEGRA_GNRE'
      Origin = 'SINTEGRA_GNRE.COD_SINTEGRA_GNRE'
      Required = True
    end
    object DstSintegra_GNREUF_SUBST: TIBStringField
      FieldName = 'UF_SUBST'
      Origin = 'SINTEGRA_GNRE.UF_SUBST'
      Size = 2
    end
    object DstSintegra_GNREUF_FAVORECIDA: TIBStringField
      FieldName = 'UF_FAVORECIDA'
      Origin = 'SINTEGRA_GNRE.UF_FAVORECIDA'
      Size = 2
    end
    object DstSintegra_GNREBANCO_GNRE: TIBStringField
      FieldName = 'BANCO_GNRE'
      Origin = 'SINTEGRA_GNRE.BANCO_GNRE'
      Size = 5
    end
    object DstSintegra_GNREAGENCIA_GNRE: TIBStringField
      FieldName = 'AGENCIA_GNRE'
      Origin = 'SINTEGRA_GNRE.AGENCIA_GNRE'
      Size = 5
    end
    object DstSintegra_GNRENRO_GNRE: TIBStringField
      FieldName = 'NRO_GNRE'
      Origin = 'SINTEGRA_GNRE.NRO_GNRE'
      Size = 25
    end
    object DstSintegra_GNREVALOR_GNRE: TIBBCDField
      FieldName = 'VALOR_GNRE'
      Origin = 'SINTEGRA_GNRE.VALOR_GNRE'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstSintegra_GNREDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'SINTEGRA_GNRE.DATA_VENCIMENTO'
    end
    object DstSintegra_GNREMES_ANO_REFERENCIA: TIBStringField
      FieldName = 'MES_ANO_REFERENCIA'
      Origin = 'SINTEGRA_GNRE.MES_ANO_REFERENCIA'
      Size = 10
    end
    object DstSintegra_GNRENRO_CONVENIO: TIBStringField
      FieldName = 'NRO_CONVENIO'
      Origin = 'SINTEGRA_GNRE.NRO_CONVENIO'
      Size = 30
    end
    object DstSintegra_GNREULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'SINTEGRA_GNRE.ULTATUAL'
    end
    object DstSintegra_GNREULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'SINTEGRA_GNRE.ULTATUALCODSETOR'
    end
    object DstSintegra_GNREBRANCOS: TIBStringField
      FieldName = 'BRANCOS'
      Origin = 'SINTEGRA_GNRE.BRANCOS'
      Size = 79
    end
    object DstSintegra_GNREULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'SINTEGRA_GNRE.ULTATUALCODSETORUSER'
    end
    object DstSintegra_GNREDATAHORA_GNRE: TDateTimeField
      FieldName = 'DATAHORA_GNRE'
      Origin = 'SINTEGRA_GNRE.DATAHORA_GNRE'
    end
    object DstSintegra_GNREENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'SINTEGRA_GNRE.ENABLED'
    end
    object DstSintegra_GNREDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'SINTEGRA_GNRE.DATAHORA'
    end
    object DstSintegra_GNREIE_SUBST: TIBStringField
      FieldName = 'IE_SUBST'
      Origin = 'SINTEGRA_GNRE.IE_SUBST'
      Size = 30
    end
    object DstSintegra_GNRECNPJ_SUBST: TIBStringField
      FieldName = 'CNPJ_SUBST'
      Origin = 'SINTEGRA_GNRE.CNPJ_SUBST'
      Size = 30
    end
  end
end
