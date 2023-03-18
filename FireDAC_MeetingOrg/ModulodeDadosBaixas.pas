unit ModulodeDadosBaixas;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, SimpleDS, Provider,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.DBXFirebird;

type
  TDMB = class(TDataModule)
    SDS_Crediario_Baixa2: TSimpleDataSet;
    DTS_Crediario_Baixa: TDataSource;
    DTS_Cliente: TDataSource;
    SDS_Crediario_Baixa2CODIGO: TIntegerField;
    SDS_Crediario_Baixa2CODIGO_CLIENTE: TIntegerField;
    SDS_Crediario_Baixa2DATA_COMPRA: TDateField;
    SDS_Crediario_Baixa2DATA_VENCIMENTO: TDateField;
    SDS_Crediario_Baixa2DATA_BAIXA: TDateField;
    SDS_Crediario_Baixa2HISTORICO: TStringField;
    SDS_Crediario_Baixa2USUARIO_VENDA: TStringField;
    SDS_Crediario_Baixa2USUARIO_BAIXA: TStringField;
    SDS_Crediario_Baixa2SITUACAO: TStringField;
    SDS_Crediario_Baixa2VALOR_COMPRA: TFMTBCDField;
    SDS_Crediario_Baixa2VALOR_JUROS: TFMTBCDField;
    SDS_Crediario_Baixa2VALOR_ACRESCIMO: TFMTBCDField;
    SDS_Crediario_Baixa2VALOR_DESCONTO: TFMTBCDField;
    SDS_Crediario_Baixa2VALOR_PAGAR: TFMTBCDField;
    SDS_Crediario_Baixa2VALOR_PAGO: TFMTBCDField;
    SDS_Crediario_Baixa2VALOR_TOTAL: TFMTBCDField;
    SDS_BaixarCheque: TSimpleDataSet;
    DTS_BaixarCheque: TDataSource;
    SDS_BaixarChequeCODIGO: TIntegerField;
    SDS_BaixarChequeCODIGO_COMPRA: TIntegerField;
    SDS_BaixarChequeBANCO: TStringField;
    SDS_BaixarChequeAGENCIA: TStringField;
    SDS_BaixarChequeCONTA_CORRENTE: TStringField;
    SDS_BaixarChequeCONTA_DESDE: TDateField;
    SDS_BaixarChequeTITULAR: TStringField;
    SDS_BaixarChequeTIPO_CHEQUE: TStringField;
    SDS_BaixarChequeN_CHEQUE: TStringField;
    SDS_BaixarChequeQNT: TStringField;
    SDS_BaixarChequeCLIENTE: TStringField;
    SDS_BaixarChequeRETORNARDO: TStringField;
    SDS_BaixarChequeRETORNADO_PAGO: TStringField;
    SDS_BaixarChequeMOTIVO_RETORNO: TStringField;
    SDS_BaixarChequeDATA_CADASTRO: TDateField;
    SDS_BaixarChequeDATA_DEPOSITO: TDateField;
    SDS_BaixarChequeDATA_RETORNO: TDateField;
    SDS_BaixarChequeDATA_BAIXA: TDateField;
    SDS_BaixarChequeUSUARIO_CADASTRO: TStringField;
    SDS_BaixarChequeUSUARIO_BAIXA: TStringField;
    SDS_BaixarChequeCOMPENSADO: TStringField;
    SDS_BaixarChequeCODIGO_CC: TIntegerField;
    SDS_BaixarChequeNUMERO_CC: TStringField;
    SDS_Cheque_Retornar: TSimpleDataSet;
    DTS_Cheque_Retornar: TDataSource;
    SDS_Cheque_RetornarCODIGO: TIntegerField;
    SDS_Cheque_RetornarCODIGO_COMPRA: TIntegerField;
    SDS_Cheque_RetornarBANCO: TStringField;
    SDS_Cheque_RetornarAGENCIA: TStringField;
    SDS_Cheque_RetornarCONTA_CORRENTE: TStringField;
    SDS_Cheque_RetornarCONTA_DESDE: TDateField;
    SDS_Cheque_RetornarTITULAR: TStringField;
    SDS_Cheque_RetornarTIPO_CHEQUE: TStringField;
    SDS_Cheque_RetornarN_CHEQUE: TStringField;
    SDS_Cheque_RetornarQNT: TStringField;
    SDS_Cheque_RetornarVALOR_CHEQUE: TFMTBCDField;
    SDS_Cheque_RetornarCLIENTE: TStringField;
    SDS_Cheque_RetornarRETORNARDO: TStringField;
    SDS_Cheque_RetornarRETORNADO_PAGO: TStringField;
    SDS_Cheque_RetornarMOTIVO_RETORNO: TStringField;
    SDS_Cheque_RetornarDATA_CADASTRO: TDateField;
    SDS_Cheque_RetornarDATA_DEPOSITO: TDateField;
    SDS_Cheque_RetornarDATA_RETORNO: TDateField;
    SDS_Cheque_RetornarDATA_BAIXA: TDateField;
    SDS_Cheque_RetornarUSUARIO_CADASTRO: TStringField;
    SDS_Cheque_RetornarUSUARIO_BAIXA: TStringField;
    SDS_Cheque_RetornarCOMPENSADO: TStringField;
    SDS_Cheque_RetornarCODIGO_CC: TIntegerField;
    SDS_Cheque_RetornarNUMERO_CC: TStringField;
    SDS_BaixarChequeRetornados: TSimpleDataSet;
    DTS_BaixarChequeRetornados: TDataSource;
    SDS_BaixarChequeRetornadosCODIGO: TIntegerField;
    SDS_BaixarChequeRetornadosCODIGO_COMPRA: TIntegerField;
    SDS_BaixarChequeRetornadosBANCO: TStringField;
    SDS_BaixarChequeRetornadosAGENCIA: TStringField;
    SDS_BaixarChequeRetornadosCONTA_CORRENTE: TStringField;
    SDS_BaixarChequeRetornadosCONTA_DESDE: TDateField;
    SDS_BaixarChequeRetornadosTITULAR: TStringField;
    SDS_BaixarChequeRetornadosTIPO_CHEQUE: TStringField;
    SDS_BaixarChequeRetornadosN_CHEQUE: TStringField;
    SDS_BaixarChequeRetornadosQNT: TStringField;
    SDS_BaixarChequeRetornadosVALOR_CHEQUE: TFMTBCDField;
    SDS_BaixarChequeRetornadosCLIENTE: TStringField;
    SDS_BaixarChequeRetornadosRETORNARDO: TStringField;
    SDS_BaixarChequeRetornadosRETORNADO_PAGO: TStringField;
    SDS_BaixarChequeRetornadosMOTIVO_RETORNO: TStringField;
    SDS_BaixarChequeRetornadosDATA_CADASTRO: TDateField;
    SDS_BaixarChequeRetornadosDATA_DEPOSITO: TDateField;
    SDS_BaixarChequeRetornadosDATA_RETORNO: TDateField;
    SDS_BaixarChequeRetornadosDATA_BAIXA: TDateField;
    SDS_BaixarChequeRetornadosUSUARIO_CADASTRO: TStringField;
    SDS_BaixarChequeRetornadosUSUARIO_BAIXA: TStringField;
    SDS_BaixarChequeRetornadosCOMPENSADO: TStringField;
    SDS_BaixarChequeRetornadosCODIGO_CC: TIntegerField;
    SDS_BaixarChequeRetornadosNUMERO_CC: TStringField;
    SPC_Juros: TSQLStoredProc;
    SDS_CREDIARIO_VENCIDO: TSimpleDataSet;
    SDS_CREDIARIO_VENCIDOCODIGO: TIntegerField;
    SDS_CREDIARIO_VENCIDOCODIGO_CLIENTE: TIntegerField;
    SDS_CREDIARIO_VENCIDODATA_COMPRA: TDateField;
    SDS_CREDIARIO_VENCIDODATA_VENCIMENTO: TDateField;
    SDS_CREDIARIO_VENCIDODATA_BAIXA: TDateField;
    SDS_CREDIARIO_VENCIDOHISTORICO: TStringField;
    SDS_CREDIARIO_VENCIDOUSUARIO_VENDA: TStringField;
    SDS_CREDIARIO_VENCIDOUSUARIO_BAIXA: TStringField;
    SDS_CREDIARIO_VENCIDOSITUACAO: TStringField;
    SDS_CREDIARIO_VENCIDOVALOR_COMPRA: TFMTBCDField;
    SDS_CREDIARIO_VENCIDOVALOR_JUROS: TFMTBCDField;
    SDS_CREDIARIO_VENCIDOVALOR_ACRESCIMO: TFMTBCDField;
    SDS_CREDIARIO_VENCIDOVALOR_DESCONTO: TFMTBCDField;
    SDS_CREDIARIO_VENCIDOVALOR_PAGAR: TFMTBCDField;
    SDS_CREDIARIO_VENCIDOVALOR_PAGO: TFMTBCDField;
    SDS_CREDIARIO_VENCIDOVALOR_TOTAL: TFMTBCDField;
    DTS_CREDIARIO_VENCIDO: TDataSource;
    SDS_ChequesBaixar: TSimpleDataSet;
    DTS_ChequesBaixar: TDataSource;
    SDS_ChequesBaixarCODIGO: TIntegerField;
    SDS_ChequesBaixarCODIGO_COMPRA: TIntegerField;
    SDS_ChequesBaixarBANCO: TStringField;
    SDS_ChequesBaixarAGENCIA: TStringField;
    SDS_ChequesBaixarCONTA_CORRENTE: TStringField;
    SDS_ChequesBaixarCONTA_DESDE: TDateField;
    SDS_ChequesBaixarTITULAR: TStringField;
    SDS_ChequesBaixarTIPO_CHEQUE: TStringField;
    SDS_ChequesBaixarN_CHEQUE: TStringField;
    SDS_ChequesBaixarQNT: TStringField;
    SDS_ChequesBaixarVALOR_CHEQUE: TFMTBCDField;
    SDS_ChequesBaixarCLIENTE: TStringField;
    SDS_ChequesBaixarRETORNARDO: TStringField;
    SDS_ChequesBaixarRETORNADO_PAGO: TStringField;
    SDS_ChequesBaixarMOTIVO_RETORNO: TStringField;
    SDS_ChequesBaixarDATA_CADASTRO: TDateField;
    SDS_ChequesBaixarDATA_DEPOSITO: TDateField;
    SDS_ChequesBaixarDATA_RETORNO: TDateField;
    SDS_ChequesBaixarDATA_BAIXA: TDateField;
    SDS_ChequesBaixarUSUARIO_CADASTRO: TStringField;
    SDS_ChequesBaixarUSUARIO_BAIXA: TStringField;
    SDS_ChequesBaixarCOMPENSADO: TStringField;
    SDS_ChequesBaixarCODIGO_CC: TIntegerField;
    SDS_ChequesBaixarNUMERO_CC: TStringField;
    SDS_Crediario_Baixa2PARCELA: TStringField;
    SDS_Crediario_Baixa2CODIGO_COMPRA: TIntegerField;
    SDS_Crediario_Baixa2NUMBOLETO: TStringField;
    SDS_Crediario_Baixa2BANCO_PORTADOR: TIntegerField;
    SDS_Crediario_Baixa2REMESSA: TStringField;
    SDS_Crediario_Baixa2DATACREDITO: TDateField;
    SDS_Crediario_Baixa2ID_PORTADOR: TIntegerField;
    SDS_Crediario_Baixa2ENVIADO: TStringField;
    SDS_Crediario_Baixa2COD_EMPRESA: TIntegerField;
    SDS_Crediario_Baixa2NUMBOLETO1: TIntegerField;
    SDS_Crediario_Baixa2CODIGOCEDENTE: TStringField;
    SDS_Crediario_Baixa2TIPO: TStringField;
    SDS_Crediario_Baixa2CHEK_BOX: TStringField;
    SDS_Crediario_Baixa2NUM_NOTA: TIntegerField;
    SDS_Crediario_Baixa2SERIE_NOTA: TStringField;
    SDS_Crediario_Baixa2NOME_SACADO: TStringField;
    Sds_Itens_venda: TSimpleDataSet;
    dts_itens_venda: TDataSource;
    Sds_Itens_vendaCODIGO_ID: TIntegerField;
    Sds_Itens_vendaCODIGO_PRODUTO: TStringField;
    Sds_Itens_vendaDESCRICAO_PRODUTO: TStringField;
    Sds_Itens_vendaPRECO_UNITARIO: TFMTBCDField;
    Sds_Itens_vendaDESCONTO: TFMTBCDField;
    Sds_Itens_vendaQUANTIDADE: TFMTBCDField;
    Sds_Itens_vendaPRECO_TOTAL: TFMTBCDField;
    Sds_Itens_vendaUNIDADE: TStringField;
    Sds_parcelas_baixas: TSimpleDataSet;
    Dts_Parcelas_Baixas: TDataSource;
    Sds_parcelas_baixasCODIGO: TIntegerField;
    Sds_parcelas_baixasCOD_CREDIAIRIO: TIntegerField;
    Sds_parcelas_baixasCOD_EMPRESA: TIntegerField;
    Sds_parcelas_baixasPARCELA: TStringField;
    Sds_parcelas_baixasVALOR_PARCELA: TFMTBCDField;
    Sds_parcelas_baixasJUROS: TFMTBCDField;
    Sds_parcelas_baixasMULTA: TFMTBCDField;
    Sds_parcelas_baixasDESCONTO: TFMTBCDField;
    Sds_parcelas_baixasVALOR_TOTAL: TFMTBCDField;
    Sds_parcelas_baixasDATA_BAIXA: TDateField;
    Sds_parcelas_baixasUSUARIO: TStringField;
    Sds_parcelas_baixasCOD_CLIENTE: TIntegerField;
    Sds_parcelas_baixasNOME_CLIENTE: TStringField;
    Sds_parcelas_baixasCOD_COMPRA: TIntegerField;
    Sds_parcelas_baixasSALDO_PAGAR: TFMTBCDField;
    Sds_parcelas_baixasDATA_VENCIMENTO: TDateField;
    Dts_Crediario_recebido: TDataSource;
    Qry_Crediario_Recebido: TSQLQuery;
    Dsp_crediario_Recebido: TDataSetProvider;
    Cds_crediario_Recebido: TClientDataSet;
    Qry_Crediario_RecebidoCODIGO: TIntegerField;
    Qry_Crediario_RecebidoCOD_CREDIAIRIO: TIntegerField;
    Qry_Crediario_RecebidoCOD_EMPRESA: TIntegerField;
    Qry_Crediario_RecebidoPARCELA: TStringField;
    Qry_Crediario_RecebidoVALOR_PARCELA: TFMTBCDField;
    Qry_Crediario_RecebidoJUROS: TFMTBCDField;
    Qry_Crediario_RecebidoMULTA: TFMTBCDField;
    Qry_Crediario_RecebidoDESCONTO: TFMTBCDField;
    Qry_Crediario_RecebidoVALOR_TOTAL: TFMTBCDField;
    Qry_Crediario_RecebidoDATA_BAIXA: TDateField;
    Qry_Crediario_RecebidoUSUARIO: TStringField;
    Qry_Crediario_RecebidoCOD_CLIENTE: TIntegerField;
    Qry_Crediario_RecebidoNOME_CLIENTE: TStringField;
    Qry_Crediario_RecebidoCOD_COMPRA: TIntegerField;
    Qry_Crediario_RecebidoVALOR_PAGO: TFMTBCDField;
    Qry_Crediario_RecebidoSALDO_PAGAR: TFMTBCDField;
    Qry_Crediario_RecebidoDATA_VENCIMENTO: TDateField;
    Cds_crediario_RecebidoCODIGO: TIntegerField;
    Cds_crediario_RecebidoCOD_CREDIAIRIO: TIntegerField;
    Cds_crediario_RecebidoCOD_EMPRESA: TIntegerField;
    Cds_crediario_RecebidoPARCELA: TStringField;
    Cds_crediario_RecebidoVALOR_PARCELA: TFMTBCDField;
    Cds_crediario_RecebidoJUROS: TFMTBCDField;
    Cds_crediario_RecebidoMULTA: TFMTBCDField;
    Cds_crediario_RecebidoDESCONTO: TFMTBCDField;
    Cds_crediario_RecebidoVALOR_TOTAL: TFMTBCDField;
    Cds_crediario_RecebidoDATA_BAIXA: TDateField;
    Cds_crediario_RecebidoUSUARIO: TStringField;
    Cds_crediario_RecebidoCOD_CLIENTE: TIntegerField;
    Cds_crediario_RecebidoNOME_CLIENTE: TStringField;
    Cds_crediario_RecebidoCOD_COMPRA: TIntegerField;
    Cds_crediario_RecebidoVALOR_PAGO: TFMTBCDField;
    Cds_crediario_RecebidoSALDO_PAGAR: TFMTBCDField;
    Cds_crediario_RecebidoDATA_VENCIMENTO: TDateField;
    QRY_MOV_DIARIO: TSQLQuery;
    QRY_MOV_DIARIOCODIGO: TIntegerField;
    QRY_MOV_DIARIODATA: TDateField;
    QRY_MOV_DIARIOHISTORICO: TStringField;
    QRY_MOV_DIARIOUSUARIO: TStringField;
    QRY_MOV_DIARIOTIPO: TStringField;
    QRY_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField;
    QRY_MOV_DIARIOVALOR_SAIDA: TFMTBCDField;
    QRY_MOV_DIARIOCODIGO_CC: TIntegerField;
    QRY_MOV_DIARIONUMERO_CC: TStringField;
    QRY_MOV_DIARIOCODIGO_VENDA: TIntegerField;
    DSP_MOV_DIARIO: TDataSetProvider;
    CDS_MOV_DIARIO: TClientDataSet;
    CDS_MOV_DIARIOCODIGO: TIntegerField;
    CDS_MOV_DIARIODATA: TDateField;
    CDS_MOV_DIARIOHISTORICO: TStringField;
    CDS_MOV_DIARIOUSUARIO: TStringField;
    CDS_MOV_DIARIOTIPO: TStringField;
    CDS_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField;
    CDS_MOV_DIARIOVALOR_SAIDA: TFMTBCDField;
    CDS_MOV_DIARIOCODIGO_CC: TIntegerField;
    CDS_MOV_DIARIONUMERO_CC: TStringField;
    CDS_MOV_DIARIOCODIGO_VENDA: TIntegerField;
    DTS_MOV_DIARIO: TDataSource;
    QRY_MOV_DIARIOORIGEM: TStringField;
    QRY_MOV_DIARIOCOD_CREDIARIO: TIntegerField;
    CDS_MOV_DIARIOORIGEM: TStringField;
    CDS_MOV_DIARIOCOD_CREDIARIO: TIntegerField;
    Sds_cheques: TSimpleDataSet;
    Dts_cheques: TDataSource;
    Sds_chequesCOD_EMPRESA: TIntegerField;
    Sds_chequesCODIGO: TIntegerField;
    Sds_chequesCODIGO_COMPRA: TIntegerField;
    Sds_chequesBANCO: TStringField;
    Sds_chequesAGENCIA: TStringField;
    Sds_chequesCONTA_CORRENTE: TStringField;
    Sds_chequesCONTA_DESDE: TDateField;
    Sds_chequesTITULAR: TStringField;
    Sds_chequesTIPO_CHEQUE: TStringField;
    Sds_chequesN_CHEQUE: TStringField;
    Sds_chequesQNT: TStringField;
    Sds_chequesVALOR_CHEQUE: TFMTBCDField;
    Sds_chequesCOD_CLIENTE: TIntegerField;
    Sds_chequesCLIENTE: TStringField;
    Sds_chequesRETORNARDO: TStringField;
    Sds_chequesRETORNADO_PAGO: TStringField;
    Sds_chequesMOTIVO_RETORNO: TStringField;
    Sds_chequesDATA_CADASTRO: TDateField;
    Sds_chequesDATA_DEPOSITO: TDateField;
    Sds_chequesDATA_RETORNO: TDateField;
    Sds_chequesDATA_BAIXA: TDateField;
    Sds_chequesUSUARIO_CADASTRO: TStringField;
    Sds_chequesUSUARIO_BAIXA: TStringField;
    Sds_chequesCOMPENSADO: TStringField;
    Sds_chequesCODIGO_CC: TIntegerField;
    Sds_chequesNUMERO_CC: TStringField;
    Sds_chequesNUMERO: TIntegerField;
    Sds_chequesCOD_BARRAS_CHEQUE: TStringField;
    SDS_CREDIARIO_VENCIDOCODIGO_COMPRA: TIntegerField;
    SDS_CREDIARIO_VENCIDOPARCELA: TStringField;
    SDS_CREDIARIO_VENCIDONUMBOLETO: TStringField;
    SDS_CREDIARIO_VENCIDOBANCO_PORTADOR: TIntegerField;
    SDS_CREDIARIO_VENCIDOREMESSA: TStringField;
    SDS_CREDIARIO_VENCIDODATACREDITO: TDateField;
    SDS_CREDIARIO_VENCIDOID_PORTADOR: TIntegerField;
    SDS_CREDIARIO_VENCIDOENVIADO: TStringField;
    SDS_CREDIARIO_VENCIDOCOD_EMPRESA: TIntegerField;
    SDS_CREDIARIO_VENCIDONUMBOLETO1: TIntegerField;
    SDS_CREDIARIO_VENCIDOCODIGOCEDENTE: TStringField;
    SDS_CREDIARIO_VENCIDOTIPO: TStringField;
    SDS_CREDIARIO_VENCIDOCHEK_BOX: TStringField;
    SDS_CREDIARIO_VENCIDONUM_NOTA: TIntegerField;
    SDS_CREDIARIO_VENCIDOSERIE_NOTA: TStringField;
    SDS_CREDIARIO_VENCIDONOME_SACADO: TStringField;
    SDS_CREDIARIO_VENCIDOANO: TStringField;
    SDS_CREDIARIO_VENCIDOMES: TStringField;
    SDS_CREDIARIO_VENCIDOTP_BAIXA: TStringField;
    SDS_CREDIARIO_VENCIDOID_CONTRATO: TIntegerField;
    SDS_CREDIARIO_VENCIDONOME_ARQ: TStringField;
    SDS_CREDIARIO_VENCIDOCOBRADOR: TIntegerField;
    SDS_CREDIARIO_VENCIDOCOMISSAO: TFMTBCDField;
    SDS_CREDIARIO_VENCIDODT_PREVISAO_PGTO: TDateField;
    SDS_CREDIARIO_VENCIDODIAS_VENCIDO: TIntegerField;
    SDS_Crediario_Baixa2COBRADOR: TIntegerField;
    SDS_Crediario_Baixa2COMISSAO: TFMTBCDField;
    SDS_Crediario_Baixa2DT_PREVISAO_PGTO: TDateField;
    SDS_Crediario_Baixa2DIAS_VENCIDO: TIntegerField;
    SDS_Crediario_Baixa2ID_CONTRATO: TIntegerField;
    SDS_ChequesBaixarCHEK_BOX: TStringField;
    SDS_BaixarChequeCOD_EMPRESA: TIntegerField;
    SDS_BaixarChequeCOD_CLIENTE: TIntegerField;
    SDS_BaixarChequeNUMERO: TIntegerField;
    SDS_BaixarChequeCOD_BARRAS_CHEQUE: TStringField;
    SDS_BaixarChequeCHEK_BOX: TStringField;
    SDS_Crediario_Baixa: TClientDataSet;
    dsp_Crediario: TDataSetProvider;
    SDS_Crediario_BaixaCODIGO: TIntegerField;
    SDS_Crediario_BaixaCODIGO_CLIENTE: TIntegerField;
    SDS_Crediario_BaixaDATA_COMPRA: TDateField;
    SDS_Crediario_BaixaDATA_VENCIMENTO: TDateField;
    SDS_Crediario_BaixaDATA_BAIXA: TDateField;
    SDS_Crediario_BaixaHISTORICO: TStringField;
    SDS_Crediario_BaixaUSUARIO_VENDA: TStringField;
    SDS_Crediario_BaixaUSUARIO_BAIXA: TStringField;
    SDS_Crediario_BaixaSITUACAO: TStringField;
    SDS_Crediario_BaixaVALOR_COMPRA: TFMTBCDField;
    SDS_Crediario_BaixaVALOR_JUROS: TFMTBCDField;
    SDS_Crediario_BaixaVALOR_ACRESCIMO: TFMTBCDField;
    SDS_Crediario_BaixaVALOR_DESCONTO: TFMTBCDField;
    SDS_Crediario_BaixaVALOR_PAGAR: TFMTBCDField;
    SDS_Crediario_BaixaVALOR_PAGO: TFMTBCDField;
    SDS_Crediario_BaixaVALOR_TOTAL: TFMTBCDField;
    SDS_Crediario_BaixaCODIGO_COMPRA: TIntegerField;
    SDS_Crediario_BaixaPARCELA: TStringField;
    SDS_Crediario_BaixaNUMBOLETO: TStringField;
    SDS_Crediario_BaixaBANCO_PORTADOR: TIntegerField;
    SDS_Crediario_BaixaREMESSA: TStringField;
    SDS_Crediario_BaixaDATACREDITO: TDateField;
    SDS_Crediario_BaixaID_PORTADOR: TIntegerField;
    SDS_Crediario_BaixaENVIADO: TStringField;
    SDS_Crediario_BaixaCOD_EMPRESA: TIntegerField;
    SDS_Crediario_BaixaNUMBOLETO1: TIntegerField;
    SDS_Crediario_BaixaCODIGOCEDENTE: TStringField;
    SDS_Crediario_BaixaTIPO: TStringField;
    SDS_Crediario_BaixaCHEK_BOX: TStringField;
    SDS_Crediario_BaixaNUM_NOTA: TIntegerField;
    SDS_Crediario_BaixaSERIE_NOTA: TStringField;
    SDS_Crediario_BaixaNOME_SACADO: TStringField;
    SDS_Crediario_BaixaID_CONTRATO: TIntegerField;
    SDS_Crediario_BaixaCOBRADOR: TIntegerField;
    SDS_Crediario_BaixaCOMISSAO: TFMTBCDField;
    SDS_Crediario_BaixaDT_PREVISAO_PGTO: TDateField;
    SDS_Crediario_BaixaDIAS_VENCIDO: TIntegerField;
    SDS_Crediario_BaixaCOD_ENTRADA: TStringField;
    Qry_Crediario: TSQLDataSet;
    Qry_CrediarioCODIGO: TIntegerField;
    Qry_CrediarioCODIGO_CLIENTE: TIntegerField;
    Qry_CrediarioDATA_COMPRA: TDateField;
    Qry_CrediarioDATA_VENCIMENTO: TDateField;
    Qry_CrediarioDATA_BAIXA: TDateField;
    Qry_CrediarioHISTORICO: TStringField;
    Qry_CrediarioUSUARIO_VENDA: TStringField;
    Qry_CrediarioUSUARIO_BAIXA: TStringField;
    Qry_CrediarioSITUACAO: TStringField;
    Qry_CrediarioVALOR_COMPRA: TFMTBCDField;
    Qry_CrediarioVALOR_JUROS: TFMTBCDField;
    Qry_CrediarioVALOR_ACRESCIMO: TFMTBCDField;
    Qry_CrediarioVALOR_DESCONTO: TFMTBCDField;
    Qry_CrediarioVALOR_PAGAR: TFMTBCDField;
    Qry_CrediarioVALOR_PAGO: TFMTBCDField;
    Qry_CrediarioVALOR_TOTAL: TFMTBCDField;
    Qry_CrediarioCODIGO_COMPRA: TIntegerField;
    Qry_CrediarioPARCELA: TStringField;
    Qry_CrediarioNUMBOLETO: TStringField;
    Qry_CrediarioBANCO_PORTADOR: TIntegerField;
    Qry_CrediarioREMESSA: TStringField;
    Qry_CrediarioDATACREDITO: TDateField;
    Qry_CrediarioID_PORTADOR: TIntegerField;
    Qry_CrediarioENVIADO: TStringField;
    Qry_CrediarioCOD_EMPRESA: TIntegerField;
    Qry_CrediarioNUMBOLETO1: TIntegerField;
    Qry_CrediarioCODIGOCEDENTE: TStringField;
    Qry_CrediarioTIPO: TStringField;
    Qry_CrediarioCHEK_BOX: TStringField;
    Qry_CrediarioNUM_NOTA: TIntegerField;
    Qry_CrediarioSERIE_NOTA: TStringField;
    Qry_CrediarioNOME_SACADO: TStringField;
    Qry_CrediarioID_CONTRATO: TIntegerField;
    Qry_CrediarioCOBRADOR: TIntegerField;
    Qry_CrediarioCOMISSAO: TFMTBCDField;
    Qry_CrediarioDT_PREVISAO_PGTO: TDateField;
    Qry_CrediarioDIAS_VENCIDO: TIntegerField;
    Qry_CrediarioCOD_ENTRADA: TStringField;
    SDS_BaixarChequeVALOR_CHEQUE: TFMTBCDField;
    SDS_BaixarChequeDESTINO: TStringField;
    SDS_BaixarChequeCPF_CNPJ: TStringField;
    Qry_CrediarioCOM_REGISTRO: TIntegerField;
    Qry_CrediarioRECEBIVEL: TIntegerField;
    SDS_Crediario_BaixaCOM_REGISTRO: TIntegerField;
    SDS_Crediario_BaixaRECEBIVEL: TIntegerField;
    Qry_Crediario_RecebidoDOC_REC_ADM: TIntegerField;
    Qry_Crediario_RecebidoJUROS_POSTERGADOS: TFMTBCDField;
    Cds_crediario_RecebidoDOC_REC_ADM: TIntegerField;
    Cds_crediario_RecebidoJUROS_POSTERGADOS: TFMTBCDField;
    Dts_extrato: TDataSource;
    Extrato: TFDQuery;
    ExtratoLCTO: TIntegerField;
    ExtratoDATA: TDateField;
    ExtratoHISTORICO: TStringField;
    ExtratoDEBITO: TBCDField;
    ExtratoCREDITO: TBCDField;
    ExtratoORIGEM: TStringField;
    ExtratoSALDO: TBCDField;
    ExtratoORDEM: TIntegerField;
    ExtratoNUMERO_CC: TStringField;
    ExtratoNUMERO_CH: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMB: TDMB;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure TDMB.DataModuleCreate(Sender: TObject);
var
  I: Integer;
begin
for I := 0 to Pred(Self.ComponentCount) do
 begin
   if Self.Components[I] is TSimpleDataSet then
   begin
     (Self.Components[I] as TSimpleDataSet).Connection:= DM.SQLC;
   end
   else
   if Self.Components[I] is TSQLQuery then
   begin
      (Self.Components[I] as TSQLQuery).SQLConnection:= DM.SQLC;
   end;
 end;
end;

end.
