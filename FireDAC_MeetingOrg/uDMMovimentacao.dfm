object DMMovimentacao: TDMMovimentacao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 429
  Top = 158
  Height = 589
  Width = 990
  object qrMV_CONTRATO: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM MV_CONTRATO')
    Left = 72
    Top = 24
    object qrMV_CONTRATOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrMV_CONTRATOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object qrMV_CONTRATOCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Origin = 'CONTRATO'
      Size = 60
    end
    object qrMV_CONTRATOPLANO: TStringField
      FieldName = 'PLANO'
      Origin = 'PLANO'
      Size = 60
    end
    object qrMV_CONTRATOCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      Origin = 'CARACTERISTICA'
      Size = 60
    end
    object qrMV_CONTRATOSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object qrMV_CONTRATODESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
  end
  object qrCONTRATO: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM VIEW_CONTRATO')
    Left = 72
    Top = 88
    object qrCONTRATOCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 140
    end
    object qrCONTRATOCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Origin = 'CONTRATO'
      Size = 60
    end
    object qrCONTRATOPLANO: TStringField
      FieldName = 'PLANO'
      Origin = 'PLANO'
      Size = 60
    end
    object qrCONTRATOCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      Origin = 'CARACTERISTICA'
      Size = 60
    end
    object qrCONTRATOSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object qrCONTRATODESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qrCONTRATOVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrCONTRATOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object qrCONTRATOLANCAMENTO: TDateField
      FieldName = 'LANCAMENTO'
      Origin = 'LANCAMENTO'
    end
    object qrCONTRATOCHECK: TStringField
      FieldKind = fkCalculated
      FieldName = 'CHECK'
      Size = 1
      Calculated = True
    end
    object qrCONTRATOCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      FixedChar = True
      Size = 18
    end
    object qrCONTRATOID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
  end
  object qrMV_CT_PARCELA: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM MV_CT_PARCELA ')
    Left = 168
    Top = 88
    object qrMV_CT_PARCELAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrMV_CT_PARCELAID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
    end
    object qrMV_CT_PARCELALANCAMENTO: TDateField
      FieldName = 'LANCAMENTO'
      Origin = 'LANCAMENTO'
    end
    object qrMV_CT_PARCELAVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object qrMV_CT_PARCELAPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
    end
    object qrMV_CT_PARCELASITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object qrMV_CT_PARCELAVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_CT_PARCELAID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qrMV_CT_PARCELANUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qrMV_CT_PARCELABOLETO_GERADO: TIntegerField
      FieldName = 'BOLETO_GERADO'
      Origin = 'BOLETO_GERADO'
    end
  end
  object dsMV_CONTRATO: TDataSource
    DataSet = qrMV_CONTRATO
    Left = 168
    Top = 24
  end
  object qrMV_CT_IMOVEL_VENDA: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM MV_CT_IMOVEL_VENDA ')
    Left = 168
    Top = 136
    object qrMV_CT_IMOVEL_VENDAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrMV_CT_IMOVEL_VENDAID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
    end
    object qrMV_CT_IMOVEL_VENDAID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object qrMV_CT_IMOVEL_VENDAID_IMOVEL: TIntegerField
      FieldName = 'ID_IMOVEL'
      Origin = 'ID_IMOVEL'
    end
    object qrMV_CT_IMOVEL_VENDAID_COMPRADOR: TIntegerField
      FieldName = 'ID_COMPRADOR'
      Origin = 'ID_COMPRADOR'
    end
    object qrMV_CT_IMOVEL_VENDAID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qrMV_CT_IMOVEL_VENDAID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
      Origin = 'ID_CENTRO_CUSTO'
    end
    object qrMV_CT_IMOVEL_VENDATIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qrMV_CT_IMOVEL_VENDAVENDA_VISTA: TBCDField
      FieldName = 'VENDA_VISTA'
      Origin = 'VENDA_VISTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_CT_IMOVEL_VENDAINTERMEDIACAO: TBCDField
      FieldName = 'INTERMEDIACAO'
      Origin = 'INTERMEDIACAO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_CT_IMOVEL_VENDAVALOR_PROPOSTA: TBCDField
      FieldName = 'VALOR_PROPOSTA'
      Origin = 'VALOR_PROPOSTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_CT_IMOVEL_VENDAENTRADA: TBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_CT_IMOVEL_VENDASALDO_FINANCIAR: TBCDField
      FieldName = 'SALDO_FINANCIAR'
      Origin = 'SALDO_FINANCIAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_CT_IMOVEL_VENDAJUROS: TBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object qrMV_CT_IMOVEL_VENDAPARCELA_ENTRADA: TStringField
      FieldName = 'PARCELA_ENTRADA'
      Origin = 'PARCELA_ENTRADA'
      FixedChar = True
      Size = 1
    end
    object qrMV_CT_IMOVEL_VENDAPARCELAS_ENTRADA: TIntegerField
      FieldName = 'PARCELAS_ENTRADA'
      Origin = 'PARCELAS_ENTRADA'
    end
    object qrMV_CT_IMOVEL_VENDAENTRE_MESES: TIntegerField
      FieldName = 'ENTRE_MESES'
      Origin = 'ENTRE_MESES'
    end
  end
  object qrMV_CT_IMOVEL_ALUGUEL: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM MV_CT_IMOVEL_ALUGUEL ')
    Left = 168
    Top = 184
    object qrMV_CT_IMOVEL_ALUGUELID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrMV_CT_IMOVEL_ALUGUELID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
    end
    object qrMV_CT_IMOVEL_ALUGUELID_INQUILINO: TIntegerField
      FieldName = 'ID_INQUILINO'
      Origin = 'ID_INQUILINO'
    end
    object qrMV_CT_IMOVEL_ALUGUELID_PROPRIETARIO: TIntegerField
      FieldName = 'ID_PROPRIETARIO'
      Origin = 'ID_PROPRIETARIO'
    end
    object qrMV_CT_IMOVEL_ALUGUELID_IMOVEL: TIntegerField
      FieldName = 'ID_IMOVEL'
      Origin = 'ID_IMOVEL'
    end
    object qrMV_CT_IMOVEL_ALUGUELID_FIADOR: TIntegerField
      FieldName = 'ID_FIADOR'
      Origin = 'ID_FIADOR'
    end
    object qrMV_CT_IMOVEL_ALUGUELFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      Origin = 'FINALIDADE'
      Size = 100
    end
    object qrMV_CT_IMOVEL_ALUGUELPRAZO: TIntegerField
      FieldName = 'PRAZO'
      Origin = 'PRAZO'
    end
    object qrMV_CT_IMOVEL_ALUGUELOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 300
    end
    object qrMV_CT_IMOVEL_ALUGUELDATA_INICIO: TDateField
      FieldName = 'DATA_INICIO'
      Origin = 'DATA_INICIO'
    end
    object qrMV_CT_IMOVEL_ALUGUELDATA_TERMINO: TDateField
      FieldName = 'DATA_TERMINO'
      Origin = 'DATA_TERMINO'
    end
    object qrMV_CT_IMOVEL_ALUGUELPG_VENCIMENTO_DIA: TIntegerField
      FieldName = 'PG_VENCIMENTO_DIA'
      Origin = 'PG_VENCIMENTO_DIA'
    end
    object qrMV_CT_IMOVEL_ALUGUELDIAS_CARENCIA: TIntegerField
      FieldName = 'DIAS_CARENCIA'
      Origin = 'DIAS_CARENCIA'
    end
    object qrMV_CT_IMOVEL_ALUGUELMULTA_ATRASO: TIntegerField
      FieldName = 'MULTA_ATRASO'
      Origin = 'MULTA_ATRASO'
    end
    object qrMV_CT_IMOVEL_ALUGUELJUROS_MORA: TIntegerField
      FieldName = 'JUROS_MORA'
      Origin = 'JUROS_MORA'
    end
    object qrMV_CT_IMOVEL_ALUGUELDESCONTO: TIntegerField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qrMV_CT_IMOVEL_ALUGUELDESCONTO_DIAS: TIntegerField
      FieldName = 'DESCONTO_DIAS'
      Origin = 'DESCONTO_DIAS'
    end
    object qrMV_CT_IMOVEL_ALUGUELFIADOR: TStringField
      FieldName = 'FIADOR'
      Origin = 'FIADOR'
      FixedChar = True
      Size = 1
    end
  end
  object qrCREDIARIO: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT CODIGO,CODIGO_COMPRA,CODIGO_CLIENTE,DATA_COMPRA,'
      'DATA_VENCIMENTO,HISTORICO,USUARIO_VENDA,SITUACAO,'
      'VALOR_COMPRA,VALOR_JUROS,VALOR_ACRESCIMO,VALOR_DESCONTO,'
      'VALOR_PAGO,PARCELA,COD_EMPRESA,TIPO,NOME_SACADO,ANO,'
      'MES,ID_CONTRATO,ID_CT_PARCELA,VLR_GRAFICA,N_OS'
      'FROM CREDIARIO WHERE ID_CT_PARCELA IS NOT NULL'
      ' ORDER BY DATA_VENCIMENTO')
    Left = 72
    Top = 144
    object qrCREDIARIOCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
      Origin = 'CODIGO_COMPRA'
    end
    object qrCREDIARIOCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      Required = True
    end
    object qrCREDIARIODATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
      Origin = 'DATA_COMPRA'
    end
    object qrCREDIARIODATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
      Required = True
    end
    object qrCREDIARIOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 70
    end
    object qrCREDIARIOUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Origin = 'USUARIO_VENDA'
    end
    object qrCREDIARIOSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrCREDIARIOVALOR_COMPRA: TBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qrCREDIARIOVALOR_JUROS: TBCDField
      FieldName = 'VALOR_JUROS'
      Origin = 'VALOR_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrCREDIARIOVALOR_ACRESCIMO: TBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Origin = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrCREDIARIOVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrCREDIARIOVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrCREDIARIOPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object qrCREDIARIOCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrCREDIARIOTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qrCREDIARIONOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Origin = 'NOME_SACADO'
      Size = 70
    end
    object qrCREDIARIOANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object qrCREDIARIOMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object qrCREDIARIOID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
    end
    object qrCREDIARIOID_CT_PARCELA: TIntegerField
      FieldName = 'ID_CT_PARCELA'
      Origin = 'ID_CT_PARCELA'
    end
    object qrCREDIARIOVLR_GRAFICA: TBCDField
      FieldName = 'VLR_GRAFICA'
      Origin = 'VLR_GRAFICA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrCREDIARION_OS: TStringField
      FieldName = 'N_OS'
      Origin = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object qrCREDIARIOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object qrFUNCIONARIO_VALE: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIO_VALE ORDER BY LANCAMENTO')
    Left = 64
    Top = 368
    object qrFUNCIONARIO_VALEID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrFUNCIONARIO_VALELANCAMENTO: TDateField
      FieldName = 'LANCAMENTO'
      Origin = 'LANCAMENTO'
    end
    object qrFUNCIONARIO_VALEUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 100
    end
    object qrFUNCIONARIO_VALEVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrFUNCIONARIO_VALEMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Size = 100
    end
    object qrFUNCIONARIO_VALEALTERACAO: TDateField
      FieldName = 'ALTERACAO'
      Origin = 'ALTERACAO'
    end
    object qrFUNCIONARIO_VALEID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qrFUNCIONARIO_VALEQUITADO: TIntegerField
      FieldName = 'QUITADO'
      Origin = 'QUITADO'
    end
  end
  object qrVALE_GRID: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT distinct'
      '    CL.CODIGO AS ID,'
      '    CL.NOME_RS AS FUNCIONARIO,'
      '    CL.func_salario AS SALARIO,'
      
        '    (SELECT COUNT(ID) FROM FUNCIONARIO_VALE WHERE ID_CLIENTE = C' +
        'L.CODIGO AND QUITADO = 0) AS VALES,'
      
        '    coalesce((CL.FUNC_SALARIO - (SELECT SUM(VALOR) FROM FUNCIONA' +
        'RIO_VALE WHERE ID_CLIENTE = CL.CODIGO AND QUITADO = 0)),CL.FUNC_' +
        'SALARIO) AS TOTAL'
      'FROM CLIENTES CL'
      '    left JOIN FUNCIONARIO_VALE FV ON (FV.ID_CLIENTE = CL.codigo)'
      '    WHERE CL.FUNCIONARIO =  '#39'1'#39' AND CL.func_situacao = 1')
    Left = 64
    Top = 320
    object qrVALE_GRIDID: TIntegerField
      FieldName = 'ID'
      Origin = 'CODIGO'
    end
    object qrVALE_GRIDFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'NOME'
      Required = True
      Size = 70
    end
    object qrVALE_GRIDSALARIO: TBCDField
      FieldName = 'SALARIO'
      Origin = 'FUN_SALARIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrVALE_GRIDVALES: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VALES'
      Origin = 'VALES'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrVALE_GRIDTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object qrFUNCIONARIO_PAGO: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIO_PAGO ORDER BY DATA')
    Left = 208
    Top = 312
    object qrFUNCIONARIO_PAGOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrFUNCIONARIO_PAGOID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qrFUNCIONARIO_PAGODATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrFUNCIONARIO_PAGOVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object qrFUN_PAGOS: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      '    CL.nome_rs AS FUNCIONARIO,'
      '    FP.data AS DATA,'
      '    FP.valor AS VALOR'
      'FROM FUNCIONARIO_PAGO FP'
      '    INNER JOIN CLIENTES CL ON (CL.codigo = FP.id_cliente)'
      '    WHERE DATA between :DTI AND :DTF')
    Left = 208
    Top = 368
    ParamData = <
      item
        Name = 'DTI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTF'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qrFUN_PAGOSFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Required = True
      Size = 70
    end
    object qrFUN_PAGOSDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrFUN_PAGOSVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object qrImovel: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM VIEW_IMOVEL')
    Left = 272
    Top = 32
    object qrImovelENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 283
    end
    object qrImovelID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object qrImovelALUGUEL: TBCDField
      FieldName = 'ALUGUEL'
      Origin = 'ALUGUEL'
      Precision = 18
      Size = 2
    end
    object qrImovelVENDA: TBCDField
      FieldName = 'VENDA'
      Origin = 'VENDA'
      Precision = 18
      Size = 2
    end
    object qrImovelSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 30
    end
    object qrImovelID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
    end
    object qrImovelN_LOTE: TStringField
      FieldName = 'N_LOTE'
      Origin = 'N_LOTE'
      Size = 5
    end
    object qrImovelQUADRA: TStringField
      FieldName = 'QUADRA'
      Origin = 'QUADRA'
      Size = 5
    end
    object qrImovelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object qrImovelPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object qrImovelPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object qrImovelMARGEM_LUCRO: TBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object qrImovelPERC_IMPOSTO: TBCDField
      FieldName = 'PERC_IMPOSTO'
      Origin = 'PERC_IMPOSTO'
      Precision = 18
      Size = 2
    end
    object qrImovelESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
  end
  object dsImovel: TDataSource
    DataSet = qrImovel
    Left = 312
    Top = 32
  end
  object qrMV_CT_IMOVEL_COMPRA: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM MV_CT_IMOVEL_COMPRA ')
    Left = 168
    Top = 232
    object qrMV_CT_IMOVEL_COMPRAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrMV_CT_IMOVEL_COMPRAID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
    end
    object qrMV_CT_IMOVEL_COMPRAID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object qrMV_CT_IMOVEL_COMPRAID_IMOVEL: TIntegerField
      FieldName = 'ID_IMOVEL'
      Origin = 'ID_IMOVEL'
    end
    object qrMV_CT_IMOVEL_COMPRAID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qrMV_CT_IMOVEL_COMPRAID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
      Origin = 'ID_CENTRO_CUSTO'
    end
    object qrMV_CT_IMOVEL_COMPRATIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qrMV_CT_IMOVEL_COMPRAPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      Origin = 'PARCELAS'
    end
    object qrMV_CT_IMOVEL_COMPRADATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
      Origin = 'DATA_COMPRA'
    end
    object qrMV_CT_IMOVEL_COMPRAVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object qrMV_PLANILHA_IMOVEL: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM MV_PLANILHA_IMOVEL ')
    Left = 424
    Top = 40
    object qrMV_PLANILHA_IMOVELID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrMV_PLANILHA_IMOVELID_IMOVEL: TIntegerField
      FieldName = 'ID_IMOVEL'
      Origin = 'ID_IMOVEL'
    end
    object qrMV_PLANILHA_IMOVELQT: TStringField
      FieldName = 'QT'
      Origin = 'QT'
      FixedChar = True
      Size = 4
    end
    object qrMV_PLANILHA_IMOVELLT: TStringField
      FieldName = 'LT'
      Origin = 'LT'
      FixedChar = True
      Size = 4
    end
    object qrMV_PLANILHA_IMOVELVENDA_VISTA: TBCDField
      FieldName = 'VENDA_VISTA'
      Origin = 'VENDA_VISTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELINTERMEDIACAO: TBCDField
      FieldName = 'INTERMEDIACAO'
      Origin = 'INTERMEDIACAO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELVALOR_PROPOSTA: TBCDField
      FieldName = 'VALOR_PROPOSTA'
      Origin = 'VALOR_PROPOSTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELENTRADA: TBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELSALDO_FINANCIAR: TBCDField
      FieldName = 'SALDO_FINANCIAR'
      Origin = 'SALDO_FINANCIAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELPLANO_12: TBCDField
      FieldName = 'PLANO_12'
      Origin = 'PLANO_12'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELPLANO_24: TBCDField
      FieldName = 'PLANO_24'
      Origin = 'PLANO_24'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELPLANO_36: TBCDField
      FieldName = 'PLANO_36'
      Origin = 'PLANO_36'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELPLANO_48: TBCDField
      FieldName = 'PLANO_48'
      Origin = 'PLANO_48'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELPLANO_60: TBCDField
      FieldName = 'PLANO_60'
      Origin = 'PLANO_60'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELPLANO_72: TBCDField
      FieldName = 'PLANO_72'
      Origin = 'PLANO_72'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELPLANO_84: TBCDField
      FieldName = 'PLANO_84'
      Origin = 'PLANO_84'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELPLANO_96: TBCDField
      FieldName = 'PLANO_96'
      Origin = 'PLANO_96'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELPLANO_108: TBCDField
      FieldName = 'PLANO_108'
      Origin = 'PLANO_108'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrMV_PLANILHA_IMOVELPLANO_120: TBCDField
      FieldName = 'PLANO_120'
      Origin = 'PLANO_120'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object qrOS_AUTO: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM OS_AUTO')
    Left = 416
    Top = 168
    object qrOS_AUTOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qrOS_AUTOID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qrOS_AUTOID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = 'ID_ATENDIMENTO'
    end
    object qrOS_AUTOID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
      Origin = 'ID_VEICULO'
    end
    object qrOS_AUTONUMERO_OS: TIntegerField
      FieldName = 'NUMERO_OS'
      Origin = 'NUMERO_OS'
    end
    object qrOS_AUTODATA_OS: TDateField
      FieldName = 'DATA_OS'
      Origin = 'DATA_OS'
      EditMask = '##/##/####'
    end
    object qrOS_AUTOTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qrOS_AUTOSOLICITANTE_OS: TStringField
      FieldName = 'SOLICITANTE_OS'
      Origin = 'SOLICITANTE_OS'
      Size = 100
    end
    object qrOS_AUTOMODELO_CARRO: TStringField
      FieldName = 'MODELO_CARRO'
      Origin = 'MODELO_CARRO'
      Size = 60
    end
    object qrOS_AUTOPLACA_CARRO: TStringField
      FieldName = 'PLACA_CARRO'
      Origin = 'PLACA_CARRO'
    end
    object qrOS_AUTOATENDIMENTO_CARRO: TStringField
      FieldName = 'ATENDIMENTO_CARRO'
      Origin = 'ATENDIMENTO_CARRO'
    end
    object qrOS_AUTOCOMBUSTIVEL_CARRO: TStringField
      FieldName = 'COMBUSTIVEL_CARRO'
      Origin = 'COMBUSTIVEL_CARRO'
    end
    object qrOS_AUTONIVEL_CBT_CARRO: TStringField
      FieldName = 'NIVEL_CBT_CARRO'
      Origin = 'NIVEL_CBT_CARRO'
    end
    object qrOS_AUTORENAVA_CARRO: TStringField
      FieldName = 'RENAVA_CARRO'
      Origin = 'RENAVA_CARRO'
      Size = 100
    end
    object qrOS_AUTODEFEITO_CARRO: TBlobField
      FieldName = 'DEFEITO_CARRO'
      Origin = 'DEFEITO_CARRO'
    end
    object qrOS_AUTOCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = Cliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME_RS'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object qrOS_AUTOATENDIMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'ATENDIMENTO'
      LookupDataSet = Atendimento
      LookupKeyFields = 'ID_OS_TIPO'
      LookupResultField = 'TIPOATENDIMENTO'
      KeyFields = 'ID_ATENDIMENTO'
      Size = 100
      Lookup = True
    end
    object qrOS_AUTOVEICULO: TStringField
      FieldKind = fkLookup
      FieldName = 'VEICULO'
      LookupDataSet = Veiculo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'ID_VEICULO'
      Size = 100
      Lookup = True
    end
    object qrOS_AUTOID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
      Origin = 'ID_TECNICO'
    end
    object qrOS_AUTODATA_LAUDO: TDateField
      FieldName = 'DATA_LAUDO'
      Origin = 'DATA_LAUDO'
      EditMask = '##/##/####'
    end
    object qrOS_AUTOHORA_LAUDO: TTimeField
      FieldName = 'HORA_LAUDO'
      Origin = 'HORA_LAUDO'
      EditMask = '##:##'
    end
    object qrOS_AUTODEFEITO_LAUDO: TMemoField
      FieldName = 'DEFEITO_LAUDO'
      Origin = 'DEFEITO_LAUDO'
      BlobType = ftMemo
    end
    object qrOS_AUTOSITUACAO_LAUDO: TStringField
      FieldName = 'SITUACAO_LAUDO'
      Origin = 'SITUACAO_LAUDO'
      Size = 100
    end
    object qrOS_AUTOINTERVERCOES_LAUDO: TMemoField
      FieldName = 'INTERVERCOES_LAUDO'
      Origin = 'INTERVERCOES_LAUDO'
      BlobType = ftMemo
    end
    object qrOS_AUTORETIRADO_LAUDO: TStringField
      FieldName = 'RETIRADO_LAUDO'
      Origin = 'RETIRADO_LAUDO'
      Size = 100
    end
    object qrOS_AUTOCONCLUSAO_LAUDO: TDateField
      FieldName = 'CONCLUSAO_LAUDO'
      Origin = 'CONCLUSAO_LAUDO'
      EditMask = '##/##/####'
    end
    object qrOS_AUTOENTREGA_LAUDO: TDateField
      FieldName = 'ENTREGA_LAUDO'
      Origin = 'ENTREGA_LAUDO'
      EditMask = '##/##/####'
    end
    object qrOS_AUTOTECNICO: TStringField
      FieldKind = fkLookup
      FieldName = 'TECNICO'
      LookupDataSet = Cliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME_RS'
      KeyFields = 'ID_TECNICO'
      Size = 100
      Lookup = True
    end
    object qrOS_AUTOFATURADO: TStringField
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object qrOS_AUTOKM_CARRO: TIntegerField
      FieldName = 'KM_CARRO'
      Origin = 'KM_CARRO'
    end
    object qrOS_AUTOMARCA_CARRO: TStringField
      FieldName = 'MARCA_CARRO'
      Origin = 'MARCA_CARRO'
      Size = 50
    end
  end
  object dsAuto: TDataSource
    DataSet = qrOS_AUTO
    Left = 472
    Top = 168
  end
  object Cliente: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT CODIGO,NOME_RS FROM CLIENTES')
    Left = 416
    Top = 264
    object ClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClienteNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      Required = True
      Size = 70
    end
  end
  object Veiculo: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT CODIGO,NOME FROM VEICULO')
    Left = 416
    Top = 312
    object VeiculoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object VeiculoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
    end
  end
  object Atendimento: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT ID_OS_TIPO,TIPOATENDIMENTO FROM OS_TIPOATENDIMENTO')
    Left = 416
    Top = 360
    object AtendimentoID_OS_TIPO: TIntegerField
      FieldName = 'ID_OS_TIPO'
      Origin = 'ID_OS_TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object AtendimentoTIPOATENDIMENTO: TStringField
      FieldName = 'TIPOATENDIMENTO'
      Origin = 'TIPOATENDIMENTO'
      Size = 30
    end
  end
  object qrOS_AUTO_PRODUTOS: TFDQuery
    IndexFieldNames = 'ID_OS_AUTO'
    MasterSource = dsAuto
    MasterFields = 'ID'
    DetailFields = 'ID_OS_AUTO'
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evDetailCascade]
    SQL.Strings = (
      'SELECT * FROM OS_AUTO_PRODUTOS WHERE ID_OS_AUTO =:ID')
    Left = 417
    Top = 211
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrOS_AUTO_PRODUTOSID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrOS_AUTO_PRODUTOSID_OS_AUTO: TIntegerField
      FieldName = 'ID_OS_AUTO'
      Origin = 'ID_OS_AUTO'
    end
    object qrOS_AUTO_PRODUTOSID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object qrOS_AUTO_PRODUTOSQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object qrOS_AUTO_PRODUTOSVALOR_UNT: TBCDField
      FieldName = 'VALOR_UNT'
      Origin = 'VALOR_UNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrOS_AUTO_PRODUTOSDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrOS_AUTO_PRODUTOSTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrOS_AUTO_PRODUTOSPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = Produtos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
  end
  object Produtos: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT CODIGO,DESCRICAO FROM PRODUTOS')
    Left = 345
    Top = 171
    object ProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
  end
  object qrITENS_COMPOSTO: TFDQuery
    Connection = DM.Coneccao
    SchemaAdapter = Adapter
    SQL.Strings = (
      'SELECT * FROM ITENS_COMPOSTO')
    Left = 576
    Top = 272
    object qrITENS_COMPOSTOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrITENS_COMPOSTOID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object qrITENS_COMPOSTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qrITENS_COMPOSTOPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = Produtos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
    object qrITENS_COMPOSTOPESO_TOTAL: TBCDField
      FieldName = 'PESO_TOTAL'
      Origin = 'PESO_TOTAL'
      Precision = 18
      Size = 3
    end
    object qrITENS_COMPOSTOMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Origin = 'MEDIDA'
      FixedChar = True
      Size = 2
    end
    object qrITENS_COMPOSTOCUSTO_TOTAL: TBCDField
      FieldName = 'CUSTO_TOTAL'
      Origin = 'CUSTO_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrITENS_COMPOSTOVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrITENS_COMPOSTOVALOR_MAO_OBRA: TBCDField
      FieldName = 'VALOR_MAO_OBRA'
      Origin = 'VALOR_MAO_OBRA'
      Precision = 18
      Size = 2
    end
  end
  object qrITENS_COMPOSICAO: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_ITEM_COMPOSTO'
    MasterSource = dsComposto
    MasterFields = 'ID'
    DetailFields = 'ID_ITEM_COMPOSTO'
    Connection = DM.Coneccao
    SchemaAdapter = Adapter
    SQL.Strings = (
      'SELECT * FROM ITENS_COMPOSICAO WHERE ID_ITEM_COMPOSTO =:ID')
    Left = 576
    Top = 320
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrITENS_COMPOSICAOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrITENS_COMPOSICAOID_ITEM_COMPOSTO: TIntegerField
      FieldName = 'ID_ITEM_COMPOSTO'
      Origin = 'ID_ITEM_COMPOSTO'
    end
    object qrITENS_COMPOSICAOID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object qrITENS_COMPOSICAOMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Origin = 'MEDIDA'
      FixedChar = True
      Size = 3
    end
    object qrITENS_COMPOSICAODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qrITENS_COMPOSICAOP_UNITARIO: TBCDField
      FieldName = 'P_UNITARIO'
      Origin = 'P_UNITARIO'
      Precision = 18
      Size = 2
    end
    object qrITENS_COMPOSICAOC_UNITARIO: TBCDField
      FieldName = 'C_UNITARIO'
      Origin = 'C_UNITARIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrITENS_COMPOSICAOV_UNITARIO: TBCDField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrITENS_COMPOSICAOPESO_TOTAL: TBCDField
      FieldName = 'PESO_TOTAL'
      Origin = 'PESO_TOTAL'
      Precision = 18
      Size = 3
    end
    object qrITENS_COMPOSICAOCUSTO_TOTAL: TBCDField
      FieldName = 'CUSTO_TOTAL'
      Origin = 'CUSTO_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrITENS_COMPOSICAOVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrITENS_COMPOSICAOQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
  end
  object dsComposto: TDataSource
    DataSet = qrITENS_COMPOSTO
    Left = 576
    Top = 368
  end
  object Adapter: TFDSchemaAdapter
    Left = 368
    Top = 112
  end
  object qrOD_AGENDA: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM OD_AGENDA')
    Left = 656
    Top = 56
    object qrOD_AGENDAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrOD_AGENDAID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qrOD_AGENDAID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qrOD_AGENDATIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qrOD_AGENDADATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '##/##/####'
    end
    object qrOD_AGENDAHORA_INICIO: TTimeField
      FieldName = 'HORA_INICIO'
      Origin = 'HORA_INICIO'
      EditMask = '##:##:##'
    end
    object qrOD_AGENDAHORA_FINAL: TTimeField
      FieldName = 'HORA_FINAL'
      Origin = 'HORA_FINAL'
      EditMask = '##:##:##'
    end
    object qrOD_AGENDASTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object qrOD_AGENDAOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 150
    end
    object qrOD_AGENDATITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 100
    end
    object qrOD_AGENDACLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = Cliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME_RS'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
  end
  object qrOD_CONSULTAS: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'SELECT DATA,HORA_INICIO,HORA_FINAL,STATUS,OBS FROM OD_AGENDA WHE' +
        'RE ID_CLIENTE =:ID')
    Left = 656
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrOD_CONSULTASDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrOD_CONSULTASHORA_INICIO: TTimeField
      FieldName = 'HORA_INICIO'
      Origin = 'HORA_INICIO'
    end
    object qrOD_CONSULTASHORA_FINAL: TTimeField
      FieldName = 'HORA_FINAL'
      Origin = 'HORA_FINAL'
    end
    object qrOD_CONSULTASSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object qrOD_CONSULTASOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 150
    end
  end
  object qrOD_ANAMNESE: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM OD_ANAMNESE WHERE ID_CLIENTE = :ID')
    Left = 656
    Top = 152
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrOD_ANAMNESEID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrOD_ANAMNESEID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qrOD_ANAMNESEMOTIVO_CONSULTA: TStringField
      FieldName = 'MOTIVO_CONSULTA'
      Origin = 'MOTIVO_CONSULTA'
      Size = 150
    end
    object qrOD_ANAMNESEGENGIVAS_SANGRAM: TStringField
      FieldName = 'GENGIVAS_SANGRAM'
      Origin = 'GENGIVAS_SANGRAM'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEDENTES_MOBILIDADE: TStringField
      FieldName = 'DENTES_MOBILIDADE'
      Origin = 'DENTES_MOBILIDADE'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESESATISFEITO_COR: TStringField
      FieldName = 'SATISFEITO_COR'
      Origin = 'SATISFEITO_COR'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESESENSIVEL_FRIO: TStringField
      FieldName = 'SENSIVEL_FRIO'
      Origin = 'SENSIVEL_FRIO'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEPENICILINA: TStringField
      FieldName = 'PENICILINA'
      Origin = 'PENICILINA'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEANESTESICOS: TStringField
      FieldName = 'ANESTESICOS'
      Origin = 'ANESTESICOS'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEASPIRINAS: TStringField
      FieldName = 'ASPIRINAS'
      Origin = 'ASPIRINAS'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEREACAO_ALERGICA: TStringField
      FieldName = 'REACAO_ALERGICA'
      Origin = 'REACAO_ALERGICA'
      Size = 150
    end
    object qrOD_ANAMNESEREALIZOU_CIRURGIA: TStringField
      FieldName = 'REALIZOU_CIRURGIA'
      Origin = 'REALIZOU_CIRURGIA'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESECICATRIZACAO: TStringField
      FieldName = 'CICATRIZACAO'
      Origin = 'CICATRIZACAO'
    end
    object qrOD_ANAMNESEUSA_MEDICAMENTO: TStringField
      FieldName = 'USA_MEDICAMENTO'
      Origin = 'USA_MEDICAMENTO'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEQUAL_MEDICAMENTO: TStringField
      FieldName = 'QUAL_MEDICAMENTO'
      Origin = 'QUAL_MEDICAMENTO'
      Size = 150
    end
    object qrOD_ANAMNESEUSA_ANTICOAGULANTE: TStringField
      FieldName = 'USA_ANTICOAGULANTE'
      Origin = 'USA_ANTICOAGULANTE'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEQUAL_ANTICOAGULANTE: TStringField
      FieldName = 'QUAL_ANTICOAGULANTE'
      Origin = 'QUAL_ANTICOAGULANTE'
      Size = 150
    end
    object qrOD_ANAMNESEPOSSUI_HABITO: TStringField
      FieldName = 'POSSUI_HABITO'
      Origin = 'POSSUI_HABITO'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEQUAL_HABITO: TStringField
      FieldName = 'QUAL_HABITO'
      Origin = 'QUAL_HABITO'
      Size = 150
    end
    object qrOD_ANAMNESEINJERE_BEBIDA_ALCOLICA: TStringField
      FieldName = 'INJERE_BEBIDA_ALCOLICA'
      Origin = 'INJERE_BEBIDA_ALCOLICA'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEBEBE_FREQUENCIA: TStringField
      FieldName = 'BEBE_FREQUENCIA'
      Origin = 'BEBE_FREQUENCIA'
    end
    object qrOD_ANAMNESEFUMA_JA_FUMOU: TStringField
      FieldName = 'FUMA_JA_FUMOU'
      Origin = 'FUMA_JA_FUMOU'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEFUMA_FREQUENCIA: TStringField
      FieldName = 'FUMA_FREQUENCIA'
      Origin = 'FUMA_FREQUENCIA'
    end
    object qrOD_ANAMNESEFUMA_TEMPO: TStringField
      FieldName = 'FUMA_TEMPO'
      Origin = 'FUMA_TEMPO'
    end
    object qrOD_ANAMNESECONSULTA_MEDICO: TStringField
      FieldName = 'CONSULTA_MEDICO'
      Origin = 'CONSULTA_MEDICO'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEMEDICO_FREQUENCIA: TStringField
      FieldName = 'MEDICO_FREQUENCIA'
      Origin = 'MEDICO_FREQUENCIA'
      Size = 150
    end
    object qrOD_ANAMNESEEXAME_SANGUINEO_TEMPO: TStringField
      FieldName = 'EXAME_SANGUINEO_TEMPO'
      Origin = 'EXAME_SANGUINEO_TEMPO'
      Size = 40
    end
    object qrOD_ANAMNESEINFO_RESULTADO_EXAME: TBlobField
      FieldName = 'INFO_RESULTADO_EXAME'
      Origin = 'INFO_RESULTADO_EXAME'
    end
    object qrOD_ANAMNESESOFRE_DIABETES: TStringField
      FieldName = 'SOFRE_DIABETES'
      Origin = 'SOFRE_DIABETES'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESESOFRE_TUBERCULOSE: TStringField
      FieldName = 'SOFRE_TUBERCULOSE'
      Origin = 'SOFRE_TUBERCULOSE'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESESOFRE_ARTRITE: TStringField
      FieldName = 'SOFRE_ARTRITE'
      Origin = 'SOFRE_ARTRITE'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESESOFRE_CARDIACOS: TStringField
      FieldName = 'SOFRE_CARDIACOS'
      Origin = 'SOFRE_CARDIACOS'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESESOFRE_ASMA: TStringField
      FieldName = 'SOFRE_ASMA'
      Origin = 'SOFRE_ASMA'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESESOFRE_HIPERTENCAO: TStringField
      FieldName = 'SOFRE_HIPERTENCAO'
      Origin = 'SOFRE_HIPERTENCAO'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESESOFRE_RENAIS: TStringField
      FieldName = 'SOFRE_RENAIS'
      Origin = 'SOFRE_RENAIS'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESESOFRE_HEPATICOS: TStringField
      FieldName = 'SOFRE_HEPATICOS'
      Origin = 'SOFRE_HEPATICOS'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESESOFRE_ALGO_MAIS: TStringField
      FieldName = 'SOFRE_ALGO_MAIS'
      Origin = 'SOFRE_ALGO_MAIS'
      Size = 150
    end
    object qrOD_ANAMNESEGRAVIDA: TStringField
      FieldName = 'GRAVIDA'
      Origin = 'GRAVIDA'
      FixedChar = True
      Size = 3
    end
    object qrOD_ANAMNESEMES_GRAVIDES: TStringField
      FieldName = 'MES_GRAVIDES'
      Origin = 'MES_GRAVIDES'
      Size = 100
    end
    object qrOD_ANAMNESESENSIVEL_DOCES: TStringField
      FieldName = 'SENSIVEL_DOCES'
      Origin = 'SENSIVEL_DOCES'
      FixedChar = True
      Size = 3
    end
  end
  object qrOD_R_PROCEDIMENTO: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM OD_R_PROCEDIMENTO WHERE ID_CLIENTE = :ID')
    Left = 656
    Top = 200
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrOD_R_PROCEDIMENTOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrOD_R_PROCEDIMENTOID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qrOD_R_PROCEDIMENTOID_PROCEDIMENTO: TIntegerField
      FieldName = 'ID_PROCEDIMENTO'
      Origin = 'ID_PROCEDIMENTO'
    end
    object qrOD_R_PROCEDIMENTODENTE: TStringField
      FieldName = 'DENTE'
      Origin = 'DENTE'
      Size = 150
    end
    object qrOD_R_PROCEDIMENTOOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 150
    end
    object qrOD_R_PROCEDIMENTOSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object qrOD_R_PROCEDIMENTOPROCEDIMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PROCEDIMENTO'
      LookupDataSet = qrOD_PROCEDIMENTO
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_PROCEDIMENTO'
      Size = 100
      Lookup = True
    end
    object qrOD_R_PROCEDIMENTODATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
  object qrOD_PROCEDIMENTO: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM OD_PROCEDIMENTO')
    Left = 536
    Top = 200
    object qrOD_PROCEDIMENTOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrOD_PROCEDIMENTONOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object qrOD_PROCEDIMENTOOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 100
    end
    object qrOD_PROCEDIMENTOSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 3
    end
  end
  object qrOD_EVOLUCOES: TFDQuery
    IndexFieldNames = 'ID_R_PROCEDIMENTO'
    MasterSource = dsProcedimento
    MasterFields = 'ID'
    DetailFields = 'ID_R_PROCEDIMENTO'
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM OD_EVOLUCOES WHERE ID_R_PROCEDIMENTO =:ID')
    Left = 656
    Top = 248
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrOD_EVOLUCOESID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrOD_EVOLUCOESID_R_PROCEDIMENTO: TIntegerField
      FieldName = 'ID_R_PROCEDIMENTO'
      Origin = 'ID_R_PROCEDIMENTO'
    end
    object qrOD_EVOLUCOESOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 150
    end
    object qrOD_EVOLUCOESDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '##/##/####'
    end
  end
  object dsProcedimento: TDataSource
    DataSet = qrOD_R_PROCEDIMENTO
    Left = 744
    Top = 208
  end
  object qrOD_IMAGENS: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM OD_IMAGENS WHERE ID_CLIENTE =:ID')
    Left = 656
    Top = 296
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrOD_IMAGENSID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrOD_IMAGENSID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qrOD_IMAGENSIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object qrOD_IMAGENSNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 150
    end
  end
  object qrMD_PATIO: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM MD_PATIO')
    Left = 808
    Top = 296
    object qrMD_PATIOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrMD_PATIODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object qrMD_ENTRADA_TORAS: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM MD_ENTRADA_TORAS ORDER BY DATA')
    Left = 488
    Top = 430
    object qrMD_ENTRADA_TORASID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrMD_ENTRADA_TORASID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object qrMD_ENTRADA_TORASID_PATIO: TIntegerField
      FieldName = 'ID_PATIO'
      Origin = 'ID_PATIO'
    end
    object qrMD_ENTRADA_TORASID_MOTORISTA: TIntegerField
      FieldName = 'ID_MOTORISTA'
      Origin = 'ID_MOTORISTA'
    end
    object qrMD_ENTRADA_TORASROMANEIO: TIntegerField
      FieldName = 'ROMANEIO'
      Origin = 'ROMANEIO'
    end
    object qrMD_ENTRADA_TORASDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '##/##/####'
    end
    object qrMD_ENTRADA_TORASVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      currency = True
      Precision = 18
      Size = 6
    end
    object qrMD_ENTRADA_TORASTOTAL_M3: TFMTBCDField
      FieldName = 'TOTAL_M3'
      Origin = 'TOTAL_M3'
      currency = True
      Precision = 18
      Size = 6
    end
    object qrMD_ENTRADA_TORASTOTAL_FRETE: TFMTBCDField
      FieldName = 'TOTAL_FRETE'
      Origin = 'TOTAL_FRETE'
      currency = True
      Precision = 18
      Size = 6
    end
    object qrMD_ENTRADA_TORASTOTAL_TORAS: TIntegerField
      FieldName = 'TOTAL_TORAS'
      Origin = 'TOTAL_TORAS'
    end
    object qrMD_ENTRADA_TORASFORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = Fornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object qrMD_ENTRADA_TORASPATIO: TStringField
      FieldKind = fkLookup
      FieldName = 'PATIO'
      LookupDataSet = qrMD_PATIO
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_PATIO'
      Size = 100
      Lookup = True
    end
    object qrMD_ENTRADA_TORASMOTORISTA: TStringField
      FieldKind = fkLookup
      FieldName = 'MOTORISTA'
      LookupDataSet = Cliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME_RS'
      KeyFields = 'ID_MOTORISTA'
      Size = 100
      Lookup = True
    end
  end
  object Fornecedor: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT CODIGO,NOME FROM FORNECEDORES')
    Left = 472
    Top = 264
    object FornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FornecedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 70
    end
  end
  object dsEntradaToras: TDataSource
    DataSet = qrMD_ENTRADA_TORAS
    Left = 664
    Top = 464
  end
  object qrMD_TORAS_ENTRADAS: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_ENTRADA_TORAS'
    MasterSource = dsEntradaToras
    MasterFields = 'ID'
    DetailFields = 'ID_ENTRADA_TORAS'
    Connection = DM.Coneccao
    SchemaAdapter = Adapter
    SQL.Strings = (
      'SELECT * FROM MD_TORAS_ENTRADAS WHERE ID_ENTRADA_TORAS =:ID')
    Left = 504
    Top = 488
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrMD_TORAS_ENTRADASID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrMD_TORAS_ENTRADASID_ENTRADA_TORAS: TIntegerField
      FieldName = 'ID_ENTRADA_TORAS'
      Origin = 'ID_ENTRADA_TORAS'
    end
    object qrMD_TORAS_ENTRADASID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
      Origin = 'ID_ESPECIE'
    end
    object qrMD_TORAS_ENTRADASPLAQUETA: TIntegerField
      FieldName = 'PLAQUETA'
      Origin = 'PLAQUETA'
    end
    object qrMD_TORAS_ENTRADASCOMPRIMENTO: TFMTBCDField
      FieldName = 'COMPRIMENTO'
      Origin = 'COMPRIMENTO'
      Precision = 18
      Size = 6
    end
    object qrMD_TORAS_ENTRADASDIAMETRO_PONTA: TFMTBCDField
      FieldName = 'DIAMETRO_PONTA'
      Origin = 'DIAMETRO_PONTA'
      Precision = 18
      Size = 6
    end
    object qrMD_TORAS_ENTRADASDIAMETRO_PE: TFMTBCDField
      FieldName = 'DIAMETRO_PE'
      Origin = 'DIAMETRO_PE'
      Precision = 18
      Size = 6
    end
    object qrMD_TORAS_ENTRADASM3: TFMTBCDField
      FieldName = 'M3'
      Origin = 'M3'
      Precision = 18
      Size = 6
    end
    object qrMD_TORAS_ENTRADASVALOR_M3: TFMTBCDField
      FieldName = 'VALOR_M3'
      Origin = 'VALOR_M3'
      Precision = 18
      Size = 6
    end
    object qrMD_TORAS_ENTRADASTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 6
    end
    object qrMD_TORAS_ENTRADASSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qrMD_TORAS_ENTRADASESPECIE: TStringField
      FieldKind = fkLookup
      FieldName = 'ESPECIE'
      LookupDataSet = Produtos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_ESPECIE'
      Size = 100
      Lookup = True
    end
  end
  object qrMD_BAIXA_PLAQUETA: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_ENTRADA_TORAS'
    MasterSource = dsEntradaToras
    MasterFields = 'ID'
    DetailFields = 'ID_ENTRADA_TORAS'
    Connection = DM.Coneccao
    SchemaAdapter = Adapter
    SQL.Strings = (
      'SELECT * FROM MD_BAIXA_PLAQUETA')
    Left = 392
    Top = 504
    object qrMD_BAIXA_PLAQUETAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrMD_BAIXA_PLAQUETAID_TORAS_ENTRADAS: TIntegerField
      FieldName = 'ID_TORAS_ENTRADAS'
      Origin = 'ID_TORAS_ENTRADAS'
    end
    object qrMD_BAIXA_PLAQUETAV_SERRAGEM: TFMTBCDField
      FieldName = 'V_SERRAGEM'
      Origin = 'V_SERRAGEM'
      Precision = 18
      Size = 6
    end
    object qrMD_BAIXA_PLAQUETADATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrMD_BAIXA_PLAQUETATOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 6
    end
    object qrMD_BAIXA_PLAQUETATURNO: TStringField
      FieldName = 'TURNO'
      Origin = 'TURNO'
    end
    object qrMD_BAIXA_PLAQUETAPERCA: TFMTBCDField
      FieldName = 'PERCA'
      Origin = 'PERCA'
      Precision = 18
      Size = 6
    end
  end
  object qrCLIENTE_SNRHOS: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM CLIENTE_SNRHOS')
    Left = 856
    Top = 24
    object qrCLIENTE_SNRHOSID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrCLIENTE_SNRHOSID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qrCLIENTE_SNRHOSNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Origin = 'NACIONALIDADE'
      Size = 30
    end
    object qrCLIENTE_SNRHOSDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      Origin = 'DATA_NASC'
    end
    object qrCLIENTE_SNRHOSCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 19
    end
    object qrCLIENTE_SNRHOSTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Origin = 'TIPO_DOCUMENTO'
    end
    object qrCLIENTE_SNRHOSN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Origin = 'N_DOCUMENTO'
    end
    object qrCLIENTE_SNRHOSORGAO_EXPEDIDOR: TStringField
      FieldName = 'ORGAO_EXPEDIDOR'
      Origin = 'ORGAO_EXPEDIDOR'
    end
    object qrCLIENTE_SNRHOSNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      Origin = 'NOME_COMPLETO'
      Size = 100
    end
    object qrCLIENTE_SNRHOSEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qrCLIENTE_SNRHOSPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 100
    end
    object qrCLIENTE_SNRHOSGENERO: TStringField
      FieldName = 'GENERO'
      Origin = 'GENERO'
    end
    object qrCLIENTE_SNRHOSDDI_TELEFONE: TStringField
      FieldName = 'DDI_TELEFONE'
      Origin = 'DDI_TELEFONE'
      FixedChar = True
      Size = 4
    end
    object qrCLIENTE_SNRHOSDDD_TELEFONE: TStringField
      FieldName = 'DDD_TELEFONE'
      Origin = 'DDD_TELEFONE'
      FixedChar = True
      Size = 4
    end
    object qrCLIENTE_SNRHOSTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object qrCLIENTE_SNRHOSDDI_CELULAR: TStringField
      FieldName = 'DDI_CELULAR'
      Origin = 'DDI_CELULAR'
      FixedChar = True
      Size = 4
    end
    object qrCLIENTE_SNRHOSDDD_CELULAR: TStringField
      FieldName = 'DDD_CELULAR'
      Origin = 'DDD_CELULAR'
      FixedChar = True
      Size = 4
    end
    object qrCLIENTE_SNRHOSCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qrCLIENTE_SNRHOSENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qrCLIENTE_SNRHOSPAIS_HOSPEDE: TStringField
      FieldName = 'PAIS_HOSPEDE'
      Origin = 'PAIS_HOSPEDE'
      Size = 100
    end
    object qrCLIENTE_SNRHOSESTADO_HOSPEDE: TStringField
      FieldName = 'ESTADO_HOSPEDE'
      Origin = 'ESTADO_HOSPEDE'
      Size = 100
    end
    object qrCLIENTE_SNRHOSCIDADE_HOSPEDE: TStringField
      FieldName = 'CIDADE_HOSPEDE'
      Origin = 'CIDADE_HOSPEDE'
      Size = 100
    end
    object qrCLIENTE_SNRHOSPAIS_PROCEDENCIA: TStringField
      FieldName = 'PAIS_PROCEDENCIA'
      Origin = 'PAIS_PROCEDENCIA'
      Size = 100
    end
    object qrCLIENTE_SNRHOSESTADO_PROCEDENCIA: TStringField
      FieldName = 'ESTADO_PROCEDENCIA'
      Origin = 'ESTADO_PROCEDENCIA'
      Size = 100
    end
    object qrCLIENTE_SNRHOSCIDADE_PROCEDENCIA: TStringField
      FieldName = 'CIDADE_PROCEDENCIA'
      Origin = 'CIDADE_PROCEDENCIA'
      Size = 100
    end
    object qrCLIENTE_SNRHOSMOTIVO_VIAGEM: TIntegerField
      FieldName = 'MOTIVO_VIAGEM'
      Origin = 'MOTIVO_VIAGEM'
    end
    object qrCLIENTE_SNRHOSMEIO_TRANSPORTE: TIntegerField
      FieldName = 'MEIO_TRANSPORTE'
      Origin = 'MEIO_TRANSPORTE'
    end
    object qrCLIENTE_SNRHOSN_HOSPEDES: TIntegerField
      FieldName = 'N_HOSPEDES'
      Origin = 'N_HOSPEDES'
    end
    object qrCLIENTE_SNRHOSUH_N: TIntegerField
      FieldName = 'UH_N'
      Origin = 'UH_N'
    end
    object qrCLIENTE_SNRHOSPREVISAO_ENTRADA: TDateField
      FieldName = 'PREVISAO_ENTRADA'
      Origin = 'PREVISAO_ENTRADA'
    end
    object qrCLIENTE_SNRHOSPREVISAO_SAIDA: TDateField
      FieldName = 'PREVISAO_SAIDA'
      Origin = 'PREVISAO_SAIDA'
    end
    object qrCLIENTE_SNRHOSOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 150
    end
    object qrCLIENTE_SNRHOSCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Origin = 'CHAVE_ACESSO'
      Size = 150
    end
    object qrCLIENTE_SNRHOSCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = Cliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME_RS'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object qrCLIENTE_SNRHOSN_FNRH: TStringField
      FieldName = 'N_FNRH'
      Origin = 'N_FNRH'
      Size = 100
    end
  end
  object qrMD_COMPRA_MADEIRA: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM MD_COMPRA_MADEIRA')
    Left = 856
    Top = 72
    object qrMD_COMPRA_MADEIRAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrMD_COMPRA_MADEIRAID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object qrMD_COMPRA_MADEIRAID_ORIGEM: TIntegerField
      FieldName = 'ID_ORIGEM'
      Origin = 'ID_ORIGEM'
    end
    object qrMD_COMPRA_MADEIRAID_PATIO: TIntegerField
      FieldName = 'ID_PATIO'
      Origin = 'ID_PATIO'
    end
    object qrMD_COMPRA_MADEIRAID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
    end
    object qrMD_COMPRA_MADEIRAID_CARREGADOR: TIntegerField
      FieldName = 'ID_CARREGADOR'
      Origin = 'ID_CARREGADOR'
    end
    object qrMD_COMPRA_MADEIRAID_ESPLANADOR: TIntegerField
      FieldName = 'ID_ESPLANADOR'
      Origin = 'ID_ESPLANADOR'
    end
    object qrMD_COMPRA_MADEIRAN_ROMANEIRO: TIntegerField
      FieldName = 'N_ROMANEIRO'
      Origin = 'N_ROMANEIRO'
    end
    object qrMD_COMPRA_MADEIRAN_DOCUMENTO: TIntegerField
      FieldName = 'N_DOCUMENTO'
      Origin = 'N_DOCUMENTO'
    end
    object qrMD_COMPRA_MADEIRASERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      FixedChar = True
      Size = 3
    end
    object qrMD_COMPRA_MADEIRADATA_NOTA: TDateField
      FieldName = 'DATA_NOTA'
      Origin = 'DATA_NOTA'
    end
    object qrMD_COMPRA_MADEIRAVALOR_FORNECEDOR: TBCDField
      FieldName = 'VALOR_FORNECEDOR'
      Origin = 'VALOR_FORNECEDOR'
      Precision = 18
      Size = 2
    end
    object qrMD_COMPRA_MADEIRAVALOR_TRANSPORTADORA_M3: TBCDField
      FieldName = 'VALOR_TRANSPORTADORA_M3'
      Origin = 'VALOR_TRANSPORTADORA_M3'
      Precision = 18
      Size = 2
    end
    object qrMD_COMPRA_MADEIRAVALOR_CARREGADOR_M3: TBCDField
      FieldName = 'VALOR_CARREGADOR_M3'
      Origin = 'VALOR_CARREGADOR_M3'
      Precision = 18
      Size = 2
    end
    object qrMD_COMPRA_MADEIRAVALOR_ESPLANADOR_M3: TBCDField
      FieldName = 'VALOR_ESPLANADOR_M3'
      Origin = 'VALOR_ESPLANADOR_M3'
      Precision = 18
      Size = 2
    end
    object qrMD_COMPRA_MADEIRADATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
      Origin = 'DATA_COMPRA'
    end
    object qrMD_COMPRA_MADEIRACONDICAO_PGT: TStringField
      FieldName = 'CONDICAO_PGT'
      Origin = 'CONDICAO_PGT'
      FixedChar = True
      Size = 30
    end
    object qrMD_COMPRA_MADEIRADATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object qrMD_COMPRA_MADEIRATIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      FixedChar = True
      Size = 3
    end
    object qrMD_COMPRA_MADEIRADESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qrMD_COMPRA_MADEIRAVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object qrMD_COMPRA_MADEIRATOTAL_LIQUIDO: TBCDField
      FieldName = 'TOTAL_LIQUIDO'
      Origin = 'TOTAL_LIQUIDO'
      Precision = 18
      Size = 2
    end
    object qrMD_COMPRA_MADEIRAOBS: TBlobField
      FieldName = 'OBS'
      Origin = 'OBS'
    end
    object qrMD_COMPRA_MADEIRAFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object qrMD_COMPRA_MADEIRAFORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = qrFORNECEDORES
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 0
      Lookup = True
    end
  end
  object qrFORNECEDORES: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT NOME,CODIGO FROM FORNECEDORES')
    Left = 808
    Top = 344
    object qrFORNECEDORESNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 70
    end
    object qrFORNECEDORESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qrMD_ORIGEM: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM MD_ORIGEM')
    Left = 808
    Top = 248
    object qrMD_ORIGEMID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrMD_ORIGEMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object qrMD_COMPRA_MADEIRA_ITEM: TFDQuery
    IndexFieldNames = 'ID_COMPRA'
    MasterSource = dsMD_COMPRA_MADEIRA
    MasterFields = 'ID'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM MD_COMPRA_MADEIRA_ITEM WHERE ID_COMPRA = :ID')
    Left = 856
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrMD_COMPRA_MADEIRA_ITEMID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrMD_COMPRA_MADEIRA_ITEMID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
    end
    object qrMD_COMPRA_MADEIRA_ITEMID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
      Origin = 'ID_ESPECIE'
    end
    object qrMD_COMPRA_MADEIRA_ITEMN_TORA: TIntegerField
      FieldName = 'N_TORA'
      Origin = 'N_TORA'
    end
    object qrMD_COMPRA_MADEIRA_ITEMDIAMETRO_FLORESTAL_1CM: TBCDField
      FieldName = 'DIAMETRO_FLORESTAL_1CM'
      Origin = 'DIAMETRO_FLORESTAL_1CM'
      Precision = 18
      Size = 3
    end
    object qrMD_COMPRA_MADEIRA_ITEMDIAMETRO_FLORESTAL_2CM: TBCDField
      FieldName = 'DIAMETRO_FLORESTAL_2CM'
      Origin = 'DIAMETRO_FLORESTAL_2CM'
      Precision = 18
      Size = 3
    end
    object qrMD_COMPRA_MADEIRA_ITEMCOMPRIMENTO_FLORESTAL_M: TBCDField
      FieldName = 'COMPRIMENTO_FLORESTAL_M'
      Origin = 'COMPRIMENTO_FLORESTAL_M'
      Precision = 18
      Size = 3
    end
    object qrMD_COMPRA_MADEIRA_ITEMTOTAL_FLORESTAL_M3: TBCDField
      FieldName = 'TOTAL_FLORESTAL_M3'
      Origin = 'TOTAL_FLORESTAL_M3'
      Precision = 18
      Size = 3
    end
    object qrMD_COMPRA_MADEIRA_ITEMDIAMETRO_COMERCIAL_1CM: TBCDField
      FieldName = 'DIAMETRO_COMERCIAL_1CM'
      Origin = 'DIAMETRO_COMERCIAL_1CM'
      Precision = 18
      Size = 3
    end
    object qrMD_COMPRA_MADEIRA_ITEMDIAMETRO_COMERCIAL_2CM: TBCDField
      FieldName = 'DIAMETRO_COMERCIAL_2CM'
      Origin = 'DIAMETRO_COMERCIAL_2CM'
      Precision = 18
      Size = 3
    end
    object qrMD_COMPRA_MADEIRA_ITEMCOMPRIMENTO_COMERCIAL_M: TBCDField
      FieldName = 'COMPRIMENTO_COMERCIAL_M'
      Origin = 'COMPRIMENTO_COMERCIAL_M'
      Precision = 18
      Size = 3
    end
    object qrMD_COMPRA_MADEIRA_ITEMTOTAL_COMERCIAL_M3: TBCDField
      FieldName = 'TOTAL_COMERCIAL_M3'
      Origin = 'TOTAL_COMERCIAL_M3'
      Precision = 18
      Size = 3
    end
    object qrMD_COMPRA_MADEIRA_ITEMVALOR_M3: TBCDField
      FieldName = 'VALOR_M3'
      Origin = 'VALOR_M3'
      Precision = 18
      Size = 2
    end
    object qrMD_COMPRA_MADEIRA_ITEMESPECIE: TStringField
      FieldKind = fkLookup
      FieldName = 'ESPECIE'
      LookupDataSet = Produtos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_ESPECIE'
      Size = 100
      Lookup = True
    end
  end
  object dsMD_COMPRA_MADEIRA: TDataSource
    DataSet = qrMD_COMPRA_MADEIRA
    Left = 856
    Top = 165
  end
end
