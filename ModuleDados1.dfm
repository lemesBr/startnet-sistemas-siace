object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 704
  Width = 1052
  object DTS_bem: TDataSource
    DataSet = Sds_bens
    Left = 110
    Top = 16
  end
  object Dts_centro_Custo: TDataSource
    DataSet = Sds_CentroCusto
    Left = 117
    Top = 80
  end
  object Dts_bens_utilizacao: TDataSource
    DataSet = Sds_bens_utilizacao
    Left = 133
    Top = 145
  end
  object Sds_bens: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from BENS order By Codigo asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 32
    Top = 16
    object Sds_bensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_bensIDENTIF_MERC: TStringField
      DisplayLabel = 'Id'
      DisplayWidth = 1
      FieldName = 'IDENTIF_MERC'
      Size = 1
    end
    object Sds_bensDESC_BEM: TStringField
      DisplayLabel = 'Nome do Bem'
      DisplayWidth = 50
      FieldName = 'DESC_BEM'
      Size = 50
    end
    object Sds_bensCOD_PRINCIPAL: TIntegerField
      DisplayLabel = 'Cod Bem Princ'
      DisplayWidth = 10
      FieldName = 'COD_PRINCIPAL'
    end
    object Sds_bensCOD_CONTA: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 50
      FieldName = 'COD_CONTA'
      Size = 50
    end
    object Sds_bensN_PARCELAS: TStringField
      DisplayWidth = 3
      FieldName = 'N_PARCELAS'
      Visible = False
      Size = 3
    end
    object Sds_bensDATACAD: TDateField
      DisplayWidth = 10
      FieldName = 'DATACAD'
      Visible = False
    end
    object Sds_bensUSERCAD: TStringField
      DisplayWidth = 20
      FieldName = 'USERCAD'
      Visible = False
    end
    object Sds_benscod_empresa: TIntegerField
      DisplayWidth = 10
      FieldName = 'cod_empresa'
      Visible = False
    end
  end
  object Sds_CentroCusto: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from CENTRO_CUSTO order by Cod_centro Asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 32
    Top = 80
    object Sds_CentroCustoCOD_CENTRO: TIntegerField
      DisplayLabel = 'C'#243'd Centro'
      DisplayWidth = 10
      FieldName = 'COD_CENTRO'
      Required = True
    end
    object Sds_CentroCustoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Sds_CentroCustoDATA_CAD: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_CAD'
      Visible = False
    end
    object Sds_CentroCustoUSERCAD: TStringField
      DisplayWidth = 20
      FieldName = 'USERCAD'
      Visible = False
    end
    object Sds_CentroCustoCOD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_EMPRESA'
      Required = True
      Visible = False
    end
    object Sds_CentroCustoCOD_PLANO: TIntegerField
      FieldName = 'COD_PLANO'
    end
  end
  object Sds_bens_utilizacao: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from BENS_UTILIZACAO order by Sequencia Asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 32
    Top = 144
    object Sds_bens_utilizacaoCOD_CENT_CUSTO: TIntegerField
      DisplayLabel = 'Centro Custo'
      DisplayWidth = 10
      FieldName = 'COD_CENT_CUSTO'
    end
    object Sds_bens_utilizacaoFUNCAO: TStringField
      DisplayLabel = 'Utiliza'#231#227'o'
      DisplayWidth = 50
      FieldName = 'FUNCAO'
      Size = 50
    end
    object Sds_bens_utilizacaoVIDA_UTIL: TIntegerField
      DisplayLabel = 'Vida Util'
      DisplayWidth = 10
      FieldName = 'VIDA_UTIL'
    end
    object Sds_bens_utilizacaoSEQUENCIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQUENCIA'
      Required = True
      Visible = False
    end
    object Sds_bens_utilizacaoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object Sds_ecf: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from SPED_ECF'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 224
    Top = 16
    object Sds_ecfCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 2
    end
    object Sds_ecfECF_CX: TIntegerField
      FieldName = 'ECF_CX'
    end
    object Sds_ecfECF_MOD: TStringField
      FieldName = 'ECF_MOD'
      Size = 30
    end
    object Sds_ecfECF_FAB: TStringField
      FieldName = 'ECF_FAB'
      Size = 30
    end
  end
  object Sds_Red_Z: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from SPED_REDUCAO_Z ORDER BY DT_COD ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ECF_CX'
    MasterFields = 'ECF_CX'
    MasterSource = Dts_Ecf
    PacketRecords = 0
    Params = <>
    Left = 408
    Top = 24
    object Sds_Red_ZECF_CX: TIntegerField
      FieldName = 'ECF_CX'
    end
    object Sds_Red_ZDT_COD: TDateField
      FieldName = 'DT_COD'
    end
    object Sds_Red_ZCRO: TIntegerField
      FieldName = 'CRO'
    end
    object Sds_Red_ZCRZ: TIntegerField
      FieldName = 'CRZ'
    end
    object Sds_Red_ZCOO: TIntegerField
      FieldName = 'COO'
    end
    object Sds_Red_ZGT_FIN: TFMTBCDField
      FieldName = 'GT_FIN'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Red_ZVL_BRT: TFMTBCDField
      FieldName = 'VL_BRT'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object Dts_Ecf: TDataSource
    DataSet = Sds_ecf
    Left = 304
    Top = 24
  end
  object dts_Red_Z: TDataSource
    DataSet = Sds_Red_Z
    Left = 496
    Top = 24
  end
  object SDS_TOTAL_Z: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from SPED_TOTAL_Z'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ECF_CX'
    MasterFields = 'ECF_CX'
    MasterSource = Dts_Ecf
    PacketRecords = 0
    Params = <>
    Left = 224
    Top = 88
    object SDS_TOTAL_ZECF_CX: TIntegerField
      FieldName = 'ECF_CX'
      Required = True
    end
    object SDS_TOTAL_ZTOTALIZADOR_Z: TStringField
      FieldName = 'TOTALIZADOR_Z'
      Required = True
      Size = 7
    end
    object SDS_TOTAL_ZDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object SDS_TOTAL_ZVALOR_TOTALIZADOR: TFMTBCDField
      FieldName = 'VALOR_TOTALIZADOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object SDS_TOTAL_ZN_TOTALIZADOR: TStringField
      FieldName = 'N_TOTALIZADOR'
      Size = 2
    end
    object SDS_TOTAL_ZDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_TOTAL_ZT_SIT_TRIB: TStringField
      FieldName = 'T_SIT_TRIB'
      Size = 6
    end
  end
  object DTS_TOTAL_Z: TDataSource
    DataSet = SDS_TOTAL_Z
    Left = 312
    Top = 88
  end
  object sds_sped_copons: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_SPED_COPONS order by data_pedido asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CRZ'
    MasterFields = 'CRZ'
    MasterSource = dts_Red_Z
    PacketRecords = 0
    Params = <>
    Left = 408
    Top = 152
    object sds_sped_coponsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_sped_coponsDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object sds_sped_coponsNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object sds_sped_coponsCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object sds_sped_coponsSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sds_sped_coponsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sds_sped_coponsTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object sds_sped_coponsN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object sds_sped_coponsN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object sds_sped_coponsVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object sds_sped_coponsNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sds_sped_coponsVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object sds_sped_coponsVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsCANCELADO: TStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
    object sds_sped_coponsCRZ: TIntegerField
      FieldName = 'CRZ'
    end
  end
  object Dts_sped_cupons: TDataSource
    DataSet = sds_sped_copons
    Left = 512
    Top = 152
  end
  object SDS_Sped_cupons_itens: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select *  from V_SPED_CUPONS_ITENS order by data_pedido asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID;CRZ'
    MasterFields = 'CODIGO;CRZ'
    MasterSource = Dts_sped_cupons
    PacketRecords = 0
    Params = <>
    Left = 296
    Top = 216
    object SDS_Sped_cupons_itensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Sped_cupons_itensDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SDS_Sped_cupons_itensCODIGO1: TIntegerField
      FieldName = 'CODIGO1'
      Required = True
    end
    object SDS_Sped_cupons_itensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_Sped_cupons_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object SDS_Sped_cupons_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_Sped_cupons_itensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_Sped_cupons_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_Sped_cupons_itensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_Sped_cupons_itensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object SDS_Sped_cupons_itensQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object SDS_Sped_cupons_itensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object SDS_Sped_cupons_itensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_Sped_cupons_itensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object SDS_Sped_cupons_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_Sped_cupons_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object SDS_Sped_cupons_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_Sped_cupons_itensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Size = 3
    end
    object SDS_Sped_cupons_itensN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object SDS_Sped_cupons_itensN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object SDS_Sped_cupons_itensCOD_UNIDADE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'COD_UNIDADE'
      LookupDataSet = DM.SDS_Unidades
      LookupKeyFields = 'ABREVIATURA'
      LookupResultField = 'CODIGO'
      KeyFields = 'UNIDADE'
      Lookup = True
    end
    object SDS_Sped_cupons_itensCFOP_EST_VENDA: TStringField
      FieldName = 'CFOP_EST_VENDA'
      Size = 4
    end
    object SDS_Sped_cupons_itensCST_VENDA: TStringField
      FieldName = 'CST_VENDA'
      Size = 3
    end
    object SDS_Sped_cupons_itensCRZ: TIntegerField
      FieldName = 'CRZ'
    end
  end
  object Dts_sped_cupons_itens: TDataSource
    DataSet = SDS_Sped_cupons_itens
    Left = 408
    Top = 200
  end
  object sds_sped_nf_ent: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_SPED_NOTAS_FISCAIS ORDER BY CODIGO_NOTA ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 24
    Top = 224
    object sds_sped_nf_entCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object sds_sped_nf_entNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
    end
    object sds_sped_nf_entCFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      Size = 5
    end
    object sds_sped_nf_entDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object sds_sped_nf_entFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object sds_sped_nf_entDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object sds_sped_nf_entTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object sds_sped_nf_entIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object sds_sped_nf_entUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object sds_sped_nf_entDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object sds_sped_nf_entOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object sds_sped_nf_entMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object sds_sped_nf_entANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object sds_sped_nf_entCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 40
    end
    object sds_sped_nf_entPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      Size = 30
    end
    object sds_sped_nf_entBASE_CALCULO_ICMS: TFMTBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entBASE_CALC_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_ICMS_SUBST: TFMTBCDField
      FieldName = 'VALOR_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_OUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'VALOR_OUTRAS_DESPESAS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_TOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_TOTAL_ITENS_NOTA: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITENS_NOTA'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVLR_ICMS_GARANTIDO: TFMTBCDField
      FieldName = 'VLR_ICMS_GARANTIDO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entcod_pagto: TIntegerField
      FieldName = 'cod_pagto'
    end
    object sds_sped_nf_entTP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object sds_sped_nf_entENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Size = 40
    end
    object sds_sped_nf_entEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
    end
    object sds_sped_nf_entCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object sds_sped_nf_entCEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object sds_sped_nf_entBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object sds_sped_nf_entTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
    end
    object sds_sped_nf_entCIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object sds_sped_nf_entUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object sds_sped_nf_entDESC_PAGTO: TStringField
      FieldName = 'DESC_PAGTO'
      Size = 50
    end
    object sds_sped_nf_entVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entpagamento: TStringField
      FieldName = 'pagamento'
      Size = 30
    end
    object sds_sped_nf_entMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object sds_sped_nf_entEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 1
    end
    object sds_sped_nf_entCOD_SPED: TIntegerField
      FieldName = 'COD_SPED'
    end
    object sds_sped_nf_entNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sds_sped_nf_entIE1: TStringField
      FieldName = 'IE1'
      Size = 15
    end
    object sds_sped_nf_entCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sds_sped_nf_entCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      Size = 7
    end
    object sds_sped_nf_entLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object sds_sped_nf_entNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sds_sped_nf_entCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object sds_sped_nf_entBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sds_sped_nf_entSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 11
    end
    object sds_sped_nf_entPAIS: TStringField
      FieldName = 'PAIS'
      Size = 11
    end
    object sds_sped_nf_entCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object sds_sped_nf_entCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object sds_sped_nf_entCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_sped_nf_entTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sds_sped_nf_entTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object sds_sped_nf_entVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_PIS_ST: TFMTBCDField
      FieldName = 'VALOR_PIS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_COFIS_ST: TFMTBCDField
      FieldName = 'VALOR_COFIS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entSUB_SERIE: TStringField
      FieldName = 'SUB_SERIE'
      Size = 10
    end
    object sds_sped_nf_entCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_sped_nf_entSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 15
    end
  end
  object Dts_sped_nf_ent: TDataSource
    DataSet = sds_sped_nf_ent
    Left = 24
    Top = 280
  end
  object Dts_sped_nf_ent_itens: TDataSource
    DataSet = sds_sped_nf_ent_itens
    Left = 112
    Top = 272
  end
  object sds_sped_nf_ent_itens: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_NOTAFISCAIS_ITENS_SPED'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_NOTA'
    MasterFields = 'CODIGO_NOTA'
    MasterSource = Dts_sped_nf_ent
    PacketRecords = 0
    Params = <>
    Left = 112
    Top = 200
    object sds_sped_nf_ent_itensCODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Required = True
    end
    object sds_sped_nf_ent_itensCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object sds_sped_nf_ent_itensCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 13
    end
    object sds_sped_nf_ent_itensCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object sds_sped_nf_ent_itensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sds_sped_nf_ent_itensNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object sds_sped_nf_ent_itensCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_sped_nf_ent_itensCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object sds_sped_nf_ent_itensDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object sds_sped_nf_ent_itensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object sds_sped_nf_ent_itensVALOR_UNI: TFMTBCDField
      FieldName = 'VALOR_UNI'
      Precision = 15
    end
    object sds_sped_nf_ent_itensVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensDATA: TDateField
      FieldName = 'DATA'
    end
    object sds_sped_nf_ent_itensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object sds_sped_nf_ent_itensDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object sds_sped_nf_ent_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object sds_sped_nf_ent_itensQUANT_FRACIONADA: TFMTBCDField
      FieldName = 'QUANT_FRACIONADA'
      Precision = 15
    end
    object sds_sped_nf_ent_itensLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object sds_sped_nf_ent_itensMARG_LUCRO: TFMTBCDField
      FieldName = 'MARG_LUCRO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object sds_sped_nf_ent_itensBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensUNIDADE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'UNIDADE'
      LookupDataSet = DM.SDS_Unidades
      LookupKeyFields = 'ABREVIATURA'
      LookupResultField = 'CODIGO'
      KeyFields = 'DESC_UNIDADE'
      Lookup = True
    end
    object sds_sped_nf_ent_itensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_sped_nf_ent_itensCFOP_EST_COMPRA: TStringField
      FieldName = 'CFOP_EST_COMPRA'
      Size = 4
    end
    object sds_sped_nf_ent_itensCST_COMPRA: TStringField
      FieldName = 'CST_COMPRA'
      Size = 3
    end
    object sds_sped_nf_ent_itensIMOBILZ: TStringField
      FieldName = 'IMOBILZ'
      Size = 1
    end
    object sds_sped_nf_ent_itensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensSIT_PIS_COMPRA: TStringField
      FieldName = 'SIT_PIS_COMPRA'
      Size = 2
    end
    object sds_sped_nf_ent_itensSIT_COFINS_COMPRA: TStringField
      FieldName = 'SIT_COFINS_COMPRA'
      Size = 2
    end
    object sds_sped_nf_ent_itensCST_IPI_ENTRADA: TStringField
      FieldName = 'CST_IPI_ENTRADA'
      Size = 2
    end
    object sds_sped_nf_ent_itensCFOP_INTER_COMPRA: TStringField
      FieldName = 'CFOP_INTER_COMPRA'
      Size = 4
    end
    object sds_sped_nf_ent_itensCST_COMPRA_INTER: TStringField
      FieldName = 'CST_COMPRA_INTER'
      Size = 3
    end
    object sds_sped_nf_ent_itensSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 15
      Size = 2
    end
  end
  object Sds_sped_nfe: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_SPED_NFE_SAIDA order by nr_nota asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 16
    Top = 336
    object Sds_sped_nfeN_SEQUENCIA: TIntegerField
      FieldName = 'N_SEQUENCIA'
      Required = True
    end
    object Sds_sped_nfeCD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
    end
    object Sds_sped_nfeNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object Sds_sped_nfeCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object Sds_sped_nfeFL_IMPRESSO: TStringField
      FieldName = 'FL_IMPRESSO'
      Size = 1
    end
    object Sds_sped_nfeSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object Sds_sped_nfeCD_CFOP: TIntegerField
      FieldName = 'CD_CFOP'
    end
    object Sds_sped_nfeDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object Sds_sped_nfeDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object Sds_sped_nfeVL_ACRESCIMOS: TFMTBCDField
      FieldName = 'VL_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_DESCONTOS: TFMTBCDField
      FieldName = 'VL_DESCONTOS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_MERCADORIAS: TFMTBCDField
      FieldName = 'VL_MERCADORIAS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_SERVICOS: TFMTBCDField
      FieldName = 'VL_SERVICOS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeCOD_PGTO: TIntegerField
      FieldName = 'COD_PGTO'
    end
    object Sds_sped_nfeVL_AVISTA: TFMTBCDField
      FieldName = 'VL_AVISTA'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_PRAZO: TFMTBCDField
      FieldName = 'VL_PRAZO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfePESO_TOTAL: TFMTBCDField
      FieldName = 'PESO_TOTAL'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeQT_PECAS: TFMTBCDField
      FieldName = 'QT_PECAS'
      Precision = 15
    end
    object Sds_sped_nfeCFOP_DESC: TStringField
      FieldName = 'CFOP_DESC'
      Size = 40
    end
    object Sds_sped_nfeCD_TRANSPORTADORA: TIntegerField
      FieldName = 'CD_TRANSPORTADORA'
    end
    object Sds_sped_nfeUF_ORIGEM: TStringField
      FieldName = 'UF_ORIGEM'
      Size = 2
    end
    object Sds_sped_nfeUF_DESTINO: TStringField
      FieldName = 'UF_DESTINO'
      Size = 2
    end
    object Sds_sped_nfePESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_SEGURO: TFMTBCDField
      FieldName = 'VL_SEGURO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeTP_FRETE: TStringField
      FieldName = 'TP_FRETE'
      Size = 1
    end
    object Sds_sped_nfeQT_VOLUMES: TFMTBCDField
      FieldName = 'QT_VOLUMES'
      Precision = 15
    end
    object Sds_sped_nfeESPECIE_VOLUMES: TStringField
      FieldName = 'ESPECIE_VOLUMES'
      Size = 15
    end
    object Sds_sped_nfeMARCA_VOLUMES: TStringField
      FieldName = 'MARCA_VOLUMES'
      Size = 15
    end
    object Sds_sped_nfeNR_VOLUMES: TIntegerField
      FieldName = 'NR_VOLUMES'
    end
    object Sds_sped_nfeCD_TIPOCOBR: TIntegerField
      FieldName = 'CD_TIPOCOBR'
    end
    object Sds_sped_nfeCD_FUNCIONARIO: TIntegerField
      FieldName = 'CD_FUNCIONARIO'
    end
    object Sds_sped_nfeDT_ATZ: TDateField
      FieldName = 'DT_ATZ'
    end
    object Sds_sped_nfePLACA_TRANSP: TStringField
      FieldName = 'PLACA_TRANSP'
      Size = 8
    end
    object Sds_sped_nfeUF_PLACA_TRANSP: TStringField
      FieldName = 'UF_PLACA_TRANSP'
      Size = 2
    end
    object Sds_sped_nfeVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeNR_PEDIDO: TIntegerField
      FieldName = 'NR_PEDIDO'
    end
    object Sds_sped_nfeVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_DESCONTO_ITEM: TFMTBCDField
      FieldName = 'VL_DESCONTO_ITEM'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ISENTO_ITENS: TFMTBCDField
      FieldName = 'VL_ISENTO_ITENS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_OUTROS_ITENS: TFMTBCDField
      FieldName = 'VL_OUTROS_ITENS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeNR_PROTOCOLO_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_NFE'
      Size = 15
    end
    object Sds_sped_nfeDT_PROCESSAMENTO_NFE: TDateField
      FieldName = 'DT_PROCESSAMENTO_NFE'
    end
    object Sds_sped_nfeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object Sds_sped_nfeNR_LOTE_NFE: TStringField
      FieldName = 'NR_LOTE_NFE'
      Size = 15
    end
    object Sds_sped_nfeNR_RECIBO_NFE: TStringField
      FieldName = 'NR_RECIBO_NFE'
      Size = 15
    end
    object Sds_sped_nfeNR_PROTOCOLO_CANC_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_CANC_NFE'
      Size = 15
    end
    object Sds_sped_nfeCHAVE_ACESSO_NFE: TStringField
      FieldName = 'CHAVE_ACESSO_NFE'
      Size = 44
    end
    object Sds_sped_nfeVL_FRETE_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_FRETE_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ST_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ST_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ICM_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ICM_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeBASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'BASE_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeCNPJ_TRANSP: TStringField
      FieldName = 'CNPJ_TRANSP'
      FixedChar = True
    end
    object Sds_sped_nfeNOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Size = 50
    end
    object Sds_sped_nfeIE_TRANSP: TStringField
      FieldName = 'IE_TRANSP'
      Size = 15
    end
    object Sds_sped_nfeEND_TRANSPORTADOR: TStringField
      FieldName = 'END_TRANSPORTADOR'
      Size = 50
    end
    object Sds_sped_nfeCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 40
    end
    object Sds_sped_nfeUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Size = 2
    end
    object Sds_sped_nfeTP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object Sds_sped_nfeN_NOTA_ENTRADA: TStringField
      FieldName = 'N_NOTA_ENTRADA'
    end
    object Sds_sped_nfeIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Size = 15
    end
    object Sds_sped_nfePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object Sds_sped_nfePAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 50
    end
    object Sds_sped_nfeCOD_SPED: TIntegerField
      FieldName = 'COD_SPED'
    end
    object Sds_sped_nfeNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object Sds_sped_nfeIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object Sds_sped_nfeCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object Sds_sped_nfeCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      Size = 7
    end
    object Sds_sped_nfeLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object Sds_sped_nfeNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Sds_sped_nfeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object Sds_sped_nfeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object Sds_sped_nfeSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 11
    end
    object Sds_sped_nfePAIS: TStringField
      FieldName = 'PAIS'
      Size = 11
    end
    object Sds_sped_nfeCOD_CLIENTE1: TIntegerField
      FieldName = 'COD_CLIENTE1'
    end
    object Sds_sped_nfeCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object Sds_sped_nfeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_sped_nfeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Sds_sped_nfeSTATUS_INUTILIZADO: TStringField
      FieldName = 'STATUS_INUTILIZADO'
      Size = 1
    end
    object Sds_sped_nfeSTATUS_CANCELADO: TStringField
      FieldName = 'STATUS_CANCELADO'
      Size = 1
    end
    object Sds_sped_nfeSTATUS_EMAIL: TStringField
      FieldName = 'STATUS_EMAIL'
      Size = 1
    end
    object Sds_sped_nfeDEPEC: TStringField
      FieldName = 'DEPEC'
      Size = 1
    end
    object Sds_sped_nfeCHAVE2: TStringField
      FieldName = 'CHAVE2'
      Size = 50
    end
    object Sds_sped_nfeSTATUS_RETORNO: TStringField
      FieldName = 'STATUS_RETORNO'
      Size = 1
    end
    object Sds_sped_nfeJUSTIFICATIVA_CANCEL_INUTIL: TStringField
      FieldName = 'JUSTIFICATIVA_CANCEL_INUTIL'
      Size = 255
    end
  end
  object Dts_sped_nfe: TDataSource
    DataSet = Sds_sped_nfe
    Left = 16
    Top = 392
  end
  object Dts_sped_nfe_itens: TDataSource
    DataSet = sds_sped_nfe_itens
    Left = 112
    Top = 392
  end
  object sds_sped_nfe_itens: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_SPED_NFE_ITENS_SAIDA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'NR_NOTA'
    MasterFields = 'NR_NOTA'
    MasterSource = Dts_sped_nfe
    PacketRecords = 0
    Params = <>
    Left = 112
    Top = 336
    object sds_sped_nfe_itensNR_SEQUENCIA: TIntegerField
      FieldName = 'NR_SEQUENCIA'
      Required = True
    end
    object sds_sped_nfe_itensNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object sds_sped_nfe_itensCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
    end
    object sds_sped_nfe_itensCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Size = 15
    end
    object sds_sped_nfe_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 11
    end
    object sds_sped_nfe_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object sds_sped_nfe_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object sds_sped_nfe_itensQT_PRODUTO: TFMTBCDField
      FieldName = 'QT_PRODUTO'
      Precision = 15
    end
    object sds_sped_nfe_itensVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object sds_sped_nfe_itensPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sds_sped_nfe_itensCD_ATUALIZACAO: TIntegerField
      FieldName = 'CD_ATUALIZACAO'
    end
    object sds_sped_nfe_itensCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_sped_nfe_itensPC_RED_BASE_ICM: TFMTBCDField
      FieldName = 'PC_RED_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_ICM_SUBST: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensDT_ALTERACAO: TDateField
      FieldName = 'DT_ALTERACAO'
    end
    object sds_sped_nfe_itensDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 3
    end
    object sds_sped_nfe_itensPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensCD_CONTA: TIntegerField
      FieldName = 'CD_CONTA'
    end
    object sds_sped_nfe_itensCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object sds_sped_nfe_itensVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_CONTABIL: TFMTBCDField
      FieldName = 'VL_CONTABIL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ISENTO: TFMTBCDField
      FieldName = 'VL_ISENTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_PIS: TFMTBCDField
      FieldName = 'ALIQ_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_COFINS: TFMTBCDField
      FieldName = 'ALIQ_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'ALIQ_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object sds_sped_nfe_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object sds_sped_nfe_itensUNIDADE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'UNIDADE'
      LookupDataSet = DM.SDS_Unidades
      LookupKeyFields = 'ABREVIATURA'
      LookupResultField = 'CODIGO'
      KeyFields = 'DESC_UNIDADE'
      Lookup = True
    end
    object sds_sped_nfe_itensCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object sds_sped_nfe_itensSIT_PIS_VENDA_EST: TStringField
      FieldName = 'SIT_PIS_VENDA_EST'
      Size = 2
    end
    object sds_sped_nfe_itensSIT_COFINS_VENDA_EST: TStringField
      FieldName = 'SIT_COFINS_VENDA_EST'
      Size = 2
    end
    object sds_sped_nfe_itensSIT_PIS_VENDA_INTER_EST: TStringField
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Size = 2
    end
    object sds_sped_nfe_itensSIT_COFINS_VENDA_INTER_EST: TStringField
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Size = 2
    end
    object sds_sped_nfe_itensCFOP_INTER_VENDA: TStringField
      FieldName = 'CFOP_INTER_VENDA'
      Size = 4
    end
    object sds_sped_nfe_itensCST_VENDA_INTER: TStringField
      FieldName = 'CST_VENDA_INTER'
      Size = 3
    end
    object sds_sped_nfe_itensCST_IPI_SAIDA: TStringField
      FieldName = 'CST_IPI_SAIDA'
      Size = 2
    end
  end
  object sds_sped_nf_ent_itens_anal: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select *  from V_NOTAS_ITENS_SPED_C190'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_NOTA'
    MasterFields = 'CODIGO_NOTA'
    MasterSource = Dts_sped_nf_ent
    PacketRecords = 0
    Params = <>
    Left = 208
    Top = 232
    object sds_sped_nf_ent_itens_analCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
    end
    object sds_sped_nf_ent_itens_analTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object sds_sped_nf_ent_itens_analCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_sped_nf_ent_itens_analSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analVALOR_OUTRAS: TFMTBCDField
      FieldName = 'VALOR_OUTRAS'
      Precision = 15
      Size = 2
    end
  end
  object Dts_sped_nf_ent_itens_anal: TDataSource
    DataSet = sds_sped_nf_ent_itens_anal
    Left = 208
    Top = 288
  end
  object sds_sped_nfe_itens_anal: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select *  from V_NFE_ITENS_SPED_C190'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'NR_NOTA'
    MasterFields = 'NR_NOTA'
    MasterSource = Dts_sped_nfe
    PacketRecords = 0
    Params = <>
    Left = 208
    Top = 352
    object sds_sped_nfe_itens_analNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object sds_sped_nfe_itens_analCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_sped_nfe_itens_analCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object sds_sped_nfe_itens_analVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analALIC_ICM_SUBST: TFMTBCDField
      FieldName = 'ALIC_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analVALOR_ICM_SUBST: TFMTBCDField
      FieldName = 'VALOR_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Precision = 15
      Size = 2
    end
  end
  object DTs_sped_nfe_itens_anal: TDataSource
    DataSet = sds_sped_nfe_itens_anal
    Left = 208
    Top = 408
  end
  object Sds_Total_z_1: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from SPED_TOTAL_Z'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ECF_CX;DATA'
    MasterFields = 'ECF_CX;DT_COD'
    MasterSource = dts_Red_Z
    PacketRecords = 0
    Params = <>
    Left = 408
    Top = 96
    object Sds_Total_z_1ECF_CX: TIntegerField
      FieldName = 'ECF_CX'
      Required = True
    end
    object Sds_Total_z_1TOTALIZADOR_Z: TStringField
      FieldName = 'TOTALIZADOR_Z'
      Required = True
      Size = 7
    end
    object Sds_Total_z_1DATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object Sds_Total_z_1VALOR_TOTALIZADOR: TFMTBCDField
      FieldName = 'VALOR_TOTALIZADOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_Total_z_1N_TOTALIZADOR: TStringField
      FieldName = 'N_TOTALIZADOR'
      Size = 2
    end
    object Sds_Total_z_1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Sds_Total_z_1T_SIT_TRIB: TStringField
      FieldName = 'T_SIT_TRIB'
      Size = 6
    end
  end
  object DTS_Total_z_1: TDataSource
    DataSet = Sds_Total_z_1
    Left = 488
    Top = 96
  end
  object Dts_inventario: TDataSource
    DataSet = Sds_inventario
    Left = 400
    Top = 272
  end
  object Sds_inventario: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from SPED_INVENTARIO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 296
    Top = 280
    object Sds_inventarioID_INV: TIntegerField
      FieldName = 'ID_INV'
      Required = True
    end
    object Sds_inventarioDT_INV: TDateField
      FieldName = 'DT_INV'
      Required = True
    end
    object Sds_inventarioDT_REG: TDateField
      FieldName = 'DT_REG'
      Required = True
    end
    object Sds_inventarioVL_INV: TFMTBCDField
      FieldName = 'VL_INV'
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object Dts_inventario_itens: TDataSource
    DataSet = Sds_Inventario_itens
    Left = 400
    Top = 328
  end
  object Sds_Inventario_itens: TSimpleDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSet.CommandText = 'select * from SPED_INVENTARIO_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ID_INV'
    MasterFields = 'ID_INV'
    MasterSource = Dts_inventario
    PacketRecords = 0
    Params = <>
    Left = 328
    Top = 336
    object Sds_Inventario_itensSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object Sds_Inventario_itensID_INV: TIntegerField
      FieldName = 'ID_INV'
      Required = True
    end
    object Sds_Inventario_itensCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Required = True
    end
    object Sds_Inventario_itensUND_ITEN: TStringField
      FieldName = 'UND_ITEN'
      Required = True
      Size = 1
    end
    object Sds_Inventario_itensVLR_UNIT: TFMTBCDField
      FieldName = 'VLR_UNIT'
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Inventario_itensVL_ITEM_TOTAL: TFMTBCDField
      FieldName = 'VL_ITEM_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Inventario_itensTXT_COMPLEN: TStringField
      FieldName = 'TXT_COMPLEN'
      Size = 50
    end
    object Sds_Inventario_itensCOD_CONTA: TStringField
      FieldName = 'COD_CONTA'
      FixedChar = True
      Size = 10
    end
    object Sds_Inventario_itensQTD_ITEN: TFMTBCDField
      FieldName = 'QTD_ITEN'
      Precision = 15
      Size = 3
    end
    object Sds_Inventario_itensCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Size = 13
    end
  end
  object SDS_V_INVENTARIO: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_SPED_INVENTARIO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 296
    Top = 392
    object SDS_V_INVENTARIOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_V_INVENTARIODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_V_INVENTARIOPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
    object SDS_V_INVENTARIOUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object SDS_V_INVENTARIOPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
      Size = 2
    end
    object SDS_V_INVENTARIOESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
    object SDS_V_INVENTARIOVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Precision = 15
      Size = 6
    end
    object SDS_V_INVENTARIOVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Precision = 15
      Size = 6
    end
    object SDS_V_INVENTARIOVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 15
      Size = 6
    end
    object SDS_V_INVENTARIOCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      FixedChar = True
      Size = 13
    end
  end
  object Dts_v_inventario: TDataSource
    DataSet = SDS_V_INVENTARIO
    Left = 400
    Top = 392
  end
  object DTS_PRODUTOS: TDataSource
    DataSet = SDS_PRODUTOS
    Left = 312
    Top = 152
  end
  object SDS_PRODUTOS: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT '#13#10'  V_SPED_PRODUTOS.*,'#13#10'  UNIDADES.ABREVIATURA'#13#10'FROM'#13#10' V_' +
      'SPED_PRODUTOS'#13#10' INNER JOIN UNIDADES ON (V_SPED_PRODUTOS.UNIDADE=' +
      'UNIDADES.CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 224
    Top = 152
    object SDS_PRODUTOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_PRODUTOSCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Size = 13
    end
    object SDS_PRODUTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_PRODUTOSUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object SDS_PRODUTOSTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object SDS_PRODUTOSCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 8
    end
    object SDS_PRODUTOSMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object SDS_PRODUTOSANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object SDS_PRODUTOSABREVIATURA: TStringField
      FieldName = 'ABREVIATURA'
      Size = 6
    end
    object SDS_PRODUTOSCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
  end
  object DTS_Sped_cupons_itens_B: TDataSource
    DataSet = SDS_Sped_cupons_itens_B
    Left = 504
    Top = 264
  end
  object SDS_Sped_cupons_itens_B: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select *   from V_SPED_ITENS_C425 order by data_pedido asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'DATA_PEDIDO;SIT_TRIBUTARIA'
    MasterFields = 'DATA;T_SIT_TRIB'
    MasterSource = DTS_Total_z_1
    PacketRecords = 0
    Params = <>
    Left = 504
    Top = 208
    object SDS_Sped_cupons_itens_BDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SDS_Sped_cupons_itens_BCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_Sped_cupons_itens_BCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_Sped_cupons_itens_BQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
    end
    object SDS_Sped_cupons_itens_BTOTAL_ITEN: TFMTBCDField
      FieldName = 'TOTAL_ITEN'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itens_BVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itens_BVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itens_BSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_Sped_cupons_itens_BCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
  end
  object Sds_pis_Cofins: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_SPED_TOTAL_PIS_COFINS order By DATA_PEDIDO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'DATA_PEDIDO'
    MasterFields = 'DATA'
    MasterSource = DTS_Total_z_1
    PacketRecords = 0
    Params = <>
    Left = 296
    Top = 440
    object Sds_pis_CofinsDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object Sds_pis_CofinsVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object Sds_pis_CofinsVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
  end
  object Dts_pis_Cofins: TDataSource
    DataSet = Sds_pis_Cofins
    Left = 320
    Top = 496
  end
  object SDS_C490: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_SPED_C490 ORDER By CRZ ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CRZ'
    MasterFields = 'CRZ'
    MasterSource = dts_Red_Z
    PacketRecords = 0
    Params = <>
    Left = 400
    Top = 448
    object SDS_C490VALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_C490SIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_C490PERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_C490BASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_C490VALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_C490CFOP_EST_VENDA: TStringField
      FieldName = 'CFOP_EST_VENDA'
      Size = 4
    end
    object SDS_C490CST_VENDA: TStringField
      FieldName = 'CST_VENDA'
      Size = 3
    end
    object SDS_C490VALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object SDS_C490CRZ: TIntegerField
      FieldName = 'CRZ'
    end
    object SDS_C490ECF: TStringField
      FieldName = 'ECF'
      Size = 5
    end
  end
  object DTS_C490: TDataSource
    DataSet = SDS_C490
    Left = 400
    Top = 504
  end
  object Dts_Afericao: TDataSource
    DataSet = Sds_Afericao
    Left = 88
    Top = 496
  end
  object Sds_Afericao: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from AFERICAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 16
    Top = 504
    object Sds_AfericaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_AfericaoDATA: TDateField
      FieldName = 'DATA'
    end
    object Sds_AfericaoCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object Sds_AfericaoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object Sds_AfericaoVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Precision = 15
      Size = 2
    end
    object Sds_AfericaoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object Sds_AfericaoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_AfericaoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object ProxCod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(codigo) as N_CODIGO FROM AFERICAO')
    SQLConnection = DM.SQLC
    Left = 16
    Top = 440
    object ProxCodN_CODIGO: TIntegerField
      FieldName = 'N_CODIGO'
    end
  end
  object DTS_BuscaAfericao: TDataSource
    DataSet = QBuscaAfericao
    Left = 96
    Top = 552
  end
  object QBuscaAfericao: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT A.*, P.DESCRICAO, P.CODIGO_BARRAS, p.Preco_venda, p.preco' +
      '_venda2, p.Preco_custo'#13#10'FROM afericao A'#13#10'INNER JOIN PRODUTOS P'#13#10 +
      'ON (A.CODIGO_PROD = P.CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 24
    Top = 560
    object QBuscaAfericaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QBuscaAfericaoDATA: TDateField
      FieldName = 'DATA'
    end
    object QBuscaAfericaoCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object QBuscaAfericaoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object QBuscaAfericaoVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBuscaAfericaoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBuscaAfericaoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object QBuscaAfericaoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object QBuscaAfericaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object QBuscaAfericaoCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object QBuscaAfericaoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBuscaAfericaoPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBuscaAfericaoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object Sds_valeTroco: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from VALETROCO order by data asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 184
    Top = 512
    object Sds_valeTrocoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object Sds_valeTrocoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_valeTrocoDATA: TDateField
      FieldName = 'DATA'
    end
    object Sds_valeTrocoHORA: TTimeField
      FieldName = 'HORA'
    end
    object Sds_valeTrocoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object Sds_valeTrocoDEBITOCREDITO: TStringField
      FieldName = 'DEBITOCREDITO'
      FixedChar = True
      Size = 1
    end
    object Sds_valeTrocoTOTAL_VENDA: TFMTBCDField
      FieldName = 'TOTAL_VENDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_valeTrocoTOTAL_PAGO: TFMTBCDField
      FieldName = 'TOTAL_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_valeTrocoVALOR_UTILIZADO: TFMTBCDField
      FieldName = 'VALOR_UTILIZADO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_valeTrocoVALOR_VALETROCO: TFMTBCDField
      FieldName = 'VALOR_VALETROCO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_valeTrocoVALIDO: TStringField
      FieldName = 'VALIDO'
      FixedChar = True
      Size = 1
    end
    object Sds_valeTrocoSALDO_ATUAL: TFMTBCDField
      FieldName = 'SALDO_ATUAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_valeTrocoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Sds_valeTrocoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_valeTrocoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Sds_valeTrocoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object Sds_valeTrocoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Sds_valeTrocoCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 48
    end
    object Sds_valeTrocoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object Sds_valeTrocoDATA_PAGTO: TDateField
      FieldName = 'DATA_PAGTO'
    end
    object Sds_valeTrocoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 70
    end
    object Sds_valeTrocoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
    end
  end
  object dts_vale_troco: TDataSource
    DataSet = Sds_valeTroco
    Left = 272
    Top = 496
  end
  object QConsValeTroco: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      
        'SELECT V.*, C.NOME_RS, C.CPF_CNPJ, C.ENDERECO, C.NUMERO, C.BAIRR' +
        'O, C.RG_IE, C.APELIDO, C.CIDADE, C.UF'
      'FROM  VALETROCO V'
      'INNER JOIN clientes C'
      'ON (V.COD_CLIENTE = C.CODIGO)')
    Left = 184
    Top = 560
    object QConsValeTrocoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object QConsValeTrocoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConsValeTrocoCUPOM: TStringField
      FieldName = 'CUPOM'
      Origin = 'CUPOM'
      Size = 48
    end
    object QConsValeTrocoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object QConsValeTrocoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object QConsValeTrocoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object QConsValeTrocoDEBITOCREDITO: TStringField
      FieldName = 'DEBITOCREDITO'
      Origin = 'DEBITOCREDITO'
      FixedChar = True
      Size = 1
    end
    object QConsValeTrocoTOTAL_VENDA: TFMTBCDField
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoTOTAL_PAGO: TFMTBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = 'TOTAL_PAGO'
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoVALOR_UTILIZADO: TFMTBCDField
      FieldName = 'VALOR_UTILIZADO'
      Origin = 'VALOR_UTILIZADO'
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoVALOR_VALETROCO: TFMTBCDField
      FieldName = 'VALOR_VALETROCO'
      Origin = 'VALOR_VALETROCO'
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoVALIDO: TStringField
      FieldName = 'VALIDO'
      Origin = 'VALIDO'
      FixedChar = True
      Size = 1
    end
    object QConsValeTrocoSALDO_ATUAL: TFMTBCDField
      FieldName = 'SALDO_ATUAL'
      Origin = 'SALDO_ATUAL'
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 70
    end
    object QConsValeTrocoUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object QConsValeTrocoDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object QConsValeTrocoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = 'COD_VENDA'
    end
    object QConsValeTrocoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object QConsValeTrocoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object QConsValeTrocoDATA_PAGTO: TDateField
      FieldName = 'DATA_PAGTO'
      Origin = 'DATA_PAGTO'
    end
    object QConsValeTrocoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 70
    end
    object QConsValeTrocoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      Origin = 'COD_VEICULO'
    end
    object QConsValeTrocoNOME_RS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QConsValeTrocoCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object QConsValeTrocoENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object QConsValeTrocoNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QConsValeTrocoBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QConsValeTrocoRG_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
    end
    object QConsValeTrocoAPELIDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QConsValeTrocoCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QConsValeTrocoUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
  end
  object DtsConsValeTroco: TDataSource
    AutoEdit = False
    DataSet = QConsValeTroco
    Left = 256
    Top = 560
  end
  object dts_valetroco_pagto: TDataSource
    DataSet = sds_valeTroco_pagto
    Left = 408
    Top = 563
  end
  object sds_valeTroco_pagto: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from VALE_TROCO_PAGTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 336
    Top = 547
    object sds_valeTroco_pagtoCOD_VALE: TIntegerField
      FieldName = 'COD_VALE'
      Required = True
    end
    object sds_valeTroco_pagtoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object sds_valeTroco_pagtoSALDO_ANTERIOR: TFMTBCDField
      FieldName = 'SALDO_ANTERIOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_valeTroco_pagtoVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_valeTroco_pagtoSALDO_ATUAL: TFMTBCDField
      FieldName = 'SALDO_ATUAL'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTS_Unidades: TDataSource
    DataSet = SDS_Unidades
    Left = 568
    Top = 93
  end
  object Hospede: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'Select * From clientes')
    Left = 760
    Top = 48
    object HospedeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object HospedeNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      Required = True
      Size = 70
    end
    object HospedeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object HospedeCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object HospedeUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object HospedeCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object HospedeTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object HospedeTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      Size = 15
    end
    object HospedeEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object HospedeNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
      Origin = 'NASCIMENTO_IA'
    end
    object HospedeSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 15
    end
    object HospedeFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Origin = 'FOTO_LOGOMARCA'
    end
    object HospedeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object HospedeRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      FixedChar = True
    end
    object HospedeFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object HospedeCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object HospedeUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object HospedeDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object HospedeCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object HospedeOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object HospedeCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Origin = 'CREDIARIO'
      Size = 3
    end
    object HospedeESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
      Size = 10
    end
    object HospedeRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Origin = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object HospedePAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 70
    end
    object HospedeMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 70
    end
    object HospedeNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Origin = 'NOME_CONJUGE'
      Size = 70
    end
    object HospedeCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      Origin = 'CPF_CONJUGE'
      FixedChar = True
      Size = 18
    end
    object HospedeNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
      Origin = 'NASCIMENTO_CONJUGE'
    end
    object HospedeTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Origin = 'TRABALHO_CONJUGE'
      Size = 70
    end
    object HospedePROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Origin = 'PROFISSAO_CONJUGE'
      Size = 70
    end
    object HospedeLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Origin = 'LOCALTRABALHO'
      Size = 70
    end
    object HospedePROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Origin = 'PROFISSAO_RA'
      Size = 70
    end
    object HospedeTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Origin = 'TELEFONE_TRABALHO'
      Size = 16
    end
    object HospedeFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Origin = 'FAX_TRABALHO'
      Size = 15
    end
    object HospedeOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Origin = 'OBSERVACOES_TRABALHO'
    end
    object HospedeBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 70
    end
    object HospedeNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Origin = 'NOME_AGENCIA'
      Size = 70
    end
    object HospedeNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Origin = 'NUMERO_AGENCIA'
      Size = 10
    end
    object HospedeCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
      Origin = 'CONTA_CORRENTE'
    end
    object HospedeNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Origin = 'NOME1_REFERENCIA'
      Size = 70
    end
    object HospedeNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Origin = 'NOME2_REFERENCIA'
      Size = 70
    end
    object HospedeTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Origin = 'TELEFONE1_REFERENCIA'
      Size = 16
    end
    object HospedeTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Origin = 'TELEFONE2_REFERENCIA'
      Size = 16
    end
    object HospedeBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Origin = 'BANCO_REFERENCIA'
      Size = 70
    end
    object HospedeAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      Size = 30
    end
    object HospedeTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object HospedeOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Origin = 'OBSERVACOES_COMERCIAIS'
    end
    object HospedeOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Origin = 'OBSERVACOES_BANCO'
    end
    object HospedePG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      Origin = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object HospedePG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      Origin = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object HospedePG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      Origin = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object HospedeREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Origin = 'REMUNERACAO'
      Precision = 18
      Size = 2
    end
    object HospedeNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object HospedeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object HospedeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object HospedeORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'ORGAO_EMISSOR'
      Size = 10
    end
    object HospedeDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
      Origin = 'DATA_EMISSAO_RG'
    end
    object HospedeNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 40
    end
    object HospedeNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Origin = 'NATURALIDADE_UF'
      Size = 2
    end
    object HospedeCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object HospedeCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = 'COD_BAIRRO'
    end
    object HospedeDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object HospedeCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
      Origin = 'COD_ZONA'
    end
    object HospedePONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = 'PONTO_REFERENCIA'
      Size = 200
    end
    object HospedeATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object HospedeCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Origin = 'CONTATO1'
      Size = 60
    end
    object HospedeCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Origin = 'CONTATO2'
      Size = 60
    end
    object HospedeCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Origin = 'CX_POSTAL'
      Size = 10
    end
    object HospedeVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Origin = 'VALOR_ALUGUEL'
      Precision = 18
      Size = 2
    end
    object HospedeTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Origin = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object HospedeNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
      Origin = 'NUMERO_DEPENDENTES'
    end
    object HospedeENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Origin = 'ENDERECO_REFERENCIA1'
      Size = 44
    end
    object HospedeENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Origin = 'ENDERECO_REFERENCIA2'
      Size = 44
    end
    object HospedeDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
      Origin = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object HospedeDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
      Origin = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object HospedeRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Origin = 'RG_CONJUGUE'
    end
    object HospedeRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Origin = 'RENDA_CONJUGUE'
      Precision = 18
      Size = 2
    end
    object HospedeDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
      Origin = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object HospedeFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Origin = 'FONE_CONJUGUE'
      Size = 15
    end
    object HospedeENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Origin = 'ENDERECO_COBRANCA'
      Size = 44
    end
    object HospedeCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      Origin = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object HospedeCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
      Origin = 'COD_CIDADE_COBRANCA'
    end
    object HospedeCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      Origin = 'CX_POSTAL_COBRANCA'
      FixedChar = True
    end
    object HospedeLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Origin = 'LIMITE_DE_CREDITO'
      Precision = 18
      Size = 2
    end
    object HospedeINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Origin = 'INSC_MUNICIPAL'
    end
    object HospedePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'PRODUTOR_RURAL'
      Size = 1
    end
    object HospedeINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Origin = 'INSC_PRODUTOR_RURAL'
    end
    object HospedeCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
      Origin = 'COD_BAIRRO_COBRANCA'
    end
    object HospedeCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Origin = 'CIDADE_COBRANCA'
      Size = 40
    end
    object HospedeBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Origin = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object HospedeUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Origin = 'UF_COBRANCA'
      Size = 2
    end
    object HospedeCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
      Origin = 'CONTA_BANCARIA'
    end
    object HospedeNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = 'NOME_PROPRIEDADE'
      Size = 70
    end
    object HospedeNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Origin = 'NOME_VETERINARIO'
      Size = 70
    end
    object HospedeSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Origin = 'SOCIO1'
      Size = 40
    end
    object HospedeCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Origin = 'CPFSOCIO1'
      Size = 11
    end
    object HospedeDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
      Origin = 'DATANASCSOCIO1'
    end
    object HospedeSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Origin = 'SOCIO2'
      Size = 40
    end
    object HospedeCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Origin = 'CPFSOCIO2'
      Size = 11
    end
    object HospedeDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
      Origin = 'DATANASCSOCIO2'
    end
    object HospedeSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Origin = 'SOCIO3'
      Size = 40
    end
    object HospedeCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Origin = 'CPFSOCIO3'
      Size = 11
    end
    object HospedeDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
      Origin = 'DATANASCSOCIO3'
    end
    object HospedeSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Origin = 'SOCIO4'
      Size = 40
    end
    object HospedeCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Origin = 'CPFSOCIO4'
      Size = 11
    end
    object HospedeDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
      Origin = 'DATANASCSOCIO4'
    end
    object HospedeDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
      Origin = 'DATAFUNDACAO'
    end
    object HospedeCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'CAPITALSOCIAL'
      Precision = 18
      Size = 2
    end
    object HospedeFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Origin = 'FATURAMENTOBRUTO'
      Precision = 18
      Size = 2
    end
    object HospedeREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Origin = 'REGJUNTACOM'
      Size = 12
    end
    object HospedeENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Origin = 'ENDSOCIO1'
      Size = 40
    end
    object HospedeRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
      Origin = 'RGSOCIO1'
    end
    object HospedeENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Origin = 'ENDSOCIO2'
      Size = 40
    end
    object HospedeRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
      Origin = 'RGSOCIO2'
    end
    object HospedeENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Origin = 'ENDSOCIO3'
      Size = 40
    end
    object HospedeRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
      Origin = 'RGSOCIO3'
    end
    object HospedeENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Origin = 'ENDSOCIO4'
      Size = 40
    end
    object HospedeRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
      Origin = 'RGSOCIO4'
    end
    object HospedeAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Origin = 'AUTORIZADO1'
      Size = 70
    end
    object HospedeAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Origin = 'AUTORIZADO2'
      Size = 70
    end
    object HospedeAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Origin = 'AUTORIZADO3'
      Size = 70
    end
    object HospedeCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      Origin = 'CPF_AUT1'
      FixedChar = True
      Size = 18
    end
    object HospedeCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      Origin = 'CPF_AUT2'
      FixedChar = True
      Size = 18
    end
    object HospedeCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      Origin = 'CPF_AUT3'
      FixedChar = True
      Size = 18
    end
    object HospedeFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Size = 1
    end
    object HospedeCTPS: TStringField
      FieldName = 'CTPS'
      Origin = 'CTPS'
      Size = 15
    end
    object HospedeTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Origin = 'TESTA_CREDITO'
      Size = 1
    end
    object HospedeTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Origin = 'TESTA_LIMITE'
      Size = 1
    end
    object HospedeCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
      Origin = 'COD_CONV'
    end
    object HospedeFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 80
    end
    object HospedeDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'DATA_ULTIMA_COMPRA'
    end
    object HospedeFUNC_SALARIO: TFMTBCDField
      FieldName = 'FUNC_SALARIO'
      Origin = 'FUNC_SALARIO'
      Precision = 18
      Size = 2
    end
    object HospedeFUNC_DATA_ADMISSAO: TDateField
      FieldName = 'FUNC_DATA_ADMISSAO'
      Origin = 'FUNC_DATA_ADMISSAO'
    end
    object HospedeFUNC_SITUACAO: TStringField
      FieldName = 'FUNC_SITUACAO'
      Origin = 'FUNC_SITUACAO'
      Size = 1
    end
    object HospedeFUNC_DEMISSAO: TDateField
      FieldName = 'FUNC_DEMISSAO'
      Origin = 'FUNC_DEMISSAO'
    end
    object HospedeFUNC_CARGO: TStringField
      FieldName = 'FUNC_CARGO'
      Origin = 'FUNC_CARGO'
      Size = 30
    end
    object HospedeDOCUMENTOS: TBlobField
      FieldName = 'DOCUMENTOS'
      Origin = 'DOCUMENTOS'
    end
    object HospedeIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      FixedChar = True
    end
    object HospedePARENTESCO_AUT1: TStringField
      FieldName = 'PARENTESCO_AUT1'
      Origin = 'PARENTESCO_AUT1'
      Size = 100
    end
    object HospedePARENTESCO_AUT2: TStringField
      FieldName = 'PARENTESCO_AUT2'
      Origin = 'PARENTESCO_AUT2'
      Size = 100
    end
    object HospedePARENTESCO_AUT3: TStringField
      FieldName = 'PARENTESCO_AUT3'
      Origin = 'PARENTESCO_AUT3'
      Size = 100
    end
    object HospedePOSSUE_LAUDO: TStringField
      FieldName = 'POSSUE_LAUDO'
      Origin = 'POSSUE_LAUDO'
      FixedChar = True
      Size = 1
    end
    object HospedeVENCIMENTO_LAUDO: TDateField
      FieldName = 'VENCIMENTO_LAUDO'
      Origin = 'VENCIMENTO_LAUDO'
    end
  end
  object Apartamento23: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'SELECT DISTINCT '
      '  APARTAMENTO.APA_CODAPARTAMENTO,'
      '  APARTAMENTO.APA_APARTAMENTO,'
      '  APARTAMENTO.APA_SITUACAO,'
      '  APARTAMENTO.APA_CODENTRADA,'
      '  APARTAMENTO.APA_CODCATEGORIA,'
      '  HOTEL_RESERVA.RES_CODAPARTAMENTO'
      'FROM'
      ' APARTAMENTO'
      
        ' LEFT OUTER JOIN HOTEL_RESERVA ON (APARTAMENTO.APA_CODAPARTAMENT' +
        'O=HOTEL_RESERVA.RES_CODAPARTAMENTO)')
    Left = 768
    Top = 104
    object Apartamento23APA_CODAPARTAMENTO: TStringField
      FieldName = 'APA_CODAPARTAMENTO'
      Origin = 'APA_CODAPARTAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object Apartamento23APA_APARTAMENTO: TStringField
      FieldName = 'APA_APARTAMENTO'
      Origin = 'APA_APARTAMENTO'
      Required = True
      Size = 30
    end
    object Apartamento23APA_SITUACAO: TStringField
      FieldName = 'APA_SITUACAO'
      Origin = 'APA_SITUACAO'
      Required = True
      Size = 10
    end
    object Apartamento23APA_CODENTRADA: TStringField
      FieldName = 'APA_CODENTRADA'
      Origin = 'APA_CODENTRADA'
      FixedChar = True
      Size = 6
    end
    object Apartamento23APA_CODCATEGORIA: TStringField
      FieldName = 'APA_CODCATEGORIA'
      Origin = 'APA_CODCATEGORIA'
      FixedChar = True
      Size = 6
    end
    object Apartamento23RES_CODAPARTAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RES_CODAPARTAMENTO'
      Origin = 'RES_CODAPARTAMENTO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
  end
  object Ligacao: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'Select * From Ligacao')
    Left = 824
    Top = 48
    object LigacaoLIG_CONTROLE: TIntegerField
      FieldName = 'LIG_CONTROLE'
      Origin = 'LIG_CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LigacaoLIG_CODENTRADA: TStringField
      FieldName = 'LIG_CODENTRADA'
      Origin = 'LIG_CODENTRADA'
      Required = True
      FixedChar = True
      Size = 6
    end
    object LigacaoLIG_DATALIGACAO: TDateField
      FieldName = 'LIG_DATALIGACAO'
      Origin = 'LIG_DATALIGACAO'
    end
    object LigacaoLIG_HORALIGACAO: TTimeField
      FieldName = 'LIG_HORALIGACAO'
      Origin = 'LIG_HORALIGACAO'
    end
    object LigacaoLIG_NUMCHAMADO: TStringField
      FieldName = 'LIG_NUMCHAMADO'
      Origin = 'LIG_NUMCHAMADO'
      Size = 30
    end
    object LigacaoLIG_MINFALADO: TFMTBCDField
      FieldName = 'LIG_MINFALADO'
      Origin = 'LIG_MINFALADO'
      Required = True
      Precision = 18
      Size = 2
    end
    object LigacaoLIG_MINVALOR: TFMTBCDField
      FieldName = 'LIG_MINVALOR'
      Origin = 'LIG_MINVALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object LigacaoLIG_TOTAL: TBCDField
      FieldName = 'LIG_TOTAL'
      Origin = 'LIG_TOTAL'
      Precision = 18
    end
  end
  object Bar: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'Select * From Bar, Produtos')
    Left = 824
    Top = 104
    object BarBAR_CONTROLE: TIntegerField
      FieldName = 'BAR_CONTROLE'
      Origin = 'BAR_CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BarBAR_CODENTRADA: TStringField
      FieldName = 'BAR_CODENTRADA'
      Origin = 'BAR_CODENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object BarBAR_CODPRODUTO: TIntegerField
      FieldName = 'BAR_CODPRODUTO'
      Origin = 'BAR_CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BarBAR_COMANDA: TStringField
      FieldName = 'BAR_COMANDA'
      Origin = 'BAR_COMANDA'
      Size = 30
    end
    object BarBAR_DATA: TDateField
      FieldName = 'BAR_DATA'
      Origin = 'BAR_DATA'
      Required = True
    end
    object BarBAR_QUANTIDADE: TFMTBCDField
      FieldName = 'BAR_QUANTIDADE'
      Origin = 'BAR_QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
    object BarBAR_VALORUNITARIO: TFMTBCDField
      FieldName = 'BAR_VALORUNITARIO'
      Origin = 'BAR_VALORUNITARIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object BarBAR_VALORTOTAL: TBCDField
      FieldName = 'BAR_VALORTOTAL'
      Origin = 'BAR_VALORTOTAL'
      Precision = 18
    end
    object BarBAR_EMPRESA: TIntegerField
      FieldName = 'BAR_EMPRESA'
      Origin = 'BAR_EMPRESA'
    end
    object BarBAR_FRACAO: TIntegerField
      FieldName = 'BAR_FRACAO'
      Origin = 'BAR_FRACAO'
    end
    object BarCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCODIGO_BARRAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 13
    end
    object BarDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object BarABREVIADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ABREVIADO'
      Origin = 'ABREVIADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 29
    end
    object BarPRECO_CUSTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarMARGEM_LUCRO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarCOMISSAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarUNIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarFRETE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarIPI_IRPJ: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarOUTROS_IMPOSTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarDESCONTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTOS'
      Origin = 'DESCONTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarCLASS_FISCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASS_FISCAL'
      Origin = 'CLASS_FISCAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object BarSIT_TRIBUTARIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object BarCUSTO_MEDIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarPRECO_VENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object BarDESCONTO_MAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarCODIGO_GRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_GRUPO'
      Origin = 'CODIGO_GRUPO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCODIGO_SUBGRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = 'CODIGO_SUBGRUPO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCODIGO_MARCA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MARCA'
      Origin = 'CODIGO_MARCA'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarNOME_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_GRUPO'
      Origin = 'NOME_GRUPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object BarNOME_SUBGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_SUBGRUPO'
      Origin = 'NOME_SUBGRUPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object BarNOME_MARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_MARCA'
      Origin = 'NOME_MARCA'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object BarNOME_FORNECEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FORNECEDOR'
      Origin = 'NOME_FORNECEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object BarCODIGO_FORNECEDORES: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = 'CODIGO_FORNECEDORES'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarFOTO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'FOTO'
      Origin = 'FOTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarESTOQUE_ATUAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object BarESTOQUE_VENDIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_VENDIDO'
      Origin = 'ESTOQUE_VENDIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarESTOQUE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object BarVALOR_ESTOQUE_ATUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Origin = 'VALOR_ESTOQUE_ATUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object BarVALOR_ESTOQUE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ESTOQUE'
      Origin = 'VALOR_ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object BarESTOQUE_MINIMO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'ESTOQUE_MINIMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarESTOQUE_MAXIMO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = 'ESTOQUE_MAXIMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarDATACAD: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarUSERCAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Origin = 'VALOR_EST_CUSTO_ATUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object BarULTIMACOMPRA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ULTIMACOMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarVALOR_EST_CUSTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_EST_CUSTO'
      Origin = 'VALOR_EST_CUSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object BarSECCAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SECCAO'
      Origin = 'SECCAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCATEGORIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarLOCALIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object BarAPLICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object BarESP_COD_AUX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESP_COD_AUX'
      Origin = 'ESP_COD_AUX'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object BarGARANTIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GARANTIA'
      Origin = 'GARANTIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarBALANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BALANCA'
      Origin = 'BALANCA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object BarETIQUETA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object BarATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object BarREFERENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object BarCOD_EMPRESA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarDESC_UNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object BarPESOBRUTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object BarPESOLIQUIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object BarFONETICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONETICO'
      Origin = 'FONETICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object BarDATAULTALTERACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATAULTALTERACAO'
      Origin = 'DATAULTALTERACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCUSTOREPOSICAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOREPOSICAO'
      Origin = 'CUSTOREPOSICAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarPRECO_ANT: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_ANT'
      Origin = 'PRECO_ANT'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object BarPRECO_PROMOCAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRECO_PROMOCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object BarFLAG_PROMOCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_PROMOCAO'
      Origin = 'FLAG_PROMOCAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object BarDT_INICIO_PROMO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_INICIO_PROMO'
      Origin = 'DT_INICIO_PROMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarDT_FIM_PROMO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_FIM_PROMO'
      Origin = 'DT_FIM_PROMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCOD_LABORATORIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_LABORATORIO'
      Origin = 'COD_LABORATORIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarLABORATORIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object BarPRINCIPIO_ATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = 'PRINCIPIO_ATIVO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object BarMED_CONTROLADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MED_CONTROLADO'
      Origin = 'MED_CONTROLADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object BarQTD_FRACIONADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_FRACIONADA'
      Origin = 'QTD_FRACIONADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarQTD_CAIXA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarMED_GENERICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MED_GENERICO'
      Origin = 'MED_GENERICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object BarLOTE_MED: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object BarVALIDADE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCHEK_BOX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object BarPRECO_VENDA2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object BarMARGEM_LUCRO2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_LUCRO2'
      Origin = 'MARGEM_LUCRO2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BarVALIDADE_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VALIDADE_PRODUTO'
      Origin = 'VALIDADE_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object BarPROD_SERV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object BarUNIDADE_ENT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE_ENT'
      Origin = 'UNIDADE_ENT'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarDESC_UNID_ENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_UNID_ENT'
      Origin = 'DESC_UNID_ENT'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object BarQUANT_SAIDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_SAIDA'
      Origin = 'QUANT_SAIDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object BarQUANT_ENTRADA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_ENTRADA'
      Origin = 'QUANT_ENTRADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object BarESTOQUE_FRACAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_FRACAO'
      Origin = 'ESTOQUE_FRACAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object BarDATA_FABRICACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarFRACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarNCM_SH: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object BarCOD_MS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_MS'
      Origin = 'COD_MS'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object BarCONTOLAESTOQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTOLAESTOQUE'
      Origin = 'CONTOLAESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object BarPRODUTOCOMPOSTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = 'PRODUTOCOMPOSTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object BarTIPO_ATIVIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_ATIVIDADE'
      Origin = 'TIPO_ATIVIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object BarCOD_PRODUTO_ESTOQUE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = 'COD_PRODUTO_ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCODIGO_LOCAL_ESTOQUE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = 'CODIGO_LOCAL_ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarLISTA_ABC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LISTA_ABC'
      Origin = 'LISTA_ABC'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object BarGRUPO_TRIBUTACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = 'GRUPO_TRIBUTACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCOMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object BarCOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COR'
      Origin = 'COR'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarENABLE_NUMSERIE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'ENABLE_NUMSERIE'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarID_PRODUTOS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCOD_ANP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object BarCESTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CESTA'
      Origin = 'CESTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object BarML_QUANT_BEB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object BarUND_TRIB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object BarCHASSI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object BarCOR_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object BarN_MOTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object BarANO_FAB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object BarANO_MOD_FAB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object BarTIPO_VEIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object BarN_SERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object BarCOD_MODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object BarESPECIE_VEICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object BarCOD_COR_DENATRAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object BarTIPO_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object BarVEICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object BarUSA_RENTABILIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'USA_RENTABILIDADE'
      Origin = 'USA_RENTABILIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarUSA_SERIAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'USA_SERIAL'
      Origin = 'USA_SERIAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarUSA_GRADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'USA_GRADE'
      Origin = 'USA_GRADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarPRODUTO_PROPRIEDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_PROPRIEDADE'
      Origin = 'PRODUTO_PROPRIEDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarMULTIP_FRACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MULTIP_FRACAO'
      Origin = 'MULTIP_FRACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarDATA_REMARCACAO_VENDA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_REMARCACAO_VENDA'
      Origin = 'DATA_REMARCACAO_VENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCODORIGINAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODORIGINAL'
      Origin = 'CODORIGINAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object BarDATA_ULTIMA_COMPRA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'DATA_ULTIMA_COMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarALERTA_COPA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALERTA_COPA'
      Origin = 'ALERTA_COPA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object BarALERTA_COZINHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALERTA_COZINHA'
      Origin = 'ALERTA_COZINHA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object BarANDROID_VISUALIZA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANDROID_VISUALIZA'
      Origin = 'ANDROID_VISUALIZA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object BarTEMPO_PREPARO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'TEMPO_PREPARO'
      Origin = 'TEMPO_PREPARO'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarSABORES: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SABORES'
      Origin = 'SABORES'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCOD_PACOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_PACOTE'
      Origin = 'COD_PACOTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object BarCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
  end
  object Categoria: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'Select * From Categoria Where Cat_CodCategoria = 00')
    Left = 704
    Top = 112
    object CategoriaCAT_CODCATEGORIA: TStringField
      FieldName = 'CAT_CODCATEGORIA'
      Origin = 'CAT_CODCATEGORIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object CategoriaCAT_CATEGORIA: TStringField
      FieldName = 'CAT_CATEGORIA'
      Origin = 'CAT_CATEGORIA'
      Required = True
      Size = 30
    end
    object CategoriaCAT_ATEPESSOAS: TIntegerField
      FieldName = 'CAT_ATEPESSOAS'
      Origin = 'CAT_ATEPESSOAS'
      Required = True
    end
    object CategoriaCAT_VALORDIARIA1: TFMTBCDField
      FieldName = 'CAT_VALORDIARIA1'
      Origin = 'CAT_VALORDIARIA1'
      Required = True
      Precision = 18
      Size = 2
    end
    object CategoriaCAT_VALORDIARIA2: TFMTBCDField
      FieldName = 'CAT_VALORDIARIA2'
      Origin = 'CAT_VALORDIARIA2'
      Required = True
      Precision = 18
      Size = 2
    end
    object CategoriaCAT_VALORDIARIA3: TFMTBCDField
      FieldName = 'CAT_VALORDIARIA3'
      Origin = 'CAT_VALORDIARIA3'
      Precision = 18
      Size = 2
    end
    object CategoriaCAT_VALORDIARIA4: TFMTBCDField
      FieldName = 'CAT_VALORDIARIA4'
      Origin = 'CAT_VALORDIARIA4'
      Precision = 18
      Size = 2
    end
  end
  object SP1: TFDStoredProc
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    StoredProcName = 'SP_GeraCodEntrada'
    Left = 768
    Top = 160
    ParamData = <
      item
        Name = 'CODENTRADA'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object Qry0: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      ' Select * From hotel_reserva, Clientes, apartamento')
    Left = 704
    Top = 168
  end
  object Qry1: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'Select * From EntraHospede, Apartamento, Clientes')
    Left = 704
    Top = 216
  end
  object CapturaErros: TFDTable
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    UpdateOptions.UpdateTableName = 'LOGERROS'
    TableName = 'LOGERROS'
    Left = 760
    Top = 216
  end
  object Produto: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'Select * From Produtos')
    Left = 840
    Top = 168
    object ProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutoCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object ProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object ProdutoABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Origin = 'ABREVIADO'
      Size = 29
    end
    object ProdutoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object ProdutoMARGEM_LUCRO: TFMTBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object ProdutoCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object ProdutoUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
    end
    object ProdutoFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object ProdutoICMS: TFMTBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object ProdutoIPI_IRPJ: TFMTBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object ProdutoOUTROS_IMPOSTOS: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object ProdutoDESCONTOS: TFMTBCDField
      FieldName = 'DESCONTOS'
      Origin = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object ProdutoCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Origin = 'CLASS_FISCAL'
      Size = 6
    end
    object ProdutoSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object ProdutoCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      Precision = 18
      Size = 2
    end
    object ProdutoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object ProdutoDESCONTO_MAXIMO: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      Precision = 18
      Size = 2
    end
    object ProdutoCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = 'CODIGO_GRUPO'
    end
    object ProdutoCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = 'CODIGO_SUBGRUPO'
    end
    object ProdutoCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = 'CODIGO_MARCA'
    end
    object ProdutoNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Origin = 'NOME_GRUPO'
      Size = 40
    end
    object ProdutoNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = 'NOME_SUBGRUPO'
      Size = 40
    end
    object ProdutoNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Origin = 'NOME_MARCA'
      Size = 40
    end
    object ProdutoNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = 'NOME_FORNECEDOR'
      Size = 70
    end
    object ProdutoCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = 'CODIGO_FORNECEDORES'
    end
    object ProdutoFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object ProdutoESTOQUE_ATUAL: TBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
      Precision = 18
    end
    object ProdutoESTOQUE_VENDIDO: TFMTBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Origin = 'ESTOQUE_VENDIDO'
      Precision = 18
      Size = 2
    end
    object ProdutoESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object ProdutoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Origin = 'VALOR_ESTOQUE_ATUAL'
      Precision = 18
      Size = 6
    end
    object ProdutoVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Origin = 'VALOR_ESTOQUE'
      Precision = 18
      Size = 6
    end
    object ProdutoESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'ESTOQUE_MINIMO'
    end
    object ProdutoESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = 'ESTOQUE_MAXIMO'
    end
    object ProdutoDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object ProdutoUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object ProdutoVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Origin = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 18
      Size = 6
    end
    object ProdutoULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ULTIMACOMPRA'
    end
    object ProdutoVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Origin = 'VALOR_EST_CUSTO'
      Precision = 18
      Size = 6
    end
    object ProdutoSECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = 'SECCAO'
    end
    object ProdutoCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object ProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 50
    end
    object ProdutoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 500
    end
    object ProdutoESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Origin = 'ESP_COD_AUX'
      Size = 50
    end
    object ProdutoGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      Origin = 'GARANTIA'
    end
    object ProdutoBALANCA: TStringField
      FieldName = 'BALANCA'
      Origin = 'BALANCA'
      Size = 1
    end
    object ProdutoETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      Size = 1
    end
    object ProdutoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 40
    end
    object ProdutoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object ProdutoDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object ProdutoPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object ProdutoPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object ProdutoFONETICO: TStringField
      FieldName = 'FONETICO'
      Origin = 'FONETICO'
      Size = 60
    end
    object ProdutoDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
      Origin = 'DATAULTALTERACAO'
    end
    object ProdutoCUSTOREPOSICAO: TFMTBCDField
      FieldName = 'CUSTOREPOSICAO'
      Origin = 'CUSTOREPOSICAO'
      Precision = 18
      Size = 2
    end
    object ProdutoPRECO_ANT: TFMTBCDField
      FieldName = 'PRECO_ANT'
      Origin = 'PRECO_ANT'
      Precision = 18
      Size = 3
    end
    object ProdutoPRECO_PROMOCAO: TFMTBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRECO_PROMOCAO'
      Precision = 18
      Size = 3
    end
    object ProdutoFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Origin = 'FLAG_PROMOCAO'
      Size = 1
    end
    object ProdutoDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
      Origin = 'DT_INICIO_PROMO'
    end
    object ProdutoDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
      Origin = 'DT_FIM_PROMO'
    end
    object ProdutoCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
      Origin = 'COD_LABORATORIO'
    end
    object ProdutoLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
      Size = 70
    end
    object ProdutoPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = 'PRINCIPIO_ATIVO'
      Size = 70
    end
    object ProdutoMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Origin = 'MED_CONTROLADO'
      Size = 1
    end
    object ProdutoQTD_FRACIONADA: TFMTBCDField
      FieldName = 'QTD_FRACIONADA'
      Origin = 'QTD_FRACIONADA'
      Precision = 18
      Size = 2
    end
    object ProdutoQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
    end
    object ProdutoMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Origin = 'MED_GENERICO'
      Size = 3
    end
    object ProdutoLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      Size = 10
    end
    object ProdutoVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object ProdutoCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object ProdutoPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      Precision = 18
      Size = 3
    end
    object ProdutoMARGEM_LUCRO2: TFMTBCDField
      FieldName = 'MARGEM_LUCRO2'
      Origin = 'MARGEM_LUCRO2'
      Precision = 18
      Size = 2
    end
    object ProdutoVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Origin = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object ProdutoPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object ProdutoUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
      Origin = 'UNIDADE_ENT'
    end
    object ProdutoDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Origin = 'DESC_UNID_ENT'
      Size = 6
    end
    object ProdutoQUANT_SAIDA: TBCDField
      FieldName = 'QUANT_SAIDA'
      Origin = 'QUANT_SAIDA'
      Precision = 18
    end
    object ProdutoQUANT_ENTRADA: TBCDField
      FieldName = 'QUANT_ENTRADA'
      Origin = 'QUANT_ENTRADA'
      Precision = 18
    end
    object ProdutoESTOQUE_FRACAO: TBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = 'ESTOQUE_FRACAO'
      Precision = 18
    end
    object ProdutoDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
    end
    object ProdutoFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object ProdutoNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 12
    end
    object ProdutoCOD_MS: TStringField
      FieldName = 'COD_MS'
      Origin = 'COD_MS'
      Size = 13
    end
    object ProdutoCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Origin = 'CONTOLAESTOQUE'
      Size = 5
    end
    object ProdutoPRODUTOCOMPOSTO: TStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = 'PRODUTOCOMPOSTO'
      Size = 5
    end
    object ProdutoTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object ProdutoCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = 'COD_PRODUTO_ESTOQUE'
    end
    object ProdutoCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = 'CODIGO_LOCAL_ESTOQUE'
    end
    object ProdutoLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Origin = 'LISTA_ABC'
      Size = 1
    end
    object ProdutoGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = 'GRUPO_TRIBUTACAO'
    end
    object ProdutoCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object ProdutoCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object ProdutoENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'ENABLE_NUMSERIE'
      Required = True
    end
    object ProdutoID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
    end
    object ProdutoCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      Size = 9
    end
    object ProdutoCESTA: TStringField
      FieldName = 'CESTA'
      Origin = 'CESTA'
      Size = 1
    end
    object ProdutoML_QUANT_BEB: TFMTBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object ProdutoUND_TRIB: TStringField
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      Size = 3
    end
    object ProdutoCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 44
    end
    object ProdutoCOR_DESC: TStringField
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      Size = 30
    end
    object ProdutoN_MOTOR: TStringField
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      Size = 30
    end
    object ProdutoANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      Size = 4
    end
    object ProdutoANO_MOD_FAB: TStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      Size = 4
    end
    object ProdutoTIPO_VEIC: TStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      Size = 10
    end
    object ProdutoN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      Size = 30
    end
    object ProdutoCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      Size = 30
    end
    object ProdutoESPECIE_VEICULO: TStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      Size = 10
    end
    object ProdutoCOD_COR_DENATRAN: TStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      Size = 10
    end
    object ProdutoTIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      Size = 10
    end
    object ProdutoVEICULO: TStringField
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      Size = 1
    end
    object ProdutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
      Origin = 'USA_RENTABILIDADE'
    end
    object ProdutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Origin = 'USA_SERIAL'
    end
    object ProdutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Origin = 'USA_GRADE'
    end
    object ProdutoPRODUTO_PROPRIEDADE: TIntegerField
      FieldName = 'PRODUTO_PROPRIEDADE'
      Origin = 'PRODUTO_PROPRIEDADE'
    end
    object ProdutoMULTIP_FRACAO: TIntegerField
      FieldName = 'MULTIP_FRACAO'
      Origin = 'MULTIP_FRACAO'
    end
    object ProdutoDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Origin = 'DATA_REMARCACAO_VENDA'
    end
    object ProdutoCODORIGINAL: TStringField
      FieldName = 'CODORIGINAL'
      Origin = 'CODORIGINAL'
      Size = 40
    end
    object ProdutoDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'DATA_ULTIMA_COMPRA'
    end
    object ProdutoALERTA_COPA: TStringField
      FieldName = 'ALERTA_COPA'
      Origin = 'ALERTA_COPA'
      FixedChar = True
      Size = 1
    end
    object ProdutoALERTA_COZINHA: TStringField
      FieldName = 'ALERTA_COZINHA'
      Origin = 'ALERTA_COZINHA'
      FixedChar = True
      Size = 1
    end
    object ProdutoANDROID_VISUALIZA: TStringField
      FieldName = 'ANDROID_VISUALIZA'
      Origin = 'ANDROID_VISUALIZA'
      FixedChar = True
      Size = 1
    end
    object ProdutoTEMPO_PREPARO: TTimeField
      FieldName = 'TEMPO_PREPARO'
      Origin = 'TEMPO_PREPARO'
    end
    object ProdutoSABORES: TIntegerField
      FieldName = 'SABORES'
      Origin = 'SABORES'
    end
    object ProdutoCOD_PACOTE: TStringField
      FieldName = 'COD_PACOTE'
      Origin = 'COD_PACOTE'
    end
    object ProdutoCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
  end
  object Lavanderia: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'Select * From lavanderia, Produtos')
    Left = 832
    Top = 232
    object LavanderiaLAV_CONTROLE: TIntegerField
      FieldName = 'LAV_CONTROLE'
      Origin = 'LAV_CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LavanderiaLAV_CODENTRADA: TStringField
      FieldName = 'LAV_CODENTRADA'
      Origin = 'LAV_CODENTRADA'
      Required = True
      FixedChar = True
      Size = 6
    end
    object LavanderiaLAV_CODPRODUTO: TIntegerField
      FieldName = 'LAV_CODPRODUTO'
      Origin = 'LAV_CODPRODUTO'
      Required = True
    end
    object LavanderiaLAV_COMANDA: TStringField
      FieldName = 'LAV_COMANDA'
      Origin = 'LAV_COMANDA'
      Size = 30
    end
    object LavanderiaLAV_DATA: TDateField
      FieldName = 'LAV_DATA'
      Origin = 'LAV_DATA'
      Required = True
    end
    object LavanderiaLAV_QUANTIDADE: TFMTBCDField
      FieldName = 'LAV_QUANTIDADE'
      Origin = 'LAV_QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
    object LavanderiaLAV_VALORUNITARIO: TFMTBCDField
      FieldName = 'LAV_VALORUNITARIO'
      Origin = 'LAV_VALORUNITARIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object LavanderiaLAV_VALORTOTAL: TBCDField
      FieldName = 'LAV_VALORTOTAL'
      Origin = 'LAV_VALORTOTAL'
      Precision = 18
    end
    object LavanderiaLAV_EMPRESA: TIntegerField
      FieldName = 'LAV_EMPRESA'
      Origin = 'LAV_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LavanderiaLAV_FRACAO: TIntegerField
      FieldName = 'LAV_FRACAO'
      Origin = 'LAV_FRACAO'
    end
    object LavanderiaCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCODIGO_BARRAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 13
    end
    object LavanderiaDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object LavanderiaABREVIADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ABREVIADO'
      Origin = 'ABREVIADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 29
    end
    object LavanderiaPRECO_CUSTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaMARGEM_LUCRO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaCOMISSAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaUNIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaFRETE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaIPI_IRPJ: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaOUTROS_IMPOSTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaDESCONTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTOS'
      Origin = 'DESCONTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaCLASS_FISCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASS_FISCAL'
      Origin = 'CLASS_FISCAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object LavanderiaSIT_TRIBUTARIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object LavanderiaCUSTO_MEDIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaPRECO_VENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object LavanderiaDESCONTO_MAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaCODIGO_GRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_GRUPO'
      Origin = 'CODIGO_GRUPO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCODIGO_SUBGRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = 'CODIGO_SUBGRUPO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCODIGO_MARCA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MARCA'
      Origin = 'CODIGO_MARCA'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaNOME_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_GRUPO'
      Origin = 'NOME_GRUPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object LavanderiaNOME_SUBGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_SUBGRUPO'
      Origin = 'NOME_SUBGRUPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object LavanderiaNOME_MARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_MARCA'
      Origin = 'NOME_MARCA'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object LavanderiaNOME_FORNECEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FORNECEDOR'
      Origin = 'NOME_FORNECEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object LavanderiaCODIGO_FORNECEDORES: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = 'CODIGO_FORNECEDORES'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaFOTO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'FOTO'
      Origin = 'FOTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaESTOQUE_ATUAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object LavanderiaESTOQUE_VENDIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_VENDIDO'
      Origin = 'ESTOQUE_VENDIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaESTOQUE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object LavanderiaVALOR_ESTOQUE_ATUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Origin = 'VALOR_ESTOQUE_ATUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object LavanderiaVALOR_ESTOQUE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ESTOQUE'
      Origin = 'VALOR_ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object LavanderiaESTOQUE_MINIMO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'ESTOQUE_MINIMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaESTOQUE_MAXIMO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = 'ESTOQUE_MAXIMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaDATACAD: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaUSERCAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Origin = 'VALOR_EST_CUSTO_ATUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object LavanderiaULTIMACOMPRA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ULTIMACOMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaVALOR_EST_CUSTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_EST_CUSTO'
      Origin = 'VALOR_EST_CUSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object LavanderiaSECCAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SECCAO'
      Origin = 'SECCAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCATEGORIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaLOCALIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object LavanderiaAPLICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object LavanderiaESP_COD_AUX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESP_COD_AUX'
      Origin = 'ESP_COD_AUX'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object LavanderiaGARANTIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GARANTIA'
      Origin = 'GARANTIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaBALANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BALANCA'
      Origin = 'BALANCA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object LavanderiaETIQUETA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object LavanderiaATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object LavanderiaREFERENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object LavanderiaCOD_EMPRESA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaDESC_UNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object LavanderiaPESOBRUTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object LavanderiaPESOLIQUIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object LavanderiaFONETICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONETICO'
      Origin = 'FONETICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object LavanderiaDATAULTALTERACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATAULTALTERACAO'
      Origin = 'DATAULTALTERACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCUSTOREPOSICAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOREPOSICAO'
      Origin = 'CUSTOREPOSICAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaPRECO_ANT: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_ANT'
      Origin = 'PRECO_ANT'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object LavanderiaPRECO_PROMOCAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRECO_PROMOCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object LavanderiaFLAG_PROMOCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_PROMOCAO'
      Origin = 'FLAG_PROMOCAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object LavanderiaDT_INICIO_PROMO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_INICIO_PROMO'
      Origin = 'DT_INICIO_PROMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaDT_FIM_PROMO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_FIM_PROMO'
      Origin = 'DT_FIM_PROMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCOD_LABORATORIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_LABORATORIO'
      Origin = 'COD_LABORATORIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaLABORATORIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object LavanderiaPRINCIPIO_ATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = 'PRINCIPIO_ATIVO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object LavanderiaMED_CONTROLADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MED_CONTROLADO'
      Origin = 'MED_CONTROLADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object LavanderiaQTD_FRACIONADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_FRACIONADA'
      Origin = 'QTD_FRACIONADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaQTD_CAIXA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaMED_GENERICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MED_GENERICO'
      Origin = 'MED_GENERICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object LavanderiaLOTE_MED: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object LavanderiaVALIDADE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCHEK_BOX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object LavanderiaPRECO_VENDA2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object LavanderiaMARGEM_LUCRO2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_LUCRO2'
      Origin = 'MARGEM_LUCRO2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object LavanderiaVALIDADE_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VALIDADE_PRODUTO'
      Origin = 'VALIDADE_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object LavanderiaPROD_SERV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object LavanderiaUNIDADE_ENT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE_ENT'
      Origin = 'UNIDADE_ENT'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaDESC_UNID_ENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_UNID_ENT'
      Origin = 'DESC_UNID_ENT'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object LavanderiaQUANT_SAIDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_SAIDA'
      Origin = 'QUANT_SAIDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object LavanderiaQUANT_ENTRADA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_ENTRADA'
      Origin = 'QUANT_ENTRADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object LavanderiaESTOQUE_FRACAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_FRACAO'
      Origin = 'ESTOQUE_FRACAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object LavanderiaDATA_FABRICACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaFRACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaNCM_SH: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object LavanderiaCOD_MS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_MS'
      Origin = 'COD_MS'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object LavanderiaCONTOLAESTOQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTOLAESTOQUE'
      Origin = 'CONTOLAESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object LavanderiaPRODUTOCOMPOSTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = 'PRODUTOCOMPOSTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object LavanderiaTIPO_ATIVIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_ATIVIDADE'
      Origin = 'TIPO_ATIVIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object LavanderiaCOD_PRODUTO_ESTOQUE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = 'COD_PRODUTO_ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCODIGO_LOCAL_ESTOQUE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = 'CODIGO_LOCAL_ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaLISTA_ABC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LISTA_ABC'
      Origin = 'LISTA_ABC'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object LavanderiaGRUPO_TRIBUTACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = 'GRUPO_TRIBUTACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCOMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object LavanderiaCOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COR'
      Origin = 'COR'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaENABLE_NUMSERIE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'ENABLE_NUMSERIE'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaID_PRODUTOS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCOD_ANP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object LavanderiaCESTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CESTA'
      Origin = 'CESTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object LavanderiaML_QUANT_BEB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object LavanderiaUND_TRIB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object LavanderiaCHASSI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object LavanderiaCOR_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object LavanderiaN_MOTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object LavanderiaANO_FAB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object LavanderiaANO_MOD_FAB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object LavanderiaTIPO_VEIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object LavanderiaN_SERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object LavanderiaCOD_MODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object LavanderiaESPECIE_VEICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object LavanderiaCOD_COR_DENATRAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object LavanderiaTIPO_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object LavanderiaVEICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object LavanderiaUSA_RENTABILIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'USA_RENTABILIDADE'
      Origin = 'USA_RENTABILIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaUSA_SERIAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'USA_SERIAL'
      Origin = 'USA_SERIAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaUSA_GRADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'USA_GRADE'
      Origin = 'USA_GRADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaPRODUTO_PROPRIEDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_PROPRIEDADE'
      Origin = 'PRODUTO_PROPRIEDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaMULTIP_FRACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MULTIP_FRACAO'
      Origin = 'MULTIP_FRACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaDATA_REMARCACAO_VENDA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_REMARCACAO_VENDA'
      Origin = 'DATA_REMARCACAO_VENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCODORIGINAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODORIGINAL'
      Origin = 'CODORIGINAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object LavanderiaDATA_ULTIMA_COMPRA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'DATA_ULTIMA_COMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaALERTA_COPA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALERTA_COPA'
      Origin = 'ALERTA_COPA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object LavanderiaALERTA_COZINHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALERTA_COZINHA'
      Origin = 'ALERTA_COZINHA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object LavanderiaANDROID_VISUALIZA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANDROID_VISUALIZA'
      Origin = 'ANDROID_VISUALIZA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object LavanderiaTEMPO_PREPARO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'TEMPO_PREPARO'
      Origin = 'TEMPO_PREPARO'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaSABORES: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SABORES'
      Origin = 'SABORES'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCOD_PACOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_PACOTE'
      Origin = 'COD_PACOTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object LavanderiaCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
  end
  object Apartamento1: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'Select * From Apartamento Where APA_CodApartamento = 0')
    Left = 768
    Top = 272
    object Apartamento1APA_CODAPARTAMENTO: TStringField
      FieldName = 'APA_CODAPARTAMENTO'
      Origin = 'APA_CODAPARTAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object Apartamento1APA_APARTAMENTO: TStringField
      FieldName = 'APA_APARTAMENTO'
      Origin = 'APA_APARTAMENTO'
      Required = True
      Size = 30
    end
    object Apartamento1APA_SITUACAO: TStringField
      FieldName = 'APA_SITUACAO'
      Origin = 'APA_SITUACAO'
      Required = True
      Size = 10
    end
    object Apartamento1APA_CODENTRADA: TStringField
      FieldName = 'APA_CODENTRADA'
      Origin = 'APA_CODENTRADA'
      FixedChar = True
      Size = 6
    end
    object Apartamento1APA_CODCATEGORIA: TStringField
      FieldName = 'APA_CODCATEGORIA'
      Origin = 'APA_CODCATEGORIA'
      FixedChar = True
      Size = 6
    end
  end
  object Apartamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT '
      '  APARTAMENTO.APA_CODAPARTAMENTO,'
      '  APARTAMENTO.APA_APARTAMENTO,'
      '  APARTAMENTO.APA_SITUACAO,'
      '  APARTAMENTO.APA_CODENTRADA,'
      '  APARTAMENTO.APA_CODCATEGORIA,'
      '  HOTEL_RESERVA.RES_CODAPARTAMENTO'
      'FROM'
      ' APARTAMENTO'
      
        ' LEFT OUTER JOIN HOTEL_RESERVA ON (APARTAMENTO.APA_CODAPARTAMENT' +
        'O=HOTEL_RESERVA.RES_CODAPARTAMENTO)')
    SQLConnection = DM.SQLC
    Left = 696
    Top = 280
    object ApartamentoAPA_CODAPARTAMENTO: TStringField
      FieldName = 'APA_CODAPARTAMENTO'
      Required = True
      FixedChar = True
      Size = 6
    end
    object ApartamentoAPA_APARTAMENTO: TStringField
      FieldName = 'APA_APARTAMENTO'
      Required = True
      Size = 30
    end
    object ApartamentoAPA_SITUACAO: TStringField
      FieldName = 'APA_SITUACAO'
      Required = True
      Size = 10
    end
    object ApartamentoAPA_CODENTRADA: TStringField
      FieldName = 'APA_CODENTRADA'
      FixedChar = True
      Size = 6
    end
    object ApartamentoAPA_CODCATEGORIA: TStringField
      FieldName = 'APA_CODCATEGORIA'
      FixedChar = True
      Size = 6
    end
    object ApartamentoRES_CODAPARTAMENTO: TStringField
      FieldName = 'RES_CODAPARTAMENTO'
      FixedChar = True
      Size = 6
    end
  end
  object Cds_apartamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_apartamento'
    Left = 792
    Top = 328
    object Cds_apartamentoAPA_CODAPARTAMENTO: TStringField
      FieldName = 'APA_CODAPARTAMENTO'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Cds_apartamentoAPA_APARTAMENTO: TStringField
      FieldName = 'APA_APARTAMENTO'
      Required = True
      Size = 30
    end
    object Cds_apartamentoAPA_SITUACAO: TStringField
      FieldName = 'APA_SITUACAO'
      Required = True
      Size = 10
    end
    object Cds_apartamentoAPA_CODENTRADA: TStringField
      FieldName = 'APA_CODENTRADA'
      FixedChar = True
      Size = 6
    end
    object Cds_apartamentoAPA_CODCATEGORIA: TStringField
      FieldName = 'APA_CODCATEGORIA'
      FixedChar = True
      Size = 6
    end
    object Cds_apartamentoRES_CODAPARTAMENTO: TStringField
      FieldName = 'RES_CODAPARTAMENTO'
      FixedChar = True
      Size = 6
    end
  end
  object Dsp_apartamento: TDataSetProvider
    DataSet = Apartamento
    Left = 704
    Top = 328
  end
  object Sds_sped_nfprod: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_SPED_NOTAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 496
    Top = 392
    object Sds_sped_nfprodCOD_SPED: TIntegerField
      FieldName = 'COD_SPED'
    end
    object Sds_sped_nfprodNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object Sds_sped_nfprodIE: TStringField
      FieldName = 'IE'
    end
    object Sds_sped_nfprodCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object Sds_sped_nfprodCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      Size = 7
    end
    object Sds_sped_nfprodLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object Sds_sped_nfprodNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Sds_sped_nfprodCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object Sds_sped_nfprodBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object Sds_sped_nfprodSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 11
    end
    object Sds_sped_nfprodPAIS: TStringField
      FieldName = 'PAIS'
      Size = 11
    end
    object Sds_sped_nfprodCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object Sds_sped_nfprodCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object Sds_sped_nfprodCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_sped_nfprodTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Sds_sped_nfprodMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object Sds_sped_nfprodANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object Sds_sped_nfprodCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object Sds_sped_nfprodVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Sds_sped_nfprodDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object Sds_sped_nfprodDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object Sds_sped_nfprodCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object Sds_sped_nfprodNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 70
    end
    object Sds_sped_nfprodPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object Sds_sped_nfprodSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object Sds_sped_nfprodSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object Sds_sped_nfprodUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object Sds_sped_nfprodTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object Sds_sped_nfprodOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object Sds_sped_nfprodCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object Sds_sped_nfprodCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object Sds_sped_nfprodN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object Sds_sped_nfprodN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object Sds_sped_nfprodCOD_EMPRESA1: TIntegerField
      FieldName = 'COD_EMPRESA1'
    end
    object Sds_sped_nfprodHORA: TTimeField
      FieldName = 'HORA'
    end
    object Sds_sped_nfprodVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object Sds_sped_nfprodCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object Sds_sped_nfprodCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object Sds_sped_nfprodNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object Sds_sped_nfprodSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object Sds_sped_nfprodENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 44
    end
    object Sds_sped_nfprodCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 18
    end
    object Sds_sped_nfprodRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
    end
    object Sds_sped_nfprodFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object Sds_sped_nfprodCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Sds_sped_nfprodBAIRRO1: TStringField
      FieldName = 'BAIRRO1'
      Size = 30
    end
    object Sds_sped_nfprodN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object Sds_sped_nfprodPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 70
    end
    object Sds_sped_nfprodQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
    end
    object Sds_sped_nfprodSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
    end
    object Sds_sped_nfprodMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 70
    end
    object Sds_sped_nfprodDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object Sds_sped_nfprodVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Sds_sped_nfprodCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object Sds_sped_nfprodCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Sds_sped_nfprodNUMERO1: TStringField
      FieldName = 'NUMERO1'
      Size = 6
    end
    object Sds_sped_nfprodTIPO1: TStringField
      FieldName = 'TIPO1'
      Size = 1
    end
    object Sds_sped_nfprodVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 44
    end
    object Sds_sped_nfprodTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object Sds_sped_nfprodFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object Sds_sped_nfprodMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object Sds_sped_nfprodREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 70
    end
    object Sds_sped_nfprodCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object Sds_sped_nfprodPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Size = 1
    end
    object Sds_sped_nfprodIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      FixedChar = True
    end
    object Sds_sped_nfprodVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfprodKM: TIntegerField
      FieldName = 'KM'
    end
    object Sds_sped_nfprodCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Size = 100
    end
    object Sds_sped_nfprodCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Size = 30
    end
    object Sds_sped_nfprodCUPON_CANCELADO: TStringField
      FieldName = 'CUPON_CANCELADO'
      Size = 1
    end
    object Sds_sped_nfprodCRZ: TIntegerField
      FieldName = 'CRZ'
    end
    object Sds_sped_nfprodCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object Sds_sped_nfprodANO1: TIntegerField
      FieldName = 'ANO1'
    end
    object Sds_sped_nfprodMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object Sds_sped_nfprodCFOP_NF: TStringField
      FieldName = 'CFOP_NF'
      Size = 4
    end
  end
  object Dts_sped_nfProd: TDataSource
    DataSet = Sds_sped_nfprod
    Left = 496
    Top = 448
  end
  object sds_sped_nfprod_itens: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_SPED_NOTAS_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = Dts_sped_nfProd
    PacketRecords = 0
    Params = <>
    Left = 592
    Top = 392
    object sds_sped_nfprod_itensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_sped_nfprod_itensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object sds_sped_nfprod_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object sds_sped_nfprod_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object sds_sped_nfprod_itensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object sds_sped_nfprod_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object sds_sped_nfprod_itensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Precision = 15
      Size = 3
    end
    object sds_sped_nfprod_itensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object sds_sped_nfprod_itensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object sds_sped_nfprod_itensQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object sds_sped_nfprod_itensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sds_sped_nfprod_itensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object sds_sped_nfprod_itensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object sds_sped_nfprod_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object sds_sped_nfprod_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object sds_sped_nfprod_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object sds_sped_nfprod_itensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfprod_itensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Size = 3
    end
    object sds_sped_nfprod_itensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object sds_sped_nfprod_itensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
    end
    object sds_sped_nfprod_itensID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Size = 5
    end
    object sds_sped_nfprod_itensID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Size = 5
    end
    object sds_sped_nfprod_itensCST_VENDA: TStringField
      FieldName = 'CST_VENDA'
      Size = 3
    end
    object sds_sped_nfprod_itensMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object sds_sped_nfprod_itensCFOP_NF: TStringField
      FieldName = 'CFOP_NF'
      Size = 4
    end
    object sds_sped_nfprod_itensNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sds_sped_nfprod_itensCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
    end
  end
  object Dts_sped_nfprod_itens: TDataSource
    DataSet = sds_sped_nfprod_itens
    Left = 600
    Top = 448
  end
  object SDS_Contratos_Caract: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PLANO_CARACT'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 712
    Top = 408
    object SDS_Contratos_CaractID_CARACT: TIntegerField
      FieldName = 'ID_CARACT'
      Required = True
    end
    object SDS_Contratos_CaractDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 70
    end
  end
  object sds_contrato_tipo: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PLANO_TIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 704
    Top = 464
    object sds_contrato_tipoID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object sds_contrato_tipoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 70
    end
  end
  object SDS_CONTRATO_PLANO: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PLANO_CONTRAT'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 704
    Top = 520
    object SDS_CONTRATO_PLANOID_PLANO: TIntegerField
      FieldName = 'ID_PLANO'
      Required = True
    end
    object SDS_CONTRATO_PLANODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 70
    end
  end
  object DTS_CONT_CARACT: TDataSource
    DataSet = SDS_Contratos_Caract
    Left = 816
    Top = 408
  end
  object DTS_CONT_TIPO: TDataSource
    DataSet = sds_contrato_tipo
    Left = 792
    Top = 464
  end
  object DTS_CONT_PLANO: TDataSource
    DataSet = SDS_CONTRATO_PLANO
    Left = 800
    Top = 520
  end
  object sds_abastecimentos: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from VEICULO_ABAST order by Seq asc;')
    Left = 496
    Top = 504
    object sds_abastecimentosSEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = 'SEQ'
      Required = True
    end
    object sds_abastecimentosCOD_PRO: TIntegerField
      FieldName = 'COD_PRO'
      Origin = 'COD_PRO'
    end
    object sds_abastecimentosCOD_FOR: TIntegerField
      FieldName = 'COD_FOR'
      Origin = 'COD_FOR'
    end
    object sds_abastecimentosCOD_VEI: TIntegerField
      FieldName = 'COD_VEI'
      Origin = 'COD_VEI'
      Required = True
    end
    object sds_abastecimentosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sds_abastecimentosQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object sds_abastecimentosV_TOTAL: TFMTBCDField
      FieldName = 'V_TOTAL'
      Origin = 'V_TOTAL'
      Precision = 18
      Size = 2
    end
    object sds_abastecimentosKM_VEIC: TIntegerField
      FieldName = 'KM_VEIC'
      Origin = 'KM_VEIC'
    end
    object sds_abastecimentosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 200
    end
    object sds_abastecimentosV_UNIT: TFMTBCDField
      FieldName = 'V_UNIT'
      Origin = 'V_UNIT'
      Precision = 18
      Size = 6
    end
    object sds_abastecimentosKM_L: TFMTBCDField
      FieldName = 'KM_L'
      Origin = 'KM_L'
      Precision = 18
      Size = 2
    end
    object sds_abastecimentosKM_ROD: TIntegerField
      FieldName = 'KM_ROD'
      Origin = 'KM_ROD'
    end
  end
  object Dts_Abastecimentos: TDataSource
    DataSet = sds_abastecimentos
    Left = 496
    Top = 560
  end
  object dts_nfce: TDataSource
    DataSet = sds_nfce
    Left = 584
    Top = 624
  end
  object sds_nfce: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from  V_SPED_NFCE_SAIDA order by nr_nota asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 584
    Top = 568
    object sds_nfceCD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
    end
    object sds_nfceNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object sds_nfceCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object sds_nfceFL_IMPRESSO: TStringField
      FieldName = 'FL_IMPRESSO'
      Size = 1
    end
    object sds_nfceSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object sds_nfceCD_CFOP: TIntegerField
      FieldName = 'CD_CFOP'
    end
    object sds_nfceDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object sds_nfceDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object sds_nfceVL_ACRESCIMOS: TFMTBCDField
      FieldName = 'VL_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_DESCONTOS: TFMTBCDField
      FieldName = 'VL_DESCONTOS'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_MERCADORIAS: TFMTBCDField
      FieldName = 'VL_MERCADORIAS'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_SERVICOS: TFMTBCDField
      FieldName = 'VL_SERVICOS'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_nfceCOD_PGTO: TIntegerField
      FieldName = 'COD_PGTO'
    end
    object sds_nfceVL_AVISTA: TFMTBCDField
      FieldName = 'VL_AVISTA'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_PRAZO: TFMTBCDField
      FieldName = 'VL_PRAZO'
      Precision = 15
      Size = 2
    end
    object sds_nfcePESO_TOTAL: TFMTBCDField
      FieldName = 'PESO_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_nfceQT_PECAS: TFMTBCDField
      FieldName = 'QT_PECAS'
      Precision = 15
    end
    object sds_nfceCFOP_DESC: TStringField
      FieldName = 'CFOP_DESC'
      Size = 40
    end
    object sds_nfceCD_TRANSPORTADORA: TIntegerField
      FieldName = 'CD_TRANSPORTADORA'
    end
    object sds_nfceUF_ORIGEM: TStringField
      FieldName = 'UF_ORIGEM'
      Size = 2
    end
    object sds_nfceUF_DESTINO: TStringField
      FieldName = 'UF_DESTINO'
      Size = 2
    end
    object sds_nfcePESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_SEGURO: TFMTBCDField
      FieldName = 'VL_SEGURO'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object sds_nfceTP_FRETE: TStringField
      FieldName = 'TP_FRETE'
      Size = 1
    end
    object sds_nfceQT_VOLUMES: TFMTBCDField
      FieldName = 'QT_VOLUMES'
      Precision = 15
    end
    object sds_nfceESPECIE_VOLUMES: TStringField
      FieldName = 'ESPECIE_VOLUMES'
      Size = 15
    end
    object sds_nfceMARCA_VOLUMES: TStringField
      FieldName = 'MARCA_VOLUMES'
      Size = 15
    end
    object sds_nfceNR_VOLUMES: TIntegerField
      FieldName = 'NR_VOLUMES'
    end
    object sds_nfceCD_TIPOCOBR: TIntegerField
      FieldName = 'CD_TIPOCOBR'
    end
    object sds_nfceCD_FUNCIONARIO: TIntegerField
      FieldName = 'CD_FUNCIONARIO'
    end
    object sds_nfceDT_ATZ: TDateField
      FieldName = 'DT_ATZ'
    end
    object sds_nfcePLACA_TRANSP: TStringField
      FieldName = 'PLACA_TRANSP'
      Size = 8
    end
    object sds_nfceUF_PLACA_TRANSP: TStringField
      FieldName = 'UF_PLACA_TRANSP'
      Size = 2
    end
    object sds_nfceVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Precision = 15
      Size = 2
    end
    object sds_nfceNR_PEDIDO: TIntegerField
      FieldName = 'NR_PEDIDO'
    end
    object sds_nfceVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_DESCONTO_ITEM: TFMTBCDField
      FieldName = 'VL_DESCONTO_ITEM'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_ISENTO_ITENS: TFMTBCDField
      FieldName = 'VL_ISENTO_ITENS'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_OUTROS_ITENS: TFMTBCDField
      FieldName = 'VL_OUTROS_ITENS'
      Precision = 15
      Size = 2
    end
    object sds_nfceNR_PROTOCOLO_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_NFE'
      Size = 15
    end
    object sds_nfceDT_PROCESSAMENTO_NFE: TDateField
      FieldName = 'DT_PROCESSAMENTO_NFE'
    end
    object sds_nfceSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object sds_nfceNR_LOTE_NFE: TStringField
      FieldName = 'NR_LOTE_NFE'
      Size = 15
    end
    object sds_nfceNR_RECIBO_NFE: TStringField
      FieldName = 'NR_RECIBO_NFE'
      Size = 15
    end
    object sds_nfceNR_PROTOCOLO_CANC_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_CANC_NFE'
      Size = 15
    end
    object sds_nfceCHAVE_ACESSO_NFE: TStringField
      FieldName = 'CHAVE_ACESSO_NFE'
      Size = 44
    end
    object sds_nfceVL_FRETE_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_FRETE_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_ST_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ST_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_ICM_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ICM_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object sds_nfceBASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'BASE_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_nfceVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_nfceCNPJ_TRANSP: TStringField
      FieldName = 'CNPJ_TRANSP'
      FixedChar = True
      Size = 18
    end
    object sds_nfceNOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Size = 70
    end
    object sds_nfceIE_TRANSP: TStringField
      FieldName = 'IE_TRANSP'
    end
    object sds_nfceEND_TRANSPORTADOR: TStringField
      FieldName = 'END_TRANSPORTADOR'
      Size = 70
    end
    object sds_nfceCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 40
    end
    object sds_nfceUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Size = 2
    end
    object sds_nfceTP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object sds_nfceN_NOTA_ENTRADA: TStringField
      FieldName = 'N_NOTA_ENTRADA'
    end
    object sds_nfceIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
    end
    object sds_nfcePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object sds_nfcePAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 70
    end
    object sds_nfceCOD_SPED: TIntegerField
      FieldName = 'COD_SPED'
    end
    object sds_nfceNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sds_nfceIE: TStringField
      FieldName = 'IE'
    end
    object sds_nfceCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sds_nfceCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      Size = 7
    end
    object sds_nfceLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object sds_nfceNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sds_nfceCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object sds_nfceBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sds_nfceSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 11
    end
    object sds_nfcePAIS: TStringField
      FieldName = 'PAIS'
      Size = 11
    end
    object sds_nfceCOD_CLIENTE1: TIntegerField
      FieldName = 'COD_CLIENTE1'
    end
    object sds_nfceCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object sds_nfceCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_nfceTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sds_nfceSTATUS_INUTILIZADO: TStringField
      FieldName = 'STATUS_INUTILIZADO'
      Size = 1
    end
    object sds_nfceSTATUS_CANCELADO: TStringField
      FieldName = 'STATUS_CANCELADO'
      Size = 1
    end
    object sds_nfceSTATUS_EMAIL: TStringField
      FieldName = 'STATUS_EMAIL'
      Size = 1
    end
    object sds_nfceDEPEC: TStringField
      FieldName = 'DEPEC'
      Size = 1
    end
    object sds_nfceCHAVE2: TStringField
      FieldName = 'CHAVE2'
      Size = 70
    end
    object sds_nfceSTATUS_RETORNO: TStringField
      FieldName = 'STATUS_RETORNO'
      Size = 1
    end
    object sds_nfceJUSTIFICATIVA_CANCEL_INUTIL: TStringField
      FieldName = 'JUSTIFICATIVA_CANCEL_INUTIL'
      Size = 255
    end
  end
  object sds_nfce_anal: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_NFCE_ITENS_SPED_C190'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'NR_NOTA'
    MasterFields = 'NR_NOTA'
    MasterSource = dts_nfce
    PacketRecords = 0
    Params = <>
    Left = 664
    Top = 576
    object sds_nfce_analNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object sds_nfce_analCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_nfce_analCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object sds_nfce_analVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_nfce_analVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfce_analVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfce_analVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfce_analALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfce_analALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfce_analVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_analALIC_ICM_SUBST: TFMTBCDField
      FieldName = 'ALIC_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_analVALOR_ICM_SUBST: TFMTBCDField
      FieldName = 'VALOR_ICM_SUBST'
      Precision = 15
      Size = 2
    end
  end
  object dts_nfce_itens: TDataSource
    DataSet = sds_nfce_anal
    Left = 664
    Top = 624
  end
  object ApartamentoL: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'Select * From Apartamento, Categoria'
      '  Where APA_CodCategoria = CAT_CodCategoria')
    Left = 832
    Top = 288
    object ApartamentoLAPA_CODAPARTAMENTO: TStringField
      FieldName = 'APA_CODAPARTAMENTO'
      Origin = 'APA_CODAPARTAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object ApartamentoLAPA_APARTAMENTO: TStringField
      FieldName = 'APA_APARTAMENTO'
      Origin = 'APA_APARTAMENTO'
      Required = True
      Size = 30
    end
    object ApartamentoLAPA_SITUACAO: TStringField
      FieldName = 'APA_SITUACAO'
      Origin = 'APA_SITUACAO'
      Required = True
      Size = 10
    end
    object ApartamentoLAPA_CODENTRADA: TStringField
      FieldName = 'APA_CODENTRADA'
      Origin = 'APA_CODENTRADA'
      FixedChar = True
      Size = 6
    end
    object ApartamentoLAPA_CODCATEGORIA: TStringField
      FieldName = 'APA_CODCATEGORIA'
      Origin = 'APA_CODCATEGORIA'
      FixedChar = True
      Size = 6
    end
    object ApartamentoLCAT_CODCATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAT_CODCATEGORIA'
      Origin = 'CAT_CODCATEGORIA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object ApartamentoLCAT_CATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAT_CATEGORIA'
      Origin = 'CAT_CATEGORIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object ApartamentoLCAT_ATEPESSOAS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CAT_ATEPESSOAS'
      Origin = 'CAT_ATEPESSOAS'
      ProviderFlags = []
      ReadOnly = True
    end
    object ApartamentoLCAT_VALORDIARIA1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CAT_VALORDIARIA1'
      Origin = 'CAT_VALORDIARIA1'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object ApartamentoLCAT_VALORDIARIA2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CAT_VALORDIARIA2'
      Origin = 'CAT_VALORDIARIA2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object ApartamentoLCAT_VALORDIARIA3: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CAT_VALORDIARIA3'
      Origin = 'CAT_VALORDIARIA3'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object ApartamentoLCAT_VALORDIARIA4: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CAT_VALORDIARIA4'
      Origin = 'CAT_VALORDIARIA4'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object Sds_Inventario_iten: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select sped_inventario_itens.*, unidades.abreviatura from sped_i' +
        'nventario_itens, unidades'
      
        'where sped_inventario_itens.und_iten = unidades.codigo and sped_' +
        'inventario_itens.id_inv =:inv')
    Left = 480
    Top = 320
    ParamData = <
      item
        Name = 'INV'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Sds_Inventario_itenSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = 'SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Sds_Inventario_itenID_INV: TIntegerField
      FieldName = 'ID_INV'
      Origin = 'ID_INV'
      Required = True
    end
    object Sds_Inventario_itenCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
      Required = True
    end
    object Sds_Inventario_itenUND_ITEN: TStringField
      FieldName = 'UND_ITEN'
      Origin = 'UND_ITEN'
      Size = 5
    end
    object Sds_Inventario_itenQTD_ITEN: TFMTBCDField
      FieldName = 'QTD_ITEN'
      Origin = 'QTD_ITEN'
      Precision = 18
      Size = 3
    end
    object Sds_Inventario_itenVLR_UNIT: TFMTBCDField
      FieldName = 'VLR_UNIT'
      Origin = 'VLR_UNIT'
      Precision = 18
      Size = 2
    end
    object Sds_Inventario_itenVL_ITEM_TOTAL: TFMTBCDField
      FieldName = 'VL_ITEM_TOTAL'
      Origin = 'VL_ITEM_TOTAL'
      Precision = 18
      Size = 2
    end
    object Sds_Inventario_itenTXT_COMPLEN: TStringField
      FieldName = 'TXT_COMPLEN'
      Origin = 'TXT_COMPLEN'
      Size = 70
    end
    object Sds_Inventario_itenCOD_CONTA: TStringField
      FieldName = 'COD_CONTA'
      Origin = 'COD_CONTA'
    end
    object Sds_Inventario_itenCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Origin = 'COD_BARRAS'
      Size = 13
    end
    object Sds_Inventario_itenDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object Sds_Inventario_itenTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object Sds_Inventario_itenUND: TStringField
      FieldName = 'UND'
      Origin = 'UND'
      Size = 6
    end
    object Sds_Inventario_itenABREVIATURA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ABREVIATURA'
      Origin = 'ABREVIATURA'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
  end
  object CDS_CARTOES_1600: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM V_SPED_CARTOES_S (:Datai,:Dataf)  ')
    Left = 608
    Top = 288
    ParamData = <
      item
        Name = 'DATAI'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATAF'
        DataType = ftDate
        ParamType = ptInput
      end>
    object CDS_CARTOES_1600VALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object CDS_CARTOES_1600COD_SPED: TIntegerField
      FieldName = 'COD_SPED'
      Origin = 'COD_SPED'
    end
    object CDS_CARTOES_1600CODIGO_BANDEIRA: TIntegerField
      FieldName = 'CODIGO_BANDEIRA'
      Origin = 'CODIGO_BANDEIRA'
    end
    object CDS_CARTOES_1600EMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
  end
  object sds_sped_nfe_itens1: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from NFE_ITENS')
    Left = 112
    Top = 448
    object sds_sped_nfe_itens1NR_SEQUENCIA: TIntegerField
      FieldName = 'NR_SEQUENCIA'
      Origin = 'NR_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_sped_nfe_itens1NR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
      Required = True
    end
    object sds_sped_nfe_itens1CD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Origin = 'CD_CLIENTE'
    end
    object sds_sped_nfe_itens1COD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      Size = 15
    end
    object sds_sped_nfe_itens1COD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      Size = 11
    end
    object sds_sped_nfe_itens1DESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object sds_sped_nfe_itens1PROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object sds_sped_nfe_itens1QT_PRODUTO: TBCDField
      FieldName = 'QT_PRODUTO'
      Origin = 'QT_PRODUTO'
      Precision = 18
    end
    object sds_sped_nfe_itens1VL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Origin = 'VL_UNITARIO'
      Precision = 18
      Size = 3
    end
    object sds_sped_nfe_itens1VL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1DT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
      Origin = 'DT_LANCAMENTO'
    end
    object sds_sped_nfe_itens1PESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object sds_sped_nfe_itens1CD_ATUALIZACAO: TIntegerField
      FieldName = 'CD_ATUALIZACAO'
      Origin = 'CD_ATUALIZACAO'
    end
    object sds_sped_nfe_itens1CST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object sds_sped_nfe_itens1PC_RED_BASE_ICM: TFMTBCDField
      FieldName = 'PC_RED_BASE_ICM'
      Origin = 'PC_RED_BASE_ICM'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1ALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1ALIQ_ICM_SUBST: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST'
      Origin = 'ALIQ_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1ALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1ALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Origin = 'ALIQ_ISS'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Origin = 'VL_BASE_ICM'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Origin = 'VL_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Origin = 'VL_ISS'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1DT_ALTERACAO: TDateField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object sds_sped_nfe_itens1DESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 3
    end
    object sds_sped_nfe_itens1PERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Origin = 'PERC_DESCONTO'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Origin = 'VL_BASE_ICM_SUBST'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1CD_CONTA: TIntegerField
      FieldName = 'CD_CONTA'
      Origin = 'CD_CONTA'
    end
    object sds_sped_nfe_itens1CFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 10
    end
    object sds_sped_nfe_itens1VL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Origin = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_CONTABIL: TFMTBCDField
      FieldName = 'VL_CONTABIL'
      Origin = 'VL_CONTABIL'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Origin = 'VL_OUTROS'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_ISENTO: TFMTBCDField
      FieldName = 'VL_ISENTO'
      Origin = 'VL_ISENTO'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1ALIQ_PIS: TFMTBCDField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Origin = 'VL_BASE_PIS'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1ALIQ_COFINS: TFMTBCDField
      FieldName = 'ALIQ_COFINS'
      Origin = 'ALIQ_COFINS'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Origin = 'VL_BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Origin = 'VL_BASE_ISS'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Origin = 'VL_BASE_IPI'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1ALIQ_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'ALIQ_ICM_PROPRIO_ST'
      Origin = 'ALIQ_ICM_PROPRIO_ST'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_BASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_PROPRIO_ST'
      Origin = 'VL_BASE_ICM_PROPRIO_ST'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Origin = 'VL_ICM_PROPRIO_ST'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1ALIQ_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST_REAL'
      Origin = 'ALIQ_ICM_SUBST_REAL'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Origin = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Origin = 'VL_ICM_SUBST_REAL'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1ITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'ITEN'
    end
    object sds_sped_nfe_itens1CODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'CODIGO_PROD'
    end
    object sds_sped_nfe_itens1CST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 3
    end
    object sds_sped_nfe_itens1CST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 3
    end
    object sds_sped_nfe_itens1CST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 2
    end
    object sds_sped_nfe_itens1CEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
  end
  object SDS_Unidades: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM SP_UNIDADES (:DATAINI, :DATAFIN)')
    Left = 592
    Top = 24
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFIN'
        DataType = ftDate
        ParamType = ptInput
      end>
    object SDS_UnidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object SDS_UnidadesABREVIATURA: TStringField
      FieldName = 'ABREVIATURA'
      Origin = 'ABREVIATURA'
      Size = 6
    end
    object SDS_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
  end
  object IBS1: TFDQuery
    Connection = DM.Coneccao
    Left = 696
    Top = 48
  end
  object qrySped: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped'
      'where'
      'fk_empresa=:id and'
      'data_ini =:dtini and'
      'data_fim=:dtfim')
    Left = 940
    Top = 48
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qrySpedCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySpedDATA_INI: TDateField
      FieldName = 'DATA_INI'
      Origin = 'DATA_INI'
    end
    object qrySpedDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
      Origin = 'DATA_FIM'
    end
    object qrySpedDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
    end
    object qrySpedREMESSA: TStringField
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      Size = 1
    end
    object qrySpedSEMMOVIMENTO: TStringField
      FieldName = 'SEMMOVIMENTO'
      Origin = 'SEMMOVIMENTO'
      Size = 1
    end
    object qrySpedRECIBO: TStringField
      FieldName = 'RECIBO'
      Origin = 'RECIBO'
      Size = 41
    end
    object qrySpedFK_CONTADOR: TIntegerField
      FieldName = 'FK_CONTADOR'
      Origin = 'FK_CONTADOR'
    end
    object qrySpedFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySpedFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object qrySped_Config: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select  * from sped_config'
      'where '
      'fk_empresa=:id')
    Left = 940
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_ConfigFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_ConfigIND_PERFIL: TStringField
      FieldName = 'IND_PERFIL'
      Origin = 'IND_PERFIL'
      Size = 1
    end
    object qrySped_ConfigIND_ATIV: TStringField
      FieldName = 'IND_ATIV'
      Origin = 'IND_ATIV'
      Size = 1
    end
    object qrySped_ConfigIND_EXP: TStringField
      FieldName = 'IND_EXP'
      Origin = 'IND_EXP'
      Size = 1
    end
    object qrySped_ConfigIND_CCRF: TStringField
      FieldName = 'IND_CCRF'
      Origin = 'IND_CCRF'
      Size = 1
    end
    object qrySped_ConfigIND_COMB: TStringField
      FieldName = 'IND_COMB'
      Origin = 'IND_COMB'
      Size = 1
    end
    object qrySped_ConfigIND_USINA: TStringField
      FieldName = 'IND_USINA'
      Origin = 'IND_USINA'
      Size = 1
    end
    object qrySped_ConfigIND_VA: TStringField
      FieldName = 'IND_VA'
      Origin = 'IND_VA'
      Size = 1
    end
    object qrySped_ConfigIND_EE: TStringField
      FieldName = 'IND_EE'
      Origin = 'IND_EE'
      Size = 1
    end
    object qrySped_ConfigIND_CART: TStringField
      FieldName = 'IND_CART'
      Origin = 'IND_CART'
      Size = 1
    end
    object qrySped_ConfigIND_FORM: TStringField
      FieldName = 'IND_FORM'
      Origin = 'IND_FORM'
      Size = 1
    end
    object qrySped_ConfigIND_AER: TStringField
      FieldName = 'IND_AER'
      Origin = 'IND_AER'
      Size = 1
    end
    object qrySped_ConfigCOD_INC_TRIB: TStringField
      FieldName = 'COD_INC_TRIB'
      Origin = 'COD_INC_TRIB'
      Size = 1
    end
    object qrySped_ConfigIND_APRO_CRED: TStringField
      FieldName = 'IND_APRO_CRED'
      Origin = 'IND_APRO_CRED'
      Size = 1
    end
    object qrySped_ConfigCOD_TIPO_CONT: TStringField
      FieldName = 'COD_TIPO_CONT'
      Origin = 'COD_TIPO_CONT'
      Size = 1
    end
    object qrySped_ConfigIND_REG_CUM: TStringField
      FieldName = 'IND_REG_CUM'
      Origin = 'IND_REG_CUM'
      Size = 1
    end
    object qrySped_ConfigFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qrySped_ConfigCOD_REGIME_TRIBUTARIO: TStringField
      FieldName = 'COD_REGIME_TRIBUTARIO'
      Origin = 'COD_REGIME_TRIBUTARIO'
      Size = 1
    end
    object qrySped_ConfigREGIME_TRIBUTARIO: TStringField
      FieldName = 'REGIME_TRIBUTARIO'
      Origin = 'REGIME_TRIBUTARIO'
      Size = 1
    end
  end
  object qrySped_contador: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from contador'
      '/*where*/')
    Left = 940
    Top = 160
    object qrySped_contadorCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_contadorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qrySped_contadorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 15
    end
    object qrySped_contadorCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object qrySped_contadorCRC: TStringField
      FieldName = 'CRC'
      Origin = 'CRC'
      Size = 10
    end
    object qrySped_contadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qrySped_contadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qrySped_contadorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object qrySped_contadorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '##.###-###;0;'
      Size = 8
    end
    object qrySped_contadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object qrySped_contadorCOD_MUN: TIntegerField
      FieldName = 'COD_MUN'
      Origin = 'COD_MUN'
    end
    object qrySped_contadorFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 12
    end
    object qrySped_contadorFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 12
    end
    object qrySped_contadorEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 70
    end
    object qrySped_contadorUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qrySped_contadorFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qrySped_contadorFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
  end
  object qrySped_Produto: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_produtos'
      'WHERE'
      'FK_SPED=:D'
      ''
      'order by codigo;')
    Left = 940
    Top = 216
    ParamData = <
      item
        Name = 'D'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_ProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object qrySped_ProdutoCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Origin = 'COD_BARRAS'
      Required = True
      Size = 13
    end
    object qrySped_ProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object qrySped_ProdutoUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
    end
    object qrySped_ProdutoTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object qrySped_ProdutoCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      Size = 8
    end
    object qrySped_ProdutoALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object qrySped_ProdutoFK_SPED: TIntegerField
      FieldName = 'FK_SPED'
      Origin = 'FK_SPED'
    end
    object qrySped_ProdutoFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySped_ProdutoFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qrySped_ProdutoFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qrySped_ProdutoMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Required = True
      Size = 2
    end
    object qrySped_ProdutoANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Required = True
      Size = 4
    end
  end
  object qrySped_Participante: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_participantes'
      'where'
      'fk_sped=:sped')
    Left = 940
    Top = 272
    ParamData = <
      item
        Name = 'SPED'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_ParticipanteCOD_SPED: TIntegerField
      FieldName = 'COD_SPED'
      Origin = 'COD_SPED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_ParticipanteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
    object qrySped_ParticipanteIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qrySped_ParticipanteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Origin = 'CNPJ_CPF'
    end
    object qrySped_ParticipanteCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      Origin = 'COD_MUNICIPIO'
      Size = 7
    end
    object qrySped_ParticipanteLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      Size = 60
    end
    object qrySped_ParticipanteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qrySped_ParticipanteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 60
    end
    object qrySped_ParticipanteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 60
    end
    object qrySped_ParticipanteSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      Size = 11
    end
    object qrySped_ParticipantePAIS: TStringField
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 11
    end
    object qrySped_ParticipanteCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object qrySped_ParticipanteCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
    end
    object qrySped_ParticipanteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrySped_ParticipanteTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qrySped_ParticipanteMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object qrySped_ParticipanteANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object qrySped_ParticipanteFK_SPED: TIntegerField
      FieldName = 'FK_SPED'
      Origin = 'FK_SPED'
    end
    object qrySped_ParticipanteFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qrySped_ParticipanteCOD_PART: TIntegerField
      FieldName = 'COD_PART'
      Origin = 'COD_PART'
    end
    object qrySped_ParticipanteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      FixedChar = True
      Size = 18
    end
  end
  object qrySped_Unidade: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_unidade'
      'where'
      'FK_SPED=:ID'
      'order by unidade')
    Left = 944
    Top = 328
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_UnidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_UnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qrySped_UnidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qrySped_UnidadeFK_SPED: TIntegerField
      FieldName = 'FK_SPED'
      Origin = 'FK_SPED'
    end
    object qrySped_UnidadeFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySped_UnidadeFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object qryExecute: TFDQuery
    Connection = DM.Coneccao
    Left = 928
    Top = 400
  end
  object qrySped_C100: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_c100'
      'WHERE'
      'FK_SPED=:ID'
      'order by ind_oper,num_doc')
    Left = 921
    Top = 568
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qrySped_C100CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qrySped_C100IND_OPER: TStringField
      FieldName = 'IND_OPER'
      Origin = 'IND_OPER'
      Size = 1
    end
    object qrySped_C100IND_EMIT: TStringField
      FieldName = 'IND_EMIT'
      Origin = 'IND_EMIT'
      Size = 1
    end
    object qrySped_C100COD_MOD: TStringField
      FieldName = 'COD_MOD'
      Origin = 'COD_MOD'
      Size = 2
    end
    object qrySped_C100COD_SIT: TStringField
      FieldName = 'COD_SIT'
      Origin = 'COD_SIT'
      Size = 2
    end
    object qrySped_C100SER: TStringField
      FieldName = 'SER'
      Origin = 'SER'
      Size = 2
    end
    object qrySped_C100NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = 'NUM_DOC'
      DisplayFormat = ',0.00'
    end
    object qrySped_C100CHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Origin = 'CHV_NFE'
      Size = 50
    end
    object qrySped_C100DT_DOC: TDateField
      FieldName = 'DT_DOC'
      Origin = 'DT_DOC'
      DisplayFormat = '!99/99/0000;1;_'
    end
    object qrySped_C100DT_E_S: TDateField
      FieldName = 'DT_E_S'
      Origin = 'DT_E_S'
      DisplayFormat = '!99/99/0000;1;_'
    end
    object qrySped_C100VL_DOC: TFMTBCDField
      FieldName = 'VL_DOC'
      Origin = 'VL_DOC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100IND_PGTO: TStringField
      FieldName = 'IND_PGTO'
      Origin = 'IND_PGTO'
      Size = 1
    end
    object qrySped_C100VL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Origin = 'VL_DESC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_ABAT_NT: TFMTBCDField
      FieldName = 'VL_ABAT_NT'
      Origin = 'VL_ABAT_NT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_MERC: TFMTBCDField
      FieldName = 'VL_MERC'
      Origin = 'VL_MERC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100IND_FRT: TFMTBCDField
      FieldName = 'IND_FRT'
      Origin = 'IND_FRT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_SEGURO: TFMTBCDField
      FieldName = 'VL_SEGURO'
      Origin = 'VL_SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_OUT_DA: TFMTBCDField
      FieldName = 'VL_OUT_DA'
      Origin = 'VL_OUT_DA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_BC_ICMS: TFMTBCDField
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_BC_ICMS_ST: TFMTBCDField
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_PIS_ST: TFMTBCDField
      FieldName = 'VL_PIS_ST'
      Origin = 'VL_PIS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_COFINS_ST: TFMTBCDField
      FieldName = 'VL_COFINS_ST'
      Origin = 'VL_COFINS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      Origin = 'VL_FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100FK_PARTICIPANTES: TIntegerField
      FieldName = 'FK_PARTICIPANTES'
      Origin = 'FK_PARTICIPANTES'
      DisplayFormat = ',0.00'
    end
    object qrySped_C100FK_SPED: TIntegerField
      FieldName = 'FK_SPED'
      Origin = 'FK_SPED'
      DisplayFormat = ',0.00'
    end
    object qrySped_C100FK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qrySped_C100FK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qrySped_C100TABELA: TStringField
      FieldName = 'TABELA'
      Origin = 'TABELA'
      Size = 10
    end
    object qrySped_C100TABELA_CODIGO: TIntegerField
      FieldName = 'TABELA_CODIGO'
      Origin = 'TABELA_CODIGO'
      DisplayFormat = ',0.00'
    end
  end
  object qrySped_H010: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_h010'
      'where'
      'fk_h005=:id'
      'order  by codigo')
    Left = 932
    Top = 509
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_H010CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_H010QTD: TBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
    end
    object qrySped_H010VL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Origin = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qrySped_H010VL_ITEM: TFMTBCDField
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      Precision = 18
      Size = 2
    end
    object qrySped_H010IND_PROP: TStringField
      FieldName = 'IND_PROP'
      Origin = 'IND_PROP'
      Size = 1
    end
    object qrySped_H010COD_PART: TIntegerField
      FieldName = 'COD_PART'
      Origin = 'COD_PART'
    end
    object qrySped_H010TXT_COMPL: TStringField
      FieldName = 'TXT_COMPL'
      Origin = 'TXT_COMPL'
      Size = 100
    end
    object qrySped_H010COD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'COD_CTA'
      Size = 10
    end
    object qrySped_H010FK_H005: TIntegerField
      FieldName = 'FK_H005'
      Origin = 'FK_H005'
    end
    object qrySped_H010FK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qrySped_H010FK_UNIDADE: TIntegerField
      FieldName = 'FK_UNIDADE'
      Origin = 'FK_UNIDADE'
    end
    object qrySped_H010FK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySped_H010FK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object qrySped_C170: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_c170'
      'where'
      'fk_c100=:id'
      'order by fk_produto;')
    Left = 849
    Top = 600
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_C170CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_C170DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object qrySped_C170QTD: TBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
    end
    object qrySped_C170VL_ITEM: TFMTBCDField
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Origin = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object qrySped_C170IND_MOV: TStringField
      FieldName = 'IND_MOV'
      Origin = 'IND_MOV'
      Size = 1
    end
    object qrySped_C170CFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qrySped_C170CST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qrySped_C170COD_NAT: TStringField
      FieldName = 'COD_NAT'
      Origin = 'COD_NAT'
      Size = 10
    end
    object qrySped_C170VL_BC_ICMS: TFMTBCDField
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170ALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_BC_ICMS_ST: TFMTBCDField
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qrySped_C170ALIQ_ST: TFMTBCDField
      FieldName = 'ALIQ_ST'
      Origin = 'ALIQ_ST'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qrySped_C170IND_APUR: TStringField
      FieldName = 'IND_APUR'
      Origin = 'IND_APUR'
      Size = 1
    end
    object qrySped_C170CST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 3
    end
    object qrySped_C170COD_ENQ: TStringField
      FieldName = 'COD_ENQ'
      Origin = 'COD_ENQ'
      Size = 10
    end
    object qrySped_C170VL_BC_IPI: TFMTBCDField
      FieldName = 'VL_BC_IPI'
      Origin = 'VL_BC_IPI'
      Precision = 18
      Size = 2
    end
    object qrySped_C170ALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object qrySped_C170CST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 3
    end
    object qrySped_C170VL_BC_PIS: TFMTBCDField
      FieldName = 'VL_BC_PIS'
      Origin = 'VL_BC_PIS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170ALIQ_PIS_PERC: TBCDField
      FieldName = 'ALIQ_PIS_PERC'
      Origin = 'ALIQ_PIS_PERC'
      Precision = 18
    end
    object qrySped_C170QUANT_BC_PIS: TBCDField
      FieldName = 'QUANT_BC_PIS'
      Origin = 'QUANT_BC_PIS'
      Precision = 18
    end
    object qrySped_C170ALIQ_PIS_R: TFMTBCDField
      FieldName = 'ALIQ_PIS_R'
      Origin = 'ALIQ_PIS_R'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170CST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 3
    end
    object qrySped_C170VL_BC_COFINS: TFMTBCDField
      FieldName = 'VL_BC_COFINS'
      Origin = 'VL_BC_COFINS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170ALIQ_COFINS_PERC: TBCDField
      FieldName = 'ALIQ_COFINS_PERC'
      Origin = 'ALIQ_COFINS_PERC'
      Precision = 18
    end
    object qrySped_C170QUANT_BC_COFINS: TBCDField
      FieldName = 'QUANT_BC_COFINS'
      Origin = 'QUANT_BC_COFINS'
      Precision = 18
    end
    object qrySped_C170ALIQ_COFINS_R: TFMTBCDField
      FieldName = 'ALIQ_COFINS_R'
      Origin = 'ALIQ_COFINS_R'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170COD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'COD_CTA'
      Size = 10
    end
    object qrySped_C170VL_OPR: TFMTBCDField
      FieldName = 'VL_OPR'
      Origin = 'VL_OPR'
      Precision = 18
      Size = 2
    end
    object qrySped_C170FK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qrySped_C170FK_UNIDADE: TIntegerField
      FieldName = 'FK_UNIDADE'
      Origin = 'FK_UNIDADE'
    end
    object qrySped_C170FK_C100: TIntegerField
      FieldName = 'FK_C100'
      Origin = 'FK_C100'
    end
    object qrySped_C170FK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySped_C170FK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object qrySped_C190: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_c190'
      'where'
      'fk_c100=:reg'
      'order by cst_icms,cfop,aliq_icms')
    Left = 937
    Top = 624
    ParamData = <
      item
        Name = 'REG'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_C190CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qrySped_C190CST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qrySped_C190ALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_OPR: TFMTBCDField
      FieldName = 'VL_OPR'
      Origin = 'VL_OPR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_BC_ICMS: TFMTBCDField
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_BC_ICMS_ST: TFMTBCDField
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_RED_BC: TFMTBCDField
      FieldName = 'VL_RED_BC'
      Origin = 'VL_RED_BC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190COD_OBS: TStringField
      FieldName = 'COD_OBS'
      Origin = 'COD_OBS'
      Size = 100
    end
    object qrySped_C190CFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qrySped_C190FK_C100: TIntegerField
      FieldName = 'FK_C100'
      Origin = 'FK_C100'
      DisplayFormat = ',0.00'
    end
    object qrySped_C190FK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qrySped_C190FK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
  end
  object qrySped_H005: TFDQuery
    Connection = DM.Coneccao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_h005')
    Left = 916
    Top = 461
    object qrySped_H005CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_H005DT_INV: TFMTBCDField
      FieldName = 'DT_INV'
      Origin = 'DT_INV'
      Precision = 18
      Size = 2
    end
    object qrySped_H005FK_SPED: TIntegerField
      FieldName = 'FK_SPED'
      Origin = 'FK_SPED'
    end
    object qrySped_H005FK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySped_H005FK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qrySped_H005VL_INV: TFMTBCDField
      FieldName = 'VL_INV'
      Origin = 'VL_INV'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
end
