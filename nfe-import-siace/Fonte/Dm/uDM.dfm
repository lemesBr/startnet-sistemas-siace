object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 345
  Width = 653
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    Left = 120
    Top = 48
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 120
    Top = 112
  end
  object FDMysqlConnection: TFDConnection
    Left = 120
    Top = 176
  end
  object FDFirebirdConnection: TFDConnection
    Left = 248
    Top = 176
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 264
    Top = 48
  end
  object FDEXISTS: TFDQuery
    Connection = FDFirebirdConnection
    SQL.Strings = (
      'SELECT COUNT(*) QTDE'
      'FROM RDB$RELATIONS'
      'WHERE RDB$FLAGS=1 AND RDB$RELATION_NAME=:TABLE_NAME')
    Left = 496
    Top = 96
    ParamData = <
      item
        Name = 'TABLE_NAME'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 31
        Value = Null
      end>
    object FDEXISTSQTDE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDCreateTable: TFDQuery
    Connection = FDFirebirdConnection
    SQL.Strings = (
      'CREATE TABLE IMPORTAR_XMLS ('
      '    CHAVE   VARCHAR(44) NOT NULL,'
      '    XML     BLOB SUB_TYPE 0 SEGMENT SIZE 4096,'
      '    STATUS  CHAR(1) DEFAULT '#39'A'#39' NOT NULL'
      ');')
    Left = 496
    Top = 152
  end
  object FDCreateView: TFDQuery
    Connection = FDFirebirdConnection
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_IMPORTAR_XMLS('
      '    CHAVE,'
      '    XML)'
      'AS'
      'SELECT'
      '    IX.CHAVE,'
      '    IX.XML'
      'FROM IMPORTAR_XMLS IX'
      'WHERE IX.STATUS = '#39'A'#39
      
        'AND IX.CHAVE NOT IN(SELECT NF.CHAVE_NFE FROM NOTASFISCAIS NF WHE' +
        'RE NF.DATA_EMISSAO >= '#39'2017-01-01'#39')')
    Left = 496
    Top = 216
  end
  object FDMImportar: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 248
    Top = 248
    object FDMImportarID: TIntegerField
      FieldName = 'ID'
    end
    object FDMImportarCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 44
    end
  end
end
