object DMOS: TDMOS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 279
  Top = 6
  Height = 708
  Width = 701
  object SDS_TipoBens: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_BENS_TIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 16
    object SDS_TipoBensID_OS_EQUIPAMENTO_TIPO: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO_TIPO'
      Required = True
    end
    object SDS_TipoBensTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object SDS_TipoBensFLAG_CHECKLIST_ACESSORIOS: TStringField
      FieldName = 'FLAG_CHECKLIST_ACESSORIOS'
      Size = 1
    end
    object SDS_TipoBensFLAG_CHECKLIST_DEFEITOS: TStringField
      FieldName = 'FLAG_CHECKLIST_DEFEITOS'
      Size = 1
    end
    object SDS_TipoBensUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_TipoBensDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object Dts_TipoBens: TDataSource
    DataSet = SDS_TipoBens
    Left = 160
    Top = 16
  end
  object SDS_OSMarcas: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_BENS_MARCAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 72
    object SDS_OSMarcasID_OS_EQUIPAMENTO_MARCAS: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO_MARCAS'
    end
    object SDS_OSMarcasMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object SDS_OSMarcasUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_OSMarcasDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_OSMarcas: TDataSource
    DataSet = SDS_OSMarcas
    Left = 160
    Top = 72
  end
  object SDS_OScor: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_BEM_COR ORDER BY COR ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 144
    object SDS_OScorID_OS_EQUIPAMENTO_COR: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO_COR'
    end
    object SDS_OScorCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object SDS_OScorUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_OScorDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_OSCOR: TDataSource
    DataSet = SDS_OScor
    Left = 160
    Top = 136
  end
  object Sds_localizacao: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_BENS_LOCAL'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 200
    object Sds_localizacaoID_OS_LOCALEQUIPAMENTO: TIntegerField
      FieldName = 'ID_OS_LOCALEQUIPAMENTO'
    end
    object Sds_localizacaoLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 30
    end
    object Sds_localizacaoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_localizacaoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object Dts_localizacao: TDataSource
    DataSet = Sds_localizacao
    Left = 168
    Top = 216
  end
  object Sds_bem: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_BENS ORDER BY ID_OS_EQUIPAMENTOS asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 288
    object Sds_bemID_OS_EQUIPAMENTOS: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTOS'
      Required = True
    end
    object Sds_bemID_OS_EQUIPAMENTO_TIPO: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO_TIPO'
    end
    object Sds_bemID_OS_EQUIPAMENTO_MARCA: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO_MARCA'
    end
    object Sds_bemMODELO: TStringField
      FieldName = 'MODELO'
      Size = 50
    end
    object Sds_bemUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_bemDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object Dts_bem: TDataSource
    DataSet = Sds_bem
    Left = 176
    Top = 288
  end
  object SDS_TPatendimento: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_TIPOATENDIMENTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 368
    object SDS_TPatendimentoID_OS_TIPO: TIntegerField
      FieldName = 'ID_OS_TIPO'
      Required = True
    end
    object SDS_TPatendimentoTIPOATENDIMENTO: TStringField
      FieldName = 'TIPOATENDIMENTO'
      Size = 30
    end
    object SDS_TPatendimentoFLAGEXTERNA: TStringField
      FieldName = 'FLAGEXTERNA'
      Size = 1
    end
    object SDS_TPatendimentoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_TPatendimentoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_TPAtendimento: TDataSource
    DataSet = SDS_TPatendimento
    Left = 168
    Top = 368
  end
  object Sds_Prioridade: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_PRIORIDADE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 448
    object Sds_PrioridadeID_OS_PRIORIDADE: TIntegerField
      FieldName = 'ID_OS_PRIORIDADE'
      Required = True
    end
    object Sds_PrioridadePRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 30
    end
    object Sds_PrioridadeUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_PrioridadeDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object Dts_Prioridade: TDataSource
    DataSet = Sds_Prioridade
    Left = 168
    Top = 448
  end
  object Sds_status: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_STATUS_ATENDIMENTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 65
    Top = 520
    object Sds_statusID_OS_STATUS: TIntegerField
      FieldName = 'ID_OS_STATUS'
      Required = True
    end
    object Sds_statusSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object Sds_statusUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_statusDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object Dts_status: TDataSource
    DataSet = Sds_status
    Left = 176
    Top = 512
  end
  object SDS_OS: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_ORDEMSERVICO order by id_os_ordemservico asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 576
    object SDS_OSID_OS_ORDEMSERVICO: TIntegerField
      FieldName = 'ID_OS_ORDEMSERVICO'
    end
    object SDS_OSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object SDS_OSID_OS_PRIORIDADE: TIntegerField
      FieldName = 'ID_OS_PRIORIDADE'
    end
    object SDS_OSID_OS_TIPOATENDIMENTO: TIntegerField
      FieldName = 'ID_OS_TIPOATENDIMENTO'
    end
    object SDS_OSID_OS_STATUS: TIntegerField
      FieldName = 'ID_OS_STATUS'
    end
    object SDS_OSID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object SDS_OSID_OS_EQUIPAMENTO: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO'
    end
    object SDS_OSID_OS_EQUIPAMENTO_COR: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO_COR'
    end
    object SDS_OSID_OS_EQUIP_LOCAL: TIntegerField
      FieldName = 'ID_OS_EQUIP_LOCAL'
    end
    object SDS_OSID_TECNICORESPONSAVEL: TIntegerField
      FieldName = 'ID_TECNICORESPONSAVEL'
    end
    object SDS_OSIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 30
    end
    object SDS_OSEQUIPAMENTO_NSERIE: TStringField
      FieldName = 'EQUIPAMENTO_NSERIE'
      Size = 50
    end
    object SDS_OSNUMERO_OS: TIntegerField
      FieldName = 'NUMERO_OS'
    end
    object SDS_OSNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 50
    end
    object SDS_OSFLAGEXTERNA: TStringField
      FieldName = 'FLAGEXTERNA'
      Size = 1
    end
    object SDS_OSDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object SDS_OSHORA_ENTRADA: TTimeField
      FieldName = 'HORA_ENTRADA'
    end
    object SDS_OSDATA_SOLUCAO: TDateField
      FieldName = 'DATA_SOLUCAO'
    end
    object SDS_OSHORA_SOLUCAO: TTimeField
      FieldName = 'HORA_SOLUCAO'
    end
    object SDS_OSCAMPO_DATAAGENDA: TDateField
      FieldName = 'CAMPO_DATAAGENDA'
    end
    object SDS_OSCAMPO_HORAAGENDA: TTimeField
      FieldName = 'CAMPO_HORAAGENDA'
    end
    object SDS_OSCAMPO_DATACHEGADA: TDateField
      FieldName = 'CAMPO_DATACHEGADA'
    end
    object SDS_OSCAMPO_HORACHEGADA: TTimeField
      FieldName = 'CAMPO_HORACHEGADA'
    end
    object SDS_OSCAMPO_DATASAIDA: TDateField
      FieldName = 'CAMPO_DATASAIDA'
    end
    object SDS_OSCAMPO_HORASAIDA: TTimeField
      FieldName = 'CAMPO_HORASAIDA'
    end
    object SDS_OSCAMPO_DATARETORNO: TDateField
      FieldName = 'CAMPO_DATARETORNO'
    end
    object SDS_OSCAMPO_HORARETORNO: TTimeField
      FieldName = 'CAMPO_HORARETORNO'
    end
    object SDS_OSCONSUMIDOR_NOME: TStringField
      FieldName = 'CONSUMIDOR_NOME'
      Size = 50
    end
    object SDS_OSCONSUMIDOR_ENDERECO: TStringField
      FieldName = 'CONSUMIDOR_ENDERECO'
      Size = 80
    end
    object SDS_OSCONSUMIDOR_CPFCNPJ: TStringField
      FieldName = 'CONSUMIDOR_CPFCNPJ'
      Size = 14
    end
    object SDS_OSCONSUMIDOR_TELEFONE: TStringField
      FieldName = 'CONSUMIDOR_TELEFONE'
      Size = 14
    end
    object SDS_OSPRAZO_DATACONCLUSAO: TDateField
      FieldName = 'PRAZO_DATACONCLUSAO'
    end
    object SDS_OSPRAZO_HORACONCLUSAO: TTimeField
      FieldName = 'PRAZO_HORACONCLUSAO'
    end
    object SDS_OSMODELO: TStringField
      FieldName = 'MODELO'
      Size = 50
    end
    object SDS_OSOBS: TStringField
      FieldName = 'OBS'
      Size = 30
    end
    object SDS_OSID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
    end
    object SDS_OSDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
    end
    object SDS_OSOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      Size = 1000
    end
    object SDS_OSOBSEQUIPAMENTO: TStringField
      FieldName = 'OBSEQUIPAMENTO'
      Size = 1000
    end
    object SDS_OSSOLUCAO: TStringField
      FieldName = 'SOLUCAO'
      Size = 1000
    end
    object SDS_OSREVENDEDOR: TStringField
      FieldName = 'REVENDEDOR'
      Size = 100
    end
    object SDS_OSMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 30
    end
    object SDS_OSGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Size = 30
    end
    object SDS_OSLACRE: TStringField
      FieldName = 'LACRE'
      Size = 30
    end
    object SDS_OSGARANTIA_CAMPO1: TStringField
      FieldName = 'GARANTIA_CAMPO1'
      Size = 30
    end
    object SDS_OSDATA_PROXIMAREVISAO: TDateField
      FieldName = 'DATA_PROXIMAREVISAO'
    end
    object SDS_OSCONSUMIDOR_RGINSCR: TStringField
      FieldName = 'CONSUMIDOR_RGINSCR'
      Size = 18
    end
    object SDS_OSHORA_INICIO_ATEND: TTimeField
      FieldName = 'HORA_INICIO_ATEND'
    end
    object SDS_OSHORA_FIM_ATEND: TTimeField
      FieldName = 'HORA_FIM_ATEND'
    end
    object SDS_OSUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_OSDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_OSID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object SDS_OSSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 15
    end
    object SDS_OSNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
    end
    object SDS_OSDATA_NOTAFISCAL: TDateField
      FieldName = 'DATA_NOTAFISCAL'
    end
    object SDS_OSKM: TIntegerField
      FieldName = 'KM'
    end
    object SDS_OSPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object SDS_OSVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 44
    end
  end
  object SPC_OS: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'INSERTCOD_OS_ORDEMSERVICO'
    Left = 256
    Top = 576
  end
  object DTS_OS: TDataSource
    DataSet = SDS_OS
    Left = 168
    Top = 576
  end
  object sds_clientes: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CLIENTES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'ID_CLIENTE'
    MasterSource = DTS_REL_OS
    PacketRecords = 0
    Params = <>
    Left = 360
    Top = 548
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
  object dts_clientes: TDataSource
    DataSet = sds_clientes
    Left = 441
    Top = 555
  end
  object DTS_REL_OS: TDataSource
    DataSet = cds_rel_os
    Left = 423
    Top = 433
  end
  object DTS_OS_PRODUTO: TDataSource
    DataSet = SDS_OS_PRODUTO
    Left = 426
    Top = 295
  end
  object SDS_OS_PRODUTO: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_PRODUTOS_SERVICOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ID_OS_ORDEMSERVICO'
    MasterFields = 'ID_OS_ORDEMSERVICO'
    MasterSource = DTS_OS
    PacketRecords = 0
    Params = <>
    AfterPost = SDS_OS_PRODUTOAfterPost
    AfterScroll = SDS_OS_PRODUTOAfterScroll
    Left = 334
    Top = 288
    object SDS_OS_PRODUTOID_OS_PRODUTOS_SERVICOS: TIntegerField
      FieldName = 'ID_OS_PRODUTOS_SERVICOS'
      Required = True
    end
    object SDS_OS_PRODUTOID_OS_ORDEMSERVICO: TIntegerField
      FieldName = 'ID_OS_ORDEMSERVICO'
    end
    object SDS_OS_PRODUTOID_OS_TECNICO: TIntegerField
      FieldName = 'ID_OS_TECNICO'
    end
    object SDS_OS_PRODUTOCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object SDS_OS_PRODUTOCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 13
    end
    object SDS_OS_PRODUTOVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      currency = True
    end
    object SDS_OS_PRODUTOQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object SDS_OS_PRODUTOPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object SDS_OS_PRODUTOVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      currency = True
    end
    object SDS_OS_PRODUTOVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      currency = True
    end
    object SDS_OS_PRODUTODESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 3
    end
    object SDS_OS_PRODUTODTFIMPROMVAREJO: TDateField
      FieldName = 'DTFIMPROMVAREJO'
    end
    object SDS_OS_PRODUTODTINICIOPROMVAREJO: TDateField
      FieldName = 'DTINICIOPROMVAREJO'
    end
    object SDS_OS_PRODUTOVALGRAMASAIDA: TFloatField
      FieldName = 'VALGRAMASAIDA'
    end
    object SDS_OS_PRODUTOESTAPROMOCAOVAREJO: TStringField
      FieldName = 'ESTAPROMOCAOVAREJO'
      Size = 1
    end
    object SDS_OS_PRODUTOEMBALAGEMSAIDA: TStringField
      FieldName = 'EMBALAGEMSAIDA'
      Size = 10
    end
    object SDS_OS_PRODUTOPRECO_ATUAL_MANTIDO: TFloatField
      FieldName = 'PRECO_ATUAL_MANTIDO'
    end
    object SDS_OS_PRODUTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object SDS_OS_PRODUTOPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_OS_PRODUTOSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_OS_PRODUTOFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_OS_PRODUTOCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 8
    end
  end
  object SDS_REL_PRODUTO: TSimpleDataSet
    Aggregates = <>
    AggregatesActive = True
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_PRODUTOS_SERVICOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ID_OS_ORDEMSERVICO'
    MasterFields = 'ID_OS_ORDEMSERVICO'
    MasterSource = DTS_REL_OS
    PacketRecords = 0
    Params = <>
    AfterPost = SDS_OS_PRODUTOAfterPost
    Left = 366
    Top = 488
    object SDS_REL_PRODUTOID_OS_PRODUTOS_SERVICOS: TIntegerField
      FieldName = 'ID_OS_PRODUTOS_SERVICOS'
      Required = True
    end
    object SDS_REL_PRODUTOID_OS_ORDEMSERVICO: TIntegerField
      FieldName = 'ID_OS_ORDEMSERVICO'
    end
    object SDS_REL_PRODUTOID_OS_TECNICO: TIntegerField
      FieldName = 'ID_OS_TECNICO'
    end
    object SDS_REL_PRODUTOCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object SDS_REL_PRODUTOCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 13
    end
    object SDS_REL_PRODUTOVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      currency = True
    end
    object SDS_REL_PRODUTOQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object SDS_REL_PRODUTOPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object SDS_REL_PRODUTOVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      currency = True
    end
    object SDS_REL_PRODUTOVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      currency = True
    end
    object SDS_REL_PRODUTODESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 3
    end
    object SDS_REL_PRODUTODTFIMPROMVAREJO: TDateField
      FieldName = 'DTFIMPROMVAREJO'
    end
    object SDS_REL_PRODUTODTINICIOPROMVAREJO: TDateField
      FieldName = 'DTINICIOPROMVAREJO'
    end
    object SDS_REL_PRODUTOVALGRAMASAIDA: TFloatField
      FieldName = 'VALGRAMASAIDA'
    end
    object SDS_REL_PRODUTOESTAPROMOCAOVAREJO: TStringField
      FieldName = 'ESTAPROMOCAOVAREJO'
      Size = 1
    end
    object SDS_REL_PRODUTOEMBALAGEMSAIDA: TStringField
      FieldName = 'EMBALAGEMSAIDA'
      Size = 10
    end
    object SDS_REL_PRODUTOPRECO_ATUAL_MANTIDO: TFloatField
      FieldName = 'PRECO_ATUAL_MANTIDO'
    end
    object SDS_REL_PRODUTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object SDS_REL_PRODUTOPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_REL_PRODUTOSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_REL_PRODUTOFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_REL_PRODUTOCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 8
    end
  end
  object DTS_REL_PRODUTO: TDataSource
    DataSet = SDS_REL_PRODUTO
    Left = 474
    Top = 487
  end
  object CDS_OS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_OS'
    Left = 528
    Top = 48
    object CDS_OSID_OS_ORDEMSERVICO: TIntegerField
      FieldName = 'ID_OS_ORDEMSERVICO'
      Required = True
    end
    object CDS_OSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object CDS_OSID_OS_PRIORIDADE: TIntegerField
      FieldName = 'ID_OS_PRIORIDADE'
    end
    object CDS_OSID_OS_TIPOATENDIMENTO: TIntegerField
      FieldName = 'ID_OS_TIPOATENDIMENTO'
    end
    object CDS_OSID_OS_STATUS: TIntegerField
      FieldName = 'ID_OS_STATUS'
    end
    object CDS_OSID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object CDS_OSID_OS_EQUIPAMENTO: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO'
    end
    object CDS_OSID_OS_EQUIPAMENTO_COR: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO_COR'
    end
    object CDS_OSID_OS_EQUIP_LOCAL: TIntegerField
      FieldName = 'ID_OS_EQUIP_LOCAL'
    end
    object CDS_OSID_TECNICORESPONSAVEL: TIntegerField
      FieldName = 'ID_TECNICORESPONSAVEL'
    end
    object CDS_OSID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object CDS_OSSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 15
    end
    object CDS_OSIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 30
    end
    object CDS_OSEQUIPAMENTO_NSERIE: TStringField
      FieldName = 'EQUIPAMENTO_NSERIE'
      Size = 50
    end
    object CDS_OSNUMERO_OS: TIntegerField
      FieldName = 'NUMERO_OS'
    end
    object CDS_OSNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 50
    end
    object CDS_OSFLAGEXTERNA: TStringField
      FieldName = 'FLAGEXTERNA'
      Size = 1
    end
    object CDS_OSDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object CDS_OSHORA_ENTRADA: TTimeField
      FieldName = 'HORA_ENTRADA'
    end
    object CDS_OSDATA_SOLUCAO: TDateField
      FieldName = 'DATA_SOLUCAO'
    end
    object CDS_OSHORA_SOLUCAO: TTimeField
      FieldName = 'HORA_SOLUCAO'
    end
    object CDS_OSCAMPO_DATAAGENDA: TDateField
      FieldName = 'CAMPO_DATAAGENDA'
    end
    object CDS_OSCAMPO_HORAAGENDA: TTimeField
      FieldName = 'CAMPO_HORAAGENDA'
    end
    object CDS_OSCAMPO_DATACHEGADA: TDateField
      FieldName = 'CAMPO_DATACHEGADA'
    end
    object CDS_OSCAMPO_HORACHEGADA: TTimeField
      FieldName = 'CAMPO_HORACHEGADA'
    end
    object CDS_OSCAMPO_DATASAIDA: TDateField
      FieldName = 'CAMPO_DATASAIDA'
    end
    object CDS_OSCAMPO_HORASAIDA: TTimeField
      FieldName = 'CAMPO_HORASAIDA'
    end
    object CDS_OSCAMPO_DATARETORNO: TDateField
      FieldName = 'CAMPO_DATARETORNO'
    end
    object CDS_OSCAMPO_HORARETORNO: TTimeField
      FieldName = 'CAMPO_HORARETORNO'
    end
    object CDS_OSCONSUMIDOR_NOME: TStringField
      FieldName = 'CONSUMIDOR_NOME'
      Size = 50
    end
    object CDS_OSCONSUMIDOR_ENDERECO: TStringField
      FieldName = 'CONSUMIDOR_ENDERECO'
      Size = 80
    end
    object CDS_OSCONSUMIDOR_CPFCNPJ: TStringField
      FieldName = 'CONSUMIDOR_CPFCNPJ'
      Size = 14
    end
    object CDS_OSCONSUMIDOR_TELEFONE: TStringField
      FieldName = 'CONSUMIDOR_TELEFONE'
      Size = 14
    end
    object CDS_OSPRAZO_DATACONCLUSAO: TDateField
      FieldName = 'PRAZO_DATACONCLUSAO'
    end
    object CDS_OSPRAZO_HORACONCLUSAO: TTimeField
      FieldName = 'PRAZO_HORACONCLUSAO'
    end
    object CDS_OSMODELO: TStringField
      FieldName = 'MODELO'
      Size = 50
    end
    object CDS_OSOBS: TStringField
      FieldName = 'OBS'
      Size = 30
    end
    object CDS_OSID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
    end
    object CDS_OSDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
    end
    object CDS_OSOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      Size = 1000
    end
    object CDS_OSOBSEQUIPAMENTO: TStringField
      FieldName = 'OBSEQUIPAMENTO'
      Size = 1000
    end
    object CDS_OSSOLUCAO: TStringField
      FieldName = 'SOLUCAO'
      Size = 1000
    end
    object CDS_OSREVENDEDOR: TStringField
      FieldName = 'REVENDEDOR'
      Size = 100
    end
    object CDS_OSMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 30
    end
    object CDS_OSGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Size = 30
    end
    object CDS_OSLACRE: TStringField
      FieldName = 'LACRE'
      Size = 30
    end
    object CDS_OSGARANTIA_CAMPO1: TStringField
      FieldName = 'GARANTIA_CAMPO1'
      Size = 30
    end
    object CDS_OSDATA_PROXIMAREVISAO: TDateField
      FieldName = 'DATA_PROXIMAREVISAO'
    end
    object CDS_OSCONSUMIDOR_RGINSCR: TStringField
      FieldName = 'CONSUMIDOR_RGINSCR'
      Size = 18
    end
    object CDS_OSHORA_INICIO_ATEND: TTimeField
      FieldName = 'HORA_INICIO_ATEND'
    end
    object CDS_OSHORA_FIM_ATEND: TTimeField
      FieldName = 'HORA_FIM_ATEND'
    end
    object CDS_OSUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object CDS_OSDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DSP_OS: TDataSetProvider
    DataSet = QRY_OS
    Left = 456
    Top = 120
  end
  object DTS_OS1: TDataSource
    DataSet = CDS_OS
    Left = 528
    Top = 120
  end
  object QRY_OS: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM OS_ORDEMSERVICO')
    SQLConnection = DM.SQLC
    Left = 456
    Top = 40
    object QRY_OSID_OS_ORDEMSERVICO: TIntegerField
      FieldName = 'ID_OS_ORDEMSERVICO'
      Required = True
    end
    object QRY_OSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object QRY_OSID_OS_PRIORIDADE: TIntegerField
      FieldName = 'ID_OS_PRIORIDADE'
    end
    object QRY_OSID_OS_TIPOATENDIMENTO: TIntegerField
      FieldName = 'ID_OS_TIPOATENDIMENTO'
    end
    object QRY_OSID_OS_STATUS: TIntegerField
      FieldName = 'ID_OS_STATUS'
    end
    object QRY_OSID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object QRY_OSID_OS_EQUIPAMENTO: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO'
    end
    object QRY_OSID_OS_EQUIPAMENTO_COR: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO_COR'
    end
    object QRY_OSID_OS_EQUIP_LOCAL: TIntegerField
      FieldName = 'ID_OS_EQUIP_LOCAL'
    end
    object QRY_OSID_TECNICORESPONSAVEL: TIntegerField
      FieldName = 'ID_TECNICORESPONSAVEL'
    end
    object QRY_OSID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object QRY_OSSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 15
    end
    object QRY_OSIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 30
    end
    object QRY_OSEQUIPAMENTO_NSERIE: TStringField
      FieldName = 'EQUIPAMENTO_NSERIE'
      Size = 50
    end
    object QRY_OSNUMERO_OS: TIntegerField
      FieldName = 'NUMERO_OS'
    end
    object QRY_OSNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 50
    end
    object QRY_OSFLAGEXTERNA: TStringField
      FieldName = 'FLAGEXTERNA'
      Size = 1
    end
    object QRY_OSDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object QRY_OSHORA_ENTRADA: TTimeField
      FieldName = 'HORA_ENTRADA'
    end
    object QRY_OSDATA_SOLUCAO: TDateField
      FieldName = 'DATA_SOLUCAO'
    end
    object QRY_OSHORA_SOLUCAO: TTimeField
      FieldName = 'HORA_SOLUCAO'
    end
    object QRY_OSCAMPO_DATAAGENDA: TDateField
      FieldName = 'CAMPO_DATAAGENDA'
    end
    object QRY_OSCAMPO_HORAAGENDA: TTimeField
      FieldName = 'CAMPO_HORAAGENDA'
    end
    object QRY_OSCAMPO_DATACHEGADA: TDateField
      FieldName = 'CAMPO_DATACHEGADA'
    end
    object QRY_OSCAMPO_HORACHEGADA: TTimeField
      FieldName = 'CAMPO_HORACHEGADA'
    end
    object QRY_OSCAMPO_DATASAIDA: TDateField
      FieldName = 'CAMPO_DATASAIDA'
    end
    object QRY_OSCAMPO_HORASAIDA: TTimeField
      FieldName = 'CAMPO_HORASAIDA'
    end
    object QRY_OSCAMPO_DATARETORNO: TDateField
      FieldName = 'CAMPO_DATARETORNO'
    end
    object QRY_OSCAMPO_HORARETORNO: TTimeField
      FieldName = 'CAMPO_HORARETORNO'
    end
    object QRY_OSCONSUMIDOR_NOME: TStringField
      FieldName = 'CONSUMIDOR_NOME'
      Size = 50
    end
    object QRY_OSCONSUMIDOR_ENDERECO: TStringField
      FieldName = 'CONSUMIDOR_ENDERECO'
      Size = 80
    end
    object QRY_OSCONSUMIDOR_CPFCNPJ: TStringField
      FieldName = 'CONSUMIDOR_CPFCNPJ'
      Size = 14
    end
    object QRY_OSCONSUMIDOR_TELEFONE: TStringField
      FieldName = 'CONSUMIDOR_TELEFONE'
      Size = 14
    end
    object QRY_OSPRAZO_DATACONCLUSAO: TDateField
      FieldName = 'PRAZO_DATACONCLUSAO'
    end
    object QRY_OSPRAZO_HORACONCLUSAO: TTimeField
      FieldName = 'PRAZO_HORACONCLUSAO'
    end
    object QRY_OSMODELO: TStringField
      FieldName = 'MODELO'
      Size = 50
    end
    object QRY_OSOBS: TStringField
      FieldName = 'OBS'
      Size = 30
    end
    object QRY_OSID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
    end
    object QRY_OSDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
    end
    object QRY_OSOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      Size = 1000
    end
    object QRY_OSOBSEQUIPAMENTO: TStringField
      FieldName = 'OBSEQUIPAMENTO'
      Size = 1000
    end
    object QRY_OSSOLUCAO: TStringField
      FieldName = 'SOLUCAO'
      Size = 1000
    end
    object QRY_OSREVENDEDOR: TStringField
      FieldName = 'REVENDEDOR'
      Size = 100
    end
    object QRY_OSMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 30
    end
    object QRY_OSGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Size = 30
    end
    object QRY_OSLACRE: TStringField
      FieldName = 'LACRE'
      Size = 30
    end
    object QRY_OSGARANTIA_CAMPO1: TStringField
      FieldName = 'GARANTIA_CAMPO1'
      Size = 30
    end
    object QRY_OSDATA_PROXIMAREVISAO: TDateField
      FieldName = 'DATA_PROXIMAREVISAO'
    end
    object QRY_OSCONSUMIDOR_RGINSCR: TStringField
      FieldName = 'CONSUMIDOR_RGINSCR'
      Size = 18
    end
    object QRY_OSHORA_INICIO_ATEND: TTimeField
      FieldName = 'HORA_INICIO_ATEND'
    end
    object QRY_OSHORA_FIM_ATEND: TTimeField
      FieldName = 'HORA_FIM_ATEND'
    end
    object QRY_OSUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object QRY_OSDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object SDS_PRODUTOS: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from OS_PRODUTOS_SERVICOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ID_OS_ORDEMSERVICO'
    MasterFields = 'ID_OS_ORDEMSERVICO'
    MasterSource = DTS_OS1
    PacketRecords = 0
    Params = <>
    AfterPost = SDS_OS_PRODUTOAfterPost
    Left = 454
    Top = 192
    object SDS_PRODUTOSID_OS_PRODUTOS_SERVICOS: TIntegerField
      FieldName = 'ID_OS_PRODUTOS_SERVICOS'
      Required = True
    end
    object SDS_PRODUTOSID_OS_ORDEMSERVICO: TIntegerField
      FieldName = 'ID_OS_ORDEMSERVICO'
    end
    object SDS_PRODUTOSID_OS_TECNICO: TIntegerField
      FieldName = 'ID_OS_TECNICO'
    end
    object SDS_PRODUTOSCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object SDS_PRODUTOSCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 13
    end
    object SDS_PRODUTOSVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      currency = True
    end
    object SDS_PRODUTOSQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object SDS_PRODUTOSPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object SDS_PRODUTOSVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      currency = True
    end
    object SDS_PRODUTOSVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      currency = True
    end
    object SDS_PRODUTOSDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 3
    end
    object SDS_PRODUTOSDTFIMPROMVAREJO: TDateField
      FieldName = 'DTFIMPROMVAREJO'
    end
    object SDS_PRODUTOSDTINICIOPROMVAREJO: TDateField
      FieldName = 'DTINICIOPROMVAREJO'
    end
    object SDS_PRODUTOSVALGRAMASAIDA: TFloatField
      FieldName = 'VALGRAMASAIDA'
    end
    object SDS_PRODUTOSESTAPROMOCAOVAREJO: TStringField
      FieldName = 'ESTAPROMOCAOVAREJO'
      Size = 1
    end
    object SDS_PRODUTOSEMBALAGEMSAIDA: TStringField
      FieldName = 'EMBALAGEMSAIDA'
      Size = 10
    end
    object SDS_PRODUTOSPRECO_ATUAL_MANTIDO: TFloatField
      FieldName = 'PRECO_ATUAL_MANTIDO'
      currency = True
    end
    object SDS_PRODUTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object SDS_PRODUTOSPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_PRODUTOSSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_PRODUTOSFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_PRODUTOSCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 8
    end
  end
  object DTS_PRODUTOS: TDataSource
    DataSet = SDS_PRODUTOS
    Left = 562
    Top = 191
  end
  object Qry_rel_os: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * from V_ORDEM_SERVICO')
    SQLConnection = DM.SQLC
    Left = 344
    Top = 368
    object Qry_rel_osID_OS_ORDEMSERVICO: TIntegerField
      FieldName = 'ID_OS_ORDEMSERVICO'
    end
    object Qry_rel_osID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object Qry_rel_osID_OS_PRIORIDADE: TIntegerField
      FieldName = 'ID_OS_PRIORIDADE'
    end
    object Qry_rel_osID_OS_TIPOATENDIMENTO: TIntegerField
      FieldName = 'ID_OS_TIPOATENDIMENTO'
    end
    object Qry_rel_osID_OS_STATUS: TIntegerField
      FieldName = 'ID_OS_STATUS'
    end
    object Qry_rel_osID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object Qry_rel_osID_OS_EQUIPAMENTO: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO'
    end
    object Qry_rel_osID_OS_EQUIPAMENTO_COR: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO_COR'
    end
    object Qry_rel_osID_OS_EQUIP_LOCAL: TIntegerField
      FieldName = 'ID_OS_EQUIP_LOCAL'
    end
    object Qry_rel_osID_TECNICORESPONSAVEL: TIntegerField
      FieldName = 'ID_TECNICORESPONSAVEL'
    end
    object Qry_rel_osID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object Qry_rel_osSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 15
    end
    object Qry_rel_osIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 30
    end
    object Qry_rel_osEQUIPAMENTO_NSERIE: TStringField
      FieldName = 'EQUIPAMENTO_NSERIE'
      Size = 50
    end
    object Qry_rel_osNUMERO_OS: TIntegerField
      FieldName = 'NUMERO_OS'
    end
    object Qry_rel_osNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 50
    end
    object Qry_rel_osFLAGEXTERNA: TStringField
      FieldName = 'FLAGEXTERNA'
      Size = 1
    end
    object Qry_rel_osDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object Qry_rel_osHORA_ENTRADA: TTimeField
      FieldName = 'HORA_ENTRADA'
    end
    object Qry_rel_osDATA_SOLUCAO: TDateField
      FieldName = 'DATA_SOLUCAO'
    end
    object Qry_rel_osHORA_SOLUCAO: TTimeField
      FieldName = 'HORA_SOLUCAO'
    end
    object Qry_rel_osCAMPO_DATAAGENDA: TDateField
      FieldName = 'CAMPO_DATAAGENDA'
    end
    object Qry_rel_osCAMPO_HORAAGENDA: TTimeField
      FieldName = 'CAMPO_HORAAGENDA'
    end
    object Qry_rel_osCAMPO_DATACHEGADA: TDateField
      FieldName = 'CAMPO_DATACHEGADA'
    end
    object Qry_rel_osCAMPO_HORACHEGADA: TTimeField
      FieldName = 'CAMPO_HORACHEGADA'
    end
    object Qry_rel_osCAMPO_DATASAIDA: TDateField
      FieldName = 'CAMPO_DATASAIDA'
    end
    object Qry_rel_osCAMPO_HORASAIDA: TTimeField
      FieldName = 'CAMPO_HORASAIDA'
    end
    object Qry_rel_osCAMPO_DATARETORNO: TDateField
      FieldName = 'CAMPO_DATARETORNO'
    end
    object Qry_rel_osCAMPO_HORARETORNO: TTimeField
      FieldName = 'CAMPO_HORARETORNO'
    end
    object Qry_rel_osCONSUMIDOR_NOME: TStringField
      FieldName = 'CONSUMIDOR_NOME'
      Size = 50
    end
    object Qry_rel_osCONSUMIDOR_ENDERECO: TStringField
      FieldName = 'CONSUMIDOR_ENDERECO'
      Size = 80
    end
    object Qry_rel_osCONSUMIDOR_CPFCNPJ: TStringField
      FieldName = 'CONSUMIDOR_CPFCNPJ'
      Size = 14
    end
    object Qry_rel_osCONSUMIDOR_TELEFONE: TStringField
      FieldName = 'CONSUMIDOR_TELEFONE'
      Size = 14
    end
    object Qry_rel_osPRAZO_DATACONCLUSAO: TDateField
      FieldName = 'PRAZO_DATACONCLUSAO'
    end
    object Qry_rel_osPRAZO_HORACONCLUSAO: TTimeField
      FieldName = 'PRAZO_HORACONCLUSAO'
    end
    object Qry_rel_osMODELO: TStringField
      FieldName = 'MODELO'
      Size = 50
    end
    object Qry_rel_osOBS: TStringField
      FieldName = 'OBS'
      Size = 30
    end
    object Qry_rel_osID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
    end
    object Qry_rel_osDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
    end
    object Qry_rel_osOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      Size = 1000
    end
    object Qry_rel_osOBSEQUIPAMENTO: TStringField
      FieldName = 'OBSEQUIPAMENTO'
      Size = 1000
    end
    object Qry_rel_osSOLUCAO: TStringField
      FieldName = 'SOLUCAO'
      Size = 1000
    end
    object Qry_rel_osREVENDEDOR: TStringField
      FieldName = 'REVENDEDOR'
      Size = 100
    end
    object Qry_rel_osMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 30
    end
    object Qry_rel_osGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Size = 30
    end
    object Qry_rel_osLACRE: TStringField
      FieldName = 'LACRE'
      Size = 30
    end
    object Qry_rel_osGARANTIA_CAMPO1: TStringField
      FieldName = 'GARANTIA_CAMPO1'
      Size = 30
    end
    object Qry_rel_osDATA_PROXIMAREVISAO: TDateField
      FieldName = 'DATA_PROXIMAREVISAO'
    end
    object Qry_rel_osCONSUMIDOR_RGINSCR: TStringField
      FieldName = 'CONSUMIDOR_RGINSCR'
      Size = 18
    end
    object Qry_rel_osHORA_INICIO_ATEND: TTimeField
      FieldName = 'HORA_INICIO_ATEND'
    end
    object Qry_rel_osHORA_FIM_ATEND: TTimeField
      FieldName = 'HORA_FIM_ATEND'
    end
    object Qry_rel_osUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Qry_rel_osDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Qry_rel_osUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Qry_rel_osMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object Qry_rel_osLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 30
    end
    object Qry_rel_osCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object Qry_rel_osMODELO1: TStringField
      FieldName = 'MODELO1'
      Size = 50
    end
    object Qry_rel_osSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object Qry_rel_osTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object Qry_rel_osPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 30
    end
    object Qry_rel_osID_OS_PRIORIDADE1: TIntegerField
      FieldName = 'ID_OS_PRIORIDADE1'
    end
    object Qry_rel_osUSERCAD1: TStringField
      FieldName = 'USERCAD1'
    end
    object Qry_rel_osDATACAD1: TDateField
      FieldName = 'DATACAD1'
    end
    object Qry_rel_osTIPOATENDIMENTO: TStringField
      FieldName = 'TIPOATENDIMENTO'
      Size = 30
    end
    object Qry_rel_osKM: TIntegerField
      FieldName = 'KM'
    end
    object Qry_rel_osPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object Qry_rel_osVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 44
    end
  end
  object dsp_rel_os: TDataSetProvider
    DataSet = Qry_rel_os
    Left = 416
    Top = 371
  end
  object cds_rel_os: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_rel_os'
    Left = 352
    Top = 427
    object cds_rel_osID_OS_ORDEMSERVICO: TIntegerField
      FieldName = 'ID_OS_ORDEMSERVICO'
    end
    object cds_rel_osID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object cds_rel_osID_OS_PRIORIDADE: TIntegerField
      FieldName = 'ID_OS_PRIORIDADE'
    end
    object cds_rel_osID_OS_TIPOATENDIMENTO: TIntegerField
      FieldName = 'ID_OS_TIPOATENDIMENTO'
    end
    object cds_rel_osID_OS_STATUS: TIntegerField
      FieldName = 'ID_OS_STATUS'
    end
    object cds_rel_osID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cds_rel_osID_OS_EQUIPAMENTO: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO'
    end
    object cds_rel_osID_OS_EQUIPAMENTO_COR: TIntegerField
      FieldName = 'ID_OS_EQUIPAMENTO_COR'
    end
    object cds_rel_osID_OS_EQUIP_LOCAL: TIntegerField
      FieldName = 'ID_OS_EQUIP_LOCAL'
    end
    object cds_rel_osID_TECNICORESPONSAVEL: TIntegerField
      FieldName = 'ID_TECNICORESPONSAVEL'
    end
    object cds_rel_osID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cds_rel_osSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 15
    end
    object cds_rel_osIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 30
    end
    object cds_rel_osEQUIPAMENTO_NSERIE: TStringField
      FieldName = 'EQUIPAMENTO_NSERIE'
      Size = 50
    end
    object cds_rel_osNUMERO_OS: TIntegerField
      FieldName = 'NUMERO_OS'
    end
    object cds_rel_osNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 50
    end
    object cds_rel_osFLAGEXTERNA: TStringField
      FieldName = 'FLAGEXTERNA'
      Size = 1
    end
    object cds_rel_osDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object cds_rel_osHORA_ENTRADA: TTimeField
      FieldName = 'HORA_ENTRADA'
    end
    object cds_rel_osDATA_SOLUCAO: TDateField
      FieldName = 'DATA_SOLUCAO'
    end
    object cds_rel_osHORA_SOLUCAO: TTimeField
      FieldName = 'HORA_SOLUCAO'
    end
    object cds_rel_osCAMPO_DATAAGENDA: TDateField
      FieldName = 'CAMPO_DATAAGENDA'
    end
    object cds_rel_osCAMPO_HORAAGENDA: TTimeField
      FieldName = 'CAMPO_HORAAGENDA'
    end
    object cds_rel_osCAMPO_DATACHEGADA: TDateField
      FieldName = 'CAMPO_DATACHEGADA'
    end
    object cds_rel_osCAMPO_HORACHEGADA: TTimeField
      FieldName = 'CAMPO_HORACHEGADA'
    end
    object cds_rel_osCAMPO_DATASAIDA: TDateField
      FieldName = 'CAMPO_DATASAIDA'
    end
    object cds_rel_osCAMPO_HORASAIDA: TTimeField
      FieldName = 'CAMPO_HORASAIDA'
    end
    object cds_rel_osCAMPO_DATARETORNO: TDateField
      FieldName = 'CAMPO_DATARETORNO'
    end
    object cds_rel_osCAMPO_HORARETORNO: TTimeField
      FieldName = 'CAMPO_HORARETORNO'
    end
    object cds_rel_osCONSUMIDOR_NOME: TStringField
      FieldName = 'CONSUMIDOR_NOME'
      Size = 50
    end
    object cds_rel_osCONSUMIDOR_ENDERECO: TStringField
      FieldName = 'CONSUMIDOR_ENDERECO'
      Size = 80
    end
    object cds_rel_osCONSUMIDOR_CPFCNPJ: TStringField
      FieldName = 'CONSUMIDOR_CPFCNPJ'
      Size = 14
    end
    object cds_rel_osCONSUMIDOR_TELEFONE: TStringField
      FieldName = 'CONSUMIDOR_TELEFONE'
      Size = 14
    end
    object cds_rel_osPRAZO_DATACONCLUSAO: TDateField
      FieldName = 'PRAZO_DATACONCLUSAO'
    end
    object cds_rel_osPRAZO_HORACONCLUSAO: TTimeField
      FieldName = 'PRAZO_HORACONCLUSAO'
    end
    object cds_rel_osMODELO: TStringField
      FieldName = 'MODELO'
      Size = 50
    end
    object cds_rel_osOBS: TStringField
      FieldName = 'OBS'
      Size = 30
    end
    object cds_rel_osID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
    end
    object cds_rel_osDATA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ALTERACAO'
    end
    object cds_rel_osOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      Size = 1000
    end
    object cds_rel_osOBSEQUIPAMENTO: TStringField
      FieldName = 'OBSEQUIPAMENTO'
      Size = 1000
    end
    object cds_rel_osSOLUCAO: TStringField
      FieldName = 'SOLUCAO'
      Size = 1000
    end
    object cds_rel_osREVENDEDOR: TStringField
      FieldName = 'REVENDEDOR'
      Size = 100
    end
    object cds_rel_osMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 30
    end
    object cds_rel_osGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Size = 30
    end
    object cds_rel_osLACRE: TStringField
      FieldName = 'LACRE'
      Size = 30
    end
    object cds_rel_osGARANTIA_CAMPO1: TStringField
      FieldName = 'GARANTIA_CAMPO1'
      Size = 30
    end
    object cds_rel_osDATA_PROXIMAREVISAO: TDateField
      FieldName = 'DATA_PROXIMAREVISAO'
    end
    object cds_rel_osCONSUMIDOR_RGINSCR: TStringField
      FieldName = 'CONSUMIDOR_RGINSCR'
      Size = 18
    end
    object cds_rel_osHORA_INICIO_ATEND: TTimeField
      FieldName = 'HORA_INICIO_ATEND'
    end
    object cds_rel_osHORA_FIM_ATEND: TTimeField
      FieldName = 'HORA_FIM_ATEND'
    end
    object cds_rel_osUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object cds_rel_osDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object cds_rel_osUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cds_rel_osMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object cds_rel_osLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 30
    end
    object cds_rel_osCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object cds_rel_osMODELO1: TStringField
      FieldName = 'MODELO1'
      Size = 50
    end
    object cds_rel_osSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object cds_rel_osTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object cds_rel_osPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 30
    end
    object cds_rel_osID_OS_PRIORIDADE1: TIntegerField
      FieldName = 'ID_OS_PRIORIDADE1'
    end
    object cds_rel_osUSERCAD1: TStringField
      FieldName = 'USERCAD1'
    end
    object cds_rel_osDATACAD1: TDateField
      FieldName = 'DATACAD1'
    end
    object cds_rel_osTIPOATENDIMENTO: TStringField
      FieldName = 'TIPOATENDIMENTO'
      Size = 30
    end
    object cds_rel_osKM: TIntegerField
      FieldName = 'KM'
    end
    object cds_rel_osPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cds_rel_osVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 44
    end
  end
  object sDS_EQUIPAMENTOS: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from  V_OS_EQUIPAMENTOS ORDER BY ID_OS_EQUIPAMENTOS asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 336
    Top = 616
    object sDS_EQUIPAMENTOSID_OS_EQUIPAMENTOS: TIntegerField
      DisplayLabel = 'Cod. Equip.'
      DisplayWidth = 10
      FieldName = 'ID_OS_EQUIPAMENTOS'
    end
    object sDS_EQUIPAMENTOSMODELO: TStringField
      DisplayLabel = 'Modelo Equip'
      DisplayWidth = 30
      FieldName = 'MODELO'
      Size = 50
    end
    object sDS_EQUIPAMENTOSTIPO: TStringField
      DisplayLabel = 'Tipo Equip.'
      DisplayWidth = 30
      FieldName = 'TIPO'
      Size = 50
    end
    object sDS_EQUIPAMENTOSMARCA: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 30
      FieldName = 'MARCA'
      Size = 50
    end
    object sDS_EQUIPAMENTOSID_OS_EQUIPAMENTO_TIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_OS_EQUIPAMENTO_TIPO'
      Visible = False
    end
    object sDS_EQUIPAMENTOSID_OS_EQUIPAMENTO_MARCA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_OS_EQUIPAMENTO_MARCA'
      Visible = False
    end
    object sDS_EQUIPAMENTOSID_OS_EQUIPAMENTOS_STR: TStringField
      DisplayWidth = 15
      FieldName = 'ID_OS_EQUIPAMENTOS_STR'
      Visible = False
      Size = 15
    end
  end
  object Dts_equipamentos: TDataSource
    DataSet = sDS_EQUIPAMENTOS
    Left = 448
    Top = 616
  end
end
