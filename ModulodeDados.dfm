object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 895
  Width = 1348
  object SQLC: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXFirebirdDriver20' +
        '0.bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=20.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver200.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=20.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=C:\StartNet_Sistemas\STARTNET.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False')
    Connected = True
    Left = 28
    Top = 16
  end
  object SPC_Usuarios: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_USUARIOS'
    Left = 423
    Top = 332
  end
  object SDS_Usuarios: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'SELECT * FROM USUARIOS ORDER BY NOME'
    DataSet.DataSource = DTS_Usuarios
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 498
    Top = 333
    object SDS_UsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_UsuariosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SDS_UsuariosSENHA: TStringField
      FieldName = 'SENHA'
      FixedChar = True
      Size = 15
    end
    object SDS_UsuariosDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object SDS_UsuariosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object SDS_UsuariosFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 50
    end
    object SDS_UsuariosEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      Size = 1
    end
    object SDS_UsuariosEDITAR: TStringField
      FieldName = 'EDITAR'
      Size = 1
    end
    object SDS_UsuariosINSERIR: TStringField
      FieldName = 'INSERIR'
      Size = 1
    end
    object SDS_UsuariosS01: TStringField
      FieldName = 'S01'
      Size = 1
    end
    object SDS_UsuariosS02: TStringField
      FieldName = 'S02'
      Size = 1
    end
    object SDS_UsuariosS03: TStringField
      FieldName = 'S03'
      Size = 1
    end
    object SDS_UsuariosS04: TStringField
      FieldName = 'S04'
      Size = 1
    end
    object SDS_UsuariosS05: TStringField
      FieldName = 'S05'
      Size = 1
    end
    object SDS_UsuariosS06: TStringField
      FieldName = 'S06'
      Size = 1
    end
    object SDS_UsuariosS07: TStringField
      FieldName = 'S07'
      Size = 1
    end
    object SDS_UsuariosS08: TStringField
      FieldName = 'S08'
      Size = 1
    end
    object SDS_UsuariosS09: TStringField
      FieldName = 'S09'
      Size = 1
    end
    object SDS_UsuariosS10: TStringField
      FieldName = 'S10'
      Size = 1
    end
    object SDS_UsuariosS11: TStringField
      FieldName = 'S11'
      Size = 1
    end
    object SDS_UsuariosS12: TStringField
      FieldName = 'S12'
      Size = 1
    end
    object SDS_UsuariosS13: TStringField
      FieldName = 'S13'
      Size = 1
    end
    object SDS_UsuariosS14: TStringField
      FieldName = 'S14'
      Size = 1
    end
    object SDS_UsuariosS15: TStringField
      FieldName = 'S15'
      Size = 1
    end
    object SDS_UsuariosS16: TStringField
      FieldName = 'S16'
      Size = 1
    end
    object SDS_UsuariosS17: TStringField
      FieldName = 'S17'
      Size = 1
    end
    object SDS_UsuariosS18: TStringField
      FieldName = 'S18'
      Size = 1
    end
    object SDS_UsuariosS19: TStringField
      FieldName = 'S19'
      Size = 1
    end
    object SDS_UsuariosS20: TStringField
      FieldName = 'S20'
      Size = 1
    end
    object SDS_UsuariosS21: TStringField
      FieldName = 'S21'
      Size = 1
    end
    object SDS_UsuariosS22: TStringField
      FieldName = 'S22'
      Size = 1
    end
    object SDS_UsuariosS23: TStringField
      FieldName = 'S23'
      Size = 1
    end
    object SDS_UsuariosS24: TStringField
      FieldName = 'S24'
      Size = 1
    end
    object SDS_UsuariosS25: TStringField
      FieldName = 'S25'
      Size = 1
    end
    object SDS_UsuariosS26: TStringField
      FieldName = 'S26'
      Size = 1
    end
    object SDS_UsuariosS27: TStringField
      FieldName = 'S27'
      Size = 1
    end
    object SDS_UsuariosS28: TStringField
      FieldName = 'S28'
      Size = 1
    end
    object SDS_UsuariosS29: TStringField
      FieldName = 'S29'
      Size = 1
    end
    object SDS_UsuariosS30: TStringField
      FieldName = 'S30'
      Size = 1
    end
    object SDS_UsuariosS31: TStringField
      FieldName = 'S31'
      Size = 1
    end
    object SDS_UsuariosS32: TStringField
      FieldName = 'S32'
      Size = 1
    end
    object SDS_UsuariosS33: TStringField
      FieldName = 'S33'
      Size = 1
    end
    object SDS_UsuariosS34: TStringField
      FieldName = 'S34'
      Size = 1
    end
    object SDS_UsuariosS35: TStringField
      FieldName = 'S35'
      Size = 1
    end
    object SDS_UsuariosS36: TStringField
      FieldName = 'S36'
      Size = 1
    end
    object SDS_UsuariosS37: TStringField
      FieldName = 'S37'
      Size = 1
    end
    object SDS_UsuariosS38: TStringField
      FieldName = 'S38'
      Size = 1
    end
    object SDS_UsuariosS39: TStringField
      FieldName = 'S39'
      Size = 1
    end
    object SDS_UsuariosS40: TStringField
      FieldName = 'S40'
      Size = 1
    end
    object SDS_UsuariosS41: TStringField
      FieldName = 'S41'
      Size = 1
    end
    object SDS_UsuariosS42: TStringField
      FieldName = 'S42'
      Size = 1
    end
    object SDS_UsuariosS43: TStringField
      FieldName = 'S43'
      Size = 1
    end
    object SDS_UsuariosS44: TStringField
      FieldName = 'S44'
      Size = 1
    end
    object SDS_UsuariosS45: TStringField
      FieldName = 'S45'
      Size = 1
    end
    object SDS_UsuariosS46: TStringField
      FieldName = 'S46'
      Size = 1
    end
    object SDS_UsuariosS47: TStringField
      FieldName = 'S47'
      Size = 1
    end
    object SDS_UsuariosS48: TStringField
      FieldName = 'S48'
      Size = 1
    end
    object SDS_UsuariosS49: TStringField
      FieldName = 'S49'
      Size = 1
    end
    object SDS_UsuariosS50: TStringField
      FieldName = 'S50'
      Size = 1
    end
    object SDS_UsuariosS51: TStringField
      FieldName = 'S51'
      Size = 1
    end
    object SDS_UsuariosS52: TStringField
      FieldName = 'S52'
      Size = 1
    end
    object SDS_UsuariosS53: TStringField
      FieldName = 'S53'
      Size = 1
    end
    object SDS_UsuariosS54: TStringField
      FieldName = 'S54'
      Size = 1
    end
    object SDS_UsuariosS55: TStringField
      FieldName = 'S55'
      Size = 1
    end
    object SDS_UsuariosS56: TStringField
      FieldName = 'S56'
      Size = 1
    end
    object SDS_UsuariosS57: TStringField
      FieldName = 'S57'
      Size = 1
    end
    object SDS_UsuariosS58: TStringField
      FieldName = 'S58'
      Size = 1
    end
    object SDS_UsuariosS59: TStringField
      FieldName = 'S59'
      Size = 1
    end
    object SDS_UsuariosS60: TStringField
      FieldName = 'S60'
      Size = 1
    end
    object SDS_UsuariosS61: TStringField
      FieldName = 'S61'
      Size = 1
    end
    object SDS_UsuariosS62: TStringField
      FieldName = 'S62'
      Size = 1
    end
    object SDS_UsuariosS63: TStringField
      FieldName = 'S63'
      Size = 1
    end
    object SDS_UsuariosS64: TStringField
      FieldName = 'S64'
      Size = 1
    end
    object SDS_UsuariosS65: TStringField
      FieldName = 'S65'
      Size = 1
    end
    object SDS_UsuariosS66: TStringField
      FieldName = 'S66'
      Size = 1
    end
    object SDS_UsuariosS67: TStringField
      FieldName = 'S67'
      Size = 1
    end
    object SDS_UsuariosS68: TStringField
      FieldName = 'S68'
      Size = 1
    end
    object SDS_UsuariosS69: TStringField
      FieldName = 'S69'
      Size = 1
    end
    object SDS_UsuariosS70: TStringField
      FieldName = 'S70'
      Size = 1
    end
    object SDS_UsuariosS71: TStringField
      FieldName = 'S71'
      Size = 1
    end
    object SDS_UsuariosS72: TStringField
      FieldName = 'S72'
      Size = 1
    end
    object SDS_UsuariosS73: TStringField
      FieldName = 'S73'
      Size = 1
    end
    object SDS_UsuariosS74: TStringField
      FieldName = 'S74'
      Size = 1
    end
    object SDS_UsuariosS75: TStringField
      FieldName = 'S75'
      Size = 1
    end
    object SDS_UsuariosS76: TStringField
      FieldName = 'S76'
      Size = 1
    end
    object SDS_UsuariosS77: TStringField
      FieldName = 'S77'
      Size = 1
    end
    object SDS_UsuariosS78: TStringField
      FieldName = 'S78'
      Size = 1
    end
    object SDS_UsuariosS79: TStringField
      FieldName = 'S79'
      Size = 1
    end
    object SDS_UsuariosS80: TStringField
      FieldName = 'S80'
      Size = 1
    end
    object SDS_UsuariosS81: TStringField
      FieldName = 'S81'
      Size = 1
    end
    object SDS_UsuariosS82: TStringField
      FieldName = 'S82'
      Size = 1
    end
    object SDS_UsuariosS83: TStringField
      FieldName = 'S83'
      Size = 1
    end
    object SDS_UsuariosS84: TStringField
      FieldName = 'S84'
      Size = 1
    end
    object SDS_UsuariosS85: TStringField
      FieldName = 'S85'
      Size = 1
    end
    object SDS_UsuariosS86: TStringField
      FieldName = 'S86'
      Size = 1
    end
    object SDS_UsuariosS87: TStringField
      FieldName = 'S87'
      Size = 1
    end
    object SDS_UsuariosS88: TStringField
      FieldName = 'S88'
      Size = 1
    end
    object SDS_UsuariosS89: TStringField
      FieldName = 'S89'
      Size = 1
    end
    object SDS_UsuariosS90: TStringField
      FieldName = 'S90'
      Size = 1
    end
    object SDS_UsuariosS91: TStringField
      FieldName = 'S91'
      Size = 1
    end
    object SDS_UsuariosS92: TStringField
      FieldName = 'S92'
      Size = 1
    end
    object SDS_UsuariosS93: TStringField
      FieldName = 'S93'
      Size = 1
    end
    object SDS_UsuariosS94: TStringField
      FieldName = 'S94'
      Size = 1
    end
    object SDS_UsuariosS95: TStringField
      FieldName = 'S95'
      Size = 1
    end
    object SDS_UsuariosS96: TStringField
      FieldName = 'S96'
      Size = 1
    end
    object SDS_UsuariosS97: TStringField
      FieldName = 'S97'
      Size = 1
    end
    object SDS_UsuariosS98: TStringField
      FieldName = 'S98'
      Size = 1
    end
    object SDS_UsuariosS99: TStringField
      FieldName = 'S99'
      Size = 1
    end
    object SDS_UsuariosS100: TStringField
      FieldName = 'S100'
      Size = 1
    end
    object SDS_UsuariosS101: TStringField
      FieldName = 'S101'
      Size = 1
    end
    object SDS_UsuariosS102: TStringField
      FieldName = 'S102'
      Size = 1
    end
    object SDS_UsuariosS103: TStringField
      FieldName = 'S103'
      Size = 1
    end
    object SDS_UsuariosS104: TStringField
      FieldName = 'S104'
      Size = 1
    end
    object SDS_UsuariosS105: TStringField
      FieldName = 'S105'
      Size = 1
    end
    object SDS_UsuariosS106: TStringField
      FieldName = 'S106'
      Size = 1
    end
    object SDS_UsuariosS107: TStringField
      FieldName = 'S107'
      Size = 1
    end
    object SDS_UsuariosS108: TStringField
      FieldName = 'S108'
      Size = 1
    end
    object SDS_UsuariosS109: TStringField
      FieldName = 'S109'
      Size = 1
    end
    object SDS_UsuariosS110: TStringField
      FieldName = 'S110'
      Size = 1
    end
    object SDS_UsuariosS111: TStringField
      FieldName = 'S111'
      Size = 1
    end
    object SDS_UsuariosS112: TStringField
      FieldName = 'S112'
      Size = 1
    end
    object SDS_UsuariosS113: TStringField
      FieldName = 'S113'
      Size = 1
    end
    object SDS_UsuariosS114: TStringField
      FieldName = 'S114'
      Size = 1
    end
    object SDS_UsuariosS115: TStringField
      FieldName = 'S115'
      Size = 1
    end
    object SDS_UsuariosS116: TStringField
      FieldName = 'S116'
      Size = 1
    end
    object SDS_UsuariosS117: TStringField
      FieldName = 'S117'
      Size = 1
    end
    object SDS_UsuariosS118: TStringField
      FieldName = 'S118'
      Size = 1
    end
    object SDS_UsuariosS119: TStringField
      FieldName = 'S119'
      Size = 1
    end
    object SDS_UsuariosS120: TStringField
      FieldName = 'S120'
      Size = 1
    end
    object SDS_UsuariosS121: TStringField
      FieldName = 'S121'
      Size = 1
    end
    object SDS_UsuariosS122: TStringField
      FieldName = 'S122'
      Size = 1
    end
    object SDS_UsuariosAUTORIZA: TStringField
      FieldName = 'AUTORIZA'
      Size = 1
    end
    object SDS_UsuariosCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Size = 1
    end
    object SDS_UsuariosVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 1
    end
    object SDS_UsuariosUSER: TStringField
      FieldName = 'USER'
      Size = 1
    end
    object SDS_UsuariosV_TOTAL_VENDAS: TStringField
      FieldName = 'V_TOTAL_VENDAS'
      Size = 1
    end
    object SDS_UsuariosS123: TStringField
      FieldName = 'S123'
      Size = 1
    end
    object SDS_UsuariosS124: TStringField
      FieldName = 'S124'
      Size = 1
    end
    object SDS_UsuariosS125: TStringField
      FieldName = 'S125'
      Size = 1
    end
    object SDS_UsuariosS126: TStringField
      FieldName = 'S126'
      Size = 1
    end
    object SDS_UsuariosS127: TStringField
      FieldName = 'S127'
      Size = 1
    end
    object SDS_UsuariosS128: TStringField
      FieldName = 'S128'
      Size = 1
    end
    object SDS_UsuariosS129: TStringField
      FieldName = 'S129'
      Size = 1
    end
    object SDS_UsuariosS130: TStringField
      FieldName = 'S130'
      Size = 1
    end
    object SDS_UsuariosS131: TStringField
      FieldName = 'S131'
      Size = 1
    end
    object SDS_UsuariosS132: TStringField
      FieldName = 'S132'
      Size = 1
    end
    object SDS_UsuariosS133: TStringField
      FieldName = 'S133'
      Size = 1
    end
    object SDS_UsuariosS134: TStringField
      FieldName = 'S134'
      Size = 1
    end
    object SDS_UsuariosS135: TStringField
      FieldName = 'S135'
      Size = 1
    end
    object SDS_UsuariosS136: TStringField
      FieldName = 'S136'
      Size = 1
    end
    object SDS_UsuariosS137: TStringField
      FieldName = 'S137'
      Size = 1
    end
    object SDS_UsuariosS138: TStringField
      FieldName = 'S138'
      Size = 1
    end
    object SDS_UsuariosS139: TStringField
      FieldName = 'S139'
      Size = 1
    end
    object SDS_UsuariosS140: TStringField
      FieldName = 'S140'
      Size = 1
    end
    object SDS_UsuariosMOSTRA_CUSTOS: TStringField
      FieldName = 'MOSTRA_CUSTOS'
      Size = 1
    end
    object SDS_UsuariosCPF_VENDEDOR: TStringField
      FieldName = 'CPF_VENDEDOR'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object SDS_UsuariosS141: TStringField
      FieldName = 'S141'
      Size = 1
    end
    object SDS_UsuariosS142: TStringField
      FieldName = 'S142'
      Size = 1
    end
    object SDS_UsuariosS143: TStringField
      FieldName = 'S143'
      Size = 1
    end
    object SDS_UsuariosDATA: TDateField
      FieldName = 'DATA'
    end
    object SDS_UsuariosSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
    object SDS_UsuariosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object SDS_UsuariosMOSTRA_PENDENTES: TStringField
      FieldName = 'MOSTRA_PENDENTES'
      Size = 1
    end
    object SDS_UsuariosUTILIZA_NFCE: TStringField
      FieldName = 'UTILIZA_NFCE'
      Size = 1
    end
    object SDS_UsuariosIMP_DARUMA_NFCE: TStringField
      FieldName = 'IMP_DARUMA_NFC-E'
      Size = 1
    end
    object SDS_UsuariosUTILIZA_NFSE: TStringField
      FieldName = 'UTILIZA_NFSE'
      Size = 1
    end
    object SDS_UsuariosUTILIZA_NFE: TStringField
      FieldName = 'UTILIZA_NFE'
      Size = 1
    end
    object SDS_UsuariosBLOQUEIA_VENDA: TStringField
      FieldName = 'BLOQUEIA_VENDA'
      Size = 1
    end
    object SDS_UsuariosOCULTA_GRID: TStringField
      FieldName = 'OCULTA_GRID'
      Size = 1
    end
    object SDS_UsuariosEXPORTA_VENDA: TStringField
      FieldName = 'EXPORTA_VENDA'
      Size = 1
    end
    object SDS_UsuariosTELA_ORCAMENTO_PADRAO: TStringField
      FieldName = 'TELA_ORCAMENTO_PADRAO'
      Size = 1
    end
  end
  object DTS_Usuarios: TDataSource
    DataSet = SDS_Usuarios
    Left = 496
    Top = 379
  end
  object DTS_Clientes: TDataSource
    DataSet = SDS_Clientes
    Left = 166
    Top = 579
  end
  object DTS_Empresa: TDataSource
    DataSet = SDS_Empresa
    Left = 1028
    Top = 363
  end
  object DTS_Unidades: TDataSource
    DataSet = SDS_Unidades
    Left = 360
    Top = 109
  end
  object DTS_Marcas: TDataSource
    DataSet = SDS_Marcas
    Left = 425
    Top = 110
  end
  object DTS_Grupos: TDataSource
    DataSet = SDS_Grupos
    Left = 482
    Top = 111
  end
  object SDS_Fornecedores: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    Transaction = IBTransaction
    SQL.Strings = (
      'select * from FORNECEDORES order by Nome')
    Left = 556
    Top = 60
    object SDS_FornecedoresCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_FornecedoresNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 70
    end
    object SDS_FornecedoresFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 70
    end
    object SDS_FornecedoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object SDS_FornecedoresCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object SDS_FornecedoresESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object SDS_FornecedoresCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_FornecedoresTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object SDS_FornecedoresFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object SDS_FornecedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object SDS_FornecedoresHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Origin = 'HOMEPAGE'
      Size = 50
    end
    object SDS_FornecedoresTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object SDS_FornecedoresCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object SDS_FornecedoresIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object SDS_FornecedoresBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object SDS_FornecedoresREPRESCELULAR: TStringField
      FieldName = 'REPRESCELULAR'
      Origin = 'REPRESCELULAR'
      Size = 15
    end
    object SDS_FornecedoresUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object SDS_FornecedoresDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object SDS_FornecedoresOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object SDS_FornecedoresREPRESNOME: TStringField
      FieldName = 'REPRESNOME'
      Origin = 'REPRESNOME'
      Size = 70
    end
    object SDS_FornecedoresREPRESFONEFAX: TStringField
      FieldName = 'REPRESFONEFAX'
      Origin = 'REPRESFONEFAX'
      Size = 16
    end
    object SDS_FornecedoresREPRESEMAIL: TStringField
      FieldName = 'REPRESEMAIL'
      Origin = 'REPRESEMAIL'
      Size = 50
    end
    object SDS_FornecedoresREPRESOBSERVACOES: TBlobField
      FieldName = 'REPRESOBSERVACOES'
      Origin = 'REPRESOBSERVACOES'
    end
    object SDS_FornecedoresPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_FornecedoresINSC_PRODUTOR: TStringField
      FieldName = 'INSC_PRODUTOR'
      Origin = 'INSC_PRODUTOR'
    end
    object SDS_FornecedoresCOD_LINHA: TIntegerField
      FieldName = 'COD_LINHA'
      Origin = 'COD_LINHA'
    end
    object SDS_FornecedoresLINHA: TStringField
      FieldName = 'LINHA'
      Origin = 'LINHA'
      Size = 70
    end
    object SDS_FornecedoresCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object SDS_FornecedoresVALOR_LEITE: TFMTBCDField
      FieldName = 'VALOR_LEITE'
      Origin = 'VALOR_LEITE'
      Precision = 18
      Size = 2
    end
    object SDS_Fornecedorescodigo_ibge: TStringField
      FieldName = 'codigo_ibge'
      Origin = '"codigo_ibge"'
      Size = 7
    end
    object SDS_FornecedoresNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object SDS_FornecedoresCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_FornecedoresTP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      Size = 1
    end
  end
  object DTS_Fornecedores: TDataSource
    DataSet = SDS_Fornecedores
    Left = 574
    Top = 112
  end
  object DTS_Bancos: TDataSource
    DataSet = SDS_Bancos
    Left = 626
    Top = 113
  end
  object DTS_Agencias: TDataSource
    DataSet = SDS_Agencias
    Left = 739
    Top = 106
  end
  object SDS_SubGrupos: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select*  from SUBGRUPOS order by NOME'
    DataSet.DataSource = DTS_SubGrupos
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'LINK'
        ParamType = ptInput
        Value = 20
      end>
    IndexFieldNames = 'LINK'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Grupos
    PacketRecords = 0
    Params = <>
    Left = 25
    Top = 237
    object SDS_SubGruposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_SubGruposNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object SDS_SubGruposGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 50
    end
    object SDS_SubGruposLINK: TIntegerField
      FieldName = 'LINK'
      Required = True
    end
    object SDS_SubGruposUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_SubGruposDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_SubGrupos: TDataSource
    DataSet = SDS_SubGrupos
    Left = 22
    Top = 281
  end
  object SPC_NotasFiscais: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
        Value = 97
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_NOTASFISCAIS'
    Left = 365
    Top = 178
  end
  object DTS_NotasFiscais: TDataSource
    DataSet = SDS_NotasFiscais
    Left = 357
    Top = 275
  end
  object SPC_NotasFiscaisItens: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
        Value = 600
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_NOTASFISCAISITENS'
    Left = 425
    Top = 178
  end
  object DTS_NotasFiscaisItens: TDataSource
    DataSet = SDS_NotasFiscaisItens
    Left = 437
    Top = 268
  end
  object SPC_Retorno: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_RETORNO'
    Left = 511
    Top = 170
  end
  object SDS_Retorno: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select *   from MOTIVORETORNO ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 512
    Top = 225
    object SDS_RetornoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_RetornoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object SDS_RetornoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_RetornoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_Retorno: TDataSource
    DataSet = SDS_Retorno
    Left = 513
    Top = 277
  end
  object SPC_ContasPagar: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_CONTASPAGAR'
    Left = 652
    Top = 163
  end
  object SDS_ContasPagar: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONTASPAGAR order by CODIGO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 653
    Top = 218
    object SDS_ContasPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ContasPagarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_ContasPagarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SDS_ContasPagarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_ContasPagarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_ContasPagarTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SDS_ContasPagarCODIGO_FORNECEDOR: TIntegerField
      FieldName = 'CODIGO_FORNECEDOR'
      Required = True
    end
    object SDS_ContasPagarFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SDS_ContasPagarVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object SDS_ContasPagarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object SDS_ContasPagarN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SDS_ContasPagarPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SDS_ContasPagarSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SDS_ContasPagarDIA_VENCIMENTO: TStringField
      FieldName = 'DIA_VENCIMENTO'
      Size = 2
    end
    object SDS_ContasPagarTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_ContasPagarCOND_PAGTO: TStringField
      FieldName = 'COND_PAGTO'
      Size = 30
    end
    object SDS_ContasPagarCOND_PAGTO_COD: TIntegerField
      FieldName = 'COND_PAGTO_COD'
    end
    object SDS_ContasPagarMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object SDS_ContasPagarANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object SDS_ContasPagarCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
    end
  end
  object DTS_ContasPagar: TDataSource
    DataSet = SDS_ContasPagar
    Left = 654
    Top = 270
  end
  object SDS_Contas_Pagar: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONTAS_PAGAR order by DATA_VENCIMENTO asc'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Value = 3
      end>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO'
    MasterSource = DTS_ContasPagar
    PacketRecords = 0
    Params = <>
    BeforeInsert = SDS_Contas_PagarBeforeInsert
    Left = 737
    Top = 161
    object SDS_Contas_PagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Contas_PagarCODIGO_GERA: TIntegerField
      FieldName = 'CODIGO_GERA'
      Required = True
    end
    object SDS_Contas_PagarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_Contas_PagarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SDS_Contas_PagarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object SDS_Contas_PagarDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_Contas_PagarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_Contas_PagarUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SDS_Contas_PagarUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_Contas_PagarTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SDS_Contas_PagarFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SDS_Contas_PagarDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
    end
    object SDS_Contas_PagarMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
    end
    object SDS_Contas_PagarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
    end
    object SDS_Contas_PagarVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object SDS_Contas_PagarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object SDS_Contas_PagarVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
    end
    object SDS_Contas_PagarN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SDS_Contas_PagarSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SDS_Contas_PagarAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_Contas_PagarOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_Contas_PagarTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_Contas_PagarPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 5
    end
  end
  object DTS_Contas_Pagar: TDataSource
    DataSet = SDS_Contas_Pagar
    Left = 737
    Top = 269
  end
  object DTS_CP_Autorizar: TDataSource
    DataSet = SDS_CP_Autorizar
    Left = 84
    Top = 339
  end
  object SDS_CP_Autorizar: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from V_CONTAS_PAGAR order by DATA_VENCIMENTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 19
    Top = 331
    object SDS_CP_AutorizarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CP_AutorizarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_CP_AutorizarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SDS_CP_AutorizarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_CP_AutorizarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_CP_AutorizarTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SDS_CP_AutorizarFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SDS_CP_AutorizarDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SDS_CP_AutorizarPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SDS_CP_AutorizarSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SDS_CP_AutorizarAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_CP_AutorizarCODIGO_GERA: TIntegerField
      FieldName = 'CODIGO_GERA'
      Required = True
    end
    object SDS_CP_AutorizarDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CP_AutorizarUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SDS_CP_AutorizarUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CP_AutorizarVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_CP_AutorizarTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_CP_AutorizarVALOR_ADIANTAMENTO: TFMTBCDField
      FieldName = 'VALOR_ADIANTAMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CP_AutorizarVALOR_AUTORIZADO: TFMTBCDField
      FieldName = 'VALOR_AUTORIZADO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CP_AutorizarVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTS_CP_Baixar: TDataSource
    DataSet = SDS_CP_Baixar
    Left = 284
    Top = 237
  end
  object SDS_CP_Baixar: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 
      'select * from CONTAS_PAGAR where AUTORIZACAO = '#39'S'#39' order by DATA' +
      '_VENCIMENTO asc'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    Left = 277
    Top = 189
    object SDS_CP_BaixarCODIGO_GERA: TIntegerField
      FieldName = 'CODIGO_GERA'
      Required = True
    end
    object SDS_CP_BaixarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CP_BaixarDATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_CP_BaixarDATA_EMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_EMISSAO'
    end
    object SDS_CP_BaixarDATA_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_CP_BaixarDATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CP_BaixarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_CP_BaixarUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SDS_CP_BaixarUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CP_BaixarTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SDS_CP_BaixarFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SDS_CP_BaixarDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SDS_CP_BaixarPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object SDS_CP_BaixarSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SDS_CP_BaixarAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_CP_BaixarOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_CP_BaixarTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_CP_BaixarVALOR_ADIANTAMENTO: TFMTBCDField
      FieldName = 'VALOR_ADIANTAMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CP_BaixarVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CP_BaixarVALOR_AUTORIZADO: TFMTBCDField
      FieldName = 'VALOR_AUTORIZADO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTS_PRODUTOS: TDataSource
    AutoEdit = False
    DataSet = SDS_PRODUTOS
    Left = 96
    Top = 190
  end
  object DTS_CONFIGURACOES: TDataSource
    DataSet = SDS_CONFIGURACOES
    Left = 703
    Top = 320
  end
  object SDS_Conta_Bancaria: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONTA_BANCARIA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 8
    Top = 392
    object SDS_Conta_BancariaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Conta_BancariaBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object SDS_Conta_BancariaTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_Conta_BancariaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object SDS_Conta_BancariaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object SDS_Conta_BancariaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_Conta_BancariaUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_Conta_BancariaDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_Conta_BancariaFEBRABAN: TStringField
      FieldName = 'FEBRABAN'
      Size = 3
    end
    object strngfldSDS_Conta_BancariaDIGITO: TStringField
      FieldName = 'DIGITO'
      Size = 1
    end
    object SDS_Conta_BancariaCOD_PLANO: TIntegerField
      FieldName = 'COD_PLANO'
    end
  end
  object DTS_Conta_Bancaria: TDataSource
    DataSet = SDS_Conta_Bancaria
    Left = 23
    Top = 439
  end
  object DTS_PlContas: TDataSource
    DataSet = SDS_PlContas
    Left = 288
    Top = 333
  end
  object SDS_PlContas: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from PLANOCONTAS ORDER BY COD_COMPLETO ASC'
    DataSet.DataSource = DTS_PlContas
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 264
    Top = 282
    object SDS_PlContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_PlContasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object SDS_PlContasUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_PlContasDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_PlContasCOD_NATUREZA: TStringField
      FieldName = 'COD_NATUREZA'
      Size = 2
    end
    object SDS_PlContasNIVEL_CTA: TStringField
      FieldName = 'NIVEL_CTA'
      Size = 5
    end
    object SDS_PlContasINDICADOR: TStringField
      FieldName = 'INDICADOR'
      Size = 1
    end
    object SDS_PlContasCOD_COMPLETO: TStringField
      FieldName = 'COD_COMPLETO'
    end
    object SDS_PlContasSALDO_CTA: TFMTBCDField
      FieldName = 'SALDO_CTA'
      Precision = 15
      Size = 2
    end
    object SDS_PlContasDEB_CRED: TStringField
      FieldName = 'DEB_CRED'
      Size = 1
    end
    object SDS_PlContasCOD_CTA: TStringField
      FieldName = 'COD_CTA'
    end
  end
  object SPC_CondPagamento: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
        Value = 1
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_COND_PAGAMENTO'
    Left = 576
    Top = 178
  end
  object SDS_CondPagamento: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONDICAO_PAGAMENTO ORDER BY DESCRICAO asc'
    DataSet.DataSource = DTS_CondPagamento
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 576
    Top = 232
    object SDS_CondPagamentoCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CondPagamentoNUMERO_PAR: TIntegerField
      FieldName = 'NUMERO_PAR'
    end
    object SDS_CondPagamentoVARIACAO_DIAS: TIntegerField
      FieldName = 'VARIACAO_DIAS'
    end
    object SDS_CondPagamentoPIMEIRA_PAR: TIntegerField
      FieldName = 'PIMEIRA_PAR'
    end
    object SDS_CondPagamentoMEDIA_DIAS: TIntegerField
      FieldName = 'MEDIA_DIAS'
    end
    object SDS_CondPagamentoJUROS_BASE: TFMTBCDField
      FieldName = 'JUROS_BASE'
      Precision = 15
    end
    object SDS_CondPagamentoTIPO_PAGAMENTO: TStringField
      Alignment = taCenter
      FieldName = 'TIPO_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object SDS_CondPagamentoSTATUS: TStringField
      Alignment = taCenter
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SDS_CondPagamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SDS_CondPagamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object SDS_CondPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
    object SDS_CondPagamentoJUROS_DIA: TFMTBCDField
      FieldName = 'JUROS_DIA'
      Precision = 15
    end
    object SDS_CondPagamentoPG_ECF: TStringField
      FieldName = 'PG_ECF'
      Size = 2
    end
    object SDS_CondPagamentoCHEK: TStringField
      FieldName = 'CHEK'
      Size = 1
    end
  end
  object DTS_CondPagamento: TDataSource
    DataSet = SDS_CondPagamento
    Left = 584
    Top = 275
  end
  object SDS_SECCAO: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from SECCAO ORDER BY CODIGO asc'
    DataSet.DataSource = DTS_SECCAO
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 24
    Top = 488
    object SDS_SECCAOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_SECCAODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_SECCAOUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_SECCAODATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_SECCAO: TDataSource
    DataSet = SDS_SECCAO
    Left = 88
    Top = 488
  end
  object SDS_CATEGORIA: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CATEGORIAS ORDER BY CODIGO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PERC_AVISTA'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'PERC_PRAZO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'USERCAD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATACAD'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 16
    Top = 544
    object SDS_CATEGORIACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CATEGORIADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_CATEGORIAPERC_AVISTA: TFMTBCDField
      FieldName = 'PERC_AVISTA'
      Precision = 15
      Size = 2
    end
    object SDS_CATEGORIAPERC_PRAZO: TFMTBCDField
      FieldName = 'PERC_PRAZO'
      Precision = 15
      Size = 2
    end
    object SDS_CATEGORIAUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_CATEGORIADATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_CATEGORIA: TDataSource
    DataSet = SDS_CATEGORIA
    Left = 96
    Top = 552
  end
  object SDS_AGREGADOS: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from AGREGADOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'CODIGO_PROD'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'AGREGADOS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'USERCAD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATACAD'
        DataType = ftDate
      end
      item
        Name = 'CODIGO_AGREG'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO_PROD'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PRODUTOS
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 289
    Top = 440
    object SDS_AGREGADOSCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Required = True
    end
    object SDS_AGREGADOSAGREGADOS: TStringField
      FieldName = 'AGREGADOS'
      Size = 50
    end
    object SDS_AGREGADOSUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_AGREGADOSDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_AGREGADOSCODIGO_AGREG: TIntegerField
      FieldName = 'CODIGO_AGREG'
    end
  end
  object DTS_AGREGADOS: TDataSource
    DataSet = SDS_AGREGADOS
    Left = 369
    Top = 440
  end
  object SPC_AGREGADOS: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_AGREGADOS'
    Left = 287
    Top = 386
  end
  object DTS_SIMILARES: TDataSource
    DataSet = SDS_SIMILARES
    Left = 96
    Top = 424
  end
  object SPC_SIMILARES: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_PROD_SIMILAR'
    Left = 647
    Top = 424
  end
  object sds_LyBancos: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from BOLETO'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    Left = 24
    Top = 592
    object sds_LyBancosCODIGO_BOLETO: TIntegerField
      FieldName = 'CODIGO_BOLETO'
      Required = True
    end
    object sds_LyBancosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_LyBancosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object sds_LyBancosBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object sds_LyBancosQUANT_DIAS_PROTESTO: TSmallintField
      FieldName = 'QUANT_DIAS_PROTESTO'
    end
    object O: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 80
    end
    object sds_LyBancosTIPO: TStringField
      FieldName = 'TIPO'
    end
    object sds_LyBancosNOMECEDENTE: TStringField
      FieldName = 'NOMECEDENTE'
      Size = 80
    end
    object sds_LyBancosCNPJCEDENTE: TStringField
      FieldName = 'CNPJCEDENTE'
      Size = 14
    end
    object sds_LyBancosTIPOPESSOACEDENTE: TStringField
      FieldName = 'TIPOPESSOACEDENTE'
      Size = 8
    end
    object sds_LyBancosCODIGOAGENCIA: TStringField
      FieldName = 'CODIGOAGENCIA'
      Size = 8
    end
    object sds_LyBancosDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      Size = 4
    end
    object sds_LyBancosNUMEROCONTA: TStringField
      FieldName = 'NUMEROCONTA'
      Size = 12
    end
    object sds_LyBancosDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      Size = 4
    end
    object sds_LyBancosCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 6
    end
    object sds_LyBancosVLRABATIMENTO: TFloatField
      FieldName = 'VLRABATIMENTO'
    end
    object sds_LyBancosVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sds_LyBancosVLRDESPESACOBRANCA: TFloatField
      FieldName = 'VLRDESPESACOBRANCA'
    end
    object sds_LyBancosVLRIOF: TFloatField
      FieldName = 'VLRIOF'
    end
    object sds_LyBancosVLRMORAJUROS: TFloatField
      FieldName = 'VLRMORAJUROS'
    end
    object sds_LyBancosVLROUTRASDEPESAS: TFloatField
      FieldName = 'VLROUTRASDEPESAS'
    end
    object sds_LyBancosVLROUTROSCREDITOS: TFloatField
      FieldName = 'VLROUTROSCREDITOS'
    end
    object sds_LyBancosFLAG_GERAR_REMESSA: TStringField
      FieldName = 'FLAG_GERAR_REMESSA'
      Size = 1
    end
    object sds_LyBancosNUMERO_REMESSA: TIntegerField
      FieldName = 'NUMERO_REMESSA'
    end
    object sds_LyBancosANO_REFERENCIA: TStringField
      FieldName = 'ANO_REFERENCIA'
      Size = 2
    end
    object sds_LyBancosPROTESTAR_AUTOMATICO: TStringField
      FieldName = 'PROTESTAR_AUTOMATICO'
      Size = 1
    end
    object sds_LyBancosMODELO: TStringField
      FieldName = 'MODELO'
      Size = 6
    end
    object sds_LyBancosUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object sds_LyBancosDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object sds_LyBancosNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
    end
    object sds_LyBancosCEDENTECODIGO: TStringField
      FieldName = 'CEDENTECODIGO'
      Size = 12
    end
    object sds_LyBancosCEDENTECODIGODIGITO: TStringField
      FieldName = 'CEDENTECODIGODIGITO'
      Size = 4
    end
    object sds_LyBancosNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 11
    end
    object sds_LyBancosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sds_LyBancosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sds_LyBancosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sds_LyBancosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sds_LyBancosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sds_LyBancosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object sds_LyBancosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sds_LyBancosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sds_LyBancosANO: TStringField
      FieldName = 'ANO'
      Size = 2
    end
    object sds_LyBancosTP_COBRANCA: TStringField
      FieldName = 'TP_COBRANCA'
      Size = 1
    end
    object sds_LyBancosLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 1
    end
    object sds_LyBancosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object sds_LyBancosPERC_JUROS: TFMTBCDField
      FieldName = 'PERC_JUROS'
      Precision = 15
      Size = 2
    end
    object sds_LyBancosPERC_MULTA: TFMTBCDField
      FieldName = 'PERC_MULTA'
      Precision = 15
      Size = 2
    end
    object sds_LyBancosCNAB: TStringField
      FieldName = 'CNAB'
      Size = 10
    end
    object sds_LyBancosDIRRECEBE: TStringField
      FieldName = 'DIRRECEBE'
      Size = 100
    end
    object sds_LyBancosDIRENVIA: TStringField
      FieldName = 'DIRENVIA'
      Size = 100
    end
    object sds_LyBancosESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 5
    end
    object sds_LyBancosACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 3
    end
    object sds_LyBancosMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 50
    end
    object sds_LyBancosVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 3
    end
    object sds_LyBancosVERSAO_LOTE: TStringField
      FieldName = 'VERSAO_LOTE'
      Size = 3
    end
    object sds_LyBancosCONVENIO: TStringField
      DisplayWidth = 10
      FieldName = 'CONVENIO'
      Size = 10
    end
  end
  object Dts_lyBancos: TDataSource
    DataSet = sds_LyBancos
    Left = 97
    Top = 609
  end
  object SDS_Contrato: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONTRATO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 724
    Top = 434
    object SDS_ContratoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ContratoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object SDS_ContratoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object SDS_ContratoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_ContratoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_Contrato: TDataSource
    DataSet = SDS_Contrato
    Left = 728
    Top = 480
  end
  object DTS_cidades: TDataSource
    DataSet = Sds_cidades
    Left = 824
    Top = 56
  end
  object Dts_bairros: TDataSource
    DataSet = sds_bairros
    Left = 888
    Top = 168
  end
  object DTS_Estados: TDataSource
    DataSet = SDS_estados
    Left = 816
    Top = 160
  end
  object DTS_ZONAS: TDataSource
    DataSet = SDS_zonas
    Left = 888
    Top = 56
  end
  object Dts_bairro: TDataSource
    DataSet = Sds_bairro
    Left = 960
    Top = 64
  end
  object sds_produtos_Falta: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from PRODUTOS_FALTA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 296
    Top = 496
    object sds_produtos_FaltaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_produtos_FaltaCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object sds_produtos_FaltaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object sds_produtos_FaltaDATA_FALTA: TDateField
      FieldName = 'DATA_FALTA'
    end
    object sds_produtos_FaltaFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object sds_produtos_FaltaQUANT_FRACAO: TIntegerField
      FieldName = 'QUANT_FRACAO'
    end
    object sds_produtos_FaltaQUANT_INTEIRA: TIntegerField
      FieldName = 'QUANT_INTEIRA'
    end
    object sds_produtos_FaltaCODIGO_SEQ: TIntegerField
      FieldName = 'CODIGO_SEQ'
      Required = True
    end
    object sds_produtos_FaltaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dts_produtos_falta: TDataSource
    DataSet = sds_produtos_Falta
    Left = 296
    Top = 552
  end
  object DTS_CST: TDataSource
    DataSet = SDS_CST
    Left = 368
    Top = 392
  end
  object SDS_CST: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CST'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 360
    Top = 344
    object SDS_CSTCODIGO_CST: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 3
      FieldName = 'CODIGO_CST'
      Required = True
      Visible = False
      Size = 3
    end
    object SDS_CSTDESCRICAO_CST: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO_CST'
      Visible = False
      Size = 50
    end
    object SDS_CSTFL_DIFERENCA_BASE_TOTAL: TStringField
      DisplayWidth = 1
      FieldName = 'FL_DIFERENCA_BASE_TOTAL'
      Visible = False
      Size = 1
    end
    object SDS_CSTFL_ICM: TStringField
      DisplayWidth = 1
      FieldName = 'FL_ICM'
      Visible = False
      Size = 1
    end
    object SDS_CSTFL_REDUCAO: TStringField
      DisplayWidth = 1
      FieldName = 'FL_REDUCAO'
      Visible = False
      Size = 1
    end
    object SDS_CSTFL_ICM_SUBST: TStringField
      DisplayWidth = 1
      FieldName = 'FL_ICM_SUBST'
      Visible = False
      Size = 1
    end
    object SDS_CSTCST_CSOSN: TStringField
      DisplayWidth = 1
      FieldName = 'CST_CSOSN'
      Visible = False
      Size = 1
    end
  end
  object Sds_partidas: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from PARTIDAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 391
    Top = 544
    object Sds_partidasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_partidasN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
    end
    object Sds_partidasCOD_LABORATORIO: TStringField
      FieldName = 'COD_LABORATORIO'
      Size = 10
    end
    object Sds_partidasNOME_LABORATORIO: TStringField
      FieldName = 'NOME_LABORATORIO'
      Size = 50
    end
    object Sds_partidasDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object Sds_partidasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object Sds_partidasTIPO_VACINA: TStringField
      FieldName = 'TIPO_VACINA'
      Size = 25
    end
    object Sds_partidasQUANT_COMPRA: TFMTBCDField
      FieldName = 'QUANT_COMPRA'
      Precision = 15
    end
    object Sds_partidasQUANT_VENDA: TFMTBCDField
      FieldName = 'QUANT_VENDA'
      Precision = 15
    end
    object Sds_partidasNOTA_COMPRA: TStringField
      FieldName = 'NOTA_COMPRA'
      Size = 15
    end
    object Sds_partidasSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
    end
    object Sds_partidasNOME_EMPRESA_COMPRA: TStringField
      FieldName = 'NOME_EMPRESA_COMPRA'
      Size = 50
    end
    object Sds_partidasMUNICIPIO_COMPRA: TStringField
      FieldName = 'MUNICIPIO_COMPRA'
      Size = 40
    end
    object Sds_partidasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_partidasDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object Sds_partidasDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Sds_partidasUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_partidasAFTOSA: TStringField
      FieldName = 'AFTOSA'
      Size = 1
    end
  end
  object Dts_partidas: TDataSource
    DataSet = Sds_partidas
    Left = 456
    Top = 549
  end
  object SPC_Partidas: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'COD_PARTIDA'
    Left = 375
    Top = 492
  end
  object Dts_produtos_c: TDataSource
    AutoEdit = False
    DataSet = Sds_produtos_c
    Left = 464
    Top = 435
  end
  object Sds_produtos_c: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 
      'select * from PRODUTOS ORDER BY DESCRICAO, REFERENCIA, CODIGO_BA' +
      'RRAS'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    Left = 433
    Top = 380
    object Sds_produtos_cCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_produtos_cDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 70
    end
    object Sds_produtos_cABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Size = 29
    end
    object Sds_produtos_cPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cMARGEM_LUCRO: TFMTBCDField
      FieldName = 'MARGEM_LUCRO'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object Sds_produtos_cFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cIPI_IRPJ: TFMTBCDField
      FieldName = 'IPI_IRPJ'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cOUTROS_IMPOSTOS: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cDESCONTOS: TFMTBCDField
      FieldName = 'DESCONTOS'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Size = 6
    end
    object Sds_produtos_cSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object Sds_produtos_cCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cDESCONTO_MAXIMO: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
    end
    object Sds_produtos_cCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
    end
    object Sds_produtos_cCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
    end
    object Sds_produtos_cNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object Sds_produtos_cNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Size = 40
    end
    object Sds_produtos_cNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object Sds_produtos_cNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 40
    end
    object Sds_produtos_cCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
    end
    object Sds_produtos_cFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object Sds_produtos_cESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object Sds_produtos_cESTOQUE_VENDIDO: TFMTBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
    object Sds_produtos_cVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
      Size = 6
    end
    object Sds_produtos_cVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Precision = 15
      Size = 6
    end
    object Sds_produtos_cESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
    end
    object Sds_produtos_cESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
    end
    object Sds_produtos_cDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Sds_produtos_cUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_produtos_cDESC_SECCAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESC_SECCAO'
      LookupDataSet = SDS_SECCAO
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'SECCAO'
      Size = 30
      Lookup = True
    end
    object Sds_produtos_cVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 15
      Size = 6
    end
    object Sds_produtos_cULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
    object Sds_produtos_cVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Precision = 15
      Size = 6
    end
    object Sds_produtos_cSECCAO: TIntegerField
      FieldName = 'SECCAO'
    end
    object Sds_produtos_cCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object Sds_produtos_cLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object Sds_produtos_cAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 250
    end
    object Sds_produtos_cESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Size = 50
    end
    object Sds_produtos_cGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
    end
    object Sds_produtos_cBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object Sds_produtos_cETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 1
    end
    object Sds_produtos_cATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object Sds_produtos_cREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
    object Sds_produtos_cCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_produtos_cDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object Sds_produtos_cPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cFONETICO: TStringField
      FieldName = 'FONETICO'
      Size = 60
    end
    object Sds_produtos_cDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
    end
    object Sds_produtos_cCUSTOREPOSICAO: TFMTBCDField
      FieldName = 'CUSTOREPOSICAO'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cPRECO_ANT: TFMTBCDField
      FieldName = 'PRECO_ANT'
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cPRECO_PROMOCAO: TFMTBCDField
      FieldName = 'PRECO_PROMOCAO'
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Size = 1
    end
    object Sds_produtos_cDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
    end
    object Sds_produtos_cDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
    end
    object Sds_produtos_cCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
    end
    object Sds_produtos_cLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 50
    end
    object Sds_produtos_cPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Size = 50
    end
    object Sds_produtos_cMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Size = 1
    end
    object Sds_produtos_cQTD_FRACIONADA: TFMTBCDField
      FieldName = 'QTD_FRACIONADA'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Size = 3
    end
    object Sds_produtos_cLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object Sds_produtos_cVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object Sds_produtos_cCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object Sds_produtos_cPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      currency = True
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cMARGEM_LUCRO2: TFMTBCDField
      FieldName = 'MARGEM_LUCRO2'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object Sds_produtos_cPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object Sds_produtos_cUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
    end
    object Sds_produtos_cDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Size = 6
    end
    object Sds_produtos_cQUANT_SAIDA: TFMTBCDField
      FieldName = 'QUANT_SAIDA'
      Precision = 15
    end
    object Sds_produtos_cQUANT_ENTRADA: TFMTBCDField
      FieldName = 'QUANT_ENTRADA'
      Precision = 15
    end
    object Sds_produtos_cESTOQUE_FRACAO: TFMTBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Precision = 15
    end
    object Sds_produtos_cDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object Sds_produtos_cFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object Sds_produtos_cCOD_MS: TStringField
      FieldName = 'COD_MS'
      Size = 13
    end
    object Sds_produtos_cNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object Sds_produtos_cQTD_CAIXA: TFMTBCDField
      FieldName = 'QTD_CAIXA'
      Precision = 15
      Size = 0
    end
    object Sds_produtos_cCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object Sds_produtos_cProdutoComposto: TStringField
      FieldName = 'ProdutoComposto'
      Size = 5
    end
    object Sds_produtos_cCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Size = 5
    end
    object Sds_produtos_cTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object Sds_produtos_cCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
    end
    object Sds_produtos_cCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
    end
    object Sds_produtos_cLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Size = 1
    end
    object Sds_produtos_cGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
    end
    object Sds_produtos_cCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 1
    end
    object Sds_produtos_cCOR: TIntegerField
      FieldName = 'COR'
    end
    object Sds_produtos_cENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Required = True
    end
    object Sds_produtos_cID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
    end
    object Sds_produtos_cCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Size = 9
    end
    object Sds_produtos_cCESTA: TStringField
      FieldName = 'CESTA'
      Size = 1
    end
    object Sds_produtos_cML_QUANT_BEB: TFMTBCDField
      FieldName = 'ML_QUANT_BEB'
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cUND_TRIB: TStringField
      FieldName = 'UND_TRIB'
      Size = 3
    end
    object Sds_produtos_cCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 44
    end
    object Sds_produtos_cCOR_DESC: TStringField
      FieldName = 'COR_DESC'
      Size = 30
    end
    object Sds_produtos_cN_MOTOR: TStringField
      FieldName = 'N_MOTOR'
      Size = 30
    end
    object Sds_produtos_cANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Size = 4
    end
    object Sds_produtos_cANO_MOD_FAB: TStringField
      FieldName = 'ANO_MOD_FAB'
      Size = 4
    end
    object Sds_produtos_cTIPO_VEIC: TStringField
      FieldName = 'TIPO_VEIC'
      Size = 10
    end
    object Sds_produtos_cN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Size = 30
    end
    object Sds_produtos_cCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Size = 30
    end
    object Sds_produtos_cESPECIE_VEICULO: TStringField
      FieldName = 'ESPECIE_VEICULO'
      Size = 10
    end
    object Sds_produtos_cCOD_COR_DENATRAN: TStringField
      FieldName = 'COD_COR_DENATRAN'
      Size = 10
    end
    object Sds_produtos_cTIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Size = 10
    end
    object Sds_produtos_cVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 1
    end
    object Sds_produtos_cCODORIGINAL: TStringField
      FieldName = 'CODORIGINAL'
    end
    object Sds_produtos_cCOD_PACOTE: TStringField
      FieldName = 'COD_PACOTE'
    end
    object Sds_produtos_cUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object Sds_produtos_cUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object Sds_produtos_cUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object Sds_produtos_cPRODUTO_PROPRIEDADE: TIntegerField
      FieldName = 'PRODUTO_PROPRIEDADE'
    end
    object Sds_produtos_cMULTIP_FRACAO: TIntegerField
      FieldName = 'MULTIP_FRACAO'
    end
    object Sds_produtos_cDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object Sds_produtos_cDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
    end
    object Sds_produtos_cALERTA_COPA: TStringField
      FieldName = 'ALERTA_COPA'
      FixedChar = True
      Size = 1
    end
    object Sds_produtos_cALERTA_COZINHA: TStringField
      FieldName = 'ALERTA_COZINHA'
      FixedChar = True
      Size = 1
    end
    object Sds_produtos_cANDROID_VISUALIZA: TStringField
      FieldName = 'ANDROID_VISUALIZA'
      FixedChar = True
      Size = 1
    end
    object Sds_produtos_cTEMPO_PREPARO: TTimeField
      FieldName = 'TEMPO_PREPARO'
    end
    object Sds_produtos_cSABORES: TIntegerField
      FieldName = 'SABORES'
    end
    object Sds_produtos_cCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object Sds_produtos_cPROCURA: TStringField
      FieldName = 'PROCURA'
      Size = 44
    end
    object Sds_produtos_cTEM_MESTRE: TStringField
      FieldName = 'TEM_MESTRE'
      Size = 1
    end
    object Sds_produtos_cCOD_MESTRE: TIntegerField
      FieldName = 'COD_MESTRE'
    end
    object Sds_produtos_cDESC_PROD_ANP: TStringField
      FieldName = 'DESC_PROD_ANP'
      Size = 70
    end
  end
  object dts_contratos: TDataSource
    DataSet = SDS_CONTRATOS
    Left = 320
    Top = 152
  end
  object SDS_CONTRATOS: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONTRATOS ORDER BY NOME_CLIENTE ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 288
    Top = 119
    object SDS_CONTRATOSNOME_CLIENTE: TStringField
      DisplayWidth = 50
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SDS_CONTRATOSCOD_CLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_CLIENTE'
    end
    object SDS_CONTRATOSVALOR: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CONTRATOSDATA_VENCIMENTO: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_CONTRATOSATIVO: TStringField
      DisplayWidth = 1
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_CONTRATOSCOD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_EMPRESA'
      Visible = False
    end
    object SDS_CONTRATOSID_CONTRATO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CONTRATO'
      Required = True
      Visible = False
    end
    object SDS_CONTRATOSDESCRICAO: TBlobField
      DisplayWidth = 10
      FieldName = 'DESCRICAO'
      Visible = False
      Size = 1
    end
    object SDS_CONTRATOSDATA_CONTRATO: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_CONTRATO'
      Visible = False
    end
    object SDS_CONTRATOSCHEK_BOX: TStringField
      DisplayWidth = 1
      FieldName = 'CHEK_BOX'
      Visible = False
      Size = 1
    end
    object SDS_CONTRATOSTIPO_CONTRATO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO_CONTRATO'
    end
    object SDS_CONTRATOSPLANO_CONTRATO: TIntegerField
      DisplayWidth = 10
      FieldName = 'PLANO_CONTRATO'
    end
    object SDS_CONTRATOSPLANO_CARACT: TIntegerField
      DisplayWidth = 10
      FieldName = 'PLANO_CARACT'
    end
  end
  object SPC_CONTRATOS: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CONTRATO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'COD_CONTRATOS'
    Left = 218
    Top = 120
  end
  object SDS_NFE: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from NFE_NOTA'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    Left = 808
    Top = 232
    object SDS_NFEN_SEQUENCIA: TIntegerField
      FieldName = 'N_SEQUENCIA'
      Required = True
    end
    object SDS_NFECD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
      Required = True
    end
    object SDS_NFENR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object SDS_NFECOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_NFEFL_IMPRESSO: TStringField
      FieldName = 'FL_IMPRESSO'
      Size = 1
    end
    object SDS_NFESERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object SDS_NFECD_CFOP: TIntegerField
      FieldName = 'CD_CFOP'
    end
    object SDS_NFEDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object SDS_NFEDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object SDS_NFEVL_ACRESCIMOS: TFMTBCDField
      FieldName = 'VL_ACRESCIMOS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_DESCONTOS: TFMTBCDField
      FieldName = 'VL_DESCONTOS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_MERCADORIAS: TFMTBCDField
      FieldName = 'VL_MERCADORIAS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_SERVICOS: TFMTBCDField
      FieldName = 'VL_SERVICOS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFECOD_PGTO: TIntegerField
      FieldName = 'COD_PGTO'
    end
    object SDS_NFEVL_AVISTA: TFMTBCDField
      FieldName = 'VL_AVISTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_PRAZO: TFMTBCDField
      FieldName = 'VL_PRAZO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEPESO_TOTAL: TFMTBCDField
      FieldName = 'PESO_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFEQT_PECAS: TFMTBCDField
      FieldName = 'QT_PECAS'
      Precision = 15
    end
    object SDS_NFECFOP_DESC: TStringField
      FieldName = 'CFOP_DESC'
      Size = 40
    end
    object SDS_NFECD_TRANSPORTADORA: TIntegerField
      FieldName = 'CD_TRANSPORTADORA'
    end
    object SDS_NFEUF_ORIGEM: TStringField
      FieldName = 'UF_ORIGEM'
      Size = 2
    end
    object SDS_NFEUF_DESTINO: TStringField
      FieldName = 'UF_DESTINO'
      Size = 2
    end
    object SDS_NFEPESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_SEGURO: TFMTBCDField
      FieldName = 'VL_SEGURO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFETP_FRETE: TStringField
      FieldName = 'TP_FRETE'
      Size = 1
    end
    object SDS_NFEQT_VOLUMES: TFMTBCDField
      FieldName = 'QT_VOLUMES'
      Precision = 15
    end
    object SDS_NFEESPECIE_VOLUMES: TStringField
      FieldName = 'ESPECIE_VOLUMES'
      Size = 15
    end
    object SDS_NFEMARCA_VOLUMES: TStringField
      FieldName = 'MARCA_VOLUMES'
      Size = 15
    end
    object SDS_NFENR_VOLUMES: TIntegerField
      FieldName = 'NR_VOLUMES'
    end
    object SDS_NFECD_TIPOCOBR: TIntegerField
      FieldName = 'CD_TIPOCOBR'
    end
    object SDS_NFECD_FUNCIONARIO: TIntegerField
      FieldName = 'CD_FUNCIONARIO'
    end
    object SDS_NFEDT_ATZ: TDateField
      FieldName = 'DT_ATZ'
    end
    object SDS_NFEPLACA_TRANSP: TStringField
      FieldName = 'PLACA_TRANSP'
      Size = 8
    end
    object SDS_NFEUF_PLACA_TRANSP: TStringField
      FieldName = 'UF_PLACA_TRANSP'
      Size = 2
    end
    object SDS_NFEVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFENR_PEDIDO: TIntegerField
      FieldName = 'NR_PEDIDO'
    end
    object SDS_NFEVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_DESCONTO_ITEM: TFMTBCDField
      FieldName = 'VL_DESCONTO_ITEM'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ISENTO_ITENS: TFMTBCDField
      FieldName = 'VL_ISENTO_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_OUTROS_ITENS: TFMTBCDField
      FieldName = 'VL_OUTROS_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFENR_PROTOCOLO_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_NFE'
      Size = 15
    end
    object SDS_NFEDT_PROCESSAMENTO_NFE: TDateField
      FieldName = 'DT_PROCESSAMENTO_NFE'
    end
    object SDS_NFESTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object SDS_NFENR_LOTE_NFE: TStringField
      FieldName = 'NR_LOTE_NFE'
      Size = 15
    end
    object SDS_NFENR_RECIBO_NFE: TStringField
      FieldName = 'NR_RECIBO_NFE'
      Size = 15
    end
    object SDS_NFENR_PROTOCOLO_CANC_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_CANC_NFE'
      Size = 15
    end
    object SDS_NFECHAVE_ACESSO_NFE: TStringField
      FieldName = 'CHAVE_ACESSO_NFE'
      Size = 44
    end
    object SDS_NFEVL_FRETE_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_FRETE_CONHECIMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ST_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ST_CONHECIMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ICM_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ICM_CONHECIMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEBASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'BASE_ICM_PROPRIO_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFECNPJ_TRANSP: TStringField
      FieldName = 'CNPJ_TRANSP'
      FixedChar = True
    end
    object SDS_NFENOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Size = 50
    end
    object SDS_NFEIE_TRANSP: TStringField
      FieldName = 'IE_TRANSP'
      Size = 15
    end
    object SDS_NFEEND_TRANSPORTADOR: TStringField
      FieldName = 'END_TRANSPORTADOR'
      Size = 50
    end
    object SDS_NFECIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 40
    end
    object SDS_NFEUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Size = 2
    end
    object SDS_NFETP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object SDS_NFEN_NOTA_ENTRADA: TStringField
      FieldName = 'N_NOTA_ENTRADA'
    end
    object SDS_NFENOME_CLIENTE_FOR: TStringField
      FieldName = 'NOME_CLIENTE_FOR'
      Size = 50
    end
    object SDS_NFECPF_CNPJ_CLIENTE_FORN: TStringField
      FieldName = 'CPF_CNPJ_CLIENTE_FORN'
      FixedChar = True
    end
    object SDS_NFEIE_CLIENTE_FORN: TStringField
      FieldName = 'IE_CLIENTE_FORN'
      Size = 15
    end
    object SDS_NFEENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Size = 40
    end
    object SDS_NFEEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
    end
    object SDS_NFECOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object SDS_NFECEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object SDS_NFEBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object SDS_NFETIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
    end
    object SDS_NFETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SDS_NFECIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object SDS_NFEUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object SDS_NFEIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Size = 15
    end
    object SDS_NFEPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_NFEPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 50
    end
    object SDS_NFESTATUS_INUTILIZADO: TStringField
      FieldName = 'STATUS_INUTILIZADO'
      Size = 1
    end
    object SDS_NFESTATUS_CANCELADO: TStringField
      FieldName = 'STATUS_CANCELADO'
      Size = 1
    end
    object SDS_NFESTATUS_EMAIL: TStringField
      FieldName = 'STATUS_EMAIL'
      Size = 1
    end
    object SDS_NFECOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object SDS_NFEDEPEC: TStringField
      FieldName = 'DEPEC'
      Size = 1
    end
    object SDS_NFECHAVE2: TStringField
      FieldName = 'CHAVE2'
      Size = 50
    end
    object SDS_NFESTATUS_RETORNO: TStringField
      FieldName = 'STATUS_RETORNO'
      Size = 1
    end
    object SDS_NFEJUSTIFICATIVA_CANCEL_INUTIL: TStringField
      FieldName = 'JUSTIFICATIVA_CANCEL_INUTIL'
      Size = 255
    end
    object SDS_NFEMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object SDS_NFECORRECAO: TStringField
      FieldName = 'CORRECAO'
      Size = 1
    end
    object SDS_NFEBXML: TBlobField
      FieldName = 'BXML'
      Size = 1
    end
  end
  object sds_nfe_itens: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from NFE_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'NR_NOTA'
    MasterFields = 'NR_NOTA'
    MasterSource = DTS_NFE
    PacketRecords = 0
    Params = <>
    Left = 880
    Top = 232
    object sds_nfe_itensNR_SEQUENCIA: TIntegerField
      FieldName = 'NR_SEQUENCIA'
      Required = True
    end
    object sds_nfe_itensNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object sds_nfe_itensCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
    end
    object sds_nfe_itensCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Size = 15
    end
    object sds_nfe_itensCOD_NCM: TStringField
      DisplayWidth = 8
      FieldName = 'COD_NCM'
      Size = 8
    end
    object sds_nfe_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object sds_nfe_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object sds_nfe_itensQT_PRODUTO: TFMTBCDField
      FieldName = 'QT_PRODUTO'
      Precision = 15
    end
    object sds_nfe_itensVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object sds_nfe_itensPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sds_nfe_itensCD_ATUALIZACAO: TIntegerField
      FieldName = 'CD_ATUALIZACAO'
    end
    object sds_nfe_itensCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_nfe_itensPC_RED_BASE_ICM: TFMTBCDField
      FieldName = 'PC_RED_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_ICM_SUBST: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensDT_ALTERACAO: TDateField
      FieldName = 'DT_ALTERACAO'
    end
    object sds_nfe_itensDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 3
    end
    object sds_nfe_itensPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensCD_CONTA: TIntegerField
      FieldName = 'CD_CONTA'
    end
    object sds_nfe_itensCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object sds_nfe_itensVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_CONTABIL: TFMTBCDField
      FieldName = 'VL_CONTABIL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ISENTO: TFMTBCDField
      FieldName = 'VL_ISENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_PIS: TFMTBCDField
      FieldName = 'ALIQ_PIS'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_COFINS: TFMTBCDField
      FieldName = 'ALIQ_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'ALIQ_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_PROPRIO_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object sds_nfe_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object sds_nfe_itensCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 3
    end
    object sds_nfe_itensCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 3
    end
    object sds_nfe_itensCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 3
    end
    object sds_nfe_itensVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      currency = True
      Precision = 15
      Size = 5
    end
    object sds_nfe_itensCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
  end
  object DTS_NFE: TDataSource
    DataSet = SDS_NFE
    Left = 808
    Top = 280
  end
  object dts_nfe_itens: TDataSource
    DataSet = sds_nfe_itens
    Left = 888
    Top = 280
  end
  object SPC_NOTA_NFE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NR_NOTA'
        ParamType = ptOutput
        Size = 4
        Value = 797
      end
      item
        DataType = ftInteger
        Name = 'CD_EMPRESA'
        ParamType = ptOutput
        Size = 4
        Value = Null
      end>
    SQLConnection = SQLC
    StoredProcName = 'COD_NOTA'
    Left = 954
    Top = 328
  end
  object Sds_Transportador: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from TRANSPORTADOR'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 1048
    object Sds_TransportadorCD_TRANSPORTADOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CD_TRANSPORTADOR'
      Required = True
    end
    object Sds_TransportadorNOME_TRANSP: TStringField
      DisplayLabel = 'Nome Transp'
      DisplayWidth = 40
      FieldName = 'NOME_TRANSP'
      Size = 80
    end
    object Sds_TransportadorNOME_FANTASIA_TRANSP: TStringField
      DisplayLabel = 'Fantasia Transp'
      DisplayWidth = 40
      FieldName = 'NOME_FANTASIA_TRANSP'
      Size = 80
    end
    object Sds_TransportadorCNPJ: TStringField
      DisplayLabel = 'Cnpj'
      DisplayWidth = 18
      FieldName = 'CNPJ'
      Size = 18
    end
    object Sds_TransportadorENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 30
      FieldName = 'ENDERECO'
      Size = 80
    end
    object Sds_TransportadorBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 15
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Sds_TransportadorTELE_TRANSP: TStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 15
      FieldName = 'TELE_TRANSP'
      EditMask = '!\(99\)0000-0000;0;_'
    end
    object Sds_TransportadorCD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'CD_EMPRESA'
      Visible = False
    end
    object Sds_TransportadorINSCRICAO: TStringField
      DisplayWidth = 18
      FieldName = 'INSCRICAO'
      Visible = False
      Size = 18
    end
    object Sds_TransportadorCEP: TStringField
      DisplayWidth = 10
      FieldName = 'CEP'
      Visible = False
      EditMask = '00000\-999;0;_'
      Size = 10
    end
    object Sds_TransportadorCD_CIDADE: TIntegerField
      DisplayWidth = 10
      FieldName = 'CD_CIDADE'
      Visible = False
    end
    object Sds_TransportadorFAX_TRANS: TStringField
      DisplayWidth = 20
      FieldName = 'FAX_TRANS'
      Visible = False
      EditMask = '!\(99\)0000-0000;0;_'
    end
    object Sds_TransportadorPESSOA_CONTATO: TStringField
      DisplayWidth = 50
      FieldName = 'PESSOA_CONTATO'
      Visible = False
      Size = 50
    end
    object Sds_TransportadorE_MAIL: TStringField
      DisplayWidth = 70
      FieldName = 'E_MAIL'
      Visible = False
      Size = 70
    end
    object Sds_TransportadorCEL_TRANSP: TStringField
      DisplayWidth = 20
      FieldName = 'CEL_TRANSP'
      Visible = False
      EditMask = '!\(99\)0000-0000;0;_'
    end
    object Sds_TransportadorDT_ATZ: TDateField
      DisplayWidth = 10
      FieldName = 'DT_ATZ'
      Visible = False
    end
    object Sds_TransportadorFL_FISICO_JURIDICO: TStringField
      DisplayWidth = 1
      FieldName = 'FL_FISICO_JURIDICO'
      Visible = False
      Size = 1
    end
    object Sds_TransportadorCD_FORNECEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'CD_FORNECEDOR'
      Visible = False
    end
    object Sds_TransportadorNUMERO: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Visible = False
    end
    object Sds_TransportadorCOMPLEMENTO: TStringField
      DisplayWidth = 20
      FieldName = 'COMPLEMENTO'
      Visible = False
    end
    object Sds_TransportadorCIDADE: TStringField
      DisplayWidth = 40
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object Sds_TransportadorUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
  end
  object dts_transportador: TDataSource
    DataSet = Sds_Transportador
    Left = 1048
    Top = 56
  end
  object Spc_transportador: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'CD_EMPRESA'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'COD_TRANSPORTADOR'
    Left = 1050
    Top = 112
  end
  object sDS_MOV_DIARIO: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from MOVIMENTO_DIARIO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_VENDA'
    MasterFields = 'CODIGO'
    PacketRecords = 0
    Params = <>
    Left = 1050
    Top = 432
    object sDS_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 2
    end
    object sDS_MOV_DIARIOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sDS_MOV_DIARIODATA: TDateField
      FieldName = 'DATA'
    end
    object sDS_MOV_DIARIOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object sDS_MOV_DIARIOUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object sDS_MOV_DIARIOTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sDS_MOV_DIARIOVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object sDS_MOV_DIARIOCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object sDS_MOV_DIARIONUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object sDS_MOV_DIARIOCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object sDS_MOV_DIARIOORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
  end
  object DTS_MV_DIARIO: TDataSource
    DataSet = sDS_MOV_DIARIO
    Left = 1050
    Top = 488
  end
  object SDS_Cheques: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select *  from CHEQUES order by CODIGO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
        Value = 4
      end>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'CODIGO'
    MasterSource = Dts_vendas
    PacketRecords = 0
    Params = <>
    Left = 806
    Top = 434
    object SDS_ChequesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ChequesCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_ChequesBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_ChequesAGENCIA: TStringField
      Alignment = taCenter
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_ChequesCONTA_CORRENTE: TStringField
      Alignment = taCenter
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_ChequesCONTA_DESDE: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object SDS_ChequesTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_ChequesTIPO_CHEQUE: TStringField
      Alignment = taCenter
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_ChequesN_CHEQUE: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_ChequesQNT: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_ChequesVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
    end
    object SDS_ChequesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_ChequesRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_ChequesDATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_ChequesDATA_DEPOSITO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_ChequesDATA_RETORNO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object SDS_ChequesDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_ChequesUSUARIO_CADASTRO: TStringField
      Alignment = taCenter
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_ChequesUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_ChequesCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_ChequesCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_ChequesNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object SDS_ChequesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SDS_ChequesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object SDS_ChequesCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_ChequesCOD_BARRAS_CHEQUE: TStringField
      FieldName = 'COD_BARRAS_CHEQUE'
      Size = 50
    end
    object SDS_ChequesCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object SDS_ChequesDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 70
    end
    object SDS_ChequesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 18
    end
  end
  object DTS_Cheques: TDataSource
    DataSet = SDS_Cheques
    Left = 800
    Top = 490
  end
  object SDS_OTICA: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from OTICA ORDER BY DATA ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 952
    Top = 217
    object SDS_OTICACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_OTICANOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object SDS_OTICAENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_OTICABAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_OTICACOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_OTICANUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SDS_OTICACIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_OTICAUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_OTICATELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)000-0000;0;_'
      Size = 15
    end
    object SDS_OTICAESFERA_D: TStringField
      FieldName = 'ESFERA_D'
      Size = 10
    end
    object SDS_OTICACLILINDRICO_D: TStringField
      FieldName = 'CLILINDRICO_D'
      Size = 10
    end
    object SDS_OTICAEIXO_D: TStringField
      FieldName = 'EIXO_D'
      Size = 10
    end
    object SDS_OTICAESFERA_E: TStringField
      FieldName = 'ESFERA_E'
      Size = 10
    end
    object SDS_OTICACLINDRICO_E: TStringField
      FieldName = 'CLINDRICO_E'
      Size = 10
    end
    object SDS_OTICAEIXO_E: TStringField
      FieldName = 'EIXO_E'
      Size = 10
    end
    object SDS_OTICADP_LONGE: TStringField
      FieldName = 'DP_LONGE'
      Size = 10
    end
    object SDS_OTICADP_PERTO: TStringField
      FieldName = 'DP_PERTO'
      Size = 10
    end
    object SDS_OTICAP_ADICAO: TStringField
      FieldName = 'P_ADICAO'
      Size = 10
    end
    object SDS_OTICADATA: TDateField
      FieldName = 'DATA'
    end
    object SDS_OTICAOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
    object SDS_OTICACPF: TStringField
      FieldName = 'CPF'
      EditMask = '000.000.000-00;0;_'
      Size = 18
    end
    object SDS_OTICACOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_OTICACOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
  end
  object DTS_OTICA: TDataSource
    DataSet = SDS_OTICA
    Left = 968
    Top = 272
  end
  object SPC_OTICA: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'COD_OTICA'
    Left = 962
    Top = 384
  end
  object Dts_vendas: TDataSource
    DataSet = sds_vendas
    OnDataChange = Dts_vendasDataChange
    Left = 872
    Top = 336
  end
  object dts_vendas_itens: TDataSource
    DataSet = Sds_Vendas_itens
    Left = 881
    Top = 384
  end
  object Dts_orcamento: TDataSource
    DataSet = sds_orcamento
    Left = 564
    Top = 499
  end
  object Dts_orcamento_itens: TDataSource
    DataSet = Sds_orcamento_itens
    Left = 453
    Top = 673
  end
  object dsp_orcamento: TDataSetProvider
    DataSet = Qry_orcamento
    Left = 575
    Top = 560
  end
  object Qry_orcamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ORCAMENTOS order by CODIGO ASC')
    SQLConnection = SQLC
    Left = 472
    Top = 493
    object Qry_orcamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_orcamentoVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object Qry_orcamentoVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object Qry_orcamentoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object Qry_orcamentoVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object Qry_orcamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Qry_orcamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object Qry_orcamentoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Qry_orcamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Qry_orcamentoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object Qry_orcamentoENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object Qry_orcamentoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 150
    end
    object Qry_orcamentoCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object Qry_orcamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Qry_orcamentoCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object Qry_orcamentoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Qry_orcamentoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Qry_orcamentoFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object Qry_orcamentoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object Qry_orcamentoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 18
    end
    object Qry_orcamentoRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object Qry_orcamentoEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object Qry_orcamentoCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Qry_orcamentoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qry_orcamentoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Qry_orcamentoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Qry_orcamentoCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object Qry_orcamentoPRODUTOR: TStringField
      FieldName = 'PRODUTOR'
      Size = 1
    end
    object Qry_orcamentoIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Size = 15
    end
    object Qry_orcamentoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object Sds_orcamento_itens: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from ORCAMENTOS_ITENS order by Codigo asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = Dts_orcamento
    PacketRecords = 0
    Params = <>
    Left = 449
    Top = 617
    object Sds_orcamento_itensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_orcamento_itensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object Sds_orcamento_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object Sds_orcamento_itensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Sds_orcamento_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Sds_orcamento_itensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 3
    end
    object Sds_orcamento_itensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object Sds_orcamento_itensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_orcamento_itensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object Sds_orcamento_itensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_orcamento_itensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object Sds_orcamento_itensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object Sds_orcamento_itensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 6
    end
    object Sds_orcamento_itensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Sds_orcamento_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object Sds_orcamento_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object Sds_orcamento_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object Sds_orcamento_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
  end
  object sds_orcamento: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsp_orcamento'
    Left = 504
    Top = 552
    object sds_orcamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_orcamentoVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_orcamentoVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_orcamentoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_orcamentoVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_orcamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object sds_orcamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object sds_orcamentoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object sds_orcamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object sds_orcamentoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object sds_orcamentoENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_orcamentoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 150
    end
    object sds_orcamentoCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object sds_orcamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_orcamentoCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object sds_orcamentoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sds_orcamentoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sds_orcamentoFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sds_orcamentoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sds_orcamentoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object sds_orcamentoRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object sds_orcamentoEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object sds_orcamentoCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object sds_orcamentoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sds_orcamentoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sds_orcamentoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sds_orcamentoCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object sds_orcamentoPRODUTOR: TStringField
      FieldName = 'PRODUTOR'
      Size = 1
    end
    object sds_orcamentoIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Size = 15
    end
    object sds_orcamentoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object sds_orcamentoSOMAVALOR_TOTAL: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_TOTAL'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = 'R$: ##,##0.00'
      Expression = 'SUM(VALOR_TOTAL)'
    end
    object sds_orcamentoCOUNT_VENDAS: TAggregateField
      Alignment = taCenter
      FieldName = 'COUNT_VENDAS'
      Active = True
      DisplayName = ''
      Expression = 'COUNT(CODIGO)'
    end
  end
  object SDS_NCM: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from TABELA_NCM ORDER BY CODIGO_NCM ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 208
    Top = 184
    object SDS_NCMCODIGO_NCM: TStringField
      FieldName = 'CODIGO_NCM'
      Size = 8
    end
    object SDS_NCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
    object SDS_NCMALICOTA: TStringField
      FieldName = 'ALICOTA'
      Size = 6
    end
    object SDS_NCMANALITICO: TStringField
      FieldName = 'ANALITICO'
      Size = 1
    end
  end
  object DTS_NCM: TDataSource
    DataSet = SDS_NCM
    Left = 208
    Top = 232
  end
  object SDS_Crediario: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CREDIARIO order by parcela asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'NR_PEDIDO'
    MasterSource = DTS_NFE
    PacketRecords = 0
    Params = <>
    Left = 960
    Top = 120
    object SDS_CrediarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CrediarioCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_CrediarioDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object SDS_CrediarioDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_CrediarioDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CrediarioHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_CrediarioUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SDS_CrediarioUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CrediarioSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_CrediarioVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_CrediarioPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object SDS_CrediarioNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object SDS_CrediarioBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object SDS_CrediarioREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 10
    end
    object SDS_CrediarioDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object SDS_CrediarioID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object SDS_CrediarioENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object SDS_CrediarioCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_CrediarioNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object SDS_CrediarioCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object SDS_CrediarioTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object SDS_CrediarioCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object SDS_CrediarioNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SDS_CrediarioSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object SDS_CrediarioNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object SDS_CrediarioANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object SDS_CrediarioMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object SDS_CrediarioTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object SDS_CrediarioID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object SDS_CrediarioNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object SDS_CrediarioCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object SDS_CrediarioCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioDT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object SDS_CrediarioDIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object SDS_CrediarioN_OS: TStringField
      FieldName = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object SDS_CrediarioVLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Precision = 15
      Size = 2
    end
  end
  object Dts_crediario: TDataSource
    DataSet = SDS_Crediario
    Left = 960
    Top = 168
  end
  object DTS_CLI: TDataSource
    DataSet = SDS_CLI
    OnDataChange = DTS_CLIDataChange
    Left = 614
    Top = 11
  end
  object QConsulta: TFDQuery
    Connection = Coneccao
    Left = 216
    Top = 8
  end
  object QMotivo: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'SELECT *'
      'FROM MOTIVO_ACERTO')
    Left = 24
    Top = 72
    object QMotivoCOD_MOT: TIntegerField
      FieldName = 'COD_MOT'
      Origin = 'COD_MOT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMotivoNOME_MOT: TStringField
      FieldName = 'NOME_MOT'
      Origin = 'NOME_MOT'
      Required = True
      Size = 70
    end
    object QMotivoENTSAI_MOT: TStringField
      FieldName = 'ENTSAI_MOT'
      Origin = 'ENTSAI_MOT'
      Size = 1
    end
  end
  object QLocaisEstoque: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'SELECT *'
      'FROM LOCAIS_ESTOQUE')
    Left = 1223
    Top = 328
    object QLocaisEstoqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLocaisEstoqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 60
    end
  end
  object DSLocaisEstoque: TDataSource
    AutoEdit = False
    DataSet = QLocaisEstoque
    Left = 32
    Top = 136
  end
  object DSMotivo: TDataSource
    AutoEdit = False
    DataSet = QMotivo
    Left = 96
    Top = 72
  end
  object Limpa: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      
        'UPDATE NFE_NOTA SET STATUS = '#39#39', STATUS_RETORNO='#39#39', CHAVE2='#39#39' WH' +
        'ERE NR_NOTA = :CODNF')
    Left = 1168
    Top = 320
    ParamData = <
      item
        Name = 'CODNF'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Dts_grupo_Trib: TDataSource
    DataSet = Sds_grupo_trib
    Left = 208
    Top = 328
  end
  object Sds_pis_cofins: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from TABELA_PIS_COFINS order By cod_pis_cofins asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'COD_PIS_COFINS'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 161
    Top = 376
    object Sds_pis_cofinsCOD_PIS_COFINS: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 2
      FieldName = 'COD_PIS_COFINS'
      Required = True
      Size = 2
    end
    object Sds_pis_cofinsDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 150
      FieldName = 'DESCRICAO'
      Size = 150
    end
  end
  object Dts_pis_Cofins: TDataSource
    DataSet = Sds_pis_cofins
    Left = 209
    Top = 376
  end
  object Sds_grupo_trib: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from GRUPO_TRIBUTACAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'COD_GRUPO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 70
      end
      item
        Name = 'FLAG_SUBSTITUICAO_TRIB'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_SUBST_TRIBUTARIA'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'FLAG_SERVICO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_ALIQUOTA_ISS'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'FLAG_FABRICACAO_PROPRIA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_ALIQUOTA_IPI'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'FLAG_PIS_COFINS'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_ALIQUOTA_PIS'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'PERC_ALIQUOTA_COFINS'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'FLAG_ICMSGARANTIDO_INTEGRAL'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_ICMS_GARANTIDO_INTEGRAL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CFOP_ESTADUAL_DEV'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_INTERESTADUAL_DEV'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_EST_COMPRA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_INTER_COMPRA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_EST_VENDA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_INTER_VENDA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_EST_TRANSF'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_INTER_EST_TRASNF'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CST_VENDA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CST_COMPRA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FLAG_ICMS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_ICMS_ESTADUAL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'PERC_ICMS_INTER_ESTADUAL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'SIT_PIS_VENDA_EST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIT_COFINS_VENDA_EST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIT_PIS_VENDA_INTER_EST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIT_COFINS_VENDA_INTER_EST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIT_PIS_COMPRA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIT_COFINS_COMPRA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CST_VENDA_INTER'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CST_COMPRA_INTER'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PERC_RED_ICMS'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CST_IPI_ENTRADA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CST_IPI_SAIDA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CFOP_REV_EST'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_REV_INTER'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PERC_LUCRO_ST'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CST_VENDA_NFCE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CST_VENDA_INTER_NFCE'
        DataType = ftSmallint
      end
      item
        Name = 'PERC_ALICOTA_IR'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'PERC_ALICOTA_CSLL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'PERC_ALIC_OUTRAS'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 153
    Top = 328
    object Sds_grupo_tribCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Required = True
    end
    object Sds_grupo_tribFLAG_SUBSTITUICAO_TRIB: TStringField
      FieldName = 'FLAG_SUBSTITUICAO_TRIB'
      Required = True
      Size = 1
    end
    object Sds_grupo_tribPERC_SUBST_TRIBUTARIA: TFMTBCDField
      FieldName = 'PERC_SUBST_TRIBUTARIA'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribFLAG_SERVICO: TStringField
      FieldName = 'FLAG_SERVICO'
      Required = True
      Size = 1
    end
    object Sds_grupo_tribPERC_ALIQUOTA_ISS: TFMTBCDField
      FieldName = 'PERC_ALIQUOTA_ISS'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribFLAG_FABRICACAO_PROPRIA: TStringField
      FieldName = 'FLAG_FABRICACAO_PROPRIA'
      Required = True
      Size = 1
    end
    object Sds_grupo_tribPERC_ALIQUOTA_IPI: TFMTBCDField
      FieldName = 'PERC_ALIQUOTA_IPI'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribFLAG_PIS_COFINS: TStringField
      FieldName = 'FLAG_PIS_COFINS'
      Required = True
      Size = 1
    end
    object Sds_grupo_tribPERC_ALIQUOTA_PIS: TFMTBCDField
      FieldName = 'PERC_ALIQUOTA_PIS'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribPERC_ALIQUOTA_COFINS: TFMTBCDField
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribFLAG_ICMSGARANTIDO_INTEGRAL: TStringField
      FieldName = 'FLAG_ICMSGARANTIDO_INTEGRAL'
      Required = True
      Size = 1
    end
    object Sds_grupo_tribPERC_ICMS_GARANTIDO_INTEGRAL: TFMTBCDField
      FieldName = 'PERC_ICMS_GARANTIDO_INTEGRAL'
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribCFOP_ESTADUAL_DEV: TStringField
      FieldName = 'CFOP_ESTADUAL_DEV'
      Size = 4
    end
    object Sds_grupo_tribCFOP_INTERESTADUAL_DEV: TStringField
      FieldName = 'CFOP_INTERESTADUAL_DEV'
      Size = 4
    end
    object Sds_grupo_tribCFOP_EST_COMPRA: TStringField
      FieldName = 'CFOP_EST_COMPRA'
      Size = 4
    end
    object Sds_grupo_tribCFOP_INTER_COMPRA: TStringField
      FieldName = 'CFOP_INTER_COMPRA'
      Size = 4
    end
    object Sds_grupo_tribCFOP_EST_VENDA: TStringField
      FieldName = 'CFOP_EST_VENDA'
      Size = 4
    end
    object Sds_grupo_tribCFOP_INTER_VENDA: TStringField
      FieldName = 'CFOP_INTER_VENDA'
      Size = 4
    end
    object Sds_grupo_tribCFOP_EST_TRANSF: TStringField
      FieldName = 'CFOP_EST_TRANSF'
      Size = 4
    end
    object Sds_grupo_tribCFOP_INTER_EST_TRASNF: TStringField
      FieldName = 'CFOP_INTER_EST_TRASNF'
      Size = 4
    end
    object Sds_grupo_tribCST_VENDA: TStringField
      FieldName = 'CST_VENDA'
      Size = 3
    end
    object Sds_grupo_tribCST_COMPRA: TStringField
      FieldName = 'CST_COMPRA'
      Size = 3
    end
    object Sds_grupo_tribFLAG_ICMS: TStringField
      FieldName = 'FLAG_ICMS'
      Size = 1
    end
    object Sds_grupo_tribPERC_ICMS_ESTADUAL: TFMTBCDField
      FieldName = 'PERC_ICMS_ESTADUAL'
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribPERC_ICMS_INTER_ESTADUAL: TFMTBCDField
      FieldName = 'PERC_ICMS_INTER_ESTADUAL'
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribSIT_PIS_VENDA_EST: TStringField
      FieldName = 'SIT_PIS_VENDA_EST'
      Size = 2
    end
    object Sds_grupo_tribSIT_COFINS_VENDA_EST: TStringField
      FieldName = 'SIT_COFINS_VENDA_EST'
      Size = 2
    end
    object Sds_grupo_tribSIT_PIS_VENDA_INTER_EST: TStringField
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Size = 2
    end
    object Sds_grupo_tribSIT_COFINS_VENDA_INTER_EST: TStringField
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Size = 2
    end
    object Sds_grupo_tribCST_VENDA_INTER: TStringField
      FieldName = 'CST_VENDA_INTER'
      Size = 3
    end
    object Sds_grupo_tribCST_COMPRA_INTER: TStringField
      FieldName = 'CST_COMPRA_INTER'
      Size = 3
    end
    object Sds_grupo_tribPERC_RED_ICMS: TFMTBCDField
      FieldName = 'PERC_RED_ICMS'
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Sds_grupo_tribCST_IPI_ENTRADA: TStringField
      FieldName = 'CST_IPI_ENTRADA'
      Size = 2
    end
    object Sds_grupo_tribCST_IPI_SAIDA: TStringField
      FieldName = 'CST_IPI_SAIDA'
      Size = 2
    end
    object Sds_grupo_tribSIT_PIS_COMPRA: TStringField
      FieldName = 'SIT_PIS_COMPRA'
      Size = 2
    end
    object Sds_grupo_tribSIT_COFINS_COMPRA: TStringField
      FieldName = 'SIT_COFINS_COMPRA'
      Size = 2
    end
    object Sds_grupo_tribCFOP_REV_EST: TStringField
      FieldName = 'CFOP_REV_EST'
      Size = 4
    end
    object Sds_grupo_tribCFOP_REV_INTER: TStringField
      FieldName = 'CFOP_REV_INTER'
      Size = 4
    end
    object Sds_grupo_tribPERC_LUCRO_ST: TFMTBCDField
      FieldName = 'PERC_LUCRO_ST'
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribCST_VENDA_NFCE: TStringField
      FieldName = 'CST_VENDA_NFCE'
      Size = 3
    end
    object Sds_grupo_tribCST_VENDA_INTER_NFCE: TSmallintField
      FieldName = 'CST_VENDA_INTER_NFCE'
    end
    object Sds_grupo_tribPERC_ALICOTA_IR: TFMTBCDField
      FieldName = 'PERC_ALICOTA_IR'
      Precision = 18
      Size = 2
    end
    object Sds_grupo_tribPERC_ALICOTA_CSLL: TFMTBCDField
      FieldName = 'PERC_ALICOTA_CSLL'
      Precision = 18
      Size = 2
    end
    object Sds_grupo_tribPERC_ALIC_OUTRAS: TFMTBCDField
      FieldName = 'PERC_ALIC_OUTRAS'
      Precision = 18
      Size = 2
    end
  end
  object DSLab: TDataSource
    AutoEdit = False
    DataSet = QLab
    Left = 136
    Top = 232
  end
  object QLab: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'SELECT *'
      'FROM LABORATORIO')
    Left = 152
    Top = 184
    object QLabCOD_LAB: TIntegerField
      FieldName = 'COD_LAB'
      Origin = 'COD_LAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLabNOME_LAB: TStringField
      FieldName = 'NOME_LAB'
      Origin = 'NOME_LAB'
      Required = True
      Size = 70
    end
  end
  object IBTRAux: TFDTransaction
    Connection = Coneccao
    Left = 152
    Top = 128
  end
  object QAdmCartao: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from ADMINISTRADORA_CARTAO')
    Left = 160
    Top = 432
    object QAdmCartaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ADMINISTRADORA_CARTAO.CODIGO'
      Required = True
    end
    object QAdmCartaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object QAdmCartaoCODIGO_TEF: TStringField
      FieldName = 'CODIGO_TEF'
      Origin = 'CODIGO_TEF'
      Size = 10
    end
  end
  object DSAdmCartao: TDataSource
    AutoEdit = False
    DataSet = QAdmCartao
    Left = 216
    Top = 432
  end
  object QBandeira: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'SELECT B.*, A.DESCRICAO ADMINISTRADORA'
      'FROM BANDEIRAS_CARTAO B'
      'INNER JOIN ADMINISTRADORA_CARTAO A'
      'ON (B.CODIGO_ADMINISTRADORA = A.CODIGO)'
      '')
    Left = 160
    Top = 480
    object QBandeiraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'BANDEIRAS_CARTAO.CODIGO'
      Required = True
    end
    object QBandeiraCODIGO_ADMINISTRADORA: TIntegerField
      FieldName = 'CODIGO_ADMINISTRADORA'
      Origin = 'BANDEIRAS_CARTAO.CODIGO_ADMINISTRADORA'
      Required = True
    end
    object QBandeiraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object QBandeiraATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object QBandeiraTAXA_CREDITO: TFloatField
      FieldName = 'TAXA_CREDITO'
      Origin = 'TAXA_CREDITO'
    end
    object QBandeiraTAXA_DEBITO: TFloatField
      FieldName = 'TAXA_DEBITO'
      Origin = 'TAXA_DEBITO'
    end
    object QBandeiraDIAS_CREDITO: TIntegerField
      FieldName = 'DIAS_CREDITO'
      Origin = 'DIAS_CREDITO'
    end
    object QBandeiraDIAS_DEBITO: TIntegerField
      FieldName = 'DIAS_DEBITO'
      Origin = 'DIAS_DEBITO'
    end
    object QBandeiraTIPO_CARTAO: TStringField
      FieldName = 'TIPO_CARTAO'
      Origin = 'TIPO_CARTAO'
      Size = 1
    end
    object QBandeiraCODIGO_TEF: TStringField
      FieldName = 'CODIGO_TEF'
      Origin = 'CODIGO_TEF'
      Size = 10
    end
    object QBandeiraADMINISTRADORA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADMINISTRADORA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DSBandeira: TDataSource
    AutoEdit = False
    DataSet = QBandeira
    Left = 216
    Top = 480
  end
  object SDS_SECCAO1: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from SECCAO ORDER BY CODIGO asc'
    DataSet.DataSource = DTS_SECCAO
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'SECCAO'
    MasterSource = DTS_PRODUTOS
    PacketRecords = 0
    Params = <>
    Left = 120
    Top = 288
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'USERCAD'
    end
    object DateField1: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_SECCAO1: TDataSource
    DataSet = SDS_SECCAO1
    Left = 192
    Top = 280
  end
  object sds_seccao2: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from SECCAO ORDER BY CODIGO asc'
    DataSet.DataSource = DTS_SECCAO
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'SECCAO'
    MasterSource = Dts_produtos_c
    PacketRecords = 0
    Params = <>
    Left = 224
    Top = 526
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'USERCAD'
    end
    object DateField2: TDateField
      FieldName = 'DATACAD'
    end
  end
  object dts_seccao2: TDataSource
    AutoEdit = False
    DataSet = sds_seccao2
    Left = 248
    Top = 590
  end
  object ProxCod1: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      
        'select max(nr_nota) as n_codigo  from nfece_nota  where nfece_no' +
        'ta.cd_empresa =:cod_emp;')
    Left = 344
    Top = 8
    ParamData = <
      item
        Name = 'cod_emp'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object ProxCod1N_CODIGO: TIntegerField
      FieldName = 'N_CODIGO'
    end
  end
  object ProxCod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(codigo) as N_CODIGO FROM categorias')
    SQLConnection = SQLC
    Left = 400
    Top = 8
    object ProxCodN_CODIGO: TIntegerField
      FieldName = 'N_CODIGO'
    end
  end
  object Sds_Cst_ipi: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from TABELA_IPI order by cst_ipi asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 648
    Top = 536
    object Sds_Cst_ipiCST_IPI: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 2
      FieldName = 'CST_IPI'
      Size = 2
    end
    object Sds_Cst_ipiIPI_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 200
      FieldName = 'IPI_DESCRICAO'
      Size = 200
    end
  end
  object Dts_Cst_ipi: TDataSource
    DataSet = Sds_Cst_ipi
    Left = 728
    Top = 536
  end
  object Dts_IdSistema: TDataSource
    DataSet = sds_IdSistema
    Left = 504
    Top = 7
  end
  object DSCaixa: TDataSource
    AutoEdit = False
    DataSet = QCaixa
    Left = 688
    Top = 48
  end
  object QCaixa: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Left = 672
    Top = 8
    object QCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object QCaixaSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      FixedChar = True
      Size = 15
    end
    object QCaixaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object QCaixaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
    object QCaixaFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Origin = 'FUNCAO'
      Size = 70
    end
    object QCaixaEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      Origin = 'EXCLUIR'
      Size = 1
    end
    object QCaixaEDITAR: TStringField
      FieldName = 'EDITAR'
      Origin = 'EDITAR'
      Size = 1
    end
    object QCaixaINSERIR: TStringField
      FieldName = 'INSERIR'
      Origin = 'INSERIR'
      Size = 1
    end
    object QCaixaAUTORIZA: TStringField
      FieldName = 'AUTORIZA'
      Origin = 'AUTORIZA'
      Size = 1
    end
  end
  object QConv: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'SELECT *'
      'FROM CONVENIO')
    Left = 719
    Top = 8
    object QConvCOD_CON: TIntegerField
      FieldName = 'COD_CON'
      Origin = 'COD_CON'
      Required = True
    end
    object QConvNOME_CON: TStringField
      FieldName = 'NOME_CON'
      Origin = 'NOME_CON'
      Required = True
      Size = 70
    end
    object QConvEND_CON: TStringField
      FieldName = 'END_CON'
      Origin = 'END_CON'
      Size = 50
    end
    object QConvBAI_CON: TStringField
      FieldName = 'BAI_CON'
      Origin = 'BAI_CON'
      Size = 30
    end
    object QConvCID_CON: TStringField
      FieldName = 'CID_CON'
      Origin = 'CID_CON'
      Size = 30
    end
    object QConvCEP_CON: TStringField
      FieldName = 'CEP_CON'
      Origin = 'CEP_CON'
      FixedChar = True
      Size = 9
    end
    object QConvTEL_CON: TStringField
      FieldName = 'TEL_CON'
      Origin = 'TEL_CON'
      FixedChar = True
      Size = 13
    end
    object QConvFAX_CON: TStringField
      FieldName = 'FAX_CON'
      Origin = 'FAX_CON'
      FixedChar = True
      Size = 13
    end
    object QConvATIVO_CON: TStringField
      FieldName = 'ATIVO_CON'
      Origin = 'ATIVO_CON'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QConvRESPONSAVEL_CON: TStringField
      FieldName = 'RESPONSAVEL_CON'
      Origin = 'RESPONSAVEL_CON'
      Size = 50
    end
    object QConvCNPJ_CON: TStringField
      FieldName = 'CNPJ_CON'
      Origin = 'CNPJ_CON'
      FixedChar = True
      Size = 18
    end
    object QConvINSC_CON: TStringField
      FieldName = 'INSC_CON'
      Origin = 'INSC_CON'
    end
    object QConvEST_CON: TStringField
      FieldName = 'EST_CON'
      Origin = 'EST_CON'
      FixedChar = True
      Size = 2
    end
    object QConvOBS_AUTORIZACAO_CON: TStringField
      FieldName = 'OBS_AUTORIZACAO_CON'
      Origin = 'OBS_AUTORIZACAO_CON'
      Size = 200
    end
    object QConvDIA_REFERENCIA_CON: TIntegerField
      FieldName = 'DIA_REFERENCIA_CON'
      Origin = 'DIA_REFERENCIA_CON'
    end
    object QConvDESCONTO_CON: TFMTBCDField
      FieldName = 'DESCONTO_CON'
      Origin = 'DESCONTO_CON'
      Precision = 18
      Size = 2
    end
  end
  object DSConv: TDataSource
    AutoEdit = False
    DataSet = QConv
    Left = 768
    Top = 8
  end
  object QRRELATORIO: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from L000003'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 1056
    Top = 552
  end
  object fxrelatorio: TfrxDBDataset
    UserName = 'fxrelatorio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LINHA1=LINHA1'
      'LINHA2=LINHA2'
      'LINHA3=LINHA3'
      'LINHA4=LINHA4'
      'LINHA5=LINHA5'
      'LINHA6=LINHA6'
      'LINHA7=LINHA7'
      'LINHA8=LINHA8'
      'LINHA9=LINHA9'
      'LINHA10=LINHA10'
      'VALOR1=VALOR1'
      'VALOR2=VALOR2'
      'VALOR3=VALOR3'
      'VALOR4=VALOR4'
      'VALOR5=VALOR5'
      'VALOR6=VALOR6'
      'VALOR7=VALOR7'
      'VALOR8=VALOR8'
      'VALOR9=VALOR9'
      'VALOR10=VALOR10'
      'VALOR11=VALOR11'
      'VALOR12=VALOR12'
      'VALOR13=VALOR13'
      'VALOR14=VALOR14'
      'VALOR15=VALOR15'
      'VALOR16=VALOR16'
      'VALOR17=VALOR17'
      'VALOR18=VALOR18'
      'VALOR19=VALOR19'
      'VALOR20=VALOR20'
      'VALOR21=VALOR21'
      'VALOR22=VALOR22'
      'VALOR23=VALOR23'
      'VALOR24=VALOR24'
      'VALOR25=VALOR25'
      'VALOR26=VALOR26'
      'VALOR27=VALOR27'
      'VALOR28=VALOR28'
      'VALOR29=VALOR29'
      'VALOR30=VALOR30'
      'VALOR31=VALOR31'
      'VALOR32=VALOR32'
      'VALOR33=VALOR33'
      'VALOR34=VALOR34'
      'VALOR35=VALOR35'
      'TEXTO_GRANDE=TEXTO_GRANDE'
      'TP=TP')
    DataSet = QRRELATORIO
    BCDToCurrency = False
    Left = 1120
    Top = 18
  end
  object fxemitente: TfrxDBDataset
    UserName = 'fxemitente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'RAZAO_SOCIAL=RAZAO_SOCIAL'
      'NOME_FANTASIA=NOME_FANTASIA'
      'ENDERECO=ENDERECO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'HOMEPAGE=HOMEPAGE'
      'IE=IE'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'IM=IM'
      'LOGOMARCA=LOGOMARCA'
      'CNAE=CNAE'
      'COD_CID_IBGE=COD_CID_IBGE'
      'URS_INDEA=URS_INDEA'
      'ULE_INDEA=ULE_INDEA'
      'MATRICULA_INDEA=MATRICULA_INDEA'
      'PROPRIETARIO=PROPRIETARIO'
      'RESPONSAVEL_TECINICO=RESPONSAVEL_TECINICO'
      'CRMV_N=CRMV_N'
      'FLAG_VETERINARIA=FLAG_VETERINARIA'
      'REGIME=REGIME'
      'ALIC_SIMPLES=ALIC_SIMPLES'
      'ALIC_PIS=ALIC_PIS'
      'ALIC_COFINS=ALIC_COFINS'
      'ALIC_IRPJ=ALIC_IRPJ'
      'ALIC_CSLL=ALIC_CSLL'
      'SUFRAMA=SUFRAMA'
      'NOME_CONTADOR=NOME_CONTADOR'
      'CRC_CONTADOR=CRC_CONTADOR'
      'ENDERECO_CONTADOR=ENDERECO_CONTADOR'
      'CEP_CONTADOR=CEP_CONTADOR'
      'NUM_CONTADOR=NUM_CONTADOR'
      'BAIRRO_CONTADOR=BAIRRO_CONTADOR'
      'COMPL_CONTADOR=COMPL_CONTADOR'
      'FONE_CONTADOR=FONE_CONTADOR'
      'FAX_CONTADOR=FAX_CONTADOR'
      'COD_IBGE_CONTADOR=COD_IBGE_CONTADOR'
      'CNPJ_CONTADOR=CNPJ_CONTADOR'
      'CPF_CONTADOR=CPF_CONTADOR'
      'CIDADE_CONTADOR=CIDADE_CONTADOR'
      'UF_CONTADOR=UF_CONTADOR'
      'CPF_RESPONSAVEL=CPF_RESPONSAVEL'
      'COMPLEMENTO=COMPLEMENTO'
      'CNPJ=CNPJ'
      'EMAIL_CONTADOR=EMAIL_CONTADOR'
      'TIPO_SEGMENTO=TIPO_SEGMENTO')
    DataSet = SDS_Empresa
    BCDToCurrency = False
    Left = 1120
    Top = 66
  end
  object delCupom: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'delete from cupom where cupom.numero =:venda')
    Left = 808
    Top = 560
    ParamData = <
      item
        Name = 'venda'
      end>
    object IntegerField3: TIntegerField
      FieldName = 'N_CODIGO'
    end
  end
  object Sds_unidade: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select *  from UNIDADES order by descricao'
    DataSet.DataSource = Dts_unidade
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 968
    Top = 444
    object IntegerField4: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'USERCAD'
    end
    object StringField7: TStringField
      FieldName = 'ABREVIATURA'
      Size = 6
    end
    object DateField3: TDateField
      FieldName = 'DATACADASTRO'
    end
  end
  object Dts_unidade: TDataSource
    DataSet = Sds_unidade
    Left = 968
    Top = 503
  end
  object qrinfnutricional_produto: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select *  from  PRODUTOS_INFO_ADIC order by codigo'
    DataSet.DataSource = Dts_unidade
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 608
    Top = 610
    object qrinfnutricional_produtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrinfnutricional_produtoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object qrinfnutricional_produtoPORCAO: TStringField
      FieldName = 'PORCAO'
    end
    object qrinfnutricional_produtoVALOR_CALORICO: TIntegerField
      FieldName = 'VALOR_CALORICO'
    end
    object qrinfnutricional_produtoVALOR_CALORICO_VD: TStringField
      FieldName = 'VALOR_CALORICO_VD'
      Size = 6
    end
    object qrinfnutricional_produtoCARBOIDRATOS: TIntegerField
      FieldName = 'CARBOIDRATOS'
    end
    object qrinfnutricional_produtoCARBOIDRATOS_VD: TIntegerField
      FieldName = 'CARBOIDRATOS_VD'
    end
    object qrinfnutricional_produtoPROTEINAS: TIntegerField
      FieldName = 'PROTEINAS'
    end
    object qrinfnutricional_produtoPROTEINAS_VD: TIntegerField
      FieldName = 'PROTEINAS_VD'
    end
    object qrinfnutricional_produtoGORDURASTOTAIS: TFMTBCDField
      FieldName = 'GORDURASTOTAIS'
      Precision = 15
      Size = 2
    end
    object qrinfnutricional_produtoGORDURASTOTAIS_VD: TIntegerField
      FieldName = 'GORDURASTOTAIS_VD'
    end
    object qrinfnutricional_produtoGORDURASSATURADAS: TFMTBCDField
      FieldName = 'GORDURASSATURADAS'
      Precision = 15
      Size = 2
    end
    object qrinfnutricional_produtoGORDURASSATURADAS_VD: TIntegerField
      FieldName = 'GORDURASSATURADAS_VD'
    end
    object qrinfnutricional_produtoCOLESTEROL: TIntegerField
      FieldName = 'COLESTEROL'
    end
    object qrinfnutricional_produtoCOLESTEROL_VD: TIntegerField
      FieldName = 'COLESTEROL_VD'
    end
    object qrinfnutricional_produtoFIBRA: TIntegerField
      FieldName = 'FIBRA'
    end
    object qrinfnutricional_produtoFIBRA_VD: TIntegerField
      FieldName = 'FIBRA_VD'
    end
    object qrinfnutricional_produtoCALCIO: TFMTBCDField
      FieldName = 'CALCIO'
      Precision = 15
      Size = 2
    end
    object qrinfnutricional_produtoCALCIO_VD: TIntegerField
      FieldName = 'CALCIO_VD'
    end
    object qrinfnutricional_produtoFERRO: TFMTBCDField
      FieldName = 'FERRO'
      Precision = 15
      Size = 2
    end
    object qrinfnutricional_produtoFERRO_VD: TIntegerField
      FieldName = 'FERRO_VD'
    end
    object qrinfnutricional_produtoSODIO: TIntegerField
      FieldName = 'SODIO'
    end
    object qrinfnutricional_produtoSODIO_VD: TIntegerField
      FieldName = 'SODIO_VD'
    end
    object qrinfnutricional_produtoUNIDADE_PORCAO: TStringField
      FieldName = 'UNIDADE_PORCAO'
      Size = 1
    end
    object qrinfnutricional_produtoPARTE_INTEIRA: TStringField
      FieldName = 'PARTE_INTEIRA'
      Size = 2
    end
    object qrinfnutricional_produtoPARTE_DECIMAL: TStringField
      FieldName = 'PARTE_DECIMAL'
      Size = 1
    end
    object qrinfnutricional_produtoMEDIDA_CASEIRA: TStringField
      FieldName = 'MEDIDA_CASEIRA'
      Size = 2
    end
  end
  object Dts_info_nutricional: TDataSource
    DataSet = qrinfnutricional_produto
    Left = 608
    Top = 661
  end
  object sds_nfce_itens: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from NFECE_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'NR_NOTA'
    MasterFields = 'NR_NOTA'
    MasterSource = Dts_nfce
    PacketRecords = 0
    Params = <>
    Left = 1248
    Top = 218
    object sds_nfce_itensNR_SEQUENCIA: TIntegerField
      FieldName = 'NR_SEQUENCIA'
      Required = True
    end
    object sds_nfce_itensNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object sds_nfce_itensCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Size = 15
    end
    object sds_nfce_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 8
    end
    object sds_nfce_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object sds_nfce_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object sds_nfce_itensQT_PRODUTO: TFMTBCDField
      FieldName = 'QT_PRODUTO'
      Precision = 15
    end
    object sds_nfce_itensVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object sds_nfce_itensPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sds_nfce_itensCD_ATUALIZACAO: TIntegerField
      FieldName = 'CD_ATUALIZACAO'
    end
    object sds_nfce_itensCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_nfce_itensPC_RED_BASE_ICM: TFMTBCDField
      FieldName = 'PC_RED_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensALIQ_ICM_SUBST: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensDT_ALTERACAO: TDateField
      FieldName = 'DT_ALTERACAO'
    end
    object sds_nfce_itensDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 3
    end
    object sds_nfce_itensPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensCD_CONTA: TIntegerField
      FieldName = 'CD_CONTA'
    end
    object sds_nfce_itensCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object sds_nfce_itensVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_CONTABIL: TFMTBCDField
      FieldName = 'VL_CONTABIL'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_ISENTO: TFMTBCDField
      FieldName = 'VL_ISENTO'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensALIQ_PIS: TFMTBCDField
      FieldName = 'ALIQ_PIS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensALIQ_COFINS: TFMTBCDField
      FieldName = 'ALIQ_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensALIQ_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'ALIQ_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_BASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensALIQ_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object sds_nfce_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object sds_nfce_itensCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 3
    end
    object sds_nfce_itensCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 3
    end
    object sds_nfce_itensCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 2
    end
    object sds_nfce_itensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object sds_nfce_itensVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Precision = 15
      Size = 5
    end
    object sds_nfce_itensCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
  end
  object Dts_nfce: TDataSource
    DataSet = SDS_NFCE
    Left = 1176
    Top = 268
  end
  object dts_nfce_itens: TDataSource
    DataSet = sds_nfce_itens
    Left = 1248
    Top = 266
  end
  object Limpa_nfce: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      
        'UPDATE NFECE_NOTA SET STATUS = '#39#39', STATUS_RETORNO='#39#39', CHAVE2='#39#39' ' +
        'WHERE NR_NOTA = :CODNF')
    Left = 88
    Top = 256
    ParamData = <
      item
        Name = 'CODNF'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DTS_VEICULOS: TDataSource
    DataSet = SDS_VEICULOS
    Left = 1048
    Top = 224
  end
  object SDS_VEICULOS: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from VEICULO')
    Left = 1048
    Top = 168
    object SDS_VEICULOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_VEICULOSNOME: TStringField
      FieldName = 'NOME'
    end
    object SDS_VEICULOSANO: TStringField
      FieldName = 'ANO'
      Size = 10
    end
    object SDS_VEICULOSCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 15
    end
    object SDS_VEICULOSPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object SDS_VEICULOSUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object SDS_VEICULOSCOR: TStringField
      FieldName = 'COR'
    end
    object SDS_VEICULOSOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object SDS_VEICULOSOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object SDS_VEICULOSOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object SDS_VEICULOSCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object SDS_VEICULOSCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_VEICULOSCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 50
    end
    object SDS_VEICULOSRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 30
    end
    object SDS_VEICULOSISENTO_IPVA: TStringField
      FieldName = 'ISENTO_IPVA'
      Size = 1
    end
  end
  object qrLMC: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from LMC')
    Left = 808
    Top = 614
    object qrLMCCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrLMCTANQUE: TIntegerField
      FieldName = 'TANQUE'
    end
    object qrLMCBOMBA: TIntegerField
      FieldName = 'BOMBA'
    end
    object qrLMCBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 5
    end
    object qrLMCABERTURA: TIntegerField
      FieldName = 'ABERTURA'
      Origin = 'ABERTURA'
    end
    object qrLMCENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
      Origin = 'ENCERRANTE'
    end
    object qrLMCCOMBUSTIVEL: TIntegerField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
    end
    object qrLMCDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrLMCSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object qrLMCNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
    end
    object qrLMCNOTAFISCAL1: TStringField
      FieldName = 'NOTAFISCAL1'
      Origin = 'NOTAFISCAL1'
      Size = 10
    end
    object qrLMCNOTAFISCAL2: TStringField
      FieldName = 'NOTAFISCAL2'
      Origin = 'NOTAFISCAL2'
      Size = 10
    end
    object qrLMCNOTAFISCAL3: TStringField
      FieldName = 'NOTAFISCAL3'
      Origin = 'NOTAFISCAL3'
      Size = 10
    end
    object qrLMCNOTAFISCAL4: TStringField
      FieldName = 'NOTAFISCAL4'
      Origin = 'NOTAFISCAL4'
      Size = 10
    end
    object qrLMCQUANTNF1: TIntegerField
      FieldName = 'QUANTNF1'
      Origin = 'QUANTNF1'
    end
    object qrLMCQUANTNF2: TIntegerField
      FieldName = 'QUANTNF2'
      Origin = 'QUANTNF2'
    end
    object qrLMCQUANTNF3: TIntegerField
      FieldName = 'QUANTNF3'
      Origin = 'QUANTNF3'
    end
    object qrLMCQUANTNF4: TIntegerField
      FieldName = 'QUANTNF4'
      Origin = 'QUANTNF4'
    end
    object qrLMCBICO1: TIntegerField
      FieldName = 'BICO1'
      Origin = 'BICO1'
    end
    object qrLMCBICO2: TIntegerField
      FieldName = 'BICO2'
      Origin = 'BICO2'
    end
    object qrLMCBICO3: TIntegerField
      FieldName = 'BICO3'
      Origin = 'BICO3'
    end
    object qrLMCBICO4: TIntegerField
      FieldName = 'BICO4'
      Origin = 'BICO4'
    end
    object qrLMCBICO5: TIntegerField
      FieldName = 'BICO5'
      Origin = 'BICO5'
    end
    object qrLMCBICO6: TIntegerField
      FieldName = 'BICO6'
      Origin = 'BICO6'
    end
    object qrLMCBICO7: TIntegerField
      FieldName = 'BICO7'
      Origin = 'BICO7'
    end
    object qrLMCBICO8: TIntegerField
      FieldName = 'BICO8'
      Origin = 'BICO8'
    end
    object qrLMCABER_BICO1: TIntegerField
      FieldName = 'ABER_BICO1'
      Origin = 'ABER_BICO1'
    end
    object qrLMCABER_BICO2: TIntegerField
      FieldName = 'ABER_BICO2'
      Origin = 'ABER_BICO2'
    end
    object qrLMCABER_BICO3: TIntegerField
      FieldName = 'ABER_BICO3'
      Origin = 'ABER_BICO3'
    end
    object qrLMCABER_BICO4: TIntegerField
      FieldName = 'ABER_BICO4'
      Origin = 'ABER_BICO4'
    end
    object qrLMCABER_BICO5: TIntegerField
      FieldName = 'ABER_BICO5'
      Origin = 'ABER_BICO5'
    end
    object qrLMCABER_BICO6: TIntegerField
      FieldName = 'ABER_BICO6'
      Origin = 'ABER_BICO6'
    end
    object qrLMCABER_BICO7: TIntegerField
      FieldName = 'ABER_BICO7'
      Origin = 'ABER_BICO7'
    end
    object qrLMCABER_BICO8: TIntegerField
      FieldName = 'ABER_BICO8'
      Origin = 'ABER_BICO8'
    end
    object qrLMCENC_BICO1: TIntegerField
      FieldName = 'ENC_BICO1'
      Origin = 'ENC_BICO1'
    end
    object qrLMCENC_BICO2: TIntegerField
      FieldName = 'ENC_BICO2'
      Origin = 'ENC_BICO2'
    end
    object qrLMCENC_BICO3: TIntegerField
      FieldName = 'ENC_BICO3'
      Origin = 'ENC_BICO3'
    end
    object qrLMCENC_BICO4: TIntegerField
      FieldName = 'ENC_BICO4'
      Origin = 'ENC_BICO4'
    end
    object qrLMCENC_BICO5: TIntegerField
      FieldName = 'ENC_BICO5'
      Origin = 'ENC_BICO5'
    end
    object qrLMCENC_BICO6: TIntegerField
      FieldName = 'ENC_BICO6'
      Origin = 'ENC_BICO6'
    end
    object qrLMCENC_BICO7: TIntegerField
      FieldName = 'ENC_BICO7'
      Origin = 'ENC_BICO7'
    end
    object qrLMCENC_BICO8: TIntegerField
      FieldName = 'ENC_BICO8'
      Origin = 'ENC_BICO8'
    end
    object qrLMCAFER_BICO1: TIntegerField
      FieldName = 'AFER_BICO1'
      Origin = 'AFER_BICO1'
    end
    object qrLMCAFER_BICO2: TIntegerField
      FieldName = 'AFER_BICO2'
      Origin = 'AFER_BICO2'
    end
    object qrLMCAFER_BICO3: TIntegerField
      FieldName = 'AFER_BICO3'
      Origin = 'AFER_BICO3'
    end
    object qrLMCAFER_BICO4: TIntegerField
      FieldName = 'AFER_BICO4'
      Origin = 'AFER_BICO4'
    end
    object qrLMCAFER_BICO5: TIntegerField
      FieldName = 'AFER_BICO5'
      Origin = 'AFER_BICO5'
    end
    object qrLMCAFER_BICO6: TIntegerField
      FieldName = 'AFER_BICO6'
      Origin = 'AFER_BICO6'
    end
    object qrLMCAFER_BICO7: TIntegerField
      FieldName = 'AFER_BICO7'
      Origin = 'AFER_BICO7'
    end
    object qrLMCAFER_BICO8: TIntegerField
      FieldName = 'AFER_BICO8'
      Origin = 'AFER_BICO8'
    end
    object qrLMCESTOQ_ABERTURA: TIntegerField
      FieldName = 'ESTOQ_ABERTURA'
      Origin = 'ESTOQ_ABERTURA'
    end
    object qrLMCESTOQ_ESCRITURAL: TIntegerField
      FieldName = 'ESTOQ_ESCRITURAL'
      Origin = 'ESTOQ_ESCRITURAL'
    end
    object qrLMCESTOQ_FECHAMENTO: TIntegerField
      FieldName = 'ESTOQ_FECHAMENTO'
      Origin = 'ESTOQ_FECHAMENTO'
    end
    object qrLMCPERDA_SOBRA: TIntegerField
      FieldName = 'PERDA_SOBRA'
      Origin = 'PERDA_SOBRA'
    end
    object qrLMCOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 255
    end
    object qrLMCPAGINA: TIntegerField
      FieldName = 'PAGINA'
      Origin = 'PAGINA'
    end
    object qrLMCID_BICO1: TStringField
      FieldName = 'ID_BICO1'
      Origin = 'ID_BICO1'
      Size = 2
    end
    object qrLMCID_BICO2: TStringField
      FieldName = 'ID_BICO2'
      Origin = 'ID_BICO2'
      Size = 2
    end
    object qrLMCID_BICO3: TStringField
      FieldName = 'ID_BICO3'
      Origin = 'ID_BICO3'
      Size = 2
    end
    object qrLMCID_BICO4: TStringField
      FieldName = 'ID_BICO4'
      Origin = 'ID_BICO4'
      Size = 2
    end
    object qrLMCID_BICO5: TStringField
      FieldName = 'ID_BICO5'
      Origin = 'ID_BICO5'
      Size = 2
    end
    object qrLMCID_BICO6: TStringField
      FieldName = 'ID_BICO6'
      Origin = 'ID_BICO6'
      Size = 2
    end
    object qrLMCID_BICO7: TStringField
      FieldName = 'ID_BICO7'
      Origin = 'ID_BICO7'
      Size = 2
    end
    object qrLMCID_BICO8: TStringField
      FieldName = 'ID_BICO8'
      Origin = 'ID_BICO8'
      Size = 2
    end
    object qrLMCTOTALVENDAS_ACU: TBCDField
      FieldName = 'TOTALVENDAS_ACU'
      Origin = 'TOTALVENDAS_ACU'
      Precision = 18
      Size = 3
    end
    object qrLMCPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 3
    end
    object qrLMCQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 3
    end
    object qrLMCQTEVEND_1: TIntegerField
      FieldName = 'QTEVEND_1'
      Origin = 'QTEVEND_1'
    end
    object qrLMCQTEVEND_2: TIntegerField
      FieldName = 'QTEVEND_2'
      Origin = 'QTEVEND_2'
    end
    object qrLMCQTEVEND_3: TIntegerField
      FieldName = 'QTEVEND_3'
      Origin = 'QTEVEND_3'
    end
    object qrLMCQTEVEND_4: TIntegerField
      FieldName = 'QTEVEND_4'
      Origin = 'QTEVEND_4'
    end
    object qrLMCQTEVEND_5: TIntegerField
      FieldName = 'QTEVEND_5'
      Origin = 'QTEVEND_5'
    end
    object qrLMCQTEVEND_6: TIntegerField
      FieldName = 'QTEVEND_6'
      Origin = 'QTEVEND_6'
    end
    object qrLMCQTEVEND_7: TIntegerField
      FieldName = 'QTEVEND_7'
      Origin = 'QTEVEND_7'
    end
    object qrLMCQTEVEND_8: TIntegerField
      FieldName = 'QTEVEND_8'
      Origin = 'QTEVEND_8'
    end
    object qrLMCTOTALVEND_1: TFMTBCDField
      FieldName = 'TOTALVEND_1'
      Origin = 'TOTALVEND_1'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_2: TFMTBCDField
      FieldName = 'TOTALVEND_2'
      Origin = 'TOTALVEND_2'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_3: TFMTBCDField
      FieldName = 'TOTALVEND_3'
      Origin = 'TOTALVEND_3'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_4: TFMTBCDField
      FieldName = 'TOTALVEND_4'
      Origin = 'TOTALVEND_4'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_5: TFMTBCDField
      FieldName = 'TOTALVEND_5'
      Origin = 'TOTALVEND_5'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_6: TFMTBCDField
      FieldName = 'TOTALVEND_6'
      Origin = 'TOTALVEND_6'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_7: TFMTBCDField
      FieldName = 'TOTALVEND_7'
      Origin = 'TOTALVEND_7'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_8: TFMTBCDField
      FieldName = 'TOTALVEND_8'
      Origin = 'TOTALVEND_8'
      Precision = 18
      Size = 3
    end
    object qrLMCVENDAS_DIA: TLargeintField
      FieldName = 'VENDAS_DIA'
      Origin = 'VENDAS_DIA'
    end
    object qrLMCRECEBIDO_DIA: TLargeintField
      FieldName = 'RECEBIDO_DIA'
      Origin = 'RECEBIDO_DIA'
    end
    object qrLMCDISPONIVEL_DIA: TLargeintField
      FieldName = 'DISPONIVEL_DIA'
      Origin = 'DISPONIVEL_DIA'
    end
    object qrLMCTOTALVENDAS_DIA: TFMTBCDField
      FieldName = 'TOTALVENDAS_DIA'
      Origin = 'TOTALVENDAS_DIA'
      Precision = 18
      Size = 3
    end
  end
  object qrLivroLMC: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from LMC_ABERFECH')
    Left = 752
    Top = 594
    object qrLivroLMCCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrLivroLMCCOD_FILIAL: TStringField
      FieldName = 'COD_FILIAL'
      Size = 6
    end
    object qrLivroLMCFILIAL: TStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrLivroLMCENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrLivroLMCBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrLivroLMCCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qrLivroLMCCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qrLivroLMCUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrLivroLMCIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrLivroLMCCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrLivroLMCIM: TStringField
      FieldName = 'IM'
    end
    object qrLivroLMCDISTRIBUIDORA: TStringField
      FieldName = 'DISTRIBUIDORA'
      Size = 50
    end
    object qrLivroLMCCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
    end
    object qrLivroLMCCOD_COMBUSTIVEL: TIntegerField
      FieldName = 'COD_COMBUSTIVEL'
    end
    object qrLivroLMCNOME_COMBUSTIVEL: TStringField
      FieldName = 'NOME_COMBUSTIVEL'
      Size = 30
    end
    object qrLivroLMCNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrLivroLMCNUMERO_JUNTACOM: TStringField
      FieldName = 'NUMERO_JUNTACOM'
      Size = 10
    end
    object qrLivroLMCDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object qrLivroLMCNUMERO_ORDEM: TIntegerField
      FieldName = 'NUMERO_ORDEM'
    end
    object qrLivroLMCPAGINA_ATUAL: TIntegerField
      FieldName = 'PAGINA_ATUAL'
    end
  end
  object qrENCERRANTES: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from ENCERRANTES')
    Left = 1136
    Top = 610
    object qrENCERRANTESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrENCERRANTESDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrENCERRANTESCOD_BICO: TIntegerField
      FieldName = 'COD_BICO'
      Origin = 'COD_BICO'
    end
    object qrENCERRANTESABERTURA: TIntegerField
      FieldName = 'ABERTURA'
      Origin = 'ABERTURA'
    end
    object qrENCERRANTESENCERRAMENTO: TIntegerField
      FieldName = 'ENCERRAMENTO'
      Origin = 'ENCERRAMENTO'
    end
    object qrENCERRANTESQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object qrENCERRANTESAFERICAO: TBCDField
      FieldName = 'AFERICAO'
      Origin = 'AFERICAO'
      Precision = 18
      Size = 2
    end
    object qrENCERRANTESPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
    object qrENCERRANTESVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qrENCERRANTESCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
    end
    object qrENCERRANTESSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
  end
  object QNotasManifesto: TFDQuery
    Connection = Coneccao
    Transaction = IBTRAux
    UpdateObject = upNotasManifesto
    SQL.Strings = (
      'select * from NOTAS_MANIFESTACAO')
    Left = 952
    Top = 620
    object QNotasManifestoCOD: TIntegerField
      FieldName = 'COD'
      Origin = 'COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNotasManifestoCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
      Origin = 'COD_EMP'
      Required = True
    end
    object QNotasManifestoCHAVE_NOTA: TStringField
      FieldName = 'CHAVE_NOTA'
      Origin = 'CHAVE_NOTA'
      Size = 100
    end
    object QNotasManifestoDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = 'DATA_ENTRADA'
    end
    object QNotasManifestoEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Origin = 'EMITENTE'
      Size = 100
    end
    object QNotasManifestoCNPJ_EMI: TStringField
      FieldName = 'CNPJ_EMI'
      Origin = 'CNPJ_EMI'
    end
    object QNotasManifestoIE_EMI: TStringField
      FieldName = 'IE_EMI'
      Origin = 'IE_EMI'
    end
    object QNotasManifestoVALOR_NF: TFMTBCDField
      FieldName = 'VALOR_NF'
      Origin = 'VALOR_NF'
      Precision = 18
      Size = 2
    end
    object QNotasManifestoTIPO_NF: TStringField
      FieldName = 'TIPO_NF'
      Origin = 'TIPO_NF'
      Size = 50
    end
    object QNotasManifestoSIT_NF: TStringField
      FieldName = 'SIT_NF'
      Origin = 'SIT_NF'
      Size = 50
    end
    object QNotasManifestoSIT_CONF: TStringField
      FieldName = 'SIT_CONF'
      Origin = 'SIT_CONF'
      Required = True
      Size = 50
    end
    object QNotasManifestoMANIFESTACAO: TIntegerField
      FieldName = 'MANIFESTACAO'
      Origin = 'MANIFESTACAO'
    end
  end
  object upNotasManifesto: TFDUpdateSQL
    Connection = Coneccao
    InsertSQL.Strings = (
      'insert into NOTAS_MANIFESTACAO'
      
        '  (CHAVE_NOTA, CNPJ_EMI, COD, COD_EMP, DATA_ENTRADA, EMITENTE, I' +
        'E_EMI, '
      '   SIT_CONF, SIT_NF, TIPO_NF, VALOR_NF)'
      'values'
      
        '  (:CHAVE_NOTA, :CNPJ_EMI, :COD, :COD_EMP, :DATA_ENTRADA, :EMITE' +
        'NTE, :IE_EMI, '
      '   :SIT_CONF, :SIT_NF, :TIPO_NF, :VALOR_NF)')
    ModifySQL.Strings = (
      'update NOTAS_MANIFESTACAO'
      'set'
      '  CHAVE_NOTA = :CHAVE_NOTA,'
      '  CNPJ_EMI = :CNPJ_EMI,'
      '  COD = :COD,'
      '  COD_EMP = :COD_EMP,'
      '  DATA_ENTRADA = :DATA_ENTRADA,'
      '  EMITENTE = :EMITENTE,'
      '  IE_EMI = :IE_EMI,'
      '  SIT_CONF = :SIT_CONF,'
      '  SIT_NF = :SIT_NF,'
      '  TIPO_NF = :TIPO_NF,'
      '  VALOR_NF = :VALOR_NF'
      'where'
      '  COD = :OLD_COD and'
      '  COD_EMP = :OLD_COD_EMP')
    DeleteSQL.Strings = (
      'delete from NOTAS_MANIFESTACAO'
      'where'
      '  COD = :OLD_COD and'
      '  COD_EMP = :OLD_COD_EMP')
    Left = 968
    Top = 560
  end
  object sds_similares1: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'SELECT * FROM V_SIMILAR'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_PROD'
    MasterFields = 'CODIGO'
    MasterSource = Dts_produtos_c
    PacketRecords = 0
    Params = <>
    Left = 567
    Top = 382
    object sds_similares1CODIGO_SEQ: TIntegerField
      FieldName = 'CODIGO_SEQ'
    end
    object sds_similares1CODIGO_SIMILAR: TIntegerField
      FieldName = 'CODIGO_SIMILAR'
    end
    object sds_similares1CODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object sds_similares1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sds_similares1CODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Required = True
    end
    object sds_similares1DESC_SIMILAR: TStringField
      FieldName = 'DESC_SIMILAR'
      Size = 70
    end
    object sds_similares1USERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object sds_similares1DATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object sds_similares1REFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
  end
  object dts_similares1: TDataSource
    DataSet = sds_similares1
    Left = 560
    Top = 432
  end
  object sds_similares2: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'SELECT * FROM V_SIMILAR'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_PROD'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PRODUTOS
    PacketRecords = 0
    Params = <>
    Left = 655
    Top = 374
    object IntegerField5: TIntegerField
      FieldName = 'CODIGO_SEQ'
    end
    object IntegerField6: TIntegerField
      FieldName = 'CODIGO_SIMILAR'
    end
    object StringField8: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object StringField9: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object IntegerField7: TIntegerField
      FieldName = 'CODIGO_PROD'
      Required = True
    end
    object sds_similares2DESC_SIMILAR: TStringField
      FieldName = 'DESC_SIMILAR'
      Size = 70
    end
    object sds_similares2USERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object sds_similares2DATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object sds_similares2REFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
  end
  object dts_similares2: TDataSource
    DataSet = sds_similares2
    Left = 656
    Top = 472
  end
  object qrserial_produto: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from PRODUTOS_SERIAL')
    Left = 672
    Top = 586
    object qrserial_produtoCODIGO: TIntegerField
      DisplayLabel = 'Seq.'
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object qrserial_produtoSERIAL: TStringField
      DisplayLabel = 'Serial'
      DisplayWidth = 120
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrserial_produtoDATAVENDA: TDateField
      DisplayLabel = 'Data Venda'
      DisplayWidth = 10
      FieldName = 'DATAVENDA'
    end
    object qrserial_produtoSITUACAO: TIntegerField
      DisplayLabel = 'Sit.'
      DisplayWidth = 10
      FieldName = 'SITUACAO'
    end
    object qrserial_produtoNUMERONOTA: TStringField
      DisplayLabel = 'Nota'
      DisplayWidth = 24
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrserial_produtoCODPRODUTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODPRODUTO'
      Visible = False
    end
    object qrserial_produtoCODCLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODCLIENTE'
      Visible = False
    end
    object qrserial_produtoCLIENTE: TStringField
      DisplayWidth = 280
      FieldName = 'CLIENTE'
      Visible = False
      Size = 70
    end
    object qrserial_produtoCODNOTA: TStringField
      DisplayWidth = 24
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrserial_produtoCODITEM: TStringField
      DisplayWidth = 24
      FieldName = 'CODITEM'
      Visible = False
      Size = 6
    end
    object qrserial_produtoDATACOMPRA: TDateField
      DisplayWidth = 10
      FieldName = 'DATACOMPRA'
      Visible = False
    end
    object qrserial_produtoCODFORNECEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODFORNECEDOR'
      Visible = False
    end
    object qrserial_produtoCODVENDA_ITEM: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODVENDA_ITEM'
      Visible = False
    end
    object qrserial_produtoFILTRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrserial_produtoCODVENDA: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODVENDA'
      Visible = False
    end
    object qrserial_produtoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
      Size = 2
    end
    object qrserial_produtoPRECOCUSTO: TFMTBCDField
      FieldName = 'PRECOCUSTO'
      Origin = 'PRECOCUSTO'
      Precision = 18
      Size = 2
    end
    object qrserial_produtoPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Origin = 'PRECOVENDA'
      Precision = 18
      Size = 2
    end
  end
  object qrrentabilidade_item: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from PRODUTO_RENTABILIDADE')
    Left = 1040
    Top = 614
    object qrrentabilidade_itemRENTABILIDADE: TIntegerField
      FieldName = 'RENTABILIDADE'
      Origin = 'RENTABILIDADE'
    end
    object qrrentabilidade_itemCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      Required = True
    end
    object qrrentabilidade_itemPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 70
    end
    object qrrentabilidade_itemRENDIMENTO: TBCDField
      FieldName = 'RENDIMENTO'
      Origin = 'RENDIMENTO'
      Precision = 18
      Size = 2
    end
    object qrrentabilidade_itemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object qrrentabilidade_itemVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qrrentabilidade_itemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qrrentabilidade: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from PRODUTOS_RENTABILIDADE_PERDA')
    Left = 877
    Top = 553
    object qrrentabilidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object qrrentabilidadeEMBALAGEM: TFMTBCDField
      FieldName = 'EMBALAGEM'
      Origin = 'EMBALAGEM'
      Precision = 18
      Size = 2
    end
    object qrrentabilidadePERDA: TFMTBCDField
      FieldName = 'PERDA'
      Origin = 'PERDA'
      Precision = 18
      Size = 2
    end
    object qrrentabilidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qrrentabilidadeCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 6
    end
    object qrrentabilidadePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 70
    end
  end
  object qrgrade_produto: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from PRODUTOS_GRADE')
    Left = 888
    Top = 446
    object qrgrade_produtoCODIGO: TIntegerField
      DisplayLabel = 'Seq'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object qrgrade_produtoCOD_PRODUTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object qrgrade_produtoCOD_BARRAS: TStringField
      DisplayWidth = 52
      FieldName = 'COD_BARRAS'
      Required = True
      Size = 13
    end
    object qrgrade_produtoDESCRICAO: TStringField
      DisplayWidth = 280
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object qrgrade_produtoDEC_UNIDADE: TStringField
      DisplayWidth = 12
      FieldName = 'DEC_UNIDADE'
      Size = 3
    end
    object qrgrade_produtoPRECO_VENDA_GRADE: TFMTBCDField
      FieldName = 'PRECO_VENDA_GRADE'
      Origin = 'PRECO_VENDA_GRADE'
      Precision = 18
      Size = 3
    end
    object qrgrade_produtoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
      Size = 2
    end
    object qrgrade_produtoCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Size = 15
    end
  end
  object dts_qrgrade_produto: TDataSource
    DataSet = qrgrade_produto
    Left = 885
    Top = 493
  end
  object SDS_NFSE: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from NFSE_NOTA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 1168
    Top = 10
    object SDS_NFSENR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object SDS_NFSECD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
      Required = True
    end
    object SDS_NFSECOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_NFSEFL_IMPRESSO: TStringField
      FieldName = 'FL_IMPRESSO'
      Size = 1
    end
    object SDS_NFSESERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object SDS_NFSECD_CFOP: TIntegerField
      FieldName = 'CD_CFOP'
    end
    object SDS_NFSEDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object SDS_NFSEDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object SDS_NFSEVL_ACRESCIMOS: TFMTBCDField
      FieldName = 'VL_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_DESCONTOS: TFMTBCDField
      FieldName = 'VL_DESCONTOS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_MERCADORIAS: TFMTBCDField
      FieldName = 'VL_MERCADORIAS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_SERVICOS: TFMTBCDField
      FieldName = 'VL_SERVICOS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFSECOD_PGTO: TIntegerField
      FieldName = 'COD_PGTO'
    end
    object SDS_NFSEVL_AVISTA: TFMTBCDField
      FieldName = 'VL_AVISTA'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_PRAZO: TFMTBCDField
      FieldName = 'VL_PRAZO'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEPESO_TOTAL: TFMTBCDField
      FieldName = 'PESO_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEQT_PECAS: TFMTBCDField
      FieldName = 'QT_PECAS'
      Precision = 15
    end
    object SDS_NFSECFOP_DESC: TStringField
      FieldName = 'CFOP_DESC'
      Size = 40
    end
    object SDS_NFSECD_TRANSPORTADORA: TIntegerField
      FieldName = 'CD_TRANSPORTADORA'
    end
    object SDS_NFSEUF_ORIGEM: TStringField
      FieldName = 'UF_ORIGEM'
      Size = 2
    end
    object SDS_NFSEUF_DESTINO: TStringField
      FieldName = 'UF_DESTINO'
      Size = 2
    end
    object SDS_NFSEPESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_SEGURO: TFMTBCDField
      FieldName = 'VL_SEGURO'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSETP_FRETE: TStringField
      FieldName = 'TP_FRETE'
      Size = 1
    end
    object SDS_NFSEQT_VOLUMES: TFMTBCDField
      FieldName = 'QT_VOLUMES'
      Precision = 15
    end
    object SDS_NFSEESPECIE_VOLUMES: TStringField
      FieldName = 'ESPECIE_VOLUMES'
      Size = 15
    end
    object SDS_NFSEMARCA_VOLUMES: TStringField
      FieldName = 'MARCA_VOLUMES'
      Size = 15
    end
    object SDS_NFSENR_VOLUMES: TIntegerField
      FieldName = 'NR_VOLUMES'
    end
    object SDS_NFSECD_TIPOCOBR: TIntegerField
      FieldName = 'CD_TIPOCOBR'
    end
    object SDS_NFSECD_FUNCIONARIO: TIntegerField
      FieldName = 'CD_FUNCIONARIO'
    end
    object SDS_NFSEDT_ATZ: TDateField
      FieldName = 'DT_ATZ'
    end
    object SDS_NFSEPLACA_TRANSP: TStringField
      FieldName = 'PLACA_TRANSP'
      Size = 8
    end
    object SDS_NFSEUF_PLACA_TRANSP: TStringField
      FieldName = 'UF_PLACA_TRANSP'
      Size = 2
    end
    object SDS_NFSEVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSENR_PEDIDO: TIntegerField
      FieldName = 'NR_PEDIDO'
    end
    object SDS_NFSEVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_DESCONTO_ITEM: TFMTBCDField
      FieldName = 'VL_DESCONTO_ITEM'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_ISENTO_ITENS: TFMTBCDField
      FieldName = 'VL_ISENTO_ITENS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_OUTROS_ITENS: TFMTBCDField
      FieldName = 'VL_OUTROS_ITENS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSENR_PROTOCOLO_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_NFE'
      Size = 15
    end
    object SDS_NFSEDT_PROCESSAMENTO_NFE: TDateField
      FieldName = 'DT_PROCESSAMENTO_NFE'
    end
    object SDS_NFSESTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object SDS_NFSENR_LOTE_NFE: TStringField
      FieldName = 'NR_LOTE_NFE'
      Size = 15
    end
    object SDS_NFSENR_RECIBO_NFE: TStringField
      FieldName = 'NR_RECIBO_NFE'
      Size = 15
    end
    object SDS_NFSENR_PROTOCOLO_CANC_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_CANC_NFE'
      Size = 15
    end
    object SDS_NFSECHAVE_ACESSO_NFE: TStringField
      FieldName = 'CHAVE_ACESSO_NFE'
      Size = 44
    end
    object SDS_NFSEVL_FRETE_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_FRETE_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_ST_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ST_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_ICM_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ICM_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEBASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'BASE_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFSEVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFSECNPJ_TRANSP: TStringField
      FieldName = 'CNPJ_TRANSP'
      FixedChar = True
      Size = 18
    end
    object SDS_NFSENOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Size = 70
    end
    object SDS_NFSEIE_TRANSP: TStringField
      FieldName = 'IE_TRANSP'
    end
    object SDS_NFSEEND_TRANSPORTADOR: TStringField
      FieldName = 'END_TRANSPORTADOR'
      Size = 70
    end
    object SDS_NFSECIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 40
    end
    object SDS_NFSEUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Size = 2
    end
    object SDS_NFSETP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object SDS_NFSEN_NOTA_ENTRADA: TStringField
      FieldName = 'N_NOTA_ENTRADA'
    end
    object SDS_NFSENOME_CLIENTE_FOR: TStringField
      FieldName = 'NOME_CLIENTE_FOR'
      Size = 70
    end
    object SDS_NFSECPF_CNPJ_CLIENTE_FORN: TStringField
      FieldName = 'CPF_CNPJ_CLIENTE_FORN'
      FixedChar = True
      Size = 18
    end
    object SDS_NFSEIE_CLIENTE_FORN: TStringField
      FieldName = 'IE_CLIENTE_FORN'
    end
    object SDS_NFSEENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Size = 44
    end
    object SDS_NFSEEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
    end
    object SDS_NFSECOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object SDS_NFSECEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object SDS_NFSEBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object SDS_NFSETIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
    end
    object SDS_NFSETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SDS_NFSECIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object SDS_NFSEUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object SDS_NFSEIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
    end
    object SDS_NFSEPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_NFSEPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 70
    end
    object SDS_NFSESTATUS_INUTILIZADO: TStringField
      FieldName = 'STATUS_INUTILIZADO'
      Size = 1
    end
    object SDS_NFSESTATUS_CANCELADO: TStringField
      FieldName = 'STATUS_CANCELADO'
      Size = 1
    end
    object SDS_NFSESTATUS_EMAIL: TStringField
      FieldName = 'STATUS_EMAIL'
      Size = 1
    end
    object SDS_NFSECOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object SDS_NFSEDEPEC: TStringField
      FieldName = 'DEPEC'
      Size = 1
    end
    object SDS_NFSECHAVE2: TStringField
      FieldName = 'CHAVE2'
      Size = 70
    end
    object SDS_NFSESTATUS_RETORNO: TStringField
      FieldName = 'STATUS_RETORNO'
      Size = 1
    end
    object SDS_NFSEJUSTIFICATIVA_CANCEL_INUTIL: TStringField
      FieldName = 'JUSTIFICATIVA_CANCEL_INUTIL'
      Size = 255
    end
    object SDS_NFSEMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object SDS_NFSECORRECAO: TStringField
      FieldName = 'CORRECAO'
      Size = 1
    end
    object SDS_NFSEIM_CLIENT_FOR: TStringField
      FieldName = 'IM_CLIENT_FOR'
      Size = 15
    end
  end
  object DTS_NFSE: TDataSource
    DataSet = SDS_NFSE
    Left = 1168
    Top = 68
  end
  object SDS_NFSE_ITENS: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from NFSE_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'NR_NOTA'
    MasterFields = 'NR_NOTA'
    MasterSource = DTS_NFSE
    PacketRecords = 0
    Params = <>
    Left = 1248
    Top = 10
    object SDS_NFSE_ITENSNR_SEQUENCIA: TIntegerField
      FieldName = 'NR_SEQUENCIA'
      Required = True
    end
    object SDS_NFSE_ITENSNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object SDS_NFSE_ITENSCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
    end
    object SDS_NFSE_ITENSCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Size = 15
    end
    object SDS_NFSE_ITENSCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 11
    end
    object SDS_NFSE_ITENSDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object SDS_NFSE_ITENSPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_NFSE_ITENSQT_PRODUTO: TFMTBCDField
      FieldName = 'QT_PRODUTO'
      Precision = 15
    end
    object SDS_NFSE_ITENSVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Precision = 15
      Size = 3
    end
    object SDS_NFSE_ITENSVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object SDS_NFSE_ITENSPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object SDS_NFSE_ITENSCD_ATUALIZACAO: TIntegerField
      FieldName = 'CD_ATUALIZACAO'
    end
    object SDS_NFSE_ITENSCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object SDS_NFSE_ITENSPC_RED_BASE_ICM: TFMTBCDField
      FieldName = 'PC_RED_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSALIQ_ICM_SUBST: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSDT_ALTERACAO: TDateField
      FieldName = 'DT_ALTERACAO'
    end
    object SDS_NFSE_ITENSDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 3
    end
    object SDS_NFSE_ITENSPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSCD_CONTA: TIntegerField
      FieldName = 'CD_CONTA'
    end
    object SDS_NFSE_ITENSCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object SDS_NFSE_ITENSVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_CONTABIL: TFMTBCDField
      FieldName = 'VL_CONTABIL'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_ISENTO: TFMTBCDField
      FieldName = 'VL_ISENTO'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSALIQ_PIS: TFMTBCDField
      FieldName = 'ALIQ_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSALIQ_COFINS: TFMTBCDField
      FieldName = 'ALIQ_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSALIQ_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'ALIQ_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_BASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSALIQ_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFSE_ITENSITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object SDS_NFSE_ITENSCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_NFSE_ITENSCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 3
    end
    object SDS_NFSE_ITENSCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 3
    end
    object SDS_NFSE_ITENSCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 2
    end
  end
  object DTS_NFSE_ITENS: TDataSource
    DataSet = SDS_NFSE_ITENS
    Left = 1240
    Top = 74
  end
  object logEst: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      ' INSERT INTO PRODUTOS_ESTOQUES_LOG ('
      '    ID_EMPRESA,'
      '    ID_FILIAL,'
      '    ID_AJUSTE,'
      '    ID_PRODUTO,'
      '    ID_LOTE,'
      '    ID_PRODUTO_SERIE,'
      '    DATA,'
      '    ID_USUARIO,'
      '    ID_MOVIMENTO,'
      '    FRACAO,'
      '    ESTOQUE_ANTERIOR,'
      '    QUANTIDADE,'
      '    ESTOQUE_POSTERIOR,'
      '    SITUACAO_ESTOQUE,'
      '    OPERACAO,'
      '    ACAO_BD,'
      '    SITUACAO_ESTOQUE_OLD,'
      '    COD_VENDA,'
      '    COD_COMPRA,'
      '    HISTORICO,'
      '    HORA)'
      '  VALUES ('
      '    :ID_EMPRESA,'
      '    :ID_FILIAL,'
      '    :ID_AJUSTE,'
      '    :ID_PRODUTO,'
      '    :ID_LOTE,'
      '    :ID_PRODUTO_SERIE,'
      '    :DATA,'
      '    :ID_USUARIO,'
      '    :ID_MOVIMENTO,'
      '    :FRACAO,'
      '    :ESTOQUE_ANTERIOR,'
      '    :QUANTIDADE,'
      '    :ESTOQUE_POSTERIOR,'
      '    :SITUACAO_ESTOQUE,'
      '    :OPERACAO,'
      '    :ACAO_BD,'
      '    :SITUACAO_ESTOQUE_OLD,'
      '    :COD_VENDA,'
      '    :COD_COMPRA,'
      '    :HISTORICO,'
      '    :HORA);')
    Left = 1176
    Top = 144
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_FILIAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_AJUSTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_LOTE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'ID_PRODUTO_SERIE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'ID_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MOVIMENTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FRACAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ESTOQUE_ANTERIOR'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'ESTOQUE_POSTERIOR'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'SITUACAO_ESTOQUE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OPERACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'ACAO_BD'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'SITUACAO_ESTOQUE_OLD'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_VENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'HORA'
        DataType = ftTime
        ParamType = ptInput
      end>
  end
  object LogPro: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'INSERT INTO PRODUTOS_PRECOS_LOG ('
      '    ID_EMPRESA,'
      '    ID_FILIAL,'
      '    ID_PRODUTO,'
      '    ID_OCORRENCIA,'
      '    TIPO_ALTERACAO,'
      '    DATA_HORA,'
      '    ID_USUARIO,'
      '    P_COMPRA_ANT,'
      '    P_CUSTO_ANT,'
      '    P_CUSTO_MEDIO_ANT,'
      '    P_VENDA_ANT,'
      '    P_COMPRA_NOVO,'
      '    P_CUSTO_NOVO,'
      '    P_CUSTO_MEDIO_NOVO,'
      '    P_VENDA_NOVO)'
      '  VALUES ('
      '    :ID_EMPRESA,'
      '    :ID_FILIAL,'
      '    :ID_PRODUTO,'
      '    :ID_OCORRENCIA,'
      '    :TIPO_ALTERACAO,'
      '    :DATA_HORA,'
      '    :ID_USUARIO,'
      '    :P_COMPRA_ANT,'
      '    :P_CUSTO_ANT,'
      '    :P_CUSTO_MEDIO_ANT,'
      '    :P_VENDA_ANT,'
      '    :P_COMPRA_NOVO,'
      '    :P_CUSTO_NOVO,'
      '    :P_CUSTO_MEDIO_NOVO,'
      '    :P_VENDA_NOVO);')
    Left = 1232
    Top = 152
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_FILIAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_OCORRENCIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TIPO_ALTERACAO'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'DATA_HORA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'ID_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'P_COMPRA_ANT'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'P_CUSTO_ANT'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'P_CUSTO_MEDIO_ANT'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'P_VENDA_ANT'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'P_COMPRA_NOVO'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'P_CUSTO_NOVO'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'P_CUSTO_MEDIO_NOVO'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'P_VENDA_NOVO'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object Sds_Vendas_itens: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from pedidos_itens where codigo_id = :venda')
    Left = 784
    Top = 382
    ParamData = <
      item
        Name = 'venda'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Sds_Vendas_itensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Sds_Vendas_itensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      Required = True
    end
    object Sds_Vendas_itensITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'ITEN'
    end
    object Sds_Vendas_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'CODIGO_PROD'
    end
    object Sds_Vendas_itensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Sds_Vendas_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object Sds_Vendas_itensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      currency = True
      Precision = 18
      Size = 3
    end
    object Sds_Vendas_itensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      currency = True
      Precision = 18
    end
    object Sds_Vendas_itensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensDEV: TStringField
      FieldName = 'DEV'
      Origin = 'DEV'
      FixedChar = True
      Size = 1
    end
    object Sds_Vendas_itensQNT_DEV: TBCDField
      FieldName = 'QNT_DEV'
      Origin = 'QNT_DEV'
      Precision = 18
    end
    object Sds_Vendas_itensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Origin = 'VAL_DEV'
      currency = True
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Sds_Vendas_itensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object Sds_Vendas_itensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object Sds_Vendas_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object Sds_Vendas_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object Sds_Vendas_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object Sds_Vendas_itensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PERC_ISS'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Origin = 'VL_ISS'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PERC_ICM'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object Sds_Vendas_itensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 3
    end
    object Sds_Vendas_itensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object Sds_Vendas_itensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
    end
    object Sds_Vendas_itensID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Size = 5
    end
    object Sds_Vendas_itensID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Size = 5
    end
    object Sds_Vendas_itensBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 2
    end
  end
  object sds_vendas: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from pedidos')
    Left = 784
    Top = 336
    object sds_vendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_vendasUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object sds_vendasDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
      Origin = 'DATA_PEDIDO'
    end
    object sds_vendasDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = 'DATA_ENTREGA'
    end
    object sds_vendasCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      Required = True
    end
    object sds_vendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 70
    end
    object sds_vendasPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Size = 35
    end
    object sds_vendasSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sds_vendasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sds_vendasUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
      Origin = 'USUARIO_ENTREGA'
    end
    object sds_vendasTP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      FixedChar = True
      Size = 1
    end
    object sds_vendasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object sds_vendasCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'COD_VENDEDOR'
    end
    object sds_vendasCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
      Origin = 'COD_PAGTO'
    end
    object sds_vendasN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Origin = 'N_CUPOM'
      Size = 18
    end
    object sds_vendasN_ECF: TStringField
      FieldName = 'N_ECF'
      Origin = 'N_ECF'
      Size = 5
    end
    object sds_vendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object sds_vendasHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object sds_vendasCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
      Origin = 'COD_ORCAMENTO'
    end
    object sds_vendasCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'COD_PEDIDO'
    end
    object sds_vendasCOD_OS: TSmallintField
      FieldName = 'COD_OS'
      Origin = 'COD_OS'
    end
    object sds_vendasNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
    end
    object sds_vendasSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Origin = 'SERIE_NOTA'
      Size = 3
    end
    object sds_vendasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object sds_vendasCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      FixedChar = True
      Size = 18
    end
    object sds_vendasRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      FixedChar = True
    end
    object sds_vendasFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 15
    end
    object sds_vendasCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object sds_vendasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object sds_vendasN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Origin = 'N_PARTIDA'
      Size = 15
    end
    object sds_vendasPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Origin = 'PROPRIEDADE'
      Size = 70
    end
    object sds_vendasDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
      Origin = 'DATA_VACINA'
    end
    object sds_vendasUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object sds_vendasCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      Size = 7
    end
    object sds_vendasCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object sds_vendasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object sds_vendasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object sds_vendasENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Origin = 'ENTREGADOR'
      Size = 44
    end
    object sds_vendasTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      Origin = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object sds_vendasFECHADO: TStringField
      FieldName = 'FECHADO'
      Origin = 'FECHADO'
      Size = 5
    end
    object sds_vendasMESA: TStringField
      FieldName = 'MESA'
      Origin = 'MESA'
      Size = 3
    end
    object sds_vendasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 70
    end
    object sds_vendasCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object sds_vendasPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Origin = 'PROD_RURAL'
      Size = 1
    end
    object sds_vendasIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Origin = 'IE_PRODUTOR'
      FixedChar = True
    end
    object sds_vendasKM: TIntegerField
      FieldName = 'KM'
      Origin = 'KM'
    end
    object sds_vendasCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Origin = 'CHAVE_FP'
      Size = 100
    end
    object sds_vendasCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Origin = 'CHAVE_FP_CANCEL'
      Size = 30
    end
    object sds_vendasCUPON_CANCELADO: TStringField
      FieldName = 'CUPON_CANCELADO'
      Origin = 'CUPON_CANCELADO'
      Size = 1
    end
    object sds_vendasCRZ: TIntegerField
      FieldName = 'CRZ'
      Origin = 'CRZ'
    end
    object sds_vendasCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object sds_vendasANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ANO'
    end
    object sds_vendasMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Origin = 'MODELO_NF'
      Size = 2
    end
    object sds_vendasCFOP_NF: TStringField
      FieldName = 'CFOP_NF'
      Origin = 'CFOP_NF'
      Size = 4
    end
    object sds_vendasVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Origin = 'VALOR_ITENS'
      currency = True
      Precision = 18
      Size = 2
    end
    object sds_vendasENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      currency = True
      Precision = 18
      Size = 2
    end
    object sds_vendasVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object sds_vendasVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object sds_vendasVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Origin = 'VALOR_COMISSAO'
      Precision = 18
      Size = 2
    end
    object sds_vendasVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Origin = 'VALOR_ACRESCIMOS'
      Precision = 18
      Size = 2
    end
    object sds_vendasQUANT_VENDIDA: TBCDField
      FieldName = 'QUANT_VENDIDA'
      Origin = 'QUANT_VENDIDA'
      Precision = 18
    end
    object sds_vendasSALDO_VENDIDO: TBCDField
      FieldName = 'SALDO_VENDIDO'
      Origin = 'SALDO_VENDIDO'
      Precision = 18
    end
    object sds_vendasMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Origin = 'MED_VETERINARIO'
      Size = 70
    end
    object sds_vendasVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Origin = 'VALOR_AVISTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object sds_vendasVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Origin = 'VALOR_PRAZO'
      currency = True
      Precision = 18
      Size = 2
    end
    object sds_vendasVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      currency = True
      Precision = 18
      Size = 2
    end
    object sds_vendasVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Origin = 'VALOR_TROCO'
      currency = True
      Precision = 18
      Size = 2
    end
    object sds_vendasVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Origin = 'VLR_PIS'
      currency = True
      Precision = 18
      Size = 2
    end
    object sds_vendasVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Origin = 'VLR_COFINS'
      currency = True
      Precision = 18
      Size = 2
    end
    object sds_vendasCOD_OS_AUTO: TIntegerField
      FieldName = 'COD_OS_AUTO'
      Origin = 'COD_OS_AUTO'
    end
    object sds_vendasCOUNT_VENDAS: TAggregateField
      Alignment = taCenter
      FieldName = 'COUNT_VENDAS'
      Active = True
      DisplayName = ''
      Expression = 'COUNT(CODIGO)'
    end
  end
  object Coneccao: TFDConnection
    Params.Strings = (
      'Database=C:\StartNet_Sistemas\STARTNET.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evRowsetSize, evRecordCountMode]
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockWait, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.CheckUpdatable = False
    Connected = True
    LoginPrompt = False
    Transaction = FDTransaction1
    UpdateTransaction = FDTransaction1
    Left = 80
    Top = 16
  end
  object SDS_NFCE: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      
        'select * FROM  nfece_nota where NR_PEDIDO = :NR_PEDIDO AND CD_EM' +
        'PRESA =:COD_EMP')
    Left = 1180
    Top = 216
    ParamData = <
      item
        Name = 'NR_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_EMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object SDS_NFCECD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
      Origin = 'CD_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_NFCENR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_NFCECOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object SDS_NFCEFL_IMPRESSO: TStringField
      FieldName = 'FL_IMPRESSO'
      Origin = 'FL_IMPRESSO'
      Size = 1
    end
    object SDS_NFCESERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Origin = 'SERIE_NF'
      Size = 3
    end
    object SDS_NFCECD_CFOP: TIntegerField
      FieldName = 'CD_CFOP'
      Origin = 'CD_CFOP'
    end
    object SDS_NFCEDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object SDS_NFCEDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
      Origin = 'DT_LANCAMENTO'
    end
    object SDS_NFCEVL_ACRESCIMOS: TFMTBCDField
      FieldName = 'VL_ACRESCIMOS'
      Origin = 'VL_ACRESCIMOS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_DESCONTOS: TFMTBCDField
      FieldName = 'VL_DESCONTOS'
      Origin = 'VL_DESCONTOS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_MERCADORIAS: TFMTBCDField
      FieldName = 'VL_MERCADORIAS'
      Origin = 'VL_MERCADORIAS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_SERVICOS: TFMTBCDField
      FieldName = 'VL_SERVICOS'
      Origin = 'VL_SERVICOS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object SDS_NFCECOD_PGTO: TIntegerField
      FieldName = 'COD_PGTO'
      Origin = 'COD_PGTO'
    end
    object SDS_NFCEVL_AVISTA: TFMTBCDField
      FieldName = 'VL_AVISTA'
      Origin = 'VL_AVISTA'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_PRAZO: TFMTBCDField
      FieldName = 'VL_PRAZO'
      Origin = 'VL_PRAZO'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEPESO_TOTAL: TFMTBCDField
      FieldName = 'PESO_TOTAL'
      Origin = 'PESO_TOTAL'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEQT_PECAS: TBCDField
      FieldName = 'QT_PECAS'
      Origin = 'QT_PECAS'
      Precision = 18
    end
    object SDS_NFCECFOP_DESC: TStringField
      FieldName = 'CFOP_DESC'
      Origin = 'CFOP_DESC'
      Size = 40
    end
    object SDS_NFCECD_TRANSPORTADORA: TIntegerField
      FieldName = 'CD_TRANSPORTADORA'
      Origin = 'CD_TRANSPORTADORA'
    end
    object SDS_NFCEUF_ORIGEM: TStringField
      FieldName = 'UF_ORIGEM'
      Origin = 'UF_ORIGEM'
      Size = 2
    end
    object SDS_NFCEUF_DESTINO: TStringField
      FieldName = 'UF_DESTINO'
      Origin = 'UF_DESTINO'
      Size = 2
    end
    object SDS_NFCEPESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      Origin = 'VL_FRETE'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_SEGURO: TFMTBCDField
      FieldName = 'VL_SEGURO'
      Origin = 'VL_SEGURO'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Origin = 'VL_BASE_ICM'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Origin = 'VL_BASE_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Origin = 'VL_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Origin = 'VL_ISS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCETP_FRETE: TStringField
      FieldName = 'TP_FRETE'
      Origin = 'TP_FRETE'
      Size = 1
    end
    object SDS_NFCEQT_VOLUMES: TBCDField
      FieldName = 'QT_VOLUMES'
      Origin = 'QT_VOLUMES'
      Precision = 18
    end
    object SDS_NFCEESPECIE_VOLUMES: TStringField
      FieldName = 'ESPECIE_VOLUMES'
      Origin = 'ESPECIE_VOLUMES'
      Size = 15
    end
    object SDS_NFCEMARCA_VOLUMES: TStringField
      FieldName = 'MARCA_VOLUMES'
      Origin = 'MARCA_VOLUMES'
      Size = 15
    end
    object SDS_NFCENR_VOLUMES: TIntegerField
      FieldName = 'NR_VOLUMES'
      Origin = 'NR_VOLUMES'
    end
    object SDS_NFCECD_TIPOCOBR: TIntegerField
      FieldName = 'CD_TIPOCOBR'
      Origin = 'CD_TIPOCOBR'
    end
    object SDS_NFCECD_FUNCIONARIO: TIntegerField
      FieldName = 'CD_FUNCIONARIO'
      Origin = 'CD_FUNCIONARIO'
    end
    object SDS_NFCEDT_ATZ: TDateField
      FieldName = 'DT_ATZ'
      Origin = 'DT_ATZ'
    end
    object SDS_NFCEPLACA_TRANSP: TStringField
      FieldName = 'PLACA_TRANSP'
      Origin = 'PLACA_TRANSP'
      Size = 8
    end
    object SDS_NFCEUF_PLACA_TRANSP: TStringField
      FieldName = 'UF_PLACA_TRANSP'
      Origin = 'UF_PLACA_TRANSP'
      Size = 2
    end
    object SDS_NFCEVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Origin = 'VL_OUTROS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCENR_PEDIDO: TIntegerField
      FieldName = 'NR_PEDIDO'
      Origin = 'NR_PEDIDO'
    end
    object SDS_NFCEVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Origin = 'VL_BASE_PIS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Origin = 'VL_BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Origin = 'VL_BASE_IPI'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Origin = 'VL_BASE_ISS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_DESCONTO_ITEM: TFMTBCDField
      FieldName = 'VL_DESCONTO_ITEM'
      Origin = 'VL_DESCONTO_ITEM'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_ISENTO_ITENS: TFMTBCDField
      FieldName = 'VL_ISENTO_ITENS'
      Origin = 'VL_ISENTO_ITENS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_OUTROS_ITENS: TFMTBCDField
      FieldName = 'VL_OUTROS_ITENS'
      Origin = 'VL_OUTROS_ITENS'
      Precision = 18
      Size = 2
    end
    object SDS_NFCENR_PROTOCOLO_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_NFE'
      Origin = 'NR_PROTOCOLO_NFE'
      Size = 15
    end
    object SDS_NFCEDT_PROCESSAMENTO_NFE: TDateField
      FieldName = 'DT_PROCESSAMENTO_NFE'
      Origin = 'DT_PROCESSAMENTO_NFE'
    end
    object SDS_NFCESTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object SDS_NFCENR_LOTE_NFE: TStringField
      FieldName = 'NR_LOTE_NFE'
      Origin = 'NR_LOTE_NFE'
      Size = 15
    end
    object SDS_NFCENR_RECIBO_NFE: TStringField
      FieldName = 'NR_RECIBO_NFE'
      Origin = 'NR_RECIBO_NFE'
      Size = 15
    end
    object SDS_NFCENR_PROTOCOLO_CANC_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_CANC_NFE'
      Origin = 'NR_PROTOCOLO_CANC_NFE'
      Size = 15
    end
    object SDS_NFCECHAVE_ACESSO_NFE: TStringField
      FieldName = 'CHAVE_ACESSO_NFE'
      Origin = 'CHAVE_ACESSO_NFE'
      Size = 44
    end
    object SDS_NFCEVL_FRETE_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_FRETE_CONHECIMENTO'
      Origin = 'VL_FRETE_CONHECIMENTO'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_ST_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ST_CONHECIMENTO'
      Origin = 'VL_ST_CONHECIMENTO'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_ICM_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ICM_CONHECIMENTO'
      Origin = 'VL_ICM_CONHECIMENTO'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEBASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'BASE_ICM_PROPRIO_ST'
      Origin = 'BASE_ICM_PROPRIO_ST'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Origin = 'VL_ICM_PROPRIO_ST'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Origin = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Origin = 'VL_ICM_SUBST_REAL'
      Precision = 18
      Size = 2
    end
    object SDS_NFCECNPJ_TRANSP: TStringField
      FieldName = 'CNPJ_TRANSP'
      Origin = 'CNPJ_TRANSP'
      FixedChar = True
      Size = 18
    end
    object SDS_NFCENOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Origin = 'NOME_TRANSP'
      Size = 70
    end
    object SDS_NFCEIE_TRANSP: TStringField
      FieldName = 'IE_TRANSP'
      Origin = 'IE_TRANSP'
    end
    object SDS_NFCEEND_TRANSPORTADOR: TStringField
      FieldName = 'END_TRANSPORTADOR'
      Origin = 'END_TRANSPORTADOR'
      Size = 70
    end
    object SDS_NFCECIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Origin = 'CIDADE_TRANSP'
      Size = 40
    end
    object SDS_NFCEUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Origin = 'UF_TRANSP'
      Size = 2
    end
    object SDS_NFCETP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      Size = 1
    end
    object SDS_NFCEN_NOTA_ENTRADA: TStringField
      FieldName = 'N_NOTA_ENTRADA'
      Origin = 'N_NOTA_ENTRADA'
    end
    object SDS_NFCENOME_CLIENTE_FOR: TStringField
      FieldName = 'NOME_CLIENTE_FOR'
      Origin = 'NOME_CLIENTE_FOR'
      Size = 70
    end
    object SDS_NFCECPF_CNPJ_CLIENTE_FORN: TStringField
      FieldName = 'CPF_CNPJ_CLIENTE_FORN'
      Origin = 'CPF_CNPJ_CLIENTE_FORN'
      FixedChar = True
      Size = 18
    end
    object SDS_NFCEIE_CLIENTE_FORN: TStringField
      FieldName = 'IE_CLIENTE_FORN'
      Origin = 'IE_CLIENTE_FORN'
    end
    object SDS_NFCEENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Origin = 'ENDERECO_CLI_FORN'
      Size = 44
    end
    object SDS_NFCEEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
      Origin = 'END_NUM_CLIENTE'
    end
    object SDS_NFCECOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      Size = 7
    end
    object SDS_NFCECEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      Origin = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object SDS_NFCEBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Origin = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object SDS_NFCETIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      Size = 1
    end
    object SDS_NFCETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object SDS_NFCECIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Origin = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object SDS_NFCEUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Origin = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object SDS_NFCEIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Origin = 'IE_PRODUTOR'
    end
    object SDS_NFCEPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_NFCEPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Size = 70
    end
    object SDS_NFCESTATUS_INUTILIZADO: TStringField
      FieldName = 'STATUS_INUTILIZADO'
      Origin = 'STATUS_INUTILIZADO'
      Size = 1
    end
    object SDS_NFCESTATUS_CANCELADO: TStringField
      FieldName = 'STATUS_CANCELADO'
      Origin = 'STATUS_CANCELADO'
      Size = 1
    end
    object SDS_NFCESTATUS_EMAIL: TStringField
      FieldName = 'STATUS_EMAIL'
      Origin = 'STATUS_EMAIL'
      Size = 1
    end
    object SDS_NFCECOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
    end
    object SDS_NFCEDEPEC: TStringField
      FieldName = 'DEPEC'
      Origin = 'DEPEC'
      Size = 1
    end
    object SDS_NFCECHAVE2: TStringField
      FieldName = 'CHAVE2'
      Origin = 'CHAVE2'
      Size = 70
    end
    object SDS_NFCESTATUS_RETORNO: TStringField
      FieldName = 'STATUS_RETORNO'
      Origin = 'STATUS_RETORNO'
      Size = 1
    end
    object SDS_NFCEJUSTIFICATIVA_CANCEL_INUTIL: TStringField
      FieldName = 'JUSTIFICATIVA_CANCEL_INUTIL'
      Origin = 'JUSTIFICATIVA_CANCEL_INUTIL'
      Size = 255
    end
    object SDS_NFCEMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object SDS_NFCECORRECAO: TStringField
      FieldName = 'CORRECAO'
      Origin = 'CORRECAO'
      Size = 1
    end
    object SDS_NFCEVL_TROCO: TFMTBCDField
      FieldName = 'VL_TROCO'
      Origin = 'VL_TROCO'
      Precision = 18
      Size = 2
    end
    object SDS_NFCEBXML: TBlobField
      FieldName = 'BXML'
      Origin = 'BXML'
    end
  end
  object SDS_NotasFiscais: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from NOTASFISCAIS order by codigo_nota')
    Left = 360
    Top = 224
    object SDS_NotasFiscaisCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Origin = 'CODIGO_NOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_NotasFiscaisNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
      Required = True
    end
    object SDS_NotasFiscaisSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Origin = 'SERIE_NF'
      Size = 15
    end
    object SDS_NotasFiscaisCFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      Origin = 'CFOP_NOTA'
      Size = 5
    end
    object SDS_NotasFiscaisDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object SDS_NotasFiscaisCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
    end
    object SDS_NotasFiscaisFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 70
    end
    object SDS_NotasFiscaisDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object SDS_NotasFiscaisCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object SDS_NotasFiscaisIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object SDS_NotasFiscaisUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
      Origin = 'USUARIO_CADASTRO'
    end
    object SDS_NotasFiscaisDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object SDS_NotasFiscaisOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object SDS_NotasFiscaisMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object SDS_NotasFiscaisANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object SDS_NotasFiscaisCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Origin = 'CHAVE_NFE'
      Size = 44
    end
    object SDS_NotasFiscaisPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      Origin = 'PROTOCOLO_NFE'
      Size = 30
    end
    object SDS_NotasFiscaisTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = 'TOTAL_NOTA'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisBASE_CALCULO_ICMS: TFMTBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = 'BASE_CALCULO_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisBASE_CALC_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS_SUBST'
      Origin = 'BASE_CALC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_ICMS_SUBST: TFMTBCDField
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'VALOR_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_OUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'VALOR_OUTRAS_DESPESAS'
      Origin = 'VALOR_OUTRAS_DESPESAS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_TOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Origin = 'VALOR_TOTAL_PRODUTOS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_TOTAL_ITENS_NOTA: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITENS_NOTA'
      Origin = 'VALOR_TOTAL_ITENS_NOTA'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVLR_ICMS_GARANTIDO: TFMTBCDField
      FieldName = 'VLR_ICMS_GARANTIDO'
      Origin = 'VLR_ICMS_GARANTIDO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaiscod_pagto: TIntegerField
      FieldName = 'cod_pagto'
      Origin = '"cod_pagto"'
    end
    object SDS_NotasFiscaisTP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      Size = 1
    end
    object SDS_NotasFiscaisENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Origin = 'ENDERECO_CLI_FORN'
      Size = 44
    end
    object SDS_NotasFiscaisEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
      Origin = 'END_NUM_CLIENTE'
    end
    object SDS_NotasFiscaisCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      Size = 7
    end
    object SDS_NotasFiscaisCEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      Origin = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object SDS_NotasFiscaisBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Origin = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object SDS_NotasFiscaisTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      Size = 1
    end
    object SDS_NotasFiscaisTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object SDS_NotasFiscaisCIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Origin = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object SDS_NotasFiscaisUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Origin = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object SDS_NotasFiscaisDESC_PAGTO: TStringField
      FieldName = 'DESC_PAGTO'
      Origin = 'DESC_PAGTO'
      Size = 70
    end
    object SDS_NotasFiscaisVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Origin = 'VALOR_AVISTA'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Origin = 'VALOR_PRAZO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaispagamento: TStringField
      FieldName = 'pagamento'
      Origin = '"pagamento"'
      Size = 30
    end
    object SDS_NotasFiscaisMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object SDS_NotasFiscaisEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Origin = 'EMITENTE'
      Size = 1
    end
    object SDS_NotasFiscaisVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_PIS_ST: TFMTBCDField
      FieldName = 'VALOR_PIS_ST'
      Origin = 'VALOR_PIS_ST'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_COFIS_ST: TFMTBCDField
      FieldName = 'VALOR_COFIS_ST'
      Origin = 'VALOR_COFIS_ST'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object SDS_NotasFiscaisSUB_SERIE: TStringField
      FieldName = 'SUB_SERIE'
      Origin = 'SUB_SERIE'
      Size = 10
    end
    object SDS_NotasFiscaisTRANSP_NOME: TStringField
      FieldName = 'TRANSP_NOME'
      Origin = 'TRANSP_NOME'
      Size = 60
    end
    object SDS_NotasFiscaisTRANSP_PLACA: TStringField
      FieldName = 'TRANSP_PLACA'
      Origin = 'TRANSP_PLACA'
      Size = 10
    end
    object SDS_NotasFiscaisTRANSP_PLACAUF: TStringField
      FieldName = 'TRANSP_PLACAUF'
      Origin = 'TRANSP_PLACAUF'
      Size = 2
    end
    object SDS_NotasFiscaisTRANSP_IE: TStringField
      FieldName = 'TRANSP_IE'
      Origin = 'TRANSP_IE'
      Size = 25
    end
    object SDS_NotasFiscaisTRANSP_CNPJ: TStringField
      FieldName = 'TRANSP_CNPJ'
      Origin = 'TRANSP_CNPJ'
      Size = 25
    end
    object SDS_NotasFiscaisTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      Origin = 'TRANSP_ENDERECO'
      Size = 40
    end
    object SDS_NotasFiscaisTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      Origin = 'TRANSP_CIDADE'
      Size = 30
    end
    object SDS_NotasFiscaisTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      Origin = 'TRANSP_UF'
      Size = 2
    end
    object SDS_NotasFiscaisTRANSP_QTDE: TFMTBCDField
      FieldName = 'TRANSP_QTDE'
      Origin = 'TRANSP_QTDE'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisTRANSP_ESPECIE: TStringField
      FieldName = 'TRANSP_ESPECIE'
      Origin = 'TRANSP_ESPECIE'
    end
    object SDS_NotasFiscaisTRANSP_MARCA: TStringField
      FieldName = 'TRANSP_MARCA'
      Origin = 'TRANSP_MARCA'
    end
    object SDS_NotasFiscaisTRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
      Origin = 'TRANSP_NUMERO'
    end
    object SDS_NotasFiscaisTRANSP_PESOBRUTO: TFMTBCDField
      FieldName = 'TRANSP_PESOBRUTO'
      Origin = 'TRANSP_PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisTRANSP_PESOLIQUIDO: TFMTBCDField
      FieldName = 'TRANSP_PESOLIQUIDO'
      Origin = 'TRANSP_PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 60
    end
    object SDS_NotasFiscaisOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 60
    end
    object SDS_NotasFiscaisOBS3: TStringField
      FieldName = 'OBS3'
      Origin = 'OBS3'
      Size = 60
    end
    object SDS_NotasFiscaisOBS4: TStringField
      FieldName = 'OBS4'
      Origin = 'OBS4'
      Size = 60
    end
    object SDS_NotasFiscaisOBS5: TStringField
      FieldName = 'OBS5'
      Origin = 'OBS5'
      Size = 60
    end
    object SDS_NotasFiscaisOBS6: TStringField
      FieldName = 'OBS6'
      Origin = 'OBS6'
      Size = 60
    end
    object SDS_NotasFiscaisOBS7: TStringField
      FieldName = 'OBS7'
      Origin = 'OBS7'
      Size = 60
    end
    object SDS_NotasFiscaisOBS8: TStringField
      FieldName = 'OBS8'
      Origin = 'OBS8'
      Size = 60
    end
    object SDS_NotasFiscaisSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object SDS_NotasFiscaisITENS2: TIntegerField
      FieldName = 'ITENS'
      Origin = 'ITENS'
    end
    object SDS_NotasFiscaisTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object SDS_NotasFiscaisNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NOTA_FISCAL'
      Size = 6
    end
    object SDS_NotasFiscaisICMS_ISENTO: TFMTBCDField
      FieldName = 'ICMS_ISENTO'
      Origin = 'ICMS_ISENTO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisICMS_OUTRAS: TFMTBCDField
      FieldName = 'ICMS_OUTRAS'
      Origin = 'ICMS_OUTRAS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
      Origin = 'DESCONTO_INCIDENTE'
    end
    object SDS_NotasFiscaisITEM_FRETE_VALOR: TFMTBCDField
      FieldName = 'ITEM_FRETE_VALOR'
      Origin = 'ITEM_FRETE_VALOR'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_FRETE_BASE: TFMTBCDField
      FieldName = 'ITEM_FRETE_BASE'
      Origin = 'ITEM_FRETE_BASE'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_FRETE_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
      Origin = 'ITEM_FRETE_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_FRETE_ICMS: TFMTBCDField
      FieldName = 'ITEM_FRETE_ICMS'
      Origin = 'ITEM_FRETE_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_SEGURO_VALOR: TFMTBCDField
      FieldName = 'ITEM_SEGURO_VALOR'
      Origin = 'ITEM_SEGURO_VALOR'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_SEGURO_BASE: TFMTBCDField
      FieldName = 'ITEM_SEGURO_BASE'
      Origin = 'ITEM_SEGURO_BASE'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_SEGURO_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
      Origin = 'ITEM_SEGURO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_SEGURO_ICMS: TFMTBCDField
      FieldName = 'ITEM_SEGURO_ICMS'
      Origin = 'ITEM_SEGURO_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_PIS_VALOR: TFMTBCDField
      FieldName = 'ITEM_PIS_VALOR'
      Origin = 'ITEM_PIS_VALOR'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_PIS_BASE: TFMTBCDField
      FieldName = 'ITEM_PIS_BASE'
      Origin = 'ITEM_PIS_BASE'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_PIS_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_PIS_ALIQUOTA'
      Origin = 'ITEM_PIS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_PIS_ICMS: TFMTBCDField
      FieldName = 'ITEM_PIS_ICMS'
      Origin = 'ITEM_PIS_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_COMPLEMENTO_VALOR: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
      Origin = 'ITEM_COMPLEMENTO_VALOR'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_COMPLEMENTO_BASE: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
      Origin = 'ITEM_COMPLEMENTO_BASE'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_COMPLEMENTO_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Origin = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_COMPLEMENTO_ICMS: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
      Origin = 'ITEM_COMPLEMENTO_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_SERVICO_VALOR: TFMTBCDField
      FieldName = 'ITEM_SERVICO_VALOR'
      Origin = 'ITEM_SERVICO_VALOR'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_SERVICO_BASE: TFMTBCDField
      FieldName = 'ITEM_SERVICO_BASE'
      Origin = 'ITEM_SERVICO_BASE'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_SERVICO_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
      Origin = 'ITEM_SERVICO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_SERVICO_ICMS: TFMTBCDField
      FieldName = 'ITEM_SERVICO_ICMS'
      Origin = 'ITEM_SERVICO_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_OUTRAS_VALOR: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_VALOR'
      Origin = 'ITEM_OUTRAS_VALOR'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_OUTRAS_BASE: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_BASE'
      Origin = 'ITEM_OUTRAS_BASE'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_OUTRAS_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
      Origin = 'ITEM_OUTRAS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_OUTRAS_ICMS: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_ICMS'
      Origin = 'ITEM_OUTRAS_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_ESPECIAL_TOTAL: TFMTBCDField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
      Origin = 'ITEM_ESPECIAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisITEM_ESPECIAL_VALOR: TFMTBCDField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Origin = 'ITEM_ESPECIAL_VALOR'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
      Origin = 'BASEICMS_PRODUTOS'
    end
    object SDS_NotasFiscaisCONF_ITEM_ESPECIAL: TFMTBCDField
      FieldName = 'CONF_ITEM_ESPECIAL'
      Origin = 'CONF_ITEM_ESPECIAL'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCREDITO_ICMS: TFMTBCDField
      FieldName = 'CREDITO_ICMS'
      Origin = 'CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      Size = 1
    end
    object SDS_NotasFiscaisINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
      Origin = 'INTEGRACAO'
    end
    object SDS_NotasFiscaisAPROVEITA_CREDITO_ICMS: TStringField
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Origin = 'APROVEITA_CREDITO_ICMS'
      Size = 1
    end
    object SDS_NotasFiscaisCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object SDS_NotasFiscaisICMSRETIDO: TFMTBCDField
      FieldName = 'ICMSRETIDO'
      Origin = 'ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisPERC_ICMSRETIDO: TFMTBCDField
      FieldName = 'PERC_ICMSRETIDO'
      Origin = 'PERC_ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 5
    end
    object SDS_NotasFiscaisCODREMETENTE: TIntegerField
      FieldName = 'CODREMETENTE'
      Origin = 'CODREMETENTE'
    end
    object SDS_NotasFiscaisREMETENTE: TStringField
      FieldName = 'REMETENTE'
      Origin = 'REMETENTE'
      Size = 50
    end
    object SDS_NotasFiscaisVALOR_MERCADORIAS: TFMTBCDField
      FieldName = 'VALOR_MERCADORIAS'
      Origin = 'VALOR_MERCADORIAS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisCONF_BASEICMS: TFMTBCDField
      FieldName = 'CONF_BASEICMS'
      Origin = 'CONF_BASEICMS'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_VALORICMS: TFMTBCDField
      FieldName = 'CONF_VALORICMS'
      Origin = 'CONF_VALORICMS'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_BASESUB: TFMTBCDField
      FieldName = 'CONF_BASESUB'
      Origin = 'CONF_BASESUB'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_VALORSUB: TFMTBCDField
      FieldName = 'CONF_VALORSUB'
      Origin = 'CONF_VALORSUB'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_FRETE: TFMTBCDField
      FieldName = 'CONF_FRETE'
      Origin = 'CONF_FRETE'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_SEGURO: TFMTBCDField
      FieldName = 'CONF_SEGURO'
      Origin = 'CONF_SEGURO'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_OUTRAS: TFMTBCDField
      FieldName = 'CONF_OUTRAS'
      Origin = 'CONF_OUTRAS'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_IPI: TFMTBCDField
      FieldName = 'CONF_IPI'
      Origin = 'CONF_IPI'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_DESCONTO: TFMTBCDField
      FieldName = 'CONF_DESCONTO'
      Origin = 'CONF_DESCONTO'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'CONF_TOTALPRODUTOS'
      Origin = 'CONF_TOTALPRODUTOS'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_TOTALNOTA: TFMTBCDField
      FieldName = 'CONF_TOTALNOTA'
      Origin = 'CONF_TOTALNOTA'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_ICMSRETIDO: TFMTBCDField
      FieldName = 'CONF_ICMSRETIDO'
      Origin = 'CONF_ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONF_ICMSREDITO_PERC: TFMTBCDField
      FieldName = 'CONF_ICMSREDITO_PERC'
      Origin = 'CONF_ICMSREDITO_PERC'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisCONFI_PIS: TFMTBCDField
      FieldName = 'CONFI_PIS'
      Origin = 'CONFI_PIS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisCONF_COFINS: TFMTBCDField
      FieldName = 'CONF_COFINS'
      Origin = 'CONF_COFINS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisCOD_CENTRO_CUSTO: TIntegerField
      FieldName = 'COD_CENTRO_CUSTO'
      Origin = 'COD_CENTRO_CUSTO'
    end
    object SDS_NotasFiscaisCOD_IMOVEL: TIntegerField
      FieldName = 'COD_IMOVEL'
      Origin = 'COD_IMOVEL'
    end
  end
  object QConsultaServer: TFDQuery
    Connection = Coneccao
    Left = 16
    Top = 648
  end
  object sds_caixa: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from caixa order by seq asc')
    Left = 88
    Top = 684
    object sds_caixaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object sds_caixaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'COD_USUARIO'
    end
    object sds_caixaDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
      Origin = 'DATA_FECHAMENTO'
    end
    object sds_caixaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object sds_caixaSEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_caixaHORA_ABERT: TTimeField
      FieldName = 'HORA_ABERT'
      Origin = 'HORA_ABERT'
    end
    object sds_caixaHORA_FECHA: TTimeField
      FieldName = 'HORA_FECHA'
      Origin = 'HORA_FECHA'
    end
    object sds_caixaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
  object qrcfop: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from TABELA_CFOP')
    Left = 16
    Top = 760
    object qrcfopCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object qrcfopNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
      Size = 200
    end
    object qrcfopTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qrcfopICMS: TFMTBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object qrcfopISS: TFMTBCDField
      FieldName = 'ISS'
      Origin = 'ISS'
      Precision = 18
      Size = 2
    end
    object qrcfopOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 80
    end
    object qrcfopOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 80
    end
    object qrcfopOBS3: TStringField
      FieldName = 'OBS3'
      Origin = 'OBS3'
      Size = 80
    end
    object qrcfopOBS4: TStringField
      FieldName = 'OBS4'
      Origin = 'OBS4'
      Size = 80
    end
    object qrcfopFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Origin = 'FILTRO'
    end
    object qrcfopVALOR1: TFMTBCDField
      FieldName = 'VALOR1'
      Origin = 'VALOR1'
      Precision = 18
      Size = 2
    end
    object qrcfopVALOR2: TFMTBCDField
      FieldName = 'VALOR2'
      Origin = 'VALOR2'
      Precision = 18
      Size = 2
    end
    object qrcfopVALOR3: TFMTBCDField
      FieldName = 'VALOR3'
      Origin = 'VALOR3'
      Precision = 18
      Size = 2
    end
    object qrcfopVALOR4: TFMTBCDField
      FieldName = 'VALOR4'
      Origin = 'VALOR4'
      Precision = 18
      Size = 2
    end
    object qrcfopVALOR5: TFMTBCDField
      FieldName = 'VALOR5'
      Origin = 'VALOR5'
      Precision = 18
      Size = 2
    end
    object qrcfopVALOR6: TFMTBCDField
      FieldName = 'VALOR6'
      Origin = 'VALOR6'
      Precision = 18
      Size = 2
    end
    object qrcfopVALOR7: TFMTBCDField
      FieldName = 'VALOR7'
      Origin = 'VALOR7'
      Precision = 18
      Size = 2
    end
    object qrcfopVALOR8: TFMTBCDField
      FieldName = 'VALOR8'
      Origin = 'VALOR8'
      Precision = 18
      Size = 2
    end
    object qrcfopVALOR9: TFMTBCDField
      FieldName = 'VALOR9'
      Origin = 'VALOR9'
      Precision = 18
      Size = 2
    end
    object qrcfopVALOR10: TFMTBCDField
      FieldName = 'VALOR10'
      Origin = 'VALOR10'
      Precision = 18
      Size = 2
    end
    object qrcfopST: TStringField
      FieldName = 'ST'
      Origin = 'ST'
      Size = 11
    end
    object qrcfopCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Origin = 'CLASSIFICACAO_FISCAL'
    end
    object qrcfopREDUCAO_ICMS: TFMTBCDField
      FieldName = 'REDUCAO_ICMS'
      Origin = 'REDUCAO_ICMS'
      Precision = 18
      Size = 2
    end
    object qrcfopMARGEM_AGREGADA: TFMTBCDField
      FieldName = 'MARGEM_AGREGADA'
      Origin = 'MARGEM_AGREGADA'
      Precision = 18
      Size = 2
    end
    object qrcfopSIMPLIFICADO: TStringField
      FieldName = 'SIMPLIFICADO'
      Origin = 'SIMPLIFICADO'
      Size = 50
    end
    object qrcfopCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
    end
    object qrcfopFATURAMENTO: TIntegerField
      FieldName = 'FATURAMENTO'
      Origin = 'FATURAMENTO'
    end
  end
  object qrproduto: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from produtos')
    Left = 320
    Top = 640
    object qrprodutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrprodutoCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object qrprodutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object qrprodutoABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Origin = 'ABREVIADO'
      Size = 29
    end
    object qrprodutoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object qrprodutoMARGEM_LUCRO: TFMTBCDField
      FieldName = 'MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object qrprodutoCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object qrprodutoUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object qrprodutoFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 18
      Size = 2
    end
    object qrprodutoICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 2
    end
    object qrprodutoIPI_IRPJ: TFMTBCDField
      FieldName = 'IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object qrprodutoOUTROS_IMPOSTOS: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object qrprodutoDESCONTOS: TFMTBCDField
      FieldName = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object qrprodutoCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Size = 6
    end
    object qrprodutoSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object qrprodutoCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      Precision = 18
      Size = 2
    end
    object qrprodutoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object qrprodutoDESCONTO_MAXIMO: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Precision = 18
      Size = 2
    end
    object qrprodutoCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
    end
    object qrprodutoCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
    end
    object qrprodutoCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
    end
    object qrprodutoNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object qrprodutoNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Size = 40
    end
    object qrprodutoNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object qrprodutoNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 70
    end
    object qrprodutoCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
    end
    object qrprodutoFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object qrprodutoESTOQUE_ATUAL: TBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 18
    end
    object qrprodutoESTOQUE_VENDIDO: TFMTBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Precision = 18
      Size = 2
    end
    object qrprodutoESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
    end
    object qrprodutoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 18
      Size = 6
    end
    object qrprodutoVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Precision = 18
      Size = 6
    end
    object qrprodutoESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
    end
    object qrprodutoESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
    end
    object qrprodutoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object qrprodutoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object qrprodutoVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 18
      Size = 6
    end
    object qrprodutoULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
    object qrprodutoVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Precision = 18
      Size = 6
    end
    object qrprodutoSECCAO: TIntegerField
      FieldName = 'SECCAO'
    end
    object qrprodutoCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object qrprodutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object qrprodutoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 500
    end
    object qrprodutoESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Size = 50
    end
    object qrprodutoGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
    end
    object qrprodutoBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object qrprodutoETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 1
    end
    object qrprodutoATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object qrprodutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 40
    end
    object qrprodutoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qrprodutoDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object qrprodutoPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object qrprodutoPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object qrprodutoFONETICO: TStringField
      FieldName = 'FONETICO'
      Size = 60
    end
    object qrprodutoDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
    end
    object qrprodutoCUSTOREPOSICAO: TFMTBCDField
      FieldName = 'CUSTOREPOSICAO'
      Precision = 18
      Size = 2
    end
    object qrprodutoPRECO_ANT: TFMTBCDField
      FieldName = 'PRECO_ANT'
      Precision = 18
      Size = 3
    end
    object qrprodutoPRECO_PROMOCAO: TFMTBCDField
      FieldName = 'PRECO_PROMOCAO'
      Precision = 18
      Size = 3
    end
    object qrprodutoFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Size = 1
    end
    object qrprodutoDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
    end
    object qrprodutoDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
    end
    object qrprodutoCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
    end
    object qrprodutoLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 70
    end
    object qrprodutoPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Size = 70
    end
    object qrprodutoMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Size = 1
    end
    object qrprodutoQTD_FRACIONADA: TFMTBCDField
      FieldName = 'QTD_FRACIONADA'
      Precision = 18
      Size = 2
    end
    object qrprodutoQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
    end
    object qrprodutoMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Size = 3
    end
    object qrprodutoLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object qrprodutoVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object qrprodutoCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object qrprodutoPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Precision = 18
      Size = 3
    end
    object qrprodutoMARGEM_LUCRO2: TFMTBCDField
      FieldName = 'MARGEM_LUCRO2'
      Precision = 18
      Size = 2
    end
    object qrprodutoVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object qrprodutoPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object qrprodutoUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
    end
    object qrprodutoDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Size = 6
    end
    object qrprodutoQUANT_SAIDA: TBCDField
      FieldName = 'QUANT_SAIDA'
      Precision = 18
    end
    object qrprodutoQUANT_ENTRADA: TBCDField
      FieldName = 'QUANT_ENTRADA'
      Precision = 18
    end
    object qrprodutoESTOQUE_FRACAO: TBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Precision = 18
    end
    object qrprodutoDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object qrprodutoFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object qrprodutoNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 12
    end
    object qrprodutoCOD_MS: TStringField
      FieldName = 'COD_MS'
      Size = 13
    end
    object qrprodutoCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Size = 5
    end
    object qrprodutoPRODUTOCOMPOSTO: TStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Size = 5
    end
    object qrprodutoTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object qrprodutoCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
    end
    object qrprodutoCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
    end
    object qrprodutoLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Size = 1
    end
    object qrprodutoGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
    end
    object qrprodutoCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 1
    end
    object qrprodutoCOR: TIntegerField
      FieldName = 'COR'
    end
    object qrprodutoENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Required = True
    end
    object qrprodutoID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
    end
    object qrprodutoCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Size = 9
    end
    object qrprodutoCESTA: TStringField
      FieldName = 'CESTA'
      Size = 1
    end
    object qrprodutoML_QUANT_BEB: TFMTBCDField
      FieldName = 'ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object qrprodutoUND_TRIB: TStringField
      FieldName = 'UND_TRIB'
      Size = 3
    end
    object qrprodutoCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 44
    end
    object qrprodutoCOR_DESC: TStringField
      FieldName = 'COR_DESC'
      Size = 30
    end
    object qrprodutoN_MOTOR: TStringField
      FieldName = 'N_MOTOR'
      Size = 30
    end
    object qrprodutoANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Size = 4
    end
    object qrprodutoANO_MOD_FAB: TStringField
      FieldName = 'ANO_MOD_FAB'
      Size = 4
    end
    object qrprodutoTIPO_VEIC: TStringField
      FieldName = 'TIPO_VEIC'
      Size = 10
    end
    object qrprodutoN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Size = 30
    end
    object qrprodutoCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Size = 30
    end
    object qrprodutoESPECIE_VEICULO: TStringField
      FieldName = 'ESPECIE_VEICULO'
      Size = 10
    end
    object qrprodutoCOD_COR_DENATRAN: TStringField
      FieldName = 'COD_COR_DENATRAN'
      Size = 10
    end
    object qrprodutoTIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Size = 10
    end
    object qrprodutoVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 1
    end
    object qrprodutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrprodutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrprodutoPRODUTO_PROPRIEDADE: TIntegerField
      FieldName = 'PRODUTO_PROPRIEDADE'
    end
    object qrprodutoMULTIP_FRACAO: TIntegerField
      FieldName = 'MULTIP_FRACAO'
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrprodutoCODORIGINAL: TStringField
      FieldName = 'CODORIGINAL'
      Size = 40
    end
    object qrprodutoDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
    end
    object qrprodutoALERTA_COPA: TStringField
      FieldName = 'ALERTA_COPA'
      FixedChar = True
      Size = 1
    end
    object qrprodutoALERTA_COZINHA: TStringField
      FieldName = 'ALERTA_COZINHA'
      FixedChar = True
      Size = 1
    end
    object qrprodutoANDROID_VISUALIZA: TStringField
      FieldName = 'ANDROID_VISUALIZA'
      FixedChar = True
      Size = 1
    end
    object qrprodutoTEMPO_PREPARO: TTimeField
      FieldName = 'TEMPO_PREPARO'
    end
    object qrprodutoSABORES: TIntegerField
      FieldName = 'SABORES'
    end
    object qrprodutoCOD_PACOTE: TStringField
      FieldName = 'COD_PACOTE'
    end
    object qrprodutoCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
  end
  object qrpreco: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from produto_precos')
    Left = 312
    Top = 704
    object qrprecoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrprecoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
    end
    object qrprecoCODFILIAL: TIntegerField
      FieldName = 'CODFILIAL'
      Origin = 'CODFILIAL'
    end
    object qrprecoDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object qrprecoTIPO_REGIME: TIntegerField
      FieldName = 'TIPO_REGIME'
      Origin = 'TIPO_REGIME'
    end
    object qrprecoTIPO_CALCULO: TIntegerField
      FieldName = 'TIPO_CALCULO'
      Origin = 'TIPO_CALCULO'
    end
    object qrprecoCP_PIPI: TSingleField
      FieldName = 'CP_PIPI'
      Origin = 'CP_PIPI'
    end
    object qrprecoCP_VIPI: TSingleField
      FieldName = 'CP_VIPI'
      Origin = 'CP_VIPI'
    end
    object qrprecoCP_PRETENCAO: TSingleField
      FieldName = 'CP_PRETENCAO'
      Origin = 'CP_PRETENCAO'
    end
    object qrprecoCP_VRETENCAO: TSingleField
      FieldName = 'CP_VRETENCAO'
      Origin = 'CP_VRETENCAO'
    end
    object qrprecoCP_PFRETE: TSingleField
      FieldName = 'CP_PFRETE'
      Origin = 'CP_PFRETE'
    end
    object qrprecoCP_VFRETE: TSingleField
      FieldName = 'CP_VFRETE'
      Origin = 'CP_VFRETE'
    end
    object qrprecoCP_PICMS: TSingleField
      FieldName = 'CP_PICMS'
      Origin = 'CP_PICMS'
    end
    object qrprecoCP_VICMS: TSingleField
      FieldName = 'CP_VICMS'
      Origin = 'CP_VICMS'
    end
    object qrprecoCP_PREDUCAO: TSingleField
      FieldName = 'CP_PREDUCAO'
      Origin = 'CP_PREDUCAO'
    end
    object qrprecoCP_VREDUCAO: TSingleField
      FieldName = 'CP_VREDUCAO'
      Origin = 'CP_VREDUCAO'
    end
    object qrprecoCP_PPIS: TSingleField
      FieldName = 'CP_PPIS'
      Origin = 'CP_PPIS'
    end
    object qrprecoCP_VPIS: TSingleField
      FieldName = 'CP_VPIS'
      Origin = 'CP_VPIS'
    end
    object qrprecoCP_PCOFINS: TSingleField
      FieldName = 'CP_PCOFINS'
      Origin = 'CP_PCOFINS'
    end
    object qrprecoCP_VCOFINS: TSingleField
      FieldName = 'CP_VCOFINS'
      Origin = 'CP_VCOFINS'
    end
    object qrprecoCP_PSEGURO: TSingleField
      FieldName = 'CP_PSEGURO'
      Origin = 'CP_PSEGURO'
    end
    object qrprecoCP_VSEGURO: TSingleField
      FieldName = 'CP_VSEGURO'
      Origin = 'CP_VSEGURO'
    end
    object qrprecoCP_POUTROS: TSingleField
      FieldName = 'CP_POUTROS'
      Origin = 'CP_POUTROS'
    end
    object qrprecoCP_VOUTROS: TSingleField
      FieldName = 'CP_VOUTROS'
      Origin = 'CP_VOUTROS'
    end
    object qrprecoVD_PICMS: TSingleField
      FieldName = 'VD_PICMS'
      Origin = 'VD_PICMS'
    end
    object qrprecoVD_VICMS: TSingleField
      FieldName = 'VD_VICMS'
      Origin = 'VD_VICMS'
    end
    object qrprecoVD_PREDUCAO: TSingleField
      FieldName = 'VD_PREDUCAO'
      Origin = 'VD_PREDUCAO'
    end
    object qrprecoVD_VREDUCAO: TSingleField
      FieldName = 'VD_VREDUCAO'
      Origin = 'VD_VREDUCAO'
    end
    object qrprecoVD_PSIMPLES: TSingleField
      FieldName = 'VD_PSIMPLES'
      Origin = 'VD_PSIMPLES'
    end
    object qrprecoVD_VSIMPLES: TSingleField
      FieldName = 'VD_VSIMPLES'
      Origin = 'VD_VSIMPLES'
    end
    object qrprecoVD_PPIS: TSingleField
      FieldName = 'VD_PPIS'
      Origin = 'VD_PPIS'
    end
    object qrprecoVD_VPIS: TSingleField
      FieldName = 'VD_VPIS'
      Origin = 'VD_VPIS'
    end
    object qrprecoVD_PCOFINS: TSingleField
      FieldName = 'VD_PCOFINS'
      Origin = 'VD_PCOFINS'
    end
    object qrprecoVD_VCOFINS: TSingleField
      FieldName = 'VD_VCOFINS'
      Origin = 'VD_VCOFINS'
    end
    object qrprecoVD_PIRPJ: TSingleField
      FieldName = 'VD_PIRPJ'
      Origin = 'VD_PIRPJ'
    end
    object qrprecoVD_VIRPJ: TSingleField
      FieldName = 'VD_VIRPJ'
      Origin = 'VD_VIRPJ'
    end
    object qrprecoVD_PCONTSOCIAL: TSingleField
      FieldName = 'VD_PCONTSOCIAL'
      Origin = 'VD_PCONTSOCIAL'
    end
    object qrprecoVD_VCONTSOCIAL: TSingleField
      FieldName = 'VD_VCONTSOCIAL'
      Origin = 'VD_VCONTSOCIAL'
    end
    object qrprecoVD_PDFIXA: TSingleField
      FieldName = 'VD_PDFIXA'
      Origin = 'VD_PDFIXA'
    end
    object qrprecoVD_VDFIXA: TSingleField
      FieldName = 'VD_VDFIXA'
      Origin = 'VD_VDFIXA'
    end
    object qrprecoVD_PCOMISSAO: TSingleField
      FieldName = 'VD_PCOMISSAO'
      Origin = 'VD_PCOMISSAO'
    end
    object qrprecoVD_VCOMISSAO: TSingleField
      FieldName = 'VD_VCOMISSAO'
      Origin = 'VD_VCOMISSAO'
    end
    object qrprecoVD_PDESCMAX: TSingleField
      FieldName = 'VD_PDESCMAX'
      Origin = 'VD_PDESCMAX'
    end
    object qrprecoVD_VDESCMAX: TSingleField
      FieldName = 'VD_VDESCMAX'
      Origin = 'VD_VDESCMAX'
    end
    object qrprecoPCUSTO_COMPRA: TSingleField
      FieldName = 'PCUSTO_COMPRA'
      Origin = 'PCUSTO_COMPRA'
    end
    object qrprecoVCUSTO_COMPRA: TSingleField
      FieldName = 'VCUSTO_COMPRA'
      Origin = 'VCUSTO_COMPRA'
    end
    object qrprecoPCUSTO_VENDA: TSingleField
      FieldName = 'PCUSTO_VENDA'
      Origin = 'PCUSTO_VENDA'
    end
    object qrprecoVCUSTO_VENDA: TSingleField
      FieldName = 'VCUSTO_VENDA'
      Origin = 'VCUSTO_VENDA'
    end
    object qrprecoPRECO_LIQUIDO: TSingleField
      FieldName = 'PRECO_LIQUIDO'
      Origin = 'PRECO_LIQUIDO'
    end
    object qrprecoPRECO_UNITARIO: TSingleField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
    end
    object qrprecoFRACAO: TSingleField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object qrprecoPMARGEM1: TSingleField
      FieldName = 'PMARGEM1'
      Origin = 'PMARGEM1'
    end
    object qrprecoPMARGEM2: TSingleField
      FieldName = 'PMARGEM2'
      Origin = 'PMARGEM2'
    end
    object qrprecoPMARGEM3: TSingleField
      FieldName = 'PMARGEM3'
      Origin = 'PMARGEM3'
    end
    object qrprecoPMARGEM4: TSingleField
      FieldName = 'PMARGEM4'
      Origin = 'PMARGEM4'
    end
    object qrprecoPMARGEM5: TSingleField
      FieldName = 'PMARGEM5'
      Origin = 'PMARGEM5'
    end
    object qrprecoPRECOVAREJO1: TSingleField
      FieldName = 'PRECOVAREJO1'
      Origin = 'PRECOVAREJO1'
    end
    object qrprecoPRECOVAREJO2: TSingleField
      FieldName = 'PRECOVAREJO2'
      Origin = 'PRECOVAREJO2'
    end
    object qrprecoPRECOVAREJO3: TSingleField
      FieldName = 'PRECOVAREJO3'
      Origin = 'PRECOVAREJO3'
    end
    object qrprecoPRECOVAREJO4: TSingleField
      FieldName = 'PRECOVAREJO4'
      Origin = 'PRECOVAREJO4'
    end
    object qrprecoPRECOVAREJO5: TSingleField
      FieldName = 'PRECOVAREJO5'
      Origin = 'PRECOVAREJO5'
    end
    object qrprecoPMARGEMATACADO1: TSingleField
      FieldName = 'PMARGEMATACADO1'
      Origin = 'PMARGEMATACADO1'
    end
    object qrprecoPMARGEMATACADO2: TSingleField
      FieldName = 'PMARGEMATACADO2'
      Origin = 'PMARGEMATACADO2'
    end
    object qrprecoPMARGEMATACADO3: TSingleField
      FieldName = 'PMARGEMATACADO3'
      Origin = 'PMARGEMATACADO3'
    end
    object qrprecoPMARGEMATACADO4: TSingleField
      FieldName = 'PMARGEMATACADO4'
      Origin = 'PMARGEMATACADO4'
    end
    object qrprecoPMARGEMATACADO5: TSingleField
      FieldName = 'PMARGEMATACADO5'
      Origin = 'PMARGEMATACADO5'
    end
    object qrprecoPRECOATACADO1: TSingleField
      FieldName = 'PRECOATACADO1'
      Origin = 'PRECOATACADO1'
    end
    object qrprecoPRECOATACADO2: TSingleField
      FieldName = 'PRECOATACADO2'
      Origin = 'PRECOATACADO2'
    end
    object qrprecoPRECOATACADO3: TSingleField
      FieldName = 'PRECOATACADO3'
      Origin = 'PRECOATACADO3'
    end
    object qrprecoPRECOATACADO4: TSingleField
      FieldName = 'PRECOATACADO4'
      Origin = 'PRECOATACADO4'
    end
    object qrprecoPRECOATACADO5: TSingleField
      FieldName = 'PRECOATACADO5'
      Origin = 'PRECOATACADO5'
    end
    object qrprecoVCUSTO_COMPRA_ANT: TSingleField
      FieldName = 'VCUSTO_COMPRA_ANT'
      Origin = 'VCUSTO_COMPRA_ANT'
    end
    object qrprecoPRECOVAREJO1_ANT: TSingleField
      FieldName = 'PRECOVAREJO1_ANT'
      Origin = 'PRECOVAREJO1_ANT'
    end
    object qrprecoCUSTO_COMPRA: TFMTBCDField
      FieldName = 'CUSTO_COMPRA'
      Origin = 'CUSTO_COMPRA'
      Precision = 18
      Size = 2
    end
    object qrprecoVALOR_ULTIMA_COMPRA: TFMTBCDField
      FieldName = 'VALOR_ULTIMA_COMPRA'
      Origin = 'VALOR_ULTIMA_COMPRA'
      Precision = 18
      Size = 2
    end
    object qrprecoLUCRO: TFMTBCDField
      FieldName = 'LUCRO'
      Origin = 'LUCRO'
      Precision = 18
      Size = 3
    end
    object qrprecoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object qrprecoICMS_ENTRADA_P: TFMTBCDField
      FieldName = 'ICMS_ENTRADA_P'
      Origin = 'ICMS_ENTRADA_P'
      Precision = 18
      Size = 3
    end
    object qrprecoICMS_SAIDA_P: TFMTBCDField
      FieldName = 'ICMS_SAIDA_P'
      Origin = 'ICMS_SAIDA_P'
      Precision = 18
      Size = 3
    end
    object qrprecoCUSTO_OPERACIONAL_P: TFMTBCDField
      FieldName = 'CUSTO_OPERACIONAL_P'
      Origin = 'CUSTO_OPERACIONAL_P'
      Precision = 18
      Size = 3
    end
    object qrprecoOUTROS_IMPOSTOS_P: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS_P'
      Origin = 'OUTROS_IMPOSTOS_P'
      Precision = 18
      Size = 3
    end
    object qrprecoCOMISSAO_P: TFMTBCDField
      FieldName = 'COMISSAO_P'
      Origin = 'COMISSAO_P'
      Precision = 18
      Size = 3
    end
    object qrprecoLUCRO_P: TFMTBCDField
      FieldName = 'LUCRO_P'
      Origin = 'LUCRO_P'
      Precision = 18
      Size = 3
    end
    object qrprecoTOTAL_CUSTO: TFMTBCDField
      FieldName = 'TOTAL_CUSTO'
      Origin = 'TOTAL_CUSTO'
      Precision = 18
      Size = 3
    end
    object qrprecoTOTAL_CUSTO_P: TFMTBCDField
      FieldName = 'TOTAL_CUSTO_P'
      Origin = 'TOTAL_CUSTO_P'
      Precision = 18
      Size = 3
    end
    object qrprecoPRECO_AUTOMATICO: TIntegerField
      FieldName = 'PRECO_AUTOMATICO'
      Origin = 'PRECO_AUTOMATICO'
    end
    object qrprecoALTERA_AUTOMATICO: TIntegerField
      FieldName = 'ALTERA_AUTOMATICO'
      Origin = 'ALTERA_AUTOMATICO'
    end
    object qrprecoNOVO_PRECO_VENDA: TFMTBCDField
      FieldName = 'NOVO_PRECO_VENDA'
      Origin = 'NOVO_PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object qrprecoNOVO_PRECO_CUSTO: TFMTBCDField
      FieldName = 'NOVO_PRECO_CUSTO'
      Origin = 'NOVO_PRECO_CUSTO'
      Precision = 18
      Size = 3
    end
    object qrprecoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 3
    end
    object qrprecoFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 3
    end
    object qrprecoSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Precision = 18
      Size = 3
    end
    object qrprecoOUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'OUTRAS_DESPESAS'
      Origin = 'OUTRAS_DESPESAS'
      Precision = 18
      Size = 3
    end
    object qrprecoIPI_P: TFMTBCDField
      FieldName = 'IPI_P'
      Origin = 'IPI_P'
      Precision = 18
      Size = 3
    end
    object qrprecoIPI: TFMTBCDField
      FieldName = 'IPI'
      Origin = 'IPI'
      Precision = 18
      Size = 3
    end
    object qrprecoPIS_P: TFMTBCDField
      FieldName = 'PIS_P'
      Origin = 'PIS_P'
      Precision = 18
      Size = 3
    end
    object qrprecoPIS: TFMTBCDField
      FieldName = 'PIS'
      Origin = 'PIS'
      Precision = 18
      Size = 3
    end
    object qrprecoCOFINS_P: TFMTBCDField
      FieldName = 'COFINS_P'
      Origin = 'COFINS_P'
      Precision = 18
      Size = 3
    end
    object qrprecoCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Origin = 'COFINS'
      Precision = 18
      Size = 3
    end
    object qrprecoCONTRIBUICAO_SOCIAL_P: TFMTBCDField
      FieldName = 'CONTRIBUICAO_SOCIAL_P'
      Origin = 'CONTRIBUICAO_SOCIAL_P'
      Precision = 18
      Size = 3
    end
    object qrprecoCONTRIBUICAO_SOCIAL: TFMTBCDField
      FieldName = 'CONTRIBUICAO_SOCIAL'
      Origin = 'CONTRIBUICAO_SOCIAL'
      Precision = 18
      Size = 3
    end
    object qrprecoPIS_ENTRADA_P: TFMTBCDField
      FieldName = 'PIS_ENTRADA_P'
      Origin = 'PIS_ENTRADA_P'
      Precision = 18
      Size = 3
    end
    object qrprecoPIS_ENTRADA: TFMTBCDField
      FieldName = 'PIS_ENTRADA'
      Origin = 'PIS_ENTRADA'
      Precision = 18
      Size = 3
    end
    object qrprecoCOFINS_ENTRADA_P: TFMTBCDField
      FieldName = 'COFINS_ENTRADA_P'
      Origin = 'COFINS_ENTRADA_P'
      Precision = 18
      Size = 3
    end
    object qrprecoCOFINS_ENTRADA: TFMTBCDField
      FieldName = 'COFINS_ENTRADA'
      Origin = 'COFINS_ENTRADA'
      Precision = 18
      Size = 3
    end
    object qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFMTBCDField
      FieldName = 'CONTRIBUICAO_SOCIAL_ENTRADA_P'
      Origin = 'CONTRIBUICAO_SOCIAL_ENTRADA_P'
      Precision = 18
      Size = 3
    end
    object qrprecoSUBSTITUICAO_TRIBUTARIA: TFMTBCDField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
      Origin = 'SUBSTITUICAO_TRIBUTARIA'
      Precision = 18
      Size = 3
    end
    object qrprecoCP_VPRECOCOMPRA: TSingleField
      FieldName = 'CP_VPRECOCOMPRA'
      Origin = 'CP_VPRECOCOMPRA'
    end
    object qrprecoFRETE_IPI_OUTRAS: TFMTBCDField
      FieldName = 'FRETE_IPI_OUTRAS'
      Origin = 'FRETE_IPI_OUTRAS'
      Precision = 18
      Size = 2
    end
    object qrprecoICMS_ENTRADA: TFMTBCDField
      FieldName = 'ICMS_ENTRADA'
      Origin = 'ICMS_ENTRADA'
      Precision = 18
      Size = 3
    end
    object qrprecoICMS_SAIDA: TFMTBCDField
      FieldName = 'ICMS_SAIDA'
      Origin = 'ICMS_SAIDA'
      Precision = 18
      Size = 3
    end
    object qrprecoCUSTO_OPERACIONAL: TFMTBCDField
      FieldName = 'CUSTO_OPERACIONAL'
      Origin = 'CUSTO_OPERACIONAL'
      Precision = 18
      Size = 3
    end
    object qrprecoOUTROS_IMPOSTOS: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      Precision = 18
      Size = 3
    end
    object qrprecoCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 3
    end
  end
  object qrlote_rentabilidade: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from LOTE_RENTABILIDADE')
    Left = 869
    Top = 609
    object qrlote_rentabilidadeLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Required = True
      Size = 10
    end
    object qrlote_rentabilidadeSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object qrlote_rentabilidadeCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
    end
    object qrlote_rentabilidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object qrlote_rentabilidadeDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrlote_rentabilidadeCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Origin = 'CODIGO_NOTA'
    end
    object qrlote_rentabilidadeNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'NOTAFISCAL'
    end
    object qrlote_rentabilidadeQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object qrlote_rentabilidadeVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qrlote_rentabilidadeOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
  end
  object qrfornecedor_codigo: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from fornecedor_codigo')
    Left = 696
    Top = 632
    object qrfornecedor_codigoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
    end
    object qrfornecedor_codigoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
    end
    object qrfornecedor_codigoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object qrfornecedor_codigoPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
  end
  object SDS_Clientes: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select * from CLIENTES order by NOME_RS ASC')
    Left = 168
    Top = 528
    object SDS_ClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_ClientesNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      Required = True
      Size = 70
    end
    object SDS_ClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object SDS_ClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object SDS_ClientesUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object SDS_ClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_ClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object SDS_ClientesTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      Size = 15
    end
    object SDS_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object SDS_ClientesNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
      Origin = 'NASCIMENTO_IA'
    end
    object SDS_ClientesSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 15
    end
    object SDS_ClientesFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Origin = 'FOTO_LOGOMARCA'
    end
    object SDS_ClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object SDS_ClientesRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      FixedChar = True
    end
    object SDS_ClientesFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object SDS_ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object SDS_ClientesUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object SDS_ClientesDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object SDS_ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object SDS_ClientesOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object SDS_ClientesCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Origin = 'CREDIARIO'
      Size = 3
    end
    object SDS_ClientesESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
      Size = 10
    end
    object SDS_ClientesRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Origin = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object SDS_ClientesPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 70
    end
    object SDS_ClientesMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 70
    end
    object SDS_ClientesNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Origin = 'NOME_CONJUGE'
      Size = 70
    end
    object SDS_ClientesCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      Origin = 'CPF_CONJUGE'
      FixedChar = True
      Size = 18
    end
    object SDS_ClientesNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
      Origin = 'NASCIMENTO_CONJUGE'
    end
    object SDS_ClientesTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Origin = 'TRABALHO_CONJUGE'
      Size = 70
    end
    object SDS_ClientesPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Origin = 'PROFISSAO_CONJUGE'
      Size = 70
    end
    object SDS_ClientesLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Origin = 'LOCALTRABALHO'
      Size = 70
    end
    object SDS_ClientesPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Origin = 'PROFISSAO_RA'
      Size = 70
    end
    object SDS_ClientesTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Origin = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object SDS_ClientesFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Origin = 'FAX_TRABALHO'
      Size = 15
    end
    object SDS_ClientesOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Origin = 'OBSERVACOES_TRABALHO'
    end
    object SDS_ClientesBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 70
    end
    object SDS_ClientesNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Origin = 'NOME_AGENCIA'
      Size = 70
    end
    object SDS_ClientesNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Origin = 'NUMERO_AGENCIA'
      Size = 10
    end
    object SDS_ClientesCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
      Origin = 'CONTA_CORRENTE'
    end
    object SDS_ClientesNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Origin = 'NOME1_REFERENCIA'
      Size = 70
    end
    object SDS_ClientesNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Origin = 'NOME2_REFERENCIA'
      Size = 70
    end
    object SDS_ClientesTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Origin = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object SDS_ClientesTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Origin = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object SDS_ClientesBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Origin = 'BANCO_REFERENCIA'
      Size = 70
    end
    object SDS_ClientesAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      Size = 30
    end
    object SDS_ClientesTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Origin = 'OBSERVACOES_COMERCIAIS'
    end
    object SDS_ClientesOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Origin = 'OBSERVACOES_BANCO'
    end
    object SDS_ClientesPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      Origin = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      Origin = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      Origin = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object SDS_ClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_ClientesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object SDS_ClientesORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'ORGAO_EMISSOR'
      Size = 10
    end
    object SDS_ClientesDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
      Origin = 'DATA_EMISSAO_RG'
    end
    object SDS_ClientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 40
    end
    object SDS_ClientesNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Origin = 'NATURALIDADE_UF'
      Size = 2
    end
    object SDS_ClientesCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object SDS_ClientesCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = 'COD_BAIRRO'
    end
    object SDS_ClientesDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object SDS_ClientesCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
      Origin = 'COD_ZONA'
    end
    object SDS_ClientesPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = 'PONTO_REFERENCIA'
      Size = 200
    end
    object SDS_ClientesATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object SDS_ClientesCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Origin = 'CONTATO1'
      Size = 60
    end
    object SDS_ClientesCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Origin = 'CONTATO2'
      Size = 60
    end
    object SDS_ClientesCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Origin = 'CX_POSTAL'
      Size = 10
    end
    object SDS_ClientesTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Origin = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object SDS_ClientesNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
      Origin = 'NUMERO_DEPENDENTES'
    end
    object SDS_ClientesENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Origin = 'ENDERECO_REFERENCIA1'
      Size = 44
    end
    object SDS_ClientesENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Origin = 'ENDERECO_REFERENCIA2'
      Size = 44
    end
    object SDS_ClientesDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
      Origin = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object SDS_ClientesDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
      Origin = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object SDS_ClientesRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Origin = 'RG_CONJUGUE'
    end
    object SDS_ClientesDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
      Origin = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object SDS_ClientesFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Origin = 'FONE_CONJUGUE'
      Size = 15
    end
    object SDS_ClientesENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Origin = 'ENDERECO_COBRANCA'
      Size = 44
    end
    object SDS_ClientesCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      Origin = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object SDS_ClientesCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
      Origin = 'COD_CIDADE_COBRANCA'
    end
    object SDS_ClientesCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      Origin = 'CX_POSTAL_COBRANCA'
      FixedChar = True
    end
    object SDS_ClientesINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Origin = 'INSC_MUNICIPAL'
    end
    object SDS_ClientesPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_ClientesINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Origin = 'INSC_PRODUTOR_RURAL'
    end
    object SDS_ClientesCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
      Origin = 'COD_BAIRRO_COBRANCA'
    end
    object SDS_ClientesCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Origin = 'CIDADE_COBRANCA'
      Size = 40
    end
    object SDS_ClientesBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Origin = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object SDS_ClientesUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Origin = 'UF_COBRANCA'
      Size = 2
    end
    object SDS_ClientesCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
      Origin = 'CONTA_BANCARIA'
    end
    object SDS_ClientesNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = 'NOME_PROPRIEDADE'
      Size = 70
    end
    object SDS_ClientesNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Origin = 'NOME_VETERINARIO'
      Size = 70
    end
    object SDS_ClientesFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Size = 1
    end
    object SDS_ClientesCTPS: TStringField
      FieldName = 'CTPS'
      Origin = 'CTPS'
      Size = 15
    end
    object SDS_ClientesTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Origin = 'TESTA_CREDITO'
      Size = 1
    end
    object SDS_ClientesTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Origin = 'TESTA_LIMITE'
      Size = 1
    end
    object SDS_ClientesCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
      Origin = 'COD_CONV'
    end
    object SDS_ClientesFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 80
    end
    object SDS_ClientesDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'DATA_ULTIMA_COMPRA'
    end
    object SDS_ClientesFUNC_DATA_ADMISSAO: TDateField
      FieldName = 'FUNC_DATA_ADMISSAO'
      Origin = 'FUNC_DATA_ADMISSAO'
    end
    object SDS_ClientesFUNC_SITUACAO: TStringField
      FieldName = 'FUNC_SITUACAO'
      Origin = 'FUNC_SITUACAO'
      Size = 1
    end
    object SDS_ClientesFUNC_DEMISSAO: TDateField
      FieldName = 'FUNC_DEMISSAO'
      Origin = 'FUNC_DEMISSAO'
    end
    object SDS_ClientesFUNC_CARGO: TStringField
      FieldName = 'FUNC_CARGO'
      Origin = 'FUNC_CARGO'
      Size = 30
    end
    object SDS_ClientesAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Origin = 'AUTORIZADO1'
      Size = 70
    end
    object SDS_ClientesAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Origin = 'AUTORIZADO2'
      Size = 70
    end
    object SDS_ClientesAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Origin = 'AUTORIZADO3'
      Size = 70
    end
    object SDS_ClientesCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      Origin = 'CPF_AUT1'
      FixedChar = True
      Size = 18
    end
    object SDS_ClientesCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      Origin = 'CPF_AUT2'
      FixedChar = True
      Size = 18
    end
    object SDS_ClientesCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      Origin = 'CPF_AUT3'
      FixedChar = True
      Size = 18
    end
    object SDS_ClientesCOD_IBGE: TStringField
      FieldKind = fkLookup
      FieldName = 'COD_IBGE'
      LookupDataSet = Sds_cidades
      LookupKeyFields = 'COD_CIDADE'
      LookupResultField = 'COD_IBGE'
      KeyFields = 'COD_CIDADE'
      Size = 10
      Lookup = True
    end
    object SDS_ClientesREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Origin = 'REMUNERACAO'
      Precision = 18
      Size = 2
    end
    object SDS_ClientesSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Origin = 'SOCIO1'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Origin = 'CPFSOCIO1'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
      Origin = 'DATANASCSOCIO1'
    end
    object SDS_ClientesSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Origin = 'SOCIO2'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Origin = 'CPFSOCIO2'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
      Origin = 'DATANASCSOCIO2'
    end
    object SDS_ClientesSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Origin = 'SOCIO3'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Origin = 'CPFSOCIO3'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
      Origin = 'DATANASCSOCIO3'
    end
    object SDS_ClientesSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Origin = 'SOCIO4'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Origin = 'CPFSOCIO4'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
      Origin = 'DATANASCSOCIO4'
    end
    object SDS_ClientesDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
      Origin = 'DATAFUNDACAO'
    end
    object SDS_ClientesCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'CAPITALSOCIAL'
      Precision = 18
      Size = 2
    end
    object SDS_ClientesFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Origin = 'FATURAMENTOBRUTO'
      Precision = 18
      Size = 2
    end
    object SDS_ClientesREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Origin = 'REGJUNTACOM'
      Size = 12
    end
    object SDS_ClientesENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Origin = 'ENDSOCIO1'
      Size = 40
    end
    object SDS_ClientesRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
      Origin = 'RGSOCIO1'
    end
    object SDS_ClientesENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Origin = 'ENDSOCIO2'
      Size = 40
    end
    object SDS_ClientesRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
      Origin = 'RGSOCIO2'
    end
    object SDS_ClientesENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Origin = 'ENDSOCIO3'
      Size = 40
    end
    object SDS_ClientesRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
      Origin = 'RGSOCIO3'
    end
    object SDS_ClientesENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Origin = 'ENDSOCIO4'
      Size = 40
    end
    object SDS_ClientesRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
      Origin = 'RGSOCIO4'
    end
    object SDS_ClientesDOCUMENTOS: TBlobField
      FieldName = 'DOCUMENTOS'
      Origin = 'DOCUMENTOS'
    end
    object SDS_ClientesIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      FixedChar = True
    end
    object SDS_ClientesPARENTESCO_AUT1: TStringField
      FieldName = 'PARENTESCO_AUT1'
      Origin = 'PARENTESCO_AUT1'
      Size = 100
    end
    object SDS_ClientesPARENTESCO_AUT2: TStringField
      FieldName = 'PARENTESCO_AUT2'
      Origin = 'PARENTESCO_AUT2'
      Size = 100
    end
    object SDS_ClientesPARENTESCO_AUT3: TStringField
      FieldName = 'PARENTESCO_AUT3'
      Origin = 'PARENTESCO_AUT3'
      Size = 100
    end
    object SDS_ClientesPOSSUE_LAUDO: TStringField
      FieldName = 'POSSUE_LAUDO'
      Origin = 'POSSUE_LAUDO'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesVENCIMENTO_LAUDO: TDateField
      FieldName = 'VENCIMENTO_LAUDO'
      Origin = 'VENCIMENTO_LAUDO'
    end
    object SDS_ClientesVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Origin = 'VALOR_ALUGUEL'
      Precision = 18
      Size = 2
    end
    object SDS_ClientesRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Origin = 'RENDA_CONJUGUE'
      Precision = 18
      Size = 2
    end
    object SDS_ClientesLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Origin = 'LIMITE_DE_CREDITO'
      Precision = 18
      Size = 2
    end
    object SDS_ClientesFUNC_SALARIO: TFMTBCDField
      FieldName = 'FUNC_SALARIO'
      Origin = 'FUNC_SALARIO'
      Precision = 18
      Size = 2
    end
    object SDS_ClientesCONSUMO_INTERNO: TStringField
      FieldName = 'CONSUMO_INTERNO'
      Origin = 'CONSUMO_INTERNO'
      Size = 1
    end
  end
  object QBuscaItens: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      
        'SELECT I.*, P.ICMS, P.COD_ANP, P.COMBUSTIVEL,P.APLICACAO, P.IPI_' +
        'IRPJ, P.OUTROS_IMPOSTOS, P.NCM_SH, P.QTD_CAIXA, P.UND_TRIB,'
      
        'P.ML_QUANT_BEB, G.SIT_COFINS_VENDA_EST, G.SIT_PIS_VENDA_INTER_ES' +
        'T, G.SIT_COFINS_VENDA_INTER_EST, G.SIT_PIS_VENDA_EST,'
      
        'G.CST_IPI_SAIDA, G.CST_VENDA_INTER, G.PERC_ALIQUOTA_PIS, G.PERC_' +
        'ALIQUOTA_COFINS, G.CFOP_INTER_VENDA, G.FLAG_PIS_COFINS,'
      
        'G.CFOP_EST_VENDA, G.CST_VENDA, GR.NCM_SH, GR.PERC_TRIBU, GR.FONT' +
        'E, ncm.alic_nac, ncm.alic_imp, P.VEICULO, P.CHASSI, P.COR,'
      
        'P.COR_DESC, P.N_MOTOR, P.ANO_FAB, P.ANO_MOD_FAB, P.TIPO_VEIC, P.' +
        'N_SERIE, P.COD_MODELO, P.ESPECIE_VEICULO, P.COD_COR_DENATRAN,'
      'P.TIPO_COMBUSTIVEL, P.PESOBRUTO, P.PESOLIQUIDO'
      'FROM PEDIDOS_ITENS I'
      'INNER JOIN PRODUTOS P'
      'ON (I.CODIGO_PROD = P.CODIGO)'
      'INNER JOIN grupo_tributacao G'
      'ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)'
      'LEFT JOIN grupos GR'
      'ON (GR.CODIGO = P.CODIGO_GRUPO)'
      'left join tabela_ncm ncm on (ncm.codigo_ncm = p.ncm_sh)'
      'WHERE I.CODIGO_PROD = :CODPRO and codigo_id = :Cod_Ven')
    Left = 24
    Top = 699
    ParamData = <
      item
        Name = 'CODPRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2212
      end
      item
        Name = 'Cod_Ven'
        DataType = ftInteger
        ParamType = ptInput
        Value = 686
      end>
    object QBuscaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      Required = True
    end
    object QBuscaItensITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'ITEN'
    end
    object QBuscaItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'CODIGO_PROD'
    end
    object QBuscaItensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
      Size = 13
    end
    object QBuscaItensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object QBuscaItensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object QBuscaItensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensDEV: TStringField
      FieldName = 'DEV'
      Origin = 'DEV'
      FixedChar = True
      Size = 1
    end
    object QBuscaItensQNT_DEV: TBCDField
      FieldName = 'QNT_DEV'
      Origin = 'QNT_DEV'
      Precision = 18
    end
    object QBuscaItensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Origin = 'VAL_DEV'
      Precision = 18
      Size = 2
    end
    object QBuscaItensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object QBuscaItensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object QBuscaItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object QBuscaItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object QBuscaItensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object QBuscaItensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object QBuscaItensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PERC_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Origin = 'VL_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PERC_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 3
    end
    object QBuscaItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object QBuscaItensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
    end
    object QBuscaItensID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Size = 5
    end
    object QBuscaItensID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Size = 5
    end
    object QBuscaItensBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 2
    end
    object QBuscaItensICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensCOD_ANP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object QBuscaItensCOMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItensAPLICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object QBuscaItensIPI_IRPJ: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensOUTROS_IMPOSTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensNCM_SH: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object QBuscaItensQTD_CAIXA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QBuscaItensUND_TRIB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItensML_QUANT_BEB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QBuscaItensSIT_COFINS_VENDA_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_COFINS_VENDA_EST'
      Origin = 'SIT_COFINS_VENDA_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_INTER_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Origin = 'SIT_PIS_VENDA_INTER_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItensSIT_COFINS_VENDA_INTER_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Origin = 'SIT_COFINS_VENDA_INTER_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_PIS_VENDA_EST'
      Origin = 'SIT_PIS_VENDA_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItensCST_IPI_SAIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_IPI_SAIDA'
      Origin = 'CST_IPI_SAIDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItensCST_VENDA_INTER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_VENDA_INTER'
      Origin = 'CST_VENDA_INTER'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItensPERC_ALIQUOTA_PIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'PERC_ALIQUOTA_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_COFINS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'PERC_ALIQUOTA_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensCFOP_INTER_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_INTER_VENDA'
      Origin = 'CFOP_INTER_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensFLAG_PIS_COFINS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'FLAG_PIS_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItensCFOP_EST_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_EST_VENDA'
      Origin = 'CFOP_EST_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensCST_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_VENDA'
      Origin = 'CST_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItensNCM_SH_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH_1'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QBuscaItensPERC_TRIBU: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_TRIBU'
      Origin = 'PERC_TRIBU'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensFONTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONTE'
      Origin = 'FONTE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object QBuscaItensALIC_NAC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_NAC'
      Origin = 'ALIC_NAC'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensALIC_IMP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_IMP'
      Origin = 'ALIC_IMP'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensVEICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItensCHASSI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object QBuscaItensCOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COR'
      Origin = 'COR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QBuscaItensCOR_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItensN_MOTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItensANO_FAB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensANO_MOD_FAB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensTIPO_VEIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItensN_SERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItensCOD_MODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItensESPECIE_VEICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItensCOD_COR_DENATRAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItensTIPO_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItensPESOBRUTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QBuscaItensPESOLIQUIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
  end
  object SDS_SIMILARES: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'Select * from PRODUTO_SIMILAR WHERE CODIGO_PROD =:COD;')
    Left = 88
    Top = 384
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object SDS_SIMILARESCODIGO_SEQ: TIntegerField
      FieldName = 'CODIGO_SEQ'
      Origin = 'CODIGO_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_SIMILARESCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'CODIGO_PROD'
      Required = True
    end
    object SDS_SIMILARESCODIGO_SIMILAR: TIntegerField
      FieldName = 'CODIGO_SIMILAR'
      Origin = 'CODIGO_SIMILAR'
    end
    object SDS_SIMILARESDESC_SIMILAR: TStringField
      FieldName = 'DESC_SIMILAR'
      Origin = 'DESC_SIMILAR'
      Size = 70
    end
    object SDS_SIMILARESUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object SDS_SIMILARESDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 621
    Top = 727
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    OnStatusChange = ACBrNFe1StatusChange
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Arquivos.PathSalvar = 'C:\StartNet_Sistemas\NFe\'
    Configuracoes.Arquivos.PathSchemas = 'C:\Siace\Schemas\NFe\'
    Configuracoes.Arquivos.SepararPorCNPJ = True
    Configuracoes.Arquivos.SepararPorIE = True
    Configuracoes.Arquivos.SepararPorModelo = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorAno = True
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.SepararPorDia = True
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.PathNFe = 'C:\StartNet_Sistemas\NFe'
    Configuracoes.Arquivos.PathInu = 'C:\StartNet_Sistemas\NFe'
    Configuracoes.Arquivos.PathEvento = 'C:\StartNet_Sistemas\NFe'
    Configuracoes.Arquivos.PathArquivoMunicipios = 'C:\StartNet_Sistemas\NFe'
    Configuracoes.WebServices.UF = 'MT'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 1000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFEFR1
    Left = 807
    Top = 688
  end
  object Sds_cest: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from tab_cest')
    Left = 1200
    Top = 392
    object Sds_cestCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Required = True
      Size = 7
    end
    object Sds_cestNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object Sds_cestDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 512
    end
  end
  object dts_cest: TDataSource
    DataSet = Sds_cest
    Left = 1248
    Top = 384
  end
  object SPC_NFCE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'SP_NFCE_CODIGO'
    Left = 730
    Top = 224
  end
  object FDTransaction1: TFDTransaction
    Connection = Coneccao
    Left = 152
    Top = 16
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Caption = 'Siace Sistemas ... Erro.....'
    Left = 1248
    Top = 512
  end
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Caption = 'Siace Sistemas'
    Prompt = 'Por Favor aguarde, aplica'#231#227'o esta ocupada....'
    Left = 1256
    Top = 576
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 1248
    Top = 712
  end
  object FDGUIxScriptDialog1: TFDGUIxScriptDialog
    Provider = 'Forms'
    Left = 1248
    Top = 648
  end
  object IBTransaction: TFDTransaction
    Connection = Coneccao
    Left = 152
    Top = 64
  end
  object IBSQL: TFDQuery
    Connection = Coneccao
    Left = 296
    Top = 24
  end
  object Consulta: TFDQuery
    Connection = Coneccao
    Left = 272
    Top = 72
  end
  object IBTRServer: TFDTransaction
    Connection = Coneccao
    Left = 96
    Top = 128
  end
  object ibsqlCod: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select max(codigo) as prxcod  from produtos')
    Left = 216
    Top = 72
    object ibsqlCodPRXCOD: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRXCOD'
      Origin = 'PRXCOD'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object SDS_CONFIGURACOES: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select * from configuracoes')
    Left = 584
    Top = 328
    object SDS_CONFIGURACOESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_CONFIGURACOESJUROS: TBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
    end
    object SDS_CONFIGURACOESMSG_CUPOMFISCAL: TStringField
      FieldName = 'MSG_CUPOMFISCAL'
      Origin = 'MSG_CUPOMFISCAL'
      Size = 250
    end
    object SDS_CONFIGURACOESNUMERO_SERIE: TStringField
      FieldName = 'NUMERO_SERIE'
      Origin = 'NUMERO_SERIE'
    end
    object SDS_CONFIGURACOESFORM_PEDIDOS: TStringField
      FieldName = 'FORM_PEDIDOS'
      Origin = 'FORM_PEDIDOS'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESDDIP: TIntegerField
      FieldName = 'DDIP'
      Origin = 'DDIP'
    end
    object SDS_CONFIGURACOESDCP: TIntegerField
      FieldName = 'DCP'
      Origin = 'DCP'
    end
    object SDS_CONFIGURACOESJUROS_CHEQUE: TBCDField
      FieldName = 'JUROS_CHEQUE'
      Origin = 'JUROS_CHEQUE'
      Precision = 18
    end
    object SDS_CONFIGURACOESDIAS_CARENCIA: TIntegerField
      FieldName = 'DIAS_CARENCIA'
      Origin = 'DIAS_CARENCIA'
    end
    object SDS_CONFIGURACOESALTERA_PRECOVENDA: TStringField
      FieldName = 'ALTERA_PRECOVENDA'
      Origin = 'ALTERA_PRECOVENDA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESTIPO_DESCONTOVENDA: TStringField
      FieldName = 'TIPO_DESCONTOVENDA'
      Origin = 'TIPO_DESCONTOVENDA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESREGISTRADORA: TStringField
      FieldName = 'REGISTRADORA'
      Origin = 'REGISTRADORA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESPLANO_CONTA1: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA1'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COD_NATUREZA'
      KeyFields = 'PLANO_VENDA_AV'
      Size = 10
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA2: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA2'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COD_NATUREZA'
      KeyFields = 'PLANO_VENDA_AP'
      Size = 10
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA3: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA3'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COD_NATUREZA'
      KeyFields = 'PLANO_OS_AV'
      Size = 10
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA4: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA4'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COD_NATUREZA'
      KeyFields = 'PLANO_OS_AP'
      Size = 10
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA5: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA5'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COD_NATUREZA'
      KeyFields = 'PLANO_RECEBIMENTO_CREDIARIO'
      Size = 10
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA6: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA6'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COD_NATUREZA'
      KeyFields = 'PLANO_OUTRAS_ENTRADAS'
      Size = 10
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA7: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA7'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COD_NATUREZA'
      KeyFields = 'PLANO_OUTRAS_SAIDAS'
      Size = 10
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA8: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA8'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COD_NATUREZA'
      KeyFields = 'PLANO_DUPLICATA_NFE'
      Size = 10
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA10: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA10'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PLANO_VENDA_AV'
      Size = 30
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA20: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA20'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PLANO_VENDA_AP'
      Size = 30
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA30: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA30'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PLANO_OS_AV'
      Size = 30
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA40: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA40'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PLANO_OS_AP'
      Size = 30
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA50: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA50'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PLANO_RECEBIMENTO_CREDIARIO'
      Size = 30
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA60: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA60'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PLANO_OUTRAS_ENTRADAS'
      Size = 30
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA70: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA70'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PLANO_OUTRAS_SAIDAS'
      Size = 30
      Lookup = True
    end
    object SDS_CONFIGURACOESPLANO_CONTA80: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA80'
      LookupDataSet = SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PLANO_DUPLICATA_NFE'
      Size = 30
      Lookup = True
    end
    object SDS_CONFIGURACOESCUPOM: TStringField
      FieldName = 'CUPOM'
      Origin = 'CUPOM'
      Size = 1
    end
    object SDS_CONFIGURACOESCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Origin = 'CONTRATO'
      Size = 1
    end
    object SDS_CONFIGURACOESBOLETO: TStringField
      FieldName = 'BOLETO'
      Origin = 'BOLETO'
      Size = 1
    end
    object SDS_CONFIGURACOESDUPLICATA: TStringField
      FieldName = 'DUPLICATA'
      Origin = 'DUPLICATA'
      Size = 1
    end
    object SDS_CONFIGURACOESLIMITE_CREDITO: TStringField
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
      Size = 1
    end
    object SDS_CONFIGURACOESESTOQUE_NEGATIVO: TStringField
      FieldName = 'ESTOQUE_NEGATIVO'
      Origin = 'ESTOQUE_NEGATIVO'
      Size = 1
    end
    object SDS_CONFIGURACOESPESQ_PADRAO: TStringField
      FieldName = 'PESQ_PADRAO'
      Origin = 'PESQ_PADRAO'
      Size = 1
    end
    object SDS_CONFIGURACOESIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Origin = 'IMPRESSAO'
      Size = 1
    end
    object SDS_CONFIGURACOESCLIENTE_PADRAO: TIntegerField
      FieldName = 'CLIENTE_PADRAO'
      Origin = 'CLIENTE_PADRAO'
    end
    object SDS_CONFIGURACOESLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
    end
    object SDS_CONFIGURACOESPRODUTO_PADRAO: TIntegerField
      FieldName = 'PRODUTO_PADRAO'
      Origin = 'PRODUTO_PADRAO'
    end
    object SDS_CONFIGURACOESCUPON_VINCULADO: TStringField
      FieldName = 'CUPON_VINCULADO'
      Origin = 'CUPON_VINCULADO'
      Size = 1
    end
    object SDS_CONFIGURACOESOS_PRIORIDADE: TIntegerField
      FieldName = 'OS_PRIORIDADE'
      Origin = 'OS_PRIORIDADE'
    end
    object SDS_CONFIGURACOESOS_TIPO: TIntegerField
      FieldName = 'OS_TIPO'
      Origin = 'OS_TIPO'
    end
    object SDS_CONFIGURACOESOS_STATUS: TIntegerField
      FieldName = 'OS_STATUS'
      Origin = 'OS_STATUS'
    end
    object SDS_CONFIGURACOESPRECO_PADRAO: TStringField
      FieldName = 'PRECO_PADRAO'
      Origin = 'PRECO_PADRAO'
      Size = 1
    end
    object SDS_CONFIGURACOESMULTA: TBCDField
      FieldName = 'MULTA'
      Origin = 'MULTA'
      Precision = 18
    end
    object SDS_CONFIGURACOESUSA_FRACAO: TStringField
      FieldName = 'USA_FRACAO'
      Origin = 'USA_FRACAO'
      Size = 1
    end
    object SDS_CONFIGURACOESIMP_NOTA: TStringField
      FieldName = 'IMP_NOTA'
      Origin = 'IMP_NOTA'
      Size = 1
    end
    object SDS_CONFIGURACOESTP_DESCONTO: TStringField
      FieldName = 'TP_DESCONTO'
      Origin = 'TP_DESCONTO'
      Size = 1
    end
    object SDS_CONFIGURACOESLIB_PRECO_VENDA: TStringField
      FieldName = 'LIB_PRECO_VENDA'
      Origin = 'LIB_PRECO_VENDA'
      Size = 1
    end
    object SDS_CONFIGURACOESDESC_MAXIMO_PERC: TIntegerField
      FieldName = 'DESC_MAXIMO_PERC'
      Origin = 'DESC_MAXIMO_PERC'
    end
    object SDS_CONFIGURACOESUTILIZA_NFE: TStringField
      FieldName = 'UTILIZA_NFE'
      Origin = 'UTILIZA_NFE'
      Size = 1
    end
    object SDS_CONFIGURACOESIMP_VENDA: TStringField
      FieldName = 'IMP_VENDA'
      Origin = 'IMP_VENDA'
      Size = 1
    end
    object SDS_CONFIGURACOESLEITOT_SERIAL: TStringField
      FieldName = 'LEITOT_SERIAL'
      Origin = 'LEITOT_SERIAL'
      Size = 1
    end
    object SDS_CONFIGURACOESCLIENTE_VENDEDOR: TStringField
      FieldName = 'CLIENTE_VENDEDOR'
      Origin = 'CLIENTE_VENDEDOR'
      Size = 1
    end
    object SDS_CONFIGURACOESDEBITOS_CLIENTE: TStringField
      FieldName = 'DEBITOS_CLIENTE'
      Origin = 'DEBITOS_CLIENTE'
      Size = 1
    end
    object SDS_CONFIGURACOESDATA_TRAB: TDateField
      FieldName = 'DATA_TRAB'
      Origin = 'DATA_TRAB'
    end
    object SDS_CONFIGURACOESNFE_CERTIFICAO: TStringField
      FieldName = 'NFE_CERTIFICAO'
      Origin = 'NFE_CERTIFICAO'
      Size = 60
    end
    object SDS_CONFIGURACOESNFE_SENHA: TStringField
      FieldName = 'NFE_SENHA'
      Origin = 'NFE_SENHA'
    end
    object SDS_CONFIGURACOESNFE_LOGOMARCA: TStringField
      FieldName = 'NFE_LOGOMARCA'
      Origin = 'NFE_LOGOMARCA'
      Size = 100
    end
    object SDS_CONFIGURACOESNFE_CAMINHO_XML: TStringField
      FieldName = 'NFE_CAMINHO_XML'
      Origin = 'NFE_CAMINHO_XML'
      Size = 100
    end
    object SDS_CONFIGURACOESUSA_GAVETA: TStringField
      FieldName = 'USA_GAVETA'
      Origin = 'USA_GAVETA'
      Size = 1
    end
    object SDS_CONFIGURACOESOBS_FISCO: TStringField
      FieldName = 'OBS_FISCO'
      Origin = 'OBS_FISCO'
      Size = 200
    end
    object SDS_CONFIGURACOESMODELO_ECF: TStringField
      FieldName = 'MODELO_ECF'
      Origin = 'MODELO_ECF'
      Size = 1
    end
    object SDS_CONFIGURACOESPREVIEW: TStringField
      FieldName = 'PREVIEW'
      Origin = 'PREVIEW'
      Size = 1
    end
    object SDS_CONFIGURACOESDEFAULT_LOCAL_ORIGEM: TIntegerField
      FieldName = 'DEFAULT_LOCAL_ORIGEM'
      Origin = 'DEFAULT_LOCAL_ORIGEM'
    end
    object SDS_CONFIGURACOESDEFAULT_LOCAL_DESTINO: TIntegerField
      FieldName = 'DEFAULT_LOCAL_DESTINO'
      Origin = 'DEFAULT_LOCAL_DESTINO'
    end
    object SDS_CONFIGURACOESDATA_INICIO_ESTOQUE: TDateField
      FieldName = 'DATA_INICIO_ESTOQUE'
      Origin = 'DATA_INICIO_ESTOQUE'
    end
    object SDS_CONFIGURACOESCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object SDS_CONFIGURACOESCODIGO_LOCAL_ESTOQUE_VENDAS: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE_VENDAS'
      Origin = 'CODIGO_LOCAL_ESTOQUE_VENDAS'
    end
    object SDS_CONFIGURACOESLOCAL_BACKUP: TStringField
      FieldName = 'LOCAL_BACKUP'
      Origin = 'LOCAL_BACKUP'
      Size = 255
    end
    object SDS_CONFIGURACOESTIPO_IMPRESSAO_DANFE: TStringField
      FieldName = 'TIPO_IMPRESSAO_DANFE'
      Origin = 'TIPO_IMPRESSAO_DANFE'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESFORMA_EMISSAO_DANFE: TIntegerField
      FieldName = 'FORMA_EMISSAO_DANFE'
      Origin = 'FORMA_EMISSAO_DANFE'
    end
    object SDS_CONFIGURACOESAMBIENTE_DANFE: TStringField
      FieldName = 'AMBIENTE_DANFE'
      Origin = 'AMBIENTE_DANFE'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESSERVIDOR_SMTP: TStringField
      FieldName = 'SERVIDOR_SMTP'
      Origin = 'SERVIDOR_SMTP'
      Size = 100
    end
    object SDS_CONFIGURACOESPORTA_SMTP: TStringField
      FieldName = 'PORTA_SMTP'
      Origin = 'PORTA_SMTP'
      Size = 10
    end
    object SDS_CONFIGURACOESUSUARIO_SMTP: TStringField
      FieldName = 'USUARIO_SMTP'
      Origin = 'USUARIO_SMTP'
      Size = 80
    end
    object SDS_CONFIGURACOESSENHA_SMTP: TStringField
      FieldName = 'SENHA_SMTP'
      Origin = 'SENHA_SMTP'
      Size = 60
    end
    object SDS_CONFIGURACOESASSUNTO_EMAIL_DANFE: TStringField
      FieldName = 'ASSUNTO_EMAIL_DANFE'
      Origin = 'ASSUNTO_EMAIL_DANFE'
      Size = 150
    end
    object SDS_CONFIGURACOESSMTP_CONEXAO_SEGURA: TStringField
      FieldName = 'SMTP_CONEXAO_SEGURA'
      Origin = 'SMTP_CONEXAO_SEGURA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESMENSAGEM_EMAIL_DANFE: TStringField
      FieldName = 'MENSAGEM_EMAIL_DANFE'
      Origin = 'MENSAGEM_EMAIL_DANFE'
      Size = 200
    end
    object SDS_CONFIGURACOESPASTA_CANCELADAS_DANFE: TStringField
      FieldName = 'PASTA_CANCELADAS_DANFE'
      Origin = 'PASTA_CANCELADAS_DANFE'
      Size = 100
    end
    object SDS_CONFIGURACOESPASTA_INUTILIZADAS_DANFE: TStringField
      FieldName = 'PASTA_INUTILIZADAS_DANFE'
      Origin = 'PASTA_INUTILIZADAS_DANFE'
      Size = 100
    end
    object SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE: TStringField
      FieldName = 'PASTA_TRANSMITIDAS_DANFE'
      Origin = 'PASTA_TRANSMITIDAS_DANFE'
      Size = 100
    end
    object SDS_CONFIGURACOESFROM_SMTP: TStringField
      FieldName = 'FROM_SMTP'
      Origin = 'FROM_SMTP'
      Size = 100
    end
    object SDS_CONFIGURACOESCAMINHO_ARQUIVOS_PDF: TStringField
      FieldName = 'CAMINHO_ARQUIVOS_PDF'
      Origin = 'CAMINHO_ARQUIVOS_PDF'
      Size = 100
    end
    object SDS_CONFIGURACOESESTADO_NFE: TStringField
      FieldName = 'ESTADO_NFE'
      Origin = 'ESTADO_NFE'
      Size = 2
    end
    object SDS_CONFIGURACOESSALVAR_LOG_DANFE: TStringField
      FieldName = 'SALVAR_LOG_DANFE'
      Origin = 'SALVAR_LOG_DANFE'
      Size = 1
    end
    object SDS_CONFIGURACOESCAMINHO_CERTIFICADO: TStringField
      FieldName = 'CAMINHO_CERTIFICADO'
      Origin = 'CAMINHO_CERTIFICADO'
      Size = 100
    end
    object SDS_CONFIGURACOESCST_CUPON: TStringField
      FieldName = 'CST_CUPON'
      Origin = 'CST_CUPON'
      Size = 3
    end
    object SDS_CONFIGURACOESCFOP_CUPON: TStringField
      FieldName = 'CFOP_CUPON'
      Origin = 'CFOP_CUPON'
      Size = 5
    end
    object SDS_CONFIGURACOESTP_DESC: TStringField
      FieldName = 'TP_DESC'
      Origin = 'TP_DESC'
      Size = 1
    end
    object SDS_CONFIGURACOESPROX_LINHA: TStringField
      FieldName = 'PROX_LINHA'
      Origin = 'PROX_LINHA'
      Size = 1
    end
    object SDS_CONFIGURACOESUSUARIO_FP: TStringField
      FieldName = 'USUARIO_FP'
      Origin = 'USUARIO_FP'
      Size = 70
    end
    object SDS_CONFIGURACOESSENHA_FP: TStringField
      FieldName = 'SENHA_FP'
      Origin = 'SENHA_FP'
    end
    object SDS_CONFIGURACOESUSA_FP: TStringField
      FieldName = 'USA_FP'
      Origin = 'USA_FP'
      Size = 1
    end
    object SDS_CONFIGURACOESCHS: TStringField
      FieldName = 'CHS'
      Origin = 'CHS'
      Size = 1
    end
    object SDS_CONFIGURACOESCONCENTRADOR: TStringField
      FieldName = 'CONCENTRADOR'
      Origin = 'CONCENTRADOR'
      Size = 1
    end
    object SDS_CONFIGURACOESCONCENT_PORTA: TStringField
      FieldName = 'CONCENT_PORTA'
      Origin = 'CONCENT_PORTA'
      Size = 4
    end
    object SDS_CONFIGURACOESUNIT_TOTAL: TStringField
      FieldName = 'UNIT_TOTAL'
      Origin = 'UNIT_TOTAL'
      Size = 1
    end
    object SDS_CONFIGURACOESVALOR_GERENCIAL: TIntegerField
      FieldName = 'VALOR_GERENCIAL'
      Origin = 'VALOR_GERENCIAL'
    end
    object SDS_CONFIGURACOESTEXTO_GERENCIAL: TStringField
      FieldName = 'TEXTO_GERENCIAL'
      Origin = 'TEXTO_GERENCIAL'
      Size = 50
    end
    object SDS_CONFIGURACOESTEXTO_GERENCIAL1: TStringField
      FieldName = 'TEXTO_GERENCIAL1'
      Origin = 'TEXTO_GERENCIAL1'
      Size = 50
    end
    object SDS_CONFIGURACOESTEXTO_GERENCIAL2: TStringField
      FieldName = 'TEXTO_GERENCIAL2'
      Origin = 'TEXTO_GERENCIAL2'
      Size = 50
    end
    object SDS_CONFIGURACOESTEXTO_GERENCIAL4: TStringField
      FieldName = 'TEXTO_GERENCIAL4'
      Origin = 'TEXTO_GERENCIAL4'
      Size = 50
    end
    object SDS_CONFIGURACOESUSA_GERENCIAL: TStringField
      FieldName = 'USA_GERENCIAL'
      Origin = 'USA_GERENCIAL'
      Size = 1
    end
    object SDS_CONFIGURACOESCON_CCEXTRA: TStringField
      FieldName = 'CON_CCEXTRA'
      Origin = 'CON_CCEXTRA'
      FixedChar = True
      Size = 3
    end
    object SDS_CONFIGURACOESCON_HORADIARIA: TStringField
      FieldName = 'CON_HORADIARIA'
      Origin = 'CON_HORADIARIA'
      Size = 8
    end
    object SDS_CONFIGURACOESPLANO_VENDA_AV: TIntegerField
      FieldName = 'PLANO_VENDA_AV'
      Origin = 'PLANO_VENDA_AV'
    end
    object SDS_CONFIGURACOESPLANO_VENDA_AP: TIntegerField
      FieldName = 'PLANO_VENDA_AP'
      Origin = 'PLANO_VENDA_AP'
    end
    object SDS_CONFIGURACOESPLANO_OS_AV: TIntegerField
      FieldName = 'PLANO_OS_AV'
      Origin = 'PLANO_OS_AV'
    end
    object SDS_CONFIGURACOESPLANO_OS_AP: TIntegerField
      FieldName = 'PLANO_OS_AP'
      Origin = 'PLANO_OS_AP'
    end
    object SDS_CONFIGURACOESPLANO_OUTRAS_ENTRADAS: TIntegerField
      FieldName = 'PLANO_OUTRAS_ENTRADAS'
      Origin = 'PLANO_OUTRAS_ENTRADAS'
    end
    object SDS_CONFIGURACOESPLANO_OUTRAS_SAIDAS: TIntegerField
      FieldName = 'PLANO_OUTRAS_SAIDAS'
      Origin = 'PLANO_OUTRAS_SAIDAS'
    end
    object SDS_CONFIGURACOESPLANO_RECEBIMENTO_CREDIARIO: TIntegerField
      FieldName = 'PLANO_RECEBIMENTO_CREDIARIO'
      Origin = 'PLANO_RECEBIMENTO_CREDIARIO'
    end
    object SDS_CONFIGURACOESPLANO_DUPLICATA_NFE: TIntegerField
      FieldName = 'PLANO_DUPLICATA_NFE'
      Origin = 'PLANO_DUPLICATA_NFE'
    end
    object SDS_CONFIGURACOESECF_MODELO: TStringField
      FieldName = 'ECF_MODELO'
      Origin = 'ECF_MODELO'
      Size = 30
    end
    object SDS_CONFIGURACOESECF_PORTA: TStringField
      FieldName = 'ECF_PORTA'
      Origin = 'ECF_PORTA'
      Size = 10
    end
    object SDS_CONFIGURACOESECF_TIPO: TStringField
      FieldName = 'ECF_TIPO'
      Origin = 'ECF_TIPO'
    end
    object SDS_CONFIGURACOESECF_MARCA: TStringField
      FieldName = 'ECF_MARCA'
      Origin = 'ECF_MARCA'
      Size = 30
    end
    object SDS_CONFIGURACOESABRE_VENDA: TStringField
      FieldName = 'ABRE_VENDA'
      Origin = 'ABRE_VENDA'
      Size = 1
    end
    object SDS_CONFIGURACOESCAMINHO_RELATORIO_DANFE: TStringField
      FieldName = 'CAMINHO_RELATORIO_DANFE'
      Origin = 'CAMINHO_RELATORIO_DANFE'
      Size = 50
    end
    object SDS_CONFIGURACOESTOKEN: TStringField
      FieldName = 'TOKEN'
      Origin = 'TOKEN'
      Size = 6
    end
    object SDS_CONFIGURACOESID_TOKEN: TStringField
      FieldName = 'ID_TOKEN'
      Origin = 'ID_TOKEN'
      Size = 35
    end
    object SDS_CONFIGURACOESNFCE_OFF: TStringField
      FieldName = 'NFCE_OFF'
      Origin = 'NFCE_OFF'
      Size = 1
    end
    object SDS_CONFIGURACOESTP_PESQUISA: TStringField
      FieldName = 'TP_PESQUISA'
      Origin = 'TP_PESQUISA'
      Size = 1
    end
    object SDS_CONFIGURACOESCAIXA_UNICO: TStringField
      FieldName = 'CAIXA_UNICO'
      Origin = 'CAIXA_UNICO'
      Size = 1
    end
    object SDS_CONFIGURACOESSERVICO_NFCE: TIntegerField
      FieldName = 'SERVICO_NFCE'
      Origin = 'SERVICO_NFCE'
    end
    object SDS_CONFIGURACOESIMP_CODIGO_FORNECEDOR: TStringField
      FieldName = 'IMP_CODIGO_FORNECEDOR'
      Origin = 'IMP_CODIGO_FORNECEDOR'
      Size = 1
    end
    object SDS_CONFIGURACOESEXCLUI_SERV_NFE: TStringField
      FieldName = 'EXCLUI_SERV_NFE'
      Origin = 'EXCLUI_SERV_NFE'
      Size = 1
    end
    object SDS_CONFIGURACOESPLANO_COMP_IMOV_CR: TIntegerField
      FieldName = 'PLANO_COMP_IMOV_CR'
      Origin = 'PLANO_COMP_IMOV_CR'
    end
    object SDS_CONFIGURACOESPLANO_COMP_IMOV_DB: TIntegerField
      FieldName = 'PLANO_COMP_IMOV_DB'
      Origin = 'PLANO_COMP_IMOV_DB'
    end
    object SDS_CONFIGURACOESPLANO_VENDA_IMOV_CR: TIntegerField
      FieldName = 'PLANO_VENDA_IMOV_CR'
      Origin = 'PLANO_VENDA_IMOV_CR'
    end
    object SDS_CONFIGURACOESPLANO_VENDA_IMOV_DB: TIntegerField
      FieldName = 'PLANO_VENDA_IMOV_DB'
      Origin = 'PLANO_VENDA_IMOV_DB'
    end
    object SDS_CONFIGURACOESPLANO_COMISSAO_PAGAR_CR: TIntegerField
      FieldName = 'PLANO_COMISSAO_PAGAR_CR'
      Origin = 'PLANO_COMISSAO_PAGAR_CR'
    end
    object SDS_CONFIGURACOESPLANO_COMISSAO_PAGAR_DB: TIntegerField
      FieldName = 'PLANO_COMISSAO_PAGAR_DB'
      Origin = 'PLANO_COMISSAO_PAGAR_DB'
    end
    object SDS_CONFIGURACOESPREVIEW_NFE: TStringField
      FieldName = 'PREVIEW_NFE'
      Origin = 'PREVIEW_NFE'
      Size = 1
    end
    object SDS_CONFIGURACOESDADOS_CONTRIBUINTE: TStringField
      FieldName = 'DADOS_CONTRIBUINTE'
      Origin = 'DADOS_CONTRIBUINTE'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESSOMA_PC_LUCRO_ENTRADA: TStringField
      FieldName = 'SOMA_PC_LUCRO_ENTRADA'
      Origin = 'SOMA_PC_LUCRO_ENTRADA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESURLPFX: TStringField
      FieldName = 'URLPFX'
      Origin = 'URLPFX'
      Size = 200
    end
    object SDS_CONFIGURACOESCRYPTLIB: TStringField
      FieldName = 'CRYPTLIB'
      Origin = 'CRYPTLIB'
    end
    object SDS_CONFIGURACOESHTTPLIB: TStringField
      FieldName = 'HTTPLIB'
      Origin = 'HTTPLIB'
    end
    object SDS_CONFIGURACOESXMLSIGNLIB: TStringField
      FieldName = 'XMLSIGNLIB'
      Origin = 'XMLSIGNLIB'
    end
    object SDS_CONFIGURACOESDESCONTO_MAXIMO_FV: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO_FV'
      Origin = 'DESCONTO_MAXIMO_FV'
      Precision = 18
      Size = 2
    end
    object SDS_CONFIGURACOESCON_VALORMINUTO: TFMTBCDField
      FieldName = 'CON_VALORMINUTO'
      Origin = 'CON_VALORMINUTO'
      Precision = 18
      Size = 2
    end
    object SDS_CONFIGURACOESCON_VALORCEXTRA: TFMTBCDField
      FieldName = 'CON_VALORCEXTRA'
      Origin = 'CON_VALORCEXTRA'
      Precision = 18
      Size = 2
    end
    object SDS_CONFIGURACOESMARGEM_LUCRO: TFMTBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object SDS_CONFIGURACOESCAMINHO_RELATORIO_SCHEMAS: TStringField
      FieldName = 'CAMINHO_RELATORIO_SCHEMAS'
      Origin = 'CAMINHO_RELATORIO_SCHEMAS'
      Size = 100
    end
    object SDS_CONFIGURACOESFORMATO_DO_ALERTA: TStringField
      FieldName = 'FORMATO_DO_ALERTA'
      Origin = 'FORMATO_DO_ALERTA'
      Size = 200
    end
    object SDS_CONFIGURACOESTIPO_EMISSAO_NFE: TStringField
      FieldName = 'TIPO_EMISSAO_NFE'
      Origin = 'TIPO_EMISSAO_NFE'
      Size = 15
    end
    object SDS_CONFIGURACOESCOD_PAGTO_PADRAO: TStringField
      FieldName = 'COD_PAGTO_PADRAO'
      Origin = 'COD_PAGTO_PADRAO'
      Size = 1
    end
    object SDS_CONFIGURACOESMODELO_DOC_NFE: TStringField
      FieldName = 'MODELO_DOC_NFE'
      Origin = 'MODELO_DOC_NFE'
      Size = 50
    end
    object SDS_CONFIGURACOESSSLLIB: TSmallintField
      FieldName = 'SSLLIB'
      Origin = 'SSLLIB'
    end
    object SDS_CONFIGURACOESSSLTYPE: TSmallintField
      FieldName = 'SSLTYPE'
      Origin = 'SSLTYPE'
    end
    object SDS_CONFIGURACOESVERSAO_NFE: TSmallintField
      FieldName = 'VERSAO_NFE'
    end
    object SDS_CONFIGURACOESPATHEVENTO_NFE: TStringField
      FieldName = 'PATHEVENTO_NFE'
      Origin = 'PATHEVENTO_NFE'
      Size = 100
    end
  end
  object SDS_Empresa: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from empresa')
    Left = 1040
    Top = 296
    object SDS_EmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_EmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 70
    end
    object SDS_EmpresaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 70
    end
    object SDS_EmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object SDS_EmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object SDS_EmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object SDS_EmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_EmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object SDS_EmpresaFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object SDS_EmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object SDS_EmpresaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Origin = 'HOMEPAGE'
      Size = 50
    end
    object SDS_EmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object SDS_EmpresaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object SDS_EmpresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object SDS_EmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object SDS_EmpresaIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object SDS_EmpresaLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
    end
    object SDS_EmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Origin = 'CNAE'
      Size = 10
    end
    object SDS_EmpresaCOD_CID_IBGE: TStringField
      FieldName = 'COD_CID_IBGE'
      Origin = 'COD_CID_IBGE'
      Size = 10
    end
    object SDS_EmpresaURS_INDEA: TStringField
      FieldName = 'URS_INDEA'
      Origin = 'URS_INDEA'
    end
    object SDS_EmpresaULE_INDEA: TStringField
      FieldName = 'ULE_INDEA'
      Origin = 'ULE_INDEA'
    end
    object SDS_EmpresaMATRICULA_INDEA: TStringField
      FieldName = 'MATRICULA_INDEA'
      Origin = 'MATRICULA_INDEA'
      Size = 10
    end
    object SDS_EmpresaPROPRIETARIO: TStringField
      FieldName = 'PROPRIETARIO'
      Origin = 'PROPRIETARIO'
      Size = 70
    end
    object SDS_EmpresaRESPONSAVEL_TECINICO: TStringField
      FieldName = 'RESPONSAVEL_TECINICO'
      Origin = 'RESPONSAVEL_TECINICO'
      Size = 70
    end
    object SDS_EmpresaCRMV_N: TStringField
      FieldName = 'CRMV_N'
      Origin = 'CRMV_N'
      Size = 15
    end
    object SDS_EmpresaFLAG_VETERINARIA: TStringField
      FieldName = 'FLAG_VETERINARIA'
      Origin = 'FLAG_VETERINARIA'
      Size = 1
    end
    object SDS_EmpresaREGIME: TStringField
      FieldName = 'REGIME'
      Origin = 'REGIME'
      Size = 1
    end
    object SDS_EmpresaALIC_SIMPLES: TFMTBCDField
      FieldName = 'ALIC_SIMPLES'
      Origin = 'ALIC_SIMPLES'
      Precision = 18
      Size = 2
    end
    object SDS_EmpresaALIC_PIS: TFMTBCDField
      FieldName = 'ALIC_PIS'
      Origin = 'ALIC_PIS'
      Precision = 18
      Size = 2
    end
    object SDS_EmpresaALIC_COFINS: TFMTBCDField
      FieldName = 'ALIC_COFINS'
      Origin = 'ALIC_COFINS'
      Precision = 18
      Size = 2
    end
    object SDS_EmpresaALIC_IRPJ: TFMTBCDField
      FieldName = 'ALIC_IRPJ'
      Origin = 'ALIC_IRPJ'
      Precision = 18
      Size = 2
    end
    object SDS_EmpresaALIC_CSLL: TFMTBCDField
      FieldName = 'ALIC_CSLL'
      Origin = 'ALIC_CSLL'
      Precision = 18
      Size = 2
    end
    object SDS_EmpresaSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      Size = 15
    end
    object SDS_EmpresaNOME_CONTADOR: TStringField
      FieldName = 'NOME_CONTADOR'
      Origin = 'NOME_CONTADOR'
      Size = 70
    end
    object SDS_EmpresaCNPJ_CONTADOR: TStringField
      FieldName = 'CNPJ_CONTADOR'
      Origin = 'CNPJ_CONTADOR'
      FixedChar = True
      Size = 18
    end
    object SDS_EmpresaCRC_CONTADOR: TStringField
      FieldName = 'CRC_CONTADOR'
      Origin = 'CRC_CONTADOR'
      Size = 15
    end
    object SDS_EmpresaENDERECO_CONTADOR: TStringField
      FieldName = 'ENDERECO_CONTADOR'
      Origin = 'ENDERECO_CONTADOR'
      Size = 44
    end
    object SDS_EmpresaCEP_CONTADOR: TStringField
      FieldName = 'CEP_CONTADOR'
      Origin = 'CEP_CONTADOR'
      FixedChar = True
      Size = 10
    end
    object SDS_EmpresaNUM_CONTADOR: TIntegerField
      FieldName = 'NUM_CONTADOR'
      Origin = 'NUM_CONTADOR'
    end
    object SDS_EmpresaBAIRRO_CONTADOR: TStringField
      FieldName = 'BAIRRO_CONTADOR'
      Origin = 'BAIRRO_CONTADOR'
      Size = 30
    end
    object SDS_EmpresaCOMPL_CONTADOR: TStringField
      FieldName = 'COMPL_CONTADOR'
      Origin = 'COMPL_CONTADOR'
      Size = 44
    end
    object SDS_EmpresaFONE_CONTADOR: TStringField
      FieldName = 'FONE_CONTADOR'
      Origin = 'FONE_CONTADOR'
      Size = 16
    end
    object SDS_EmpresaFAX_CONTADOR: TStringField
      FieldName = 'FAX_CONTADOR'
      Origin = 'FAX_CONTADOR'
      Size = 15
    end
    object SDS_EmpresaEMAIL_CONTADOR: TStringField
      FieldName = 'EMAIL_CONTADOR'
      Origin = 'EMAIL_CONTADOR'
      Size = 50
    end
    object SDS_EmpresaCOD_IBGE_CONTADOR: TStringField
      FieldName = 'COD_IBGE_CONTADOR'
      Origin = 'COD_IBGE_CONTADOR'
      Size = 7
    end
    object SDS_EmpresaCPF_CONTADOR: TStringField
      FieldName = 'CPF_CONTADOR'
      Origin = 'CPF_CONTADOR'
      FixedChar = True
      Size = 18
    end
    object SDS_EmpresaCIDADE_CONTADOR: TStringField
      FieldName = 'CIDADE_CONTADOR'
      Origin = 'CIDADE_CONTADOR'
      Size = 40
    end
    object SDS_EmpresaUF_CONTADOR: TStringField
      FieldName = 'UF_CONTADOR'
      Origin = 'UF_CONTADOR'
      Size = 2
    end
    object SDS_EmpresaCPF_RESPONSAVEL: TStringField
      FieldName = 'CPF_RESPONSAVEL'
      Origin = 'CPF_RESPONSAVEL'
      FixedChar = True
      Size = 18
    end
    object SDS_EmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 44
    end
    object SDS_EmpresaTIPO_SEGMENTO: TStringField
      FieldName = 'TIPO_SEGMENTO'
      Origin = 'TIPO_SEGMENTO'
      Size = 1
    end
    object SDS_EmpresaCPF_PROPRIETARIO: TStringField
      FieldName = 'CPF_PROPRIETARIO'
      Origin = 'CPF_PROPRIETARIO'
      FixedChar = True
      Size = 18
    end
    object SDS_EmpresaDISTRIBUIDORA_COMBUSTIVEL: TStringField
      FieldName = 'DISTRIBUIDORA_COMBUSTIVEL'
      Origin = 'DISTRIBUIDORA_COMBUSTIVEL'
      Size = 70
    end
    object SDS_EmpresaNUM_JUNT_COM: TStringField
      FieldName = 'NUM_JUNT_COM'
      Origin = 'NUM_JUNT_COM'
      Size = 40
    end
    object SDS_EmpresaDATA_INICIO_LMC: TDateField
      FieldName = 'DATA_INICIO_LMC'
      Origin = 'DATA_INICIO_LMC'
    end
    object SDS_EmpresaDATA_FIM_LMC: TDateField
      FieldName = 'DATA_FIM_LMC'
      Origin = 'DATA_FIM_LMC'
    end
    object SDS_EmpresaNUM_ORD_LMC: TIntegerField
      FieldName = 'NUM_ORD_LMC'
      Origin = 'NUM_ORD_LMC'
    end
    object SDS_EmpresaULTIMONSU: TStringField
      FieldName = 'ULTIMONSU'
      Origin = 'ULTIMONSU'
      Size = 30
    end
  end
  object sds_pre_venda: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from prevenda')
    Left = 296
    Top = 776
    object sds_pre_vendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_pre_vendaVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Origin = 'VALOR_ITENS'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Origin = 'VALOR_COMISSAO'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object sds_pre_vendaDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
      Origin = 'DATA_PEDIDO'
    end
    object sds_pre_vendaDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = 'DATA_ENTREGA'
    end
    object sds_pre_vendaCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      Required = True
    end
    object sds_pre_vendaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 70
    end
    object sds_pre_vendaPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Size = 35
    end
    object sds_pre_vendaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sds_pre_vendaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sds_pre_vendaUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
      Origin = 'USUARIO_ENTREGA'
    end
    object sds_pre_vendaTP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      FixedChar = True
      Size = 1
    end
    object sds_pre_vendaOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object sds_pre_vendaCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'COD_VENDEDOR'
    end
    object sds_pre_vendaCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
      Origin = 'COD_PAGTO'
    end
    object sds_pre_vendaN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Origin = 'N_CUPOM'
      Size = 18
    end
    object sds_pre_vendaN_ECF: TStringField
      FieldName = 'N_ECF'
      Origin = 'N_ECF'
      Size = 5
    end
    object sds_pre_vendaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object sds_pre_vendaHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object sds_pre_vendaVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Origin = 'VALOR_ACRESCIMOS'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
      Origin = 'COD_ORCAMENTO'
    end
    object sds_pre_vendaCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'COD_PEDIDO'
    end
    object sds_pre_vendaCOD_OS: TSmallintField
      FieldName = 'COD_OS'
      Origin = 'COD_OS'
    end
    object sds_pre_vendaNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
    end
    object sds_pre_vendaSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Origin = 'SERIE_NOTA'
      Size = 3
    end
    object sds_pre_vendaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object sds_pre_vendaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      FixedChar = True
      Size = 18
    end
    object sds_pre_vendaRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      FixedChar = True
    end
    object sds_pre_vendaFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 16
    end
    object sds_pre_vendaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object sds_pre_vendaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object sds_pre_vendaN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Origin = 'N_PARTIDA'
      Size = 15
    end
    object sds_pre_vendaPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Origin = 'PROPRIEDADE'
      Size = 70
    end
    object sds_pre_vendaQUANT_VENDIDA: TBCDField
      FieldName = 'QUANT_VENDIDA'
      Origin = 'QUANT_VENDIDA'
      Precision = 18
    end
    object sds_pre_vendaSALDO_VENDIDO: TBCDField
      FieldName = 'SALDO_VENDIDO'
      Origin = 'SALDO_VENDIDO'
      Precision = 18
    end
    object sds_pre_vendaMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Origin = 'MED_VETERINARIO'
      Size = 70
    end
    object sds_pre_vendaDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
      Origin = 'DATA_VACINA'
    end
    object sds_pre_vendaVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Origin = 'VALOR_AVISTA'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Origin = 'VALOR_PRAZO'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object sds_pre_vendaCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      Size = 7
    end
    object sds_pre_vendaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object sds_pre_vendaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object sds_pre_vendaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object sds_pre_vendaVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Origin = 'VALOR_TROCO'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Origin = 'ENTREGADOR'
      Size = 44
    end
    object sds_pre_vendaTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      Origin = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object sds_pre_vendaFECHADO: TStringField
      FieldName = 'FECHADO'
      Origin = 'FECHADO'
      Size = 5
    end
    object sds_pre_vendaMESA: TStringField
      FieldName = 'MESA'
      Origin = 'MESA'
      Size = 3
    end
    object sds_pre_vendaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 70
    end
    object sds_pre_vendaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object sds_pre_vendaPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Origin = 'PROD_RURAL'
      Size = 1
    end
    object sds_pre_vendaIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Origin = 'IE_PRODUTOR'
      FixedChar = True
    end
    object sds_pre_vendaVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Origin = 'VLR_PIS'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Origin = 'VLR_COFINS'
      Precision = 18
      Size = 2
    end
    object sds_pre_vendaKM: TIntegerField
      FieldName = 'KM'
      Origin = 'KM'
    end
    object sds_pre_vendaCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Origin = 'CHAVE_FP'
      Size = 100
    end
    object sds_pre_vendaCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Origin = 'CHAVE_FP_CANCEL'
      Size = 30
    end
    object sds_pre_vendaCUPON_CANCELADO: TStringField
      FieldName = 'CUPON_CANCELADO'
      Origin = 'CUPON_CANCELADO'
      Size = 1
    end
    object sds_pre_vendaCRZ: TIntegerField
      FieldName = 'CRZ'
      Origin = 'CRZ'
    end
    object sds_pre_vendaCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object sds_pre_vendaANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ANO'
    end
    object sds_pre_vendaMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Origin = 'MODELO_NF'
      Size = 2
    end
    object sds_pre_vendaCFOP_NF: TStringField
      FieldName = 'CFOP_NF'
      Origin = 'CFOP_NF'
      Size = 4
    end
    object sds_pre_vendaCOD_OS_AUTO: TIntegerField
      FieldName = 'COD_OS_AUTO'
      Origin = 'COD_OS_AUTO'
    end
  end
  object sds_pre_venda_itens: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from prevenda_itens')
    Left = 200
    Top = 648
    object sds_pre_venda_itensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_pre_venda_itensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      Required = True
    end
    object sds_pre_venda_itensITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'ITEN'
    end
    object sds_pre_venda_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'CODIGO_PROD'
    end
    object sds_pre_venda_itensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
      Size = 13
    end
    object sds_pre_venda_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object sds_pre_venda_itensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 3
    end
    object sds_pre_venda_itensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object sds_pre_venda_itensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensDEV: TStringField
      FieldName = 'DEV'
      Origin = 'DEV'
      FixedChar = True
      Size = 1
    end
    object sds_pre_venda_itensQNT_DEV: TBCDField
      FieldName = 'QNT_DEV'
      Origin = 'QNT_DEV'
      Precision = 18
    end
    object sds_pre_venda_itensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Origin = 'VAL_DEV'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object sds_pre_venda_itensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object sds_pre_venda_itensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object sds_pre_venda_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object sds_pre_venda_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object sds_pre_venda_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object sds_pre_venda_itensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PERC_ISS'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Origin = 'VL_ISS'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PERC_ICM'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object sds_pre_venda_itensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 3
    end
    object sds_pre_venda_itensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object sds_pre_venda_itensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
    end
    object sds_pre_venda_itensID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Size = 5
    end
    object sds_pre_venda_itensID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Size = 5
    end
    object sds_pre_venda_itensBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 2
    end
  end
  object dts_prevenda: TDataSource
    DataSet = sds_pre_venda
    Left = 384
    Top = 784
  end
  object dts_pre_venda_itens: TDataSource
    DataSet = sds_pre_venda_itens
    Left = 192
    Top = 704
  end
  object FConsulta: TFDCommand
    Connection = Coneccao
    Transaction = IBTransaction
    Left = 264
    Top = 8
  end
  object FBDriver: TFDPhysFBDriverLink
    VendorLib = 'C:\StartNet_Sistemas\fbclient.dll'
    Left = 1248
    Top = 446
  end
  object ECF: TACBrECF
    QuebraLinhaRodape = False
    Porta = 'COM1'
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    PaginaDeCodigo = 0
    MemoParams.Strings = (
      '[Cabecalho]'
      'LIN000=<center><b>Nome da Empresa</b></center>'
      'LIN001=<center>Nome da Rua , 1234  -  Bairro</center>'
      'LIN002=<center>Cidade  -  UF  -  99999-999</center>'
      
        'LIN003=<center>CNPJ: 01.234.567/0001-22    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      'LIN005=<hr>'
      ' '
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO      DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      'LIN002=<hr>'
      
        'MascaraItem=III CCCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ' '
      '[Rodape]'
      'LIN000=<hr>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Projeto ACBr: <b><code>ACBR<' +
        '/code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      'LIN003=<hr>'
      ' '
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=2'
      'HTML_Font=<font size="2" face="Lucida Console">')
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 728
    Top = 712
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFEFR
    MostraSetup = True
    PathPDF = 'C:\StartNet_Sistemas\nfe\'
    Sistema = 'StartNet Sistemas'
    Site = 'www.startnetprovedor.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 1.100000000000000000
    MargemDireita = 0.500000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    AlterarEscalaPadrao = True
    ACBrNFe = ACBrNFe1
    TributosPercentual = ptValorNF
    ExpandirDadosAdicionaisAuto = True
    EspessuraBorda = 1
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 808
    Top = 744
  end
  object ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS
    PathPDF = '.\pdf\'
    Sistema = 'Teste de Impress'#227'o ACBRr EscPOS'
    Site = 'http://www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    TipoDANFE = tiNFCe
    ImprimeDescAcrescItem = False
    PosPrinter = ACBrPosPrinter1
    Left = 915
    Top = 693
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    CortaPapel = False
    ControlePorta = True
    Left = 915
    Top = 751
  end
  object sds_IdSistema: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select * from ID_CLIENTE')
    Left = 448
    Top = 8
    object sds_IdSistemaSEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_IdSistemaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object sds_IdSistemaCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 100
    end
    object sds_IdSistemaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
  end
  object ACBrMDFe1: TACBrMDFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DAMDFE = ACBrMDFeDAMDFEFR1
    Left = 624
    Top = 800
  end
  object ACBrMDFeDAMDFEFR1: TACBrMDFeDAMDFEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrMDFe = ACBrMDFe1
    ImprimeHoraSaida = False
    TipoDAMDFe = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    Encerrado = False
    ImprimeDadosExtras = [deValorTotal, deRelacaoDFe]
    ExibirMunicipioDescarregamento = False
    SelecionaImpressora = False
    EspessuraBorda = 1
    Left = 720
    Top = 800
  end
  object SDS_PRODUTOS: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    Transaction = IBTransaction
    SQL.Strings = (
      
        'select * from PRODUTOS ORDER BY DESCRICAO, REFERENCIA, CODIGO_BA' +
        'RRAS')
    Left = 24
    Top = 184
    object SDS_PRODUTOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_PRODUTOSCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object SDS_PRODUTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object SDS_PRODUTOSABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Origin = 'ABREVIADO'
      Size = 29
    end
    object SDS_PRODUTOSPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSMARGEM_LUCRO: TFMTBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
    end
    object SDS_PRODUTOSFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSICMS: TFMTBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSIPI_IRPJ: TFMTBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSOUTROS_IMPOSTOS: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSDESCONTOS: TFMTBCDField
      FieldName = 'DESCONTOS'
      Origin = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Origin = 'CLASS_FISCAL'
      Size = 6
    end
    object SDS_PRODUTOSSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_PRODUTOSCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object SDS_PRODUTOSDESCONTO_MAXIMO: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = 'CODIGO_GRUPO'
    end
    object SDS_PRODUTOSCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = 'CODIGO_SUBGRUPO'
    end
    object SDS_PRODUTOSCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = 'CODIGO_MARCA'
    end
    object SDS_PRODUTOSNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Origin = 'NOME_GRUPO'
      Size = 40
    end
    object SDS_PRODUTOSNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = 'NOME_SUBGRUPO'
      Size = 40
    end
    object SDS_PRODUTOSNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Origin = 'NOME_MARCA'
      Size = 40
    end
    object SDS_PRODUTOSNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = 'NOME_FORNECEDOR'
      Size = 70
    end
    object SDS_PRODUTOSCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = 'CODIGO_FORNECEDORES'
    end
    object SDS_PRODUTOSFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object SDS_PRODUTOSESTOQUE_ATUAL: TBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
      Precision = 18
    end
    object SDS_PRODUTOSESTOQUE_VENDIDO: TFMTBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Origin = 'ESTOQUE_VENDIDO'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object SDS_PRODUTOSVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Origin = 'VALOR_ESTOQUE_ATUAL'
      Precision = 18
      Size = 6
    end
    object SDS_PRODUTOSVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Origin = 'VALOR_ESTOQUE'
      Precision = 18
      Size = 6
    end
    object SDS_PRODUTOSESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'ESTOQUE_MINIMO'
    end
    object SDS_PRODUTOSESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = 'ESTOQUE_MAXIMO'
    end
    object SDS_PRODUTOSDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object SDS_PRODUTOSUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object SDS_PRODUTOSVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Origin = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 18
      Size = 6
    end
    object SDS_PRODUTOSULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ULTIMACOMPRA'
    end
    object SDS_PRODUTOSVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Origin = 'VALOR_EST_CUSTO'
      Precision = 18
      Size = 6
    end
    object SDS_PRODUTOSSECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = 'SECCAO'
    end
    object SDS_PRODUTOSCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object SDS_PRODUTOSLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 50
    end
    object SDS_PRODUTOSAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 500
    end
    object SDS_PRODUTOSESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Origin = 'ESP_COD_AUX'
      Size = 50
    end
    object SDS_PRODUTOSGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      Origin = 'GARANTIA'
    end
    object SDS_PRODUTOSBALANCA: TStringField
      FieldName = 'BALANCA'
      Origin = 'BALANCA'
      Size = 1
    end
    object SDS_PRODUTOSETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      Size = 1
    end
    object SDS_PRODUTOSATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object SDS_PRODUTOSREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 40
    end
    object SDS_PRODUTOSCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object SDS_PRODUTOSDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object SDS_PRODUTOSPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object SDS_PRODUTOSPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object SDS_PRODUTOSFONETICO: TStringField
      FieldName = 'FONETICO'
      Origin = 'FONETICO'
      Size = 60
    end
    object SDS_PRODUTOSDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
      Origin = 'DATAULTALTERACAO'
    end
    object SDS_PRODUTOSCUSTOREPOSICAO: TFMTBCDField
      FieldName = 'CUSTOREPOSICAO'
      Origin = 'CUSTOREPOSICAO'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSPRECO_ANT: TFMTBCDField
      FieldName = 'PRECO_ANT'
      Origin = 'PRECO_ANT'
      Precision = 18
      Size = 3
    end
    object SDS_PRODUTOSPRECO_PROMOCAO: TFMTBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRECO_PROMOCAO'
      Precision = 18
      Size = 3
    end
    object SDS_PRODUTOSFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Origin = 'FLAG_PROMOCAO'
      Size = 1
    end
    object SDS_PRODUTOSDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
      Origin = 'DT_INICIO_PROMO'
    end
    object SDS_PRODUTOSDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
      Origin = 'DT_FIM_PROMO'
    end
    object SDS_PRODUTOSCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
      Origin = 'COD_LABORATORIO'
    end
    object SDS_PRODUTOSLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
      Size = 70
    end
    object SDS_PRODUTOSPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = 'PRINCIPIO_ATIVO'
      Size = 70
    end
    object SDS_PRODUTOSMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Origin = 'MED_CONTROLADO'
      Size = 1
    end
    object SDS_PRODUTOSQTD_FRACIONADA: TFMTBCDField
      FieldName = 'QTD_FRACIONADA'
      Origin = 'QTD_FRACIONADA'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
    end
    object SDS_PRODUTOSMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Origin = 'MED_GENERICO'
      Size = 3
    end
    object SDS_PRODUTOSLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      Size = 10
    end
    object SDS_PRODUTOSVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object SDS_PRODUTOSCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object SDS_PRODUTOSPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      Precision = 18
      Size = 3
    end
    object SDS_PRODUTOSMARGEM_LUCRO2: TFMTBCDField
      FieldName = 'MARGEM_LUCRO2'
      Origin = 'MARGEM_LUCRO2'
      Precision = 18
      Size = 2
    end
    object SDS_PRODUTOSVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Origin = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object SDS_PRODUTOSPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object SDS_PRODUTOSUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
      Origin = 'UNIDADE_ENT'
    end
    object SDS_PRODUTOSDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Origin = 'DESC_UNID_ENT'
      Size = 6
    end
    object SDS_PRODUTOSQUANT_SAIDA: TBCDField
      FieldName = 'QUANT_SAIDA'
      Origin = 'QUANT_SAIDA'
      Precision = 18
    end
    object SDS_PRODUTOSQUANT_ENTRADA: TBCDField
      FieldName = 'QUANT_ENTRADA'
      Origin = 'QUANT_ENTRADA'
      Precision = 18
    end
    object SDS_PRODUTOSESTOQUE_FRACAO: TBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = 'ESTOQUE_FRACAO'
      Precision = 18
    end
    object SDS_PRODUTOSDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
    end
    object SDS_PRODUTOSFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object SDS_PRODUTOSNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 12
    end
    object SDS_PRODUTOSCOD_MS: TStringField
      FieldName = 'COD_MS'
      Origin = 'COD_MS'
      Size = 13
    end
    object SDS_PRODUTOSCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Origin = 'CONTOLAESTOQUE'
      Size = 5
    end
    object SDS_PRODUTOSPRODUTOCOMPOSTO: TStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = 'PRODUTOCOMPOSTO'
      Size = 5
    end
    object SDS_PRODUTOSTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object SDS_PRODUTOSCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = 'COD_PRODUTO_ESTOQUE'
    end
    object SDS_PRODUTOSCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = 'CODIGO_LOCAL_ESTOQUE'
    end
    object SDS_PRODUTOSLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Origin = 'LISTA_ABC'
      Size = 1
    end
    object SDS_PRODUTOSGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = 'GRUPO_TRIBUTACAO'
    end
    object SDS_PRODUTOSCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object SDS_PRODUTOSCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object SDS_PRODUTOSENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'ENABLE_NUMSERIE'
    end
    object SDS_PRODUTOSID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
    end
    object SDS_PRODUTOSCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      Size = 9
    end
    object SDS_PRODUTOSCESTA: TStringField
      FieldName = 'CESTA'
      Origin = 'CESTA'
      Size = 1
    end
    object SDS_PRODUTOSML_QUANT_BEB: TFMTBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object SDS_PRODUTOSUND_TRIB: TStringField
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      Size = 3
    end
    object SDS_PRODUTOSCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 44
    end
    object SDS_PRODUTOSCOR_DESC: TStringField
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      Size = 30
    end
    object SDS_PRODUTOSN_MOTOR: TStringField
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      Size = 30
    end
    object SDS_PRODUTOSANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      Size = 4
    end
    object SDS_PRODUTOSANO_MOD_FAB: TStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      Size = 4
    end
    object SDS_PRODUTOSTIPO_VEIC: TStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      Size = 10
    end
    object SDS_PRODUTOSN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      Size = 30
    end
    object SDS_PRODUTOSCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      Size = 30
    end
    object SDS_PRODUTOSESPECIE_VEICULO: TStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      Size = 10
    end
    object SDS_PRODUTOSCOD_COR_DENATRAN: TStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      Size = 10
    end
    object SDS_PRODUTOSTIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      Size = 10
    end
    object SDS_PRODUTOSVEICULO: TStringField
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      Size = 1
    end
    object SDS_PRODUTOSUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
      Origin = 'USA_RENTABILIDADE'
    end
    object SDS_PRODUTOSUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Origin = 'USA_SERIAL'
    end
    object SDS_PRODUTOSUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Origin = 'USA_GRADE'
    end
    object SDS_PRODUTOSPRODUTO_PROPRIEDADE: TIntegerField
      FieldName = 'PRODUTO_PROPRIEDADE'
      Origin = 'PRODUTO_PROPRIEDADE'
    end
    object SDS_PRODUTOSMULTIP_FRACAO: TIntegerField
      FieldName = 'MULTIP_FRACAO'
      Origin = 'MULTIP_FRACAO'
    end
    object SDS_PRODUTOSDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Origin = 'DATA_REMARCACAO_VENDA'
    end
    object SDS_PRODUTOSCODORIGINAL: TStringField
      FieldName = 'CODORIGINAL'
      Origin = 'CODORIGINAL'
      Size = 40
    end
    object SDS_PRODUTOSDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'DATA_ULTIMA_COMPRA'
    end
    object SDS_PRODUTOSALERTA_COPA: TStringField
      FieldName = 'ALERTA_COPA'
      Origin = 'ALERTA_COPA'
      FixedChar = True
      Size = 1
    end
    object SDS_PRODUTOSALERTA_COZINHA: TStringField
      FieldName = 'ALERTA_COZINHA'
      Origin = 'ALERTA_COZINHA'
      FixedChar = True
      Size = 1
    end
    object SDS_PRODUTOSANDROID_VISUALIZA: TStringField
      FieldName = 'ANDROID_VISUALIZA'
      Origin = 'ANDROID_VISUALIZA'
      FixedChar = True
      Size = 1
    end
    object SDS_PRODUTOSTEMPO_PREPARO: TTimeField
      FieldName = 'TEMPO_PREPARO'
      Origin = 'TEMPO_PREPARO'
    end
    object SDS_PRODUTOSSABORES: TIntegerField
      FieldName = 'SABORES'
      Origin = 'SABORES'
    end
    object SDS_PRODUTOSCOD_PACOTE: TStringField
      FieldName = 'COD_PACOTE'
      Origin = 'COD_PACOTE'
    end
    object SDS_PRODUTOSCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object SDS_PRODUTOSPROCURA: TStringField
      FieldName = 'PROCURA'
      Origin = 'PROCURA'
      Size = 44
    end
    object SDS_PRODUTOSTEM_MESTRE: TStringField
      FieldName = 'TEM_MESTRE'
      Origin = 'TEM_MESTRE'
      Size = 1
    end
    object SDS_PRODUTOSCOD_MESTRE: TIntegerField
      FieldName = 'COD_MESTRE'
      Origin = 'COD_MESTRE'
    end
    object SDS_PRODUTOSDESC_PROD_ANP: TStringField
      FieldName = 'DESC_PROD_ANP'
      Origin = 'DESC_PROD_ANP'
      Size = 70
    end
  end
  object SDS_Unidades: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select *  from UNIDADES order by descricao')
    Left = 352
    Top = 64
    object SDS_UnidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object SDS_UnidadesUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object SDS_UnidadesABREVIATURA: TStringField
      FieldName = 'ABREVIATURA'
      Origin = 'ABREVIATURA'
      Size = 6
    end
    object SDS_UnidadesDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
  end
  object SDS_Marcas: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select * from MARCAS order by descricao')
    Left = 424
    Top = 56
    object SDS_MarcasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_MarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object SDS_MarcasDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object SDS_MarcasUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
  end
  object SDS_Grupos: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select * from GRUPOS order by descricao')
    Left = 480
    Top = 64
    object SDS_GruposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_GruposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object SDS_GruposDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object SDS_GruposUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object SDS_GruposNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object SDS_GruposPERC_TRIBU: TFMTBCDField
      FieldName = 'PERC_TRIBU'
      Origin = 'PERC_TRIBU'
      Precision = 18
      Size = 2
    end
    object SDS_GruposFONTE: TStringField
      FieldName = 'FONTE'
      Origin = 'FONTE'
      FixedChar = True
      Size = 18
    end
  end
  object SDS_Bancos: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select*  from BANCOS order by Codigo asc')
    Left = 624
    Top = 56
    object SDS_BancosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_BancosFEBRABAN: TStringField
      FieldName = 'FEBRABAN'
      Origin = 'FEBRABAN'
      Size = 3
    end
    object SDS_BancosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
    object SDS_BancosSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 50
    end
    object SDS_BancosUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object SDS_BancosDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
  end
  object SDS_Agencias: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'LINK'
    MasterSource = DTS_Bancos
    MasterFields = 'CODIGO'
    Connection = Coneccao
    SQL.Strings = (
      'select  * from AGENCIAS order by Nome')
    Left = 744
    Top = 56
    object SDS_AgenciasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_AgenciasFEBRABAN: TStringField
      FieldName = 'FEBRABAN'
      Origin = 'FEBRABAN'
      Size = 3
    end
    object SDS_AgenciasBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 70
    end
    object SDS_AgenciasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 70
    end
    object SDS_AgenciasGERENTE: TStringField
      FieldName = 'GERENTE'
      Origin = 'GERENTE'
      Size = 70
    end
    object SDS_AgenciasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object SDS_AgenciasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object SDS_AgenciasCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_AgenciasCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object SDS_AgenciasUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object SDS_AgenciasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object SDS_AgenciasFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object SDS_AgenciasSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 50
    end
    object SDS_AgenciasEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object SDS_AgenciasNUM_AGENCIA: TStringField
      FieldName = 'NUM_AGENCIA'
      Origin = 'NUM_AGENCIA'
      Required = True
      Size = 8
    end
    object SDS_AgenciasLINK: TIntegerField
      FieldName = 'LINK'
      Origin = 'LINK'
      Required = True
    end
    object SDS_AgenciasUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object SDS_AgenciasDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
  end
  object SDS_estados: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select * from ESTADOS')
    Left = 816
    Top = 112
    object SDS_estadosCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
      Origin = 'COD_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_estadosDESCRICO: TStringField
      FieldName = 'DESCRICO'
      Origin = 'DESCRICO'
      Size = 70
    end
    object SDS_estadosUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object SDS_estadosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object SDS_estadosDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object SDS_estadosUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object SDS_estadosCOD_PAIS: TIntegerField
      FieldName = 'COD_PAIS'
      Origin = 'COD_PAIS'
    end
    object SDS_estadosDESC_PAIS: TStringField
      FieldName = 'DESC_PAIS'
      Origin = 'DESC_PAIS'
      Size = 44
    end
  end
  object sds_bairros: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'COD_CIDADE'
    MasterSource = DTS_cidades
    MasterFields = 'COD_CIDADE'
    Connection = Coneccao
    SQL.Strings = (
      'select * from BAIRRO')
    Left = 880
    Top = 120
    object sds_bairrosCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = 'COD_BAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_bairrosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 70
    end
    object sds_bairrosCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
      Required = True
    end
    object sds_bairrosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object sds_bairrosDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object sds_bairrosUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
  end
  object SDS_zonas: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select * from ZONA_VENDA ORDER BY DESCRICAO ASC')
    Left = 888
    Top = 8
    object SDS_zonasCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
      Origin = 'COD_ZONA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_zonasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object SDS_zonasUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object SDS_zonasDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object SDS_zonasCOD_EMPRESA: TStringField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Size = 1
    end
  end
  object Sds_cidades: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select * from CIDADES order by NOME ASC')
    Left = 824
    Top = 8
    object Sds_cidadesCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Sds_cidadesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 70
    end
    object Sds_cidadesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Sds_cidadesCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
      Origin = 'COD_ESTADO'
      Required = True
    end
    object Sds_cidadesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object Sds_cidadesUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object Sds_cidadesDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object Sds_cidadesZONAS: TIntegerField
      FieldName = 'ZONAS'
      Origin = 'ZONAS'
    end
    object Sds_cidadesUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = SDS_estados
      LookupKeyFields = 'COD_ESTADO'
      LookupResultField = 'UF'
      KeyFields = 'COD_ESTADO'
      Size = 2
      Lookup = True
    end
    object Sds_cidadesCOD_IBGE: TIntegerField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
    end
  end
  object Sds_bairro: TFDQuery
    Connection = Coneccao
    SQL.Strings = (
      'select * from BAIRRO order by COD_CIDADE asc')
    Left = 968
    Top = 8
    object Sds_bairroCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = 'COD_BAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Sds_bairroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 70
    end
    object Sds_bairroCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
      Required = True
    end
    object Sds_bairroCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object Sds_bairroDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object Sds_bairroUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = Sds_cidades
      LookupKeyFields = 'COD_CIDADE'
      LookupResultField = 'UF'
      KeyFields = 'COD_CIDADE'
      Size = 2
      Lookup = True
    end
    object Sds_bairroCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE'
      LookupDataSet = Sds_cidades
      LookupKeyFields = 'COD_CIDADE'
      LookupResultField = 'NOME'
      KeyFields = 'COD_CIDADE'
      Size = 30
      Lookup = True
    end
    object Sds_bairroUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
  end
  object SDS_CLI: TFDQuery
    CachedUpdates = True
    Connection = Coneccao
    SQL.Strings = (
      'select * from CLIENTES ORDER BY NOME_RS ASC')
    Left = 560
    Top = 8
    object SDS_CLICODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_CLINOME_RS: TStringField
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      Required = True
      Size = 70
    end
    object SDS_CLIENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object SDS_CLICIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object SDS_CLIUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object SDS_CLICEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_CLITELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object SDS_CLITELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      Size = 15
    end
    object SDS_CLIEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object SDS_CLINASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
      Origin = 'NASCIMENTO_IA'
    end
    object SDS_CLISEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 15
    end
    object SDS_CLIFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Origin = 'FOTO_LOGOMARCA'
    end
    object SDS_CLIBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object SDS_CLICOD_IBGE: TStringField
      FieldKind = fkLookup
      FieldName = 'COD_IBGE'
      LookupDataSet = Sds_cidades
      LookupKeyFields = 'COD_CIDADE'
      LookupResultField = 'COD_IBGE'
      KeyFields = 'COD_CIDADE'
      Size = 7
      Lookup = True
    end
    object SDS_CLIRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      FixedChar = True
    end
    object SDS_CLIFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object SDS_CLICELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object SDS_CLIUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object SDS_CLIDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object SDS_CLICPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object SDS_CLIOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object SDS_CLICREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Origin = 'CREDIARIO'
      Size = 3
    end
    object SDS_CLIESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
      Size = 10
    end
    object SDS_CLIRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Origin = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object SDS_CLIPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 70
    end
    object SDS_CLIMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 70
    end
    object SDS_CLINOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Origin = 'NOME_CONJUGE'
      Size = 70
    end
    object SDS_CLICPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      Origin = 'CPF_CONJUGE'
      FixedChar = True
      Size = 18
    end
    object SDS_CLINASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
      Origin = 'NASCIMENTO_CONJUGE'
    end
    object SDS_CLITRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Origin = 'TRABALHO_CONJUGE'
      Size = 70
    end
    object SDS_CLIPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Origin = 'PROFISSAO_CONJUGE'
      Size = 70
    end
    object SDS_CLILOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Origin = 'LOCALTRABALHO'
      Size = 70
    end
    object SDS_CLIPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Origin = 'PROFISSAO_RA'
      Size = 70
    end
    object SDS_CLITELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Origin = 'TELEFONE_TRABALHO'
      Size = 16
    end
    object SDS_CLIFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Origin = 'FAX_TRABALHO'
      Size = 15
    end
    object SDS_CLIOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Origin = 'OBSERVACOES_TRABALHO'
    end
    object SDS_CLIBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 70
    end
    object SDS_CLINOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Origin = 'NOME_AGENCIA'
      Size = 70
    end
    object SDS_CLINUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Origin = 'NUMERO_AGENCIA'
      Size = 10
    end
    object SDS_CLICONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
      Origin = 'CONTA_CORRENTE'
    end
    object SDS_CLINOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Origin = 'NOME1_REFERENCIA'
      Size = 70
    end
    object SDS_CLINOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Origin = 'NOME2_REFERENCIA'
      Size = 70
    end
    object SDS_CLITELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Origin = 'TELEFONE1_REFERENCIA'
      Size = 16
    end
    object SDS_CLITELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Origin = 'TELEFONE2_REFERENCIA'
      Size = 16
    end
    object SDS_CLIBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Origin = 'BANCO_REFERENCIA'
      Size = 70
    end
    object SDS_CLIAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      Size = 30
    end
    object SDS_CLITIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Origin = 'OBSERVACOES_COMERCIAIS'
    end
    object SDS_CLIOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Origin = 'OBSERVACOES_BANCO'
    end
    object SDS_CLIPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      Origin = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      Origin = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      Origin = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Origin = 'REMUNERACAO'
      Precision = 18
      Size = 2
    end
    object SDS_CLINUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object SDS_CLICOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_CLICOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object SDS_CLIORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'ORGAO_EMISSOR'
      Size = 10
    end
    object SDS_CLIDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
      Origin = 'DATA_EMISSAO_RG'
    end
    object SDS_CLINATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 40
    end
    object SDS_CLINATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Origin = 'NATURALIDADE_UF'
      Size = 2
    end
    object SDS_CLICOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object SDS_CLICOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = 'COD_BAIRRO'
    end
    object SDS_CLIDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object SDS_CLICOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
      Origin = 'COD_ZONA'
    end
    object SDS_CLIPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = 'PONTO_REFERENCIA'
      Size = 200
    end
    object SDS_CLIATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object SDS_CLICONTATO1: TStringField
      FieldName = 'CONTATO1'
      Origin = 'CONTATO1'
      Size = 60
    end
    object SDS_CLICONTATO2: TStringField
      FieldName = 'CONTATO2'
      Origin = 'CONTATO2'
      Size = 60
    end
    object SDS_CLICX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Origin = 'CX_POSTAL'
      Size = 10
    end
    object SDS_CLIVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Origin = 'VALOR_ALUGUEL'
      Precision = 18
      Size = 2
    end
    object SDS_CLITEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Origin = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object SDS_CLINUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
      Origin = 'NUMERO_DEPENDENTES'
    end
    object SDS_CLIENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Origin = 'ENDERECO_REFERENCIA1'
      Size = 44
    end
    object SDS_CLIENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Origin = 'ENDERECO_REFERENCIA2'
      Size = 44
    end
    object SDS_CLIDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
      Origin = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object SDS_CLIDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
      Origin = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object SDS_CLIRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Origin = 'RG_CONJUGUE'
    end
    object SDS_CLIRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Origin = 'RENDA_CONJUGUE'
      Precision = 18
      Size = 2
    end
    object SDS_CLIDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
      Origin = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object SDS_CLIFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Origin = 'FONE_CONJUGUE'
      Size = 15
    end
    object SDS_CLIENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Origin = 'ENDERECO_COBRANCA'
      Size = 44
    end
    object SDS_CLICEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      Origin = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object SDS_CLICOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
      Origin = 'COD_CIDADE_COBRANCA'
    end
    object SDS_CLICX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      Origin = 'CX_POSTAL_COBRANCA'
      FixedChar = True
    end
    object SDS_CLILIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Origin = 'LIMITE_DE_CREDITO'
      Precision = 18
      Size = 2
    end
    object SDS_CLIINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Origin = 'INSC_MUNICIPAL'
    end
    object SDS_CLIPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_CLIINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Origin = 'INSC_PRODUTOR_RURAL'
    end
    object SDS_CLICOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
      Origin = 'COD_BAIRRO_COBRANCA'
    end
    object SDS_CLICIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Origin = 'CIDADE_COBRANCA'
      Size = 40
    end
    object SDS_CLIBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Origin = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object SDS_CLIUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Origin = 'UF_COBRANCA'
      Size = 2
    end
    object SDS_CLICONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
      Origin = 'CONTA_BANCARIA'
    end
    object SDS_CLINOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = 'NOME_PROPRIEDADE'
      Size = 70
    end
    object SDS_CLINOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Origin = 'NOME_VETERINARIO'
      Size = 70
    end
    object SDS_CLISOCIO1: TStringField
      FieldName = 'SOCIO1'
      Origin = 'SOCIO1'
      Size = 40
    end
    object SDS_CLICPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Origin = 'CPFSOCIO1'
      Size = 11
    end
    object SDS_CLIDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
      Origin = 'DATANASCSOCIO1'
    end
    object SDS_CLISOCIO2: TStringField
      FieldName = 'SOCIO2'
      Origin = 'SOCIO2'
      Size = 40
    end
    object SDS_CLICPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Origin = 'CPFSOCIO2'
      Size = 11
    end
    object SDS_CLIDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
      Origin = 'DATANASCSOCIO2'
    end
    object SDS_CLISOCIO3: TStringField
      FieldName = 'SOCIO3'
      Origin = 'SOCIO3'
      Size = 40
    end
    object SDS_CLICPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Origin = 'CPFSOCIO3'
      Size = 11
    end
    object SDS_CLIDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
      Origin = 'DATANASCSOCIO3'
    end
    object SDS_CLISOCIO4: TStringField
      FieldName = 'SOCIO4'
      Origin = 'SOCIO4'
      Size = 40
    end
    object SDS_CLICPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Origin = 'CPFSOCIO4'
      Size = 11
    end
    object SDS_CLIDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
      Origin = 'DATANASCSOCIO4'
    end
    object SDS_CLIDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
      Origin = 'DATAFUNDACAO'
    end
    object SDS_CLICAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'CAPITALSOCIAL'
      Precision = 18
      Size = 2
    end
    object SDS_CLIFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Origin = 'FATURAMENTOBRUTO'
      Precision = 18
      Size = 2
    end
    object SDS_CLIREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Origin = 'REGJUNTACOM'
      Size = 12
    end
    object SDS_CLIENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Origin = 'ENDSOCIO1'
      Size = 40
    end
    object SDS_CLIRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
      Origin = 'RGSOCIO1'
    end
    object SDS_CLIENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Origin = 'ENDSOCIO2'
      Size = 40
    end
    object SDS_CLIRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
      Origin = 'RGSOCIO2'
    end
    object SDS_CLIENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Origin = 'ENDSOCIO3'
      Size = 40
    end
    object SDS_CLIRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
      Origin = 'RGSOCIO3'
    end
    object SDS_CLIENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Origin = 'ENDSOCIO4'
      Size = 40
    end
    object SDS_CLIRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
      Origin = 'RGSOCIO4'
    end
    object SDS_CLIAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Origin = 'AUTORIZADO1'
      Size = 70
    end
    object SDS_CLIAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Origin = 'AUTORIZADO2'
      Size = 70
    end
    object SDS_CLIAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Origin = 'AUTORIZADO3'
      Size = 70
    end
    object SDS_CLICPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      Origin = 'CPF_AUT1'
      FixedChar = True
      Size = 18
    end
    object SDS_CLICPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      Origin = 'CPF_AUT2'
      FixedChar = True
      Size = 18
    end
    object SDS_CLICPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      Origin = 'CPF_AUT3'
      FixedChar = True
      Size = 18
    end
    object SDS_CLIFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Size = 1
    end
    object SDS_CLICTPS: TStringField
      FieldName = 'CTPS'
      Origin = 'CTPS'
      Size = 15
    end
    object SDS_CLITESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Origin = 'TESTA_CREDITO'
      Size = 1
    end
    object SDS_CLITESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Origin = 'TESTA_LIMITE'
      Size = 1
    end
    object SDS_CLICOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
      Origin = 'COD_CONV'
    end
    object SDS_CLIFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 80
    end
    object SDS_CLIDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'DATA_ULTIMA_COMPRA'
    end
    object SDS_CLIFUNC_SALARIO: TFMTBCDField
      FieldName = 'FUNC_SALARIO'
      Origin = 'FUNC_SALARIO'
      Precision = 18
      Size = 2
    end
    object SDS_CLIFUNC_DATA_ADMISSAO: TDateField
      FieldName = 'FUNC_DATA_ADMISSAO'
      Origin = 'FUNC_DATA_ADMISSAO'
    end
    object SDS_CLIFUNC_SITUACAO: TStringField
      FieldName = 'FUNC_SITUACAO'
      Origin = 'FUNC_SITUACAO'
      Size = 1
    end
    object SDS_CLIFUNC_DEMISSAO: TDateField
      FieldName = 'FUNC_DEMISSAO'
      Origin = 'FUNC_DEMISSAO'
    end
    object SDS_CLIFUNC_CARGO: TStringField
      FieldName = 'FUNC_CARGO'
      Origin = 'FUNC_CARGO'
      Size = 30
    end
    object SDS_CLIDOCUMENTOS: TBlobField
      FieldName = 'DOCUMENTOS'
      Origin = 'DOCUMENTOS'
    end
    object SDS_CLIIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      FixedChar = True
    end
    object SDS_CLIPARENTESCO_AUT1: TStringField
      FieldName = 'PARENTESCO_AUT1'
      Origin = 'PARENTESCO_AUT1'
      Size = 100
    end
    object SDS_CLIPARENTESCO_AUT2: TStringField
      FieldName = 'PARENTESCO_AUT2'
      Origin = 'PARENTESCO_AUT2'
      Size = 100
    end
    object SDS_CLIPARENTESCO_AUT3: TStringField
      FieldName = 'PARENTESCO_AUT3'
      Origin = 'PARENTESCO_AUT3'
      Size = 100
    end
    object SDS_CLIPOSSUE_LAUDO: TStringField
      FieldName = 'POSSUE_LAUDO'
      Origin = 'POSSUE_LAUDO'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIVENCIMENTO_LAUDO: TDateField
      FieldName = 'VENCIMENTO_LAUDO'
      Origin = 'VENCIMENTO_LAUDO'
    end
    object SDS_CLICONSUMO_INTERNO: TStringField
      FieldName = 'CONSUMO_INTERNO'
      Origin = 'CONSUMO_INTERNO'
      Size = 1
    end
  end
  object SDS_NotasFiscaisItens: TFDQuery
    IndexFieldNames = 'CODIGO_NOTA'
    MasterSource = DTS_NotasFiscais
    MasterFields = 'CODIGO_NOTA'
    Connection = Coneccao
    SQL.Strings = (
      'select * from NOTASFISCAIS_ITENS order by codigo_item')
    Left = 440
    Top = 224
    object SDS_NotasFiscaisItensCODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Origin = 'CODIGO_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_NotasFiscaisItensCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
    end
    object SDS_NotasFiscaisItensCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 13
    end
    object SDS_NotasFiscaisItensCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Origin = 'CODIGO_NOTA'
      Required = True
    end
    object SDS_NotasFiscaisItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object SDS_NotasFiscaisItensNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object SDS_NotasFiscaisItensCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object SDS_NotasFiscaisItensCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object SDS_NotasFiscaisItensDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object SDS_NotasFiscaisItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object SDS_NotasFiscaisItensVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Precision = 18
    end
    object SDS_NotasFiscaisItensVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      Origin = 'VALOR_DESC'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object SDS_NotasFiscaisItensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
      Origin = 'DATA_VALIDADE'
    end
    object SDS_NotasFiscaisItensDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
    end
    object SDS_NotasFiscaisItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object SDS_NotasFiscaisItensQUANT_FRACIONADA: TBCDField
      FieldName = 'QUANT_FRACIONADA'
      Origin = 'QUANT_FRACIONADA'
      Precision = 18
    end
    object SDS_NotasFiscaisItensLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      Size = 10
    end
    object SDS_NotasFiscaisItensMARG_LUCRO: TFMTBCDField
      FieldName = 'MARG_LUCRO'
      Origin = 'MARG_LUCRO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object SDS_NotasFiscaisItensBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      Origin = 'ALIC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object SDS_NotasFiscaisItensIMOBILZ: TStringField
      FieldName = 'IMOBILZ'
      Origin = 'IMOBILZ'
      Size = 1
    end
    object SDS_NotasFiscaisItensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensUN_FRACAO: TStringField
      FieldName = 'UN_FRACAO'
      Origin = 'UN_FRACAO'
      Size = 5
    end
    object SDS_NotasFiscaisItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object SDS_NotasFiscaisItensCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
    end
    object SDS_NotasFiscaisItensNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
    end
    object SDS_NotasFiscaisItensICMS_RETIDO: TStringField
      FieldName = 'ICMS_RETIDO'
      Origin = 'ICMS_RETIDO'
      Size = 1
    end
    object SDS_NotasFiscaisItensSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensDESCONTO_P: TFMTBCDField
      FieldName = 'DESCONTO_P'
      Origin = 'DESCONTO_P'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensICMS_REDUCAO: TFMTBCDField
      FieldName = 'ICMS_REDUCAO'
      Origin = 'ICMS_REDUCAO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensICMS_VALORRETIDO: TFMTBCDField
      FieldName = 'ICMS_VALORRETIDO'
      Origin = 'ICMS_VALORRETIDO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensICMS_ISENTO: TFMTBCDField
      FieldName = 'ICMS_ISENTO'
      Origin = 'ICMS_ISENTO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensICMS_NAOTRIBUTADO: TFMTBCDField
      FieldName = 'ICMS_NAOTRIBUTADO'
      Origin = 'ICMS_NAOTRIBUTADO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensIPI_TIPO: TStringField
      FieldName = 'IPI_TIPO'
      Origin = 'IPI_TIPO'
      Size = 25
    end
    object SDS_NotasFiscaisItensTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object SDS_NotasFiscaisItensFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensOUTRAS: TFMTBCDField
      FieldName = 'OUTRAS'
      Origin = 'OUTRAS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Origin = 'CLASSIFICACAO_FISCAL'
      Size = 2
    end
    object SDS_NotasFiscaisItensSUB_PRODUTOS: TFMTBCDField
      FieldName = 'SUB_PRODUTOS'
      Origin = 'SUB_PRODUTOS'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisItensITEM_ESPECIAL_VALOR: TFMTBCDField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Origin = 'ITEM_ESPECIAL_VALOR'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisItensICMS_OUTRAS: TFMTBCDField
      FieldName = 'ICMS_OUTRAS'
      Origin = 'ICMS_OUTRAS'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
      Origin = 'ALTERA_ITEM'
    end
    object SDS_NotasFiscaisItensCREDITO_ICMS: TFMTBCDField
      FieldName = 'CREDITO_ICMS'
      Origin = 'CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisItensCREDITO_ICMS_BASE: TFMTBCDField
      FieldName = 'CREDITO_ICMS_BASE'
      Origin = 'CREDITO_ICMS_BASE'
      Precision = 18
      Size = 3
    end
    object SDS_NotasFiscaisItensPMARGEM: TSingleField
      FieldName = 'PMARGEM'
      Origin = 'PMARGEM'
    end
    object SDS_NotasFiscaisItensPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object SDS_NotasFiscaisItensCODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Origin = 'CODLANCAMENTO'
      Size = 50
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'Exportar para PDF'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 1136
    Top = 128
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 1128
    Top = 200
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 1128
    Top = 264
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 1120
    Top = 328
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 1144
    Top = 392
  end
  object qryNumerador: TFDQuery
    Connection = Coneccao
    Left = 384
    Top = 728
  end
end
