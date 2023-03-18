object DadosSped: TDadosSped
  OldCreateOrder = False
  Height = 360
  Width = 609
  object qrProdutos: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select'
      'DISTINCT(COD_PROD) COD_PROD,'
      'DESCRICAO,'
      'CODBARRA AS GTIN,'
      'CODIGO AS ABREVIATURA,'
      'TIPO AS TIPO_ITEM,'
      'NCM'
      'FROM('
      'select'
      'DISTINCT(PROD.codigo)AS COD_PROD,'
      'PROD.descricao,'
      'PROD.codigo_barras as codbarra,'
      'UND.codigo,'
      'PROD.TIPO_ATIVIDADE as tipo,'
      'PROD.ncm_sh as ncm'
      'from  notasfiscais_itens ITECO'
      
        'left JOIN notasfiscais PEDICO on ITECO.CODIGO_NOTA=PEDICO.CODIGO' +
        '_NOTA'
      'left JOIN produtos PROD on ITECO.CODIGO_PRODUTO=PROD.codigo'
      'left JOIN unidades UND on PROD.unidade= UND.codigo'
      'where'
      'PEDICO.data_cadastro between :data1 and :data2 and'
      'PEDICO.cod_empresa=:EMPRESA'
      ')')
    Left = 360
    Top = 24
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'EMPRESA'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object qrProdutosCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Origin = 'COD_PROD'
    end
    object qrProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object qrProdutosGTIN: TStringField
      FieldName = 'GTIN'
      Origin = 'GTIN'
      Size = 13
    end
    object qrProdutosTIPO_ITEM: TStringField
      FieldName = 'TIPO_ITEM'
      Origin = 'TIPO_ITEM'
      Size = 2
    end
    object qrProdutosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 10
    end
    object qrProdutosABREVIATURA: TIntegerField
      FieldName = 'ABREVIATURA'
      Origin = 'ABREVIATURA'
    end
  end
  object qryConfig_Sped: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_config'
      'where fk_empresa=:id')
    Left = 368
    Top = 79
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryConfig_SpedFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConfig_SpedIND_PERFIL: TStringField
      FieldName = 'IND_PERFIL'
      Origin = 'IND_PERFIL'
      Size = 1
    end
    object qryConfig_SpedIND_ATIV: TStringField
      FieldName = 'IND_ATIV'
      Origin = 'IND_ATIV'
      Size = 1
    end
    object qryConfig_SpedIND_EXP: TStringField
      FieldName = 'IND_EXP'
      Origin = 'IND_EXP'
      Size = 1
    end
    object qryConfig_SpedIND_CCRF: TStringField
      FieldName = 'IND_CCRF'
      Origin = 'IND_CCRF'
      Size = 1
    end
    object qryConfig_SpedIND_COMB: TStringField
      FieldName = 'IND_COMB'
      Origin = 'IND_COMB'
      Size = 1
    end
    object qryConfig_SpedIND_USINA: TStringField
      FieldName = 'IND_USINA'
      Origin = 'IND_USINA'
      Size = 1
    end
    object qryConfig_SpedIND_VA: TStringField
      FieldName = 'IND_VA'
      Origin = 'IND_VA'
      Size = 1
    end
    object qryConfig_SpedIND_EE: TStringField
      FieldName = 'IND_EE'
      Origin = 'IND_EE'
      Size = 1
    end
    object qryConfig_SpedIND_CART: TStringField
      FieldName = 'IND_CART'
      Origin = 'IND_CART'
      Size = 1
    end
    object qryConfig_SpedIND_FORM: TStringField
      FieldName = 'IND_FORM'
      Origin = 'IND_FORM'
      Size = 1
    end
    object qryConfig_SpedIND_AER: TStringField
      FieldName = 'IND_AER'
      Origin = 'IND_AER'
      Size = 1
    end
    object qryConfig_SpedCOD_INC_TRIB: TStringField
      FieldName = 'COD_INC_TRIB'
      Origin = 'COD_INC_TRIB'
      Size = 1
    end
    object qryConfig_SpedIND_APRO_CRED: TStringField
      FieldName = 'IND_APRO_CRED'
      Origin = 'IND_APRO_CRED'
      Size = 1
    end
    object qryConfig_SpedCOD_TIPO_CONT: TStringField
      FieldName = 'COD_TIPO_CONT'
      Origin = 'COD_TIPO_CONT'
      Size = 1
    end
    object qryConfig_SpedCOD_REGIME_TRIBUTARIO: TStringField
      FieldName = 'COD_REGIME_TRIBUTARIO'
      Origin = 'COD_REGIME_TRIBUTARIO'
      Size = 1
    end
    object qryConfig_SpedIND_REG_CUM: TStringField
      FieldName = 'IND_REG_CUM'
      Origin = 'IND_REG_CUM'
      Size = 1
    end
    object qryConfig_SpedFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object qryItens_NFe_S: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'Select'
      'NFE.NR_NOTA as codigo,'
      'NFe.NR_NOTA as fknfe,'
      'NFe.CODIGO_PROD as id_produto,'
      'pro.descricao,'
      'NFe.QT_PRODUTO as qtd,'
      'pro.unidade,'
      'NFe.vl_total as total,'
      #39'1'#39' AS IND_MOV,'
      'NFE.cfop,'
      'nfe.cst,'
      'NFe.vl_base_icm as base_icms,'
      'NFe.aliq_icm as aliq_icms,'
      'NFe.vl_icm as valor_icms,'
      'NFe.VL_BASE_ICM_SUBST as base_icms_st,'
      'NFe.ALIQ_ICM_SUBST as aliq_icms_st,'
      'NFe.VL_ICM_SUBST as valor_icms_st,'
      'NFe.cst_ipi,'
      'NFe.VL_BASE_IPI as base_ipi,'
      'NFe.aliq_ipi,'
      'NFe.vl_ipi as valor_ipi,'
      'NFe.CST_PIS,'
      'NFe.vl_base_pis as base_pis_icms,'
      'NFe.aliq_pis as aliq_pis_icms,'
      'NFe.vl_pis as valor_pis_icms,'
      'NFe.cst_cofins,'
      'NFe.VL_BASE_COFINS as base_cofins_icms,'
      'NFe.ALIQ_COFINS as aliq_cofins_icms,'
      'NFe.VL_COFINS as valor_cofins_icms,'
      'NFe.vl_outros as despesas,'
      'NFE.vl_desconto as desconto,'
      '0 as frete,'
      '0 as seguro'
      'From nfe_itens nfe'
      'left join nfe_nota nfm on nfe.nr_nota=nfm.nr_nota'
      'left join produtos pro on pro.codigo=nfe.CODIGO_PROD'
      'where'
      'NFe.nr_nota=:ID'
      'AND NFm.CHAVE_ACESSO_NFE IS NOT NULL'
      'AND NFm.CHAVE_ACESSO_NFE <> '#39#39';')
    Left = 368
    Top = 135
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItens_NFe_SCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'NR_NOTA'
      Required = True
    end
    object qryItens_NFe_SFKNFE: TIntegerField
      FieldName = 'FKNFE'
      Origin = 'NR_NOTA'
      ProviderFlags = []
      Required = True
    end
    object qryItens_NFe_SID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'CODIGO_PROD'
    end
    object qryItens_NFe_SDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object qryItens_NFe_SQTD: TBCDField
      FieldName = 'QTD'
      Origin = 'QT_PRODUTO'
      Precision = 18
    end
    object qryItens_NFe_SUNIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryItens_NFe_STOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SIND_MOV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IND_MOV'
      Origin = 'IND_MOV'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryItens_NFe_SCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 10
    end
    object qryItens_NFe_SCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qryItens_NFe_SBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'VL_BASE_ICM'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICM'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'VL_BASE_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SALIQ_ICMS_ST: TFMTBCDField
      FieldName = 'ALIQ_ICMS_ST'
      Origin = 'ALIQ_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VL_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 2
    end
    object qryItens_NFe_SBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'VL_BASE_IPI'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 3
    end
    object qryItens_NFe_SBASE_PIS_ICMS: TFMTBCDField
      FieldName = 'BASE_PIS_ICMS'
      Origin = 'VL_BASE_PIS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SALIQ_PIS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_PIS_ICMS'
      Origin = 'ALIQ_PIS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SVALOR_PIS_ICMS: TFMTBCDField
      FieldName = 'VALOR_PIS_ICMS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 3
    end
    object qryItens_NFe_SBASE_COFINS_ICMS: TFMTBCDField
      FieldName = 'BASE_COFINS_ICMS'
      Origin = 'VL_BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SALIQ_COFINS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_COFINS_ICMS'
      Origin = 'ALIQ_COFINS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SVALOR_COFINS_ICMS: TFMTBCDField
      FieldName = 'VALOR_COFINS_ICMS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'VL_OUTROS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_SFRETE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryItens_NFe_SSEGURO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QryItens_NFCe_S: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'Select'
      'NFCD.nr_nota as fkvenda,'
      'NFCD.nr_nota as codigo,'
      'NFCD.codigo_prod as id_produto,'
      'pro.descricao,'
      'NFCD.qt_produto QUANTIDADE,'
      'NFCD.desc_unidade as unidade,'
      'NFCD.vl_total as total,'
      #39'1'#39' AS IND_MOV,'
      'NFCD.CFOP,'
      'NFCD.cst,'
      'NFCD.VL_BASE_ICM as  base_icms,'
      'NFCD.ALIQ_ICM as aliq_icms,'
      'NFCD.VL_ICM as valor_icms,'
      '0 AS base_icms_st,'
      '0 AS aliq_icms_st,'
      '0 AS valor_icms_st,'
      #39'99'#39' as cst_ipi,'
      '0 as base_ipi,'
      '0 as aliq_ipi,'
      '0 as valor_ipi,'
      'NFCD.cst_pis,'
      'NFCD.VL_BASE_PIS as base_pis_icms,'
      'NFCD.ALIQ_PIS as aliq_pis_icms,'
      'NFCD.VL_PIS as valor_pis_icms,'
      'NFCD.cst_cofins,'
      'NFCD.VL_BASE_COFINS as  base_cofins_icms,'
      'NFCD.ALIQ_COFINS as aliq_cofins_icms,'
      'NFCD.VL_COFINS as valor_cofins_icms,'
      '0 as frete,'
      '0 as seguro,'
      '0 as despesas,'
      'NFCD.VL_DESCONTO as vdesconto'
      'From nfece_itens NFCD'
      'left join nfece_nota nfcm on NFCD.nr_nota=nfcm.nr_nota'
      'left join produtos pro on nfcd.codigo_prod=pro.codigo'
      'where'
      'NFCM.nr_nota=:ID'
      
        'and nfcm.status_cancelado is null and nfcm.status_inutilizado is' +
        ' null'
      '')
    Left = 374
    Top = 184
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QryItens_NFCe_SFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'NR_NOTA'
      Required = True
    end
    object QryItens_NFCe_SCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'NR_NOTA'
      ProviderFlags = []
      Required = True
    end
    object QryItens_NFCe_SID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'CODIGO_PROD'
    end
    object QryItens_NFCe_SDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QryItens_NFCe_SQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QT_PRODUTO'
      Precision = 18
    end
    object QryItens_NFCe_SUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 3
    end
    object QryItens_NFCe_STOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object QryItens_NFCe_SIND_MOV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IND_MOV'
      Origin = 'IND_MOV'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QryItens_NFCe_SCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 10
    end
    object QryItens_NFCe_SCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object QryItens_NFCe_SBASE_ICMS_ST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryItens_NFCe_SALIQ_ICMS_ST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS_ST'
      Origin = 'ALIQ_ICMS_ST'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryItens_NFCe_SVALOR_ICMS_ST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryItens_NFCe_SCST_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object QryItens_NFCe_SBASE_IPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryItens_NFCe_SALIQ_IPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryItens_NFCe_SVALOR_IPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryItens_NFCe_SCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 3
    end
    object QryItens_NFCe_SBASE_PIS_ICMS: TFMTBCDField
      FieldName = 'BASE_PIS_ICMS'
      Origin = 'VL_BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QryItens_NFCe_SALIQ_PIS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_PIS_ICMS'
      Origin = 'ALIQ_PIS'
      Precision = 18
      Size = 2
    end
    object QryItens_NFCe_SVALOR_PIS_ICMS: TFMTBCDField
      FieldName = 'VALOR_PIS_ICMS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object QryItens_NFCe_SCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 3
    end
    object QryItens_NFCe_SBASE_COFINS_ICMS: TFMTBCDField
      FieldName = 'BASE_COFINS_ICMS'
      Origin = 'VL_BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QryItens_NFCe_SALIQ_COFINS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_COFINS_ICMS'
      Origin = 'ALIQ_COFINS'
      Precision = 18
      Size = 2
    end
    object QryItens_NFCe_SVALOR_COFINS_ICMS: TFMTBCDField
      FieldName = 'VALOR_COFINS_ICMS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object QryItens_NFCe_SFRETE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryItens_NFCe_SSEGURO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryItens_NFCe_SDESPESAS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DESPESAS'
      Origin = 'DESPESAS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryItens_NFCe_SVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object QryItens_NFCe_SBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'VL_BASE_ICM'
      Precision = 18
      Size = 2
    end
    object QryItens_NFCe_SALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICM'
      Precision = 18
      Size = 2
    end
    object QryItens_NFCe_SVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
  end
  object qryNFCE_S: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'Select'
      'NFCE.nr_nota as codigo,'
      #39'1'#39' as IND_OPER,'
      #39'0'#39' as IND_EMIT,'
      #39'2'#39'||NFCE.COD_CLIENTE as id_cliente,'
      'NFCE.modelo as Modelo,'
      
        ' CASE (NFCE.STATUS || IIF(NFCE.STATUS_INUTILIZADO = '#39'S'#39', '#39'S'#39', '#39'N' +
        #39') || IIF(NFCE.STATUS_CANCELADO = '#39'S'#39', '#39'S'#39', '#39'N'#39'))'
      '        WHEN '#39'SNN'#39' THEN '#39'00'#39
      '        WHEN '#39'NSN'#39' THEN '#39'05'#39
      '        WHEN '#39'SNS'#39' THEN '#39'02'#39
      '    END AS situacao,'
      'NFCE.serie_nf as serie,'
      'NFCE.NR_NOTA as numero,'
      'NFCE.CHAVE_ACESSO_NFE as chave,'
      'NFCE.dt_emissao as data_emissao,'
      'NFCE.DT_LANCAMENTO as data_saida,'
      'NFCE.vl_total as total,'
      'NFCE.vl_descontos as desconto,'
      'NFCE.VL_MERCADORIAS as subtotal,'
      '9 AS tipo_frete,'
      '0 AS frete,'
      '0 AS seguro,'
      '0 AS despesas,'
      'nfce.VL_BASE_ICM as  baseicms,'
      'nfce.VL_ICM as totalicms,'
      '0 AS base_st,'
      '0 AS total_st,'
      '0 AS base_ipi,'
      '0 AS total_ipi,'
      'nfce.VL_BASE_PIS as baseicmspis,'
      'nfce.VL_PIS as totalicmspis,'
      'nfce.VL_BASE_COFINS as baseicmscof,'
      'nfce.VL_COFINS as totalicmscofins'
      'From NFECE_NOTA NFCE'
      'where'
      'NFCE.dt_emissao between :data1 and :data2 and'
      'nfCE.CD_EMPRESA=:EMPRESA'
      'AND NFCE.CHAVE_ACESSO_NFE IS NOT NULL'
      'AND NFCE.CHAVE_ACESSO_NFE <> '#39#39
      'AND NFCE.MODELO <> '#39#39';')
    Left = 290
    Top = 184
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryNFCE_SCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryNFCE_SIND_OPER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IND_OPER'
      Origin = 'IND_OPER'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryNFCE_SIND_EMIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IND_EMIT'
      Origin = 'IND_EMIT'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryNFCE_SID_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object qryNFCE_SMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object qryNFCE_SSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object qryNFCE_SNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      DisplayFormat = ',0.00'
    end
    object qryNFCE_SCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 44
    end
    object qryNFCE_SDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      DisplayFormat = '!99/99/0000;1;_'
    end
    object qryNFCE_SDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
      DisplayFormat = '!99/99/0000;1;_'
    end
    object qryNFCE_STOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFCE_SDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFCE_SSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFCE_STIPO_FRETE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_FRETE'
      Origin = 'TIPO_FRETE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object qryNFCE_SFRETE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object qryNFCE_SSEGURO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object qryNFCE_SDESPESAS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DESPESAS'
      Origin = 'DESPESAS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object qryNFCE_SBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFCE_STOTALICMS: TFMTBCDField
      FieldName = 'TOTALICMS'
      Origin = 'TOTALICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFCE_SBASE_ST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object qryNFCE_STOTAL_ST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_ST'
      Origin = 'TOTAL_ST'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object qryNFCE_SBASE_IPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object qryNFCE_STOTAL_IPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_IPI'
      Origin = 'TOTAL_IPI'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object qryNFCE_SBASEICMSPIS: TFMTBCDField
      FieldName = 'BASEICMSPIS'
      Origin = 'BASEICMSPIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFCE_STOTALICMSPIS: TFMTBCDField
      FieldName = 'TOTALICMSPIS'
      Origin = 'TOTALICMSPIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFCE_SBASEICMSCOF: TFMTBCDField
      FieldName = 'BASEICMSCOF'
      Origin = 'BASEICMSCOF'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFCE_STOTALICMSCOFINS: TFMTBCDField
      FieldName = 'TOTALICMSCOFINS'
      Origin = 'TOTALICMSCOFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFCE_SSITUACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object qryNFE_S: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'Select'
      'NFE.nr_nota as codigo,'
      #39'1'#39' as IND_OPER,'
      #39'0'#39' as IND_EMIT,'
      #39'2'#39'||NFE.COD_CLIENTE as id_cliente,'
      'NFE.modelo as Modelo,'
      
        ' CASE (NFE.STATUS || IIF(NFE.STATUS_INUTILIZADO = '#39'S'#39', '#39'S'#39', '#39'N'#39')' +
        ' || IIF(NFE.STATUS_CANCELADO = '#39'S'#39', '#39'S'#39', '#39'N'#39'))'
      '        WHEN '#39'SNN'#39' THEN '#39'00'#39
      '        WHEN '#39'NSN'#39' THEN '#39'05'#39
      '        WHEN '#39'SNS'#39' THEN '#39'02'#39
      '    END AS situacao,'
      'NFE.serie_nf as serie,'
      'NFE.NR_NOTA as numero,'
      'NFE.CHAVE_ACESSO_NFE as chave,'
      'NFE.dt_emissao as data_emissao,'
      'NFE.DT_LANCAMENTO as data_saida,'
      'NFE.vl_total as total,'
      'NFE.vl_descontos as desconto,'
      'NFE.VL_MERCADORIAS as subtotal,'
      'NFE.TP_FRETE as tipo_frete,'
      'NFE.vl_frete as frete,'
      'NFE.vl_seguro as seguro,'
      'nfe.VL_ACRESCIMOS as despesas,'
      'nfe.VL_BASE_ICM as  baseicms,'
      'nfe.VL_ICM as totalicms,'
      'nfe.VL_BASE_ICM_SUBST as base_st,'
      'nfe.VL_ICM_SUBST as total_st,'
      'nfe.VL_BASE_IPI as  base_ipi,'
      'nfe.VL_IPI as total_ipi,'
      'nfe.VL_BASE_PIS as baseicmspis,'
      'nfe.VL_PIS as totalicmspis,'
      'nfe.VL_BASE_COFINS as baseicmscof,'
      'nfe.VL_COFINS as totalicmscofins'
      'From NFE_NOTA NFE'
      'left join tabela_cfop on tabela_cfop.cfop=NFE.cd_cfop'
      'where'
      'NFE.dt_emissao between :data1 and :data2 and'
      'nfE.CD_empresa=:EMPRESA and'
      'tabela_cfop.tipo='#39'2'#39
      'AND NFE.CHAVE_ACESSO_NFE IS NOT NULL'
      'AND NFE.CHAVE_ACESSO_NFE <> '#39#39';')
    Left = 290
    Top = 136
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryNFE_SCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'NR_NOTA'
      Required = True
    end
    object qryNFE_SIND_OPER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IND_OPER'
      Origin = 'IND_OPER'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryNFE_SIND_EMIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IND_EMIT'
      Origin = 'IND_EMIT'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryNFE_SID_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object qryNFE_SMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object qryNFE_SSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE_NF'
      Size = 3
    end
    object qryNFE_SNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NR_NOTA'
      ProviderFlags = []
      Required = True
    end
    object qryNFE_SCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE_ACESSO_NFE'
      Size = 44
    end
    object qryNFE_SDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object qryNFE_SDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DT_LANCAMENTO'
    end
    object qryNFE_STOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qryNFE_SDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'VL_DESCONTOS'
      Precision = 18
      Size = 2
    end
    object qryNFE_SSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'VL_MERCADORIAS'
      Precision = 18
      Size = 2
    end
    object qryNFE_STIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Origin = 'TP_FRETE'
      Size = 1
    end
    object qryNFE_SFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'VL_FRETE'
      Precision = 18
      Size = 2
    end
    object qryNFE_SSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'VL_SEGURO'
      Precision = 18
      Size = 2
    end
    object qryNFE_SDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'VL_ACRESCIMOS'
      Precision = 18
      Size = 2
    end
    object qryNFE_SBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Origin = 'VL_BASE_ICM'
      Precision = 18
      Size = 2
    end
    object qryNFE_STOTALICMS: TFMTBCDField
      FieldName = 'TOTALICMS'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object qryNFE_SBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Origin = 'VL_BASE_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object qryNFE_STOTAL_ST: TFMTBCDField
      FieldName = 'TOTAL_ST'
      Origin = 'VL_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object qryNFE_SBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'VL_BASE_IPI'
      Precision = 18
      Size = 2
    end
    object qryNFE_STOTAL_IPI: TFMTBCDField
      FieldName = 'TOTAL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object qryNFE_SBASEICMSPIS: TFMTBCDField
      FieldName = 'BASEICMSPIS'
      Origin = 'VL_BASE_PIS'
      Precision = 18
      Size = 2
    end
    object qryNFE_STOTALICMSPIS: TFMTBCDField
      FieldName = 'TOTALICMSPIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object qryNFE_SBASEICMSCOF: TFMTBCDField
      FieldName = 'BASEICMSCOF'
      Origin = 'VL_BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object qryNFE_STOTALICMSCOFINS: TFMTBCDField
      FieldName = 'TOTALICMSCOFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object qryNFE_SSITUACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object qrUnidades: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select'
      'distinct(UND.codigo) abreviatura,'
      'und.descricao'
      'from  NOTASFISCAIS_ITENS ITECO'
      
        'left JOIN NOTASFISCAIS PEDICO on ITECO.CODIGO_NOTA=PEDICO.codigo' +
        '_nota'
      'left JOIN produtos PROD on ITECO.CODIGO_PRODUTO=PROD.codigo'
      'left JOIN unidades UND on PROD.unidade= UND.codigo'
      'where'
      'PEDICO.data_cadastro between :data1 and :data2 and'
      'PEDICO.cod_empresa=:EMPRESA')
    Left = 288
    Top = 80
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'EMPRESA'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object qrUnidadesABREVIATURA: TIntegerField
      FieldName = 'ABREVIATURA'
      Origin = 'ABREVIATURA'
    end
    object qrUnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
  end
  object qryConsC100: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select codigo from sped_c100'
      'where'
      'fk_sped=:id and'
      'not(COD_SIT in ('#39'02'#39','#39'03'#39','#39'04'#39'))')
    Left = 296
    Top = 24
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryConsC100CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryConsUnidade: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select codigo,unidade,descricao from sped_unidade'
      'where'
      'fk_sped=:sped and'
      'fk_empresa=:empresa')
    Left = 216
    Top = 24
    ParamData = <
      item
        Name = 'SPED'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryConsUnidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryConsUnidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
  end
  object qrParticipantes: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select'
      'DISTINCT('#39'1'#39'||FORN.codigo)AS COD_PART,'
      'FORN.cnpj,'
      'FORN.ie,'
      'FORN.nome as razao,'
      'FORN.fantasia,'
      'FORN.endereco,'
      'FORN.numero,'
      'FORN.bairro,'
      'forn."codigo_ibge" as codmun'
      'from  notasfiscais PEDICO'
      'left JOIN fornecedores Forn on PEDICO.COD_fornecedor=FORN.codigo'
      'where'
      'PEDICO.data_cadastro between :data1 and :data2 and'
      'pedico.modelo in ('#39'01'#39','#39'1B'#39','#39'04'#39','#39'55'#39','#39'65'#39') and'
      'PEDICO.cod_empresa=:EMPRESA'
      'union'
      ''
      'select'
      'DISTINCT('#39'2'#39'||NFe.cod_cliente)AS COD_PART,'
      'CLI.cpf_cnpj as cnpj,'
      'CLI.rg_ie as ie,'
      'CLI.nome_rs as razao,'
      'CLI.apelido as fantasia,'
      'CLI.endereco,'
      'CLI.numero,'
      'CLI.bairro,'
      'Cid.cod_ibge as codmun'
      'from  nfe_nota NFE'
      'left JOIN clientes CLI on NFE.COD_CLIENTE=CLI.codigo'
      'left join cidades cid on cid.cod_cidade=cli.cod_cidade'
      'where'
      'NFE.dt_emissao between :data1 and :data2  and'
      '(nfe.cd_empresa=:empresa) and'
      
        '(nfe.status_inutilizado is null and nfe.status_cancelado is null' +
        ')')
    Left = 216
    Top = 80
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'EMPRESA'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object qrParticipantesCOD_PART: TStringField
      FieldName = 'COD_PART'
      Origin = 'COD_PART'
      Size = 12
    end
    object qrParticipantesCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object qrParticipantesIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qrParticipantesRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 50
    end
    object qrParticipantesFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 50
    end
    object qrParticipantesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object qrParticipantesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qrParticipantesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object qrParticipantesCODMUN: TStringField
      FieldName = 'CODMUN'
      Origin = 'CODMUN'
      Size = 11
    end
  end
  object qryItensC: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'Select'
      'ITECO.CODIGO_NOTA as fk_compra,'
      'ITECO.CODIGO_PRODUTO as fk_produto,'
      'pro.descricao,'
      'ITECO.QUANTIDADE as qtd,'
      'pro.DESC_UNIDADE as unidade,'
      'ITECO.VALOR_UNI as vl_item,'
      #39'0'#39' AS IND_MOV,'
      'ITECO.CFOP,'
      'ITECO.cst as cst_icm,'
      'coalesce(ITECO.base_icms,0) base_icms,'
      'coalesce(ITECO.PERC_ICMS,0) aliq_icms,'
      'coalesce(ITECO.VALOR_ICMS,0) vl_icms,'
      'coalesce(ITECO.BASE_ICMS_ST,0) base_st,'
      'coalesce(ITECO.ALIC_ICMS_ST,0) aliq_st,'
      'coalesce(ITECO.VALOR_ICMS_ST,0) vl_st,'
      'g.CST_IPI_ENTRADA as cst_ipi,'
      'coalesce(ITECO.base_ipi,0) base_ipi,'
      'coalesce(ITECO.PERC_IPI,0) aliq_ipi,'
      'coalesce(ITECO.VALOR_IPI,0) vl_ipi,'
      'g.SIT_PIS_COMPRA as cst_pis,'
      'coalesce(ITECO.base_pis,0) base_pis,'
      'coalesce(ITECO.PERC_PIS,0) aliq_pis,'
      'coalesce(ITECO.VALOR_PIS,0) vl_pis,'
      'g.SIT_COFINS_COMPRA as cst_cof,'
      'coalesce(ITECO.BASE_COFINS,0) base_cof,'
      'coalesce(ITECO.PERC_COFINS,0) aliq_cof,'
      'coalesce(ITECO.VALOR_COFINS,0) vl_cof,'
      'coalesce(ITECO.frete,0) frete1,'
      'coalesce(ITECO.seguro,0) seguro,'
      'coalesce(ITECO.outras,0) despesa,'
      'coalesce(ITECO.VALOR_DESC,0) desconto'
      'From notasfiscais_itens ITECO'
      
        'left join notasfiscais  pedico on iteco.CODIGO_NOTA=pedico.CODIG' +
        'O_NOTA'
      'left join produtos pro on pro.codigo=iteco.CODIGO_PRODUTO'
      'LEFT JOIN grupo_tributacao G ON PRO.GRUPO_TRIBUTACAO=G.COD_GRUPO'
      'where'
      'pedico.CODIGO_NOTA=:id')
    Left = 215
    Top = 136
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItensCFK_COMPRA: TIntegerField
      FieldName = 'FK_COMPRA'
      Origin = 'CODIGO_NOTA'
      Required = True
    end
    object qryItensCFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
    end
    object qryItensCDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object qryItensCQTD: TBCDField
      FieldName = 'QTD'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object qryItensCUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'DESC_UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object qryItensCVL_ITEM: TBCDField
      FieldName = 'VL_ITEM'
      Origin = 'VALOR_UNI'
      Precision = 18
    end
    object qryItensCIND_MOV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IND_MOV'
      Origin = 'IND_MOV'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryItensCCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object qryItensCCST_ICM: TStringField
      FieldName = 'CST_ICM'
      Origin = 'CST'
      Size = 3
    end
    object qryItensCBASE_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCALIQ_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCVL_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCBASE_ST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCALIQ_ST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ST'
      Origin = 'ALIQ_ST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCVL_ST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_ST'
      Origin = 'VL_ST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCCST_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI_ENTRADA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object qryItensCBASE_IPI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCALIQ_IPI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCVL_IPI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCCST_PIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_PIS'
      Origin = 'SIT_PIS_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object qryItensCBASE_PIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCALIQ_PIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCVL_PIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCCST_COF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_COF'
      Origin = 'SIT_COFINS_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object qryItensCBASE_COF: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_COF'
      Origin = 'BASE_COF'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCALIQ_COF: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCVL_COF: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_COF'
      Origin = 'VL_COF'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCFRETE1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE1'
      Origin = 'FRETE1'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCSEGURO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCDESPESA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESPESA'
      Origin = 'DESPESA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensCDESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qryItens_NFe_E: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'Select'
      'NFD.NR_NOTA as fknfe,'
      'NFD.CODIGO_PROD as id_produto,'
      'pro.descricao,'
      'NFD.QT_PRODUTO as qtd,'
      'pro.unidade,'
      'NFD.vl_total as total,'
      #39'0'#39' AS IND_MOV,'
      'NFD.CFOP,'
      'NFD.cst,'
      'NFd.vl_base_icm as base_icms,'
      'NFd.aliq_icm as aliq_icms,'
      'NFd.vl_icm as valor_icms,'
      'NFd.VL_BASE_ICM_SUBST as base_icms_st,'
      'NFd.ALIQ_ICM_SUBST as aliq_icms_st,'
      'NFd.VL_ICM_SUBST as valor_icms_st,'
      'NFd.cst_ipi,'
      'NFd.VL_BASE_IPI as base_ipi,'
      'NFd.aliq_ipi,'
      'NFd.vl_ipi as valor_ipi,'
      'NFd.CST_PIS,'
      'NFd.vl_base_pis as base_pis_icms,'
      'NFd.aliq_pis as aliq_pis_icms,'
      'NFd.vl_pis as valor_pis_icms,'
      'NFd.cst_cofins,'
      'NFd.VL_BASE_COFINS as base_cofins_icms,'
      'NFd.ALIQ_COFINS as aliq_cofins_icms,'
      'NFd.VL_COFINS as valor_cofins_icms,'
      'NFd.vl_outros as despesas,'
      'NFd.vl_desconto as desconto,'
      '0 as frete,'
      '0 as seguro'
      'From nfe_itens nfd'
      'left join nfe_nota nfm on nfd.nr_nota=nfm.nr_nota'
      'left join produtos pro on pro.codigo=nfd.CODIGO_PROD'
      'where'
      'nfd.nr_nota=:id and'
      'nfm.status_cancelado is null and nfm.status_inutilizado is null'
      '')
    Left = 215
    Top = 184
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItens_NFe_EFKNFE: TIntegerField
      FieldName = 'FKNFE'
      Origin = 'NR_NOTA'
      Required = True
    end
    object qryItens_NFe_EID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'CODIGO_PROD'
    end
    object qryItens_NFe_EDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object qryItens_NFe_EQTD: TBCDField
      FieldName = 'QTD'
      Origin = 'QT_PRODUTO'
      Precision = 18
    end
    object qryItens_NFe_EUNIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryItens_NFe_ETOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EIND_MOV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IND_MOV'
      Origin = 'IND_MOV'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryItens_NFe_ECFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 10
    end
    object qryItens_NFe_ECST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qryItens_NFe_EBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'VL_BASE_ICM'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICM'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'VL_BASE_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EALIQ_ICMS_ST: TFMTBCDField
      FieldName = 'ALIQ_ICMS_ST'
      Origin = 'ALIQ_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VL_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_ECST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 2
    end
    object qryItens_NFe_EBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'VL_BASE_IPI'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_ECST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 3
    end
    object qryItens_NFe_EBASE_PIS_ICMS: TFMTBCDField
      FieldName = 'BASE_PIS_ICMS'
      Origin = 'VL_BASE_PIS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EALIQ_PIS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_PIS_ICMS'
      Origin = 'ALIQ_PIS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EVALOR_PIS_ICMS: TFMTBCDField
      FieldName = 'VALOR_PIS_ICMS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_ECST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 3
    end
    object qryItens_NFe_EBASE_COFINS_ICMS: TFMTBCDField
      FieldName = 'BASE_COFINS_ICMS'
      Origin = 'VL_BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EALIQ_COFINS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_COFINS_ICMS'
      Origin = 'ALIQ_COFINS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EVALOR_COFINS_ICMS: TFMTBCDField
      FieldName = 'VALOR_COFINS_ICMS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'VL_OUTROS'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryItens_NFe_EFRETE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryItens_NFe_ESEGURO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryNFe_E: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'Select'
      #39'0'#39' as TPOperacao,'
      #39'0'#39' as TPEmissao,'
      #39'1'#39'||NFEM.COD_CLIENTE as id_fornecedor,'
      'NFEM.NR_PEDIDO AS id_pedidocompra,'
      'NFEM.N_SEQUENCIA  as codigo,'
      
        ' CASE (NFEM.STATUS || IIF(NFEM.STATUS_INUTILIZADO = '#39'S'#39', '#39'S'#39', '#39'N' +
        #39') || IIF(NFEM.STATUS_CANCELADO = '#39'S'#39', '#39'S'#39', '#39'N'#39'))'
      '        WHEN '#39'SNN'#39' THEN '#39'00'#39
      '        WHEN '#39'NSN'#39' THEN '#39'05'#39
      '        WHEN '#39'SNS'#39' THEN '#39'02'#39
      '    END AS STATUS,'
      'NFEM.serie_nf as serie,'
      'NFEM.NR_NOTA as numero,'
      'NFEM.CHAVE_ACESSO_NFE as chave,'
      'NFEM.dt_emissao as data_emissao,'
      'NFEM.vl_total as total,'
      'NFEM.vl_descontos as desconto,'
      'NFEM.vl_frete as frete,'
      'NFEM.vl_seguro as seguro,'
      'NFEM.VL_ACRESCIMOS as despesas,'
      'NFEM.VL_MERCADORIAS as subtotal,'
      'NFEM.VL_BASE_ICM as baseicms,'
      'NFEM.VL_ICM as totalicms,'
      'NFEM.VL_BASE_ICM_SUBST as base_st,'
      'NFEM.VL_ICM_SUBST as total_st,'
      'NFEM.VL_IPI as total_ipi,'
      'NFEM.VL_PIS as totalicmspis,'
      'NFEM.VL_COFINS as totalicmscofins'
      'From nfe_nota NFEM'
      'left join tabela_cfop on tabela_cfop.cfop=nfem.cd_cfop'
      'where NFEM.DT_EMISSAO between :data1 and :data2'
      'and'
      'NFEM.CD_EMPRESA=:ID and'
      'tabela_cfop.tipo='#39'1'#39
      'AND NFEM.CHAVE_ACESSO_NFE IS NOT NULL'
      'AND NFEM.CHAVE_ACESSO_NFE <> '#39#39';')
    Left = 127
    Top = 80
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object qryNFe_ETPOPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TPOPERACAO'
      Origin = 'TPOPERACAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryNFe_ETPEMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TPEMISSAO'
      Origin = 'TPEMISSAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryNFe_EID_FORNECEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object qryNFe_EID_PEDIDOCOMPRA: TIntegerField
      FieldName = 'ID_PEDIDOCOMPRA'
      Origin = 'CODIGO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryNFe_ECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryNFe_ESERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object qryNFe_ENUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      DisplayFormat = ',0.00'
    end
    object qryNFe_ECHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 44
    end
    object qryNFe_EDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      DisplayFormat = '!99/99/0000;1;_'
    end
    object qryNFe_ETOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_EDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_EFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_ESEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_EDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'DESPESAS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_ESUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_EBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_ETOTALICMS: TFMTBCDField
      FieldName = 'TOTALICMS'
      Origin = 'TOTALICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_EBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_ETOTAL_ST: TFMTBCDField
      FieldName = 'TOTAL_ST'
      Origin = 'TOTAL_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_ETOTAL_IPI: TFMTBCDField
      FieldName = 'TOTAL_IPI'
      Origin = 'TOTAL_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_ETOTALICMSPIS: TFMTBCDField
      FieldName = 'TOTALICMSPIS'
      Origin = 'TOTALICMSPIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_ETOTALICMSCOFINS: TFMTBCDField
      FieldName = 'TOTALICMSCOFINS'
      Origin = 'TOTALICMSCOFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFe_ESTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object qryCompra: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'Select'
      'PEDICO.codigo_nota as ID,'
      #39'0'#39' as TPOperacao,'
      #39'1'#39' as TPEmissao,'
      #39'1'#39'||PEDICO.COD_FORNECEDOR as id_fornecedor,'
      'PEDICO.modelo,'
      'PEDICO.serie_nf as serie,'
      'PEDICO.num_nota as nr_nota,'
      'PEDICO.chave_nfe as chave,'
      'PEDICO.data_emissao as dtemissao,'
      'PEDICO.data_cadastro as dtentrada,'
      'PEDICO.total_nota as total,'
      'PEDICO.valor_desconto as desconto,'
      'PEDICO.valor_frete as frete,'
      'PEDICO.valor_seguro as seguro,'
      'PEDICO.valor_outras_despesas as despesas,'
      'PEDICO.valor_total_produtos as subtotal,'
      'PEDICO.base_calculo_icms as base_icm,'
      'PEDICO.valor_icms as total_icm,'
      'PEDICO.BASE_CALC_ICMS_SUBST as base_st,'
      'PEDICO.valor_icms_subst as total_st,'
      'PEDICO.valor_ipi as total_ipi,'
      'PEDICO.valor_pis as total_pis,'
      'PEDICO.valor_cofins as total_cof'
      'From notasfiscais PEDICO'
      'where'
      'PEDICO.data_cadastro between :data1 and :data2 and'
      'pedico.modelo in ('#39'01'#39','#39'1B'#39','#39'04'#39','#39'55'#39','#39'65'#39') and'
      'PEDICO.cod_empresa=:ID'
      'ORDER BY nr_nota;')
    Left = 127
    Top = 24
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object qryCompraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryCompraTPOPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TPOPERACAO'
      Origin = 'TPOPERACAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryCompraTPEMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TPEMISSAO'
      Origin = 'TPEMISSAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryCompraMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object qryCompraSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 5
    end
    object qryCompraNR_NOTA: TStringField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
      Size = 15
    end
    object qryCompraCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 44
    end
    object qryCompraDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
      Required = True
      DisplayFormat = '!99/99/0000;1;_'
    end
    object qryCompraDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      Origin = 'DTENTRADA'
      Required = True
      DisplayFormat = '!99/99/0000;1;_'
    end
    object qryCompraTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'DESPESAS'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_ICM: TFMTBCDField
      FieldName = 'BASE_ICM'
      Origin = 'BASE_ICM'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_ICM: TFMTBCDField
      FieldName = 'TOTAL_ICM'
      Origin = 'TOTAL_ICM'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_ST: TFMTBCDField
      FieldName = 'TOTAL_ST'
      Origin = 'TOTAL_ST'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_IPI: TFMTBCDField
      FieldName = 'TOTAL_IPI'
      Origin = 'TOTAL_IPI'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_PIS: TFMTBCDField
      FieldName = 'TOTAL_PIS'
      Origin = 'TOTAL_PIS'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_COF: TFMTBCDField
      FieldName = 'TOTAL_COF'
      Origin = 'TOTAL_COF'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraID_FORNECEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
  end
  object qryConsC170: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'SELECT '
      'sp.CST_ICMS,'
      'sp.CFOP,'
      'sp.ALIQ_ICM,'
      'SUM(sp.VL_ITEM)VL_ITEM,'
      'SUM(sp.VL_OPR)VL_OPR,'
      'SUM(sp.VL_BC_ICMS)VL_BC_ICMS,'
      'SUM(sp.VL_ICMS)VL_ICMS,'
      'SUM(sp.VL_BC_ICMS_ST)VL_BC_ICMS_ST,'
      'SUM(sp.VL_ICMS_ST)VL_ICMS_ST,'
      'SUM(sp.VL_IPI)VL_IPI'
      'FROM sped_C170 sp'
      'left join sped_c100 sp100 on sp100.codigo=sp.fk_c100'
      'WHERE'
      'sp.fk_c100=:reg and'
      'not sp100.cod_sit in ('#39'02'#39','#39'03'#39','#39'04'#39') and'
      'sp100.cod_mod in ('#39'55'#39','#39'65'#39')'
      ''
      ''
      'group by 1,2,3')
    Left = 48
    Top = 184
    ParamData = <
      item
        Name = 'REG'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryConsC170CST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qryConsC170CFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryConsC170ALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConsC170VL_ITEM: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConsC170VL_OPR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_OPR'
      Origin = 'VL_OPR'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConsC170VL_BC_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConsC170VL_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConsC170VL_BC_ICMS_ST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConsC170VL_ICMS_ST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConsC170VL_IPI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryC170_NFe_S: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      '/* ITENS NFE */'
      ''
      'Select'
      #39'NFE'#39' as tabela,'
      'NFE.NR_NOTA as fknfe,'
      'NFE.NR_NOTA as codigo,'
      'NFE.codigo_prod as id_produto,'
      'pro.descricao,'
      'NFE.qt_produto as qtd,'
      'NFE.desc_unidade as unidade,'
      'NFE.vl_total,'
      #39'1'#39' AS IND_MOV,'
      'NFE.cfop,'
      'nfe.cst,'
      'NFE.vl_base_icm as base_icms,'
      'NFE.aliq_icm as aliq_icms,'
      'NFE.vl_icm as valor_icms,'
      'NFE.VL_BASE_ICM_SUBST as base_icms_st,'
      'NFE.ALIQ_ICM_SUBST as aliq_icms_st,'
      'NFE.VL_ICM_SUBST as valor_icms_st,'
      'NFE.cst_ipi,'
      'NFE.VL_BASE_IPI as base_ipi,'
      'NFE.aliq_ipi,'
      'NFE.vl_ipi as valor_ipi,'
      'NFE.CST_PIS,'
      'NFE.vl_base_pis as base_pis_icms,'
      'NFE.aliq_pis as aliq_pis_icms,'
      'NFE.vl_pis as valor_pis_icms,'
      'NFE.cst_cofins,'
      'NFE.VL_BASE_COFINS as base_cofins_icms,'
      'NFE.ALIQ_COFINS as aliq_cofins_icms,'
      'NFE.VL_COFINS as valor_cofins_icms,'
      'NFE.vl_outros as despesas,'
      'NFE.vl_desconto'
      'From nfe_itens NFE'
      'left join nfe_nota nfm  on NFE.NR_NOTA=nfm.NR_NOTA'
      'left join produtos pro on NFE.codigo_prod=pro.codigo'
      'where'
      'NFM.NR_NOTA=:ID'
      'and'
      'nfm.status_cancelado is null and nfm.status_inutilizado is null')
    Left = 55
    Top = 128
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryC170_NFe_STABELA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TABELA'
      Origin = 'TABELA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryC170_NFe_SFKNFE: TIntegerField
      FieldName = 'FKNFE'
      Origin = 'NR_NOTA'
      Required = True
    end
    object qryC170_NFe_SCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'NR_NOTA'
      ProviderFlags = []
      Required = True
    end
    object qryC170_NFe_SID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'CODIGO_PROD'
    end
    object qryC170_NFe_SDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object qryC170_NFe_SQTD: TBCDField
      FieldName = 'QTD'
      Origin = 'QT_PRODUTO'
      Precision = 18
    end
    object qryC170_NFe_SUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 3
    end
    object qryC170_NFe_SVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SIND_MOV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IND_MOV'
      Origin = 'IND_MOV'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryC170_NFe_SCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 10
    end
    object qryC170_NFe_SCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qryC170_NFe_SBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'VL_BASE_ICM'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICM'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'VL_BASE_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SALIQ_ICMS_ST: TFMTBCDField
      FieldName = 'ALIQ_ICMS_ST'
      Origin = 'ALIQ_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VL_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 2
    end
    object qryC170_NFe_SBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'VL_BASE_IPI'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 3
    end
    object qryC170_NFe_SBASE_PIS_ICMS: TFMTBCDField
      FieldName = 'BASE_PIS_ICMS'
      Origin = 'VL_BASE_PIS'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SALIQ_PIS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_PIS_ICMS'
      Origin = 'ALIQ_PIS'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SVALOR_PIS_ICMS: TFMTBCDField
      FieldName = 'VALOR_PIS_ICMS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 3
    end
    object qryC170_NFe_SBASE_COFINS_ICMS: TFMTBCDField
      FieldName = 'BASE_COFINS_ICMS'
      Origin = 'VL_BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SALIQ_COFINS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_COFINS_ICMS'
      Origin = 'ALIQ_COFINS'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SVALOR_COFINS_ICMS: TFMTBCDField
      FieldName = 'VALOR_COFINS_ICMS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'VL_OUTROS'
      Precision = 18
      Size = 2
    end
    object qryC170_NFe_SVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Origin = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
  end
  object qryEmpresa: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select codigo, nome_fantasia as fantasia  from empresa'
      'ORDER BY razao_social')
    Left = 56
    Top = 24
    object qryEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
  end
  object qryContador: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from empresa')
    Left = 56
    Top = 80
    object qryContadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContadorRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 70
    end
    object qryContadorNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 70
    end
    object qryContadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object qryContadorCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object qryContadorUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryContadorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qryContadorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object qryContadorFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object qryContadorEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object qryContadorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Origin = 'HOMEPAGE'
      Size = 50
    end
    object qryContadorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object qryContadorIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qryContadorNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryContadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object qryContadorIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object qryContadorLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
    end
    object qryContadorCNAE: TStringField
      FieldName = 'CNAE'
      Origin = 'CNAE'
      Size = 10
    end
    object qryContadorCOD_CID_IBGE: TStringField
      FieldName = 'COD_CID_IBGE'
      Origin = 'COD_CID_IBGE'
      Size = 10
    end
    object qryContadorURS_INDEA: TStringField
      FieldName = 'URS_INDEA'
      Origin = 'URS_INDEA'
    end
    object qryContadorULE_INDEA: TStringField
      FieldName = 'ULE_INDEA'
      Origin = 'ULE_INDEA'
    end
    object qryContadorMATRICULA_INDEA: TStringField
      FieldName = 'MATRICULA_INDEA'
      Origin = 'MATRICULA_INDEA'
      Size = 10
    end
    object qryContadorPROPRIETARIO: TStringField
      FieldName = 'PROPRIETARIO'
      Origin = 'PROPRIETARIO'
      Size = 70
    end
    object qryContadorRESPONSAVEL_TECINICO: TStringField
      FieldName = 'RESPONSAVEL_TECINICO'
      Origin = 'RESPONSAVEL_TECINICO'
      Size = 70
    end
    object qryContadorCRMV_N: TStringField
      FieldName = 'CRMV_N'
      Origin = 'CRMV_N'
      Size = 15
    end
    object qryContadorFLAG_VETERINARIA: TStringField
      FieldName = 'FLAG_VETERINARIA'
      Origin = 'FLAG_VETERINARIA'
      Size = 1
    end
    object qryContadorREGIME: TStringField
      FieldName = 'REGIME'
      Origin = 'REGIME'
      Size = 1
    end
    object qryContadorALIC_SIMPLES: TFMTBCDField
      FieldName = 'ALIC_SIMPLES'
      Origin = 'ALIC_SIMPLES'
      Precision = 18
      Size = 2
    end
    object qryContadorALIC_PIS: TFMTBCDField
      FieldName = 'ALIC_PIS'
      Origin = 'ALIC_PIS'
      Precision = 18
      Size = 2
    end
    object qryContadorALIC_COFINS: TFMTBCDField
      FieldName = 'ALIC_COFINS'
      Origin = 'ALIC_COFINS'
      Precision = 18
      Size = 2
    end
    object qryContadorALIC_IRPJ: TFMTBCDField
      FieldName = 'ALIC_IRPJ'
      Origin = 'ALIC_IRPJ'
      Precision = 18
      Size = 2
    end
    object qryContadorALIC_CSLL: TFMTBCDField
      FieldName = 'ALIC_CSLL'
      Origin = 'ALIC_CSLL'
      Precision = 18
      Size = 2
    end
    object qryContadorSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      Size = 15
    end
    object qryContadorNOME_CONTADOR: TStringField
      FieldName = 'NOME_CONTADOR'
      Origin = 'NOME_CONTADOR'
      Size = 70
    end
    object qryContadorCNPJ_CONTADOR: TStringField
      FieldName = 'CNPJ_CONTADOR'
      Origin = 'CNPJ_CONTADOR'
      FixedChar = True
      Size = 18
    end
    object qryContadorCRC_CONTADOR: TStringField
      FieldName = 'CRC_CONTADOR'
      Origin = 'CRC_CONTADOR'
      Size = 15
    end
    object qryContadorENDERECO_CONTADOR: TStringField
      FieldName = 'ENDERECO_CONTADOR'
      Origin = 'ENDERECO_CONTADOR'
      Size = 44
    end
    object qryContadorCEP_CONTADOR: TStringField
      FieldName = 'CEP_CONTADOR'
      Origin = 'CEP_CONTADOR'
      FixedChar = True
      Size = 10
    end
    object qryContadorNUM_CONTADOR: TIntegerField
      FieldName = 'NUM_CONTADOR'
      Origin = 'NUM_CONTADOR'
    end
    object qryContadorBAIRRO_CONTADOR: TStringField
      FieldName = 'BAIRRO_CONTADOR'
      Origin = 'BAIRRO_CONTADOR'
      Size = 30
    end
    object qryContadorCOMPL_CONTADOR: TStringField
      FieldName = 'COMPL_CONTADOR'
      Origin = 'COMPL_CONTADOR'
      Size = 44
    end
    object qryContadorFONE_CONTADOR: TStringField
      FieldName = 'FONE_CONTADOR'
      Origin = 'FONE_CONTADOR'
      Size = 16
    end
    object qryContadorFAX_CONTADOR: TStringField
      FieldName = 'FAX_CONTADOR'
      Origin = 'FAX_CONTADOR'
      Size = 15
    end
    object qryContadorEMAIL_CONTADOR: TStringField
      FieldName = 'EMAIL_CONTADOR'
      Origin = 'EMAIL_CONTADOR'
      Size = 50
    end
    object qryContadorCOD_IBGE_CONTADOR: TStringField
      FieldName = 'COD_IBGE_CONTADOR'
      Origin = 'COD_IBGE_CONTADOR'
      Size = 7
    end
    object qryContadorCPF_CONTADOR: TStringField
      FieldName = 'CPF_CONTADOR'
      Origin = 'CPF_CONTADOR'
      FixedChar = True
      Size = 18
    end
    object qryContadorCIDADE_CONTADOR: TStringField
      FieldName = 'CIDADE_CONTADOR'
      Origin = 'CIDADE_CONTADOR'
      Size = 40
    end
    object qryContadorUF_CONTADOR: TStringField
      FieldName = 'UF_CONTADOR'
      Origin = 'UF_CONTADOR'
      Size = 2
    end
    object qryContadorCPF_RESPONSAVEL: TStringField
      FieldName = 'CPF_RESPONSAVEL'
      Origin = 'CPF_RESPONSAVEL'
      FixedChar = True
      Size = 18
    end
    object qryContadorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 44
    end
    object qryContadorTIPO_SEGMENTO: TStringField
      FieldName = 'TIPO_SEGMENTO'
      Origin = 'TIPO_SEGMENTO'
      Size = 1
    end
    object qryContadorCPF_PROPRIETARIO: TStringField
      FieldName = 'CPF_PROPRIETARIO'
      Origin = 'CPF_PROPRIETARIO'
      FixedChar = True
      Size = 18
    end
    object qryContadorDISTRIBUIDORA_COMBUSTIVEL: TStringField
      FieldName = 'DISTRIBUIDORA_COMBUSTIVEL'
      Origin = 'DISTRIBUIDORA_COMBUSTIVEL'
      Size = 70
    end
    object qryContadorNUM_JUNT_COM: TStringField
      FieldName = 'NUM_JUNT_COM'
      Origin = 'NUM_JUNT_COM'
      Size = 40
    end
    object qryContadorDATA_INICIO_LMC: TDateField
      FieldName = 'DATA_INICIO_LMC'
      Origin = 'DATA_INICIO_LMC'
    end
    object qryContadorDATA_FIM_LMC: TDateField
      FieldName = 'DATA_FIM_LMC'
      Origin = 'DATA_FIM_LMC'
    end
    object qryContadorNUM_ORD_LMC: TIntegerField
      FieldName = 'NUM_ORD_LMC'
      Origin = 'NUM_ORD_LMC'
    end
    object qryContadorULTIMONSU: TStringField
      FieldName = 'ULTIMONSU'
      Origin = 'ULTIMONSU'
      Size = 30
    end
  end
  object qryInventario: TFDQuery
    OnCalcFields = qryInventarioCalcFields
    AggregatesActive = True
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      
        'select fk_produto, descricao, preco_custo, sum(qtde) qtde, sum(q' +
        'tds) qtds, sum(qtde-qtds) saldo from('
      
        'select ci.CODIGO_PRODUTO as fk_produto, pro.descricao, pro.preco' +
        '_custo, ci.QUANTIDADE qtde, 0 as qtds  from NOTASFISCAIS_ITENS c' +
        'i'
      'left join produtos pro on pro.codigo=ci.CODIGO_PRODUTO'
      'left join NOTASFISCAIS co on co.codigo_nota=ci.codigo_nota'
      'where'
      'co.data_cadastro<:data'
      ''
      'union all'
      
        'select vd.CODIGO_PROD  as fk_produto, pro.descricao, pro.preco_c' +
        'usto, 0 as qtde,  vd.QT_PRODUTO as qdts   from NFECE_ITENS vd'
      'left join produtos pro on pro.codigo=vd.CODIGO_PROD'
      'left join NFECE_NOTA vm on vm.NR_NOTA=vd.NR_NOTA'
      'where'
      
        'vm.dt_emissao<:data and vm.status_cancelado is null and vm.statu' +
        's_inutilizado is null'
      ''
      'union all'
      ''
      
        'select nfd.CODIGO_PROD  as fk_produto, pro.descricao, pro.preco_' +
        'custo, 0 as qtde,  nfd.QT_PRODUTO as qtds   from NFE_ITENS nfd'
      'left join produtos pro on pro.codigo=nfd.CODIGO_PROD'
      'left join nfe_nota nfm on nfm.NR_NOTA=nfd.NR_NOTA'
      'where'
      
        'nfm.dt_emissao<:data and nfm.status_cancelado is null and nfm.st' +
        'atus_inutilizado is null'
      ''
      ')'
      'group by 1,2,3'
      'having sum(qtde-qtds)>0'
      'order by 2')
    Left = 46
    Top = 248
    ParamData = <
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qryInventarioFK_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object qryInventarioDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryInventarioPRECO_CUSTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryInventarioQTDE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qryInventarioQTDS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDS'
      Origin = 'QTDS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qryInventarioTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
    object qryInventarioSALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
  end
end
