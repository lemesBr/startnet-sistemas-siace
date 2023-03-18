object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 704
  Width = 1004
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
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from BENS order By Codigo asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 24
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from SPED_ECF'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 208
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Left = 296
    Top = 496
  end
  object SDS_C490: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
      Origin = 'VALETROCO.COD_EMPRESA'
      Required = True
    end
    object QConsValeTrocoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'VALETROCO.CODIGO'
      Required = True
    end
    object QConsValeTrocoCUPOM: TIBStringField
      FieldName = 'CUPOM'
      Origin = 'VALETROCO.CUPOM'
      Size = 18
    end
    object QConsValeTrocoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'VALETROCO.DATA'
    end
    object QConsValeTrocoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'VALETROCO.HORA'
    end
    object QConsValeTrocoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'VALETROCO.COD_CLIENTE'
    end
    object QConsValeTrocoDEBITOCREDITO: TIBStringField
      FieldName = 'DEBITOCREDITO'
      Origin = 'VALETROCO.DEBITOCREDITO'
      FixedChar = True
      Size = 1
    end
    object QConsValeTrocoTOTAL_VENDA: TIBBCDField
      FieldName = 'TOTAL_VENDA'
      Origin = 'VALETROCO.TOTAL_VENDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoTOTAL_PAGO: TIBBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = 'VALETROCO.TOTAL_PAGO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoVALOR_UTILIZADO: TIBBCDField
      FieldName = 'VALOR_UTILIZADO'
      Origin = 'VALETROCO.VALOR_UTILIZADO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoVALOR_VALETROCO: TIBBCDField
      FieldName = 'VALOR_VALETROCO'
      Origin = 'VALETROCO.VALOR_VALETROCO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoVALIDO: TIBStringField
      FieldName = 'VALIDO'
      Origin = 'VALETROCO.VALIDO'
      FixedChar = True
      Size = 1
    end
    object QConsValeTrocoSALDO_ATUAL: TIBBCDField
      FieldName = 'SALDO_ATUAL'
      Origin = 'VALETROCO.SALDO_ATUAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'VALETROCO.NOME_CLIENTE'
      Size = 50
    end
    object QConsValeTrocoUSERCAD: TIBStringField
      FieldName = 'USERCAD'
      Origin = 'VALETROCO.USERCAD'
    end
    object QConsValeTrocoDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'VALETROCO.DATACAD'
    end
    object QConsValeTrocoNOME_RS: TIBStringField
      FieldName = 'NOME_RS'
      Origin = 'CLIENTES.NOME_RS'
      Required = True
      Size = 50
    end
    object QConsValeTrocoCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CLIENTES.CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object QConsValeTrocoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CLIENTES.ENDERECO'
      Size = 44
    end
    object QConsValeTrocoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'CLIENTES.NUMERO'
      Size = 6
    end
    object QConsValeTrocoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CLIENTES.BAIRRO'
      Size = 30
    end
    object QConsValeTrocoAPELIDO: TIBStringField
      FieldName = 'APELIDO'
      Origin = 'CLIENTES.APELIDO'
      Size = 30
    end
    object QConsValeTrocoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CLIENTES.CIDADE'
      Size = 40
    end
    object QConsValeTrocoUF: TIBStringField
      FieldName = 'UF'
      Origin = 'CLIENTES.UF'
      Size = 2
    end
    object QConsValeTrocoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = 'VALETROCO.COD_VENDA'
    end
    object QConsValeTrocoRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"CLIENTES"."RG_IE"'
      FixedChar = True
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
    Connection = DM.SQLC
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
      Origin = 'CLIENTES.CODIGO'
      Required = True
    end
    object HospedeNOME_RS: TIBStringField
      FieldName = 'NOME_RS'
      Origin = 'CLIENTES.NOME_RS'
      Required = True
      Size = 70
    end
    object HospedeENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CLIENTES.ENDERECO'
      Size = 44
    end
    object HospedeCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CLIENTES.CIDADE'
      Size = 40
    end
    object HospedeUF: TIBStringField
      FieldName = 'UF'
      Origin = 'CLIENTES.UF'
      Size = 2
    end
    object HospedeCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CLIENTES.CEP'
      FixedChar = True
      Size = 10
    end
    object HospedeTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'CLIENTES.TELEFONE'
      Size = 15
    end
    object HospedeTELEFONE2: TIBStringField
      FieldName = 'TELEFONE2'
      Origin = 'CLIENTES.TELEFONE2'
      Size = 15
    end
    object HospedeEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'CLIENTES.EMAIL'
      Size = 50
    end
    object HospedeNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
      Origin = 'CLIENTES.NASCIMENTO_IA'
    end
    object HospedeSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'CLIENTES.SEXO'
      Size = 15
    end
    object HospedeFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Origin = 'CLIENTES.FOTO_LOGOMARCA'
      Size = 8
    end
    object HospedeBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CLIENTES.BAIRRO'
      Size = 30
    end
    object HospedeRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = 'CLIENTES.RG_IE'
      FixedChar = True
      Size = 15
    end
    object HospedeFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'CLIENTES.FAX'
      Size = 15
    end
    object HospedeCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = 'CLIENTES.CELULAR'
      Size = 15
    end
    object HospedeUSERCAD: TIBStringField
      FieldName = 'USERCAD'
      Origin = 'CLIENTES.USERCAD'
    end
    object HospedeDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'CLIENTES.DATACAD'
    end
    object HospedeCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CLIENTES.CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object HospedeOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'CLIENTES.OBSERVACOES'
      Size = 8
    end
    object HospedeCREDIARIO: TIBStringField
      FieldName = 'CREDIARIO'
      Origin = 'CLIENTES.CREDIARIO'
      Size = 3
    end
    object HospedeESTADOCIVIL: TIBStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'CLIENTES.ESTADOCIVIL'
      Size = 10
    end
    object HospedeRESIDENCIA_SEDE: TIBStringField
      FieldName = 'RESIDENCIA_SEDE'
      Origin = 'CLIENTES.RESIDENCIA_SEDE'
      Size = 10
    end
    object HospedePAI: TIBStringField
      FieldName = 'PAI'
      Origin = 'CLIENTES.PAI'
      Size = 70
    end
    object HospedeMAE: TIBStringField
      FieldName = 'MAE'
      Origin = 'CLIENTES.MAE'
      Size = 70
    end
    object HospedeNOME_CONJUGE: TIBStringField
      FieldName = 'NOME_CONJUGE'
      Origin = 'CLIENTES.NOME_CONJUGE'
      Size = 70
    end
    object HospedeCPF_CONJUGE: TIBStringField
      FieldName = 'CPF_CONJUGE'
      Origin = 'CLIENTES.CPF_CONJUGE'
      FixedChar = True
      Size = 18
    end
    object HospedeNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
      Origin = 'CLIENTES.NASCIMENTO_CONJUGE'
    end
    object HospedeTRABALHO_CONJUGE: TIBStringField
      FieldName = 'TRABALHO_CONJUGE'
      Origin = 'CLIENTES.TRABALHO_CONJUGE'
      Size = 70
    end
    object HospedePROFISSAO_CONJUGE: TIBStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Origin = 'CLIENTES.PROFISSAO_CONJUGE'
      Size = 70
    end
    object HospedeLOCALTRABALHO: TIBStringField
      FieldName = 'LOCALTRABALHO'
      Origin = 'CLIENTES.LOCALTRABALHO'
      Size = 70
    end
    object HospedePROFISSAO_RA: TIBStringField
      FieldName = 'PROFISSAO_RA'
      Origin = 'CLIENTES.PROFISSAO_RA'
      Size = 70
    end
    object HospedeTELEFONE_TRABALHO: TIBStringField
      FieldName = 'TELEFONE_TRABALHO'
      Origin = 'CLIENTES.TELEFONE_TRABALHO'
      Size = 15
    end
    object HospedeFAX_TRABALHO: TIBStringField
      FieldName = 'FAX_TRABALHO'
      Origin = 'CLIENTES.FAX_TRABALHO'
      Size = 15
    end
    object HospedeOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Origin = 'CLIENTES.OBSERVACOES_TRABALHO'
      Size = 8
    end
    object HospedeBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = 'CLIENTES.BANCO'
      Size = 70
    end
    object HospedeNOME_AGENCIA: TIBStringField
      FieldName = 'NOME_AGENCIA'
      Origin = 'CLIENTES.NOME_AGENCIA'
      Size = 70
    end
    object HospedeNUMERO_AGENCIA: TIBStringField
      FieldName = 'NUMERO_AGENCIA'
      Origin = 'CLIENTES.NUMERO_AGENCIA'
      Size = 10
    end
    object HospedeCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
      Origin = 'CLIENTES.CONTA_CORRENTE'
    end
    object HospedeNOME1_REFERENCIA: TIBStringField
      FieldName = 'NOME1_REFERENCIA'
      Origin = 'CLIENTES.NOME1_REFERENCIA'
      Size = 70
    end
    object HospedeNOME2_REFERENCIA: TIBStringField
      FieldName = 'NOME2_REFERENCIA'
      Origin = 'CLIENTES.NOME2_REFERENCIA'
      Size = 70
    end
    object HospedeTELEFONE1_REFERENCIA: TIBStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Origin = 'CLIENTES.TELEFONE1_REFERENCIA'
      Size = 15
    end
    object HospedeTELEFONE2_REFERENCIA: TIBStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Origin = 'CLIENTES.TELEFONE2_REFERENCIA'
      Size = 15
    end
    object HospedeBANCO_REFERENCIA: TIBStringField
      FieldName = 'BANCO_REFERENCIA'
      Origin = 'CLIENTES.BANCO_REFERENCIA'
      Size = 70
    end
    object HospedeAPELIDO: TIBStringField
      FieldName = 'APELIDO'
      Origin = 'CLIENTES.APELIDO'
      Size = 30
    end
    object HospedeTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'CLIENTES.TIPO'
      FixedChar = True
      Size = 1
    end
    object HospedeOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Origin = 'CLIENTES.OBSERVACOES_COMERCIAIS'
      Size = 8
    end
    object HospedeOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Origin = 'CLIENTES.OBSERVACOES_BANCO'
      Size = 8
    end
    object HospedePG_CREDIARIO: TIBStringField
      FieldName = 'PG_CREDIARIO'
      Origin = 'CLIENTES.PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object HospedePG_CHEQUE: TIBStringField
      FieldName = 'PG_CHEQUE'
      Origin = 'CLIENTES.PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object HospedePG_FINANCEIRA: TIBStringField
      FieldName = 'PG_FINANCEIRA'
      Origin = 'CLIENTES.PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object HospedeREMUNERACAO: TIBBCDField
      FieldName = 'REMUNERACAO'
      Origin = 'CLIENTES.REMUNERACAO'
      Precision = 18
      Size = 2
    end
    object HospedeNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'CLIENTES.NUMERO'
      Size = 6
    end
    object HospedeCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'CLIENTES.COMPLEMENTO'
      Size = 30
    end
    object HospedeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'CLIENTES.COD_EMPRESA'
    end
    object HospedeORGAO_EMISSOR: TIBStringField
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'CLIENTES.ORGAO_EMISSOR'
      Size = 10
    end
    object HospedeDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
      Origin = 'CLIENTES.DATA_EMISSAO_RG'
    end
    object HospedeNATURALIDADE: TIBStringField
      FieldName = 'NATURALIDADE'
      Origin = 'CLIENTES.NATURALIDADE'
      Size = 40
    end
    object HospedeNATURALIDADE_UF: TIBStringField
      FieldName = 'NATURALIDADE_UF'
      Origin = 'CLIENTES.NATURALIDADE_UF'
      Size = 2
    end
    object HospedeCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'CLIENTES.COD_CIDADE'
    end
    object HospedeCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = 'CLIENTES.COD_BAIRRO'
    end
    object HospedeDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'CLIENTES.DATA_ALTERACAO'
    end
    object HospedeCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
      Origin = 'CLIENTES.COD_ZONA'
    end
    object HospedePONTO_REFERENCIA: TIBStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = 'CLIENTES.PONTO_REFERENCIA'
      Size = 200
    end
    object HospedeATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'CLIENTES.ATIVO'
      Size = 1
    end
    object HospedeCONTATO1: TIBStringField
      FieldName = 'CONTATO1'
      Origin = 'CLIENTES.CONTATO1'
      Size = 60
    end
    object HospedeCONTATO2: TIBStringField
      FieldName = 'CONTATO2'
      Origin = 'CLIENTES.CONTATO2'
      Size = 60
    end
    object HospedeCX_POSTAL: TIBStringField
      FieldName = 'CX_POSTAL'
      Origin = 'CLIENTES.CX_POSTAL'
      Size = 10
    end
    object HospedeVALOR_ALUGUEL: TIBBCDField
      FieldName = 'VALOR_ALUGUEL'
      Origin = 'CLIENTES.VALOR_ALUGUEL'
      Precision = 18
      Size = 2
    end
    object HospedeTEMPO_RESIDENCIA: TIBStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Origin = 'CLIENTES.TEMPO_RESIDENCIA'
      Size = 10
    end
    object HospedeNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
      Origin = 'CLIENTES.NUMERO_DEPENDENTES'
    end
    object HospedeENDERECO_REFERENCIA1: TIBStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Origin = 'CLIENTES.ENDERECO_REFERENCIA1'
      Size = 44
    end
    object HospedeENDERECO_REFERENCIA2: TIBStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Origin = 'CLIENTES.ENDERECO_REFERENCIA2'
      Size = 44
    end
    object HospedeDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
      Origin = 'CLIENTES.DATA_ADMISSAO_REFERENCIA1'
    end
    object HospedeDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
      Origin = 'CLIENTES.DATA_ADMISSAO_REFERENCIA2'
    end
    object HospedeRG_CONJUGUE: TIBStringField
      FieldName = 'RG_CONJUGUE'
      Origin = 'CLIENTES.RG_CONJUGUE'
      Size = 15
    end
    object HospedeRENDA_CONJUGUE: TIBBCDField
      FieldName = 'RENDA_CONJUGUE'
      Origin = 'CLIENTES.RENDA_CONJUGUE'
      Precision = 18
      Size = 2
    end
    object HospedeDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
      Origin = 'CLIENTES.DATA_ADMINSSAO_CONJUGUE'
    end
    object HospedeFONE_CONJUGUE: TIBStringField
      FieldName = 'FONE_CONJUGUE'
      Origin = 'CLIENTES.FONE_CONJUGUE'
      Size = 15
    end
    object HospedeENDERECO_COBRANCA: TIBStringField
      FieldName = 'ENDERECO_COBRANCA'
      Origin = 'CLIENTES.ENDERECO_COBRANCA'
      Size = 44
    end
    object HospedeCEP_COBRANCA: TIBStringField
      FieldName = 'CEP_COBRANCA'
      Origin = 'CLIENTES.CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object HospedeCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
      Origin = 'CLIENTES.COD_CIDADE_COBRANCA'
    end
    object HospedeCX_POSTAL_COBRANCA: TIBStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      Origin = 'CLIENTES.CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object HospedeLIMITE_DE_CREDITO: TIBBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Origin = 'CLIENTES.LIMITE_DE_CREDITO'
      Precision = 18
      Size = 2
    end
    object HospedeINSC_MUNICIPAL: TIBStringField
      FieldName = 'INSC_MUNICIPAL'
      Origin = 'CLIENTES.INSC_MUNICIPAL'
      Size = 15
    end
    object HospedePRODUTOR_RURAL: TIBStringField
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'CLIENTES.PRODUTOR_RURAL'
      Size = 1
    end
    object HospedeINSC_PRODUTOR_RURAL: TIBStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Origin = 'CLIENTES.INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object HospedeCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
      Origin = 'CLIENTES.COD_BAIRRO_COBRANCA'
    end
    object HospedeCIDADE_COBRANCA: TIBStringField
      FieldName = 'CIDADE_COBRANCA'
      Origin = 'CLIENTES.CIDADE_COBRANCA'
      Size = 40
    end
    object HospedeBAIRRO_COBRANCA: TIBStringField
      FieldName = 'BAIRRO_COBRANCA'
      Origin = 'CLIENTES.BAIRRO_COBRANCA'
      Size = 30
    end
    object HospedeUF_COBRANCA: TIBStringField
      FieldName = 'UF_COBRANCA'
      Origin = 'CLIENTES.UF_COBRANCA'
      Size = 2
    end
    object HospedeCONTA_BANCARIA: TIBStringField
      FieldName = 'CONTA_BANCARIA'
      Origin = 'CLIENTES.CONTA_BANCARIA'
    end
    object HospedeNOME_PROPRIEDADE: TIBStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = 'CLIENTES.NOME_PROPRIEDADE'
      Size = 70
    end
    object HospedeNOME_VETERINARIO: TIBStringField
      FieldName = 'NOME_VETERINARIO'
      Origin = 'CLIENTES.NOME_VETERINARIO'
      Size = 70
    end
    object HospedeSOCIO1: TIBStringField
      FieldName = 'SOCIO1'
      Origin = 'CLIENTES.SOCIO1'
      Size = 40
    end
    object HospedeCPFSOCIO1: TIBStringField
      FieldName = 'CPFSOCIO1'
      Origin = 'CLIENTES.CPFSOCIO1'
      Size = 11
    end
    object HospedeDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
      Origin = 'CLIENTES.DATANASCSOCIO1'
    end
    object HospedeSOCIO2: TIBStringField
      FieldName = 'SOCIO2'
      Origin = 'CLIENTES.SOCIO2'
      Size = 40
    end
    object HospedeCPFSOCIO2: TIBStringField
      FieldName = 'CPFSOCIO2'
      Origin = 'CLIENTES.CPFSOCIO2'
      Size = 11
    end
    object HospedeDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
      Origin = 'CLIENTES.DATANASCSOCIO2'
    end
    object HospedeSOCIO3: TIBStringField
      FieldName = 'SOCIO3'
      Origin = 'CLIENTES.SOCIO3'
      Size = 40
    end
    object HospedeCPFSOCIO3: TIBStringField
      FieldName = 'CPFSOCIO3'
      Origin = 'CLIENTES.CPFSOCIO3'
      Size = 11
    end
    object HospedeDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
      Origin = 'CLIENTES.DATANASCSOCIO3'
    end
    object HospedeSOCIO4: TIBStringField
      FieldName = 'SOCIO4'
      Origin = 'CLIENTES.SOCIO4'
      Size = 40
    end
    object HospedeCPFSOCIO4: TIBStringField
      FieldName = 'CPFSOCIO4'
      Origin = 'CLIENTES.CPFSOCIO4'
      Size = 11
    end
    object HospedeDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
      Origin = 'CLIENTES.DATANASCSOCIO4'
    end
    object HospedeDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
      Origin = 'CLIENTES.DATAFUNDACAO'
    end
    object HospedeCAPITALSOCIAL: TIBBCDField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'CLIENTES.CAPITALSOCIAL'
      Precision = 18
      Size = 2
    end
    object HospedeFATURAMENTOBRUTO: TIBBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Origin = 'CLIENTES.FATURAMENTOBRUTO'
      Precision = 18
      Size = 2
    end
    object HospedeREGJUNTACOM: TIBStringField
      FieldName = 'REGJUNTACOM'
      Origin = 'CLIENTES.REGJUNTACOM'
      Size = 12
    end
    object HospedeENDSOCIO1: TIBStringField
      FieldName = 'ENDSOCIO1'
      Origin = 'CLIENTES.ENDSOCIO1'
      Size = 40
    end
    object HospedeRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
      Origin = 'CLIENTES.RGSOCIO1'
    end
    object HospedeENDSOCIO2: TIBStringField
      FieldName = 'ENDSOCIO2'
      Origin = 'CLIENTES.ENDSOCIO2'
      Size = 40
    end
    object HospedeRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
      Origin = 'CLIENTES.RGSOCIO2'
    end
    object HospedeENDSOCIO3: TIBStringField
      FieldName = 'ENDSOCIO3'
      Origin = 'CLIENTES.ENDSOCIO3'
      Size = 40
    end
    object HospedeRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
      Origin = 'CLIENTES.RGSOCIO3'
    end
    object HospedeENDSOCIO4: TIBStringField
      FieldName = 'ENDSOCIO4'
      Origin = 'CLIENTES.ENDSOCIO4'
      Size = 40
    end
    object HospedeRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
      Origin = 'CLIENTES.RGSOCIO4'
    end
    object HospedeAUTORIZADO1: TIBStringField
      FieldName = 'AUTORIZADO1'
      Origin = 'CLIENTES.AUTORIZADO1'
      Size = 70
    end
    object HospedeAUTORIZADO2: TIBStringField
      FieldName = 'AUTORIZADO2'
      Origin = 'CLIENTES.AUTORIZADO2'
      Size = 70
    end
    object HospedeAUTORIZADO3: TIBStringField
      FieldName = 'AUTORIZADO3'
      Origin = 'CLIENTES.AUTORIZADO3'
      Size = 70
    end
    object HospedeCPF_AUT1: TIBStringField
      FieldName = 'CPF_AUT1'
      Origin = 'CLIENTES.CPF_AUT1'
      FixedChar = True
      Size = 18
    end
    object HospedeCPF_AUT2: TIBStringField
      FieldName = 'CPF_AUT2'
      Origin = 'CLIENTES.CPF_AUT2'
      FixedChar = True
      Size = 18
    end
    object HospedeCPF_AUT3: TIBStringField
      FieldName = 'CPF_AUT3'
      Origin = 'CLIENTES.CPF_AUT3'
      FixedChar = True
      Size = 18
    end
    object HospedeFUNCIONARIO: TIBStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'CLIENTES.FUNCIONARIO'
      Size = 1
    end
    object HospedeCTPS: TIBStringField
      FieldName = 'CTPS'
      Origin = 'CLIENTES.CTPS'
      Size = 15
    end
    object HospedeTESTA_CREDITO: TIBStringField
      FieldName = 'TESTA_CREDITO'
      Origin = 'CLIENTES.TESTA_CREDITO'
      Size = 1
    end
    object HospedeTESTA_LIMITE: TIBStringField
      FieldName = 'TESTA_LIMITE'
      Origin = 'CLIENTES.TESTA_LIMITE'
      Size = 1
    end
    object HospedeCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
      Origin = 'CLIENTES.COD_CONV'
    end
    object HospedeFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = 'CLIENTES.FOTO'
      Size = 80
    end
    object HospedeDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'CLIENTES.DATA_ULTIMA_COMPRA'
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
    object Apartamento23APA_CODAPARTAMENTO: TIBStringField
      FieldName = 'APA_CODAPARTAMENTO'
      Origin = '"APARTAMENTO"."APA_CODAPARTAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object Apartamento23APA_APARTAMENTO: TIBStringField
      FieldName = 'APA_APARTAMENTO'
      Origin = '"APARTAMENTO"."APA_APARTAMENTO"'
      Required = True
      Size = 30
    end
    object Apartamento23APA_SITUACAO: TIBStringField
      FieldName = 'APA_SITUACAO'
      Origin = '"APARTAMENTO"."APA_SITUACAO"'
      Size = 10
    end
    object Apartamento23APA_CODENTRADA: TIBStringField
      FieldName = 'APA_CODENTRADA'
      Origin = '"APARTAMENTO"."APA_CODENTRADA"'
      FixedChar = True
      Size = 6
    end
    object Apartamento23APA_CODCATEGORIA: TIBStringField
      FieldName = 'APA_CODCATEGORIA'
      Origin = '"APARTAMENTO"."APA_CODCATEGORIA"'
      FixedChar = True
      Size = 6
    end
    object Apartamento23RES_CODAPARTAMENTO: TIBStringField
      FieldName = 'RES_CODAPARTAMENTO'
      Origin = '"HOTEL_RESERVA"."RES_CODAPARTAMENTO"'
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
      Origin = 'LIGACAO.LIG_CONTROLE'
      Required = True
    end
    object LigacaoLIG_CODENTRADA: TIBStringField
      FieldName = 'LIG_CODENTRADA'
      Origin = 'LIGACAO.LIG_CODENTRADA'
      Required = True
      FixedChar = True
      Size = 6
    end
    object LigacaoLIG_DATALIGACAO: TDateField
      DisplayLabel = 'Data Liga'#231#227'o'
      FieldName = 'LIG_DATALIGACAO'
      Origin = 'LIGACAO.LIG_DATALIGACAO'
    end
    object LigacaoLIG_HORALIGACAO: TTimeField
      DisplayLabel = 'Hora Liga'#231#227'o'
      FieldName = 'LIG_HORALIGACAO'
      Origin = 'LIGACAO.LIG_HORALIGACAO'
    end
    object LigacaoLIG_NUMCHAMADO: TIBStringField
      DisplayLabel = 'N'#250'm. Chamado'
      FieldName = 'LIG_NUMCHAMADO'
      Origin = 'LIGACAO.LIG_NUMCHAMADO'
      Size = 30
    end
    object LigacaoLIG_MINFALADO: TIBBCDField
      DisplayLabel = 'Qtd. Min.'
      FieldName = 'LIG_MINFALADO'
      Origin = 'LIGACAO.LIG_MINFALADO'
      Required = True
      Precision = 18
      Size = 2
    end
    object LigacaoLIG_MINVALOR: TIBBCDField
      DisplayLabel = 'Vlr. Minut.'
      FieldName = 'LIG_MINVALOR'
      Origin = 'LIGACAO.LIG_MINVALOR'
      Required = True
      DisplayFormat = '###,###,##0.00'#39
      EditFormat = '###,###,##0.00'#39
      currency = True
      Precision = 18
      Size = 2
    end
    object LigacaoLIG_TOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'LIG_TOTAL'
      Origin = 'LIGACAO.LIG_TOTAL'
      DisplayFormat = '###,###,##0.00'#39
      EditFormat = '###,###,##0.00'#39
      currency = True
      Precision = 18
      Size = 4
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
      Origin = '"BAR"."BAR_CONTROLE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BarBAR_CODENTRADA: TIBStringField
      FieldName = 'BAR_CODENTRADA'
      Origin = '"BAR"."BAR_CODENTRADA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object BarBAR_CODPRODUTO: TIntegerField
      FieldName = 'BAR_CODPRODUTO'
      Origin = '"BAR"."BAR_CODPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BarBAR_COMANDA: TIBStringField
      FieldName = 'BAR_COMANDA'
      Origin = '"BAR"."BAR_COMANDA"'
      Size = 30
    end
    object BarBAR_DATA: TDateField
      FieldName = 'BAR_DATA'
      Origin = '"BAR"."BAR_DATA"'
      Required = True
    end
    object BarBAR_QUANTIDADE: TIBBCDField
      FieldName = 'BAR_QUANTIDADE'
      Origin = '"BAR"."BAR_QUANTIDADE"'
      EditFormat = '#.###'
      Precision = 18
      Size = 2
    end
    object BarBAR_VALORUNITARIO: TIBBCDField
      FieldName = 'BAR_VALORUNITARIO'
      Origin = '"BAR"."BAR_VALORUNITARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object BarBAR_VALORTOTAL: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'BAR_VALORTOTAL'
      Origin = '"BAR"."BAR_VALORTOTAL"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 4
    end
    object BarBAR_EMPRESA: TIntegerField
      FieldName = 'BAR_EMPRESA'
      Origin = '"BAR"."BAR_EMPRESA"'
    end
    object BarBAR_FRACAO: TIntegerField
      FieldName = 'BAR_FRACAO'
      Origin = '"BAR"."BAR_FRACAO"'
    end
    object BarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BarCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = '"PRODUTOS"."CODIGO_BARRAS"'
      Required = True
      FixedChar = True
      Size = 13
    end
    object BarDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTOS"."DESCRICAO"'
      Size = 70
    end
    object BarABREVIADO: TIBStringField
      FieldName = 'ABREVIADO'
      Origin = '"PRODUTOS"."ABREVIADO"'
      Size = 29
    end
    object BarPRECO_CUSTO: TIBBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = '"PRODUTOS"."PRECO_CUSTO"'
      Precision = 18
      Size = 2
    end
    object BarMARGEM_LUCRO: TIBBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = '"PRODUTOS"."MARGEM_LUCRO"'
      Precision = 18
      Size = 2
    end
    object BarCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"PRODUTOS"."COMISSAO"'
      Precision = 18
      Size = 2
    end
    object BarUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = '"PRODUTOS"."UNIDADE"'
    end
    object BarFRETE: TIBBCDField
      FieldName = 'FRETE'
      Origin = '"PRODUTOS"."FRETE"'
      Precision = 18
      Size = 2
    end
    object BarICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"PRODUTOS"."ICMS"'
      Precision = 18
      Size = 2
    end
    object BarIPI_IRPJ: TIBBCDField
      FieldName = 'IPI_IRPJ'
      Origin = '"PRODUTOS"."IPI_IRPJ"'
      Precision = 18
      Size = 2
    end
    object BarOUTROS_IMPOSTOS: TIBBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = '"PRODUTOS"."OUTROS_IMPOSTOS"'
      Precision = 18
      Size = 2
    end
    object BarDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"PRODUTOS"."DESCONTOS"'
      Precision = 18
      Size = 2
    end
    object BarCLASS_FISCAL: TIBStringField
      FieldName = 'CLASS_FISCAL'
      Origin = '"PRODUTOS"."CLASS_FISCAL"'
      Size = 6
    end
    object BarSIT_TRIBUTARIA: TIBStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = '"PRODUTOS"."SIT_TRIBUTARIA"'
      Size = 5
    end
    object BarCUSTO_MEDIO: TIBBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = '"PRODUTOS"."CUSTO_MEDIO"'
      Precision = 18
      Size = 2
    end
    object BarPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = '"PRODUTOS"."PRECO_VENDA"'
      Precision = 18
      Size = 3
    end
    object BarDESCONTO_MAXIMO: TIBBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = '"PRODUTOS"."DESCONTO_MAXIMO"'
      Precision = 18
      Size = 2
    end
    object BarCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = '"PRODUTOS"."CODIGO_GRUPO"'
    end
    object BarCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = '"PRODUTOS"."CODIGO_SUBGRUPO"'
    end
    object BarCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = '"PRODUTOS"."CODIGO_MARCA"'
    end
    object BarNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"PRODUTOS"."NOME_GRUPO"'
      Size = 40
    end
    object BarNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"PRODUTOS"."NOME_SUBGRUPO"'
      Size = 40
    end
    object BarNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"PRODUTOS"."NOME_MARCA"'
      Size = 40
    end
    object BarNOME_FORNECEDOR: TIBStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = '"PRODUTOS"."NOME_FORNECEDOR"'
      Size = 70
    end
    object BarCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = '"PRODUTOS"."CODIGO_FORNECEDORES"'
    end
    object BarFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = '"PRODUTOS"."FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object BarESTOQUE_ATUAL: TIBBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = '"PRODUTOS"."ESTOQUE_ATUAL"'
      Precision = 18
      Size = 4
    end
    object BarESTOQUE_VENDIDO: TIBBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Origin = '"PRODUTOS"."ESTOQUE_VENDIDO"'
      Precision = 18
      Size = 2
    end
    object BarESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Origin = '"PRODUTOS"."ESTOQUE"'
      Precision = 18
      Size = 4
    end
    object BarESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = '"PRODUTOS"."ESTOQUE_MINIMO"'
    end
    object BarESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = '"PRODUTOS"."ESTOQUE_MAXIMO"'
    end
    object BarDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = '"PRODUTOS"."DATACAD"'
    end
    object BarUSERCAD: TIBStringField
      FieldName = 'USERCAD'
      Origin = '"PRODUTOS"."USERCAD"'
    end
    object BarULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = '"PRODUTOS"."ULTIMACOMPRA"'
    end
    object BarSECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = '"PRODUTOS"."SECCAO"'
    end
    object BarCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = '"PRODUTOS"."CATEGORIA"'
    end
    object BarLOCALIZACAO: TIBStringField
      FieldName = 'LOCALIZACAO'
      Origin = '"PRODUTOS"."LOCALIZACAO"'
      Size = 50
    end
    object BarAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Origin = '"PRODUTOS"."APLICACAO"'
      Size = 500
    end
    object BarESP_COD_AUX: TIBStringField
      FieldName = 'ESP_COD_AUX'
      Origin = '"PRODUTOS"."ESP_COD_AUX"'
      Size = 50
    end
    object BarGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      Origin = '"PRODUTOS"."GARANTIA"'
    end
    object BarBALANCA: TIBStringField
      FieldName = 'BALANCA'
      Origin = '"PRODUTOS"."BALANCA"'
      Size = 1
    end
    object BarETIQUETA: TIBStringField
      FieldName = 'ETIQUETA'
      Origin = '"PRODUTOS"."ETIQUETA"'
      Size = 1
    end
    object BarATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"PRODUTOS"."ATIVO"'
      Size = 1
    end
    object BarREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = '"PRODUTOS"."REFERENCIA"'
      Size = 15
    end
    object BarCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = '"PRODUTOS"."COD_EMPRESA"'
    end
    object BarDESC_UNIDADE: TIBStringField
      FieldName = 'DESC_UNIDADE'
      Origin = '"PRODUTOS"."DESC_UNIDADE"'
      Size = 6
    end
    object BarPESOBRUTO: TIBBCDField
      FieldName = 'PESOBRUTO'
      Origin = '"PRODUTOS"."PESOBRUTO"'
      Precision = 18
      Size = 3
    end
    object BarPESOLIQUIDO: TIBBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = '"PRODUTOS"."PESOLIQUIDO"'
      Precision = 18
      Size = 3
    end
    object BarFONETICO: TIBStringField
      FieldName = 'FONETICO'
      Origin = '"PRODUTOS"."FONETICO"'
      Size = 60
    end
    object BarDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
      Origin = '"PRODUTOS"."DATAULTALTERACAO"'
    end
    object BarCUSTOREPOSICAO: TIBBCDField
      FieldName = 'CUSTOREPOSICAO'
      Origin = '"PRODUTOS"."CUSTOREPOSICAO"'
      Precision = 18
      Size = 2
    end
    object BarPRECO_ANT: TIBBCDField
      FieldName = 'PRECO_ANT'
      Origin = '"PRODUTOS"."PRECO_ANT"'
      Precision = 18
      Size = 3
    end
    object BarPRECO_PROMOCAO: TIBBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = '"PRODUTOS"."PRECO_PROMOCAO"'
      Precision = 18
      Size = 3
    end
    object BarFLAG_PROMOCAO: TIBStringField
      FieldName = 'FLAG_PROMOCAO'
      Origin = '"PRODUTOS"."FLAG_PROMOCAO"'
      Size = 1
    end
    object BarDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
      Origin = '"PRODUTOS"."DT_INICIO_PROMO"'
    end
    object BarDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
      Origin = '"PRODUTOS"."DT_FIM_PROMO"'
    end
    object BarCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
      Origin = '"PRODUTOS"."COD_LABORATORIO"'
    end
    object BarLABORATORIO: TIBStringField
      FieldName = 'LABORATORIO'
      Origin = '"PRODUTOS"."LABORATORIO"'
      Size = 70
    end
    object BarPRINCIPIO_ATIVO: TIBStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = '"PRODUTOS"."PRINCIPIO_ATIVO"'
      Size = 70
    end
    object BarMED_CONTROLADO: TIBStringField
      FieldName = 'MED_CONTROLADO'
      Origin = '"PRODUTOS"."MED_CONTROLADO"'
      Size = 1
    end
    object BarQTD_FRACIONADA: TIBBCDField
      FieldName = 'QTD_FRACIONADA'
      Origin = '"PRODUTOS"."QTD_FRACIONADA"'
      Precision = 18
      Size = 2
    end
    object BarQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = '"PRODUTOS"."QTD_CAIXA"'
    end
    object BarMED_GENERICO: TIBStringField
      FieldName = 'MED_GENERICO'
      Origin = '"PRODUTOS"."MED_GENERICO"'
      Size = 3
    end
    object BarLOTE_MED: TIBStringField
      FieldName = 'LOTE_MED'
      Origin = '"PRODUTOS"."LOTE_MED"'
      Size = 10
    end
    object BarVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = '"PRODUTOS"."VALIDADE"'
    end
    object BarCHEK_BOX: TIBStringField
      FieldName = 'CHEK_BOX'
      Origin = '"PRODUTOS"."CHEK_BOX"'
      Size = 1
    end
    object BarPRECO_VENDA2: TIBBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = '"PRODUTOS"."PRECO_VENDA2"'
      Precision = 18
      Size = 3
    end
    object BarMARGEM_LUCRO2: TIBBCDField
      FieldName = 'MARGEM_LUCRO2'
      Origin = '"PRODUTOS"."MARGEM_LUCRO2"'
      Precision = 18
      Size = 2
    end
    object BarVALIDADE_PRODUTO: TIBStringField
      FieldName = 'VALIDADE_PRODUTO'
      Origin = '"PRODUTOS"."VALIDADE_PRODUTO"'
      Size = 3
    end
    object BarPROD_SERV: TIBStringField
      FieldName = 'PROD_SERV'
      Origin = '"PRODUTOS"."PROD_SERV"'
      Size = 1
    end
    object BarUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
      Origin = '"PRODUTOS"."UNIDADE_ENT"'
    end
    object BarDESC_UNID_ENT: TIBStringField
      FieldName = 'DESC_UNID_ENT'
      Origin = '"PRODUTOS"."DESC_UNID_ENT"'
      Size = 6
    end
    object BarQUANT_SAIDA: TIBBCDField
      FieldName = 'QUANT_SAIDA'
      Origin = '"PRODUTOS"."QUANT_SAIDA"'
      Precision = 18
      Size = 4
    end
    object BarQUANT_ENTRADA: TIBBCDField
      FieldName = 'QUANT_ENTRADA'
      Origin = '"PRODUTOS"."QUANT_ENTRADA"'
      Precision = 18
      Size = 4
    end
    object BarESTOQUE_FRACAO: TIBBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = '"PRODUTOS"."ESTOQUE_FRACAO"'
      Precision = 18
      Size = 4
    end
    object BarDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = '"PRODUTOS"."DATA_FABRICACAO"'
    end
    object BarFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = '"PRODUTOS"."FRACAO"'
    end
    object BarNCM_SH: TIBStringField
      FieldName = 'NCM_SH'
      Origin = '"PRODUTOS"."NCM_SH"'
      Size = 8
    end
    object BarCOD_MS: TIBStringField
      FieldName = 'COD_MS'
      Origin = '"PRODUTOS"."COD_MS"'
      Size = 13
    end
    object BarCONTOLAESTOQUE: TIBStringField
      FieldName = 'CONTOLAESTOQUE'
      Origin = '"PRODUTOS"."CONTOLAESTOQUE"'
      Size = 5
    end
    object BarPRODUTOCOMPOSTO: TIBStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = '"PRODUTOS"."PRODUTOCOMPOSTO"'
      Size = 5
    end
    object BarTIPO_ATIVIDADE: TIBStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = '"PRODUTOS"."TIPO_ATIVIDADE"'
      Size = 2
    end
    object BarCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = '"PRODUTOS"."COD_PRODUTO_ESTOQUE"'
    end
    object BarCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = '"PRODUTOS"."CODIGO_LOCAL_ESTOQUE"'
    end
    object BarLISTA_ABC: TIBStringField
      FieldName = 'LISTA_ABC'
      Origin = '"PRODUTOS"."LISTA_ABC"'
      Size = 1
    end
    object BarGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = '"PRODUTOS"."GRUPO_TRIBUTACAO"'
    end
    object BarCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"PRODUTOS"."COMBUSTIVEL"'
      Size = 1
    end
    object BarCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"PRODUTOS"."COR"'
    end
    object BarENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = '"PRODUTOS"."ENABLE_NUMSERIE"'
    end
    object BarID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = '"PRODUTOS"."ID_PRODUTOS"'
    end
    object BarCOD_ANP: TIBStringField
      FieldName = 'COD_ANP'
      Origin = '"PRODUTOS"."COD_ANP"'
      Size = 9
    end
    object BarCESTA: TIBStringField
      FieldName = 'CESTA'
      Origin = '"PRODUTOS"."CESTA"'
      Size = 1
    end
    object BarML_QUANT_BEB: TIBBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = '"PRODUTOS"."ML_QUANT_BEB"'
      Precision = 18
      Size = 3
    end
    object BarUND_TRIB: TIBStringField
      FieldName = 'UND_TRIB'
      Origin = '"PRODUTOS"."UND_TRIB"'
      Size = 3
    end
    object BarCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"PRODUTOS"."CHASSI"'
      Size = 44
    end
    object BarCOR_DESC: TIBStringField
      FieldName = 'COR_DESC'
      Origin = '"PRODUTOS"."COR_DESC"'
      Size = 30
    end
    object BarN_MOTOR: TIBStringField
      FieldName = 'N_MOTOR'
      Origin = '"PRODUTOS"."N_MOTOR"'
      Size = 30
    end
    object BarANO_FAB: TIBStringField
      FieldName = 'ANO_FAB'
      Origin = '"PRODUTOS"."ANO_FAB"'
      Size = 4
    end
    object BarANO_MOD_FAB: TIBStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = '"PRODUTOS"."ANO_MOD_FAB"'
      Size = 4
    end
    object BarTIPO_VEIC: TIBStringField
      FieldName = 'TIPO_VEIC'
      Origin = '"PRODUTOS"."TIPO_VEIC"'
      Size = 10
    end
    object BarN_SERIE: TIBStringField
      FieldName = 'N_SERIE'
      Origin = '"PRODUTOS"."N_SERIE"'
      Size = 30
    end
    object BarCOD_MODELO: TIBStringField
      FieldName = 'COD_MODELO'
      Origin = '"PRODUTOS"."COD_MODELO"'
      Size = 30
    end
    object BarESPECIE_VEICULO: TIBStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = '"PRODUTOS"."ESPECIE_VEICULO"'
      Size = 10
    end
    object BarCOD_COR_DENATRAN: TIBStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = '"PRODUTOS"."COD_COR_DENATRAN"'
      Size = 10
    end
    object BarTIPO_COMBUSTIVEL: TIBStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = '"PRODUTOS"."TIPO_COMBUSTIVEL"'
      Size = 10
    end
    object BarVEICULO: TIBStringField
      FieldName = 'VEICULO'
      Origin = '"PRODUTOS"."VEICULO"'
      Size = 1
    end
  end
  object IBS1: TFDCommand
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    Left = 704
    Top = 45
  end
  object Categoria: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'Select * From Categoria Where Cat_CodCategoria = 00')
    Left = 704
    Top = 112
    object CategoriaCAT_CODCATEGORIA: TIBStringField
      FieldName = 'CAT_CODCATEGORIA'
      Origin = 'CATEGORIA.CAT_CODCATEGORIA'
      Required = True
      FixedChar = True
      Size = 6
    end
    object CategoriaCAT_CATEGORIA: TIBStringField
      FieldName = 'CAT_CATEGORIA'
      Origin = 'CATEGORIA.CAT_CATEGORIA'
      Required = True
      Size = 30
    end
    object CategoriaCAT_ATEPESSOAS: TIntegerField
      FieldName = 'CAT_ATEPESSOAS'
      Origin = 'CATEGORIA.CAT_ATEPESSOAS'
      Required = True
    end
    object CategoriaCAT_VALORDIARIA1: TIBBCDField
      FieldName = 'CAT_VALORDIARIA1'
      Origin = 'CATEGORIA.CAT_VALORDIARIA1'
      Required = True
      Precision = 18
      Size = 2
    end
    object CategoriaCAT_VALORDIARIA2: TIBBCDField
      FieldName = 'CAT_VALORDIARIA2'
      Origin = 'CATEGORIA.CAT_VALORDIARIA2'
      Required = True
      Precision = 18
      Size = 2
    end
    object CategoriaCAT_VALORDIARIA3: TIBBCDField
      FieldName = 'CAT_VALORDIARIA3'
      Origin = '"CATEGORIA"."CAT_VALORDIARIA3"'
      Precision = 18
      Size = 2
    end
    object CategoriaCAT_VALORDIARIA4: TIBBCDField
      FieldName = 'CAT_VALORDIARIA4'
      Origin = '"CATEGORIA"."CAT_VALORDIARIA4"'
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
    object CapturaErrosLOG_DATAHORA: TIBStringField
      FieldName = 'LOG_DATAHORA'
    end
    object CapturaErrosLOG_FORM: TIBStringField
      FieldName = 'LOG_FORM'
      Size = 40
    end
    object CapturaErrosLOG_CONTROLE: TIBStringField
      FieldName = 'LOG_CONTROLE'
      Size = 30
    end
    object CapturaErrosLOG_MENSAGEM: TIBStringField
      FieldName = 'LOG_MENSAGEM'
      Size = 225
    end
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
      Origin = '"PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutoCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = '"PRODUTOS"."CODIGO_BARRAS"'
      Required = True
      FixedChar = True
      Size = 13
    end
    object ProdutoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTOS"."DESCRICAO"'
      Size = 70
    end
    object ProdutoABREVIADO: TIBStringField
      FieldName = 'ABREVIADO'
      Origin = '"PRODUTOS"."ABREVIADO"'
      Size = 29
    end
    object ProdutoPRECO_CUSTO: TIBBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = '"PRODUTOS"."PRECO_CUSTO"'
      Precision = 18
      Size = 2
    end
    object ProdutoMARGEM_LUCRO: TIBBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = '"PRODUTOS"."MARGEM_LUCRO"'
      Precision = 18
      Size = 2
    end
    object ProdutoCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"PRODUTOS"."COMISSAO"'
      Precision = 18
      Size = 2
    end
    object ProdutoUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = '"PRODUTOS"."UNIDADE"'
    end
    object ProdutoFRETE: TIBBCDField
      FieldName = 'FRETE'
      Origin = '"PRODUTOS"."FRETE"'
      Precision = 18
      Size = 2
    end
    object ProdutoICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"PRODUTOS"."ICMS"'
      Precision = 18
      Size = 2
    end
    object ProdutoIPI_IRPJ: TIBBCDField
      FieldName = 'IPI_IRPJ'
      Origin = '"PRODUTOS"."IPI_IRPJ"'
      Precision = 18
      Size = 2
    end
    object ProdutoOUTROS_IMPOSTOS: TIBBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = '"PRODUTOS"."OUTROS_IMPOSTOS"'
      Precision = 18
      Size = 2
    end
    object ProdutoDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"PRODUTOS"."DESCONTOS"'
      Precision = 18
      Size = 2
    end
    object ProdutoCLASS_FISCAL: TIBStringField
      FieldName = 'CLASS_FISCAL'
      Origin = '"PRODUTOS"."CLASS_FISCAL"'
      Size = 6
    end
    object ProdutoSIT_TRIBUTARIA: TIBStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = '"PRODUTOS"."SIT_TRIBUTARIA"'
      Size = 5
    end
    object ProdutoCUSTO_MEDIO: TIBBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = '"PRODUTOS"."CUSTO_MEDIO"'
      Precision = 18
      Size = 2
    end
    object ProdutoPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = '"PRODUTOS"."PRECO_VENDA"'
      Precision = 18
      Size = 3
    end
    object ProdutoDESCONTO_MAXIMO: TIBBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = '"PRODUTOS"."DESCONTO_MAXIMO"'
      Precision = 18
      Size = 2
    end
    object ProdutoCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = '"PRODUTOS"."CODIGO_GRUPO"'
    end
    object ProdutoCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = '"PRODUTOS"."CODIGO_SUBGRUPO"'
    end
    object ProdutoCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = '"PRODUTOS"."CODIGO_MARCA"'
    end
    object ProdutoNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"PRODUTOS"."NOME_GRUPO"'
      Size = 40
    end
    object ProdutoNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"PRODUTOS"."NOME_SUBGRUPO"'
      Size = 40
    end
    object ProdutoNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"PRODUTOS"."NOME_MARCA"'
      Size = 40
    end
    object ProdutoNOME_FORNECEDOR: TIBStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = '"PRODUTOS"."NOME_FORNECEDOR"'
      Size = 70
    end
    object ProdutoCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = '"PRODUTOS"."CODIGO_FORNECEDORES"'
    end
    object ProdutoFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = '"PRODUTOS"."FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ProdutoESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Origin = '"PRODUTOS"."ESTOQUE"'
      Precision = 18
      Size = 4
    end
    object ProdutoESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = '"PRODUTOS"."ESTOQUE_MINIMO"'
    end
    object ProdutoESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = '"PRODUTOS"."ESTOQUE_MAXIMO"'
    end
    object ProdutoDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = '"PRODUTOS"."DATACAD"'
    end
    object ProdutoUSERCAD: TIBStringField
      FieldName = 'USERCAD'
      Origin = '"PRODUTOS"."USERCAD"'
    end
    object ProdutoULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = '"PRODUTOS"."ULTIMACOMPRA"'
    end
    object ProdutoSECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = '"PRODUTOS"."SECCAO"'
    end
    object ProdutoCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = '"PRODUTOS"."CATEGORIA"'
    end
    object ProdutoLOCALIZACAO: TIBStringField
      FieldName = 'LOCALIZACAO'
      Origin = '"PRODUTOS"."LOCALIZACAO"'
      Size = 50
    end
    object ProdutoAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Origin = '"PRODUTOS"."APLICACAO"'
      Size = 500
    end
    object ProdutoESP_COD_AUX: TIBStringField
      FieldName = 'ESP_COD_AUX'
      Origin = '"PRODUTOS"."ESP_COD_AUX"'
      Size = 50
    end
    object ProdutoGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      Origin = '"PRODUTOS"."GARANTIA"'
    end
    object ProdutoBALANCA: TIBStringField
      FieldName = 'BALANCA'
      Origin = '"PRODUTOS"."BALANCA"'
      Size = 1
    end
    object ProdutoETIQUETA: TIBStringField
      FieldName = 'ETIQUETA'
      Origin = '"PRODUTOS"."ETIQUETA"'
      Size = 1
    end
    object ProdutoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"PRODUTOS"."ATIVO"'
      Size = 1
    end
    object ProdutoREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = '"PRODUTOS"."REFERENCIA"'
      Size = 15
    end
    object ProdutoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = '"PRODUTOS"."COD_EMPRESA"'
    end
    object ProdutoDESC_UNIDADE: TIBStringField
      FieldName = 'DESC_UNIDADE'
      Origin = '"PRODUTOS"."DESC_UNIDADE"'
      Size = 6
    end
    object ProdutoPESOBRUTO: TIBBCDField
      FieldName = 'PESOBRUTO'
      Origin = '"PRODUTOS"."PESOBRUTO"'
      Precision = 18
      Size = 3
    end
    object ProdutoPESOLIQUIDO: TIBBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = '"PRODUTOS"."PESOLIQUIDO"'
      Precision = 18
      Size = 3
    end
    object ProdutoFONETICO: TIBStringField
      FieldName = 'FONETICO'
      Origin = '"PRODUTOS"."FONETICO"'
      Size = 60
    end
    object ProdutoDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
      Origin = '"PRODUTOS"."DATAULTALTERACAO"'
    end
    object ProdutoCUSTOREPOSICAO: TIBBCDField
      FieldName = 'CUSTOREPOSICAO'
      Origin = '"PRODUTOS"."CUSTOREPOSICAO"'
      Precision = 18
      Size = 2
    end
    object ProdutoPRECO_ANT: TIBBCDField
      FieldName = 'PRECO_ANT'
      Origin = '"PRODUTOS"."PRECO_ANT"'
      Precision = 18
      Size = 3
    end
    object ProdutoPRECO_PROMOCAO: TIBBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = '"PRODUTOS"."PRECO_PROMOCAO"'
      Precision = 18
      Size = 3
    end
    object ProdutoFLAG_PROMOCAO: TIBStringField
      FieldName = 'FLAG_PROMOCAO'
      Origin = '"PRODUTOS"."FLAG_PROMOCAO"'
      Size = 1
    end
    object ProdutoDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
      Origin = '"PRODUTOS"."DT_INICIO_PROMO"'
    end
    object ProdutoDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
      Origin = '"PRODUTOS"."DT_FIM_PROMO"'
    end
    object ProdutoCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
      Origin = '"PRODUTOS"."COD_LABORATORIO"'
    end
    object ProdutoLABORATORIO: TIBStringField
      FieldName = 'LABORATORIO'
      Origin = '"PRODUTOS"."LABORATORIO"'
      Size = 70
    end
    object ProdutoPRINCIPIO_ATIVO: TIBStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = '"PRODUTOS"."PRINCIPIO_ATIVO"'
      Size = 70
    end
    object ProdutoMED_CONTROLADO: TIBStringField
      FieldName = 'MED_CONTROLADO'
      Origin = '"PRODUTOS"."MED_CONTROLADO"'
      Size = 1
    end
    object ProdutoQTD_FRACIONADA: TIBBCDField
      FieldName = 'QTD_FRACIONADA'
      Origin = '"PRODUTOS"."QTD_FRACIONADA"'
      Precision = 18
      Size = 2
    end
    object ProdutoQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = '"PRODUTOS"."QTD_CAIXA"'
    end
    object ProdutoMED_GENERICO: TIBStringField
      FieldName = 'MED_GENERICO'
      Origin = '"PRODUTOS"."MED_GENERICO"'
      Size = 3
    end
    object ProdutoLOTE_MED: TIBStringField
      FieldName = 'LOTE_MED'
      Origin = '"PRODUTOS"."LOTE_MED"'
      Size = 10
    end
    object ProdutoVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = '"PRODUTOS"."VALIDADE"'
    end
    object ProdutoCHEK_BOX: TIBStringField
      FieldName = 'CHEK_BOX'
      Origin = '"PRODUTOS"."CHEK_BOX"'
      Size = 1
    end
    object ProdutoPRECO_VENDA2: TIBBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = '"PRODUTOS"."PRECO_VENDA2"'
      Precision = 18
      Size = 3
    end
    object ProdutoMARGEM_LUCRO2: TIBBCDField
      FieldName = 'MARGEM_LUCRO2'
      Origin = '"PRODUTOS"."MARGEM_LUCRO2"'
      Precision = 18
      Size = 2
    end
    object ProdutoVALIDADE_PRODUTO: TIBStringField
      FieldName = 'VALIDADE_PRODUTO'
      Origin = '"PRODUTOS"."VALIDADE_PRODUTO"'
      Size = 3
    end
    object ProdutoPROD_SERV: TIBStringField
      FieldName = 'PROD_SERV'
      Origin = '"PRODUTOS"."PROD_SERV"'
      Size = 1
    end
    object ProdutoUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
      Origin = '"PRODUTOS"."UNIDADE_ENT"'
    end
    object ProdutoDESC_UNID_ENT: TIBStringField
      FieldName = 'DESC_UNID_ENT'
      Origin = '"PRODUTOS"."DESC_UNID_ENT"'
      Size = 6
    end
    object ProdutoQUANT_SAIDA: TIBBCDField
      FieldName = 'QUANT_SAIDA'
      Origin = '"PRODUTOS"."QUANT_SAIDA"'
      Precision = 18
      Size = 4
    end
    object ProdutoQUANT_ENTRADA: TIBBCDField
      FieldName = 'QUANT_ENTRADA'
      Origin = '"PRODUTOS"."QUANT_ENTRADA"'
      Precision = 18
      Size = 4
    end
    object ProdutoESTOQUE_FRACAO: TIBBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = '"PRODUTOS"."ESTOQUE_FRACAO"'
      Precision = 18
      Size = 4
    end
    object ProdutoDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = '"PRODUTOS"."DATA_FABRICACAO"'
    end
    object ProdutoFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = '"PRODUTOS"."FRACAO"'
    end
    object ProdutoNCM_SH: TIBStringField
      FieldName = 'NCM_SH'
      Origin = '"PRODUTOS"."NCM_SH"'
      Size = 8
    end
    object ProdutoCOD_MS: TIBStringField
      FieldName = 'COD_MS'
      Origin = '"PRODUTOS"."COD_MS"'
      Size = 13
    end
    object ProdutoCONTOLAESTOQUE: TIBStringField
      FieldName = 'CONTOLAESTOQUE'
      Origin = '"PRODUTOS"."CONTOLAESTOQUE"'
      Size = 5
    end
    object ProdutoPRODUTOCOMPOSTO: TIBStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = '"PRODUTOS"."PRODUTOCOMPOSTO"'
      Size = 5
    end
    object ProdutoTIPO_ATIVIDADE: TIBStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = '"PRODUTOS"."TIPO_ATIVIDADE"'
      Size = 2
    end
    object ProdutoCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = '"PRODUTOS"."COD_PRODUTO_ESTOQUE"'
    end
    object ProdutoCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = '"PRODUTOS"."CODIGO_LOCAL_ESTOQUE"'
    end
    object ProdutoLISTA_ABC: TIBStringField
      FieldName = 'LISTA_ABC'
      Origin = '"PRODUTOS"."LISTA_ABC"'
      Size = 1
    end
    object ProdutoGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = '"PRODUTOS"."GRUPO_TRIBUTACAO"'
    end
    object ProdutoCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"PRODUTOS"."COMBUSTIVEL"'
      Size = 1
    end
    object ProdutoCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"PRODUTOS"."COR"'
    end
    object ProdutoENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = '"PRODUTOS"."ENABLE_NUMSERIE"'
    end
    object ProdutoID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = '"PRODUTOS"."ID_PRODUTOS"'
    end
    object ProdutoCOD_ANP: TIBStringField
      FieldName = 'COD_ANP'
      Origin = '"PRODUTOS"."COD_ANP"'
      Size = 9
    end
    object ProdutoCESTA: TIBStringField
      FieldName = 'CESTA'
      Origin = '"PRODUTOS"."CESTA"'
      Size = 1
    end
    object ProdutoML_QUANT_BEB: TIBBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = '"PRODUTOS"."ML_QUANT_BEB"'
      Precision = 18
      Size = 3
    end
    object ProdutoUND_TRIB: TIBStringField
      FieldName = 'UND_TRIB'
      Origin = '"PRODUTOS"."UND_TRIB"'
      Size = 3
    end
    object ProdutoCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"PRODUTOS"."CHASSI"'
      Size = 44
    end
    object ProdutoCOR_DESC: TIBStringField
      FieldName = 'COR_DESC'
      Origin = '"PRODUTOS"."COR_DESC"'
      Size = 30
    end
    object ProdutoN_MOTOR: TIBStringField
      FieldName = 'N_MOTOR'
      Origin = '"PRODUTOS"."N_MOTOR"'
      Size = 30
    end
    object ProdutoANO_FAB: TIBStringField
      FieldName = 'ANO_FAB'
      Origin = '"PRODUTOS"."ANO_FAB"'
      Size = 4
    end
    object ProdutoANO_MOD_FAB: TIBStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = '"PRODUTOS"."ANO_MOD_FAB"'
      Size = 4
    end
    object ProdutoTIPO_VEIC: TIBStringField
      FieldName = 'TIPO_VEIC'
      Origin = '"PRODUTOS"."TIPO_VEIC"'
      Size = 10
    end
    object ProdutoN_SERIE: TIBStringField
      FieldName = 'N_SERIE'
      Origin = '"PRODUTOS"."N_SERIE"'
      Size = 30
    end
    object ProdutoCOD_MODELO: TIBStringField
      FieldName = 'COD_MODELO'
      Origin = '"PRODUTOS"."COD_MODELO"'
      Size = 30
    end
    object ProdutoESPECIE_VEICULO: TIBStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = '"PRODUTOS"."ESPECIE_VEICULO"'
      Size = 10
    end
    object ProdutoCOD_COR_DENATRAN: TIBStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = '"PRODUTOS"."COD_COR_DENATRAN"'
      Size = 10
    end
    object ProdutoTIPO_COMBUSTIVEL: TIBStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = '"PRODUTOS"."TIPO_COMBUSTIVEL"'
      Size = 10
    end
    object ProdutoVEICULO: TIBStringField
      FieldName = 'VEICULO'
      Origin = '"PRODUTOS"."VEICULO"'
      Size = 1
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
      Origin = '"LAVANDERIA"."LAV_CONTROLE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LavanderiaLAV_CODENTRADA: TIBStringField
      FieldName = 'LAV_CODENTRADA'
      Origin = '"LAVANDERIA"."LAV_CODENTRADA"'
      Required = True
      FixedChar = True
      Size = 6
    end
    object LavanderiaLAV_CODPRODUTO: TIntegerField
      FieldName = 'LAV_CODPRODUTO'
      Origin = '"LAVANDERIA"."LAV_CODPRODUTO"'
      Required = True
    end
    object LavanderiaLAV_COMANDA: TIBStringField
      FieldName = 'LAV_COMANDA'
      Origin = '"LAVANDERIA"."LAV_COMANDA"'
      Size = 30
    end
    object LavanderiaLAV_DATA: TDateField
      FieldName = 'LAV_DATA'
      Origin = '"LAVANDERIA"."LAV_DATA"'
      Required = True
    end
    object LavanderiaLAV_QUANTIDADE: TIBBCDField
      FieldName = 'LAV_QUANTIDADE'
      Origin = '"LAVANDERIA"."LAV_QUANTIDADE"'
      DisplayFormat = '#.###'
      Precision = 18
      Size = 2
    end
    object LavanderiaLAV_VALORUNITARIO: TIBBCDField
      FieldName = 'LAV_VALORUNITARIO'
      Origin = '"LAVANDERIA"."LAV_VALORUNITARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object LavanderiaLAV_VALORTOTAL: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'LAV_VALORTOTAL'
      Origin = '"LAVANDERIA"."LAV_VALORTOTAL"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 4
    end
    object LavanderiaLAV_EMPRESA: TIntegerField
      FieldName = 'LAV_EMPRESA'
      Origin = '"LAVANDERIA"."LAV_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LavanderiaLAV_FRACAO: TIntegerField
      FieldName = 'LAV_FRACAO'
      Origin = '"LAVANDERIA"."LAV_FRACAO"'
    end
    object LavanderiaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LavanderiaCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = '"PRODUTOS"."CODIGO_BARRAS"'
      Required = True
      FixedChar = True
      Size = 13
    end
    object LavanderiaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTOS"."DESCRICAO"'
      Size = 70
    end
    object LavanderiaABREVIADO: TIBStringField
      FieldName = 'ABREVIADO'
      Origin = '"PRODUTOS"."ABREVIADO"'
      Size = 29
    end
    object LavanderiaPRECO_CUSTO: TIBBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = '"PRODUTOS"."PRECO_CUSTO"'
      Precision = 18
      Size = 2
    end
    object LavanderiaMARGEM_LUCRO: TIBBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = '"PRODUTOS"."MARGEM_LUCRO"'
      Precision = 18
      Size = 2
    end
    object LavanderiaCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"PRODUTOS"."COMISSAO"'
      Precision = 18
      Size = 2
    end
    object LavanderiaUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = '"PRODUTOS"."UNIDADE"'
    end
    object LavanderiaFRETE: TIBBCDField
      FieldName = 'FRETE'
      Origin = '"PRODUTOS"."FRETE"'
      Precision = 18
      Size = 2
    end
    object LavanderiaICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"PRODUTOS"."ICMS"'
      Precision = 18
      Size = 2
    end
    object LavanderiaIPI_IRPJ: TIBBCDField
      FieldName = 'IPI_IRPJ'
      Origin = '"PRODUTOS"."IPI_IRPJ"'
      Precision = 18
      Size = 2
    end
    object LavanderiaOUTROS_IMPOSTOS: TIBBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = '"PRODUTOS"."OUTROS_IMPOSTOS"'
      Precision = 18
      Size = 2
    end
    object LavanderiaDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"PRODUTOS"."DESCONTOS"'
      Precision = 18
      Size = 2
    end
    object LavanderiaCLASS_FISCAL: TIBStringField
      FieldName = 'CLASS_FISCAL'
      Origin = '"PRODUTOS"."CLASS_FISCAL"'
      Size = 6
    end
    object LavanderiaSIT_TRIBUTARIA: TIBStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = '"PRODUTOS"."SIT_TRIBUTARIA"'
      Size = 5
    end
    object LavanderiaCUSTO_MEDIO: TIBBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = '"PRODUTOS"."CUSTO_MEDIO"'
      Precision = 18
      Size = 2
    end
    object LavanderiaPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = '"PRODUTOS"."PRECO_VENDA"'
      Precision = 18
      Size = 3
    end
    object LavanderiaDESCONTO_MAXIMO: TIBBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = '"PRODUTOS"."DESCONTO_MAXIMO"'
      Precision = 18
      Size = 2
    end
    object LavanderiaCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = '"PRODUTOS"."CODIGO_GRUPO"'
    end
    object LavanderiaCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = '"PRODUTOS"."CODIGO_SUBGRUPO"'
    end
    object LavanderiaCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = '"PRODUTOS"."CODIGO_MARCA"'
    end
    object LavanderiaNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"PRODUTOS"."NOME_GRUPO"'
      Size = 40
    end
    object LavanderiaNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"PRODUTOS"."NOME_SUBGRUPO"'
      Size = 40
    end
    object LavanderiaNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"PRODUTOS"."NOME_MARCA"'
      Size = 40
    end
    object LavanderiaNOME_FORNECEDOR: TIBStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = '"PRODUTOS"."NOME_FORNECEDOR"'
      Size = 70
    end
    object LavanderiaCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = '"PRODUTOS"."CODIGO_FORNECEDORES"'
    end
    object LavanderiaFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = '"PRODUTOS"."FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object LavanderiaESTOQUE_ATUAL: TIBBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = '"PRODUTOS"."ESTOQUE_ATUAL"'
      Precision = 18
      Size = 4
    end
    object LavanderiaESTOQUE_VENDIDO: TIBBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Origin = '"PRODUTOS"."ESTOQUE_VENDIDO"'
      Precision = 18
      Size = 2
    end
    object LavanderiaESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Origin = '"PRODUTOS"."ESTOQUE"'
      Precision = 18
      Size = 4
    end
    object LavanderiaESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = '"PRODUTOS"."ESTOQUE_MINIMO"'
    end
    object LavanderiaESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = '"PRODUTOS"."ESTOQUE_MAXIMO"'
    end
    object LavanderiaDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = '"PRODUTOS"."DATACAD"'
    end
    object LavanderiaUSERCAD: TIBStringField
      FieldName = 'USERCAD'
      Origin = '"PRODUTOS"."USERCAD"'
    end
    object LavanderiaULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = '"PRODUTOS"."ULTIMACOMPRA"'
    end
    object LavanderiaSECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = '"PRODUTOS"."SECCAO"'
    end
    object LavanderiaCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = '"PRODUTOS"."CATEGORIA"'
    end
    object LavanderiaLOCALIZACAO: TIBStringField
      FieldName = 'LOCALIZACAO'
      Origin = '"PRODUTOS"."LOCALIZACAO"'
      Size = 50
    end
    object LavanderiaAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Origin = '"PRODUTOS"."APLICACAO"'
      Size = 500
    end
    object LavanderiaESP_COD_AUX: TIBStringField
      FieldName = 'ESP_COD_AUX'
      Origin = '"PRODUTOS"."ESP_COD_AUX"'
      Size = 50
    end
    object LavanderiaGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      Origin = '"PRODUTOS"."GARANTIA"'
    end
    object LavanderiaBALANCA: TIBStringField
      FieldName = 'BALANCA'
      Origin = '"PRODUTOS"."BALANCA"'
      Size = 1
    end
    object LavanderiaETIQUETA: TIBStringField
      FieldName = 'ETIQUETA'
      Origin = '"PRODUTOS"."ETIQUETA"'
      Size = 1
    end
    object LavanderiaATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"PRODUTOS"."ATIVO"'
      Size = 1
    end
    object LavanderiaREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = '"PRODUTOS"."REFERENCIA"'
      Size = 15
    end
    object LavanderiaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = '"PRODUTOS"."COD_EMPRESA"'
    end
    object LavanderiaDESC_UNIDADE: TIBStringField
      FieldName = 'DESC_UNIDADE'
      Origin = '"PRODUTOS"."DESC_UNIDADE"'
      Size = 6
    end
    object LavanderiaPESOBRUTO: TIBBCDField
      FieldName = 'PESOBRUTO'
      Origin = '"PRODUTOS"."PESOBRUTO"'
      Precision = 18
      Size = 3
    end
    object LavanderiaPESOLIQUIDO: TIBBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = '"PRODUTOS"."PESOLIQUIDO"'
      Precision = 18
      Size = 3
    end
    object LavanderiaFONETICO: TIBStringField
      FieldName = 'FONETICO'
      Origin = '"PRODUTOS"."FONETICO"'
      Size = 60
    end
    object LavanderiaDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
      Origin = '"PRODUTOS"."DATAULTALTERACAO"'
    end
    object LavanderiaCUSTOREPOSICAO: TIBBCDField
      FieldName = 'CUSTOREPOSICAO'
      Origin = '"PRODUTOS"."CUSTOREPOSICAO"'
      Precision = 18
      Size = 2
    end
    object LavanderiaPRECO_ANT: TIBBCDField
      FieldName = 'PRECO_ANT'
      Origin = '"PRODUTOS"."PRECO_ANT"'
      Precision = 18
      Size = 3
    end
    object LavanderiaPRECO_PROMOCAO: TIBBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = '"PRODUTOS"."PRECO_PROMOCAO"'
      Precision = 18
      Size = 3
    end
    object LavanderiaFLAG_PROMOCAO: TIBStringField
      FieldName = 'FLAG_PROMOCAO'
      Origin = '"PRODUTOS"."FLAG_PROMOCAO"'
      Size = 1
    end
    object LavanderiaDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
      Origin = '"PRODUTOS"."DT_INICIO_PROMO"'
    end
    object LavanderiaDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
      Origin = '"PRODUTOS"."DT_FIM_PROMO"'
    end
    object LavanderiaCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
      Origin = '"PRODUTOS"."COD_LABORATORIO"'
    end
    object LavanderiaLABORATORIO: TIBStringField
      FieldName = 'LABORATORIO'
      Origin = '"PRODUTOS"."LABORATORIO"'
      Size = 70
    end
    object LavanderiaPRINCIPIO_ATIVO: TIBStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = '"PRODUTOS"."PRINCIPIO_ATIVO"'
      Size = 70
    end
    object LavanderiaMED_CONTROLADO: TIBStringField
      FieldName = 'MED_CONTROLADO'
      Origin = '"PRODUTOS"."MED_CONTROLADO"'
      Size = 1
    end
    object LavanderiaQTD_FRACIONADA: TIBBCDField
      FieldName = 'QTD_FRACIONADA'
      Origin = '"PRODUTOS"."QTD_FRACIONADA"'
      Precision = 18
      Size = 2
    end
    object LavanderiaQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = '"PRODUTOS"."QTD_CAIXA"'
    end
    object LavanderiaMED_GENERICO: TIBStringField
      FieldName = 'MED_GENERICO'
      Origin = '"PRODUTOS"."MED_GENERICO"'
      Size = 3
    end
    object LavanderiaLOTE_MED: TIBStringField
      FieldName = 'LOTE_MED'
      Origin = '"PRODUTOS"."LOTE_MED"'
      Size = 10
    end
    object LavanderiaVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = '"PRODUTOS"."VALIDADE"'
    end
    object LavanderiaCHEK_BOX: TIBStringField
      FieldName = 'CHEK_BOX'
      Origin = '"PRODUTOS"."CHEK_BOX"'
      Size = 1
    end
    object LavanderiaPRECO_VENDA2: TIBBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = '"PRODUTOS"."PRECO_VENDA2"'
      Precision = 18
      Size = 3
    end
    object LavanderiaMARGEM_LUCRO2: TIBBCDField
      FieldName = 'MARGEM_LUCRO2'
      Origin = '"PRODUTOS"."MARGEM_LUCRO2"'
      Precision = 18
      Size = 2
    end
    object LavanderiaVALIDADE_PRODUTO: TIBStringField
      FieldName = 'VALIDADE_PRODUTO'
      Origin = '"PRODUTOS"."VALIDADE_PRODUTO"'
      Size = 3
    end
    object LavanderiaPROD_SERV: TIBStringField
      FieldName = 'PROD_SERV'
      Origin = '"PRODUTOS"."PROD_SERV"'
      Size = 1
    end
    object LavanderiaUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
      Origin = '"PRODUTOS"."UNIDADE_ENT"'
    end
    object LavanderiaDESC_UNID_ENT: TIBStringField
      FieldName = 'DESC_UNID_ENT'
      Origin = '"PRODUTOS"."DESC_UNID_ENT"'
      Size = 6
    end
    object LavanderiaQUANT_SAIDA: TIBBCDField
      FieldName = 'QUANT_SAIDA'
      Origin = '"PRODUTOS"."QUANT_SAIDA"'
      Precision = 18
      Size = 4
    end
    object LavanderiaQUANT_ENTRADA: TIBBCDField
      FieldName = 'QUANT_ENTRADA'
      Origin = '"PRODUTOS"."QUANT_ENTRADA"'
      Precision = 18
      Size = 4
    end
    object LavanderiaESTOQUE_FRACAO: TIBBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = '"PRODUTOS"."ESTOQUE_FRACAO"'
      Precision = 18
      Size = 4
    end
    object LavanderiaDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = '"PRODUTOS"."DATA_FABRICACAO"'
    end
    object LavanderiaFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = '"PRODUTOS"."FRACAO"'
    end
    object LavanderiaNCM_SH: TIBStringField
      FieldName = 'NCM_SH'
      Origin = '"PRODUTOS"."NCM_SH"'
      Size = 8
    end
    object LavanderiaCOD_MS: TIBStringField
      FieldName = 'COD_MS'
      Origin = '"PRODUTOS"."COD_MS"'
      Size = 13
    end
    object LavanderiaCONTOLAESTOQUE: TIBStringField
      FieldName = 'CONTOLAESTOQUE'
      Origin = '"PRODUTOS"."CONTOLAESTOQUE"'
      Size = 5
    end
    object LavanderiaPRODUTOCOMPOSTO: TIBStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = '"PRODUTOS"."PRODUTOCOMPOSTO"'
      Size = 5
    end
    object LavanderiaTIPO_ATIVIDADE: TIBStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = '"PRODUTOS"."TIPO_ATIVIDADE"'
      Size = 2
    end
    object LavanderiaCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = '"PRODUTOS"."COD_PRODUTO_ESTOQUE"'
    end
    object LavanderiaCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = '"PRODUTOS"."CODIGO_LOCAL_ESTOQUE"'
    end
    object LavanderiaLISTA_ABC: TIBStringField
      FieldName = 'LISTA_ABC'
      Origin = '"PRODUTOS"."LISTA_ABC"'
      Size = 1
    end
    object LavanderiaGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = '"PRODUTOS"."GRUPO_TRIBUTACAO"'
    end
    object LavanderiaCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"PRODUTOS"."COMBUSTIVEL"'
      Size = 1
    end
    object LavanderiaCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"PRODUTOS"."COR"'
    end
    object LavanderiaENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = '"PRODUTOS"."ENABLE_NUMSERIE"'
    end
    object LavanderiaID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = '"PRODUTOS"."ID_PRODUTOS"'
    end
    object LavanderiaCOD_ANP: TIBStringField
      FieldName = 'COD_ANP'
      Origin = '"PRODUTOS"."COD_ANP"'
      Size = 9
    end
    object LavanderiaCESTA: TIBStringField
      FieldName = 'CESTA'
      Origin = '"PRODUTOS"."CESTA"'
      Size = 1
    end
    object LavanderiaML_QUANT_BEB: TIBBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = '"PRODUTOS"."ML_QUANT_BEB"'
      Precision = 18
      Size = 3
    end
    object LavanderiaUND_TRIB: TIBStringField
      FieldName = 'UND_TRIB'
      Origin = '"PRODUTOS"."UND_TRIB"'
      Size = 3
    end
    object LavanderiaCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"PRODUTOS"."CHASSI"'
      Size = 44
    end
    object LavanderiaCOR_DESC: TIBStringField
      FieldName = 'COR_DESC'
      Origin = '"PRODUTOS"."COR_DESC"'
      Size = 30
    end
    object LavanderiaN_MOTOR: TIBStringField
      FieldName = 'N_MOTOR'
      Origin = '"PRODUTOS"."N_MOTOR"'
      Size = 30
    end
    object LavanderiaANO_FAB: TIBStringField
      FieldName = 'ANO_FAB'
      Origin = '"PRODUTOS"."ANO_FAB"'
      Size = 4
    end
    object LavanderiaANO_MOD_FAB: TIBStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = '"PRODUTOS"."ANO_MOD_FAB"'
      Size = 4
    end
    object LavanderiaTIPO_VEIC: TIBStringField
      FieldName = 'TIPO_VEIC'
      Origin = '"PRODUTOS"."TIPO_VEIC"'
      Size = 10
    end
    object LavanderiaN_SERIE: TIBStringField
      FieldName = 'N_SERIE'
      Origin = '"PRODUTOS"."N_SERIE"'
      Size = 30
    end
    object LavanderiaCOD_MODELO: TIBStringField
      FieldName = 'COD_MODELO'
      Origin = '"PRODUTOS"."COD_MODELO"'
      Size = 30
    end
    object LavanderiaESPECIE_VEICULO: TIBStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = '"PRODUTOS"."ESPECIE_VEICULO"'
      Size = 10
    end
    object LavanderiaCOD_COR_DENATRAN: TIBStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = '"PRODUTOS"."COD_COR_DENATRAN"'
      Size = 10
    end
    object LavanderiaTIPO_COMBUSTIVEL: TIBStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = '"PRODUTOS"."TIPO_COMBUSTIVEL"'
      Size = 10
    end
    object LavanderiaVEICULO: TIBStringField
      FieldName = 'VEICULO'
      Origin = '"PRODUTOS"."VEICULO"'
      Size = 1
    end
  end
  object Apartamento1: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'Select * From Apartamento Where APA_CodApartamento = 0')
    Left = 792
    Top = 280
    object Apartamento1APA_CODAPARTAMENTO: TIBStringField
      FieldName = 'APA_CODAPARTAMENTO'
      Origin = '"APARTAMENTO"."APA_CODAPARTAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object Apartamento1APA_APARTAMENTO: TIBStringField
      FieldName = 'APA_APARTAMENTO'
      Origin = '"APARTAMENTO"."APA_APARTAMENTO"'
      Required = True
      Size = 30
    end
    object Apartamento1APA_SITUACAO: TIBStringField
      FieldName = 'APA_SITUACAO'
      Origin = '"APARTAMENTO"."APA_SITUACAO"'
      Size = 10
    end
    object Apartamento1APA_CODENTRADA: TIBStringField
      FieldName = 'APA_CODENTRADA'
      Origin = '"APARTAMENTO"."APA_CODENTRADA"'
      FixedChar = True
      Size = 6
    end
    object Apartamento1APA_CODCATEGORIA: TIBStringField
      FieldName = 'APA_CODCATEGORIA'
      Origin = '"APARTAMENTO"."APA_CODCATEGORIA"'
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
    Left = 712
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
      Required = True
    end
    object sds_abastecimentosCOD_FOR: TIntegerField
      FieldName = 'COD_FOR'
    end
    object sds_abastecimentosCOD_VEI: TIntegerField
      FieldName = 'COD_VEI'
      Required = True
    end
    object sds_abastecimentosDATA: TDateField
      FieldName = 'DATA'
    end
    object sds_abastecimentosOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sds_abastecimentosCOD_PRO: TIntegerField
      FieldName = 'COD_PRO'
      Origin = 'COD_PRO'
    end
    object sds_abastecimentosQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object sds_abastecimentosV_TOTAL: TBCDField
      FieldName = 'V_TOTAL'
      Origin = 'V_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object sds_abastecimentosKM_VEIC: TIntegerField
      FieldName = 'KM_VEIC'
      Origin = 'KM_VEIC'
    end
    object sds_abastecimentosV_UNIT: TFMTBCDField
      FieldName = 'V_UNIT'
      Origin = 'V_UNIT'
      currency = True
      Precision = 18
      Size = 6
    end
    object sds_abastecimentosKM_L: TBCDField
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
    Connection = DM.SQLC
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
    Connection = DM.SQLC
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
    Left = 880
    Top = 280
    object ApartamentoLAPA_CODAPARTAMENTO: TIBStringField
      FieldName = 'APA_CODAPARTAMENTO'
      Origin = '"APARTAMENTO"."APA_CODAPARTAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object ApartamentoLAPA_APARTAMENTO: TIBStringField
      FieldName = 'APA_APARTAMENTO'
      Origin = '"APARTAMENTO"."APA_APARTAMENTO"'
      Required = True
      Size = 30
    end
    object ApartamentoLAPA_SITUACAO: TIBStringField
      FieldName = 'APA_SITUACAO'
      Origin = '"APARTAMENTO"."APA_SITUACAO"'
      Size = 10
    end
    object ApartamentoLAPA_CODENTRADA: TIBStringField
      FieldName = 'APA_CODENTRADA'
      Origin = '"APARTAMENTO"."APA_CODENTRADA"'
      FixedChar = True
      Size = 6
    end
    object ApartamentoLAPA_CODCATEGORIA: TIBStringField
      FieldName = 'APA_CODCATEGORIA'
      Origin = '"APARTAMENTO"."APA_CODCATEGORIA"'
      FixedChar = True
      Size = 6
    end
    object ApartamentoLCAT_CODCATEGORIA: TIBStringField
      FieldName = 'CAT_CODCATEGORIA'
      Origin = '"CATEGORIA"."CAT_CODCATEGORIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object ApartamentoLCAT_CATEGORIA: TIBStringField
      FieldName = 'CAT_CATEGORIA'
      Origin = '"CATEGORIA"."CAT_CATEGORIA"'
      Required = True
      Size = 30
    end
    object ApartamentoLCAT_ATEPESSOAS: TIntegerField
      FieldName = 'CAT_ATEPESSOAS'
      Origin = '"CATEGORIA"."CAT_ATEPESSOAS"'
    end
    object ApartamentoLCAT_VALORDIARIA1: TIBBCDField
      FieldName = 'CAT_VALORDIARIA1'
      Origin = '"CATEGORIA"."CAT_VALORDIARIA1"'
      Precision = 18
      Size = 2
    end
    object ApartamentoLCAT_VALORDIARIA2: TIBBCDField
      FieldName = 'CAT_VALORDIARIA2'
      Origin = '"CATEGORIA"."CAT_VALORDIARIA2"'
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
    object Sds_Inventario_itenQTD_ITEN: TBCDField
      FieldName = 'QTD_ITEN'
      Origin = 'QTD_ITEN'
      Precision = 18
      Size = 3
    end
    object Sds_Inventario_itenVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      Origin = 'VLR_UNIT'
      Precision = 18
      Size = 2
    end
    object Sds_Inventario_itenVL_ITEM_TOTAL: TBCDField
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
    object sds_sped_nfe_itens1VL_TOTAL: TBCDField
      FieldName = 'VL_TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object sds_sped_nfe_itens1VL_DESCONTO: TBCDField
      FieldName = 'VL_DESCONTO'
      Origin = 'VL_DESCONTO'
      Precision = 18
      Size = 2
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
end
