object DM1: TDM1
  OldCreateOrder = False
  Left = 408
  Top = 226
  Height = 485
  Width = 725
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\Siace\Siac-Enterprise\POSTO\Banco\SIACE-POSTO.GDB'
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
    Left = 512
    Top = 240
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
    Left = 416
    Top = 240
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
  object DstBomba: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BOMBA'
      'where'
      '  COD_BOMBA = :OLD_COD_BOMBA')
    InsertSQL.Strings = (
      'insert into BOMBA'
      
        '  (COD_FRENTISTA, ID_BOMBA, QNT_BICO, PICPATH, ULTATUAL, ULTATUA' +
        'LCODSETOR, '
      '   ULTATUALCODSETORUSER, DATAHORA, ENABLED, OBS, AUTO_AUTORIZA)'
      'values'
      
        '  (:COD_FRENTISTA, :ID_BOMBA, :QNT_BICO, :PICPATH, :ULTATUAL, :U' +
        'LTATUALCODSETOR, '
      
        '   :ULTATUALCODSETORUSER, :DATAHORA, :ENABLED, :OBS, :AUTO_AUTOR' +
        'IZA)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_BOMBA,'
      '  COD_FRENTISTA,'
      '  ID_BOMBA,'
      '  QNT_BICO,'
      '  PICPATH,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER,'
      '  DATAHORA,'
      '  ENABLED,'
      '  OBS,'
      '  AUTO_AUTORIZA'
      'from BOMBA '
      'where'
      '  COD_BOMBA = :COD_BOMBA')
    SelectSQL.Strings = (
      'select * from BOMBA'
      'order by ID_BOMBA')
    ModifySQL.Strings = (
      'update BOMBA'
      'set'
      '  COD_FRENTISTA = :COD_FRENTISTA,'
      '  ID_BOMBA = :ID_BOMBA,'
      '  QNT_BICO = :QNT_BICO,'
      '  PICPATH = :PICPATH,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  DATAHORA = :DATAHORA,'
      '  ENABLED = :ENABLED,'
      '  OBS = :OBS,'
      '  AUTO_AUTORIZA = :AUTO_AUTORIZA'
      'where'
      '  COD_BOMBA = :OLD_COD_BOMBA')
    GeneratorField.ApplyEvent = gamOnServer
    Left = 104
    Top = 8
  end
  object DstBico: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BICO'
      'where'
      '  COD_BICO = :OLD_COD_BICO')
    InsertSQL.Strings = (
      'insert into BICO'
      
        '  (COD_BOMBA, COD_FRENTISTA, COD_PRODUTOS, DATAHORA, ENABLED, CO' +
        'D_TANQUE, '
      
        '   ULTATUAL, ID_BICO, OBS, ULTATUALCODSETOR, ULTATUALCODSETORUSE' +
        'R)'
      'values'
      
        '  (:COD_BOMBA, :COD_FRENTISTA, :COD_PRODUTOS, :DATAHORA, :ENABLE' +
        'D, :COD_TANQUE, '
      
        '   :ULTATUAL, :ID_BICO, :OBS, :ULTATUALCODSETOR, :ULTATUALCODSET' +
        'ORUSER)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_BICO,'
      '  COD_BOMBA,'
      '  COD_TANQUE,'
      '  COD_FRENTISTA,'
      '  ID_BICO,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER,'
      '  COD_PRODUTOS,'
      '  DATAHORA,'
      '  ENABLED,'
      '  OBS'
      'from BICO '
      'where'
      '  COD_BICO = :COD_BICO')
    SelectSQL.Strings = (
      
        'select BICO.COD_BICO, BICO.COD_BOMBA, BICO.COD_FRENTISTA, BICO.C' +
        'OD_PRODUTOS, BICO.DATAHORA, BICO.ENABLED, BICO.COD_TANQUE, BICO.' +
        'ULTATUAL, BICO.ID_BICO, BICO.OBS, BICO.ULTATUALCODSETOR, BICO.UL' +
        'TATUALCODSETORUSER, PRODUTOS.NOME from BICO'
      
        'left outer join PRODUTOS on (BICO.COD_PRODUTOS = PRODUTOS.COD_PR' +
        'ODUTOS)'
      'where'
      'COD_BOMBA= :COD_BOMBA'
      'order by ID_BICO'
      '')
    ModifySQL.Strings = (
      'update BICO'
      'set'
      '  COD_BOMBA = :COD_BOMBA,'
      '  COD_FRENTISTA = :COD_FRENTISTA,'
      '  COD_PRODUTOS = :COD_PRODUTOS,'
      '  DATAHORA = :DATAHORA,'
      '  ENABLED = :ENABLED,'
      '  COD_TANQUE = :COD_TANQUE,'
      '  ULTATUAL = :ULTATUAL,'
      '  ID_BICO = :ID_BICO,'
      '  OBS = :OBS,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER'
      'where'
      '  COD_BICO = :OLD_COD_BICO')
    DataSource = BicoCadFrm.DtsQryBomba
    Left = 104
    Top = 64
  end
  object DstFrentista: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FRENTISTA'
      'where'
      '  COD_FRENTISTA = :OLD_COD_FRENTISTA')
    InsertSQL.Strings = (
      'insert into FRENTISTA'
      
        '  (ID_FRENTISTA, NOME, COMISSAO, PICPATH, ULTATUAL, ULTATUALCODS' +
        'ETOR, ULTATUALCODSETORUSER, '
      '   DATAHORA, ENABLED, OBS)'
      'values'
      
        '  (:ID_FRENTISTA, :NOME, :COMISSAO, :PICPATH, :ULTATUAL, :ULTATU' +
        'ALCODSETOR, '
      '   :ULTATUALCODSETORUSER, :DATAHORA, :ENABLED, :OBS)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_FRENTISTA,'
      '  ID_FRENTISTA,'
      '  NOME,'
      '  COMISSAO,'
      '  PICPATH,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER,'
      '  DATAHORA,'
      '  ENABLED,'
      '  OBS'
      'from FRENTISTA '
      'where'
      '  COD_FRENTISTA = :COD_FRENTISTA')
    SelectSQL.Strings = (
      'select * from FRENTISTA')
    ModifySQL.Strings = (
      'update FRENTISTA'
      'set'
      '  ID_FRENTISTA = :ID_FRENTISTA,'
      '  NOME = :NOME,'
      '  COMISSAO = :COMISSAO,'
      '  PICPATH = :PICPATH,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  DATAHORA = :DATAHORA,'
      '  ENABLED = :ENABLED,'
      '  OBS = :OBS'
      'where'
      '  COD_FRENTISTA = :OLD_COD_FRENTISTA')
    Left = 104
    Top = 120
    object DstFrentistaCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'FRENTISTA.COD_FRENTISTA'
      Required = True
    end
    object DstFrentistaID_FRENTISTA: TIntegerField
      FieldName = 'ID_FRENTISTA'
      Origin = 'FRENTISTA.ID_FRENTISTA'
      Required = True
    end
    object DstFrentistaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'FRENTISTA.NOME'
      Size = 100
    end
    object DstFrentistaCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'FRENTISTA.COMISSAO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstFrentistaPICPATH: TIBStringField
      FieldName = 'PICPATH'
      Origin = 'FRENTISTA.PICPATH'
      Size = 255
    end
    object DstFrentistaULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'FRENTISTA.ULTATUAL'
    end
    object DstFrentistaULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'FRENTISTA.ULTATUALCODSETOR'
    end
    object DstFrentistaULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'FRENTISTA.ULTATUALCODSETORUSER'
    end
    object DstFrentistaDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'FRENTISTA.DATAHORA'
    end
    object DstFrentistaENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'FRENTISTA.ENABLED'
    end
    object DstFrentistaOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'FRENTISTA.OBS'
      Size = 257
    end
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
  object DstProduto: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOS'
      'where'
      '  COD_PRODUTOS = :OLD_COD_PRODUTOS')
    InsertSQL.Strings = (
      'insert into PRODUTOS'
      
        '  (COD_ECF, DATAHORA, CL_FIS, S_TRIB, APR_EMBALAGEM, ULT_COMPRA,' +
        ' APR_QUANT, '
      
        '   EST_IDEAL, EST_ATUAL, VALOR_LUCRO, PRC_VENDA, VALOR_FRETE, PR' +
        'M_QUANT, '
      
        '   PRM_PRC, REFERENCIA, EST_MIN, VALOR_COMISSAO, COD_SUBGRUPOP, ' +
        'COD_GRUPOP, '
      
        '   PIC_PATH, NOME, OBS, COD_CLI_FORNECEDOR, COD_CLI_FABRICANTE, ' +
        'COD_CLI_DISTRIBUIDOR, '
      
        '   COD_CLI_VENDEDOR, ENABLE_NUMSERIE, PRC_CUSTO, ENABLED, ULTATU' +
        'AL, ULTATUALCODSETOR, '
      
        '   ULTATUALCODSETORUSER, APR_UND, BASE_ICMS_SUBST, REDUCAO_BASE_' +
        'ICMS, CODIGO_NCM, '
      
        '   COR, PESO_MEDIO, PESO_DESVIO_PADRAO, TARA_TUBO, PESO_LIQUIDO,' +
        ' PESO_BRUTO, '
      
        '   PESO_TOTAL, ALIQUOTA_ICMS, ALIQUOTA_IPI, ALIQUOTA_ICMS_SUBST,' +
        ' TIPO_PRODUTO, '
      '   ID_PRODUTOS)'
      'values'
      
        '  (:COD_ECF, :DATAHORA, :CL_FIS, :S_TRIB, :APR_EMBALAGEM, :ULT_C' +
        'OMPRA, '
      
        '   :APR_QUANT, :EST_IDEAL, :EST_ATUAL, :VALOR_LUCRO, :PRC_VENDA,' +
        ' :VALOR_FRETE, '
      
        '   :PRM_QUANT, :PRM_PRC, :REFERENCIA, :EST_MIN, :VALOR_COMISSAO,' +
        ' :COD_SUBGRUPOP, '
      
        '   :COD_GRUPOP, :PIC_PATH, :NOME, :OBS, :COD_CLI_FORNECEDOR, :CO' +
        'D_CLI_FABRICANTE, '
      
        '   :COD_CLI_DISTRIBUIDOR, :COD_CLI_VENDEDOR, :ENABLE_NUMSERIE, :' +
        'PRC_CUSTO, '
      
        '   :ENABLED, :ULTATUAL, :ULTATUALCODSETOR, :ULTATUALCODSETORUSER' +
        ', :APR_UND, '
      
        '   :BASE_ICMS_SUBST, :REDUCAO_BASE_ICMS, :CODIGO_NCM, :COR, :PES' +
        'O_MEDIO, '
      
        '   :PESO_DESVIO_PADRAO, :TARA_TUBO, :PESO_LIQUIDO, :PESO_BRUTO, ' +
        ':PESO_TOTAL, '
      
        '   :ALIQUOTA_ICMS, :ALIQUOTA_IPI, :ALIQUOTA_ICMS_SUBST, :TIPO_PR' +
        'ODUTO, '
      '   :ID_PRODUTOS)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PRODUTOS,'
      '  COD_ECF,'
      '  DATAHORA,'
      '  CL_FIS,'
      '  S_TRIB,'
      '  APR_EMBALAGEM,'
      '  ULT_COMPRA,'
      '  APR_QUANT,'
      '  EST_IDEAL,'
      '  EST_ATUAL,'
      '  VALOR_LUCRO,'
      '  PRC_VENDA,'
      '  VALOR_FRETE,'
      '  PRM_QUANT,'
      '  PRM_PRC,'
      '  REFERENCIA,'
      '  EST_MIN,'
      '  VALOR_COMISSAO,'
      '  COD_SUBGRUPOP,'
      '  COD_GRUPOP,'
      '  PIC_PATH,'
      '  NOME,'
      '  OBS,'
      '  COD_CLI_FORNECEDOR,'
      '  COD_CLI_FABRICANTE,'
      '  COD_CLI_DISTRIBUIDOR,'
      '  COD_CLI_VENDEDOR,'
      '  ENABLE_NUMSERIE,'
      '  PRC_CUSTO,'
      '  ENABLED,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER,'
      '  APR_UND,'
      '  BASE_ICMS_SUBST,'
      '  REDUCAO_BASE_ICMS,'
      '  CODIGO_NCM,'
      '  COR,'
      '  PESO_MEDIO,'
      '  PESO_DESVIO_PADRAO,'
      '  TARA_TUBO,'
      '  PESO_LIQUIDO,'
      '  PESO_BRUTO,'
      '  PESO_TOTAL,'
      '  ALIQUOTA_ICMS,'
      '  ALIQUOTA_IPI,'
      '  ALIQUOTA_ICMS_SUBST,'
      '  TIPO_PRODUTO,'
      '  ID_PRODUTOS'
      'from PRODUTOS '
      'where'
      '  COD_PRODUTOS = :COD_PRODUTOS')
    SelectSQL.Strings = (
      'select * from PRODUTOS'
      'where TIPO_PRODUTO = 0'
      'order by NOME')
    ModifySQL.Strings = (
      'update PRODUTOS'
      'set'
      '  COD_ECF = :COD_ECF,'
      '  DATAHORA = :DATAHORA,'
      '  CL_FIS = :CL_FIS,'
      '  S_TRIB = :S_TRIB,'
      '  APR_EMBALAGEM = :APR_EMBALAGEM,'
      '  ULT_COMPRA = :ULT_COMPRA,'
      '  APR_QUANT = :APR_QUANT,'
      '  EST_IDEAL = :EST_IDEAL,'
      '  EST_ATUAL = :EST_ATUAL,'
      '  VALOR_LUCRO = :VALOR_LUCRO,'
      '  PRC_VENDA = :PRC_VENDA,'
      '  VALOR_FRETE = :VALOR_FRETE,'
      '  PRM_QUANT = :PRM_QUANT,'
      '  PRM_PRC = :PRM_PRC,'
      '  REFERENCIA = :REFERENCIA,'
      '  EST_MIN = :EST_MIN,'
      '  VALOR_COMISSAO = :VALOR_COMISSAO,'
      '  COD_SUBGRUPOP = :COD_SUBGRUPOP,'
      '  COD_GRUPOP = :COD_GRUPOP,'
      '  PIC_PATH = :PIC_PATH,'
      '  NOME = :NOME,'
      '  OBS = :OBS,'
      '  COD_CLI_FORNECEDOR = :COD_CLI_FORNECEDOR,'
      '  COD_CLI_FABRICANTE = :COD_CLI_FABRICANTE,'
      '  COD_CLI_DISTRIBUIDOR = :COD_CLI_DISTRIBUIDOR,'
      '  COD_CLI_VENDEDOR = :COD_CLI_VENDEDOR,'
      '  ENABLE_NUMSERIE = :ENABLE_NUMSERIE,'
      '  PRC_CUSTO = :PRC_CUSTO,'
      '  ENABLED = :ENABLED,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  APR_UND = :APR_UND,'
      '  BASE_ICMS_SUBST = :BASE_ICMS_SUBST,'
      '  REDUCAO_BASE_ICMS = :REDUCAO_BASE_ICMS,'
      '  CODIGO_NCM = :CODIGO_NCM,'
      '  COR = :COR,'
      '  PESO_MEDIO = :PESO_MEDIO,'
      '  PESO_DESVIO_PADRAO = :PESO_DESVIO_PADRAO,'
      '  TARA_TUBO = :TARA_TUBO,'
      '  PESO_LIQUIDO = :PESO_LIQUIDO,'
      '  PESO_BRUTO = :PESO_BRUTO,'
      '  PESO_TOTAL = :PESO_TOTAL,'
      '  ALIQUOTA_ICMS = :ALIQUOTA_ICMS,'
      '  ALIQUOTA_IPI = :ALIQUOTA_IPI,'
      '  ALIQUOTA_ICMS_SUBST = :ALIQUOTA_ICMS_SUBST,'
      '  TIPO_PRODUTO = :TIPO_PRODUTO,'
      '  ID_PRODUTOS = :ID_PRODUTOS'
      'where'
      '  COD_PRODUTOS = :OLD_COD_PRODUTOS')
    Left = 104
    Top = 176
    object DstProdutoCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'PRODUTOS.COD_PRODUTOS'
      Required = True
    end
    object DstProdutoCOD_ECF: TIntegerField
      FieldName = 'COD_ECF'
      Origin = 'PRODUTOS.COD_ECF'
    end
    object DstProdutoDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'PRODUTOS.DATAHORA'
    end
    object DstProdutoCL_FIS: TIBStringField
      FieldName = 'CL_FIS'
      Origin = 'PRODUTOS.CL_FIS'
      Size = 15
    end
    object DstProdutoS_TRIB: TIBStringField
      FieldName = 'S_TRIB'
      Origin = 'PRODUTOS.S_TRIB'
      Size = 15
    end
    object DstProdutoAPR_EMBALAGEM: TIBStringField
      FieldName = 'APR_EMBALAGEM'
      Origin = 'PRODUTOS.APR_EMBALAGEM'
      Size = 30
    end
    object DstProdutoULT_COMPRA: TDateTimeField
      FieldName = 'ULT_COMPRA'
      Origin = 'PRODUTOS.ULT_COMPRA'
    end
    object DstProdutoAPR_QUANT: TIBBCDField
      FieldName = 'APR_QUANT'
      Origin = 'PRODUTOS.APR_QUANT'
      Precision = 18
      Size = 3
    end
    object DstProdutoEST_IDEAL: TIBBCDField
      FieldName = 'EST_IDEAL'
      Origin = 'PRODUTOS.EST_IDEAL'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoEST_ATUAL: TIBBCDField
      FieldName = 'EST_ATUAL'
      Origin = 'PRODUTOS.EST_ATUAL'
      Required = True
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 3
    end
    object DstProdutoVALOR_LUCRO: TIBBCDField
      FieldName = 'VALOR_LUCRO'
      Origin = 'PRODUTOS.VALOR_LUCRO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = 'PRODUTOS.PRC_VENDA'
      Required = True
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 3
    end
    object DstProdutoVALOR_FRETE: TIBBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'PRODUTOS.VALOR_FRETE'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoPRM_QUANT: TIBBCDField
      FieldName = 'PRM_QUANT'
      Origin = 'PRODUTOS.PRM_QUANT'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoPRM_PRC: TIBBCDField
      FieldName = 'PRM_PRC'
      Origin = 'PRODUTOS.PRM_PRC'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = 'PRODUTOS.REFERENCIA'
      Required = True
      Size = 30
    end
    object DstProdutoEST_MIN: TIBBCDField
      FieldName = 'EST_MIN'
      Origin = 'PRODUTOS.EST_MIN'
      Required = True
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoVALOR_COMISSAO: TIBBCDField
      FieldName = 'VALOR_COMISSAO'
      Origin = 'PRODUTOS.VALOR_COMISSAO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoCOD_SUBGRUPOP: TIntegerField
      FieldName = 'COD_SUBGRUPOP'
      Origin = 'PRODUTOS.COD_SUBGRUPOP'
    end
    object DstProdutoCOD_GRUPOP: TIntegerField
      FieldName = 'COD_GRUPOP'
      Origin = 'PRODUTOS.COD_GRUPOP'
    end
    object DstProdutoPIC_PATH: TIBStringField
      FieldName = 'PIC_PATH'
      Origin = 'PRODUTOS.PIC_PATH'
      Size = 255
    end
    object DstProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Size = 50
    end
    object DstProdutoOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'PRODUTOS.OBS'
      Size = 257
    end
    object DstProdutoCOD_CLI_FORNECEDOR: TIntegerField
      FieldName = 'COD_CLI_FORNECEDOR'
      Origin = 'PRODUTOS.COD_CLI_FORNECEDOR'
    end
    object DstProdutoCOD_CLI_FABRICANTE: TIntegerField
      FieldName = 'COD_CLI_FABRICANTE'
      Origin = 'PRODUTOS.COD_CLI_FABRICANTE'
    end
    object DstProdutoCOD_CLI_DISTRIBUIDOR: TIntegerField
      FieldName = 'COD_CLI_DISTRIBUIDOR'
      Origin = 'PRODUTOS.COD_CLI_DISTRIBUIDOR'
    end
    object DstProdutoCOD_CLI_VENDEDOR: TIntegerField
      FieldName = 'COD_CLI_VENDEDOR'
      Origin = 'PRODUTOS.COD_CLI_VENDEDOR'
    end
    object DstProdutoENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'PRODUTOS.ENABLE_NUMSERIE'
      Required = True
    end
    object DstProdutoPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = 'PRODUTOS.PRC_CUSTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object DstProdutoENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'PRODUTOS.ENABLED'
    end
    object DstProdutoAPR_UND: TIBStringField
      FieldName = 'APR_UND'
      Origin = 'PRODUTOS.APR_UND'
      Required = True
      Size = 6
    end
    object DstProdutoULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'PRODUTOS.ULTATUAL'
    end
    object DstProdutoULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'PRODUTOS.ULTATUALCODSETOR'
    end
    object DstProdutoULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'PRODUTOS.ULTATUALCODSETORUSER'
    end
    object DstProdutoBASE_ICMS_SUBST: TIBBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'PRODUTOS.BASE_ICMS_SUBST'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoREDUCAO_BASE_ICMS: TIBBCDField
      FieldName = 'REDUCAO_BASE_ICMS'
      Origin = 'PRODUTOS.REDUCAO_BASE_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoCODIGO_NCM: TIBStringField
      FieldName = 'CODIGO_NCM'
      Origin = 'PRODUTOS.CODIGO_NCM'
      Size = 15
    end
    object DstProdutoPESO_MEDIO: TIBBCDField
      FieldName = 'PESO_MEDIO'
      Origin = 'PRODUTOS.PESO_MEDIO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoPESO_DESVIO_PADRAO: TIBBCDField
      FieldName = 'PESO_DESVIO_PADRAO'
      Origin = 'PRODUTOS.PESO_DESVIO_PADRAO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoTARA_TUBO: TIBBCDField
      FieldName = 'TARA_TUBO'
      Origin = 'PRODUTOS.TARA_TUBO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoPESO_LIQUIDO: TIBBCDField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PRODUTOS.PESO_LIQUIDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoPESO_BRUTO: TIBBCDField
      FieldName = 'PESO_BRUTO'
      Origin = 'PRODUTOS.PESO_BRUTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoPESO_TOTAL: TIBBCDField
      FieldName = 'PESO_TOTAL'
      Origin = 'PRODUTOS.PESO_TOTAL'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoALIQUOTA_ICMS: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = 'PRODUTOS.ALIQUOTA_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoALIQUOTA_IPI: TIBBCDField
      FieldName = 'ALIQUOTA_IPI'
      Origin = 'PRODUTOS.ALIQUOTA_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoALIQUOTA_ICMS_SUBST: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS_SUBST'
      Origin = 'PRODUTOS.ALIQUOTA_ICMS_SUBST'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstProdutoTIPO_PRODUTO: TIntegerField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'PRODUTOS.TIPO_PRODUTO'
    end
    object DstProdutoID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'PRODUTOS.ID_PRODUTOS'
    end
    object DstProdutoCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'PRODUTOS.COR'
    end
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
    Left = 432
    Top = 8
    object DstSintegra_InfoCOD_SINTEGRA_INFO: TIntegerField
      FieldName = 'COD_SINTEGRA_INFO'
      Origin = 'SINTEGRA_INFO.COD_SINTEGRA_INFO'
      Required = True
    end
    object DstSintegra_InfoCGC: TIBStringField
      FieldName = 'CGC'
      Origin = 'SINTEGRA_INFO.CGC'
      Size = 50
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
    Left = 336
    Top = 120
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
    Left = 432
    Top = 64
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
  object QryTipoFrm: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select * from TIPOFRM'
      'order by NOME')
    Left = 320
    Top = 240
    object QryTipoFrmCODTIPOFRM: TIntegerField
      FieldName = 'CODTIPOFRM'
      Origin = 'TIPOFRM.CODTIPOFRM'
      Required = True
    end
    object QryTipoFrmDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'TIPOFRM.DATAHORA'
    end
    object QryTipoFrmCODACAO: TIntegerField
      FieldName = 'CODACAO'
      Origin = 'TIPOFRM.CODACAO'
      Required = True
    end
    object QryTipoFrmOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'TIPOFRM.OBS'
      Size = 100
    end
    object QryTipoFrmNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'TIPOFRM.NOME'
      Required = True
      Size = 30
    end
  end
  object DstContato: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CONTATO'
      'where'
      '  CODCONT = :OLD_CODCONT')
    InsertSQL.Strings = (
      'insert into CONTATO'
      
        '  (CODCLI, ENDERECO, CIDADE, UF, CARGO, DATAHORA, CEP, PICPATH, ' +
        'OBS, NOME, '
      
        '   TIPO, CODCLASSE, CONDICAO, ULTCOMPRAVALOR, ULTCOMPRADATA, DAT' +
        'ANASC, '
      
        '   RENDA, NEGOCIADO, RAZAOSOCIAL, AREAATUACAO, PROFISSAO, ULTATU' +
        'AL, REFERENCIA, '
      
        '   BAIRRO, CGCCPF, INSCESTRG, DATANASCFUND, ULTATUALCODSETORUSER' +
        ', ULTATUALCODSETOR)'
      'values'
      
        '  (:CODCLI, :ENDERECO, :CIDADE, :UF, :CARGO, :DATAHORA, :CEP, :P' +
        'ICPATH, '
      
        '   :OBS, :NOME, :TIPO, :CODCLASSE, :CONDICAO, :ULTCOMPRAVALOR, :' +
        'ULTCOMPRADATA, '
      
        '   :DATANASC, :RENDA, :NEGOCIADO, :RAZAOSOCIAL, :AREAATUACAO, :P' +
        'ROFISSAO, '
      
        '   :ULTATUAL, :REFERENCIA, :BAIRRO, :CGCCPF, :INSCESTRG, :DATANA' +
        'SCFUND, '
      '   :ULTATUALCODSETORUSER, :ULTATUALCODSETOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCONT,'
      '  CODCLI,'
      '  ENDERECO,'
      '  CIDADE,'
      '  UF,'
      '  EMAIL,'
      '  CARGO,'
      '  FONE,'
      '  FONERES,'
      '  CELULAR,'
      '  RAMAL,'
      '  DATAHORA,'
      '  CEP,'
      '  PICPATH,'
      '  CARTAOCRDT,'
      '  OBS,'
      '  URL,'
      '  NOME,'
      '  TIPO,'
      '  CODCLASSE,'
      '  CONDICAO,'
      '  ULTCOMPRAVALOR,'
      '  ULTCOMPRADATA,'
      '  DATANASC,'
      '  SEXO,'
      '  ESTCIVIL,'
      '  PAIS,'
      '  HABILITA,'
      '  BAIRROCOBR,'
      '  CEPCOBR,'
      '  CIDADECOBR,'
      '  UFCOBR,'
      '  BAIRROENTR,'
      '  CEPENTR,'
      '  CIDADEENTR,'
      '  UFENTR,'
      '  RENDA,'
      '  NEGOCIADO,'
      '  RAZAOSOCIAL,'
      '  PAISCOBR,'
      '  PAISENTR,'
      '  AREAATUACAO,'
      '  PROFISSAO,'
      '  RG,'
      '  CGC,'
      '  CPF,'
      '  ULTATUAL,'
      '  ENDERECOCOBR,'
      '  ENDERECOENTR,'
      '  REFERENCIACOBR,'
      '  REFERENCIAENTR,'
      '  REFERENCIA,'
      '  BAIRRO,'
      '  CGCCPF,'
      '  INSCESTRG,'
      '  DATANASCFUND,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR'
      'from CONTATO '
      'where'
      '  CODCONT = :CODCONT')
    SelectSQL.Strings = (
      'select * from CONTATO where CODCLI =  :codcli'
      'order by CodCont'
      '')
    ModifySQL.Strings = (
      'update CONTATO'
      'set'
      '  CODCLI = :CODCLI,'
      '  ENDERECO = :ENDERECO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CARGO = :CARGO,'
      '  DATAHORA = :DATAHORA,'
      '  CEP = :CEP,'
      '  PICPATH = :PICPATH,'
      '  OBS = :OBS,'
      '  NOME = :NOME,'
      '  TIPO = :TIPO,'
      '  CODCLASSE = :CODCLASSE,'
      '  CONDICAO = :CONDICAO,'
      '  ULTCOMPRAVALOR = :ULTCOMPRAVALOR,'
      '  ULTCOMPRADATA = :ULTCOMPRADATA,'
      '  DATANASC = :DATANASC,'
      '  RENDA = :RENDA,'
      '  NEGOCIADO = :NEGOCIADO,'
      '  RAZAOSOCIAL = :RAZAOSOCIAL,'
      '  AREAATUACAO = :AREAATUACAO,'
      '  PROFISSAO = :PROFISSAO,'
      '  ULTATUAL = :ULTATUAL,'
      '  REFERENCIA = :REFERENCIA,'
      '  BAIRRO = :BAIRRO,'
      '  CGCCPF = :CGCCPF,'
      '  INSCESTRG = :INSCESTRG,'
      '  DATANASCFUND = :DATANASCFUND,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR'
      'where'
      '  CODCONT = :OLD_CODCONT')
    Left = 256
    Top = 240
  end
  object DstCadastro: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CADASTRO'
      'where'
      '  CODCLI = :OLD_CODCLI')
    InsertSQL.Strings = (
      'insert into CADASTRO'
      
        '  (ENDERECO, BAIRRO, REFERENCIA, CIDADE, UF, CEP, CGCCPF, TIPO, ' +
        'CODCLASSE, '
      
        '   CONDICAO, DATAHORA, RENDA, NEGOCIADO, PICPATH, NOME, OBS, RAZ' +
        'AOSOCIAL, '
      
        '   NUMFUNC, AREAATUACAO, CARGO, PROFISSAO, INSCMUN, INSCESTRG, U' +
        'LTCOMPRADATA, '
      
        '   ULTCOMPRAVALOR, DATANASC, ULTATUAL, TIPOPESSOA, CODTIPOPESSOA' +
        ', DATANASCFUND, '
      
        '   ULTATUALCODSETORUSER, ULTATUALCODSETOR, ULTIMO_CONTATO, PROXI' +
        'MO_CONTATO, '
      
        '   RELACIONAMENTO, CODVEND_ULTIMO_CONTATO, VALOR_CREDITO_TOTAL, ' +
        'VALOR_CREDITO_ATUAL, '
      '   BLOQUEADO)'
      'values'
      
        '  (:ENDERECO, :BAIRRO, :REFERENCIA, :CIDADE, :UF, :CEP, :CGCCPF,' +
        ' :TIPO, '
      
        '   :CODCLASSE, :CONDICAO, :DATAHORA, :RENDA, :NEGOCIADO, :PICPAT' +
        'H, :NOME, '
      
        '   :OBS, :RAZAOSOCIAL, :NUMFUNC, :AREAATUACAO, :CARGO, :PROFISSA' +
        'O, :INSCMUN, '
      
        '   :INSCESTRG, :ULTCOMPRADATA, :ULTCOMPRAVALOR, :DATANASC, :ULTA' +
        'TUAL, :TIPOPESSOA, '
      
        '   :CODTIPOPESSOA, :DATANASCFUND, :ULTATUALCODSETORUSER, :ULTATU' +
        'ALCODSETOR, '
      
        '   :ULTIMO_CONTATO, :PROXIMO_CONTATO, :RELACIONAMENTO, :CODVEND_' +
        'ULTIMO_CONTATO, '
      '   :VALOR_CREDITO_TOTAL, :VALOR_CREDITO_ATUAL, :BLOQUEADO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCLI,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  REFERENCIA,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  CGCCPF,'
      '  FONE,'
      '  FAX,'
      '  EMAIL,'
      '  CELULAR,'
      '  TIPO,'
      '  CODCLASSE,'
      '  CONDICAO,'
      '  DATAHORA,'
      '  SEXO,'
      '  ESTCIVIL,'
      '  PAIS,'
      '  HABILITA,'
      '  BAIRROCOBR,'
      '  CEPCOBR,'
      '  CIDADECOBR,'
      '  UFCOBR,'
      '  BAIRROENTR,'
      '  CEPENTR,'
      '  CIDADEENTR,'
      '  UFENTR,'
      '  RENDA,'
      '  NEGOCIADO,'
      '  PICPATH,'
      '  CARTAOCRDT,'
      '  NOME,'
      '  URL,'
      '  OBS,'
      '  RAZAOSOCIAL,'
      '  MATRIZ,'
      '  FILIAL,'
      '  CODCLIMATRIZ,'
      '  PAISCOBR,'
      '  PAISENTR,'
      '  NUMFUNC,'
      '  AREAATUACAO,'
      '  CARGO,'
      '  PROFISSAO,'
      '  INSCMUN,'
      '  INSCESTRG,'
      '  INSCEST,'
      '  RG,'
      '  CGC,'
      '  CPF,'
      '  ULTCOMPRADATA,'
      '  ULTCOMPRAVALOR,'
      '  DATANASC,'
      '  ULTATUAL,'
      '  TIPOPESSOA,'
      '  CODTIPOPESSOA,'
      '  DATAFUND,'
      '  DATANASCFUND,'
      '  ENDERECOCOBR,'
      '  ENDERECOENTR,'
      '  REFERENCIACOBR,'
      '  REFERENCIAENTR,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR,'
      '  ENABLED,'
      '  ULTIMO_CONTATO,'
      '  PROXIMO_CONTATO,'
      '  RELACIONAMENTO,'
      '  CODVEND_ULTIMO_CONTATO,'
      '  VALOR_CREDITO_TOTAL,'
      '  VALOR_CREDITO_ATUAL,'
      '  BLOQUEADO'
      'from CADASTRO '
      'where'
      '  CODCLI = :CODCLI')
    SelectSQL.Strings = (
      'select * from CADASTRO order by CodCli'
      '')
    ModifySQL.Strings = (
      'update CADASTRO'
      'set'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  REFERENCIA = :REFERENCIA,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  CGCCPF = :CGCCPF,'
      '  TIPO = :TIPO,'
      '  CODCLASSE = :CODCLASSE,'
      '  CONDICAO = :CONDICAO,'
      '  DATAHORA = :DATAHORA,'
      '  RENDA = :RENDA,'
      '  NEGOCIADO = :NEGOCIADO,'
      '  PICPATH = :PICPATH,'
      '  NOME = :NOME,'
      '  OBS = :OBS,'
      '  RAZAOSOCIAL = :RAZAOSOCIAL,'
      '  NUMFUNC = :NUMFUNC,'
      '  AREAATUACAO = :AREAATUACAO,'
      '  CARGO = :CARGO,'
      '  PROFISSAO = :PROFISSAO,'
      '  INSCMUN = :INSCMUN,'
      '  INSCESTRG = :INSCESTRG,'
      '  ULTCOMPRADATA = :ULTCOMPRADATA,'
      '  ULTCOMPRAVALOR = :ULTCOMPRAVALOR,'
      '  DATANASC = :DATANASC,'
      '  ULTATUAL = :ULTATUAL,'
      '  TIPOPESSOA = :TIPOPESSOA,'
      '  CODTIPOPESSOA = :CODTIPOPESSOA,'
      '  DATANASCFUND = :DATANASCFUND,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTIMO_CONTATO = :ULTIMO_CONTATO,'
      '  PROXIMO_CONTATO = :PROXIMO_CONTATO,'
      '  RELACIONAMENTO = :RELACIONAMENTO,'
      '  CODVEND_ULTIMO_CONTATO = :CODVEND_ULTIMO_CONTATO,'
      '  VALOR_CREDITO_TOTAL = :VALOR_CREDITO_TOTAL,'
      '  VALOR_CREDITO_ATUAL = :VALOR_CREDITO_ATUAL,'
      '  BLOQUEADO = :BLOQUEADO'
      'where'
      '  CODCLI = :OLD_CODCLI')
    Left = 248
    Top = 8
  end
  object DstSubGrupoP: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from SUBGRUPOP'
      'where'
      '  CODSUBGRUPOP = :OLD_CODSUBGRUPOP')
    InsertSQL.Strings = (
      'insert into SUBGRUPOP'
      
        '  (CODGRUPOP, DATAHORA, PICPATH, OBS, NOME, ULTATUAL, ULTATUALCO' +
        'DSETORUSER, '
      '   ULTATUALCODSETOR)'
      'values'
      
        '  (:CODGRUPOP, :DATAHORA, :PICPATH, :OBS, :NOME, :ULTATUAL, :ULT' +
        'ATUALCODSETORUSER, '
      '   :ULTATUALCODSETOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODSUBGRUPOP,'
      '  CODGRUPOP,'
      '  DATAHORA,'
      '  PICPATH,'
      '  OBS,'
      '  NOME,'
      '  ULTATUAL,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR'
      'from SUBGRUPOP '
      'where'
      '  CODSUBGRUPOP = :CODSUBGRUPOP')
    SelectSQL.Strings = (
      
        'select * from SUBGRUPOP where CodGrupoP = :CodGrupoP  ORDER BY N' +
        'OME')
    ModifySQL.Strings = (
      'update SUBGRUPOP'
      'set'
      '  CODGRUPOP = :CODGRUPOP,'
      '  DATAHORA = :DATAHORA,'
      '  PICPATH = :PICPATH,'
      '  OBS = :OBS,'
      '  NOME = :NOME,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR'
      'where'
      '  CODSUBGRUPOP = :OLD_CODSUBGRUPOP')
    Left = 176
    Top = 240
  end
  object DstCadastroFrm: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    AfterPost = DstCadastroFrmAfterPost
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CADASTROFRM'
      'where'
      '  CODCLIFRM = :OLD_CODCLIFRM')
    InsertSQL.Strings = (
      'insert into CADASTROFRM'
      
        '  (CODCLI, DATAHORA, CODTIPOFRM, OBS, NOME, ULTATUAL, VALOR, ULT' +
        'ATUALCODSETORUSER, '
      '   ULTATUALCODSETOR)'
      'values'
      
        '  (:CODCLI, :DATAHORA, :CODTIPOFRM, :OBS, :NOME, :ULTATUAL, :VAL' +
        'OR, :ULTATUALCODSETORUSER, '
      '   :ULTATUALCODSETOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCLIFRM,'
      '  CODCLI,'
      '  DATAHORA,'
      '  CODTIPOFRM,'
      '  OBS,'
      '  NOME,'
      '  ULTATUAL,'
      '  VALOR,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR'
      'from CADASTROFRM '
      'where'
      '  CODCLIFRM = :CODCLIFRM')
    SelectSQL.Strings = (
      'select * from CADASTROFRM'
      'where'
      'CODCLI = :CODCLI'
      'order by CODTIPOFRM')
    ModifySQL.Strings = (
      'update CADASTROFRM'
      'set'
      '  CODCLI = :CODCLI,'
      '  DATAHORA = :DATAHORA,'
      '  CODTIPOFRM = :CODTIPOFRM,'
      '  OBS = :OBS,'
      '  NOME = :NOME,'
      '  ULTATUAL = :ULTATUAL,'
      '  VALOR = :VALOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR'
      'where'
      '  CODCLIFRM = :OLD_CODCLIFRM')
    Left = 248
    Top = 64
    object DstCadastroFrmCODCLIFRM: TIntegerField
      FieldName = 'CODCLIFRM'
      Origin = 'CADASTROFRM.CODCLIFRM'
      Required = True
    end
    object DstCadastroFrmCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'CADASTROFRM.CODCLI'
      Required = True
    end
    object DstCadastroFrmDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'CADASTROFRM.DATAHORA'
    end
    object DstCadastroFrmCODTIPOFRM: TIntegerField
      FieldName = 'CODTIPOFRM'
      Origin = 'CADASTROFRM.CODTIPOFRM'
      Required = True
    end
    object DstCadastroFrmOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'CADASTROFRM.OBS'
      Size = 100
    end
    object DstCadastroFrmNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CADASTROFRM.NOME'
      Size = 30
    end
    object DstCadastroFrmULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'CADASTROFRM.ULTATUAL'
    end
    object DstCadastroFrmVALOR: TIBStringField
      FieldName = 'VALOR'
      Origin = 'CADASTROFRM.VALOR'
      Required = True
      Size = 50
    end
    object DstCadastroFrmTIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPO'
      LookupDataSet = QryTipoFrm
      LookupKeyFields = 'CODTIPOFRM'
      LookupResultField = 'NOME'
      KeyFields = 'CODTIPOFRM'
      Lookup = True
    end
    object DstCadastroFrmULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'CADASTROFRM.ULTATUALCODSETORUSER'
    end
    object DstCadastroFrmULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'CADASTROFRM.ULTATUALCODSETOR'
    end
  end
  object DstGrupoP: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from GRUPOP'
      'where'
      '  CODGRUPOP = :OLD_CODGRUPOP')
    InsertSQL.Strings = (
      'insert into GRUPOP'
      
        '  (DATAHORA, PICPATH, NOME, OBS, ULTATUAL, ULTATUALCODSETORUSER,' +
        ' ULTATUALCODSETOR)'
      'values'
      
        '  (:DATAHORA, :PICPATH, :NOME, :OBS, :ULTATUAL, :ULTATUALCODSETO' +
        'RUSER, '
      '   :ULTATUALCODSETOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODGRUPOP,'
      '  DATAHORA,'
      '  PICPATH,'
      '  NOME,'
      '  OBS,'
      '  ULTATUAL,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR'
      'from GRUPOP '
      'where'
      '  CODGRUPOP = :CODGRUPOP')
    SelectSQL.Strings = (
      'select * from GRUPOP ORDER BY NOME')
    ModifySQL.Strings = (
      'update GRUPOP'
      'set'
      '  DATAHORA = :DATAHORA,'
      '  PICPATH = :PICPATH,'
      '  NOME = :NOME,'
      '  OBS = :OBS,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR'
      'where'
      '  CODGRUPOP = :OLD_CODGRUPOP')
    Left = 176
    Top = 176
  end
  object DstContatoFrm: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    AfterPost = DstContatoFrmAfterPost
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CONTATOFRM'
      'where'
      '  CODCONTFRM = :OLD_CODCONTFRM')
    InsertSQL.Strings = (
      'insert into CONTATOFRM'
      
        '  (CODCONT, DATAHORA, CODTIPOFRM, OBS, NOME, ULTATUAL, VALOR, UL' +
        'TATUALCODSETORUSER, '
      '   ULTATUALCODSETOR)'
      'values'
      
        '  (:CODCONT, :DATAHORA, :CODTIPOFRM, :OBS, :NOME, :ULTATUAL, :VA' +
        'LOR, :ULTATUALCODSETORUSER, '
      '   :ULTATUALCODSETOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCONTFRM,'
      '  CODCONT,'
      '  DATAHORA,'
      '  CODTIPOFRM,'
      '  OBS,'
      '  NOME,'
      '  ULTATUAL,'
      '  VALOR,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR'
      'from CONTATOFRM '
      'where'
      '  CODCONTFRM = :CODCONTFRM')
    SelectSQL.Strings = (
      'select * from CONTATOFRM'
      'where'
      'CODCONT=:CODCONT'
      'order by CODTIPOFRM')
    ModifySQL.Strings = (
      'update CONTATOFRM'
      'set'
      '  CODCONT = :CODCONT,'
      '  DATAHORA = :DATAHORA,'
      '  CODTIPOFRM = :CODTIPOFRM,'
      '  OBS = :OBS,'
      '  NOME = :NOME,'
      '  ULTATUAL = :ULTATUAL,'
      '  VALOR = :VALOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR'
      'where'
      '  CODCONTFRM = :OLD_CODCONTFRM')
    Left = 256
    Top = 176
    object DstContatoFrmCODCONTFRM: TIntegerField
      FieldName = 'CODCONTFRM'
      Origin = 'CONTATOFRM.CODCONTFRM'
      Required = True
    end
    object DstContatoFrmCODCONT: TIntegerField
      FieldName = 'CODCONT'
      Origin = 'CONTATOFRM.CODCONT'
      Required = True
    end
    object DstContatoFrmDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'CONTATOFRM.DATAHORA'
    end
    object DstContatoFrmCODTIPOFRM: TIntegerField
      FieldName = 'CODTIPOFRM'
      Origin = 'CONTATOFRM.CODTIPOFRM'
      Required = True
    end
    object DstContatoFrmOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'CONTATOFRM.OBS'
      Size = 100
    end
    object DstContatoFrmNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CONTATOFRM.NOME'
      Size = 30
    end
    object DstContatoFrmULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'CONTATOFRM.ULTATUAL'
    end
    object DstContatoFrmVALOR: TIBStringField
      FieldName = 'VALOR'
      Origin = 'CONTATOFRM.VALOR'
      Required = True
      Size = 50
    end
    object DstContatoFrmTIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPO'
      LookupDataSet = QryTipoFrm
      LookupKeyFields = 'CODTIPOFRM'
      LookupResultField = 'NOME'
      KeyFields = 'CODTIPOFRM'
      Lookup = True
    end
    object DstContatoFrmULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'CONTATOFRM.ULTATUALCODSETORUSER'
    end
    object DstContatoFrmULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'CONTATOFRM.ULTATUALCODSETOR'
    end
  end
  object DstClasse: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CLASSE'
      'where'
      '  CODCLASSE = :OLD_CODCLASSE')
    InsertSQL.Strings = (
      'insert into CLASSE'
      
        '  (QNT, DATAHORA, NOME, OBS, ULTATUAL, ULTATUALCODSETOR, ULTATUA' +
        'LCODSETORUSER)'
      'values'
      
        '  (:QNT, :DATAHORA, :NOME, :OBS, :ULTATUAL, :ULTATUALCODSETOR, :' +
        'ULTATUALCODSETORUSER)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCLASSE,'
      '  QNT,'
      '  DATAHORA,'
      '  NOME,'
      '  OBS,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER'
      'from CLASSE '
      'where'
      '  CODCLASSE = :CODCLASSE')
    SelectSQL.Strings = (
      'select * from CLASSE ORDER BY NOME')
    ModifySQL.Strings = (
      'update CLASSE'
      'set'
      '  QNT = :QNT,'
      '  DATAHORA = :DATAHORA,'
      '  NOME = :NOME,'
      '  OBS = :OBS,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER'
      'where'
      '  CODCLASSE = :OLD_CODCLASSE')
    Left = 240
    Top = 120
  end
  object DstTipoFrm: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TIPOFRM'
      'where'
      '  CODTIPOFRM = :OLD_CODTIPOFRM')
    InsertSQL.Strings = (
      'insert into TIPOFRM'
      
        '  (DATAHORA, CODACAO, OBS, NOME, ULTATUAL, ULTATUALCODSETORUSER,' +
        ' ULTATUALCODSETOR, '
      '   ENABLED)'
      'values'
      
        '  (:DATAHORA, :CODACAO, :OBS, :NOME, :ULTATUAL, :ULTATUALCODSETO' +
        'RUSER, '
      '   :ULTATUALCODSETOR, :ENABLED)')
    RefreshSQL.Strings = (
      'Select '
      '  CODTIPOFRM,'
      '  DATAHORA,'
      '  CODACAO,'
      '  OBS,'
      '  NOME,'
      '  ULTATUAL,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR,'
      '  ENABLED'
      'from TIPOFRM '
      'where'
      '  CODTIPOFRM = :CODTIPOFRM')
    SelectSQL.Strings = (
      'select * from TIPOFRM')
    ModifySQL.Strings = (
      'update TIPOFRM'
      'set'
      '  DATAHORA = :DATAHORA,'
      '  CODACAO = :CODACAO,'
      '  OBS = :OBS,'
      '  NOME = :NOME,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ENABLED = :ENABLED'
      'where'
      '  CODTIPOFRM = :OLD_CODTIPOFRM')
    Left = 336
    Top = 8
  end
  object DstProdCombustivel: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOS'
      'where'
      '  COD_PRODUTOS = :OLD_COD_PRODUTOS')
    InsertSQL.Strings = (
      'insert into PRODUTOS'
      
        '  (COD_ECF, DATAHORA, CL_FIS, S_TRIB, APR_EMBALAGEM, ULT_COMPRA,' +
        ' APR_QUANT, '
      
        '   EST_IDEAL, EST_ATUAL, VALOR_LUCRO, PRC_VENDA, VALOR_FRETE, PR' +
        'M_QUANT, '
      
        '   PRM_PRC, REFERENCIA, EST_MIN, VALOR_COMISSAO, COD_SUBGRUPOP, ' +
        'COD_GRUPOP, '
      
        '   PIC_PATH, NOME, OBS, COD_CLI_FORNECEDOR, COD_CLI_FABRICANTE, ' +
        'COD_CLI_DISTRIBUIDOR, '
      
        '   COD_CLI_VENDEDOR, ENABLE_NUMSERIE, PRC_CUSTO, ENABLED, ULTATU' +
        'AL, ULTATUALCODSETOR, '
      
        '   ULTATUALCODSETORUSER, APR_UND, BASE_ICMS_SUBST, REDUCAO_BASE_' +
        'ICMS, CODIGO_NCM, '
      
        '   COR, PESO_MEDIO, PESO_DESVIO_PADRAO, TARA_TUBO, PESO_LIQUIDO,' +
        ' PESO_BRUTO, '
      
        '   PESO_TOTAL, ALIQUOTA_ICMS, ALIQUOTA_IPI, ALIQUOTA_ICMS_SUBST,' +
        ' TIPO_PRODUTO, '
      '   ID_PRODUTOS)'
      'values'
      
        '  (:COD_ECF, :DATAHORA, :CL_FIS, :S_TRIB, :APR_EMBALAGEM, :ULT_C' +
        'OMPRA, '
      
        '   :APR_QUANT, :EST_IDEAL, :EST_ATUAL, :VALOR_LUCRO, :PRC_VENDA,' +
        ' :VALOR_FRETE, '
      
        '   :PRM_QUANT, :PRM_PRC, :REFERENCIA, :EST_MIN, :VALOR_COMISSAO,' +
        ' :COD_SUBGRUPOP, '
      
        '   :COD_GRUPOP, :PIC_PATH, :NOME, :OBS, :COD_CLI_FORNECEDOR, :CO' +
        'D_CLI_FABRICANTE, '
      
        '   :COD_CLI_DISTRIBUIDOR, :COD_CLI_VENDEDOR, :ENABLE_NUMSERIE, :' +
        'PRC_CUSTO, '
      
        '   :ENABLED, :ULTATUAL, :ULTATUALCODSETOR, :ULTATUALCODSETORUSER' +
        ', :APR_UND, '
      
        '   :BASE_ICMS_SUBST, :REDUCAO_BASE_ICMS, :CODIGO_NCM, :COR, :PES' +
        'O_MEDIO, '
      
        '   :PESO_DESVIO_PADRAO, :TARA_TUBO, :PESO_LIQUIDO, :PESO_BRUTO, ' +
        ':PESO_TOTAL, '
      
        '   :ALIQUOTA_ICMS, :ALIQUOTA_IPI, :ALIQUOTA_ICMS_SUBST, :TIPO_PR' +
        'ODUTO, '
      '   :ID_PRODUTOS)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PRODUTOS,'
      '  COD_ECF,'
      '  DATAHORA,'
      '  CL_FIS,'
      '  S_TRIB,'
      '  APR_EMBALAGEM,'
      '  ULT_COMPRA,'
      '  APR_QUANT,'
      '  EST_IDEAL,'
      '  EST_ATUAL,'
      '  VALOR_LUCRO,'
      '  PRC_VENDA,'
      '  VALOR_FRETE,'
      '  PRM_QUANT,'
      '  PRM_PRC,'
      '  REFERENCIA,'
      '  EST_MIN,'
      '  VALOR_COMISSAO,'
      '  COD_SUBGRUPOP,'
      '  COD_GRUPOP,'
      '  PIC_PATH,'
      '  NOME,'
      '  OBS,'
      '  COD_CLI_FORNECEDOR,'
      '  COD_CLI_FABRICANTE,'
      '  COD_CLI_DISTRIBUIDOR,'
      '  COD_CLI_VENDEDOR,'
      '  ENABLE_NUMSERIE,'
      '  PRC_CUSTO,'
      '  ENABLED,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER,'
      '  APR_UND,'
      '  BASE_ICMS_SUBST,'
      '  REDUCAO_BASE_ICMS,'
      '  CODIGO_NCM,'
      '  COR,'
      '  PESO_MEDIO,'
      '  PESO_DESVIO_PADRAO,'
      '  TARA_TUBO,'
      '  PESO_LIQUIDO,'
      '  PESO_BRUTO,'
      '  PESO_TOTAL,'
      '  ALIQUOTA_ICMS,'
      '  ALIQUOTA_IPI,'
      '  ALIQUOTA_ICMS_SUBST,'
      '  TIPO_PRODUTO,'
      '  ID_PRODUTOS'
      'from PRODUTOS '
      'where'
      '  COD_PRODUTOS = :COD_PRODUTOS')
    SelectSQL.Strings = (
      'select * from PRODUTOS'
      'where TIPO_PRODUTO = 1'
      'order by NOME')
    ModifySQL.Strings = (
      'update PRODUTOS'
      'set'
      '  COD_ECF = :COD_ECF,'
      '  DATAHORA = :DATAHORA,'
      '  CL_FIS = :CL_FIS,'
      '  S_TRIB = :S_TRIB,'
      '  APR_EMBALAGEM = :APR_EMBALAGEM,'
      '  ULT_COMPRA = :ULT_COMPRA,'
      '  APR_QUANT = :APR_QUANT,'
      '  EST_IDEAL = :EST_IDEAL,'
      '  EST_ATUAL = :EST_ATUAL,'
      '  VALOR_LUCRO = :VALOR_LUCRO,'
      '  PRC_VENDA = :PRC_VENDA,'
      '  VALOR_FRETE = :VALOR_FRETE,'
      '  PRM_QUANT = :PRM_QUANT,'
      '  PRM_PRC = :PRM_PRC,'
      '  REFERENCIA = :REFERENCIA,'
      '  EST_MIN = :EST_MIN,'
      '  VALOR_COMISSAO = :VALOR_COMISSAO,'
      '  COD_SUBGRUPOP = :COD_SUBGRUPOP,'
      '  COD_GRUPOP = :COD_GRUPOP,'
      '  PIC_PATH = :PIC_PATH,'
      '  NOME = :NOME,'
      '  OBS = :OBS,'
      '  COD_CLI_FORNECEDOR = :COD_CLI_FORNECEDOR,'
      '  COD_CLI_FABRICANTE = :COD_CLI_FABRICANTE,'
      '  COD_CLI_DISTRIBUIDOR = :COD_CLI_DISTRIBUIDOR,'
      '  COD_CLI_VENDEDOR = :COD_CLI_VENDEDOR,'
      '  ENABLE_NUMSERIE = :ENABLE_NUMSERIE,'
      '  PRC_CUSTO = :PRC_CUSTO,'
      '  ENABLED = :ENABLED,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  APR_UND = :APR_UND,'
      '  BASE_ICMS_SUBST = :BASE_ICMS_SUBST,'
      '  REDUCAO_BASE_ICMS = :REDUCAO_BASE_ICMS,'
      '  CODIGO_NCM = :CODIGO_NCM,'
      '  COR = :COR,'
      '  PESO_MEDIO = :PESO_MEDIO,'
      '  PESO_DESVIO_PADRAO = :PESO_DESVIO_PADRAO,'
      '  TARA_TUBO = :TARA_TUBO,'
      '  PESO_LIQUIDO = :PESO_LIQUIDO,'
      '  PESO_BRUTO = :PESO_BRUTO,'
      '  PESO_TOTAL = :PESO_TOTAL,'
      '  ALIQUOTA_ICMS = :ALIQUOTA_ICMS,'
      '  ALIQUOTA_IPI = :ALIQUOTA_IPI,'
      '  ALIQUOTA_ICMS_SUBST = :ALIQUOTA_ICMS_SUBST,'
      '  TIPO_PRODUTO = :TIPO_PRODUTO,'
      '  ID_PRODUTOS = :ID_PRODUTOS'
      'where'
      '  COD_PRODUTOS = :OLD_COD_PRODUTOS')
    Left = 336
    Top = 64
    object IntegerField1: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'PRODUTOS.COD_PRODUTOS'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'COD_ECF'
      Origin = 'PRODUTOS.COD_ECF'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'PRODUTOS.DATAHORA'
    end
    object IBStringField1: TIBStringField
      FieldName = 'CL_FIS'
      Origin = 'PRODUTOS.CL_FIS'
      Size = 15
    end
    object IBStringField2: TIBStringField
      FieldName = 'S_TRIB'
      Origin = 'PRODUTOS.S_TRIB'
      Size = 15
    end
    object IBStringField3: TIBStringField
      FieldName = 'APR_EMBALAGEM'
      Origin = 'PRODUTOS.APR_EMBALAGEM'
      Size = 30
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'ULT_COMPRA'
      Origin = 'PRODUTOS.ULT_COMPRA'
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'APR_QUANT'
      Origin = 'PRODUTOS.APR_QUANT'
      Precision = 18
      Size = 3
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'EST_IDEAL'
      Origin = 'PRODUTOS.EST_IDEAL'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'EST_ATUAL'
      Origin = 'PRODUTOS.EST_ATUAL'
      Required = True
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 3
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'VALOR_LUCRO'
      Origin = 'PRODUTOS.VALOR_LUCRO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = 'PRODUTOS.PRC_VENDA'
      Required = True
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 3
    end
    object IBBCDField6: TIBBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'PRODUTOS.VALOR_FRETE'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField7: TIBBCDField
      FieldName = 'PRM_QUANT'
      Origin = 'PRODUTOS.PRM_QUANT'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField8: TIBBCDField
      FieldName = 'PRM_PRC'
      Origin = 'PRODUTOS.PRM_PRC'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBStringField4: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = 'PRODUTOS.REFERENCIA'
      Required = True
      Size = 30
    end
    object IBBCDField9: TIBBCDField
      FieldName = 'EST_MIN'
      Origin = 'PRODUTOS.EST_MIN'
      Required = True
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField10: TIBBCDField
      FieldName = 'VALOR_COMISSAO'
      Origin = 'PRODUTOS.VALOR_COMISSAO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IntegerField3: TIntegerField
      FieldName = 'COD_SUBGRUPOP'
      Origin = 'PRODUTOS.COD_SUBGRUPOP'
    end
    object IntegerField4: TIntegerField
      FieldName = 'COD_GRUPOP'
      Origin = 'PRODUTOS.COD_GRUPOP'
    end
    object IBStringField5: TIBStringField
      FieldName = 'PIC_PATH'
      Origin = 'PRODUTOS.PIC_PATH'
      Size = 255
    end
    object IBStringField6: TIBStringField
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Size = 50
    end
    object IBStringField7: TIBStringField
      FieldName = 'OBS'
      Origin = 'PRODUTOS.OBS'
      Size = 257
    end
    object IntegerField5: TIntegerField
      FieldName = 'COD_CLI_FORNECEDOR'
      Origin = 'PRODUTOS.COD_CLI_FORNECEDOR'
    end
    object IntegerField6: TIntegerField
      FieldName = 'COD_CLI_FABRICANTE'
      Origin = 'PRODUTOS.COD_CLI_FABRICANTE'
    end
    object IntegerField7: TIntegerField
      FieldName = 'COD_CLI_DISTRIBUIDOR'
      Origin = 'PRODUTOS.COD_CLI_DISTRIBUIDOR'
    end
    object IntegerField8: TIntegerField
      FieldName = 'COD_CLI_VENDEDOR'
      Origin = 'PRODUTOS.COD_CLI_VENDEDOR'
    end
    object IntegerField9: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'PRODUTOS.ENABLE_NUMSERIE'
      Required = True
    end
    object IBBCDField11: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = 'PRODUTOS.PRC_CUSTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object IntegerField10: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'PRODUTOS.ENABLED'
    end
    object IBStringField8: TIBStringField
      FieldName = 'APR_UND'
      Origin = 'PRODUTOS.APR_UND'
      Required = True
      Size = 6
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'PRODUTOS.ULTATUAL'
    end
    object IntegerField11: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'PRODUTOS.ULTATUALCODSETOR'
    end
    object IntegerField12: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'PRODUTOS.ULTATUALCODSETORUSER'
    end
    object IBBCDField12: TIBBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'PRODUTOS.BASE_ICMS_SUBST'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField13: TIBBCDField
      FieldName = 'REDUCAO_BASE_ICMS'
      Origin = 'PRODUTOS.REDUCAO_BASE_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBStringField9: TIBStringField
      FieldName = 'CODIGO_NCM'
      Origin = 'PRODUTOS.CODIGO_NCM'
      Size = 15
    end
    object IBBCDField14: TIBBCDField
      FieldName = 'PESO_MEDIO'
      Origin = 'PRODUTOS.PESO_MEDIO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField15: TIBBCDField
      FieldName = 'PESO_DESVIO_PADRAO'
      Origin = 'PRODUTOS.PESO_DESVIO_PADRAO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField16: TIBBCDField
      FieldName = 'TARA_TUBO'
      Origin = 'PRODUTOS.TARA_TUBO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField17: TIBBCDField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PRODUTOS.PESO_LIQUIDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField18: TIBBCDField
      FieldName = 'PESO_BRUTO'
      Origin = 'PRODUTOS.PESO_BRUTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField19: TIBBCDField
      FieldName = 'PESO_TOTAL'
      Origin = 'PRODUTOS.PESO_TOTAL'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField20: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = 'PRODUTOS.ALIQUOTA_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField21: TIBBCDField
      FieldName = 'ALIQUOTA_IPI'
      Origin = 'PRODUTOS.ALIQUOTA_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IBBCDField22: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS_SUBST'
      Origin = 'PRODUTOS.ALIQUOTA_ICMS_SUBST'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object IntegerField13: TIntegerField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'PRODUTOS.TIPO_PRODUTO'
    end
    object IntegerField14: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'PRODUTOS.ID_PRODUTOS'
    end
    object IntegerField15: TIntegerField
      FieldName = 'COR'
      Origin = 'PRODUTOS.COR'
    end
  end
  object DstInventario_Itens: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from INVENTARIO_ITENS'
      'where'
      '  COD_INVENTARIO_ITENS = :OLD_COD_INVENTARIO_ITENS')
    InsertSQL.Strings = (
      'insert into INVENTARIO_ITENS'
      
        '  (COD_INVENTARIO, COD_PRODUTOS, PRODUTO, COD_POSSE, QUANTIDADE,' +
        ' VALOR_PRODUTO, '
      
        '   CNPJ_POSSUIDOR, IE_EST_POSSUIDOR, UF_POSSUIDOR, ULTATUAL, ULT' +
        'ATUALCODSETORUSER, '
      '   ULTATUALCODSETOR, ENABLED, DATAHORA, VALOR_UNITARIO)'
      'values'
      
        '  (:COD_INVENTARIO, :COD_PRODUTOS, :PRODUTO, :COD_POSSE, :QUANTI' +
        'DADE, :VALOR_PRODUTO, '
      
        '   :CNPJ_POSSUIDOR, :IE_EST_POSSUIDOR, :UF_POSSUIDOR, :ULTATUAL,' +
        ' :ULTATUALCODSETORUSER, '
      '   :ULTATUALCODSETOR, :ENABLED, :DATAHORA, :VALOR_UNITARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_INVENTARIO_ITENS,'
      '  COD_INVENTARIO,'
      '  COD_PRODUTOS,'
      '  PRODUTO,'
      '  COD_POSSE,'
      '  QUANTIDADE,'
      '  VALOR_PRODUTO,'
      '  CNPJ_POSSUIDOR,'
      '  IE_EST_POSSUIDOR,'
      '  UF_POSSUIDOR,'
      '  ULTATUAL,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR,'
      '  ENABLED,'
      '  DATAHORA,'
      '  VALOR_UNITARIO'
      'from INVENTARIO_ITENS '
      'where'
      '  COD_INVENTARIO_ITENS = :COD_INVENTARIO_ITENS')
    SelectSQL.Strings = (
      'select * from INVENTARIO_ITENS'
      ''
      'where COD_INVENTARIO  =  :COD_INVENTARIO'
      ''
      'order by COD_INVENTARIO_ITENS DESC')
    ModifySQL.Strings = (
      'update INVENTARIO_ITENS'
      'set'
      '  COD_INVENTARIO = :COD_INVENTARIO,'
      '  COD_PRODUTOS = :COD_PRODUTOS,'
      '  PRODUTO = :PRODUTO,'
      '  COD_POSSE = :COD_POSSE,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  VALOR_PRODUTO = :VALOR_PRODUTO,'
      '  CNPJ_POSSUIDOR = :CNPJ_POSSUIDOR,'
      '  IE_EST_POSSUIDOR = :IE_EST_POSSUIDOR,'
      '  UF_POSSUIDOR = :UF_POSSUIDOR,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ENABLED = :ENABLED,'
      '  DATAHORA = :DATAHORA,'
      '  VALOR_UNITARIO = :VALOR_UNITARIO'
      'where'
      '  COD_INVENTARIO_ITENS = :OLD_COD_INVENTARIO_ITENS')
    Left = 432
    Top = 176
    object DstInventario_ItensCOD_INVENTARIO_ITENS: TIntegerField
      FieldName = 'COD_INVENTARIO_ITENS'
      Origin = 'INVENTARIO_ITENS.COD_INVENTARIO_ITENS'
      Required = True
    end
    object DstInventario_ItensCOD_INVENTARIO: TIntegerField
      FieldName = 'COD_INVENTARIO'
      Origin = 'INVENTARIO_ITENS.COD_INVENTARIO'
      Required = True
    end
    object DstInventario_ItensCOD_POSSE: TIntegerField
      FieldName = 'COD_POSSE'
      Origin = 'INVENTARIO_ITENS.COD_POSSE'
    end
    object DstInventario_ItensCOD_PRODUTOS: TIBStringField
      FieldName = 'COD_PRODUTOS'
      Origin = 'INVENTARIO_ITENS.COD_PRODUTOS'
      Required = True
      Size = 30
    end
    object DstInventario_ItensDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'INVENTARIO_ITENS.DATAHORA'
    end
    object DstInventario_ItensENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'INVENTARIO_ITENS.ENABLED'
    end
    object DstInventario_ItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'INVENTARIO_ITENS.QUANTIDADE'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 3
    end
    object DstInventario_ItensUF_POSSUIDOR: TIBStringField
      FieldName = 'UF_POSSUIDOR'
      Origin = 'INVENTARIO_ITENS.UF_POSSUIDOR'
      Size = 2
    end
    object DstInventario_ItensULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'INVENTARIO_ITENS.ULTATUAL'
    end
    object DstInventario_ItensULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'INVENTARIO_ITENS.ULTATUALCODSETOR'
    end
    object DstInventario_ItensULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'INVENTARIO_ITENS.ULTATUALCODSETORUSER'
    end
    object DstInventario_ItensVALOR_PRODUTO: TIBBCDField
      FieldName = 'VALOR_PRODUTO'
      Origin = 'INVENTARIO_ITENS.VALOR_PRODUTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstInventario_ItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = 'INVENTARIO_ITENS.PRODUTO'
      Size = 50
    end
    object DstInventario_ItensIE_EST_POSSUIDOR: TIBStringField
      FieldName = 'IE_EST_POSSUIDOR'
      Origin = 'INVENTARIO_ITENS.IE_EST_POSSUIDOR'
      Size = 30
    end
    object DstInventario_ItensCNPJ_POSSUIDOR: TIBStringField
      FieldName = 'CNPJ_POSSUIDOR'
      Origin = 'INVENTARIO_ITENS.CNPJ_POSSUIDOR'
      Size = 30
    end
    object DstInventario_ItensVALOR_UNITARIO: TIBBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'INVENTARIO_ITENS.VALOR_UNITARIO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
  end
  object DstInventario: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from INVENTARIO'
      'where'
      '  COD_INVENTARIO = :OLD_COD_INVENTARIO')
    InsertSQL.Strings = (
      'insert into INVENTARIO'
      
        '  (COD_RESPONSAVEL, OBS, DATAHORA, ENABLED, ULTATUAL, ULTATUALCO' +
        'DSETOR, '
      '   ULTATUALCODSETORUSER)'
      'values'
      
        '  (:COD_RESPONSAVEL, :OBS, :DATAHORA, :ENABLED, :ULTATUAL, :ULTA' +
        'TUALCODSETOR, '
      '   :ULTATUALCODSETORUSER)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_INVENTARIO,'
      '  COD_RESPONSAVEL,'
      '  DATAHORA,'
      '  OBS,'
      '  ULTATUAL,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUALCODSETOR,'
      '  ENABLED'
      'from INVENTARIO '
      'where'
      '  COD_INVENTARIO = :COD_INVENTARIO')
    SelectSQL.Strings = (
      'select INVENTARIO.COD_INVENTARIO,'
      'INVENTARIO.COD_RESPONSAVEL,'
      'INVENTARIO.OBS,'
      'SETORUSER.NOME RESPONSAVEL,'
      'INVENTARIO.DATAHORA,'
      'INVENTARIO.ENABLED,'
      'INVENTARIO.ULTATUAL,'
      'INVENTARIO.ULTATUALCODSETOR,'
      'INVENTARIO.ULTATUALCODSETORUSER'
      'from INVENTARIO'
      
        'LEFT OUTER JOIN SETORUSER ON(INVENTARIO.COD_RESPONSAVEL = SETORU' +
        'SER.COD_SETORUSER)'
      'order by INVENTARIO.DATAHORA  DESC')
    ModifySQL.Strings = (
      'update INVENTARIO'
      'set'
      '  COD_RESPONSAVEL = :COD_RESPONSAVEL,'
      '  OBS = :OBS,'
      '  DATAHORA = :DATAHORA,'
      '  ENABLED = :ENABLED,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER'
      'where'
      '  COD_INVENTARIO = :OLD_COD_INVENTARIO')
    Left = 336
    Top = 176
    object DstInventarioCOD_INVENTARIO: TIntegerField
      FieldName = 'COD_INVENTARIO'
      Origin = 'INVENTARIO.COD_INVENTARIO'
      Required = True
    end
    object DstInventarioCOD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      Origin = 'INVENTARIO.COD_RESPONSAVEL'
    end
    object DstInventarioOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'INVENTARIO.OBS'
      Size = 100
    end
    object DstInventarioRESPONSAVEL: TIBStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'VENDEDOR.NOME'
      Size = 30
    end
    object DstInventarioDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'INVENTARIO.DATAHORA'
    end
    object DstInventarioENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'INVENTARIO.ENABLED'
    end
    object DstInventarioULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'INVENTARIO.ULTATUAL'
    end
    object DstInventarioULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'INVENTARIO.ULTATUALCODSETOR'
    end
    object DstInventarioULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'INVENTARIO.ULTATUALCODSETORUSER'
    end
  end
  object DstPedidos_Itens: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PEDIDOS_ITENS'
      'where'
      '  COD_PEDIDOS_ITENS = :OLD_COD_PEDIDOS_ITENS')
    InsertSQL.Strings = (
      'insert into PEDIDOS_ITENS'
      
        '  (COD_PEDIDOS, COD_PRODUTOS, REF_PRODUTOS, NUM_ITEM, PRODUTO, C' +
        'OD_GRUPOP, '
      
        '   COD_SUBGRUPOP, COD_ECF, OBS, PRC_VENDA, SUBTOTAL, VALOR_DESCO' +
        'NTO, PRM_ENABLED, '
      
        '   PRM_QUANT, PRM_PRC, QUANTIDADE, NUM_SERIE, DATA_COMPRA_NSERIE' +
        ', PRC_CUSTO_NSERIE, '
      
        '   FIM_GARANTIA_FABRICANTE, FIM_GARANTIA_APOS_VENDA, COD_NF_ENTR' +
        'ADA, BASE_ICMS, '
      
        '   BASE_ICMS_SUBST, VALOR_ICMS, VALOR_IPI, CL_FIS, S_TRIB, ENABL' +
        'ED, DATAHORA, '
      
        '   ULTATUALCODSETOR, ULTATUALCODSETORUSER, ULTATUAL, APR_UND, PE' +
        'RC_DESCONTO, '
      '   ALIQUOTA_ICMS, ALIQUOTA_IPI, REDUCAO_BASE_ICMS, CODIGO_NCM)'
      'values'
      
        '  (:COD_PEDIDOS, :COD_PRODUTOS, :REF_PRODUTOS, :NUM_ITEM, :PRODU' +
        'TO, :COD_GRUPOP, '
      
        '   :COD_SUBGRUPOP, :COD_ECF, :OBS, :PRC_VENDA, :SUBTOTAL, :VALOR' +
        '_DESCONTO, '
      
        '   :PRM_ENABLED, :PRM_QUANT, :PRM_PRC, :QUANTIDADE, :NUM_SERIE, ' +
        ':DATA_COMPRA_NSERIE, '
      
        '   :PRC_CUSTO_NSERIE, :FIM_GARANTIA_FABRICANTE, :FIM_GARANTIA_AP' +
        'OS_VENDA, '
      
        '   :COD_NF_ENTRADA, :BASE_ICMS, :BASE_ICMS_SUBST, :VALOR_ICMS, :' +
        'VALOR_IPI, '
      
        '   :CL_FIS, :S_TRIB, :ENABLED, :DATAHORA, :ULTATUALCODSETOR, :UL' +
        'TATUALCODSETORUSER, '
      
        '   :ULTATUAL, :APR_UND, :PERC_DESCONTO, :ALIQUOTA_ICMS, :ALIQUOT' +
        'A_IPI, '
      '   :REDUCAO_BASE_ICMS, :CODIGO_NCM)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PEDIDOS_ITENS,'
      '  COD_PEDIDOS,'
      '  COD_PRODUTOS,'
      '  REF_PRODUTOS,'
      '  NUM_ITEM,'
      '  PRODUTO,'
      '  COD_GRUPOP,'
      '  COD_SUBGRUPOP,'
      '  COD_ECF,'
      '  OBS,'
      '  PRC_VENDA,'
      '  SUBTOTAL,'
      '  VALOR_DESCONTO,'
      '  PRM_ENABLED,'
      '  PRM_QUANT,'
      '  PRM_PRC,'
      '  QUANTIDADE,'
      '  NUM_SERIE,'
      '  DATA_COMPRA_NSERIE,'
      '  PRC_CUSTO_NSERIE,'
      '  FIM_GARANTIA_FABRICANTE,'
      '  FIM_GARANTIA_APOS_VENDA,'
      '  COD_NF_ENTRADA,'
      '  BASE_ICMS,'
      '  BASE_ICMS_SUBST,'
      '  VALOR_ICMS,'
      '  VALOR_IPI,'
      '  CL_FIS,'
      '  S_TRIB,'
      '  ENABLED,'
      '  DATAHORA,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER,'
      '  ULTATUAL,'
      '  APR_UND,'
      '  PERC_DESCONTO,'
      '  ALIQUOTA_ICMS,'
      '  ALIQUOTA_IPI,'
      '  REDUCAO_BASE_ICMS,'
      '  CODIGO_NCM'
      'from PEDIDOS_ITENS '
      'where'
      '  COD_PEDIDOS_ITENS = :COD_PEDIDOS_ITENS')
    SelectSQL.Strings = (
      'select * from PEDIDOS_ITENS where COD_PEDIDOS = :Cod_Pedidos')
    ModifySQL.Strings = (
      'update PEDIDOS_ITENS'
      'set'
      '  COD_PEDIDOS = :COD_PEDIDOS,'
      '  COD_PRODUTOS = :COD_PRODUTOS,'
      '  REF_PRODUTOS = :REF_PRODUTOS,'
      '  NUM_ITEM = :NUM_ITEM,'
      '  PRODUTO = :PRODUTO,'
      '  COD_GRUPOP = :COD_GRUPOP,'
      '  COD_SUBGRUPOP = :COD_SUBGRUPOP,'
      '  COD_ECF = :COD_ECF,'
      '  OBS = :OBS,'
      '  PRC_VENDA = :PRC_VENDA,'
      '  SUBTOTAL = :SUBTOTAL,'
      '  VALOR_DESCONTO = :VALOR_DESCONTO,'
      '  PRM_ENABLED = :PRM_ENABLED,'
      '  PRM_QUANT = :PRM_QUANT,'
      '  PRM_PRC = :PRM_PRC,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  NUM_SERIE = :NUM_SERIE,'
      '  DATA_COMPRA_NSERIE = :DATA_COMPRA_NSERIE,'
      '  PRC_CUSTO_NSERIE = :PRC_CUSTO_NSERIE,'
      '  FIM_GARANTIA_FABRICANTE = :FIM_GARANTIA_FABRICANTE,'
      '  FIM_GARANTIA_APOS_VENDA = :FIM_GARANTIA_APOS_VENDA,'
      '  COD_NF_ENTRADA = :COD_NF_ENTRADA,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  BASE_ICMS_SUBST = :BASE_ICMS_SUBST,'
      '  VALOR_ICMS = :VALOR_ICMS,'
      '  VALOR_IPI = :VALOR_IPI,'
      '  CL_FIS = :CL_FIS,'
      '  S_TRIB = :S_TRIB,'
      '  ENABLED = :ENABLED,'
      '  DATAHORA = :DATAHORA,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  ULTATUAL = :ULTATUAL,'
      '  APR_UND = :APR_UND,'
      '  PERC_DESCONTO = :PERC_DESCONTO,'
      '  ALIQUOTA_ICMS = :ALIQUOTA_ICMS,'
      '  ALIQUOTA_IPI = :ALIQUOTA_IPI,'
      '  REDUCAO_BASE_ICMS = :REDUCAO_BASE_ICMS,'
      '  CODIGO_NCM = :CODIGO_NCM'
      'where'
      '  COD_PEDIDOS_ITENS = :OLD_COD_PEDIDOS_ITENS')
    DataSource = SaidaNFCadFrm.DtsDstPedidos
    Left = 512
    Top = 120
  end
  object DstPedidos: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PEDIDOS'
      'where'
      '  COD_PEDIDOS = :OLD_COD_PEDIDOS')
    InsertSQL.Strings = (
      'insert into PEDIDOS'
      
        '  (COD_VEND, COD_CLI_DESTINATARIO, CNPJ_DESTINATARIO, IE_DESTINA' +
        'TARIO, '
      
        '   UF_DESTINATARIO, EMITENTE_NF, NUM_ITENS, DESCONTO, VALOR_FRET' +
        'E, VALOR_SEGURO, '
      
        '   OUTRAS_DESPESAS, VALOR_IPI, VALOR_ISENTO_IPI, VALOR_TOTALPROD' +
        'UTO, VALOR_TOTALNF, '
      
        '   ALIQUOTA_ICMS, BASE_ICMS, VALOR_ICMS, BASE_ICMS_SUBST, VALOR_' +
        'ICMS_SUBST, '
      
        '   VALOR_ISENTO_ICMS, COD_FORMA_PGT, NUM_PARCELAS, FORMA_PGT, DE' +
        'SC_PERC, '
      
        '   IMP_TIPO, IMP_OK, DATAHORA_EMISSAO, DATAHORA_SAIDAENTRADA, DA' +
        'TAHORA_SAIDA, '
      
        '   FIM_PED, COTACAO, COTACAO_ENABLED, COD_CAIXA_OP_CL, CNPJ_SUBS' +
        'T_TRIB, '
      
        '   IE_SUBST_TRIB, FAT_01, VENCIMENTO_01, VALOR_01, FAT_02, VENCI' +
        'MENTO_02, '
      
        '   VALOR_02, FAT_03, VENCIMENTO_03, VALOR_03, COD_CLI_TRANSP, TR' +
        'ANSP_NOME, '
      
        '   TRANSP_FRETE_CONTA, TRANSP_PLACA_VEICULO, TRANSP_UF_VEICULO, ' +
        'TRANSP_CNPJ_CPF, '
      
        '   TRANSP_ENDER, TRANSP_MUNICIPIO, TRANSP_UF, TRANSP_IE, TRANSP_' +
        'QNT, TRANSP_ESPECIE, '
      
        '   TRANSP_MARCA, TRANSP_NRO, ENABLED, ULTATUAL, ULTATUALCODSETOR' +
        ', ULTATUALCODSETORUSER, '
      
        '   DATAHORA, NUM_VIA, NUM_FORM, SERIE_FORM, NUM_NF, SERIE_NF, DA' +
        'DOS_ADICIONAIS, '
      
        '   OBS, MODELO_NF, ICMS_RETIDO, NATUREZA_OP, NOME_DESTINATARIO, ' +
        'ENDERECO_DESTINATARIO, '
      
        '   BAIRRO_DESTINATARIO, CIDADE_DESTINATARIO, FONE_DESTINATARIO, ' +
        'CEP_DESTINATARIO, '
      
        '   BRANCOS, CODPDV, SUB_SERIE_NF, ESPECIE, OUTRAS_ICMS, ICMS_ANT' +
        'ECIPADO, '
      
        '   BASE_IPI, OUTRAS_IPI, COD_FISCAL_ICMS, COD_FISCAL_IPI, ALIQUO' +
        'TA_IPI, '
      
        '   CFOP, TRANSP_PESO_L, TRANSP_PESO_B, COD_CONTABIL, VENCIMENTO,' +
        ' SITUACAO_NF)'
      'values'
      
        '  (:COD_VEND, :COD_CLI_DESTINATARIO, :CNPJ_DESTINATARIO, :IE_DES' +
        'TINATARIO, '
      
        '   :UF_DESTINATARIO, :EMITENTE_NF, :NUM_ITENS, :DESCONTO, :VALOR' +
        '_FRETE, '
      
        '   :VALOR_SEGURO, :OUTRAS_DESPESAS, :VALOR_IPI, :VALOR_ISENTO_IP' +
        'I, :VALOR_TOTALPRODUTO, '
      
        '   :VALOR_TOTALNF, :ALIQUOTA_ICMS, :BASE_ICMS, :VALOR_ICMS, :BAS' +
        'E_ICMS_SUBST, '
      
        '   :VALOR_ICMS_SUBST, :VALOR_ISENTO_ICMS, :COD_FORMA_PGT, :NUM_P' +
        'ARCELAS, '
      
        '   :FORMA_PGT, :DESC_PERC, :IMP_TIPO, :IMP_OK, :DATAHORA_EMISSAO' +
        ', :DATAHORA_SAIDAENTRADA, '
      
        '   :DATAHORA_SAIDA, :FIM_PED, :COTACAO, :COTACAO_ENABLED, :COD_C' +
        'AIXA_OP_CL, '
      
        '   :CNPJ_SUBST_TRIB, :IE_SUBST_TRIB, :FAT_01, :VENCIMENTO_01, :V' +
        'ALOR_01, '
      
        '   :FAT_02, :VENCIMENTO_02, :VALOR_02, :FAT_03, :VENCIMENTO_03, ' +
        ':VALOR_03, '
      
        '   :COD_CLI_TRANSP, :TRANSP_NOME, :TRANSP_FRETE_CONTA, :TRANSP_P' +
        'LACA_VEICULO, '
      
        '   :TRANSP_UF_VEICULO, :TRANSP_CNPJ_CPF, :TRANSP_ENDER, :TRANSP_' +
        'MUNICIPIO, '
      
        '   :TRANSP_UF, :TRANSP_IE, :TRANSP_QNT, :TRANSP_ESPECIE, :TRANSP' +
        '_MARCA, '
      
        '   :TRANSP_NRO, :ENABLED, :ULTATUAL, :ULTATUALCODSETOR, :ULTATUA' +
        'LCODSETORUSER, '
      
        '   :DATAHORA, :NUM_VIA, :NUM_FORM, :SERIE_FORM, :NUM_NF, :SERIE_' +
        'NF, :DADOS_ADICIONAIS, '
      
        '   :OBS, :MODELO_NF, :ICMS_RETIDO, :NATUREZA_OP, :NOME_DESTINATA' +
        'RIO, :ENDERECO_DESTINATARIO, '
      
        '   :BAIRRO_DESTINATARIO, :CIDADE_DESTINATARIO, :FONE_DESTINATARI' +
        'O, :CEP_DESTINATARIO, '
      
        '   :BRANCOS, :CODPDV, :SUB_SERIE_NF, :ESPECIE, :OUTRAS_ICMS, :IC' +
        'MS_ANTECIPADO, '
      
        '   :BASE_IPI, :OUTRAS_IPI, :COD_FISCAL_ICMS, :COD_FISCAL_IPI, :A' +
        'LIQUOTA_IPI, '
      
        '   :CFOP, :TRANSP_PESO_L, :TRANSP_PESO_B, :COD_CONTABIL, :VENCIM' +
        'ENTO, :SITUACAO_NF)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PEDIDOS,'
      '  COD_VEND,'
      '  COD_CLI_DESTINATARIO,'
      '  CNPJ_DESTINATARIO,'
      '  IE_DESTINATARIO,'
      '  UF_DESTINATARIO,'
      '  EMITENTE_NF,'
      '  NUM_ITENS,'
      '  DESCONTO,'
      '  VALOR_FRETE,'
      '  VALOR_SEGURO,'
      '  OUTRAS_DESPESAS,'
      '  VALOR_IPI,'
      '  VALOR_ISENTO_IPI,'
      '  VALOR_TOTALPRODUTO,'
      '  VALOR_TOTALNF,'
      '  ALIQUOTA_ICMS,'
      '  BASE_ICMS,'
      '  VALOR_ICMS,'
      '  BASE_ICMS_SUBST,'
      '  VALOR_ICMS_SUBST,'
      '  VALOR_ISENTO_ICMS,'
      '  COD_FORMA_PGT,'
      '  NUM_PARCELAS,'
      '  FORMA_PGT,'
      '  DESC_PERC,'
      '  IMP_TIPO,'
      '  IMP_OK,'
      '  DATAHORA_EMISSAO,'
      '  DATAHORA_SAIDAENTRADA,'
      '  DATAHORA_SAIDA,'
      '  FIM_PED,'
      '  COTACAO,'
      '  COTACAO_ENABLED,'
      '  COD_CAIXA_OP_CL,'
      '  CNPJ_SUBST_TRIB,'
      '  IE_SUBST_TRIB,'
      '  FAT_01,'
      '  VENCIMENTO_01,'
      '  VALOR_01,'
      '  FAT_02,'
      '  VENCIMENTO_02,'
      '  VALOR_02,'
      '  FAT_03,'
      '  VENCIMENTO_03,'
      '  VALOR_03,'
      '  COD_CLI_TRANSP,'
      '  TRANSP_NOME,'
      '  TRANSP_FRETE_CONTA,'
      '  TRANSP_PLACA_VEICULO,'
      '  TRANSP_UF_VEICULO,'
      '  TRANSP_CNPJ_CPF,'
      '  TRANSP_ENDER,'
      '  TRANSP_MUNICIPIO,'
      '  TRANSP_UF,'
      '  TRANSP_IE,'
      '  TRANSP_QNT,'
      '  TRANSP_ESPECIE,'
      '  TRANSP_MARCA,'
      '  TRANSP_NRO,'
      '  ENABLED,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER,'
      '  DATAHORA,'
      '  NUM_VIA,'
      '  NUM_FORM,'
      '  SERIE_FORM,'
      '  NUM_NF,'
      '  SERIE_NF,'
      '  DADOS_ADICIONAIS,'
      '  OBS,'
      '  MODELO_NF,'
      '  ICMS_RETIDO,'
      '  NATUREZA_OP,'
      '  NOME_DESTINATARIO,'
      '  ENDERECO_DESTINATARIO,'
      '  BAIRRO_DESTINATARIO,'
      '  CIDADE_DESTINATARIO,'
      '  FONE_DESTINATARIO,'
      '  CEP_DESTINATARIO,'
      '  BRANCOS,'
      '  CODPDV,'
      '  SUB_SERIE_NF,'
      '  ESPECIE,'
      '  OUTRAS_ICMS,'
      '  ICMS_ANTECIPADO,'
      '  BASE_IPI,'
      '  OUTRAS_IPI,'
      '  COD_FISCAL_ICMS,'
      '  COD_FISCAL_IPI,'
      '  ALIQUOTA_IPI,'
      '  CFOP,'
      '  TRANSP_PESO_L,'
      '  TRANSP_PESO_B,'
      '  COD_CONTABIL,'
      '  VENCIMENTO,'
      '  SITUACAO_NF'
      'from PEDIDOS '
      'where'
      '  COD_PEDIDOS = :COD_PEDIDOS')
    SelectSQL.Strings = (
      'select * from PEDIDOS'
      'where '
      '(COD_PEDIDOS = 0) or'
      '(MODELO_NF <> '#39'2D'#39')'
      'order by COD_PEDIDOS')
    ModifySQL.Strings = (
      'update PEDIDOS'
      'set'
      '  COD_VEND = :COD_VEND,'
      '  COD_CLI_DESTINATARIO = :COD_CLI_DESTINATARIO,'
      '  CNPJ_DESTINATARIO = :CNPJ_DESTINATARIO,'
      '  IE_DESTINATARIO = :IE_DESTINATARIO,'
      '  UF_DESTINATARIO = :UF_DESTINATARIO,'
      '  EMITENTE_NF = :EMITENTE_NF,'
      '  NUM_ITENS = :NUM_ITENS,'
      '  DESCONTO = :DESCONTO,'
      '  VALOR_FRETE = :VALOR_FRETE,'
      '  VALOR_SEGURO = :VALOR_SEGURO,'
      '  OUTRAS_DESPESAS = :OUTRAS_DESPESAS,'
      '  VALOR_IPI = :VALOR_IPI,'
      '  VALOR_ISENTO_IPI = :VALOR_ISENTO_IPI,'
      '  VALOR_TOTALPRODUTO = :VALOR_TOTALPRODUTO,'
      '  VALOR_TOTALNF = :VALOR_TOTALNF,'
      '  ALIQUOTA_ICMS = :ALIQUOTA_ICMS,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  VALOR_ICMS = :VALOR_ICMS,'
      '  BASE_ICMS_SUBST = :BASE_ICMS_SUBST,'
      '  VALOR_ICMS_SUBST = :VALOR_ICMS_SUBST,'
      '  VALOR_ISENTO_ICMS = :VALOR_ISENTO_ICMS,'
      '  COD_FORMA_PGT = :COD_FORMA_PGT,'
      '  NUM_PARCELAS = :NUM_PARCELAS,'
      '  FORMA_PGT = :FORMA_PGT,'
      '  DESC_PERC = :DESC_PERC,'
      '  IMP_TIPO = :IMP_TIPO,'
      '  IMP_OK = :IMP_OK,'
      '  DATAHORA_EMISSAO = :DATAHORA_EMISSAO,'
      '  DATAHORA_SAIDAENTRADA = :DATAHORA_SAIDAENTRADA,'
      '  DATAHORA_SAIDA = :DATAHORA_SAIDA,'
      '  FIM_PED = :FIM_PED,'
      '  COTACAO = :COTACAO,'
      '  COTACAO_ENABLED = :COTACAO_ENABLED,'
      '  COD_CAIXA_OP_CL = :COD_CAIXA_OP_CL,'
      '  CNPJ_SUBST_TRIB = :CNPJ_SUBST_TRIB,'
      '  IE_SUBST_TRIB = :IE_SUBST_TRIB,'
      '  FAT_01 = :FAT_01,'
      '  VENCIMENTO_01 = :VENCIMENTO_01,'
      '  VALOR_01 = :VALOR_01,'
      '  FAT_02 = :FAT_02,'
      '  VENCIMENTO_02 = :VENCIMENTO_02,'
      '  VALOR_02 = :VALOR_02,'
      '  FAT_03 = :FAT_03,'
      '  VENCIMENTO_03 = :VENCIMENTO_03,'
      '  VALOR_03 = :VALOR_03,'
      '  COD_CLI_TRANSP = :COD_CLI_TRANSP,'
      '  TRANSP_NOME = :TRANSP_NOME,'
      '  TRANSP_FRETE_CONTA = :TRANSP_FRETE_CONTA,'
      '  TRANSP_PLACA_VEICULO = :TRANSP_PLACA_VEICULO,'
      '  TRANSP_UF_VEICULO = :TRANSP_UF_VEICULO,'
      '  TRANSP_CNPJ_CPF = :TRANSP_CNPJ_CPF,'
      '  TRANSP_ENDER = :TRANSP_ENDER,'
      '  TRANSP_MUNICIPIO = :TRANSP_MUNICIPIO,'
      '  TRANSP_UF = :TRANSP_UF,'
      '  TRANSP_IE = :TRANSP_IE,'
      '  TRANSP_QNT = :TRANSP_QNT,'
      '  TRANSP_ESPECIE = :TRANSP_ESPECIE,'
      '  TRANSP_MARCA = :TRANSP_MARCA,'
      '  TRANSP_NRO = :TRANSP_NRO,'
      '  ENABLED = :ENABLED,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  DATAHORA = :DATAHORA,'
      '  NUM_VIA = :NUM_VIA,'
      '  NUM_FORM = :NUM_FORM,'
      '  SERIE_FORM = :SERIE_FORM,'
      '  NUM_NF = :NUM_NF,'
      '  SERIE_NF = :SERIE_NF,'
      '  DADOS_ADICIONAIS = :DADOS_ADICIONAIS,'
      '  OBS = :OBS,'
      '  MODELO_NF = :MODELO_NF,'
      '  ICMS_RETIDO = :ICMS_RETIDO,'
      '  NATUREZA_OP = :NATUREZA_OP,'
      '  NOME_DESTINATARIO = :NOME_DESTINATARIO,'
      '  ENDERECO_DESTINATARIO = :ENDERECO_DESTINATARIO,'
      '  BAIRRO_DESTINATARIO = :BAIRRO_DESTINATARIO,'
      '  CIDADE_DESTINATARIO = :CIDADE_DESTINATARIO,'
      '  FONE_DESTINATARIO = :FONE_DESTINATARIO,'
      '  CEP_DESTINATARIO = :CEP_DESTINATARIO,'
      '  BRANCOS = :BRANCOS,'
      '  CODPDV = :CODPDV,'
      '  SUB_SERIE_NF = :SUB_SERIE_NF,'
      '  ESPECIE = :ESPECIE,'
      '  OUTRAS_ICMS = :OUTRAS_ICMS,'
      '  ICMS_ANTECIPADO = :ICMS_ANTECIPADO,'
      '  BASE_IPI = :BASE_IPI,'
      '  OUTRAS_IPI = :OUTRAS_IPI,'
      '  COD_FISCAL_ICMS = :COD_FISCAL_ICMS,'
      '  COD_FISCAL_IPI = :COD_FISCAL_IPI,'
      '  ALIQUOTA_IPI = :ALIQUOTA_IPI,'
      '  CFOP = :CFOP,'
      '  TRANSP_PESO_L = :TRANSP_PESO_L,'
      '  TRANSP_PESO_B = :TRANSP_PESO_B,'
      '  COD_CONTABIL = :COD_CONTABIL,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  SITUACAO_NF = :SITUACAO_NF'
      'where'
      '  COD_PEDIDOS = :OLD_COD_PEDIDOS')
    Left = 432
    Top = 120
    object DstPedidosCOD_PEDIDOS: TIntegerField
      FieldName = 'COD_PEDIDOS'
      Origin = 'PEDIDOS.COD_PEDIDOS'
      Required = True
    end
    object DstPedidosCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Origin = 'PEDIDOS.COD_VEND'
      Required = True
    end
    object DstPedidosCOD_CLI_DESTINATARIO: TIntegerField
      FieldName = 'COD_CLI_DESTINATARIO'
      Origin = 'PEDIDOS.COD_CLI_DESTINATARIO'
    end
    object DstPedidosCNPJ_DESTINATARIO: TIBStringField
      FieldName = 'CNPJ_DESTINATARIO'
      Origin = 'PEDIDOS.CNPJ_DESTINATARIO'
      Size = 30
    end
    object DstPedidosIE_DESTINATARIO: TIBStringField
      FieldName = 'IE_DESTINATARIO'
      Origin = 'PEDIDOS.IE_DESTINATARIO'
      Size = 30
    end
    object DstPedidosUF_DESTINATARIO: TIBStringField
      FieldName = 'UF_DESTINATARIO'
      Origin = 'PEDIDOS.UF_DESTINATARIO'
      Size = 3
    end
    object DstPedidosEMITENTE_NF: TIBStringField
      FieldName = 'EMITENTE_NF'
      Origin = 'PEDIDOS.EMITENTE_NF'
      Size = 2
    end
    object DstPedidosNUM_ITENS: TIntegerField
      FieldName = 'NUM_ITENS'
      Origin = 'PEDIDOS.NUM_ITENS'
    end
    object DstPedidosDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'PEDIDOS.DESCONTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosVALOR_FRETE: TIBBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'PEDIDOS.VALOR_FRETE'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosVALOR_SEGURO: TIBBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'PEDIDOS.VALOR_SEGURO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosOUTRAS_DESPESAS: TIBBCDField
      FieldName = 'OUTRAS_DESPESAS'
      Origin = 'PEDIDOS.OUTRAS_DESPESAS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosVALOR_IPI: TIBBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'PEDIDOS.VALOR_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosVALOR_ISENTO_IPI: TIBBCDField
      FieldName = 'VALOR_ISENTO_IPI'
      Origin = 'PEDIDOS.VALOR_ISENTO_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosVALOR_TOTALPRODUTO: TIBBCDField
      FieldName = 'VALOR_TOTALPRODUTO'
      Origin = 'PEDIDOS.VALOR_TOTALPRODUTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosVALOR_TOTALNF: TIBBCDField
      FieldName = 'VALOR_TOTALNF'
      Origin = 'PEDIDOS.VALOR_TOTALNF'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosALIQUOTA_ICMS: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = 'PEDIDOS.ALIQUOTA_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'PEDIDOS.BASE_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosVALOR_ICMS: TIBBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'PEDIDOS.VALOR_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosBASE_ICMS_SUBST: TIBBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'PEDIDOS.BASE_ICMS_SUBST'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosVALOR_ICMS_SUBST: TIBBCDField
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'PEDIDOS.VALOR_ICMS_SUBST'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosVALOR_ISENTO_ICMS: TIBBCDField
      FieldName = 'VALOR_ISENTO_ICMS'
      Origin = 'PEDIDOS.VALOR_ISENTO_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosCOD_FORMA_PGT: TIntegerField
      FieldName = 'COD_FORMA_PGT'
      Origin = 'PEDIDOS.COD_FORMA_PGT'
      Required = True
    end
    object DstPedidosNUM_PARCELAS: TIntegerField
      FieldName = 'NUM_PARCELAS'
      Origin = 'PEDIDOS.NUM_PARCELAS'
    end
    object DstPedidosFORMA_PGT: TIBStringField
      FieldName = 'FORMA_PGT'
      Origin = 'PEDIDOS.FORMA_PGT'
      Size = 30
    end
    object DstPedidosDESC_PERC: TIBBCDField
      FieldName = 'DESC_PERC'
      Origin = 'PEDIDOS.DESC_PERC'
      Precision = 18
      Size = 3
    end
    object DstPedidosIMP_TIPO: TIBStringField
      FieldName = 'IMP_TIPO'
      Origin = 'PEDIDOS.IMP_TIPO'
      Size = 30
    end
    object DstPedidosIMP_OK: TIntegerField
      FieldName = 'IMP_OK'
      Origin = 'PEDIDOS.IMP_OK'
      Required = True
    end
    object DstPedidosDATAHORA_EMISSAO: TDateTimeField
      FieldName = 'DATAHORA_EMISSAO'
      Origin = 'PEDIDOS.DATAHORA_EMISSAO'
    end
    object DstPedidosDATAHORA_SAIDAENTRADA: TDateTimeField
      FieldName = 'DATAHORA_SAIDAENTRADA'
      Origin = 'PEDIDOS.DATAHORA_SAIDAENTRADA'
    end
    object DstPedidosDATAHORA_SAIDA: TDateTimeField
      FieldName = 'DATAHORA_SAIDA'
      Origin = 'PEDIDOS.DATAHORA_SAIDA'
    end
    object DstPedidosFIM_PED: TIntegerField
      FieldName = 'FIM_PED'
      Origin = 'PEDIDOS.FIM_PED'
      Required = True
    end
    object DstPedidosCOTACAO: TIBBCDField
      FieldName = 'COTACAO'
      Origin = 'PEDIDOS.COTACAO'
      Precision = 18
      Size = 3
    end
    object DstPedidosCOTACAO_ENABLED: TIntegerField
      FieldName = 'COTACAO_ENABLED'
      Origin = 'PEDIDOS.COTACAO_ENABLED'
    end
    object DstPedidosCOD_CAIXA_OP_CL: TIntegerField
      FieldName = 'COD_CAIXA_OP_CL'
      Origin = 'PEDIDOS.COD_CAIXA_OP_CL'
      Required = True
    end
    object DstPedidosCNPJ_SUBST_TRIB: TIBStringField
      FieldName = 'CNPJ_SUBST_TRIB'
      Origin = 'PEDIDOS.CNPJ_SUBST_TRIB'
      Size = 30
    end
    object DstPedidosIE_SUBST_TRIB: TIBStringField
      FieldName = 'IE_SUBST_TRIB'
      Origin = 'PEDIDOS.IE_SUBST_TRIB'
      Size = 30
    end
    object DstPedidosFAT_01: TIBStringField
      FieldName = 'FAT_01'
      Origin = 'PEDIDOS.FAT_01'
      Size = 30
    end
    object DstPedidosVENCIMENTO_01: TDateTimeField
      FieldName = 'VENCIMENTO_01'
      Origin = 'PEDIDOS.VENCIMENTO_01'
    end
    object DstPedidosVALOR_01: TIBBCDField
      FieldName = 'VALOR_01'
      Origin = 'PEDIDOS.VALOR_01'
      Precision = 18
      Size = 3
    end
    object DstPedidosFAT_02: TIBStringField
      FieldName = 'FAT_02'
      Origin = 'PEDIDOS.FAT_02'
      Size = 30
    end
    object DstPedidosVENCIMENTO_02: TDateTimeField
      FieldName = 'VENCIMENTO_02'
      Origin = 'PEDIDOS.VENCIMENTO_02'
    end
    object DstPedidosVALOR_02: TIBBCDField
      FieldName = 'VALOR_02'
      Origin = 'PEDIDOS.VALOR_02'
      Precision = 18
      Size = 3
    end
    object DstPedidosFAT_03: TIBStringField
      FieldName = 'FAT_03'
      Origin = 'PEDIDOS.FAT_03'
      Size = 30
    end
    object DstPedidosVENCIMENTO_03: TDateTimeField
      FieldName = 'VENCIMENTO_03'
      Origin = 'PEDIDOS.VENCIMENTO_03'
    end
    object DstPedidosVALOR_03: TIBBCDField
      FieldName = 'VALOR_03'
      Origin = 'PEDIDOS.VALOR_03'
      Precision = 18
      Size = 3
    end
    object DstPedidosCOD_CLI_TRANSP: TIntegerField
      FieldName = 'COD_CLI_TRANSP'
      Origin = 'PEDIDOS.COD_CLI_TRANSP'
    end
    object DstPedidosTRANSP_NOME: TIBStringField
      FieldName = 'TRANSP_NOME'
      Origin = 'PEDIDOS.TRANSP_NOME'
      Size = 60
    end
    object DstPedidosTRANSP_FRETE_CONTA: TIBStringField
      FieldName = 'TRANSP_FRETE_CONTA'
      Origin = 'PEDIDOS.TRANSP_FRETE_CONTA'
      Size = 30
    end
    object DstPedidosTRANSP_PLACA_VEICULO: TIBStringField
      FieldName = 'TRANSP_PLACA_VEICULO'
      Origin = 'PEDIDOS.TRANSP_PLACA_VEICULO'
      Size = 30
    end
    object DstPedidosTRANSP_UF_VEICULO: TIBStringField
      FieldName = 'TRANSP_UF_VEICULO'
      Origin = 'PEDIDOS.TRANSP_UF_VEICULO'
      Size = 2
    end
    object DstPedidosTRANSP_CNPJ_CPF: TIBStringField
      FieldName = 'TRANSP_CNPJ_CPF'
      Origin = 'PEDIDOS.TRANSP_CNPJ_CPF'
      Size = 30
    end
    object DstPedidosTRANSP_ENDER: TIBStringField
      FieldName = 'TRANSP_ENDER'
      Origin = 'PEDIDOS.TRANSP_ENDER'
      Size = 255
    end
    object DstPedidosTRANSP_MUNICIPIO: TIBStringField
      FieldName = 'TRANSP_MUNICIPIO'
      Origin = 'PEDIDOS.TRANSP_MUNICIPIO'
      Size = 30
    end
    object DstPedidosTRANSP_UF: TIBStringField
      FieldName = 'TRANSP_UF'
      Origin = 'PEDIDOS.TRANSP_UF'
      Size = 2
    end
    object DstPedidosTRANSP_IE: TIBStringField
      FieldName = 'TRANSP_IE'
      Origin = 'PEDIDOS.TRANSP_IE'
      Size = 30
    end
    object DstPedidosTRANSP_QNT: TIntegerField
      FieldName = 'TRANSP_QNT'
      Origin = 'PEDIDOS.TRANSP_QNT'
    end
    object DstPedidosTRANSP_ESPECIE: TIBStringField
      FieldName = 'TRANSP_ESPECIE'
      Origin = 'PEDIDOS.TRANSP_ESPECIE'
      Size = 30
    end
    object DstPedidosTRANSP_MARCA: TIBStringField
      FieldName = 'TRANSP_MARCA'
      Origin = 'PEDIDOS.TRANSP_MARCA'
      Size = 30
    end
    object DstPedidosTRANSP_NRO: TIntegerField
      FieldName = 'TRANSP_NRO'
      Origin = 'PEDIDOS.TRANSP_NRO'
    end
    object DstPedidosENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'PEDIDOS.ENABLED'
    end
    object DstPedidosULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'PEDIDOS.ULTATUAL'
    end
    object DstPedidosULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'PEDIDOS.ULTATUALCODSETOR'
    end
    object DstPedidosULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'PEDIDOS.ULTATUALCODSETORUSER'
    end
    object DstPedidosDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'PEDIDOS.DATAHORA'
    end
    object DstPedidosNUM_VIA: TIntegerField
      FieldName = 'NUM_VIA'
      Origin = 'PEDIDOS.NUM_VIA'
    end
    object DstPedidosNUM_FORM: TIBStringField
      FieldName = 'NUM_FORM'
      Origin = 'PEDIDOS.NUM_FORM'
      Size = 30
    end
    object DstPedidosSERIE_FORM: TIBStringField
      FieldName = 'SERIE_FORM'
      Origin = 'PEDIDOS.SERIE_FORM'
      Size = 10
    end
    object DstPedidosNUM_NF: TIBStringField
      FieldName = 'NUM_NF'
      Origin = 'PEDIDOS.NUM_NF'
      Size = 30
    end
    object DstPedidosSERIE_NF: TIBStringField
      FieldName = 'SERIE_NF'
      Origin = 'PEDIDOS.SERIE_NF'
      Size = 10
    end
    object DstPedidosDADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Origin = 'PEDIDOS.DADOS_ADICIONAIS'
      Size = 255
    end
    object DstPedidosOBS: TBlobField
      FieldName = 'OBS'
      Origin = 'PEDIDOS.OBS'
      Size = 8
    end
    object DstPedidosMODELO_NF: TIBStringField
      FieldName = 'MODELO_NF'
      Origin = 'PEDIDOS.MODELO_NF'
      FixedChar = True
      Size = 2
    end
    object DstPedidosICMS_RETIDO: TIBBCDField
      FieldName = 'ICMS_RETIDO'
      Origin = 'PEDIDOS.ICMS_RETIDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosNATUREZA_OP: TIBStringField
      FieldName = 'NATUREZA_OP'
      Origin = 'PEDIDOS.NATUREZA_OP'
      Size = 255
    end
    object DstPedidosNOME_DESTINATARIO: TIBStringField
      FieldName = 'NOME_DESTINATARIO'
      Origin = 'PEDIDOS.NOME_DESTINATARIO'
      Size = 50
    end
    object DstPedidosENDERECO_DESTINATARIO: TIBStringField
      FieldName = 'ENDERECO_DESTINATARIO'
      Origin = 'PEDIDOS.ENDERECO_DESTINATARIO'
      Size = 255
    end
    object DstPedidosBAIRRO_DESTINATARIO: TIBStringField
      FieldName = 'BAIRRO_DESTINATARIO'
      Origin = 'PEDIDOS.BAIRRO_DESTINATARIO'
      Size = 50
    end
    object DstPedidosCIDADE_DESTINATARIO: TIBStringField
      FieldName = 'CIDADE_DESTINATARIO'
      Origin = 'PEDIDOS.CIDADE_DESTINATARIO'
      Size = 50
    end
    object DstPedidosFONE_DESTINATARIO: TIBStringField
      FieldName = 'FONE_DESTINATARIO'
      Origin = 'PEDIDOS.FONE_DESTINATARIO'
      Size = 30
    end
    object DstPedidosCEP_DESTINATARIO: TIBStringField
      FieldName = 'CEP_DESTINATARIO'
      Origin = 'PEDIDOS.CEP_DESTINATARIO'
      Size = 30
    end
    object DstPedidosBRANCOS: TIBStringField
      FieldName = 'BRANCOS'
      Origin = 'PEDIDOS.BRANCOS'
    end
    object DstPedidosCODPDV: TIntegerField
      FieldName = 'CODPDV'
      Origin = 'PEDIDOS.CODPDV'
    end
    object DstPedidosSUB_SERIE_NF: TIBStringField
      FieldName = 'SUB_SERIE_NF'
      Origin = 'PEDIDOS.SUB_SERIE_NF'
      Size = 10
    end
    object DstPedidosESPECIE: TIBStringField
      FieldName = 'ESPECIE'
      Origin = 'PEDIDOS.ESPECIE'
      Size = 15
    end
    object DstPedidosOUTRAS_ICMS: TIBBCDField
      FieldName = 'OUTRAS_ICMS'
      Origin = 'PEDIDOS.OUTRAS_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosICMS_ANTECIPADO: TIBBCDField
      FieldName = 'ICMS_ANTECIPADO'
      Origin = 'PEDIDOS.ICMS_ANTECIPADO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosBASE_IPI: TIBBCDField
      FieldName = 'BASE_IPI'
      Origin = 'PEDIDOS.BASE_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosOUTRAS_IPI: TIBBCDField
      FieldName = 'OUTRAS_IPI'
      Origin = 'PEDIDOS.OUTRAS_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosALIQUOTA_IPI: TIBBCDField
      FieldName = 'ALIQUOTA_IPI'
      Origin = 'PEDIDOS.ALIQUOTA_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = 'PEDIDOS.CFOP'
    end
    object DstPedidosTRANSP_PESO_L: TIBBCDField
      FieldName = 'TRANSP_PESO_L'
      Origin = 'PEDIDOS.TRANSP_PESO_L'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosTRANSP_PESO_B: TIBBCDField
      FieldName = 'TRANSP_PESO_B'
      Origin = 'PEDIDOS.TRANSP_PESO_B'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object DstPedidosCOD_CONTABIL: TIntegerField
      FieldName = 'COD_CONTABIL'
      Origin = 'PEDIDOS.COD_CONTABIL'
    end
    object DstPedidosCOD_FISCAL_ICMS: TIntegerField
      FieldName = 'COD_FISCAL_ICMS'
      Origin = 'PEDIDOS.COD_FISCAL_ICMS'
    end
    object DstPedidosCOD_FISCAL_IPI: TIntegerField
      FieldName = 'COD_FISCAL_IPI'
      Origin = 'PEDIDOS.COD_FISCAL_IPI'
    end
    object DstPedidosVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Origin = 'PEDIDOS.VENCIMENTO'
    end
    object DstPedidosSITUACAO_NF: TIBStringField
      FieldName = 'SITUACAO_NF'
      Origin = 'PEDIDOS.SITUACAO_NF'
      FixedChar = True
      Size = 2
    end
  end
  object Dst_NF_Entrada: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NF_ENTRADA'
      'where'
      '  COD_NF_ENTRADA = :OLD_COD_NF_ENTRADA')
    InsertSQL.Strings = (
      'insert into NF_ENTRADA'
      
        '  (NUM_FORM, SERIE_FORM, NUM_VIA, NUM_NF, SERIE_NF, SUBSERIE_NF,' +
        ' MODELO_NF, '
      
        '   EMITENTE_NF, NUM_ITENS, COD_CLI_FORNECEDOR, COD_CLI_DESTINATA' +
        'RIO, COD_CLI_TRANSP, '
      
        '   DATAHORA_EMISSAO, DATAHORA_SAIDAENTRADA, DATAHORA_SAIDA, DATA' +
        'HORA_RECEBIMENTO, '
      
        '   NATUREZA_OP, DESCONTO, VALOR_TOTALPRODUTO, VALOR_TOTALNF, ALI' +
        'QUOTA_ICMS, '
      
        '   BASE_ICMS, VALOR_FRETE, VALOR_ICMS, VALOR_SEGURO, BASE_ICMS_S' +
        'UBST, OUTRAS_DESPESAS, '
      
        '   VALOR_ICMS_SUBST, VALOR_IPI, VALOR_ISENTO_IPI, VALOR_ISENTO_I' +
        'CMS, ICMS_RETIDO, '
      
        '   FAT_01, VENCIMENTO_01, VALOR_01, FAT_02, VENCIMENTO_02, VALOR' +
        '_02, FAT_03, '
      
        '   VENCIMENTO_03, VALOR_03, TRANSP_NOME, TRANSP_FRETE_CONTA, TRA' +
        'NSP_PLACA_VEICULO, '
      
        '   TRANSP_UF_VEICULO, TRANSP_CNPJ_CPF, TRANSP_ENDER, TRANSP_MUNI' +
        'CIPIO, '
      
        '   TRANSP_UF, TRANSP_IE, TRANSP_QNT, TRANSP_ESPECIE, TRANSP_MARC' +
        'A, TRANSP_NRO, '
      
        '   DADOS_ADICIONAIS, OBS, DATAHORA, ENABLED, ULTATUAL, ULTATUALC' +
        'ODSETOR, '
      
        '   ULTATUALCODSETORUSER, NOME_FORNECEDOR, ENDERECO_FORNECEDOR, B' +
        'AIRRO_FORNECEDOR, '
      
        '   CIDADE_FORNECEDOR, FONE_FORNECEDOR, CEP_FORNECEDOR, CNPJ_FORN' +
        'ECEDOR, '
      
        '   IE_FORNECEDOR, UF_FORNECEDOR, BRANCOS, FISCAL, SITUACAO_NF, C' +
        'FOP, TRANSP_PESO_L, '
      
        '   TRANSP_PESO_B, ALIQUOTA_IPI, ICMS_ANTECIPADO, ALIQUOTA_ICMS_D' +
        'IF, VALOR_ICMS_DIF, '
      
        '   BASE_IPI, OUTRAS_IPI, OUTRAS_ICMS, ESPECIE, COD_FISCAL_ICMS, ' +
        'COD_FISCAL_IPI, '
      '   ICMS_SUBST_INT, COD_CONTABIL)'
      'values'
      
        '  (:NUM_FORM, :SERIE_FORM, :NUM_VIA, :NUM_NF, :SERIE_NF, :SUBSER' +
        'IE_NF, '
      
        '   :MODELO_NF, :EMITENTE_NF, :NUM_ITENS, :COD_CLI_FORNECEDOR, :C' +
        'OD_CLI_DESTINATARIO, '
      
        '   :COD_CLI_TRANSP, :DATAHORA_EMISSAO, :DATAHORA_SAIDAENTRADA, :' +
        'DATAHORA_SAIDA, '
      
        '   :DATAHORA_RECEBIMENTO, :NATUREZA_OP, :DESCONTO, :VALOR_TOTALP' +
        'RODUTO, '
      
        '   :VALOR_TOTALNF, :ALIQUOTA_ICMS, :BASE_ICMS, :VALOR_FRETE, :VA' +
        'LOR_ICMS, '
      
        '   :VALOR_SEGURO, :BASE_ICMS_SUBST, :OUTRAS_DESPESAS, :VALOR_ICM' +
        'S_SUBST, '
      
        '   :VALOR_IPI, :VALOR_ISENTO_IPI, :VALOR_ISENTO_ICMS, :ICMS_RETI' +
        'DO, :FAT_01, '
      
        '   :VENCIMENTO_01, :VALOR_01, :FAT_02, :VENCIMENTO_02, :VALOR_02' +
        ', :FAT_03, '
      
        '   :VENCIMENTO_03, :VALOR_03, :TRANSP_NOME, :TRANSP_FRETE_CONTA,' +
        ' :TRANSP_PLACA_VEICULO, '
      
        '   :TRANSP_UF_VEICULO, :TRANSP_CNPJ_CPF, :TRANSP_ENDER, :TRANSP_' +
        'MUNICIPIO, '
      
        '   :TRANSP_UF, :TRANSP_IE, :TRANSP_QNT, :TRANSP_ESPECIE, :TRANSP' +
        '_MARCA, '
      
        '   :TRANSP_NRO, :DADOS_ADICIONAIS, :OBS, :DATAHORA, :ENABLED, :U' +
        'LTATUAL, '
      
        '   :ULTATUALCODSETOR, :ULTATUALCODSETORUSER, :NOME_FORNECEDOR, :' +
        'ENDERECO_FORNECEDOR, '
      
        '   :BAIRRO_FORNECEDOR, :CIDADE_FORNECEDOR, :FONE_FORNECEDOR, :CE' +
        'P_FORNECEDOR, '
      
        '   :CNPJ_FORNECEDOR, :IE_FORNECEDOR, :UF_FORNECEDOR, :BRANCOS, :' +
        'FISCAL, '
      
        '   :SITUACAO_NF, :CFOP, :TRANSP_PESO_L, :TRANSP_PESO_B, :ALIQUOT' +
        'A_IPI, '
      
        '   :ICMS_ANTECIPADO, :ALIQUOTA_ICMS_DIF, :VALOR_ICMS_DIF, :BASE_' +
        'IPI, :OUTRAS_IPI, '
      
        '   :OUTRAS_ICMS, :ESPECIE, :COD_FISCAL_ICMS, :COD_FISCAL_IPI, :I' +
        'CMS_SUBST_INT, '
      '   :COD_CONTABIL)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_NF_ENTRADA,'
      '  NUM_FORM,'
      '  SERIE_FORM,'
      '  NUM_VIA,'
      '  NUM_NF,'
      '  SERIE_NF,'
      '  SUBSERIE_NF,'
      '  MODELO_NF,'
      '  EMITENTE_NF,'
      '  NUM_ITENS,'
      '  COD_CLI_FORNECEDOR,'
      '  COD_CLI_DESTINATARIO,'
      '  COD_CLI_TRANSP,'
      '  DATAHORA_EMISSAO,'
      '  DATAHORA_SAIDAENTRADA,'
      '  DATAHORA_SAIDA,'
      '  DATAHORA_RECEBIMENTO,'
      '  NATUREZA_OP,'
      '  DESCONTO,'
      '  VALOR_TOTALPRODUTO,'
      '  VALOR_TOTALNF,'
      '  ALIQUOTA_ICMS,'
      '  BASE_ICMS,'
      '  VALOR_FRETE,'
      '  VALOR_ICMS,'
      '  VALOR_SEGURO,'
      '  BASE_ICMS_SUBST,'
      '  OUTRAS_DESPESAS,'
      '  VALOR_ICMS_SUBST,'
      '  VALOR_IPI,'
      '  VALOR_ISENTO_IPI,'
      '  VALOR_ISENTO_ICMS,'
      '  ICMS_RETIDO,'
      '  FAT_01,'
      '  VENCIMENTO_01,'
      '  VALOR_01,'
      '  FAT_02,'
      '  VENCIMENTO_02,'
      '  VALOR_02,'
      '  FAT_03,'
      '  VENCIMENTO_03,'
      '  VALOR_03,'
      '  TRANSP_NOME,'
      '  TRANSP_FRETE_CONTA,'
      '  TRANSP_PLACA_VEICULO,'
      '  TRANSP_UF_VEICULO,'
      '  TRANSP_CNPJ_CPF,'
      '  TRANSP_ENDER,'
      '  TRANSP_MUNICIPIO,'
      '  TRANSP_UF,'
      '  TRANSP_IE,'
      '  TRANSP_QNT,'
      '  TRANSP_ESPECIE,'
      '  TRANSP_MARCA,'
      '  TRANSP_NRO,'
      '  DADOS_ADICIONAIS,'
      '  OBS,'
      '  DATAHORA,'
      '  ENABLED,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER,'
      '  NOME_FORNECEDOR,'
      '  ENDERECO_FORNECEDOR,'
      '  BAIRRO_FORNECEDOR,'
      '  CIDADE_FORNECEDOR,'
      '  FONE_FORNECEDOR,'
      '  CEP_FORNECEDOR,'
      '  CNPJ_FORNECEDOR,'
      '  IE_FORNECEDOR,'
      '  UF_FORNECEDOR,'
      '  BRANCOS,'
      '  FISCAL,'
      '  SITUACAO_NF,'
      '  CFOP,'
      '  TRANSP_PESO_L,'
      '  TRANSP_PESO_B,'
      '  ALIQUOTA_IPI,'
      '  ICMS_ANTECIPADO,'
      '  ALIQUOTA_ICMS_DIF,'
      '  VALOR_ICMS_DIF,'
      '  BASE_IPI,'
      '  OUTRAS_IPI,'
      '  OUTRAS_ICMS,'
      '  ESPECIE,'
      '  COD_FISCAL_ICMS,'
      '  COD_FISCAL_IPI,'
      '  ICMS_SUBST_INT,'
      '  COD_CONTABIL'
      'from NF_ENTRADA '
      'where'
      '  COD_NF_ENTRADA = :COD_NF_ENTRADA')
    SelectSQL.Strings = (
      'select * from NF_ENTRADA'
      'order by  COD_NF_ENTRADA')
    ModifySQL.Strings = (
      'update NF_ENTRADA'
      'set'
      '  NUM_FORM = :NUM_FORM,'
      '  SERIE_FORM = :SERIE_FORM,'
      '  NUM_VIA = :NUM_VIA,'
      '  NUM_NF = :NUM_NF,'
      '  SERIE_NF = :SERIE_NF,'
      '  SUBSERIE_NF = :SUBSERIE_NF,'
      '  MODELO_NF = :MODELO_NF,'
      '  EMITENTE_NF = :EMITENTE_NF,'
      '  NUM_ITENS = :NUM_ITENS,'
      '  COD_CLI_FORNECEDOR = :COD_CLI_FORNECEDOR,'
      '  COD_CLI_DESTINATARIO = :COD_CLI_DESTINATARIO,'
      '  COD_CLI_TRANSP = :COD_CLI_TRANSP,'
      '  DATAHORA_EMISSAO = :DATAHORA_EMISSAO,'
      '  DATAHORA_SAIDAENTRADA = :DATAHORA_SAIDAENTRADA,'
      '  DATAHORA_SAIDA = :DATAHORA_SAIDA,'
      '  DATAHORA_RECEBIMENTO = :DATAHORA_RECEBIMENTO,'
      '  NATUREZA_OP = :NATUREZA_OP,'
      '  DESCONTO = :DESCONTO,'
      '  VALOR_TOTALPRODUTO = :VALOR_TOTALPRODUTO,'
      '  VALOR_TOTALNF = :VALOR_TOTALNF,'
      '  ALIQUOTA_ICMS = :ALIQUOTA_ICMS,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  VALOR_FRETE = :VALOR_FRETE,'
      '  VALOR_ICMS = :VALOR_ICMS,'
      '  VALOR_SEGURO = :VALOR_SEGURO,'
      '  BASE_ICMS_SUBST = :BASE_ICMS_SUBST,'
      '  OUTRAS_DESPESAS = :OUTRAS_DESPESAS,'
      '  VALOR_ICMS_SUBST = :VALOR_ICMS_SUBST,'
      '  VALOR_IPI = :VALOR_IPI,'
      '  VALOR_ISENTO_IPI = :VALOR_ISENTO_IPI,'
      '  VALOR_ISENTO_ICMS = :VALOR_ISENTO_ICMS,'
      '  ICMS_RETIDO = :ICMS_RETIDO,'
      '  FAT_01 = :FAT_01,'
      '  VENCIMENTO_01 = :VENCIMENTO_01,'
      '  VALOR_01 = :VALOR_01,'
      '  FAT_02 = :FAT_02,'
      '  VENCIMENTO_02 = :VENCIMENTO_02,'
      '  VALOR_02 = :VALOR_02,'
      '  FAT_03 = :FAT_03,'
      '  VENCIMENTO_03 = :VENCIMENTO_03,'
      '  VALOR_03 = :VALOR_03,'
      '  TRANSP_NOME = :TRANSP_NOME,'
      '  TRANSP_FRETE_CONTA = :TRANSP_FRETE_CONTA,'
      '  TRANSP_PLACA_VEICULO = :TRANSP_PLACA_VEICULO,'
      '  TRANSP_UF_VEICULO = :TRANSP_UF_VEICULO,'
      '  TRANSP_CNPJ_CPF = :TRANSP_CNPJ_CPF,'
      '  TRANSP_ENDER = :TRANSP_ENDER,'
      '  TRANSP_MUNICIPIO = :TRANSP_MUNICIPIO,'
      '  TRANSP_UF = :TRANSP_UF,'
      '  TRANSP_IE = :TRANSP_IE,'
      '  TRANSP_QNT = :TRANSP_QNT,'
      '  TRANSP_ESPECIE = :TRANSP_ESPECIE,'
      '  TRANSP_MARCA = :TRANSP_MARCA,'
      '  TRANSP_NRO = :TRANSP_NRO,'
      '  DADOS_ADICIONAIS = :DADOS_ADICIONAIS,'
      '  OBS = :OBS,'
      '  DATAHORA = :DATAHORA,'
      '  ENABLED = :ENABLED,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER,'
      '  NOME_FORNECEDOR = :NOME_FORNECEDOR,'
      '  ENDERECO_FORNECEDOR = :ENDERECO_FORNECEDOR,'
      '  BAIRRO_FORNECEDOR = :BAIRRO_FORNECEDOR,'
      '  CIDADE_FORNECEDOR = :CIDADE_FORNECEDOR,'
      '  FONE_FORNECEDOR = :FONE_FORNECEDOR,'
      '  CEP_FORNECEDOR = :CEP_FORNECEDOR,'
      '  CNPJ_FORNECEDOR = :CNPJ_FORNECEDOR,'
      '  IE_FORNECEDOR = :IE_FORNECEDOR,'
      '  UF_FORNECEDOR = :UF_FORNECEDOR,'
      '  BRANCOS = :BRANCOS,'
      '  FISCAL = :FISCAL,'
      '  SITUACAO_NF = :SITUACAO_NF,'
      '  CFOP = :CFOP,'
      '  TRANSP_PESO_L = :TRANSP_PESO_L,'
      '  TRANSP_PESO_B = :TRANSP_PESO_B,'
      '  ALIQUOTA_IPI = :ALIQUOTA_IPI,'
      '  ICMS_ANTECIPADO = :ICMS_ANTECIPADO,'
      '  ALIQUOTA_ICMS_DIF = :ALIQUOTA_ICMS_DIF,'
      '  VALOR_ICMS_DIF = :VALOR_ICMS_DIF,'
      '  BASE_IPI = :BASE_IPI,'
      '  OUTRAS_IPI = :OUTRAS_IPI,'
      '  OUTRAS_ICMS = :OUTRAS_ICMS,'
      '  ESPECIE = :ESPECIE,'
      '  COD_FISCAL_ICMS = :COD_FISCAL_ICMS,'
      '  COD_FISCAL_IPI = :COD_FISCAL_IPI,'
      '  ICMS_SUBST_INT = :ICMS_SUBST_INT,'
      '  COD_CONTABIL = :COD_CONTABIL'
      'where'
      '  COD_NF_ENTRADA = :OLD_COD_NF_ENTRADA')
    Left = 138
    Top = 296
  end
  object Dst_NF_Entrada_Itens: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterInsert = AfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NF_ENTRADA_ITENS'
      'where'
      '  COD_NF_ENTRADA_ITENS = :OLD_COD_NF_ENTRADA_ITENS')
    InsertSQL.Strings = (
      'insert into NF_ENTRADA_ITENS'
      
        '  (COD_NF_ENTRADA, COD_PRODUTOS, REF_PRODUTOS, NUM_ITEM, CL_FIS,' +
        ' S_TRIB, '
      
        '   PRODUTO, COD_GRUPOP, COD_SUBGRUPOP, APR_UND, DATAHORA, QUANTI' +
        'DADE, PRC_CUSTO, '
      
        '   VALOR_DESCONTO, PERC_DESCONTO, VALOR_IPI, SUBTOTAL, BASE_ICMS' +
        ', BASE_ICMS_SUBST, '
      
        '   ALIQUOTA_ICMS, ALIQUOTA_IPI, REDUCAO_BASE_ICMS, VALOR_ICMS, E' +
        'NABLE_NUMSERIE, '
      
        '   OBS, ENABLED, ULTATUAL, ULTATUALCODSETOR, ULTATUALCODSETORUSE' +
        'R)'
      'values'
      
        '  (:COD_NF_ENTRADA, :COD_PRODUTOS, :REF_PRODUTOS, :NUM_ITEM, :CL' +
        '_FIS, :S_TRIB, '
      
        '   :PRODUTO, :COD_GRUPOP, :COD_SUBGRUPOP, :APR_UND, :DATAHORA, :' +
        'QUANTIDADE, '
      
        '   :PRC_CUSTO, :VALOR_DESCONTO, :PERC_DESCONTO, :VALOR_IPI, :SUB' +
        'TOTAL, '
      
        '   :BASE_ICMS, :BASE_ICMS_SUBST, :ALIQUOTA_ICMS, :ALIQUOTA_IPI, ' +
        ':REDUCAO_BASE_ICMS, '
      
        '   :VALOR_ICMS, :ENABLE_NUMSERIE, :OBS, :ENABLED, :ULTATUAL, :UL' +
        'TATUALCODSETOR, '
      '   :ULTATUALCODSETORUSER)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_NF_ENTRADA_ITENS,'
      '  COD_NF_ENTRADA,'
      '  COD_PRODUTOS,'
      '  REF_PRODUTOS,'
      '  NUM_ITEM,'
      '  CL_FIS,'
      '  S_TRIB,'
      '  PRODUTO,'
      '  COD_GRUPOP,'
      '  COD_SUBGRUPOP,'
      '  APR_UND,'
      '  DATAHORA,'
      '  QUANTIDADE,'
      '  PRC_CUSTO,'
      '  VALOR_DESCONTO,'
      '  PERC_DESCONTO,'
      '  VALOR_IPI,'
      '  SUBTOTAL,'
      '  BASE_ICMS,'
      '  BASE_ICMS_SUBST,'
      '  ALIQUOTA_ICMS,'
      '  ALIQUOTA_IPI,'
      '  REDUCAO_BASE_ICMS,'
      '  VALOR_ICMS,'
      '  ENABLE_NUMSERIE,'
      '  OBS,'
      '  ENABLED,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER'
      'from NF_ENTRADA_ITENS '
      'where'
      '  COD_NF_ENTRADA_ITENS = :COD_NF_ENTRADA_ITENS')
    SelectSQL.Strings = (
      'select * from NF_ENTRADA_ITENS'
      'where COD_NF_ENTRADA = :COD_NF_ENTRADA'
      'order by COD_NF_ENTRADA_ITENS')
    ModifySQL.Strings = (
      'update NF_ENTRADA_ITENS'
      'set'
      '  COD_NF_ENTRADA = :COD_NF_ENTRADA,'
      '  COD_PRODUTOS = :COD_PRODUTOS,'
      '  REF_PRODUTOS = :REF_PRODUTOS,'
      '  NUM_ITEM = :NUM_ITEM,'
      '  CL_FIS = :CL_FIS,'
      '  S_TRIB = :S_TRIB,'
      '  PRODUTO = :PRODUTO,'
      '  COD_GRUPOP = :COD_GRUPOP,'
      '  COD_SUBGRUPOP = :COD_SUBGRUPOP,'
      '  APR_UND = :APR_UND,'
      '  DATAHORA = :DATAHORA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  PRC_CUSTO = :PRC_CUSTO,'
      '  VALOR_DESCONTO = :VALOR_DESCONTO,'
      '  PERC_DESCONTO = :PERC_DESCONTO,'
      '  VALOR_IPI = :VALOR_IPI,'
      '  SUBTOTAL = :SUBTOTAL,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  BASE_ICMS_SUBST = :BASE_ICMS_SUBST,'
      '  ALIQUOTA_ICMS = :ALIQUOTA_ICMS,'
      '  ALIQUOTA_IPI = :ALIQUOTA_IPI,'
      '  REDUCAO_BASE_ICMS = :REDUCAO_BASE_ICMS,'
      '  VALOR_ICMS = :VALOR_ICMS,'
      '  ENABLE_NUMSERIE = :ENABLE_NUMSERIE,'
      '  OBS = :OBS,'
      '  ENABLED = :ENABLED,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER'
      'where'
      '  COD_NF_ENTRADA_ITENS = :OLD_COD_NF_ENTRADA_ITENS')
    DataSource = EntradaNFCadFrm.Dts_NF_Entrada
    Left = 31
    Top = 296
  end
  object Dst_NF_Entrada_NSerie: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NF_ENTRADA_NSERIE'
      'where'
      '  COD_NF_ENTRADA_NSERIE = :OLD_COD_NF_ENTRADA_NSERIE')
    InsertSQL.Strings = (
      'insert into NF_ENTRADA_NSERIE'
      
        '  (COD_NF_ENTRADA_ITENS, COD_NF_ENTRADA, COD_PRODUTOS, NUM_SERIE' +
        ', GARANTIA_POSVENDA, '
      
        '   GARANTIA_FABRICANTE, FIM_GARANTIA_POSVENDA, FIM_GARANTIA_FABR' +
        'ICANTE, '
      
        '   DATAHORA, ENABLED, ULTATUAL, ULTATUALCODSETOR, ULTATUALCODSET' +
        'ORUSER)'
      'values'
      
        '  (:COD_NF_ENTRADA_ITENS, :COD_NF_ENTRADA, :COD_PRODUTOS, :NUM_S' +
        'ERIE, :GARANTIA_POSVENDA, '
      
        '   :GARANTIA_FABRICANTE, :FIM_GARANTIA_POSVENDA, :FIM_GARANTIA_F' +
        'ABRICANTE, '
      
        '   :DATAHORA, :ENABLED, :ULTATUAL, :ULTATUALCODSETOR, :ULTATUALC' +
        'ODSETORUSER)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_NF_ENTRADA_NSERIE,'
      '  COD_NF_ENTRADA_ITENS,'
      '  COD_NF_ENTRADA,'
      '  COD_PRODUTOS,'
      '  NUM_SERIE,'
      '  GARANTIA_POSVENDA,'
      '  GARANTIA_FABRICANTE,'
      '  FIM_GARANTIA_POSVENDA,'
      '  FIM_GARANTIA_FABRICANTE,'
      '  DATAHORA,'
      '  ENABLED,'
      '  ULTATUAL,'
      '  ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER'
      'from NF_ENTRADA_NSERIE '
      'where'
      '  COD_NF_ENTRADA_NSERIE = :COD_NF_ENTRADA_NSERIE')
    SelectSQL.Strings = (
      'select *  from NF_ENTRADA_NSERIE where '
      'COD_NF_ENTRADA_ITENS = :COD_NF_ENTRADA_ITENS'
      'order by COD_NF_ENTRADA_NSERIE')
    ModifySQL.Strings = (
      'update NF_ENTRADA_NSERIE'
      'set'
      '  COD_NF_ENTRADA_ITENS = :COD_NF_ENTRADA_ITENS,'
      '  COD_NF_ENTRADA = :COD_NF_ENTRADA,'
      '  COD_PRODUTOS = :COD_PRODUTOS,'
      '  NUM_SERIE = :NUM_SERIE,'
      '  GARANTIA_POSVENDA = :GARANTIA_POSVENDA,'
      '  GARANTIA_FABRICANTE = :GARANTIA_FABRICANTE,'
      '  FIM_GARANTIA_POSVENDA = :FIM_GARANTIA_POSVENDA,'
      '  FIM_GARANTIA_FABRICANTE = :FIM_GARANTIA_FABRICANTE,'
      '  DATAHORA = :DATAHORA,'
      '  ENABLED = :ENABLED,'
      '  ULTATUAL = :ULTATUAL,'
      '  ULTATUALCODSETOR = :ULTATUALCODSETOR,'
      '  ULTATUALCODSETORUSER = :ULTATUALCODSETORUSER'
      'where'
      '  COD_NF_ENTRADA_NSERIE = :OLD_COD_NF_ENTRADA_NSERIE')
    DataSource = EntradaNFCadFrm.Dts_NF_Entrada_Itens
    Left = 255
    Top = 296
  end
end
