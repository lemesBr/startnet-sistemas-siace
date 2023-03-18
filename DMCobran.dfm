object DMCobranca: TDMCobranca
  OldCreateOrder = False
  Left = 824
  Top = 264
  Height = 386
  Width = 383
  object dts_cedente: TDataSource
    DataSet = Sds_cedente
    Left = 280
    Top = 72
  end
  object Dts_Crediario: TDataSource
    DataSet = SDS_Crediario
    Left = 128
    Top = 80
  end
  object QryTitulos: TSQLQuery
    DataSource = Dts_Crediario
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CREDIARIO WHERE SITUACAO ='#39'A'#39)
    SQLConnection = DM.SQLC
    Left = 128
    Top = 136
    object QryTitulosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QryTitulosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object QryTitulosDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object QryTitulosDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object QryTitulosDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object QryTitulosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object QryTitulosUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object QryTitulosUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object QryTitulosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object QryTitulosVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
    end
    object QryTitulosVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object QryTitulosVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object QryTitulosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object QryTitulosVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object QryTitulosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object QryTitulosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object QryTitulosCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object QryTitulosPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object QryTitulosNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object QryTitulosBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object QryTitulosREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object QryTitulosDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object QryTitulosID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
  end
  object qryCedentes: TSQLQuery
    DataSource = dts_cedente
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM boleto')
    SQLConnection = DM.SQLC
    Left = 280
    Top = 136
    object qryCedentesCODIGO_BOLETO: TIntegerField
      FieldName = 'CODIGO_BOLETO'
      Required = True
    end
    object qryCedentesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryCedentesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object qryCedentesBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object qryCedentesQUANT_DIAS_PROTESTO: TSmallintField
      FieldName = 'QUANT_DIAS_PROTESTO'
    end
    object qryCedentesOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object qryCedentesLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 80
    end
    object qryCedentesTIPO: TStringField
      FieldName = 'TIPO'
    end
    object qryCedentesNOMECEDENTE: TStringField
      FieldName = 'NOMECEDENTE'
      Size = 80
    end
    object qryCedentesCNPJCEDENTE: TStringField
      FieldName = 'CNPJCEDENTE'
      Size = 14
    end
    object qryCedentesTIPOPESSOACEDENTE: TStringField
      FieldName = 'TIPOPESSOACEDENTE'
      Size = 8
    end
    object qryCedentesCODIGOAGENCIA: TStringField
      FieldName = 'CODIGOAGENCIA'
      Size = 8
    end
    object qryCedentesDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      Size = 4
    end
    object qryCedentesNUMEROCONTA: TStringField
      FieldName = 'NUMEROCONTA'
      Size = 12
    end
    object qryCedentesDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      Size = 4
    end
    object qryCedentesCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 6
    end
    object qryCedentesCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 6
    end
    object qryCedentesVLRABATIMENTO: TFloatField
      FieldName = 'VLRABATIMENTO'
    end
    object qryCedentesVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object qryCedentesVLRDESPESACOBRANCA: TFloatField
      FieldName = 'VLRDESPESACOBRANCA'
    end
    object qryCedentesVLRIOF: TFloatField
      FieldName = 'VLRIOF'
    end
    object qryCedentesVLRMORAJUROS: TFloatField
      FieldName = 'VLRMORAJUROS'
    end
    object qryCedentesVLROUTRASDEPESAS: TFloatField
      FieldName = 'VLROUTRASDEPESAS'
    end
    object qryCedentesVLROUTROSCREDITOS: TFloatField
      FieldName = 'VLROUTROSCREDITOS'
    end
    object qryCedentesFLAG_GERAR_REMESSA: TStringField
      FieldName = 'FLAG_GERAR_REMESSA'
      Size = 1
    end
    object qryCedentesNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 11
    end
    object qryCedentesNUMERO_REMESSA: TIntegerField
      FieldName = 'NUMERO_REMESSA'
    end
    object qryCedentesANO_REFERENCIA: TStringField
      FieldName = 'ANO_REFERENCIA'
      Size = 2
    end
    object qryCedentesPROTESTAR_AUTOMATICO: TStringField
      FieldName = 'PROTESTAR_AUTOMATICO'
      Size = 1
    end
    object qryCedentesMODELO: TStringField
      FieldName = 'MODELO'
      Size = 6
    end
    object qryCedentesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object qryCedentesDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object qryCedentesNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
    end
    object qryCedentesCEDENTECODIGO: TStringField
      FieldName = 'CEDENTECODIGO'
      Size = 12
    end
    object qryCedentesCEDENTECODIGODIGITO: TStringField
      FieldName = 'CEDENTECODIGODIGITO'
      Size = 4
    end
    object qryCedentesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qryCedentesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object qryCedentesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qryCedentesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qryCedentesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object qryCedentesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qryCedentesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qryCedentesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object qryCedentesANO: TStringField
      FieldName = 'ANO'
      Size = 2
    end
    object qryCedentesTP_COBRANCA: TStringField
      FieldName = 'TP_COBRANCA'
      Size = 1
    end
    object qryCedentesdadosCedente: TStringField
      FieldKind = fkCalculated
      FieldName = 'dadosCedente'
      Size = 100
      Calculated = True
    end
  end
  object SDS_Crediario: TSimpleDataSet
    Aggregates = <>
    Connection.ConnectionName = 'SIAC'
    Connection.DriverName = 'Interbase'
    Connection.GetDriverFunc = 'getSQLDriverINTERBASE'
    Connection.LibraryName = 'dbexpint.dll'
    Connection.LoginPrompt = False
    Connection.Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\SIAC\SIAC.GDB'
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
    Connection.VendorLib = 'gds32.dll'
    Connection.Connected = True
    DataSet.CommandText = 'select * from CREDIARIO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 128
    Top = 32
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
    end
    object SDS_CrediarioVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object SDS_CrediarioVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object SDS_CrediarioVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object SDS_CrediarioVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object SDS_CrediarioVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object SDS_CrediarioVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
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
      Size = 1
    end
    object SDS_CrediarioDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object SDS_CrediarioID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
  end
  object Sds_cedente: TSimpleDataSet
    Aggregates = <>
    Connection.ConnectionName = 'SIAC'
    Connection.DriverName = 'Interbase'
    Connection.GetDriverFunc = 'getSQLDriverINTERBASE'
    Connection.LibraryName = 'dbexpint.dll'
    Connection.LoginPrompt = False
    Connection.Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\SIAC\SIAC.GDB'
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
    Connection.VendorLib = 'gds32.dll'
    Connection.Connected = True
    DataSet.CommandText = 'select * from BOLETO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 264
    Top = 24
    object Sds_cedenteCODIGO_BOLETO: TIntegerField
      FieldName = 'CODIGO_BOLETO'
      Required = True
    end
    object Sds_cedenteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_cedenteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Sds_cedenteBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object Sds_cedenteQUANT_DIAS_PROTESTO: TSmallintField
      FieldName = 'QUANT_DIAS_PROTESTO'
    end
    object Sds_cedenteOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object Sds_cedenteLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 80
    end
    object Sds_cedenteTIPO: TStringField
      FieldName = 'TIPO'
    end
    object Sds_cedenteNOMECEDENTE: TStringField
      FieldName = 'NOMECEDENTE'
      Size = 80
    end
    object Sds_cedenteCNPJCEDENTE: TStringField
      FieldName = 'CNPJCEDENTE'
      Size = 14
    end
    object Sds_cedenteTIPOPESSOACEDENTE: TStringField
      FieldName = 'TIPOPESSOACEDENTE'
      Size = 8
    end
    object Sds_cedenteCODIGOAGENCIA: TStringField
      FieldName = 'CODIGOAGENCIA'
      Size = 8
    end
    object Sds_cedenteDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      Size = 4
    end
    object Sds_cedenteNUMEROCONTA: TStringField
      FieldName = 'NUMEROCONTA'
      Size = 12
    end
    object Sds_cedenteDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      Size = 4
    end
    object Sds_cedenteCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 6
    end
    object Sds_cedenteCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 6
    end
    object Sds_cedenteVLRABATIMENTO: TFloatField
      FieldName = 'VLRABATIMENTO'
    end
    object Sds_cedenteVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object Sds_cedenteVLRDESPESACOBRANCA: TFloatField
      FieldName = 'VLRDESPESACOBRANCA'
    end
    object Sds_cedenteVLRIOF: TFloatField
      FieldName = 'VLRIOF'
    end
    object Sds_cedenteVLRMORAJUROS: TFloatField
      FieldName = 'VLRMORAJUROS'
    end
    object Sds_cedenteVLROUTRASDEPESAS: TFloatField
      FieldName = 'VLROUTRASDEPESAS'
    end
    object Sds_cedenteVLROUTROSCREDITOS: TFloatField
      FieldName = 'VLROUTROSCREDITOS'
    end
    object Sds_cedenteFLAG_GERAR_REMESSA: TStringField
      FieldName = 'FLAG_GERAR_REMESSA'
      Size = 1
    end
    object Sds_cedenteNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 11
    end
    object Sds_cedenteNUMERO_REMESSA: TIntegerField
      FieldName = 'NUMERO_REMESSA'
    end
    object Sds_cedenteANO_REFERENCIA: TStringField
      FieldName = 'ANO_REFERENCIA'
      Size = 2
    end
    object Sds_cedentePROTESTAR_AUTOMATICO: TStringField
      FieldName = 'PROTESTAR_AUTOMATICO'
      Size = 1
    end
    object Sds_cedenteMODELO: TStringField
      FieldName = 'MODELO'
      Size = 6
    end
    object Sds_cedenteUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_cedenteDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Sds_cedenteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
    end
    object Sds_cedenteCEDENTECODIGO: TStringField
      FieldName = 'CEDENTECODIGO'
      Size = 12
    end
    object Sds_cedenteCEDENTECODIGODIGITO: TStringField
      FieldName = 'CEDENTECODIGODIGITO'
      Size = 4
    end
    object Sds_cedenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Sds_cedenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Sds_cedenteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Sds_cedenteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Sds_cedenteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Sds_cedenteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Sds_cedenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Sds_cedenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object Sds_cedenteANO: TStringField
      FieldName = 'ANO'
      Size = 2
    end
    object Sds_cedenteTP_COBRANCA: TStringField
      FieldName = 'TP_COBRANCA'
      Size = 1
    end
  end
end
