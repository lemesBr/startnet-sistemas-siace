unit VendasParcelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, Grids,
  DBGrids,  DBCtrls, StdCtrls, Mask, RXCtrls, ExtCtrls, RXDBCtrl, Provider,
  ACBrBase, IniFiles, ACBrECF, ACBrDevice, ACBrECFClass, ACBrConsts,
  RDprint, Buttons, XDBGrids, SimpleDS, ActiveX, IBSQL,
  sGauge, IBCustomDataSet, IBQuery, IBDatabase, sBitBtn,
  acDBGrid, sPanel, sDBNavigator, sLabel, Math, frxClass, frxDBSet,
  frxDesgn, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvGlassButton, AdvShapeButton,
  RxToolEdit, RxCurrEdit, AdvGlowButton, Data.DBXFirebird;

type
  TFormParcelamento = class(TForm)
    pnldados: TPanel;
    RxLabel4: TRxLabel;
    RxLabel13: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel10: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    Panel2: TPanel;
    RxLabel7: TRxLabel;
    RxLabel9: TsLabelFX;
    suiDBNavigator1: TsDBNavigator;
    CurrencyEdit2: TCurrencyEdit;
    Panel1: TPanel;
    DBGrid1: TXDBGrid;
    Panel3: TPanel;
    suiButton1: TAdvGlowButton;
    suiButton2: TAdvGlowButton;
    suiButton3: TAdvGlowButton;
    DataSource1: TDataSource;
    SPC_CREDIARIO: TSQLStoredProc;
    SPC_MOV_DIARIO: TSQLStoredProc;
    RxLabel12: TRxLabel;
    CurrencyEdit5: TCurrencyEdit;
    Desc_cond_pagto: TDBEdit;
    CurrencyEdit6: TCurrencyEdit;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    QryPedidos: TSQLQuery;
    QryPedidosCODIGO: TIntegerField;
    QryPedidosVALOR_ITENS: TFMTBCDField;
    QryPedidosVALOR_DESCONTO: TFMTBCDField;
    QryPedidosVALOR_TOTAL: TFMTBCDField;
    QryPedidosVALOR_COMISSAO: TFMTBCDField;
    QryPedidosUSUARIO: TStringField;
    QryPedidosDATA_PEDIDO: TDateField;
    QryPedidosDATA_ENTREGA: TDateField;
    QryPedidosCODIGO_CLIENTE: TIntegerField;
    QryPedidosNOME_CLIENTE: TStringField;
    QryPedidosPAGAMENTO: TStringField;
    QryPedidosSTATUS: TStringField;
    QryPedidosSITUACAO: TStringField;
    QryPedidosUSUARIO_ENTREGA: TStringField;
    QryPedidosENC_FINANCEIRO: TFMTBCDField;
    QryPedidosTP: TStringField;
    QryPedidosOBSERVACOES: TStringField;
    QryPedidosCOD_VENDEDOR: TIntegerField;
    QryPedidosCOD_PAGTO: TIntegerField;
    QryPedidosN_CUPOM: TStringField;
    QryPedidosN_ECF: TStringField;
    QryPedidosCOD_EMPRESA: TIntegerField;
    QryPedidosHORA: TTimeField;
    QryPedidosVALOR_ACRESCIMOS: TFMTBCDField;
    QryPedidosCOD_ORCAMENTO: TIntegerField;
    QryPedidosCOD_PEDIDO: TIntegerField;
    QryPedidosCOD_OS: TSmallintField;
    QryPedidosNUM_NOTA: TIntegerField;
    QryPedidosSERIE_NOTA: TStringField;
    cds_pedidos: TClientDataSet;
    Dsp_pedidos: TDataSetProvider;
    Dts_pedidos: TDataSource;
    cds_pedidosCODIGO: TIntegerField;
    cds_pedidosVALOR_ITENS: TFMTBCDField;
    cds_pedidosVALOR_DESCONTO: TFMTBCDField;
    cds_pedidosVALOR_TOTAL: TFMTBCDField;
    cds_pedidosVALOR_COMISSAO: TFMTBCDField;
    cds_pedidosUSUARIO: TStringField;
    cds_pedidosDATA_PEDIDO: TDateField;
    cds_pedidosDATA_ENTREGA: TDateField;
    cds_pedidosCODIGO_CLIENTE: TIntegerField;
    cds_pedidosNOME_CLIENTE: TStringField;
    cds_pedidosPAGAMENTO: TStringField;
    cds_pedidosSTATUS: TStringField;
    cds_pedidosSITUACAO: TStringField;
    cds_pedidosUSUARIO_ENTREGA: TStringField;
    cds_pedidosENC_FINANCEIRO: TFMTBCDField;
    cds_pedidosTP: TStringField;
    cds_pedidosOBSERVACOES: TStringField;
    cds_pedidosCOD_VENDEDOR: TIntegerField;
    cds_pedidosCOD_PAGTO: TIntegerField;
    cds_pedidosN_CUPOM: TStringField;
    cds_pedidosN_ECF: TStringField;
    cds_pedidosCOD_EMPRESA: TIntegerField;
    cds_pedidosHORA: TTimeField;
    cds_pedidosVALOR_ACRESCIMOS: TFMTBCDField;
    cds_pedidosCOD_ORCAMENTO: TIntegerField;
    cds_pedidosCOD_PEDIDO: TIntegerField;
    cds_pedidosCOD_OS: TSmallintField;
    cds_pedidosNUM_NOTA: TIntegerField;
    cds_pedidosSERIE_NOTA: TStringField;
    suiButton4: TAdvGlowButton;
    SPC_CHEQUE: TSQLStoredProc;
    CurrencyEdit7: TCurrencyEdit;
    RxLabel15: TRxLabel;
    RbPercentual: TRadioButton;
    RbValor: TRadioButton;
    Shape1: TShape;
    RxLabel16: TRxLabel;
    DBComboPgto: TComboEdit;
    RxLabel17: TRxLabel;
    CurrencyEdit8: TCurrencyEdit;
    RxLabel18: TRxLabel;
    Edit20: TEdit;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape7: TShape;
    ACBrECF1: TACBrECF;
    SPC_N_CUPOM: TSQLStoredProc;
    edCod: TEdit;
    Edit6: TEdit;
    Edit5: TEdit;
    mFormas: TMemo;
    cbxModelo: TComboBox;
    Button3: TAdvGlowButton;
    RDprint1: TRDprint;
    EDIT62: TCurrencyEdit;
    PanelDesconto: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdtPercentualDesconto: TCurrencyEdit;
    EdtValorDesconto: TCurrencyEdit;
    EdtSubTotal: TCurrencyEdit;
    EdtTotalLiquido: TCurrencyEdit;
    Panel4: TPanel;
    PanelOK: TPanel;
    Panel8: TPanel;
    Label13: TLabel;
    DSFormas: TDataSource;
    edtDiferenca: TCurrencyEdit;
    Panel5: TPanel;
    xdbgrid1: TXDBGrid;
    DBGridFormas: TXDBGrid;
    qFormas: TSimpleDataSet;
    qFormasCOD_FORMA: TIntegerField;
    qFormasDESCRICAO: TStringField;
    qFormasTIPO_PAGTO: TStringField;
    RxLabel3: TRxLabel;
    Shape8: TShape;
    EdtTroco: TCurrencyEdit;
    qPGTO: TSQLQuery;
    qPGTOCODIGO: TIntegerField;
    qPGTONUMERO_PAR: TIntegerField;
    qPGTOVARIACAO_DIAS: TIntegerField;
    qPGTOPIMEIRA_PAR: TIntegerField;
    qPGTOJUROS_DIA: TFMTBCDField;
    qPGTOMEDIA_DIAS: TIntegerField;
    qPGTOJUROS_BASE: TFMTBCDField;
    qPGTOTIPO_PAGAMENTO: TStringField;
    qPGTOSTATUS: TStringField;
    qPGTOUSUARIO: TStringField;
    qPGTODATA: TDateField;
    qPGTODESCRICAO: TStringField;
    qPGTOPG_ECF: TStringField;
    DTS_PAGTO: TDataSource;
    DSP_PAGTO: TDataSetProvider;
    CDS_PAGTO: TClientDataSet;
    RxLabel11: TRxLabel;
    RxLabel2: TRxLabel;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    RxLabel6: TRxLabel;
    RxLabel14: TRxLabel;
    Shape9: TShape;
    EdtTotalGeral: TCurrencyEdit;
    CDS_PAGTOCODIGO: TIntegerField;
    CDS_PAGTONUMERO_PAR: TIntegerField;
    CDS_PAGTOVARIACAO_DIAS: TIntegerField;
    CDS_PAGTOPIMEIRA_PAR: TIntegerField;
    CDS_PAGTOJUROS_DIA: TFMTBCDField;
    CDS_PAGTOMEDIA_DIAS: TIntegerField;
    CDS_PAGTOJUROS_BASE: TFMTBCDField;
    CDS_PAGTOTIPO_PAGAMENTO: TStringField;
    CDS_PAGTOSTATUS: TStringField;
    CDS_PAGTOUSUARIO: TStringField;
    CDS_PAGTODATA: TDateField;
    CDS_PAGTODESCRICAO: TStringField;
    CDS_PAGTOPG_ECF: TStringField;
    qFormasMOSTRA_VENDA: TStringField;
    qFormasTELA_TROCO: TStringField;
    EDTJUROS: TCurrencyEdit;
    RxLabel19: TRxLabel;
    Edit3: TEdit;
    Label3: TsLabelFX;
    DBComboCliente: TComboEdit;
    Desc_cliente: TDBEdit;
    Edit2: TEdit;
    Panel9: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Panel6: TPanel;
    Label7: TLabel;
    XDBGrid2: TXDBGrid;
    Dts_cheques: TDataSource;
    ProgressBar1: TsGauge;
    CDS_PAGTOCHEK: TStringField;
    qPGTOCHEK: TStringField;
    Bevel3: TBevel;
    FDvShapeButton1: TAdvShapeButton;
    qrcaixa_mov: TFDQuery;
    qrCupom: TFDQuery;
    qrCupom_item: TFDQuery;
    qrecf_comando: TSimpleDataSet;
    qrecf_comandoCOMANDO: TStringField;
    qrecf_comandoNUMERO: TIntegerField;
    qrecf_comandoDESCONTO: TFMTBCDField;
    qrecf_comandoACRESCIMO: TFMTBCDField;
    qrecf_comandoDINHEIRO: TFMTBCDField;
    qrecf_comandoCHEQUEAV: TFMTBCDField;
    qrecf_comandoCHEQUEAP: TFMTBCDField;
    qrecf_comandoCARTAOCRED: TFMTBCDField;
    qrecf_comandoCARTAODEB: TFMTBCDField;
    qrecf_comandoPROMISSORIA: TFMTBCDField;
    qrecf_comandoCLIENTE: TStringField;
    qrecf_comandoENDERECO: TStringField;
    qrecf_comandoCIDADE: TStringField;
    qrecf_comandoCPF: TStringField;
    qrecf_comandoCONVENIO: TStringField;
    qrecf_comandoVENDEDOR: TStringField;
    qrecf_comandoSEQUENCIA: TIntegerField;
    qrecf_comandoRG_IE: TStringField;
    qrecf_comandoPRODUTOR_RURAL: TStringField;
    DSQBuscaItens: TDataSource;
    SPC_N_NFE: TSQLStoredProc;
    Memo1: TMemo;
    CDSFormas: TFDMemTable;
    CDSFormasCODIGO: TIntegerField;
    CDSFormasDESCRICAO: TStringField;
    CDSFormasTIPO: TStringField;
    CDSFormasCONCEDER_DESCONTO: TStringField;
    CDSFormastipo_pagto: TStringField;
    CDSFormasVALOR: TFloatField;
    ClientDataSet1: TFDMemTable;
    ClientDataSet1CodigoCliente: TIntegerField;
    ClientDataSet1CodigoCompra: TIntegerField;
    ClientDataSet1Vendedor: TStringField;
    ClientDataSet1Historico: TStringField;
    ClientDataSet1DataCompra: TDateField;
    ClientDataSet1Parcela: TStringField;
    ClientDataSet1DataVencimento: TDateField;
    ClientDataSet1Comissao: TCurrencyField;
    ClientDataSet1ValorParcela: TFMTBCDField;
    cds_cheques: TFDMemTable;
    cds_chequesvenda: TStringField;
    cds_chequescond_pagto: TStringField;
    cds_chequesvalor: TCurrencyField;
    cds_chequesPARC: TIntegerField;
    SPC_CREDIARIO_C: TSQLStoredProc;
    QBuscaItens: TFDQuery;
    FXduplicata: TfrxReport;
    cds_formas: TFDQuery;
    FSCLIENTE: TfrxDBDataset;
    fsvenda: TfrxDBDataset;
    fscontasreceber: TfrxDBDataset;
    frxDBitens: TfrxDBDataset;
    fxvenda: TfrxReport;
    qrPrevendaRel: TfrxDBDataset;
    qrPrevendaItemRel: TfrxDBDataset;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    Sds_vendas: TFDQuery;
    sds_vendas_itens: TFDQuery;
    n_nota: TFDQuery;
    n_notaN_NOTA: TIntegerField;
    Sds_vendasCODIGO: TIntegerField;
    Sds_vendasVALOR_ITENS: TFMTBCDField;
    Sds_vendasENC_FINANCEIRO: TFMTBCDField;
    Sds_vendasVALOR_DESCONTO: TFMTBCDField;
    Sds_vendasVALOR_TOTAL: TFMTBCDField;
    Sds_vendasVALOR_COMISSAO: TFMTBCDField;
    Sds_vendasUSUARIO: TStringField;
    Sds_vendasDATA_PEDIDO: TDateField;
    Sds_vendasDATA_ENTREGA: TDateField;
    Sds_vendasCODIGO_CLIENTE: TIntegerField;
    Sds_vendasNOME_CLIENTE: TStringField;
    Sds_vendasPAGAMENTO: TStringField;
    Sds_vendasSTATUS: TStringField;
    Sds_vendasSITUACAO: TStringField;
    Sds_vendasUSUARIO_ENTREGA: TStringField;
    Sds_vendasTP: TStringField;
    Sds_vendasOBSERVACOES: TStringField;
    Sds_vendasCOD_VENDEDOR: TIntegerField;
    Sds_vendasCOD_PAGTO: TIntegerField;
    Sds_vendasN_CUPOM: TStringField;
    Sds_vendasN_ECF: TStringField;
    Sds_vendasCOD_EMPRESA: TIntegerField;
    Sds_vendasHORA: TTimeField;
    Sds_vendasVALOR_ACRESCIMOS: TFMTBCDField;
    Sds_vendasCOD_ORCAMENTO: TIntegerField;
    Sds_vendasCOD_PEDIDO: TIntegerField;
    Sds_vendasCOD_OS: TSmallintField;
    Sds_vendasNUM_NOTA: TIntegerField;
    Sds_vendasSERIE_NOTA: TStringField;
    Sds_vendasENDERECO: TStringField;
    Sds_vendasCPF_CNPJ: TStringField;
    Sds_vendasRG_IE: TStringField;
    Sds_vendasFONE: TStringField;
    Sds_vendasCIDADE: TStringField;
    Sds_vendasBAIRRO: TStringField;
    Sds_vendasN_PARTIDA: TStringField;
    Sds_vendasPROPRIEDADE: TStringField;
    Sds_vendasQUANT_VENDIDA: TBCDField;
    Sds_vendasSALDO_VENDIDO: TBCDField;
    Sds_vendasMED_VETERINARIO: TStringField;
    Sds_vendasDATA_VACINA: TDateField;
    Sds_vendasVALOR_AVISTA: TFMTBCDField;
    Sds_vendasVALOR_PRAZO: TFMTBCDField;
    Sds_vendasUF: TStringField;
    Sds_vendasCOD_IBGE: TStringField;
    Sds_vendasCEP: TStringField;
    Sds_vendasNUMERO: TStringField;
    Sds_vendasTIPO: TStringField;
    Sds_vendasVALOR_PAGO: TFMTBCDField;
    Sds_vendasVALOR_TROCO: TFMTBCDField;
    Sds_vendasENTREGADOR: TStringField;
    Sds_vendasTIPO_PEDIDO: TStringField;
    Sds_vendasFECHADO: TStringField;
    Sds_vendasMESA: TStringField;
    Sds_vendasREFERENCIA: TStringField;
    Sds_vendasCELULAR: TStringField;
    Sds_vendasPROD_RURAL: TStringField;
    Sds_vendasIE_PRODUTOR: TStringField;
    Sds_vendasVLR_PIS: TFMTBCDField;
    Sds_vendasVLR_COFINS: TFMTBCDField;
    Sds_vendasKM: TIntegerField;
    Sds_vendasCHAVE_FP: TStringField;
    Sds_vendasCHAVE_FP_CANCEL: TStringField;
    Sds_vendasCUPON_CANCELADO: TStringField;
    Sds_vendasCRZ: TIntegerField;
    Sds_vendasCHEK_BOX: TStringField;
    Sds_vendasANO: TIntegerField;
    Sds_vendasMODELO_NF: TStringField;
    Sds_vendasCFOP_NF: TStringField;
    Sds_vendasCOD_OS_AUTO: TIntegerField;
    cds_formasCOD_VENDA: TIntegerField;
    cds_formasCOD_FORMA: TIntegerField;
    cds_formasVALOR: TFMTBCDField;
    cds_formasTIPO: TStringField;
    cds_formasDESC_FORMA: TStringField;
    sds_vendas_itensCODIGO: TIntegerField;
    sds_vendas_itensCODIGO_ID: TIntegerField;
    sds_vendas_itensITEN: TIntegerField;
    sds_vendas_itensCODIGO_PROD: TIntegerField;
    sds_vendas_itensCODIGO_PRODUTO: TStringField;
    sds_vendas_itensDESCRICAO_PRODUTO: TStringField;
    sds_vendas_itensPRECO_UNITARIO: TFMTBCDField;
    sds_vendas_itensDESCONTO: TFMTBCDField;
    sds_vendas_itensQUANTIDADE: TBCDField;
    sds_vendas_itensPRECO_TOTAL: TFMTBCDField;
    sds_vendas_itensCOMISSAO: TFMTBCDField;
    sds_vendas_itensDEV: TStringField;
    sds_vendas_itensQNT_DEV: TBCDField;
    sds_vendas_itensVAL_DEV: TFMTBCDField;
    sds_vendas_itensENC_FINANCEIRO: TFMTBCDField;
    sds_vendas_itensUNIDADE: TStringField;
    sds_vendas_itensSIT_TRIBUTARIA: TStringField;
    sds_vendas_itensVENDEDOR: TIntegerField;
    sds_vendas_itensFRACAO: TIntegerField;
    sds_vendas_itensCOD_NCM: TStringField;
    sds_vendas_itensPROD_SERV: TStringField;
    sds_vendas_itensPERC_ISS: TFMTBCDField;
    sds_vendas_itensBASE_ISS: TFMTBCDField;
    sds_vendas_itensVL_ISS: TFMTBCDField;
    sds_vendas_itensPERC_ICM: TFMTBCDField;
    sds_vendas_itensBASE_ICMS: TFMTBCDField;
    sds_vendas_itensVL_ICM: TFMTBCDField;
    sds_vendas_itensPERC_IPI: TFMTBCDField;
    sds_vendas_itensBASE_IPI: TFMTBCDField;
    sds_vendas_itensVL_IPI: TFMTBCDField;
    sds_vendas_itensPERC_COFINS: TFMTBCDField;
    sds_vendas_itensBASE_COFINS: TFMTBCDField;
    sds_vendas_itensVL_COFINS: TFMTBCDField;
    sds_vendas_itensPERC_ICMS_SUBST: TFMTBCDField;
    sds_vendas_itensBASE_ICMS_SUBST: TFMTBCDField;
    sds_vendas_itensVL_ICMS_SUBST: TFMTBCDField;
    sds_vendas_itensPERC_PIS: TFMTBCDField;
    sds_vendas_itensBASE_PIS: TFMTBCDField;
    sds_vendas_itensVL_PIS: TFMTBCDField;
    sds_vendas_itensIMPRIME: TStringField;
    sds_vendas_itensCOD_EMPRESA: TIntegerField;
    sds_vendas_itensID_BICO: TIntegerField;
    sds_vendas_itensID_TANQUE: TStringField;
    sds_vendas_itensID_BOMBA: TStringField;
    sds_vendas_itensBICO: TStringField;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensCODIGO_ID: TIntegerField;
    QBuscaItensITEN: TIntegerField;
    QBuscaItensCODIGO_PROD: TIntegerField;
    QBuscaItensCODIGO_PRODUTO: TStringField;
    QBuscaItensDESCRICAO_PRODUTO: TStringField;
    QBuscaItensPRECO_UNITARIO: TFMTBCDField;
    QBuscaItensDESCONTO: TFMTBCDField;
    QBuscaItensQUANTIDADE: TBCDField;
    QBuscaItensPRECO_TOTAL: TFMTBCDField;
    QBuscaItensCOMISSAO: TFMTBCDField;
    QBuscaItensDEV: TStringField;
    QBuscaItensQNT_DEV: TBCDField;
    QBuscaItensVAL_DEV: TFMTBCDField;
    QBuscaItensENC_FINANCEIRO: TFMTBCDField;
    QBuscaItensUNIDADE: TStringField;
    QBuscaItensSIT_TRIBUTARIA: TStringField;
    QBuscaItensVENDEDOR: TIntegerField;
    QBuscaItensFRACAO: TIntegerField;
    QBuscaItensCOD_NCM: TStringField;
    QBuscaItensPROD_SERV: TStringField;
    QBuscaItensPERC_ISS: TFMTBCDField;
    QBuscaItensBASE_ISS: TFMTBCDField;
    QBuscaItensVL_ISS: TFMTBCDField;
    QBuscaItensPERC_ICM: TFMTBCDField;
    QBuscaItensBASE_ICMS: TFMTBCDField;
    QBuscaItensVL_ICM: TFMTBCDField;
    QBuscaItensPERC_IPI: TFMTBCDField;
    QBuscaItensBASE_IPI: TFMTBCDField;
    QBuscaItensVL_IPI: TFMTBCDField;
    QBuscaItensPERC_COFINS: TFMTBCDField;
    QBuscaItensBASE_COFINS: TFMTBCDField;
    QBuscaItensVL_COFINS: TFMTBCDField;
    QBuscaItensPERC_ICMS_SUBST: TFMTBCDField;
    QBuscaItensBASE_ICMS_SUBST: TFMTBCDField;
    QBuscaItensVL_ICMS_SUBST: TFMTBCDField;
    QBuscaItensPERC_PIS: TFMTBCDField;
    QBuscaItensBASE_PIS: TFMTBCDField;
    QBuscaItensVL_PIS: TFMTBCDField;
    QBuscaItensIMPRIME: TStringField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensID_BICO: TIntegerField;
    QBuscaItensID_TANQUE: TStringField;
    QBuscaItensID_BOMBA: TStringField;
    QBuscaItensBICO: TStringField;
    QBuscaItensICMS: TFMTBCDField;
    QBuscaItensCOD_ANP: TStringField;
    QBuscaItensCOMBUSTIVEL: TStringField;
    QBuscaItensAPLICACAO: TStringField;
    QBuscaItensIPI_IRPJ: TFMTBCDField;
    QBuscaItensOUTROS_IMPOSTOS: TFMTBCDField;
    QBuscaItensNCM_SH: TStringField;
    QBuscaItensQTD_CAIXA: TSmallintField;
    QBuscaItensUND_TRIB: TStringField;
    QBuscaItensML_QUANT_BEB: TFMTBCDField;
    QBuscaItensSIT_COFINS_VENDA_EST: TStringField;
    QBuscaItensSIT_PIS_VENDA_INTER_EST: TStringField;
    QBuscaItensSIT_COFINS_VENDA_INTER_EST: TStringField;
    QBuscaItensSIT_PIS_VENDA_EST: TStringField;
    QBuscaItensCST_IPI_SAIDA: TStringField;
    QBuscaItensCST_VENDA_INTER: TStringField;
    QBuscaItensPERC_ALIQUOTA_PIS: TFMTBCDField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TFMTBCDField;
    QBuscaItensCFOP_INTER_VENDA: TStringField;
    QBuscaItensFLAG_PIS_COFINS: TStringField;
    QBuscaItensCFOP_EST_VENDA: TStringField;
    QBuscaItensCST_VENDA_INTER_NFCE: TStringField;
    QBuscaItensCST_VENDA_NFCE: TStringField;
    QBuscaItensCST_VENDA: TStringField;
    QBuscaItensNCM_SH1: TStringField;
    QBuscaItensPERC_TRIBU: TFMTBCDField;
    QBuscaItensFONTE: TStringField;
    QBuscaItensALIC_NAC: TFMTBCDField;
    QBuscaItensALIC_IMP: TFMTBCDField;
    QBuscaItensVEICULO: TStringField;
    QBuscaItensCHASSI: TStringField;
    QBuscaItensCOR: TIntegerField;
    QBuscaItensCOR_DESC: TStringField;
    QBuscaItensN_MOTOR: TStringField;
    QBuscaItensANO_FAB: TStringField;
    QBuscaItensANO_MOD_FAB: TStringField;
    QBuscaItensTIPO_VEIC: TStringField;
    QBuscaItensN_SERIE: TStringField;
    QBuscaItensCOD_MODELO: TStringField;
    QBuscaItensESPECIE_VEICULO: TStringField;
    QBuscaItensCOD_COR_DENATRAN: TStringField;
    QBuscaItensTIPO_COMBUSTIVEL: TStringField;
    QBuscaItensPESOBRUTO: TFMTBCDField;
    QBuscaItensPESOLIQUIDO: TFMTBCDField;
    QBuscaItensCEST: TStringField;
    Button1: TButton;
    SPC_VENDA: TFDCommand;
    ibsql: TFDCommand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit4Enter(Sender: TObject);
    procedure DBComboPgtoEnter(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RbValorExit(Sender: TObject);
    procedure RbPercentualExit(Sender: TObject);
    procedure DBComboPgtoKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboPgtoExit(Sender: TObject);
    procedure Edit20Exit(Sender: TObject);
    procedure CurrencyEdit8Exit(Sender: TObject);
    procedure CurrencyEdit7Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure MostraErros(Sender: Tobject;
    E: Exception);
    procedure Button3Click(Sender: TObject);
    procedure LerINIecf;
    procedure CarregaFPG;
    procedure cbxModeloChange(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure ImprimeVenda40;
    procedure ImprimeVenda;
    procedure ImprimeVenda60;
    function  TotalizaFormaPagamento(const sTipo : string) : currency;
    function  TotalizaPrazo : currency;
    procedure t(Sender: TObject);
    procedure EdtValorDescontoExit(Sender: TObject);
    procedure DBGridFormasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridFormasColEnter(Sender: TObject);
    procedure DBGridFormasEnter(Sender: TObject);
    procedure DBGridFormasKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridFormasTotalsUpdated(Sender: TObject);
    procedure DBGridFormasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TXColumn;
      State: TGridDrawState);
    procedure xdbgrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure xdbgrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   procedure GeraParcelas;
    procedure xdbgrid1CellClick(Column: TXColumn);
    procedure EdtTotalLiquidoExit(Sender: TObject);
    procedure DBComboClienteButtonClick(Sender: TObject);
    procedure DBComboClienteChange(Sender: TObject);
    procedure DBComboClienteEnter(Sender: TObject);
    procedure DBComboClienteExit(Sender: TObject);
    procedure DBComboClienteKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValorDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTotalLiquidoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPercentualDescontoKeyPress(Sender: TObject;
      var Key: Char);
    procedure DBGridFormasExit(Sender: TObject);
    procedure DBGridFormasRowSelect(Sender: TObject;
      Action: TSelectAction);
    procedure FDvGlassButton2Click(Sender: TObject);
    procedure FDvGlassButton1Click(Sender: TObject);
    procedure XDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ImprimeDUPLICATA;
    procedure DBGrid1Enter(Sender: TObject);
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure FXduplicataGetValue(const VarName: String;
      var Value: Variant);
    procedure Button1Click(Sender: TObject);

  private
    Cod,Cod1,Contador:Integer;
    Tipo: String;
    Libera_Insert : Boolean;
    VP, VR, X, D : Real; 
    vlrVenda : real;
    Total1 : real;
    entrada : Real;
    Parcela : integer;
    valor, Encargos, enc, juros, venda, total_venda, troco: Real;

    desc, desconto2, parcelado_total :Real;
    desconto : real;
    desc_M,  garantia, brinde, consumo, danificada : real;


    Function Converte( cmd : String) : String;
    function ConverteReais(Valor: String): Currency;

  public
    { Public declarations }
    Total, Comissao,EncFinanceiro:Double;
    ValCompra, Dinheiro, Soma,  desct, A, B, C, acresc :Double;
     NItem, i, NValor:Integer;
    Pagamento, CPFCNPJ, RGIE, EnderComp, PAG: String;
    TipoCupom : Char ;
    cTotalForma : currency;
    AVISTA, cheque, VALE, CARTAO, prazo, REQUISICAO, deposito : Double;
    Limite, Credito : Currency;
    cSomaFormas : Real;

    cdsBookmark: Byte;
    n_venda : Integer;


  end;

  const
  //ECFTeste_VERSAO = '2.01' ;
  Estados : array[TACBrECFEstado] of string =
    ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
    'Pagamento', 'Relatório', 'Bloqueada', 'Requer Z', 'Requer X', 'Nao Fiscal' );
   _C = 'tYk*5W@' ;


var
  FormParcelamento: TFormParcelamento;
  TD:TTransactionDesc;

  NAO_INCLUIR : Boolean;

   C, Z, F:Integer;
   Endercomp, Cli, cpfrg, cpf_cnpj, pedido, prod : String;
   dtaux : TDateTime;

   Resp : TModalResult ;
   Percent, EncFin, PerEnc, EF, VF, VD: Real;

   PG, CD : String;
   cFormaPgto      : String;
   cAcresDesc      : string;
   cTipoAcresDesc  : string;
   cValorAcresDesc : string;
   cValorPago      : String;
   cMsgPromocional : String;
   cAcresc         : string;
   cValorDesc      : string;
   valor_desc      : string;
   cAcreDesc,  cTipoAcreDesc, cValorAcreDesc : string;
   NumeroCupom, NumeroCaixa: string;
   iconta, d : Integer;

   Descricao : String ;
   COO, CodFormaPagamento, CodComprovanteNaoFiscal, SubTotal, tributos : String;
   sValor, tp : String ;
   dValor, cValorPago1,  tributo : Double ;
   Linha :String;
   FPG : TACBrECFFormaPagamento ;  { Necessita de uses ACBrECF }

   bPagou, bErroFormas : boolean;
   cSomaFormas, cheque_d : currency;
    END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
    TAM : Integer;

    y,xa, za, bx,By,bz,b_pis, pis, b_cofins, cofins, icm, ipi, iss, b_icm,b_ipi,b_iss :Double;
     Pag, cabecalho, pagamento,meio, itens: string;
     Xt,  PercentualDesconto,ValorTotalNfce,ValorTotalDescontosNfce: real;
     qrPrevenda,qrPrevendaItem: TFDQuery;

implementation

uses Vendas, ModulodeDados, ConsCondPagamento, Z_RotinasGerais, Principal,
  ModulodeDadosConsultas, ModulodeDadosRelatorios, printPedidos,
  ModulodeDadosConsultas5, duplicata, ContratoVEnda, EmiteEcf,
  Udmcob, DesbloquearCliente, LancCheques, ImpNotafiscal, Libera_Venda,
  lancNotasFiscais, PEDIDO80COL, gerNFE, libera_desconto, ModuleDados1, Z_DeclaracoesBemaFi32,
  RelValeTroco, consvaletroco, UDadosAdm, Utroco,
  uFarmaciaPopular2, ConsClientes, debitos, DMOS1, Nfe, gerNFce,
  DUPLICATA80COL, extenso1, UMesas, Titulos, DepositosBanco;

 var
    sSql : string;
    iEmp :Integer;

    cTotalVenda     : real;
    cDescMaximo     : Real;
    cDescontoVenda  : Real;
    iFormaPagamento : integer;

    iCodigoNF   : integer;
    iNumeroNF   : integer;
    iSerieNF    : integer;
    sSerieNF    : string;
    cTotalprazo : Currency;

{$R *.dfm}

function RemoveChar(Const Texto:String):String;
  //
  // Remove caracteres de uma string deixando apenas numeros
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;

function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve está no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;

{function NaoInsereDBGrid(DBGrid: TDBGrid; DataSet: TDataSet; Key: Word): Word;
begin

   Result:= Key;

   if dgEditing in DBGrid.Options then
      begin
         if (Key = VK_INSERT) or ((Key = VK_DOWN) and (DataSet.RecNo = DataSet.RecordCount)) then
            Result := 0
         else
            if (Key = VK_TAB) and (DataSet.RecNo = DataSet.RecordCount) then
               begin
                  if (DBGrid.SelectedIndex = RetIdxUltimaColVisivel(DBGrid)) then
                     Result := 0
               end;
      end;
end;


function RetIdxUltimaColVisivel(DBGrid: TDBGrid): integer;
var x: integer;
begin
  Result:= -1;

  for x:= DBGrid.Columns.Count-1 downto 0 do
     begin
        if DBGrid.Columns.Items[x].Visible then
           begin
              Result:= x;
              Break;
           end;
     end;
end;   }

function TFormParcelamento.TotalizaFormaPagamento(const sTipo : string) : currency;
begin
   cTotalForma:= 0;

   with CDSFormas do
      begin
         First;
         while not eof do
            begin
               if trim(CdsFormasTIPO.AsString) = trim(sTipo) then
                  cTotalForma:= cTotalForma + CDSFormasVALOR.AsCurrency;
               next;
            end;
      end;
   result:= ExatoCurrency(cTotalForma,2);
end;

function TFormParcelamento.Totalizaprazo : currency;
begin
   cTotalprazo:= 0;

   with ClientDataSet1 do
      begin
         First;
         while not eof do
            begin
               //if trim(CdsFormasTIPO.AsString) = trim(sTipo) then
                  cTotalprazo:= cTotalprazo + ClientDataSet1ValorParcela.AsCurrency;
               next;
            end;
      end;
   result:= ExatoCurrency(cTotalprazo,2);
end;

procedure TFormParcelamento.ImprimeDUPLICATA;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;

begin
    Conf := 'S';

     total    := 0;
     Traco    := '------------------------------------------------';
     // Parametros para o CUPOM FISCAL
    // RDprint1.Impressora := Bobina;
     rdprint1.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 55;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := S20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;


     // DADOS DA EMPRESA
     Razao_emp    := dm.SDS_EmpresaNOME_FANTASIA.AsString;
     Endereco_emp := dm.SDS_EmpresaENDERECO.AsString;
     Numero_emp   := DM.SDS_EmpresaNUMERO.AsString;
     CEP_EMP      := dm.SDS_EmpresaCEP.AsString;
     CID_emp      := dm.SDS_EmpresaCIDADE.AsString;
     ESTADO_emp   := dm.SDS_EmpresaUF.AsString;
     TEL_emp      := dm.SDS_EmpresaTELEFONE.AsString;


     //DADOS DO CLIENTE
     CLI := DMC.CDS_PedidosCODIGO_CLIENTE.Text +' - ' + dmc.CDS_PedidosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_PedidosENDERECO.AsString;
     Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
     CEP_CLI := dmc.CDS_PedidosCEP.AsString;
     CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

     // Cabeçalho do Cupom...
     with rdprint1 do
        begin
        abrir;
         if length( Razao_emp ) > 32 then
           impc(02,25,RAZAO_EMP,[comp17, normal])
        else
           impc(02,25,RAZAO_EMP,[comp17, normal]);
        impc(03,25,ENDERECO_EMP + ',' + NUMERO_EMP ,[comp17, normal]);
        impc(04,25,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[comp17, normal]);
        impc(05,25,'Fone ' + tel_emp,[comp17, normal]);
        imp (07,01,'Nº ' + DMC.CDS_PedidosCODIGO.Text +
                   '   ' + datetimetostr(now) +
                   '    Op.: ' + DMC.CDS_PedidosUSUARIO.Text );

        // Dados do Cliente...
        imp (08,01,traco);
        impf(09,01,CLI,[comp17]);
        impf(10,01, END_CLI + ',' + NUMERO_CLI,[comp17]);
        impf(11,01,CEP_CLI  + ' - ' +
                   CID_CLI + ' - ' +
                   ESTADO_CLI, [comp17]);
        // Titulo dos Itens...
        imp (12,01,traco);
        imp (13,01,'                D U P L I C A T A               ');
        imp (14,01,traco);

        imp (15,01,'Estou  Ciente que  pagarei  a  Quantia  Conforme');
        imp (16,01,'parcelas abaixo em seus respectivos vencimentos:');
         end;            // Imprime itens do pedido...
       linha := 17;

     // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
     with rdprint1 do
        begin
        // Total...

        imp(linha,01,'Formas de pagamento');
        inc   (linha);
        imp(linha,01,'Descricao:       ' + '   Data Vecto ' + '    Valor Parcela');
        inc   (linha);

        DMC.QRY_COND_PAGTO.First;
        while not DMC.QRY_COND_PAGTO.Eof do
            begin
               if DMC.QRY_COND_PAGTOVALOR.AsFloat > 0 then
                  begin
                     imp (linha,01, DMC.QRY_COND_PAGTOTIPO_PAGTO.Text );
                     imp (linha,20, DMC.QRY_COND_PAGTODATA_VENCIMENTO.Text );
                     impval(linha,35,'###,###,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat + DMC.CDS_PedidosVALOR_TROCO.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.QRY_COND_PAGTO.Next;
            end;

        imp (linha,01,traco);
        inc (linha);
        impc(linha,25,'Obrigado pela preferência',[]);
        inc (linha);
        inc (linha);
        impc(linha,25,'VOLTE SEMPRE',[]);
        inc (linha);
        inc (linha);
        inc (linha);
        imp   (linha,01,traco);
        inc   (linha);
        impc(linha,25,'***   ASSINATURA   ***',[]);
        inc (linha);
        inc (linha);
        inc (linha);
        inc (linha);
        // Avança 7 linhas em Branco...
        linha := linha + 7;
        imp (linha,01,' '); // Para forçar impressão da página
        Conf :=  DM.SDS_CONFIGURACOESPREVIEW.text;//dm.LeIni( '\cnfcomercio.ini', 'ConfiguracaoLocal' , 'NAO_FISCAL_TELA');
   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      if  Conf = 'S' then                                                {}
   {}          rdprint1.OpcoesPreview.Preview := true                         {}
   {}       else                                                              {}
   {}          rdprint1.OpcoesPreview.Preview := false;                       {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;

    // Restaura valores normais para imprimir Cupom Não Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 1;
end;

procedure TFormParcelamento.Imprimevenda40;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;


begin
   Conf := 'S';

      total    := 0;
     Traco    := '-----------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 55;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := s20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;

     // DADOS DA EMPRESA
     Razao_emp    := dm.SDS_EmpresaNOME_FANTASIA.AsString;
     Endereco_emp := dm.SDS_EmpresaENDERECO.AsString;
     Numero_emp   := DM.SDS_EmpresaNUMERO.AsString;
     CEP_EMP      := dm.SDS_EmpresaCEP.AsString;
     CID_emp      := dm.SDS_EmpresaCIDADE.AsString;
     ESTADO_emp   := dm.SDS_EmpresaUF.AsString;
     TEL_emp      := dm.SDS_EmpresaTELEFONE.AsString;


     //DADOS DO CLIENTE
     CLI := DMC.CDS_PedidosCODIGO_CLIENTE.Text +' - ' + dmc.CDS_PedidosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_PedidosENDERECO.AsString;
     Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
     CEP_CLI := dmc.CDS_PedidosCEP.AsString;
     CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

     // Cabeçalho do Cupom...
     with rdprint1 do
        begin
        abrir;
        if length( Razao_emp ) > 32 then
           impc(02,25,RAZAO_EMP,[comp17, normal])
        else
           impc(02,25,RAZAO_EMP,[comp17, normal]);
        impc(03,25,ENDERECO_EMP + ',' + NUMERO_EMP ,[comp17, normal]);
        impc(04,25,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[comp17, normal]);
        impc(05,25,'Fone ' + tel_emp,[comp17, normal]);
        imp (07,01,'Nº ' + DMC.CDS_PedidosCODIGO.Text +
                   '   ' + datetimetostr(now) +
                   '    Op.: ' + DMC.CDS_PedidosUSUARIO.Text );

        // Dados do Cliente...
        imp (08,01,traco);
        impf(09,01,CLI,[comp17]);
        impf(10,01, END_CLI + ',' + NUMERO_CLI,[comp17]);
        impf(11,01,CEP_CLI  + ' - ' +
                   CID_CLI + ' - ' +
                   ESTADO_CLI, [comp17]);

        // Titulo dos Itens...
        imp (12,01,traco);
        imp (13,01,'Codigo       Descrição dos produtos');
        imp (14,01,'Qtde       UN         Unitário         Sub-Total');
        imp (15,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 16;
       DMC.SDS_Pedido_Itens.First;
       while not DMC.SDS_Pedido_Itens.eof do
        begin
        with rdprint1 do
           begin
           impf (linha,01 ,DMC.SDS_Pedido_ItensCODIGO_PRODUTO.AsString,[]);
           impf  (linha,14,''+Copy(DMC.SDS_Pedido_ItensDESCRICAO_PRODUTO.AsString, 1, 35),[]);
           inc (linha);
           impval(linha,01,'0.000',DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat,[]);
           impf  (linha,12,DMC.SDS_Pedido_ItensUNIDADE.AsString,  []);
           impval(linha,22,'#,##0.00', DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat,[]);
           impval(linha,40,'##,##0.00', DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat, []);
           inc(linha);
           end;
        DMC.SDS_Pedido_Itens.next;
        end;

     // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
     with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,01,'Total Geral da n_venda');
        impval(linha,35,'###,###,##0.00',DMC.CDS_PedidosVALOR_ITENS.AsFloat,[]);
        // Desconto Global
        inc (linha);
        imp (linha,01,'(-) Desconto Global');
        impval(linha,35,'-##,###,##0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat,[]);
          inc (linha);
        imp (linha,01,'Acrescimos');
        impval(linha,35,'##,###,##0.00',DMC.CDS_PedidosENC_FINANCEIRO.AsFloat,[]);
        // Total Liquido...
        inc (linha);
        imp(linha,01,'VALOR A PAGAR R$');
        impval(linha,35,'###,###,##0.00',DMC.CDS_PedidosVALOR_Total.AsFloat,[]);
        inc   (linha);
        // Formas de pagamento
        imp   (linha,01,traco);
        inc   (linha);
        imp(linha,01,'Formas de pagamento');
        inc   (linha);

        DMC.QRY_COND_PAGTO.First;
        while not DMC.QRY_COND_PAGTO.Eof do
            begin
               if DMC.QRY_COND_PAGTOVALOR.AsFloat > 0 then
                  begin
                     imp (linha,01, DMC.QRY_COND_PAGTOTIPO_PAGTO.Text );
                     impval(linha,35,'###,###,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.QRY_COND_PAGTO.Next;
            end;
         imp (linha,01, 'Troco' );
         impval(linha,35,'###,###,##0.00',DMC.CDS_PedidosVALOR_TROCO.AsFloat,[]);
         inc   (linha);
        // Final...

        imp (linha,01,traco);
        inc (linha);
        impc(linha,25,'*** Obrigado pela preferência ***',[]);
        inc (linha);
        inc (linha);
        impc(linha,25,'*** VOLTE SEMPRE ***',[]);
        inc (linha);
        inc (linha);
        impc(linha,25,'***  SEM VALOR FISCAL  ***',[]);
        inc (linha);
        inc (linha);
        inc (linha);
        inc (linha);
        imp   (linha,01,traco);
        inc   (linha);
        impc(linha,25,'***   ASSINATURA   ***',[]);
        inc (linha);
        inc (linha);
        inc (linha);
        inc (linha);
        // Avança 7 linhas em Branco...
        linha := linha + 7;
        imp (linha,01,' '); // Para forçar impressão da página
        Conf :=  DM.SDS_CONFIGURACOESPREVIEW.text;//dm.LeIni( '\cnfcomercio.ini', 'ConfiguracaoLocal' , 'NAO_FISCAL_TELA');
   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      if  Conf = 'S' then                                                {}
   {}          rdprint1.OpcoesPreview.Preview := true                         {}
   {}       else                                                              {}
   {}          rdprint1.OpcoesPreview.Preview := false;                       {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;

    // Restaura valores normais para imprimir Cupom Não Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 1;

end;


procedure TFormParcelamento.Imprimevenda;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;
begin
      total    := 0;
     Traco    := '----------------------------------------------------------------------------------------------------------------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 44;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 160;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := s20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;
     RDprint1.Margens.Top:=1;
     RDprint1.Margens.Bottom:=3;

     // DADOS DA EMPRESA
     Razao_emp    := dm.SDS_EmpresaNOME_FANTASIA.AsString;
     Endereco_emp := dm.SDS_EmpresaENDERECO.AsString;
     Numero_emp   := DM.SDS_EmpresaNUMERO.AsString;
     CEP_EMP      := dm.SDS_EmpresaCEP.AsString;
     CID_emp      := dm.SDS_EmpresaCIDADE.AsString;
     ESTADO_emp   := dm.SDS_EmpresaUF.AsString;
     TEL_emp      := dm.SDS_EmpresaTELEFONE.AsString;


     //DADOS DO CLIENTE
     CLI := 'Cód: '+ dmc.CDS_PedidosCODIGO_CLIENTE.Text + '  Nome: '+ dmc.CDS_PedidosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_PedidosENDERECO.AsString;
     Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
     CEP_CLI := dmc.CDS_PedidosCEP.AsString;
     CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

     // Cabeçalho do Cupom...
     with rdprint1 do
        begin
        abrir;
        if length( Razao_emp ) > 32 then
           impc(02,70,RAZAO_EMP,[comp17, Negrito])
        else
           impc(02,70,RAZAO_EMP,[comp12, Negrito]);
        impc(03,70,ENDERECO_EMP + ',' + NUMERO_EMP ,[Comp12]);
        impc(04,70,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[Comp12]);
        impc(05,70,'Fone :' + tel_emp,[Comp12]);
       // inc   (linha);
        imp (06,01,traco);
       // inc   (linha);
        impc(07,70,'COMPROVANTE DE n_venda',[comp17, Negrito]);
        //inc   (linha);
        imp (08,01,traco);
        //inc   (linha);
        impf (09,01,'Nº n_venda :' + dmc.CDS_PedidosCODIGO.Text +
                   '       Data: ' + dmc.CDS_PedidosDATA_PEDIDO.AsString + '    Hora: '+DMC.CDS_PedidosHORA.Text+
                   '         Vendedor.: ' + DMC.CDS_PedidosUSUARIO.Text, [comp12, Negrito]);

        // Dados do Cliente...
        imp (10,01,traco);
        imp(11,01,CLI);
        imp(11,75,'Apel./Fant.: '+ dmc.SDS_ClienteAPELIDO.text);
        imp(12,01, 'End.:' +END_CLI + ',' + 'Nº: ' +NUMERO_CLI);
        imp(12,75,'Cep: '+CEP_CLI  + ' - ' +
                   'Cidade: ' + CID_CLI + ' - ' +
                   'UF: '+ ESTADO_CLI);
        imp(13,01,'CPF/CNPj: '+ dmc.CDS_PedidosCPF_CNPJ.text);
        imp(13,75,'Rg/IE: '+ dmc.CDS_PedidosRG_IE.text + ' Fone :' + dmc.CDS_PedidosFONE.text);
         // Titulo dos Itens...
        imp (14,01,traco);
        imp (15,01,'Codigo          Descrição dos Produtos                          Marca         Qte        UN        Unitário            Descontos           Sub-Total');
        imp (16,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 17;
       DMC.SDS_Pedido_Itens.First;
       while not DMC.SDS_Pedido_Itens.eof do
        begin
        with rdprint1 do
           begin
            if dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '3' then
           impf  (linha,01,DMC.SDS_Pedido_Itensreferencia.AsString,  [])
           else
           impf  (linha,01,DMC.SDS_Pedido_ItensCODIGO_PRODUTO.AsString,  []);
           impf  (linha,17,DMC.SDS_Pedido_ItensDESCRICAO_PRODUTO.AsString,[]);
           impf  (linha,65,DMC.SDS_Pedido_ItensNOME_MARCA.AsString,  []);
           impval(linha,75,'#,##0.000',DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat,[]);
           impf  (linha,90,DMC.SDS_Pedido_ItensUNIDADE.AsString,  []);
           impval(linha,100,'#,##0.00', DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat,[]);
          // subtotal := itensCALC_TOTAL.Value;
          // total    := total + subtotal;
           impval(linha,120,'##,##0.00', DMC.SDS_Pedido_ItensDESCONTO.AsFloat, []);
           impval(linha,140,'##,##0.00', DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat, []);
           inc(linha);
           end;
        DMC.SDS_Pedido_Itens.next;
        end;

        // SOMA QUANTIDADE
        DMC.SDS_Pedido_Itens.First;
        D:= D + DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat;
        DMC.SDS_Pedido_Itens.Next;
        // RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        While not DMC.SDS_Pedido_Itens.Eof do
        begin

        D:= D + DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat;
        DMC.SDS_Pedido_Itens.Next;
        //RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        end;

        // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
        with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,90,'Total Geral da n_venda R$');
        impval(linha,135,'###,###,##0.00',DMC.CDS_PedidosVALOR_ITENS.AsFloat,[]);

        // Desconto Global
        inc (linha);
        imp   (linha,35,'Qtde de Itens da n_venda R$');
        impval(linha,69,'###,###,##0.000',D,[]);
        imp (linha,90,'(-) Desconto Global');
        impval(linha,135,'-##,###,##0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat,[]);
        inc (linha);
        imp (linha,90,'Acréscimos/Financeiro:');
        impval(linha,135,'##,###,##0.00',DMC.CDS_PedidosENC_FINANCEIRO.AsFloat,[]);
        // Total Liquido...

        inc (linha);
        imp(linha,90,'Valor Liquido da n_venda R$');
        impval(linha,135,'###,###,##0.00',DMC.CDS_PedidosVALOR_Total.AsFloat,[]);
        inc   (linha);
        // Formas de pagamento
        imp   (linha,01,traco);
        inc   (linha);
        imp(linha,01,'Formas de pagamento     Parcela          Vencimento         Valor Parcela');
        inc   (linha);
        imp   (linha,01,traco);
        inc   (linha);

        DMC.QRY_COND_PAGTO.First;
        while not DMC.QRY_COND_PAGTO.Eof do
            begin
               if DMC.QRY_COND_PAGTOVALOR.AsFloat >= 0 then
                  begin
                     imp (linha,01, DMC.QRY_COND_PAGTOTIPO_PAGTO.Text );
                     imp (linha,28, DMC.QRY_COND_PAGTOPARCELA.Text );
                     imp (linha,42, DMC.QRY_COND_PAGTODATA_VENCIMENTO.Text );
                     impval(linha,60,'###,###,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.QRY_COND_PAGTO.Next;
            end;
         imp (linha,01, 'Troco' );
         impval(linha,60,'###,###,##0.00',DMC.CDS_PedidosVALOR_TROCO.AsFloat,[]);
         inc   (linha);
        // Final...

        imp (linha,01,'-------------------------------------------------------------------------');
        inc (linha);
        impc(linha,01,'Obs : ' + DMC.CDS_PedidosOBSERVACOES.Text,[comp12]);
        inc (linha);
        inc (linha);
        imp   (linha,105,'_________________________________');
        inc   (linha);
        impc(linha,122,'***  ASSINATURA  ***',[]);

        // Avança 7 linhas em Branco...
        linha := linha+ 2; //linha + 7;
        imp (linha,01,' '); // Para forçar impressão da página
        Conf :=  DM.SDS_CONFIGURACOESPREVIEW.text;//dm.LeIni( '\cnfcomercio.ini', 'ConfiguracaoLocal' , 'NAO_FISCAL_TELA');
   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      if  Conf = 'S' then                                                {}
   {}          rdprint1.OpcoesPreview.Preview := true                         {}
   {}       else                                                              {}
   {}          rdprint1.OpcoesPreview.Preview := false;                       {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;

    // Restaura valores normais para imprimir Cupom Não Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 44;
end;

procedure TFormParcelamento.Imprimevenda60;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;

begin
   total    := 0;
     Traco    := '---------------------------------------------------------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 44;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 95;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := s20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;
     RDprint1.Margens.Top:=1;
     RDprint1.Margens.Bottom:=3;

     // DADOS DA EMPRESA
     Razao_emp    := dm.SDS_EmpresaNOME_FANTASIA.AsString;
     Endereco_emp := dm.SDS_EmpresaENDERECO.AsString;
     Numero_emp   := DM.SDS_EmpresaNUMERO.AsString;
     CEP_EMP      := dm.SDS_EmpresaCEP.AsString;
     CID_emp      := dm.SDS_EmpresaCIDADE.AsString;
     ESTADO_emp   := dm.SDS_EmpresaUF.AsString;
     TEL_emp      := dm.SDS_EmpresaTELEFONE.AsString;


     //DADOS DO CLIENTE
     CLI := 'Cód: '+ dmc.CDS_PedidosCODIGO_CLIENTE.Text + '  Nome: '+ dmc.CDS_PedidosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_PedidosENDERECO.AsString;
     Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
     CEP_CLI := dmc.CDS_PedidosCEP.AsString;
     CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

     // Cabeçalho do Cupom...
     with rdprint1 do
        begin
        abrir;
        if length( Razao_emp ) > 32 then
           impc(02,50,RAZAO_EMP,[comp12, Negrito])
        else
           impc(02,50,RAZAO_EMP,[comp12, Negrito]);
        impc(03,50,ENDERECO_EMP + ',' + NUMERO_EMP ,[Comp12]);
        impc(04,50,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[Comp12]);
        impc(05,50,'Fone :' + tel_emp,[Comp12]);
       // inc   (linha);
        imp (06,01,traco);
       // inc   (linha);
       // impc(07,50,'COMPROVANTE DE n_venda',[comp17, Negrito]);
        //inc   (linha);
      //  imp (08,01,traco);
        //inc   (linha);
        imp (07,01,'Nº n_venda :' + dmc.CDS_PedidosCODIGO.Text +
                   '       Data: ' + dmc.CDS_PedidosDATA_PEDIDO.AsString + '    Hora: '+DMC.CDS_PedidosHORA.Text+
                   '         Vendedor.: ' + DMC.CDS_PedidosUSUARIO.Text );

        // Dados do Cliente...
        imp (08,01,traco);
        imp (09,01,CLI);
        imp(09,65,'Apel./Fant.: '+ dmc.SDS_ClienteAPELIDO.text);
        imp(10,01,'End.:' +END_CLI + ',' + 'Nº: ' +NUMERO_CLI);
        imp(11,01,'Cep: '+CEP_CLI  + '-' +
                   'Cid: ' + CID_CLI + '-' +
                   'UF: '+ ESTADO_CLI);
        imp(10,65,'CPF/CNPj: '+ dmc.CDS_PedidosCPF_CNPJ.text);
        imp(11,65,'Rg/IE: '+ dmc.CDS_PedidosRG_IE.text);
        // Titulo dos Itens...
        imp (12,01,traco);
        imp (13,01,'Codigo        Descrição dos Produtos     Marca   Qte   UN    Unitário  Descontos   Sub-Total');
        imp (14,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 15;
       DMC.SDS_Pedido_Itens.First;
       while not DMC.SDS_Pedido_Itens.eof do
        begin
        with rdprint1 do
           begin
           impf  (linha,01,DMC.SDS_Pedido_ItensCODIGO_PRODUTO.AsString,  []);
           impf  (linha,15,DMC.SDS_Pedido_ItensDESCRICAO_PRODUTO.AsString,[]);
           impf  (linha,40,DMC.SDS_Pedido_ItensNOME_MARCA.AsString,  []);
           impval(linha,46,'#,##0.000',DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat,[]);
           impf  (linha,56,DMC.SDS_Pedido_ItensUNIDADE.AsString,  []);
           impval(linha,62,'#,##0.00', DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat,[]);
          // subtotal := itensCALC_TOTAL.Value;
          // total    := total + subtotal;
           impval(linha,72,'##,##0.00', DMC.SDS_Pedido_ItensDESCONTO.AsFloat, []);
           impval(linha,84,'##,##0.00', DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat, []);
           inc(linha);
           end;
        DMC.SDS_Pedido_Itens.next;
        end;

        // SOMA QUANTIDADE
        DMC.SDS_Pedido_Itens.First;
        D:= D + DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat;
        DMC.SDS_Pedido_Itens.Next;
        // RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        While not DMC.SDS_Pedido_Itens.Eof do
        begin

        D:= D + DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat;
        DMC.SDS_Pedido_Itens.Next;
        //RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        end;

        // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
        with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,50,'Total Geral da n_venda R$');
        impval(linha,84,'##,##0.00',DMC.CDS_PedidosVALOR_ITENS.AsFloat,[]);

        // Desconto Global
        inc (linha);
        imp   (linha,1,'Qtde de Itens da n_venda:');
        impval(linha,26,'###,###,##0.000',D,[]);
        imp (linha,50,'(-) Desconto Global');
        ImpVal(linha,84,'##,##0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat,[]);
        inc (linha);
     //   imp (linha,50,'Acréscimos/Financeiro:');
     //   impval(linha,84,'##,##0.00',DMC.CDS_PedidosENC_FINANCEIRO.AsFloat,[]);
        // Total Liquido...

      //  inc (linha);
        imp(linha,50,'Valor Liquido da n_venda R$');
        impval(linha,84,'##,##0.00',DMC.CDS_PedidosVALOR_Total.AsFloat,[]);
        inc   (linha);
        // Formas de pagamento
        imp   (linha,01,traco);
        inc   (linha);
        imp(linha,01,'Formas de pagamento       Parcela                   Vencimento                Valor Parcela');
        inc   (linha);
        imp   (linha,01,traco);
        inc   (linha);

        DMC.QRY_COND_PAGTO.First;
        while not DMC.QRY_COND_PAGTO.Eof do
            begin
               if DMC.QRY_COND_PAGTOVALOR.AsFloat > 0 then
                  begin
                     imp (linha,01, DMC.QRY_COND_PAGTOTIPO_PAGTO.Text );
                     imp (linha,28, DMC.QRY_COND_PAGTOPARCELA.Text );
                     imp (linha,52, DMC.QRY_COND_PAGTODATA_VENCIMENTO.Text );
                     impval(linha,84,'##,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.QRY_COND_PAGTO.Next;
            end;
         imp (linha,01, 'Troco' );
         impval(linha,84,'##,##0.00',DMC.CDS_PedidosVALOR_TROCO.AsFloat,[]);
         inc   (linha);
        // Final...

        imp (linha,01,'-------------------------------------------------------------------------');
        inc (linha);
        impc(linha,01,'Obs : ' + DMC.CDS_PedidosOBSERVACOES.Text,[comp12]);
        inc (linha);
        inc (linha);
        imp   (linha,55,'_________________________________');
        inc   (linha);
        impc(linha,72,'***  ASSINATURA  ***',[]);

        // Avança 7 linhas em Branco...
        linha := linha+ 2; //linha + 7;
        imp (linha,01,' '); // Para forçar impressão da página
        Conf :=  DM.SDS_CONFIGURACOESPREVIEW.text;//dm.LeIni( '\cnfcomercio.ini', 'ConfiguracaoLocal' , 'NAO_FISCAL_TELA');
   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      if  Conf = 'S' then                                                {}
   {}          rdprint1.OpcoesPreview.Preview := true                         {}
   {}       else                                                              {}
   {}          rdprint1.OpcoesPreview.Preview := false;                       {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;

    // Restaura valores normais para imprimir Cupom Não Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 44;

end;

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar últimos caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            'á','Á' : Texto[i] := 'A';
            'é','É' : Texto[i] := 'E';
            'í','Í' : Texto[i] := 'I';
            'ó','Ó' : Texto[i] := 'O';
            'ú','Ú' : Texto[i] := 'U';
            'à','À' : Texto[i] := 'A';
            'è','È' : Texto[i] := 'E';
            'ì','Ì' : Texto[i] := 'I';
            'ò','Ò' : Texto[i] := 'O';
            'ù','Ù' : Texto[i] := 'U';
            'â','Â' : Texto[i] := 'A';
            'ê','Ê' : Texto[i] := 'E';
            'î','Î' : Texto[i] := 'I';
            'ô','Ô' : Texto[i] := 'O';
            'û','Û' : Texto[i] := 'U';
            'ä','Ä' : Texto[i] := 'A';
            'ë','Ë' : Texto[i] := 'E';
            'ï','Ï' : Texto[i] := 'I';
            'ö','Ö' : Texto[i] := 'O';
            'ü','Ü' : Texto[i] := 'U';
            'ç','Ç' : Texto[i] := 'C';
            'ñ','Ñ' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);


end;

procedure TFormParcelamento.LerINIecf;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     cbxModelo.ItemIndex := INI.ReadInteger('ECF','Modelo',cbxModelo.ItemIndex);
     cbxModeloChange(nil);
     ACBrECF1.porta  := INI.ReadString('ECF','Porta',ACBrECF1.Porta);
    { seTimeOut.Value := INI.ReadInteger('ECF','TimeOut',seTimeOut.Value);
     seIntervaloAposComando.Value := INI.ReadInteger('ECF','IntervaloAposComando',seIntervaloAposComando.Value);
     chTentar.Checked := INI.ReadBool('ECF','TentarNovamente',chTentar.Checked);
     chBloqueia.Checked := INI.ReadBool('ECF','BloqueiaMouseTeclado',chBloqueia.Checked);
     chExibeMsg.Checked := INI.ReadBool('ECF','ExibeMsgAguarde',chExibeMsg.Checked);
     chArredondaPorQtd.Checked := INI.ReadBool('ECF','ArredondaPorQtd',chArredondaPorQtd.Checked);
     chDescricaoGrande.Checked := INI.ReadBool('ECF','DescricaoGrande',chDescricaoGrande.Checked);
     chGavetaSinalInvertido.Checked := INI.ReadBool('ECF','GavetaSinalInvertido',chGavetaSinalInvertido.Checked);
     mMsg.Text := StringReplace(INI.ReadString('ECF','MensagemAguarde',mMsg.Text),'|',sLineBreak,[rfReplaceAll]);
     edLog.Text := INI.ReadString('ECF','ArqLog',edLog.Text); }
     ACBrECF1.Device.ParamsString := INI.ReadString('ECF','SerialParams','');
    // edOperador.Text := INI.ReadString('ECF','Operador','');

  finally
     INI.Free ;
  end ;
end;

procedure TFormParcelamento.CarregaFPG;
Var A : Integer ;
begin
  mFormas.Clear ;
 // with FormECF do
  begin
     { Bematech e NaoFiscal permitem cadastrar formas de Pagamento dinamicamente }
     if (ACBrECF1.Modelo in [ecfBematech,ecfNaoFiscal])then
        ACBrECF1.CarregaFormasPagamento
     else
        ACBrECF1.AchaFPGIndice('') ;  { força carregar, se ainda nao o fez }

     for A := 0 to ACBrECF1.FormasPagamento.Count -1 do
     begin
        {mFormas.Lines.Add( ACBrECF1.FormasPagamento[A].Indice+' -> '+
              ACBrECF1.FormasPagamento[A].Descricao+' - '+IfThen(
              ACBrECF1.FormasPagamento[A].PermiteVinculado,'v',''));}
     end ;
  end ;
  end;



function TFormParcelamento.Converte(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if (Ord(cmd[A]) < 32) or (Ord(cmd[A]) > 127) then
        Result := Result + '#' + IntToStr(ord( cmd[A] ))
     else
        Result := Result + cmd[A] ;
  end ;
end;


//IMPLEMENTAÇÃO DA PROCEDURE MOSTRAERROS
procedure TFormParcelamento.MostraErros(Sender: Tobject;
  E: Exception);
var
msg : string;
I, X: integer;
begin          //Verifica se o erro apresentado ocorre na base de dados
  If E is EdatabaseError then
  begin        //For para varrer o tamanho da mensagem
      for I := 1 To Length(e.Message) Do
          begin    //if para verificar o fim da mensagem definido pelo caracter '|'
            if (e.Message[I] = '|') then       //gravando posição do caracter indicativo
                  X := I;
          END;
              msg := copy(e.Message, 0, 1);
              //APRESENTANDO A MENSAGEM AO USUARIO
       MessageBox(Application.Handle, PChar(Msg), 'Erro', MB_OK + MB_ICONERROR);
   end

   //APRESENTANDO ERRO SEM FORMATÇÃO SE NÃO FOR ERRO DA BASE DE DADOS
   ELSE
   MessageBox(Application.Handle, PChar(e.Message), 'Erro', MB_OK + MB_ICONERROR);
 end;


procedure TFormParcelamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 {   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
      dm1.QConsValeTroco.SQL.Clear;
      dm1.QConsValeTroco.SQL.Text := sSql;
      dm1.QConsValeTroco.Close;    }

      CDS_PAGTO.Close;

      Action:=CaFree;
      FormParcelamento:=nil;
end;

procedure TFormParcelamento.FormCreate(Sender: TObject);
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

  if FileExists('C:\StartNet_Sistemas\PARCELADO.xml') then
  begin
     DeleteFile('C:\StartNet_Sistemas\PARCELADO.xml');
  end;

  if FileExists('C:\StartNet_Sistemas\CHEQ.xml') then
  begin
     DeleteFile('C:\StartNet_Sistemas\CHEQ.xml');
  end;

  with clientDataset1 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'PARCELADO.xml';
  if not FileExists(filename) then
  createdataset;
  clientDataset1.IndexFieldNames:= 'DataVencimento';
  open;
  end;

  with cds_cheques do
  Begin
    Filename:=ExtractFilepath(paramstr(0))+'CHEQ.xml';
  if not FileExists(filename) then
  createdataset;
  cds_cheques.IndexFieldNames:= 'PARC';
  open;
  end;

end;

procedure TFormParcelamento.FormShow(Sender: TObject);
 Var
tn_venda: Real;
 Z :Integer;
 TP : string;
//Parcela:Integer;
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);

  formvendas.Sds_Pedidos.Edit;

 DM.SDS_CONFIGURACOES.Active := False;
 DM.SDS_CONFIGURACOES.Active:= True;

 {
  IF DM.SDS_CONFIGURACOESTP_DESCONTO.Text ='P' then
  begin
  RbPercentual.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESTP_DESCONTO.Text ='R' then
  begin
  RbValor.Checked := True;
  end;

 // formn_vendas.Sds_Pedidos.Active :=false;
 //formn_vendas.Sds_Pedidos.Active :=true;
 DM.SDS_CondPagamento.Active:= False;
 DM.SDS_CondPagamento.Active:= True;


CurrencyEdit1.Text:= FloatToStr(formn_vendas.Edit62.Value);
CurrencyEdit3.Text:= FloatToStr(formn_vendas.Edit62.Value);
Tn_venda:=CurrencyEdit1.value;
//Parcela:= DM.SDS_CondPagamentoNUMERO_PAR.AsInteger;
//VP:= (Total/Parcela);
//CurrencyEdit4.SetFocus;
 ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
// ClientDataset1.Delete; DBComboPgto.Text := '1';
 DB_CODIGO.Clear;
 db_nome.Clear;
//M.SDS_Clientes.Open;}

{ If DM.SDS_Clientes.locate('CODIGO',formn_vendas.DBComboCliente.Text,[])=True then
 begin
 DB_CODIGO.Text := DM.SDS_ClientesCODIGO.AsString;
 db_nome.Text   :=DM.SDS_ClientesNOME_RS.AsString;
 end;  }




  { if formn_vendas.DBComboCliente.Text > '1'then
   begin
   DBComboPgto.Text := DM.SDS_CONFIGURACOESCOD_PAGTO_PADRAO.TEXT;
   if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[])= True then
   begin
   Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
    DBComboPgto.SetFocus;
   // DBComboPgtoExit(Sender);

end;
end;}
 suiButton1.Default:= False;
 suiButton2.Default:= False;

 sSql := dm1.QConsValeTroco.SQL.Text;
 iEmp := dm.sds_empresacodigo.asinteger;

 DBComboCliente.Text  :=    formvendas.DBComboCliente.Text;
 Desc_cond_pagto.Text :=    formvendas.Desc_cond_pagto.Text;

 DBComboClienteChange(SENDER);
 //DBComboClienteExit(SENDER);
cDescontovenda :=0;
cTotalvenda :=0;

 // nova tela parcelamentos
 EdtSubTotal.Text:= FloatToStr(formvendas.Edit60.Value);
 EdtValorDesconto.Text := FloatToStr(formvendas.E_desconto.Value);
  cDescontovenda:= strtocurr(EdtValorDesconto.Text);
   if cDescontovenda >= 0 then
   begin
        EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontovenda);
       //  FormasComDesconto;
        cTotalvenda:= EdtTotalLiquido.Value;
        EdtTotalLiquido.Value := cTotalvenda;
        EdtTotalGeral.Value := EdtTotalLiquido.Value;
        EdtPercentualDesconto.Value := EdtValorDesconto.Value * 100 / EdtSubTotal.Value;
   end;

 EdtTotalLiquido.Text:= FloatToStr(formvendas.Edit62.Value);
 cTotalvenda := formvendas.Edit62.Value;

  qFormas.Close;
  qFormas.Open;

   cdsformas.Close;
   CDSFormas.CreateDataSet;
   CDSFormas.IndexFieldNames:= 'codigo';
   CDSFormas.Open;

   qFormas.First;
   TP:='S';
   qFormas.Filtered := False;
   qFormas.Filter := 'MOSTRA_venda ='+QuotedStr(TP);
   qFormas.Filtered := True;
   Contador := 0;
   Contador:=qFormas.RecordCount;
   Z:=0;
   For Z:= 1 to Contador do
   begin
   CDSFormas.insert;
   CDSFormasCODIGO.Text    := qFormasCOD_FORMA.Text;
   CDSFormasDESCRICAO.Text := qFormasDESCRICAO.Text;
   CDSFormasTIPO.Text      := qFormasTIPO_PAGTO.Text;
   CDSFormasVALOR.Value    := 0;
   CDSFormas.Post;
   qFormas.Next;
   end;


  IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
  BEGIN

  EdtPercentualDesconto.Enabled := True;
  EdtValorDesconto.Enabled := True;
  EdtPercentualDesconto.SetFocus;
  END;
  
  IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
  BEGIN
  EdtPercentualDesconto.Enabled := FALSE;
  EdtValorDesconto.Enabled := False;
  if strtocurr(EdtPercentualDesconto.Text) < 0 then
      begin
         showmessage('Valor do Desconto não pode ser negativo');
         EdtPercentualDesconto.SetFocus;
         exit;
         abort;
      end;
   if strtocurr(EdtPercentualDesconto.Text) > 0 then
      begin
        cDescontovenda        := strtocurr(currtostrf((strtocurr(EdtSubTotal.Text) * strtocurr(EdtPercentualDesconto.text)) / 100, ffFixed, 2));
         EdtValorDesconto.Text := currtostr(cDescontovenda);
         if cDescontovenda > 0 then
            begin
               EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontovenda);
              // FormasComDesconto;
               cTotalvenda:= EdtTotalLiquido.Value;
            end;
         EdtTroco.Text := '0';
         EdtTotalLiquido.Value := cTotalvenda;
         EdtTotalGeral.Value := EdtTotalLiquido.Value;


   end
   else
      begin
         EdtValorDesconto.Clear;
         cDescontovenda:= 0;
         //FormasPagamento;
         EdtTotalLiquido.Value := EdtSubTotal.Value;
         EdtTotalGeral.Value := EdtTotalLiquido.Value;

      end;

  DBGridFormas.SetFocus;
  END;
end;


procedure TFormParcelamento.CurrencyEdit4Enter(Sender: TObject);
begin
//CurrencyEdit7.Clear;
corentrada(sender);
//KeyPreview := False;
end;

procedure TFormParcelamento.DBComboPgtoEnter(Sender: TObject);
begin
// formvendas.Sds_Pedidos.Edit;
 CorEntrada(sender);
end;

procedure TFormParcelamento.suiButton3Click(Sender: TObject);
Var
DT: TDateTime;
Days: Extended;
Y: Byte;
tp : string;
begin
Try
DBGrid1.Enabled:= TRUE;
Days:= CDS_PAGTOVARIACAO_DIAS.AsInteger;
DT:= (formvendas.dt_venda.Date + CDS_PAGTOPIMEIRA_PAR.AsInteger) - Days;
Libera_Insert := True;
//DBGrid1.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
Y:=0;
for Y := 1 to StrToInt(CDS_PAGTONUMERO_PAR.Text) do
begin
if ClientDataSet1.RecordCount < Y then
ClientDataSet1.Insert
else
     ClientDataSet1.Edit;
     DT:= DT + Days;
     ClientDataset1.FieldByname('CodigoCliente').AsInteger:= formvendas.Sds_pedidosCODIGO_CLIENTE.AsInteger;
     ClientDataset1.FieldByname('CodigoCompra').AsInteger:= STrToInt(formvendas.N_venda.Text);
     ClientDataset1.FieldByname('Vendedor').AsString:=FormPrincipal.UserLogado;
     ClientDataset1.FieldByname('Historico').AsString:= 'Crediário Referente a n_venda Nº '+' '+ formvendas.N_venda.Text+' - '+ Desc_cond_pagto.Text;
     ClientDataset1.FieldByname('DataCompra').AsDateTime:= formvendas.dt_venda.Date;
     ClientDataset1.FieldByname('ValorParcela').Value:= VP;
     ClientDataset1.FieldByname('Parcela').AsString:=(IntToStr(Y)+'/'+DBEdit3.Text);
     ClientDataset1.FieldByname('DataVencimento').Value:= DT;
     ClientDataSet1.FieldByName('Comissao').Value := VR;
     ClientDataSet1.Post;
     ClientDataSet1.Next;
     ClientDataSet1.Last;
     end;
     Libera_Insert := False;
     ClientDataSet1.First;
     //suiButton3.Enabled:= False;
     suiButton2.Enabled:= True;
    // suiButton2.SetFocus;

     xdbgrid1.SetFocus;

if TotalizaFormaPagamento('C') > 0 then
begin
TP :='C';
if cDSFormas.Locate('TIPO',TP,[]) = True then;
begin
//CDSFormas.Edit;
total := CDSFormasVALOR.AsFloat + Encargos;
//CDSFormas.Next;
//CDSFormas.Prior;
end;
end ELSE
if TotalizaFormaPagamento('H') > 0 then
begin
TP :='H';
if cDSFormas.Locate('TIPO',TP,[]) = True then;
begin
//CDSFormas.Edit;
total := CDSFormasVALOR.AsFloat + Encargos;
//CDSFormas.Next;
//CDSFormas.Prior;
end;
end ELSE
 if TotalizaFormaPagamento('F') > 0 then
begin
TP :='F';
if cDSFormas.Locate('TIPO',TP,[]) = True then;
begin
//CDSFormas.Edit;
total := CDSFormasVALOR.AsFloat + Encargos;
//CDSFormas.Next;
//CDSFormas.Prior;
end;
end;

          CurrencyEdit2.Value  := total;

         // ACHA RESTO DA DIVISÃO
          ClientDataSet1.First;
          Total1 := 0.00;
          X:= 0;
          X:= X +  ExatoCurrency(ClientDataSet1ValorParcela.AsCurrency,2);
          ClientDataSet1.Next;
          TOTAL1 := X;
          While not ClientDataSet1.Eof do
          begin
          X:= X + ExatoCurrency(ClientDataSet1ValorParcela.AsCurrency,2);
          ClientDataSet1.Next;
          Total1:= X;
          end;
          ClientDataSet1.First;
         // ClientDataSet1.last;

          total_venda := (TOTAL - Total1);

          // CurrencyEdit9.Value := total_venda;

          IF TOTAL1 > Total then
          begin
           ClientDataSet1.Edit;
           ClientDataSet1ValorParcela.AsFloat := ExatoCurrency(ClientDataSet1ValorParcela.AsCurrency,2) - total_venda;
           ClientDataSet1.Post;
          end ELSE

          IF TOTAL1 < TOTAL then
          begin
           ClientDataSet1.Edit;
           ClientDataSet1ValorParcela.AsFloat := ExatoCurrency(ClientDataSet1ValorParcela.AsCurrency,2) + total_venda;
           ClientDataSet1.Post;
          end;  

except
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Erro ao Gerar as parcelas do Crediario!';
    FormPrincipal.MsgInformacao.Execute;
       // Close;
end;
end;

procedure TFormParcelamento.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
ClientDataSet1.First;
A:= 0;
A:= A + ClientDataSet1ValorParcela.AsFloat;
ClientDataSet1.Next;
CurrencyEdit2.Text:= FloatToStr(A);
While not ClientDataSet1.Eof do
begin
A:= A + ClientDataSet1ValorParcela.AsFloat;
ClientDataSet1.Next;
CurrencyEdit2.Text:= FloatToStr(A);
end;
ClientDataSet1.First;
end;

procedure TFormParcelamento.suiButton1Click(Sender: TObject);
begin
{//formvendas.cancelar.Enabled := True;
formvendas.confirmar.Enabled := True;
formvendas.alterar.enabled := False;
formvendas.excluir.Enabled := False; }

  formvendas.Edit60.Visible := true;
  formvendas.E_desconto.Visible := true;
  formvendas.Edit62.Visible := true;
  formvendas.GroupBox1.Enabled:= True;
  formvendas.GroupBox2.Enabled:= true;
//  formvendas.GroupBox3.Enabled:= true;


      formvendas.Sds_pedidos_itens.last;
      IF formvendas.sds_pedidos_itens.RecordCount > 0 then
      begin
      formvendas.NValor:=1;
      formvendas.NItem:=formvendas.NItem+formvendas.NValor;
      formvendas.Sds_pedidos_itens.Insert;
      formvendas.Sds_pedidos_itensCODIGO.AsInteger:=(formvendas.NItem);
      formvendas.Sds_pedidos_itensITEN.AsInteger :=(formvendas.NItem);
      formvendas.Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      formvendas.Sds_pedidos_itensCODIGO_ID.Text := formvendas.N_venda.Text;
      formvendas.Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      formvendas.Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      formvendas.Sds_pedidos_itensDESCONTO.Text := '0,00';
      formvendas.Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      formvendas.Sds_pedidos_itensFRACAO.Text := '1';
       formvendas.Sds_pedidos_itens.last;
      end;

formvendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
formvendas.Sds_Pedidos_itens.Edit;
formvendas.ComboEdit1.Visible := True;
formvendas.ComboEdit1.SetFocus;
concluiu := False;
Close;
end;


procedure TFormParcelamento.suiButton2Click(Sender: TObject);
var
  I, e, Contador : INTEGER;
  //vPostoRegistro: TPostoRegistro;
begin


     // PRE - vend
   TRY
       if formvendas.CheckBox5.Checked = True then
       begin
               formvendas.Sds_Pedidos.Edit;

              if formvendas.E_desconto.Text ='' then
              begin
              formvendas.Sds_PedidosVALOR_DESCONTO.Text := '0,00';
              end else
              formvendas.Sds_PedidosVALOR_DESCONTO.TEXT       := formvendas.E_DESCONTO.Text;
              begin
              formvendas.Sds_PedidosVALOR_ITENS.AsFloat       := EdtSubTotal.value;
              formvendas.Sds_PedidosVALOR_TOTAL.AsFloat       := EdtTotalGeral.value;
              formvendas.Sds_PedidosCod_EMPRESA.asfloat       := iEmp;
              formvendas.Sds_PedidosSITUACAO.Text             := 'N';
              formvendas.Sds_PedidosVALOR_AVISTA.AsFloat      := AVISTA;
              formvendas.Sds_PedidosVALOR_PRAZO.AsFloat       :=  CurrencyEdit2.value;
              formvendas.Sds_pedidosVALOR_PAGO.ASFLOAT        := AVISTA;
              formvendas.Sds_pedidosVALOR_TROCO.AsFloat       := EdtTroco.Value;
              formvendas.Sds_PedidosSERIE_NOTA.Text           := '001';
              formvendas.Sds_PedidosHORA.text                 := TimeToStr(Time);
              end;

              IF DM.SDS_CONFIGURACOESREGISTRADORA.Text ='S' THEN
              BEGIN
              formvendas.Sds_PedidosSTATUS.Text            := 'C';
              formvendas.Sds_Pedidos.Edit;
              formvendas.Sds_PedidosTP.Value := CDS_PAGTOTIPO_PAGAMENTO.AsString;
              formvendas.Sds_PedidosValor_total.asCurrency  := EdtTotalGeral.Value;;
              formvendas.Sds_PedidosVALOR_DESCONTO.Asfloat := EdtValorDesconto.Value;
              formvendas.Sds_PedidosENC_FINANCEIRO.AsFloat := EDTJUROS.Value;
              formvendas.Sds_PedidosPAGAMENTO.Text := CDS_PAGTODESCRICAO.Text;
              formvendas.Sds_PedidosCOD_PAGTO.AsInteger := 1; //DBComboPgto.Text;
              formvendas.Sds_Pedidos.post;



              end else
              begin
              formvendas.Sds_PedidosSTATUS.Text            := 'A';
              end;
              formvendas.Sds_Pedidos.Edit;
              formvendas.Sds_PedidosTP.TEXT :='A';
              formvendas.Sds_PedidosValor_total.asCurrency  := EdtTotalGeral.Value;;
              formvendas.Sds_PedidosVALOR_DESCONTO.Asfloat := EdtValorDesconto.Value;
              formvendas.Sds_PedidosENC_FINANCEIRO.AsFloat := EDTJUROS.Value;
              formvendas.Sds_PedidosPAGAMENTO.Text := 'AVISTA';
              formvendas.Sds_PedidosCOD_PAGTO.AsInteger := 1; //DBComboPgto.Text;
              formvendas.Sds_Pedidos.post;

          cds_formas.Open;
          dm.ProxCod.Close;
          dm.ProxCod.SQL.Clear;
          dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PREvenda where cod_empresa =:cod_emp');
          dm.ProxCod.ParamByName('cod_emp').AsInteger := iemp;
          DM.ProxCod.Open;

      {   if DM.IBTransaction.Active then
      DM.IBTransaction.Commit;

       DM.IBTransaction.StartTransaction;  }
      try
      //   try
       with dm.sds_pre_venda do
       begin
        close;
        Open;
        insert;
        Edit;
        {commandtext.Clear;
        //if bGrava then
        //begin
         commandtext.Add('INSERT INTO PREn_venda (CODIGO, VALOR_ITENS, ENC_FINANCEIRO, VALOR_DESCONTO, VALOR_TOTAL,'+
         'VALOR_COMISSAO, USUARIO, DATA_PEDIDO, DATA_ENTREGA, CODIGO_CLIENTE,  NOME_CLIENTE,  PAGAMENTO,'+
         'STATUS, SITUACAO, USUARIO_ENTREGA, TP, OBSERVACOES, COD_VENDEDOR, COD_PAGTO, N_CUPOM, N_ECF,'+
         'COD_EMPRESA, HORA, VALOR_ACRESCIMOS, COD_ORCAMENTO, COD_PEDIDO, COD_OS, NUM_NOTA, SERIE_NOTA,'+
         'ENDERECO, CPF_CNPJ, RG_IE, FONE, CIDADE, BAIRRO, N_PARTIDA, PROPRIEDADE, QUANT_VENDIDA, SALDO_VENDIDO,'+
         'MED_VETERINARIO, DATA_VACINA, VALOR_AVISTA, VALOR_PRAZO, UF, COD_IBGE, CEP, NUMERO, TIPO,'+
         'VALOR_PAGO, VALOR_TROCO, ENTREGADOR, TIPO_PEDIDO, FECHADO, MESA, REFERENCIA, CELULAR,'+
         'PROD_RURAL, IE_PRODUTOR, VLR_PIS, VLR_COFINS, KM, CHAVE_FP, CHAVE_FP_CANCEL, CUPON_CANCELADO, CRZ, ANO, MODELO_NF, CFOP_NF,COD_OS_AUTO)'+
         'VALUES (:CODIGO, :VALOR_ITENS, :ENC_FINANCEIRO, :VALOR_DESCONTO, :VALOR_TOTAL, :VALOR_COMISSAO,'+
         ':USUARIO, :DATA_PEDIDO, :DATA_ENTREGA, :CODIGO_CLIENTE, :NOME_CLIENTE, :PAGAMENTO, :STATUS, :SITUACAO,'+
         ':USUARIO_ENTREGA, :TP, :OBSERVACOES, :COD_VENDEDOR, :COD_PAGTO, :N_CUPOM, :N_ECF, :COD_EMPRESA, :HORA,'+
         ':VALOR_ACRESCIMOS, :COD_ORCAMENTO, :COD_PEDIDO, :COD_OS, :NUM_NOTA,:SERIE_NOTA, :ENDERECO, :CPF_CNPJ,'+
         ':RG_IE, :FONE, :CIDADE, :BAIRRO, :N_PARTIDA, :PROPRIEDADE, :QUANT_VENDIDA, :SALDO_VENDIDO,'+
         ':MED_VETERINARIO, :DATA_VACINA, :VALOR_AVISTA, :VALOR_PRAZO, :UF, :COD_IBGE, :CEP, :NUMERO,'+
         ':TIPO, :VALOR_PAGO, :VALOR_TROCO, :ENTREGADOR, :TIPO_PEDIDO, :FECHADO, :MESA, :REFERENCIA, :CELULAR,'+
         ':PROD_RURAL,  :IE_PRODUTOR, :VLR_PIS, :VLR_COFINS, :KM, :CHAVE_FP, :CHAVE_FP_CANCEL,:CUPON_CANCELADO, :CRZ, :ANO, :MODELO_NF, :CFOP_NF,:COD_OS_AUTO)'); }

        FieldByName('CODIGO').AsInteger        := DM.ProxCodN_CODIGO.ASINTEGER + 1;
        Fieldbyname('VALOR_ITENS').AsFloat     := StrToFloatDef(formvendas.Sds_pedidosVALOR_ITENS.Text,0.00);//// formvendas.Total;
        Fieldbyname('ENC_FINANCEIRO').AsFloat  := StrToFloatDef(formvendas.Sds_pedidosENC_FINANCEIRO.Text,0.00);//// formvendas.Total;
        Fieldbyname('VALOR_DESCONTO').AsFloat  := StrToFloatDef(formvendas.Sds_pedidosVALOR_DESCONTO.Text,0.00);//(formvendas.Total - formvendas.ValCompra);
        Fieldbyname('VALOR_TOTAL').AsFloat     := StrToFloatDef(formvendas.Sds_pedidosVALOR_TOTAL.Text,0.00);// formvendas.ValCompra;
        Fieldbyname('VALOR_COMISSAO').AsFloat  := StrToFloatDef(formvendas.Sds_pedidosVALOR_COMISSAO.Text,0.00); //Comissao;
        Fieldbyname('USUARIO').Asstring        := formvendas.Sds_pedidosUSUARIO.asstring;
        Fieldbyname('DATA_PEDIDO').AsDatetime     := formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
        Fieldbyname('DATA_ENTREGA').AsDatetime     := Date; //formvendas.Sds_pedidosDATA_ENTREGA.AsDateTime;
        Fieldbyname('CODIGO_CLIENTE').asinteger:= formvendas.Sds_pedidosCODIGO_CLIENTE.asinteger;
        Fieldbyname('NOME_CLIENTE').aSSTRING   := formvendas.Sds_pedidosNOME_CLIENTE.ASSTRING;
        Fieldbyname('PAGAMENTO').AsString      := formvendas.Sds_pedidosPAGAMENTO.AsString;
        Fieldbyname('STATUS').AsString         := 'N';
        Fieldbyname('SITUACAO').AsString       := formvendas.Sds_pedidosSITUACAO.ASSTRING;
        Fieldbyname('USUARIO_ENTREGA').Value   := null;
        Fieldbyname('TP').AsString             := formvendas.Sds_pedidosTP.AsString;
        Fieldbyname('OBSERVACOES').AsString    := formvendas.Sds_pedidosOBSERVACOES.AsString;
        Fieldbyname('COD_VENDEDOR').AsInteger  := formvendas.Sds_pedidosCOD_VENDEDOR.AsInteger;
        Fieldbyname('COD_PAGTO').Value         := null;
        Fieldbyname('N_CUPOM').value           := null;
        Fieldbyname('N_ECF').Value             := null;
        Fieldbyname('COD_EMPRESA').AsInteger   := iEmp;
        Fieldbyname('HORA').AsString           := TimeToStr(Time);
        Fieldbyname('VALOR_ACRESCIMOS').AsFloat  := StrToFloatDef(formvendas.Sds_pedidosVALOR_ACRESCIMOS.Text,0.00);

        if trim(formvendas.Sds_pedidosCOD_ORCAMENTO.Text) = '' then
          Fieldbyname('COD_ORCAMENTO').Value       := Null
        else
          Fieldbyname('COD_ORCAMENTO').AsInteger       := formvendas.Sds_pedidosCOD_ORCAMENTO.AsInteger;

        Fieldbyname('COD_PEDIDO').Value       := Null;

        if trim(formvendas.Sds_pedidosCOD_OS.Text) = '' then
          Fieldbyname('COD_OS').Value       := Null
        else
          Fieldbyname('COD_OS').AsInteger       :=  formvendas.Sds_pedidosCOD_OS.AsInteger;


        Fieldbyname('NUM_NOTA').asstring           := formvendas.sds_pedidosnum_nota.AsString;
        Fieldbyname('SERIE_NOTA').asstring         := formvendas.sds_pedidosSERIE_NOTA.AsString;

        Fieldbyname('ENDERECO').AsString        := formvendas.Sds_pedidosENDERECO.AsString;
        Fieldbyname('CPF_CNPJ').AsString        := formvendas.Sds_pedidosCPF_CNPJ.AsString;
        Fieldbyname('RG_IE').AsString           := formvendas.Sds_pedidosRG_IE.AsString;
        Fieldbyname('FONE').AsString            := formvendas.Sds_pedidosFONE.AsString;
        Fieldbyname('CIDADE').AsString          := formvendas.Sds_pedidosCIDADE.AsString;
        Fieldbyname('BAIRRO').AsString          := formvendas.Sds_pedidosBAIRRO.AsString;
        Fieldbyname('N_PARTIDA').ASSTRING       := formvendas.Sds_pedidosN_PARTIDA.AsString;
        Fieldbyname('PROPRIEDADE').AsString     := formvendas.Sds_pedidosPROPRIEDADE.AsString;
        Fieldbyname('QUANT_VENDIDA').AsFloat    := StrToFloatDef(formvendas.Sds_pedidosQUANT_VENDIDA.Text,0.00);
        Fieldbyname('SALDO_VENDIDO').AsFloat    := StrToFloatDef(formvendas.Sds_pedidosSALDO_VENDIDO.Text,0.00);
        Fieldbyname('MED_VETERINARIO').AsString := formvendas.Sds_pedidosMED_VETERINARIO.AsString;
        Fieldbyname('DATA_VACINA').AsDatetime       := formvendas.Sds_pedidosDATA_VACINA.AsDateTime;
        Fieldbyname('VALOR_AVISTA').AsFloat     := StrToFloatDef(formvendas.Sds_pedidosVALOR_AVISTA.text,0.00);
        Fieldbyname('VALOR_PRAZO').AsFloat      := StrToFloatDef(formvendas.Sds_pedidosVALOR_PRAZO.text,0.00);
        Fieldbyname('UF').AsString              := formvendas.Sds_pedidosUF.AsString;
        Fieldbyname('COD_IBGE').AsString        := formvendas.Sds_pedidosCOD_IBGE.AsString;
        Fieldbyname('CEP').AsString             := formvendas.Sds_pedidosCEP.AsString;
        Fieldbyname('NUMERO').AsString          := formvendas.Sds_pedidosnumero.AsString;
        Fieldbyname('TIPO').AsString            := formvendas.Sds_pedidosTIPO.AsString;
        Fieldbyname('VALOR_PAGO').AsFloat       := StrToFloatDef(formvendas.Sds_pedidosVALOR_PAGO.text,0.00);
        Fieldbyname('VALOR_TROCO').ASFLOAT      := StrToFloatDef(formvendas.Sds_pedidosVALOR_TROCO.text,0.00);
        Fieldbyname('ENTREGADOR').AsString      := formvendas.Sds_pedidosENTREGADOR.AsString;
        Fieldbyname('TIPO_PEDIDO').AsString     := formvendas.Sds_pedidosTIPO_PEDIDO.AsString;
        Fieldbyname('FECHADO').AsString         := formvendas.Sds_pedidosFECHADO.AsString;
        Fieldbyname('MESA').AsString            := formvendas.Sds_pedidosMESA.AsString;
        Fieldbyname('REFERENCIA').AsString      := formvendas.Sds_pedidosREFERENCIA.AsString;
        Fieldbyname('CELULAR').asstring         := formvendas.Sds_pedidosCELULAR.AsString;
        Fieldbyname('PROD_RURAL').AsString      := formvendas.Sds_pedidosPROD_RURAL.AsString;
        Fieldbyname('IE_PRODUTOR').AsString     := formvendas.Sds_pedidosIE_PRODUTOR.AsString;
        Fieldbyname('VLR_PIS').AsFloat        := StrToFloatDef(formvendas.Sds_pedidosVLR_PIS.text,0.00);
        Fieldbyname('VLR_COFINS').ASFLOAT     := StrToFloatDef(formvendas.Sds_pedidosVLR_COFINS.text,0.00);
        Fieldbyname('KM').ASSTRING              := formvendas.Sds_pedidoskm.AsString;
        Fieldbyname('CHAVE_FP').AsString        := formvendas.Sds_pedidosCHAVE_FP.AsString;
        Fieldbyname('CHAVE_FP_CANCEL').Value    := formvendas.Sds_pedidosCHAVE_FP_CANCEL.AsString;
        Fieldbyname('CUPON_CANCELADO').value    := null;
        Fieldbyname('CRZ').Value                := null;
        Fieldbyname('ANO').ASSTRING             := FormatDateTime('yyyy',dtAux);
        Fieldbyname('MODELO_NF').ASSTRING       := formvendas.Sds_pedidosMODELO_NF.AsString;
        Fieldbyname('CFOP_NF').ASSTRING         :=formvendas.Sds_pedidosCFOP.AsString;
        if trim(formvendas.Sds_pedidosCOD_OS_AUTO.Text) = '' then
          Fieldbyname('COD_OS_AUTO').Value       := Null
        else
          Fieldbyname('COD_OS_AUTO').AsInteger       :=  formvendas.Sds_pedidosCOD_OS_AUTO.AsInteger;

        post;
          end;
    //  DM.IBTransaction.CommitRetaining;

      finally
      DM.sds_pre_venda.Close;
      end;

     formprincipal.log(codigo_usuario,'PREvenda',formvendas.N_venda.Text,'INCLUIU','INCLUSAO DA PRE-venda Nº '+formvendas.N_venda.Text+'Cliente: '+ formvendas.DBComboCliente.text+' - '+formvendas.Desc_cliente.text);


     formvendas.Sds_Pedidos_itens.First;
     Contador:=formvendas.Sds_Pedidos_itens.RecordCount;
     For I:=1 to Contador do
     begin

     { if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;
      try  }
        try
          with Dm.sds_pre_venda_itens do
          begin
            close;
            Open;
            insert;
            edit;

           { commandtext.Clear;
            commandtext.Add('INSERT INTO PREn_venda_ITENS (CODIGO, CODIGO_ID, ITEN, CODIGO_PROD, CODIGO_PRODUTO, DESCRICAO_PRODUTO,'+
                    'PRECO_UNITARIO, DESCONTO, QUANTIDADE, PRECO_TOTAL, COMISSAO, DEV, QNT_DEV, VAL_DEV, ENC_FINANCEIRO,'+
                    'UNIDADE, SIT_TRIBUTARIA, VENDEDOR, FRACAO, COD_NCM, PROD_SERV, PERC_ISS, BASE_ISS, VL_ISS, PERC_ICM,'+
                    'BASE_ICMS, VL_ICM, PERC_IPI, BASE_IPI, VL_IPI, PERC_COFINS, BASE_COFINS, VL_COFINS, PERC_ICMS_SUBST,'+
                    'BASE_ICMS_SUBST, VL_ICMS_SUBST, PERC_PIS, BASE_PIS, VL_PIS, IMPRIME, COD_EMPRESA, ID_BICO, ID_BOMBA, ID_TANQUE, BICO)'+
                    'VALUES (:CODIGO, :CODIGO_ID, :ITEN, :CODIGO_PROD, :CODIGO_PRODUTO,:DESCRICAO_PRODUTO, :PRECO_UNITARIO,'+
                    ':DESCONTO, :QUANTIDADE, :PRECO_TOTAL, :COMISSAO, :DEV, :QNT_DEV, :VAL_DEV,:ENC_FINANCEIRO, :UNIDADE,'+
                    ':SIT_TRIBUTARIA, :VENDEDOR, :FRACAO, :COD_NCM, :PROD_SERV, :PERC_ISS, :BASE_ISS, :VL_ISS, :PERC_ICM,'+
                    ':BASE_ICMS, :VL_ICM, :PERC_IPI, :BASE_IPI, :VL_IPI, :PERC_COFINS, :BASE_COFINS, :VL_COFINS, :PERC_ICMS_SUBST,'+
                    ':BASE_ICMS_SUBST, :VL_ICMS_SUBST, :PERC_PIS, :BASE_PIS, :VL_PIS, :IMPRIME, :COD_EMPRESA, :ID_BICO, :ID_BOMBA, :ID_TANQUE, :BICO)'); }

               {   dm.ProxCod.Close;
                  dm.ProxCod.SQL.Clear;
                  dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PEDIDOS_ITENS');
                  DM.ProxCod.Open;   }

            Fieldbyname('CODIGO').AsInteger                 := 1; // DM.ProxCodN_CODIGO.ASINTEGER + 1;
            Fieldbyname('CODIGO_ID').AsInteger              := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            Fieldbyname('ITEN').AsInteger                   := formvendas.Sds_Pedidos_itensIten.AsInteger;
            Fieldbyname('CODIGO_PROD').AsInteger            := formvendas.Sds_Pedidos_itensCodigo_prod.AsInteger;
            Fieldbyname('CODIGO_PRODUTO').AsString          := formvendas.Sds_Pedidos_itensCodigo_Produto.AsString;
            Fieldbyname('DESCRICAO_PRODUTO').AsString       := formvendas.Sds_Pedidos_itensDESCRICAO_PRODUTO.AsString;
            Fieldbyname('PRECO_UNITARIO').AsCurrency        := formvendas.Sds_Pedidos_itensPreco_unitario.AsFloat;
            Fieldbyname('DESCONTO').AsCurrency              := formvendas.Sds_Pedidos_itensDesconto.AsFloat;
            Fieldbyname('QUANTIDADE').AsFloat               := formvendas.Sds_Pedidos_itensQuantidade.AsFloat;
            Fieldbyname('PRECO_TOTAL').AsCurrency           := StrToCurrDef(formvendas.Sds_Pedidos_itensPreco_total.text,0.00);
            Fieldbyname('COMISSAO').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensComissao.text,0.00);
            Fieldbyname('DEV').Value                        := null;
            Fieldbyname('QNT_DEV').Value                    := NULL;
            Fieldbyname('VAL_DEV').Value                    := null;
            Fieldbyname('ENC_FINANCEIRO').AsCurrency        := StrToCurrDef(formvendas.Sds_Pedidos_itensENC_FINANCEIRO.text,0.00);
            Fieldbyname('UNIDADE').AsString                 := formvendas.Sds_Pedidos_itensunidade.AsString;
            Fieldbyname('SIT_TRIBUTARIA').AsString          := formvendas.Sds_Pedidos_itensSit_tributaria.AsString;
            Fieldbyname('VENDEDOR').AsInteger               := formvendas.Sds_Pedidos_itensVENDEDOR.AsInteger;
            Fieldbyname('FRACAO').AsInteger                 := formvendas.Sds_Pedidos_itensfracao.AsInteger;
            Fieldbyname('COD_NCM').AsString                 := formvendas.Sds_Pedidos_itenscod_ncm.text;
            Fieldbyname('PROD_SERV').AsString               := formvendas.Sds_Pedidos_itensPROD_SERV.text;
            Fieldbyname('PERC_ISS').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_ISS.text,0.00);
            Fieldbyname('BASE_ISS').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_ISS.text,0.00);
            Fieldbyname('VL_ISS').AsCurrency                := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_ISS.text,0.00);
            Fieldbyname('PERC_ICM').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_ICM.text,0.00);
            Fieldbyname('BASE_ICMS').AsCurrency             := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_ICMS.text,0.00);
            Fieldbyname('VL_ICM').AsCurrency                := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_ICM.text,0.00);
            Fieldbyname('PERC_IPI').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_IPI.text,0.00);
            Fieldbyname('BASE_IPI').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_IPI.text,0.00);
            Fieldbyname('VL_IPI').AsCurrency                := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_IPI.text,0.00);
            Fieldbyname('PERC_COFINS').AsCurrency           := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_COFINS.text,0.00);
            Fieldbyname('BASE_COFINS').AsCurrency           := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_COFINS.text,0.00);
            Fieldbyname('VL_COFINS').AsCurrency             := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_COFINS.text,0.00);
            Fieldbyname('PERC_ICMS_SUBST').AsCurrency       := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_ICMS_SUBST.text,0.00);
            Fieldbyname('BASE_ICMS_SUBST').AsCurrency       := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_ICMS_SUBST.text,0.00);
            Fieldbyname('VL_ICMS_SUBST').AsCurrency         := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_ICMS_SUBST.Text,0.00);
            Fieldbyname('PERC_PIS').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_PIS.text,0.00);
            Fieldbyname('BASE_PIS').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_PIS.text,0.00);
            Fieldbyname('VL_PIS').AsCurrency                := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_PIS.text,0.00);
            Fieldbyname('IMPRIME').Value                    := null;
            Fieldbyname('COD_EMPRESA').AsInteger            := iemp;
            Fieldbyname('ID_BICO').AsString                 := formvendas.sds_pedidos_itensCODIGO_BICO.text;
            Fieldbyname('ID_BOMBA').AsString                := formvendas.sds_pedidos_itensBOMBA.text;
            Fieldbyname('ID_TANQUE').AsString               := formvendas.sds_pedidos_itensTANQUE.text;
            Fieldbyname('BICO').AsString                    := formvendas.sds_pedidos_itensBICO.text;
            post;
            formvendas.Sds_Pedidos_itens.Next;
          end;
          //  DM.IBTransaction.CommitRetaining;
       { except
         // DM.IBTransaction.Rollback;
          showmessage('Erro ao Gravar os Itens da PRE-n_venda');
        end;  }
       finally
       Dm.sds_pre_venda_itens.Close;
       end;
       end;

        with CDSFormas do
        begin
          first;
          while not eof do
          begin
            CDS_Formas.insert;
            CDS_FormasCOD_venda.AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            cds_formasCOD_FORMA.Text       := CDSFormasCODIGO.Text;
            cds_formasDESC_FORMA.Text      := CDSFormasDESCRICAO.Text;
            CDS_FormasTIPO.Text            := CDSFormasTIPO_PAGTO.Text;
            CDS_FormasVALOR.Value          := CDSFormasVALOR.Value;
            CDS_Formas.Post;
            Next;
          end;
        end;

    formvendas.GroupBox1.Enabled:= FALSE;
    formvendas.GroupBox2.Enabled:= FALSE;
    // formvendas.GroupBox3.Enabled:= FALSE;
    formvendas.cancelar.Enabled:=FALSE;
    formvendas.Inserir.visible:= TRUE;
    formvendas.Inserir.Enabled:= TRUE;
    formvendas.pesquisar.Enabled := True;
    formvendas.confirmar.Enabled := false;
    formvendas.Edit60.Clear;
    formvendas.E_desconto.clear;
    formvendas.Edit62.Clear;

    concluiu := True;

    formvendas.GroupBox1.Enabled:= FALSE;
    formvendas.GroupBox2.Enabled:= FALSE;
   // formvendas.GroupBox3.Enabled:= FALSE;
    formvendas.cancelar.Enabled:=FALSE;
    formvendas.Inserir.visible:= TRUE;
    formvendas.Inserir.Enabled:= TRUE;
    formvendas.pesquisar.Enabled := True;
    formvendas.confirmar.Enabled := false;
    formvendas.Edit60.Clear;
    formvendas.E_desconto.clear;
    formvendas.Edit62.Clear;
    concluiu := True;

    try
      FXduplicata.LoadFromFile('rel\ImpimirPrevendaConsulta.fr3');

      qrPrevenda:= TFDQuery.Create(nil);
      qrPrevenda.Connection:= DM.Coneccao;
      qrPrevenda.SQL.Add('SELECT '+
      'EP.NOME_FANTASIA AS NOME_EMPRESA,'+
      'PR.CODIGO AS CODIGO_PREvenda, '+
      'CL.CODIGO AS CLIENTE_CODIGO,'+
      'CL.NOME_RS AS CLIENTE_NOME,'+
      'CL.CPF_CNPJ AS CLIENTE_CPF_CNPJ,'+
      'CL.RG_IE AS CLIENTE_RG,'+
      'PR.DATA_PEDIDO AS DATA_COMPRA,'+
      'CL.ENDERECO AS CLIENTE_ENDERECO,'+
      'CL.BAIRRO AS CLIENTE_BAIRRO,'+
      'CL.CIDADE AS CLIENTE_CIDADE,'+
      'CL.UF AS CLIENTE_UF,'+
      'CL.COMPLEMENTO AS CLIENTE_COMPLEMENTO, '+
      'CL.TELEFONE AS CLIENTE_TELEFONE1, '+
      'CL.TELEFONE2 AS CLIENTE_TELEFONE2, '+
      'CL.CELULAR AS CLIENTE_CELULAR, '+
      'US.USUARIO AS VENDEDOR, '+
      '(SELECT SUM(VALOR) FROM PREvenda_FORMAS_PAGAMENTO WHERE COD_venda = PR.CODIGO AND COD_FORMA = 1)  AS DINHEIRO,'+
      '(SELECT SUM(VALOR) FROM PREvenda_FORMAS_PAGAMENTO WHERE COD_venda = PR.CODIGO AND COD_FORMA = 7)  AS CHEQUE_VISTA,'+
      '(SELECT SUM(VALOR) FROM PREvenda_FORMAS_PAGAMENTO WHERE COD_venda = PR.CODIGO AND COD_FORMA = 3)  AS CHEQUE_PRAZO, '+
      '(SELECT SUM(VALOR) FROM PREvenda_FORMAS_PAGAMENTO WHERE COD_venda = PR.CODIGO AND COD_FORMA = 2)  AS CARTAO_DEBITO,'+
      '(SELECT SUM(VALOR) FROM PREvenda_FORMAS_PAGAMENTO WHERE COD_venda = PR.CODIGO AND COD_FORMA = 13)  AS CARTAO_CREDITO, '+
      '(SELECT SUM(VALOR) FROM PREvenda_FORMAS_PAGAMENTO WHERE COD_venda = PR.CODIGO AND COD_FORMA = 4)  AS CREDIARIO '+
      'FROM PREvenda PR '+
      'INNER JOIN empresa EP ON EP.CODIGO = PR.COD_EMPRESA '+
      'INNER JOIN CLIENTES CL ON CL.CODIGO = PR.CODIGO_CLIENTE '+
      'INNER JOIN USUARIOS US ON US.CODIGO = PR.COD_VENDEDOR '+
      ' WHERE PR.CODIGO = ' + IntToStr(DM.ProxCodN_CODIGO.ASINTEGER + 1));
      qrPrevenda.Open;
      qrPrevendaRel.DataSet:= qrPrevenda;

      qrPrevendaItem:= TFDQuery.Create(nil);
      qrPrevendaItem.Connection:= DM.Coneccao;
      qrPrevendaItem.SQL.Add('SELECT '+
      'PRI.CODIGO AS CODIGO_ITEM, '+
      'PRI.CODIGO_PRODUTO AS ITEM_CODIGO, '+
      'PR.DESCRICAO AS ITEM_NOME, '+
      'PR.UND_TRIB AS ITEM_UND, '+
      'PRI.QUANTIDADE AS ITEM_QUANTIDADE, '+
      'PRI.PRECO_UNITARIO AS ITEM_PRECO_UNITARIO, '+
      'PRI.PRECO_TOTAL AS ITEM_TOTAL, '+
      'PRI.DESCONTO AS ITEM_DESCONTO '+
      'FROM PREvenda_ITENS PRI '+
      'INNER JOIN PRODUTOS PR ON PR.CODIGO = PRI.CODIGO_PROD '+
      ' WHERE PRI.CODIGO_ID = ' + IntToStr(qrPrevenda.fieldbyname('CODIGO_PREVENDA').AsInteger));

      qrPrevendaItem.Open;
      qrPrevendaItemRel.DataSet:= qrPrevendaItem;

      FXduplicata.ShowReport;
    except
      ShowMessage('Erro ao tentar Imprimir!');
    end;
    qrPrevenda.Destroy;
    qrPrevendaItem.Destroy;

    Close;
   end;
     FINALLY
      //exit
     Close;
     END;
    {except
      showmessage('Ocorreu um erro verifique');
    end;  }

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


   { FORMVENDAS.Sds_pedidos.EDIT;
    FORMVENDAS.N_venda.Text:=IntTostr(N);
    FORMVENDAS.Sds_pedidosCODIGO.ASINTEGER := N_venda;

      formvendas.Sds_Pedidos_itens.First;
      Contador := formvendas.Sds_Pedidos_itens.RecordCount;
      For E:=1 to Contador do
      begin
      formvendas.sds_pedidos_itens.Edit;
      formvendas.sds_pedidos_itensCODIGO_ID.Text := IntTostr(N_venda);
      formvendas.Sds_Pedidos_itens.next;
      end;
      formvendas.Sds_pedidosCODIGO.Text := IntTostr(N_venda);   }



  // venda

   n_venda :=  strtoint(formVendas.N_venda.Text);

  if formvendas.CheckBox4.Checked = True then
  begin
  // SE A n_venda FOR EXPORTADA DA TELA DE CONSULTA
         if exportada = True then
         begin
         dm.sds_vendas.close;
         dm.sds_vendas.SQL.Clear;
         dm.sds_vendas.SQL.add('select * from PEDIDOS where cod_empresa =' + IntToStr(iemp) + ' and codigo ='+ IntToStr(n_venda) +'');
         dm.sds_vendas.Open;

          formprincipal.log(codigo_usuario,'venda',Inttostr(n_venda),'ALTEROU','ALTERAÇÃO DA venda Nº '+Inttostr(n_venda)+'Cliente: '+ DM.sds_vendasCODIGO_CLIENTE.Text+' - '+DM.sds_vendasNOME_CLIENTE.text);

          DM.sds_vendas_itens.First;
          Contador := DM.sds_vendas_itens.RecordCount;
          For I:=1 to Contador do
          begin
                 //LOG ESTOQUE
           {  if DM.IBTransaction.Active then
               DM.IBTransaction.Commit;
            DM.IBTransaction.StartTransaction;
            try    }
               contador:=0;
               e:=0;

                // BUSCA ESTOQUE
                { if dm.IBTransaction.Active then
                   dm.IBTransaction.Commit;
                dm.IBTransaction.StartTransaction;

                  try  }
                    with dm.Consulta do
                       begin
                          close;
                          sql.Clear;
                          sql.add('SELECT ESTOQUE FROM PRODUTOS WHERE CODIGO = :CODPRO');
                          Parambyname('CODPRO').AsInteger:= DM.sds_vendas_itensCodigo_prod.AsInteger;
                          open;
                          estoque:= fieldbyname('ESTOQUE').AsCurrency;
                       end;
                 {   dm.IBTransaction.Commit;
                  except
                    dm.IBTransaction.rollback;
                    showmessage('Erro ao buscar o custo do produto');
                  end; }
              try
                with DM.logEst do
                   begin
                      close;
                      parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
                      parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
                      parambyname('ID_AJUSTE').AsInteger      := 1;//DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                      Parambyname('ID_PRODUTO').AsInteger     := DM.sds_vendas_itensCodigo_prod.AsInteger;
                      Parambyname('ID_LOTE').Value            := null;
                      Parambyname('ID_PRODUTO_SERIE').Value   := null;
                      Parambyname('DATA').AsDateTime          := date;
                      Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
                      parambyname('ID_MOVIMENTO').AsInteger   :=  DM.sds_vendascodigo.asinteger;
                      Parambyname('FRACAO').Asfloat           := DM.sds_vendas_itensFRACAO.AsINTEGER;
                      Parambyname('ESTOQUE_ANTERIOR').Asfloat := estoque;
                      Parambyname('QUANTIDADE').Asfloat       :=  DM.sds_vendas_itensQUANTIDADE.AsFloat;
                      Parambyname('ESTOQUE_POSTERIOR').Asfloat := ESTOQUE + DM.sds_vendas_itensQUANTIDADE.AsFloat;
                      Parambyname('SITUACAO_ESTOQUE').ASINTEGER    := 7; //ALTERAÇÃO DA n_venda
                      Parambyname('OPERACAO').TEXT             := '+';
                      Parambyname('ACAO_BD').TEXT               := 'U';
                      Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
                      parambyname('COD_venda').AsInteger      :=  DM.sds_vendasCODIGO.asinteger;
                      parambyname('COD_COMPRA').VALUE         :=  null;
                      Parambyname('HISTORICO').TEXT           := copy('Alteração da n_venda No. '+inttostr(n_venda)+' - '+DM.sds_vendasNOME_CLIENTE.Text,1,60);
                      Parambyname('HORA').AsString            := TimeToStr(Time);
                      ExecSQL;
                    end;
                {    DM.IBTransaction.Commit;

                 except
                DM.IBTransaction.Rollback;
                showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                            'Verifique que já foi lançado');
                end;  }
              finally
             dm.logEst.Close;
             end;
            DM.Sds_vendas_itens.next;
            end;
            Application.ProcessMessages;
          end;

        ///.... SE ESTIVER ALGUM RESQUICIO NA ALTERAÇÃO EXCLUI DAS TABELAS VINCULADAS ......////
           if DM.IBTransaction.Active then
           DM.IBTransaction.Commit;
           DM.IBTransaction.StartTransaction;
           with DM.IBSQL do
            begin
               Close;
               SQL.Clear;
               SQL.Add('delete from crediario where codigo_compra =:n_venda and cod_empresa =:cod_emp');
               ParamByName('n_venda').asinteger := n_venda;
               ParamByName('cod_emp').asinteger := iemp;
               ExecSQL;
           end;
           DM.IBTransaction.CommitRetaining;


         if DM.IBTransaction.Active then
           DM.IBTransaction.Commit;
           DM.IBTransaction.StartTransaction;
           with DM.IBSQL do
            begin
               Close;
               SQL.Clear;
               SQL.Add('delete from movimento_diario where codigo_venda =:n_venda and cod_empresa =:cod_emp');
               ParamByName('n_venda').AsInteger := n_venda;
               ParamByName('cod_emp').asinteger := iemp;
               ExecSQL;
           end;
           DM.IBTransaction.CommitRetaining;

           if DM.IBTransaction.Active then
           DM.IBTransaction.Commit;
           DM.IBTransaction.StartTransaction;
           with DM.IBSQL do
            begin
               Close;
               SQL.Clear;
               SQL.Add('delete from cheques where codigo_compra =:n_venda and cod_empresa =:cod_emp');
               ParamByName('n_venda').asinteger:=n_venda;
               ParamByName('cod_emp').asinteger := iemp;
               ExecSQL;
           end;
          DM.IBTransaction.CommitRetaining;


           if DM.IBTransaction.Active then
           DM.IBTransaction.Commit;
           DM.IBTransaction.StartTransaction;
           with DM.IBSQL do
            begin
               Close;
               SQL.Clear;
               SQL.Add('delete from PEDIDOS_ITENS where codigo_ID =:n_venda and cod_empresa =:cod_emp');
               ParamByName('n_venda').asinteger :=n_venda;
               ParamByName('cod_emp').AsInteger := iemp;
               ExecSQL;
           end;
           DM.IBTransaction.CommitRetaining;

           if DM.IBTransaction.Active then
           DM.IBTransaction.Commit;
           DM.IBTransaction.StartTransaction;
           with DM.IBSQL do
            begin
               Close;
               SQL.Clear;
               SQL.Add('delete from PEDIDOS where codigo =:n_venda and cod_empresa =:cod_emp');
               ParamByName('n_venda').asinteger :=n_venda;
               ParamByName('cod_emp').AsInteger := iemp;
               ExecSQL;
           end;
           DM.IBTransaction.CommitRetaining;


          //... VERFICA FORMAS DE PAGAMENTO.
          cSomaFormas := 0;
          with CDSFormas do
            begin
               First;
               while not eof do
                  begin
                     cSomaFormas:= cSomaFormas+ CDSFormasVALOR.AsCurrency;
                     next;
                  end;
            end;

          //  showmessage('valor: ' + floattostr(cSomaFormas));

            if cSomaFormas - EdtTotalGeral.VALUE  > 0.01 then
            begin
            EdtTroco.value :=  (cSomaFormas - EdtTotalGeral.VALUE);
            edtDiferenca.Value :=0;
            end else
            if cSomaFormas - EdtTotalGeral.VALUE  < 0.01 then
            begin
            edtDiferenca.value :=  (cSomaFormas - EdtTotalGeral.VALUE);
            EdtTroco.Value :=0;
            end;

             Application.ProcessMessages;

             bPagou       := false;
             bErroFormas  := false;
            // cSomaFormas  := 0;
             formvendas.Sds_pedidos.Edit;
             formvendas.Sds_pedidossaldo_troco.AsFloat := 0;
             formvendas.Sds_pedidossaldo_troco.AsFloat := EdtTroco.Value;
             formvendas.Sds_pedidos.Post;

            { Verifica Formas de Pagamento }
        {    with CDSFormas do
                begin
                   first;
                   while not eof do
                      begin
                         if CDSFormasVALOR.AsCurrency > 0 then
                            begin
                               if bPagou then
                                  bErroFormas:= true
                               else
                                  begin
                                     bErroFormas:= false;
                                  //   cSomaFormas:= ExatoCurrency(cSomaFormas,2) + ExatoCurrency(CDSFormasVALOR.AsCurrency,2);
                                     if cSomaFormas >= (ExatoCurrency(EdtTotalGeral.Value,2) - ExatoCurrency(Encargos,2)) then
                                        bPagou:= true;
                                  end;
                            end;
                         next;
                      end;
                end;

                if (bErroFormas) or (not bPagou) then
                begin
                   showmessage('Verifique as formas de pagamento');
                   CDSFormas.First;
                   DBGridFormas.SetFocus;
                   CDSFormas.Edit;
                   exit;
                end;       }

               // pagamento avista
              if TotalizaFormaPagamento('A') > 0 then
              begin
              AVISTA := cTotalForma;
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='A';
              formvendas.Sds_pedidosPAGAMENTO.Text :='AVISTA';

              formvendas.Sds_pedidos.Post;
              end;


             // pagto prazo
              if TotalizaFormaPagamento('C') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
               prazo := ExatoCurrency(CurrencyEdit2.Value,2) + 0.05;
               cTotalForma := ExatoCurrency(cTotalForma,2) ;
              formvendas.Sds_pedidosTP.Text :='C';
              formvendas.Sds_pedidosPAGAMENTO.Text :='PRAZO';
              formvendas.Sds_pedidos.Post;
               if prazo < cTotalForma then
               begin
              FormPrincipal.MsgInformacao.HTMLText.Text := 'Valor das parcelas não condiz com o lançado a prazo...!';
              FormPrincipal.MsgInformacao.Execute;
               exit;
              end;
              end;

              //pagto com convenio
              if TotalizaFormaPagamento('Z') > 0 then
              begin
               prazo := ExatoCurrency(CurrencyEdit2.Value,2) + 0.05;
               cTotalForma := ExatoCurrency(cTotalForma,2) ;
               formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='Z';
              formvendas.Sds_pedidosPAGAMENTO.Text :='CONVENIO';
              formvendas.Sds_pedidos.Post;
               if CONVENIO < 1 then
               begin
               FormPrincipal.MsgInformacao.HTMLText.Text := 'Cliente sem convenio informado no Cadasto...!';
               FormPrincipal.MsgInformacao.Execute;
                exit;
               end;
               if prazo < cTotalForma then
               begin
               FormPrincipal.MsgInformacao.HTMLText.Text := 'Valor das parcelas não condiz com o lançado a prazo...!';
               FormPrincipal.MsgInformacao.Execute;
               exit;
              end;
              end;

              //n_venda em cheque
               if TotalizaFormaPagamento('H') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
               prazo := ExatoCurrency(EdtTotalLiquido.Value,2) + 0.01;
               cTotalForma := ExatoCurrency(cTotalForma,2) ;
              formvendas.Sds_pedidosTP.Text :='H';
              formvendas.Sds_pedidosPAGAMENTO.Text :='CHEQUE';
              formvendas.Sds_pedidos.Post;

               if prazo < cTotalForma then
               begin
              FormPrincipal.MsgInformacao.HTMLText.Text := 'Valor dos cheque no confere com o valor da n_venda...!';
              FormPrincipal.MsgInformacao.Execute;
               exit;
              end;
              end;
              prazo := ExatoCurrency(CurrencyEdit2.Value,2);

              //venda prazo
              if TotalizaFormaPagamento('C') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='C';
              formvendas.Sds_pedidos.Post;

              if ClientDataSet1.RecordCount = 0 then
              begin
              FormPrincipal.MsgInformacao.HTMLText.Text := 'Favor Gerar as parcelas antes de finalizar a n_venda.!';
              FormPrincipal.MsgInformacao.Execute;

               suiButton1.Enabled:= True;
               suiButton1.Enabled:= True;
               suiButton3.Enabled:= True;
               exit;
              end;

               IF DM.SDS_ClientesPG_CREDIARIO.Value = 'N' THEN
               BEGIN
               FormPrincipal.MsgInformacao.HTMLText.Text := 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
               FormPrincipal.MsgInformacao.Execute;

               suiButton1.Enabled:= True;
               suiButton1.Enabled:= True;
               suiButton3.Enabled:= True;
               exit;
               end else


               If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
               BEGIN
               DMC.SQLD_LIMITE.Active := False;
               DMC.CDS_LIMITE.Active := False;
               DMC.SQLD_LIMITE.Params[0].AsString := formvendas.DBComboCliente.Text;;
               DMC.SQLD_LIMITE.Active := True;
               DMC.CDS_LIMITE.Active := True;
               Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - prazo);
               Credito := 0;
               Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat + DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat);
               IF Limite < 0 THEN
               begin
               if DM.SDS_ClientesTESTA_LIMITE.Text = 'S' THEN
               begin
               formliberavenda :=nil;
               FormLiberavenda:=TFormLiberavenda.Create(self);
               FormLiberavenda.tag := 0;
               FormLiberavenda.ShowModal;
               if libera_cliente = false then
                begin
                exit;
                end else
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_venda =' + formvendas.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                end;

               end;
               end else
               IF Credito > 0 THEN
               begin
               if DM.SDS_ClientesTESTA_CREDITO.Text = 'S' then
               begin
               formliberavenda :=nil;
               FormLiberavenda:=TFormLiberavenda.Create(self);
               FormLiberavenda.tag := 0;
               FormLiberavenda.ShowModal;
                if libera_cliente = false then
                begin
                  DMC.sds_libera.Filtered := False;
                  DMC.sds_libera.Filter := 'COD_venda =' + formvendas.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                exit;
                end else
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_venda =' + formvendas.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                end;
               end;
               end;
               end;
              end;

              //vale troco
              if TotalizaFormaPagamento('V') > 0 then
              begin

              VALE := cTotalForma;

              dm1.Sds_valeTroco.close;
              dm1.Sds_valeTroco.Open;
              dm1.Sds_valeTroco.Filtered := false;
              dm1.Sds_valeTroco.Filter:='SALDO_ATUAL > 0';
              dm1.Sds_valeTroco.Filtered := True;

              FormConsValeTroco:=TFormConsValeTroco.Create(self);
              FormConsValeTroco.ShowModal;
              if confirma_vale = False then
              begin
              Exit;
              end;
              Edit3.TEXT := dm1.Sds_valeTrocoCODIGO.Text;


              total_venda := 0;
              total_venda := ExatoCurrency(vale,2);
              Total1 := ExatoCurrency(DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat,2);

              IF total_venda > TOTAL1 THEN
              begin
              FormPrincipal.MsgInformacao.HTMLText.Text := 'Saldo do Vale insuficiente para cobrir o valor da  n_venda!';
              FormPrincipal.MsgInformacao.Execute;

             //DBComboPgto.SetFocus;
              exit;
              DBGridFormas.SetFocus;
              end ;
              end;

              //requisicao
              if TotalizaFormaPagamento('R') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='F';
              formvendas.Sds_pedidos.Post;
              REQUISICAO := cTotalForma;
              end;

              //cheque dinheiro
              if TotalizaFormaPagamento('B') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='B';
              cheque_d := cTotalForma;
              formvendas.Sds_pedidosVALOR_PRAZO.AsCurrency       := cTotalForma;
              formvendas.Sds_pedidosVALOR_PAGO.AsCurrency         := cheque_d;
              formvendas.Sds_pedidosVALOR_TROCO.AsCurrency       := EdtTroco.Value;
              formvendas.Sds_pedidosCOD_EMPRESA.AsInteger      := iemp;
              formvendas.Sds_pedidos.Post;
              end;

              //cheques
              if TotalizaFormaPagamento('H') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='H';
              formvendas.Sds_pedidos.Post;

              cheque := cTotalForma;
              If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
               BEGIN
               DMC.SQLD_LIMITE.Active := False;
               DMC.CDS_LIMITE.Active := False;
               DMC.SQLD_LIMITE.Params[0].AsString := formvendas.DBComboCliente.Text;;
               DMC.SQLD_LIMITE.Active := True;
               DMC.CDS_LIMITE.Active := True;
               Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - cheque);
               Credito := 0;
               Credito := (DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat + DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat );
               IF Limite < 0 THEN
               begin
               if DM.SDS_ClientesTESTA_LIMITE.Text = 'S' THEN
               begin
               formliberavenda :=nil;
               FormLiberavenda:=TFormLiberavenda.Create(self);
               FormLiberavenda.tag := 0;
               FormLiberavenda.ShowModal;
                if DMC.sds_liberaAUTO_LIBERA.Text = 'N' then
                begin
                exit;
                end else
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_venda =' + formvendas.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                end;
               end;
               end else
               IF Credito > 0 THEN
               begin
               if DM.SDS_ClientesTESTA_CREDITO.Text = 'S' then
               begin
               formliberavenda :=nil;
               FormLiberavenda:=TFormLiberavenda.Create(self);
               FormLiberavenda.tag := 0;
               FormLiberavenda.ShowModal;
                if DMC.sds_liberaAUTO_LIBERA.Text = 'N' then
                begin
                exit;
                end else
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_venda =' + formvendas.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                end;
               end;
               end;
               end;
               end;

               // totalizar com cartao
              if TotalizaFormaPagamento('F') > 0 then
              begin
              cartao:=0;
              CARTAO := ExatoCurrency(cTotalForma,2);
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='F';
              formvendas.Sds_pedidos.Post;


             sValor := FloatToStr(CARTAO);//  FormatFloat(CurrencyEdit2.Text,0.00);

             {verifica se o total dos Cartões é maior que o total da n_venda }
          {   if TotalizaFormaPagamento('F') < CARTAO then
             begin
             showmessage('Verifique o total dos cartões');
             CDSFormas.First;
             DBGridFormas.SetFocus;
             exit;
             abort;
             end; }
             end;


              if TotalizaFormaPagamento('M') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='M';
              formvendas.Sds_pedidos.Post;
              consumo:= cTotalForma;
              end;

              if TotalizaFormaPagamento('D') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='D';
              formvendas.Sds_pedidos.Post;
              brinde := cTotalForma;
              end;

              if TotalizaFormaPagamento('G') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='G';
              formvendas.Sds_pedidos.Post;
              garantia:= cTotalForma;
              end;

              if TotalizaFormaPagamento('O') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='G';
              formvendas.Sds_pedidos.Post;
              danificada:= cTotalForma;
              end;

             Total1:= ExatoCurrency(CurrencyEdit2.Value,2);
             //prazo

             if prazo > total1 then
             begin
             showmessage('Verifique o total do Crediario');
             CDSFormas.First;
             DBGridFormas.SetFocus;
             exit;
             end;


              suiButton2.Enabled := False;
              
              dtAux := (StrToDate (formvendas.Dt_venda.Text));
              pedido := inttostr(n_venda);

              formvendas.Sds_Pedidos.Edit;

              if formvendas.E_desconto.Text ='' then
              begin
              formvendas.Sds_PedidosVALOR_DESCONTO.Text := '0,00';
              end else
              formvendas.Sds_PedidosVALOR_DESCONTO.TEXT       := formvendas.E_DESCONTO.Text;
              begin
              formvendas.Sds_PedidosVALOR_ITENS.AsFloat       := EdtSubTotal.value;
              formvendas.Sds_PedidosVALOR_TOTAL.AsFloat       := EdtTotalGeral.value;
              formvendas.Sds_PedidosCod_EMPRESA.asfloat       := DM.SDS_EmpresaCODIGO.AsInteger;
              formvendas.Sds_PedidosSITUACAO.Text             := 'N';
              formvendas.Sds_PedidosVALOR_AVISTA.AsFloat      := AVISTA;
              formvendas.Sds_PedidosVALOR_PRAZO.AsFloat       := CurrencyEdit2.value;
              formvendas.Sds_pedidosVALOR_PAGO.ASFLOAT        := AVISTA;
              formvendas.Sds_pedidosVALOR_TROCO.AsFloat       := EdtTroco.Value;
              formvendas.Sds_PedidosSERIE_NOTA.Text           := '001';
              formvendas.Sds_PedidosHORA.text                 := TimeToStr(Time);
              end;

              IF DM.SDS_CONFIGURACOESREGISTRADORA.Text ='S' THEN
              BEGIN
              formvendas.Sds_PedidosSTATUS.Text            := 'C';
              end else
              begin
              formvendas.Sds_PedidosSTATUS.Text            := 'A';
              end;

          formvendas.Sds_Pedidos.Edit;
       //   formvendas.Sds_PedidosTP.Value := CDS_PAGTOTIPO_PAGAMENTO.AsString;
          formvendas.Sds_PedidosValor_total.asCurrency  := EdtTotalGeral.Value;;
          formvendas.Sds_PedidosVALOR_DESCONTO.Asfloat := EdtValorDesconto.Value;
          formvendas.Sds_PedidosENC_FINANCEIRO.AsFloat := EDTJUROS.Value;
       //   formvendas.Sds_PedidosPAGAMENTO.AsString := '';//Desc_cond_pagto.Text;
        //  formvendas.Sds_PedidosCOD_PAGTO.AsInteger := CDS_PAGTOCODIGO.AsString; 1; //DBComboPgto.Text;
          formvendas.Sds_Pedidos.post;
          //formvendas.Sds_Pedidos.ApplyUpdates(0);


          // DESCONTOS
          IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
          BEGIN
          formvendas.Sds_Pedidos_itens.First;
          Contador := 0;
          Contador:=formvendas.Sds_Pedidos_itens.RecordCount;
          i:=0;
          For I:=1 to Contador do
          begin
          formvendas.Sds_Pedidos_itens.Edit;
        //  TOTAL1:= (EdtValorDesconto.Value / Contador);
          desconto := formvendas.sds_pedidos_itenspreco_total.Value * EdtPercentualDesconto.Value / 100;
          formvendas.sds_pedidos_itensDESCONTO.value := ExatoCurrency(desconto,2);
          formvendas.Sds_Pedidos_itens.post;
          formvendas.Sds_Pedidos_itens.Next;
          end;

          // ACHA RESTO DA DIVISÃO
          formvendas.Sds_Pedidos_itens.First;
          Total1 := 0;
          X:= 0;
          X:= X + ExatoCurrency(formvendas.sds_pedidos_itensDESCONTO.AsCurrency,2);
          formvendas.Sds_Pedidos_itens.Next;
          TOTAL1 := ExatoCurrency(X,2);
          While not formvendas.Sds_Pedidos_itens.Eof do
          begin
          X:= X + ExatoCurrency(formvendas.sds_pedidos_itensDESCONTO.AsCurrency,2);
          formvendas.Sds_Pedidos_itens.Next;
          Total1:= ExatoCurrency(X,2);
          end;

          valor_desc := FloatToStr(formvendas.sds_pedidos_itensDESCONTO.MaxValue);
          formvendas.sds_pedidos_itens.Locate('DESCONTO',valor_desc,[loPartialKey, loCaseInsensitive]);

         // total_venda := (Total1 - EdtValorDesconto.Value);
          total_venda := ExatoCurrency((EdtValorDesconto.Value - Total1),2);
         // CurrencyEdit9.Value := total_venda;
          formvendas.sds_pedidos_itens.Edit;
          
          IF TOTAL1 > EdtValorDesconto.Value then
          begin
           formvendas.sds_pedidos_itens.Edit;
           formvendas.sds_pedidos_itensDESCONTO.Value := Abs(formvendas.sds_pedidos_itensDESCONTO.Value - total_venda);
           formvendas.sds_pedidos_itens.Post;
          end ELSE

          IF TOTAL1 < EdtValorDesconto.Value then
          begin
           formvendas.sds_pedidos_itens.Edit;
           formvendas.sds_pedidos_itensDESCONTO.Value := Abs(formvendas.sds_pedidos_itensDESCONTO.VALUE + total_venda);
           formvendas.sds_pedidos_itens.Post;
          end;
          end;



           { dm.ProxCod.Close;
            dm.ProxCod.SQL.Clear;
            dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PEDIDOS where cod_empresa =:cod_emp');
            dm.ProxCod.ParamByName('cod_emp').AsInteger := iemp;
            DM.ProxCod.Open;
            N_venda:= dm.ProxCodN_CODIGO.asinteger +1;   }

            sds_vendas.Active := true;
            sds_vendas.Insert;
            sds_vendas.Edit;
            sds_vendas.FieldByName('CODIGO').AsInteger        := n_venda;
            sds_vendas.FieldByName('VALOR_ITENS').AsFloat     := StrToFloatDef(formvendas.Sds_pedidosVALOR_ITENS.Text,0.00);//// formvendas.Total;
            sds_vendas.FieldByName('ENC_FINANCEIRO').AsFloat  := StrToFloatDef(formvendas.Sds_pedidosENC_FINANCEIRO.Text,0.00);//// formvendas.Total;
            sds_vendas.FieldByName('VALOR_DESCONTO').AsFloat  := StrToFloatDef(formvendas.Sds_pedidosVALOR_DESCONTO.Text,0.00);//(formvendas.Total - formvendas.ValCompra);
            sds_vendas.FieldByName('VALOR_TOTAL').AsFloat     := StrToFloatDef(formvendas.Sds_pedidosVALOR_TOTAL.Text,0.00);// formvendas.ValCompra;
            sds_vendas.FieldByName('VALOR_COMISSAO').AsFloat  := StrToFloatDef(formvendas.Sds_pedidosVALOR_COMISSAO.Text,0.00); //Comissao;
            sds_vendas.FieldByName('USUARIO').Asstring        := formvendas.Sds_pedidosUSUARIO.asstring;
            sds_vendas.FieldByName('DATA_PEDIDO').AsDateTime      := formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
            sds_vendas.FieldByName('DATA_ENTREGA').AsDateTIME     := formvendas.Sds_pedidosDATA_ENTREGA.AsDateTime;
            sds_vendas.FieldByName('CODIGO_CLIENTE').asinteger:= formvendas.Sds_pedidosCODIGO_CLIENTE.asinteger;
            sds_vendas.FieldByName('NOME_CLIENTE').aSSTRING   := formvendas.Sds_pedidosNOME_CLIENTE.ASSTRING;
            sds_vendas.FieldByName('PAGAMENTO').AsString      := formvendas.Sds_pedidosPAGAMENTO.AsString;
            sds_vendas.FieldByName('STATUS').AsString         := formvendas.Sds_pedidosSTATUS.AsString;
            sds_vendas.FieldByName('SITUACAO').AsString       := formvendas.Sds_pedidosSITUACAO.ASSTRING;
         //  Parambyname('USUARIO_ENTREGA').Value   := NullValueString;
            sds_vendas.FieldByName('TP').AsString             := formvendas.Sds_pedidosTP.AsString;
            sds_vendas.FieldByName('OBSERVACOES').AsString    := formvendas.Sds_pedidosOBSERVACOES.AsString;
            sds_vendas.FieldByName('COD_VENDEDOR').AsInteger  := formvendas.Sds_pedidosCOD_VENDEDOR.AsInteger;
         //  Parambyname('COD_PAGTO').Value         := NullValueString;
         //  Parambyname('N_CUPOM').value           := NullValueString;
         //   Parambyname('N_ECF').Value             := NullValueString;
            sds_vendas.FieldByName('COD_EMPRESA').AsInteger   := iemp;
            sds_vendas.FieldByName('HORA').AsString           := TimeToStr(Time);
            sds_vendas.FieldByName('VALOR_ACRESCIMOS').AsFloat := StrToFloatDef(formvendas.Sds_pedidosVALOR_ACRESCIMOS.Text,0.00);

        {   if formvendas.Sds_pedidosCOD_ORCAMENTO.Value < 1 then
           sds_pedidos.FieldByName('COD_ORCAMENTO').AsInteger  := Null
           else }
            sds_vendas.FieldByName('COD_ORCAMENTO').AsInteger  := formvendas.Sds_pedidosCOD_ORCAMENTO.AsInteger;

         //  Parambyname('COD_PEDIDO').Value         := NullValueString;

        {   if formvendas.Sds_pedidosCOD_OS.value  < 1 then
           sds_pedidos.FieldByName('COD_OS').AsVariant         := Null
           else }
            sds_vendas.FieldByName('COD_OS').AsInteger         :=  formvendas.Sds_pedidosCOD_OS.AsInteger;

          { if formvendas.sds_pedidosnum_nota.Value  < 1  then
           sds_pedidos.FieldByName('NUM_NOTA').AsInteger       :=Null
           else}
            sds_vendas.FieldByName('NUM_NOTA').Text            := formvendas.sds_pedidosnum_nota.text;

            sds_vendas.FieldByName('SERIE_NOTA').asstring      := formvendas.sds_pedidosSERIE_NOTA.AsString;

            sds_vendas.FieldByName('ENDERECO').AsString        := formvendas.Sds_pedidosENDERECO.AsString;
            sds_vendas.FieldByName('CPF_CNPJ').AsString        := formvendas.Sds_pedidosCPF_CNPJ.AsString;
            sds_vendas.FieldByName('RG_IE').AsString           := formvendas.Sds_pedidosRG_IE.AsString;
            sds_vendas.FieldByName('FONE').Text                := formvendas.Sds_pedidosFONE.Text;
            sds_vendas.FieldByName('CIDADE').AsString          := formvendas.Sds_pedidosCIDADE.AsString;
            sds_vendas.FieldByName('BAIRRO').AsString          := formvendas.Sds_pedidosBAIRRO.AsString;
            sds_vendas.FieldByName('N_PARTIDA').Text           := formvendas.Sds_pedidosN_PARTIDA.Text ;
            sds_vendas.FieldByName('PROPRIEDADE').Text         := formvendas.Sds_pedidosPROPRIEDADE.Text ;
            sds_vendas.FieldByName('QUANT_VENDIDA').AsFloat    := StrToFloatDef(formvendas.Sds_pedidosQUANT_VENDIDA.Text,0.00);
            sds_vendas.FieldByName('SALDO_VENDIDO').AsFloat    := StrToFloatDef(formvendas.Sds_pedidosSALDO_VENDIDO.Text,0.00);
            sds_vendas.FieldByName('MED_VETERINARIO').Text     := formvendas.Sds_pedidosMED_VETERINARIO.Text ;
            sds_vendas.FieldByName('DATA_VACINA').AsDateTime   := formvendas.Sds_pedidosDATA_VACINA.AsDateTime;
            sds_vendas.FieldByName('VALOR_AVISTA').AsFloat     := StrToFloatDef(formvendas.Sds_pedidosVALOR_AVISTA.text,0.00);
            sds_vendas.FieldByName('VALOR_PRAZO').AsFloat      := StrToFloatDef(formvendas.Sds_pedidosVALOR_PRAZO.text,0.00);
            sds_vendas.FieldByName('UF').AsString              := formvendas.Sds_pedidosUF.AsString;
            sds_vendas.FieldByName('COD_IBGE').AsString        := formvendas.Sds_pedidosCOD_IBGE.AsString;
            sds_vendas.FieldByName('CEP').AsString             := formvendas.Sds_pedidosCEP.AsString;
            sds_vendas.FieldByName('NUMERO').AsString          := formvendas.Sds_pedidosnumero.AsString;
            sds_vendas.FieldByName('TIPO').AsString            := formvendas.Sds_pedidosTIPO.AsString;
            sds_vendas.FieldByName('VALOR_PAGO').AsFloat       := StrToFloatDef(formvendas.Sds_pedidosVALOR_PAGO.text,0.00);
            sds_vendas.FieldByName('VALOR_TROCO').ASFLOAT      := StrToFloatDef(formvendas.Sds_pedidosVALOR_TROCO.text,0.00);
            sds_vendas.FieldByName('ENTREGADOR').Text          := formvendas.Sds_pedidosENTREGADOR.Text ;
            sds_vendas.FieldByName('TIPO_PEDIDO').Text         := formvendas.Sds_pedidosTIPO_PEDIDO.Text ;
            sds_vendas.FieldByName('FECHADO').Text             := formvendas.Sds_pedidosFECHADO.Text ;
            sds_vendas.FieldByName('MESA').Text                := formvendas.Sds_pedidosMESA.Text ;
            sds_vendas.FieldByName('REFERENCIA').Text          := formvendas.Sds_pedidosREFERENCIA.Text ;
            sds_vendas.FieldByName('CELULAR').Text             := formvendas.Sds_pedidosCELULAR.Text ;
            sds_vendas.FieldByName('PROD_RURAL').AsString      := formvendas.Sds_pedidosPROD_RURAL.AsString;
            sds_vendas.FieldByName('IE_PRODUTOR').Text         := formvendas.Sds_pedidosIE_PRODUTOR.Text ;
            sds_vendas.FieldByName('VLR_PIS').AsFloat          := StrToFloatDef(formvendas.Sds_pedidosVLR_PIS.text,0.00);
            sds_vendas.FieldByName('VLR_COFINS').ASFLOAT       := StrToFloatDef(formvendas.Sds_pedidosVLR_COFINS.text,0.00);
            sds_vendas.FieldByName('KM').ASSTRING              := formvendas.Sds_pedidoskm.AsString;
            sds_vendas.FieldByName('CHAVE_FP').Text            := formvendas.Sds_pedidosCHAVE_FP.Text ;
            sds_vendas.FieldByName('CHAVE_FP_CANCEL').Value    := formvendas.Sds_pedidosCHAVE_FP_CANCEL.AsString;
          // Parambyname('CUPON_CANCELADO').value    := NullValueString;
         //  Parambyname('CRZ').Value                := NullValueString;
            sds_vendas.FieldByName('ANO').ASSTRING             := FormatDateTime('yyyy',dtAux);
            sds_vendas.FieldByName('MODELO_NF').Text           := formvendas.Sds_pedidosMODELO_NF.Text ;
            sds_vendas.FieldByName('CFOP_NF').Text             := formvendas.Sds_pedidosCFOP.Text ;
         {  if formvendas.Sds_pedidosCOD_OS_AUTO.Value < 1 then
           sds_pedidos.FieldByName('COD_OS_AUTO').AsInteger    := null
           else }
            sds_vendas.FieldByName('COD_OS_AUTO').AsInteger    :=  formvendas.Sds_pedidosCOD_OS_AUTO.AsInteger;
            sds_vendas.Post;
            sds_vendas.ApplyUpdates(0);




         formprincipal.log(codigo_usuario,'venda',inttostr(n_venda),'INCLUIU','INCLUSAO DA n_venda Nº '+inttostr(n_venda)+'Cliente: '+ formvendas.DBComboCliente.text+' - '+formvendas.Desc_cliente.text);


          TP :='C';
          if cDSFormas.Locate('TIPO',TP,[]) = True then;
          begin
              //CDSFormas.Edit;
          total := CDSFormasVALOR.AsFloat + Encargos;
              //CDSFormas.Next;
              //CDSFormas.Prior;
          end;


              {gravar formas de pagto na tabela pedidos formas}
              formvendas.sds_pagto.Close;
              formvendas.sds_pagto.open;
              with CDSFormas do
              begin
                 first;
                 while not eof do
                    begin
                         if CDSFormasVALOR.AsCurrency > 0 then
                         begin
                           formvendas.sds_pagto.Insert;
                           formvendas.sds_pagtoCOD_venda.AsInteger  := n_venda;
                           formvendas.sds_pagtoCOD_FORMA.AsInteger  := StrToInt(CDSFormasCODIGO.Text);
                           formvendas.sds_pagtoDESC_FORMA.Text      := CDSFormasDESCRICAO.Text;
                           formvendas.sds_pagtoTIPO.Text            := CDSFormasTIPO.Text;
                           if CDSFormasTIPO.Text = 'C' then
                           begin
                           formvendas.sds_pagtoVALOR.AsFloat        := CDSFormasVALOR.AsFloat + Encargos;
                           end else
                           if CDSFormasTIPO.Text = 'A' then
                           begin
                           formvendas.sds_pagtoVALOR.AsFloat        := CDSFormasVALOR.AsFloat - EdtTroco.Value;
                           end else
                           if CDSFormasTIPO.Text = 'H' then
                           begin
                           formvendas.sds_pagtoVALOR.AsFloat        := CDSFormasVALOR.AsFloat + Encargos - EdtTroco.Value;
                           end else
                           if CDSFormasTIPO.Text = 'F' then
                           begin
                           formvendas.sds_pagtoVALOR.AsFloat        := CDSFormasVALOR.AsFloat + Encargos;
                           end else
                           if CDSFormasTIPO.Text = 'V' then
                           begin
                           formvendas.sds_pagtoVALOR.AsFloat        := CDSFormasVALOR.AsFloat;
                           end;

                           formvendas.sds_pagto.Post;
                           formvendas.sds_pagto.ApplyUpdates(0);
                         end;
                         next;
                    end;
               end;

              {gravar pagto em cheques na tabela pedidos formas}
              if TotalizaFormaPagamento('B') > 0 then
              begin
              formvendas.sds_pagto_ch.Close;
              formvendas.sds_pagto_ch.open;
              with cds_cheques do
              begin
                 first;
                 while not eof do
                    begin
                         if cds_chequesVALOR.AsCurrency > 0 then
                         begin
                           formvendas.sds_pagto_ch.Insert;
                           formvendas.sds_pagto_chCOD_venda.AsInteger       := n_venda;
                           formvendas.sds_pagto_chCOD_PAGTO.AsString         := cds_chequescond_pagto.Text;
                           formvendas.sds_pagto_CHVALOR.AsFloat              := cds_chequesVALOR.AsFloat;
                           formvendas.sds_pagto_chPARC.Text                 := cds_chequesPARC.Text;
                           formvendas.sds_pagto_chCOD_EMPRESA.AsInteger     := IEMP;
                           formvendas.sds_pagto_ch.Post;
                           formvendas.sds_pagto_CH.ApplyUpdates(0);
                         end;
                         next;
                    end;
                end;
                end;




                if DM.IBTransaction.Active then
                   DM.IBTransaction.Commit;
                DM.IBTransaction.StartTransaction;
                   with DM.IBSQL do
                    begin
                       Close;
                       SQL.Clear;
                       SQL.Add('delete from PEDIDOS_ITENS where codigo_ID =:n_venda and cod_empresa =:cod_emp');
                       ParamByName('n_venda').Asinteger :=n_venda;
                       ParamByName('cod_emp').AsInteger := iemp;
                       ExecSQL;
                   end;
                  dm.IBTransaction.CommitRetaining;


                //LOG ESTOQUE

                  try
                    with formvendas.Sds_Pedidos_itens do
                    begin
                       First;
                         with dm.Consulta do
                           begin
                              close;
                              sql.Clear;
                              sql.add('SELECT ESTOQUE FROM PRODUTOS WHERE CODIGO = :CODPRO');
                              Parambyname('CODPRO').AsInteger:= formvendas.Sds_Pedidos_itensCodigo_prod.AsInteger;
                              open;
                              estoque:= fieldbyname('ESTOQUE').AsCurrency;
                           end;


                        with DM.logEst do
                         begin
                          close;
                          parambyname('ID_EMPRESA').AsInteger     := iemp;
                          parambyname('ID_FILIAL').AsInteger      := iemp;
                          parambyname('ID_AJUSTE').AsInteger      := 1; //DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                          Parambyname('ID_PRODUTO').AsInteger     := formvendas.Sds_Pedidos_itensCodigo_prod.AsInteger;
                          Parambyname('ID_LOTE').Value            := null;
                          Parambyname('ID_PRODUTO_SERIE').Value   := null;
                          Parambyname('DATA').AsDateTime          := date;
                          Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
                          parambyname('ID_MOVIMENTO').AsInteger   :=  n_venda;
                          Parambyname('FRACAO').Asfloat           := formvendas.Sds_Pedidos_itensFRACAO.AsINTEGER;
                          Parambyname('ESTOQUE_ANTERIOR').Asfloat := estoque;
                          Parambyname('QUANTIDADE').Asfloat       :=  formvendas.Sds_Pedidos_itensQUANTIDADE.AsFloat;
                          Parambyname('ESTOQUE_POSTERIOR').Asfloat := ESTOQUE - formvendas.Sds_Pedidos_itensQUANTIDADE.AsFloat;
                          Parambyname('SITUACAO_ESTOQUE').ASINTEGER := 2; // n_venda
                          Parambyname('OPERACAO').TEXT              := '-';
                          Parambyname('ACAO_BD').TEXT               := 'I';
                          Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
                          parambyname('COD_venda').AsInteger      :=  (n_venda);
                          parambyname('COD_COMPRA').VALUE         :=  null;
                          Parambyname('HISTORICO').TEXT           := copy('Venda No. '+inttostr(n_venda)+' - '+formvendas.Desc_cliente.Text,1,60);
                          Parambyname('HORA').AsString           := TimeToStr(Time);
                          ExecSQL;
                        end;
                      //  DM.IBTransaction.Commit;
                       formvendas.Sds_Pedidos_itens.next;
                      end
                     finally
                     dm.logEst.Close;
                     end;



    sds_vendas_itens.Active := false;
    sds_vendas_itens.Active := true;
    try
      with formvendas.Sds_Pedidos_itens do
        begin
         First;
             while not eof do
             begin
              sds_vendas_itens.Insert;
              sds_vendas_itens.Edit;
              sds_vendas_itens.FieldByName('CODIGO').AsInteger                 := 1; // DM.ProxCodN_CODIGO.ASINTEGER + 1;
              sds_vendas_itens.FieldByName('CODIGO_ID').AsInteger              := n_venda;
              sds_vendas_itens.FieldByName('ITEN').AsInteger                   := formvendas.Sds_Pedidos_itensIten.AsInteger;
              sds_vendas_itens.FieldByName('CODIGO_PROD').AsInteger            := formvendas.Sds_Pedidos_itensCodigo_prod.AsInteger;
              sds_vendas_itens.FieldByName('CODIGO_PRODUTO').AsString          := formvendas.Sds_Pedidos_itensCodigo_Produto.AsString;
              sds_vendas_itens.FieldByName('DESCRICAO_PRODUTO').AsString       := formvendas.Sds_Pedidos_itensDESCRICAO_PRODUTO.AsString;
              sds_vendas_itens.FieldByName('PRECO_UNITARIO').AsCurrency        := formvendas.Sds_Pedidos_itensPreco_unitario.AsFloat;
              sds_vendas_itens.FieldByName('DESCONTO').AsCurrency              := formvendas.Sds_Pedidos_itensDesconto.AsFloat;
              sds_vendas_itens.FieldByName('QUANTIDADE').AsFloat               := formvendas.Sds_Pedidos_itensQuantidade.AsFloat;
              sds_vendas_itens.FieldByName('PRECO_TOTAL').AsCurrency           := StrToCurrDef(formvendas.Sds_Pedidos_itensPreco_total.text,0.00);
              sds_vendas_itens.FieldByName('COMISSAO').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensComissao.text,0.00);
            //  Parambyname('DEV').Value                    := null;
            //  Parambyname('QNT_DEV').Value                := NULL;
            //  Parambyname('VAL_DEV').Value                := null;
              sds_vendas_itens.FieldByName('ENC_FINANCEIRO').AsCurrency        := StrToCurrDef(formvendas.Sds_Pedidos_itensENC_FINANCEIRO.text,0.00);
              sds_vendas_itens.FieldByName('UNIDADE').AsString                 := formvendas.Sds_Pedidos_itensunidade.AsString;
              sds_vendas_itens.FieldByName('SIT_TRIBUTARIA').AsString          := formvendas.Sds_Pedidos_itensSit_tributaria.AsString;
              sds_vendas_itens.FieldByName('VENDEDOR').AsInteger               := formvendas.Sds_Pedidos_itensVENDEDOR.AsInteger;
              sds_vendas_itens.FieldByName('FRACAO').AsInteger                 := formvendas.Sds_Pedidos_itensfracao.AsInteger;
              sds_vendas_itens.FieldByName('COD_NCM').AsString                  := formvendas.Sds_Pedidos_itenscod_ncm.text;
              sds_vendas_itens.FieldByName('PROD_SERV').AsString               := formvendas.Sds_Pedidos_itensPROD_SERV.text;
              sds_vendas_itens.FieldByName('PERC_ISS').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_ISS.text,0.00);
              sds_vendas_itens.FieldByName('BASE_ISS').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_ISS.text,0.00);
              sds_vendas_itens.FieldByName('VL_ISS').AsCurrency                := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_ISS.text,0.00);
              sds_vendas_itens.FieldByName('PERC_ICM').AsCurrency               := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_ICM.text,0.00);
              sds_vendas_itens.FieldByName('BASE_ICMS').AsCurrency             := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_ICMS.text,0.00);
              sds_vendas_itens.FieldByName('VL_ICM').AsCurrency                := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_ICM.text,0.00);
              sds_vendas_itens.FieldByName('PERC_IPI').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_IPI.text,0.00);
              sds_vendas_itens.FieldByName('BASE_IPI').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_IPI.text,0.00);
              sds_vendas_itens.FieldByName('VL_IPI').AsCurrency                := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_IPI.text,0.00);
              sds_vendas_itens.FieldByName('PERC_COFINS').AsCurrency           := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_COFINS.text,0.00);
              sds_vendas_itens.FieldByName('BASE_COFINS').AsCurrency           := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_COFINS.text,0.00);
              sds_vendas_itens.FieldByName('VL_COFINS').AsCurrency             := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_COFINS.text,0.00);
              sds_vendas_itens.FieldByName('PERC_ICMS_SUBST').AsCurrency       := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_ICMS_SUBST.text,0.00);
              sds_vendas_itens.FieldByName('BASE_ICMS_SUBST').AsCurrency       := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_ICMS_SUBST.text,0.00);
              sds_vendas_itens.FieldByName('VL_ICMS_SUBST').AsCurrency         := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_ICMS_SUBST.Text,0.00);
              sds_vendas_itens.FieldByName('PERC_PIS').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensPERC_PIS.text,0.00);
              sds_vendas_itens.FieldByName('BASE_PIS').AsCurrency              := StrToCurrDef(formvendas.Sds_Pedidos_itensBASE_PIS.text,0.00);
              sds_vendas_itens.FieldByName('VL_PIS').AsCurrency                := StrToCurrDef(formvendas.Sds_Pedidos_itensVL_PIS.text,0.00);
            //  sds_vendas_itens.FieldByName('IMPRIME').Value                    := null;
              sds_vendas_itens.FieldByName('COD_EMPRESA').AsInteger            := iEmp;
              sds_vendas_itens.FieldByName('ID_BICO').AsString                 := formvendas.sds_pedidos_itensCODIGO_BICO.text;
              sds_vendas_itens.FieldByName('ID_BOMBA').AsString                := formvendas.sds_pedidos_itensBOMBA.text;
              sds_vendas_itens.FieldByName('ID_TANQUE').AsString               := formvendas.sds_pedidos_itensTANQUE.text;
              sds_vendas_itens.FieldByName('BICO').AsString                    := formvendas.sds_pedidos_itensBICO.text;
              sds_vendas_itens.post;


              next;
            end;
          end;
    finally
        sds_vendas_itens.ApplyUpdates(0);
    end;

        DM.SDS_Usuarios.Locate('USUARIO', Formprincipal.userlogado,[]);
        formprincipal.usuario_temp := DM.SDS_UsuariosCODIGO.TEXT;


   {  with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from crediario where codigo_compra =:venda and cod_empresa =:cod_emp');
         ParamByName('venda').AsInteger := n_venda;
         ParamByName('cod_emp').AsInteger := iemp;
         ExecSQL;
     end;
       DM.IBSQL.close;

     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from movimento_diario where movimento_diario.codigo_venda =:n_venda and cod_empresa =:cod_emp');
         ParamByName('n_venda').Asinteger := n_venda;
         ParamByName('cod_emp').AsInteger := iemp;
         ExecSQL;
     end;
         DM.IBSQL.close;

     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from cheques where cheques.codigo_compra =:venda and cod_empresa =:cod_emp');
         ParamByName('venda').AsInteger := n_venda;
         ParamByName('cod_emp').AsInteger := iemp;
         ExecSQL;
     end;
       DM.IBSQL.close;     }


        //AVISTA
        if TotalizaFormaPagamento('A') > 0 then
        begin
              if avista > 0 then
               begin
                 // lancamento no caixa

                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger :=  1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := avista;
                    qrcaixa_mov.parambyname('valor').asfloat := avista;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 3; // n_venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := copy('venda No. '+inttostr(n_venda)+' - '+formvendas.Desc_cliente.Text,1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'VEN';
                    qrcaixa_mov.parambyname('codigo_venda').AsInteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                   // dm.IBTransaction.CommitRetaining;
                  end;

              if formvendas.Sds_pedidossaldo_troco.AsFloat > 0 then
              begin
                 FormTroco := TFormTroco.create(Self);
                 FormTroco.tag := 1;
                 FormTroco.showmodal;
               end;
         end;

                 //CONSUMO
        if TotalizaFormaPagamento('M') > 0 then
        begin

              if CONSUMO > 0 then
               begin
                 // lancamento no caixa
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger :=  1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := 0;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 3; // n_venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := copy('venda No. '+inttostr(n_venda)+' - Utilizada Como Consumo',1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CON';
                    qrcaixa_mov.parambyname('codigo_venda').AsInteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                  //  dm.IBTransaction.CommitRetaining;
                  end;


         end;

              //DANIFICADO
        if TotalizaFormaPagamento('O') > 0 then
        begin
              if DANIFICADA > 0 then
               begin
                 // lancamento no caixa


                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger :=  1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := 0;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 3; // n_venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := copy('venda No. '+inttostr(n_venda)+' - Mercadoria danificada',1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'DAN';
                    qrcaixa_mov.parambyname('codigo_venda').AsInteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                  //  dm.IBTransaction.CommitRetaining;
                  end;


         end;
                //GARANTIA
        if TotalizaFormaPagamento('G') > 0 then
        begin
              if garantia > 0 then
               begin
                 // lancamento no caixa

                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger :=  1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := 0;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 3; // n_venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := copy('venda No. '+inttostr(n_venda)+' - Mercadoria em Garantia',1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'GAR';
                    qrcaixa_mov.parambyname('codigo_venda').AsInteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                  //  dm.IBTransaction.CommitRetaining;
                  end;


         end;

          // BRINDE
        if TotalizaFormaPagamento('D') > 0 then
        begin

              if brinde > 0 then
               begin
                 // lancamento no caixa


                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger :=  1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := 0;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 3; // n_venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := copy('venda No. '+inttostr(n_venda)+' - Mercadoria como Brinde',1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'BRI';
                    qrcaixa_mov.parambyname('codigo_venda').AsInteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                //    dm.IBTransaction.CommitRetaining;
                  end;


         end;

        //CHEQUES DINHEIRO AVULSO
        if TotalizaFormaPagamento('B') > 0 then
        begin

            if CHEQUE_D > 0 then
               begin
                 // lancamento no caixa

                  // fim lancto no caixa

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;


                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := CHEQUE_D;
                    qrcaixa_mov.parambyname('valor').asfloat := CHEQUE_D;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 5; // CHEQUE AVISTA
                    qrcaixa_mov.parambyname('historico').asstring := copy('venda No. '+inttostr(n_venda)+' - '+formvendas.Desc_cliente.Text,1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                    qrcaixa_mov.parambyname('codigo_venda').AsInteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;

                  end;

              if formvendas.Sds_pedidossaldo_troco.AsFloat > 0 then
              begin
                 FormTroco := TFormTroco.create(Self);
                 FormTroco.tag := 1;
                 FormTroco.showmodal;
              end;
         end;


         //n_venda no cartao....
        if TotalizaFormaPagamento('F') > 0 then
        BEGIN
          cadastrouch := false;

         Application.CreateForm(TFrmDadosAdm, FrmDadosAdm);
         FrmDadosAdm.EdtValor.Text:= CurrToStr(TotalizaFormaPagamento('F'));
         FrmDadosAdm.EdtParcelamento.Text:= '1';
         FrmDadosAdm.Edtvalor.Value:= CARTAO;
         FrmDadosAdm.Edtvenda.Text := inttostr(n_venda);
         FrmDadosAdm.dt_venda.Date := formvendas.dt_venda.Date;
         FrmDadosAdm.EdtCli.Text  := formvendas.DBComboCliente.Text;
         FrmDadosAdm.EdtCli1.Text := formvendas.Desc_cliente.Text;
         FrmDadosAdm.showmodal;

         if cadastrouch = false then
         begin

            suibutton2.enabled := true;

              //LOG ESTOQUE

              try
               try
                 contador:=0;
                 e:=0;
                 formvendas.Sds_Pedidos_itens.First;
                 Contador:=formvendas.Sds_Pedidos_itens.RecordCount;
                 For E:=1 to Contador do
                  begin
                     dm.ProxCod.Close;
                     dm.ProxCod.SQL.Clear;
                     dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
                     DM.ProxCod.Open;


                   // BUSCA ESTOQUE
                    try
                      with dm.Consulta do
                         begin
                            close;
                            sql.Clear;
                            sql.add('SELECT ESTOQUE FROM PRODUTOS WHERE CODIGO = :CODPRO');
                            Parambyname('CODPRO').AsInteger:= formvendas.Sds_Pedidos_itensCodigo_prod.AsInteger;
                            ExecSQL;
                            estoque:= fieldbyname('ESTOQUE').AsCurrency;
                         end;
                     // dm.IBTransaction.Commit;
                    except
                      //dm.IBTransaction.StartTransaction;
                      showmessage('Erro ao buscar o custo do produto');
                    end;

                  with DM.logEst do
                     begin
                        close;
                        parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
                        parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
                        parambyname('ID_AJUSTE').AsInteger      := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                        Parambyname('ID_PRODUTO').AsInteger     := formvendas.Sds_Pedidos_itensCodigo_prod.AsInteger;
                        Parambyname('ID_LOTE').Value            := null;
                        Parambyname('ID_PRODUTO_SERIE').Value   := null;
                        Parambyname('DATA').AsDateTime          := date;
                        Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
                        parambyname('ID_MOVIMENTO').AsInteger   :=  n_venda;
                        Parambyname('FRACAO').Asfloat           := formvendas.Sds_Pedidos_itensFRACAO.AsINTEGER;
                        Parambyname('ESTOQUE_ANTERIOR').Asfloat := estoque;
                        Parambyname('QUANTIDADE').Asfloat       :=  formvendas.Sds_Pedidos_itensQUANTIDADE.AsFloat;
                        Parambyname('ESTOQUE_POSTERIOR').Asfloat := ESTOQUE + formvendas.Sds_Pedidos_itensQUANTIDADE.AsFloat;
                        Parambyname('SITUACAO_ESTOQUE').ASINTEGER := 2; // n_venda
                        Parambyname('OPERACAO').TEXT              := '-';
                        Parambyname('ACAO_BD').TEXT               := 'E';
                        Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
                        parambyname('COD_venda').AsInteger      := n_venda;
                        parambyname('COD_COMPRA').VALUE         :=  null;
                        Parambyname('HISTORICO').TEXT           := copy('Exclusão da venda No. '+inttostr(n_venda)+' - '+formvendas.Desc_cliente.Text,1,60);
                        Parambyname('HORA').AsString           := TimeToStr(Time);
                        ExecSQL;
                      end;
                     // DM.IBTransaction.Commit;

                      formvendas.Sds_Pedidos_itens.next;
                  end;
                   except
                  //DM.IBTransaction.Rollback;
                  showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                              'Verifique que já foi lançFDo');
                end;
              finally
               dm.logEst.Close;
               end;


             with DM.IBSQL do
              begin
                 Close;
                 SQL.Clear;
                 SQL.Add('delete from pedidos where codigo =:n_venda and cod_empresa =:cod_emp');
                 ParamByName('n_venda').AsInteger := (n_venda);
                 ParamByName('cod_emp').AsInteger := iemp;
                 ExecSQL;
             end;
           //  DM.IBTransaction.CommitRetaining;

               exit;
             end;

         end;


         // VALE
         if TotalizaFormaPagamento('V') > 0 then
         BEGIN
            saldo :=0;
            Total :=0;
            Total := DM1.Sds_valeTrocoVALOR_UTILIZADO.AsFloat + VALE;
            saldo := DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat - VALE;

            dm1.sds_valeTroco_pagto.Active := False;
            dm1.sds_valeTroco_pagto.Active := True;
            dm1.sds_valeTroco_pagto.Insert;
            dm1.sds_valeTroco_pagtoCOD_VALE.AsInteger := DM1.Sds_valeTrocoCODIGO.AsInteger;
            dm1.sds_valeTroco_pagtoDATA.AsDateTime    := Date;
            dm1.sds_valeTroco_pagtoSALDO_ANTERIOR.AsFloat := DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat;
            dm1.sds_valeTroco_pagtoVALOR_PAGO.AsFloat     := VALE;
            DM1.sds_valeTroco_pagtoSALDO_ATUAL.AsFloat    := saldo;
            dm1.sds_valeTroco_pagto.Post;
            dm1.sds_valeTroco_pagto.ApplyUpdates(0);

            if DM1.Sds_valeTroco.Locate('CODIGO',Edit3.Text,[]) = True then
            BEGIN
            dm1.Sds_valeTroco.Edit;
            DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat     := saldo;
            DM1.Sds_valeTrocoVALOR_UTILIZADO.AsFloat := total;
            dm1.Sds_valeTroco.Post;
            dm1.Sds_valeTroco.ApplyUpdates(0);
            end;

           if VALE > 0 then
           BEGIN

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := VALE;
                    qrcaixa_mov.parambyname('valor').asfloat := VALE;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 43; // CHEQUE AVISTA
                    qrcaixa_mov.parambyname('historico').asstring := copy('n_venda No. '+inttostr(n_venda)+' - '+formvendas.Desc_cliente.Text,1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'VAL';
                    qrcaixa_mov.parambyname('codigo_venda').Asinteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                  //  dm.IBTransaction.CommitRetaining;
            end;


              if formvendas.Sds_pedidossaldo_troco.AsFloat > 0 then
              begin
                 FormTroco := TFormTroco.create(Self);
                 FormTroco.showmodal;
              end;

            if  DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat > 0 then
            begin
              if Application.MESSAGEBOX('Deseja Emitir o Vale Troco com o Saldo Atualizado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
              begin

              with dm1.QConsValeTroco do
                begin
                   close;
                   sql.Clear;
                   sql.Text:= sSql;
                      begin
                         if DM1.Sds_valeTrocoCODIGO.Text > '' then
                            begin
                                begin
                                     sql.Add(' WHERE V.CODIGO = :COD_VALE AND V.COD_EMPRESA = :CODEMP');
                                     Parambyname('COD_VALE').AsInteger:= StrToInt(edit3.Text);
                                     Parambyname('codemp').AsInteger:= iEmp;
                                 end;
                         open;
                         end;

                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    FormRelValeTroco:=TFormrELValetroco.Create(self);
                    FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
                    FormRelValeTroco.RLReport1.Prepare;
                    FormRelValeTroco.RLReport1.PreviewModal;
                    end else
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    FormRelValeTroco:=TFormrELValetroco.Create(self);
                    //FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
                    FormRelValeTroco.RLReport1.Prepare;
                    FormRelValeTroco.RLReport1.PreviewModal;
                    end;
                    end;
                end;
               end;
              end;
           end;


        // PRAZO
        if TotalizaFormaPagamento('C') > 0 then
        //try
         BEGIN
            formvendas.Sds_pedidos.Edit;
         if ClientDataSet1.RecordCount >0 then
          begin
           ClientDataset1.First;
           Contador:= ClientDataset1.RecordCount;
           For I:=1 to Contador do
           begin
           SPC_CREDIARIO.Params[0].AsInteger       :=  (n_venda);
           SPC_CREDIARIO.Params[1].Value       :=  StrToInt(formvendas.DBComboCliente.Text);
           SPC_CREDIARIO.Params[2].AsDate      :=  formvendas.dt_venda.Date;
           SPC_CREDIARIO.Params[3].AsDate      :=  ClientDataset1.FieldByname('DataVencimento').AsDateTime;
           SPC_CREDIARIO.Params[4].AsString    :=  'venda Nº'+' '+inttostr(n_venda)+' / '+ Desc_cond_pagto.Text;
           SPC_CREDIARIO.Params[5].AsString    :=  Formprincipal.userlogado;
           SPC_CREDIARIO.Params[6].AsString    :=  'A';
           SPC_CREDIARIO.Params[7].Value       :=  ClientDataset1.FieldByname('ValorParcela').Text;
           SPC_CREDIARIO.Params[8].Value       :=  0;
           SPC_CREDIARIO.Params[9].Value       :=  0;
           SPC_CREDIARIO.Params[10].Value      :=  0;
           SPC_CREDIARIO.Params[11].Value      :=  0;
           SPC_CREDIARIO.Params[12].AsString   := ClientDataset1.FieldByname('Parcela').text;
           SPC_CREDIARIO.Params[13].AsInteger  := iemp;
           SPC_CREDIARIO.Params[14].AsString   := 'DPL';
           SPC_CREDIARIO.Params[15].AsString   := formvendas.Desc_cliente.Text;
           SPC_CREDIARIO.Params[16].AsString   := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString   := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE      := NULL;
           SPC_CREDIARIO.Params[19].VALUE      := ClientDataSet1Comissao.Text;
           SPC_CREDIARIO.Params[20].ASSTRING   := Edit2.Text;

           SPC_CREDIARIO.ExecProc;
           ClientDataset1.Next;
           end;
           end;

                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger :=  1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit2.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AP').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 4; // n_venda PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := copy('n_venda No. '+inttostr(n_venda)+' - '+formvendas.Desc_cliente.Text,1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'P';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PRZ';
                    qrcaixa_mov.parambyname('codigo_venda').Asinteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;

        end;


          // PRAZO - convenio
         if TotalizaFormaPagamento('Z') > 0 then
         TRY
          BEGIN

          if ClientDataSet1.RecordCount >0 then
          begin
           ClientDataset1.First;
           Contador:= ClientDataset1.RecordCount;
           For I:=1 to Contador do
           begin
           SPC_CREDIARIO_C.Params[0].AsInteger       :=  (n_venda);
           SPC_CREDIARIO_C.Params[1].Value       :=  StrToInt(formvendas.DBComboCliente.Text);
           SPC_CREDIARIO_C.Params[2].AsDate      :=  formvendas.dt_venda.Date;
           SPC_CREDIARIO_C.Params[3].AsDate      :=  ClientDataset1.FieldByname('DataVencimento').AsDateTime;
           SPC_CREDIARIO_C.Params[4].AsString    :=  'n_venda Nº'+' '+inttostr(n_venda)+' / '+ Desc_cond_pagto.Text;
           SPC_CREDIARIO_C.Params[5].AsString    :=  Formprincipal.userlogado;
           SPC_CREDIARIO_C.Params[6].AsString    :=  'A';
           SPC_CREDIARIO_C.Params[7].Value       :=  ClientDataset1.FieldByname('ValorParcela').Text;
           SPC_CREDIARIO_C.Params[8].Value       :=  0;
           SPC_CREDIARIO_C.Params[9].Value       :=  0;
           SPC_CREDIARIO_C.Params[10].Value      :=  0;
           SPC_CREDIARIO_C.Params[11].Value      :=  0;
           SPC_CREDIARIO_C.Params[12].AsString   := ClientDataset1.FieldByname('Parcela').text;
           SPC_CREDIARIO_C.Params[13].AsInteger  := DM.SDS_EmpresaCODIGO.AsInteger;
           SPC_CREDIARIO_C.Params[14].AsString   := 'DPL';
           SPC_CREDIARIO_C.Params[15].AsString   := formvendas.Desc_cliente.Text;
           SPC_CREDIARIO_C.Params[16].AsString   := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO_C.Params[17].AsString   := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO_C.Params[18].VALUE      := NULL;
           SPC_CREDIARIO_C.Params[19].VALUE      := ClientDataSet1Comissao.Text;
           SPC_CREDIARIO_C.Params[20].ASSTRING   := Edit2.Text;
           SPC_CREDIARIO_C.Params[21].ASINTEGER  := CONVENIO;
           SPC_CREDIARIO_C.ExecProc;
           ClientDataset1.Next;
           end;
           end;
           end;


                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger :=  1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit2.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AP').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 4; // n_venda PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := copy('venda No. '+inttostr(n_venda)+' - '+formvendas.Desc_cliente.Text,1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'P';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PRZ';
                    qrcaixa_mov.parambyname('codigo_venda').AsInteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
               //     dm.IBTransaction.CommitRetaining;

         except
             //  showMessage('Erro ao Gravar as Parcelas Do Convênio');
               on E: EDatabaseError do
                ShowMessage(E.Message);
        end;


          // DEPOSITO PIX
        if TotalizaFormaPagamento('P') > 0 then
        BEGIN
             // cadastrouch := false;

              if TotalizaFormaPagamento('P') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='P';
              formvendas.Sds_pedidos.Post;

              deposito := cTotalForma;
              END;

              FormDepositos:=TFormDepositos.Create(self);
              FormDepositos.tag := 2;
              FormDepositos.ShowMODAL;
          //    FormCheques.CurrencyEdit1.Value := cheque;



             if formvendas.Sds_pedidossaldo_troco.AsFloat > 0 then
              begin
                 FormTroco := TFormTroco.create(Self);
                 FormTroco.tag := 3;
                 FormTroco.showmodal;
              END;

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      := formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := deposito;
                    qrcaixa_mov.parambyname('valor').asfloat := deposito;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 01; // CHEQUE PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := copy('venda No. '+inttostr(n_venda)+' - '+formvendas.Desc_cliente.Text,1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PIX';
                    qrcaixa_mov.parambyname('codigo_venda').Asinteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                  //  dm.IBTransaction.CommitRetaining;
          end;


        // EM CHEQUES LANCAMENTO
        if TotalizaFormaPagamento('H') > 0 then
        BEGIN
              cadastrouch := false;

              FormCheques:=TFormCheques.Create(self);
              FormCheques.Tag := 1;
              FormCheques.CurrencyEdit1.Value := cheque;
              FormCheques.ShowModal;

            if cadastrouch = true then
            begin

              if TotalizaFormaPagamento('H') > 0 then
              begin
              formvendas.Sds_pedidos.Edit;
              formvendas.Sds_pedidosTP.Text :='H';
              formvendas.Sds_pedidos.Post;

              cheque := cTotalForma;
              END;

             if formvendas.Sds_pedidossaldo_troco.AsFloat > 0 then
              begin
                 FormTroco := TFormTroco.create(Self);
                 FormTroco.tag := 3;
                 FormTroco.showmodal;
              END;

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      := formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := cheque;
                    qrcaixa_mov.parambyname('valor').asfloat := cheque;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 6; // CHEQUE PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := copy('venda No. '+inttostr(n_venda)+' - '+formvendas.Desc_cliente.Text,1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                    qrcaixa_mov.parambyname('codigo_venda').Asinteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                  //  dm.IBTransaction.CommitRetaining;
          end else
          begin

             try
               try
                 contador:=0;
                 e:=0;
                 formvendas.Sds_Pedidos_itens.First;
                 Contador:=formvendas.Sds_Pedidos_itens.RecordCount;
                 For E:=1 to Contador do
                  begin
                     dm.ProxCod.Close;
                     dm.ProxCod.SQL.Clear;
                     dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
                     DM.ProxCod.Open;


                          // BUSCA ESTOQUE
                    try
                      with dm.Consulta do
                         begin
                            close;
                            sql.Clear;
                            sql.add('SELECT ESTOQUE FROM PRODUTOS WHERE CODIGO = :CODPRO');
                            Parambyname('CODPRO').AsInteger:= formvendas.Sds_Pedidos_itensCodigo_prod.AsInteger;
                            ExecSQL;
                            estoque:= fieldbyname('ESTOQUE').AsCurrency;
                         end;
                     // dm.IBTransaction.Commit;
                    except
                     // dm.IBTransaction.StartTransaction;
                      showmessage('Erro ao buscar o custo do produto');
                    end;

                   with DM.logEst do
                     begin
                        close;
                        parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
                        parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
                        parambyname('ID_AJUSTE').AsInteger      := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                        Parambyname('ID_PRODUTO').AsInteger     := formvendas.Sds_Pedidos_itensCodigo_prod.AsInteger;
                        Parambyname('ID_LOTE').Value            := null;
                        Parambyname('ID_PRODUTO_SERIE').Value   := null;
                        Parambyname('DATA').AsDateTime          := date;
                        Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
                        parambyname('ID_MOVIMENTO').AsInteger   :=  (n_venda);
                        Parambyname('FRACAO').Asfloat           := formvendas.Sds_Pedidos_itensFRACAO.AsINTEGER;
                        Parambyname('ESTOQUE_ANTERIOR').Asfloat := estoque;
                        Parambyname('QUANTIDADE').Asfloat       :=  formvendas.Sds_Pedidos_itensQUANTIDADE.AsFloat;
                        Parambyname('ESTOQUE_POSTERIOR').Asfloat := ESTOQUE + formvendas.Sds_Pedidos_itensQUANTIDADE.AsFloat;
                        Parambyname('SITUACAO_ESTOQUE').ASINTEGER := 2; // n_venda
                        Parambyname('OPERACAO').TEXT              := '-';
                        Parambyname('ACAO_BD').TEXT               := 'E';
                        Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
                        parambyname('COD_venda').AsInteger      :=  (n_venda);
                        parambyname('COD_COMPRA').VALUE         :=  null;
                        Parambyname('HISTORICO').TEXT           := copy('Exclusão da n_venda No. '+inttostr(n_venda)+' - '+formvendas.Desc_cliente.Text,1,60);
                        Parambyname('HORA').AsString           := TimeToStr(Time);
                        ExecSQL;
                      end;
                    //  DM.IBTransaction.Commit;

                      formvendas.Sds_Pedidos_itens.next;
                  end;
                   except
                  DM.IBTransaction.Rollback;
                  showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                              'Verifique que já foi lançado');
                end;
              finally
               dm.logEst.Close;
               end;
               
             suibutton2.enabled := true;

             with DM.IBSQL do
              begin
                 Close;
                 SQL.Clear;
                 SQL.Add('delete from pedidos where codigo =:n_venda and cod_empresa =:cod_emp');
                 ParamByName('n_venda').AsInteger := (n_venda);
                 ParamByName('cod_emp').AsInteger := iemp;
                 ExecSQL;
             end;
            // DM.IBTransaction.CommitRetaining;
              exit;
             end;
           end;




         suiButton2.Enabled := False;

        if formvendas.CheckBox4.Checked = True then
        begin
         Button1Click(Sender);
         end;
    //  close;

//    try
//      vPostoRegistro:= TPostoRegistro.find(TAuth.PostoRegistroId);
//      vPostoRegistro.IdVenda:= n_venda;
//      vPostoRegistro.Status:= 'F';
//      vPostoRegistro.save;
//    finally
//      FreeAndNil(vPostoRegistro);
//    end;
  end;
END;


procedure TFormParcelamento.suiButton4Click(Sender: TObject);
begin
  if (DM.SDS_UsuariosS11.text ='N') or (DM.SDS_UsuariosS11.text ='' )then
  begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'O usuário conectado não possui autorização para Alterar o Registro. Contate o Administrador do Sistema para obter acesso!';
    FormPrincipal.MsgInformacao.Execute;
  End;

  if DM.SDS_UsuariosS11.text ='S'then
  begin
    TRY
      if FormDesbloquearCliente=nil   then
      begin
        FormDesbloquearCliente:=TFormDesbloquearCliente.Create(self);
        FormDesbloquearCliente.ComboEdit1.Text := formvendas.DBComboCliente.Text;
        FormDesbloquearCliente.ShowModal;
        DM.SDS_Clientes.Refresh;
      end;
    except
      ShowMessage('Erro ao Tentar Exibir o Formulário!!');
    end;
  end;
end;

procedure TFormParcelamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key=VK_F2) then
      begin
      EdtTotalLiquido.SetFocus;
      end;

      if (Key=VK_F9) then
      begin
      DBComboCliente.SetFocus;
      end;
      
      if (Key=VK_F4) then
      begin
      EdtPercentualDesconto.SetFocus;
      end;

      if (Key=VK_F6) then
      begin
      EdtvalorDesconto.SetFocus;
      end;

      if (Key=VK_F5) then
      begin
      IF  suiButton1.Enabled = TRUE THEN
      BEGIN
      suiButton1Click(Sender);
      end;
      end;

   if (Key=VK_F10) then
      begin
      IF  suiButton2.Enabled = TRUE THEN
      BEGIN
      suiButton2Click(Sender);
      end;
     end;

    if (Key=VK_F3) then
      begin
      IF  suiButton3.Enabled = TRUE THEN
      BEGIN
      suiButton3Click(Sender);
      end;
     end;
end;

procedure TFormParcelamento.RbValorExit(Sender: TObject);
begin
CurrencyEdit7.Clear;
CurrencyEdit7.SetFocus;
end;

procedure TFormParcelamento.RbPercentualExit(Sender: TObject);
begin
CurrencyEdit7.Clear;
CurrencyEdit7.SetFocus;
end;

procedure TFormParcelamento.DBComboPgtoKeyPress(Sender: TObject;
  var Key: Char);
var
CD, PG : String;
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;


if Key=#13 then
 begin
{ CurrencyEdit7.Clear;

 IF DBComboPgto.Text = '' then
begin
 ShowMessage('Condição de pagamento nao pode estar zerada favor preencher');
 DBComboPgto.SetFocus;
end ELSE

 begin
 ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
 end;
 
  if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[])= True then
  begin
  Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;

                       CD := DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
                       IF CD = 'A' THEN BEGIN
                       PG:= 'DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       PG:= 'CREDIARIO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       PG:= 'CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       PG:= 'FINANCEIRA';
                       end else
                       IF CD = 'V' THEN BEGIN
                       PG:= 'VALE';
                       end;

                       edit1.Text := PG;

DBEdit3.Text := DM.SDS_CondPagamentoNUMERO_PAR.Text;
DBEdit4.Text := DM.SDS_CondPagamentoVARIACAO_DIAS.Text;

total_venda := CurrencyEdit1.Value;

if Edit1.Text = 'DINHEIRO' then
begin
CurrencyEdit7.Enabled := true;
avista := total_venda;
suiButton3.Enabled := False;
CurrencyEdit7.SetFocus;
end Else

if Edit1.Text = 'VALE' then
begin
CurrencyEdit7.Enabled := true;
avista := total_venda;
suiButton3.Enabled := False;
CurrencyEdit7.SetFocus;
end Else

if Edit1.Text = 'FINANCEIRA' then
begin
    begin
      CurrencyEdit7.Enabled := true;
      avista := total_venda;
      // EdtTotalGeral.value := 0;
      suiButton3.Enabled := False;
      CurrencyEdit7.SetFocus;
    end;
end else

if Edit1.Text = 'CREDIARIO' then
begin
  begin
 if DM.SDS_CondPagamentoJUROS_BASE.Text = '0' then
 begin
// suiButton3.Enabled :=True;
 CurrencyEdit7.Enabled := true;
 avista := 0;
 CurrencyEdit7.SetFocus;
 end else
   if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
   BEGIN
   CurrencyEdit7.Clear;
   CurrencyEdit7.Enabled := False;
   avista := 0;
   CurrencyEdit4.SetFocus;
   end;
  end;
 end else

 if Edit1.Text = 'CHEQUE' then
 begin
       begin
       suiButton3.Enabled :=True;
       CurrencyEdit7.Enabled := true;
       avista := 0;
       CurrencyEdit7.SetFocus;
       if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
       BEGIN
       CurrencyEdit7.Clear;
       CurrencyEdit7.Enabled := False;
       CurrencyEdit4.SetFocus;
       end;
       end;
   end;


     {  CD:= DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
       IF CD = 'C' THEN BEGIN
      { IF DM.SDS_CLIENTESPG_CREDIARIO.Value = 'N' THEN
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Próprio!';
       MSGI.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       DBComboPgto.SetFocus;
       end; }

      { If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := formvendas.DBComboCliente.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
       Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
       Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
       IF Limite < 0 THEN
       begin
       formliberan_venda :=nil;
       FormLiberan_venda:=TFormLiberan_venda.Create(self);
       FormLiberan_venda.ShowModal;
       end else
       IF Credito > 0 THEN
       begin
       formliberan_venda :=nil;
       FormLiberan_venda:=TFormLiberan_venda.Create(self);
       FormLiberan_venda.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       end;
       end;
       end else  }

    //  IF CD = 'H' THEN BEGIN
      { IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'N' THEN
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Cheque!';
       MSGI.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
        DBComboPgto.SetFocus;
       end; }
      { If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := formvendas.DBComboCliente.Text;;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
       Limite := (CurrencyEdit1.Value - DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat);
       Credito := 0;
       Credito := (DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat);
       IF Limite < 0 THEN
       begin
       formliberan_venda :=nil;
       FormLiberan_venda:=TFormLiberan_venda.Create(self);
       FormLiberan_venda.ShowModal;
       end else
       IF Credito > 0 THEN
       begin
       formliberan_venda :=nil;
       FormLiberan_venda:=TFormLiberan_venda.Create(self);
       FormLiberan_venda.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       end;
       end;
       end else }

     {  IF CD = 'F' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'N' THEN
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
       MSGI.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
        DBComboPgto.SetFocus;
       end;
       end; }

 { end ELSE

 if not DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[loCaseinSensitive]) then
 begin
   MessageDlg('Condição de Pagamento não Cadastrada', mtError, [mbAbort],0);
   DBComboPgto.SetFocus;
 end;
 end;        }
end;
end;

procedure TFormParcelamento.DBComboPgtoExit(Sender: TObject);
var
  CD, PG :string;
  begin
{  CurrencyEdit7.Clear;

 IF DBComboPgto.Text = '' then
begin
 //ShowMessage('Condição de pagamento nao pode estar zerada favor preencher');
 MessageDlg('Condição de pagamento nao pode estar zerada favor preencher', mtError, [mbAbort],0);
 DBComboPgto.SetFocus;
end ELSE

 begin
 ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
 end;

  if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[])= True then
  begin
      Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
      
                       CD := DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
                       IF CD = 'A' THEN BEGIN
                       PG:= 'DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       PG:= 'CREDIARIO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       PG:= 'CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       PG:= 'FINANCEIRA';
                       end else
                       IF CD = 'V' THEN BEGIN
                       PG:= 'VALE';
                       end;

edit1.Text := PG;

DBEdit3.Text := DM.SDS_CondPagamentoNUMERO_PAR.Text;
DBEdit4.Text := DM.SDS_CondPagamentoVARIACAO_DIAS.Text;


total_venda := CurrencyEdit1.Value;

if Edit1.Text = 'DINHEIRO' then
begin
CurrencyEdit7.Enabled := true;
avista := total_venda;
suiButton3.Enabled := False;
CurrencyEdit7.SetFocus;
end Else

if Edit1.Text = 'VALE' then
begin
 dm1.Sds_valeTroco.close;
 dm1.Sds_valeTroco.Open;
 dm1.Sds_valeTroco.Filtered := false;
 dm1.Sds_valeTroco.Filter:='SALDO_ATUAL > 0';
 dm1.Sds_valeTroco.Filtered := True;

 FormConsValeTroco:=TFormConsValeTroco.Create(self);
  FormConsValeTroco.ShowModal;

  IF total_venda > DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat THEN
  begin
  MSGI.Text:= 'Saldo do Vale insuficiente para cobrir o valor da  n_venda!';
  MSGI.ShowModal;
  DBComboPgto.SetFocus;
end else
begin
CurrencyEdit7.Enabled := true;
avista := total_venda;
suiButton3.Enabled := False;
CurrencyEdit7.SetFocus;
end;
end Else



      IF PG = 'CHEQUE' THEN
        BEGIN
         IF DM.SDS_ClientesPG_CHEQUE.Value = 'N' THEN
         BEGIN
         MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
         MSGI.ShowModal;
         suiButton1.Enabled:= True;
         suiButton3.Enabled:= FALSE;
         DBComboPgto.SETFOCUS;
         end else

       begin
       suiButton3.Enabled :=True;
       CurrencyEdit7.Enabled := true;
       avista := 0;
       CurrencyEdit7.SetFocus;
       if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
       BEGIN
       CurrencyEdit7.Clear;
       CurrencyEdit7.Enabled := False;
       CurrencyEdit4.SetFocus;
       end;
       end;


       begin
       If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := formvendas.DBComboCliente.Text;;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
       Limite := (CurrencyEdit1.Value - DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat);
       Credito := 0;
       Credito := (DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat);
       IF Limite < 0 THEN
       begin
       formliberan_venda :=nil;
       FormLiberan_venda:=TFormLiberan_venda.Create(self);
       FormLiberan_venda.ShowModal;
       CurrencyEdit4.SetFocus;
       end else
       IF Credito > 0 THEN
       begin
       formliberan_venda :=nil;
       FormLiberan_venda:=TFormLiberan_venda.Create(self);
       FormLiberan_venda.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       CurrencyEdit4.SetFocus;
       end;
       end;
       end;
       end else

      if PG = 'FINANCEIRA' THEN
        BEGIN
        IF DM.SDS_ClientesPG_FINANCEIRA.Value = 'N' THEN
        BEGIN
        MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
        MSGI.ShowModal;
        suiButton1.Enabled:= True;
        suiButton3.Enabled:= FALSE;
        DBComboPgto.SETFOCUS;
        end ELSE
        begin
        CurrencyEdit7.Enabled := true;
        avista := total_venda;
        // EdtTotalGeral.value := 0;
        suiButton3.Enabled := False;
        CurrencyEdit7.SetFocus;
        end;
        end else

        IF PG = 'CREDIARIO' then
        BEGIN
         IF DM.SDS_ClientesPG_CREDIARIO.Value = 'N' THEN
         BEGIN
          MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
          MSGI.ShowModal;
         suiButton1.Enabled:= True;
         suiButton3.Enabled:= FALSE;
         DBComboPgto.SETFOCUS;
         end else
           begin
         if DM.SDS_CondPagamentoJUROS_BASE.Text = '0' then
           begin
          // suiButton3.Enabled :=True;
           CurrencyEdit7.Enabled := true;
           avista := 0;
           CurrencyEdit7.SetFocus;
          end else
           if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
           BEGIN
           CurrencyEdit7.Clear;
           CurrencyEdit7.Enabled := False;
           avista := 0;
           CurrencyEdit4.SetFocus;
           end;
           begin
           If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
           BEGIN
           DMC.SQLD_LIMITE.Active := False;
           DMC.CDS_LIMITE.Active := False;
           DMC.SQLD_LIMITE.Params[0].AsString := formvendas.DBComboCliente.Text;
           DMC.SQLD_LIMITE.Active := True;
           DMC.CDS_LIMITE.Active := True;
           Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
           Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
           IF Limite < 0 THEN
           begin
           formliberan_venda :=nil;
           FormLiberan_venda:=TFormLiberan_venda.Create(self);
           FormLiberan_venda.ShowModal;
           CurrencyEdit4.SetFocus;
           end else
           IF Credito > 0 THEN
           begin
           formliberan_venda :=nil;
           FormLiberan_venda:=TFormLiberan_venda.Create(self);
           FormLiberan_venda.ShowModal;
           suiButton1.Enabled:= True;
           suiButton3.Enabled:= FALSE;
           CurrencyEdit4.SetFocus;
           end;
           end;
          end;
          end;

end;

   IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
  BEGIN
  CurrencyEdit7.Enabled := True;
  END ELSE
  IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
  BEGIN
   CurrencyEdit7.Enabled := False;
   CurrencyEdit4.SetFocus;
  END;
  
end else
 if not DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[loCaseinSensitive]) then
 begin
   MessageDlg('Condição de Pagamento não Cadastrada', mtError, [mbAbort],0);
   DBComboPgto.SetFocus;
 end;
 end;}
end;

procedure TFormParcelamento.Edit20Exit(Sender: TObject);
begin
suiButton3.Enabled := True;
suiButton3.SetFocus;
end;

procedure TFormParcelamento.CurrencyEdit8Exit(Sender: TObject);
begin
VR := ((VP * CurrencyEdit8.Value) / 100);
suiButton3.Enabled := False;
suiButton2.Enabled := False;
Edit2.SetFocus;
end;

procedure TFormParcelamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
if not (ActiveControl is TDBLookupComboBox) and  // você deve usar AND
     not (ActiveControl is TCustomGrid) then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormParcelamento.CurrencyEdit4Exit(Sender: TObject);
VAr
  desconto :Real;
  DESCONT : string;
begin
{valor := 0;
n_venda := 0;
troco := 0;
juros := 0;
ENC   := 0;
Encargos :=0;
DESCONT := '0';

//calculo dejuros
 valor := 0;
DESCONT := FormatCurr('0.00', EdtValorDesconto.Value);
DESCONTO := StrToFloatDef(DESCONT,0.00);

valor := (currencyEdit1.Value - desconto);
n_venda := valor;

juros :=  DM.SDS_CondPagamentoJUROS_BASE.AsCurrency;

if avista >= CurrencyEdit1.Value then
begin
Enc :=  (juros * n_venda);
Encargos := (Enc /100) - n_venda;
CurrencyEdit5.Value := Encargos + n_venda;
total_venda := (n_venda + Encargos);
CurrencyEdit6.Value := total_venda;
troco := (avista + desconto - CurrencyEdit1.Value);
EdtTotalGeral.value := (VALOR);
  end else

if avista < CurrencyEdit1.Value then
begin
troco:= 0;
enc := 0;
total_venda := 0;
Enc :=  (juros * n_venda);
Encargos := (Enc /100) - n_venda ;
CurrencyEdit5.Value := Encargos + n_venda;
total_venda := (n_venda + Encargos + n_venda);

CurrencyEdit6.Value := (total_venda - avista);

EdtTotalGeral.value := (total_venda);
end;

EdtTroco.Value := troco;

entrada  := avista;
vlrn_venda :=currencyEdit6.Value;
//EdtTotalGeral.value := (Vlrn_venda-entrada);
total := currencyedit6.Value;
Parcela := DM.SDS_CondPagamentoNUMERO_PAR.AsInteger;
VP:= (Total/Parcela);

ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
end;

if Edit1.Text = 'DINHEIRO' then
 begin
 if CurrencyEdit4.Text = '' then
  begin
  Application.MESSAGEBOX('Valor da n_venda avista deve ser informado...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
  avista := (CurrencyEdit1.Value - EdtValorDesconto.Value);
  CurrencyEdit6.Value :=0;
  CurrencyEdit4.SetFocus;
  end else

   IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
   BEGIN
   valor := (StrToFloatDef(CurrencyEdit1.Text,0.00) - StrToFloatDef(CurrencyEdit7.Text,0.00));
   if avista < EdtTotalGeral.value  then
   begin
    Application.MESSAGEBOX('Valor da n_venda avista nao pode Ser menor que o total da n_venda - descontos...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
   avista := (CurrencyEdit1.Value - EdtValorDesconto.Value);
   CurrencyEdit6.Value :=0;
   CurrencyEdit4.SetFocus;
   suiButton2.Enabled := False;
   end;
   end;

   if avista < CurrencyEdit1.Value then
   begin
    EdtValorDesconto.Value := (CurrencyEdit1.Value - avista);

   if rbValor.Checked then
   begin
    desconto  := (EdtValorDesconto.Value * 100 / CurrencyEdit1.VALUE);
   //desc := FormatFloat('##,##0.00',desconto);
    desconto2 := DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.AsFloat;
    IF desconto > desconto2 then
    begin
    //Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
     if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
      FormLiberaDesconto := TFormLiberaDesconto.create(self);
      FormLiberaDesconto.showmodal;
      CurrencyEdit5.Value := 0;
      CurrencyEdit6.Value := 0;
      EdtTotalGeral.value := (CurrencyEdit1.Value - EdtValorDesconto.Value);
      suiButton3.Enabled := False;
      suiButton2.Enabled := True;
      suiButton2.SetFocus;
     end else
     begin
     EdtValorDesconto.Value := 0;
     CurrencyEdit4.SetFocus;
     end;
    end ELSE

    begin

    CurrencyEdit5.Value := 0;

    CurrencyEdit6.Value := 0;

    EdtTotalGeral.value := (CurrencyEdit1.Value - EdtValorDesconto.Value);


    suiButton3.Enabled := False;
    suiButton2.Enabled := True;
    suiButton2.SetFocus;
     end;
    end ELSE

    if RbPercentual.Checked then
    begin
    desc := (EdtValorDesconto.Value * 100 / CurrencyEdit1.VALUE);//EdtValorDesconto.Value; //StrToInt(CurrencyEdit7.Text);
    desc_m := DM.SDS_CONFIGURACOESDESC_MAXIMO_PERC.AsCurrency;
    IF desc > desc_m then
     begin
    // Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
      if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
      FormLiberaDesconto := TFormLiberaDesconto.create(self);
      FormLiberaDesconto.showmodal;
      CurrencyEdit5.Value := 0;
      CurrencyEdit6.Value := 0;
      EdtTotalGeral.value := (CurrencyEdit1.Value - EdtValorDesconto.Value);
      suiButton3.Enabled := False;
      suiButton2.Enabled := True;
      suiButton2.SetFocus;
      end else
      begin
      EdtValorDesconto.Value := 0;
      CurrencyEdit4.SetFocus;
      end;
      end else
      begin

      CurrencyEdit5.Value := 0;

      CurrencyEdit6.Value := 0;

      EdtTotalGeral.value := (CurrencyEdit1.Value - EdtValorDesconto.Value);


      suiButton3.Enabled := False;
      suiButton2.Enabled := True;
      suiButton2.SetFocus;
    end;
    end;
     end else
     if avista >= CurrencyEdit1.Value then
     begin
    suiButton3.Enabled := False;
    suiButton2.Enabled := True;
    suiButton2.SetFocus;
    end;
end;


  if Edit1.Text ='VALE' then
begin
  suiButton3.Enabled := False;
  suiButton2.Enabled := True;
  suiButton2.SetFocus;
  end else

 if Edit1.Text = 'CREDIARIO' then
begin
  suiButton3.Enabled := True;
  suiButton2.Enabled := False;
  suiButton3.Default := True;
  //CurrencyEdit8.SetFocus;

  suiButton3.SetFocus;
  end else

if Edit1.Text = 'CHEQUE' then
  begin
  suiButton3.Enabled := True;
  suiButton2.Enabled := False;
  suiButton3.Default := True;
  suiButton3.SetFocus;
  end else

  if Edit1.Text = 'FINANCEIRA' then
begin
  suiButton3.Enabled := False;
  suiButton2.Enabled := True;
  suiButton2.SetFocus;
end; }
end;


procedure TFormParcelamento.CurrencyEdit7Exit(Sender: TObject);
begin
 { valor := 0;
  n_venda := 0;
  troco := 0;
  juros := 0;
  ENC   := 0;
  Encargos :=0;

  if CurrencyEdit7.text >'' then
  begin

 if rbValor.Checked then
 begin
  desconto  := (EdtValorDesconto.Value * 100 / CurrencyEdit1.VALUE);
  //desc := FormatFloat('##,##0.00',desconto);
  desconto2 := DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.AsFloat;
  IF desconto > desconto2 then
  begin
  //Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
  if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    FormLiberaDesconto := TFormLiberaDesconto.create(self);
    FormLiberaDesconto.showmodal;
    total_venda:= 0;
    total_venda := CurrencyEdit1.Value - EdtValorDesconto.Value;
    avista := total_venda;
    CurrencyEdit6.Value := total_venda;
    EdtTotalGeral.value := total_venda;
    CurrencyEdit4.SetFocus;
    CurrencyEdit4.SelectAll;
  end else
  begin
    EdtValorDesconto.Value := 0;
    CurrencyEdit7.SetFocus;
    end;
  end else

  begin
  total_venda:= 0;
  total_venda := CurrencyEdit1.Value - EdtValorDesconto.Value;
  avista := total_venda;
  CurrencyEdit6.Value := total_venda;
  EdtTotalGeral.value := total_venda;
  CurrencyEdit4.SetFocus;
  CurrencyEdit4.SelectAll;
  end;

  IF Edit1.Text = 'CREDIARIO' then
  begin
  avista := 0;
  CurrencyEdit4.SetFocus;
  end ELSE

  IF Edit1.Text = 'CHEQUE' then
  begin
  avista := 0;
  end;

  //CurrencyEdit4.SetFocus;
 end else

  if RbPercentual.Checked then
  begin
  desc := EdtValorDesconto.Value;//StrToInt(CurrencyEdit7.Text);
  desc_m := DM.SDS_CONFIGURACOESDESC_MAXIMO_PERC.AsCurrency;
  IF desc > desc_m then
  begin
  //if Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1) = idYes;
   if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    FormLiberaDesconto := TFormLiberaDesconto.create(self);
    FormLiberaDesconto.showmodal;
    n_venda:=0;
    total_venda:=0;
    n_venda := CurrencyEdit1.Value * EdtValorDesconto.Value /100;
    EdtValorDesconto.Value := n_venda;
    total_venda := CurrencyEdit1.Value - n_venda;
    avista := total_venda;
    CurrencyEdit6.Value := total_venda;
    EdtTotalGeral.value := total_venda;
    CurrencyEdit4.SetFocus;
    CurrencyEdit4.SelectAll;
  end else
  begin
    EdtValorDesconto.Value := 0;
    CurrencyEdit7.SetFocus;
    end;
  end else

  begin
  n_venda:=0;
  total_venda:=0;
  n_venda := CurrencyEdit1.Value * EdtValorDesconto.Value /100;
  EdtValorDesconto.Value := n_venda;
  total_venda := CurrencyEdit1.Value - n_venda;
  avista := total_venda;
  CurrencyEdit6.Value := total_venda;
  EdtTotalGeral.value := total_venda;
  CurrencyEdit4.SetFocus;
  CurrencyEdit4.SelectAll;

  IF Edit1.Text = 'CREDIARIO' then
  begin
  avista := 0;
   CurrencyEdit4.SetFocus;
  end ELSE

  IF Edit1.Text = 'CHEQUE' then
  begin
  avista := 0;
  CurrencyEdit4.SetFocus;
  end;

  end;
  end;
  end;
 // CurrencyEdit4.SetFocus;
   }

end;

procedure TFormParcelamento.Button1Click(Sender: TObject);
VAR
D, i, e: Integer;
Desc : Char;
cod_Cli :string;
total_g,total_t : Real;
begin
   // EMISSSAO DA n_venda
   cod_Cli:= formvendas.DBComboCliente.Text;

           IF DM.SDS_CONFIGURACOESIMP_VENDA.TEXT = 'S' THEN
           begin
           if Application.MESSAGEBOX('Confirma a emissão da venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
           begin
             try
             DMC.SDS_Pedido_Itens.Active := False;
             DMC.SQLD_Pedidos.Active := False;
             DMC.CDS_Pedidos.Active := False;
             DMC.SQLD_Pedidos.Params[0].AsInteger := n_venda;
             DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
             DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
             DMC.SQLD_Pedidos.Active := True;
             DMC.CDS_Pedidos.Active := True;
             DMC.SDS_Pedido_Itens.Active := True;
             If DMC.CDS_Pedidos.Locate('CODIGO',n_venda,[])= True then
             begin
              IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
              IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
              BEGIN
              DMC.SDS_Crediario_Contrato.Active :=False;
              DMC.SDS_Pedido_Itens.Active := False;
              DMC.SDS_Cliente.Active := False;
              DMC.SQLD_Pedidos.Active :=False;
              DMC.CDS_Pedidos.Active :=False;
              DMC.SQLD_Pedidos.Params[0].AsInteger:=n_venda;
              DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
              DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
              DMC.SQLD_Pedidos.Active :=True;
              DMC.CDS_Pedidos.Active :=True;
              DMC.SDS_Pedido_Itens.Active := True;
              DMC.SDS_Cliente.Active := True;
              DMC.SDS_Crediario_Contrato.Active :=true;

              DMC.QRY_COND_PAGTO.close;
              DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
              DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
              DMC.QRY_COND_PAGTO.Open;


              Endercomp:= (formvendas.Sds_PedidosENDERECO.Text + ' / ' + formvendas.Sds_PedidosBAIRRO.Text
              + ', N° ' +formvendas.Sds_pedidosNUMERO.Text + ' - ' + formvendas.Sds_PedidosCIDADE.Text);
              Cli:= (formvendas.Sds_PedidosCODIGO_CLIENTE.Text + ' - ' + formvendas.Sds_PedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
              cpf_cnpj:= formvendas.Sds_PedidosCpf_cnpj.text+ ' Fone: ' + formvendas.Sds_PedidosFONE.text;
              prod := 'Insc. Produtor  : ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
              DMR.RvRelatorios.SetParam('Produtor',Prod);
              DMR.RvRelatorios.SetParam('dados',cpf_cnpj);
              DMR.RvRelatorios.SetParam('Ender',Endercomp);
              DMR.RvRelatorios.SetParam('Cliente',Cli);
              DMR.RvRelatorios.SelectReport('Rp_PedidoDiretoN',False);
              DMR.RvRelatorios.Execute;
              end else

              IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
              IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
               BEGIN
                DMC.SDS_Crediario_Contrato.Active :=False;
                DMC.SDS_Pedido_Itens.Active := False;
                DMC.SDS_Cliente.Active := False;
                DMC.SQLD_Pedidos.Active :=False;
                DMC.CDS_Pedidos.Active :=False;
                DMC.SQLD_Pedidos.Params[0].Asinteger:=n_venda;
                DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
                DMC.SQLD_Pedidos.Active :=True;
                DMC.CDS_Pedidos.Active :=True;
                DMC.SDS_Pedido_Itens.Active := True;
                DMC.SDS_Cliente.Active := True;
                DMC.SDS_Crediario_Contrato.Active :=true;

              DMC.QRY_COND_PAGTO.close;
              DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  :=  (n_venda);
              DMC.QRY_COND_PAGTO.Params.ParamByName('cod_empresa').AsInteger  :=  iemp;
              DMC.QRY_COND_PAGTO.Open;

                 Endercomp:= (formvendas.Sds_PedidosENDERECO.Text + ' / ' + formvendas.Sds_PedidosBAIRRO.Text
                + ' - ' + formvendas.Sds_PedidosCIDADE.Text);
                Cli:= (formvendas.Sds_PedidosCODIGO_CLIENTE.Text + ' - ' + formvendas.Sds_PedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
                cpf_cnpj:= formvendas.Sds_PedidosCpf_cnpj.text+ ' Fone: ' + formvendas.Sds_PedidosFONE.text;
                prod := 'Insc. Produtor  : ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
                DMR.RvRelatorios.SetParam('Produtor',Prod);
                DMR.RvRelatorios.SetParam('dados',cpf_cnpj);
                DMR.RvRelatorios.SetParam('Ender',Endercomp);
                DMR.RvRelatorios.SetParam('Cliente',Cli);
                DMR.RvRelatorios.SelectReport('Rp_PedidoDireto2',False);
                DMR.RvRelatorios.Execute;
                end;

                 IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsINTEGER:=n_venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                    DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;

                    DMC.QRY_COND_PAGTO.close;
                    DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                    DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                    DMC.QRY_COND_PAGTO.Open;

                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    if DM.SDS_CONFIGURACOESPREVIEW.text= 'N' then
                    begin
                    IMPRIMIRPEDIDOS := TIMPRIMIRPEDIDOS.Create(self);
                    ImprimirPedidos.RLReport1.DefaultFilter.Destroy;
                    IMPRIMIRPEDIDOS.RLReport1.Prepare;
                    ImprimirPedidos.RLReport1.Print;
                    end else
                      if DM.SDS_CONFIGURACOESPREVIEW.text= 'S' then
                    begin
                    IMPRIMIRPEDIDOS := TIMPRIMIRPEDIDOS.Create(self);
                    ImprimirPedidos.RLReport1.DefaultFilter.Destroy;
                    IMPRIMIRPEDIDOS.RLReport1.Prepare;
                    ImprimirPedidos.RLReport1.PreviewModal;
                    end;
                    END ELSE

                 IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsInteger:=n_venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                    DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;

                    DMC.QRY_COND_PAGTO.close;
                    DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                    DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                    DMC.QRY_COND_PAGTO.Open;

                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    if DM.SDS_CONFIGURACOESPREVIEW.text= 'N' then
                    begin
                    IMPRIMIRPEDIDOS := TIMPRIMIRPEDIDOS.Create(self);
                    IMPRIMIRPEDIDOS.RLReport1.Prepare;
                    ImprimirPedidos.RLReport1.Print;
                    end else
                    if DM.SDS_CONFIGURACOESPREVIEW.text= 'S' then
                    begin
                    IMPRIMIRPEDIDOS := TIMPRIMIRPEDIDOS.Create(self);
                    IMPRIMIRPEDIDOS.RLReport1.Prepare;
                    ImprimirPedidos.RLReport1.PreviewModal;
                    end;
                    end;

                  IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsInteger:=n_venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                    DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;

                    DMC.QRY_COND_PAGTO.close;
                    DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                    DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                    DMC.QRY_COND_PAGTO.Open;

                    if DM.SDS_CONFIGURACOESPREVIEW.text= 'N' then
                    begin
                    FormPedido40col := TFormPedido40col.Create(self);
                    FormPedido40col.RLReport1.DefaultFilter.Destroy;
                    FormPedido40col.RLReport1.Prepare;
                    FormPedido40col.RLReport1.Print;
                    end else
                    if DM.SDS_CONFIGURACOESPREVIEW.text= 'S' then
                    begin
                    FormPedido40col := TFormPedido40col.Create(self);
                    FormPedido40col.RLReport1.DefaultFilter.Destroy;
                    FormPedido40col.RLReport1.Prepare;
                    FormPedido40col.RLReport1.PreviewModal;
                    end;
                   END ELSE
                  IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsInteger:= n_venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                    DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;

                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;

                     DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                            DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                            DMC.QRY_COND_PAGTO.Open;


                    if DM.SDS_CONFIGURACOESPREVIEW.text= 'N' then
                    begin
                    FormPedido40col := TFormPedido40col.Create(self);
                    FormPedido40col.RLReport1.Prepare;
                    FormPedido40col.RLReport1.Print;
                    end else
                    if DM.SDS_CONFIGURACOESPREVIEW.text= 'S' then
                    begin
                    FormPedido40col := TFormPedido40col.Create(self);
                    FormPedido40col.RLReport1.Prepare;
                    FormPedido40col.RLReport1.PreviewModal;
                    end;
                    end;

                    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '3' THEN
                   //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsInteger:= n_venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                    DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;

                     DMC.QRY_COND_PAGTO.close;
                     DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                     DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                     DMC.QRY_COND_PAGTO.Open;

                    Imprimevenda;

                    end;

                    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '4' THEN
                   //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsInteger:= n_venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                    DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;

                    DMC.QRY_COND_PAGTO.close;
                    DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                    DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                    DMC.QRY_COND_PAGTO.Open;

                    Imprimevenda40;

                    end;
                    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '5' THEN
                   //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsInteger:= n_venda;
                    DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;

                     DMC.QRY_COND_PAGTO.close;
                     DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                     DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                     DMC.QRY_COND_PAGTO.Open;


                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;

                    Imprimevenda60;

                    end;

                    end;

                    except
                    ShowMessage('Não Foi possivel concluir a emissão da n_venda!');
                    end;
                     end;
                    end;


      if formvendas.Sds_PedidosTP.Text = 'C' then
      IF DM.SDS_CONFIGURACOESDUPLICATA.Value = 'S' THEN
      if Application.MESSAGEBOX('Confirma Imprimir a Duplicata?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
       begin
      //  try
          IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.TEXT ='I') OR (DM.SDS_CONFIGURACOESFORM_PEDIDOS.TEXT ='3') THEN
          begin
          IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
          BEGIN
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsINTEGER:=n_venda;
            DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
            DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
            DMC.SDS_Crediario_Contrato.Active :=true;
            formduplicatas := Tformduplicatas.Create(self);
            formduplicatas.RLReport1.DefaultFilter.Destroy;
            formduplicatas.RLReport1.Prepare;
            formduplicatas.RLReport1.PreviewModal;
           END ELSE

           IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
           BEGIN
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsInteger:=n_venda;
            DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
            DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
            DMC.SDS_Crediario_Contrato.Active :=true;
            formduplicatas := Tformduplicatas.Create(self);
            formduplicatas.RLReport1.Prepare;
            formduplicatas.RLReport1.Print;
            end;
            end
            else
           //   IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.TEXT ='P' THEN
           begin
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsInteger:=n_venda;
            DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
            DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
            DMC.SDS_Crediario_Contrato.Active :=true;
            DM.qrrelatorio.open;

            FXduplicata.LoadFromFile('rel\f000150.fr3');
            FXduplicata.ShowReport;
          end;
          {   except
              ShowMessage('Não foi possivel concluir a emissão da duplicata!');
              end;  }
              end;

                            DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                            DMC.QRY_COND_PAGTO.Params.ParamByName('cod_empresa').AsInteger  := iemp;
                            DMC.QRY_COND_PAGTO.Open;



                        if DMC.QRY_COND_PAGTO.Locate('TIPO_PAGTO','A PRAZO',[]) = true then
                        begin
                        if dm.SDS_CONFIGURACOESCUPON_VINCULADO.Text = 'S' then
                        begin
                          if Application.MESSAGEBOX('Confirma Emissão do Comprovante de Vinculado(DUPLICATA)?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                          BEGIN
                          IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '4' THEN
                            //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                           BEGIN
                          DMC.SDS_CHEQUES.Active := false;
                          DMC.sds_mov_Caixa.Active := False;
                          DMC.SDS_Crediario_Contrato.Active :=False;
                          DMC.SDS_Pedido_Itens.Active:= False;
                          DMC.SDS_Cliente.Active:= False;
                          DMC.SQLD_Pedidos.Active:=False;
                          DMC.CDS_Pedidos.Active:=False;
                          DM.SDS_Empresa.active := false;
                          DMC.SQLD_Pedidos.Params[0].AsInteger:= n_venda;
                          DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                          DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
                          DMC.SQLD_Pedidos.Active:=True;
                          DMC.CDS_Pedidos.Active:=True;
                          DMC.SDS_Pedido_Itens.Active:= True;
                          DMC.SDS_Cliente.Active:= True;
                          DM.SDS_Empresa.active := true;
                          DMC.SDS_Crediario_Contrato.Active :=true;
                          DMC.sds_mov_Caixa.Active := True;
                          DMC.SDS_CHEQUES.Active := True;

                           DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                            DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                            DMC.QRY_COND_PAGTO.Open;

                          ImprimeDUPLICATA;
                          END;

                               IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q' THEN
                              //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                                BEGIN
                                DMC.SDS_CHEQUES.Active := false;
                                DMC.sds_mov_Caixa.Active := False;
                                DMC.SDS_Crediario_Contrato.Active :=False;
                                DMC.SDS_Pedido_Itens.Active:= False;
                                DMC.SDS_Cliente.Active:= False;
                                DMC.SQLD_Pedidos.Active:=False;
                                DMC.CDS_Pedidos.Active:=False;
                                DM.SDS_Empresa.active := false;
                                DMC.SQLD_Pedidos.Params[0].AsInteger:= n_venda;
                                DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                                DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
                                DMC.QRY_COND_PAGTO.Active := True;
                                DMC.SQLD_Pedidos.Active:=True;
                                DMC.CDS_Pedidos.Active:=True;
                                DMC.SDS_Pedido_Itens.Active:= True;
                                DMC.SDS_Cliente.Active:= True;
                                DM.SDS_Empresa.active := true;
                                DMC.SDS_Crediario_Contrato.Active :=true;
                                DMC.sds_mov_Caixa.Active := True;
                                DMC.SDS_CHEQUES.Active := True;

                               DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                            DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                            DMC.QRY_COND_PAGTO.Open;


                                if DM.SDS_CONFIGURACOESPREVIEW.text= 'N' then
                                begin
                                Formduplicata40col := TFormduplicata40col.Create(self);
                                Formduplicata40col.RLReport1.DefaultFilter.Destroy;
                                Formduplicata40col.RLReport1.Prepare;
                                Formduplicata40col.RLReport1.Print;
                                end else
                                if DM.SDS_CONFIGURACOESPREVIEW.text= 'S' then
                                begin
                                Formduplicata40col := TFormduplicata40col.Create(self);
                                Formduplicata40col.RLReport1.DefaultFilter.Destroy;
                                Formduplicata40col.RLReport1.Prepare;
                                Formduplicata40col.RLReport1.PreviewModal;
                                end;
                                end;
                          end;
                          END;
                        END;




            if formvendas.Sds_PedidosTP.Text = 'C' then
             IF DM.SDS_CONFIGURACOESCONTRATO.TEXT = 'S' THEN
              if Application.MESSAGEBOX('Confirma Imprimir do Contrato?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                BEGIN
                  try
                    BEGIN
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DMC.SQLD_Pedidos.Params[0].AsInteger:=n_venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                    DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    FormContratovenda := TFormContratovenda.Create(self);
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'P' THEN
                     BEGIN
                     FormContratovenda.RLReport1.DefaultFilter.Destroy;
                     FormContratovenda.RLReport1.Prepare;
                     FormContratovenda.RLReport1.Print;
                     END ELSE
                     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
                     BEGIN
                     FormContratovenda.RLReport1.Prepare;
                     FormContratovenda.RLReport1.print;
                     end;
                    end;
                   except
                   ShowMessage('Não foi possivel concluir a emissão do Contrato!');
                   end;
                  end;





                 {   IF DM.SDS_CONFIGURACOESIMP_NOTA.Text ='S' THEN
                    if Application.MESSAGEBOX('Confirma a Emissão da Nota Fiscal?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                    begin
                    try
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DMC.SQLD_Pedidos.Params[0].AsString:=n_venda;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    FormImpNotaFiscal := TFormImpNotaFiscal.Create(self);
                    FormImpNotaFiscal.RLReport1.Prepare;
                    FormImpNotaFiscal.RLReport1.PreviewModal;
                    except
                      ShowMessage('Erro na Emissão da Nota Fiscal');
                    end;
                    end; }
                     if DMC.QRY_COND_PAGTO.Locate('TIPO_PAGTO','A PRAZO',[]) = true then
                        begin
                    IF DM.SDS_CONFIGURACOESIMP_NOTA.Text ='S' THEN
                    if Application.MESSAGEBOX('Confirma a Emissão do carnê?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                    begin
                          DMC.qrcontasreceber.close;
                          DMC.qrcontasreceber.sql.Clear;
                          DMC.qrcontasreceber.sql.add('select * from crediario where CODIGO_COMPRA = ''' + formvendas.Sds_pedidos.fieldbyname('codigo').asstring + ''' order by data_vencimento asc');
                          DMC.qrcontasreceber.open;

                          DMC.qrcliente.close;
                          DMC.qrcliente.sql.Clear;
                          DMC.qrcliente.sql.add('select * from clientes where codigo = ''' + formvendas.Sds_pedidos.fieldbyname('codigo_cliente').asstring + ''' order by nome_rs asc');
                          DMC.qrcliente.open;

                        dm.qrrelatorio.open;
                        dm.qrrelatorio.edit;
                        dm.qrrelatorio.fieldbyname('linha8').AsString := '';

                        if DMC.QRCONTASRECEBER.RECORDCOUNT > 0 then
                        begin
                          dm.qrrelatorio.fieldbyname('linha7').asstring := 'A PRAZO';
                          DMC.qrcontasreceber.first;
                          while not DMC.qrcontasreceber.eof do
                          begin
                            dm.qrrelatorio.fieldbyname('LINHA8').asstring :=
                            formPrincipal.texto_justifica(DMC.qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring, 10, ' ', 'D') + ' - R$ ' +
                            formPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', DMC.qrcontasreceber.fieldbyname('VALOR_COMPRA').asFLOAT), 8, ' ', 'E') + ' | ' +
                            dm.qrrelatorio.fieldbyname('linha8').AsString;

                            DMC.qrcontasreceber.next;
                          end;
                        end
                        else
                        begin
                          dm.qrrelatorio.fieldbyname('linha8').AsString := 'A VISTA';
                        end;


                        dm.qrrelatorio.fieldbyname('linha1').asstring := DM.SDS_EMPRESACIDADE.TEXT + FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',formvendas.SDS_PEDIDOS.fieldbyname('data_PEDIDO').asdatetime);
                        dm.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(formvendas.SDS_PEDIDOS.fieldbyname('vALOR_total').asfloat));
                        dm.qrrelatorio.fieldbyname('linha3').asstring := inttostr(DMC.qrcontasreceber.recordcount);
                        dm.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00', DMC.qrcontasreceber.fieldbyname('valor_COMPRA').asfloat);
                        dm.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(formvendas.SDS_PEDIDOS_ITENS.RecordCount);
                        dm.qrrelatorio.post;
                      //  FXn_venda.LoadFromFile('c:\siace\rel\f000154.fr3');
                      //  FXn_venda.ShowReport;
                        if DMC.QRCONTASRECEBER.RECORDCOUNT > 0 then
                        begin
                          DMC.FXvenda.LoadFromFile('rel\f000153.fr3');
                          DMC.FXvenda.ShowReport;
                        end;
                    end;
                    end;

                   // nota de vacina
                    If DM.SDS_EmpresaFLAG_VETERINARIA.Text = 'S' then
                    if Application.MESSAGEBOX('Deseja Lançar a nota Fiscal da Vacina?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                     begin
                      try
                       If FormLancNotasFiscais=nil then
                         begin
                          FormLancNotasFiscais:=TFormLancNotasFiscais.Create(self);
                          FormLancNotasFiscais.Showmodal;
                          end;
                          except
                            ShowMessage('Houve um erro no lançamento da nota fiscal de vacinas');
                          end;
                          end;

                // geracao da nfe
                If DM.SDS_UsuariosUTILIZA_NFE.Text = 'S' then
                 if Application.MESSAGEBOX('Confirma Geração- e Emissão da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 begin
                        If FormGefaNFe=nil then
                         begin
                          FormGefaNFe:=TFormGefaNFe.Create(self);
                          FormGefaNFe.combobox2.itemIndex := 0;
                          FormGefaNFe.combobox2.Enabled := False;
                          DM.qrcfop.Active := False;
                          DM.qrcfop.sql.Clear;
                          DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop >=4999');
                          DM.qrcfop.Active := true;
                          FormGefaNFe.ShowModal;

                          IF VALIDA_NFE = true then
                          begin
                          SPC_N_NFE.Params[0].AsInteger :=  (n_venda);
                          SPC_N_NFE.Params[1].AsInteger  := StrToInt(DM.SDS_NFENR_NOTA.text);
                          SPC_N_NFE.Params[2].AsString  :=  DM.SDS_NFESERIE_NF.text;
                          SPC_N_NFE.Params[3].AsInteger  := IEMP;
                          N_nfe :=  DM.SDS_NFENR_NOTA.text;
                          SPC_N_NFE.ExecProc;
                         // Application.ProcessMessages;
                          end;
                          end;

                       end;

                   // emissao de boletos
                    if formvendas.Sds_PedidosTP.Text = 'C' then
                    If DM.SDS_CONFIGURACOESBOLETO.Text = 'S' then
                     if Application.MESSAGEBOX('Confirma a Emissão do Boleto?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                      begin
                      try
                    {  If FormBoletos=nil then
                      begin
                      FormBoletos:=TFormBoletos.Create(self);
                      FormBoletos.Tag := 1;
                      FormBoletos.EDIT2.Text := formvendas.sds_pedidosCODIGO.TEXT;
                      FormBoletos.RXLABEL6.Caption := formvendas.Sds_pedidosNOME_CLIENTE.TEXT;
                      n_nfe := formvendas.Sds_pedidosNUM_NOTA.TEXT;
                      FormBoletos.ShowModal;
                      end;   }

                      If frmTitulos=nil then
                      begin
                      frmTitulos:=TfrmTitulos.Create(self);
                      frmTitulos.Tag := 1;
                      n_nfe := formvendas.Sds_pedidosNUM_NOTA.TEXT;
                      cod_venda := formvendas.N_venda.TEXT;
                      frmTitulos.showmodal;
                      end;

                      except
                      ShowMessage('Houve um erro na emissão do Boleto');
                      end;
                      end;



              // geracao da nfce
                If formprincipal.NFCE = 'S' then
                 if Application.MESSAGEBOX('Confirma Geração e Emissão da NFC-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 begin

                        dm.SDS_NFCE.Close;
                        dm.SDS_NFCE.SQL.Clear;
                        dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_PEDIDO = :NR_PEDIDO AND CD_EMPRESA =:COD_EMP');
                        dm.SDS_NFCE.Params.ParamByName('NR_PEDIDO').AsInteger := (n_venda);
                        dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger  := IEMP;
                        dm.SDS_NFCE.open;
                        dm.sds_nfce_itens.Active:=false;
                        dm.sds_nfce_itens.Active:=true;

                         if dm.SDS_NFCE.Locate('NR_PEDIDO',n_venda, [loCaseInsensitive]) = True then
                         BEGIN
                          if dm.SDS_NFCENR_PROTOCOLO_NFE.Text >'' then
                          begin
                           Application.MESSAGEBOX('NFC-E Já Validada  Não será possiver Gerar uma Nova NFC-e !', 'Atenção', MB_ICONQUESTION + MB_OK + MB_DEFBUTTON1);
                           Exit;
                           Abort;
                          end else
                           begin
                           if Application.MESSAGEBOX('Já existe uma NF-E cadastrada com esta n_venda !, Deseja substitui-la?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                           begin
                            dm.sds_nfCe.delete;
                           // dm.sds_nfCe.ApplyUpdates(0);
                           // dm.Conexao.commit;
                            dm.SDS_NFCE.Close;
                            dm.SDS_NFCE.sql.Clear;
                            dm.SDS_NFCE.sql.Add('select * FROM  nfece_nota where NR_PEDIDO = :NR_PEDIDO AND CD_EMPRESA =:COD_EMP');
                            dm.SDS_NFCE.Params.ParamByName('NR_PEDIDO').AsInteger := -1;
                            dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger  := IEMP;
                            dm.SDS_NFCE.open;
                            dm.sds_nfce_itens.Active:=false;
                            dm.sds_nfce_itens.Active:=true;
                               end;
                           //ShowMessage('Já existe um NF-E cadastrada com esta n_venda !!!');
                         //  RxDBComboEdit2.SetFocus;
                          end;
                          end;
                        {dm.ProxCod1.Close;
                        dm.ProxCod1.SQL.Clear;
                        dm.ProxCod1.SQL.Add('select max(nr_nota) as n_codigo  from nfece_nota  where nfece_nota.cd_empresa =:cod_emp');
                        dm.ProxCod1.Params.Items[0].AsString  := dm.SDS_EmpresaCODIGO.Text;
                        DM.ProxCod1.open;
                        dm.ProxCod1.FetchAll;   }

                     {   dm.ProxCod.Close;
                        dm.ProxCod.SQL.Clear;
                        dm.ProxCod.SQL.Add('select max(nr_nota) as n_codigo  from nfece_nota');
                        //dm.ProxCod1.Params.Items[0].AsString  := dm.SDS_EmpresaCODIGO.Text;
                        DM.ProxCod.open;
                         //  dm.ProxCod1.FetchAll;
                                                     }

                        dm.SDS_NFCE.Insert;
                        dm.SDS_NFcE.EDIT;
                       { DM.SPC_NFCE.ExecProc;
                        N:= (DM.SPC_NFCE.ParamByName('ATUAL').AsInteger); }
                        n_nota.Close;
                        n_nota.ParamByName('cod_emp').AsInteger := iEmp;
                        n_nota.Open;
                        n:= n_notaN_NOTA.AsInteger + 1;


                        dm.sds_nfceNr_nota.AsInteger                :=  N;
                        dm.SDS_NFcECD_EMPRESA.AsInteger             :=  iemp;
                        DM.sds_nfceDt_emissao.AsDateTime            :=  formvendas.Sds_PedidosDATA_PEDIDO.AsDateTime;
                        DM.sds_nfceDt_lancamento.AsDateTime         :=  formvendas.Sds_PedidosDATA_PEDIDO.AsDateTime;
                        DM.sds_nfcevl_mercadorias.ASFLOAT           :=  formvendas.Sds_PedidosVALOR_ITENS.AsFloat;
                        DM.sds_nfceVl_descontos.ASFLOAT             :=  formvendas.Sds_PedidosVALOR_DESCONTO.AsFloat;
                        DM.sds_nfceVl_total.ASFLOAT                 :=  formvendas.Sds_PedidosVALOR_TOTAL.AsFloat;
                        dm.sds_nfcecod_cliente.AsInteger            :=  formvendas.Sds_PedidosCODIGO_CLIENTE.AsInteger;
                        dm.sds_nfceVl_acrescimos.ASFLOAT            :=  formvendas.Sds_PedidosENC_FINANCEIRO.AsFloat;
                        DM.SDS_NFcECOD_PGTO.ASINTEGER               :=  formvendas.Sds_PedidosCOD_PAGTO.AsInteger;
                        DM.SDS_NFcECD_FUNCIONARIO.AsInteger         :=  formvendas.Sds_PedidosCOD_VENDEDOR.AsInteger;
                        DM.SDS_NFcESERIE_NF.AsString                :=  '1';
                        DM.SDS_NFcENR_PEDIDO.ASINTEGER              :=  (n_venda);
                        dm.SDS_NFcEVL_AVISTA.ASFLOAT                :=  formvendas.Sds_PedidosValor_avista.AsFloat;
                        DM.SDS_NFcEVL_PRAZO.ASFLOAT                 :=  formvendas.Sds_PedidosValor_prazo.AsFloat;
                        //DM.SDS_NFEN_SEQUENCIA.Text                :=  '1';
                        DM.SDS_NFcECD_CFOP.ASSTRING                 :=  '5102';//RxDBComboEdit2.Text;
                        DM.SDS_NFcECFOP_DESC.AsString               :=  'n_venda DE MERCADORIA FDQUIRIDA OU RECEBIDA DE TERCEIROS';//suiEdit2.Text;
                        //dM.SDS_NFEVL_BASE_ICM.TEXT                :=  formvendas.Sds_PedidosVALOR_ITENS.TEXT;
                       { dm.SDS_NFcECD_TRANSPORTADORA.Text      :=  '';//RxDBComboEdit1.Text;
                        DM.SDS_NFcEPLACA_TRANSP.Text           :=  Edit5.Text;
                        DM.SDS_NFcEQt_volumes.Text             :=  Edit3.text;
                        DM.SDS_NFcEespecie_volumes.Text        :=  Edit4.text;
                        DM.SDS_NFcEMarca_volumes.Text          := 'UN';
                        DM.SDS_NFcENr_volumes.Text             :=  Edit3.text;
                        DM.SDS_NFcEPEso_liquido.Text           :=  Edit2.text;
                        DM.SDS_NFcEPEso_liquido.Text           :=  Edit2.text; }
                         with CDSFormas do
                          begin
                             first;
                             while not eof do
                                begin
                                   if CDSFormasVALOR.AsCurrency > 0 then
                                      begin
                                            DM.SDS_NFcETP.AsString    :=  CDSFormasTIPO.AsString;
                                     END;
                               NEXT;
                               END;
                           END;
                        DM.SDS_NFcENOME_CLIENTE_FOR.AsString       :=  formvendas.Sds_pedidosNOME_CLIENTE.AsString;
                        DM.SDS_NFcEBAIRRO_CLIENTE_FORN.AsString    :=  formvendas.Sds_pedidosBAIRRO.AsString;
                        dm.SDS_NFcEEND_NUM_CLIENTE.AsString        :=  formvendas.Sds_pedidosNUMERO.AsString;
                        DM.SDS_NFcECEP_CLIENTE_FORN.AsString       :=  formvendas.Sds_pedidosCEP.AsString;
                        DM.SDS_NFcETELEFONE.AsString               :=  formvendas.Sds_pedidosFONE.AsString;
                        dm.SDS_NFcECPF_CNPJ_CLIENTE_FORN.AsString  :=  formvendas.Sds_pedidosCPF_CNPJ.AsString;
                        dm.SDS_NFcETIPO_PESSOA.AsString            :=  formvendas.Sds_pedidosTIPO.AsString;
                        dm.SDS_NFcECOD_IBGE.AsString               :=  formvendas.Sds_pedidosCOD_IBGE.AsString;
                        DM.SDS_NFcEPRODUTOR_RURAL.AsString         :=  formvendas.Sds_pedidosPROD_RURAL.AsString;
                        DM.SDS_NFcEIE_CLIENTE_FORN.AsString        :=  formvendas.Sds_pedidosRG_IE.AsString;
                        DM.SDS_NFcEIE_PRODUTOR.AsString            :=  formvendas.Sds_pedidosIE_PRODUTOR.AsString;
                        dm.SDS_NFcECIDADE_CLIENTE_FORN.AsString    :=  formvendas.Sds_pedidosCIDADE.AsString;
                        DM.SDS_NFcEUF_CLIENTE_FORN.AsString        :=  formvendas.Sds_pedidosUF.AsString;
                        dm.SDS_NFcEENDERECO_CLI_FORN.AsString      :=  formvendas.Sds_pedidosENDERECO.AsString;
                        DM.SDS_NFcEPAGAMENTO.AsString              :=  formvendas.Sds_pedidosPAGAMENTO.AsString;
                        DM.SDS_NFCEVL_TROCO.AsFloat                := formvendas.Sds_pedidosVALOR_TROCO.AsFloat;
                        DM.SDS_NFcESTATUS.AsString                 :=  'N';

                        Application.ProcessMessages;

                     {   IF RxDBComboEdit1.Text >'' then
                        BEGIN
                        DM.SDS_NFcECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
                        DM.SDS_NFcEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
                        DM.SDS_NFcENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
                        DM.SDS_NFcEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
                        DM.SDS_NFcECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCD_CIDADE.Text;
                        DM.SDS_NFcEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
                        end; }

                        DM.SDS_NFcE.Post;
                        DM.SDS_NFcE.ApplyUpdates(0);

                                             dm.SDS_NFCE.Close;
                        dm.SDS_NFCE.SQL.Clear;
                        dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_NOTA = :NR_NOTA and cd_empresa =:cod_emp');
                        dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := N;
                        dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger := IEMP;
                        dm.SDS_NFCE.open;
                      NItem :=0;

                      formvendas.Sds_Pedidos_itens.First;
                       Contador := formvendas.Sds_Pedidos_itens.RecordCount;
                      For E:=1 to Contador do
                      begin
                        IF DM.SDS_CONFIGURACOESEXCLUI_SERV_NFE.Text = 'S' then
                        begin
                          dm.sds_nfce_itens.Insert;
                          dm.sds_nfce_itens.Edit;

                          with QBuscaItens do
                          begin
                            close;
                            Parambyname('cod_ven').AsInteger:=(n_venda);
                            Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
                            Parambyname('ITEM').AsInteger:= strtoint(formvendas.sds_pedidos_itensITEN.Text);
                            open;
                          end;

                          IF QBuscaItensPROD_SERV.Text = 'P' then
                          begin
                            NValor:=1;
                            tam := length(RemoveChar(formvendas.Sds_Pedidos_itensCODIGO_PRODUTO.Text));

                            NItem:=NItem+NValor;
                            dm.sds_nfce_itensITEN.AsInteger               := NItem;
                            dm.sds_nfce_itensNR_SEQUENCIA.asinteger       := NItem;
                            dm.sds_nfce_itensNR_NOTA.AsInteger            := N;
                            dm.sds_nfce_itensCOD_PRODUTO.Text             := '';
                            dm.sds_nfce_itensCOD_EMPRESA.AsInteger        := iemp;
                            dm.sds_nfce_itensCD_ATUALIZACAO.AsInteger     := (n_venda);
                            DM.sds_nfce_itensCODIGO_PROD.Text             := formvendas.Sds_Pedidos_itensCODIGO_PROD.Text;
                            dm.sds_nfce_itensDESCRICAO_PRODUTO.Text       := formvendas.Sds_Pedidos_itensDESCRICAO_PRODUTO.Text;
                           { if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                            dm.sds_nfce_itensVL_DESCONTO.Text             := '0'
                            ELSE }
                            dm.sds_nfce_itensVL_DESCONTO.ASFLOAT          := ABS(formvendas.Sds_Pedidos_itensDESCONTO.AsFloat);
                            dm.sds_nfce_itensQT_PRODUTO.AsFloat           := formvendas.Sds_Pedidos_itensQUANTIDADE.asfloat;
                            dm.sds_nfce_itensVL_UNITARIO.Asfloat          :=formvendas.Sds_Pedidos_itensPRECO_UNITARIO.AsFloat ;
                            if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                             dm.sds_nfce_itensVL_TOTAL.AsFloat            :=formvendas.Sds_Pedidos_itensPRECO_UNITARIO.AsFloat * formvendas.Sds_Pedidos_itensQUANTIDADE.asfloat
                            ELSE
                            dm.sds_nfce_itensVL_TOTAL.Text                := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Text;
                            dm.sds_nfce_itensDESC_UNIDADE.Text            := formvendas.Sds_Pedidos_itensUNIDADE.Text;
                            dm.sds_nfce_itensVL_OUTROS.Text               := formvendas.Sds_Pedidos_itensENC_FINANCEIRO.TEXT;
                            //dm.sds_nfce_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
                            DM.sds_nfce_itensCFOP.Text                    := QBuscaItensCFOP_EST_venda.Text;
                            dm.sds_nfce_itensCST.Text                     := QBuscaItensCST_venda.Text;

                            dm.sds_nfce_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_venda_EST.Text;
                            dm.sds_nfce_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_venda_EST.Text;
                            dm.sds_nfce_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
                            IF QBuscaItensNCM_SH.Text > '' THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
                            end else
                            IF QBuscaItensNCM_SH1.Text > '' THEN
                            begin
                            DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH1.Text;
                            end;
                            IF DM.sds_nfce_itensCOD_NCM.Text ='' THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := '00000000';
                            end;
                            IF DM.sds_nfce_itensCOD_NCM.Text ='99999999' THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := '00000000';
                            end;
                            IF Length(DM.sds_nfce_itensCOD_NCM.Text) < 8 THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := '00000000';
                            END;
                            DM.sds_nfce_itensCEST.Text                      := QBuscaItenscest.Text;

                            dm.sds_nfce_itensALIQ_ICM.AsFloat               := formvendas.sds_pedidos_itensPERC_ICM.AsFloat ;
                            dm.sds_nfce_itensVL_ICM.AsFloat                 := formvendas.sds_pedidos_itensVL_ICM.AsFloat;
                            dm.sds_nfce_itensVL_BASE_ICM.AsFloat            := formvendas.sds_pedidos_itensBASE_ICMS.AsFloat;

                            dm.sds_nfce_itensALIQ_IPI.AsFloat               := formvendas.sds_pedidos_itensPERC_IPI.AsFloat ;
                            dm.sds_nfce_itensVL_IPI.AsFloat                 := formvendas.sds_pedidos_itensVL_IPI.AsFloat;
                            dm.sds_nfce_itensVL_BASE_IPI.AsFloat            := formvendas.sds_pedidos_itensBASE_IPI.AsFloat;

                            dm.sds_nfce_itensALIQ_ISS.AsFloat               := formvendas.sds_pedidos_itensPERC_ISS.AsFloat ;
                            dm.sds_nfce_itensVL_ISS.AsFloat                 := formvendas.sds_pedidos_itensVL_ISS.AsFloat;
                            dm.sds_nfce_itensVL_BASE_ISS.AsFloat            := formvendas.sds_pedidos_itensBASE_ISS.AsFloat ;

                            dm.sds_nfce_itensVL_BASE_PIS.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
                            dm.sds_nfce_itensVL_BASE_COFINS.AsFloat         := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
                            DM.sds_nfce_itensALIQ_PIS.AsFloat               := formvendas.sds_pedidos_itensPERC_PIS.AsFloat;
                            DM.sds_nfce_itensALIQ_COFINS.AsFloat            := formvendas.Sds_Pedidos_itensPERC_COFINS.AsFloat;
                            dm.sds_nfce_itensVL_PIS.AsFloat                 := formvendas.sds_pedidos_itensVL_PIS.AsFloat ;
                            dm.sds_nfce_itensVL_COFINS.AsFloat              := formvendas.sds_pedidos_itensVL_COFINS.AsFloat ;

                            dm.sds_nfce_itensVL_BASE_ICM_SUBST.AsFloat      := formvendas.sds_pedidos_itensBASE_ICMS_SUBST.AsFloat ;
                            dm.sds_nfce_itensALIQ_ICM_SUBST.AsFloat         := formvendas.sds_pedidos_itensPERC_ICMS_SUBST.AsFloat;
                            dm.sds_nfce_itensVL_ICM_SUBST.AsFloat           := formvendas.sds_pedidos_itensVL_ICMS_SUBST.AsFloat  ;


                            dm.sds_nfce_itens.Post;
                          end
                          else
                            dm.sds_nfce_itens.Cancel;
                        end
                        else
                        begin
                          dm.sds_nfce_itens.Insert;
                          dm.sds_nfce_itens.Edit;

                          with QBuscaItens do
                          begin
                            close;
                            Parambyname('cod_ven').AsInteger:= (n_venda);
                            Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
                            Parambyname('ITEM').AsInteger:= strtoint(formvendas.sds_pedidos_itensITEN.Text);
                            open;
                          end;

                          NValor:=1;
                          tam := length(RemoveChar(formvendas.Sds_Pedidos_itensCODIGO_PRODUTO.Text));

                          NItem:=NItem+NValor;
                          dm.sds_nfce_itensITEN.AsInteger               := NItem;
                          dm.sds_nfce_itensNR_SEQUENCIA.AsInteger            :=  NItem;
                          dm.sds_nfce_itensNR_NOTA.AsInteger            := N;
                          dm.sds_nfce_itensCOD_EMPRESA.AsInteger           := iemp;
                          dm.sds_nfce_itensCOD_PRODUTO.Text             := '';
                          dm.sds_nfce_itensCD_ATUALIZACAO.AsInteger     := (n_venda);
                          DM.sds_nfce_itensCODIGO_PROD.Text             := formvendas.Sds_Pedidos_itensCODIGO_PROD.Text;
                          dm.sds_nfce_itensDESCRICAO_PRODUTO.Text       := formvendas.Sds_Pedidos_itensDESCRICAO_PRODUTO.Text;
                         { if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                          dm.sds_nfce_itensVL_DESCONTO.Text             := '0'
                          ELSE }
                          dm.sds_nfce_itensVL_DESCONTO.ASFLOAT          := ABS(formvendas.Sds_Pedidos_itensDESCONTO.AsFloat);
                          dm.sds_nfce_itensQT_PRODUTO.AsFloat           := formvendas.Sds_Pedidos_itensQUANTIDADE.asfloat;
                          dm.sds_nfce_itensVL_UNITARIO.Asfloat          :=formvendas.Sds_Pedidos_itensPRECO_UNITARIO.AsFloat ;
                          if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                           dm.sds_nfce_itensVL_TOTAL.AsFloat            :=formvendas.Sds_Pedidos_itensPRECO_UNITARIO.AsFloat * formvendas.Sds_Pedidos_itensQUANTIDADE.asfloat
                          ELSE
                          dm.sds_nfce_itensVL_TOTAL.Text                := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Text;
                          dm.sds_nfce_itensDESC_UNIDADE.Text            := formvendas.Sds_Pedidos_itensUNIDADE.Text;
                          dm.sds_nfce_itensVL_OUTROS.Text               := formvendas.Sds_Pedidos_itensENC_FINANCEIRO.TEXT;
                          //dm.sds_nfce_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
                          DM.sds_nfce_itensCFOP.Text                    := QBuscaItensCFOP_EST_venda.Text;
                          dm.sds_nfce_itensCST.Text                     := QBuscaItensCST_venda.Text;

                          dm.sds_nfce_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_venda_EST.Text;
                          dm.sds_nfce_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_venda_EST.Text;
                          dm.sds_nfce_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
                          IF QBuscaItensNCM_SH.Text > '' THEN
                          BEGIN
                          DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
                          end else
                          IF QBuscaItensNCM_SH1.Text > '' THEN
                          begin
                          DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH1.Text;
                          end;
                          IF DM.sds_nfce_itensCOD_NCM.Text ='' THEN
                          BEGIN
                          DM.sds_nfce_itensCOD_NCM.Text                 := '00000000';
                          end;
                          IF DM.sds_nfce_itensCOD_NCM.Text ='99999999' THEN
                          BEGIN
                          DM.sds_nfce_itensCOD_NCM.Text                 := '00000000';
                          end;
                          IF Length(DM.sds_nfce_itensCOD_NCM.Text) < 8 THEN
                          BEGIN
                          DM.sds_nfce_itensCOD_NCM.Text                 := '00000000';
                          END;
                          DM.sds_nfce_itensCEST.Text                      := QBuscaItenscest.Text;

                          dm.sds_nfce_itensALIQ_ICM.AsFloat               := formvendas.sds_pedidos_itensPERC_ICM.AsFloat ;
                          dm.sds_nfce_itensVL_ICM.AsFloat                 := formvendas.sds_pedidos_itensVL_ICM.AsFloat;
                          dm.sds_nfce_itensVL_BASE_ICM.AsFloat            := formvendas.sds_pedidos_itensBASE_ICMS.AsFloat;

                          dm.sds_nfce_itensALIQ_IPI.AsFloat               := formvendas.sds_pedidos_itensPERC_IPI.AsFloat ;
                          dm.sds_nfce_itensVL_IPI.AsFloat                 := formvendas.sds_pedidos_itensVL_IPI.AsFloat;
                          dm.sds_nfce_itensVL_BASE_IPI.AsFloat            := formvendas.sds_pedidos_itensBASE_IPI.AsFloat;

                          dm.sds_nfce_itensALIQ_ISS.AsFloat               := formvendas.sds_pedidos_itensPERC_ISS.AsFloat ;
                          dm.sds_nfce_itensVL_ISS.AsFloat                 := formvendas.sds_pedidos_itensVL_ISS.AsFloat;
                          dm.sds_nfce_itensVL_BASE_ISS.AsFloat            := formvendas.sds_pedidos_itensBASE_ISS.AsFloat ;

                          dm.sds_nfce_itensVL_BASE_PIS.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
                          dm.sds_nfce_itensVL_BASE_COFINS.AsFloat         := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
                          DM.sds_nfce_itensALIQ_PIS.AsFloat               := formvendas.sds_pedidos_itensPERC_PIS.AsFloat;
                          DM.sds_nfce_itensALIQ_COFINS.AsFloat            := formvendas.Sds_Pedidos_itensPERC_COFINS.AsFloat;
                          dm.sds_nfce_itensVL_PIS.AsFloat                 := formvendas.sds_pedidos_itensVL_PIS.AsFloat ;
                          dm.sds_nfce_itensVL_COFINS.AsFloat              := formvendas.sds_pedidos_itensVL_COFINS.AsFloat ;

                          dm.sds_nfce_itensVL_BASE_ICM_SUBST.AsFloat      := formvendas.sds_pedidos_itensBASE_ICMS_SUBST.AsFloat ;
                          dm.sds_nfce_itensALIQ_ICM_SUBST.AsFloat         := formvendas.sds_pedidos_itensPERC_ICMS_SUBST.AsFloat;
                          dm.sds_nfce_itensVL_ICM_SUBST.AsFloat           := formvendas.sds_pedidos_itensVL_ICMS_SUBST.AsFloat  ;


                          dm.sds_nfce_itens.Post;
                        end;

                        formvendas.Sds_Pedidos_itens.next;

                        Application.ProcessMessages;

                      {  EXCEPT
                          ShowMessage('Erro ao gravar os itens da nfce...'); }
                       // end;
                       end;

                        NOTA := IntToStr(N);
                      {  DM.SDS_NFCE.Filtered := False;
                        DM.SDS_NFCE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
                        DM.SDS_NFCE.Filtered := True;  }
                        dm.SDS_NFCE.Close;
                        dm.SDS_NFCE.SQL.Clear;
                        dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_NOTA = :NR_NOTA and cd_empresa =:cod_emp');
                        dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := N;
                        dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger := IEMP;
                        dm.SDS_NFCE.open;

                        BEGIN
                        dm.sds_nfce_itens.First;
                        ValorTotalNfce:= 0;
                        ValorTotalDescontosNfce:= 0;
                        While not dm.sds_nfce_itens.Eof do
                        begin
                        Xa:= Xa + dm.sds_nfce_itensVl_ICM.AsFloat;
                        Y:= Y + dm.sds_nfce_itensVl_IPI.AsFloat;
                        Za:= Za + dm.sds_nfce_itensVl_ISS.AsFloat;
                        BX := BX + dm.sds_nfce_itensVL_BASE_ICM.AsFloat;
                        BY := BY + dm.sds_nfce_itensVL_BASE_IPI.AsFloat;
                        BZ := BZ + dm.sds_nfce_itensVL_BASE_ISS.AsFloat;

                        B_PIS := B_PIS +  dm.sds_nfce_itensVL_BASE_PIS.AsFloat;
                        PIS   :=  PIS + dm.sds_nfce_itensVL_PIS.AsFloat;
                        B_COFINS := B_COFINS + dm.sds_nfce_itensVL_BASE_COFINS.AsFloat;
                        COFINS   := COFINS + dm.sds_nfce_itensVL_COFINS.AsFloat;
                         total_t := total_t +   dm.sds_nfce_itensVL_DESCONTO.AsFloat;
                          total_g := total_g + dm.sds_nfce_itensVL_TOTAL.AsFloat;

                          IF DM.SDS_CONFIGURACOESEXCLUI_SERV_NFE.Text = 'S' then
                          begin
                            with QBuscaItens do
                            begin
                              close;
                              Parambyname('cod_ven').AsInteger:= (n_venda);
                              Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
                              Parambyname('ITEM').AsInteger:= strtoint(formvendas.sds_pedidos_itensITEN.Text);
                              open;
                            end;

                            IF QBuscaItensPROD_SERV.Text = 'P' then
                            begin
                               ValorTotalNfce:= ValorTotalNfce + dm.sds_nfce_itensVL_TOTAL.AsFloat;
                               ValorTotalDescontosNfce:= ValorTotalDescontosNfce + dm.sds_nfce_itensVL_DESCONTO.AsFloat;
                            end;
                          end;

                        dm.sds_nfce_itens.Next;

                        ICM:=Xa;
                        IPI:=Y;
                        Iss :=Za;
                        B_ICM := BX;
                        B_IPI := By;
                        B_ISS := BZ;
                        end;
                        dm.sds_nfce_itens.First;

                        DM.SDS_NFcE.Edit;
                        DM.SDS_NFcEVL_ICM.aSfloat := ICM;
                        DM.SDS_NFcEVL_IPI.aSfloat := IPI;

                        if ValorTotalNfce > 0 then
                        begin
                          DM.SDS_NFCEVL_TOTAL.aSfloat := ValorTotalNfce + ICM + IPI;
                          DM.SDS_NFCEVL_DESCONTOS.aSfloat := ValorTotalDescontosNfce;
                          DM.SDS_NFCEVL_MERCADORIAS.AsFloat      :=  ValorTotalNfce;
                        end;
                        DM.SDS_NFcEVL_ISS.aSfloat := ISS;
                        DM.SDS_NFcEVL_BASE_ICM.aSfloat := B_ICM;
                        DM.SDS_NFcEVL_BASE_IPI.aSfloat := B_IPI;
                        DM.SDS_NFcEVL_BASE_ISS.aSfloat := B_ISS;

                        DM.SDS_NFcEVL_BASE_PIS.aSfloat := B_PIS;
                        DM.SDS_NFcEVL_BASE_COFINS.aSfloat := B_COFINS;
                        DM.SDS_NFcEVL_PIS.aSfloat := PIS;
                        DM.SDS_NFcEVL_COFINS.aSfloat := COFINS;

                        DM.SDS_NFCEVL_DESCONTOS.AsFloat:= total_t;
                        DM.SDS_NFCEVL_TOTAL.AsFloat:= total_G + icm + IPI;
                        DM.SDS_NFCEVL_MERCADORIAS.AsFloat:=  total_G ;

                        DM.SDS_NFcE.Edit;
                        DM.SDS_NFcECD_CFOP.Text                :=     QBuscaItensCFOP_EST_venda.Text;
                        DM.SDS_NFcE.Post;
                        DM.SDS_NFcE.ApplyUpdates(0);

                        dm.sds_nfce_itens.edit;
                        dm.sds_nfce_itens.Post;
                        dm.sds_nfce_itens.ApplyUpdates(0);

                        end;

                        PercentualDesconto := dm.SDS_NFCEVL_ACRESCIMOS.AsFloat * 100 / dm.SDS_NFCEVL_MERCADORIAS.AsFloat;

                        dm.sds_nfce_itens.First;
                        Contador := 0;
                        Contador:=dm.sds_nfce_itens.RecordCount;
                        d:=0;
                        For d:=1 to Contador do
                        begin
                        dm.sds_nfce_itens.Edit;
                      //  TOTAL1:= (EdtValorDesconto.Value / Contador);
                        dm.sds_nfce_itensVL_OUTROS.AsFloat :=  dm.sds_nfce_itensVL_TOTAL.AsFloat * PercentualDesconto / 100;
                        dm.sds_nfce_itens.post;
                        dm.sds_nfce_itens.ApplyUpdates(0);
                        dm.sds_nfce_itens.Next;
                        end;

                        // ACHA RESTO DA DIVISÃO
                        dm.sds_nfce_itens.First;
                        Total1 := 0;
                        Xt:= 0;
                        Xt:= Xt + StrToFloatDef(dm.sds_nfce_itensVL_OUTROS.Text,0.00);
                        dm.sds_nfce_itens.Next;
                        TOTAL1 := Xt;
                        While not dm.sds_nfce_itens.Eof do
                        begin
                        Xt:= Xt + StrToFloatDef(dm.sds_nfce_itensVL_OUTROS.Text,0.00);
                        dm.sds_nfce_itens.Next;
                        Total1:= Xt;
                        end;


                        //valor_desc := (dm.sds_nfe_itensVL_OUTROS.MaxValue);

                             //dm.sds_nfe_itens.Locate('VL_OUTROS',valor_desc,[]);

                        total_venda := (dm.SDS_NFCEVL_ACRESCIMOS.ASFLOAT - Total1);

                        //Edit13.Text := FloatToStr(total_venda ) ;
                       // CurrencyEdit9.Value := total_venda;
                      //  dm.sds_nfe_itens.Edit;

                      //   dm.sds_nfe_itens.First;
                        IF dm.SDS_NFCEVL_ACRESCIMOS.ASFLOAT > TOTAL1  then
                        begin
                         dm.sds_nfce_itens.Edit;
                         xt :=dm.sds_nfce_itensVL_OUTROS.AsFloat;
                         dm.sds_nfce_itensVL_OUTROS.AsFloat := abs(xt + total_venda);
                         dm.sds_nfce_itens.Post;
                        dm.sds_nfce_itens.ApplyUpdates(0);
                        end ELSE

                        IF dm.SDS_NFCEVL_ACRESCIMOS.ASFLOAT < TOTAL1   then
                        begin
                         dm.sds_nfce_itens.Edit;
                         xt :=dm.sds_nfce_itensVL_OUTROS.AsFloat;
                         dm.sds_nfce_itensVL_OUTROS.AsFloat := abs(xt - total_venda);
                         dm.sds_nfce_itens.Post;
                         dm.sds_nfce_itens.ApplyUpdates(0);
                        end;
                        //confirmar.Enabled := True;


                        dm.Coneccao.Commit;
                        Application.ProcessMessages;



                         //   NOTA := QConsNfeNR_NOTA.TEXT;

                          IMPRIME := TRUE;

                          FormGeraNFce:=TFormGeraNFce.Create(self);
                          FormGeraNFce.combobox2.itemIndex := 0;
                          FormGeraNFce.combobox2.Enabled := False;
                          DM.qrcfop.Active := False;
                          DM.qrcfop.sql.Clear;
                          DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop >=4999');
                          DM.qrcfop.Active := true;
                          FormGeraNFce.RxDBComboEdit2.Text :=  QBuscaItensCFOP_EST_venda.Text;
                          dm.SDS_NFCE.Close;
                          dm.SDS_NFCE.SQL.Clear;
                          dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_NOTA = :NR_NOTA');
                          dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := N;
                          dm.SDS_NFCE.open;

                         // DM.SDS_NFCE.Filter:='NR_NOTA ='+QuotedStr (INTTOSTR(N));

                          DM.sds_nfe_itens.Active := false;
                          DM.sds_nfe_itens.Active := true;
                          FormGeraNFce.Inserir.Enabled := False;
                          FormGeraNFce.confirmar.Enabled := TRUE;
                          FormGeraNFce.ShowModal;

                         { FormNFe:=TFormNFe.Create(self);
                          FormNFe.btnCriarEnviar.Enabled := false;
                          valida_nfc := false;
                          FormNFe.Tag := 2;
                          FormNFe.showmodal;   }

                          IF VALIDA_NFC = true then
                          begin
                          SPC_N_NFE.Params[0].AsInteger :=  (n_venda);
                          SPC_N_NFE.Params[1].AsInteger  := StrToInt(DM.SDS_NFCENR_NOTA.text);
                          SPC_N_NFE.Params[2].AsString  :=  DM.SDS_NFCESERIE_NF.text;
                          SPC_N_NFE.Params[3].AsInteger  := IEMP;
                          SPC_N_NFE.ExecProc;
                         // Application.ProcessMessages;
                          end;

                          // SE USAR FARMACIA POPULAR
                         if DM.SDS_CONFIGURACOESUSA_FP.Text = 'S' then
                         BEGIN
                            application.ProcessMessages;
                         if Application.MESSAGEBOX('n_venda da Farmacia Popular?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                          begin
                             //  DM.sds_vendas.Active := false;
                             DM.sds_vendas_itens.Active := false;
                             DM.sds_vendas.close;
                             DM.sds_vendas.SQL.Clear;
                             DM.sds_vendas.SQL.add('select * from PEDIDOS where codigo >0'+'');
                             DM.sds_vendas.SQL.add('and codigo ='+QuotedStr(formvendas.Sds_pedidosCODIGO.Text)+'');
                             DM.sds_vendas.SQL.add('ORDER BY Codigo DESC');
                             DM.sds_vendas.Open;
                             DM.sds_vendas.Active := True;
                             DM.sds_vendas_itens.Active := true;
                            try
                           //  If frmFarmaciaPopular=nil then
                               begin
                              //  CoInitialize(nil);
                                N_CUPOM := DM.SDS_NFCENR_NOTA.text;
                                frmFarmaciaPopular:=TfrmFarmaciaPopular.Create(self);
                                //frmFarmaciaPopular.n_venda := formvendas.Sds_pedidosCODIGO.Text;
                                  frmFarmaciaPopular.Tag := 0;
                                   frmFarmaciaPopular.ShowModal;
                                //    CoUninitialize;
                                end;
                                except
                                  ShowMessage('Houve um erro ao Criar o Formulario  da Farmácia Popular');
                                end;
                          end;
                          END;



                       if DM.SDS_UsuariosIMP_DARUMA_NFCE.Text ='S'then
                       if Application.MESSAGEBOX('Confirma emissão da n_venda (Daruma)?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                       begin
                            DMC.SDS_CHEQUES.Active := false;
                          DMC.sds_mov_Caixa.Active := False;
                          DMC.SDS_Crediario_Contrato.Active :=False;
                          DMC.SDS_Pedido_Itens.Active:= False;
                          DMC.SDS_Cliente.Active:= False;
                          DMC.SQLD_Pedidos.Active:=False;
                          DMC.CDS_Pedidos.Active:=False;
                          DM.SDS_Empresa.active := false;
                          DMC.SQLD_Pedidos.Params[0].asinteger:= n_venda;
                          DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                          DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
                          DMC.SQLD_Pedidos.Active:=True;
                          DMC.CDS_Pedidos.Active:=True;
                          DMC.SDS_Pedido_Itens.Active:= True;
                          DMC.SDS_Cliente.Active:= True;
                          DM.SDS_Empresa.active := true;
                          DMC.SDS_Crediario_Contrato.Active :=true;
                          DMC.sds_mov_Caixa.Active := True;
                          DMC.SDS_CHEQUES.Active := True;


                      cabecalho := '<bmp></bmp>'+ dm.sds_empresanome_fantasia.text+'<l></l>'+
                                  'CNPJ: '+dm.sds_empresacnpj.text+'   I.E:'+dm.sds_empresaIE.text+'<l></l>'+
                                  ''+dm.sds_empresaENDERECO.text+' nº:'+dm.sds_empresaNUMERO.text +'<l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '      <b>C O M P R O V A N T E  D E  V E N D A</b><l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '<c>Número: '+dmc.cds_pedidosCODIGO.Text +   '  Emissão: '+dmc.cds_pedidosDATA_PEDIDO.text+'  Vend:'+dmc.cds_pedidosUSUARIO.text +'<c><l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  'Nome: '+dmc.cds_pedidosnome_cliente.Text+'<l></l>'+
                                  'Cpf: '+dmc.cds_pedidoscpf_cnpj.Text+'<l></l>'+
                                  'End: '+dmc.cds_pedidosendereco.Text+ 'nº'+dmc.cds_pedidosnumero.Text+'<l></l>'+
                                  'Bairro: '+dmc.cds_pedidosbairro.Text+ 'Cid:'+dmc.cds_pedidoscidade.Text+'UF:'+dmc.cds_pedidosuf.Text+'<l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '<c>Codigo    Descricao         Qtde Un   VlrUnit   VlrTotal</c><l></l>'+
                                  '------------------------------------------------<l></l>';
                      Memo1.Clear;
                      DMC.SDS_Pedido_Itens.First;
                      Contador := DMC.Sds_Pedido_itens.RecordCount;
                      For E:=1 to Contador do
                      begin

                             Memo1.Lines.Add('<c>'+DMC.Sds_Pedido_itenscodigo_produto.text+ '    '+DMC.Sds_Pedido_itensdescricao_produto.text+'</c><l></l>'+
                                             '<c>'+FormatFloat('##,##0.00',DMC.Sds_Pedido_itensquantidade.asfloat)+'                         '+DMC.Sds_Pedido_itensunidade.text+'    X '+FormatFloat('##,##0.00',DMC.Sds_Pedido_itenspreco_unitario.asfloat)+'   '+Formatar(FormatFloat('##,##0.00',(DMC.Sds_Pedido_itenspreco_total.asfloat)),8,false,' ')+'</c><l></l>');
                       DMC.Sds_Pedido_itens.next;
                       end;

                     itens:= Memo1.Text;
                    // DM.ACBrNFe1.NotasFiscais.items[0].nfe.Det.Items[n].Prod.cProd

                    meio:=    '------------------------------------------------<l></l>'+
                              'QTD. TOTAL DE ITENS                          '+FORMPRINCIPAL.texto_justifica(IntToStr(Contador),3,' ','E')+'<l></l>'+
                              'VALOR TOTAL R$                        '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',dmc.cds_pedidosvalor_itens.asfloat),10,' ','E')+'<l></l>'+
                              'Descontos                             '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',dmc.CDS_PedidosVALOR_DESCONTO.asfloat),10,' ','E')+'<l></l>'+
                              'Troco                                 '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',dmc.CDS_PedidosVALOR_TROCO.asfloat),10,' ','E')+'<l></l>'+
                              'FORMA DE PAGAMENTO                    Valor Pago<l></l>';

                            DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                            DMC.QRY_COND_PAGTO.Params.ParamByName('cod_empresa').AsInteger  := iemp;
                            DMC.QRY_COND_PAGTO.Open;


                          DMC.QRY_COND_PAGTO.First;
                          while not DMC.QRY_COND_PAGTO.Eof do
                              begin
                                 if DMC.QRY_COND_PAGTOVALOR.AsFloat > 0 then
                                    begin
                                       pag:=(Formatar(DMC.QRY_COND_PAGTOTIPO_PAGTO.Text,35, True,'.')+'R$ '+Formatar(FormatFloat('###,###,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat),10,false,' '));
                                    end;
                                 DMC.QRY_COND_PAGTO.Next;
                              end;


                      pagamento:=  ''+pag+'<l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '                  ASSINATURA                    <l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '<c>                 SIACE SISTEMAS              </c><sl>4</sl><gui></gui><l></l>';


                      iRetorno:=iImprimirTexto_DUAL_DarumaFramework(cabecalho+ itens + meio + pagamento, 0);


                      end;


                  end;




               If DM.SDS_CONFIGURACOESCUPOM.Text = 'S' then
               if Application.MESSAGEBOX('Confirma Imprimir o Cupom Fiscal?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
               begin
                      panel9.Visible := true;

                  if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
                  begin
                      iRetorno := Bematech_FI_AbreCupom( pchar( '' ) );
                      FormPrincipal.Analisa_iRetorno();
                      FormPrincipal.Retorno_Impressora();

                      application.ProcessMessages;
                      panel9.Repaint;
                    begin
                       DMC.SDS_Pedido_Itens.Active:= False;
                       DMC.SDS_Cliente.Active:= False;
                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                      // DMC.SDS_PDV.Active:=False;
                      // DM.SDS_CondPagamento.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].AsInteger:=n_venda;
                       DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                       DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
                      // DMC.SDS_PDV.Active:=true;
                       DMC.SQLD_Pedidos.Active:=True;
                       DMC.CDS_Pedidos.Active:=True;
                       DMC.SDS_Pedido_Itens.Active:= True;
                       DMC.SDS_Cliente.Active:= True;
                     //  DM.SDS_CondPagamento.Active:=true;

                       DMC.SDS_Pedido_Itens.First;
                       Contador:= DMC.SDS_Pedido_Itens.RecordCount;

                       ProgressBar1.MaxValue := contador;

                       For I:=1 to Contador do
                       begin
                       ProgressBar1.Progress := I;
                       Sleep(90);
                        application.ProcessMessages;
                       CPFCNPJ:= (DMC.cDS_pedidosCPF_CNPJ.AsString);
                       RGIE:= DMC.cDS_pedidosRG_IE.AsString + #13#10+ ' IE Produtor: ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
                       EnderComp:= DMC.cDS_pedidosENDERECO.AsString + #13#10 + DMC.cDS_pedidosBAIRRO.AsString+' - '+DMC.CDS_PedidosCIDADE.AsString +' - '+DMC.SDS_ClienteUF.text ;

                       // parametros
                       B := StrToFloatDef(DMC.SDS_Pedido_Itens.FieldByname('Quantidade').Text, 0.000);
                       EF := DMC.SDS_Pedido_ItensENC_FINANCEIRO.AsFloat;
                       VF := StrToFloatDef(DMC.SDS_Pedido_Itens.FieldByname('PRECO_UNITARIO').Text,0.00);
                       Desct:= DMC.CDS_Pedidos.FieldByname('VALOR_DESCONTO').Value;
                       ValCompra := DMC.CDS_Pedidos.FieldByname('VALOR_TOTAL').Value;
                       // fim parametros


                       sCodigo        :=  DMC.SDS_Pedido_ItensCodigo_produto.AsString;
                       sDescricao     :=  Formatar(DMC.SDS_Pedido_ItensDescricao_produto.AsString,25,true,' ');

                       edit5.Text  := DMC.SDS_Pedido_Itens.FieldByname('SIT_TRIBUTARIA').Text;
                       if Edit6.Text = 'LETRAS' then
                       begin
                       sAliquota      :=  EDIT5.TEXT;
                       END ELSE
                       if Edit6.Text = 'NUMEROS' then
                       begin
                       sAliquota      :=  RemoveChar(DMC.SDS_Pedido_Itens.FieldByname('SIT_TRIBUTARIA').TEXT);
                       sAliquota      :=  Formatar(sAliquota,4,False,'0');
                       end;
                       sUnidade       := (DMC.SDS_Pedido_Itens.FieldByname('UNIDADE').AsString);
                       sTipoQtde      := ('F');
                       sQtde          := FormatFloat('##,##0.000',B);
                       sValor         := FormatFloat('##,##0.00',VF);
                       sTipoDesconto  := '$';
                       IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                        BEGIN
                       cValorDesc     := '0000';
                       END ELSE
                       IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                       BEGIN
                       cValorDesc      := FormatFloat('##,##0.00',DMC.SDS_Pedido_ItensDESCONTO.ASFLOAT);
                       END;

                       iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), PChar(sAliquota),
                       PChar(sTipoQtde), sQtde, 2, sValor, PChar(sTipoDesconto), (cValorDesc));


                            with formvendas.QBuscaItens1 do
                            begin
                             close;
                             Parambyname('codpro').AsInteger:= strtoint(DMC.SDS_Pedido_ItensCODIGO_PROD.text);
                             Parambyname('cod_ven').AsInteger:= (n_venda);
                             open;
                             Last;
                           end;


                         if formvendas.QBuscaItens1alic_nac.AsFloat > 0.01 then
                         begin
                          tributo := tributo + ExatoCurrency((DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat  * formvendas.QBuscaItens1ALIC_NAC.AsFloat / 100),2);
                          end else
                         if formvendas.QBuscaItens1PERC_TRIBU.AsFloat > 0.01 then
                         begin
                           tributo := tributo + ExatoCurrency((DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat * formvendas.QBuscaItens1PERC_TRIBU.AsFloat / 100),2);
                         end;

                       FormPrincipal.Analisa_iRetorno();
                       FormPrincipal.Retorno_Impressora();

                       DMC.SDS_Pedido_Itens.Next;
                        application.ProcessMessages;
                       end;
                       begin

                       //CD:= DMC.CDS_PedidosTP.AsString;
                       //IF CD = 'A' THEN BEGIN
                       if TotalizaFormaPagamento('A') > 0 then  BEGIN
                       //PG:= 'DINHEIRO';
                       PG:= '01';
                       PAG :='DINHEIRO';
                       cd := 'A';
                       end else
                       //IF CD = 'C' THEN BEGIN
                       if TotalizaFormaPagamento('C') > 0 then BEGIN
                       //PG:= 'CREDIARIO';
                       PG:= '04';
                       PAG :='PRAZO';
                       CD:= 'C';
                       end else
                       //IF CD = 'H' THEN BEGIN
                       if TotalizaFormaPagamento('H') > 0 then BEGIN
                       //PG:= 'CHEQUE';
                       PG:= '02';
                       PAG :='CHEQUE';
                       CD := 'H';
                       end else
                       //IF CD = 'F' THEN BEGIN
                       if TotalizaFormaPagamento('F') > 0 then BEGIN
                       //PG:= 'FINANCEIRA';
                       PG:= '03';
                       PAG :='CARTAO';
                       CD := 'F';
                       end else
                       //IF CD = 'V' THEN BEGIN
                       if TotalizaFormaPagamento('V') > 0 then BEGIN
                       //PG:= 'VALE';
                       PG:= '05';
                       PAG :='VALE';
                       CD :='V';
                       end;


                          cFormaPgto      := PAG;
                          cValorPago      := FormatFloat('0.00',DBGridFormas.Columns.Items[1].TotalFooter.Value);
                          tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo)+ ' FONTE: IBPT';
                          cMsgPromocional := tributos+#13+#10+'Cliente:'+' '+(DMC.cds_pedidosCodigo_Cliente.Text)+' - '+(DMC.cds_pedidosNOME_Cliente.Text)+#13+#10+'Cnpj/Cpf:'+' '+CPFCNPJ+' - '+'Ie/Rg:'+' '+RGIE+#13+#10+'Endereço:'+' '+ENDERCOMP+#13+#10+(DMC.CDS_PedidosOBSERVACOES.AsString)+#13+#10'n_venda:'+inttostr(n_venda)+' Vendedor:' +(DMC.CDS_PedidosUSUARIO.Text)+#13+#10 + 'PARTIDA: '+DMC.CDS_PedidosN_PARTIDA.TEXT+#13+#10+#13+#10+#13+#10+#13+#10;

                          if DMC.CDS_PedidosVALOR_DESCONTO.AsFloat >= 0 then
                          BEGIN
                          cAcreDesc      := 'D';
                          cTipoAcreDesc  := '$';
                          cValorAcreDesc := FormatFloat('0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat);
                          end else
                          if DMC.CDS_PedidosENC_FINANCEIRO.AsFloat >0 then
                          BEGIN
                          cAcreDesc      := 'A';
                          cTipoAcreDesc  := '$';
                          cValorAcreDesc := FormatFloat('0.00',DMC.CDS_PedidosENC_FINANCEIRO.AsFloat);
                          end;
                          iRetorno := Bematech_FI_IniciaFechamentoCupom( pchar( cAcreDesc ), pchar( cTipoAcreDesc ), pchar( cValorAcreDesc ) );
                          FormPrincipal.Analisa_iRetorno();
                          FormPrincipal.Retorno_Impressora();

                          iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto ), pchar( cValorPago ) );
                          FormPrincipal.Analisa_iRetorno();
                          FormPrincipal.Retorno_Impressora();

                          iRetorno := Bematech_FI_TerminaFechamentoCupom( pchar( cMsgPromocional ) );
                          FormPrincipal.Analisa_iRetorno();
                          FormPrincipal.Retorno_Impressora();
                           application.ProcessMessages;

                           if pag = 'DINHEIRO' then
                              begin
                             if DM.SDS_CONFIGURACOESUSA_GAVETA.Text ='S' then
                               begin
                                iRetorno := Bematech_FI_AcionaGaveta();
                                Formprincipal.Analisa_iRetorno();
                                Formprincipal.Retorno_Impressora();
                               end;
                            end;
                          //suiButton2.Default := True;
                          begin
                          SPC_N_CUPOM.Params[0].AsInteger :=  StrToInt(DMC.CDS_PedidosCODIGO.text);
                          for iConta := 1 to 6 do
                          NumeroCupom := NumeroCupom + ' ';
                          iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );
                          FormPrincipal.Analisa_iRetorno();
                         // ShowMessage( 'Número do Cupom: ' + NumeroCupom);
                          FormPrincipal.Retorno_Impressora();
                          SPC_N_CUPOM.Params[1].AsInteger  :=  StrToInt(NumeroCupom);
                          for iConta := 1 to 4 do
                          NumeroCaixa := NumeroCaixa + ' ';
                          iRetorno := Bematech_FI_NumeroCaixa( NumeroCaixa );
                          FormPrincipal.Analisa_iRetorno();
                         // ShowMessage( 'Número do Caixa: ' + NumeroCaixa);
                          FormPrincipal.Retorno_Impressora();
                          SPC_N_CUPOM.Params[2].asstring  :=  NumeroCaixa;
                          SPC_N_CUPOM.ExecProc;
                          end;

                        //Desativar1.Click;
                        // suiButton2Click(Sender);
                         // SE USAR FARMACIA POPULAR
                         if DM.SDS_CONFIGURACOESUSA_FP.Text = 'S' then
                         BEGIN
                            application.ProcessMessages;
                         if Application.MESSAGEBOX('n_venda da Farmacia Popular?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                          begin
                            // DM.sds_vendas.Active := false;
                             DM.sds_vendas_itens.Active := false;
                             DM.sds_vendas.close;
                             DM.sds_vendas.SQL.Clear;
                             DM.sds_vendas.SQL.add('select * from PEDIDOS where codigo >0'+'');
                             DM.sds_vendas.SQL.add('and codigo ='+QuotedStr(formvendas.Sds_pedidosCODIGO.Text)+'');
                             DM.sds_vendas.SQL.add('ORDER BY Codigo DESC');
                             DM.sds_vendas.Open;
                             //DM.sds_vendas.Active := True;
                             DM.sds_vendas_itens.Active := true;
                            try
                           //  If frmFarmaciaPopular=nil then
                               begin
                              //  CoInitialize(nil);
                                frmFarmaciaPopular:=TfrmFarmaciaPopular.Create(self);
                                //frmFarmaciaPopular.n_venda := formvendas.Sds_pedidosCODIGO.Text;
                                  frmFarmaciaPopular.Tag := 0;
                                   frmFarmaciaPopular.ShowModal;
                                //    CoUninitialize;
                                end;
                                except
                                  ShowMessage('Houve um erro ao Criar o Formulario  da Farmácia Popular');
                                end;
                          end;
                          END;

                       if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
                       begin
                       application.ProcessMessages;
                       IF PAG = 'PRAZO' then
                       if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                        begin
                     {  COO := FormCupomFiscal.ACBrECF1.NumCupom ;


                       CodFormaPagamento := PAG ;
                       CodComprovanteNaoFiscal := FormCupomFiscal.Edit2.Text;
                       sValor := cValorPago;

                       sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                                    ',',DecimalSeparator,[]) ;
                       dValor := StrToFloatDef(sValor,0) ;  }
                             DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                            DMC.QRY_COND_PAGTO.Params.ParamByName('cod_empresa').AsInteger  := iemp;
                            DMC.QRY_COND_PAGTO.Open;

                       CodComprovanteNaoFiscal := DMC.CDS_PEDIDOSCODIGO.Text;
                       for iConta := 1 to 6 do
                       NumeroCupom := NumeroCupom + ' ';
                       iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );

                       cFormaPgto := PAG;
                       cValorPago := FormatFloat('0.00',DMC.CDS_PedidosVALOR_TOTAL.AsFloat);

                       if Trim(CodComprovanteNaoFiscal) <> '' then
                      { FormCupomFiscal.ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                              dValor) }
                       iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado( pchar( cFormaPgto), pchar( cValorPago ), pchar( NumeroCupom ) )

                       else
                      // FormCupomFiscal.ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
                       iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado( pchar( cFormaPgto), pchar( cValorPago ), pchar( NumeroCupom ) );
                       Linha :=  ('Estou Ciente que pagarei a Quantia Conforme'+#13+#10+
                                  'parcelas abaixo em seus respectivos vencimentos:'+#13+#13+#10);


                       iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                       Linha :=  ('Parcelamento:'+#13+#13+#10);

                       iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                       linha := ('n_venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela'+#13+#13+#10);
                       iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );;

                       sValor := formatFloat('0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat);

                       DMC.QRY_COND_PAGTO.First;
                       Contador:= DMC.QRY_COND_PAGTO.RecordCount;
                       For F:=1 to Contador do
                       begin
                       Linha := ((DMC.QRY_COND_PAGTOTITULO.AsString) + '     '+ (DMC.QRY_COND_PAGTOParcela.AsString) + '      ' +(DMC.QRY_COND_PAGTODATA_VENCIMENTO.AsString) + '     '+(sValor))+#13+#13+#10;
                       DMC.QRY_COND_PAGTO.Next;
                        iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );
                       end;

                        linha:= ( '.'+#13+#10+
                                  '.'+#13+#10+
                                  '.'+#13+#10+
                                  '.'+#13+#10+
                                  #13+#13'------------------------------------------'+#13+#10+
                                  'Cliente:'+' '+(DMC.cds_PEDIDOSCodigo_Cliente.Text)+' -'+
                                  (DMC.cds_PEDIDOSNOME_cliente.Text)+#13+#10+
                                  'Cpf/Cnpj:'+' '+DMC.cds_PEDIDOSCPF_CNPJ.text+' - '+
                                  'Rg:'+' '+DMC.CDS_PedidosRG_IE.text+#13+#10+
                                  'Endereço:'+' '+DMC.cds_PEDIDOSENDERECO.text+#13+#13+
                                   DMC.cds_PEDIDOSbairro.text +' - ' + dmc.cds_pedidosCidade.text+'-'+dmc.CDS_PedidosUF.text+#13+#13);
                        iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                        Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                                 'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+ dmc.cds_pedidosUSUARIO.text;
                        iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                        iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
                         application.ProcessMessages;
                        end;
                        end;
                          end;
                       end;
                   end else



                  if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
                  begin
                  LerINIecf;
                  ACBrECF1.Ativar;

                    if FileExists('ECF.ini') then
                    ACBrECF1.MemoParams.LoadFromFile('ECF.ini');



                      //  Desc := '%' ;
                      //  if formvendas.RbValor.Checked then
                      Desc := '$' ;
                      // formECF := nil;
                      //formecf := tformECF.Create(self);
                      //formECF.Ativcar1Click( Sender );
                      //formECF.Desativar1Click(sender);
                      //ACBrECF1.Ativar; //.Ativcar1Click( Sender );

                      if ACBrECF1.Ativo = False then
                        begin
                         ACBrECF1.Ativar;
                        end;

                      if ACBrECF1.Estado = estRequerZ then
                           begin
                           if MessageDlg('A Redução Z pode Bloquear o seu ECF até a 12:00pm'+#10+#10+
                           'Continua assim mesmo ?',mtWarning,mbYesNoCancel,0) <> mrYes then
                            exit ;
                            if MessageDlg('Você tem certeza ?',mtWarning,mbYesNoCancel,0) <> mrYes then
                             exit ;
                            // end ;
                            Resp := MessageDlg('Envia hora atual ?',mtConfirmation,mbYesNoCancel,0) ;

                            if Resp = mrYes then
                            BEGIN
                            Button3Click(Sender);
                            ACBrECF1.ReducaoZ( now );
                            end ELSE
                            if Resp = mrNo then
                            BEGIN
                            Button3Click(Sender);
                            ACBrECF1.ReducaoZ( );
                            END ELSE
                            exit ;
                          //  mResp.Lines.Add( 'Reduçao Z');
                          //  AtualizaMemos ;
                            end;

                    try
                      begin
                       ACBrECF1.AbreCupom();
                      // formecf.mResp.Lines.Add( 'AbreCupom' );
                       end;
                       begin
                       DMC.SDS_Pedido_Itens.Active:= False;
                       DMC.SDS_Cliente.Active:= False;
                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                        dmc.sds_pagto.Close;
                      // DMC.SDS_PDV.Active:=False;
                      // DM.SDS_CondPagamento.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].Asinteger:=n_venda;
                       DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                       DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
                      // DMC.SDS_PDV.Active:=true;
                       DMC.SQLD_Pedidos.Active:=True;
                       DMC.CDS_Pedidos.Active:=True;
                       DMC.SDS_Pedido_Itens.Active:= True;
                       DMC.SDS_Cliente.Active:= True;
                       dmc.sds_pagto.Open;
                     //  DM.SDS_CondPagamento.Active:=true;

                       DMC.SDS_Pedido_Itens.First;
                       Contador:= DMC.SDS_Pedido_Itens.RecordCount;
                       ProgressBar1.MaxValue := contador;
                       For I:=1 to Contador do
                       begin
                       ProgressBar1.Progress := I;
                       Sleep(90);

                       CPFCNPJ:= (DMC.cDS_pedidosCPF_CNPJ.AsString);
                       RGIE:= DMC.cDS_pedidosRG_IE.AsString + #13#10+ ' IE Produtor: ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
                       EnderComp:= DMC.cDS_pedidosENDERECO.AsString + #13#10 + DMC.cDS_pedidosBAIRRO.AsString+' - '+DMC.CDS_PedidosCIDADE.AsString +' - '+DMC.SDS_ClienteUF.text ;

                       // parametros
                       B := DMC.SDS_Pedido_ItensQuantidade.AsFloat;
                       A :=StrtoFloat(DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsString);
                       //PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
                       EF := DMC.SDS_Pedido_ItensENC_FINANCEIRO.AsFloat;
                       VF := {(A + EF)} DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat;
                       Desct:= DMC.CDS_PedidosVALOR_DESCONTO.AsFloat;
                       ValCompra := DMC.CDS_PedidosVALOR_TOTAL.AsFloat;
                       // fim parametros


                       sCodigo        := DMC.SDS_Pedido_ItensCodigo_produto.AsString;
                       sDescricao     := DMC.SDS_Pedido_ItensDescricao_produto.AsString;
                       sAliquota      := (DMC.SDS_Pedido_Itens.FieldByname('SIT_TRIBUTARIA').AsString);
                       sUnidade       := (DMC.SDS_Pedido_Itens.FieldByname('UNIDADE').AsString);
                       sTipoQtde      := ('F');
                       sQtde          := DMC.SDS_Pedido_ItensQUANTIDADE.AsString;  //FormatFloat('##.##0.000',B);
                       sValor         := DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsString;    //('##.##0.00',VF);

                       sTipoDesconto  := '$';
                       //cValorDesc := '0'; //DMc.SDS_Pedido_ItensDESCONTO.AsString; //'0000';
                        IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                        BEGIN
                       cValorDesc     := '0000';
                       END ELSE
                       IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                       BEGIN
                       cValorDesc      := DMC.SDS_Pedido_ItensDESCONTO.Text;
                       END;
                     //  sValorDesc := vd * (-1);

                      // cValorDesc := FormatFloat('0',CValorDesc);


                       ACBrECF1.VendeItem( sCodigo, sDescricao,
                               sAliquota, StrToFloatDef( sQtde, 0.000 ),
                               StrToFloatDef(sValor ,0.00),
                               StrToFloatDef(cValorDesc ,0.00), Sunidade,
                               desc);

                            with formvendas.QBuscaItens1 do
                            begin
                             close;
                             Parambyname('cod_ven').AsInteger:= (n_venda);
                             Parambyname('codpro').AsInteger:= strtoint(DMC.SDS_Pedido_ItensCODIGO_PROD.text);
                             open;
                             Last;
                           end;


                         if formvendas.QBuscaItens1alic_nac.AsFloat > 0.01 then
                         begin
                          tributo := tributo + ExatoCurrency((DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat  * formvendas.QBuscaItens1ALIC_NAC.AsFloat / 100),2);
                          end else
                         if formvendas.qBuscaItens1PERC_TRIBU.AsFloat > 0.01 then
                         begin
                           tributo := tributo + ExatoCurrency((DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat * formvendas.QBuscaItens1PERC_TRIBU.AsFloat / 100),2);
                         end;

                        DMC.SDS_Pedido_Itens.Next;

                       application.ProcessMessages;
                       end;

                       begin



                       //  Desct := desct * (-1); // converte para valor negativo

                         // acresc := dmc.CDS_PedidosENC_FINANCEIRO.AsFloat;

                          if DMC.CDS_PedidosVALOR_DESCONTO.AsString >'0' then
                          BEGIN
                          desct := (DMC.CDS_PedidosVALOR_DESCONTO.AsFloat *(-1));
                          end else

                          if DMC.CDS_PedidosENC_FINANCEIRO.Text >'0' then
                          BEGIN
                          desct := DMC.CDS_PedidosENC_FINANCEIRO.AsFloat;
                          end;

                          cFormaPgto      := PG;
                          //  cAcresDesc      := 'D';
                          //  cTipoAcresDesc  := '$';

                          // cAcresc         := FormatFloat('0.00',acresc);
                          cValorAcresDesc := FormatFloat('0.00',desct);
                          cValorPago      := FormatFloat('0.00',ValCompra);
                          cMsgPromocional :='Cliente:'+' '+(DMC.cds_pedidosCodigo_Cliente.Text)+' - '+(DMC.cds_pedidosNOME_Cliente.Text)+#13+#10+'Cnpj/Cpf:'+' '+CPFCNPJ+' - '+'Ie/Rg:'+' '+RGIE+#13+#10+'Endereço:'+' '+ENDERCOMP+#13+#10+(DMC.CDS_PedidosOBSERVACOES.AsString)+#13+#13+#10'n_venda:'+inttostr(n_venda)+#13+#13+#10+'Vendedor:' +(DMC.CDS_PedidosUSUARIO.Text)+#13+#10 + 'PARTIDA: '+DMC.CDS_PedidosN_PARTIDA.TEXT+#13+#10+#13+#10+#13+#10+#13+#10;


                          application.ProcessMessages;
                         Descricao := PAG;
                         begin
                         FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                         if FPG = nil then
                         // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                          ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                         edCod.Text := FPG.Indice ;
                         cFormaPgto      := edCod.Text;
                         { Bematech permite cadastrar formas de Pagamento dinamicamente }
                         if (ACBrECF1.ModeloStr = 'Bematech') and
                         (pos( FPG.Descricao, mFormas.Text ) = 0) then
                         CarregaFPG ;
                         end ;

                           BEGIN
                          application.ProcessMessages;
                          ACBrECF1.Subtotal;
                          ACBrECF1.SubtotalizaCupom (StrToFloat(cValorAcresDesc));
                          //   ACBrECF1.SubtotalizaCupom (StrToFloat(CAcresc));
                          //  ACBrECF1.Subtotal;
                          // ACBrECF1.SubtotalizaCupom (StrToFloat(CAcresc));
                          // formEcf.mResp.Lines.Add( 'Subtotaliza Cupom: '+cValorAcresDesc);
                          end;

                          begin
                        //  if TipoCupom <> 'N' then
                          { ACBrECF1.EfetuaPagamento(ACBrECF1.FormasPagamento[0].Indice,
                          (ACBrECF1.Subtotal - ACBrECF1.TotalPago), 'ZERANDO SALDO A PAGAR RESTANTE');}

                          // ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                          { FormEcf.mResp.Lines.Add( 'Efetua Pagamento: '+cFormaPgto +
                          ' Valor: '+cValorPago );}
                           application.ProcessMessages;
                           dmc.sds_pagto.First;
                           While not dmc.sds_pagto.Eof do
                           begin
                             if dmc.sds_pagtoTIPO.text = 'A'  then
                             BEGIN
                             PAG :='DINHEIRO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;

                            // cFormaPgto := pag;
                             cValorPago  :=  FloatToStr(dmc.sds_pagtoValor.AsFloat);
                             ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;

                             if dmc.sds_pagtotipo.text = 'H'  then
                             BEGIN
                             PAG :='CHEQUE';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.asfloat);
                             ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             if dmc.sds_pagtotipo.text = 'F'  then
                             BEGIN
                             PAG :='CARTAO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                             ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             if dmc.sds_pagtotipo.text = 'C'  then
                             BEGIN
                             PAG :='PRAZO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                             ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             if dmc.sds_pagtotipo.text ='V'  then
                             BEGIN
                             PAG :='VALE';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                             ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;

                             dmc.sds_pagto.next;
                          // end;
                            end;
                          application.ProcessMessages;

                            begin
                             // formEcf.mResp.Lines.Add( 'Fecha Cupom: '+ cMsgPromocional );

                            // lei 12.741/2013 transparencia dos impostos
                             // ACBrECF1.InfoRodapeCupom.Imposto.Texto := '...'; utilize essa propriedade se quiser personalizar o texto exemplo: Valor impostos %s (%s %) meu texto
                             ACBrECF1.InfoRodapeCupom.Imposto.ValorAproximado := tributo;  // informar o valor aproximado calculado a partir dos itens
                             ACBrECF1.InfoRodapeCupom.Imposto.Fonte           := ' IBPT'; // informar a fonte de onde veio a informação para calculo

                             ACBrECF1.FechaCupom(cMsgPromocional);

                             end;

                             if pag = 'DINHEIRO' then
                             begin
                             if DM.SDS_CONFIGURACOESUSA_GAVETA.Text ='S' then
                             begin
                             ACBrECF1.AbreGaveta;
                             end;
                             end;

                          end;


                          if (ACBrECF1.Modelo in [ecfBematech, ecfSweda, ecfDaruma, ecfSchalter, ecfMecaf, ecfYanco, ecfDataRegis, ecfUrano, ecfICash,
                          ecfQuattro])then
                          begin
                          SPC_N_CUPOM.Params[0].AsInteger :=  (n_venda);
                          SPC_N_CUPOM.Params[1].AsInteger  := StrToInt(ACBrECF1.NumCupom);
                          SPC_N_CUPOM.Params[2].AsString  :=  ACBrECF1.NumECF;
                          SPC_N_CUPOM.ExecProc;
                          end;

                         // SE USAR FARMACIA POPULAR
                         if DM.SDS_CONFIGURACOESUSA_FP.Text = 'S' then
                         BEGIN
                         if Application.MESSAGEBOX('n_venda da Farmacia Popular?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                          begin
                            // DM.sds_vendas.Active := false;
                             DM.sds_vendas_itens.Active := false;
                             DM.sds_vendas.close;
                             DM.sds_vendas.SQL.Clear;
                             DM.sds_vendas.SQL.add('select * from PEDIDOS where codigo >0'+'');
                             DM.sds_vendas.SQL.add('and codigo ='+QuotedStr(formvendas.Sds_pedidosCODIGO.Text)+'');
                             DM.sds_vendas.SQL.add('ORDER BY Codigo DESC');
                             DM.sds_vendas.Open;
                           //  DM.sds_vendas.Active := True;
                             DM.sds_vendas_itens.Active := true;
                            try
                            // If frmFarmaciaPopular=nil then
                               begin
                              //  CoInitialize(nil);
                                frmFarmaciaPopular:=TfrmFarmaciaPopular.Create(self);
                                //frmFarmaciaPopular.n_venda := formvendas.Sds_pedidosCODIGO.Text;
                                  frmFarmaciaPopular.Tag := 0;
                                   frmFarmaciaPopular.ShowModal;
                                //    CoUninitialize;
                                end;
                                except
                                  ShowMessage('Houve um erro ao Criar o Formulario  da Farmácia Popular');
                                end;
                          end;
                          END;

                         // inicio da emissao do copon vinculado
                           if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
                           begin
                           IF PAG = 'PRAZO' then
                           if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                           begin
                           COO := ACBrECF1.NumCupom ;

                           cValorPago := DMC.CDS_PedidosVALOR_TOTAL.TEXT;

                           CodFormaPagamento := edCod.Text ;
                           CodComprovanteNaoFiscal := DMC.CDS_PEDIDOSCODIGO.TEXT;
                           sValor := cValorPago;

                           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                                        ',',DecimalSeparator,[]) ;
                           dValor := StrToFloatDef(sValor,0) ;

                           if Trim(CodComprovanteNaoFiscal) <> '' then
                           ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                                  dValor)
                           else
                           ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
                           Linha :=  ('Estou Ciente que pagarei a Quantia Conforme'+#13+#10+
                                      'parcelas abaixo em seus respectivos vencimentos:'+#13+#13+#10);


                           ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha :=  ('Parcelamento:'+#13+#13+#10);

                           ACBrECF1.LinhaCupomVinculado( Linha );

                            linha := ('n_venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela');
                           ACBrECF1.LinhaCupomVinculado( Linha );



                             DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_venda').AsInteger  := (n_venda);
                            DMC.QRY_COND_PAGTO.Params.ParamByName('cod_empresa').AsInteger  := iemp;
                            DMC.QRY_COND_PAGTO.Open;


                           DMC.QRY_COND_PAGTO.First;
                           Contador:= DMC.QRY_COND_PAGTO.RecordCount;
                           For F:=1 to Contador do
                           begin
                           sValor := formatFloat('0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat);
                           Linha := ((DMC.QRY_COND_PAGTOTITULO.AsString) + '     '+ (DMC.QRY_COND_PAGTOParcela.AsString) + '      ' +(DMC.QRY_COND_PAGTODATA_VENCIMENTO.AsString) + '    '+(sValor));
                           DMC.QRY_COND_PAGTO.Next;
                           ACBrECF1.LinhaCupomVinculado( Linha );
                           end;

                            linha:= (#13+#13'------------------------------------------'+#13+#10+
                                      'Cliente:'+' '+(DMC.CDS_PEDIDOSCodigo_CliENTE.Text)+' -'+
                                      (DMC.CDS_PEDIDOSNOME_CLIENTE.Text)+#13+#10+
                                      'Cpf/Cnpj:'+' '+DMC.CDS_PEDIDOSCPF_CNPJ.TEXT+' - '+
                                      'Rg:'+' '+DMC.CDS_PEDIDOSRG_IE.TEXT+#13+#10+
                                      'Endereço:'+' '+DMC.CDS_PEDIDOSENDERECO.TEXT+#13+#13+ DMC.CDS_PedidosBAIRRO.TEXT+ '-' + DMC.CDS_PedidosCIDADE.TEXT+ '-'+ DMC.CDS_PedidosUF.Text+#13+#13);
                            ACBrECF1.LinhaCupomVinculado( Linha );

                            Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                                     'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+formprincipal.UserLogado;
                            ACBrECF1.LinhaCupomVinculado( Linha );

                            ACBrECF1.FechaRelatorio;

                           end;

                           {IF pag = 'VALE' then
                           begin
                           IF troco > 0 THEN
                           BEGIN
                           if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                           COO := ACBrECF1.NumCupom ;
                           cValorPago := CurrencyEdit4.Text;
                           CodFormaPagamento := edCod.Text ;
                           CodComprovanteNaoFiscal := DMC.CDS_PEDIDOSCODIGO.Text;
                           sValor := cValorPago;

                           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                                        ',',DecimalSeparator,[]) ;
                           dValor := StrToFloatDef(sValor,0) ;

                           if Trim(CodComprovanteNaoFiscal) <> '' then
                           ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                                  dValor)
                           else
                           ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
                           Linha :=  ('Valor da Compra: '+#13+#10+ cValorPago);


                           ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha :=  ('Valor Vale:'+#13+#13+#10+ FloatToStr(troco));

                           aCBrECF1.LinhaCupomVinculado( Linha );


                           linha:= (#13+#13'------------------------------------------'+#13+#10+
                                      'Cliente:'+' '+(dmc.CDS_PedidosCODIGO_CLIENTE.Text)+' -'+
                                      (dmc.CDS_PedidosNOME_CLIENTE.Text)+#13+#10+
                                      'Cpf/Cnpj:'+' '+dmc.CDS_PedidosCPF_CNPJ.Text+' - '+
                                      'Rg:'+' '+dmc.CDS_PedidosRG_IE.text+#13+#10+
                                      'Endereço:'+' '+dmc.CDS_PedidosENDEReCO.text +#13+#13+
                                      dmc.CDS_PedidosBAIRRO.Text +'-'+ dmc.CDS_PedidosCIDADE.Text + '-'+ dmc.CDS_PedidosUF.text+#13+#13);
                           ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                                     'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+dmc.cds_pedidosUSUARIO.text;
                           ACBrECF1.LinhaCupomVinculado( Linha );

                           ACBrECF1.FechaRelatorio;

                           end;
                           end;  }
                           end;

                          end;

                         end;
                       except
                        //MessageDlg('Nenhum ECF encontrado.',mtInformation,[mbOk],0) ;
                        ShowMessage('Erro ao Tentar emitir o cupom, Estado: '+ Estados[ ACBrECF1.Estado ] + '...');
                       end;

                   end else

                  if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '3' then
                  begin

                   try
                      try
                        with dm.Delcupom do
                           begin
                              close;
                              sql.Clear;
                              sql.add('delete from cupom where numero =:n_venda');
                              Parambyname('n_venda').AsInteger := (n_venda);
                              ExecSQL;
                           end;
                        dm.IBTransaction.Commit;
                      except
                        dm.IBTransaction.Rollback;
                        showmessage('Erro ao Excluir o cupom');
                      end;
                    finally
                      dm.Delcupom.Close;
                    end;
                      try
                      try
                        with dm.Delcupom do
                           begin
                              close;
                              sql.Clear;
                              sql.add('delete from cupom_item where numero =:n_venda');
                              Parambyname('n_venda').AsInteger := (n_venda);
                              ExecSQL;
                           end;
                        dm.IBTransaction.Commit;
                      except
                        dm.IBTransaction.Rollback;
                        showmessage('Erro ao Excluir o cupom');
                      end;
                    finally
                      dm.Delcupom.Close;
                    end;




                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                    DM.ProxCod.Open;


                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcupom.close;
                    qrcupom.parambyname('comando').AsString     := 'n_venda';
                    qrcupom.parambyname('NUMERO').AsInteger      := n_venda;
                    qrcupom.parambyname('DESCONTO').ASFLOAT     := formvendas.Sds_pedidosVALOR_DESCONTO.AsFloat;
                    qrcupom.parambyname('ACRESCIMO').ASFLOAT    := formvendas.Sds_pedidosVALOR_ACRESCIMOS.AsFloat;
                    qrcupom.parambyname('DINHEIRO').ASFLOAT     := AVISTA;
                    qrcupom.parambyname('CHEQUEAV').ASFLOAT     := CHEQUE;
                    qrcupom.parambyname('CHEQUEAP').ASFLOAT     := 0;
                    qrcupom.parambyname('CARTAOCRED').ASFLOAT   := CARTAO;
                    qrcupom.parambyname('CARTAODEB').ASFLOAT    := 0;
                    qrcupom.parambyname('PROMISSORIA').ASFLOAT  := PRAZO;
                    qrcupom.parambyname('CLIENTE').ASSTRING     := COPY(formvendas.Sds_pedidosCODIGO_CLIENTE.Text +' - '+ formvendas.Sds_pedidosNOME_CLIENTE.Text,1,50);
                    qrcupom.parambyname('ENDERECO').AsString    := COPY(formvendas.Sds_pedidosENDERECO.Text +' Nº: '+ formvendas.Sds_pedidosNUMERO.Text +' '+formvendas.Sds_pedidosBAIRRO.Text,1,50);
                    qrcupom.parambyname('CIDADE').ASSTRING      := COPY(formvendas.Sds_pedidosCIDADE.Text + '-' + formvendas.Sds_pedidosUF.Text,1,50);
                    qrcupom.parambyname('CPF').AsString         := COPY(formvendas.Sds_pedidosCPF_CNPJ.Text,1,30);
                    qrcupom.parambyname('CONVENIO').AsString    := '-';
                    qrcupom.parambyname('VENDEDOR').ASSTRING    := COPY(formvendas.Sds_pedidosCOD_VENDEDOR.Text + ' - ' +formvendas.Sds_pedidosUSUARIO.Text,1,50);
                    qrcupom.parambyname('sequencia').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcupom.parambyname('RG_IE').AsString          := COPY(formvendas.Sds_pedidosRG_IE.Text,1,30);
                    qrcupom.parambyname('PRODUTOR_RURAL').AsString := COPY('IE PROD.: '+formvendas.Sds_pedidosIE_PRODUTOR.Text +' Vda: '+ inttostr(n_venda),1,50);
                    qrcupom.ExecSQL;
                    dm.IBTransaction.CommitRetaining;



                    formvendas.Sds_Pedidos_itens.First;
                    Contador:=formvendas.Sds_Pedidos_itens.RecordCount;
                    For I:=1 to Contador do
                    begin
                    if dm.IBTransaction.Active then
                      dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    with qrCupom_item do
                      begin
                         close;
                         qrCupom_item.parambyname('NUMERO').Asinteger      := n_venda;
                         qrCupom_item.parambyname('CODPRODUTO').AsString   := formvendas.sds_pedidos_itensCODIGO_PRODUTO.text;
                         qrCupom_item.parambyname('PRODUTO').AsString      := COPY(formvendas.sds_pedidos_itensDESCRICAO_PRODUTO.text,1,30);
                         qrCupom_item.parambyname('UNIDADE').AsString      := formvendas.sds_pedidos_itensUNIDADE.text;
                         qrCupom_item.parambyname('QTDE').AsFloat         := formvendas.sds_pedidos_itensQUANTIDADE.AsFloat;
                         qrCupom_item.parambyname('VALOR').ASFLOAT         := formvendas.sds_pedidos_itensPRECO_UNITARIO.AsFloat;
                         qrCupom_item.parambyname('TOTAL').ASFLOAT         := formvendas.sds_pedidos_itenspreco_total.AsFloat;
                         qrCupom_item.parambyname('DESCONTO').ASFLOAT      := formvendas.sds_pedidos_itensDESCONTO.AsFloat;
                         qrCupom_item.parambyname('ACRESCIMO').ASFLOAT     := formvendas.sds_pedidos_itensENC_FINANCEIRO.AsFloat;
                         qrCupom_item.parambyname('ALIQUOTA').AsString     := formvendas.sds_pedidos_itensSIT_TRIBUTARIA.text;
                         qrcupom_item.ExecSQL;
                      end;
                      formvendas.sds_pedidos_itens.Next;
                      dm.IBTransaction.CommitRetaining;
                      END;



                        // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE A PRAZO--------------------------\\


                      if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
                      begin
                      IF prazo > 0  then
                      BEGIN
                           qrecf_comando.Active := false;
                           qrecf_comando.Active := true;
                            DMC.SDS_CHEQUES.Active := false;
                            DMC.sds_mov_Caixa.Active := False;
                            DMC.SDS_Crediario_Contrato.Active :=False;
                            DMC.SDS_Pedido_Itens.Active:= False;
                            DMC.SDS_Cliente.Active:= False;
                            DMC.SQLD_Pedidos.Active:=False;
                            DMC.CDS_Pedidos.Active:=False;
                            DM.SDS_Empresa.active := false;
                            DMC.SQLD_Pedidos.Params[0].AsInteger:=n_venda;
                            DMC.SDS_Pedido_Itens.Params[0].AsInteger := n_venda;
                            DMC.SDS_Cliente.Params[0].AsString:=cod_Cli;
                            DMC.SQLD_Pedidos.Active:=True;
                            DMC.CDS_Pedidos.Active:=True;
                            DMC.SDS_Pedido_Itens.Active:= True;
                            DMC.SDS_Cliente.Active:= True;
                            DM.SDS_Empresa.active := true;
                            DMC.SDS_Crediario_Contrato.Active :=true;
                            DMC.sds_mov_Caixa.Active := True;
                            DMC.SDS_CHEQUES.Active := True;

                           CLI := DMC.CDS_PedidosCODIGO_CLIENTE.Text +' - ' + dmc.CDS_PedidosNOME_CLIENTE.AsString;
                           END_CLI := dmc.CDS_PedidosENDERECO.AsString;
                           Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
                           CEP_CLI := dmc.CDS_PedidosCEP.AsString;
                           CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
                           ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

                            qrecf_comando.Active := false;
                           qrecf_comando.Active := true;
                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;


                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'ABRE_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsInteger      := n_venda;;
                           qrecf_comando.FieldByName('promissoria').asfloat := prazo;
                           qrecf_comando.FieldByName('cliente').asstring := 'PRAZO';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           qrecf_comando.Active := false;
                           qrecf_comando.Active := true;
                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsInteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := 'Vda Nº ' + inttostr(n_venda)+ ' Data: ' + datetimetostr(now);
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           qrecf_comando.Active := false;
                           qrecf_comando.Active := true;
                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '***************  DUPLICATA  *******************';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := 'Estou Ciente que pagarei a Quantia Conforme';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);


                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsInteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := 'parcelas abaixo em seus respectivos vencimentos:';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);


                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsInteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := 'n_venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           DMC.QRY_COND_PAGTO.Active := False;
                            with DMC.QRY_COND_PAGTO do
                             begin
                              close;
                              Params.Items[0].Asinteger  := n_venda;
                              Params.Items[1].Asinteger  := iemp;
                              Open;
                            end;
                            DMC.QRY_COND_PAGTO.Active := True;


                                DMC.QRY_COND_PAGTO.First;
                                while not DMC.QRY_COND_PAGTO.Eof do
                                begin

                                 dm.ProxCod.Close;
                                 dm.ProxCod.SQL.Clear;
                                 dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                                 DM.ProxCod.Open;

                                 qrecf_comando.insert;
                                 qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                                 qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                                 qrecf_comando.FieldByName('NUMERO').AsInteger      := n_venda;;
                                 qrecf_comando.FieldByName('cliente').asstring := ((DMC.QRY_COND_PAGTOTITULO.AsString) + '     '+ (DMC.QRY_COND_PAGTOParcela.AsString) + '      ' +(DMC.QRY_COND_PAGTODATA_VENCIMENTO.AsString) + '    '+FormatFloat('###,###,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat));
                                 qrecf_comando.Post;
                                 qrecf_comando.ApplyUpdates(0);

                                DMC.QRY_COND_PAGTO.Next;
                               end;

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := 'Cliente: '+ CLI;
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := 'End.: '+END_CLI + ' nº: ' + NUMERO_CLI;
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := 'Cep.: ' + CEP_CLI + ' Cid.: ' +CID_CLI + ' UF: ' + ESTADO_CLI;
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;


                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                             dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                            dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := 'Vendedor: '+DMC.CDS_PedidosUSUARIO.Text;
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                            dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').Asinteger     := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);




                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsInteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsInteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '***************   ASSINATURA   *****************';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                            dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsInteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                            dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsInteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '*************   SIACE SISTEMAS    **************';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                             dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;


                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'FECHA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsInteger      := n_venda;;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                      end;
                      end;
                      end;

                     panel9.Visible := false;

                  END;



// lançamento de mov. de combustiveis

  formvendas.Sds_Pedidos_itens.Filtered := False;
  formvendas.Sds_Pedidos_itens.Filter := 'not (CODIGO_BICO is null)';
  formvendas.Sds_Pedidos_itens.Filtered := True;


formvendas.Sds_Pedidos_itens.First;
Contador := formvendas.Sds_Pedidos_itens.RecordCount;
For E:=1 to Contador do
begin
      with formvendas.QBuscaItens1 do
      begin
         close;
         Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
         Parambyname('COD_VEN').AsInteger:= strtoint(formvendas.Sds_PedidosCODIGO.Text);
         open;
         Last;
         estoque := formvendas.QBuscaItens1ESTOQUE.AsFloat;
      end;
 formvendas.Sds_Pedidos_itens.Next;
 end;

  Contador:=formvendas.Sds_Pedidos_itens.RecordCount;
  For I:=1 to Contador do
  begin
  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
    try
    if formvendas.sds_pedidos_itensCODIGO_BICO.AsString > '' then
    begin
     with dm.IBSQL do
        begin
           close;
           sql.Clear;
           SQL.Add('INSERT INTO MOVIMENTACAO_COMBUSTIVEL (CODIGO, COD_NOTA_ENT, TAN_NUM_FIS, BOM_NUM_FIS,'+
                   ' BIC_NUM_LOG, ENC_ABT, ENC_FCT, COD_CLIENTE, COD_VENDEDOR, DATA, CODPRODUTO, UNITARIO,'+
                   'UNIDADE, QTDE, TOTAL, ICMS_ALIQUOTA, ICMS_BASE, ICMS_VALOR, CREDITO_ICMS, IPI_ALIQUOTA,'+
                   'IPI_BASE, IPI_VALOR, PIS_ALIQUOTA, PIS_BASE, PIS_VALOR, COFINS_ALIQUOTA, COFINS_BASE,  '+
                   'COFINS_VALOR, CFOP, NUMERO_VDA, DESCONTO, ACRESCIMO, MOVIMENTO, BASE_CALCULO, SITUACAO,'+
                   'CUPOM_NUMERO, MODELO, ITEM, CST, MOVIMENTO_ESTOQUE, COD_USUARIO,  LANCADO)  VALUES (   '+
                   ':CODIGO, :COD_NOTA_ENT, :TAN_NUM_FIS, :BOM_NUM_FIS, :BIC_NUM_LOG, :ENC_ABT,  :ENC_FCT, '+
                   ':COD_CLIENTE, :COD_VENDEDOR, :DATA, :CODPRODUTO, :UNITARIO, :UNIDADE, :QTDE, :TOTAL,   '+
                   ':ICMS_ALIQUOTA, :ICMS_BASE, :ICMS_VALOR, :CREDITO_ICMS, :IPI_ALIQUOTA, :IPI_BASE,:IPI_VALOR,'+
                   ':PIS_ALIQUOTA, :PIS_BASE, :PIS_VALOR,:COFINS_ALIQUOTA, :COFINS_BASE,:COFINS_VALOR,     '+
                   ':CFOP, :NUMERO_VDA, :DESCONTO, :ACRESCIMO, :MOVIMENTO, :BASE_CALCULO, :SITUACAO, :CUPOM_NUMERO,'+
                   ':MODELO, :ITEM, :CST, :MOVIMENTO_ESTOQUE, :COD_USUARIO, :LANCADO)');

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTACAO_COMBUSTIVEL');
                   DM.ProxCod.Open;

                   parambyname('CODIGO').AsInteger             := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                   parambyname('COD_NOTA_ENT').value           := null;
                   parambyname('TAN_NUM_FIS').AsString         := formvendas.sds_pedidos_itensTANQUE.TEXT;
                   parambyname('BOM_NUM_FIS').AsString         := formvendas.sds_pedidos_itensbomba.Text;
                   parambyname('BIC_NUM_LOG').AsString         := formvendas.sds_pedidos_itensCODIGO_BICO.AsString;
                   parambyname('ENC_ABT').AsFloat              := estoque + formvendas.sds_pedidos_itensQUANTIDADE.AsFloat;
                   parambyname('ENC_FCT').AsFloat              := estoque;
                   parambyname('COD_CLIENTE').AsInteger        := formvendas.Sds_pedidosCODIGO_CLIENTE.AsInteger;
                   parambyname('COD_VENDEDOR').AsInteger       := formvendas.sds_pedidos_itensVENDEDOR.AsInteger;
                   parambyname('DATA').AsDate                  := formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                   parambyname('CODPRODUTO').AsInteger         := formvendas.sds_pedidos_itensCODIGO_PROD.AsInteger;
                   parambyname('UNITARIO').AsFloat             := formvendas.sds_pedidos_itensPRECO_UNITARIO.AsFloat;
                   parambyname('UNIDADE').AsString             := formvendas.sds_pedidos_itensUNIDADE.AsString;
                   parambyname('QTDE').AsFloat                 := formvendas.sds_pedidos_itensQUANTIDADE.AsFloat;
                   parambyname('TOTAL').AsFloat                := formvendas.sds_pedidos_itenspreco_total.AsFloat;
                   parambyname('ICMS_ALIQUOTA').AsFloat        := formvendas.sds_pedidos_itensPERC_ICM.AsFloat;
                   parambyname('ICMS_BASE').AsFloat            := formvendas.sds_pedidos_itensBASE_ICMS.AsFloat;
                   parambyname('ICMS_VALOR').AsFloat           := formvendas.sds_pedidos_itensVL_ICM.AsFloat;
                   parambyname('CREDITO_ICMS').AsFloat         := 0;
                   parambyname('IPI_ALIQUOTA').AsFloat         := formvendas.sds_pedidos_itensPERC_IPI.AsFloat;
                   parambyname('IPI_BASE').AsFloat             := formvendas.sds_pedidos_itensBASE_IPI.AsFloat;
                   parambyname('IPI_VALOR').AsFloat            := formvendas.sds_pedidos_itensBASE_IPI.AsFloat;
                   parambyname('PIS_ALIQUOTA').AsFloat         := formvendas.sds_pedidos_itensPERC_PIS.AsFloat;
                   parambyname('PIS_BASE').AsFloat             := formvendas.sds_pedidos_itensBASE_PIS.AsFloat;
                   parambyname('PIS_VALOR').AsFloat            := formvendas.sds_pedidos_itensVL_PIS.AsFloat;
                   parambyname('COFINS_ALIQUOTA').AsFloat      := formvendas.sds_pedidos_itensPERC_COFINS.AsFloat;
                   parambyname('COFINS_BASE').AsFloat          := formvendas.sds_pedidos_itensBASE_COFINS.AsFloat;
                   parambyname('COFINS_VALOR').AsFloat         := formvendas.sds_pedidos_itensVL_COFINS.AsFloat;
                   parambyname('CFOP').AsString                := formvendas.QBuscaItens1CFOP_EST_venda.AsString;
                   parambyname('NUMERO_VDA').AsInteger          := n_venda;
                   parambyname('DESCONTO').AsFloat             := formvendas.sds_pedidos_itensDESCONTO.AsFloat;
                   parambyname('ACRESCIMO').AsFloat            := formvendas.sds_pedidos_itensENC_FINANCEIRO.AsFloat;
                   parambyname('MOVIMENTO').AsInteger          := 2;
                   parambyname('BASE_CALCULO').AsFloat         := formvendas.sds_pedidos_itenspreco_total.AsFloat;
                   parambyname('SITUACAO').AsInteger           := 1;
                   parambyname('CUPOM_NUMERO').AsString        := dmc.CDS_PedidosN_CUPOM.Text;
                   parambyname('MODELO').AsString              := dmc.CDS_PedidosN_ECF.Text;
                   parambyname('ITEM').AsString                := formvendas.sds_pedidos_itensITEN.AsString;
                   parambyname('CST').AsString                 := formvendas.QBuscaItens1CST_venda.AsString;
                   parambyname('MOVIMENTO_ESTOQUE').AsFloat    := formvendas.sds_pedidos_itensQUANTIDADE.AsFloat;
                   parambyname('COD_USUARIO').AsString         := formvendas.Sds_pedidosCOD_VENDEDOR.AsString;
                   parambyname('LANCADO').AsInteger            := 1;
                   ExecSQL;

           formvendas.Sds_Pedidos_itens.Next;
        end;
        end;
        DM.IBTransaction.Commit;
    except
      DM.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o movimento de Combustíveis');
    end;
  finally
   dm.IBSQL.Close;
  end;

 end;

             //--- Exclue abastecimentos em aberto

             try
             try
  //           formvendas.Sds_Pedidos_itens.First;
             formvendas.Sds_Pedidos_itens.Filtered := False;
           //  formvendas.Sds_Pedidos_itens.Filter := 'CODIGO_BICO >= 0';
             formvendas.Sds_Pedidos_itens.Filter := 'not (CODIGO_BICO is null)';
             formvendas.Sds_Pedidos_itens.Filtered := True;

             Contador:=formvendas.Sds_Pedidos_itens.RecordCount;
             For I:=1 to Contador do
              begin
              if formvendas.sds_pedidos_itensCODIGO_BICO.Text > '' then
              begin
              formvendas.SQLvendas.Close;
              formvendas.SQLvendas.SQL.Clear;
              formvendas.SQLvendas.SQL.Add('delete from BICOENC_TEMP where COD_BICOENC_TEMP=:COD_BICOENC_TEMP');
              formvendas.SQLvendas.Params.ParamByName('COD_BICOENC_TEMP').AsString := formvendas.sds_pedidos_itensCODIGO_BICO.AsString;
              formvendas.SQLvendas.Prepare;
              formvendas.SQLvendas.ExecSQL;
              formvendas.Sds_Pedidos_itens.Next;
              end;
             end;

          except
          showmessage('Erro ao excluir os dados das leituras de bombas');
          end;
        finally
         formvendas.SQLvendas.Close;
        end;

        formvendas.Sds_Pedidos_itens.Filtered := False;

        IF formvendas.Sds_pedidosCOD_OS.AsString <> '' THEN
        BEGIN
         {   if DM.IBTransaction.Active then
           DM.IBTransaction.Commit;
          DM.IBTransaction.StartTransaction;
          with dm.IBSQL do
          begin
           close;
           sql.Clear;
           SQL.Add('UPDATE os_ordemservico set id_n_venda =:n_venda, situacao = ''FATURADA'' WHERE id_os_ordemservico =:OS') ;
           Parambyname('n_venda').AsInteger:= strtoint(formvendas.Sds_PedidosCODIGO.Text);
           Parambyname('OS').AsInteger:= strtoint(formvendas.Sds_PedidosCODIGO.Text);
           ExecQuery;
           DM.IBTransaction.CommitRetaining;  }

           DMOS.SDS_OS.open;
           if dmos.sds_os.locate('ID_OS_ORDEMSERVICO',formvendas.Sds_pedidosCOD_OS.AsString,[]) then
           BEGIN;
           DMOS.SDS_OS.Edit;
           DMOS.SDS_OSSITUACAO.TEXT := 'FATURADA';
           DMOS.SDS_OSID_venda.Text := IntTostr(N);
           DMOS.SDS_OS.Post;
           DMOS.SDS_OS.ApplyUpdates(0);
          END;
        END;

        IF formvendas.Sds_pedidosCOD_ORCAMENTO.AsString <> '' THEN
        BEGIN
        if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;
        with dm.FConsulta do
        begin
         close;
         COMMANDTEXT.Clear;
         COMMANDTEXT.Text:= 'update orcamentos set status = 1, EXPORTADO = '+'''S'''+' WHERE CODIGO =:VENDA AND COD_EMPRESA =:COD_EMP';
            Parambyname('VENDA').AsInteger    := formvendas.Sds_pedidosCOD_ORCAMENTO.ASinteger;
            Parambyname('COD_EMP').AsInteger  := IEMP;
         OPEN;
        end;
        dm.IBTransaction.Commit;
        dm.FConsulta.Close;
        END;

                              formvendas.GroupBox1.Enabled:= FALSE;
                              formvendas.GroupBox2.Enabled:= FALSE;
                           //   formvendas.GroupBox3.Enabled:= FALSE;
                              formvendas.cancelar.Enabled:=FALSE;
                              formvendas.Inserir.visible:= TRUE;
                              formvendas.Inserir.Enabled:= TRUE;
                              formvendas.pesquisar.Enabled := True;
                              formvendas.confirmar.Enabled := false;
                              formvendas.Edit60.Clear;
                              formvendas.E_desconto.clear;
                              formvendas.Edit62.Clear;

                               concluiu := True;

                  {    if formvendas.Sds_pedidos_itens.RecordCount = 0 then
                      begin
                      formvendas.Sds_pedidos_itens.Cancel;
                      end else
                      begin
                      with formvendas.Sds_pedidos_itens do
                      while formvendas.Sds_pedidos_itens.RecordCount > 0 do
                      formvendas.Sds_pedidos_itens.Delete;
                    //  formvendas.Sds_pedidos_itens.ApplyUpdates(0);
                      end;

                      formvendas.Sds_pedidos.Delete;
                     // formvendas.Sds_pedidos.ApplyUpdates(0);
                      if formvendas.Sds_pedidos.RecordCount = 0 then
                      begin
                      formvendas.Sds_pedidos.CancelRange;
                      end;  }


             if formvendas.Tag = 5 then
             begin

             formvendas.AtualizaContaCliente(1, CodigoMesa);
             // FrmMesas.WindowState := wsMaximized;
             FrmMesas.LimpaTudo;
             FrmMesas.BuscaMesa;

             end;

      Close;

end;

procedure TFormParcelamento.Button3Click(Sender: TObject);
var
   I: Integer;
begin
   ACBrECF1.DadosReducaoZ;
    if (ACBrECF1.Modelo in [ecfBematech, ecfSweda, ecfDaruma, ecfSchalter, ecfMecaf, ecfYanco, ecfDataRegis, ecfUrano, ecfICash,
     ecfQuattro])then
     begin
     dm1.Sds_ecf.Active := False;
     dm1.Sds_ecf.Active := true;
     dm1.Sds_ecf.insert;
     dm1.Sds_ecfCOD_MOD.TEXT:= '2D';
     dm1.Sds_ecfECF_CX.text :=  ACBrECF1.DadosReducaoZClass.NumeroDoECF;
     DM1.Sds_ecfECF_FAB.text := ACBrECF1.DadosReducaoZClass.NumeroDeSerie;
     dm1.Sds_ecfECF_MOD.text := ACBrECF1.ModeloStr;
     dm1.sds_ecf.Post;
     dm1.sds_ecf.ApplyUpdates(0);
       // gera dados pro sped

     dm1.Sds_Red_Z.Active := False;
     dm1.Sds_Red_Z.Active := true;
     dm1.Sds_Red_Z.Insert;
     dm1.Sds_Red_ZDT_COD.AsDateTime  := ACBrECF1.DadosReducaoZClass.DataDoMovimento;
     dm1.Sds_Red_ZECF_CX.text        := ACBrECF1.DadosReducaoZClass.NumeroDoECF;
     dm1.Sds_Red_ZCOO.value          := ACBrECF1.DadosReducaoZClass.COO;
     dm1.Sds_Red_ZCRZ.value          := ACBrECF1.DadosReducaoZClass.CRZ;
     dm1.Sds_Red_ZCrO.value          := ACBrECF1.DadosReducaoZClass.CrO;
     dm1.Sds_Red_ZGT_FIN.AsFloat     := ACBrECF1.DadosReducaoZClass.ValorGrandeTotal;
     dm1.Sds_Red_ZVL_BRT.AsFloat     := ACBrECF1.DadosReducaoZClass.ValorvendaBruta;
     dm1.Sds_Red_Z.Post;
     dm1.Sds_Red_Z.ApplyUpdates(0);


     dm1.SDS_TOTAL_Z.Active := False;
     dm1.Sds_TOTAL_Z.Active := true;

with ACBrECF1.DadosReducaoZClass do
     begin
     for I := 0 to ICMS.Count -1 do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF; //(ICMS[I].Indice );
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento; //( 'Tipo      : ' + ICMS[I].Tipo );
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.Text := (ICMS[I].Tipo )+ removechar(FormatFloat('00.00',ICMS[I].Aliquota));
       dm1.SDS_TOTAL_ZVALOR_TOTALIZADOR.text := FormatFloat('0.00', ICMS[I].Total);
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := (ICMS[I].Indice);
       dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Icms';
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text := FormatFloat('0.00',ICMS[I].Aliquota) ;
       DM1.SDS_TOTAL_Z.Post;
       DM1.SDS_TOTAL_Z.Next;
       DM1.SDS_TOTAL_Z.Last;
       end;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'DT';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',DescontoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'Can-T';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',CancelamentoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'I1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.text := FormatFloat('0.00',IsentoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'AT';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',AcrescimoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'F1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',SubstituicaoTributariaICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'N1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',NaoTributadoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     for I := 0 to ISSQN.Count -1 do
     begin
        DM1.SDS_TOTAL_Z.Insert;
        DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF; // + ISSQN[I].Indice );
        DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
        DM1.SDS_TOTAL_ZTOTALIZADOR_Z.Text := (ISSQN[I].Tipo + RemoveChar(FormatFloat('00.00', ISSQN[I].Aliquota)));
        dm1.SDS_TOTAL_ZVALOR_TOTALIZADOR.text := FormatFloat('###,##0.00', ISSQN[I].Total);
        DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := (ISSQN[I].Indice );
        dm1.SDS_TOTAL_ZDESCRICAO.Text := 'ISSQN';
        DM1.SDS_TOTAL_Z.Post;
        DM1.SDS_TOTAL_Z.Next;
        DM1.SDS_TOTAL_Z.Last;
     end;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Issqn';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'DS';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',DescontoISSQN);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;
     //dm1.SDS_TOTAL_Z.post;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;

       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Issqn';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'Can-S';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',CancelamentoISSQN);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

      with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;

       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Issqn';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'FS1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',SubstituicaoTributariaISSQN);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;
     
     //dm1.SDS_TOTAL_Z.post;
     DM1.sds_total_z.ApplyUpdates(0);
    end;
    end;
end;

procedure TFormParcelamento.cbxModeloChange(Sender: TObject);
begin
try
     ACBrECF1.Modelo := TACBrECFModelo( cbxModelo.ItemIndex ) ;
  except
     cbxModelo.ItemIndex := Integer( ACBrECF1.Modelo ) ;
     raise ;
  end ;

end;

procedure TFormParcelamento.Edit5Change(Sender: TObject);
begin
IF (Edit5.Text>='A') AND (Edit5.Text<='Z') THEN
EDIT6.Text:='LETRAS';

IF (EDIT5.Text>='0') AND (Edit5.Text<='9') THEN
EDIT6.Text:='NUMEROS';

IF EDIT5.Text='' THEN
EDIT6.Text:=''
end;

procedure TFormParcelamento.t(Sender: TObject);
begin
  if strtocurr(EdtPercentualDesconto.Text) < 0 then
  begin
    showmessage('Valor do Desconto não pode ser negativo');
    EdtPercentualDesconto.SetFocus;
  end
  else
  if strtocurr(EdtPercentualDesconto.Text) > 0 then
  begin
    cDescontovenda        := strtocurr(currtostrf((strtocurr(EdtSubTotal.Text) * strtocurr(EdtPercentualDesconto.text)) / 100, ffFixed, 2));
    EdtValorDesconto.Text := currtostr(cDescontovenda);

    if cDescontovenda > 0 then
    begin
      EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontovenda);
      // FormasComDesconto;
      cTotalvenda:= EdtTotalLiquido.Value;
    end;

    EdtTroco.Text := '0';
    EdtTotalLiquido.Value := cTotalvenda;
    EdtTotalGeral.Value := EdtTotalLiquido.Value;
    EdtValorDescontoExit(Sender);
  end
  else
  begin
    EdtValorDesconto.Clear;
    cDescontovenda:= 0;
    //FormasPagamento;
    EdtTotalLiquido.Value := EdtSubTotal.Value;
    EdtTotalGeral.Value := EdtTotalLiquido.Value;
  end;
end;

procedure TFormParcelamento.EdtValorDescontoExit(Sender: TObject);
begin
  if strtocurr(EdtValorDesconto.Text) < 0 then
  begin
    showmessage('Valor do Desconto não pode ser negativo');
    EdtValorDesconto.SetFocus;
    exit;
  end;

  cDescontovenda:= strtocurr(EdtValorDesconto.Text);
  if cDescontovenda >= 0 then
  begin
    EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontovenda);
    //  FormasComDesconto;
    cTotalvenda:= EdtTotalLiquido.Value;
    EdtTotalLiquido.Value := cTotalvenda;
    EdtTotalGeral.Value := EdtTotalLiquido.Value;
    EdtPercentualDesconto.Value := EdtValorDesconto.Value * 100 / EdtSubTotal.Value;
  end
  else
  begin
    EdtPercentualDesconto.Clear;
    // FormasPagamento;
  end;

  EdtTroco.Text:= '0';
  EdtTotalGeral.Value := EdtTotalLiquido.Value;
  DBGridFormas.SetFocus;

  desconto  := (cDescontovenda * 100 / EdtSubTotal.Value);
  //desc := FormatFloat('##,##0.00',desconto);
  desconto2 := DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.AsFloat;

  IF desconto > desconto2 then
  begin
    if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      try
        FormLiberaDesconto:= TFormLiberaDesconto.create(nil);
        FormLiberaDesconto.showmodal;
        if FormLiberaDesconto.Tag = 0 then
        begin
          EdtPercentualDesconto.Clear;
          EdtPercentualDesconto.SetFocus;
        end;
      finally
        FreeAndNil(FormLiberaDesconto);
      end;
    end
    else
    begin
      EdtPercentualDesconto.Clear;
      EdtPercentualDesconto.SetFocus;
    end;
  end;
end;

procedure TFormParcelamento.DBGridFormasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  VAR
    TOTAL1 :Real;
begin
  { Para não deixar apagar o registro }
   if  Key = VK_DELETE then
       Key:= VK_NONAME;

  // Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);

   if Key = vk_space then
   begin
   CDSFormas.Edit;
   CDSFormasVALOR.Value :=0;
   Total1 := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...
   CDSFormas.Edit;
   CDSFormasVALOR.AsFloat := EdtTotalLiquido.Value - TOTAL1;

   // EdtTotalGeral.Value  := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...
   // CDSFormas.Next;
   // CDSFormas.Prior;
   end;

  
end;

procedure TFormParcelamento.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  { Para não deixar apagar o registro }
{   if  Key = VK_DELETE then
       Key:= VK_NONAME;
   Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);   }

   //if  Key = VK_return then

end;

procedure TFormParcelamento.DBGridFormasColEnter(Sender: TObject);
begin
   if DBGridFormas.SelectedIndex = 0 then
      DBGridFormas.SelectedIndex:= 1;
end;

procedure TFormParcelamento.DBGridFormasEnter(Sender: TObject);
begin
   CDSFormas.First;
   DBGridFormas.SelectedIndex:= 1;
   if CDSFormasvalor.AsFloat > 99999999 then
   begin
     CDSFormas.Edit;
     CDSFormasvalor.AsFloat := 0;
   end;
end;

procedure TFormParcelamento.DBGridFormasKeyPress(Sender: TObject;
  var Key: Char);
  var bPagou, bErroFormas : boolean;
    cSomaFormas : Real;
    TIPO : string;
begin
  if not (key in ['0'..'9', #13, #8, #9,',']) then
     key:= #0;

  if Key =#8 then
  begin
    CDSFormas.Edit;
    CDSFormasVALOR.AsFloat := 0;
    CDSFormasVALOR.AsFloat := 0;
  end;

 
   if Key =#9 then
   Begin
     with CDSFormas do
      begin
         first;
         while not eof do
            begin
            if CDSFormasvalor.AsString = '' then
            begin
            CDSFormas.Edit;
            CDSFormasvalor.AsFloat := 0;
            end ;
            Next;
         end;
         end;
  end;
   { Verifica Formas de Pagamento }

   if Key =#13 then
   Begin

   if CDSFormasvalor.asstring ='' then
   begin
     CDSFormas.Edit;
     CDSFormasvalor.AsFloat := 0;
   end;

   if CDSFormasvalor.AsFloat > 99999999 then
   begin
     CDSFormas.Edit;
     CDSFormasvalor.AsFloat := 0;
   end;

   DBGridFormasTotalsUpdated(Sender);

   // AVISTA
   if CDSFormasTIPO.Text = 'A' then
   begin
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   suiButton2.Enabled := True;
   end;{ ELSE
   IF CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   suiButton2.Enabled := FALSE;
   end; }
   end;

   //VALE
   if CDSFormasTIPO.Text = 'V' then
   begin
   IF  CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   suiButton2.Enabled := True;
  { end ELSE
   IF CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   suiButton2.Enabled := FALSE;}
   end;
   end;

   // CREDIARIO
   if (CDSFormasTIPO.Text = 'C') or (CDSFormasTIPO.Text = 'Z') then
   begin
   Total := ExatoCurrency(CDSFormasVALOR.Value,2);
   Total1 :=ExatoCurrency(EdtTotalLiquido.Value,2);
   IF total > total1 then
   BEGIN
     showmessage('Valor total do Crediario não pode ser maior que a n_venda');
     CDSFormas.Edit;
     CDSFormasVALOR.AsFloat := EdtTotalLiquido.Value;
     DBGridFormas.SetFocus;
     suiButton3.Enabled := false;
     suiButton2.Enabled := false;
     exit;
     abort;
   end;

   TIPO := 'C';
   IF CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   CDS_PAGTO.Close;
   QPGTO.Close;
   suiButton3.Enabled := false;
   //   suiButton2.Enabled := false;
   ClientDataset1.First;
   while not clientDataset1.EOF do
   begin
   ClientDataset1.Delete;
   end;
   end else

   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
    DM.SDS_CondPagamento.Active := FALSE;
    DM.SDS_CondPagamento.Active := True;
    DM.SDS_CondPagamento.first;
    repeat
    DM.SDS_CondPagamento.edit;
    DM.SDS_CondPagamentoCHEK.Value:='F';
    DM.SDS_CondPagamento.Post;
    DM.SDS_CondPagamento.ApplyUpdates(0);
    DM.SDS_CondPagamento.Next;
    until DM.SDS_CondPagamento.eof;

   CDS_PAGTO.Close;
   QPGTO.Close;
   QPGTO.SQL.CLEAR;
   QPGTO.SQL.Add('select * from condicao_pagamento where tipo_pagamento = ' + QuotedStr(TIPO));
   QPGTO.SQL.Add('order by numero_par asc');
   qPGTO.Open;
   CDS_PAGTO.Open;
   suiButton3.Enabled := True;
   //   suiButton2.Enabled := false;
   XDBGrid1.SetFocus;
   end;
   // CDSFormas.Next;
   // CDSFormas.Prior;
   end;

   //    CDSFormas.Next;
   //    CDSFormas.Prior;
   //   EdtTotalGeral.Value  := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...

   //CHEQUE
   if CDSFormasTIPO.Text = 'H' then
   begin
   TIPO := 'H';
   IF CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   CDS_PAGTO.Close;
   QPGTO.Close;
   suiButton3.Enabled := false;
   // suiButton2.Enabled := False;
   ClientDataset1.First;
   while not clientDataset1.EOF do
   begin
   ClientDataset1.Delete;
   end;
   {end else
   IF CDSFormasVALOR.AsFloat > 0.01 then
   BEGIN
   CDS_PAGTO.Close;
   QPGTO.Close;
   QPGTO.SQL.CLEAR;
   QPGTO.SQL.Add('select * FROM CONDICAO_PAGAMENTO WHERE TIPO_PAGAMENTO ='+ QuotedStr(TIPO)+'');
   QPGTO.SQL.Add('ORDER BY DESCRICAO ASC');
   qPGTO.Open;
   CDS_PAGTO.Open;
   suiButton3.Enabled := True;
   XDBGrid1.SetFocus; }
   // suiButton2.Enabled := True;
   end;
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   suiButton2.Enabled := True;
   end;
   end;

   
   //CARTÃO
   if CDSFormasTIPO.Text = 'F' then
   begin
   Total := ExatoCurrency(CDSFormasVALOR.Value,2);
   Total1 :=ExatoCurrency(EdtTotalLiquido.Value,2);
   IF total > total1 then
   BEGIN
     showmessage('Valor total da n_venda no Cartão não pode ser maior que a n_venda');
     CDSFormas.Edit;
     CDSFormasVALOR.AsFloat := EdtTotalLiquido.Value;
     DBGridFormas.SetFocus;
     suiButton3.Enabled := false;
   //  suiButton2.Enabled := false;
     exit;
     abort;
   end;
   TIPO := 'F';
   IF CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   CDS_PAGTO.Close;
   QPGTO.Close;
   suiButton3.Enabled := false;
   //  suiButton2.Enabled := False;
   ClientDataset1.First;
   while not clientDataset1.EOF do
   begin
   ClientDataset1.Delete;
   end;
   end else
   IF CDSFormasVALOR.AsFloat > 0.01 then
   BEGIN
   { CDS_PAGTO.Close;
   QPGTO.Close;
   QPGTO.SQL.CLEAR;
   QPGTO.SQL.Add('select * FROM CONDICAO_PAGAMENTO WHERE TIPO_PAGAMENTO ='+ QuotedStr(TIPO)+'');
   QPGTO.SQL.Add('ORDER BY DESCRICAO ASC');
   qPGTO.Open;
   CDS_PAGTO.Open;
   suiButton3.Enabled := False;
   XDBGrid1.SetFocus;         }
   suiButton2.Enabled := True;
   end;
   end;

   //CHEQUE DINHEIRO
   if CDSFormasTIPO.Text = 'B' then // CHEQUE DINHEIRO
   begin
   TIPO := 'B';
   IF CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   // CDS_PAGTO.Close;
   //  QPGTO.Close;
   suiButton3.Enabled := false;
   // suiButton2.Enabled := false;
   end ELSE
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   // CDS_PAGTO.Close;
   //  QPGTO.Close;
   suiButton3.Enabled := false;
   suiButton2.Enabled := false;

   Panel6.Visible := True;

   cds_cheques.Open;
   cds_cheques.First;
   while not clientDataset1.EOF do
   begin
   cds_cheques.Delete;
   end;

    cds_cheques.Insert;
    cds_chequesvenda.Text := inttostr(n_venda);
    cds_chequescond_pagto.Text := 'CHEQUE';
    cds_chequesvalor.AsFloat := CDSFormasVALOR.AsFloat;
    cds_chequesPARC.AsInteger := 1;
    XDBGrid2.SetFocus;
    xDBGRID2.COLUMNS.Grid.Fields[1].FocusControl;
   end;

   end;

   // CONSUMO
   if CDSFormasTIPO.Text = 'M' then
   begin
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   suiButton2.Enabled := True;
   end;{ ELSE
   IF CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   suiButton2.Enabled := FALSE;
   end; }
   end;

   
    // BRINDE
   if CDSFormasTIPO.Text = 'D' then
   begin
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   suiButton2.Enabled := True;
   end;{ ELSE
   IF CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   suiButton2.Enabled := FALSE;
   end; }
   end;

     // GARANTIA
   if CDSFormasTIPO.Text = 'G' then
   begin
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   suiButton2.Enabled := True;
   end;{ ELSE
   IF CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   suiButton2.Enabled := FALSE;
   end; }
   end;
      // PIX DEPOSITO
   if CDSFormasTIPO.Text = 'P' then
   begin
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   suiButton2.Enabled := True;
   end;{ ELSE
   IF CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   suiButton2.Enabled := FALSE;
   end; }
   end;

      //DANIFICADO
   if CDSFormasTIPO.Text = 'O' then
   begin
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   suiButton2.Enabled := True;
   end;{ ELSE
   IF CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   suiButton2.Enabled := FALSE;
   end; }
   end;
   { IF not CDSFormas.RecordCount =  CDSFormas.RecNo then
    BEGIN
      CDSFormas.Next;
    end; }
     // CDSFormas.Prior;
     // CDSFormas.Prior;
    //EdtTotalGeral.Value  := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...

  with CDSFormas do
  begin
      Next;
      Prior;
      Next;
    end;
  end;
end;


procedure TFormParcelamento.DBGridFormasTotalsUpdated(Sender: TObject);
  var bPagou, bErroFormas : boolean;

begin
     //E_desconto.Text := DBGrid.Columns.Items[4].TotalFooter.Value;
     //edit60.Text  := DBGrid.Columns.Items[5].TotalFooter.Value; // pega o valor total da coluna somada...
      cSomaFormas  := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...

      if cSomaFormas - EdtTotalGeral.VALUE  > 0.01 then
      begin
      EdtTroco.text :=  currtostr(cSomaFormas - EdtTotalGeral.VALUE);
      edtDiferenca.Value :=0;

      end else
      if cSomaFormas - EdtTotalGeral.VALUE  < 0.01 then
      begin
      edtDiferenca.text :=  currtostr(cSomaFormas - EdtTotalGeral.VALUE);
      EdtTroco.Value :=0;
      end;


     
end;

procedure TFormParcelamento.DBGridFormasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
  if not odd(CDSFormas.RecNo) then
  if not (gdselected in State) then
    begin
    DBGridFormas.Canvas.Brush.Color := $00FDE2BD;
    DBGridFormas.Canvas.FillRect(Rect);
    DBGridFormas.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

procedure TFormParcelamento.xdbgrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
  var
    Check: Integer;
    R: TRect;
begin
  if not odd(CDS_PAGTO.RecNo) then
  if not (gdselected in State) then
    begin
    XDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    XDBGrid1.Canvas.FillRect(Rect);
    XDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end; 

    if column.FieldName = 'CHEK' then
    begin
    XDBGrid1.Canvas.FillRect(Rect);
    Check := 0;
    if CDS_PAGTOCHEK.AsString = 'T' then
    Check := DFCS_CHECKED
    else Check := 0;
    R:=Rect;
    InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
    DrawFrameControl(XDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end;

end;

procedure TFormParcelamento.xdbgrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  { Para não deixar apagar o registro }
  if  Key = VK_DELETE then
    Key:= VK_NONAME;

 // Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);

  if (Key = Vk_return) or (Key = Vk_space) then
    xdbgrid1CellClick(xdbgrid1.Columns[0]);
end;

procedure TFormParcelamento.GeraParcelas;
 VAr
  desconto, PARCELADO, CARTAO :Real;
  DESCONT, TP : string;
begin
  if xDBGrid1.Columns.Items[0].CheckBox then
  begin
    DBEdit3.Text:= CDS_PAGTONUMERO_PAR.Text;
    DBEdit4.Text:= CDS_PAGTOVARIACAO_DIAS.Text;

    valor:= 0;
    n_venda:= 0;
    troco:= 0;
    juros:= 0;
    ENC:= 0;
    Encargos:=0;
    DESCONT:= '0';
    entrada:= 0;
    PARCELADO:= 0;
    valor:= 0;
    
    DESCONT:= FormatCurr('0.00', EdtPercentualDesconto.Value);
    DESCONTO:= StrToFloatDef(DESCONT,0.00);

    if TotalizaFormaPagamento('A') > 0 then
    begin
      entrada:= cTotalForma;
    end;

    if TotalizaFormaPagamento('H') > 0 then
    begin
      CHEQUE:= cTotalForma;
    end;

    if TotalizaFormaPagamento('C') > 0 then
    begin
      PARCELADO:= cTotalForma;
    end;

    if TotalizaFormaPagamento('Z') > 0 then
    begin
      PARCELADO:= cTotalForma;
    end;

    if TotalizaFormaPagamento('F') > 0 then
    begin
      CARTAO:= cTotalForma;
    end;

    venda:= PARCELADO;
    juros:=  CDS_PAGTOJUROS_BASE.AsCurrency;

    if entrada < EdtTotalLiquido.Value then
    begin
      troco:= 0;
      enc:= 0;
      total_venda := 0;
      Enc:=  ( venda * juros );
      Encargos:= venda + (Enc / 100) - venda;
      total_venda:= (venda + Encargos);

      parcelado_total:= ExatoCurrency(total_venda,2);
      EDTJUROS.Value:= ExatoCurrency(Encargos,2);
      EdtTotalGeral.Value:= EdtTotalLiquido.Value + EDTJUROS.Value;
    end;

    total:= ExatoCurrency(parcelado_total,2);
    vlrvenda:=ExatoCurrency(EdtTotalGeral.Value,2);
    Parcela:= CDS_PAGTONUMERO_PAR.AsInteger;
    VP:= (Total / Parcela);

    ClientDataset1.DisableControls;
    ClientDataset1.First;
    while not ClientDataset1.Eof do
      ClientDataset1.Delete;
    ClientDataset1.EnableControls;
    suiButton3Click(Self);
  end;
end;

procedure TFormParcelamento.xdbgrid1CellClick(Column: TXColumn);
var
 Ponto: TBookmark;
begin
  if not CDS_PAGTO.Active then Exit;
  if CDS_PAGTOCHEK.AsString = 'T' then Exit;

 // cdsBookmark:= CDS_PAGTO.Bookmark;

  CDS_PAGTO.DisableControls;
  DM.SDS_CondPagamento.DisableControls;
  Ponto := CDS_PAGTO.GetBookmark; // Pegamos o registro atual

  DM.SDS_CondPagamento.First;
  while not DM.SDS_CondPagamento.Eof do
  begin
    DM.SDS_CondPagamento.edit;
    DM.SDS_CondPagamentoCHEK.Value:= 'F';
    DM.SDS_CondPagamento.Post;
    DM.SDS_CondPagamento.Next;
  end;
  DM.SDS_CondPagamento.ApplyUpdates(0);
  DM.SDS_CondPagamento.EnableControls;


  CDS_PAGTO.First;
  while not CDS_PAGTO.Eof do
  begin
    CDS_PAGTO.Edit;
    CDS_PAGTOCHEK.AsString:= 'F';
    CDS_PAGTO.Post;
    CDS_PAGTO.Next;
  end;

  CDS_PAGTO.GotoBookmark(Ponto); // Setamos a query para o registro que ela se encontrava antes do commit
  CDS_PAGTO.FreeBookmark(Ponto);


  CDS_PAGTO.EnableControls;

 // CDS_PAGTO.GotoBookmark(bm) := cdsBookmark;

  CDS_PAGTO.Edit;
  if CDS_PAGTOCHEK.AsString = 'T' then
    CDS_PAGTOCHEK.AsString:= 'F'
  else
    CDS_PAGTOCHEK.AsString:= 'T';
  CDS_PAGTO.Post;
  CDS_PAGTO.ApplyUpdates(0);

  GeraParcelas;
end;

procedure TFormParcelamento.EdtTotalLiquidoExit(Sender: TObject);
begin
  if strtocurr(EdtTotalLiquido.Text) < 0 then
  begin
    showmessage('Valor da n_venda não pode ser negativo');
    EdtValorDesconto.SetFocus;
    exit;
  end;

  cTotalvenda:= EdtTotalLiquido.Value;

  if cTotalvenda >= 0 then
  begin
    // EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontovenda);
    //  EdtTotalLiquido.Value := cTotalvenda;
    EdtTotalGeral.Value := EdtTotalLiquido.Value;
    EdtValorDesconto.Value := EdtSubTotal.Value - cTotalvenda;
    EdtPercentualDesconto.Value := EdtValorDesconto.Value * 100 / EdtSubTotal.Value;
    cDescontovenda:= strtocurr(EdtValorDesconto.Text);
  end
  else
  begin
    EdtPercentualDesconto.Clear;
    // FormasPagamento;
  end;

  EdtTroco.Text:= '0';
  EdtTotalGeral.Value := EdtTotalLiquido.Value;
  DBGridFormas.SetFocus;

  desconto  := (cDescontovenda * 100 / EdtSubTotal.Value);
  //desc := FormatFloat('##,##0.00',desconto);
  desconto2 := DM.SDS_CONFIGURACOESDESC_MAXIMO_PERC.AsFloat;

  IF desconto > desconto2 then
  begin
    if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      try
        FormLiberaDesconto:= TFormLiberaDesconto.create(nil);
        FormLiberaDesconto.showmodal;
        if FormLiberaDesconto.Tag = 0 then
        begin
          EdtPercentualDesconto.Clear;
          EdtPercentualDesconto.SetFocus;
        end;
      finally
        FreeAndNil(FormLiberaDesconto);
      end;
    end
    else
    begin
      EdtPercentualDesconto.Clear;
      EdtPercentualDesconto.SetFocus;
    end;
  end;
end;

procedure TFormParcelamento.DBComboClienteButtonClick(Sender: TObject);
begin
      formvendas.Sds_pedidos.Edit;
      FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.Edit1.Text := DBComboCliente.Text;
      FormConsClientes.ShowModal;    
      

      if not DM.SDS_Clientes.Eof then
      begin
      DBComboCliente.Text                        := DM.SDS_ClientesCODIGO.text;
      formvendas.Sds_pedidosCODIGO_CLIENTE.Text  := DBComboCliente.Text;
      formvendas.Sds_pedidosNOME_CLIENTE.Text    :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      formvendas.Sds_pedidosCODIGO_CLIENTE.Text  :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
      formvendas.Sds_pedidosENDERECO.Text        := DM.SDS_ClientesENDERECO.AsString;
      formvendas.Sds_pedidosCPF_CNPJ.Text        := DM.SDS_ClientesCPF_CNPJ.Text;
      formvendas.Sds_pedidosRG_IE.Text           := DM.SDS_ClientesRG_IE.Text;
      formvendas.Sds_pedidosfone.Text            := DM.SDS_ClientesTELEFONE.Text;
      formvendas.Sds_pedidosCIDADE.Text          := dm.SDS_ClientesCIDADE.AsString;
      formvendas.Sds_pedidosBAIRRO.Text          := DM.Sds_clientesBairro.Text;
      formvendas.Sds_pedidosPROPRIEDADE.Text     := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
      formvendas.Sds_pedidosMED_VETERINARIO.Text :=DM.SDS_ClientesNOME_VETERINARIO.Text;
      formvendas.Sds_pedidosCEP.Text             := removechar(DM.SDS_ClientesCEP.Text);
      formvendas.Sds_pedidosUF.Text              := DM.SDS_ClientesUF.Text;
      formvendas.Sds_pedidosCOD_IBGE.Text        := DM.SDS_ClientesCOD_IBGE.Text;
      formvendas.Sds_pedidosNUMERO.AsInteger     := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
      formvendas.Sds_pedidosTIPO.TEXT            := DM.SDS_ClientesTIPO.Text;
      formvendas.Sds_pedidosIE_PRODUTOR.Text     := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
      formvendas.Sds_pedidosPROD_RURAL.Text      := DM.SDS_ClientesPRODUTOR_RURAL.Text;
      formvendas.DBComboCliente.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
      end else
      begin
      DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
      end;
      
end;

procedure TFormParcelamento.DBComboClienteChange(Sender: TObject);
begin
IF (DBComboCliente.Text>='A') AND (DBComboCliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (DBComboCliente.Text>='0') AND (DBComboCliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF DBComboCliente.Text='' THEN
EDIT2.Text:='';
end;

procedure TFormParcelamento.DBComboClienteEnter(Sender: TObject);
begin
formvendas.Sds_pedidos.Edit;
edit2.Clear;
DBComboClienteChange(Sender);
end;

procedure TFormParcelamento.DBComboClienteExit(Sender: TObject);
begin
formvendas.Sds_pedidos.Edit;
  // DBComboCliente.Text := DM.SDS_ClientesCODIGO.Text;
  {Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
  Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
  Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
  Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
  Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
  Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
  Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  DBComboCliente.Text := DM.SDS_ClientesCODIGO.Text;
  Sds_pedidosCEP.Text := DM.SDS_ClientesCEP.Text;
  Sds_pedidosUF.Text  := DM.SDS_ClientesUF.Text;
  Sds_pedidosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
  Sds_pedidosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
        Sds_pedidosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;    }
 // Sds_pedidos.post;

 if DBComboCliente.Text = '' then
 begin
   DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   //Application.MESSAGEBOX('Informe o nome ou Codigo do cliente', 'Atenção', MB_ICONASTERISK + MB_OK + MB_DEFBUTTON2);
   DBComboCliente.SetFocus;
 end else
{ if DBComboCliente.Text = ' ' then
 begin
   DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   DBComboCliente.SetFocus;
 end else
  if DBComboCliente.Text = '  ' then
 begin
   DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   DBComboCliente.SetFocus;
 end else
  if DBComboCliente.Text = '   ' then
 begin
   DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   DBComboCliente.SetFocus;
 end else
  if DBComboCliente.Text = '    ' then
 begin
   DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   DBComboCliente.SetFocus;
 end else  }
 begin
 // DM.SDS_Clientes.Active := False;

 if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.sql.add('select * from clientes where NOME_RS like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',DBComboCliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  DBComboClienteButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  formvendas.Sds_pedidos.Edit;
  formvendas.Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  formvendas.Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  formvendas.Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
  formvendas.Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
  formvendas.Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
  formvendas.Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
  formvendas.Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
  formvendas.Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
  formvendas.Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  formvendas.Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  DBComboCliente.Text := DM.SDS_ClientesCODIGO.Text;
  formvendas.Sds_pedidosCEP.Text := removechar(DM.SDS_ClientesCEP.Text);
  formvendas.Sds_pedidosUF.Text  := DM.SDS_ClientesUF.Text;
  formvendas.Sds_pedidosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
  formvendas.Sds_pedidosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
  formvendas.Sds_pedidosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
  formvendas.Sds_pedidosIE_PRODUTOR.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
  formvendas.Sds_pedidosPROD_RURAL.Text   := DM.SDS_ClientesPRODUTOR_RURAL.Text;
  formvendas.DBComboCliente.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  CONVENIO := DM.SDS_ClientesCOD_CONV.ASINTEGER;
  formvendas.Sds_pedidos.post  ;
    end;
    except
     on E: EDatabaseError do
     ShowMessage(E.Message);
    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF DBComboCliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
 DBComboCliente.SetFocus;
end else

  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
  DBComboCliente.Text := RemoveChar(DBComboCliente.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
DBComboCliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  formvendas.Sds_pedidos.Edit;
  formvendas.Sds_pedidosNOME_CLIENTE.Text    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  formvendas.Sds_pedidosCODIGO_CLIENTE.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  formvendas.Sds_pedidosENDERECO.Text        := DM.SDS_ClientesENDERECO.AsString;
  formvendas.Sds_pedidosCPF_CNPJ.Text        := DM.SDS_ClientesCPF_CNPJ.Text;
  formvendas.Sds_pedidosRG_IE.Text           := DM.SDS_ClientesRG_IE.Text;
  formvendas.Sds_pedidosfone.Text            := DM.SDS_ClientesTELEFONE.Text;
  formvendas.Sds_pedidosCIDADE.Text          := dm.SDS_ClientesCIDADE.AsString;
  formvendas.Sds_pedidosBAIRRO.Text          := DM.Sds_clientesBairro.Text;
  formvendas.Sds_pedidosPROPRIEDADE.Text     := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  formvendas.Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  formvendas.Sds_pedidosCEP.text             := removechar(DM.SDS_ClientesCEP.Text);
  formvendas.Sds_pedidosUF.Text              := DM.SDS_ClientesUF.Text;
  formvendas.Sds_pedidosCOD_IBGE.Text        := DM.SDS_ClientesCOD_IBGE.Text;
  formvendas.Sds_pedidosNUMERO.AsInteger     := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
  formvendas.Sds_pedidosTIPO.TEXT            := DM.SDS_ClientesTIPO.Text;
  formvendas.Sds_pedidosIE_PRODUTOR.Text     := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
  formvendas.Sds_pedidosPROD_RURAL.Text      := DM.SDS_ClientesPRODUTOR_RURAL.Text;
  formvendas.DBComboCliente.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  CONVENIO := DM.SDS_ClientesCOD_CONV.ASINTEGER;
  formvendas.Sds_pedidos.post  ;
 end;
 end;

       if DM.SDS_ClientesTESTA_LIMITE.Text = 'S' then
       begin
       If DM.SDS_CONFIGURACOESDEBITOS_CLIENTE.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := DBComboCliente.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
      // Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
       Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
       IF Credito > 0 THEN
       begin
       FormDebitos :=nil;
       FormDebitos:=TFormDebitos.Create(self);
       FormDebitos.ShowModal;
       end;
       end;
       end;
end;

       if dm.SDS_Clientes.FieldByName('ativo').asstring = 'I' then
       begin
         Application.MESSAGEBOX('Cliente Inativo Não é Possivel Efetuar a n_venda, Favor Escolher um Cliente Ativo', 'Atenção', MB_ICONASTERISK + MB_OK  + MB_DEFBUTTON2);
         DBComboCliente.SetFocus;
         exit;
       end;
end;

procedure TFormParcelamento.DBComboClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Key in ['a'..'z', 'A'..'Z', '0'..'9', #8, #13, #32])then
begin
ShowMessage(key+ ' é um caracter inválido, digite apenas letras ou números');
key := #0;
DBComboCliente.Text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;


if DBComboCliente.Text > '9999999' then
begin
DBComboCliente.Text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;
end;
formvendas.Sds_pedidos.edit;

end;

if Key = #13 then
//if Key = #9 then

 BEGIN
formvendas.Sds_pedidos.edit;

end;
end;

procedure TFormParcelamento.EdtValorDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8, #9, ',']) then
     key:= #0;
end;

procedure TFormParcelamento.EdtTotalLiquidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8, #9, ',']) then
     key:= #0;
end;

procedure TFormParcelamento.EdtPercentualDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8, #9, ',']) then
     key:= #0;
end;

procedure TFormParcelamento.DBGridFormasExit(Sender: TObject);
begin
    with CDSFormas do
      begin
         first;
         while not eof do
            begin
            if CDSFormasvalor.AsString = '' then
            begin
            CDSFormas.Edit;
            CDSFormasvalor.AsFloat := 0;
            end ;
            Next;
         end;
         end;
end;

procedure TFormParcelamento.DBGridFormasRowSelect(Sender: TObject;
  Action: TSelectAction);
begin
  with CDSFormas do
      begin
         first;
         while not eof do
            begin
            if CDSFormasvalor.AsString = '' then
            begin
            CDSFormas.Edit;
            CDSFormasvalor.AsFloat := 0;
            end ;
            Next;
         end;
         end;
end;

procedure TFormParcelamento.FDvGlassButton2Click(Sender: TObject);
var
  CHQ  : Currency;
begin
            cds_cheques.last;
            with cds_cheques do
            BEGIN
            while cds_chequesvalor.AsFloat = 0.00 do
            cds_cheques.Delete;
            cds_cheques.Next;
            cds_cheques.First;
             end;

              if TotalizaFormaPagamento('B') > 0 then
              begin
              chQ := cTotalForma;
              end;

CDSFormas.Locate('TIPO', 'B',[]);
CDSFormas.Edit;
//CDSFormasVALOR.AsFloat := XDBGrid2.Columns.Items[2].TotalFooter.Value;
CDSFormasVALOR.AsFloat := CHQ;

Panel6.Visible := False;
suiButton2.Enabled := True;
end;

procedure TFormParcelamento.FDvGlassButton1Click(Sender: TObject);
begin
Panel6.Visible := False;
cds_cheques.CancelRange;
suiButton2.Enabled := False;
end;

procedure TFormParcelamento.XDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
    VALOR : Integer;
begin
if Key = vk_return then
begin
           VALOR := cds_chequesPARC.AsInteger;

           Case xDBGrid2.SelectedIndex of
           0: xDBgrid2.SelectedIndex := 1;
           1: xDBgrid2.SelectedIndex := 2;
           ELSE
            xdbgrid2.SelectedIndex := xdbgrid2.SelectedIndex + 1;
            cds_cheques.Last;

            xDBGrid2.SelectedIndex := 0;  // código da proxima linha

            if cds_cheques.Eof then
            begin
            IF xDBGRID2.COLUMNS.Grid.Fields[0].Text = '' then
            begin
            //Sds_pedidos_itens.last;
            xDBGRID2.COLUMNS.Grid.Fields[1].FocusControl;
            end else
            cds_cheques.Insert;
            cds_cheques.Edit;
            cds_chequesvenda.Text := inttostr(n_venda);
            cds_chequescond_pagto.Text := 'CHEQUE';
            cds_chequesvalor.AsFloat := 0;
            cds_chequesPARC.AsInteger :=  VALOR + 1;
            end;
            end;
end;
end;

procedure TFormParcelamento.DBGrid1Exit(Sender: TObject);
begin
   TotalizaPrazo;
   CurrencyEdit2.Value := cTotalprazo;
    NAO_INCLUIR := false;
end;

procedure TFormParcelamento.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key =#13) or (Key =#9) THEN
   TotalizaPrazo;
   CurrencyEdit2.Value := cTotalprazo;
end;

procedure TFormParcelamento.DBGrid1Enter(Sender: TObject);
begin
 NAO_INCLUIR := true;
end;

procedure TFormParcelamento.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  if NAO_INCLUIR then
    ClientDataSet1.Cancel;
end;

procedure TFormParcelamento.FXduplicataGetValue(const VarName: String;
  var Value: Variant);
begin
if varname = 'extenso' then
value := FormatFloat('R$ #,##0.00 - ',dmc.SDS_Crediario_ContratoVALOR_COMPRA.AsFloat)+' '+extenso(dmc.SDS_Crediario_ContratoVALOR_COMPRA.asfloat);
end;

function TFormParcelamento.ConverteReais(Valor: String): Currency;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= StrToFloat(Trim(Valor));
end;

end.



