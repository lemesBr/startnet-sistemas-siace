object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 588
  Top = 242
  Height = 198
  Width = 379
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\Siace\Siac-Enterprise\POSTO\Banco\TKPOSTO.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 16
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
    Top = 72
  end
end
