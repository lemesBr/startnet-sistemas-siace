object DM1: TDM1
  OldCreateOrder = False
  Left = 401
  Top = 186
  Height = 372
  Width = 692
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
    Active = True
    DefaultDatabase = IBDatabase1
    DefaultAction = TARollback
    Params.Strings = (
      'concurrency'
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
    DatabaseName = 'C:\siace\siace.gdb'
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
    Left = 104
    Top = 240
  end
  object sds_configuracoes: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CONFIGURACOES')
    Left = 104
    Top = 8
  end
end
