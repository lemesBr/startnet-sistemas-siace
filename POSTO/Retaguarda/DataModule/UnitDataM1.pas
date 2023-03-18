unit UnitDataM1;

interface

uses
  SysUtils, Classes, Controls, DB, IB, IBCustomDataSet, IBDatabase, Forms, Windows, QDialogs,
  IBQuery, Dialogs, IBDatabaseInfo, Variants, IBSQL, IBServices, Registry,  WinSvc, Messages
  , ShellApi, ScktComp, ExtCtrls, TypInfo, Graphics, StdCtrls, INIFIles;

type
  TDM1 = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    QryPermissaoUser: TIBQuery;
    QryPermissaoForm: TIBQuery;
    IBStatisticalService1: TIBStatisticalService;
    IBLogService1: TIBLogService;
    IBServerProperties1: TIBServerProperties;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    DstBomba: TIBDataSet;
    DstBico: TIBDataSet;
    DstFrentista: TIBDataSet;
    IBSQLGen_id: TIBSQL;
    DstFrentistaCOD_FRENTISTA: TIntegerField;
    DstFrentistaID_FRENTISTA: TIntegerField;
    DstFrentistaNOME: TIBStringField;
    DstFrentistaCOMISSAO: TIBBCDField;
    DstFrentistaPICPATH: TIBStringField;
    DstFrentistaULTATUAL: TDateTimeField;
    DstFrentistaULTATUALCODSETOR: TIntegerField;
    DstFrentistaULTATUALCODSETORUSER: TIntegerField;
    DstFrentistaDATAHORA: TDateTimeField;
    DstFrentistaENABLED: TIntegerField;
    DstProduto: TIBDataSet;
    DstFrentistaOBS: TIBStringField;
    DstCUB: TIBDataSet;
    DstTanque: TIBDataSet;
    DstTanqueCOD_TANQUE: TIntegerField;
    DstTanqueID_TANQUE: TIntegerField;
    DstTanqueLITROS: TIBBCDField;
    DstTanqueULTATUAL: TDateTimeField;
    DstTanqueULTATUALCODSETOR: TIntegerField;
    DstTanqueULTATUALCODSETORUSER: TIntegerField;
    DstTanqueDATAHORA: TDateTimeField;
    DstTanqueENABLED: TIntegerField;
    DstTanqueOBS: TIBStringField;
    DstTanqueCOD_PRODUTOS: TIntegerField;
    DstTribECF: TIBDataSet;
    DstTanqueNOME: TIBStringField;
    DstTanqueLITROS_ATUAL: TIBBCDField;
    DstSintegra_Info: TIBDataSet;
    DstSintegra_InfoCOD_SINTEGRA_INFO: TIntegerField;
    DstSintegra_InfoCGC: TIBStringField;
    DstSintegra_InfoINSC_EST: TIBStringField;
    DstSintegra_InfoNOME_CONTRIBUINTE: TIBStringField;
    DstSintegra_InfoMUNICIPIO: TIBStringField;
    DstSintegra_InfoUF: TIBStringField;
    DstSintegra_InfoFAX: TIBStringField;
    DstSintegra_InfoCOD_CONVENIO: TIntegerField;
    DstSintegra_InfoCOD_OPERACAO: TIntegerField;
    DstSintegra_InfoCOD_FINALIDADE: TIntegerField;
    DstSintegra_InfoLOGRADOURO: TIBStringField;
    DstSintegra_InfoNRO: TIntegerField;
    DstSintegra_InfoCOMPLEMENTO: TIBStringField;
    DstSintegra_InfoBAIRRO: TIBStringField;
    DstSintegra_InfoCEP: TIBStringField;
    DstSintegra_InfoNOME_CONTATO: TIBStringField;
    DstSintegra_InfoTELEFONE: TIBStringField;
    DstSintegra_InfoDATAHORA: TDateTimeField;
    DstSintegra_InfoULTATUAL: TDateTimeField;
    DstSintegra_InfoULTATUALCODSETORUSER: TIntegerField;
    DstSintegra_InfoULTATUALCODSETOR: TIntegerField;
    DstSintegra_InfoENABLED: TIntegerField;
    DstSintegra_InfoCONTRIBUINTE_IPI: TSmallintField;
    DstSintegra_InfoSUBSTITUTO_TRIBUTARIO: TSmallintField;
    DstSintegra_InfoENABLED_SINTEGRA: TSmallintField;
    DstSintegra_GNRE: TIBDataSet;
    DstSintegra_GNRECOD_SINTEGRA_GNRE: TIntegerField;
    DstSintegra_GNREUF_SUBST: TIBStringField;
    DstSintegra_GNREUF_FAVORECIDA: TIBStringField;
    DstSintegra_GNREBANCO_GNRE: TIBStringField;
    DstSintegra_GNREAGENCIA_GNRE: TIBStringField;
    DstSintegra_GNRENRO_GNRE: TIBStringField;
    DstSintegra_GNREVALOR_GNRE: TIBBCDField;
    DstSintegra_GNREDATA_VENCIMENTO: TDateTimeField;
    DstSintegra_GNREMES_ANO_REFERENCIA: TIBStringField;
    DstSintegra_GNRENRO_CONVENIO: TIBStringField;
    DstSintegra_GNREULTATUAL: TDateTimeField;
    DstSintegra_GNREULTATUALCODSETOR: TIntegerField;
    DstSintegra_GNREBRANCOS: TIBStringField;
    DstSintegra_GNREULTATUALCODSETORUSER: TIntegerField;
    DstSintegra_GNREDATAHORA_GNRE: TDateTimeField;
    DstSintegra_GNREENABLED: TIntegerField;
    DstSintegra_GNREDATAHORA: TDateTimeField;
    DstSintegra_GNREIE_SUBST: TIBStringField;
    DstSintegra_GNRECNPJ_SUBST: TIBStringField;
    DstSintegra_R60: TIBDataSet;
    DstSintegra_R60COD_SINTEGRA_R60: TIntegerField;
    DstSintegra_R60NRO_SERIE_EQP: TIBStringField;
    DstSintegra_R60NRO_ORDEM_EQP: TIBStringField;
    DstSintegra_R60MODELO_DOC: TIBStringField;
    DstSintegra_R60BRANCOS_60M: TIBStringField;
    DstSintegra_R60R60M: TIBStringField;
    DstSintegra_R60DATA_EMISSAO: TDateTimeField;
    DstSintegra_R60CANCELAMENTO: TIBBCDField;
    DstSintegra_R60DESCONTO: TIBBCDField;
    DstSintegra_R60SUBSTITUICAO_TRIBUTARIA: TIBBCDField;
    DstSintegra_R60ISENTO: TIBBCDField;
    DstSintegra_R60NAO_INCIDENCIA: TIBBCDField;
    DstSintegra_R60ISSQN: TIBBCDField;
    DstSintegra_R60ALIQUOTA01: TIBBCDField;
    DstSintegra_R60VALOR_TPARCIAL01: TIBBCDField;
    DstSintegra_R60BRANCOS_60A01: TIBStringField;
    DstSintegra_R60R60A01: TIBStringField;
    DstSintegra_R60ALIQUOTA02: TIBBCDField;
    DstSintegra_R60VALOR_TPARCIAL02: TIBBCDField;
    DstSintegra_R60BRANCOS_60A02: TIBStringField;
    DstSintegra_R60R60A02: TIBStringField;
    DstSintegra_R60ALIQUOTA03: TIBBCDField;
    DstSintegra_R60VALOR_TPARCIAL03: TIBBCDField;
    DstSintegra_R60BRANCOS_60A03: TIBStringField;
    DstSintegra_R60R60A03: TIBStringField;
    DstSintegra_R60ALIQUOTA04: TIBBCDField;
    DstSintegra_R60VALOR_TPARCIAL04: TIBBCDField;
    DstSintegra_R60BRANCOS_60A04: TIBStringField;
    DstSintegra_R60R60A04: TIBStringField;
    DstSintegra_R60ALIQUOTA05: TIBBCDField;
    DstSintegra_R60VALOR_TPARCIAL05: TIBBCDField;
    DstSintegra_R60BRANCOS_60A05: TIBStringField;
    DstSintegra_R60R60A05: TIBStringField;
    DstSintegra_R60DATAHORA: TDateTimeField;
    DstSintegra_R60ULTATUAL: TDateTimeField;
    DstSintegra_R60ULTATUALCODSETORUSER: TIntegerField;
    DstSintegra_R60ULTATUALCODSETOR: TIntegerField;
    DstSintegra_R60NRO_CONTADOR_INICIO: TIntegerField;
    DstSintegra_R60NRO_CONTADOR_FIM: TIntegerField;
    DstSintegra_R60NRO_CONTADOR_Z: TIntegerField;
    DstSintegra_R60CONTADOR_REINICIO: TIntegerField;
    DstSintegra_R60VALOR_TOTAL_GERAL: TIBBCDField;
    DstSintegra_R60VALOR_VENDA_BRUTA: TIBBCDField;
    QryTipoFrm: TIBQuery;
    QryTipoFrmCODTIPOFRM: TIntegerField;
    QryTipoFrmDATAHORA: TDateTimeField;
    QryTipoFrmCODACAO: TIntegerField;
    QryTipoFrmOBS: TIBStringField;
    QryTipoFrmNOME: TIBStringField;
    DstContato: TIBDataSet;
    DstCadastro: TIBDataSet;
    DstSubGrupoP: TIBDataSet;
    DstCadastroFrm: TIBDataSet;
    DstCadastroFrmCODCLIFRM: TIntegerField;
    DstCadastroFrmCODCLI: TIntegerField;
    DstCadastroFrmDATAHORA: TDateTimeField;
    DstCadastroFrmCODTIPOFRM: TIntegerField;
    DstCadastroFrmOBS: TIBStringField;
    DstCadastroFrmNOME: TIBStringField;
    DstCadastroFrmULTATUAL: TDateTimeField;
    DstCadastroFrmVALOR: TIBStringField;
    DstCadastroFrmTIPO: TStringField;
    DstCadastroFrmULTATUALCODSETORUSER: TIntegerField;
    DstCadastroFrmULTATUALCODSETOR: TIntegerField;
    DstGrupoP: TIBDataSet;
    DstContatoFrm: TIBDataSet;
    DstContatoFrmCODCONTFRM: TIntegerField;
    DstContatoFrmCODCONT: TIntegerField;
    DstContatoFrmDATAHORA: TDateTimeField;
    DstContatoFrmCODTIPOFRM: TIntegerField;
    DstContatoFrmOBS: TIBStringField;
    DstContatoFrmNOME: TIBStringField;
    DstContatoFrmULTATUAL: TDateTimeField;
    DstContatoFrmVALOR: TIBStringField;
    DstContatoFrmTIPO: TStringField;
    DstContatoFrmULTATUALCODSETORUSER: TIntegerField;
    DstContatoFrmULTATUALCODSETOR: TIntegerField;
    DstClasse: TIBDataSet;
    DstTipoFrm: TIBDataSet;
    DstProdutoCOD_PRODUTOS: TIntegerField;
    DstProdutoCOD_ECF: TIntegerField;
    DstProdutoDATAHORA: TDateTimeField;
    DstProdutoCL_FIS: TIBStringField;
    DstProdutoS_TRIB: TIBStringField;
    DstProdutoAPR_EMBALAGEM: TIBStringField;
    DstProdutoULT_COMPRA: TDateTimeField;
    DstProdutoAPR_QUANT: TIBBCDField;
    DstProdutoEST_IDEAL: TIBBCDField;
    DstProdutoEST_ATUAL: TIBBCDField;
    DstProdutoVALOR_LUCRO: TIBBCDField;
    DstProdutoPRC_VENDA: TIBBCDField;
    DstProdutoVALOR_FRETE: TIBBCDField;
    DstProdutoPRM_QUANT: TIBBCDField;
    DstProdutoPRM_PRC: TIBBCDField;
    DstProdutoREFERENCIA: TIBStringField;
    DstProdutoEST_MIN: TIBBCDField;
    DstProdutoVALOR_COMISSAO: TIBBCDField;
    DstProdutoCOD_SUBGRUPOP: TIntegerField;
    DstProdutoCOD_GRUPOP: TIntegerField;
    DstProdutoPIC_PATH: TIBStringField;
    DstProdutoNOME: TIBStringField;
    DstProdutoOBS: TIBStringField;
    DstProdutoCOD_CLI_FORNECEDOR: TIntegerField;
    DstProdutoCOD_CLI_FABRICANTE: TIntegerField;
    DstProdutoCOD_CLI_DISTRIBUIDOR: TIntegerField;
    DstProdutoCOD_CLI_VENDEDOR: TIntegerField;
    DstProdutoENABLE_NUMSERIE: TIntegerField;
    DstProdutoPRC_CUSTO: TIBBCDField;
    DstProdutoENABLED: TIntegerField;
    DstProdutoULTATUAL: TDateTimeField;
    DstProdutoULTATUALCODSETOR: TIntegerField;
    DstProdutoULTATUALCODSETORUSER: TIntegerField;
    DstProdutoAPR_UND: TIBStringField;
    DstProdutoBASE_ICMS_SUBST: TIBBCDField;
    DstProdutoREDUCAO_BASE_ICMS: TIBBCDField;
    DstProdutoCODIGO_NCM: TIBStringField;
    DstProdutoPESO_MEDIO: TIBBCDField;
    DstProdutoPESO_DESVIO_PADRAO: TIBBCDField;
    DstProdutoTARA_TUBO: TIBBCDField;
    DstProdutoPESO_LIQUIDO: TIBBCDField;
    DstProdutoPESO_BRUTO: TIBBCDField;
    DstProdutoPESO_TOTAL: TIBBCDField;
    DstProdutoALIQUOTA_ICMS: TIBBCDField;
    DstProdutoALIQUOTA_IPI: TIBBCDField;
    DstProdutoALIQUOTA_ICMS_SUBST: TIBBCDField;
    DstProdutoTIPO_PRODUTO: TIntegerField;
    DstProdutoID_PRODUTOS: TIntegerField;
    DstProdutoCOR: TIntegerField;
    DstProdCombustivel: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateTimeField1: TDateTimeField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    DateTimeField2: TDateTimeField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    IBBCDField5: TIBBCDField;
    IBBCDField6: TIBBCDField;
    IBBCDField7: TIBBCDField;
    IBBCDField8: TIBBCDField;
    IBStringField4: TIBStringField;
    IBBCDField9: TIBBCDField;
    IBBCDField10: TIBBCDField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IBBCDField11: TIBBCDField;
    IntegerField10: TIntegerField;
    IBStringField8: TIBStringField;
    DateTimeField3: TDateTimeField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IBBCDField12: TIBBCDField;
    IBBCDField13: TIBBCDField;
    IBStringField9: TIBStringField;
    IBBCDField14: TIBBCDField;
    IBBCDField15: TIBBCDField;
    IBBCDField16: TIBBCDField;
    IBBCDField17: TIBBCDField;
    IBBCDField18: TIBBCDField;
    IBBCDField19: TIBBCDField;
    IBBCDField20: TIBBCDField;
    IBBCDField21: TIBBCDField;
    IBBCDField22: TIBBCDField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    DstInventario_Itens: TIBDataSet;
    DstInventario_ItensCOD_INVENTARIO_ITENS: TIntegerField;
    DstInventario_ItensCOD_INVENTARIO: TIntegerField;
    DstInventario_ItensCOD_POSSE: TIntegerField;
    DstInventario_ItensCOD_PRODUTOS: TIBStringField;
    DstInventario_ItensDATAHORA: TDateTimeField;
    DstInventario_ItensENABLED: TIntegerField;
    DstInventario_ItensQUANTIDADE: TIBBCDField;
    DstInventario_ItensUF_POSSUIDOR: TIBStringField;
    DstInventario_ItensULTATUAL: TDateTimeField;
    DstInventario_ItensULTATUALCODSETOR: TIntegerField;
    DstInventario_ItensULTATUALCODSETORUSER: TIntegerField;
    DstInventario_ItensVALOR_PRODUTO: TIBBCDField;
    DstInventario_ItensPRODUTO: TIBStringField;
    DstInventario_ItensIE_EST_POSSUIDOR: TIBStringField;
    DstInventario_ItensCNPJ_POSSUIDOR: TIBStringField;
    DstInventario_ItensVALOR_UNITARIO: TIBBCDField;
    DstInventario: TIBDataSet;
    DstInventarioCOD_INVENTARIO: TIntegerField;
    DstInventarioCOD_RESPONSAVEL: TIntegerField;
    DstInventarioOBS: TIBStringField;
    DstInventarioRESPONSAVEL: TIBStringField;
    DstInventarioDATAHORA: TDateTimeField;
    DstInventarioENABLED: TIntegerField;
    DstInventarioULTATUAL: TDateTimeField;
    DstInventarioULTATUALCODSETOR: TIntegerField;
    DstInventarioULTATUALCODSETORUSER: TIntegerField;
    DstPedidos_Itens: TIBDataSet;
    DstPedidos: TIBDataSet;
    DstPedidosCOD_PEDIDOS: TIntegerField;
    DstPedidosCOD_VEND: TIntegerField;
    DstPedidosCOD_CLI_DESTINATARIO: TIntegerField;
    DstPedidosCNPJ_DESTINATARIO: TIBStringField;
    DstPedidosIE_DESTINATARIO: TIBStringField;
    DstPedidosUF_DESTINATARIO: TIBStringField;
    DstPedidosEMITENTE_NF: TIBStringField;
    DstPedidosNUM_ITENS: TIntegerField;
    DstPedidosDESCONTO: TIBBCDField;
    DstPedidosVALOR_FRETE: TIBBCDField;
    DstPedidosVALOR_SEGURO: TIBBCDField;
    DstPedidosOUTRAS_DESPESAS: TIBBCDField;
    DstPedidosVALOR_IPI: TIBBCDField;
    DstPedidosVALOR_ISENTO_IPI: TIBBCDField;
    DstPedidosVALOR_TOTALPRODUTO: TIBBCDField;
    DstPedidosVALOR_TOTALNF: TIBBCDField;
    DstPedidosALIQUOTA_ICMS: TIBBCDField;
    DstPedidosBASE_ICMS: TIBBCDField;
    DstPedidosVALOR_ICMS: TIBBCDField;
    DstPedidosBASE_ICMS_SUBST: TIBBCDField;
    DstPedidosVALOR_ICMS_SUBST: TIBBCDField;
    DstPedidosVALOR_ISENTO_ICMS: TIBBCDField;
    DstPedidosCOD_FORMA_PGT: TIntegerField;
    DstPedidosNUM_PARCELAS: TIntegerField;
    DstPedidosFORMA_PGT: TIBStringField;
    DstPedidosDESC_PERC: TIBBCDField;
    DstPedidosIMP_TIPO: TIBStringField;
    DstPedidosIMP_OK: TIntegerField;
    DstPedidosDATAHORA_EMISSAO: TDateTimeField;
    DstPedidosDATAHORA_SAIDAENTRADA: TDateTimeField;
    DstPedidosDATAHORA_SAIDA: TDateTimeField;
    DstPedidosFIM_PED: TIntegerField;
    DstPedidosCOTACAO: TIBBCDField;
    DstPedidosCOTACAO_ENABLED: TIntegerField;
    DstPedidosCOD_CAIXA_OP_CL: TIntegerField;
    DstPedidosCNPJ_SUBST_TRIB: TIBStringField;
    DstPedidosIE_SUBST_TRIB: TIBStringField;
    DstPedidosFAT_01: TIBStringField;
    DstPedidosVENCIMENTO_01: TDateTimeField;
    DstPedidosVALOR_01: TIBBCDField;
    DstPedidosFAT_02: TIBStringField;
    DstPedidosVENCIMENTO_02: TDateTimeField;
    DstPedidosVALOR_02: TIBBCDField;
    DstPedidosFAT_03: TIBStringField;
    DstPedidosVENCIMENTO_03: TDateTimeField;
    DstPedidosVALOR_03: TIBBCDField;
    DstPedidosCOD_CLI_TRANSP: TIntegerField;
    DstPedidosTRANSP_NOME: TIBStringField;
    DstPedidosTRANSP_FRETE_CONTA: TIBStringField;
    DstPedidosTRANSP_PLACA_VEICULO: TIBStringField;
    DstPedidosTRANSP_UF_VEICULO: TIBStringField;
    DstPedidosTRANSP_CNPJ_CPF: TIBStringField;
    DstPedidosTRANSP_ENDER: TIBStringField;
    DstPedidosTRANSP_MUNICIPIO: TIBStringField;
    DstPedidosTRANSP_UF: TIBStringField;
    DstPedidosTRANSP_IE: TIBStringField;
    DstPedidosTRANSP_QNT: TIntegerField;
    DstPedidosTRANSP_ESPECIE: TIBStringField;
    DstPedidosTRANSP_MARCA: TIBStringField;
    DstPedidosTRANSP_NRO: TIntegerField;
    DstPedidosENABLED: TIntegerField;
    DstPedidosULTATUAL: TDateTimeField;
    DstPedidosULTATUALCODSETOR: TIntegerField;
    DstPedidosULTATUALCODSETORUSER: TIntegerField;
    DstPedidosDATAHORA: TDateTimeField;
    DstPedidosNUM_VIA: TIntegerField;
    DstPedidosNUM_FORM: TIBStringField;
    DstPedidosSERIE_FORM: TIBStringField;
    DstPedidosNUM_NF: TIBStringField;
    DstPedidosSERIE_NF: TIBStringField;
    DstPedidosDADOS_ADICIONAIS: TIBStringField;
    DstPedidosOBS: TBlobField;
    DstPedidosMODELO_NF: TIBStringField;
    DstPedidosICMS_RETIDO: TIBBCDField;
    DstPedidosNATUREZA_OP: TIBStringField;
    DstPedidosNOME_DESTINATARIO: TIBStringField;
    DstPedidosENDERECO_DESTINATARIO: TIBStringField;
    DstPedidosBAIRRO_DESTINATARIO: TIBStringField;
    DstPedidosCIDADE_DESTINATARIO: TIBStringField;
    DstPedidosFONE_DESTINATARIO: TIBStringField;
    DstPedidosCEP_DESTINATARIO: TIBStringField;
    DstPedidosBRANCOS: TIBStringField;
    DstPedidosCODPDV: TIntegerField;
    DstPedidosSUB_SERIE_NF: TIBStringField;
    DstPedidosESPECIE: TIBStringField;
    DstPedidosOUTRAS_ICMS: TIBBCDField;
    DstPedidosICMS_ANTECIPADO: TIBBCDField;
    DstPedidosBASE_IPI: TIBBCDField;
    DstPedidosOUTRAS_IPI: TIBBCDField;
    DstPedidosALIQUOTA_IPI: TIBBCDField;
    DstPedidosCFOP: TIntegerField;
    DstPedidosTRANSP_PESO_L: TIBBCDField;
    DstPedidosTRANSP_PESO_B: TIBBCDField;
    DstPedidosCOD_CONTABIL: TIntegerField;
    DstPedidosCOD_FISCAL_ICMS: TIntegerField;
    DstPedidosCOD_FISCAL_IPI: TIntegerField;
    DstPedidosVENCIMENTO: TDateTimeField;
    DstPedidosSITUACAO_NF: TIBStringField;
    Dst_NF_Entrada: TIBDataSet;
    Dst_NF_Entrada_Itens: TIBDataSet;
    Dst_NF_Entrada_NSerie: TIBDataSet;

    Function IBConectado: boolean;

    Function NewSave(ActiveDst: TIBDataSet): boolean;
    Function EditCancel(ActiveDst: TIBDataSet): Boolean;
    Function Del(ActiveDst: TIBDataSet): Boolean;

    Function CanCloseFrm (ActiveDst: TIBDataset): TCloseAction;
    procedure DefSenderDtsStateChange(Sender: TObject);
    Procedure AfterInsert(DataSet: TDataSet);

    Function  CanCommit: boolean;
    Procedure GetRecPosIBArray(IBSender: array of TIBCustomDataset);
    Procedure SetRecPosIBArray(IBSender: array of TIBCustomDataset);
    Procedure OpenIBArray(IBSender: array of TIBCustomDataset);
    Procedure CloseIBArray(IBSender: array of TIBCustomDataset);

    Procedure HandleBtn (New, Save, Edit, Cancel, Del, Find, List, Print, Clear, Refresh, Line : Boolean);
    Procedure DstCadastroFrmAfterPost(DataSet: TDataSet);
    Procedure DstContatoFrmAfterPost(DataSet: TDataSet);
    procedure StartInterbase;
    procedure ShutDownInterbase;
    procedure DstCadastroFrmNewRecord(DataSet: TDataSet);
    procedure DstContatoFrmNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 DM1: TDM1;
 IBArray: array of TIBCustomDataSet;                          //Global Array to handle active DataSets

 RecPosIBArray: array of integer;
 ActiveIBSender: array of TIBCustomDataSet;


 
implementation

uses UnitFrmPrincipal, UnitFuncoes;

{$R *.dfm}

//------ Returns the last Windows error message as an ANSI string ------
function GetErrorMessage: String;
var
 ErrorCode:   DWORD;
 ErrorMsgStr: array[0..255] of Char;
begin
 ErrorCode := GetLastError;
 FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM, nil, ErrorCode, 0, ErrorMsgStr, 256, nil);
 Result := StrPas(ErrorMsgStr);
end;

//------ Returns the Interbase bin directory from the registry ------
function GetIBServerDirectory: String;
var
 Reg: TRegistry;
begin
 Reg := TRegistry.Create;
 try
  with Reg do
   begin
    RootKey := HKEY_LOCAL_MACHINE;
    if OpenKey('\Software\Borland\Interbase\CurrentVersion', False) then
     Result := ReadString('ServerDirectory');
   end;
 finally
  Reg.Free;
 end;
end;

//------ Returns a handle to the Interbase server service under Windows NT/2000 ------
function GetIBServiceHandle: SC_HANDLE;
var
 SCMHandle: SC_HANDLE;
begin
 Result := 0;
 SCMHandle := OpenSCManager(nil, nil, GENERIC_EXECUTE);
 if SCMHandle = 0 then
  application.messagebox(Pchar('Erro SCM: ' + GetErrorMessage), 'Atenção', mb_iconerror + mb_ok)
 else
  begin
   Result := OpenService(SCMHandle, 'InterbaseGuardian', SERVICE_ALL_ACCESS);
   if Result = 0 then
    application.messagebox(Pchar('Erro ao tentar abrir o serviço: ' + GetErrorMessage), 'Atenção', mb_iconerror + mb_ok)
  end;
end;

//------ Returns the Interbase root directory from the registry ------
function GetIBRootDirectory: String;
var
 Reg: TRegistry;
begin
 Reg := TRegistry.Create;
 try
  with Reg do
   begin
    RootKey := HKEY_LOCAL_MACHINE;
    if OpenKey('\Software\Borland\Interbase\CurrentVersion', False) then
     Result := ReadString('RootDirectory');
   end;
 finally
  Reg.Free;
 end;
 Exit;
end;

procedure TDm1.StartInterbase;
var
 GuardianPath:  String;
 Result:        THandle;
 SCMHandle:     SC_HANDLE;
 ServiceHandle: SC_HANDLE;
 ServiceArgs:   PAnsiChar;
begin
 ServiceArgs := nil;
 //--- If NT start the Interbase service otherwise execute the Interbase guardian ---
 if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
   ServiceHandle := GetIBServiceHandle;
   if ServiceHandle = 0 then Exit;
   if not StartService(ServiceHandle, 0, ServiceArgs) then
    application.messagebox(Pchar('Erro ao tentar iniciar o serviço: ' + GetErrorMessage), 'Atenção', mb_iconerror + mb_ok);
  end
 else
  begin
   //--- Execute the Interbase guardian on Win9x/Me ---
   GuardianPath := GetIBServerDirectory + 'ibguard.exe';
   Result := ShellExecute(Application.MainForm.Handle, nil,
             PChar(GuardianPath), '', PChar(GetIBRootDirectory), SW_NORMAL);
   if Result <= 32 then
    application.messagebox(Pchar('Impossível iniciar serviço do servidor de banco de dados. Erro: ' + IntToStr(Result)), 'Atenção', mb_iconerror + mb_ok);
  end;
end;

//------ Shutdown local interbase server task ------
Procedure TDm1.ShutdownInterbase;
var
 ServiceStatus:     _SERVICE_STATUS;
 SCMHandle:         SC_HANDLE;
 ServiceHandle:     SC_HANDLE;
 GuardianWinHandle: HWND;
 I:                 Integer;
begin
 if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
   ServiceHandle := GetIBServiceHandle;
   if ServiceHandle = 0 then
    Exit
   else
    begin
     //--- See if Interbase is running. ---
     if not QueryServiceStatus(ServiceHandle, ServiceStatus) then
      application.messagebox(Pchar('Erro de consulta de serviço: ' + GetErrorMessage), 'Atenção', mb_iconerror + mb_ok);
     if ServiceStatus.dwCurrentState <> SERVICE_STOPPED then
      begin
       if not ControlService(ServiceHandle, SERVICE_CONTROL_STOP, ServiceStatus) then
        application.messagebox(Pchar('Erro de Controle de Serviço: ' + GetErrorMessage), 'Atenção', mb_iconerror + mb_ok)
       else
        begin
         //--- Wait for the service to stop ---
         for I := 0 to 50 do
          begin
           QueryServiceStatus(ServiceHandle, ServiceStatus);
           if ServiceStatus.dwCurrentState = SERVICE_STOPPED then
            Break
           else
            Sleep(100);
          end;
        end;
      end;
    end;
  end
 else
  begin
   //--- If not running on NT/2000 get IB Guardian's handle and send it a close message ---
   GuardianWinHandle := FindWindow('IB_Guard', 'Interbase Guardian');
   if GuardianWinHandle <> 0 then
    SendMessage(GuardianWinHandle, WM_CLOSE, 0, 0);
  end;
end;

//------ Testa Qualidade de conexão com o Servidor ------
Function TDM1.IBConectado: Boolean;
begin
Result := False;
try
 if DM1.IBDatabase1.TestConnected then
  Result:= True;

 if not result then
  begin
   HandleBtn(False,False,False,False,False,False,False,False,False,False,False);
   application.messagebox('Banco de dados indisponível, conexão com o banco de dados perdida...' + #13 +
                          'Este programa não funcionará corretamente, e deve ser fechado.' + #13#13 +
                          'Verifique o Servidor e as coneões de rede e tente abrir o programa novamente...',
                          'Atenção',mb_ok + mb_iconerror);
  end;
except
 {on EIBInterBaseError do     //desabilitado pois não está detectando o except
  begin
   Result := False;
   application.messagebox('Banco de dados indisponível, conexão com o banco de dados perdida...' + #13 +
                          'Este programa não funcionará corretamente, e deve ser fechado.' + #13#13 +
                          'Verifique o Servidor e as coneões de rede e tente abrir o programa novamente...',
                          'Atenção',mb_ok + mb_iconerror);
  end;}
end;
end;

//------ Check if there are other datasets to be posted ------
Function TDM1.CanCommit: boolean;
var
 x:integer;
begin
Result:=True;
for x:=0 to IBDatabase1.DataSetCount-1 do
 begin
  if IBDatabase1.DataSets[x].active then
   if IBDatabase1.DataSets[x].State in [dsedit, dsinsert] then
    Result:=False;
 end;
end;

//------ Armazena Index dos Registros das Tabelas Ativas ------
Procedure TDM1.GetRecPosIBArray(IBSender: array of TIBCustomDataset);
var
 x:integer;
begin
 setlength(RecPosIBArray, length(IBSender));
 for x :=0 to High(IBSender) do
  begin
   if not varisnull(TIBCustomDataset(IBSender[x]).Fields[0].AsInteger) then
    RecPosIBArray[x] := TIBCustomDataset(IBSender[x]).Fields[0].AsInteger
   else
    RecPosIBArray[x] := 0;
   IBSender[x].Tag := 0;
  end;
end;

//------ Localiza Index dos Registros das Tabelas Ativas ------
Procedure TDM1.SetRecPosIBArray(IBSender: array of TIBCustomDataset);
var
 x: integer;
begin
 for x :=0 to High(IBSender) do
  begin
   if not TIBCustomDataset(IBSender[x]).Locate( TIBCustomDataset(IBSender[x]).Fields[0].FieldName, RecPosIBArray[x], []) then
    TIBCustomDataset(IBSender[x]).First;
  end;
end;

//------ Opens IB Array ------ Form's OnCreate
Procedure TDM1.OpenIBArray (IBSender: array of TIBCustomDataset);
var
 x, y: integer;
 CanAddtoArray: boolean;
begin
 if IBConectado then
  begin
   setlength(ActiveIBSender, length(IBSender));

   for x :=0 to High(IBSender) do
    begin
     CanAddtoArray:=True;
     ActiveIBSender[x] := IBSender[x];
     for y := 0 to High(IBArray) do
      if IBArray[y] = IBSender[x] then
       CanAddtoArray := False;

     if CanAddtoArray then
      begin
       SetLength(IBArray, Length(IBArray)+1);
       IBArray[Length(IBArray)-1]:=IBSender[x];
      end;
     if not IBSender[x].Active then
      begin
       IBSender[x].Tag := IBSender[x].Tag + 1;
       IBSender[x].DisableControls;
       if IBSender[x].InheritsFrom(TIBDataSet) then
        begin
         if not TIBDataset(IBSender[x]).Prepared then
          TIBDataSet(IBSender[x]).Prepare;
         TIBDataset(IBSender[x]).Open;
        end
       else if IBSender[x].InheritsFrom(TIBQuery) then
        begin
         if not TIBDataset(IBSender[x]).Prepared then
          TIBDataSet(IBSender[x]).Prepare;
         TIBDataset(IBSender[x]).Open;
        end;
       IBSender[x].EnableControls;
      end;
    end;
  end;
end;

//------ Closes the IB Array ------ Form's OnClose
Procedure TDM1.CloseIBArray(IBSender: array of TIBCustomDataSet);
var
 x, y, pointer, lastpointer:integer;
begin
 for x:=0 to High(IBSender) do
  begin
   for y := 0 to High(IBArray) do
    if IBArray[y] = IBSender[x] then
     IBArray[y]:= nil;

   if IBSender[x].Active then
    begin
     IBSender[x].Tag := IBSender[x].Tag - 1;
     IBSender[x].DisableControls;
     if IBSender[x].Tag = 0 then
      begin
       if IBSender[x].InheritsFrom(TIBDataSet) then
        begin
         TIBDataset(IBSender[x]).close;
         if TIBDataset(IBSender[x]).Prepared then
          TIBDataset(IBSender[x]).UnPrepare;
        end
       else if IBSender[x].InheritsFrom(TIBQuery) then
        begin
         TIBQuery(IBSender[x]).close;
         if TIBQuery(IBSender[x]).Prepared then
          TIBQuery(IBSender[x]).UnPrepare;
        end;
      end;
     IBSender[x].EnableControls;
    end;
  end;

 pointer:=-1;
 lastpointer:=-1;
 for x:=0 to High(IBArray) do
  begin
   if TIBCustomDataset(IBArray[x]) <> nil then
    begin
     if pointer <> -1 then
      begin
       IBArray[pointer]:=IBArray[x];
       IBArray[x] := nil;
       lastpointer:=pointer;
       pointer:=pointer + 1;
      end
     else
      lastpointer:=x;
    end
   else
    begin
     if pointer = -1 then
      pointer:= x
    end;
  end;
 setlength(IBArray, LastPointer + 1);
end;

//------ Insert/Post records on DefaultDataSet ------ Called by form's New/Save Procedures
Function TDM1.NewSave(ActiveDst: TIBDataSet): boolean;
begin
 screen.cursor:= crHourGlass;
 Result:=false;
 Case ActiveDst.state of
  dsbrowse:
   begin
    ActiveDst.DisableControls;
    ActiveDst.Append;
    ActiveDst.EnableControls;
    Result:=true;
   end;
  dsedit, dsinsert:
   begin
    try
     ActiveDst.UpdateRecord;
     if ActiveDst.State = dsinsert then
      ActiveDst['DATAHORA'] := now;
     ActiveDst['ULTATUAL'] := now;
     ActiveDst['ULTATUALCODSETORUSER'] := CodSetorUser;
     ActiveDst['ULTATUALCODSETOR'] := CodSetor;
     ActiveDst.DisableControls;
     ActiveDst.Post;
     ActiveDst.ApplyUpdates;
     if CanCommit then
      begin
       GetRecPosIBArray(IBArray);
       ActiveDst.Transaction.Commit;
       OpenIBArray(IBArray);
       SetRecPosIBArray(IBArray);
      end
     else
      ActiveDst.Transaction.CommitRetaining;
     ActiveDst.EnableControls;
     Result:=true;
     logtofile('Att  :: Inserção de Registro (Procedure DM1.NewSave - ' + ActiveDst.Name + ')', True);
    except
     ActiveDst.Transaction.RollBack;
     raise;
    end;
   end;
  else
   begin
    application.MessageBox('Impossível Inserir Registro: Base de Dados não acessível.'+#13+
                           'Feche o programa e tente novamente...' ,
                           'Atenção :: Erro', mb_ok + mb_iconinformation);
    logtofile('Erro :: Falha ao tentar Inserir Registro (Procedure DM1.NewSave - ' + ActiveDst.Name + ')', True);
    logtofile('Msg  :: Impossível inserir registro #13 Base de Dados não acessível.', False);
   end;
 end;
 DefSenderDtsStateChange(ActiveDst);
 screen.cursor:= crDefault;
end;

//------ Edit/Cancel Records on DefaultDataSet ------ Called by form's EditCancel Procedures
Function TDM1.EditCancel(ActiveDst: TIBDataSet): Boolean;
begin
 screen.cursor:= crHourGlass;
 Result:=false;
 Case ActiveDst.state of
  dsBrowse:
   begin
    If ActiveDst.RecordCount > 0 then
     begin
      ActiveDst.DisableControls;
      ActiveDst.Edit;
      ActiveDst.EnableControls;
      Result:=true;
     end
    else
     begin
      application.MessageBox('Impossível alterar registro: Não há registros a alterar...',
                             'Atenção', mb_ok + mb_iconinformation);
      logtofile('Erro :: Falha na Edição de Registro, Nenhum registro a alterar (Procedure DM1.EditCancel - ' + ActiveDst.Name + ')', True);
      logtofile('Msg  :: Não há registros a alterar!', False);
     end;
   end;
  dsEdit, dsInsert:
   begin
    ActiveDst.DisableControls;
    GetRecPosIBArray(IBArray);
    ActiveDst.Cancel;
    ActiveDst.CancelUpdates;
    if CanCommit then
     begin
      ActiveDst.Transaction.Rollback;
      OpenIBArray(IBArray);
      SetRecPosIBArray(IBArray);
     end
    else
     ActiveDst.Transaction.RollbackRetaining;
    ActiveDst.EnableControls;
    Result:=true;
    logtofile('Att  :: Alteração de Registro (Procedure DM1.EditCancel - ' + ActiveDst.Name + ')', True);
   end;
  else
   begin
    application.MessageBox('Impossível realizar alteração: Base de Dados não acessível.'+#13+
                           'Feche o programa e tente novamente' ,
                           'Atenção :: Erro', mb_ok + mb_iconinformation);
    logtofile('Erro :: Falha na Alteração de Registro (Procedure DM1.EditCancel - ' + ActiveDst.Name + ')', True);
    logtofile('Msg  :: Impossível realizar alteração #13 Base de Dados não acessível.', False);
   end
 end;
 DefSenderDtsStateChange(ActiveDst);
 screen.cursor:= crDefault;
end;

//------ Delete records from DataSet ------ Called only by Frmprincipal.SpeedButton3
Function TDM1.Del(ActiveDst: TIBDataSet): boolean;
begin
 screen.cursor:= crHourGlass;
 Result:=false;
 if ActiveDst.State = dsbrowse then
  begin
   If ActiveDst.RecordCount > 0 then
    begin
     if application.MessageBox('Tem Certeza que deseja Excluir?'+#13#13+
                               'Atenção: '+#13+
                               'A exclusão de um registro é definitiva, e não pode ser revertida, para cancelar a exclusão clique em "Não"',
                               'Confirmação', mb_yesno + mb_iconquestion+MB_DEFBUTTON2)=idYEs then
      begin
       try
        ActiveDst.DisableControls;
        ActiveDst.Delete;
        ActiveDst.ApplyUpdates;
        if CanCommit then
         begin
          GetRecPosIBArray(IBArray);
          ActiveDst.Transaction.Commit;
          OpenIBArray(IBArray);
          SetRecPosIBArray(IBArray);
         end
        else
         ActiveDst.Transaction.CommitRetaining;
        ActiveDst.EnableControls;
        DefSenderDtsStateChange(ActiveDst);
        Result:=true;
        logtofile('Exclusão de Registro (Procedure DM1.Del - ' + ActiveDst.Name + ')',True);
       except
        ActiveDst.Transaction.Rollback;
        raise;
       end;
      end;
    end
   else
    begin
     application.MessageBox('Impossível excluir registro: Não há registros a excluir...',
                            'Atenção :: Erro', mb_ok + mb_iconinformation);
     logtofile('Erro :: Falha na Exclusão de Registro, Nenhum registro a alterar (Procedure DM1.Del - ' + ActiveDst.Name + ')', True);
     logtofile('Msg  :: Não há registros a excluir!', False);
    end;
  end
 else
  begin
   application.MessageBox('Impossível realizar exclusão: Base de Dados não acessível.'+#13+
                          'Feche o programa e tente novamente' ,
                          'Atenção :: Erro', mb_ok + mb_iconinformation);
   logtofile('Erro :: Falha na Exclusão de Registro (Procedure DM1.Del - ' + ActiveDst.Name + ')', True);
   logtofile('Msg  :: Impossível realizar exclusão #13 Base de Dados não acessível.', False);
  end;
 DefSenderDtsStateChange(ActiveDst);
 screen.cursor:= crDefault;
end;

//------ Handles DefaultDataSet Closing according to its State ------ Form's OnClose
Function TDM1.CanCloseFrm (ActiveDst: TIBDataset): TCloseAction;
begin
 Result:=caNone;
 if IBConectado then
  begin
   if ActiveDst.state in [dsinsert, dsedit] then
    begin
     if application.messagebox('Deseja Sair Sem Salvar?'+#13#13+
                               'Atenção:'+#13+
                               'As informações que ainda não foram salvas serão perdidas...',
                               'Atenção', mb_YesNo + mb_iconquestion) = idyes then
      if EditCancel(ActiveDst) then
       Result:=caFree;
    end
   else
    Result:=caFree;

   if Result = caFree then
    begin
     CloseIBArray(ActiveIBSender);
     DefSenderDtsStateChange(ActiveDst);
    end;
  end
 else
  begin
   Result:=caFree;
  end;
end;

//------ Buttons If Procedure Exists ------
Procedure TDM1.HandleBtn (New, Save, Edit, Cancel, Del, Find, List, Print, Clear, Refresh, Line : Boolean);
begin
 lockwindowupdate(PrincipalFrm.handle);
 PrincipalFrm.speedbutton1.visible  := New    and RoutineExists(PrincipalFrm.ActiveMDIChild, 'New');
 PrincipalFrm.speedbutton5.visible  := Save   and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Save');
 PrincipalFrm.speedbutton2.visible  := Edit   and RoutineExists(PrincipalFrm.ActiveMDIChild, 'EditCancel');
 PrincipalFrm.speedbutton6.visible  := Cancel and RoutineExists(PrincipalFrm.ActiveMDIChild, 'EditCancel');
 PrincipalFrm.speedbutton3.visible  := Del    and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Del');
 PrincipalFrm.speedbutton10.visible := Find   and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Consulta');
 PrincipalFrm.speedbutton7.visible  := List   and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Gerar');
 PrincipalFrm.speedbutton8.visible  := Print  and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Imprimir');
 PrincipalFrm.speedbutton9.visible  := Clear  and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Limpar');

 PrincipalFrm.MnuNovo.visible       := New    and RoutineExists(PrincipalFrm.ActiveMDIChild, 'New');
 PrincipalFrm.MnuSalva.visible      := Save   and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Save');
 PrincipalFrm.MnuAltera.visible     := Edit   and RoutineExists(PrincipalFrm.ActiveMDIChild, 'EditCancel');
 PrincipalFrm.MnuCancela.visible    := Cancel and RoutineExists(PrincipalFrm.ActiveMDIChild, 'EditCancel');
 PrincipalFrm.MnuExclui.visible     := Del    and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Del');
 PrincipalFrm.MnuLocaliza.visible   := Find   and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Consulta');
 PrincipalFrm.MnuGera.visible       := List   and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Gerar');
 PrincipalFrm.MnuImprime.visible    := Print  and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Imprimir');
 PrincipalFrm.MnuLimpa.visible      := Clear  and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Limpar');

 PrincipalFrm.MnuSalva.visible      := Save   and RoutineExists(PrincipalFrm.ActiveMDIChild, 'Save');
 PrincipalFrm.MnuCancela.visible    := Cancel and RoutineExists(PrincipalFrm.ActiveMDIChild, 'EditCancel');

 PrincipalFrm.MnuRefresh.visible    := Refresh;
 PrincipalFrm.speedbutton11.visible := Refresh;
 PrincipalFrm.MnuLinha.visible      := Line;
 lockwindowupdate(0);
end;

//------ Buttons and Messages according to DefaultDataset state ------
procedure TDM1.DefSenderDtsStateChange(Sender: TObject);
var
 localState : TDataSetState;
 RecCount   : integer;
begin
 if Sender.InheritsFrom(TIBDataSet)  then
  begin
   LocalState := TIBDataSet(Sender).State;
   RecCount := TIBDataSet(Sender).RecordCount;

   //Habilita botoes de acordo com estado do DataSet
   Case LocalState of
    dsInactive:
     HandleBtn(False,False,False,False,False,False,False,False,False,False,False);
    dsBrowse:
     begin
      if TIBDataSet(Sender).RecordCount > 0 then
       HandleBtn(True, False, True, False, True, True, True, True, True, True, True)
      else
       HandleBtn(True, False, False, False, False, True, False, False, False, True, True);
     end;
    dsEdit, dsInsert:
     HandleBtn(False, True, False, True, False, False, False, False, False, False, True);
   end;
  end
 else if Sender.InheritsFrom(TIBQuery) then
  begin
   LocalState := TIBQuery(Sender).State;
   RecCount := TIBQuery(Sender).RecordCount;

   //Habilita botoes de acordo com estado da Query
   Case LocalState of
    dsInactive:
     HandleBtn(False,False,False,False,False,False,True,False,True,False,True);
    dsBrowse:
     begin
      if RecCount > 0 then
       HandleBtn(True,False,True,False,True,True,True,True,True,False,True)
      else
       HandleBtn(False,False,False,False,False,False,True,False,True,False,True);
     end;
    dsEdit, dsInsert:
     HandleBtn(False, True, False, True, False, False, False, False, False, False, True);
   end;
  end;


{ if localstate = dsInactive then
  showmessage('dsInactive');
 if localstate = dsBrowse then
  showmessage('dsBrowse');
 if localstate = dsInsert then
  showmessage('dsInsert');
 if localstate = dsEdit then
  showmessage('dsEdit');}


 //--- Controla as Msgs do display ---
 Case localState of
  DsBrowse:
   begin
    if RecCount < 1 then
     PrincipalFrm.statusbar1.panels.items[0].text := 'Nenhum Registro'
    else
     PrincipalFrm.statusbar1.panels.items[1].text:= 'Consultando Registros...';
   end;
  DsEdit:   PrincipalFrm.statusbar1.panels.items[0].text:='Alterando Registro...';
  DsInsert: PrincipalFrm.statusbar1.panels.items[0].text:='Inserindo Registro...';
  else
   begin
    PrincipalFrm.statusbar1.panels.items[0].text:='';
    PrincipalFrm.statusbar1.panels.items[1].text:='';
   end;
 end;
end;

Procedure TDM1.AfterInsert(DataSet: TDataSet);
begin
 IBSQLGen_id.Close;
 IBSQLGen_id.SQL.Text := Format('SELECT GEN_ID(%s, %d) FROM RDB$DATABASE', ['G' + DataSet.Fields[0].FieldName, 0]);
 IBSQLGen_id.ExecQuery;

 if not varisnull(IBSQLGen_id.Fields[0].AsInteger) then
  DataSet.Fields[0].asinteger := IBSQLGen_id.Fields[0].AsInteger + 1
 else
  DataSet.Fields[0].asinteger := 0;

 if not (dataset.DataSource = nil) then
  DataSet.Fields[1].asinteger := DataSet.DataSource.DataSet.Fields[0].asinteger;
end;

procedure TDM1.DstCadastroFrmAfterPost(DataSet: TDataSet);
begin
 Dm1.DstCadastroFrm.ApplyUpdates;
 Dm1.DstCadastroFrm.Transaction.CommitRetaining;
end;

procedure TDM1.DstContatoFrmAfterPost(DataSet: TDataSet);
begin
 Dm1.DstContatoFrm.ApplyUpdates;
 Dm1.DstContatoFrm.Transaction.CommitRetaining;
end;

procedure TDM1.DstCadastroFrmNewRecord(DataSet: TDataSet);
begin
if not varisnull(DM1.QryTipoFrm['CODTIPOFRM']) then
 DM1.DstCadastroFrm['CODTIPOFRM'] := DM1.QryTipoFrm['CODTIPOFRM'];
end;

procedure TDM1.DstContatoFrmNewRecord(DataSet: TDataSet);
begin
if not varisnull(DM1.QryTipoFrm['COD_TIPOFRM']) then
 DM1.DstContatoFrm['COD_TIPOFRM'] := DM1.QryTipoFrm['COD_TIPOFRM'];
end;

end.
