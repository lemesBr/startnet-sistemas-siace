object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 173
  Width = 87
  object Connection: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object Cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 104
  end
  object Link: TFDPhysFBDriverLink
    Left = 32
    Top = 56
  end
end
