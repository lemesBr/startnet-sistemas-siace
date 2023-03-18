unit udadosSped;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, acbrutil, math,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dateutils;

type
  TDadosSped = class(TDataModule)
    qrProdutos: TFDQuery;
    qryConfig_Sped: TFDQuery;
    qryItens_NFe_S: TFDQuery;
    QryItens_NFCe_S: TFDQuery;
    qryNFCE_S: TFDQuery;
    qryNFE_S: TFDQuery;
    qrUnidades: TFDQuery;
    qryConsC100: TFDQuery;
    qryConsC100CODIGO: TIntegerField;
    qryConsUnidade: TFDQuery;
    qryConsUnidadeCODIGO: TIntegerField;
    qryConsUnidadeUNIDADE: TStringField;
    qryConsUnidadeDESCRICAO: TStringField;
    qrParticipantes: TFDQuery;
    qrParticipantesCOD_PART: TStringField;
    qrParticipantesCNPJ: TStringField;
    qrParticipantesIE: TStringField;
    qrParticipantesRAZAO: TStringField;
    qrParticipantesFANTASIA: TStringField;
    qrParticipantesENDERECO: TStringField;
    qrParticipantesNUMERO: TStringField;
    qrParticipantesBAIRRO: TStringField;
    qryItensC: TFDQuery;
    qryItens_NFe_E: TFDQuery;
    qryNFe_E: TFDQuery;
    qryCompra: TFDQuery;
    qryConsC170: TFDQuery;
    qryC170_NFe_S: TFDQuery;
    qryEmpresa: TFDQuery;
    qryEmpresaCODIGO: TIntegerField;
    qryEmpresaFANTASIA: TStringField;
    qryContador: TFDQuery;
    qryInventario: TFDQuery;
    qryConsC170CST_ICMS: TStringField;
    qrProdutosCOD_PROD: TIntegerField;
    qrProdutosDESCRICAO: TStringField;
    qrProdutosGTIN: TStringField;
    qrProdutosTIPO_ITEM: TStringField;
    qrProdutosNCM: TStringField;
    qryConfig_SpedFK_EMPRESA: TIntegerField;
    qryConfig_SpedIND_PERFIL: TStringField;
    qryConfig_SpedIND_ATIV: TStringField;
    qryConfig_SpedIND_EXP: TStringField;
    qryConfig_SpedIND_CCRF: TStringField;
    qryConfig_SpedIND_COMB: TStringField;
    qryConfig_SpedIND_USINA: TStringField;
    qryConfig_SpedIND_VA: TStringField;
    qryConfig_SpedIND_EE: TStringField;
    qryConfig_SpedIND_CART: TStringField;
    qryConfig_SpedIND_FORM: TStringField;
    qryConfig_SpedIND_AER: TStringField;
    qryConfig_SpedCOD_INC_TRIB: TStringField;
    qryConfig_SpedIND_APRO_CRED: TStringField;
    qryConfig_SpedCOD_TIPO_CONT: TStringField;
    qryConfig_SpedCOD_REGIME_TRIBUTARIO: TStringField;
    qryConfig_SpedIND_REG_CUM: TStringField;
    qryConfig_SpedFK_USUARIO: TIntegerField;
    qryCompraID: TIntegerField;
    qryCompraTPOPERACAO: TStringField;
    qryCompraTPEMISSAO: TStringField;
    qryCompraMODELO: TStringField;
    qryCompraSERIE: TStringField;
    qryCompraNR_NOTA: TStringField;
    qryCompraCHAVE: TStringField;
    qryCompraDTEMISSAO: TDateField;
    qryCompraDTENTRADA: TDateField;
    qryCompraTOTAL: TFMTBCDField;
    qryCompraDESCONTO: TFMTBCDField;
    qryCompraFRETE: TFMTBCDField;
    qryCompraSEGURO: TFMTBCDField;
    qryCompraDESPESAS: TFMTBCDField;
    qryCompraSUBTOTAL: TFMTBCDField;
    qryCompraBASE_ICM: TFMTBCDField;
    qryCompraTOTAL_ICM: TFMTBCDField;
    qryCompraBASE_ST: TFMTBCDField;
    qryCompraTOTAL_ST: TFMTBCDField;
    qryCompraTOTAL_IPI: TFMTBCDField;
    qryCompraTOTAL_PIS: TFMTBCDField;
    qryCompraTOTAL_COF: TFMTBCDField;
    qryConsC170CFOP: TStringField;
    qryConsC170ALIQ_ICM: TFMTBCDField;
    qryConsC170VL_ITEM: TFMTBCDField;
    qryConsC170VL_OPR: TFMTBCDField;
    qryConsC170VL_BC_ICMS: TFMTBCDField;
    qryConsC170VL_ICMS: TFMTBCDField;
    qryConsC170VL_BC_ICMS_ST: TFMTBCDField;
    qryConsC170VL_ICMS_ST: TFMTBCDField;
    qryConsC170VL_IPI: TFMTBCDField;
    qryNFe_ETPOPERACAO: TStringField;
    qryNFe_ETPEMISSAO: TStringField;
    qryNFe_EID_FORNECEDOR: TStringField;
    qryNFe_EID_PEDIDOCOMPRA: TIntegerField;
    qryNFe_ECODIGO: TIntegerField;
    qryNFe_ESERIE: TStringField;
    qryNFe_ENUMERO: TIntegerField;
    qryNFe_ECHAVE: TStringField;
    qryNFe_EDATA_EMISSAO: TDateField;
    qryNFe_ETOTAL: TFMTBCDField;
    qryNFe_EDESCONTO: TFMTBCDField;
    qryNFe_EFRETE: TFMTBCDField;
    qryNFe_ESEGURO: TFMTBCDField;
    qryNFe_EDESPESAS: TFMTBCDField;
    qryNFe_ESUBTOTAL: TFMTBCDField;
    qryNFe_EBASEICMS: TFMTBCDField;
    qryNFe_ETOTALICMS: TFMTBCDField;
    qryNFe_EBASE_ST: TFMTBCDField;
    qryNFe_ETOTAL_ST: TFMTBCDField;
    qryNFe_ETOTAL_IPI: TFMTBCDField;
    qryNFe_ETOTALICMSPIS: TFMTBCDField;
    qryNFe_ETOTALICMSCOFINS: TFMTBCDField;
    qryNFCE_SCODIGO: TIntegerField;
    qryNFCE_SIND_OPER: TStringField;
    qryNFCE_SIND_EMIT: TStringField;
    qryNFCE_SID_CLIENTE: TStringField;
    qryNFCE_SMODELO: TStringField;
    qryNFCE_SSERIE: TStringField;
    qryNFCE_SNUMERO: TIntegerField;
    qryNFCE_SCHAVE: TStringField;
    qryNFCE_SDATA_EMISSAO: TDateField;
    qryNFCE_SDATA_SAIDA: TDateField;
    qryNFCE_STOTAL: TFMTBCDField;
    qryNFCE_SDESCONTO: TFMTBCDField;
    qryNFCE_SSUBTOTAL: TFMTBCDField;
    qryNFCE_STIPO_FRETE: TIntegerField;
    qryNFCE_SFRETE: TIntegerField;
    qryNFCE_SSEGURO: TIntegerField;
    qryNFCE_SDESPESAS: TIntegerField;
    qryNFCE_SBASEICMS: TFMTBCDField;
    qryNFCE_STOTALICMS: TFMTBCDField;
    qryNFCE_SBASE_ST: TIntegerField;
    qryNFCE_STOTAL_ST: TIntegerField;
    qryNFCE_SBASE_IPI: TIntegerField;
    qryNFCE_STOTAL_IPI: TIntegerField;
    qryNFCE_SBASEICMSPIS: TFMTBCDField;
    qryNFCE_STOTALICMSPIS: TFMTBCDField;
    qryNFCE_SBASEICMSCOF: TFMTBCDField;
    qryNFCE_STOTALICMSCOFINS: TFMTBCDField;
    qryInventarioFK_PRODUTO: TIntegerField;
    qryInventarioDESCRICAO: TStringField;
    qrProdutosABREVIATURA: TIntegerField;
    qryCompraID_FORNECEDOR: TStringField;
    qryContadorCODIGO: TIntegerField;
    qryContadorRAZAO_SOCIAL: TStringField;
    qryContadorNOME_FANTASIA: TStringField;
    qryContadorENDERECO: TStringField;
    qryContadorCIDADE: TStringField;
    qryContadorUF: TStringField;
    qryContadorCEP: TStringField;
    qryContadorTELEFONE: TStringField;
    qryContadorFAX: TStringField;
    qryContadorEMAIL: TStringField;
    qryContadorHOMEPAGE: TStringField;
    qryContadorCNPJ: TStringField;
    qryContadorIE: TStringField;
    qryContadorNUMERO: TIntegerField;
    qryContadorBAIRRO: TStringField;
    qryContadorIM: TStringField;
    qryContadorLOGOMARCA: TBlobField;
    qryContadorCNAE: TStringField;
    qryContadorCOD_CID_IBGE: TStringField;
    qryContadorURS_INDEA: TStringField;
    qryContadorULE_INDEA: TStringField;
    qryContadorMATRICULA_INDEA: TStringField;
    qryContadorPROPRIETARIO: TStringField;
    qryContadorRESPONSAVEL_TECINICO: TStringField;
    qryContadorCRMV_N: TStringField;
    qryContadorFLAG_VETERINARIA: TStringField;
    qryContadorREGIME: TStringField;
    qryContadorALIC_SIMPLES: TFMTBCDField;
    qryContadorALIC_PIS: TFMTBCDField;
    qryContadorALIC_COFINS: TFMTBCDField;
    qryContadorALIC_IRPJ: TFMTBCDField;
    qryContadorALIC_CSLL: TFMTBCDField;
    qryContadorSUFRAMA: TStringField;
    qryContadorNOME_CONTADOR: TStringField;
    qryContadorCNPJ_CONTADOR: TStringField;
    qryContadorCRC_CONTADOR: TStringField;
    qryContadorENDERECO_CONTADOR: TStringField;
    qryContadorCEP_CONTADOR: TStringField;
    qryContadorNUM_CONTADOR: TIntegerField;
    qryContadorBAIRRO_CONTADOR: TStringField;
    qryContadorCOMPL_CONTADOR: TStringField;
    qryContadorFONE_CONTADOR: TStringField;
    qryContadorFAX_CONTADOR: TStringField;
    qryContadorEMAIL_CONTADOR: TStringField;
    qryContadorCOD_IBGE_CONTADOR: TStringField;
    qryContadorCPF_CONTADOR: TStringField;
    qryContadorCIDADE_CONTADOR: TStringField;
    qryContadorUF_CONTADOR: TStringField;
    qryContadorCPF_RESPONSAVEL: TStringField;
    qryContadorCOMPLEMENTO: TStringField;
    qryContadorTIPO_SEGMENTO: TStringField;
    qryContadorCPF_PROPRIETARIO: TStringField;
    qryContadorDISTRIBUIDORA_COMBUSTIVEL: TStringField;
    qryContadorNUM_JUNT_COM: TStringField;
    qryContadorDATA_INICIO_LMC: TDateField;
    qryContadorDATA_FIM_LMC: TDateField;
    qryContadorNUM_ORD_LMC: TIntegerField;
    qryContadorULTIMONSU: TStringField;
    qrUnidadesABREVIATURA: TIntegerField;
    qrUnidadesDESCRICAO: TStringField;
    qryC170_NFe_STABELA: TStringField;
    qryC170_NFe_SFKNFE: TIntegerField;
    qryC170_NFe_SCODIGO: TIntegerField;
    qryC170_NFe_SID_PRODUTO: TIntegerField;
    qryC170_NFe_SDESCRICAO: TStringField;
    qryC170_NFe_SQTD: TBCDField;
    qryC170_NFe_SUNIDADE: TStringField;
    qryC170_NFe_SVL_TOTAL: TFMTBCDField;
    qryC170_NFe_SIND_MOV: TStringField;
    qryC170_NFe_SCFOP: TStringField;
    qryC170_NFe_SCST: TStringField;
    qryC170_NFe_SBASE_ICMS: TFMTBCDField;
    qryC170_NFe_SALIQ_ICMS: TFMTBCDField;
    qryC170_NFe_SVALOR_ICMS: TFMTBCDField;
    qryC170_NFe_SBASE_ICMS_ST: TFMTBCDField;
    qryC170_NFe_SALIQ_ICMS_ST: TFMTBCDField;
    qryC170_NFe_SVALOR_ICMS_ST: TFMTBCDField;
    qryC170_NFe_SCST_IPI: TStringField;
    qryC170_NFe_SBASE_IPI: TFMTBCDField;
    qryC170_NFe_SALIQ_IPI: TFMTBCDField;
    qryC170_NFe_SVALOR_IPI: TFMTBCDField;
    qryC170_NFe_SCST_PIS: TStringField;
    qryC170_NFe_SBASE_PIS_ICMS: TFMTBCDField;
    qryC170_NFe_SALIQ_PIS_ICMS: TFMTBCDField;
    qryC170_NFe_SVALOR_PIS_ICMS: TFMTBCDField;
    qryC170_NFe_SCST_COFINS: TStringField;
    qryC170_NFe_SBASE_COFINS_ICMS: TFMTBCDField;
    qryC170_NFe_SALIQ_COFINS_ICMS: TFMTBCDField;
    qryC170_NFe_SVALOR_COFINS_ICMS: TFMTBCDField;
    qryC170_NFe_SDESPESAS: TFMTBCDField;
    qryC170_NFe_SVL_DESCONTO: TFMTBCDField;
    qryItensCFK_COMPRA: TIntegerField;
    qryItensCFK_PRODUTO: TIntegerField;
    qryItensCDESCRICAO: TStringField;
    qryItensCQTD: TBCDField;
    qryItensCUNIDADE: TStringField;
    qryItensCVL_ITEM: TBCDField;
    qryItensCIND_MOV: TStringField;
    qryItensCCFOP: TStringField;
    qryItensCCST_ICM: TStringField;
    qryItensCBASE_ICMS: TFMTBCDField;
    qryItensCALIQ_ICMS: TFMTBCDField;
    qryItensCVL_ICMS: TFMTBCDField;
    qryItensCBASE_ST: TFMTBCDField;
    qryItensCALIQ_ST: TFMTBCDField;
    qryItensCVL_ST: TFMTBCDField;
    qryItensCCST_IPI: TStringField;
    qryItensCBASE_IPI: TFMTBCDField;
    qryItensCALIQ_IPI: TFMTBCDField;
    qryItensCVL_IPI: TFMTBCDField;
    qryItensCCST_PIS: TStringField;
    qryItensCBASE_PIS: TFMTBCDField;
    qryItensCALIQ_PIS: TFMTBCDField;
    qryItensCVL_PIS: TFMTBCDField;
    qryItensCCST_COF: TStringField;
    qryItensCBASE_COF: TFMTBCDField;
    qryItensCALIQ_COF: TFMTBCDField;
    qryItensCVL_COF: TFMTBCDField;
    qryItensCFRETE1: TFMTBCDField;
    qryItensCSEGURO: TFMTBCDField;
    qryItensCDESPESA: TFMTBCDField;
    qryItensCDESCONTO: TFMTBCDField;
    qryItens_NFe_EFKNFE: TIntegerField;
    qryItens_NFe_EID_PRODUTO: TIntegerField;
    qryItens_NFe_EDESCRICAO: TStringField;
    qryItens_NFe_EQTD: TBCDField;
    qryItens_NFe_EUNIDADE: TIntegerField;
    qryItens_NFe_ETOTAL: TFMTBCDField;
    qryItens_NFe_EIND_MOV: TStringField;
    qryItens_NFe_ECFOP: TStringField;
    qryItens_NFe_ECST: TStringField;
    qryItens_NFe_EBASE_ICMS: TFMTBCDField;
    qryItens_NFe_EALIQ_ICMS: TFMTBCDField;
    qryItens_NFe_EVALOR_ICMS: TFMTBCDField;
    qryItens_NFe_EBASE_ICMS_ST: TFMTBCDField;
    qryItens_NFe_EALIQ_ICMS_ST: TFMTBCDField;
    qryItens_NFe_EVALOR_ICMS_ST: TFMTBCDField;
    qryItens_NFe_ECST_IPI: TStringField;
    qryItens_NFe_EBASE_IPI: TFMTBCDField;
    qryItens_NFe_EALIQ_IPI: TFMTBCDField;
    qryItens_NFe_EVALOR_IPI: TFMTBCDField;
    qryItens_NFe_ECST_PIS: TStringField;
    qryItens_NFe_EBASE_PIS_ICMS: TFMTBCDField;
    qryItens_NFe_EALIQ_PIS_ICMS: TFMTBCDField;
    qryItens_NFe_EVALOR_PIS_ICMS: TFMTBCDField;
    qryItens_NFe_ECST_COFINS: TStringField;
    qryItens_NFe_EBASE_COFINS_ICMS: TFMTBCDField;
    qryItens_NFe_EALIQ_COFINS_ICMS: TFMTBCDField;
    qryItens_NFe_EVALOR_COFINS_ICMS: TFMTBCDField;
    qryItens_NFe_EDESPESAS: TFMTBCDField;
    qryNFE_SCODIGO: TIntegerField;
    qryNFE_SIND_OPER: TStringField;
    qryNFE_SIND_EMIT: TStringField;
    qryNFE_SID_CLIENTE: TStringField;
    qryNFE_SMODELO: TStringField;
    qryNFE_SSERIE: TStringField;
    qryNFE_SNUMERO: TIntegerField;
    qryNFE_SCHAVE: TStringField;
    qryNFE_SDATA_EMISSAO: TDateField;
    qryNFE_SDATA_SAIDA: TDateField;
    qryNFE_STOTAL: TFMTBCDField;
    qryNFE_SDESCONTO: TFMTBCDField;
    qryNFE_SSUBTOTAL: TFMTBCDField;
    qryNFE_STIPO_FRETE: TStringField;
    qryNFE_SFRETE: TFMTBCDField;
    qryNFE_SSEGURO: TFMTBCDField;
    qryNFE_SDESPESAS: TFMTBCDField;
    qryNFE_SBASEICMS: TFMTBCDField;
    qryNFE_STOTALICMS: TFMTBCDField;
    qryNFE_SBASE_ST: TFMTBCDField;
    qryNFE_STOTAL_ST: TFMTBCDField;
    qryNFE_SBASE_IPI: TFMTBCDField;
    qryNFE_STOTAL_IPI: TFMTBCDField;
    qryNFE_SBASEICMSPIS: TFMTBCDField;
    qryNFE_STOTALICMSPIS: TFMTBCDField;
    qryNFE_SBASEICMSCOF: TFMTBCDField;
    qryNFE_STOTALICMSCOFINS: TFMTBCDField;
    qrParticipantesCODMUN: TStringField;
    qryItens_NFe_SCODIGO: TIntegerField;
    qryItens_NFe_SFKNFE: TIntegerField;
    qryItens_NFe_SID_PRODUTO: TIntegerField;
    qryItens_NFe_SDESCRICAO: TStringField;
    qryItens_NFe_SQTD: TBCDField;
    qryItens_NFe_SUNIDADE: TIntegerField;
    qryItens_NFe_STOTAL: TFMTBCDField;
    qryItens_NFe_SIND_MOV: TStringField;
    qryItens_NFe_SCFOP: TStringField;
    qryItens_NFe_SCST: TStringField;
    qryItens_NFe_SBASE_ICMS: TFMTBCDField;
    qryItens_NFe_SALIQ_ICMS: TFMTBCDField;
    qryItens_NFe_SVALOR_ICMS: TFMTBCDField;
    qryItens_NFe_SBASE_ICMS_ST: TFMTBCDField;
    qryItens_NFe_SALIQ_ICMS_ST: TFMTBCDField;
    qryItens_NFe_SVALOR_ICMS_ST: TFMTBCDField;
    qryItens_NFe_SCST_IPI: TStringField;
    qryItens_NFe_SBASE_IPI: TFMTBCDField;
    qryItens_NFe_SALIQ_IPI: TFMTBCDField;
    qryItens_NFe_SVALOR_IPI: TFMTBCDField;
    qryItens_NFe_SCST_PIS: TStringField;
    qryItens_NFe_SBASE_PIS_ICMS: TFMTBCDField;
    qryItens_NFe_SALIQ_PIS_ICMS: TFMTBCDField;
    qryItens_NFe_SVALOR_PIS_ICMS: TFMTBCDField;
    qryItens_NFe_SCST_COFINS: TStringField;
    qryItens_NFe_SBASE_COFINS_ICMS: TFMTBCDField;
    qryItens_NFe_SALIQ_COFINS_ICMS: TFMTBCDField;
    qryItens_NFe_SVALOR_COFINS_ICMS: TFMTBCDField;
    qryItens_NFe_SDESPESAS: TFMTBCDField;
    qryItens_NFe_SDESCONTO: TFMTBCDField;
    QryItens_NFCe_SFKVENDA: TIntegerField;
    QryItens_NFCe_SCODIGO: TIntegerField;
    QryItens_NFCe_SID_PRODUTO: TIntegerField;
    QryItens_NFCe_SDESCRICAO: TStringField;
    QryItens_NFCe_SQUANTIDADE: TBCDField;
    QryItens_NFCe_SUNIDADE: TStringField;
    QryItens_NFCe_STOTAL: TFMTBCDField;
    QryItens_NFCe_SIND_MOV: TStringField;
    QryItens_NFCe_SCFOP: TStringField;
    QryItens_NFCe_SCST: TStringField;
    QryItens_NFCe_SBASE_ICMS_ST: TIntegerField;
    QryItens_NFCe_SALIQ_ICMS_ST: TIntegerField;
    QryItens_NFCe_SVALOR_ICMS_ST: TIntegerField;
    QryItens_NFCe_SCST_IPI: TStringField;
    QryItens_NFCe_SBASE_IPI: TIntegerField;
    QryItens_NFCe_SALIQ_IPI: TIntegerField;
    QryItens_NFCe_SVALOR_IPI: TIntegerField;
    QryItens_NFCe_SCST_PIS: TStringField;
    QryItens_NFCe_SBASE_PIS_ICMS: TFMTBCDField;
    QryItens_NFCe_SALIQ_PIS_ICMS: TFMTBCDField;
    QryItens_NFCe_SVALOR_PIS_ICMS: TFMTBCDField;
    QryItens_NFCe_SCST_COFINS: TStringField;
    QryItens_NFCe_SBASE_COFINS_ICMS: TFMTBCDField;
    QryItens_NFCe_SALIQ_COFINS_ICMS: TFMTBCDField;
    QryItens_NFCe_SVALOR_COFINS_ICMS: TFMTBCDField;
    QryItens_NFCe_SFRETE: TIntegerField;
    QryItens_NFCe_SSEGURO: TIntegerField;
    QryItens_NFCe_SDESPESAS: TIntegerField;
    QryItens_NFCe_SVDESCONTO: TFMTBCDField;
    qryInventarioPRECO_CUSTO: TFMTBCDField;
    qryItens_NFe_EDESCONTO: TFMTBCDField;
    qryItens_NFe_EFRETE: TIntegerField;
    qryItens_NFe_ESEGURO: TIntegerField;
    qryItens_NFe_SFRETE: TIntegerField;
    qryItens_NFe_SSEGURO: TIntegerField;
    QryItens_NFCe_SBASE_ICMS: TFMTBCDField;
    QryItens_NFCe_SALIQ_ICMS: TFMTBCDField;
    QryItens_NFCe_SVALOR_ICMS: TFMTBCDField;
    qryInventarioQTDE: TBCDField;
    qryInventarioQTDS: TBCDField;
    qryInventarioSALDO: TBCDField;
    qryInventarioTOTAL: TFloatField;
    qryNFe_ESTATUS: TStringField;
    qryNFCE_SSITUACAO: TStringField;
    qryNFE_SSITUACAO: TStringField;
    procedure qryInventarioCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    CodSped: Integer;
    procedure ImportaParticipante(dtini, dtfim: Tdate; Empresa: Integer);
    procedure ImportaEntradaCompra(dtini, dtfim: Tdate; Empresa: Integer);
    procedure ImportaEntradaNFe(dtini, dtfim: Tdate; Empresa: Integer);
    procedure ImportaProduto(dtini, dtfim: Tdate; Empresa: Integer;
      Tela: String);
    procedure ImportaSaidaNCFe(dtini, dtfim: Tdate; Empresa: Integer);
    procedure ImportaSaidaNFe(dtini, dtfim: Tdate; Empresa: Integer);
    procedure ImportaUNidade(dtini, dtfim: Tdate; Empresa: Integer);
    procedure REGC190(dtini, dtfim: Tdate; Empresa: Integer);
    procedure ImportaInventario(dtini, dtfim: Tdate; Empresa: Integer);
    procedure ApagaRegistro;

    { Public declarations }

  end;

var
  DadosSped: TDadosSped;
  dia, mes, ano: Word;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ModulodeDados, ModuleDados1, Principal;

{$R *.dfm}

Procedure TDadosSped.ApagaRegistro;
begin
  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := ' delete from SPED_Produtos';
  dm1.qryExecute.ExecSQL;
  dm.Coneccao.CommitRetaining;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := ' delete from SPED_PARTICIPANTES';
  dm1.qryExecute.ExecSQL;
  dm.Coneccao.CommitRetaining;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := ' delete from SPED_Unidade';
  dm1.qryExecute.ExecSQL;
  dm.Coneccao.CommitRetaining;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := ' delete from SPED_H005';
  dm1.qryExecute.ExecSQL;
  dm.Coneccao.CommitRetaining;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := ' delete from SPED_H010';
  dm1.qryExecute.ExecSQL;
  dm.Coneccao.CommitRetaining;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := ' delete from SPED_c190';
  dm1.qryExecute.ExecSQL;
  dm.Coneccao.CommitRetaining;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := ' delete from SPED_c170';
  dm1.qryExecute.ExecSQL;
  dm.Coneccao.CommitRetaining;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := ' delete from SPED_c100';
  dm1.qryExecute.ExecSQL;
  dm.Coneccao.CommitRetaining;

end;

procedure TDadosSped.ImportaParticipante(dtini, dtfim: Tdate; Empresa: Integer);
begin
  DadosSped.qrParticipantes.Close;
  DadosSped.qrParticipantes.Params[0].AsDate := dtini;
  DadosSped.qrParticipantes.Params[1].AsDate := dtfim;
  DadosSped.qrParticipantes.Params[2].Value := Empresa;
  DadosSped.qrParticipantes.Open;

  DadosSped.qrParticipantes.First;


  if DadosSped.qrParticipantesnumero.text = '' then
         Raise Exception.Create(''+DadosSped.qrParticipantesCOD_PART.text +'-' + DadosSped.qrParticipantesRAZAO.text + ' numero em branco do cliente / fornecedor');

  if (DadosSped.qrParticipantescodmun.text = '') or ( DadosSped.qrParticipantescodmun.isnull) then
         Raise Exception.Create(''+DadosSped.qrParticipantesCOD_PART.text +'-' + DadosSped.qrParticipantesRAZAO.text + ' codigo do municipio em branco do cliente / fornecedor');


  dm1.qrySped_Participante.Close;
  dm1.qrySped_Participante.Open;

  while not DadosSped.qrParticipantes.Eof do
  begin
    dm1.qrySped_Participante.Insert;
    dm1.qrySped_ParticipanteCOD_SPED.AsInteger :=
    dm.Numerador('SPED_PARTICIPANTES', 'COD_SPED', 'N', '', '');
    dm1.qrySped_Participantefk_sped.Value := CodSped;
    dm1.qrySped_Participantecod_part.AsFloat :=
      DadosSped.qrParticipantesCOD_PART.AsFloat;
    dm1.qrySped_Participantenome.Value :=
      DadosSped.qrParticipantesRAZAO.Value;

    if (length(tirapontos(DadosSped.qrParticipantesCNPJ.Value))) = 14 then
    begin
      dm1.qrySped_Participantecnpj_cpf.Value :=
        tirapontos(DadosSped.qrParticipantesCNPJ.Value);
      dm1.qrySped_Participanteie.Value :=
        tirapontos(DadosSped.qrParticipantesIE.Value);
    end
    else
    begin
      dm1.qrySped_Participantecpf.Value :=
        tirapontos(DadosSped.qrParticipantesCNPJ.Value);
    end;
    dm1.qrySped_Participantepais.Value := '1058';
    if not (DadosSped.qrParticipantesCODMUN.IsNull) then
      dm1.qrySped_ParticipanteCOD_MUNICIPIO.TEXT :=
        DadosSped.qrParticipantesCODMUN.TEXT
    else
      dm1.qrySped_ParticipanteCOD_MUNICIPIO.text :=
        dm.SDS_EmpresaCOD_CID_IBGE.text;

    dm1.qrySped_ParticipanteLOGRADOURO.Value :=
      DadosSped.qrParticipantesENDERECO.Value;

    if dm1.qrySped_ParticipanteLOGRADOURO.AsString = '' then
      dm1.qrySped_ParticipanteLOGRADOURO.Value := 'SEM ENDEREÇO';

    dm1.qrySped_Participantenumero.TEXT :=
      DadosSped.qrParticipantesNUMERO.TEXT;
    dm1.qrySped_Participantecomplemento.Value := '';
    dm1.qrySped_Participantebairro.Value :=
      DadosSped.qrParticipantesBAIRRO.Value;

    dm1.qrySped_ParticipanteCOD_EMPRESA.Value := Empresa;

    dm1.qrySped_ParticipanteFK_USUARIO.Value := iCodUsu;

    dm1.qrySped_Participante.Post;
    dm.Coneccao.CommitRetaining;
    DadosSped.qrParticipantes.Next;

  end;

end;

procedure TDadosSped.ImportaInventario(dtini, dtfim: Tdate; Empresa: Integer);
var
  TTotal: Extended;
begin
  TTotal := 0;
  DadosSped.qryInventario.Close;
  DadosSped.qryInventario.Params[0].AsDate := (StartOfTheYear(dtini) - 1);
  DadosSped.qryInventario.Open;

  DadosSped.qryInventario.Last;
  DadosSped.qryInventario.First;

  if not DadosSped.qryInventario.IsEmpty then
  begin

    dm1.qrySped_H005.Close;
    dm1.qrySped_H005.Params[0].Value := CodSped;
    dm1.qrySped_H005.Open;

    dm1.qrySped_H005.Insert;
    dm1.qrySped_H005CODIGO.Value := dm.Numerador('SPED_H005', 'CODIGO',
      'N', '', '');
    dm1.qrySped_H005DT_INV.Value := (StartOfTheYear(dtini) - 1);

    dm1.qrySped_H005VL_INV.Value := 0;
    dm1.qrySped_H005FK_SPED.Value := CodSped;
    dm1.qrySped_H005FK_EMPRESA.Value := iemp;
    dm1.qrySped_H005FK_USUARIO.Value := iCodUsu;
    dm1.qrySped_H005.Post;
    dm.Coneccao.CommitRetaining;

    dm1.qrySped_H010.Close;
    dm1.qrySped_H010.Params[0].Value := dm1.qrySped_H005CODIGO.Value;
    dm1.qrySped_H010.Open;

    while not DadosSped.qryInventario.Eof do
    begin
      dm1.qrySped_H010.Insert;
      dm1.qrySped_H010CODIGO.Value := dm.Numerador('SPED_H010', 'CODIGO',
        'N', '', '');;
      dm1.qrySped_H010QTD.Value := qryInventarioSALDO.AsFloat;
      dm1.qrySped_H010VL_UNIT.Value :=
        SimpleRoundTo(qryInventarioPreco_CUSTO.AsFloat, -2);
      dm1.qrySped_H010VL_ITEM.Value :=
        SimpleRoundTo(qryInventarioTOTAL.AsFloat, -2);
      dm1.qrySped_H010IND_PROP.Value := '0';
      dm1.qrySped_H010FK_H005.Value := dm1.qrySped_H005CODIGO.Value;
      dm1.qrySped_H010FK_PRODUTO.Value := qryInventarioFK_PRODUTO.Value;
      dm1.qrySped_H010FK_EMPRESA.Value := iemp;
      dm1.qrySped_H010FK_USUARIO.Value := iCodUsu ;
      dm1.qrySped_H010.Post;
      dm.Coneccao.CommitRetaining;
      TTotal := TTotal + dm1.qrySped_H010VL_ITEM.AsFloat;
      DadosSped.qryInventario.Next;
    end;

    dm1.qrySped_H005.Edit;
    dm1.qrySped_H005VL_INV.Value := TTotal;
    dm1.qrySped_H005.Post;
    dm.Coneccao.CommitRetaining;
  end;
end;

procedure TDadosSped.ImportaUNidade(dtini, dtfim: Tdate; Empresa: Integer);
begin
  DadosSped.qrUnidades.Close;
  DadosSped.qrUnidades.Params[0].AsDate := dtini;
  DadosSped.qrUnidades.Params[1].AsDate := dtfim;
  DadosSped.qrUnidades.Params[2].Value := Empresa;
  DadosSped.qrUnidades.Open;

  DadosSped.qrUnidades.Last;
  DadosSped.qrUnidades.First;

  dm1.qrySped_Unidade.Close;
  dm1.qrySped_Unidade.Open;

  while not DadosSped.qrUnidades.Eof do
  begin

    if DadosSped.qrUnidadesABREVIATURA.AsString <> '' then
    begin
      dm1.qrySped_Unidade.Insert;
      dm1.qrySped_Unidadefk_sped.Value := CodSped;
      dm1.qrySped_UnidadeCODIGO.Value := dm.Numerador('SPED_UNIDADE',
        'CODIGO', 'N', '', '');
      dm1.qrySped_Unidadeunidade.text :=
        DadosSped.qrUnidadesABREVIATURA.text;
      dm1.qrySped_Unidadedescricao.text :=
        DadosSped.qrUnidadesABREVIATURA.text + '-' +
        DadosSped.qrUnidadesDESCRICAO.AsString;
      dm1.qrySped_UnidadeFK_EMPRESA.Value := Empresa;
      dm1.qrySped_UnidadeFK_USUARIO.Value := iCodUsu ;
      dm1.qrySped_Unidade.Post;
      dm.Coneccao.CommitRetaining;
    end;
    DadosSped.qrUnidades.Next;
  end;

end;

procedure TDadosSped.qryInventarioCalcFields(DataSet: TDataSet);
begin
  qryInventarioTOTAL.AsFloat := qryInventarioSALDO.AsFloat *
    qryInventarioPReco_CUSTO.AsFloat;
end;

procedure TDadosSped.ImportaProduto(dtini, dtfim: Tdate; Empresa: Integer;
  Tela: String);
var
  cod: Integer;

begin

  if Tela = 'P' then
  begin
    qrProdutos.Close;
    qrProdutos.SQL.Clear;
    qrProdutos.SQL.add(' select DISTINCT(COD_PROD) COD_PROD, DESCRICAO, CODBARRA AS GTIN,'+
                       'CODIGO AS ABREVIATURA, TIPO AS TIPO_ITEM, NCM '+
                       'FROM( select DISTINCT(PROD.codigo)AS COD_PROD, PROD.descricao, PROD.codigo_barras as CODBARRA,'+
                       'UND.codigo, PROD.tipo_atividade as tipo, PROD.ncm_sh as ncm  from  notasfiscais_itens ITECO  '+
                       ' left JOIN notasfiscais PEDICO on ITECO.CODIGO_NOTA=PEDICO.CODIGO_NOTA '+
                       ' left JOIN produtos PROD on ITECO.CODIGO_PRODUTO=PROD.codigo  '+
                       ' left JOIN unidades UND on PROD.unidade= UND.codigo     '+
                       ' where                                                   '+
                       ' PEDICO.data_cadastro between :data1 and :data2 and      '+
                       ' PEDICO.cod_empresa=:EMPRESA ' +
                       ' union all '+
                       ' select   '+
                       ' DISTINCT(PROD.codigo)AS COD_PROD, PROD.descricao,PROD.codigo_barras as CODBARRA , '+
                       '  UND.codigo, PROD.tipo_atividade as tipo,PROD.ncm_sh as ncm   '+
                       ' from  nfe_itens NFD               '+
                       ' left JOIN nfe_nota NFM  on NFD.nr_nota=NFM.nr_nota   '+
                       ' left JOIN produtos PROD on NFD.codigo_prod=PROD.codigo   '+
                       ' left JOIN unidades UND on PROD.unidade= UND.codigo  '+
                       ' where                  '+
                       ' NFM.dt_emissao between :data1 and :data2 and   '+
                       ' NFM.status_cancelado is null and nfm.status_inutilizado is null and  '+
                       ' NFM.cd_empresa=:EMPRESA     '+
                       ' union all '  +
                       'select '  +
                       ' DISTINCT(PROD.codigo)AS COD_PROD, PROD.descricao,PROD.codigo_barras as CODBARRA ,'  +
                       ' UND.codigo, PROD.tipo_atividade as tipo, PROD.ncm_sh as ncm    '  +
                       ' from  nfece_itens NFCD                                   '  +
                       ' left JOIN nfece_nota NFCM  on NFCD.nr_nota=NFCM.nr_nota  '  +
                       ' left JOIN produtos PROD on NFCD.codigo_prod=PROD.codigo  '  +
                       ' left JOIN unidades UND on PROD.unidade= UND.codigo    '  +
                       ' where                                                  '  +
                       ' NFCM.dt_emissao between :data1 and :data2 and          '  +
                       ' NFcM.status_cancelado is null and nfcm.status_inutilizado is null and '  +
                       ' NFCM.cd_empresa=:EMPRESA              '  +
                       ' union all                             '  +
                       '  select                                '  +
                       ' DISTINCT(PROD.codigo)AS COD_PROD, PROD.descricao, PROD.codigo_barras as CODBARRA ,'  +
                       ' UND.codigo, PROD.tipo_atividade as tipo, PROD.ncm_sh  as ncm                     '  +
                       ' from notasfiscais_itens ci                                         '  +
                       ' left JOIN notasfiscais co  on ci.CODIGO_NOTA=co.CODIGO_NOTA         '  +
                       ' left JOIN produtos PROD on CI.CODIGO_PRODUTO=PROD.codigo      '  +
                       ' left JOIN unidades UND on PROD.unidade= UND.codigo     '  +
                       ' where                                                 '  +
                       ' co.data_cadastro between :data1 and :data2 and      '  +
                       ' CO.cod_empresa=:EMPRESA )' );



    DadosSped.qrProdutos.Params[0].AsDate := dtini;
    DadosSped.qrProdutos.Params[1].AsDate := dtfim;
    DadosSped.qrProdutos.Params[2].Value := Empresa;
    DadosSped.qrProdutos.Open;
  end
  else
  begin
    qrProdutos.Close;
    qrProdutos.SQL.Clear;
    qrProdutos.SQL.add('select');
    qrProdutos.SQL.add('DISTINCT(COD_PROD) COD_PROD,');
    qrProdutos.SQL.add('DESCRICAO,');
    qrProdutos.SQL.add('CODBARRA AS GTIN,');
    qrProdutos.SQL.add('CODIGO AS ABREVIATURA,');
    qrProdutos.SQL.add('TIPO AS TIPO_ITEM,');
    qrProdutos.SQL.add('NCM');
    qrProdutos.SQL.add('FROM(');
    qrProdutos.SQL.add('select');
    qrProdutos.SQL.add('DISTINCT(PROD.codigo)AS COD_PROD,');
    qrProdutos.SQL.add('PROD.descricao,');
    qrProdutos.SQL.add('PROD.codigo_barras as CODBARRA,');
    qrProdutos.SQL.add('UND.codigo,');
    qrProdutos.SQL.add('PROD.tipo_atividade as tipo,');
    qrProdutos.SQL.add('PROD.ncm_sh as ncm');
    qrProdutos.SQL.add('from notasfiscais_itens ITECO');
    qrProdutos.SQL.add('left JOIN NOTASFISCAIS PEDICO on ITECO.CODIGO_NOTA=PEDICO.CODIGO_NOTA');
    qrProdutos.SQL.add
      ('left JOIN produtoS PROD on ITECO.CODIGO_PRODUTO=PROD.codigo');
    qrProdutos.SQL.add('left JOIN unidadeS UND on PROD.unidade= UND.codigo');
    qrProdutos.SQL.add('where');
    qrProdutos.SQL.add('PEDICO.data_cadastro between :data1 and :data2 and');
    qrProdutos.SQL.add('PEDICO.COD_empresa=:EMPRESA');
    qrProdutos.SQL.add(')');
    qrProdutos.SQL.add('');

    qrProdutos.Params[0].AsDate := dtini;
    qrProdutos.Params[1].AsDate := dtfim;
    qrProdutos.Params[2].Value := Empresa;
    qrProdutos.Open;
  end;

  DadosSped.qryConsUnidade.Close;
  DadosSped.qryConsUnidade.Params[0].Value := CodSped;
  DadosSped.qryConsUnidade.Params[1].Value := Empresa;
  DadosSped.qryConsUnidade.Open;

  DadosSped.qrProdutos.First;

  dm1.qrySped_Produto.Close;
  dm1.qrySped_Produto.Open;

  while not DadosSped.qrProdutos.Eof do
  begin
    if not dm1.qrySped_Produto.Locate('fk_produto',
      DadosSped.qrProdutosCOD_PROD.AsInteger, []) then
    begin
      dm1.qrySped_Produto.Insert;
      dm1.qrySped_ProdutoCODIGO.Value := dm.Numerador('SPED_PRODUTOS',
        'CODIGO', 'N', '', '');
      dm1.qrySped_Produtofk_sped.Value := CodSped;
      dm1.qrySped_ProdutoFK_PRODUTO.Value :=
        DadosSped.qrProdutosCOD_PROD.AsInteger;

      if DadosSped.qryConsUnidade.Locate('unidade',
        DadosSped.qrProdutosABREVIATURA.Value, []) then
        dm1.qrySped_ProdutoUNIDADE.Value :=
          DadosSped.qryConsUnidadeCODIGO.Value
      else
      begin
        DadosSped.qryConsUnidade.First;
        dm1.qrySped_ProdutoUNIDADE.Value :=
          DadosSped.qryConsUnidadeCODIGO.AsInteger;
      end;

      dm1.qrySped_ProdutoMES.AsLongWord := mes;
      dm1.qrySped_ProdutoANO.AsLongWord := ANO;
      dm1.qrySped_Produtodescricao.Value :=
        DadosSped.qrProdutosDESCRICAO.Value;
      dm1.qrySped_Produtocod_barras.Value := DadosSped.qrProdutosGTIN.Value;
      dm1.qrySped_ProdutoTIPO_ATIVIDADE.text :=
        copy(DadosSped.qrProdutosTIPO_ITEM.text, 1, 2);
      dm1.qrySped_Produtocod_ncm.Value := DadosSped.qrProdutosNCM.Value;
      dm1.qrySped_ProdutoALIQ_ICMS.Value := 0;
      dm1.qrySped_ProdutoFK_EMPRESA.Value := Empresa;
      dm1.qrySped_ProdutoFK_USUARIO.Value := iCodUsu;
      dm1.qrySped_Produto.Post;
      dm.Coneccao.CommitRetaining;
    end;
    DadosSped.qrProdutos.Next;
  end;
end;

procedure TDadosSped.ImportaEntradaCompra(dtini, dtfim: Tdate;
  Empresa: Integer);
var
  codigo: Integer;
  vPercentualST: Extended;
  vValorST: Extended;
  vPercentualFCP: Extended;
  vNF: Extended;
  VFCP: Extended;
  vOutros: Extended;
begin
  // filtra compras
  DadosSped.qryCompra.Close;
  DadosSped.qryCompra.Params[0].AsDate := dtini;
  DadosSped.qryCompra.Params[1].AsDate := dtfim;
  DadosSped.qryCompra.Params[2].Value := Empresa;
  DadosSped.qryCompra.Open;

  dm1.qrySped_C100.Close;
  dm1.qrySped_C100.Open;

  dm1.qrySped_C170.Close;
  dm1.qrySped_C170.Open;

  while not DadosSped.qryCompra.Eof do // percore todas as compras
  begin
    vPercentualST := 0;
    vPercentualFCP := 0;
    vNF := DadosSped.qryCompraSUBTOTAL.AsFloat +
      DadosSped.qryCompraFRETE.AsFloat + DadosSped.qryCompraSEGURO.AsFloat +
      DadosSped.qryCompraDESPESAS.AsFloat - DadosSped.qryCompraDESCONTO.AsFloat
      + DadosSped.qryCompraTOTAL_IPI.AsFloat +
      DadosSped.qryCompraTOTAL_ST.AsFloat;

    VFCP := DadosSped.qryCompraTOTAL.AsFloat - vNF;

    if DadosSped.qryCompraBASE_ST.AsFloat > 0 then
      vPercentualFCP := VFCP / DadosSped.qryCompraBASE_ICM.AsFloat;

    if DadosSped.qryCompraBASE_ST.AsFloat > 0 then
      vPercentualST := DadosSped.qryCompraTOTAL_ST.AsFloat /
        DadosSped.qryCompraBASE_ST.AsFloat;

    dm1.qrySped_C100.Insert;
    // insere na tabela do sped registro c100 as compras
    dm1.qrySped_C100fk_sped.Value := CodSped;
    dm1.qrySped_C100CODIGO.Value := dm.Numerador('SPED_C100', 'CODIGO',
      'N', '', '');
    dm1.qrySped_C100FK_PARTICIPANTES.AsFloat :=
      DadosSped.qryCompraID_FORNECEDOR.AsFloat;
    dm1.qrySped_C100ind_oper.Value := '0'; // operação de entrada
    dm1.qrySped_C100ind_emit.Value := DadosSped.qryCompraTPEMISSAO.Value;
    dm1.qrySped_C100cod_mod.Value := DadosSped.qryCompraMODELO.Value;
   { if (DadosSped.qryCompraSTATUS.Value = 'F') or
      (DadosSped.qryCompraSTATUS.Value = '2') then
      dm1.qrySped_C100cod_sit.Value := '00'; // Documento regular
    if (DadosSped.qryCompraSTATUS.Value = 'C') or
      (DadosSped.qryCompraSTATUS.Value = '3') then
      dm1.qrySped_C100cod_sit.Value := '02'; // Documento cancelado
    if (DadosSped.qryCompraSTATUS.Value = '6') then
      dm1.qrySped_C100cod_sit.Value := '04'; // Documento Denegado  }
    dm1.qrySped_C100ser.Value := DadosSped.qryCompraSERIE.Value;

    dm1.qrySped_C100cod_sit.Value := '00';  // Documento regular

    dm1.qrySped_C100num_doc.Value := DadosSped.qryCompraNR_NOTA.AsInteger;
    dm1.qrySped_C100chv_nfe.Value := DadosSped.qryCompraCHAVE.Value;
    dm1.qrySped_C100dt_doc.Value := DadosSped.qryCompraDTEMISSAO.Value;
    dm1.qrySped_C100dt_e_s.Value := DadosSped.qryCompraDTENTRADA.Value;
    dm1.qrySped_C100vl_doc.AsFloat := DadosSped.qryCompraTOTAL.AsFloat;
    dm1.qrySped_C100ind_pgto.Value := '9';
    dm1.qrySped_C100vl_desc.AsFloat := DadosSped.qryCompraDESCONTO.AsFloat;
    dm1.qrySped_C100vl_merc.AsFloat := DadosSped.qryCompraSUBTOTAL.AsFloat;
    dm1.qrySped_C100ind_frt.Value := 2;
    dm1.qrySped_C100vl_seguro.AsFloat := DadosSped.qryCompraSEGURO.AsFloat;
    dm1.qrySped_C100vl_out_da.AsFloat :=
      DadosSped.qryCompraDESPESAS.AsFloat + VFCP;
    dm1.qrySped_C100vl_frete.AsFloat := DadosSped.qryCompraFRETE.AsFloat;
    dm1.qrySped_C100vl_bc_icms.AsFloat := DadosSped.qryCompraBASE_ICM.AsFloat;
    dm1.qrySped_C100vl_icms.AsFloat := DadosSped.qryCompraTOTAL_ICM.AsFloat;
    dm1.qrySped_C100vl_bc_icms_st.AsFloat :=
      DadosSped.qryCompraBASE_ST.AsFloat;
    dm1.qrySped_C100vl_icms_st.AsFloat := DadosSped.qryCompraTOTAL_ST.AsFloat;
    dm1.qrySped_C100vl_ipi.AsFloat := DadosSped.qryCompraTOTAL_IPI.AsFloat;
    dm1.qrySped_C100vl_pis.AsFloat := DadosSped.qryCompraTOTAL_PIS.AsFloat;
    dm1.qrySped_C100vl_cofins.AsFloat := DadosSped.qryCompraTOTAL_COF.AsFloat;
    dm1.qrySped_C100FK_EMPRESA.AsInteger := iemp;
     dm1.qrySped_C100FK_USUARIO.AsInteger := iCodUsu;
    dm1.qrySped_C100.Post;
    dm.Coneccao.CommitRetaining;

    DadosSped.qryItensC.Close; // abre os itens da compra
    DadosSped.qryItensC.Params[0].Value := DadosSped.qryCompraID.Value;
    DadosSped.qryItensC.Open;

    DadosSped.qryItensC.First;

    while not DadosSped.qryItensC.Eof do
    begin // percorre os itens da compra

     // if (DadosSped.qryCompraSTATUS.Value = 'F') then
      begin

        dm1.qrySped_C170.Insert; // insere itens da venda no registro c170
        dm1.qrySped_C170CODIGO.Value := dm.Numerador('SPED_C170', 'CODIGO',
          'N', '', '');
        dm1.qrySped_C170FK_C100.Value := dm1.qrySped_C100CODIGO.Value;
        DadosSped.qryConsUnidade.Locate('unidade',
          DadosSped.qryItensCUNIDADE.Value, []);
        dm1.qrySped_C170fk_unidade.Value :=
          DadosSped.qryConsUnidadeCODIGO.Value;
        dm1.qrySped_C170FK_PRODUTO.Value :=
          DadosSped.qryItensCFK_PRODUTO.AsInteger;
        dm1.qrySped_C170descricao.Value := DadosSped.qryItensCDESCRICAO.Value;
        dm1.qrySped_C170qtd.AsFloat := DadosSped.qryItensCQTD.AsFloat;
        dm1.qrySped_C170vl_item.AsFloat := DadosSped.qryItensCVL_ITEM.AsFloat;
        dm1.qrySped_C170vl_desc.AsFloat :=
          DadosSped.qryItensCDESCONTO.AsFloat;
        dm1.qrySped_C170ind_mov.Value := '0';
        dm1.qrySped_C170cst_icms.Value := DadosSped.qryItensCCST_ICM.Value;
        dm1.qrySped_C170cfop.Value := DadosSped.qryItensCCFOP.Value;
        dm1.qrySped_C170vl_bc_icms.Value :=
          DadosSped.qryItensCBASE_ICMS.AsFloat;
        dm1.qrySped_C170aliq_icm.AsFloat :=
          DadosSped.qryItensCALIQ_ICMS.AsFloat;
        dm1.qrySped_C170vl_icms.Value := DadosSped.qryItensCVL_ICMS.AsFloat;
        dm1.qrySped_C170vl_bc_icms_st.AsFloat :=
          DadosSped.qryItensCBASE_ST.AsFloat;
        dm1.qrySped_C170aliq_st.AsFloat := DadosSped.qryItensCALIQ_ST.AsFloat;

        if DadosSped.qryItensCVL_ST.AsFloat > 0 then
          dm1.qrySped_C170vl_icms_st.AsFloat :=
            DadosSped.qryItensCVL_ST.AsFloat
        else
          dm1.qrySped_C170vl_icms_st.AsFloat :=
            (DadosSped.qryItensCBASE_ST.AsFloat * vPercentualST);

        dm1.qrySped_C170cst_ipi.Value := DadosSped.qryItensCCST_IPI.Value;
        dm1.qrySped_C170vl_bc_ipi.AsFloat :=
          DadosSped.qryItensCBASE_IPI.AsFloat;
        dm1.qrySped_C170aliq_ipi.AsFloat :=
          DadosSped.qryItensCALIQ_IPI.AsFloat;
        dm1.qrySped_C170vl_ipi.AsFloat := DadosSped.qryItensCVL_IPI.AsFloat;
        dm1.qrySped_C170vl_bc_pis.AsFloat :=
          DadosSped.qryItensCBASE_PIS.AsFloat;
        dm1.qrySped_C170aliq_pis_perc.AsFloat :=
          DadosSped.qryItensCALIQ_PIS.AsFloat;

        dm1.qrySped_C170vl_pis.AsFloat := DadosSped.qryItensCVL_PIS.AsFloat;
        dm1.qrySped_C170CST_PIS.Value := DadosSped.qryItensCCST_COF.Value;
        if (DadosSped.qryItensCCST_PIS.Value = '01') then
        begin
          dm1.qrySped_C170CST_PIS.Value := '50';
          dm1.qrySped_C170CST_COFINS.Value := '50';
        end;
        if DadosSped.qryItensCCST_PIS.Value = '02' then
        begin
          dm1.qrySped_C170CST_PIS.Value := '50';
          dm1.qrySped_C170CST_COFINS.Value := '50';
        end;
        if DadosSped.qryItensCCST_PIS.Value = '03' then
        begin
          dm1.qrySped_C170CST_PIS.Value := '50';
          dm1.qrySped_C170CST_COFINS.Value := '50';
        end;
        if DadosSped.qryItensCCST_PIS.Value = '04' then
        begin
          dm1.qrySped_C170CST_PIS.Value := '50';
          dm1.qrySped_C170CST_COFINS.Value := '50';
        end;
        if DadosSped.qryItensCCST_PIS.Value = '05' then
        begin
          dm1.qrySped_C170CST_PIS.Value := '50';
          dm1.qrySped_C170CST_COFINS.Value := '50';
        end;
        if DadosSped.qryItensCCST_PIS.Value = '06' then
        begin
          dm1.qrySped_C170CST_PIS.Value := '50';
          dm1.qrySped_C170CST_COFINS.Value := '50';
        end;

        if DadosSped.qryItensCCST_PIS.Value = '07' then
        begin
          dm1.qrySped_C170CST_PIS.Value := '71';
          dm1.qrySped_C170CST_COFINS.Value := '71';
        end;
        if DadosSped.qryItensCCST_PIS.Value = '08' then
        begin
          dm1.qrySped_C170CST_PIS.Value := '74';
          dm1.qrySped_C170CST_COFINS.Value := '74';
        end;
        if DadosSped.qryItensCCST_PIS.Value = '09' then
        begin
          dm1.qrySped_C170CST_PIS.Value := '72';
          dm1.qrySped_C170CST_COFINS.Value := '72';
        end;
        if DadosSped.qryItensCCST_PIS.Value = '49' then
        begin
          dm1.qrySped_C170CST_PIS.Value := '99';
          dm1.qrySped_C170CST_COFINS.Value := '99';
        end;

        dm1.qrySped_C170vl_bc_cofins.AsFloat :=
          DadosSped.qryItensCBASE_COF.AsFloat;
        dm1.qrySped_C170aliq_cofins_perc.AsFloat :=
          DadosSped.qryItensCALIQ_COF.AsFloat;
        dm1.qrySped_C170vl_cofins.AsFloat :=
          DadosSped.qryItensCVL_COF.AsFloat;

        if dm1.qrySped_C170vl_bc_icms_st.AsFloat > 0 then
          vOutros := dm1.qrySped_C170vl_bc_icms.AsFloat * vPercentualFCP;

        dm1.qrySped_C170vl_opr.AsFloat := DadosSped.qryItensCVL_ITEM.AsFloat +
          DadosSped.qryItensCVL_IPI.AsFloat + DadosSped.qryItensCSEGURO.AsFloat
          + DadosSped.qryItensCDESPESA.AsFloat +
          DadosSped.qryItensCFRETE1.AsFloat + DadosSped.qryItensCVL_ST.AsFloat -
          DadosSped.qryItensCDESCONTO.AsFloat + vOutros;
        dm1.qrySped_C170FK_EMPRESA.AsInteger := iemp;
        dm1.qrySped_C170FK_USUARIO.AsInteger := iCodUsu;
        dm1.qrySped_C170.Post;
        dm.Coneccao.CommitRetaining;
      end;
      DadosSped.qryItensC.Next;
    end;
    DadosSped.qryCompra.Next;
  end;
end;

procedure TDadosSped.ImportaEntradaNFe(dtini, dtfim: Tdate; Empresa: Integer);
begin
  // filtra compras
  DadosSped.qryNFe_E.Close;
  DadosSped.qryNFe_E.Params[0].AsDate := dtini;
  DadosSped.qryNFe_E.Params[1].AsDate := dtfim;
  DadosSped.qryNFe_E.Params[2].Value := Empresa;
  DadosSped.qryNFe_E.Open;

  dm1.qrySped_C100.Close;
  dm1.qrySped_C100.Open;

  dm1.qrySped_C170.Close;
  dm1.qrySped_C170.Open;

  while not DadosSped.qryNFe_E.Eof do // percore todas as compras
  begin
    dm1.qrySped_C100.Insert;
    // insere na tabela do sped registro c100 as compras
    dm1.qrySped_C100fk_sped.Value := CodSped;
    dm1.qrySped_C100CODIGO.Value := dm.Numerador('SPED_C100', 'CODIGO',
      'N', '', '');
    dm1.qrySped_C100FK_PARTICIPANTES.AsFloat :=
      DadosSped.qryNFe_EID_FORNECEDOR.AsFloat;
    dm1.qrySped_C100ind_oper.Value := '0'; // operação de entrada
    dm1.qrySped_C100ind_emit.Value := DadosSped.qryNFe_ETPEMISSAO.Value;
    dm1.qrySped_C100cod_mod.Value := '55';
   // if (DadosSped.qryNFe_ESTATUS.Value = '00') then
      dm1.qrySped_C100cod_sit.Value := DadosSped.qryNFe_ESTATUS.Value;  //'00'; // Documento regular
   { if (DadosSped.qryNFe_ESTATUS.Value = '02') then
      dm1.qrySped_C100cod_sit.Value := '02'; // Documento cancelado
    if (DadosSped.qryNFe_ESTATUS.Value = '05') then
      dm1.qrySped_C100cod_sit.Value := '05'; // Documento inutilizado  }
    dm1.qrySped_C100ser.Value := DadosSped.qryNFe_ESERIE.Value;
    dm1.qrySped_C100num_doc.Value := DadosSped.qryNFe_ENUMERO.AsInteger;
    dm1.qrySped_C100chv_nfe.Value := DadosSped.qryNFe_ECHAVE.Value;
    dm1.qrySped_C100dt_doc.Value := DadosSped.qryNFe_EDATA_EMISSAO.Value;
    dm1.qrySped_C100dt_e_s.Value := DadosSped.qryNFe_EDATA_EMISSAO.Value;
    dm1.qrySped_C100vl_doc.Value := DadosSped.qryNFe_ETOTAL.AsFloat;
    dm1.qrySped_C100ind_pgto.Value := '9';
    dm1.qrySped_C100vl_desc.Value := DadosSped.qryNFe_EDESCONTO.AsFloat;
    dm1.qrySped_C100vl_merc.Value := DadosSped.qryNFe_ESUBTOTAL.AsFloat;
    dm1.qrySped_C100ind_frt.Value := 9;
    dm1.qrySped_C100vl_seguro.Value := DadosSped.qryNFe_ESEGURO.AsFloat;
    dm1.qrySped_C100vl_out_da.Value := DadosSped.qryNFe_EDESPESAS.AsFloat;
    dm1.qrySped_C100vl_frete.Value := DadosSped.qryNFe_EFRETE.AsFloat;
    dm1.qrySped_C100vl_bc_icms.Value := DadosSped.qryNFe_EBASEICMS.AsFloat;
    dm1.qrySped_C100vl_icms.Value := DadosSped.qryNFe_ETOTALICMS.AsFloat;
    dm1.qrySped_C100vl_bc_icms_st.Value := DadosSped.qryNFe_EBASE_ST.AsFloat;
    dm1.qrySped_C100vl_icms_st.Value := DadosSped.qryNFe_ETOTAL_ST.AsFloat;
    dm1.qrySped_C100vl_ipi.Value := DadosSped.qryNFe_ETOTAL_IPI.AsFloat;
    dm1.qrySped_C100vl_pis.Value := DadosSped.qryNFe_ETOTALICMSPIS.AsFloat;
    dm1.qrySped_C100vl_cofins.Value :=
      DadosSped.qryNFe_ETOTALICMSCOFINS.AsFloat;
    dm1.qrySped_C100FK_EMPRESA.AsInteger := iemp;
    dm1.qrySped_C100FK_USUARIO.AsInteger := iCodUsu;

    dm1.qrySped_C100.Post;
    dm.Coneccao.CommitRetaining;

    DadosSped.qryItens_NFe_E.Close; // abre os itens da nfe de entrada
    DadosSped.qryItens_NFe_E.Params[0].Value := DadosSped.qryNFe_EID_PEDIDOCOMPRA.Value;
    DadosSped.qryItens_NFe_E.Open;

    DadosSped.qryItens_NFe_E.First;

    while not DadosSped.qryItens_NFe_E.Eof do
    begin // percorre os itens da compra

      dm1.qrySped_C170.Insert; // insere itens da venda no registro c170
      dm1.qrySped_C170CODIGO.Value := dm.Numerador('SPED_C170', 'CODIGO',
        'N', '', '');
      dm1.qrySped_C170FK_C100.Value := dm1.qrySped_C100CODIGO.Value;
      DadosSped.qryConsUnidade.Locate('unidade',
        DadosSped.qryItens_NFe_EUNIDADE.Value, []);
      dm1.qrySped_C170fk_unidade.Value :=
        DadosSped.qryConsUnidadeCODIGO.Value;
      dm1.qrySped_C170FK_PRODUTO.Value :=
        DadosSped.qryItens_NFe_EID_PRODUTO.AsInteger;
      dm1.qrySped_C170descricao.Value :=
        DadosSped.qryItens_NFe_EDESCRICAO.Value;
      dm1.qrySped_C170qtd.Value := DadosSped.qryItens_NFe_EQTD.AsFloat;
      dm1.qrySped_C170vl_item.Value := DadosSped.qryItens_NFe_ETOTAL.AsFloat;
      dm1.qrySped_C170vl_desc.Value :=
        DadosSped.qryItens_NFe_EDESCONTO.AsFloat;
      dm1.qrySped_C170ind_mov.Value := '0';
      dm1.qrySped_C170cst_icms.Value := DadosSped.qryItens_NFe_ECST.Value;
      dm1.qrySped_C170cfop.Value := DadosSped.qryItens_NFe_ECFOP.Value;
      dm1.qrySped_C170vl_bc_icms.Value :=
        DadosSped.qryItens_NFe_EBASE_ICMS.AsFloat;
      dm1.qrySped_C170aliq_icm.Value :=
        DadosSped.qryItens_NFe_EALIQ_ICMS.AsFloat;
      dm1.qrySped_C170vl_icms.Value :=
        DadosSped.qryItens_NFe_EVALOR_ICMS.AsFloat;
      dm1.qrySped_C170vl_bc_icms_st.Value :=
        DadosSped.qryItens_NFe_EBASE_ICMS_ST.AsFloat;
      dm1.qrySped_C170aliq_st.Value :=
        DadosSped.qryItens_NFe_EALIQ_ICMS_ST.AsFloat;
      dm1.qrySped_C170vl_icms_st.Value :=
        DadosSped.qryItens_NFe_EVALOR_ICMS_ST.AsFloat;
      dm1.qrySped_C170cst_ipi.Value := DadosSped.qryItens_NFe_ECST_IPI.Value;
      dm1.qrySped_C170vl_bc_ipi.Value :=
        DadosSped.qryItens_NFe_EBASE_IPI.AsFloat;
      dm1.qrySped_C170aliq_ipi.Value :=
        DadosSped.qryItens_NFe_EALIQ_IPI.AsFloat;
      dm1.qrySped_C170vl_ipi.Value :=
        DadosSped.qryItens_NFe_EVALOR_IPI.AsFloat;
      dm1.qrySped_C170vl_bc_pis.Value :=
        DadosSped.qryItens_NFe_EBASE_PIS_ICMS.AsFloat;
      dm1.qrySped_C170aliq_pis_perc.Value :=
        DadosSped.qryItens_NFe_EALIQ_PIS_ICMS.AsFloat;
      dm1.qrySped_C170vl_pis.Value :=
        DadosSped.qryItens_NFe_EVALOR_PIS_ICMS.AsFloat;
      dm1.qrySped_C170CST_PIS.Value :=
        DadosSped.qryItens_NFe_ECST_COFINS.Value;
      if (DadosSped.qryItens_NFe_ECST_PIS.Value = '01') then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;
      if DadosSped.qryItens_NFe_ECST_PIS.Value = '02' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;
      if DadosSped.qryItens_NFe_ECST_PIS.Value = '03' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;
      if DadosSped.qryItens_NFe_ECST_PIS.Value = '04' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;
      if DadosSped.qryItens_NFe_ECST_PIS.Value = '05' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;
      if DadosSped.qryItens_NFe_ECST_PIS.Value = '06' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;

      if DadosSped.qryItens_NFe_ECST_PIS.Value = '07' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '71';
        dm1.qrySped_C170CST_COFINS.Value := '71';
      end;
      if DadosSped.qryItens_NFe_ECST_PIS.Value = '08' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '74';
        dm1.qrySped_C170CST_COFINS.Value := '74';
      end;
      if DadosSped.qryItens_NFe_ECST_PIS.Value = '09' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '72';
        dm1.qrySped_C170CST_COFINS.Value := '72';
      end;
      if DadosSped.qryItens_NFe_ECST_PIS.Value = '49' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '99';
        dm1.qrySped_C170CST_COFINS.Value := '99';
      end;

      dm1.qrySped_C170vl_bc_cofins.Value :=
        DadosSped.qryItens_NFe_EBASE_COFINS_ICMS.AsFloat;
      dm1.qrySped_C170aliq_cofins_perc.Value :=
        DadosSped.qryItens_NFe_EALIQ_COFINS_ICMS.AsFloat;
      dm1.qrySped_C170vl_cofins.Value :=
        DadosSped.qryItens_NFe_EVALOR_COFINS_ICMS.AsFloat;
      dm1.qrySped_C170vl_opr.Value := DadosSped.qryItens_NFe_ETOTAL.AsFloat +
        DadosSped.qryItens_NFe_EVALOR_IPI.AsFloat +
        DadosSped.qryItens_NFe_ESEGURO.AsFloat +
        DadosSped.qryItens_NFe_EDESPESAS.AsFloat +
        DadosSped.qryItens_NFe_EFRETE.AsFloat +
        DadosSped.qryItens_NFe_EVALOR_ICMS_ST.AsFloat -
        DadosSped.qryItens_NFe_EDESCONTO.AsFloat;
        dm1.qrySped_C170FK_EMPRESA.AsInteger := iemp;
     dm1.qrySped_C170FK_USUARIO.AsInteger := iCodUsu;
      dm1.qrySped_C170.Post;
      dm.Coneccao.CommitRetaining;

      DadosSped.qryItens_NFe_E.Next;
    end;
    DadosSped.qryNFe_E.Next;
  end;

end;

procedure TDadosSped.ImportaSaidaNCFe(dtini, dtfim: Tdate; Empresa: Integer);
begin
  // filtra compras
  DadosSped.qryNFCE_S.Close;
  DadosSped.qryNFCE_S.Params[0].AsDate := dtini;
  DadosSped.qryNFCE_S.Params[1].AsDate := dtfim;
  DadosSped.qryNFCE_S.Params[2].Value := Empresa;
  DadosSped.qryNFCE_S.Open;

  dm1.qrySped_C100.Close;
  dm1.qrySped_C100.Open;

  dm1.qrySped_C170.Close;
  dm1.qrySped_C170.Open;

  while not DadosSped.qryNFCE_S.Eof do // percore todas as compras
  begin
    dm1.qrySped_C100.Insert;
    // insere na tabela do sped registro c100 as compras
    dm1.qrySped_C100fk_sped.Value := CodSped;
    dm1.qrySped_C100CODIGO.Value := dm.Numerador('SPED_C100', 'CODIGO',
      'N', '', '');
    dm1.qrySped_C100FK_PARTICIPANTES.AsFloat :=
      DadosSped.qryNFCE_SID_CLIENTE.AsFloat;
    dm1.qrySped_C100ind_oper.Value := '1'; // operação de saida
    dm1.qrySped_C100ind_emit.Value := '0';
    dm1.qrySped_C100cod_mod.Value := '65';
   // if (DadosSped.qryNFCE_SSITUACAO.Value = 'T') then
      dm1.qrySped_C100cod_sit.Value := DadosSped.qryNFCE_SSITUACAO.Value; // '00'; // Documento regular
   { if (DadosSped.qryNFCE_SSITUACAO.Value = 'C') then
      dm1.qrySped_C100cod_sit.Value := '02'; // Documento cancelado }
    dm1.qrySped_C100ser.Value := DadosSped.qryNFCE_SSERIE.Value;
    dm1.qrySped_C100num_doc.Value := DadosSped.qryNFCE_SNUMERO.AsInteger;
    dm1.qrySped_C100chv_nfe.Value := DadosSped.qryNFCE_SCHAVE.Value;
    dm1.qrySped_C100dt_doc.Value := DadosSped.qryNFCE_SDATA_EMISSAO.Value;
    dm1.qrySped_C100dt_e_s.Value := DadosSped.qryNFCE_SDATA_EMISSAO.Value;
    dm1.qrySped_C100vl_doc.Value := DadosSped.qryNFCE_STOTAL.AsFloat;
    dm1.qrySped_C100ind_pgto.Value := '9';
    dm1.qrySped_C100vl_desc.Value := DadosSped.qryNFCE_SDESCONTO.AsFloat;
    dm1.qrySped_C100vl_merc.Value := DadosSped.qryNFCE_SSUBTOTAL.AsFloat;
    dm1.qrySped_C100ind_frt.Value := 9;
    dm1.qrySped_C100vl_seguro.Value := DadosSped.qryNFCE_SSEGURO.AsFloat;
    dm1.qrySped_C100vl_out_da.Value := DadosSped.qryNFCE_SDESPESAS.AsFloat;
    dm1.qrySped_C100vl_frete.Value := DadosSped.qryNFCE_SFRETE.AsFloat;
    dm1.qrySped_C100vl_bc_icms.Value := DadosSped.qryNFCE_SBASEICMS.AsFloat;
    dm1.qrySped_C100vl_icms.Value := DadosSped.qryNFCE_STOTALICMS.AsFloat;
    dm1.qrySped_C100vl_bc_icms_st.Value := DadosSped.qryNFCE_SBASE_ST.AsFloat;
    dm1.qrySped_C100vl_icms_st.Value := DadosSped.qryNFCE_STOTAL_ST.AsFloat;
    dm1.qrySped_C100vl_ipi.Value := DadosSped.qryNFCE_STOTAL_IPI.AsFloat;
    dm1.qrySped_C100vl_pis.Value := DadosSped.qryNFCE_STOTALICMSPIS.AsFloat;
    dm1.qrySped_C100vl_cofins.Value :=
      DadosSped.qryNFCE_STOTALICMSCOFINS.AsFloat;
          dm1.qrySped_C100FK_EMPRESA.AsInteger := iemp;
     dm1.qrySped_C100FK_USUARIO.AsInteger := iCodUsu;
    dm1.qrySped_C100.Post;
    dm.Coneccao.CommitRetaining;

    DadosSped.QryItens_NFCe_S.Close; // abre os itens da nfce
    DadosSped.QryItens_NFCe_S.Params[0].Value := DadosSped.qryNFCE_SCODIGO.Value;
    DadosSped.QryItens_NFCe_S.Open;

    DadosSped.QryItens_NFCe_S.First;

    while not DadosSped.QryItens_NFCe_S.Eof do
    begin // percorre os itens da NFCe

      dm1.qrySped_C170.Insert; // insere itens da venda no registro c170
      dm1.qrySped_C170CODIGO.Value := dm.Numerador('SPED_C170', 'CODIGO',
        'N', '', '');
      dm1.qrySped_C170FK_C100.Value := dm1.qrySped_C100CODIGO.Value;
      DadosSped.qryConsUnidade.Locate('unidade',
        DadosSped.QryItens_NFCe_SUNIDADE.Value, []);
      dm1.qrySped_C170fk_unidade.Value :=
        DadosSped.qryConsUnidadeCODIGO.Value;
      dm1.qrySped_C170FK_PRODUTO.Value :=
        DadosSped.QryItens_NFCe_SID_PRODUTO.AsInteger;
      dm1.qrySped_C170descricao.Value :=
        DadosSped.QryItens_NFCe_SDESCRICAO.Value;
      dm1.qrySped_C170qtd.Value :=
        DadosSped.QryItens_NFCe_SQUANTIDADE.AsFloat;
      dm1.qrySped_C170vl_item.Value := DadosSped.QryItens_NFCe_STOTAL.AsFloat;
      dm1.qrySped_C170vl_desc.Value :=
        DadosSped.QryItens_NFCe_SVDESCONTO.AsFloat;
      dm1.qrySped_C170ind_mov.Value := '0';
      dm1.qrySped_C170cst_icms.Value := DadosSped.QryItens_NFCe_SCST.Value;
      dm1.qrySped_C170cfop.Value := DadosSped.QryItens_NFCe_SCFOP.Value;
      dm1.qrySped_C170vl_bc_icms.Value :=
        DadosSped.QryItens_NFCe_SBASE_ICMS.AsFloat;
      dm1.qrySped_C170aliq_icm.Value :=
        DadosSped.QryItens_NFCe_SALIQ_ICMS.AsFloat;
      dm1.qrySped_C170vl_icms.Value :=
        DadosSped.QryItens_NFCe_SVALOR_ICMS.AsFloat;
      dm1.qrySped_C170vl_bc_icms_st.Value :=
        DadosSped.QryItens_NFCe_SBASE_ICMS_ST.AsFloat;
      dm1.qrySped_C170aliq_st.Value :=
        DadosSped.QryItens_NFCe_SALIQ_ICMS_ST.Value;
      dm1.qrySped_C170vl_icms_st.Value :=
        DadosSped.QryItens_NFCe_SVALOR_ICMS_ST.AsFloat;
      dm1.qrySped_C170cst_ipi.Value := DadosSped.QryItens_NFCe_SCST_IPI.Value;
      dm1.qrySped_C170vl_bc_ipi.Value :=
        DadosSped.QryItens_NFCe_SBASE_IPI.AsFloat;
      dm1.qrySped_C170aliq_ipi.Value :=
        DadosSped.QryItens_NFCe_SALIQ_IPI.Value;
      dm1.qrySped_C170vl_ipi.Value :=
        DadosSped.QryItens_NFCe_SVALOR_IPI.AsFloat;
      dm1.qrySped_C170vl_bc_pis.Value :=
        DadosSped.QryItens_NFCe_SBASE_PIS_ICMS.AsFloat;
      dm1.qrySped_C170aliq_pis_perc.Value :=
        DadosSped.QryItens_NFCe_SALIQ_PIS_ICMS.AsFloat;
      dm1.qrySped_C170vl_pis.Value :=
        DadosSped.QryItens_NFCe_SVALOR_PIS_ICMS.AsFloat;
      dm1.qrySped_C170CST_PIS.Value :=
        DadosSped.QryItens_NFCe_SCST_COFINS.Value;
      if (DadosSped.QryItens_NFCe_SCST_PIS.Value = '01') then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;
      if DadosSped.QryItens_NFCe_SCST_PIS.Value = '02' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;
      if DadosSped.QryItens_NFCe_SCST_PIS.Value = '03' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;
      if DadosSped.QryItens_NFCe_SCST_PIS.Value = '04' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;
      if DadosSped.QryItens_NFCe_SCST_PIS.Value = '05' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;
      if DadosSped.QryItens_NFCe_SCST_PIS.Value = '06' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '50';
        dm1.qrySped_C170CST_COFINS.Value := '50';
      end;

      if DadosSped.QryItens_NFCe_SCST_PIS.Value = '07' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '71';
        dm1.qrySped_C170CST_COFINS.Value := '71';
      end;
      if DadosSped.QryItens_NFCe_SCST_PIS.Value = '08' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '74';
        dm1.qrySped_C170CST_COFINS.Value := '74';
      end;
      if DadosSped.QryItens_NFCe_SCST_PIS.Value = '09' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '72';
        dm1.qrySped_C170CST_COFINS.Value := '72';
      end;
      if DadosSped.QryItens_NFCe_SCST_PIS.Value = '49' then
      begin
        dm1.qrySped_C170CST_PIS.Value := '99';
        dm1.qrySped_C170CST_COFINS.Value := '99';
      end;

      dm1.qrySped_C170vl_bc_cofins.Value :=
        DadosSped.QryItens_NFCe_SBASE_COFINS_ICMS.AsFloat;
      dm1.qrySped_C170aliq_cofins_perc.Value :=
        DadosSped.QryItens_NFCe_SALIQ_COFINS_ICMS.AsFloat;
      dm1.qrySped_C170vl_cofins.Value :=
        DadosSped.QryItens_NFCe_SVALOR_COFINS_ICMS.AsFloat;
      dm1.qrySped_C170vl_opr.Value := DadosSped.QryItens_NFCe_STOTAL.AsFloat +
        DadosSped.QryItens_NFCe_SVALOR_IPI.AsFloat +
        DadosSped.QryItens_NFCe_SSEGURO.AsFloat +
        DadosSped.QryItens_NFCe_SDESPESAS.AsFloat +
        DadosSped.QryItens_NFCe_SFRETE.AsFloat +
        DadosSped.QryItens_NFCe_SVALOR_ICMS_ST.AsFloat -
        DadosSped.QryItens_NFCe_SVDESCONTO.AsFloat;
     dm1.qrySped_C170FK_EMPRESA.AsInteger := iemp;
     dm1.qrySped_C170FK_USUARIO.AsInteger := iCodUsu;
      dm1.qrySped_C170.Post;
      dm.Coneccao.CommitRetaining;

      DadosSped.QryItens_NFCe_S.Next;
    end;
    DadosSped.qryNFCE_S.Next;
  end;
end;

procedure TDadosSped.ImportaSaidaNFe(dtini, dtfim: Tdate; Empresa: Integer);
begin
  // filtra compras
  DadosSped.qryNFE_S.Close;
  DadosSped.qryNFE_S.Params[0].AsDate := dtini;
  DadosSped.qryNFE_S.Params[1].AsDate := dtfim;
  DadosSped.qryNFE_S.Params[2].Value := Empresa;
  DadosSped.qryNFE_S.Open;

  dm1.qrySped_C100.Close;
  dm1.qrySped_C100.Open;

  dm1.qrySped_C170.Close;
  dm1.qrySped_C170.Open;

  while not DadosSped.qryNFE_S.Eof do // percote todas as nfe de saidas
  begin
    dm1.qrySped_C100.Insert; // insere na tabela do sped registro c100 as nfe
    dm1.qrySped_C100fk_sped.Value := CodSped;
    dm1.qrySped_C100CODIGO.Value := dm.Numerador('SPED_C100', 'CODIGO',
      'N', '', '');
    dm1.qrySped_C100FK_PARTICIPANTES.AsFloat :=
      DadosSped.qryNFE_SID_CLIENTE.AsFloat;
    dm1.qrySped_C100ind_oper.Value := '1'; // operação de saida
    dm1.qrySped_C100ind_emit.Value := '0';
    dm1.qrySped_C100cod_mod.Value := '55';
   // if (DadosSped.qryNFE_SSITUACAO.Value = '2') then
      dm1.qrySped_C100cod_sit.Value := DadosSped.qryNFE_SSITUACAO.Value; //'00'; // Documento regular
   { if (DadosSped.qryNFE_SSITUACAO.Value = '3') then
      dm1.qrySped_C100cod_sit.Value := '02'; // Documento cancelado
    if (DadosSped.qryNFE_SSITUACAO.Value = '6') then
      dm1.qrySped_C100cod_sit.Value := '04'; // Documento denegado }
    dm1.qrySped_C100ser.Value := DadosSped.qryNFE_SSERIE.Value;
    dm1.qrySped_C100num_doc.Value := DadosSped.qryNFE_SNUMERO.AsInteger;
    dm1.qrySped_C100chv_nfe.Value := DadosSped.qryNFE_SCHAVE.Value;
    dm1.qrySped_C100dt_doc.Value := DadosSped.qryNFE_SDATA_EMISSAO.Value;
    dm1.qrySped_C100dt_e_s.Value := DadosSped.qryNFE_SDATA_EMISSAO.Value;
    dm1.qrySped_C100vl_doc.Value := DadosSped.qryNFE_STOTAL.AsFloat;
    dm1.qrySped_C100ind_pgto.Value := '9';
    dm1.qrySped_C100vl_desc.Value := DadosSped.qryNFE_SDESCONTO.AsFloat;
    dm1.qrySped_C100vl_merc.Value := DadosSped.qryNFE_SSUBTOTAL.AsFloat;
    dm1.qrySped_C100ind_frt.Value := 9;
    dm1.qrySped_C100vl_seguro.Value := DadosSped.qryNFE_SSEGURO.AsFloat;
    dm1.qrySped_C100vl_out_da.Value := DadosSped.qryNFE_SDESPESAS.AsFloat;
    dm1.qrySped_C100vl_frete.Value := DadosSped.qryNFE_SFRETE.AsFloat;
    dm1.qrySped_C100vl_bc_icms.Value := DadosSped.qryNFE_SBASEICMS.AsFloat;
    dm1.qrySped_C100vl_icms.Value := DadosSped.qryNFE_STOTALICMS.AsFloat;
    dm1.qrySped_C100vl_bc_icms_st.Value := DadosSped.qryNFE_SBASE_ST.AsFloat;
    dm1.qrySped_C100vl_icms_st.Value := DadosSped.qryNFE_STOTAL_ST.AsFloat;
    dm1.qrySped_C100vl_ipi.Value := DadosSped.qryNFE_STOTAL_IPI.AsFloat;
    dm1.qrySped_C100vl_pis.Value := DadosSped.qryNFE_STOTALICMSPIS.AsFloat;
    dm1.qrySped_C100vl_cofins.Value :=
      DadosSped.qryNFE_STOTALICMSCOFINS.AsFloat;
          dm1.qrySped_C100FK_EMPRESA.AsInteger := iemp;
     dm1.qrySped_C100FK_USUARIO.AsInteger := iCodUsu;
    dm1.qrySped_C100.Post;
    dm.Coneccao.CommitRetaining;

    DadosSped.qryItens_NFe_S.Close; // abre os itens da nfce
    DadosSped.qryItens_NFe_S.Params[0].Value := DadosSped.qryNFE_SCODIGO.Value;
    DadosSped.qryItens_NFe_S.Open;

    DadosSped.qryItens_NFe_S.First;

    while not DadosSped.qryItens_NFe_S.Eof do
    begin // percorre os itens da NFCe
      if (DadosSped.qryNFE_SSITUACAO.Value = '00') then
      begin
        dm1.qrySped_C170.Insert; // insere itens da venda no registro c170
        dm1.qrySped_C170CODIGO.Value := dm.Numerador('SPED_C170', 'CODIGO',
          'N', '', '');
        dm1.qrySped_C170FK_C100.Value := dm1.qrySped_C100CODIGO.Value;
        DadosSped.qryConsUnidade.Locate('unidade',
          DadosSped.qryItens_NFe_SUNIDADE.Value, []);
        dm1.qrySped_C170fk_unidade.Value :=
          DadosSped.qryConsUnidadeCODIGO.Value;
        dm1.qrySped_C170FK_PRODUTO.Value :=
          DadosSped.qryItens_NFe_SID_PRODUTO.AsInteger;
        dm1.qrySped_C170descricao.Value :=
          DadosSped.qryItens_NFe_SDESCRICAO.Value;
        dm1.qrySped_C170qtd.Value := DadosSped.qryItens_NFe_SQTD.AsFloat;
        dm1.qrySped_C170vl_item.Value :=
          DadosSped.qryItens_NFe_STOTAL.AsFloat;
        dm1.qrySped_C170vl_desc.Value :=
          DadosSped.qryItens_NFe_SDESCONTO.AsFloat;
        dm1.qrySped_C170ind_mov.Value := '0';
        dm1.qrySped_C170cst_icms.Value := DadosSped.qryItens_NFe_SCST.Value;
        dm1.qrySped_C170cfop.Value := DadosSped.qryItens_NFe_SCFOP.Value;
        dm1.qrySped_C170vl_bc_icms.Value :=
          DadosSped.qryItens_NFe_SBASE_ICMS.AsFloat;
        dm1.qrySped_C170aliq_icm.Value :=
          DadosSped.qryItens_NFe_SALIQ_ICMS.AsFloat;
        dm1.qrySped_C170vl_icms.Value :=
          DadosSped.qryItens_NFe_SVALOR_ICMS.AsFloat;
        dm1.qrySped_C170vl_bc_icms_st.Value :=
          DadosSped.qryItens_NFe_SBASE_ICMS_ST.AsFloat;
        dm1.qrySped_C170aliq_st.Value :=
          DadosSped.qryItens_NFe_SALIQ_ICMS_ST.AsFloat;
        dm1.qrySped_C170vl_icms_st.Value :=
          DadosSped.qryItens_NFe_SVALOR_ICMS_ST.AsFloat;
        dm1.qrySped_C170cst_ipi.Value :=
          DadosSped.qryItens_NFe_SCST_IPI.Value;
        dm1.qrySped_C170vl_bc_ipi.Value :=
          DadosSped.qryItens_NFe_SBASE_IPI.AsFloat;
        dm1.qrySped_C170aliq_ipi.Value :=
          DadosSped.qryItens_NFe_SALIQ_IPI.AsFloat;
        dm1.qrySped_C170vl_ipi.Value :=
          DadosSped.qryItens_NFe_SVALOR_IPI.AsFloat;
        dm1.qrySped_C170vl_bc_pis.Value :=
          DadosSped.qryItens_NFe_SBASE_PIS_ICMS.AsFloat;
        dm1.qrySped_C170aliq_pis_perc.Value :=
          DadosSped.qryItens_NFe_SALIQ_PIS_ICMS.AsFloat;
        dm1.qrySped_C170vl_pis.Value :=
          DadosSped.qryItens_NFe_SVALOR_PIS_ICMS.AsFloat;
        dm1.qrySped_C170CST_PIS.Value :=
          DadosSped.qryItens_NFe_SCST_COFINS.Value;

        dm1.qrySped_C170CST_PIS.Value := '49';
        dm1.qrySped_C170CST_COFINS.Value := '49';

        { if DadosSped.qryItens_NFe_SCST_PIS.Value = '07' then
          begin
          dm1.qrySped_C170CST_PIS.Value := '71';
          dm1.qrySped_C170CST_COFINS.Value := '71';
          end;
          if DadosSped.qryItens_NFe_SCST_PIS.Value = '08' then
          begin
          dm1.qrySped_C170CST_PIS.Value := '74';
          dm1.qrySped_C170CST_COFINS.Value := '74';
          end;
          if DadosSped.qryItens_NFe_SCST_PIS.Value = '09' then
          begin
          dm1.qrySped_C170CST_PIS.Value := '72';
          dm1.qrySped_C170CST_COFINS.Value := '72';
          end;
          if DadosSped.qryItens_NFe_SCST_PIS.Value = '49' then
          begin
          dm1.qrySped_C170CST_PIS.Value := '99';
          dm1.qrySped_C170CST_COFINS.Value := '99';
          ; }

        dm1.qrySped_C170vl_bc_cofins.Value :=
          DadosSped.qryItens_NFe_SBASE_COFINS_ICMS.AsFloat;
        dm1.qrySped_C170aliq_cofins_perc.Value :=
          DadosSped.qryItens_NFe_SALIQ_COFINS_ICMS.AsFloat;
        dm1.qrySped_C170vl_cofins.Value :=
          DadosSped.qryItens_NFe_SVALOR_COFINS_ICMS.AsFloat;
        dm1.qrySped_C170vl_opr.Value := DadosSped.qryItens_NFe_STOTAL.AsFloat
          + DadosSped.qryItens_NFe_SVALOR_IPI.AsFloat +
          DadosSped.qryItens_NFe_SSEGURO.AsFloat +
          DadosSped.qryItens_NFe_SDESPESAS.AsFloat +
          DadosSped.qryItens_NFe_SFRETE.AsFloat +
          DadosSped.qryItens_NFe_SVALOR_ICMS_ST.AsFloat -
          DadosSped.qryItens_NFe_SDESCONTO.AsFloat;
      dm1.qrySped_C170FK_EMPRESA.AsInteger := iemp;
      dm1.qrySped_C170FK_USUARIO.AsInteger := iCodUsu;
        dm1.qrySped_C170.Post;
        dm.Coneccao.CommitRetaining;
      end;

      DadosSped.qryItens_NFe_S.Next;
    end;
    DadosSped.qryNFE_S.Next;
  end;

end;

procedure TDadosSped.REGC190(dtini, dtfim: Tdate; Empresa: Integer);
begin

  DadosSped.qryConsC100.Close;
  DadosSped.qryConsC100.Params[0].Value := CodSped;
  DadosSped.qryConsC100.Open;

  dm1.qrySped_C190.Close;
  dm1.qrySped_C190.Open;

  while not DadosSped.qryConsC100.Eof do
  begin
    DadosSped.qryConsC170.Close;
    DadosSped.qryConsC170.Params[0].AsInteger := DadosSped.qryConsC100CODIGO.AsInteger;
    DadosSped.qryConsC170.Open;
    while not DadosSped.qryConsC170.Eof do
    begin
      dm1.qrySped_C190.Insert;
      dm1.qrySped_C190CODIGO.Value := dm.Numerador('SPED_C190', 'CODIGO',
        'N', '', '');
      dm1.qrySped_C190FK_C100.Value := DadosSped.qryConsC100CODIGO.Value;
      dm1.qrySped_C190cfop.Value := DadosSped.qryConsC170CFOP.AsString;
      dm1.qrySped_C190cst_icms.Value := DadosSped.qryConsC170CST_ICMS.Value;
      dm1.qrySped_C190aliq_icms.Value :=
        DadosSped.qryConsC170ALIQ_ICM.AsFloat;
      dm1.qrySped_C190vl_opr.Value := DadosSped.qryConsC170VL_OPR.AsFloat;
      dm1.qrySped_C190vl_bc_icms.Value :=
        DadosSped.qryConsC170VL_BC_ICMS.AsFloat;
      dm1.qrySped_C190vl_icms.Value := DadosSped.qryConsC170VL_ICMS.AsFloat;
      dm1.qrySped_C190vl_bc_icms_st.Value :=
        DadosSped.qryConsC170VL_BC_ICMS_ST.AsFloat;
      dm1.qrySped_C190vl_icms_st.Value :=
        DadosSped.qryConsC170VL_ICMS_ST.AsFloat;
      dm1.qrySped_C190vl_ipi.Value := DadosSped.qryConsC170VL_IPI.AsFloat;
      dm1.qrySped_C190.Post;
      dm.Coneccao.CommitRetaining;

      DadosSped.qryConsC170.Next;
    end;
    DadosSped.qryConsC100.Next;
  end;

end;

end.
