object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 283
  Top = 135
  Height = 494
  Width = 644
  object IBDatabase: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Siace\SIACE.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    AllowStreamedConnected = False
    Left = 80
    Top = 4
  end
  object IBTransaction: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase
    AutoStopAction = saNone
    Left = 152
    Top = 8
  end
  object SQLC: TSQLConnection
    ConnectionName = 'SIACE'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\SIACE\SIACE.GDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 20
    Top = 8
  end
  object DTS_Usuarios: TDataSource
    DataSet = SDS_Usuarios
    Left = 264
    Top = 59
  end
  object SDS_Usuarios: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'SELECT * FROM USUARIOS ORDER BY NOME'
    DataSet.DataSource = DTS_Usuarios
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 282
    Top = 13
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
    Left = 223
    Top = 12
  end
  object DTS_CONFIGURACOES: TDataSource
    DataSet = SDS_CONFIGURACOES
    Left = 456
    Top = 24
  end
  object SDS_CONFIGURACOES: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONFIGURACOES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 368
    Top = 8
    object SDS_CONFIGURACOESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CONFIGURACOESDESCONTO_MAXIMO_FV: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO_FV'
      Precision = 15
      Size = 8
    end
    object SDS_CONFIGURACOESNUMERO_SERIE: TStringField
      FieldName = 'NUMERO_SERIE'
    end
    object SDS_CONFIGURACOESFORM_PEDIDOS: TStringField
      FieldName = 'FORM_PEDIDOS'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESDDIP: TIntegerField
      FieldName = 'DDIP'
    end
    object SDS_CONFIGURACOESDCP: TIntegerField
      FieldName = 'DCP'
    end
    object SDS_CONFIGURACOESJUROS_CHEQUE: TFMTBCDField
      FieldName = 'JUROS_CHEQUE'
      Precision = 15
      Size = 8
    end
    object SDS_CONFIGURACOESDIAS_CARENCIA: TIntegerField
      FieldName = 'DIAS_CARENCIA'
    end
    object SDS_CONFIGURACOESALTERA_PRECOVENDA: TStringField
      FieldName = 'ALTERA_PRECOVENDA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESTIPO_DESCONTOVENDA: TStringField
      FieldName = 'TIPO_DESCONTOVENDA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESREGISTRADORA: TStringField
      FieldName = 'REGISTRADORA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESMSG_CUPOMFISCAL: TStringField
      FieldName = 'MSG_CUPOMFISCAL'
      Size = 250
    end
    object SDS_CONFIGURACOESCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 1
    end
    object SDS_CONFIGURACOESCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 1
    end
    object SDS_CONFIGURACOESBOLETO: TStringField
      FieldName = 'BOLETO'
      Size = 1
    end
    object SDS_CONFIGURACOESDUPLICATA: TStringField
      FieldName = 'DUPLICATA'
      Size = 1
    end
    object SDS_CONFIGURACOESLIMITE_CREDITO: TStringField
      FieldName = 'LIMITE_CREDITO'
      Size = 1
    end
    object SDS_CONFIGURACOESESTOQUE_NEGATIVO: TStringField
      FieldName = 'ESTOQUE_NEGATIVO'
      Size = 1
    end
    object SDS_CONFIGURACOESPESQ_PADRAO: TStringField
      FieldName = 'PESQ_PADRAO'
      Size = 1
    end
    object SDS_CONFIGURACOESIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
    object SDS_CONFIGURACOESCLIENTE_PADRAO: TIntegerField
      FieldName = 'CLIENTE_PADRAO'
    end
    object SDS_CONFIGURACOESLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Size = 1
    end
    object SDS_CONFIGURACOESPRODUTO_PADRAO: TIntegerField
      FieldName = 'PRODUTO_PADRAO'
    end
    object SDS_CONFIGURACOESCUPON_VINCULADO: TStringField
      FieldName = 'CUPON_VINCULADO'
      Size = 1
    end
    object SDS_CONFIGURACOESJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
      Size = 8
    end
    object SDS_CONFIGURACOESOS_PRIORIDADE: TIntegerField
      FieldName = 'OS_PRIORIDADE'
    end
    object SDS_CONFIGURACOESOS_TIPO: TIntegerField
      FieldName = 'OS_TIPO'
    end
    object SDS_CONFIGURACOESOS_STATUS: TIntegerField
      FieldName = 'OS_STATUS'
    end
    object SDS_CONFIGURACOESPRECO_PADRAO: TStringField
      FieldName = 'PRECO_PADRAO'
      Size = 1
    end
    object SDS_CONFIGURACOESMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 8
    end
    object SDS_CONFIGURACOESUSA_FRACAO: TStringField
      FieldName = 'USA_FRACAO'
      Size = 1
    end
    object SDS_CONFIGURACOESIMP_NOTA: TStringField
      FieldName = 'IMP_NOTA'
      Size = 1
    end
    object SDS_CONFIGURACOESTP_DESCONTO: TStringField
      FieldName = 'TP_DESCONTO'
      Size = 1
    end
    object SDS_CONFIGURACOESLIB_PRECO_VENDA: TStringField
      FieldName = 'LIB_PRECO_VENDA'
      Size = 1
    end
    object SDS_CONFIGURACOESDESC_MAXIMO_PERC: TIntegerField
      FieldName = 'DESC_MAXIMO_PERC'
    end
    object SDS_CONFIGURACOESUTILIZA_NFE: TStringField
      FieldName = 'UTILIZA_NFE'
      Size = 1
    end
    object SDS_CONFIGURACOESCOD_PAGTO_PADRAO: TStringField
      FieldName = 'COD_PAGTO_PADRAO'
      Size = 1
    end
    object SDS_CONFIGURACOESIMP_VENDA: TStringField
      FieldName = 'IMP_VENDA'
      Size = 1
    end
    object SDS_CONFIGURACOESLEITOT_SERIAL: TStringField
      FieldName = 'LEITOT_SERIAL'
      Size = 1
    end
    object SDS_CONFIGURACOESCLIENTE_VENDEDOR: TStringField
      FieldName = 'CLIENTE_VENDEDOR'
      Size = 1
    end
    object SDS_CONFIGURACOESDEBITOS_CLIENTE: TStringField
      FieldName = 'DEBITOS_CLIENTE'
      Size = 1
    end
    object SDS_CONFIGURACOESDATA_TRAB: TDateField
      FieldName = 'DATA_TRAB'
    end
    object SDS_CONFIGURACOESNFE_CERTIFICAO: TStringField
      FieldName = 'NFE_CERTIFICAO'
      Size = 60
    end
    object SDS_CONFIGURACOESNFE_SENHA: TStringField
      FieldName = 'NFE_SENHA'
    end
    object SDS_CONFIGURACOESNFE_LOGOMARCA: TStringField
      FieldName = 'NFE_LOGOMARCA'
      Size = 100
    end
    object SDS_CONFIGURACOESNFE_CAMINHO_XML: TStringField
      FieldName = 'NFE_CAMINHO_XML'
      Size = 100
    end
    object SDS_CONFIGURACOESUSA_GAVETA: TStringField
      FieldName = 'USA_GAVETA'
      Size = 1
    end
    object SDS_CONFIGURACOESOBS_FISCO: TStringField
      FieldName = 'OBS_FISCO'
      Size = 200
    end
    object SDS_CONFIGURACOESMODELO_ECF: TStringField
      FieldName = 'MODELO_ECF'
      Size = 1
    end
    object SDS_CONFIGURACOESPREVIEW: TStringField
      FieldName = 'PREVIEW'
      Size = 1
    end
    object SDS_CONFIGURACOESDEFAULT_LOCAL_ORIGEM: TIntegerField
      FieldName = 'DEFAULT_LOCAL_ORIGEM'
    end
    object SDS_CONFIGURACOESDEFAULT_LOCAL_DESTINO: TIntegerField
      FieldName = 'DEFAULT_LOCAL_DESTINO'
    end
    object SDS_CONFIGURACOESDATA_INICIO_ESTOQUE: TDateField
      FieldName = 'DATA_INICIO_ESTOQUE'
    end
    object SDS_CONFIGURACOESCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_CONFIGURACOESCODIGO_LOCAL_ESTOQUE_VENDAS: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE_VENDAS'
    end
    object SDS_CONFIGURACOESLOCAL_BACKUP: TStringField
      FieldName = 'LOCAL_BACKUP'
      Size = 255
    end
    object SDS_CONFIGURACOESTIPO_IMPRESSAO_DANFE: TStringField
      FieldName = 'TIPO_IMPRESSAO_DANFE'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESFORMA_EMISSAO_DANFE: TIntegerField
      FieldName = 'FORMA_EMISSAO_DANFE'
    end
    object SDS_CONFIGURACOESSALVAR_LOG_DANFE: TStringField
      FieldName = 'SALVAR_LOG_DANFE'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESAMBIENTE_DANFE: TStringField
      FieldName = 'AMBIENTE_DANFE'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESSERVIDOR_SMTP: TStringField
      FieldName = 'SERVIDOR_SMTP'
      Size = 100
    end
    object SDS_CONFIGURACOESPORTA_SMTP: TStringField
      FieldName = 'PORTA_SMTP'
      Size = 10
    end
    object SDS_CONFIGURACOESUSUARIO_SMTP: TStringField
      FieldName = 'USUARIO_SMTP'
      Size = 80
    end
    object SDS_CONFIGURACOESSENHA_SMTP: TStringField
      FieldName = 'SENHA_SMTP'
      Size = 60
    end
    object SDS_CONFIGURACOESASSUNTO_EMAIL_DANFE: TStringField
      FieldName = 'ASSUNTO_EMAIL_DANFE'
      Size = 150
    end
    object SDS_CONFIGURACOESSMTP_CONEXAO_SEGURA: TStringField
      FieldName = 'SMTP_CONEXAO_SEGURA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESMENSAGEM_EMAIL_DANFE: TStringField
      FieldName = 'MENSAGEM_EMAIL_DANFE'
      Size = 200
    end
    object SDS_CONFIGURACOESPASTA_CANCELADAS_DANFE: TStringField
      FieldName = 'PASTA_CANCELADAS_DANFE'
      Size = 100
    end
    object SDS_CONFIGURACOESPASTA_INUTILIZADAS_DANFE: TStringField
      FieldName = 'PASTA_INUTILIZADAS_DANFE'
      Size = 100
    end
    object SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE: TStringField
      FieldName = 'PASTA_TRANSMITIDAS_DANFE'
      Size = 100
    end
    object SDS_CONFIGURACOESFROM_SMTP: TStringField
      FieldName = 'FROM_SMTP'
      Size = 100
    end
    object SDS_CONFIGURACOESCAMINHO_ARQUIVOS_PDF: TStringField
      FieldName = 'CAMINHO_ARQUIVOS_PDF'
      Size = 100
    end
    object SDS_CONFIGURACOESESTADO_NFE: TStringField
      FieldName = 'ESTADO_NFE'
      Size = 2
    end
    object SDS_CONFIGURACOESCAMINHO_CERTIFICADO: TStringField
      FieldName = 'CAMINHO_CERTIFICADO'
      Size = 100
    end
    object SDS_CONFIGURACOESCST_CUPON: TStringField
      FieldName = 'CST_CUPON'
      Size = 3
    end
    object SDS_CONFIGURACOESCFOP_CUPON: TStringField
      FieldName = 'CFOP_CUPON'
      Size = 5
    end
    object SDS_CONFIGURACOESTP_DESC: TStringField
      FieldName = 'TP_DESC'
      Size = 1
    end
    object SDS_CONFIGURACOESPROX_LINHA: TStringField
      FieldName = 'PROX_LINHA'
      Size = 1
    end
    object SDS_CONFIGURACOESUSUARIO_FP: TStringField
      FieldName = 'USUARIO_FP'
      Size = 50
    end
    object SDS_CONFIGURACOESSENHA_FP: TStringField
      FieldName = 'SENHA_FP'
    end
    object SDS_CONFIGURACOESUSA_FP: TStringField
      FieldName = 'USA_FP'
      Size = 1
    end
    object SDS_CONFIGURACOESCHS: TStringField
      FieldName = 'CHS'
      Size = 1
    end
  end
  object DTS_Empresa: TDataSource
    DataSet = SDS_Empresa
    Left = 84
    Top = 75
  end
  object SDS_Empresa: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select *  from EMPRESA order by codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 28
    Top = 84
    object SDS_EmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_EmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object SDS_EmpresaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 50
    end
    object SDS_EmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_EmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_EmpresaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_EmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_EmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SDS_EmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object SDS_EmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object SDS_EmpresaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object SDS_EmpresaIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object SDS_EmpresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SDS_EmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object SDS_EmpresaIM: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object SDS_EmpresaLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Size = 1
    end
    object SDS_EmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object SDS_EmpresaCOD_CID_IBGE: TStringField
      FieldName = 'COD_CID_IBGE'
      Size = 10
    end
    object SDS_EmpresaURS_INDEA: TStringField
      FieldName = 'URS_INDEA'
    end
    object SDS_EmpresaULE_INDEA: TStringField
      FieldName = 'ULE_INDEA'
    end
    object SDS_EmpresaMATRICULA_INDEA: TStringField
      FieldName = 'MATRICULA_INDEA'
      Size = 10
    end
    object SDS_EmpresaPROPRIETARIO: TStringField
      FieldName = 'PROPRIETARIO'
      Size = 50
    end
    object SDS_EmpresaRESPONSAVEL_TECINICO: TStringField
      FieldName = 'RESPONSAVEL_TECINICO'
      Size = 50
    end
    object SDS_EmpresaCRMV_N: TStringField
      FieldName = 'CRMV_N'
      Size = 15
    end
    object SDS_EmpresaFLAG_VETERINARIA: TStringField
      FieldName = 'FLAG_VETERINARIA'
      Size = 1
    end
    object SDS_EmpresaREGIME: TStringField
      FieldName = 'REGIME'
      Size = 1
    end
    object SDS_EmpresaALIC_SIMPLES: TFMTBCDField
      FieldName = 'ALIC_SIMPLES'
      Precision = 15
      Size = 2
    end
    object SDS_EmpresaALIC_PIS: TFMTBCDField
      FieldName = 'ALIC_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_EmpresaALIC_COFINS: TFMTBCDField
      FieldName = 'ALIC_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_EmpresaALIC_IRPJ: TFMTBCDField
      FieldName = 'ALIC_IRPJ'
      Precision = 15
      Size = 2
    end
    object SDS_EmpresaALIC_CSLL: TFMTBCDField
      FieldName = 'ALIC_CSLL'
      Precision = 15
      Size = 2
    end
    object SDS_EmpresaSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object SDS_EmpresaNOME_CONTADOR: TStringField
      FieldName = 'NOME_CONTADOR'
      Size = 50
    end
    object SDS_EmpresaCRC_CONTADOR: TStringField
      FieldName = 'CRC_CONTADOR'
      Size = 15
    end
    object SDS_EmpresaENDERECO_CONTADOR: TStringField
      FieldName = 'ENDERECO_CONTADOR'
      Size = 40
    end
    object SDS_EmpresaCEP_CONTADOR: TStringField
      FieldName = 'CEP_CONTADOR'
      FixedChar = True
      Size = 10
    end
    object SDS_EmpresaNUM_CONTADOR: TIntegerField
      FieldName = 'NUM_CONTADOR'
    end
    object SDS_EmpresaBAIRRO_CONTADOR: TStringField
      FieldName = 'BAIRRO_CONTADOR'
      Size = 30
    end
    object SDS_EmpresaCOMPL_CONTADOR: TStringField
      FieldName = 'COMPL_CONTADOR'
      Size = 40
    end
    object SDS_EmpresaFONE_CONTADOR: TStringField
      FieldName = 'FONE_CONTADOR'
      Size = 15
    end
    object SDS_EmpresaFAX_CONTADOR: TStringField
      FieldName = 'FAX_CONTADOR'
      Size = 15
    end
    object SDS_EmpresaEMAIL_CONTADOR: TStringField
      FieldName = 'EMAIL_CONTADOR'
      Size = 15
    end
    object SDS_EmpresaCOD_IBGE_CONTADOR: TStringField
      FieldName = 'COD_IBGE_CONTADOR'
      Size = 7
    end
    object SDS_EmpresaCNPJ_CONTADOR: TStringField
      FieldName = 'CNPJ_CONTADOR'
      FixedChar = True
    end
    object SDS_EmpresaCPF_CONTADOR: TStringField
      FieldName = 'CPF_CONTADOR'
      FixedChar = True
    end
    object SDS_EmpresaCIDADE_CONTADOR: TStringField
      FieldName = 'CIDADE_CONTADOR'
      Size = 40
    end
    object SDS_EmpresaUF_CONTADOR: TStringField
      FieldName = 'UF_CONTADOR'
      Size = 2
    end
    object SDS_EmpresaCPF_RESPONSAVEL: TStringField
      FieldName = 'CPF_RESPONSAVEL'
    end
    object SDS_EmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 44
    end
    object SDS_EmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 18
    end
  end
  object sds_IdSistema: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from ID_CLIENTE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 160
    Top = 79
    object sds_IdSistemaSEQ: TIntegerField
      FieldName = 'SEQ'
      Required = True
    end
    object sds_IdSistemaCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object sds_IdSistemaCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 50
    end
  end
  object Dts_idSistema: TDataSource
    DataSet = sds_IdSistema
    Left = 168
    Top = 128
  end
  object SDS_Clientes: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CLIENTES order by NOME_RS ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 16
    Top = 152
    object SDS_ClientesCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_ClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_ClientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_ClientesCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999-999;1;_'
      FixedChar = True
      Size = 10
    end
    object SDS_ClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object SDS_ClientesNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object SDS_ClientesFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object Sds_clientesBairro: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_ClientesFAX: TStringField
      FieldName = 'FAX'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_ClientesDATACAD: TDateField
      Alignment = taCenter
      FieldName = 'DATACAD'
    end
    object SDS_ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object SDS_ClientesOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_ClientesCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object SDS_ClientesESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object SDS_ClientesRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object SDS_ClientesPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object SDS_ClientesMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object SDS_ClientesNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object SDS_ClientesCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      EditMask = '999.999.999-99;1;_'
      FixedChar = True
    end
    object SDS_ClientesNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object SDS_ClientesTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object SDS_ClientesPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object SDS_ClientesLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object SDS_ClientesPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object SDS_ClientesTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object SDS_ClientesNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object SDS_ClientesCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object SDS_ClientesNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object SDS_ClientesNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object SDS_ClientesTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object SDS_ClientesAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object SDS_ClientesSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object SDS_ClientesTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object SDS_ClientesOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object SDS_ClientesOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object SDS_ClientesNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 12
    end
    object SDS_ClientesBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object SDS_ClientesPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object SDS_ClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_ClientesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_ClientesORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object SDS_ClientesDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object SDS_ClientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object SDS_ClientesNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object SDS_ClientesCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object SDS_ClientesCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object SDS_ClientesDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object SDS_ClientesCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object SDS_ClientesTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_ClientesPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object SDS_ClientesATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_ClientesCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object SDS_ClientesCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object SDS_ClientesCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object SDS_ClientesVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_ClientesTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object SDS_ClientesNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object SDS_ClientesENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object SDS_ClientesENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object SDS_ClientesDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object SDS_ClientesDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object SDS_ClientesRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object SDS_ClientesRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object SDS_ClientesDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object SDS_ClientesFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_ClientesENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object SDS_ClientesCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      EditMask = '99999-999;1;_'
      FixedChar = True
      Size = 10
    end
    object SDS_ClientesCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object SDS_ClientesCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object SDS_ClientesLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_ClientesINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object SDS_ClientesPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_ClientesINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object SDS_ClientesCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object SDS_ClientesCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object SDS_ClientesBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object SDS_ClientesUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object SDS_ClientesNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object SDS_ClientesCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object SDS_ClientesNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object SDS_ClientesNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object SDS_ClientesCOD_IBGE: TStringField
      FieldKind = fkLookup
      FieldName = 'COD_IBGE'
      LookupKeyFields = 'COD_CIDADE'
      LookupResultField = 'COD_IBGE'
      KeyFields = 'COD_CIDADE'
      Size = 10
      Lookup = True
    end
    object SDS_ClientesSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object SDS_ClientesSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object SDS_ClientesSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object SDS_ClientesSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object SDS_ClientesDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object SDS_ClientesCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object SDS_ClientesFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object SDS_ClientesREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object SDS_ClientesENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object SDS_ClientesRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object SDS_ClientesENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object SDS_ClientesRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object SDS_ClientesENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object SDS_ClientesRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object SDS_ClientesENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object SDS_ClientesRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object SDS_ClientesAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object SDS_ClientesAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object SDS_ClientesAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object SDS_ClientesCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      EditMask = '999.999.999-99;1;_'
      FixedChar = True
    end
    object SDS_ClientesCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      EditMask = '000.000.000-00;1;_'
      FixedChar = True
    end
    object SDS_ClientesCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      EditMask = '999.999.999-99;1;_'
      FixedChar = True
    end
    object SDS_ClientesFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object SDS_ClientesCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
    object SDS_ClientesTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Size = 1
    end
    object SDS_ClientesTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Size = 1
    end
  end
  object DTS_Clientes: TDataSource
    DataSet = SDS_Clientes
    Left = 14
    Top = 211
  end
  object Qry_Vendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PEDIDOS order by CODIGO ASC')
    SQLConnection = SQLC
    Left = 544
    Top = 120
    object Qry_VendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_VendasVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object Qry_VendasENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Qry_VendasDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object Qry_VendasDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object Qry_VendasCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Qry_VendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Qry_VendasPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object Qry_VendasSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object Qry_VendasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object Qry_VendasUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object Qry_VendasTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object Qry_VendasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object Qry_VendasCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object Qry_VendasCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object Qry_VendasN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object Qry_VendasN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object Qry_VendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Qry_VendasHORA: TTimeField
      FieldName = 'HORA'
    end
    object Qry_VendasVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object Qry_VendasCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object Qry_VendasCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object Qry_VendasCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object Qry_VendasNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object Qry_VendasSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object Qry_VendasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Qry_VendasCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object Qry_VendasRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object Qry_VendasFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object Qry_VendasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Qry_VendasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Qry_VendasN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object Qry_VendasPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 50
    end
    object Qry_VendasQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
      Size = 8
    end
    object Qry_VendasSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
      Size = 8
    end
    object Qry_VendasMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 50
    end
    object Qry_VendasDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object Qry_VendasVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qry_VendasCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object Qry_VendasCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Qry_VendasNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object Qry_VendasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Qry_VendasVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 40
    end
    object Qry_VendasTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object Qry_VendasFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object Qry_VendasMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object Qry_VendasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 50
    end
    object Qry_VendasCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object Qry_VendasPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Size = 1
    end
    object Qry_VendasIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      FixedChar = True
      Size = 15
    end
    object Qry_VendasVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object Qry_VendasKM: TIntegerField
      FieldName = 'KM'
    end
    object Qry_VendasCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Size = 100
    end
    object Qry_VendasCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Size = 30
    end
  end
  object dsp_Vendas: TDataSetProvider
    DataSet = Qry_Vendas
    Left = 536
    Top = 176
  end
  object sds_vendas: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsp_Vendas'
    Left = 600
    Top = 120
    object sds_vendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_vendasVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object sds_vendasDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object sds_vendasDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object sds_vendasCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object sds_vendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object sds_vendasPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object sds_vendasSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sds_vendasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sds_vendasUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object sds_vendasTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object sds_vendasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object sds_vendasCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object sds_vendasCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object sds_vendasN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object sds_vendasN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object sds_vendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_vendasHORA: TTimeField
      FieldName = 'HORA'
    end
    object sds_vendasVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object sds_vendasCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object sds_vendasCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object sds_vendasNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sds_vendasSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object sds_vendasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sds_vendasCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object sds_vendasRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object sds_vendasFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sds_vendasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sds_vendasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sds_vendasN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object sds_vendasPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 50
    end
    object sds_vendasQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
      Size = 8
    end
    object sds_vendasSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
      Size = 8
    end
    object sds_vendasMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 50
    end
    object sds_vendasDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object sds_vendasVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sds_vendasCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object sds_vendasCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object sds_vendasNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object sds_vendasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sds_vendasVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object sds_vendasVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 15
      Size = 2
    end
    object sds_vendasENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 40
    end
    object sds_vendasTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object sds_vendasFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object sds_vendasMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object sds_vendasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 50
    end
    object sds_vendasCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object sds_vendasPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Size = 1
    end
    object sds_vendasIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      FixedChar = True
      Size = 15
    end
    object sds_vendasVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object sds_vendasVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_vendasKM: TIntegerField
      FieldName = 'KM'
    end
    object sds_vendasCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Size = 100
    end
    object sds_vendasCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Size = 30
    end
    object sds_vendasSOMAVALOR_TOTAL: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_TOTAL'
      Active = True
      currency = True
      DisplayFormat = 'R$: ##,##0.00'
      Expression = 'SUM(VALOR_TOTAL)'
    end
    object sds_vendasCOUNT_VENDAS: TAggregateField
      Alignment = taCenter
      FieldName = 'COUNT_VENDAS'
      Active = True
      Expression = 'COUNT(CODIGO)'
    end
    object sds_vendasSOMA_AVISTA: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMA_AVISTA'
      Active = True
      Expression = 'SUM(VALOR_AVISTA)'
    end
    object sds_vendasSoma_prazo: TAggregateField
      FieldName = 'Soma_prazo'
      Active = True
      Expression = 'SUM(VALOR_PRAZO)'
    end
  end
  object Dts_vendas: TDataSource
    DataSet = sds_vendas
    Left = 600
    Top = 168
  end
  object Sds_Vendas_itens: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from PEDIDOS_ITENS order bY Codigo asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = Dts_vendas
    PacketRecords = 0
    Params = <>
    Left = 547
    Top = 230
    object Sds_Vendas_itensCODIGO: TIntegerField
      DisplayLabel = 'Lancamento'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_Vendas_itensCODIGO_ID: TIntegerField
      DisplayLabel = 'Venda'
      DisplayWidth = 10
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object Sds_Vendas_itensITEN: TIntegerField
      DisplayLabel = 'Item'
      DisplayWidth = 10
      FieldName = 'ITEN'
    end
    object Sds_Vendas_itensCODIGO_PROD: TIntegerField
      DisplayLabel = 'Cod. Produto'
      DisplayWidth = 10
      FieldName = 'CODIGO_PROD'
    end
    object Sds_Vendas_itensCODIGO_PRODUTO: TStringField
      DisplayLabel = 'Ean'
      DisplayWidth = 13
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Sds_Vendas_itensDESCRICAO_PRODUTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Sds_Vendas_itensUNIDADE: TStringField
      DisplayLabel = 'Und'
      DisplayWidth = 6
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Sds_Vendas_itensPRECO_UNITARIO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 16
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensDESCONTO: TFMTBCDField
      DisplayLabel = 'Desconto'
      DisplayWidth = 16
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensQUANTIDADE: TFMTBCDField
      DisplayLabel = 'Qtde'
      DisplayWidth = 16
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 8
    end
    object Sds_Vendas_itensPRECO_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 16
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensCOMISSAO: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'COMISSAO'
      Visible = False
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensDEV: TStringField
      DisplayWidth = 1
      FieldName = 'DEV'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Sds_Vendas_itensQNT_DEV: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'QNT_DEV'
      Visible = False
      Precision = 15
      Size = 8
    end
    object Sds_Vendas_itensVAL_DEV: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VAL_DEV'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensENC_FINANCEIRO: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'ENC_FINANCEIRO'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensSIT_TRIBUTARIA: TStringField
      DisplayWidth = 5
      FieldName = 'SIT_TRIBUTARIA'
      Visible = False
      Size = 5
    end
    object Sds_Vendas_itensVENDEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'VENDEDOR'
      Visible = False
    end
    object Sds_Vendas_itensFRACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FRACAO'
      Visible = False
    end
    object Sds_Vendas_itensCOD_NCM: TStringField
      DisplayWidth = 10
      FieldName = 'COD_NCM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object Sds_Vendas_itensPROD_SERV: TStringField
      DisplayWidth = 1
      FieldName = 'PROD_SERV'
      Visible = False
      Size = 1
    end
    object Sds_Vendas_itensPERC_ISS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_ISS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_ISS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_ISS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_ISS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_ISS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensPERC_ICM: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_ICM'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_ICMS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_ICMS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_ICM: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_ICM'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensPERC_IPI: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_IPI'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_IPI: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_IPI'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_IPI: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_IPI'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensPERC_COFINS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_COFINS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_COFINS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_COFINS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_COFINS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_COFINS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensPERC_ICMS_SUBST: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_ICMS_SUBST'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_ICMS_SUBST: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_ICMS_SUBST'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_ICMS_SUBST: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_ICMS_SUBST'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensPERC_PIS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_PIS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_PIS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_PIS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_PIS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_PIS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensIMPRIME: TStringField
      DisplayWidth = 3
      FieldName = 'IMPRIME'
      Visible = False
      Size = 3
    end
    object Sds_Vendas_itensCOD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_EMPRESA'
      Required = True
      Visible = False
    end
  end
  object dts_vendas_itens: TDataSource
    DataSet = Sds_Vendas_itens
    Left = 633
    Top = 216
  end
  object DTS_Cheques: TDataSource
    DataSet = SDS_Cheques
    Left = 624
    Top = 274
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
    Left = 550
    Top = 282
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
      Size = 8
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
    Left = 616
    Top = 8
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
      Size = 8
    end
    object sds_nfe_itensVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
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
  end
  object dts_nfe_itens: TDataSource
    DataSet = sds_nfe_itens
    Left = 616
    Top = 56
  end
  object SDS_NFE: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from NFE_NOTA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 544
    Top = 8
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
      Size = 8
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
      Size = 8
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
  end
  object DTS_NFE: TDataSource
    DataSet = SDS_NFE
    Left = 544
    Top = 56
  end
  object Qry_orcamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ORCAMENTOS order by CODIGO ASC')
    SQLConnection = SQLC
    Left = 248
    Top = 277
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
  end
  object Dts_orcamento: TDataSource
    DataSet = sds_orcamento
    Left = 316
    Top = 283
  end
  object sds_orcamento: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsp_orcamento'
    Left = 240
    Top = 328
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
    object sds_orcamentoSOMAVALOR_TOTAL: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_TOTAL'
      Active = True
      currency = True
      DisplayFormat = 'R$: ##,##0.00'
      Expression = 'SUM(VALOR_TOTAL)'
    end
    object sds_orcamentoCOUNT_VENDAS: TAggregateField
      Alignment = taCenter
      FieldName = 'COUNT_VENDAS'
      Active = True
      Expression = 'COUNT(CODIGO)'
    end
  end
  object dsp_orcamento: TDataSetProvider
    DataSet = Qry_orcamento
    Left = 311
    Top = 336
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.Salvar = True
    Configuracoes.Geral.PathSalvar = 'C:\siace\nfe\'
    Configuracoes.Geral.PathSchemas = 'c:\siace\schemas'
    Configuracoes.WebServices.UF = 'MT'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.IntervaloTentativas = 1000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.Arquivos.Salvar = True
    Configuracoes.Arquivos.PastaMensal = True
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.PathNFe = 'C:\Siace\Nfe\Enviadas'
    Configuracoes.Arquivos.PathCan = 'C:\Siace\Nfe\Canceladas'
    Configuracoes.Arquivos.PathInu = 'C:\Siace\Nfe\Inutilizadas'
    Configuracoes.Arquivos.PathDPEC = 'C:\Siace\Nfe\Depec'
    Configuracoes.Arquivos.PathCCe = 'C:\Siace\Nfe'
    DANFE = ACBrNFeDANFeRL1
    Left = 462
    Top = 201
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    ACBrNFe = ACBrNFe1
    PathPDF = 'C:\Siace\nfe\pdf\'
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimirDescPorc = False
    ImprimirTotalLiquido = False
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    CasasDecimais._qCom = 4
    CasasDecimais._vUnCom = 4
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    LarguraCodProd = 54
    FonteDANFE = fdArial
    TamanhoFonte_RazaoSocial = 8
    ExibirEAN = False
    Left = 472
    Top = 256
  end
  object Sds_Transportador: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from TRANSPORTADOR'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 364
    Top = 104
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
    Left = 460
    Top = 80
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
    Left = 454
    Top = 136
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
    Left = 233
    Top = 399
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
      Size = 2
    end
    object Sds_orcamento_itensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 8
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
  object Dts_orcamento_itens: TDataSource
    DataSet = Sds_orcamento_itens
    Left = 365
    Top = 413
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
    Left = 62
    Top = 360
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
    Left = 30
    Top = 400
  end
  object SDS_CondPagamento: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONDICAO_PAGAMENTO ORDER BY DESCRICAO asc'
    DataSet.DataSource = DTS_CondPagamento
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 24
    Top = 272
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
      Size = 8
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
      Size = 8
    end
    object SDS_CondPagamentoPG_ECF: TStringField
      FieldName = 'PG_ECF'
      Size = 2
    end
  end
  object DTS_CondPagamento: TDataSource
    DataSet = SDS_CondPagamento
    Left = 32
    Top = 315
  end
end
