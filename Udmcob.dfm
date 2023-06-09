object DMCOB: TDMCOB
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 578
  Width = 683
  object sds_cedentes: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from BOLETO'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    Left = 312
    Top = 8
    object sds_cedentesCODIGO_BOLETO: TIntegerField
      FieldName = 'CODIGO_BOLETO'
      Required = True
    end
    object sds_cedentesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_cedentesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object sds_cedentesBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object sds_cedentesQUANT_DIAS_PROTESTO: TSmallintField
      FieldName = 'QUANT_DIAS_PROTESTO'
    end
    object sds_cedentesOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object sds_cedentesLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 80
    end
    object sds_cedentesTIPO: TStringField
      FieldName = 'TIPO'
    end
    object sds_cedentesNOMECEDENTE: TStringField
      FieldName = 'NOMECEDENTE'
      Size = 80
    end
    object sds_cedentesCNPJCEDENTE: TStringField
      FieldName = 'CNPJCEDENTE'
      Size = 14
    end
    object sds_cedentesTIPOPESSOACEDENTE: TStringField
      FieldName = 'TIPOPESSOACEDENTE'
      Size = 8
    end
    object sds_cedentesCODIGOAGENCIA: TStringField
      FieldName = 'CODIGOAGENCIA'
      Size = 8
    end
    object sds_cedentesDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      Size = 4
    end
    object sds_cedentesNUMEROCONTA: TStringField
      FieldName = 'NUMEROCONTA'
      Size = 12
    end
    object sds_cedentesDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      Size = 4
    end
    object sds_cedentesCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 6
    end
    object sds_cedentesCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 6
    end
    object sds_cedentesVLRABATIMENTO: TFloatField
      FieldName = 'VLRABATIMENTO'
    end
    object sds_cedentesVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sds_cedentesVLRDESPESACOBRANCA: TFloatField
      FieldName = 'VLRDESPESACOBRANCA'
    end
    object sds_cedentesVLRIOF: TFloatField
      FieldName = 'VLRIOF'
    end
    object sds_cedentesVLRMORAJUROS: TFloatField
      FieldName = 'VLRMORAJUROS'
    end
    object sds_cedentesVLROUTRASDEPESAS: TFloatField
      FieldName = 'VLROUTRASDEPESAS'
    end
    object sds_cedentesVLROUTROSCREDITOS: TFloatField
      FieldName = 'VLROUTROSCREDITOS'
    end
    object sds_cedentesFLAG_GERAR_REMESSA: TStringField
      FieldName = 'FLAG_GERAR_REMESSA'
      Size = 1
    end
    object sds_cedentesNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 11
    end
    object sds_cedentesNUMERO_REMESSA: TIntegerField
      FieldName = 'NUMERO_REMESSA'
    end
    object sds_cedentesANO_REFERENCIA: TStringField
      FieldName = 'ANO_REFERENCIA'
      Size = 2
    end
    object sds_cedentesPROTESTAR_AUTOMATICO: TStringField
      FieldName = 'PROTESTAR_AUTOMATICO'
      Size = 1
    end
    object sds_cedentesMODELO: TStringField
      FieldName = 'MODELO'
      Size = 6
    end
    object sds_cedentesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object sds_cedentesDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object sds_cedentesNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
    end
    object sds_cedentesCEDENTECODIGODIGITO: TStringField
      FieldName = 'CEDENTECODIGODIGITO'
      Size = 4
    end
    object sds_cedentesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sds_cedentesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sds_cedentesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sds_cedentesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sds_cedentesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sds_cedentesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object sds_cedentesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sds_cedentesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sds_cedentesANO: TStringField
      FieldName = 'ANO'
      Size = 2
    end
    object sds_cedentesTP_COBRANCA: TStringField
      FieldName = 'TP_COBRANCA'
      Size = 1
    end
    object sds_cedentesLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 1
    end
    object sds_cedentesCEDENTECODIGO: TStringField
      FieldName = 'CEDENTECODIGO'
      Size = 12
    end
    object sds_cedentesPERC_JUROS: TFMTBCDField
      FieldName = 'PERC_JUROS'
      Precision = 18
      Size = 2
    end
    object sds_cedentesPERC_MULTA: TFMTBCDField
      FieldName = 'PERC_MULTA'
      Precision = 18
      Size = 2
    end
    object sds_cedentesCNAB: TStringField
      FieldName = 'CNAB'
      Size = 10
    end
    object sds_cedentesDIRRECEBE: TStringField
      FieldName = 'DIRRECEBE'
      Size = 100
    end
    object sds_cedentesDIRENVIA: TStringField
      FieldName = 'DIRENVIA'
      Size = 100
    end
    object sds_cedentesESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 5
    end
    object sds_cedentesACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 3
    end
    object sds_cedentesMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 50
    end
    object sds_cedentesVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 3
    end
    object sds_cedentesVERSAO_LOTE: TStringField
      FieldName = 'VERSAO_LOTE'
      Size = 3
    end
  end
  object Dts_Cedentes: TDataSource
    DataSet = sds_cedentes
    Left = 312
    Top = 64
  end
  object qryTitulos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select * from CREDIARIO WHERE SITUACAO='#39'A'#39' ORDER BY DATA_VENCIME' +
        'NTO ASC')
    SQLConnection = DM.SQLC
    Left = 113
    Top = 16
    object qryTitulosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryTitulosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryTitulosDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object qryTitulosDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Required = True
    end
    object qryTitulosDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object qryTitulosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 70
    end
    object qryTitulosUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object qryTitulosUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object qryTitulosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTitulosVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Required = True
      Precision = 15
      Size = 2
    end
    object qryTitulosVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
      Size = 2
    end
    object qryTitulosVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object qryTitulosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object qryTitulosVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryTitulosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object qryTitulosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryTitulosCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object qryTitulosPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object qryTitulosNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object qryTitulosBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object qryTitulosREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 10
    end
    object qryTitulosDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object qryTitulosID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object qryTitulosENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object qryTitulosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryTitulosNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object qryTitulosCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object qryTitulosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qryTitulosCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object qryTitulosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object qryTitulosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object qryTitulosNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 70
    end
    object qryTitulosANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object qryTitulosMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object qryTitulosTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object qryTitulosID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object qryTitulosNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object qryTitulosCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object qryTitulosCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object qryTitulosDT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object qryTitulosDIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object qryTitulosN_OS: TStringField
      FieldName = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object qryTitulosVLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Precision = 15
      Size = 2
    end
    object qryTitulosVALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Precision = 15
      Size = 2
    end
    object qryTitulosCOD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      FixedChar = True
      Size = 6
    end
    object qryTitulosFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qryTitulosCOD_AVALISTA: TIntegerField
      FieldName = 'COD_AVALISTA'
    end
    object qryTitulosCOD_FRETE: TIntegerField
      FieldName = 'COD_FRETE'
    end
    object qryTitulosCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
    end
    object qryTitulosCOM_REGISTRO: TIntegerField
      FieldName = 'COM_REGISTRO'
    end
  end
  object qryCedentes: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from BOLETO')
    SQLConnection = DM.SQLC
    Left = 392
    Top = 16
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
      Size = 300
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
    object qryCedentesLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 1
    end
    object qryCedentesPERC_JUROS: TFMTBCDField
      FieldName = 'PERC_JUROS'
      Precision = 15
      Size = 2
    end
    object qryCedentesPERC_MULTA: TFMTBCDField
      FieldName = 'PERC_MULTA'
      Precision = 15
      Size = 2
    end
    object qryCedentesCNAB: TStringField
      FieldName = 'CNAB'
      Size = 10
    end
    object qryCedentesDIRRECEBE: TStringField
      FieldName = 'DIRRECEBE'
      Size = 100
    end
    object qryCedentesDIRENVIA: TStringField
      FieldName = 'DIRENVIA'
      Size = 100
    end
    object qryCedentesESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 5
    end
    object qryCedentesACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 3
    end
  end
  object Sds_Cobranca: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CREDIARIO order by data_vencimento asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIGO_CLIENTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DATA_COMPRA'
        DataType = ftDate
      end
      item
        Name = 'DATA_VENCIMENTO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'DATA_BAIXA'
        DataType = ftDate
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'USUARIO_VENDA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USUARIO_BAIXA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SITUACAO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VALOR_COMPRA'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR_JUROS'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR_ACRESCIMO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR_DESCONTO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR_PAGAR'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR_PAGO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR_TOTAL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CODIGO_COMPRA'
        DataType = ftInteger
      end
      item
        Name = 'PARCELA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NUMBOLETO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BANCO_PORTADOR'
        DataType = ftInteger
      end
      item
        Name = 'REMESSA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DATACREDITO'
        DataType = ftDate
      end
      item
        Name = 'ID_PORTADOR'
        DataType = ftInteger
      end
      item
        Name = 'ENVIADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'NUMBOLETO1'
        DataType = ftInteger
      end
      item
        Name = 'CODIGOCEDENTE'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CHEK_BOX'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NUM_NOTA'
        DataType = ftInteger
      end
      item
        Name = 'SERIE_NOTA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NOME_SACADO'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'ANO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MES'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TP_BAIXA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_CONTRATO'
        DataType = ftInteger
      end
      item
        Name = 'NOME_ARQ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COBRADOR'
        DataType = ftInteger
      end
      item
        Name = 'COMISSAO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'DT_PREVISAO_PGTO'
        DataType = ftDate
      end
      item
        Name = 'DIAS_VENCIDO'
        DataType = ftInteger
      end
      item
        Name = 'N_OS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VLR_GRAFICA'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOR_COMISAO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'COD_ENTRADA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FILTRO'
        DataType = ftInteger
      end
      item
        Name = 'COD_AVALISTA'
        DataType = ftInteger
      end
      item
        Name = 'COD_FRETE'
        DataType = ftInteger
      end
      item
        Name = 'COD_CONV'
        DataType = ftInteger
      end
      item
        Name = 'COM_REGISTRO'
        DataType = ftInteger
      end
      item
        Name = 'RECEBIVEL'
        DataType = ftInteger
      end
      item
        Name = 'ID_CT_PARCELA'
        DataType = ftInteger
      end
      item
        Name = 'JUROS_POSTERGADOS'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'ID_CBR_REMESSA_UUID'
        DataType = ftString
        Size = 44
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
        Fields = 'DATA_VENCIMENTO'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    StoreDefs = True
    Left = 32
    Top = 183
    object Sds_CobrancaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_CobrancaCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Sds_CobrancaDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object Sds_CobrancaDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object Sds_CobrancaDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object Sds_CobrancaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object Sds_CobrancaUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object Sds_CobrancaUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object Sds_CobrancaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object Sds_CobrancaVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
    end
    object Sds_CobrancaVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object Sds_CobrancaVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object Sds_CobrancaVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object Sds_CobrancaVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object Sds_CobrancaVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object Sds_CobrancaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object Sds_CobrancaCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object Sds_CobrancaPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object Sds_CobrancaNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object Sds_CobrancaBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object Sds_CobrancaREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object Sds_CobrancaDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object Sds_CobrancaID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object Sds_CobrancaENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object Sds_CobrancaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_CobrancaNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object Sds_CobrancaCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object Sds_CobrancaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object Sds_CobrancaCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object Sds_CobrancaNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object Sds_CobrancaSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object Sds_CobrancaNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object Sds_CobrancaANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object Sds_CobrancaMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object Sds_CobrancaTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object Sds_CobrancaID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object Sds_CobrancaNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object Sds_CobrancaCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object Sds_CobrancaCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object Sds_CobrancaDT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object Sds_CobrancaDIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object Sds_CobrancaN_OS: TStringField
      FieldName = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object Sds_CobrancaVLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Precision = 15
      Size = 2
    end
    object Sds_CobrancaVALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Precision = 15
      Size = 2
    end
    object Sds_CobrancaCOD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      FixedChar = True
      Size = 6
    end
    object Sds_CobrancaFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object Sds_CobrancaCOD_AVALISTA: TIntegerField
      FieldName = 'COD_AVALISTA'
    end
    object Sds_CobrancaCOD_FRETE: TIntegerField
      FieldName = 'COD_FRETE'
    end
    object Sds_CobrancaCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
    end
    object Sds_CobrancaCOM_REGISTRO: TIntegerField
      FieldName = 'COM_REGISTRO'
    end
    object Sds_CobrancaRECEBIVEL: TIntegerField
      FieldName = 'RECEBIVEL'
    end
    object Sds_CobrancaID_CT_PARCELA: TIntegerField
      FieldName = 'ID_CT_PARCELA'
    end
    object Sds_CobrancaJUROS_POSTERGADOS: TFMTBCDField
      FieldName = 'JUROS_POSTERGADOS'
      Precision = 18
      Size = 2
    end
    object Sds_CobrancaID_CBR_REMESSA_UUID: TStringField
      FieldName = 'ID_CBR_REMESSA_UUID'
      Size = 44
    end
  end
  object dts_cobranca: TDataSource
    DataSet = CDS_COBRANCA
    Left = 32
    Top = 232
  end
  object SQLD_Cobranca: TSQLDataSet
    CommandText = 
      'select * from SP_COBRANCA(:Datai,:Dataf,:BANCO) order by DATA_VE' +
      'NCIMENTO  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Datai'
        ParamType = ptInput
        Value = '01/19/2015'
      end
      item
        DataType = ftString
        Name = 'Dataf'
        ParamType = ptInput
        Value = '01/20/2015'
      end
      item
        DataType = ftInteger
        Name = 'BANCO'
        ParamType = ptInput
        Value = '748'
      end>
    SQLConnection = DM.SQLC
    Left = 116
    Top = 130
    object SQLD_CobrancaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLD_CobrancaCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object SQLD_CobrancaDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object SQLD_CobrancaDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CobrancaDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SQLD_CobrancaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SQLD_CobrancaUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SQLD_CobrancaUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SQLD_CobrancaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SQLD_CobrancaVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
    end
    object SQLD_CobrancaVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object SQLD_CobrancaVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object SQLD_CobrancaVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object SQLD_CobrancaVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object SQLD_CobrancaVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object SQLD_CobrancaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object SQLD_CobrancaCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SQLD_CobrancaPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object SQLD_CobrancaNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object SQLD_CobrancaBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object SQLD_CobrancaREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object SQLD_CobrancaDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object SQLD_CobrancaID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object SQLD_CobrancaENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object SQLD_CobrancaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SQLD_CobrancaNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object SQLD_CobrancaCOD_AVALISTA: TIntegerField
      FieldName = 'COD_AVALISTA'
    end
  end
  object DTSP_COBRANCA: TDataSetProvider
    DataSet = Sds_Cobranca
    Left = 32
    Top = 127
  end
  object CDS_COBRANCA: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_COBRANCA'
    Left = 119
    Top = 184
    object CDS_COBRANCACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_COBRANCACODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_COBRANCADATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object CDS_COBRANCADATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_COBRANCADATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object CDS_COBRANCAHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CDS_COBRANCAUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object CDS_COBRANCAUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object CDS_COBRANCASITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object CDS_COBRANCAVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
    end
    object CDS_COBRANCAVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object CDS_COBRANCAVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object CDS_COBRANCAVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object CDS_COBRANCAVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object CDS_COBRANCAVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object CDS_COBRANCAVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object CDS_COBRANCACODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object CDS_COBRANCAPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object CDS_COBRANCANUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object CDS_COBRANCABANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object CDS_COBRANCAREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object CDS_COBRANCADATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object CDS_COBRANCAID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object CDS_COBRANCAENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object CDS_COBRANCACOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object CDS_COBRANCANUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object CDS_COBRANCACODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object CDS_COBRANCATIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object CDS_COBRANCACHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object CDS_COBRANCANUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object CDS_COBRANCASERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object CDS_COBRANCANOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object CDS_COBRANCAANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object CDS_COBRANCAMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object CDS_COBRANCATP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object CDS_COBRANCAID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object CDS_COBRANCANOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object CDS_COBRANCACOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object CDS_COBRANCACOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object CDS_COBRANCADT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object CDS_COBRANCADIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object CDS_COBRANCAN_OS: TStringField
      FieldName = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object CDS_COBRANCAVLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Precision = 15
      Size = 2
    end
    object CDS_COBRANCAVALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Precision = 15
      Size = 2
    end
    object CDS_COBRANCACOD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      FixedChar = True
      Size = 6
    end
    object CDS_COBRANCAFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object CDS_COBRANCACOD_AVALISTA: TIntegerField
      FieldName = 'COD_AVALISTA'
    end
    object CDS_COBRANCACOD_FRETE: TIntegerField
      FieldName = 'COD_FRETE'
    end
  end
  object SDS_Titulos: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 
      'select * from CREDIARIO WHERE SITUACAO='#39'A'#39' ORDER BY DATA_VENCIME' +
      'NTO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 32
    Top = 31
    object SDS_TitulosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_TitulosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object SDS_TitulosDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object SDS_TitulosDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_TitulosDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_TitulosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_TitulosUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SDS_TitulosUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_TitulosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_TitulosVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      currency = True
      Precision = 15
    end
    object SDS_TitulosVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      currency = True
      Precision = 15
    end
    object SDS_TitulosVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 15
    end
    object SDS_TitulosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_TitulosVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
    end
    object SDS_TitulosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
    end
    object SDS_TitulosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_TitulosCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_TitulosPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object SDS_TitulosNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object SDS_TitulosBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object SDS_TitulosREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object SDS_TitulosDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object SDS_TitulosID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object SDS_TitulosENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object SDS_TitulosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_TitulosNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object SDS_TitulosCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object SDS_TitulosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object SDS_TitulosCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object SDS_TitulosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SDS_TitulosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object SDS_TitulosNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object SDS_TitulosID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object SDS_TitulosCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object SDS_TitulosCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object SDS_TitulosDT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object SDS_TitulosDIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object SDS_TitulosCOD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      FixedChar = True
      Size = 6
    end
    object SDS_TitulosANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object SDS_TitulosMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object SDS_TitulosTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object SDS_TitulosNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object SDS_TitulosN_OS: TStringField
      FieldName = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object SDS_TitulosVLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Precision = 15
      Size = 2
    end
    object SDS_TitulosVALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Precision = 15
      Size = 2
    end
    object SDS_TitulosFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object SDS_TitulosCOD_AVALISTA: TIntegerField
      FieldName = 'COD_AVALISTA'
    end
    object SDS_TitulosCOD_FRETE: TIntegerField
      FieldName = 'COD_FRETE'
    end
    object SDS_TitulosCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
    end
    object SDS_TitulosCOM_REGISTRO: TIntegerField
      FieldName = 'COM_REGISTRO'
    end
    object SDS_TitulosRECEBIVEL: TIntegerField
      FieldName = 'RECEBIVEL'
    end
    object SDS_TitulosID_CT_PARCELA: TIntegerField
      FieldName = 'ID_CT_PARCELA'
    end
    object SDS_TitulosJUROS_POSTERGADOS: TFMTBCDField
      FieldName = 'JUROS_POSTERGADOS'
      Precision = 18
      Size = 2
    end
    object SDS_TitulosID_CBR_REMESSA_UUID: TStringField
      FieldName = 'ID_CBR_REMESSA_UUID'
      Size = 44
    end
  end
  object DTS_Titulos: TDataSource
    DataSet = cds_titulos
    Left = 208
    Top = 72
  end
  object cds_titulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DTSP_Titulos'
    Left = 120
    Top = 72
    object cds_titulosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_titulosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cds_titulosDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object cds_titulosDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Required = True
    end
    object cds_titulosDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object cds_titulosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 70
    end
    object cds_titulosUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object cds_titulosUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object cds_titulosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cds_titulosVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Required = True
      Precision = 15
      Size = 2
    end
    object cds_titulosVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
      Size = 2
    end
    object cds_titulosVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object cds_titulosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object cds_titulosVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 2
    end
    object cds_titulosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object cds_titulosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cds_titulosCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object cds_titulosPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object cds_titulosNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object cds_titulosBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object cds_titulosREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 10
    end
    object cds_titulosDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object cds_titulosID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object cds_titulosENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object cds_titulosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cds_titulosNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object cds_titulosCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object cds_titulosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object cds_titulosCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object cds_titulosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cds_titulosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object cds_titulosNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 70
    end
    object cds_titulosANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object cds_titulosMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object cds_titulosTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object cds_titulosID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cds_titulosNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object cds_titulosCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object cds_titulosCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object cds_titulosDT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object cds_titulosDIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object cds_titulosN_OS: TStringField
      FieldName = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object cds_titulosVLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Precision = 15
      Size = 2
    end
    object cds_titulosVALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Precision = 15
      Size = 2
    end
    object cds_titulosCOD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      FixedChar = True
      Size = 6
    end
    object cds_titulosFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object cds_titulosCOD_AVALISTA: TIntegerField
      FieldName = 'COD_AVALISTA'
    end
    object cds_titulosCOD_FRETE: TIntegerField
      FieldName = 'COD_FRETE'
    end
    object cds_titulosCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
    end
    object cds_titulosCOM_REGISTRO: TIntegerField
      FieldName = 'COM_REGISTRO'
    end
  end
  object DTSP_Titulos: TDataSetProvider
    DataSet = qryTitulos
    Left = 193
    Top = 8
  end
  object dts_cobranca1: TDataSource
    DataSet = CDS_COBRANCA1
    Left = 217
    Top = 272
  end
  object qryCobranca1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CREDIARIO WHERE SITUACAO='#39'A'#39)
    SQLConnection = DM.SQLC
    Left = 224
    Top = 128
    object qryCobranca1CODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qryCobranca1CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qryCobranca1DATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object qryCobranca1DATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qryCobranca1DATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object qryCobranca1HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object qryCobranca1USUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object qryCobranca1SITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object qryCobranca1VALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
    end
    object qryCobranca1VALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object qryCobranca1VALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object qryCobranca1VALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object qryCobranca1VALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object qryCobranca1VALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object qryCobranca1VALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object qryCobranca1CODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object qryCobranca1PARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object qryCobranca1NUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object qryCobranca1BANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object qryCobranca1DATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object qryCobranca1ID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object qryCobranca1ENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object qryCobranca1COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryCobranca1NUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object qryCobranca1CODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object qryCobranca1TIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qryCobranca1CHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object qryCobranca1NUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object qryCobranca1SERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object qryCobranca1NOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object qryCobranca1ID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object qryCobranca1USUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object qryCobranca1REMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 10
    end
    object qryCobranca1COBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object qryCobranca1COMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object qryCobranca1DT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object qryCobranca1DIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object qryCobranca1COD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      FixedChar = True
      Size = 6
    end
    object qryCobranca1ANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object qryCobranca1MES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object qryCobranca1TP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object qryCobranca1NOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object qryCobranca1N_OS: TStringField
      FieldName = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object qryCobranca1VLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Precision = 15
      Size = 2
    end
    object qryCobranca1VALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Precision = 15
      Size = 2
    end
    object qryCobranca1FILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qryCobranca1COD_AVALISTA: TIntegerField
      FieldName = 'COD_AVALISTA'
    end
    object qryCobranca1COD_FRETE: TIntegerField
      FieldName = 'COD_FRETE'
    end
    object qryCobranca1COD_CONV: TIntegerField
      FieldName = 'COD_CONV'
    end
    object qryCobranca1COM_REGISTRO: TIntegerField
      FieldName = 'COM_REGISTRO'
    end
  end
  object CDS_COBRANCA1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DTSP_COBRANCA1'
    Left = 218
    Top = 232
    object CDS_COBRANCA1COMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object CDS_COBRANCA1CODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDS_COBRANCA1CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object CDS_COBRANCA1DATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object CDS_COBRANCA1DATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_COBRANCA1DATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object CDS_COBRANCA1HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CDS_COBRANCA1USUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object CDS_COBRANCA1USUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object CDS_COBRANCA1SITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object CDS_COBRANCA1VALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA1VALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA1VALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA1VALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA1VALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA1VALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA1VALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA1CODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object CDS_COBRANCA1PARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object CDS_COBRANCA1NUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object CDS_COBRANCA1BANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object CDS_COBRANCA1REMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 10
    end
    object CDS_COBRANCA1DATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object CDS_COBRANCA1ID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object CDS_COBRANCA1ENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object CDS_COBRANCA1COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object CDS_COBRANCA1NUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object CDS_COBRANCA1CODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object CDS_COBRANCA1TIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object CDS_COBRANCA1CHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object CDS_COBRANCA1NUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object CDS_COBRANCA1SERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object CDS_COBRANCA1NOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object CDS_COBRANCA1ID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object CDS_COBRANCA1COBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object CDS_COBRANCA1NomeCobrador: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCobrador'
      LookupDataSet = DM.SDS_Usuarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'USUARIO'
      KeyFields = 'COBRADOR'
      Lookup = True
    end
    object CDS_COBRANCA1DT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object CDS_COBRANCA1DIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object CDS_COBRANCA1COD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      FixedChar = True
      Size = 6
    end
    object CDS_COBRANCA1ANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object CDS_COBRANCA1MES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object CDS_COBRANCA1TP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object CDS_COBRANCA1NOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object CDS_COBRANCA1N_OS: TStringField
      FieldName = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object CDS_COBRANCA1VLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Precision = 15
      Size = 2
    end
    object CDS_COBRANCA1VALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Precision = 15
      Size = 2
    end
    object CDS_COBRANCA1FILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object CDS_COBRANCA1COD_AVALISTA: TIntegerField
      FieldName = 'COD_AVALISTA'
    end
    object CDS_COBRANCA1COD_FRETE: TIntegerField
      FieldName = 'COD_FRETE'
    end
    object CDS_COBRANCA1COD_CONV: TIntegerField
      FieldName = 'COD_CONV'
    end
    object CDS_COBRANCA1COM_REGISTRO: TIntegerField
      FieldName = 'COM_REGISTRO'
    end
  end
  object DTSP_COBRANCA1: TDataSetProvider
    DataSet = qryCobranca1
    Left = 224
    Top = 184
  end
  object dts_Cedentes1: TDataSource
    DataSet = qryCedentes
    Left = 392
    Top = 64
  end
  object sds_clientes: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from CLIENTES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO_CLIENTE'
    MasterSource = dts_cobranca1
    PacketRecords = 0
    Params = <>
    Left = 313
    Top = 178
    object sds_clientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_clientesNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object sds_clientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sds_clientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sds_clientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sds_clientesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object sds_clientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object sds_clientesTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sds_clientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sds_clientesNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object sds_clientesSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object sds_clientesFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object sds_clientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sds_clientesRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object sds_clientesFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sds_clientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object sds_clientesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object sds_clientesDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object sds_clientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object sds_clientesOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object sds_clientesCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object sds_clientesESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object sds_clientesRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object sds_clientesPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object sds_clientesMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object sds_clientesNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object sds_clientesCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object sds_clientesNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object sds_clientesTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object sds_clientesPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object sds_clientesLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object sds_clientesPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object sds_clientesTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object sds_clientesFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object sds_clientesOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object sds_clientesBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object sds_clientesNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object sds_clientesNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object sds_clientesCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object sds_clientesNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object sds_clientesNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object sds_clientesTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object sds_clientesTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object sds_clientesBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object sds_clientesAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object sds_clientesTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sds_clientesOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object sds_clientesOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object sds_clientesPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object sds_clientesPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object sds_clientesPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object sds_clientesREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object sds_clientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object sds_clientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sds_clientesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_clientesORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object sds_clientesDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object sds_clientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object sds_clientesNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object sds_clientesCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object sds_clientesCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object sds_clientesDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object sds_clientesCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object sds_clientesPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object sds_clientesATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object sds_clientesCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object sds_clientesCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object sds_clientesCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object sds_clientesVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object sds_clientesTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object sds_clientesNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object sds_clientesENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object sds_clientesENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object sds_clientesDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object sds_clientesDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object sds_clientesRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object sds_clientesRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object sds_clientesDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object sds_clientesFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object sds_clientesENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object sds_clientesCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object sds_clientesCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object sds_clientesCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object sds_clientesLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object sds_clientesINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object sds_clientesPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object sds_clientesINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object sds_clientesCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object sds_clientesCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object sds_clientesBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object sds_clientesUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
  end
  object Dts_clientes: TDataSource
    DataSet = sds_clientes
    Left = 310
    Top = 244
  end
  object Dts_cobranca2: TDataSource
    DataSet = cds_cobranca2
    Left = 433
    Top = 275
  end
  object cds_cobranca2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtsp_cobranca2'
    Left = 433
    Top = 235
    object cds_cobranca2COMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object cds_cobranca2CODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cds_cobranca2CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object cds_cobranca2DATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object cds_cobranca2DATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object cds_cobranca2DATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object cds_cobranca2HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object cds_cobranca2USUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object cds_cobranca2USUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object cds_cobranca2SITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cds_cobranca2VALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
    end
    object cds_cobranca2VALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object cds_cobranca2VALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object cds_cobranca2VALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object cds_cobranca2VALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object cds_cobranca2VALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object cds_cobranca2VALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object cds_cobranca2CODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object cds_cobranca2PARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object cds_cobranca2NUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object cds_cobranca2BANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object cds_cobranca2REMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object cds_cobranca2DATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object cds_cobranca2ID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object cds_cobranca2ENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object cds_cobranca2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cds_cobranca2NUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object cds_cobranca2CODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object cds_cobranca2TIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object cds_cobranca2CHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object cds_cobranca2NUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cds_cobranca2SERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object cds_cobranca2NOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object cds_cobranca2ID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cds_cobranca2COBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object cds_cobranca2DT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object cds_cobranca2DIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object cds_cobranca2COD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      FixedChar = True
      Size = 6
    end
  end
  object dtsp_cobranca2: TDataSetProvider
    DataSet = QryCobranca2
    Left = 432
    Top = 187
  end
  object QryCobranca2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_CREDIARIO_BOLETOS')
    SQLConnection = DM.SQLC
    Left = 432
    Top = 140
    object QryCobranca2COMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object IntegerField9: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField10: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object DateField5: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object DateField6: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object DateField7: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object StringField14: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object StringField15: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object StringField16: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField17: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object FMTBCDField8: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
    end
    object FMTBCDField9: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object FMTBCDField10: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object FMTBCDField11: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object FMTBCDField12: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object FMTBCDField13: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object FMTBCDField14: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object IntegerField11: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField18: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object StringField19: TStringField
      FieldName = 'NUMBOLETO'
    end
    object IntegerField12: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object StringField20: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object DateField8: TDateField
      FieldName = 'DATACREDITO'
    end
    object IntegerField13: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object StringField21: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object IntegerField14: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object IntegerField15: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object StringField22: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object StringField23: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object StringField24: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object IntegerField16: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object StringField25: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object StringField26: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object QryCobranca2ID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object QryCobranca2COBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object QryCobranca2DT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object QryCobranca2DIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object QryCobranca2COD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      FixedChar = True
      Size = 6
    end
  end
  object Dts_clientes2: TDataSource
    DataSet = Sds_clientes2
    Left = 528
    Top = 245
  end
  object Sds_clientes2: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CLIENTES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO_CLIENTE'
    MasterSource = Dts_cobranca2
    PacketRecords = 0
    Params = <>
    Left = 532
    Top = 173
    object IntegerField17: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField27: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object StringField28: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object StringField29: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object StringField30: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object StringField31: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object StringField32: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object StringField33: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object StringField34: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object DateField9: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object StringField35: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object BlobField1: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object StringField36: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object StringField37: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object StringField38: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object StringField39: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object StringField40: TStringField
      FieldName = 'USERCAD'
    end
    object DateField10: TDateField
      FieldName = 'DATACAD'
    end
    object StringField41: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object BlobField2: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object StringField42: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object StringField43: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object StringField44: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object StringField45: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object StringField46: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object StringField47: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object StringField48: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object DateField11: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object StringField49: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object StringField50: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object StringField51: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object StringField52: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object StringField53: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object StringField54: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object BlobField3: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object StringField55: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object StringField56: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object StringField57: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object IntegerField18: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object StringField58: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object StringField59: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object StringField60: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object StringField61: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object StringField62: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object StringField63: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object StringField64: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object BlobField4: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object BlobField5: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object StringField65: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object StringField66: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object StringField67: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object FMTBCDField15: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object StringField68: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object StringField69: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object IntegerField19: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object StringField70: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object DateField12: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object StringField71: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object StringField72: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object IntegerField20: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object IntegerField21: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object DateField13: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object IntegerField22: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object StringField73: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object StringField74: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object StringField75: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object StringField76: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object StringField77: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object FMTBCDField16: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object StringField78: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object IntegerField23: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object StringField79: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object StringField80: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object DateField14: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object DateField15: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object StringField81: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object FMTBCDField17: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object DateField16: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object StringField82: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object StringField83: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object StringField84: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object IntegerField24: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object StringField85: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object FMTBCDField18: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object StringField86: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object StringField87: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object StringField88: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object IntegerField25: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object StringField89: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object StringField90: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object StringField91: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
  end
  object qryCobranca3: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_CREDIARIO_BOLETOS_CIDADE')
    SQLConnection = DM.SQLC
    Left = 33
    Top = 297
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object DateField1: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object DateField2: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object DateField3: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object StringField1: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField3: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object FMTBCDField7: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField4: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'NUMBOLETO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object DateField4: TDateField
      FieldName = 'DATACREDITO'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object StringField6: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object IntegerField6: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object IntegerField7: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object StringField7: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object StringField8: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object StringField9: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object IntegerField8: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object StringField10: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object StringField11: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object IntegerField26: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object StringField12: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object StringField13: TStringField
      FieldName = 'REMESSA'
      Size = 10
    end
    object IntegerField27: TIntegerField
      FieldName = 'COBRADOR'
    end
    object FMTBCDField19: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object DateField17: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object IntegerField28: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object qryCobranca3MES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object qryCobranca3TP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object qryCobranca3NOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object qryCobranca3N_OS: TStringField
      FieldName = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object qryCobranca3VLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Precision = 15
      Size = 2
    end
    object qryCobranca3VALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Precision = 15
      Size = 2
    end
    object qryCobranca3NOME_RS: TStringField
      FieldName = 'NOME_RS'
      Size = 50
    end
    object qryCobranca3CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qryCobranca3UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qryCobranca3COD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object qryCobranca3DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qryCobranca3ANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object qryCobranca3ID_CONTRATO1: TIntegerField
      FieldName = 'ID_CONTRATO1'
    end
    object qryCobranca3DESCRICAO1: TStringField
      FieldName = 'DESCRICAO1'
      Size = 70
    end
    object qryCobranca3ID_PLANO: TIntegerField
      FieldName = 'ID_PLANO'
    end
  end
  object DTSP_COBRANCA3: TDataSetProvider
    DataSet = qryCobranca3
    Left = 34
    Top = 345
  end
  object CDS_COBRANCA3: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_COBRANCA3'
    Left = 35
    Top = 392
    object CDS_COBRANCA3CODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDS_COBRANCA3CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object CDS_COBRANCA3DATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object CDS_COBRANCA3DATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_COBRANCA3DATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object CDS_COBRANCA3HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CDS_COBRANCA3USUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object CDS_COBRANCA3SITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object CDS_COBRANCA3VALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA3VALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA3VALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA3VALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA3VALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA3VALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA3VALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object CDS_COBRANCA3CODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object CDS_COBRANCA3PARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object CDS_COBRANCA3NUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object CDS_COBRANCA3BANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object CDS_COBRANCA3DATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object CDS_COBRANCA3ID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object CDS_COBRANCA3ENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object CDS_COBRANCA3COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object CDS_COBRANCA3NUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object CDS_COBRANCA3CODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object CDS_COBRANCA3TIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object CDS_COBRANCA3CHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object CDS_COBRANCA3NUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object CDS_COBRANCA3SERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object CDS_COBRANCA3NOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object CDS_COBRANCA3ID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object CDS_COBRANCA3USUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object CDS_COBRANCA3REMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 10
    end
    object CDS_COBRANCA3COBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object CDS_COBRANCA3COMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object CDS_COBRANCA3DT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object CDS_COBRANCA3DIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object CDS_COBRANCA3ANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object CDS_COBRANCA3MES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object CDS_COBRANCA3TP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object CDS_COBRANCA3NOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object CDS_COBRANCA3N_OS: TStringField
      FieldName = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object CDS_COBRANCA3VLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Precision = 15
      Size = 2
    end
    object CDS_COBRANCA3VALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Precision = 15
      Size = 2
    end
    object CDS_COBRANCA3NOME_RS: TStringField
      FieldName = 'NOME_RS'
      Size = 50
    end
    object CDS_COBRANCA3CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object CDS_COBRANCA3UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CDS_COBRANCA3COD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object CDS_COBRANCA3DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object CDS_COBRANCA3ID_CONTRATO1: TIntegerField
      FieldName = 'ID_CONTRATO1'
    end
    object CDS_COBRANCA3DESCRICAO1: TStringField
      FieldName = 'DESCRICAO1'
      Size = 70
    end
    object CDS_COBRANCA3ID_PLANO: TIntegerField
      FieldName = 'ID_PLANO'
    end
  end
  object dts_cobranca3: TDataSource
    DataSet = CDS_COBRANCA3
    Left = 34
    Top = 433
  end
  object sds_clientes3: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CLIENTES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO_CLIENTE'
    MasterSource = dts_cobranca3
    PacketRecords = 0
    Params = <>
    Left = 114
    Top = 339
    object IntegerField40: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField106: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object StringField107: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object StringField108: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object StringField109: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object StringField110: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object StringField111: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object StringField112: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object StringField113: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object DateField23: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object StringField114: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object BlobField6: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object StringField115: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object StringField116: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object StringField117: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object StringField118: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object StringField119: TStringField
      FieldName = 'USERCAD'
    end
    object DateField24: TDateField
      FieldName = 'DATACAD'
    end
    object StringField120: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object BlobField7: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object StringField121: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object StringField122: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object StringField123: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object StringField124: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object StringField125: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object StringField126: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object StringField127: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object DateField25: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object StringField128: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object StringField129: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object StringField130: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object StringField131: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object StringField132: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object StringField133: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object BlobField8: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object StringField134: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object StringField135: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object StringField136: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object IntegerField41: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object StringField137: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object StringField138: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object StringField139: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object StringField140: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object StringField141: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object StringField142: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object StringField143: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object BlobField9: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object BlobField10: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object StringField144: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object StringField145: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object StringField146: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object FMTBCDField28: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object StringField147: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object StringField148: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object IntegerField42: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object StringField149: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object DateField26: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object StringField150: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object StringField151: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object IntegerField43: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object IntegerField44: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object DateField27: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object IntegerField45: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object StringField152: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object StringField153: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object StringField154: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object StringField155: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object StringField156: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object FMTBCDField29: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object StringField157: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object IntegerField46: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object StringField158: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object StringField159: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object DateField28: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object DateField29: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object StringField160: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object FMTBCDField30: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object DateField30: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object StringField161: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object StringField162: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object StringField163: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object IntegerField47: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object StringField164: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object FMTBCDField31: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object StringField165: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object StringField166: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object StringField167: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object IntegerField48: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object StringField168: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object StringField169: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object StringField170: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
  end
  object Dts_clientes3: TDataSource
    DataSet = sds_clientes3
    Left = 119
    Top = 404
  end
  object ACBrBoleto: TACBrBoleto
    MAIL = ACBrMail1
    Banco.Numero = 748
    Banco.TamanhoMaximoNossoNum = 5
    Banco.TipoCobranca = cobSicred
    Banco.LayoutVersaoArquivo = 81
    Banco.LayoutVersaoLote = 40
    Banco.CasasDecimaisMoraJuros = 2
    Cedente.Nome = 'TodaObra Materias p/ Construcao'
    Cedente.CodigoCedente = '4266443'
    Cedente.Agencia = '0284'
    Cedente.AgenciaDigito = '5'
    Cedente.Conta = '79489'
    Cedente.ContaDigito = '9'
    Cedente.CNPJCPF = '05.481.336/0001-37'
    Cedente.TipoInscricao = pJuridica
    Cedente.CedenteWS.ClientID = 'SGCBS02P'
    DirArqRemessa = 'C:\StartNet_Sistemas\Remessa'
    DirArqRetorno = 'C:\StartNet_Sistemas\Retorno'
    NumeroArquivo = 0
    ACBrBoletoFC = ACBrBoletoFCFR1
    Configuracoes.Arquivos.LogRegistro = True
    Configuracoes.WebService.SSLHttpLib = httpOpenSSL
    Configuracoes.WebService.SSLType = LT_TLSv1_2
    Configuracoes.WebService.StoreName = 'My'
    Configuracoes.WebService.TimeOut = 30000
    Configuracoes.WebService.UseCertificateHTTP = False
    Configuracoes.WebService.Ambiente = taHomologacao
    Configuracoes.WebService.Operacao = tpInclui
    Configuracoes.WebService.VersaoDF = '1.2'
    Left = 224
    Top = 366
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 232
    Top = 440
  end
  object OpenDialog: TOpenDialog
    Ctl3D = False
    Options = [ofHideReadOnly]
    Left = 623
    Top = 40
  end
  object SaveDialog: TSaveDialog
    Ctl3D = False
    Options = [ofHideReadOnly]
    Left = 623
    Top = 105
  end
  object ACBrExtenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 623
    Top = 170
  end
  object qryCBR_CONFIG: TFDQuery
    CachedUpdates = True
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      '  BOLETO.*,'
      '  EMPRESA.RAZAO_SOCIAL                     AS EMP_RAZAOSOCIAL,'
      '  EMPRESA.CNPJ                             AS EMP_CNPJ,'
      '  EMPRESA.ENDERECO ||'#39', '#39'|| EMPRESA.NUMERO AS EMP_ENDERECO,'
      '  EMPRESA.COMPLEMENTO                      AS EMP_COMPLEMENTO,'
      '  EMPRESA.BAIRRO                           AS EMP_BAIRRO,'
      '  EMPRESA.CIDADE,'
      '  EMPRESA.UF                               AS EMP_UF,'
      '  EMPRESA.CEP                              AS EMP_CEP,'
      '  EMPRESA.TELEFONE                         AS EMP_TELEFONE,'
      '  conta_bancaria.*'
      'FROM'
      '  BOLETO'
      '    INNER JOIN EMPRESA ON BOLETO.COD_EMPRESA = EMPRESA.CODIGO'
      
        '    INNER JOIN conta_bancaria ON (BOLETO.numeroconta = conta_ban' +
        'caria.conta)'
      'WHERE'
      ' BOLETO.COD_EMPRESA = :ID_EMPRESA and boleto.codigo_boleto =:cod'
      ''
      '')
    Left = 573
    Top = 386
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCBR_CONFIGCODIGO_BOLETO: TIntegerField
      FieldName = 'CODIGO_BOLETO'
      Origin = 'CODIGO_BOLETO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCBR_CONFIGCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qryCBR_CONFIGDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object qryCBR_CONFIGBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
      Origin = 'BANCO_PORTADOR'
    end
    object qryCBR_CONFIGQUANT_DIAS_PROTESTO: TSmallintField
      FieldName = 'QUANT_DIAS_PROTESTO'
      Origin = 'QUANT_DIAS_PROTESTO'
    end
    object qryCBR_CONFIGOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 300
    end
    object qryCBR_CONFIGLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Origin = 'LOCAL_PAGAMENTO'
      Size = 80
    end
    object qryCBR_CONFIGTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qryCBR_CONFIGNOMECEDENTE: TStringField
      FieldName = 'NOMECEDENTE'
      Origin = 'NOMECEDENTE'
      Size = 80
    end
    object qryCBR_CONFIGCNPJCEDENTE: TStringField
      FieldName = 'CNPJCEDENTE'
      Origin = 'CNPJCEDENTE'
      Size = 14
    end
    object qryCBR_CONFIGTIPOPESSOACEDENTE: TStringField
      FieldName = 'TIPOPESSOACEDENTE'
      Origin = 'TIPOPESSOACEDENTE'
      Size = 8
    end
    object qryCBR_CONFIGCODIGOAGENCIA: TStringField
      FieldName = 'CODIGOAGENCIA'
      Origin = 'CODIGOAGENCIA'
      Size = 8
    end
    object qryCBR_CONFIGDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      Origin = 'DIGITOAGENCIA'
      Size = 4
    end
    object qryCBR_CONFIGNUMEROCONTA: TStringField
      FieldName = 'NUMEROCONTA'
      Origin = 'NUMEROCONTA'
      Size = 12
    end
    object qryCBR_CONFIGDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      Origin = 'DIGITOCONTA'
      Size = 4
    end
    object qryCBR_CONFIGCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Origin = 'CARTEIRA'
      Size = 6
    end
    object qryCBR_CONFIGVLRABATIMENTO: TFloatField
      FieldName = 'VLRABATIMENTO'
      Origin = 'VLRABATIMENTO'
    end
    object qryCBR_CONFIGVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      Origin = 'VLRDESCONTO'
    end
    object qryCBR_CONFIGVLRDESPESACOBRANCA: TFloatField
      FieldName = 'VLRDESPESACOBRANCA'
      Origin = 'VLRDESPESACOBRANCA'
    end
    object qryCBR_CONFIGVLRIOF: TFloatField
      FieldName = 'VLRIOF'
      Origin = 'VLRIOF'
    end
    object qryCBR_CONFIGVLRMORAJUROS: TFloatField
      FieldName = 'VLRMORAJUROS'
      Origin = 'VLRMORAJUROS'
    end
    object qryCBR_CONFIGVLROUTRASDEPESAS: TFloatField
      FieldName = 'VLROUTRASDEPESAS'
      Origin = 'VLROUTRASDEPESAS'
    end
    object qryCBR_CONFIGVLROUTROSCREDITOS: TFloatField
      FieldName = 'VLROUTROSCREDITOS'
      Origin = 'VLROUTROSCREDITOS'
    end
    object qryCBR_CONFIGFLAG_GERAR_REMESSA: TStringField
      FieldName = 'FLAG_GERAR_REMESSA'
      Origin = 'FLAG_GERAR_REMESSA'
      Size = 1
    end
    object qryCBR_CONFIGNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Origin = 'NOSSONUMERO'
      Size = 11
    end
    object qryCBR_CONFIGNUMERO_REMESSA: TIntegerField
      FieldName = 'NUMERO_REMESSA'
      Origin = 'NUMERO_REMESSA'
    end
    object qryCBR_CONFIGANO_REFERENCIA: TStringField
      FieldName = 'ANO_REFERENCIA'
      Origin = 'ANO_REFERENCIA'
      Size = 2
    end
    object qryCBR_CONFIGPROTESTAR_AUTOMATICO: TStringField
      FieldName = 'PROTESTAR_AUTOMATICO'
      Origin = 'PROTESTAR_AUTOMATICO'
      Size = 1
    end
    object qryCBR_CONFIGMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 6
    end
    object qryCBR_CONFIGUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object qryCBR_CONFIGDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object qryCBR_CONFIGNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Origin = 'NOME_AGENCIA'
    end
    object qryCBR_CONFIGCEDENTECODIGO: TStringField
      FieldName = 'CEDENTECODIGO'
      Origin = 'CEDENTECODIGO'
      Size = 12
    end
    object qryCBR_CONFIGCEDENTECODIGODIGITO: TStringField
      FieldName = 'CEDENTECODIGODIGITO'
      Origin = 'CEDENTECODIGODIGITO'
      Size = 4
    end
    object qryCBR_CONFIGCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object qryCBR_CONFIGENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object qryCBR_CONFIGUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryCBR_CONFIGEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object qryCBR_CONFIGNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryCBR_CONFIGCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qryCBR_CONFIGBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object qryCBR_CONFIGCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryCBR_CONFIGANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 2
    end
    object qryCBR_CONFIGTP_COBRANCA: TStringField
      FieldName = 'TP_COBRANCA'
      Origin = 'TP_COBRANCA'
      Size = 1
    end
    object qryCBR_CONFIGLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object qryCBR_CONFIGPERC_JUROS: TFMTBCDField
      FieldName = 'PERC_JUROS'
      Origin = 'PERC_JUROS'
      Precision = 18
      Size = 2
    end
    object qryCBR_CONFIGPERC_MULTA: TFMTBCDField
      FieldName = 'PERC_MULTA'
      Origin = 'PERC_MULTA'
      Precision = 18
      Size = 2
    end
    object qryCBR_CONFIGCNAB: TStringField
      FieldName = 'CNAB'
      Origin = 'CNAB'
      Size = 10
    end
    object qryCBR_CONFIGEMP_RAZAOSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMP_RAZAOSOCIAL'
      Origin = 'RAZAO_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object qryCBR_CONFIGEMP_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMP_CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object qryCBR_CONFIGEMP_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMP_ENDERECO'
      Origin = 'EMP_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 57
    end
    object qryCBR_CONFIGEMP_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMP_COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object qryCBR_CONFIGEMP_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMP_BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryCBR_CONFIGCIDADE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE_1'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryCBR_CONFIGEMP_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMP_UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object qryCBR_CONFIGEMP_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMP_CEP'
      Origin = 'CEP'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryCBR_CONFIGEMP_TELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMP_TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 16
    end
    object qryCBR_CONFIGDIRRECEBE: TStringField
      FieldName = 'DIRRECEBE'
      Origin = 'DIRRECEBE'
      Size = 100
    end
    object qryCBR_CONFIGDIRENVIA: TStringField
      FieldName = 'DIRENVIA'
      Origin = 'DIRENVIA'
      Size = 100
    end
    object qryCBR_CONFIGESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 5
    end
    object qryCBR_CONFIGACEITE: TStringField
      FieldName = 'ACEITE'
      Origin = 'ACEITE'
      Size = 3
    end
    object qryCBR_CONFIGMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 50
    end
    object qryCBR_CONFIGCOD_PLANO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_PLANO'
      Origin = 'COD_PLANO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryCBR_CONFIGCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryCBR_CONFIGFEBRABAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FEBRABAN'
      Origin = 'FEBRABAN'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object qryCBR_CONFIGBANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO'
      Origin = 'BANCO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryCBR_CONFIGTITULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TITULAR'
      Origin = 'TITULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryCBR_CONFIGAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryCBR_CONFIGCONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'CONTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryCBR_CONFIGDIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DIGITO'
      Origin = 'DIGITO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object qryCBR_CONFIGTIPO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_1'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryCBR_CONFIGUSERCAD_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USERCAD_1'
      Origin = 'USERCAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryCBR_CONFIGDATACAD_1: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATACAD_1'
      Origin = 'DATACAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryCBR_CONFIGVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      Size = 3
    end
    object qryCBR_CONFIGVERSAO_LOTE: TStringField
      FieldName = 'VERSAO_LOTE'
      Origin = 'VERSAO_LOTE'
      Size = 3
    end
    object qryCBR_CONFIGCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Origin = 'CONVENIO'
      Size = 10
    end
  end
  object tabCBR_TITULOS: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      '  CRECEBER.*'
      'FROM'
      '  CRECEBER'
      'WHERE '
      '  1=1'
      '  AND CRECEBER.FKEMPRESA = :FKEMPRESA'
      '  AND CRECEBER.CODIGO = :CODIGO')
    Left = 469
    Top = 392
    ParamData = <
      item
        Name = 'FKEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabCBR_TITULOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCBR_TITULOSDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object tabCBR_TITULOSFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
    end
    object tabCBR_TITULOSDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 15
    end
    object tabCBR_TITULOSVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
    end
    object tabCBR_TITULOSDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      Origin = 'DTVENCIMENTO'
    end
    object tabCBR_TITULOSHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object tabCBR_TITULOSDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = 'DATA_RECEBIMENTO'
    end
    object tabCBR_TITULOSDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object tabCBR_TITULOSJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object tabCBR_TITULOSVL_RESTANTE: TFMTBCDField
      FieldName = 'VL_RESTANTE'
      Origin = 'VL_RESTANTE'
      Precision = 18
      Size = 2
    end
    object tabCBR_TITULOSSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object tabCBR_TITULOSFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object tabCBR_TITULOSFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object tabCBR_TITULOSVRECEBIDO: TCurrencyField
      FieldName = 'VRECEBIDO'
      Origin = 'VRECEBIDO'
    end
    object tabCBR_TITULOSFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object tabCBR_TITULOSTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object tabCBR_TITULOSNBOLETO: TIntegerField
      FieldName = 'NBOLETO'
      Origin = 'NBOLETO'
    end
    object tabCBR_TITULOSID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object tabCBR_TITULOSFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object tabCBR_TITULOSFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
    end
    object tabCBR_TITULOSBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 1
    end
    object tabCBR_TITULOSFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object tabCBR_TITULOSCARTAO: TStringField
      FieldName = 'CARTAO'
      Origin = 'CARTAO'
      Size = 1
    end
    object tabCBR_TITULOSFPG_VENDA: TIntegerField
      FieldName = 'FPG_VENDA'
      Origin = 'FPG_VENDA'
    end
    object tabCBR_TITULOSREMESSA: TStringField
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      FixedChar = True
      Size = 1
    end
    object tabCBR_TITULOSREMESSA_REENVIAR: TStringField
      FieldName = 'REMESSA_REENVIAR'
      Origin = 'REMESSA_REENVIAR'
      FixedChar = True
      Size = 1
    end
    object tabCBR_TITULOSREMESSA_DATA: TDateField
      FieldName = 'REMESSA_DATA'
      Origin = 'REMESSA_DATA'
    end
    object tabCBR_TITULOSREMESSA_ARQUIVO: TStringField
      FieldName = 'REMESSA_ARQUIVO'
      Origin = 'REMESSA_ARQUIVO'
      Size = 200
    end
    object tabCBR_TITULOSREGISTRO_ID_CBR_RETORNO: TLargeintField
      FieldName = 'REGISTRO_ID_CBR_RETORNO'
      Origin = 'REGISTRO_ID_CBR_RETORNO'
    end
    object tabCBR_TITULOSREGISTRO_STATUS: TStringField
      FieldName = 'REGISTRO_STATUS'
      Origin = 'REGISTRO_STATUS'
      FixedChar = True
      Size = 1
    end
    object tabCBR_TITULOSREGISTRO_DATA: TSQLTimeStampField
      FieldName = 'REGISTRO_DATA'
      Origin = 'REGISTRO_DATA'
    end
    object tabCBR_TITULOSREGISTRO_ARQUIVO: TStringField
      FieldName = 'REGISTRO_ARQUIVO'
      Origin = 'REGISTRO_ARQUIVO'
      Size = 200
    end
    object tabCBR_TITULOSRETORNO_ID_CBR_RETORNO: TIntegerField
      FieldName = 'RETORNO_ID_CBR_RETORNO'
      Origin = 'RETORNO_ID_CBR_RETORNO'
    end
    object tabCBR_TITULOSREGISTRO_HISTORICO: TStringField
      FieldName = 'REGISTRO_HISTORICO'
      Origin = 'REGISTRO_HISTORICO'
      Size = 200
    end
    object tabCBR_TITULOSREGISTRO_SEM_REGISTRO: TStringField
      FieldName = 'REGISTRO_SEM_REGISTRO'
      Origin = 'REGISTRO_SEM_REGISTRO'
      FixedChar = True
      Size = 1
    end
    object tabCBR_TITULOSREGISTRO_LIMITE_PRAZO: TStringField
      FieldName = 'REGISTRO_LIMITE_PRAZO'
      Origin = 'REGISTRO_LIMITE_PRAZO'
      FixedChar = True
      Size = 1
    end
    object tabCBR_TITULOSRETORNO_HISTORICO: TStringField
      FieldName = 'RETORNO_HISTORICO'
      Origin = 'RETORNO_HISTORICO'
      Size = 300
    end
    object tabCBR_TITULOSOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 300
    end
    object tabCBR_TITULOSID_CBR_REMESSA_UUID: TStringField
      FieldName = 'ID_CBR_REMESSA_UUID'
      Origin = 'ID_CBR_REMESSA_UUID'
      Size = 44
    end
    object tabCBR_TITULOSRETORNO_SEM_REGISTRO: TStringField
      FieldName = 'RETORNO_SEM_REGISTRO'
      Origin = 'RETORNO_SEM_REGISTRO'
      FixedChar = True
      Size = 1
    end
    object tabCBR_TITULOSRETORNO_LIMITE_PRAZO: TStringField
      FieldName = 'RETORNO_LIMITE_PRAZO'
      Origin = 'RETORNO_LIMITE_PRAZO'
      FixedChar = True
      Size = 1
    end
    object tabCBR_TITULOScalc_VlrTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'calc_VlrTotal'
      Calculated = True
    end
  end
  object ACBrBoletoFCFR1: TACBrBoletoFCFR
    DirLogo = 'C:\StartNet_Sistemas\Boleto\Logos'
    ModoThread = False
    IncorporarBackgroundPdf = False
    IncorporarFontesPdf = False
    Left = 344
    Top = 360
  end
end
