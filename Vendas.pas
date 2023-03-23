unit Vendas;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, DB, Forms,
  Dialogs, StdCtrls, Mask, RxToolEdit, RXDBCtrl, ExtCtrls, IniFiles,  Menus,
  DBClient, Provider, SqlExpr, Buttons, SUIDBCtrls, Grids,
  FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  IBSQL, IBCustomDataSet, IBQuery, IBDatabase, RDprint, SimpleDS, ActnList,
  XDBGrids, RzEdit, RzDBEdit, RzDBBnEd, DBCtrls,
  SUIImagePanel, SUIGroupBox, SUIRadioGroup, RXCtrls, SUIButton,
  RzTabs, sCheckBox, sEdit, sLabel, sMaskEdit, sCustomComboEdit,
  sTooledit, sDBDateEdit, sDBEdit, sRadioButton, sGroupBox, sDBRadioGroup,
  sBitBtn, sPanel, FireDAC.Stan.Async, FireDAC.DApt, System.Actions, RxCurrEdit,
  RpRenderText, RpRenderRTF, RpRenderHTML, RpDefine, RpRender, RpRenderPDF,
  XDBLists, RxDBCurrEdit, AdvGlowButton, Data.DBXFirebird, svcAuth,
  mPostoRegistro, svcLibrary;

type
  TformVendas = class(TForm)
    GroupBox3: TsGroupBox;
    Label2: TsLabel;
    RxLabel20: TsLabel;
    RxLabel17: TsLabel;
    RxLabel18: TsLabel;
    RxLabel1: TsLabel;
    Shape1: TShape;
    RxLabel11: TsLabel;
    RxLabel2: TsLabel;
    dt_entrega: TsDBDateEdit;
    dt_venda: TsDBDateEdit;
    N_venda: TsDBEdit;
    GroupBox5: TsGroupBox;
    Desc_cliente: TsDBEdit;
    Inserir: TAdvGlowButton;
    cancelar: TAdvGlowButton;
    confirmar: TAdvGlowButton;
    pesquisar: TAdvGlowButton;
    RxLabel3: TsLabel;
    RxLabel4: TsLabel;
    Edit62: TCurrencyEdit;
    edit60: TCurrencyEdit;
    DBEdit4: TsDBEdit;
    E_desconto: TCurrencyEdit;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderHTML1: TRvRenderHTML;
    RvRenderRTF1: TRvRenderRTF;
    RvRenderText1: TRvRenderText;
    Usuario: TsDBEdit;
    Label6: TsLabel;
    RxLabel6: TsLabel;
    RxLabel8: TsLabel;
    RxLabel9: TsLabel;
    RxLabel10: TsLabel;
    RxLabel13: TsLabel;
    Dt_orc: TsDBDateEdit;
    n_ORCA: TsDBEdit;
    DBEdit6: TsDBEdit;
    DBEdit7: TsDBEdit;
    RadioButton1: TsRadioButton;
    RadioButton2: TsRadioButton;
    DBEdit8: TsDBEdit;
    GroupBox9: TsGroupBox;
    Shape2: TShape;
    RxLabel15: TsLabel;
    RxLabel16: TsLabel;
    RxLabel19: TsLabel;
    DBEdit9: TsDBEdit;
    DBEdit10: TsDBEdit;
    DBEdit11: TsDBEdit;
    Edit57: TCurrencyEdit;
    Edit55: TCurrencyEdit;
    GroupBox11: TsGroupBox;
    CancelarOr: TAdvGlowButton;
    ConfirmarOr: TAdvGlowButton;
    PesquisarOR: TAdvGlowButton;
    RxLabel14: TsLabel;
    RbPreco1: TsRadioButton;
    RbPreco2: TsRadioButton;
    RbPreco3: TsRadioButton;
    RbPreco4: TsRadioButton;
    SPC_CODORC: TSQLStoredProc;
    SPC_ITENS: TSQLStoredProc;
    Desc_cond_pagto: TsDBEdit;
    RxLabel7: TsLabel;
    RxLabel21: TsLabel;
    DBGrid1: TXDBGrid;
    PopupMenu1: TPopupMenu;
    ApagaRegistro1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    suiButton2: TAdvGlowButton;
    ActionList1: TActionList;
    RxLabel5: TsLabel;
    Edit2: TsEdit;
    suiButton3: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    DBComboCliente: TComboEdit;
    Edit56: TCurrencyEdit;
    BitBtn3: TAdvGlowButton;
    SPC_ORC_ITENS: TSQLStoredProc;
    SPC_DELETE_ITENS: TSQLStoredProc;
    SPC_MOV_D_DEL: TSQLStoredProc;
    SPC_CREDIARIO_DEL: TSQLStoredProc;
    SPC_DELETE_ORC_ITENS: TSQLStoredProc;
    suiDBRadioGroup2: TsDBRadioGroup;
    Label10: TsLabel;
    Label7: TsLabelFX;
    Dts_pedidos_itens: TDataSource;
    Dts_pedidos: TDataSource;
    dts_orcamentos: TDataSource;
    Dts_orcamentos_itens: TDataSource;
    BitBtn2: TAdvGlowButton;
    SPC_ORCAMENTO: TSQLStoredProc;
    suiButton1: TAdvGlowButton;
    SPC_ORCAMENTOS_DEL: TSQLStoredProc;
    Pc: TRzPageControl;
    TOrcamentos: TRzTabSheet;
    TVendas: TRzTabSheet;
    Panel1: TsPanel;
    Panel2: TsPanel;
    Groupbox2: TsPanel;
    GroupBox1: TsPanel;
    Panel5: TsPanel;
    GroupBox8: TsPanel;
    Groupbox10: TsPanel;
    ComboEdit1: TRxDBComboEdit;
    ComboEdit2: TRxDBComboEdit;
    CodUsuario: TRzDBButtonEdit;
    OrComboEdit2: TRzDBButtonEdit;
    OrComboEdit1: TComboEdit;
    sds_parcelas: TSimpleDataSet;
    sds_parcelasCODIGO: TIntegerField;
    sds_parcelasID_ORCAMENTO: TIntegerField;
    sds_parcelasDESC_COND_PGTO: TStringField;
    sds_parcelasQUANT_PARCELAS: TStringField;
    sds_parcelasVALOR_PARC: TFMTBCDField;
    sds_parcelasPARCELA: TStringField;
    sds_parcelasDATA_VENC: TDateField;
    dbgrid: TXDBGrid;
    RDprint1: TRDprint;
    sds_pagto: TSimpleDataSet;
    sds_pagtoCOD_VENDA: TIntegerField;
    sds_pagtoCOD_FORMA: TIntegerField;
    sds_pagtoVALOR: TFMTBCDField;
    sds_pagtoTIPO: TStringField;
    sds_pagtoDESC_FORMA: TStringField;
    RxLabel12: TsLabel;
    DBEdit1: TsDBEdit;
    QBuscaItens: TFDQuery;
    DSQBuscaItens: TDataSource;
    myLabel3d1: TsLabelFX;
    SQLVendas: TFDQuery;
    sds_pagto_ch: TSimpleDataSet;
    sds_pagto_chCOD_VENDA: TIntegerField;
    sds_pagto_chCOD_PAGTO: TStringField;
    sds_pagto_chVALOR: TFMTBCDField;
    sds_pagto_chDATA: TDateField;
    sds_pagto_chPARC: TStringField;
    DataSource1: TDataSource;
    QBuscaItens1: TFDQuery;
    QryBicoEnc_Temp: TFDQuery;
    DtsQryBicoEnc_Temp: TDataSource;
    Sds_orcamentos: TFDMemTable;
    SDS_Orcamentos_itens: TFDMemTable;
    Sds_orcamentosCEP: TStringField;
    Sds_orcamentosUF: TStringField;
    Sds_orcamentosNUMERO: TIntegerField;
    Sds_orcamentosTIPO: TStringField;
    Sds_orcamentosCOD_IBGE: TStringField;
    Sds_orcamentosPRODUTOR: TStringField;
    Sds_orcamentosIE_PRODUTOR: TStringField;
    Sds_orcamentosCODIGO: TIntegerField;
    Sds_orcamentosVALOR_ITENS: TFMTBCDField;
    Sds_orcamentosVALOR_DESCONTO: TFMTBCDField;
    Sds_orcamentosVALOR_TOTAL: TFMTBCDField;
    Sds_orcamentosVALOR_COMISSAO: TFMTBCDField;
    Sds_orcamentosUSUARIO: TStringField;
    Sds_orcamentosDATA: TDateField;
    Sds_orcamentosCODIGO_CLIENTE: TIntegerField;
    Sds_orcamentosNOME_CLIENTE: TStringField;
    Sds_orcamentosPAGAMENTO: TStringField;
    Sds_orcamentosENC_FINANCEIRO: TFMTBCDField;
    Sds_orcamentosCOD_VENDEDOR: TIntegerField;
    Sds_orcamentosCOD_EMPRESA: TIntegerField;
    Sds_orcamentosOBSERVACOES: TStringField;
    Sds_orcamentosCOD_PAGTO: TIntegerField;
    Sds_orcamentosENDERECO: TStringField;
    Sds_orcamentosCIDADE: TStringField;
    Sds_orcamentosFONE: TStringField;
    Sds_orcamentosBAIRRO: TStringField;
    Sds_orcamentosCPF_CNPJ: TStringField;
    Sds_orcamentosRG_IE: TStringField;
    Sds_orcamentosEXPORTADO: TStringField;
    SDS_Orcamentos_itensCODIGO: TIntegerField;
    SDS_Orcamentos_itensCODIGO_ID: TIntegerField;
    SDS_Orcamentos_itensCODIGO_PROD: TIntegerField;
    SDS_Orcamentos_itensCODIGO_PRODUTO: TStringField;
    SDS_Orcamentos_itensDESCRICAO_PRODUTO: TStringField;
    SDS_Orcamentos_itensENC_FINANCEIRO: TFMTBCDField;
    SDS_Orcamentos_itensVENDEDOR: TIntegerField;
    SDS_Orcamentos_itensSIT_TRIBUTARIA: TStringField;
    SDS_Orcamentos_itensUNIDADE: TStringField;
    SDS_Orcamentos_itensFRACAO: TIntegerField;
    SDS_Orcamentos_itensCOD_NCM: TStringField;
    SDS_Orcamentos_itensITEN: TIntegerField;
    SDS_Orcamentos_itensPROD_SERV: TStringField;
    SDS_Orcamentos_itensPRECO_TOTAL: TCurrencyField;
    SDS_Orcamentos_itensPRECO_UNITARIO: TCurrencyField;
    SDS_Orcamentos_itensQUANTIDADE: TCurrencyField;
    SDS_Orcamentos_itensDESCONTO: TCurrencyField;
    Sds_pedidos: TFDMemTable;
    Sds_pedidosVLR_PIS: TFMTBCDField;
    Sds_pedidosVLR_COFINS: TFMTBCDField;
    Sds_pedidosCODIGO: TIntegerField;
    Sds_pedidosVALOR_ITENS: TFMTBCDField;
    Sds_pedidosVALOR_DESCONTO: TFMTBCDField;
    Sds_pedidosVALOR_TOTAL: TFMTBCDField;
    Sds_pedidosVALOR_COMISSAO: TFMTBCDField;
    Sds_pedidosUSUARIO: TStringField;
    Sds_pedidosDATA_PEDIDO: TDateField;
    Sds_pedidosDATA_ENTREGA: TDateField;
    Sds_pedidosCODIGO_CLIENTE: TIntegerField;
    Sds_pedidosNOME_CLIENTE: TStringField;
    Sds_pedidosPAGAMENTO: TStringField;
    Sds_pedidosSTATUS: TStringField;
    Sds_pedidosSITUACAO: TStringField;
    Sds_pedidosUSUARIO_ENTREGA: TStringField;
    Sds_pedidosENC_FINANCEIRO: TFMTBCDField;
    Sds_pedidosTP: TStringField;
    Sds_pedidosOBSERVACOES: TStringField;
    Sds_pedidosCOD_VENDEDOR: TIntegerField;
    Sds_pedidosCOD_PAGTO: TIntegerField;
    Sds_pedidosN_CUPOM: TStringField;
    Sds_pedidosN_ECF: TStringField;
    Sds_pedidosCOD_EMPRESA: TIntegerField;
    Sds_pedidosHORA: TTimeField;
    Sds_pedidosVALOR_ACRESCIMOS: TFMTBCDField;
    Sds_pedidosCOD_ORCAMENTO: TIntegerField;
    Sds_pedidosCOD_PEDIDO: TIntegerField;
    Sds_pedidosCOD_OS: TSmallintField;
    Sds_pedidosNUM_NOTA: TIntegerField;
    Sds_pedidosSERIE_NOTA: TStringField;
    Sds_pedidosENDERECO: TStringField;
    Sds_pedidosCPF_CNPJ: TStringField;
    Sds_pedidosRG_IE: TStringField;
    Sds_pedidosFONE: TStringField;
    Sds_pedidosCIDADE: TStringField;
    Sds_pedidosBAIRRO: TStringField;
    Sds_pedidosN_PARTIDA: TStringField;
    Sds_pedidosPROPRIEDADE: TStringField;
    Sds_pedidosQUANT_VENDIDA: TFMTBCDField;
    Sds_pedidosSALDO_VENDIDO: TFMTBCDField;
    Sds_pedidosMED_VETERINARIO: TStringField;
    Sds_pedidosDATA_VACINA: TDateField;
    Sds_pedidosVALOR_AVISTA: TFMTBCDField;
    Sds_pedidosVALOR_PRAZO: TFMTBCDField;
    Sds_pedidosUF: TStringField;
    Sds_pedidosCEP: TStringField;
    Sds_pedidosNUMERO: TStringField;
    Sds_pedidosTIPO: TStringField;
    Sds_pedidosCOD_IBGE: TStringField;
    Sds_pedidosVALOR_PAGO: TFMTBCDField;
    Sds_pedidosVALOR_TROCO: TFMTBCDField;
    Sds_pedidosENTREGADOR: TStringField;
    Sds_pedidosTIPO_PEDIDO: TStringField;
    Sds_pedidosFECHADO: TStringField;
    Sds_pedidosMESA: TStringField;
    Sds_pedidosREFERENCIA: TStringField;
    Sds_pedidosCELULAR: TStringField;
    Sds_pedidosPROD_RURAL: TStringField;
    Sds_pedidosIE_PRODUTOR: TStringField;
    Sds_pedidossaldo_troco: TFMTBCDField;
    Sds_pedidosCHAVE_FP: TStringField;
    Sds_pedidosCHAVE_FP_CANCEL: TStringField;
    Sds_pedidoskm: TIntegerField;
    Sds_pedidosSOMAVALOR_TOTAL: TAggregateField;
    Sds_pedidosCOUNT_VENDAS: TAggregateField;
    sds_pedidos_itens: TFDMemTable;
    sds_pedidos_itensCODIGO_PRODUTO: TStringField;
    sds_pedidos_itensDESCRICAO_PRODUTO: TStringField;
    sds_pedidos_itenspreco_total: TCurrencyField;
    sds_pedidos_itensCODIGO: TIntegerField;
    sds_pedidos_itensCOMISSAO: TFMTBCDField;
    sds_pedidos_itensDEV: TStringField;
    sds_pedidos_itensQNT_DEV: TFMTBCDField;
    sds_pedidos_itensVAL_DEV: TFMTBCDField;
    sds_pedidos_itensENC_FINANCEIRO: TFMTBCDField;
    sds_pedidos_itensUNIDADE: TStringField;
    sds_pedidos_itensSIT_TRIBUTARIA: TStringField;
    Sds_Pedidos_itensCODIGO_PROD: TIntegerField;
    sds_pedidos_itensCODIGO_ID: TIntegerField;
    sds_pedidos_itensVENDEDOR: TIntegerField;
    sds_pedidos_itensFRACAO: TIntegerField;
    sds_pedidos_itensCOD_NCM: TStringField;
    sds_pedidos_itensITEN: TIntegerField;
    sds_pedidos_itensPROD_SERV: TStringField;
    sds_pedidos_itensPERC_ISS: TFMTBCDField;
    sds_pedidos_itensBASE_ISS: TFMTBCDField;
    sds_pedidos_itensVL_ISS: TFMTBCDField;
    sds_pedidos_itensPERC_ICM: TFMTBCDField;
    sds_pedidos_itensBASE_ICMS: TFMTBCDField;
    sds_pedidos_itensVL_ICM: TFMTBCDField;
    sds_pedidos_itensPERC_IPI: TFMTBCDField;
    sds_pedidos_itensBASE_IPI: TFMTBCDField;
    sds_pedidos_itensVL_IPI: TFMTBCDField;
    sds_pedidos_itensPERC_COFINS: TFMTBCDField;
    sds_pedidos_itensBASE_COFINS: TFMTBCDField;
    sds_pedidos_itensVL_COFINS: TFMTBCDField;
    sds_pedidos_itensPERC_ICMS_SUBST: TFMTBCDField;
    sds_pedidos_itensBASE_ICMS_SUBST: TFMTBCDField;
    sds_pedidos_itensVL_ICMS_SUBST: TFMTBCDField;
    sds_pedidos_itensPERC_PIS: TFMTBCDField;
    sds_pedidos_itensBASE_PIS: TFMTBCDField;
    sds_pedidos_itensVL_PIS: TFMTBCDField;
    sds_pedidos_itensPRECO_UNITARIO: TCurrencyField;
    sds_pedidos_itensDESCONTO: TCurrencyField;
    sds_pedidos_itensQUANTIDADE: TCurrencyField;
    sds_pedidos_itensCODIGO_BICO: TStringField;
    InserirOr: TAdvGlowButton;
    sds_pedidos_itensTANQUE: TStringField;
    sds_pedidos_itensBOMBA: TStringField;
    suiNOTA: TAdvGlowButton;
    Sds_pedidosMODELO_NF: TStringField;
    Sds_pedidosCFOP: TStringField;
    Panel3: TsPanel;
    GroupBox4: TsGroupBox;
    RxLabel22: TsLabel;
    DBEdit2: TsDBEdit;
    RzDBButtonEdit1: TRzDBButtonEdit;
    RxLabel23: TsLabel;
    Ok: TAdvGlowButton;
    Edit1: TsEdit;
    Edit4: TsEdit;
    RxLabel24: TsLabel;
    suiDBEdit1: TsDBEdit;
    RxLabel25: TsLabel;
    sds_pedidos_itensBICO: TStringField;
    EvDBEditBtn1: TRzDBButtonEdit;
    DBComboPgto: TRzDBButtonEdit;
    EditN1: TCurrencyEdit;
    CheckBox3: TCheckBox;
    SPC_Codigo: TFDStoredProc;
    SPC_CodigoATUAL: TIntegerField;
    Qpromo: TFDQuery;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    sBitBtn1: TAdvGlowButton;
    Sds_pedidosCOD_OS_AUTO: TIntegerField;
    sLabel1: TsLabel;
    Edit5: TCurrencyEdit;
    CurrencyEdit1: TCurrencyEdit;
    sLabel2: TsLabel;
    sBitBtn2: TAdvGlowButton;
    sBitBtn3: TAdvGlowButton;
    E1: TMenuItem;
    XDBColumnsDialog: TXDBColumnsDialog;
    sds_pedidos_itensSOMAPRECO_TOTAL: TAggregateField;
    sds_pedidos_itensSOMAPRECO_UNITARIO: TAggregateField;
    Edit3: TEdit;
    sLabelFX1: TsLabelFX;
    QpromoPRECO_PROMOCAO: TFMTBCDField;
    QryBicoEnc_TempCOD_BICOENC_TEMP: TIntegerField;
    QryBicoEnc_TempID_BOMBA: TIntegerField;
    QryBicoEnc_TempREGISTRO: TIntegerField;
    QryBicoEnc_TempID_BICO: TStringField;
    QryBicoEnc_TempCOD_FRENTISTA: TIntegerField;
    QryBicoEnc_TempID_PRODUTOS: TIntegerField;
    QryBicoEnc_TempENC_LITROS: TFMTBCDField;
    QryBicoEnc_TempENC_DINHEIRO: TFMTBCDField;
    QryBicoEnc_TempPRODUTOS_DESC: TStringField;
    QryBicoEnc_TempNIVEL_PRECO: TIntegerField;
    QryBicoEnc_TempDINHEIRO: TFMTBCDField;
    QryBicoEnc_TempPRECO: TFMTBCDField;
    QryBicoEnc_TempDATAHORA: TSQLTimeStampField;
    QryBicoEnc_TempLITROS: TFMTBCDField;
    QryBicoEnc_TempID_TANQUE: TIntegerField;
    QryBicoEnc_TempUNIDADE: TStringField;
    QryBicoEnc_TempUSUARIO: TStringField;
    QryBicoEnc_TempCOD_USUARIO: TIntegerField;
    QryBicoEnc_TempCHECK_BOX: TStringField;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensDESCRICAO: TStringField;
    QBuscaItensICMS: TFMTBCDField;
    QBuscaItensPERC_ALIQUOTA_IPI: TFMTBCDField;
    QBuscaItensPERC_ICMS_ESTADUAL: TFMTBCDField;
    QBuscaItensPERC_ICMS_INTER_ESTADUAL: TFMTBCDField;
    QBuscaItensFLAG_ICMS: TStringField;
    QBuscaItensIPI_IRPJ: TFMTBCDField;
    QBuscaItensOUTROS_IMPOSTOS: TFMTBCDField;
    QBuscaItensESTOQUE: TBCDField;
    QBuscaItensESTOQUE_FRACAO: TBCDField;
    QBuscaItensPERC_ALIQUOTA_PIS: TFMTBCDField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TFMTBCDField;
    QBuscaItensFLAG_PIS_COFINS: TStringField;
    QBuscaItensFLAG_SUBSTITUICAO_TRIB: TStringField;
    QBuscaItensPERC_LUCRO_ST: TFMTBCDField;
    QBuscaItensPERC_SUBST_TRIBUTARIA: TFMTBCDField;
    QBuscaItensFLAG_FABRICACAO_PROPRIA: TStringField;
    QBuscaItensFLAG_SERVICO: TStringField;
    QBuscaItensPERC_ALIQUOTA_ISS: TFMTBCDField;
    QBuscaItens1CODIGO: TIntegerField;
    QBuscaItens1CODIGO_ID: TIntegerField;
    QBuscaItens1ITEN: TIntegerField;
    QBuscaItens1CODIGO_PROD: TIntegerField;
    QBuscaItens1CODIGO_PRODUTO: TStringField;
    QBuscaItens1DESCRICAO_PRODUTO: TStringField;
    QBuscaItens1PRECO_UNITARIO: TFMTBCDField;
    QBuscaItens1DESCONTO: TFMTBCDField;
    QBuscaItens1QUANTIDADE: TBCDField;
    QBuscaItens1PRECO_TOTAL: TFMTBCDField;
    QBuscaItens1COMISSAO: TFMTBCDField;
    QBuscaItens1DEV: TStringField;
    QBuscaItens1QNT_DEV: TBCDField;
    QBuscaItens1VAL_DEV: TFMTBCDField;
    QBuscaItens1ENC_FINANCEIRO: TFMTBCDField;
    QBuscaItens1UNIDADE: TStringField;
    QBuscaItens1SIT_TRIBUTARIA: TStringField;
    QBuscaItens1VENDEDOR: TIntegerField;
    QBuscaItens1FRACAO: TIntegerField;
    QBuscaItens1COD_NCM: TStringField;
    QBuscaItens1PROD_SERV: TStringField;
    QBuscaItens1PERC_ISS: TFMTBCDField;
    QBuscaItens1BASE_ISS: TFMTBCDField;
    QBuscaItens1VL_ISS: TFMTBCDField;
    QBuscaItens1PERC_ICM: TFMTBCDField;
    QBuscaItens1BASE_ICMS: TFMTBCDField;
    QBuscaItens1VL_ICM: TFMTBCDField;
    QBuscaItens1PERC_IPI: TFMTBCDField;
    QBuscaItens1BASE_IPI: TFMTBCDField;
    QBuscaItens1VL_IPI: TFMTBCDField;
    QBuscaItens1PERC_COFINS: TFMTBCDField;
    QBuscaItens1BASE_COFINS: TFMTBCDField;
    QBuscaItens1VL_COFINS: TFMTBCDField;
    QBuscaItens1PERC_ICMS_SUBST: TFMTBCDField;
    QBuscaItens1BASE_ICMS_SUBST: TFMTBCDField;
    QBuscaItens1VL_ICMS_SUBST: TFMTBCDField;
    QBuscaItens1PERC_PIS: TFMTBCDField;
    QBuscaItens1BASE_PIS: TFMTBCDField;
    QBuscaItens1VL_PIS: TFMTBCDField;
    QBuscaItens1IMPRIME: TStringField;
    QBuscaItens1COD_EMPRESA: TIntegerField;
    QBuscaItens1ID_BICO: TIntegerField;
    QBuscaItens1ID_TANQUE: TStringField;
    QBuscaItens1ID_BOMBA: TStringField;
    QBuscaItens1BICO: TStringField;
    QBuscaItens1ICMS: TFMTBCDField;
    QBuscaItens1COD_ANP: TStringField;
    QBuscaItens1COMBUSTIVEL: TStringField;
    QBuscaItens1ESTOQUE: TBCDField;
    QBuscaItens1APLICACAO: TStringField;
    QBuscaItens1IPI_IRPJ: TFMTBCDField;
    QBuscaItens1OUTROS_IMPOSTOS: TFMTBCDField;
    QBuscaItens1NCM_SH: TStringField;
    QBuscaItens1QTD_CAIXA: TSmallintField;
    QBuscaItens1UND_TRIB: TStringField;
    QBuscaItens1ML_QUANT_BEB: TFMTBCDField;
    QBuscaItens1SIT_COFINS_VENDA_EST: TStringField;
    QBuscaItens1SIT_PIS_VENDA_INTER_EST: TStringField;
    QBuscaItens1SIT_COFINS_VENDA_INTER_EST: TStringField;
    QBuscaItens1SIT_PIS_VENDA_EST: TStringField;
    QBuscaItens1CST_IPI_SAIDA: TStringField;
    QBuscaItens1CST_VENDA_INTER: TStringField;
    QBuscaItens1PERC_ALIQUOTA_PIS: TFMTBCDField;
    QBuscaItens1PERC_ALIQUOTA_COFINS: TFMTBCDField;
    QBuscaItens1CFOP_INTER_VENDA: TStringField;
    QBuscaItens1FLAG_PIS_COFINS: TStringField;
    QBuscaItens1CFOP_EST_VENDA: TStringField;
    QBuscaItens1CST_VENDA: TStringField;
    QBuscaItens1NCM_SH_1: TStringField;
    QBuscaItens1PERC_TRIBU: TFMTBCDField;
    QBuscaItens1FONTE: TStringField;
    QBuscaItens1ALIC_NAC: TFMTBCDField;
    QBuscaItens1ALIC_IMP: TFMTBCDField;
    sds_pagto_chCOD_EMPRESA: TIntegerField;
    Sds_orcamentosSTATUS: TStringField;
    act_PostoRegistros: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InserirClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure confirmarClick(Sender: TObject);
    procedure DBComboClienteButtonClick(Sender: TObject);
    procedure E_UsuarioExit(Sender: TObject);
    procedure dbgridEnter(Sender: TObject);
    procedure dbgridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure excluirClick(Sender: TObject);
    procedure pesquisarClick(Sender: TObject);
    procedure dbgridExit(Sender: TObject);
    procedure DBComboClienteEnter(Sender: TObject);
    procedure E_DescontoExit(Sender: TObject);
    procedure InsereItem;
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbgridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure dbgridEditButtonClick(Sender: TObject);
    procedure E_UsuarioEnter(Sender: TObject);
    procedure dbgridCellClick(Column: TXColumn);
    procedure ComboEdit1Click(Sender: TObject);
    procedure dt_entregaEnter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure dt_vendaEnter(Sender: TObject);
    procedure CodUsuarioButtonClick(Sender: TObject);
    procedure CodUsuarioEnter(Sender: TObject);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure CodUsuarioExit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure Dt_orcEnter(Sender: TObject);
    procedure OrComboEdit2ButtonClick(Sender: TObject);
    procedure OrComboEdit1ButtonClick(Sender: TObject);
    procedure OrComboEdit2Exit(Sender: TObject);
    procedure OrComboEdit1Exit(Sender: TObject);
    procedure OrComboEdit2Enter(Sender: TObject);
    procedure OrComboEdit1Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure RbPreco2Exit(Sender: TObject);
    procedure RbPreco4Exit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TXColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure InserirORClick(Sender: TObject);
    procedure RbPreco1Exit(Sender: TObject);
    procedure ConfirmarOrClick(Sender: TObject);
    procedure CancelarOrClick(Sender: TObject);
    procedure ComboEdit2ButtonClick(Sender: TObject);
    procedure InsereItemOr;
    procedure ExcluirOrClick(Sender: TObject);
    procedure ComboEdit2Click(Sender: TObject);
    procedure ComboEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RbPreco3Exit(Sender: TObject);
    procedure AlterarOrClick(Sender: TObject);
    procedure ReinprimirORClick(Sender: TObject);
    procedure DBComboPgtoEnter(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure DBComboPgtoButtonClick(Sender: TObject);
    procedure DBComboPgtoExit(Sender: TObject);
    procedure ComboEdit1Enter(Sender: TObject);
    procedure ComboEdit2Enter(Sender: TObject);
    procedure ComboEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgridColEnter(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ComboEdit2Exit(Sender: TObject);
    procedure ApagaRegistro1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure PesquisarORClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgridColExit(Sender: TObject);
    procedure DBComboClienteKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboClienteChange(Sender: TObject);
    procedure DBComboClienteExit(Sender: TObject);
    procedure ComboEdit1Change(Sender: TObject);
    procedure ComboEdit2Change(Sender: TObject);
    procedure NavegadorClick(Sender: TObject; Button: TNavigateBtn);
    procedure suiButton4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure sds_pedidos_itens1AfterPost(DataSet: TDataSet);
    procedure SDS_Orcamentos_itens1AfterPost(DataSet: TDataSet);
    procedure dbgridTotalsUpdated(Sender: TObject);
    procedure DBGrid1TotalsUpdated(Sender: TObject);
    procedure TorcamentosClick(Sender: TObject);
    procedure TvendasClick(Sender: TObject);
    procedure TorcamentosShow(Sender: TObject);
    procedure TvendasShow(Sender: TObject);
    procedure MostraErros(Sender: Tobject; E: Exception);
    procedure CodUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure OrComboEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure OrComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure OrComboEdit1Change(Sender: TObject);
    procedure ImprimeOrcamento;
    procedure ww(Sender: TObject; var Key: Char);
    procedure CALCULA;
    procedure Edit56Enter(Sender: TObject);
    procedure LerINI;
    procedure dt_vendaExit(Sender: TObject);
    procedure OkClick(Sender: TObject);
    procedure suiNOTAClick(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit1Exit(Sender: TObject);
    procedure RzDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure EvDBEditBtn1BtnClick(Sender: TObject);
    procedure EvDBEditBtn1Enter(Sender: TObject);
    procedure EvDBEditBtn1Exit(Sender: TObject);
    procedure AtualizaContaCliente(const iAux, iCodigoConta : integer);
    procedure sBitBtn1Click(Sender: TObject);
    procedure BuscaValorEmTodosCamposTabela(Tabela, Busca : String);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure dbgridOrderChanged(Sender: TObject);
    procedure act_PostoRegistrosExecute(Sender: TObject);

  private
    { Private declarations }
    FUpdateTotals: Integer;
  public
    { Public declarations }
    Total, juros, enc, encargos,  venda, total_venda, Desc, Comissao,EncFinanceiro:Double;
    ValCompra, Dinheiro, Soma, A, B, z, C :Double;
    Cod, Contador, I, NItem, NValor :Integer;
    Pagamento, CPFCNPJ, RGIE, EnderComp,  codigo_bar : String;
    TipoCupom : Char ;
    D: Currency;
  iCOOVenda              : integer;    //variável usada para guardar o número do cupom fiscal
  iCCFVenda              : integer;    //variável usada para guardar o número do contador de cupom fiscal
  iCOOMesa               : integer;    //variável usada para guardar o coo do gerencial da mesa
  dDataVenda             : TDate;
  dHoraVenda             : TTime;
  iCERMesa               : integer;
  iCOOContaCliente       : integer;    //variável usara para guardar o coo da conta do cliente
  iECFMesa               : integer;    //variável usada para guardar o numero da ecf que imprimiu o GER da Mesa
  iCodCliente            : integer;    //variável usada para guardar o código do cliente
  ALTERA :Boolean ;
  end;

var
  formVendas: TformVendas;

    tamque, bomba : string;
    sCodigo, sDescricao, sAliquota, sTipoQtde, sQtde, sValor, sTipo, sDesconto : string;
    sAcreDesc, sForma, sMensagem, sConfirma, sTipoDesconto, sUnidade : String;
     sValorDesc :real;

    estoque, quantidade, saldo, estoque_ant : Real;
    ACHOU,  concluiu :BOOLEAN;
    ATIVO, orca : string;
    N, CONVENIO :INTEGER;
    Credito : Currency;
    exportada :Boolean ;

  //  JaFezAdiantamento: Boolean;


  implementation

uses Acesso, ModulodeDadosConsultas, ModulodeDados, Principal,
  ModulodeDadosRelatorios, printPedidos, EmiteEcf,
  ConsProdutos, ConsClientes,
  ConsCondPagamento, ConsultaPedidoDireto, ModulodeDadosConsultas5,
  duplicata, ContratoVEnda, Udmcob, VendasParcelamento, ConsUsuarios,
  ConsProdutosVendas,Z_RotinasGerais, RelOrcamentos,
  ConsProdutosOrca, ModulodeDadosConsultas3, ClientesAdd,
  clientesaddVendas, ImpNotafiscal, ConsProdSimilar, ConsultaOrcamentos,
  lancNotasFiscais, PEDIDO80COL, clientesaddorc, CRCrediario,
  ProdutosFalta, debitos, gerNFE, HistoricoCliente, RelOrca80col, Ubibli1,
  UnitProcBicoEnc_Temp, DocsFiscais, Logoff, xloc_cfop,
  FrmConsultaPreVenda, FrmApagarOrcamentoCondicional, ufrmRegistrosPostoList;

{$R *.dfm}
function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve está no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;

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

procedure TFormvendas.BuscaValorEmTodosCamposTabela(Tabela, Busca : String);
var
  Query : TFDQuery;
begin
  Query:= TFDQuery.Create(nil);
  Query.Connection := DM.Coneccao;
  Query.SQL.Add('SELECT R.RDB$RELATION_NAME, R.RDB$FIELD_NAME ');
  Query.SQL.Add('FROM RDB$RELATION_FIELDS R, RDB$FIELDS F ');
  Query.SQL.Add('WHERE F.RDB$FIELD_NAME = R.RDB$FIELD_SOURCE ');
  Query.SQL.Add('AND R.RDB$RELATION_NAME = '+QuotedStr(Tabela));
  Query.SQL.Add('ORDER BY R.RDB$FIELD_POSITION, R.RDB$FIELD_NAME');
  Query.Open;

  while not Query.Eof do
  begin
   if (Query.Fields[1].AsString = 'CODIGO_BARRAS') or
       (Query.Fields[1].AsString = 'DESCRICAO') or
       (Query.Fields[1].AsString= 'REFERENCIA') or
       (Query.Fields[1].AsString= 'NCM_SH') or
       (Query.Fields[1].AsString= 'CODORIGINAL') or
       (Query.Fields[1].AsString= 'COD_PACOTE') then
   BEGIN
    if Busca <> '' then
    begin
      DM.DTS_PRODUTOS_c.DataSet.Filter:= Query.Fields[1].AsString+' LIKE ' +QuotedStr('%'+Busca+'%');
      DM.DTS_PRODUTOS_c.DataSet.Filtered:= True;
    end
    else
      DM.DTS_PRODUTOS_c.DataSet.Filtered:= False;

    if DM.DTS_PRODUTOS_c.DataSet.IsEmpty then
    begin
      DM.DTS_PRODUTOS_c.DataSet.Filtered:= False;
    end
    else
      Exit;
    end;

      Query.Next;
  end;
  Query.Destroy;
end;

// FUNÇÃO PARA LER O CODIGO DE BALANÇAS
//--------------------------//---------------------------

function WordsCount( s : string ) : integer;
var
ps: PChar;
nSpaces,n,o : integer; 
begin 
//total de palavras 
n := 0; 
//total de letras 
o := 0; 
s := s + #0; 
ps := @s[ 1 ]; 
while( #0 <> ps^ ) do 
begin
while((' ' = ps^)and(#0 <> ps^)) do
begin
inc( ps );
//conta total de letras
inc(o);
end;
nSpaces := 0;
while((' ' <> ps^)and(#0 <> ps^))do
begin
inc(nSpaces);
inc(ps); 
//conta total de letras 
inc(o); 
end;
if ( nSpaces > 0 ) then 
begin 
inc( n );
end; 
end; 
//recebe o total de letras contadas incluindo os espacos 
Result := o; 
end;

procedure TFormvendas.LerINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
//  SkinData1.SkinName := INI.ReadString('Temas','Tema','');
  finally
     INI.Free ;
  end ;
end;

procedure TFormvendas.AtualizaContaCliente(const iAux, iCodigoConta : integer);
begin
   if dm.IBTRServer.Active then
      dm.IBTRServer.Commit;
   dm.IBTRServer.StartTransaction;
   try
     try
       with dm.QConsultaServer do
          begin
             close;                    
             sql.Clear;
             sql.Text:= 'UPDATE CONTA_CLIENTE  ' +
                        'SET DATA_FECHAMENTO = :DATA, HORA_FECHAMENTO = :HORA, COO_VENDA = :COOVENDA, STATUS = :STATUS ' +
                        'WHERE CODIGO = :CODIGO';
             Parambyname('data').AsDate         := date;
             Parambyname('hora').AsTime         := time;
             Parambyname('codigo').AsInteger    := iCodigoConta;
             Parambyname('coovenda').AsInteger  := iCOOVenda;
             Parambyname('status').AsInteger    := iAux;
             ExecSQL;
          end;
       dm.IBTRServer.Commit;
     except
       dm.IBTRServer.Rollback;
       showmessage('Erro ao atualizar a Conta do Cliente');
     end;
   finally
     dm.QConsultaServer.Close;
   end;
end;

procedure TFormvendas.ImprimeOrcamento;
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
     CLI := 'Cód: '+ dmc.CDS_OrcamentosCODIGO_CLIENTE.Text + '  Nome: '+ dmc.CDS_OrcamentosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_OrcamentosENDERECO.AsString;
     Numero_CLI := dmc.CDS_OrcamentosNUMERO.AsString;
     CEP_CLI := dmc.CDS_OrcamentosCEP.AsString;
     CID_CLI := dmc.CDS_OrcamentosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_OrcamentosUF.AsString;

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
        impc(07,70,'ORCAMENTO / CONDICIONAL',[comp17, Negrito]);
        //inc   (linha);
        imp (08,01,traco);
        //inc   (linha);
        imp (09,01,'Nº Orc. : ' + dmc.CDS_OrcamentosCODIGO.Text +
                   '       Data: ' + dmc.CDS_OrcamentosDATA.AsString +
                   '         Vendedor.: ' + dmc.CDS_OrcamentosUSUARIO.Text );

        // Dados do Cliente...
        imp (10,01,traco);
        impf(11,01,CLI,[comp12]);
        impf(11,75,'Apel./Fant.: '+ dmc.SDS_ClienteoAPELIDO.text,[comp12]);
        impf(12,01, 'End.:' +END_CLI + ',' + 'Nº: ' +NUMERO_CLI,[comp12]);
        impf(12,75,'Cep: '+CEP_CLI  + ' - ' +
                   'Cidade: ' + CID_CLI + ' - ' +
                   'UF: '+ ESTADO_CLI, [comp12]);
        impf(13,01,'CPF/CNPj: '+ dmc.CDS_OrcamentosCPF_CNPJ.text,[comp12]);
        impf(13,75,'Rg/IE: '+ dmc.CDS_OrcamentosRG_IE.text,[comp12]);
        // Titulo dos Itens...
        imp (14,01,traco);
        imp (15,01,'Codigo          Descrição dos Produtos                          Marca         Qte        UN        Unitário            Descontos           Sub-Total');
        imp (16,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 17;
       DMC.SDS_orcamento_Itens.First;
       while not DMC.SDS_orcamento_Itens.eof do
        begin
        with rdprint1 do
           begin
           impf  (linha,01,DMC.SDS_orcamento_ItensCODIGO_PRODUTO.AsString,  []);
           impf  (linha,17,DMC.SDS_orcamento_ItensDESCRICAO_PRODUTO.AsString,[]);
           impf  (linha,65,DMC.SDS_orcamento_ItensNOME_MARCA.AsString,  []);
           impval(linha,75,'#,##0.000',DMC.SDS_orcamento_ItensQUANTIDADE.AsFloat,[]);
           impf  (linha,90,DMC.SDS_orcamento_ItensUNIDADE.AsString,  []);
           impval(linha,100,'#,##0.00', DMC.SDS_orcamento_ItensPRECO_UNITARIO.AsFloat,[]);
          // subtotal := itensCALC_TOTAL.Value;
          // total    := total + subtotal;
           impval(linha,120,'##,##0.00', DMC.SDS_orcamento_ItensDESCONTO.AsFloat, []);
           impval(linha,140,'##,##0.00', DMC.SDS_orcamento_ItensPRECO_TOTAL.AsFloat, []);
           inc(linha);
           end;
        DMC.SDS_orcamento_Itens.next;
        end;

        // SOMA QUANTIDADE
        DMC.SDS_orcamento_Itens.First;
        D:= D + DMC.SDS_orcamento_ItensQUANTIDADE.AsFloat;
        DMC.SDS_orcamento_Itens.Next;
        // RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        While not DMC.SDS_orcamento_Itens.Eof do
        begin

        D:= D + DMC.SDS_orcamento_ItensQUANTIDADE.AsFloat;
        DMC.SDS_orcamento_Itens.Next;
        //RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        end;

        // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
        with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,90,'Total Geral do Orc./Cond. R$');
        impval(linha,135,'###,###,##0.00',dmc.CDS_OrcamentosVALOR_ITENS.AsFloat,[]);

        // Desconto Global
        inc (linha);
        imp   (linha,35,'Qtde de Itens do Orc./Cond. R$');
        impval(linha,69,'###,###,##0.000',D,[]);
        imp (linha,90,'(-) Desconto Global');
        impval(linha,135,'-##,###,##0.00',dmc.CDS_OrcamentosVALOR_DESCONTO.AsFloat,[]);
        inc (linha);
        imp (linha,90,'Acréscimos/Financeiro:');
        impval(linha,135,'##,###,##0.00',dmc.CDS_OrcamentosENC_FINANCEIRO.AsFloat,[]);
        // Total Liquido...

        inc (linha);
        imp(linha,90,'Valor Liq. do Orc./Cond. R$');
        impval(linha,135,'###,###,##0.00',dmc.CDS_OrcamentosVALOR_Total.AsFloat,[]);
        inc   (linha);
        // Formas de pagamento
        imp   (linha,01,traco);
        inc   (linha);
        imp(linha,01,'Formas de pagamento     Parcela          Vencimento         Valor Parcela');
        inc   (linha);
        imp   (linha,01,traco);
        inc   (linha);

        DMC.SDS_parcelas_ORC.First;
        while not DMC.SDS_parcelas_ORC.Eof do
            begin
               if DMC.sds_parcelas_orcVALOR_PARC.AsFloat > 0 then
                  begin
                     imp (linha,01, DMC.sds_parcelas_orcDESC_COND_PGTO.Text );
                     imp (linha,28, DMC.sds_parcelas_orcQUANT_PARCELAS.Text );
                     imp (linha,42, DMC.sds_parcelas_orcDATA_VENC.Text );
                     impval(linha,60,'###,###,##0.00',DMC.SDS_parcelas_ORCVALOR_parc.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.SDS_parcelas_ORC.Next;
            end;
        //  imp (linha,01, 'Troco' );
        // impval(linha,130,'###,###,##0.00',dmc.CDS_OrcamentosVALOR_TROCO.AsFloat,[]);
        // inc   (linha);
        // Final...

        imp (linha,01,'-------------------------------------------------------------------------');
        inc (linha);
        impc(linha,01,'Obs : ' + dmc.CDS_OrcamentosOBSERVACOES.Text,[comp12]);
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

//IMPLEMENTAÇÃO DA PROCEDURE MOSTRAERROS
procedure tFormvendas.MostraErros(Sender: Tobject;
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


procedure tFormvendas.InsereItem;
  var
  N:Integer;
  begin
  Qpromo.Close;
  Qpromo.Params.ParamByName('data').AsDate := Date;
  Qpromo.Params.ParamByName('cod_pro').AsInteger := DM.Sds_produtos_cCODIGO.AsInteger;
  Qpromo.Open;


 Sds_pedidos_itens.edit;
 if Formvendas.RbPreco1.Checked then
 begin
 if Qpromo.RecordCount > 0 then
  DBGRID.COLUMNS.Grid.Fields[3].Value      := QpromoPRECO_PROMOCAO.Text
 else
 DBGRID.COLUMNS.Grid.Fields[3].Value      := StrToFloatDef(DM.SDS_PRODUTOS_CPRECO_VENDA.Text,0.00);
 DBGRID.COLUMNS.Grid.Fields[1].AsString   := DM.SDS_PRODUTOS_CDESCRICAO.Value;
 if DBGRID.COLUMNS.Grid.Fields[2].AsString <= '1,000' then
 begin
 DBGRID.COLUMNS.Grid.Fields[2].AsString   := '1,000'
 end;
  Sds_pedidos_itensDESCONTO.Text          := '0,00';
  Sds_pedidos_itensCODIGO.AsInteger       := NItem;
 Sds_pedidos_itensCODIGO_PROD.Text        := DM.SDS_PRODUTOS_CCODIGO.Text;
 Sds_pedidos_itensCODIGO_ID.Text          := N_venda.Text;
 Sds_pedidos_itensUNIDADE.Text            := DM.SDS_PRODUTOS_CDESC_UNIDADE.TEXT;
 Sds_pedidos_itensVENDEDOR.Text           := dm.SDS_UsuariosCODIGO.Text;
 Sds_pedidos_itensSIT_TRIBUTARIA.Text     := DM.SDS_PRODUTOS_CSIT_TRIBUTARIA.text;
 Sds_pedidos_itensFRACAO.AsFloat          := StrToFloatDef(DM.SDS_PRODUTOS_CFRACAO.Text,0);
 Sds_pedidos_itensCOD_NCM.TEXT            := DM.Sds_produtos_cNCM_SH.Text;
 Sds_pedidos_itensPROD_SERV.Text          := DM.Sds_produtos_cPROD_SERV.Text;
 Sds_pedidos_itensITEN.AsInteger          := NItem;
 if DBGRID.COLUMNS.Grid.Fields[2].AsString > '' then
 DBGRID.COLUMNS.Grid.Fields[5].AsString   := ((DBGRID.COLUMNS.Grid.Fields[2].Value * DBGRID.COLUMNS.Grid.Fields[3].Value) - DBGRID.COLUMNS.Grid.Fields[4].Value) ;
 end else

  if Formvendas.RbPreco2.Checked then
 begin
 if Qpromo.RecordCount > 0 then
  DBGRID.COLUMNS.Grid.Fields[3].Value      := QpromoPRECO_PROMOCAO.Text
 else
 DBGRID.COLUMNS.Grid.Fields[3].value      := StrToFloatDef(DM.SDS_PRODUTOS_CPRECO_VENDA2.text,0.00);
 DBGRID.COLUMNS.Grid.Fields[1].AsString   := DM.SDS_PRODUTOS_CDESCRICAO.Value;
 if DBGRID.COLUMNS.Grid.Fields[2].AsString <= '1,000' then
 begin
 DBGRID.COLUMNS.Grid.Fields[2].AsString   := '1,000'

 end;
 Sds_pedidos_itensDESCONTO.Text := '0,00';
 Sds_pedidos_itensCODIGO.AsInteger:= NItem;
 Sds_pedidos_itensCODIGO_PROD.Text        := DM.SDS_PRODUTOS_cCODIGO.Text;
 Sds_pedidos_itensCODIGO_ID.Text          := N_venda.Text;
 Sds_pedidos_itensUNIDADE.Text            := DM.SDS_PRODUTOS_cDESC_UNIDADE.TEXT;
 Sds_pedidos_itensVENDEDOR.Text           := dm.SDS_UsuariosCODIGO.Text;;
 Sds_pedidos_itensSIT_TRIBUTARIA.Text     := DM.SDS_PRODUTOS_CSIT_TRIBUTARIA.text;
 Sds_pedidos_itensFRACAO.AsFloat             := StrToFloatDef(DM.SDS_PRODUTOS_cFRACAO.Text,0);
 Sds_pedidos_itensCOD_NCM.TEXT            := DM.Sds_produtos_cNCM_SH.Text;
 Sds_pedidos_itensPROD_SERV.Text          := DM.Sds_produtos_cPROD_SERV.Text;
 Sds_pedidos_itensITEN.AsInteger          := NItem;
 if DBGRID.COLUMNS.Grid.Fields[2].AsString > '' then
 DBGRID.COLUMNS.Grid.Fields[5].AsString   := ((DBGRID.COLUMNS.Grid.Fields[2].Value * DBGRID.COLUMNS.Grid.Fields[3].Value) - DBGRID.COLUMNS.Grid.Fields[4].Value) ;
 end;
 end;

procedure tFormvendas.InsereItemOr;
  var
  N:Integer;
  begin
 Sds_Orcamentos_itens.edit;
// DBGRID1.COLUMNS.Grid.Fields[1].AsString   := DM.SDS_PRODUTOSCODIGO_BARRAS.Value;
 DBGRID1.COLUMNS.Grid.Fields[1].AsString     := DM.SDS_PRODUTOS_CDESCRICAO.Text;
 if DBGRID1.COLUMNS.Grid.Fields[2].AsString <= '1,000' then
 begin
 DBGRID1.COLUMNS.Grid.Fields[2].AsString     := '1,000';
 end;
// DBGRID1.COLUMNS.Grid.Fields[3].AsString   := '0,00';
 if Formvendas.RbPreco3.Checked then
 begin
 //DBGRID1.COLUMNS.Grid.Fields[3].Value        := StrToFloatDef(DM.SDS_PRODUTOS_cPRECO_VENDA.Text,0.00);
  SDS_Orcamentos_itensPRECO_UNITARIO.Value   := StrToFloatDef(DM.SDS_PRODUTOS_cPRECO_VENDA.Text,0.00);
 end else
 if Formvendas.RbPreco4.Checked then
 begin
 //DBGRID1.COLUMNS.Grid.Fields[3].Value        := StrToFloatDef(DM.SDS_PRODUTOS_cPRECO_VENDA2.Text,0.00);
 SDS_Orcamentos_itensPRECO_UNITARIO.Value   := StrToFloatDef(DM.SDS_PRODUTOS_cPRECO_VENDA2.Text,0.00);
 end;
 Sds_Orcamentos_itensCODIGO_PROD.Text        := DM.SDS_PRODUTOS_cCODIGO.Text;
 Sds_Orcamentos_itensCODIGO_ID.Text          := n_ORCA.Text;
 Sds_Orcamentos_itensUNIDADE.Text            := DM.SDS_PRODUTOS_CDESC_UNIDADE.TEXT;
 Sds_Orcamentos_itensVENDEDOR.Text           := DM.SDS_UsuariosCODIGO.Text;
 Sds_Orcamentos_itensSIT_TRIBUTARIA.Text     := DM.SDS_PRODUTOS_CSIT_TRIBUTARIA.text;
 Sds_Orcamentos_itensFRACAO.AsFloat          := StrToFloatDef(DM.SDS_PRODUTOS_CFRACAO.Text,0);
 Sds_Orcamentos_itensCOD_NCM.TEXT            := DM.Sds_produtos_cNCM_SH.Text;
 Sds_Orcamentos_itensITEN.AsInteger          := NItem;
 Sds_Orcamentos_itensPROD_SERV.Text          := DM.Sds_produtos_cPROD_SERV.Text;
 if DBGRID1.COLUMNS.Grid.Fields[2].AsString > '' then
 DBGRID1.COLUMNS.Grid.Fields[5].AsString := ((DBGRID1.COLUMNS.Grid.Fields[2].Value * DBGRID1.COLUMNS.Grid.Fields[3].Value) - DBGRID1.COLUMNS.Grid.Fields[4].Value) ;
 end;

procedure TformVendas.FormShow(Sender: TObject);
var
  dtmovi : string;
begin
  IF DM.SDS_CONFIGURACOESTP_DESC.Text ='' then
  BEGIN
    MessageDlg('Configure o Tipo de Desconto na Tela de Configuracões Para o Bom Funcionamento do sistema...', mtInformation,[mbOk], 0);
    Inserir.Enabled := False;
  end;

  dtmovi:=datetostr(DATE);

//SetWindowPos(formVendas.Handle, HWND_TOP, 0, 0, 0, 0, SWP_SHOWWINDOW or SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOMOVE);

DM.SDS_CondPagamento.Active :=False;
DM.SDS_CondPagamento.Active :=true;

DMC.Sds_DocsFiscais.Active:=False;
DMC.Sds_DocsFiscais.Active:=true;

// vendas
 if (Tag = 0)  or (Tag = 1) then
 begin
 Edit60.Visible := false;
 E_desconto.Visible := false;
 Edit62.Visible := false;



 GroupBox1.Enabled := False;
 GroupBox2.Enabled := False;
// GroupBox3.Enabled := False;


 // orcamento
 Edit55.Visible := false;
 Edit56.Visible := false;
 Edit57.Visible := false;

 GroupBox8.Enabled := False;
 GroupBox9.Enabled := False;
 GroupBox10.Enabled := False;
 end;
 
if (Tag = 0)  or (Tag = 1) or (Tag = 5)   then
begin
if DM.SDS_CONFIGURACOESREGISTRADORA.Text = 'S' then
begin
CheckBox5.Checked := True;
end else
begin
CheckBox4.Checked := True;
end;
end;

if DM.SDS_UsuariosTELA_ORCAMENTO_PADRAO.Text = 'S' then
  PC.ActivePageIndex := 0
else
  PC.ActivePageIndex := 1;

//InserirClick(Sender);
//DBComboCliente.Text := Sds_pedidoscodigo_cliente.Text;
//Inserir.SetFocus;
 { while not Sds_orcamentos_itens.EOF do
    begin
     Sds_orcamentos_itens.Delete;
      Sds_orcamentos_itens.ClearFields;
    end;


 while not Sds_orcamentos.EOF do
    begin
      Sds_orcamentos.Delete;
      Sds_orcamentos.ClearFields;
      end;

    while not formvendas.Sds_pedidos_itens.EOF do
    begin
     Sds_pedidos_itens.Delete;
     Sds_pedidos_itens.ClearFields;
    end;

     while not formvendas.Sds_pedidos.EOF do
    begin
      Sds_pedidos.Delete;
      Sds_pedidos.ClearFields;
      end;
             }
end;

procedure TformVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TrimAppMemorySize;
action:= caFree;
formVendas:=nil;
end;

procedure TformVendas.InserirClick(Sender: TObject);
var
N:INTEGER;
begin
 NItem:=0;

 IF DM.SDS_CONFIGURACOESPROX_LINHA.Text = '' then
    BEGIN
     DM.SDS_CONFIGURACOES.Edit;
     DM.SDS_CONFIGURACOESPROX_LINHA.Text := 'N';
     DM.SDS_CONFIGURACOES.Post;
     DM.SDS_CONFIGURACOES.ApplyUpdates(0);
    end;

 IF DM.SDS_CONFIGURACOESUNIT_TOTAL.Text = '' then
    BEGIN
     DM.SDS_CONFIGURACOES.Edit;
     DM.SDS_CONFIGURACOESUNIT_TOTAL.Text := 'U';
     DM.SDS_CONFIGURACOES.Post;
     DM.SDS_CONFIGURACOES.ApplyUpdates(0);
    end;

 IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  RbPreco1.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  RbPreco2.Checked := True;
  end;

  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='S' then
  begin
  DBGRID.Columns.Items[3].ReadOnly := False;
  end else
  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='N' then
  begin
  DBGRID.Columns.Items[3].ReadOnly := True;
  end;

  IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
  BEGIN
  DBGRID.Columns.Items[4].ReadOnly := True;
  END ELSE
  IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
  BEGIN
  DBGRID.Columns.Items[4].ReadOnly := False;
  END;

  IF DM.SDS_CONFIGURACOESUNIT_TOTAL.Text ='U' then
  BEGIN
  DBGRID.Columns.Items[5].ReadOnly := True;
  END ELSE
  IF DM.SDS_CONFIGURACOESUNIT_TOTAL.Text ='T' then
  BEGIN
  DBGRID.Columns.Items[5].ReadOnly := False;
  END;


 Edit60.Visible := true;
 E_desconto.Visible := true;
 Edit62.Visible := true;

if FormPrincipal.Label3.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End else
if FormPrincipal.Label3.Caption ='S'then
begin
Sds_pedidos.Insert;
//Sds_pedidos_itens.Inser
Sds_pedidos.Edit;
if Tag = 0 then
begin
if DM.SDS_CONFIGURACOESREGISTRADORA.Text = 'S' then
begin
N_venda.Text :='0';
CheckBox5.Checked := True;
end else
begin
CheckBox4.Checked := True;
end;
end;

if CheckBox4.Checked = True then
begin
SPC_Codigo.ExecProc;
N:= (SPC_Codigo.ParamByName('ATUAL').AsInteger);
N_venda.Text:=IntTostr(N);
Sds_pedidosCODIGO.Text := IntTostr(N);
end ;

dt_venda.Date := Date;
dt_entrega.Date := Date;


//dm.SDS_Clientes.Filtered := false;


cancelar.Enabled:=True;
//Alterar.Visible:=false;
Inserir.Enabled:= False;
pesquisar.Enabled := False;
confirmar.Enabled := True;
GroupBox1.Enabled := True;
GroupBox2.Enabled := True;
groupbox3.Enabled := True;
    Total:=0;
    soma:=0;
    Comissao:=0;
    EncFinanceiro:=0;
Sds_pedidos.Edit;
Sds_pedidosOBSERVACOES.Text := DM.SDS_CONFIGURACOESMSG_CUPOMFISCAL.Text;
Sds_pedidosUSUARIO.Text := FormPrincipal.UserLogado;
If DM.SDS_Usuarios.locate('USUARIO',Usuario.Text,[])=True then
begin
Sds_pedidosCOD_VENDEDOR.Text := DM.SDS_UsuariosCODIGO.Text;
end;

Sds_pedidoskm.Text := '0';

DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
DBComboClienteChange(Sender);
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  DM.SDS_Clientes.locate('CODIGO', DBComboCliente.Text,[]);
  Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
  Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
  Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
  Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
  Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString+'-'+DM.SDS_ClientesUF.AsString;
  Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
  Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  Sds_pedidosuf.text  := DM.SDS_ClientesUF.AsString;
  Sds_pedidosCEP.Text := DM.SDS_Clientescep.AsString;
  Sds_pedidosNUMERO.Text := DM.SDS_Clientesnumero.AsString;

  Sds_pedidos.Post;
//DBComboCliente.SetFocus;

   IF DM.SDS_CONFIGURACOESCLIENTE_VENDEDOR.Text ='C' then
  begin
  DBComboCliente.SetFocus;
  end else
  IF DM.SDS_CONFIGURACOESCLIENTE_VENDEDOR.Text ='V' then
  begin
  CodUsuario.SetFocus;
  CodUsuario.SelectAll;
  end else
  IF DM.SDS_CONFIGURACOESCLIENTE_VENDEDOR.Text ='O' then
  begin
          DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
          Sds_pedidos_itens.Edit;
          ComboEdit1.Visible := True;
          ComboEdit1.SetFocus;
  end;

      IF sds_pedidos_itens.Eof then
      begin
      if DBGRID.COLUMNS.Grid.Fields[7].Text = '' then
      begin
      NValor:=1;
      NItem:=NItem+NValor;
      Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO.AsInteger:=(NItem);
      Sds_pedidos_itensITEN.AsInteger :=(NItem);
      Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      Sds_pedidos_itensDESCONTO.Text := '0,00';
      Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      Sds_pedidos_itensFRACAO.Text := '1';
      end;
      end;
end;

iCOOVenda := StrToInt(N_venda.text);

end;

procedure TformVendas.cancelarClick(Sender: TObject);
begin
if Application.MESSAGEBOX('Confirma o Cacelamento da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
    Sds_pedidos_itens.Cancel;
    Sds_pedidos_itens.CancelUpdates;
    Sds_pedidos.Cancel;
    Sds_pedidos.CancelUpdates;
    
    cancelar.Enabled:=false;
    Inserir.Enabled:= true;
    pesquisar.Enabled := true;
    confirmar.Enabled := false;
    GroupBox1.Enabled := false;
    GroupBox2.Enabled := false;
  //  groupbox3.Enabled := false;
    FormVendas.Edit60.Visible := false;
    FormVendas.E_desconto.Visible := false;
    FormVendas.Edit62.Visible := false;

 sds_pedidos_itens.First;
 while not sds_pedidos_itens.EOF do
 begin
 sds_pedidos_itens.Delete;
 end;

 sds_pedidos.First;
 while not sds_pedidos.EOF do
 begin
 sds_pedidos.Delete;
 end;

 if FormPrincipal.bloqueia = 'S' then
 BEGIN
    FormLogoff:=TFormLogoff.Create(self);
      FormLogoff.ShowModal;
 end;
    end else
      begin

Sds_pedidos_itens.Edit;
DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
ComboEdit1.Visible := True;
ComboEdit1.SetFocus
end;
end;

procedure TformVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

      if (Key=VK_F12) then
      begin
      //FormConsProdutos:=NIL;
      FormConsProdutos:=TFormConsProdutos.Create(self);
      FormConsProdutos.Showmodal;
      end;

      if (Key=VK_F3) then
      begin
      IF PC.ActivePageIndex = 1 then
      BEGIN
      IF  Inserir.Enabled = TRUE THEN
      BEGIN
      InserirClick(Sender);
      end;
      end else
      IF PC.ActivePageIndex = 0 then
      BEGIN
        IF  InserirOR.Enabled = TRUE THEN
      BEGIN
      InserirORClick(Sender);
      end;
      end;
      end;

      
  { if (Key=VK_F4) then
      begin
      IF  Alterar.Enabled = TRUE THEN
      BEGIN
      AlterarClick(Sender);
      end;  }


      if (Key=VK_F5) then
      begin
      IF PC.ActivePageIndex = 1 then
      BEGIN
      IF  cancelar.Enabled = TRUE THEN
      BEGIN
      cancelarClick(Sender);
      end;
      end ELSE
      IF PC.ActivePageIndex = 0 then
      BEGIN
      IF  cancelarOR.Enabled = TRUE THEN
      BEGIN
      cancelarORClick(Sender);
      end;
      end;
      end;

 {  if (Key=VK_F6) then
      begin
      IF  excluir.Enabled = TRUE THEN
      BEGIN
      excluirClick(Sender);
      end;
end; }
      //------ Procura de Abastecimento em aberto ------
  if key = vk_F6 then
  begin
  // msgstr := statusbar1.panels[0].Text;
  // statusbar1.panels[0].Text := 'Abrindo tela de consulta de abastecimentos...';
   application.createform(tVendaBicoEnc_TempListFrm, VendaBicoEnc_TempListFrm);
  // statusbar1.panels[0].Text := '';
   VendaBicoEnc_TempListFrm.showmodal;
  // VendaClienteListFrm.Free;
   //statusbar1.panels[0].Text := msgstr;
  end;
      if (Key=VK_F7) then
      begin
       IF PC.ActivePageIndex = 1 then
      BEGIN
      IF  pesquisar.Enabled = TRUE THEN
      BEGIN
      pesquisarClick(Sender);
      end;
      end ELSE
      IF PC.ActivePageIndex = 0 then
      BEGIN
      IF  PesquisarOR.Enabled = TRUE THEN
      BEGIN
      pesquisarORClick(Sender);
      end;
      end;
      end;

      if (Key=VK_F8) then
      begin
       IF PC.ActivePageIndex = 0 then
      BEGIN
      IF  suiButton1.Enabled = TRUE THEN
      BEGIN
      suiButton1Click(Sender);
      end;
      end;
      end;

   if (Key=VK_F10) then
      begin
       IF PC.ActivePageIndex = 1 then
      BEGIN
      IF  confirmar.Enabled = TRUE THEN
      BEGIN
      confirmarClick(Sender);
      end;
      end ELSE
      IF PC.ActivePageIndex = 0 then
      BEGIN
      IF  confirmarOR.Enabled = TRUE THEN
      BEGIN
      confirmarORClick(Sender);
      end;
      END;
      end;


      if (Key=VK_F9) then
      begin
      IF PC.ActivePageIndex = 1 then
      BEGIN
        IF GroupBox2.Enabled = True then
        BEGIN
         DM.SDS_Clientes.Filtered := False;
         DBComboCliente.SetFocus;
         end;
      end else
      IF PC.ActivePageIndex = 0 then
      BEGIN
      IF GroupBox8.Enabled = True then
        BEGIN
        DM.SDS_Clientes.Filtered := False;
        OrComboEdit1.SetFocus;
        end;

      end;
      end;

      if (Key=VK_F11) then
      begin
        IF PC.ActivePageIndex = 1 then
      BEGIN
        IF GroupBox2.Enabled = True then
        BEGIN
       CodUsuario.SetFocus;
       end;
      end ELSE
      IF PC.ActivePageIndex = 0 then
      BEGIN
       IF GroupBox8.Enabled = True then
        BEGIN
       OrComboEdit2.SetFocus;
      end;
      end;
      end;

    { if (ssalt in shift) and (Key = 90) then
      begin
         OrComboEdit1.SetFocus;
         //OrComboEdit1ButtonClick(Sender);
      end;
      if (ssalt in shift) and (Key = 66) then
      begin
         OrComboEdit1.SetFocus;
         //OrComboEdit1ButtonClick(Sender);
      end;

      if (ssalt in shift) and (Key = 88) then
        BEGIN
        Sds_pedidos.Refresh;
      end; }


end;



procedure TformVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

if not (ActiveControl is TDBLookupComboBox) and  // você deve usar AND
     not (ActiveControl is TCustomGrid) and NOT (ActiveControl is TRxDBComboEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TformVendas.confirmarClick(Sender: TObject);
var
Percent, EncFin, PerEnc, EF, VF: Real;
Endercomp, Cli: String;
Cliente, Endereco, CPF, RG, Bairro, Cidade: String;
I, E:Integer;
Est : String ;
dtaux : TDateTime;
begin
If edit62.value = 0 then
begin
ShowMessage('Valor da Venda não pode Ser Zero!!!');
DBGrid.SetFocus;
end else

If CodUsuario.Text = '' then
begin
ShowMessage('Selecione o Vendedor, para Concluir a Venda!!!');
CodUsuario.SetFocus;
end else
begin
if  Sds_pedidos_itens.RecordCount = 0 then
  Begin
    ShowMessage('Não Há Itens na Lista de Compras! Você deve Inserir No Mínimo 01 Item Para Poder Concluir o Pedido!');
  end else
            Sds_pedidos_itens.last;
            with Sds_pedidos_itens do
            while Sds_pedidos_itensDESCRICAO_PRODUTO.AsString ='' do
            Sds_pedidos_itens.Delete;
            Sds_pedidos_itens.Next;
            Sds_pedidos_itens.First;


iCodigoCli := strtoint(DBComboCliente.text);

if CheckBox4.Checked = True then
begin
if  N_venda.Text = '0' then
begin
SPC_Codigo.ExecProc;
N:= (SPC_Codigo.ParamByName('ATUAL').AsInteger);
N_venda.Text:=IntTostr(N);
Sds_Pedidos_itens.First;
Contador := formvendas.Sds_Pedidos_itens.RecordCount;
For E:=1 to Contador do
begin
formvendas.sds_pedidos_itens.Edit;
formvendas.sds_pedidos_itensCODIGO_ID.Text := IntTostr(N);
Sds_Pedidos_itens.next;
end;
Sds_pedidosCODIGO.Text := IntTostr(N);
end;
end ;

{VERIFICA SE TEM ESTOQUE}
if DM.SDS_CONFIGURACOESUSA_FRACAO.text = 'N' then
begin
if DM.SDS_CONFIGURACOESESTOQUE_NEGATIVO.text = 'N' then
begin
Sds_Pedidos_itens.First;
Contador := formvendas.Sds_Pedidos_itens.RecordCount;
For E:=1 to Contador do
begin


      with DM.QConsulta do
      begin
         close;
         SQL.Clear;
         SQL.ADD('SELECT sum(quantidade) as estoque FROM pedidos_itens where codigo_id =:codven and codigo_prod =:codpro');
         Parambyname('codven').AsInteger:= strtoint(formvendas.N_venda.Text);
         Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
         open;
     end;
      if dm.qconsulta.FieldByName('estoque').Asfloat > 0 then
      estoque_ant := dm.qconsulta.FieldByName('estoque').Asfloat
      else
      estoque_ant:= 0;

      with QBuscaItens do
      begin
         close;
         Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
         open;
         Last;
       //  IF (sds_pedidos_itensQUANTIDADE.AsFloat - QBuscaItensESTOQUE.AsFloat) > 0.001  then
        estoque := QBuscaItensESTOQUE.AsFloat;
        quantidade := sds_pedidos_itensQUANTIDADE.AsFloat;
        saldo := (estoque - quantidade + estoque_ant);
        If saldo <= -1 then
         BEGIN
         MessageDlg('Siace Sistemas' + #13 +
         'O item ' + sds_pedidos_itensDESCRICAO_PRODUTO.Text + ' Não Possui Saldo Suficiente' + #13 + 'Verifique!', mtInformation,[mbOk], 0);
          Exit;
          abort;
         end;
      end;
 Sds_Pedidos_itens.Next;
END;
end;
end else

if DM.SDS_CONFIGURACOESUSA_FRACAO.text = 'S' then
begin
if DM.SDS_CONFIGURACOESESTOQUE_NEGATIVO.text = 'N' then
begin
Sds_Pedidos_itens.First;
Contador := formvendas.Sds_Pedidos_itens.RecordCount;
For E:=1 to Contador do
begin
         
      with DM.QConsulta do
      begin
         close;
         DM.QConsulta.SQL.Clear;
         DM.QConsulta.SQL.ADD('SELECT sum(quantidade) as estoque FROM pedidos_itens where codigo_id =:codven and codigo_prod =:codpro');
         Parambyname('codven').AsInteger:= strtoint(formvendas.N_venda.Text);
         Parambyname('codpro').AsInteger:= strtoint(formvendas.sds_pedidos_itensCODIGO_PROD.Text);
         open;
     end;
      if dm.qconsulta.FieldByName('estoque').Asfloat > 0 then
      estoque_ant := dm.qconsulta.FieldByName('estoque').Asfloat
      else
      estoque_ant:= 0;

      
      with QBuscaItens do
      begin
         close;
         Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
         open;
         Last;
       //  IF (sds_pedidos_itensQUANTIDADE.AsFloat - QBuscaItensESTOQUE_fracao.AsFloat) > 0.001  then
       estoque := QBuscaItensESTOQUE_fracao.AsFloat;
       quantidade := sds_pedidos_itensQUANTIDADE.AsFloat;
       saldo := (estoque - quantidade +estoque_ant);
       If saldo <= -1 then
        BEGIN
         MessageDlg('Siace Sistemas' + #13 +
         'O item ' + sds_pedidos_itensDESCRICAO_PRODUTO.Text + ' Não Possui Saldo Suficiente' + #13 + 'Verifique!', mtInformation,[mbOk], 0);
          Exit;
          abort;
         end;
      end;
Sds_Pedidos_itens.Next;
END;
end;
end;


Sds_Pedidos_itens.First;
Contador := formvendas.Sds_Pedidos_itens.RecordCount;
For E:=1 to Contador do
begin

      with QBuscaItens do
      begin
         close;
         Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
         open;
         Last;
      end;
sds_pedidos_itens.Edit;
sds_pedidos_itensBASE_PIS.AsFloat               := 0;
sds_pedidos_itensBASE_COFINS.AsFloat            := 0;
sds_pedidos_itensPERC_PIS.AsFloat               := 0;
sds_pedidos_itensPERC_COFINS.AsFloat            := 0;
sds_pedidos_itensVL_PIS.AsFloat                 := 0;
Sds_Pedidos_itensVL_COFINS.AsFloat              := 0;
sds_pedidos_itensBASE_ICMS.AsFloat              := 0;
sds_pedidos_itensPERC_ICM.AsFloat               := 0;
sds_pedidos_itensVL_ICM.AsFloat                 := 0;
sds_pedidos_itensBASE_ISS.AsFloat               := 0;
sds_pedidos_itensPERC_ISS.AsFloat               := 0;
sds_pedidos_itensVL_ISS.AsFloat                 := 0;
sds_pedidos_itensBASE_IPI.AsFloat               := 0;
sds_pedidos_itensPERC_IPI.AsFloat               := 0;
sds_pedidos_itensVL_IPI.AsFloat                 := 0 ;
sds_pedidos_itensBASE_ICMS_SUBST.AsFloat        := 0;
sds_pedidos_itensPERC_ICMS_SUBST.AsFloat        := 0;
sds_pedidos_itensVL_ICMS_SUBST.AsFloat          := 0;
sds_pedidos_itens.Post;

{CALCULO DO PIS E COFINS}
sds_pedidos_itens.Edit;
IF DM.SDS_EmpresaREGIME.Text = 'R' then
BEGIN
if QBuscaItensFLAG_PIS_COFINS.Text = 'T' then
begin
sds_pedidos_itensBASE_PIS.AsFloat               := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
sds_pedidos_itensBASE_COFINS.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
sds_pedidos_itensPERC_PIS.AsFloat               := QBuscaItensPERC_ALIQUOTA_PIS.AsFloat;
sds_pedidos_itensPERC_COFINS.AsFloat            := QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat;
sds_pedidos_itensVL_PIS.AsFloat                 := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ALIQUOTA_PIS.AsFloat)/ 100;
Sds_Pedidos_itensVL_COFINS.AsFloat              := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat)/ 100;
end;
end else
IF DM.SDS_EmpresaREGIME.Text = 'P' then
BEGIN
if QBuscaItensFLAG_PIS_COFINS.Text = 'T' then
begin
sds_pedidos_itensBASE_PIS.AsFloat               := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
sds_pedidos_itensBASE_COFINS.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
sds_pedidos_itensPERC_PIS.AsFloat               := QBuscaItensPERC_ALIQUOTA_PIS.AsFloat;
sds_pedidos_itensPERC_COFINS.AsFloat            := QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat;
sds_pedidos_itensVL_PIS.AsFloat                 := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ALIQUOTA_PIS.AsFloat)/ 100;
Sds_Pedidos_itensVL_COFINS.AsFloat              := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat)/ 100;
end;
end;

{CALCULO ICMS}
if QBuscaItensFLAG_ICMS.Text = 'T' then
begin
if QBuscaItensPERC_ICMS_ESTADUAL.Value > 0 then
begin
sds_pedidos_itensBASE_ICMS.AsFloat              := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
end;
sds_pedidos_itensPERC_ICM.AsFloat               := QBuscaItensPERC_ICMS_ESTADUAL.AsFloat;
sds_pedidos_itensVL_ICM.AsFloat                 := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ICMS_ESTADUAL.AsFloat)/ 100;
end;

{CALCULO ISS}
if QBuscaItensFLAG_SERVICO.Text = 'T' then
begin
if QBuscaItensPERC_ALIQUOTA_ISS.Value > 0 then
begin
sds_pedidos_itensBASE_ISS.AsFloat               := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
end;
sds_pedidos_itensPERC_ISS.AsFloat               := QBuscaItensPERC_ALIQUOTA_ISS.AsFloat;
sds_pedidos_itensVL_ISS.AsFloat                 := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ALIQUOTA_ISS.AsFloat)/ 100;
end;
{CALCULO DO IPI}
if QBuscaItensFLAG_FABRICACAO_PROPRIA.Text = 'T' then
begin
if QBuscaItensPERC_ALIQUOTA_IPI.Value > 0 then
begin
sds_pedidos_itensBASE_IPI.AsFloat               := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
end;
sds_pedidos_itensPERC_IPI.AsFloat               := QBuscaItensPERC_ALIQUOTA_IPI.AsFloat;
sds_pedidos_itensVL_IPI.AsFloat                 := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ALIQUOTA_IPI.AsFloat)/ 100;
end;

{CALCULO DO ICMS SUBSTITUIÇÃO}
//IF Sds_pedidosTIPO.Text = 'J' THEN
if CheckBox3.Checked = True then
BEGIN
if QBuscaItensFLAG_SUBSTITUICAO_TRIB.Text = 'T' then
begin
sds_pedidos_itensBASE_ICMS_SUBST.AsFloat               := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_SUBST_TRIBUTARIA.AsFloat)/ 100;
sds_pedidos_itensPERC_ICMS_SUBST.AsFloat               := QBuscaItensPERC_SUBST_TRIBUTARIA.AsFloat;
sds_pedidos_itensVL_ICMS_SUBST.AsFloat                 := (sds_pedidos_itensBASE_ICMS_SUBST.AsFloat * QBuscaItensPERC_LUCRO_ST.AsFloat)/ 100;
end;
end;  
Sds_Pedidos_itens.Next;
end;


      //  try
               Sds_pedidos.Edit;
               Sds_pedidosCODIGO_CLIENTE.Text :=DBComboCliente.Text;
               Sds_pedidos.post;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;
                      
                     concluiu := False;

                   //if DM.SDS_CONFIGURACOESREGISTRADORA.Text <> 'S' then

                    // if (Tag = 0) or (tag = 1) then
                     FormParcelamento:=TFormParcelamento.Create(self);
                     FormParcelamento.ShowModal;

                   // pre - venda
                   if CheckBox5.Checked = True then
                   begin
                       end;

                       if concluiu = True then
                       begin
                        if Tag = 1 then
                        begin
                         if DM.IBTransaction.Active then
                          DM.IBTransaction.Commit;
                         DM.IBTransaction.StartTransaction;

                           with DM.IBSQL do
                              begin
                                 close;
                                 sql.Clear;
                                 SQL.add('UPDATE PREVENDA SET PREVENDA.STATUS=''B'' WHERE PREVENDA.CODIGO=:PREV');
                                 Parambyname('PREV').AsString := PREVENDA;
                                 ExecSQL;
                              end;
                              DM.IBTransaction.CommitRetaining;
                        end;

                       formvendas.Sds_pedidos.Active := FALSE;
                       formvendas.Sds_pedidos.Active := True;

                       formvendas.SDS_pedidos_itens.Active := False;
                       Formvendas.SDS_pedidos_itens.Active := True;
                       Inserir.SetFocus;
                       end;

                        if FormPrincipal.bloqueia = 'S' then
                         BEGIN
                            FormLogoff:=TFormLogoff.Create(self);
                            FormLogoff.ShowModal;
                         end;


end;
end;


procedure TformVendas.DBComboClienteButtonClick(Sender: TObject);
VAR
CD: STRING;
begin
      Sds_pedidos.Edit;
     // DM.SDS_Clientes.Filtered := False;
      FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.Edit1.Text := DBComboCliente.Text;
      FormConsClientes.Tag := 1;
      FormConsClientes.ShowModal;
      if not DM.SDS_Clientes.Eof then
      begin
      DBComboCliente.Text := DM.SDS_ClientesCODIGO.text;
      Sds_pedidosCODIGO_CLIENTE.Text := DBComboCliente.Text;
      Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
      Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
      Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
      Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
      Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
      Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
      Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
      Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
      Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
      Sds_pedidosCEP.Text := removechar(DM.SDS_ClientesCEP.Text);
      Sds_pedidosUF.Text  := DM.SDS_ClientesUF.Text;
      Sds_pedidosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
      Sds_pedidosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
      Sds_pedidosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
      Sds_pedidosIE_PRODUTOR.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
      Sds_pedidosPROD_RURAL.Text   := DM.SDS_ClientesPRODUTOR_RURAL.Text;
      end else
      begin
       DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
      end;
      DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
      ComboEdit1.Visible := True;
      ComboEdit1.SetFocus;
end;


procedure TformVendas.E_UsuarioExit(Sender: TObject);
begin

//Sds_pedidos.Post;
//DBGrid.SetFocus;
end;

procedure TformVendas.ww(Sender: TObject; var Key: Char);
Begin

  if (DBGrid.SelectedField.FieldName = ComboEdit1.DataField) then
  begin
   ComboEdit1.Visible := True;
   ComboEdit1.SetFocus;
   SendMessage(ComboEdit1.Handle, WM_Char, word(Key), 0);
   Sds_pedidos_itens.Edit;
  end;


end;


procedure TformVendas.dbgridEnter(Sender: TObject);
var
  N: Integer;
begin
if Sds_pedidos.State in [dsInsert, dsEdit, dsSetKey] then
begin
Sds_pedidos.Post;
end;

{if DBGRID.COLUMNS.Grid.Fields[7].Text = '' then
begin
SPC_COD_ITENS.ExecProc;
N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
Sds_pedidos_itens.Edit;
Sds_pedidos_itensCODIGO.AsString:=IntTostr(N);
Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_produtosCODIGO.Text;
Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
Sds_pedidos_itensQUANTIDADE.Text := '0,00';
Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
Sds_pedidos_itensDESCONTO.Text := '0,00';
Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
Sds_pedidos_itensFRACAO.Text := '1';
 end;  }
formVendas.KeyPreview := False;
end;

procedure TformVendas.dbgridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  N:Integer;
begin
    if (Key = VK_DELETE) then
    begin
     if Application.MESSAGEBOX('Confirma a Exlusão do item selecionado na Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
      Sds_pedidos_itens.DELETE;

      IF sds_pedidos_itens.Eof then
      begin
      if DBGRID.COLUMNS.Grid.Fields[7].Text = '' then
      begin
      NValor:=1;
      NItem:=NItem+NValor;
      Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO.AsInteger:=(NItem);
      Sds_pedidos_itensITEN.AsInteger :=(NItem);
      Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      Sds_pedidos_itensDESCONTO.Text := '0,00';
      Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      Sds_pedidos_itensFRACAO.Text := '1';
      end;
      end;
      
      IF sds_pedidos_itens.RecordCount > 1 then
      begin
      Sds_pedidos_itens.Last;
      with Sds_pedidos_itens do
      begin
      while Sds_pedidos_itensDESCRICAO_PRODUTO.AsString ='' do
      Sds_pedidos_itens.Delete;
      Sds_pedidos_itens.Next;
      Sds_pedidos_itens.First;
      end;
      end;

      IF sds_pedidos_itens.RecordCount > 0 then
      begin
      NValor:=1;
      NItem:=NItem+NValor;
      if DBGRID.COLUMNS.Grid.Fields[1].Text = '' then
      begin
      Sds_pedidos_itens.Edit;
      end else
      if DBGRID.COLUMNS.Grid.Fields[1].Text > '' then
      begin
      Sds_pedidos_itens.Insert;
      end;
      Sds_pedidos_itensCODIGO.AsInteger:=(NItem);
      Sds_pedidos_itensITEN.AsInteger :=(NItem);
      Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      Sds_pedidos_itensDESCONTO.Text := '0,00';
      Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      Sds_pedidos_itensFRACAO.Text := '1';

        IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;
      end;

      IF sds_pedidos_itens.Eof then
      begin
      if DBGRID.COLUMNS.Grid.Fields[7].Text = '' then
      begin
      NValor:=1;
      NItem:=NItem+NValor;
      Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO.AsInteger:=(NItem);
      Sds_pedidos_itensITEN.AsInteger :=(NItem);
      Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      Sds_pedidos_itensDESCONTO.Text := '0,00';
      Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      Sds_pedidos_itensFRACAO.Text := '1';
      end;
      end;

      Sds_pedidos_itens.last;

      DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
      Sds_pedidos_itens.Edit;
      ComboEdit1.Visible := True;
      ComboEdit1.SetFocus;
      end;
      end else


  // enter
     if Key = VK_RETURN then
       begin
        // CALCULA;
 
       IF DM.SDS_CONFIGURACOESPROX_LINHA.Text = 'S' then
        BEGIN

           Case DBGrid.SelectedIndex of
           0: DBgrid.SelectedIndex := 1;
           1: DBgrid.SelectedIndex := 2;
          // 2: DBgrid.SelectedIndex := 3;
          // 3: DBgrid.SelectedIndex := 4;
          // 4: DBgrid.SelectedIndex := 6;
          //5: DBgrid.SelectedIndex := 6;
           ELSE
           // CALCULA;
            dbgrid.SelectedIndex := dbgrid.SelectedIndex + 1;
          //  Sds_pedidos_itens.Last;

            DBGrid.SelectedIndex := 0;  // código da proxima linha
            Sds_pedidos_itens.Edit;

            if Sds_pedidos_itens.RecordCount > 1 then
            begin
            Sds_pedidos_itens.Last;
            end;

           // passar para proxima coluna usando ENTER no dbgrid
            if Sds_pedidos_itens.Eof then
            begin
                 IF DBGRID.COLUMNS.Grid.Fields[0].Text = '' then
                 begin
                     Sds_pedidos_itens.insert;

                     IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

            Sds_pedidos_itens.Edit;
            DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
            end else

             calcula;
             Sds_pedidos_itens.Insert;
             if DBGRID.COLUMNS.Grid.Fields[0].Text = '' then
             begin
             // SPC_COD_ITENS.ExecProc;
             // N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
             NValor:=1;
             NItem:=NItem+NValor;
             Sds_pedidos_itensCODIGO.AsInteger:=(NItem); //IntTostr(N);
             Sds_pedidos_itensITEN.AsInteger :=(NItem);
             //Sds_pedidos_itens.Edit;
             Sds_pedidos_itensCODIGO_PROD.Text := '1';
             Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
             Sds_pedidos_itensQUANTIDADE.Text := '0,00';
             Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
             Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
             Sds_pedidos_itensDESCONTO.Text := '0,00';
             Sds_pedidos_itensFRACAO.Text := '1';
             // DM.SDS_PRODUTOS.Filtered := False;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;
              IF DBGRID.COLUMNS.Grid.Fields[2].value > '0.01' then
              begin
              calcula;
               Sds_pedidos_itens.last;
               Sds_pedidos_itens.Insert;
               DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
              end;
             Sds_pedidos_itens.Edit;
             Sds_pedidos_itens.Last;
             Sds_pedidos_itens.insert;
             DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
             end;
             end;
           End;
      END;

    IF DM.SDS_CONFIGURACOESPROX_LINHA.Text = 'N' then
     BEGIN
       if DM.SDS_CONFIGURACOESUNIT_TOTAL.Text = 'U' then
        begin
          Case DBGrid.SelectedIndex of
           0: DBgrid.SelectedIndex := 1;
           1: DBgrid.SelectedIndex := 2;
           2: DBgrid.SelectedIndex := 3;
           3: DBgrid.SelectedIndex := 4;
           4: DBgrid.SelectedIndex := 6;
          //5: DBgrid.SelectedIndex := 6;
           ELSE


            dbgrid.SelectedIndex := dbgrid.SelectedIndex + 1;
            Sds_pedidos_itens.Last;

            DBGrid.SelectedIndex := 0;  // código da proxima linha
            Sds_pedidos_itens.Edit;
          //  Sds_pedidos_itens.IndexFieldNames := 'ITEN';


            {passar para proxima coluna usando ENTER no dbgrid}
            if Sds_pedidos_itens.Eof then
            begin
            IF DBGRID.COLUMNS.Grid.Fields[0].Text = '' then
            begin
            //Sds_pedidos_itens.last;

                     IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;


            DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
            end else

          //  CALCULA;
             Sds_pedidos_itens.Insert;
             if DBGRID.COLUMNS.Grid.Fields[7].Text = '' then
             begin
             // SPC_COD_ITENS.ExecProc;
             // N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
             NValor:=1;
             NItem:=NItem+NValor;
             Sds_pedidos_itensCODIGO.AsInteger:=(NItem); //IntTostr(N);
             Sds_pedidos_itensITEN.AsInteger :=(NItem);
             //Sds_pedidos_itens.Edit;
             Sds_pedidos_itensCODIGO_PROD.Text := '1';
             Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
             Sds_pedidos_itensQUANTIDADE.Text := '0,00';
             Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
             Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
             Sds_pedidos_itensDESCONTO.Text := '0,00';
             Sds_pedidos_itensFRACAO.Text := '1';
             // DM.SDS_PRODUTOS.Filtered := False;

                     IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

             Sds_pedidos_itens.Edit;
             end;
             end;
            end;
          end else

         if DM.SDS_CONFIGURACOESUNIT_TOTAL.Text = 'T' then
          begin
             Case DBGrid.SelectedIndex of
           0: DBgrid.SelectedIndex := 1;
           1: DBgrid.SelectedIndex := 2;
           2: DBgrid.SelectedIndex := 3;
           3: DBgrid.SelectedIndex := 4;
           4: DBgrid.SelectedIndex := 5;
           5: DBgrid.SelectedIndex := 6;
           ELSE
            dbgrid.SelectedIndex := dbgrid.SelectedIndex + 1;
            Sds_pedidos_itens.Last;

            DBGrid.SelectedIndex := 0;  // código da proxima linha
            Sds_pedidos_itens.Edit;

         //   CALCULA;

            {passar para proxima coluna usando ENTER no dbgrid}
            if Sds_pedidos_itens.Eof then
            begin
            IF DBGRID.COLUMNS.Grid.Fields[0].Text = '' then
            begin
            //Sds_pedidos_itens.last;
            DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
            end else

             Sds_pedidos_itens.Insert;
             if DBGRID.COLUMNS.Grid.Fields[7].Text = '' then
             begin
             // SPC_COD_ITENS.ExecProc;
             // N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
             NValor:=1;
             NItem:=NItem+NValor;
             Sds_pedidos_itensCODIGO.AsInteger:=(NItem); //IntTostr(N);
             Sds_pedidos_itensITEN.AsInteger :=(NItem);
             //Sds_pedidos_itens.Edit;
             Sds_pedidos_itensCODIGO_PROD.Text := '1';
             Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
             Sds_pedidos_itensQUANTIDADE.Text := '0,00';
             Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
             Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
             Sds_pedidos_itensDESCONTO.Text := '0,00';
             Sds_pedidos_itensFRACAO.Text := '1';
             // DM.SDS_PRODUTOS.Filtered := False;

                     IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;
                Sds_pedidos_itens.Edit;
          //   Sds_pedidos_itens.IndexFieldNames := 'ITEN';
             end;
             end;
            end;
            // Sds_pedidos_itens.Edit;
          end;
       end;
   end;

if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

if (Key=VK_F12) then
      begin
      FormConsProdutos1:=NIL;
      FormConsProdutos1:=TFormConsProdutos1.Create(self);
      FormConsProdutos1.Showmodal;
      end;

if (Key=VK_F3) then
      begin
      IF  Inserir.Enabled = TRUE THEN
      BEGIN
      InserirClick(Sender);
      end;
end;

   if (Key=VK_F5) then
      begin
      IF  cancelar.Enabled = TRUE THEN
      BEGIN
      cancelarClick(Sender);
      end;
end;


  if (Key=VK_F7) then
      begin
      IF  pesquisar.Enabled = TRUE THEN
      BEGIN
      pesquisarClick(Sender);
      end;
end;

   if (Key=VK_F10) then
      begin
      IF  confirmar.Enabled = TRUE THEN
      BEGIN
      confirmarClick(Sender);
      end;

      if (Key=VK_F9) then
      begin
         DBComboCliente.SetFocus;
      end;

      if (Key=VK_F11) then
      begin
         CodUsuario.SetFocus;
      end;

     { if (Key=VK_F2) then
      begin
         Sds_pedidos_itens.Edit;
      end; }
end;
end;


procedure TformVendas.dbgridOrderChanged(Sender: TObject);
VAR
AOrderFields: string;
begin
{AOrderFields := StringReplace(TXDBGrid(Sender).OrderFields, 'Seq', 'ITEM', []);
TXDBGrid(Sender).ChangeDataSetOrder(AOrderFields);  }
end;

Procedure TformVendas.excluirClick(Sender: TObject);
var
  pedido :string;
  E:Integer;
begin
if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label1.Caption ='S'then
begin

 if Application.MESSAGEBOX('Confirma a Exclusão da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) <> ID_YES then
  Exit;
Try
 Begin
              {
              pedido := N_venda.Text;

              IF DM.SDS_CONFIGURACOESUSA_FRACAO.AsString = 'N' then
              BEGIN
              Sds_pedidos_itens.First;
              Contador:=Sds_pedidos_itens.RecordCount;
              For E:=1 to Contador do
              begin
              SPC_Excluir_pedido.ParamByname('CODIGO').AsInteger := Sds_pedidos_itens.FieldByname('CODIGO_PROD').AsInteger;
              SPC_Excluir_pedido.ParamByname('Quant').Value :=  Sds_pedidos_itens.FieldByname('QUANTIDADE').Value;
              SPC_Excluir_pedido.ExecProc;
              Sds_pedidos_itens.Next;
              end;
              end ELSE
              IF DM.SDS_CONFIGURACOESUSA_FRACAO.AsString = 'S' then
              begin
              Sds_pedidos_itens.First;
              Contador:=Sds_pedidos_itens.RecordCount;
              For E:=1 to Contador do
              begin
              SPC_EXCLUIR_EST_FRACAO.ParamByname('CODIGO').AsInteger := Sds_pedidos_itens.FieldByname('CODIGO_PROD').AsInteger;
              SPC_EXCLUIR_EST_FRACAO.ParamByname('Quant').Value :=  Sds_pedidos_itens.FieldByname('QUANTIDADE').Value;
              SPC_EXCLUIR_EST_FRACAO.ParamByname('FRACAO').Value :=  Sds_pedidos_itens.FieldByname('FRACAO').Value;
              SPC_EXCLUIR_EST_FRACAO.ExecProc;
              Sds_pedidos_itens.Next;
              end;
              end;

               }
              if Sds_pedidos_itens.RecordCount = 0 then
              begin
              Sds_pedidos_itens.Cancel;
              end else
              begin
              with Sds_pedidos_itens do
              while Sds_pedidos_itens.RecordCount > 0 do
              Sds_pedidos_itens.Delete;
              Sds_pedidos_itens.ApplyUpdates(0);
              end;

             Sds_pedidos.Delete;
             Sds_pedidos.ApplyUpdates(0);
             if Sds_pedidos.RecordCount = 0 then
             begin
             Sds_pedidos.CancelUpdates;
             end;



            end;
              GroupBox1.Enabled := False;
              GroupBox2.Enabled := False;
              GroupBox3.Enabled := False;

              Sds_pedidos.Active := false;
              Sds_pedidos.Active := true;
              Sds_pedidos.Last;

     Except
      ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
end;
end;
end;

procedure TformVendas.pesquisarClick(Sender: TObject);
begin
if CheckBox4.Checked = True then
begin
 Try
    FormConsultaPedidoDireto:=TFormConsultaPedidoDireto.Create(self);
      FormConsultaPedidoDireto.ShowModal;

      except
       ShowMessage('Erro ao Tentar Exibir a Pesquisa de Vendas!!');
end;
end;

if CheckBox5.Checked = True then
begin
 Try
    FConsultaPreVenda:=TFConsultaPreVenda.Create(self);
      FConsultaPreVenda.ShowModal;
      except
       ShowMessage('Erro ao Tentar Exibir a Pesquisa de Pre-Venda!!');
end;
end;

end;

procedure TformVendas.dbgridExit(Sender: TObject);
begin
FormVendas.KeyPreview := True;
end;

procedure TformVendas.DBComboClienteEnter(Sender: TObject);
begin

Sds_pedidos.Edit;
//DBComboCliente.Text := '1';
//DM.SDS_Clientes.Filtered := False;
edit2.Clear;
DBComboClienteChange(Sender);

end;

procedure TformVendas.E_DescontoExit(Sender: TObject);
begin
Edit57.Value := (Edit55.Value - Edit56.value);
Sds_orcamentos.Edit;
Sds_orcamentosVALOR_ITENS.AsFloat :=  Edit55.value;
Sds_orcamentosVALOR_DESCONTO.AsFloat := Edit56.value;
Sds_orcamentosVALOR_TOTAL.AsFloat := (Edit55.Value - Edit56.value);
Sds_orcamentos.Post;
//confirmarOR.SetFocus;
end;

procedure TformVendas.DBMemo1Exit(Sender: TObject);
begin
DBGrid.SetFocus;
end;

procedure TformVendas.DBEdit4Exit(Sender: TObject);
begin
Sds_pedidos.Post;
end;

procedure TformVendas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

If Inserir.Enabled = False then
  begin
  if Application.MESSAGEBOX('Atenção!!! Se você fechar a tela sua venda será cancelada?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_NO then
  BEGIN
  CanClose := False ;
  Exit;
  end;
  end;

  if InserirOR.Enabled = False then
  begin
 if Application.MESSAGEBOX('Atenção!!! Se você fechar a tela seu orçamento será cancelado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_NO then
   BEGIN
  CanClose := False ;
  Exit;
  end;
  end;
end;


procedure TformVendas.dbgridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin

  if not odd(Sds_pedidos_itens.RecNo) then
  if not (gdselected in State) then
    begin
    DBGrid.Canvas.Brush.Color := $00FDE2BD;
    DBGrid.Canvas.FillRect(Rect);
    DBGrid.DefaultDrawDataCell(Rect,Column.field,state);
  end;

   ComboEdit1.Visible := DBGrid.SelectedField = Sds_pedidos_itensCODIGO_PRODUTO;
   if ComboEdit1.Visible then
   if (gdselected in State) then
    if (Column.Field.FieldName = ComboEdit1.DataField) then
    with ComboEdit1 do begin
      Left := Rect.Left + DBGrid.Left + 2;
      Top := Rect.Top + DBGrid.Top + 2;
      Width := Rect.Right - Rect.Left;
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top;
      Visible := True;
    end
end;

procedure TformVendas.FormCreate(Sender: TObject);
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
   //  DM.SDS_Empresa.Open;

   {  if FileExists('C:\siace\PARCELADO.xml') then
     begin
     DeleteFile('C:\siace\PARCELADO.xml');
     end;

     if FileExists('c:\siace\venda_itens.xml') then
     begin
     DeleteFile('c:\siace\venda_itens.xml');
     end;

     if FileExists('c:\siace\venda.xml') then
     begin
     DeleteFile('c:\siace\venda.xml');
     end;

     if FileExists('c:\siace\orca.xml') then
     begin
     DeleteFile('c:\siace\orca.xml');
     end;

     if FileExists('c:\siace\orca_itens.xml') then
     begin
     DeleteFile('C:\siace\orca_itens.xml');
     end;  }

   {   if FileExists('d:\siace\orca.xml') then
     begin
     DeleteFile('d:\siace\orca.xml');
     end;

     if FileExists('d:\siace\orca_itens.xml') then
     begin
     DeleteFile('d:\siace\orca_itens.xml');
     end;  }
     

 with Sds_pedidos do
  Begin
//  Filename:=ExtractFilepath(paramstr(0))+'venda.xml';
//  if not FileExists(filename) then
  createdataset;
  open;
  end;

  with sds_pedidos_itens do
  Begin
//  Filename:=ExtractFilepath(paramstr(0))+'venda_itens.xml';
//  if not FileExists(filename) then
  createdataset;
  open;
  end;

  with Sds_orcamentos do
  Begin
//  Filename:=ExtractFilepath(paramstr(0))+'orca.xml';
//  if not FileExists(filename) then
  createdataset;
  open;
  end;

  with Sds_orcamentos_itens do
  Begin
//  Filename:=ExtractFilepath(paramstr(0))+'orca_itens.xml';
//  if not FileExists(filename) then
  createdataset;
  open;
  end;


with ComboEdit1 do
 begin
   DataSource := Dts_pedidos_itens; // -> Table1 -> DBGrid1
   //ListSource := DataSource2;
   DataField  := 'CODIGO_PRODUTO'; // from Table1 - displayed in the DBGrid
   //KeyField   := 'Email';
   //ListField  := 'Name; Email';
   Color      := clCream;
   Visible       := False;
  // DropDownWidth := 200;
 end;

 with ComboEdit2 do
 begin
   DataSource := Dts_orcamentos_itens; // -> Table1 -> DBGrid1
   DataField  := 'CODIGO_PRODUTO'; // from Table1 - displayed in the DBGrid
   Color      := clCream;
   Visible       := False;


   LerINI;

 //  DBGrid1TotalsUpdated(Sender);
 end;

end;
procedure TformVendas.ComboEdit1ButtonClick(Sender: TObject);
var
  N: Integer;
begin
sds_pedidos_itens.Edit;
NValor:=1;
NItem:=NItem+NValor;
Sds_pedidos_itensCODIGO.AsInteger:=(NItem);
Sds_pedidos_itensITEN.AsInteger :=(NItem);
Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
Sds_pedidos_itensQUANTIDADE.Text := '0';
Sds_pedidos_itensPRECO_UNITARIO.Text := '0';
Sds_pedidos_itensDESCONTO.Text := '0';
Sds_pedidos_itensPRECO_TOTAL.Text := '0';
Sds_pedidos_itensFRACAO.Text := '1';

if Sds_pedidos.State in [dsInsert, dsEdit, dsSetKey] then
begin
Sds_pedidos.Post;
end else

begin
 FormConsProdutosVendas:=NIL;
 FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
// FormConsProdutosVendas.Edit1.Text := ComboEdit1.Text;

 FormConsProdutosVendas.Showmodal;
 Sds_pedidos_itens.Edit;
 if DM.SDS_PRODUTOS_c.RecordCount > 0 then
 begin
 Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_cCODIGO_BARRAS.Text;
 Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
 InsereItem;
 DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
 Sds_pedidos_itens.Edit;
end;
end;
end;

procedure TformVendas.ComboEdit1Exit(Sender: TObject);
begin
 Sds_pedidos.Edit;
//Sds_pedidos_itensDESCONTO.Text := '0,00';
Sds_pedidos_itens.Edit;
   {  if ComboEdit1.Text >'' then
     begin
     Sds_pedidos_itens.Edit;
     InsereItem;
     DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
     end else  }

    { if ComboEdit1.Text = '' then
     BEGIN
     // dm.SDS_PRODUTOS.Filtered := false;
      FormConsProdutosVendas:=NIL;
      FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
      FormConsProdutosVendas.Edit1.Text := ComboEdit1.Text;
      FormConsProdutosVendas.Showmodal;
      Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
      InsereItem;
      DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
  { Sds_pedidos_itens.Edit;
   If DM.SDS_PRODUTOS_c.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
   begin
   InsereItem;
   DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
   end;  }

     // InsereItem;
    {  ATIVO := 'A';
      DM.SDS_PRODUTOS.Filtered := False;
      dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
      dm.SDS_PRODUTOS.Filtered := True;
      end;  }

  {  If DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
      InsereItem;
      DBGRID.COLUMNS.Grid.Fields[3].FocusControl;
        end else

    if ComboEdit1.Text > '' then
    if not DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[]) then
    begin
//       ShowMessage('Produto não localizado Tente novamente!!');
//      ComboEdit1.SetFocus;
      FormConsProdutosVendas:=NIL;
      FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
      FormConsProdutosVendas.Showmodal;
      InsereItem;
      DBGRID.COLUMNS.Grid.Fields[3].FocusControl;
end;}

end;

procedure TformVendas.dbgridEditButtonClick(Sender: TObject);
VAR
  N : Integer;
begin
 if DBGrid.SelectedField = Sds_pedidos_itensVENDEDOR THEN
 begin
 Sds_pedidos_itens.Edit;
 FormConsUSUARIOS:=NIL;
 FormConsUsuarios:=TFormConsUsuarios.Create(self);
 FormConsUsuarios.Showmodal;
 Sds_pedidos_itensVENDEDOR.Text := DM.SDS_UsuariosCODIGO.Text;
end;
 Sds_pedidos_itens.Edit;
//Sds_pedidos_itens.IndexFieldNames := 'ITEN';
end;

procedure TformVendas.E_UsuarioEnter(Sender: TObject);
begin
Sds_pedidos.Edit;
end;

procedure TformVendas.dbgridCellClick(Column: TXColumn);
var
  n : Integer;
begin
Sds_pedidos_itens.Edit;
//Sds_pedidos_itens.IndexFieldNames := 'ITEN';
      {DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
      Sds_pedidos_itens.Edit;
      ComboEdit1.Visible := True;
      ComboEdit1.SetFocus;}
{if DBGRID.COLUMNS.Grid.Fields[7].Text = '' then
begin
SPC_COD_ITENS.ExecProc;
N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
Sds_pedidos_itensCODIGO.AsString:=IntTostr(N);
Sds_pedidos_itens.Edit;
Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_produtosCODIGO.Text;
Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
Sds_pedidos_itensQUANTIDADE.Text := '0,00';
Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
Sds_pedidos_itensDESCONTO.Text := '0,00';
Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
Sds_pedidos_itensFRACAO.Text := '1';
 end;}
end;

procedure TformVendas.ComboEdit1Click(Sender: TObject);
var
  N : Integer;
begin
Sds_pedidos_itens.Edit;
if Sds_pedidos.State in [dsInsert, dsEdit, dsSetKey] then
begin
Sds_pedidos.Post;
end else
  Sds_pedidos_itens.Edit;
end;


procedure TformVendas.dt_entregaEnter(Sender: TObject);
begin
Sds_pedidos.Edit;
end;

procedure TformVendas.DBEdit4Enter(Sender: TObject);
begin
Sds_pedidos.Edit;
end;

procedure TformVendas.dt_vendaEnter(Sender: TObject);
begin
   if Sds_pedidos.State in [dsInsert, dsEdit, dsSetKey] then
begin
Sds_pedidos.Post;

Sds_pedidos.Edit;
end;
end;

procedure TformVendas.CodUsuarioButtonClick(Sender: TObject);
begin
Sds_pedidos.Edit;
      FormConsUsuarios:=TFormConsUsuarios.Create(self);
      FormConsUsuarios.ShowModal;
      Usuario.Text:=DM.SDS_usuarios.Fieldbyname('USUARIO').AsString;
      CodUsuario.Text:=DM.SDS_Usuarios.Fieldbyname('CODIGO').AsString;
      Sds_pedidos.Post;
end;

procedure TformVendas.CodUsuarioEnter(Sender: TObject);
begin
Sds_pedidos.Edit;
Sds_pedidos.Post;
end;


procedure TformVendas.ComboEdit1KeyPress(Sender: TObject; var Key: Char);
var
  balanca, codbar : Boolean;
  CodigoPeso :Integer;
  Peso, xPreUnit  : Real;
  Qtd_v :string;
begin
  saldo := 0;
 {if not (Key in [#8,#32, #13, 'a'..'z', 'A'..'Z', '0'..'9'])then
begin
//ShowMessage(key+ ' é um caracter inválido, digite apenas letras ou números');
key := #0;
end; }

 if (Key=#13) then
  begin
    ComboEdit1.Text:= Trim(ComboEdit1.Text);
    EditN1.Text:= '1,000';

    EDIT3.Clear;

    Edit3.Text := codigo_bar;

    CodigoPeso := WordsCount(ComboEdit1.Text); // Conta digitos

      if Copy(comboedit1.Text, 01,01) = '2' Then  // verifica se o primeiro digito e dois ou seja Balança
      if CodigoPeso = 13 then    // se tem 13
      begin
      Edit3.Text    := (Copy(ComboEdit1.Text, 02, 06));
      balanca := True;
      end else
      begin
      Edit3.Text := ComboEdit1.Text;
      balanca := false;
      end;

     if balanca = True then                                      
      begin
      CodigoPeso := WordsCount(comboEdit1.Text); // Conta digitos

      if Copy(ComboEdit1.Text, 01,01) = '2' Then  // verifica se o primeiro digito e dois ou seja Balança
      if CodigoPeso = 13 then    // se tem 13
      begin
       EDIT3.Clear;
       Edit3.Text    := (Copy(ComboEdit1.Text, 02, 06));
       Peso          := StrToFloat(Copy(ComboEdit1.Text, 08, 05));
       // Codprod    := StrToInt(Copy(Edit1.Text, 03, 05));
       codigo_bar    := (Copy(ComboEdit1.Text, 02, 06));

      dm.SDS_PRODUTOS_c.Active := false;
      DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit3.text + '%' + #39+'' +'ORDER BY DESCRICAO';
      dm.SDS_PRODUTOS_c.Active := True;

      If DM.Sds_produtos_c.locate('CODIGO_BARRAS',Edit3.text, [])=True then
      begin
      InsereItem;
      Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;

      xPreUnit      := DM.Sds_produtos_cPRECO_VENDA.AsFloat;
      Peso          := Peso / 100 / xPreUnit;
      Qtd_v         := FormatFloat('##0.000', peso);
      EditN1.text   := qtd_v;


      Sds_pedidos_itens.Edit;
      sds_pedidos_itensQUANTIDADE.AsFloat :=  StrtoFloat(EditN1.Text);
      DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
      Sds_pedidos_itens.Edit;
      end else
      begin
        ShowMessage('Produto não encontrado');
        DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
        Sds_pedidos_itens.Edit;
        ComboEdit1.SelectAll;
        ComboEdit1.SetFocus;
      end;
      end;
      end;

    //por codigo
       if Copy(comboedit1.Text, 01,03) = '789' Then
       begin
         codbar := True;
       end;
       if codbar = True then
       begin
       dm.SDS_PRODUTOS_c.Active := false;
       DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' +  RemoveChar(ComboEdit1.Text) + '%' + #39+'ORDER BY DESCRICAO asc';
       dm.SDS_PRODUTOS_c.Active := True;
       ATIVO := 'A';
       DM.SDS_PRODUTOS_C.Filtered := False;
       DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
       dm.SDS_PRODUTOS_C.Filtered := True;

       If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS',  (comboedit1.text),[])=True then
       begin
       Sds_Pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
       sds_pedidos_itensCODIGO_PRODUTO.Text := DM.Sds_produtos_cCODIGO_BARRAS.Text;
       Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
       Sds_pedidos_itens.Edit;
       InsereItem;
       Sds_pedidos_itens.Post;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;
                      Sds_pedidos_itens.last;


        Sds_pedidos_itens.insert;


            if DBGRID.COLUMNS.Grid.Fields[0].Text = '' then
             begin

             Sds_pedidos_itens.Edit;
             NValor:=1;
             NItem:=NItem+NValor;
             Sds_pedidos_itensCODIGO.AsInteger:=(NItem); //IntTostr(N);
             Sds_pedidos_itensITEN.AsInteger :=(NItem);
             //Sds_pedidos_itens.Edit;
             Sds_pedidos_itensCODIGO_PROD.Text := '1';
             Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
             Sds_pedidos_itensQUANTIDADE.Text := '0,00';
             Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
             Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
             Sds_pedidos_itensDESCONTO.Text := '0,00';
             Sds_pedidos_itensFRACAO.Text := '1';
       // DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
     //  end;


       end;
       end ELSE
        If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', (Sds_Pedidos_itensCODIGO_PRODUTO.Text),[])=True then
       begin
        ComboEdit1ButtonClick(ComboEdit1);
       end;
       exit
       end;

      if edit2.Text='LETRAS' THEN
      BEGIN
       if ComboEdit1.Text > '' then
       begin

       Sds_pedidos_itens.Edit;
       Sds_pedidos_itensCODIGO_PROD.Text := '1';
       FormConsProdutosVendas:=NIL;
       FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
       FormConsProdutosVendas.Edit1.Text := ComboEdit1.Text;
       FormConsProdutosVendas.Showmodal;
       Sds_pedidos_itens.Edit;

        if DM.SDS_PRODUTOS_c.RecordCount > 0 then
       begin
       Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
       Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
       scodigo :=  DM.SDS_PRODUTOS_cCODIGO.Text;
       Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
       InsereItem;

       IF ComboEdit1.Text = '1001' then
       begin
         Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[1].FocusControl;
       Sds_pedidos_itens.Edit;
       end else
       Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[2].FocusControl;

       Exit;
       end;
       end;
      END;


     IF EDIT2.Text='NUMEROS' THEN
     BEGIN
     if ComboEdit1.Text > '' then
     begin
     if dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '4' then
     begin
     dm.SDS_PRODUTOS_c.Active := false;
     DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where PROCURA like ' + #39 + '%' +  RemoveChar(ComboEdit1.Text) + '%' + #39+'ORDER BY DESCRICAO asc';
     dm.SDS_PRODUTOS_c.Active := True;
     ATIVO := 'A';
     DM.SDS_PRODUTOS_C.Filtered := False;
     DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
     dm.SDS_PRODUTOS_C.Filtered := True;

     If DM.SDS_PRODUTOS_C.locate('PROCURA',  RemoveChar(comboedit1.text),[])=True then
      begin
      Sds_pedidos_itens.Edit;
      sCodigo :=  DM.SDS_PRODUTOS_cCODIGO.Text;
      InsereItem;
      Sds_pedidos_itens.Edit;
      Sds_Pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
      sds_pedidos_itensCODIGO_PRODUTO.Text := DM.Sds_produtos_cCODIGO_BARRAS.Text;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      Sds_pedidos_itens.Edit;
      DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
      end;
      If not DM.SDS_PRODUTOS_C.locate('PROCURA', scodigo,[])=True then
      begin
        ComboEdit1ButtonClick(ComboEdit1);
      end;
     end;



    if (dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '2') or (dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '0') or (dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '1') then
    begin
     dm.SDS_PRODUTOS_c.Active := false;
     DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'ORDER BY DESCRICAO asc';
     dm.SDS_PRODUTOS_c.Active := True;
     ATIVO := 'A';
     DM.SDS_PRODUTOS_C.Filtered := False;
     DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
     dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
      Sds_pedidos_itens.Edit;
     // Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
     // Codigo :=  DM.SDS_PRODUTOS_cCODIGO.Text;
      InsereItem;
      Sds_pedidos_itens.Edit;
       if ComboEdit1.Text = '1001' then
       begin
         Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[1].FocusControl;
       Sds_pedidos_itens.Edit;
       end else
       Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
       Sds_pedidos_itens.Edit;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
      // SHOWMESSAGE('Produto Não Localizado');
      // ComboEdit1.Clear;
       //Sds_pedidos_itensCODIGO_PROD.Text := '1';
       dm.SDS_PRODUTOS_c.Active := false;
       DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'ORDER BY DESCRICAO asc';
       dm.SDS_PRODUTOS_c.Active := True;
       ATIVO := 'A';
       DM.SDS_PRODUTOS_C.Filtered := False;
       DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
       dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('REFERENCIA', ComboEdit1.Text,[])=True then
      begin
      Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      InsereItem;
      Sds_pedidos_itens.Edit;
       if ComboEdit1.Text = '1001' then
       begin
         Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[1].FocusControl;
       Sds_pedidos_itens.Edit;
       end else
       Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
       Sds_pedidos_itens.Edit;
      end else
       begin
       FormConsProdutosVendas:=NIL;
       FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
    //   FormConsProdutosVendas.Edit1.Text := ComboEdit1.Text;
       FormConsProdutosVendas.Showmodal;
       Sds_pedidos_itens.Edit;
       if DM.SDS_PRODUTOS_c.RecordCount > 0 then
       begin
       ComboEdit1.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
       Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
       Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
       InsereItem;

       if ComboEdit1.Text = '1001' then
       begin
         Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[1].FocusControl;
       Sds_pedidos_itens.Edit;
       end else
       Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
       Sds_pedidos_itens.Edit;
       ComboEdit1.SelectAll;
      end;
      end;
      end;
      end;


    if dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '3' then
    begin
     dm.SDS_PRODUTOS_c.Active := false;
     DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'ORDER BY DESCRICAO asc';
     dm.SDS_PRODUTOS_c.Active := True;
     ATIVO := 'A';
     DM.SDS_PRODUTOS_C.Filtered := False;
     DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
     dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('REFERENCIA', ComboEdit1.Text,[])=True then
      begin
      Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      InsereItem;
      Sds_pedidos_itens.Edit;
       if ComboEdit1.Text = '1001' then
       begin
         Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[1].FocusControl;
       Sds_pedidos_itens.Edit;
       end else
       Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
       Sds_pedidos_itens.Edit;
      end else
      If not DM.SDS_PRODUTOS_C.locate('REFERENCIA', ComboEdit1.Text,[])=True then
      begin
      // SHOWMESSAGE('Produto Não Localizado');
      // ComboEdit1.Clear;
       //Sds_pedidos_itensCODIGO_PROD.Text := '1';
       dm.SDS_PRODUTOS_c.Active := false;
     DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'ORDER BY DESCRICAO asc';
     dm.SDS_PRODUTOS_c.Active := True;
     ATIVO := 'A';
     DM.SDS_PRODUTOS_C.Filtered := False;
     DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
     dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
      Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      InsereItem;
      Sds_pedidos_itens.Edit;
       if ComboEdit1.Text = '1001' then
       begin
         Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[1].FocusControl;
       Sds_pedidos_itens.Edit;
       end else
       Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
       Sds_pedidos_itens.Edit;
      end else
      begin
       FormConsProdutosVendas:=NIL;
       FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
       FormConsProdutosVendas.Edit1.Text := ComboEdit1.Text;
       FormConsProdutosVendas.Showmodal;
       Sds_pedidos_itens.Edit;
       if DM.SDS_PRODUTOS_c.RecordCount > 0 then
       begin
       ComboEdit1.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
       Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
       Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
       InsereItem;

       if ComboEdit1.Text = '1001' then
       begin
         Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[1].FocusControl;
       Sds_pedidos_itens.Edit;
       end else
       Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
       Sds_pedidos_itens.Edit;
       ComboEdit1.SelectAll;
      end;
      end;
      end;
    end;

    if dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '8' then
    begin
      //BuscaValorEmTodosCamposTabela('PRODUTOS', ComboEdit1.Text) =  TRUE then
     dm.SDS_PRODUTOS_c.Active := false;
     DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'ORDER BY DESCRICAO asc';
     dm.SDS_PRODUTOS_c.Active := True;
     ATIVO := 'A';
     DM.SDS_PRODUTOS_C.Filtered := False;
     DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
     dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
      Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      InsereItem;
      Sds_pedidos_itens.Edit;
       if ComboEdit1.Text = '1001' then
       begin
         Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[1].FocusControl;
       Sds_pedidos_itens.Edit;
       end else
       Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
       Sds_pedidos_itens.Edit;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin

       dm.SDS_PRODUTOS_c.Active := false;
       DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'ORDER BY DESCRICAO asc';
       dm.SDS_PRODUTOS_c.Active := True;
       ATIVO := 'A';
       DM.SDS_PRODUTOS_C.Filtered := False;
       DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
       dm.SDS_PRODUTOS_C.Filtered := True;

        If DM.SDS_PRODUTOS_C.locate('REFERENCIA', ComboEdit1.Text,[])=True then
        begin
        Sds_pedidos_itens.Edit;
        Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
        Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
        Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
        InsereItem;
        Sds_pedidos_itens.Edit;
         if ComboEdit1.Text = '1001' then
       begin
         Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[1].FocusControl;
       Sds_pedidos_itens.Edit;
       end else
       Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
       Sds_pedidos_itens.Edit;
       end else
       BEGIN
       FormConsProdutosVendas:=NIL;
       FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
       FormConsProdutosVendas.Edit1.Text := ComboEdit1.Text;
       FormConsProdutosVendas.Showmodal;
       Sds_pedidos_itens.Edit;
       if DM.SDS_PRODUTOS_c.RecordCount > 0 then
       begin
       ComboEdit1.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
       Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
       Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
       InsereItem;

       if ComboEdit1.Text = '1001' then
       begin
         Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[1].FocusControl;
       Sds_pedidos_itens.Edit;
       end else
       Sds_pedidos_itens.Edit;
       DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
       Sds_pedidos_itens.Edit;
       ComboEdit1.SelectAll;
      end;
      end;
      end;
    end;
{IF ACHOU=TRUE THEN

IF ACHOU=FALSE THEN
//SHOWMESSAGE('Produto Não Localizado');
end;}

    { If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
      Sds_pedidos_itens.Edit;
      InsereItem;
      DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
      end else

      if ComboEdit1.Text > '' then
      if not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin  }
      {ATIVO := 'A';
      DM.SDS_PRODUTOS.Filtered := False;
      dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
      dm.SDS_PRODUTOS.Filtered := True;}
      // ComboEdit1.SetFocus;
    //  Sds_pedidos_itens.Edit;  }

end;
end;
end;
end;




procedure TformVendas.CodUsuarioExit(Sender: TObject);
begin
 if CodUsuario.Text = '' then
 begin
   CodUsuario.Text := DM.SDS_UsuariosCODIGO.text;
   //Application.MESSAGEBOX('Informe o nome ou Codigo do cliente', 'Atenção', MB_ICONASTERISK + MB_OK + MB_DEFBUTTON2);
   CodUsuario.SetFocus;
 end else
 if CodUsuario.Text = ' ' then
 begin
   CodUsuario.Text := DM.SDS_UsuariosCODIGO.text;
   CodUsuario.SetFocus;
 end else
begin
 DM.SDS_Usuarios.locate('CODIGO', CodUsuario.Text,[loCaseinSensitive]);
 Usuario.Text:=DM.SDS_Usuarios.Fieldbyname('USUARIO').AsString;
  if not  DM.SDS_Usuarios.locate('CODIGO', CodUsuario.Text,[loCaseinSensitive]) then
   begin
     CodUsuarioButtonClick(sender);
   end;
end;
end;

procedure TformVendas.DBEdit7Exit(Sender: TObject);
begin
Sds_Orcamentos.Post;
//Sds_Orcamentos.ApplyUpdates(0);
end;

procedure TformVendas.Dt_orcEnter(Sender: TObject);
begin
Sds_Orcamentos.Edit;
end;

procedure TformVendas.OrComboEdit2ButtonClick(Sender: TObject);
begin
      Sds_Orcamentos.Edit;
      FormConsUsuarios:=TFormConsUsuarios.Create(self);
      FormConsUsuarios.ShowModal;
      DBEdit8.Text:=DM.SDS_usuarios.Fieldbyname('USUARIO').AsString;
      OrComboEdit2.Text:=DM.SDS_Usuarios.Fieldbyname('CODIGO').AsString;
end;

procedure TformVendas.OrComboEdit1ButtonClick(Sender: TObject);
begin
      Sds_Orcamentos.Edit;
      FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.Edit1.Text := OrComboEdit1.Text;
      FormConsClientes.ShowModal;
      
      if not DM.SDS_Clientes.Eof then
      begin
      Sds_OrcamentosNOME_CLIENTE.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      Sds_OrcamentosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
      Sds_OrcamentosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
      Sds_OrcamentosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
      Sds_OrcamentosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
      Sds_Orcamentosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
      Sds_OrcamentosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
      Sds_OrcamentosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
      Sds_OrcamentosCEP.Text := removechar(DM.SDS_ClientesCEP.Text);
      Sds_OrcamentosUF.Text  := DM.SDS_ClientesUF.Text;
      Sds_OrcamentosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
      Sds_OrcamentosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
      Sds_OrcamentosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
      Sds_OrcamentosIE_PRODUTOR.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
      Sds_orcamentosPRODUTOR.Text   := DM.SDS_ClientesPRODUTOR_RURAL.Text;
      OrComboEdit1.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;

      Sds_Orcamentos.Post;
      end else
      begin
      dm.SDS_Clientes.Filtered := False;
      Sds_orcamentosCODIGO_CLIENTE.text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
      end;
end;

procedure TformVendas.OrComboEdit2Exit(Sender: TObject);
begin
 if OrComboEdit2.Text = '' then
 begin
   OrComboEdit2.Text := DM.SDS_UsuariosCODIGO.text;
   //Application.MESSAGEBOX('Informe o nome ou Codigo do cliente', 'Atenção', MB_ICONASTERISK + MB_OK + MB_DEFBUTTON2);
   OrComboEdit2.SetFocus;
 end else
 if OrComboEdit2.Text = ' ' then
 begin
   OrComboEdit2.Text := DM.SDS_UsuariosCODIGO.text;
   OrComboEdit2.SetFocus;
 end else
  begin
 DM.SDS_Usuarios.locate('CODIGO', OrComboEdit2.Text,[loCaseinSensitive]);
 DBEdit8.Text:=DM.SDS_Usuarios.Fieldbyname('USUARIO').AsString;
  if not  DM.SDS_Usuarios.locate('CODIGO', OrComboEdit2.Text,[loCaseinSensitive]) then
   begin
     OrComboEdit2ButtonClick(sender);
   end;
   end;
end;

procedure TformVendas.OrComboEdit1Exit(Sender: TObject);
begin
 if OrComboEdit1.Text = '' then
 begin
   OrComboEdit1.Text := '1';
   //Application.MESSAGEBOX('Informe o nome ou Codigo do cliente', 'Atenção', MB_ICONASTERISK + MB_OK + MB_DEFBUTTON2);
   OrComboEdit1.SetFocus;
 end else
 if OrComboEdit1.Text = ' ' then
 begin
   OrComboEdit1.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   OrComboEdit1.SetFocus;
 end else

  begin
 {     Sds_Orcamentos.Edit;
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.DataSet.CommandText:='select * from clientes where CODIGO like ' + #39 + '%' + OrComboEdit1.Text + '%' + #39+'order by NOME_RS ASC';
      dm.SDS_Clientes.Active := True;
      DM.SDS_Clientes.locate('CODIGO', OrComboEdit1.Text,[loCaseinSensitive]);
      Sds_OrcamentosNOME_CLIENTE.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      Sds_OrcamentosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
      Sds_OrcamentosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
      Sds_OrcamentosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
      Sds_OrcamentosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
      Sds_Orcamentosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
      Sds_OrcamentosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
      Sds_OrcamentosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
      Sds_OrcamentosCEP.Text := removechar(DM.SDS_ClientesCEP.Text);
      Sds_OrcamentosUF.Text  := DM.SDS_ClientesUF.Text;
      Sds_OrcamentosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
      Sds_OrcamentosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
      Sds_OrcamentosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
      Sds_OrcamentosIE_PRODUTOR.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
      Sds_orcamentosPRODUTOR.Text   := DM.SDS_ClientesPRODUTOR_RURAL.Text;

      Sds_Orcamentos.Post;
   if not  DM.SDS_Clientes.locate('CODIGO', OrComboEdit1.Text,[loCaseinSensitive]) then
   begin
   OrComboEdit1ButtonClick(sender);
   end;
   DBComboPgto.SetFocus;
end;
except
    on E: EDatabaseError do
     ShowMessage(E.Message);
end;}
if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.sql.add('select * from clientes where NOME_RS like ' + #39 + '%' + OrComboEdit1.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',OrComboEdit1.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  OrComboEdit1ButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
      Sds_orcamentos.Edit;
      Sds_OrcamentosNOME_CLIENTE.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      Sds_OrcamentosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
      Sds_OrcamentosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
      Sds_OrcamentosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
      Sds_OrcamentosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
      Sds_Orcamentosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
      Sds_OrcamentosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
      Sds_OrcamentosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
      Sds_OrcamentosCEP.Text := removechar(DM.SDS_ClientesCEP.Text);
      Sds_OrcamentosUF.Text  := DM.SDS_ClientesUF.Text;
      Sds_OrcamentosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
      Sds_OrcamentosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
      Sds_OrcamentosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
      Sds_OrcamentosIE_PRODUTOR.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
      Sds_orcamentosPRODUTOR.Text   := DM.SDS_ClientesPRODUTOR_RURAL.Text;
      OrComboEdit1.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;

 //  DBComboPgto.SetFocus;
   end;
    except
     on E: EDatabaseError do
     ShowMessage(E.Message);

    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF OrComboEdit1.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 DBComboCliente.Text := '1';
 DBComboCliente.SetFocus;
end else

  //DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + OrComboEdit1.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(OrComboEdit1.Text),[]);
  OrComboEdit1.Text := RemoveChar(OrComboEdit1.Text);

  //DBComboPgto.SetFocus;

IF ACHOU=FALSE THEN
begin
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',DBComboCliente.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
OrComboEdit1.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
Sds_orcamentos.Edit;
      Sds_OrcamentosNOME_CLIENTE.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      Sds_OrcamentosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
      Sds_OrcamentosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
      Sds_OrcamentosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
      Sds_OrcamentosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
      Sds_Orcamentosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
      Sds_OrcamentosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
      Sds_OrcamentosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
      Sds_OrcamentosCEP.Text := removechar(DM.SDS_ClientesCEP.Text);
      Sds_OrcamentosUF.Text  := DM.SDS_ClientesUF.Text;
      Sds_OrcamentosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
      Sds_OrcamentosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
      Sds_OrcamentosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
      Sds_OrcamentosIE_PRODUTOR.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
      Sds_orcamentosPRODUTOR.Text   := DM.SDS_ClientesPRODUTOR_RURAL.Text;
      OrComboEdit1.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;

 //DBComboPgto.SetFocus;
 end;
end;
end;
end;


procedure TformVendas.OrComboEdit2Enter(Sender: TObject);
begin
Sds_Orcamentos.Edit;
end;

procedure TformVendas.OrComboEdit1Enter(Sender: TObject);
begin
Sds_Orcamentos.Edit;
OrComboEdit1.Text := '1';
end;

procedure TformVendas.DBEdit7Enter(Sender: TObject);
begin
Sds_Orcamentos.Edit;
end;

procedure TformVendas.RbPreco2Exit(Sender: TObject);
begin
DBGrid.SetFocus;
DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
end;

procedure TformVendas.RbPreco4Exit(Sender: TObject);
begin
DBGrid1.SetFocus;
DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
end;

procedure TformVendas.DBGrid1CellClick(Column: TXColumn);
VAR
N: Integer;
begin
Sds_Orcamentos_itens.Edit;

    {  DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
      Sds_Orcamentos_itens.Edit;
      ComboEdit2.Visible := True;
      ComboEdit2.SetFocus}
{if DBGRID1.COLUMNS.Grid.Fields[7].Text = '' then
begin
SPC_ITENS.ExecProc;
N:= (SPC_ITENS.ParamByName('ATUAL').AsInteger);
Sds_Orcamentos_itensCODIGO.AsString:=IntTostr(N);
Sds_Orcamentos_itensCODIGO_PROD.Text := DM.SDS_produtosCODIGO.Text;
Sds_Orcamentos_itensCODIGO_ID.Text := n_ORCA.Text;
Sds_Orcamentos_itensQUANTIDADE.Text := '0,00';
Sds_Orcamentos_itensPRECO_UNITARIO.Text := '0,00';
Sds_Orcamentos_itensDESCONTO.Text := '0,00';
Sds_Orcamentos_itensPRECO_TOTAL.Text := '0,00';    }
 end;


procedure TformVendas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
 if not odd(Sds_Orcamentos_itens.RecNo) then
  if not (gdselected in State) then
    begin
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;

 ComboEdit2.Visible := DBGrid1.SelectedField = Sds_Orcamentos_itensCODIGO_PRODUTO;
 if ComboEdit2.Visible then
 if (gdselected in State) then
    if (Column.Field.FieldName = ComboEdit2.DataField) then
    with ComboEdit2 do begin
      Left := Rect.Left + DBGrid1.Left + 2;
      Top := Rect.Top + DBGrid1.Top + 2;
      Width := Rect.Right - Rect.Left;
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top;
      Visible := True;
    end;
end;

procedure TformVendas.DBGrid1EditButtonClick(Sender: TObject);
begin
if DBGrid1.SelectedField = Sds_Orcamentos_itensVENDEDOR THEN
 begin
 Sds_Orcamentos_itens.Edit;
 FormConsUSUARIOS:=NIL;
 FormConsUsuarios:=TFormConsUsuarios.Create(self);
 FormConsUsuarios.Showmodal;
 Sds_Orcamentos_itensVENDEDOR.Text := DM.SDS_UsuariosCODIGO.Text;
end;
end;

procedure TformVendas.DBGrid1Enter(Sender: TObject);
VAR
  N: Integer;
begin
//OrComboEdit1Exit(Sender);
//DBComboPgtoExit(Sender);

if Sds_Orcamentos.State in [dsInsert, dsEdit, dsSetKey] then
begin
Sds_Orcamentos.Post;
end;

Sds_Orcamentos_itens.Edit;

if DBGRID1.COLUMNS.Grid.Fields[7].Text = '' then
begin
NValor:=1;
NItem:=NItem+NValor;
Sds_Orcamentos_itensCODIGO.AsInteger:=(NItem);
Sds_pedidos_itensITEN.AsInteger :=(NItem);
Sds_Orcamentos_itensCODIGO_PROD.Text := '1';
Sds_Orcamentos_itensCODIGO_ID.Text := n_ORCA.Text;
Sds_Orcamentos_itensQUANTIDADE.Text := '0,00';
Sds_Orcamentos_itensPRECO_UNITARIO.Text := '0,00';
Sds_Orcamentos_itensDESCONTO.Text := '0,00';
Sds_Orcamentos_itensPRECO_TOTAL.Text := '0,00';
 end;
//formVendas.KeyPreview := False;
end;

procedure TformVendas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var
  N:Integer;
   Total, vp: real;
begin
     if (Key=VK_HOME) then
      begin
         OrComboEdit1.SetFocus;
         OrComboEdit1ButtonClick(Sender);
      end;

    if (Key = VK_DELETE) then
    begin
     if Application.MESSAGEBOX('Confirma a Exlusão do item selecionado no Orçamento?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
      Sds_Orcamentos_itens.DELETE;
      {Sds_Orcamentos_itens.First;
      A:= 0;
      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
      Sds_Orcamentos_itens.Next;
      Edit55.Text:= FloatToStr(A);
      While not Sds_Orcamentos_itens.Eof do
      begin
      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
      Sds_Orcamentos_itens.Next;
      Edit55.Text:= FloatToStr(A);
      Edit57.Text:= FloatToStr(A - Edit56.Value);
      end;    }


      if Sds_Orcamentos_itens.Eof then
      begin
      if DBGRID1.COLUMNS.Grid.Fields[7].Text = '' then
      begin
      NValor:=1;
      NItem:=NItem+NValor;
      Sds_Orcamentos_itens.Edit;
      Sds_Orcamentos_itensCODIGO.AsInteger:=(NItem);
      Sds_Orcamentos_itensITEN.AsInteger :=(NItem);
      Sds_Orcamentos_itensCODIGO_PROD.Value := 0;
      Sds_Orcamentos_itensCODIGO_ID.Text := n_ORCA.Text;
      Sds_Orcamentos_itensQUANTIDADE.Text := '0,00';
      Sds_Orcamentos_itensPRECO_UNITARIO.Text := '0,00';
      Sds_Orcamentos_itensDESCONTO.Text := '0,00';
      Sds_Orcamentos_itensPRECO_TOTAL.Text := '0,00';
      end;
      end;

                      Sds_Orcamentos_itens.First;
                      A:= 0;
                      z:= 0;
                      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                      z:= z + SDS_Orcamentos_itensDESCONTO.AsFloat;
                      Sds_Orcamentos_itens.Next;
                      Edit55.Text:= FloatToStr(A);
                      Edit56.Text:= FloatToStr(Z);
                      Edit57.Text:= FloatToStr(A);
                      While not Sds_Orcamentos_itens.Eof do
                      begin
                      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                      z:= z + SDS_Orcamentos_itensDESCONTO.AsFloat;
                      Sds_Orcamentos_itens.Next;
                      Edit55.Text:= FloatToStr(A);
                      Edit56.Text:= FloatToStr(Z);
                      Edit57.Text:= FloatToStr(A - z);
                      end;
                      Sds_Orcamentos_itens.last;
                      Sds_Orcamentos_itens.Edit;
    //  Sds_Orcamentos_itens.Last;

      DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
      Sds_Orcamentos_itens.Edit;
      ComboEdit2.Visible := True;
      ComboEdit2.SetFocus
      end;
    end;
   // if DBGRID.COLUMNS.Grid.Fields[1].AsString > '' then
    {passar para proxima coluna usando ENTER no dbgrid}

    if Key = VK_RETURN then
       begin
        Case DBGrid1.SelectedIndex of
           0: DBgrid1.SelectedIndex := 1;
           2: DBgrid1.SelectedIndex := 3;
           3: DBgrid1.SelectedIndex := 4;
           4: DBgrid1.SelectedIndex := 6;
          // 5: DBgrid1.SelectedIndex := 6;

           ELSE
            Sds_Orcamentos_itens.Post;
            dbgrid1.SelectedIndex := dbgrid1.SelectedIndex + 1;
            Sds_Orcamentos_itens.last;
           //DBGrid.SelectedField.FocusControl;
           // DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
            DBGrid1.SelectedIndex := 0;  // código da proxima linha
            Sds_Orcamentos_itens.Edit;
            {passar para proxima coluna usando ENTER no dbgrid}
            if Sds_Orcamentos_itens.Eof then
            begin
            IF DBGRID1.COLUMNS.Grid.Fields[0].Text = '' then
            begin

                      Sds_Orcamentos_itens.First;
                      A:= 0;
                      z:= 0;
                      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                      z:= z + SDS_Orcamentos_itensDESCONTO.AsFloat;
                      Sds_Orcamentos_itens.Next;
                      Edit55.Text:= FloatToStr(A);
                      Edit56.Text:= FloatToStr(Z);
                      Edit57.Text:= FloatToStr(A);
                      While not Sds_Orcamentos_itens.Eof do
                      begin
                      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                      z:= z + SDS_Orcamentos_itensDESCONTO.AsFloat;
                      Sds_Orcamentos_itens.Next;
                      Edit55.Text:= FloatToStr(A);
                      Edit56.Text:= FloatToStr(Z);
                      Edit57.Text:= FloatToStr(A - z);
                      end;
                      Sds_Orcamentos_itens.last;
                      Sds_Orcamentos_itens.Edit;

            DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
            end else

            Sds_Orcamentos_itens.Insert;

             if DBGRID1.COLUMNS.Grid.Fields[7].Text = '' then
             begin

           {  SPC_ITENS.ExecProc;
             N:= (SPC_ITENS.ParamByName('ATUAL').AsInteger);
             Sds_Orcamentos_itensCODIGO.AsString:=IntTostr(N); }
             NValor:=1;
             NItem:=NItem+NValor;
             Sds_Orcamentos_itensCODIGO.AsInteger:=(NItem);
           //  Sds_Orcamentos_itensCODIGO_PROD.Text := DM.SDS_produtosCODIGO.Text;
             Sds_Orcamentos_itensCODIGO_ID.Text := n_ORCA.Text;
             Sds_Orcamentos_itensQUANTIDADE.text := '0,00';
             Sds_Orcamentos_itensPRECO_UNITARIO.text := '0,00';
             Sds_Orcamentos_itensDESCONTO.text := '0,00';
             Sds_Orcamentos_itensPRECO_TOTAL.text := '0,00';
             Sds_Orcamentos_itensFRACAO.Text :='1';

                      Sds_Orcamentos_itens.First;
                      A:= 0;
                      z:= 0;
                      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                      z:= z + SDS_Orcamentos_itensDESCONTO.AsFloat;
                      Sds_Orcamentos_itens.Next;
                      Edit55.Text:= FloatToStr(A);
                      Edit56.Text:= FloatToStr(Z);
                      Edit57.Text:= FloatToStr(A);
                      While not Sds_Orcamentos_itens.Eof do
                      begin
                      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                      z:= z + SDS_Orcamentos_itensDESCONTO.AsFloat;
                      Sds_Orcamentos_itens.Next;
                      Edit55.Text:= FloatToStr(A);
                      Edit56.Text:= FloatToStr(Z);
                      Edit57.Text:= FloatToStr(A - z);
                      end;
                      Sds_Orcamentos_itens.last;
                      Sds_Orcamentos_itens.Edit;
                      Altera := false;
             end;
             end;
end;
end;

end;

procedure TformVendas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  DESCONTO : Real;
  DESC : string;
  saldo1 :string;
   Total, vp, z : real;
begin

  if (DBGrid1.SelectedField.FieldName = ComboEdit2.DataField) then
  begin
   ComboEdit2.Visible := True;
   ComboEdit2.SetFocus;
   SendMessage(ComboEdit2.Handle, WM_Char, word(Key), 0);
  end;

if (Key=#13) then
begin

Sds_Orcamentos_itens.Edit;

{if DBGRID1.COLUMNS.Grid.Fields[2].AsString > '' then
DBGRID1.COLUMNS.Grid.Fields[5].AsString := ((DBGRID1.COLUMNS.Grid.Fields[2].Value * DBGRID1.COLUMNS.Grid.Fields[3].Value) - DBGRID1.COLUMNS.Grid.Fields[4].Value) ;
end;}


if DBGRID1.COLUMNS.Grid.Fields[2].Text > '0' then
begin
   estoque := DM.SDS_PRODUTOSESTOQUE.AsFloat;
    quantidade := DBGRID1.COLUMNS.Grid.Fields[2].Value;
    saldo := (estoque - quantidade);
{ if DM.SDS_CONFIGURACOESestoque_negativo.text = 'N' then
      If saldo <= -1 then
        begin
          saldo1 := FloatToStr(saldo);
          MessageDlg( 'Não Há Saldo Suficiente em Estoque Saldo = '+saldo1,mtInformation,[mbOK],0);
          // MsgI.Text:= 'Não há Saldo em Estoque Suficiente... Não será Possivel Realizar a venda do Produto...';
           //MsgI.Showmodal;
           ComboEdit2.SetFocus;
           ComboEdit2.SelectAll;
        end;  }
   //DBGRID.COLUMNS.Grid.Fields[3].FocusControl;
end;
Sds_pedidos_itens.Edit;

if DBGRID1.COLUMNS.Grid.Fields[2].AsString > '0' then
DESCONTO := DBGRID1.COLUMNS.Grid.Fields[4].AsCurrency;
Total := DBGRID1.COLUMNS.Grid.Fields[2].Value * DBGRID1.COLUMNS.Grid.Fields[3].Value;
DESCONTO := ((DESCONTO * TOTAL)/100);

DESC := FormatCurr('0.00', DESCONTO);

DESCONTO := StrToFloat(DESC);

DBGRID1.COLUMNS.Grid.Fields[4].Value := DESCONTO;
DBGRID1.COLUMNS.Grid.Fields[5].Value := (TOTAL - DESCONTO);
end;
end;

procedure TformVendas.InserirORClick(Sender: TObject);
begin
 NItem:=0;

formvendas.Sds_orcamentos.Active := FALSE;
formvendas.Sds_orcamentos.Active := True;

formvendas.SDS_Orcamentos_itens.Active := False;
Formvendas.SDS_Orcamentos_itens.Active := True;

  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  RbPreco3.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  RbPreco4.Checked := True;
  end;

  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='S' then
  begin
  DBGRID1.Columns.Items[3].ReadOnly := False;
  end else
  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='N' then
  begin
  DBGRID1.Columns.Items[3].ReadOnly := True;
  end;

  IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
  BEGIN
  DBGRID1.Columns.Items[4].ReadOnly := True;
  END ELSE
  IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
  BEGIN
  DBGRID1.Columns.Items[4].ReadOnly := False;
  Edit56.Enabled := False;
  END;

 Edit55.Visible := true;
 Edit56.Visible := true;
 Edit57.Visible := true;

if FormPrincipal.Label3.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End else
if FormPrincipal.Label3.Caption ='S'then
begin
Sds_Orcamentos.Insert;
SPC_CODORC.ExecProc;
N:= (SPC_CODORC.ParamByName('ATUAL').AsInteger);
n_ORCA.Text:=IntTostr(N);
Dt_orc.Date := Date;

Sds_Orcamentos.Edit;

Sds_OrcamentosUsuario.Text := FormPrincipal.UserLogado;
If DM.SDS_Usuarios.locate('USUARIO',DBEdit8.Text,[])=True then
Sds_OrcamentosCOD_VENDEDOR.Text := DM.SDS_UsuariosCODIGO.Text;

Sds_OrcamentosEXPORTADO.TEXT := 'N';
Sds_OrcamentosCOD_PAGTO.Text := '1';
If DM.SDS_CondPagamento.locate('CODIGO',DBComboPgto.Text,[])=True then
Desc_cond_pagto.Text := DM.SDS_CondPagamentoDESCRICAO.Text;
Sds_orcamentosCOD_PAGTO.Text := DM.SDS_CondPagamentoCODIGO.Text;

 // OrComboEdit1.Clear;
//  Sds_orcamentosCODIGO_CLIENTE.text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;
  OrComboEdit1.Text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;
  OrComboEdit1Change(Sender);
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + OrComboEdit1.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  DM.SDS_Clientes.locate('CODIGO', RemoveChar(OrComboEdit1.Text),[]);
  OrComboEdit1.Text := RemoveChar(OrComboEdit1.Text);
//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
      Sds_OrcamentosNOME_CLIENTE.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      Sds_OrcamentosCODIGO_CLIENTE.Text :=DM.SDS_ClientesCODIGO.AsString;
      Sds_OrcamentosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
      Sds_OrcamentosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
      Sds_OrcamentosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
      Sds_Orcamentosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
      Sds_OrcamentosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
      Sds_OrcamentosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
      Sds_OrcamentosCEP.Text := removechar(DM.SDS_ClientesCEP.Text);
      Sds_OrcamentosUF.Text  := DM.SDS_ClientesUF.Text;
      Sds_OrcamentosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
      Sds_OrcamentosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
      Sds_OrcamentosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
      Sds_OrcamentosIE_PRODUTOR.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
      Sds_orcamentosPRODUTOR.Text   := DM.SDS_ClientesPRODUTOR_RURAL.Text;
      Sds_orcamentosSTATUS.Text    := '0';
      Sds_orcamentos.Post;

CancelarOr.Enabled:=True;
InserirOR.Enabled:= False;
pesquisaror.Enabled := False;
ConfirmarOr.Enabled := True;
GroupBox9.Enabled := True;
GroupBox8.Enabled := True;
GroupBox10.Enabled := True;
InserirOr.Enabled :=false;
suiButton1.Enabled :=false;
    Total:=0;
    soma:=0;
    Comissao:=0;
    EncFinanceiro:=0;

 IF DM.SDS_CONFIGURACOESCLIENTE_VENDEDOR.Text ='C' then
  begin
  OrComboEdit1.SetFocus;
  end else
  IF DM.SDS_CONFIGURACOESCLIENTE_VENDEDOR.Text ='V' then
  begin
  OrComboEdit2.SetFocus;
  OrComboEdit2.SelectAll;
  end;

  end;
end;


procedure TformVendas.RbPreco1Exit(Sender: TObject);
begin
DBGrid.SetFocus;
DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
end;

procedure TformVendas.ConfirmarOrClick(Sender: TObject);
 var
   Endercompo, Clio : String;
   i: Integer;
   DT: TDateTime;
   Days: Extended;
   Y: Byte;
    Parcela : integer;
    Total, vp, z : real;
    parcelado_total : Currency;
    Total1 : real;
begin

If OrComboEdit2.Text = '' then
begin

showmessage('Selecione o Vendedor, para Concluir o Orçamento!!!');
OrComboEdit2.SetFocus;
end else
begin
if  Sds_Orcamentos_itens.RecordCount = 0 then
  Begin
  ShowMessage('Não Há Itens na Lista de Compras! Você deve Inserir No Mínimo 01 Item Para Poder Concluir o Orçamento!');
  end else
            Sds_Orcamentos_itens.Last;
            
            with Sds_Orcamentos_itens do
            while Sds_Orcamentos_itensDESCRICAO_PRODUTO.AsString ='' do
            Sds_Orcamentos_itens.Delete;

            Sds_Orcamentos_itens.First;

//if Application.MESSAGEBOX('Confirma a Finalização do Orçamento?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) <> ID_YES then
 //Exit;

      orca := '';
      ORCA := IntToStr(N);

             // Sds_Orcamentos.Edit;


        //  total_venda := Edit57.Value;


          IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
          BEGIN
          Sds_orcamentos_itens.First;
          Contador := 0;
          Contador:= Sds_orcamentos_itens.RecordCount;
          i:=0;
          For I:=1 to Contador do
          begin
          Sds_orcamentos_itens.Edit;
          TOTAL1:= (Edit56.Value / Contador);
          Sds_orcamentos_itensDESCONTO.TEXT :=  FormatFloat('##,##0.00',Total1);
          Sds_orcamentos_itens.post;
          Sds_orcamentos_itens.Next;
          end;

          // ACHA RESTO DA DIVISÃO
          Sds_orcamentos_itens.First;
          Total1 := 0;
          z:= 0;
          z:= z + StrToFloatDef(Sds_orcamentos_itensDESCONTO.Text,0.00);
          Sds_orcamentos_itens.Next;
          TOTAL1 := z;
          While not Sds_orcamentos_itens.Eof do
          begin
          z:= z + StrToFloatDef(Sds_orcamentos_itensDESCONTO.Text,0.00);
          Sds_orcamentos_itens.Next;
          Total1:= z;
          end;
          Sds_orcamentos_itens.First;

          total_venda := (Total1 - Edit56.Value);

         // CurrencyEdit9.Value := total_venda;

          IF TOTAL1 > Edit56.Value then
          begin
           Sds_orcamentos_itens.Edit;
           Sds_orcamentos_itensDESCONTO.AsFloat := Sds_orcamentos_itensDESCONTO.AsFloat - total_venda;
           SDS_Orcamentos_Itens.Post;
          end ELSE

          IF TOTAL1 < Edit56.Value then
          begin
           Sds_orcamentos_itens.Edit;
           Sds_orcamentos_itensDESCONTO.AsFloat := Sds_orcamentos_itensDESCONTO.AsFloat + total_venda;
           Sds_orcamentos_itens.Post;
          end;


                      Sds_Orcamentos_itens.First;
                      A:= 0;
                      z:= 0;
                      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                      z:= z + SDS_Orcamentos_itensDESCONTO.AsFloat;
                      Sds_Orcamentos_itens.Next;
                      Edit55.Text:= FloatToStr(A);
                      Edit56.Text:= FloatToStr(Z);
                      Edit57.Text:= FloatToStr(A);
                      While not Sds_Orcamentos_itens.Eof do
                      begin
                      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                      z:= z + SDS_Orcamentos_itensDESCONTO.AsFloat;
                      Sds_Orcamentos_itens.Next;
                      Edit55.Text:= FloatToStr(A);
                      Edit56.Text:= FloatToStr(Z);
                      Edit57.Text:= FloatToStr(A - z);
                      end;
                      Sds_Orcamentos_itens.last;


             Sds_Orcamentos.edit;
             if Edit56.Text ='' then
              begin
              Sds_OrcamentosVALOR_DESCONTO.Text := '0,00';
              end else

              Sds_OrcamentosVALOR_DESCONTO.TEXT    := Edit56.Text;
              Sds_OrcamentosVALOR_ITENS.TEXT       := Edit55.TEXT;
              Sds_OrcamentosVALOR_TOTAL.Text       := FloatToStr(A - z);
              Sds_OrcamentosCod_EMPRESA.TEXT       := DM.SDS_EmpresaCODIGO.Text;
              Sds_Orcamentos.Post;
             //Sds_orcamentos.ApplyUpdates(0);
             // DESCONTOS
             end else

             IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
             BEGIN
              
                      Sds_Orcamentos_itens.First;
                      A:= 0;
                      z:= 0;
                      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                    ///  z:= z + SDS_Orcamentos_itensDESCONTO.AsFloat;
                      Sds_Orcamentos_itens.Next;
                      Edit55.Text:= FloatToStr(A);
                     // Edit56.Text:= FloatToStr(Z);
                      Edit57.Text:= FloatToStr(A);
                      While not Sds_Orcamentos_itens.Eof do
                      begin
                      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                     // z:= z + SDS_Orcamentos_itensDESCONTO.AsFloat;
                      Sds_Orcamentos_itens.Next;
                      Edit55.Text:= FloatToStr(A);
                      Edit56.Text:= FloatToStr(Z);
                      Edit57.Text:= FloatToStr(A - z);
                      end;
                      Sds_Orcamentos_itens.last;


             Sds_Orcamentos.edit;
             if Edit56.Text ='' then
              begin
              Sds_OrcamentosVALOR_DESCONTO.Text := '0,00';
              end else

              Sds_OrcamentosVALOR_DESCONTO.TEXT    := Edit56.Text;
              Sds_OrcamentosVALOR_ITENS.TEXT       := Edit55.TEXT;
              Sds_OrcamentosVALOR_TOTAL.Text       := Edit57.text;
              Sds_OrcamentosCod_EMPRESA.TEXT       := DM.SDS_EmpresaCODIGO.Text;
              Sds_Orcamentos.Post;
             end;

venda := (A - z);

juros :=  DM.SDS_CondPagamentoJUROS_BASE.AsCurrency;

Enc :=  ( venda * juros );
Encargos := venda + (Enc /100) - venda;
total_venda := (venda + Encargos);

parcelado_total     := ExatoCurrency(total_venda,2);

total     := ExatoCurrency(parcelado_total,2);

Parcela := DM.SDS_CondPagamentoNUMERO_PAR.AsInteger;
VP:= (Total/Parcela);


        try
          begin
           SPC_ORCAMENTO.Params[0].Value        := Sds_orcamentosCODIGO.Text;
           SPC_ORCAMENTO.Params[1].Value        := StrToFloatDef(Sds_orcamentosVALOR_ITENS.Text,0.00);//// formVendas.Total;
           SPC_ORCAMENTO.Params[2].Value        := StrToFloatDef(Sds_orcamentosVALOR_DESCONTO.Text,0.00);//(formVendas.Total - formVendas.ValCompra);
           SPC_ORCAMENTO.Params[3].Value        := StrToFloatDef(Sds_orcamentosVALOR_TOTAL.Text,0.00) + Encargos;// formVendas.ValCompra;
           SPC_ORCAMENTO.Params[4].Value        := Encargos; //Comissao;
           SPC_ORCAMENTO.Params[5].Text         := Sds_orcamentosUSUARIO.Text;
           SPC_ORCAMENTO.Params[6].AsDate       := Date; //formVendas.Sds_pedidosDATA_ENTREGA.AsDateTime;
           SPC_ORCAMENTO.Params[7].Value        := Sds_orcamentosCODIGO_CLIENTE.TEXT;
           SPC_ORCAMENTO.Params[8].Text         := Sds_orcamentosNOME_CLIENTE.Text;
           SPC_ORCAMENTO.Params[9].Text         := Sds_orcamentosPAGAMENTO.Text;
           SPC_ORCAMENTO.Params[10].Value       := StrToFloatDef(Sds_orcamentosENC_FINANCEIRO.Text,0.00); //formVendas.EncFinanceiro; ;
           SPC_ORCAMENTO.Params[11].Text        := Sds_orcamentosOBSERVACOES.Text;
           SPC_ORCAMENTO.Params[12].Value       := Sds_orcamentosCOD_VENDEDOR.Text;
           SPC_ORCAMENTO.Params[13].VALUE       := DM.SDS_EmpresaCODIGO.Text;
           SPC_ORCAMENTO.Params[14].Value       := Sds_orcamentosCOD_PAGTO.Text;
           SPC_ORCAMENTO.Params[15].Text        := Sds_orcamentosENDERECO.Text;
           SPC_ORCAMENTO.Params[16].Text        := Sds_orcamentosCIDADE.text;
           SPC_ORCAMENTO.Params[17].Text        := Sds_orcamentosFONE.Text;
           SPC_ORCAMENTO.Params[18].Text        := Sds_orcamentosBAIRRO.Text;
           SPC_ORCAMENTO.Params[19].Text        := Sds_orcamentosCPF_CNPJ.Text;
           SPC_ORCAMENTO.Params[20].Text        := Sds_orcamentosRG_IE.Text;
           SPC_ORCAMENTO.Params[21].text        := Sds_orcamentosEXPORTADO.text;
           SPC_ORCAMENTO.Params[22].text        := Sds_orcamentosUF.text;
           SPC_ORCAMENTO.Params[23].text        := Sds_orcamentosCOD_IBGE.text;
           SPC_ORCAMENTO.Params[24].text        := Sds_orcamentosCEP.text;
           SPC_ORCAMENTO.Params[25].VALUE       := Sds_orcamentosNUMERO.text;
           SPC_ORCAMENTO.Params[26].text        := Sds_orcamentosPRODUTOR.text;
           SPC_ORCAMENTO.Params[27].text        := Sds_orcamentosIE_PRODUTOR.text;
           SPC_ORCAMENTO.Params[28].text        := Sds_orcamentosTIPO.text;
           SPC_ORCAMENTO.Params[29].text        := Sds_orcamentosSTATUS.text;
           SPC_ORCAMENTO.Execproc;
           end;

            except
            ShowMessage('Erro ao gravar o Orçamento');
         {  on E: EDatabaseError do
                ShowMessage(E.Message);   }
            end;

              TRY
              Sds_Orcamentos_itens.First;
              Contador:=Sds_Orcamentos_itens.RecordCount;
              For I:=1 to Contador do
              begin
              SPC_ORC_ITENS.Params[0].Value      := 1;
              SPC_ORC_ITENS.Params[1].Value      := n_ORCA.text;
              SPC_ORC_ITENS.Params[2].Value      := Sds_Orcamentos_itensCODIGO_PROD.Text;
              SPC_ORC_ITENS.Params[3].VALUE      := Sds_Orcamentos_itensCODIGO_PRODUTO.text;
              SPC_ORC_ITENS.Params[4].VALUE      := Sds_Orcamentos_itensDESCRICAO_PRODUTO.Text;
              SPC_ORC_ITENS.Params[5].Value      := Sds_Orcamentos_itensPRECO_UNITARIO.value;
              SPC_ORC_ITENS.Params[6].Value      := Sds_Orcamentos_itensQUANTIDADE.value;
              SPC_ORC_ITENS.Params[7].Value      := Sds_Orcamentos_itensPRECO_TOTAL.value;
              SPC_ORC_ITENS.Params[8].Value      := 0;
              SPC_ORC_ITENS.Params[9].Value      := Sds_Orcamentos_itensDESCONTO.value;
              SPC_ORC_ITENS.Params[10].Value     := 0;
              SPC_ORC_ITENS.Params[11].Value     := Sds_Orcamentos_itensVENDEDOR.text;
              SPC_ORC_ITENS.Params[12].Value     := Sds_Orcamentos_itensSIT_TRIBUTARIA.text;
              SPC_ORC_ITENS.Params[13].AsString  := Sds_Orcamentos_itensUNIDADE.text;
              SPC_ORC_ITENS.Params[14].Value     := StrToIntDef(Sds_Orcamentos_itensFRACAO.text,0);
              SPC_ORC_ITENS.Params[15].AsString  := Sds_Orcamentos_itensCOD_NCM.text;
              SPC_ORC_ITENS.Params[16].asstring  := Sds_Orcamentos_itensPROD_SERV.text;
              SPC_ORC_ITENS.Params[17].Value     := StrToInt(Sds_Orcamentos_itensITEN.text);
              SPC_ORC_ITENS.Execproc;
              Sds_Orcamentos_itens.Next;
              end;
                except
              ShowMessage('Erro ao gravar os Itens do Orçamento');
              end;
                             // Sds_Orcamentos_itens.First;
                              GroupBox8.Enabled:= FALSE;
                              GroupBox10.Enabled:= FALSE;
                              GroupBox9.Enabled:= FALSE;
                              cancelarOR.Enabled:=FALSE;
                              Inseriror.Visible:= true;
                              InserirOR.Enabled:= TRUE;
                              pesquisarOR.Enabled := True;
                              suiButton1.Enabled := True;



sds_parcelas.Active := False;
sds_parcelas.Active := True;
 //DBGrid1.Enabled:= TRUE;
 try
if DM.SDS_CondPagamentoNUMERO_PAR.Value > 0 then
begin
Days:= DM.SDS_CondPagamentoVARIACAO_DIAS.AsInteger;
DT:= (formVendas.Dt_orc.Date + DM.SDS_CondPagamentoPIMEIRA_PAR.AsInteger) - Days;
//Libera_Insert := True;
//DBGrid1.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
Y:=0;
for Y := 1 to StrToInt(DM.SDS_CondPagamentoNUMERO_PAR.Text) do
begin
//if sds_parcelas.RecordCount < Y then
sds_parcelas.Insert;
//else
     sds_parcelas.Edit;
     DT:= DT +Days;
     sds_parcelas.FieldByname('CODIGO').AsInteger:= 0;
     sds_parcelas.FieldByname('ID_ORCAMENTO').AsInteger:= STrToInt(formVendas.n_ORCA.Text);
     sds_parcelas.FieldByname('DESC_COND_PGTO').AsString:= DM.SDS_CondPagamentoDESCRICAO.Text;
     sds_parcelas.FieldByname('Valor_Parc').Value:= VP;
     sds_parcelas.FieldByname('Parcela').AsString:=(IntToStr(Y)+'/'+DM.SDS_CondPagamentoNUMERO_PAR.Text);
     sds_parcelas.FieldByname('Data_Venc').Value:= DT;
     sds_parcelas.FieldByname('QUANT_PARCELAS').Text:= DM.SDS_CondPagamentoNUMERO_PAR.Text;
     sds_parcelas.Post;
     sds_parcelas.ApplyUpdates(0);
     sds_parcelas.Next;
     //sds_parcelas.Last;
end;
    // Libera_Insert := False;
   //  sds_parcelas.First;
end;
   except
    on E: EDatabaseError do
                ShowMessage(E.Message);
   end;

     Edit55.Visible := false;
     Edit56.Visible := false;
     Edit57.Visible := false;

     suiButton1.Enabled := True;


 If  n_ORCA.Text <> '' then
 Begin
  //  If ImpressaoOr.ShowModal = mryes then
 if Application.MESSAGEBOX('Confirma a Emissão do Orçamento', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
   // Exit;
  begin
    try
    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
    BEGIN
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    dmc.sds_parcelas_orc.Active:= False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    dmc.sds_parcelas_orc.Active:= true;

    Endercompo:= (Sds_OrcamentosENDERECO.Text + ' / ' + Sds_OrcamentosBAIRRO.Text
    + ' - ' + Sds_OrcamentosCIDADE.Text + ' - ' + Sds_OrcamentosFONE.Text);
    Clio:= (Sds_OrcamentosCODIGO_CLIENTE.Text + ' - ' + Sds_OrcamentosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteoAPELIDO.Text + ')');
    DMR.RvRelatorios.SetParam('Endero',Endercompo);
    DMR.RvRelatorios.SetParam('Clienteo',Clio);
    DMR.RvRelatorios.SelectReport('Rp_Orcamento',False);
    DMR.RvRelatorios.Execute;
    end else

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
    BEGIN
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    dmc.sds_parcelas_orc.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    dmc.sds_parcelas_orc.Active:= true;

    Endercompo:= (Sds_OrcamentosENDERECO.Text + ' / ' + Sds_OrcamentosBAIRRO.Text
    + ' - ' + Sds_OrcamentosCIDADE.Text + ' - ' + Sds_OrcamentosFONE.Text);
    Clio:= (Sds_OrcamentosCODIGO_CLIENTE.Text + ' - ' + Sds_OrcamentosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteoAPELIDO.Text + ')');
    DMR.RvRelatorios.SetParam('Endero',Endercompo);
    DMR.RvRelatorios.SetParam('Clienteo',Clio);
    DMR.RvRelatorios.SelectReport('Rp_Orcamento1',False);
    DMR.RvRelatorios.Execute;
    end;

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
    BEGIN
    DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    dmc.sds_parcelas_orc.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    dmc.sds_parcelas_orc.Active:= True;
    DM.SDS_CONFIGURACOES.Active:=true;
    FormRelOrcamentos := TFormRelOrcamentos.Create(self);
    FormRelOrcamentos.RLReport1.DefaultFilter.Destroy;
    FormRelOrcamentos.RLReport1.Prepare;
    FormRelOrcamentos.RLReport1.Print;
     END ELSE

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
    begin
    DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    dmc.sds_parcelas_orc.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    dmc.sds_parcelas_orc.Active:= true;
    DM.SDS_CONFIGURACOES.Active:=true;
    FormRelOrcamentos := TFormRelOrcamentos.Create(self);
    FormRelOrcamentos.RLReport1.Prepare;
    FormRelOrcamentos.RLReport1.Print;
    end;


    IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q') or (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '4')  THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
     begin
        DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    dmc.sds_parcelas_orc.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    dmc.sds_parcelas_orc.Active:= True;
    FormORCA80COL := TFormORCA80COL.Create(self);
    FormORCA80COL.RLReport1.DefaultFilter.Destroy;
    FormORCA80COL.RLReport1.Prepare;
    if DM.SDS_CONFIGURACOESPREVIEW.text= 'N' then
    FormORCA80COL.RLReport1.Print
    else
    FormORCA80COL.RLReport1.PreviewModal;

     END ELSE
   IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q') or (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '4')  THEN
   IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
   BEGIN
    DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    dmc.sds_parcelas_orc.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    dmc.sds_parcelas_orc.Active:= true;
    FormORCA80COL := TFormORCA80COL.Create(self);
    FormORCA80COL.RLReport1.Prepare;
    if DM.SDS_CONFIGURACOESPREVIEW.text= 'N' then
    FormORCA80COL.RLReport1.Print
    else
    FormORCA80COL.RLReport1.PreviewModal;

    end;
     IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '3') THEN
      //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
      DM.SDS_Empresa.Active := False;
      DM.SDS_CONFIGURACOES.Active:=False;
      DMC.SDS_Clienteo.Active:= False;
      dmc.sds_parcelas_orc.Active:= False;
      DMC.SDS_Orcamento_Itens.Active:= False;
      DMC.SQLD_Orcamentos.Active:=False;
      DMC.CDS_Orcamentos.Active:=False;
      DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
      DMC.SQLD_Orcamentos.Active:=True;
      DMC.CDS_Orcamentos.Active:=True;
      DMC.SDS_Orcamento_Itens.Active:= True;
      DMC.SDS_Clienteo.Active:= True;
      DM.SDS_Empresa.Active := true;
      DM.SDS_CONFIGURACOES.Active:=true;
      dmc.sds_parcelas_orc.Active:= true;

      ImprimeOrcamento;

     end;


    except
     ShowMessage('Não foi possivel Imprimir o Orçamento!');

     end;

    end;

                      GroupBox8.Enabled := False;
                      GroupBox10.Enabled := False;
                      GroupBox9.Enabled := False;
                      ConfirmarOr.Enabled := False;

   end;
end;
end;


procedure TformVendas.CancelarOrClick(Sender: TObject);
begin
//MSG_CD.Text:='';
//MSG_CD.Text:= 'Confirma o Cancelamento do Orçamento?';
//if Msg_cd.Showmodal = mryes then
if Application.MESSAGEBOX('Confirma o Cancelamento do Orçamento', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
//Exit;
begin
Sds_Orcamentos.Cancel;
Sds_Orcamentos.CancelUpdates;
Sds_Orcamentos_itens.Cancel;
Sds_Orcamentos_itens.CancelUpdates;
CancelarOr.Enabled:=false;
InserirOR.Enabled:= true;
PesquisarOR.Enabled := true;
confirmaror.Enabled := false;
GroupBox8.Enabled := false;
GroupBox10.Enabled := false;
groupbox9.Enabled := false;

{Sds_Orcamentos.Active := FALSE;
Sds_Orcamentos_itens.Active := FALSE;
Sds_Orcamentos.Active := True;
Sds_Orcamentos_itens.Active := True;
Sds_Orcamentos.Last; }
//Sds_pedidos_itens.Active := False;
//Sds_pedidos.Active := True;
//Sds_pedidos_itens.Active := True;
//Sds_pedidos.Last;

end else
begin
//if Msg_cd.Showmodal = mrno then
DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
Sds_Orcamentos_itens.Edit;
ComboEdit2.Visible := True;
ComboEdit2.SetFocus
end;
end;

procedure TformVendas.ComboEdit2ButtonClick(Sender: TObject);
var
  N: Integer;
begin
{ ATIVO := 'A';
 DM.SDS_PRODUTOS_C.Filtered := False;
 dm.SDS_PRODUTOS_C.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;}

Sds_Orcamentos_itens.Edit;

//if DBGRID1.COLUMNS.Grid.Fields[7].Text = '' then

{SPC_ITENS.ExecProc;
N:= (SPC_ITENS.ParamByName('ATUAL').AsInteger);
Sds_Orcamentos_itensCODIGO.AsString:=IntTostr(N);  }
NValor:=1;
NItem:=NItem+NValor;
Sds_Orcamentos_itens.Edit;
Sds_Orcamentos_itensCODIGO.AsInteger:=(NItem);
Sds_Orcamentos_itensITEN.AsInteger :=(NItem);
Sds_Orcamentos_itensCODIGO_PROD.Text := '1';
Sds_Orcamentos_itensCODIGO_ID.Text := n_ORCA.Text;
Sds_Orcamentos_itensQUANTIDADE.Text := '0,00';
Sds_Orcamentos_itensPRECO_UNITARIO.Text := '0,00';
Sds_Orcamentos_itensDESCONTO.Text := '0,00';
Sds_Orcamentos_itensPRECO_TOTAL.Text := '0,00';
 {if Sds_Orcamentos.State in [dsInsert, dsEdit, dsSetKey] then
begiN
Sds_Orcamentos.Post;
end else }

 FormConsProdutosVendas:=NIL;
 FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
 FormConsProdutosVendas.Showmodal;
 Sds_Orcamentos_itens.edit;
 Sds_Orcamentos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_CCODIGO.Text;
 ComboEdit2.Text := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
 ComboEdit2Change(Sender);
 Sds_Orcamentos_itens.Edit;
 InsereItemor;
 DBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
 Sds_Orcamentos_itens.edit;
end;

procedure TformVendas.ExcluirOrClick(Sender: TObject);
var
  pedido :string;
  E:Integer;
begin
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);

//Msg_cd.Text:= 'Confirma Exclusão da Venda?';
//if Msg_cd.Showmodal = mryes then
 if Application.MESSAGEBOX('Confirma a Exclusão do Orçamento?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 // Exit;
Try
 Begin
              if Sds_Orcamentos_itens.RecordCount = 0 then
              begin
              Sds_Orcamentos_itens.Cancel;
              end else
              begin
              with Sds_Orcamentos_itens do
              while Sds_Orcamentos_itens.RecordCount > 0 do
              Sds_Orcamentos_itens.Delete;
              Sds_Orcamentos_itens.ApplyUpdates(0);
              end;

             Sds_Orcamentos.Delete;
             Sds_Orcamentos.ApplyUpdates(0);
             if Sds_Orcamentos.RecordCount = 0 then
             begin
             Sds_Orcamentos.CancelRange;
             end;
              GroupBox8.Enabled := False;
              GroupBox9.Enabled := False;
              GroupBox10.Enabled := False;
              end;
     Except

end;

end;

procedure TformVendas.ComboEdit2Click(Sender: TObject);
begin
Sds_Orcamentos_itens.Edit;

end;

procedure TformVendas.ComboEdit2KeyPress(Sender: TObject; var Key: Char);
begin
//if not (Key in [#8,#32, #13, 'a'..'z', 'A'..'Z', '0'..'9'])then
//begin
//ShowMessage(key+ ' é um caracter inválido, digite apenas letras ou números');
//key := #0;
//end;

if (Key=#13) then
begin
 {ATIVO := 'A';
 DM.SDS_PRODUTOS.Filtered := False;
 dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;

    If DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit2.Text,[])=True then
      begin
      Sds_Orcamentos_itens.edit;
      InsereItemor;
      DBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
        end else

    if ComboEdit2.Text > '' then
    if not DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit2.Text,[]) then
    begin
      FormConsProdutosOrca:=NIL;
      FormConsProdutosOrca:=TFormConsProdutosOrca.Create(self);
      FormConsProdutosOrca.Showmodal;
      ComboEdit2.Clear;
      Sds_Orcamentos_itens.edit;
      Sds_Orcamentos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOSCODIGO_BARRAS.Text;
      ComboEdit2.SetFocus;
      //  InsereItemor;
      // DBGRID1.COLUMNS.Grid.Fields[3].FocusControl;}

Sds_Orcamentos_itens.edit;
if Altera = False then
begin
if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
  if ComboEdit2.Text > '' then
 begin
 Sds_Orcamentos_itensCODIGO_PROD.Text := '1';
 FormConsProdutosVendas:=NIL;
 FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
 FormConsProdutosVendas.Edit1.Text := ComboEdit2.Text;
 FormConsProdutosVendas.Showmodal;
 Sds_Orcamentos_itensCODIGO_PRODUTO.TEXT   := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
 Sds_Orcamentos_itensCODIGO_PROD.Text      := DM.SDS_PRODUTOS_cCODIGO.Text;
 InsereItemor;
 DBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
 end;
{IF ACHOU=FALSE THEN
//SHOWMESSAGE('Produto Não Localizado');

IF ACHOU=TRUE THEN }

  END;

  IF EDIT2.Text='NUMEROS' THEN
  BEGIN
  if ComboEdit2.Text > '' then
  begin
   //ComboEdit1.Text := FormatFloat('0000',StrToFloat(ComboEdit1.Text));
   //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
    if (dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '2') or (dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '0') or (dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '1') then
    begin
    dm.SDS_PRODUTOS_c.Active := false;
    DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + ComboEdit2.Text + '%' + #39+'ORDER BY DESCRICAO asc';
    dm.SDS_PRODUTOS_c.Active := True;
    ATIVO := 'A';
    DM.SDS_PRODUTOS_C.Filtered := False;
    DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
    dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', ComboEdit2.Text,[])=True then
      begin
      Sds_Orcamentos_itens.Edit;

      Sds_Orcamentos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Sds_Orcamentos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
      InsereItemor;
       SDS_Orcamentos_itensQUANTIDADE.Text :='1,000';
      DBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', ComboEdit2.Text,[])=True then
      begin
      // SHOWMESSAGE('Produto Não Localizado');
       FormConsProdutosVendas:=NIL;
       FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
      // FormConsProdutosVendas.Edit1.Text := ComboEdit2.Text;
       FormConsProdutosVendas.Showmodal;
       Sds_Orcamentos_itensCODIGO_PRODUTO.TEXT   := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
       Sds_Orcamentos_itensCODIGO_PROD.Text      := DM.SDS_PRODUTOS_cCODIGO.Text;
       InsereItemor;
       SDS_Orcamentos_itensQUANTIDADE.Text :='1,000';
       DBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
      end;
      end;

      if dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '4' then
      begin
      dm.SDS_PRODUTOS_c.Active := false;
      DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO like ' + #39 + '%' +  RemoveChar(ComboEdit2.Text) + '%' + #39+'ORDER BY DESCRICAO asc';
      dm.SDS_PRODUTOS_c.Active := True;
      ATIVO := 'A';
      DM.SDS_PRODUTOS_C.Filtered := False;
      DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
      dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO',  RemoveChar(ComboEdit2.Text),[])=True then
      begin
      Sds_Orcamentos_itens.edit;
      InsereItemor;
      Sds_Orcamentos_itensCODIGO_PRODUTO.TEXT   := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Sds_Orcamentos_itensCODIGO_PROD.Text      := DM.SDS_PRODUTOS_cCODIGO.Text;
      DBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
      end;
    {  If not DM.SDS_PRODUTOS_C.locate('CODIGO', (SDS_Orcamentos_itensCODIGO_PROD.Text),[])=True then
      begin
      ShowMessage('Código do produto não localizado');
       // comboedit1.setfocus;
      end;   }
       end;



  end;
  END;
end;
{IF ACHOU=TRUE THEN

IF ACHOU=FALSE THEN
//SHOWMESSAGE('Produto Não Localizado');
end;}

   if Key=#36 then
      begin
         OrComboEdit1.SetFocus;
         OrComboEdit1ButtonClick(Sender);
      end;


{end else
begin
  DBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
end;  }

end;
end;

procedure TformVendas.RbPreco3Exit(Sender: TObject);
begin
DBGrid1.SetFocus;
DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
end;

procedure TformVendas.act_PostoRegistrosExecute(Sender: TObject);
var
  Key: Char;
  keyWord: Word;
  vPostoRegistro: TPostoRegistro;
begin
  if Sds_pedidos_itens.State in [dsInsert, dsEdit] then
    exit;

  try
    frmRegistrosPostoList:= TfrmRegistrosPostoList.Create(nil);
    frmRegistrosPostoList.ShowModal;

    if TAuth.PostoRegistroId <> '' then
    begin
      vPostoRegistro:= TPostoRegistro.find(TAuth.PostoRegistroId);
      Inserir.Click;
      dbgrid.SetFocus;
      //ComboEdit1.Text:= IntToStr(vPostoRegistro.bico.IdProduto);
      Key:= #13;
      KeyWord:= Word(#13);
      ComboEdit1.OnKeyPress(ComboEdit1, Key);
      Sds_pedidos_itensQUANTIDADE.Text := Tlibrary.ExtendedToString(vPostoRegistro.TotalDeLitro);
      DBGRID.COLUMNS.Grid.Fields[3].FocusControl;
      dbgridKeyDown(dbGrid, KeyWord, []);
      DBGRID.COLUMNS.Grid.Fields[6].FocusControl;
      dbgridKeyDown(dbGrid, KeyWord, []);
    end;
  finally
    FreeAndNil(vPostoRegistro);
    FreeAndNil(frmRegistrosPostoList);
  end;
end;

procedure TformVendas.AlterarOrClick(Sender: TObject);
VAR
  ORC: string;
begin
 //Msg_cd.Text:= '';
 //Msg_cd.Text:= 'Confirma a  Alteração do Orçamento?';
//if Msg_cd.Showmodal = mryes then
 if Application.MESSAGEBOX('Confirma a Alteração do Orçamento?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
  {orc :=  n_ORCA.Text;

            cds_orca_itens.Active := False;
            cds_orca_itens.DataSet.CommandText:='select * from ORCAMENTOS_ITENS where CODIGO_ID ='+QuotedStr(orc);
            CDS_oRca_ITENS.Active := true;
            begin
            with CDS_orca_ITENS do
            while CDS_orca_ITENS.RecordCount > 0 do
            CDS_orca_ITENS.Delete;
            CDS_orca_ITENS.ApplyUpdates(0);
            end;     }

              begin
              SPC_DELETE_ORC_ITENS.ParamByname('CODIGO_ID').AsInteger := StrToInt(N_ORCA.Text);
              SPC_DELETE_ORC_ITENS.ExecProc;
              end;

   IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  RbPreco3.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  RbPreco4.Checked := True;
  end;

  Edit55.Visible := true;
  Edit56.Visible := true;
  Edit57.Visible := true;

  edit55.text := Sds_OrcamentosVALOR_ITENS.text;
  Edit56.Text := Sds_OrcamentosVALOR_DESCONTO.text;
  Edit57.text := Sds_OrcamentosVALOR_TOTAL.text;

  Sds_Orcamentos.Edit;
  //Sds_Orcamentos_itens.edit;
  GroupBox8.Enabled:= True;
  GroupBox9.Enabled:= true;
  GroupBox10.Enabled:= true;
  CancelarOr.Enabled:=True;
  Inseriror.Visible:= False;
  CancelarOr.Enabled := False;
  pesquisaror.Enabled := False;
  ConfirmarOr.Enabled := True;




{DM.SDS_CLIENTES.Active := FALSE;
DM.SDS_CLIENTES.DataSet.CommandText:= 'SELECT * FROM CLIENTES order by nome_rs asc';
DM.SDS_CLIENTES.Active := TRUE;}
NItem:=Sds_Orcamentos_itensITEN.Value;

If DM.SDS_Clientes.locate('CODIGO',OrComboEdit1.Text,[])=True then
begin
DBEdit6.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
end;
Sds_Orcamentos.Post;


Sds_Orcamentos_itens.Last;
Sds_Orcamentos_itens.Insert;
DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
Sds_Orcamentos_itens.Edit;
ComboEdit2.Visible := True;
ComboEdit2.SetFocus;

if Sds_Orcamentos_itens.Eof then
begin
IF DBGRID1.COLUMNS.Grid.Fields[0].Text >'' then
begin
 Sds_Orcamentos_itens.Insert;
 DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
ComboEdit2.Visible := True;
ComboEdit2.SetFocus;
 Sds_Orcamentos_itens.Edit;

end;


Sds_Orcamentos_itens.Last;

{Sds_Orcamentos_itens.Last;
DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
Sds_Orcamentos_itens.Edit;
ComboEdit2.Visible := True;
ComboEdit2.SetFocus   }

end;
end;
end;


procedure TformVendas.ReinprimirORClick(Sender: TObject);
var
  Endercompo, Clio : String;
begin
  orca := '';
  ORCA :=  IntToStr(N);
  If  n_ORCA.Text <> '' then
   Begin
   // If ImpressaoOr.ShowModal = mryes then
   if Application.MESSAGEBOX('Confirma a Emissão do Orçamento?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    try
    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
    BEGIN
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;

    Endercompo:= (Sds_OrcamentosENDERECO.Text + ' / ' + Sds_OrcamentosBAIRRO.Text
    + ' - ' + Sds_OrcamentosCIDADE.Text + ' - ' + Sds_OrcamentosFONE.Text);
    Clio:= (Sds_OrcamentosCODIGO_CLIENTE.Text + ' - ' + Sds_OrcamentosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteoAPELIDO.Text + ')');
    DMR.RvRelatorios.SetParam('Endero',Endercompo);
    DMR.RvRelatorios.SetParam('Clienteo',Clio);
    DMR.RvRelatorios.SelectReport('Rp_Orcamento',False);
    DMR.RvRelatorios.Execute;
    end else

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
    BEGIN
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;

    Endercompo:= (Sds_OrcamentosENDERECO.Text + ' / ' + Sds_OrcamentosBAIRRO.Text
    + ' - ' + Sds_OrcamentosCIDADE.Text + ' - ' + Sds_OrcamentosFONE.Text);
    Clio:= (Sds_OrcamentosCODIGO_CLIENTE.Text + ' - ' + Sds_OrcamentosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteoAPELIDO.Text + ')');
    DMR.RvRelatorios.SetParam('Endero',Endercompo);
    DMR.RvRelatorios.SetParam('Clienteo',Clio);
    DMR.RvRelatorios.SelectReport('Rp_Orcamento1',False);
    DMR.RvRelatorios.Execute;
    end;

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
    BEGIN
    DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    FormRelOrcamentos := TFormRelOrcamentos.Create(self);
    FormRelOrcamentos.RLReport1.DefaultFilter.Destroy;
    FormRelOrcamentos.RLReport1.Prepare;
    FormRelOrcamentos.RLReport1.PreviewModal;
    END ELSE

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
    begin
    DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    FormRelOrcamentos := TFormRelOrcamentos.Create(self);
    FormRelOrcamentos.RLReport1.Prepare;
    FormRelOrcamentos.RLReport1.PreviewModal;
    end;

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
     begin
        DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    FormORCA80COL := TFormORCA80COL.Create(self);
    FormORCA80COL.RLReport1.DefaultFilter.Destroy;
    FormORCA80COL.RLReport1.Prepare;
    FormORCA80COL.RLReport1.PreviewModal;
     END ELSE
   IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q' THEN
   IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
   BEGIN
    DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := n_ORCA.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    FormORCA80COL := TFormORCA80COL.Create(self);
    FormORCA80COL.RLReport1.Prepare;
    FormORCA80COL.RLReport1.PreviewModal;
    end;

    except
    ShowMessage('Erro na Impressão do Orçamento!');
     end;
    end;
end;

procedure TformVendas.DBComboPgtoEnter(Sender: TObject);
begin
Sds_Orcamentos.Edit;
CorEntrada(sender);
end;

procedure TformVendas.suiButton1Click(Sender: TObject);
var
 E, N, Contador: Integer;
begin
if Application.MESSAGEBOX('Confirma a Geração da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
if not sds_orcamentos.Eof then
  begin
Sds_pedidos.Insert;
Sds_pedidos.EDIT;
SPC_Codigo.ExecProc;
N:= (SPC_Codigo.ParamByName('ATUAL').AsInteger);
Sds_pedidosCODIGO.Text :=IntTostr(N);
N_venda.Text          := IntToStr(N);
Sds_pedidosDATA_PEDIDO.AsDateTime  := date;
Sds_pedidosDATA_ENTREGA.AsDateTime := date;
Sds_pedidosVALOR_ITENS.Text       := Sds_OrcamentosVALOR_ITENS.Text;
Sds_pedidosVALOR_DESCONTO.Text    := Sds_OrcamentosVALOR_DESCONTO.Text;
Sds_pedidosVALOR_TOTAL.Text       := Sds_OrcamentosVALOR_TOTAL.Text;
Sds_pedidosCODIGO_CLIENTE.Text    := Sds_OrcamentosCODIGO_CLIENTE.Text;
DBComboCliente.Text               := Sds_OrcamentosCODIGO_CLIENTE.Text;
Sds_pedidosNOME_CLIENTE.Text      := Sds_OrcamentosNOME_CLIENTE.Text;
Sds_pedidosENC_FINANCEIRO.Text    := Sds_OrcamentosENC_FINANCEIRO.Text;
Sds_pedidosCOD_PAGTO.Text         := Sds_OrcamentosCOD_PAGTO.Text;
Sds_pedidosPAGAMENTO.Text         := Sds_OrcamentosPAGAMENTO.Text;
Sds_pedidosOBSERVACOES.text       := Sds_OrcamentosOBSERVACOES.text;
Sds_pedidosCOD_VENDEDOR.text      := Sds_OrcamentosCOD_VENDEDOR.text;
Sds_pedidosUSUARIO.Text           := Sds_OrcamentosUSUARIO.Text;
Sds_pedidosCOD_EMPRESA.Text       := Sds_OrcamentosCOD_EMPRESA.Text;

Sds_pedidosENDERECO.Text := Sds_OrcamentosENDERECO.AsString;
Sds_pedidosCPF_CNPJ.Text := Sds_OrcamentosCPF_CNPJ.Text;
Sds_pedidosRG_IE.Text :=    Sds_OrcamentosRG_IE.Text;
Sds_pedidosfone.Text :=     Sds_OrcamentosFONE.Text;
Sds_pedidosCIDADE.Text :=   Sds_OrcamentosCIDADE.AsString;
Sds_pedidosBAIRRO.Text :=   Sds_OrcamentosBairro.Text;
//Sds_pedidosPROPRIEDADE.Text := Sds_OrcamentosNOME_PROPRIEDADE.Text;
//Sds_pedidosMED_VETERINARIO.Text := Sds_OrcamentosNOME_VETERINARIO.Text;
Sds_pedidosCEP.Text := removechar(Sds_OrcamentosCEP.Text);
Sds_pedidosUF.Text  := Sds_OrcamentosUF.Text;
Sds_pedidosCOD_IBGE.Text := Sds_OrcamentosCOD_IBGE.Text;
Sds_pedidosNUMERO.AsInteger := StrToIntDef(Sds_OrcamentosNUMERO.Text,0);
Sds_pedidosTIPO.TEXT        := Sds_OrcamentosTIPO.Text;
Sds_pedidosIE_PRODUTOR.Text  := Sds_OrcamentosIe_PRODUTOR.Text;
Sds_pedidosPROD_RURAL.Text   := Sds_orcamentosPRODUTOR.Text;
Sds_pedidoskm.Text                := '0';
Sds_pedidosCOD_ORCAMENTO.Text   := Sds_orcamentoscodigo.Text;


            Sds_Orcamentos_itens.Last;
            with Sds_Orcamentos_itens do
            while Sds_Orcamentos_itensDESCRICAO_PRODUTO.AsString ='' do
            Sds_Orcamentos_itens.Delete;
Sds_pedidos.Post;

DM.sds_orcamento_itens.last;
formvendas.NItem  :=DM.sds_orcamento_itensiten.value ;

 Sds_Orcamentos_itens.First;
Contador := Sds_Orcamentos_itens.RecordCount;
For E:=1 to Contador do
begin
Sds_pedidos_itens.Insert;
Sds_pedidos_itens.Edit;
//SPC_COD_ITENS.ExecProc;
//N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
Sds_pedidos_itensCODIGO.AsString           := '1'; //IntTostr(N);
Sds_pedidos_itensCODIGO_ID.Text            := N_venda.Text;
Sds_pedidos_itensCODIGO_PROD.Text          := Sds_Orcamentos_itensCODIGO_PROD.Text;
Sds_pedidos_itensCODIGO_PRODUTO.Text       := Sds_Orcamentos_itensCODIGO_PRODUTO.Text;
Sds_pedidos_itensDESCRICAO_PRODUTO.Text    := Sds_Orcamentos_itensDESCRICAO_PRODUTO.Text;
Sds_pedidos_itensDESCONTO.TEXT             := Sds_Orcamentos_itensDESCONTO.Text;
Sds_pedidos_itensQUANTIDADE.Text           := Sds_Orcamentos_itensQUANTIDADE.Text;
Sds_pedidos_itensPRECO_UNITARIO.AsFloat    := Sds_Orcamentos_itensPRECO_UNITARIO.AsFloat;
Sds_pedidos_itensPRECO_TOTAL.Text          := Sds_Orcamentos_itensPRECO_TOTAL.Text;
Sds_pedidos_itensVENDEDOR.Text             := Sds_Orcamentos_itensVENDEDOR.Text;
Sds_pedidos_itensUNIDADE.Text              := Sds_Orcamentos_itensUNIDADE.Text;
Sds_pedidos_itensSIT_TRIBUTARIA.Text       := Sds_Orcamentos_itensSIT_TRIBUTARIA.Text;
Sds_pedidos_itensENC_FINANCEIRO.TEXT       := Sds_Orcamentos_itensENC_FINANCEIRO.Text;
Sds_pedidos_itensFRACAO.text               := Sds_Orcamentos_itensFRACAO.Text;
Sds_pedidos_itensCOD_NCM.Text              := Sds_Orcamentos_itensCOD_NCM.Text;
Sds_pedidos_itensPROD_SERV.Text            := Sds_Orcamentos_itensPROD_SERV.TEXT;
Sds_pedidos_itensITEN.Text                 := Sds_Orcamentos_itensITEN.Text;
Sds_Orcamentos_itens.next;
end;
Sds_pedidos_itens.Post;


{Sds_Orcamentos.Edit;
Sds_OrcamentosEXPORTADO.TEXT := 'S';
Sds_Orcamentos.Post;
Sds_Orcamentos.ApplyUpdates(0);}
//Sds_pedidos_itens.Post;
Pc.ActivePageIndex := 1;
Tvendas.PageIndex := 1;
Inserir.Enabled:= False;
pesquisar.Enabled := False;
confirmar.Enabled := True;

GroupBox1.Enabled := True;
GroupBox2.Enabled := True;
groupbox3.Enabled := True;
cancelar.Enabled:=true;

 Edit60.Visible := true;
 E_desconto.Visible := true;
 Edit62.Visible := true;

 IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  RbPreco1.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  RbPreco2.Checked := True;
  end;

  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='S' then
  begin
  DBGRID.Columns.Items[3].ReadOnly := False;
  end else
  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='N' then
  begin
  DBGRID.Columns.Items[3].ReadOnly := True;
  end;

  if Tag = 0 then
begin
if DM.SDS_CONFIGURACOESREGISTRADORA.Text = 'S' then
begin
N_venda.Text :='0';
CheckBox5.Checked := True;
end else
begin
CheckBox4.Checked := True;
end;
end;


                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                      BEGIN
                      Sds_pedidos_itens.First;
                      A:= 0;
                      Desc := 0;
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      While not Sds_pedidos_itens.Eof do
                      begin
                      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      Desc:= Desc  + sds_pedidos_itensDESCONTO.AsFloat;
                      Sds_pedidos_itens.Next;
                      Edit60.Text:= FloatToStr(A + desc);
                      Edit62.Text:= FloatToStr(A );
                      E_desconto.Text := FloatToStr(desc);
                      end;
                      Sds_pedidos_itens.last;
                      end;

    {  formVendas.Sds_pedidos_itens.last;
      formvendas.Sds_pedidos_itens.Insert;


      formVendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
      formVendas.Sds_pedidos_itens.Edit;
      formVendas.ComboEdit1.Visible := True;
      formVendas.ComboEdit1.SetFocus;
      suiButton1.Enabled := False;   }

      formVendas.Sds_pedidos_itens.last;
      IF formVendas.sds_pedidos_itens.RecordCount > 0 then
      begin
      Sds_Orcamentos_itens.last;
     // formvendas.NValor:=Sds_Orcamentos_itensITEN.value;
    //  formvendas.NItem:=formvendas.NItem+formvendas.NValor;
      formvendas.Sds_pedidos_itens.Insert;
     // formvendas.Sds_pedidos_itensCODIGO.AsInteger:=(formvendas.NItem);
     // formvendas.Sds_pedidos_itensITEN.AsInteger :=(formvendas.NItem);
      formvendas.Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      formvendas.Sds_pedidos_itensCODIGO_ID.Text := formvendas.N_venda.Text;
      formvendas.Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      formvendas.Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      formvendas.Sds_pedidos_itensDESCONTO.Text := '0,00';
      formvendas.Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      formvendas.Sds_pedidos_itensFRACAO.Text := '1';
      end;


      formVendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;

      formVendas.Sds_pedidos_itens.last;
      formVendas.Sds_pedidos_itens.Edit;
      formVendas.ComboEdit1.Visible := True;
      formVendas.ComboEdit1.SetFocus;
end;

    {  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;
       with dm.FConsulta do
      begin
         close;
         COMMANDTEXT.Clear;
         COMMANDTEXT.Text:= 'update orcamentos set status = 1, EXPORTADO = ' + '''S''' +' WHERE CODIGO =:VENDA AND COD_EMPRESA =:COD_EMP';
            Parambyname('VENDA').AsInteger    := SDS_ORCAMENTOSCODIGO.ASinteger;
            Parambyname('COD_EMP').AsInteger    := IEMP;
         OPEN;
      end;
   dm.IBTransaction.Commit;
   dm.FConsulta.Close;  }
end;
end;



procedure TformVendas.DBComboPgtoButtonClick(Sender: TObject);
begin
     DBComboPgto.Clear;
     Sds_Orcamentos.Edit;
     FormConsCondPagamento:=NIL;
     FormConsCondPagamento:=TFormConsCondPagamento.Create(self);
     FormConsCondPagamento.ShowModal;
     Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
     Sds_orcamentosCOD_PAGTO.Text:=DM.SDS_CondPagamento.Fieldbyname('CODIGO').AsString;


     if DM.SDS_CondPagamento.RecordCount = 0 then
     begin
     ShowMessage('Não Existe Condição de Pagamento Cadastrada! Você Deve Cadastrar Uma Condição de Pagamento Para Continuar Com o Orçamento!');
     //MSGA.ShowModal;
     Close;
     end else

       begin

       IF DM.SDS_CondPagamentoSTATUS.Value <> 'S' THEN
        BEGIN
        ShowMessage('Condição de Pagamento Inativa no Momento! Escolha Outra Condição de Pagmaneto!');
        //MSGA.ShowModal;
        end else
        begin
        Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
        DBComboPgto.Text:=DM.SDS_CondPagamento.Fieldbyname('CODIGO').AsString;

        end;
        DBComboPgto.SetFocus;
end;
end;

procedure TformVendas.DBComboPgtoExit(Sender: TObject);
begin
DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[loCaseinSensitive]);
Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
  DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
  ComboEdit2.Visible := True;
  ComboEdit2.SetFocus;
end;

procedure TformVendas.ComboEdit1Enter(Sender: TObject);
var
  N : Integer;
begin

if Sds_pedidos.State in [dsInsert, dsEdit, dsSetKey] then
begin
Sds_pedidos.Post;
end;

Sds_pedidos_itens.Edit;

if DBGRID.COLUMNS.Grid.Fields[7].Text = '' then
begin
NValor:=1;
NItem:=NItem+NValor;
Sds_pedidos_itensCODIGO.AsInteger:=(NItem);
Sds_pedidos_itensITEN.AsInteger :=(NItem);
Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
Sds_pedidos_itensQUANTIDADE.Text := '0,00';
Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
Sds_pedidos_itensDESCONTO.Text := '0,00';
Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
Sds_pedidos_itensFRACAO.Text := '1';
end;
end;


procedure TformVendas.ComboEdit2Enter(Sender: TObject);
var
  n: Integer;
begin
if Sds_Orcamentos.State in [dsInsert, dsEdit, dsSetKey] then
begin
Sds_Orcamentos.Post;
end;

Sds_Orcamentos_itens.Edit;

if DBGRID1.COLUMNS.Grid.Fields[7].Text = '' then
begin
{SPC_ITENS.ExecProc;
N:= (SPC_ITENS.ParamByName('ATUAL').AsInteger);
Sds_Orcamentos_itensCODIGO.AsString:=IntTostr(N); }
NValor:=1;
NItem:=NItem+NValor;
Sds_Orcamentos_itensCODIGO.AsInteger:=(NItem);
Sds_Orcamentos_itensCODIGO_PROD.Text := '1';
Sds_Orcamentos_itensCODIGO_ID.Text := n_ORCA.Text;
DBGRID1.COLUMNS.Grid.Fields[2].AsString := '0,00';
DBGRID1.COLUMNS.Grid.Fields[3].AsString := '0,00';
DBGRID1.COLUMNS.Grid.Fields[4].AsString := '0,00';
DBGRID1.COLUMNS.Grid.Fields[5].AsString := '0,00';
END;
end;

procedure TformVendas.ComboEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

      if (Key=VK_F9) then
      begin
      //   DM.SDS_Clientes.Filtered := False;
         DBComboCliente.SetFocus;
      end;

      if (Key=VK_F11) then
      begin
         CodUsuario.SetFocus;
      end; 

      if (Key=VK_F2) then
      begin
         Sds_pedidos_itens.Edit;
      end;

if Key = VK_RETURN then
begin

   if ComboEdit1.Text = '' then
   begin
     ComboEdit1ButtonClick(ComboEdit1);
   end;


  { Sds_pedidos_itens.Edit;
    if ComboEdit1.Text = '' then
     BEGIN
      Sds_pedidos_itensCODIGO_PROD.Text := '1';
      FormConsProdutosVendas:=NIL;
      FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
      FormConsProdutosVendas.Edit1.Text := ComboEdit1.Text;
      FormConsProdutosVendas.Showmodal;
      //Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Sds_pedidos_itensCODIGO_PROD.Text := DM.SDS_PRODUTOS_cCODIGO.Text;
      InsereItem;
      DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
      end;}
end;
end;

procedure TformVendas.ComboEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin 
if Key = VK_RETURN then
begin
 {if ComboEdit2.Text = '' then
      begin
      FormConsProdutosOrca:=NIL;
      FormConsProdutosOrca:=TFormConsProdutosOrca.Create(self);
      FormConsProdutosOrca.Showmodal;
      Sds_Orcamentos_itens.edit;
      Sds_Orcamentos_itensCODIGO_PRODUTO.Text := DM.SDS_PRODUTOSCODIGO_BARRAS.Text;
       end else

   Sds_Orcamentos_itens.Edit;

   If DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit2.Text,[])=True then
   begin
   Sds_Orcamentos_itens.edit;
   InsereItemor;
   DBGRID1.COLUMNS.Grid.Fields[2].FocusControl;   }

 if ComboEdit2.Text = '' then
 begin
   ShowMessage('Digite a descrição ou codigo do produto!!!!');
   ComboEdit2.SetFocus;
 end;
      
      if (ssalt in shift) and (Key = 90) then
      begin
         OrComboEdit1.SetFocus;
         //OrComboEdit1ButtonClick(Sender);
      end;
      if (ssalt in shift) and (Key = 66) then
      begin
         OrComboEdit1.SetFocus;
         //OrComboEdit1ButtonClick(Sender);
      end;
end;
end;


procedure TformVendas.dbgridColEnter(Sender: TObject);
begin
Sds_pedidos_itens.Edit;
end;

procedure TformVendas.DBGrid1ColEnter(Sender: TObject);
begin
 Sds_Orcamentos_itens.Edit;
end;

procedure TformVendas.DBGrid1DblClick(Sender: TObject);
begin
//Sds_Orcamentos_itens.EDIT;
end;

procedure TformVendas.ComboEdit2Exit(Sender: TObject);
begin
Sds_Orcamentos_itens.Edit;
if Altera = TRUE then
begin
 DBGRID1.COLUMNS.Grid.Fields[2].FocusControl;

   

end;

end;

procedure TformVendas.ApagaRegistro1Click(Sender: TObject);
begin
      Sds_Orcamentos_itens.Delete;
      {Sds_Orcamentos_itens.First;
      A:= 0;
      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
      Sds_Orcamentos_itens.Next;
      Edit55.Text:= FloatToStr(A);
      While not Sds_Orcamentos_itens.Eof do
      begin
      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
      Sds_Orcamentos_itens.Next;
      Edit55.Text:= FloatToStr(A);
      Edit57.Text:= FloatToStr(A - Edit56.Value);
      end; }
       IF sds_pedidos_itens.Eof then
      begin
      if DBGRID.COLUMNS.Grid.Fields[7].Text = '' then
      begin
      NValor:=1;
      NItem:=NItem+NValor;
      Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO.AsInteger:=(NItem);
      Sds_pedidos_itensITEN.AsInteger :=(NItem);
      Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      Sds_pedidos_itensDESCONTO.Text := '0,00';
      Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      Sds_pedidos_itensFRACAO.Text := '1';
      end;
      end;
      Sds_Orcamentos_itens.Last;

      DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
      Sds_Orcamentos_itens.Edit;
      ComboEdit2.Visible := True;
      ComboEdit2.SetFocus
end;

procedure TformVendas.MenuItem1Click(Sender: TObject);
begin

      Sds_pedidos_itens.Delete;

      IF sds_pedidos_itens.Eof then
      begin
      if DBGRID.COLUMNS.Grid.Fields[7].Text = '' then
      begin
      NValor:=1;
      NItem:=NItem+NValor;
      Sds_pedidos_itens.Edit;
      Sds_pedidos_itensCODIGO.AsInteger:=(NItem);
      Sds_pedidos_itensITEN.AsInteger :=(NItem);
      Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      Sds_pedidos_itensDESCONTO.Text := '0,00';
      Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      Sds_pedidos_itensFRACAO.Text := '1';
      end;
      end;

      IF sds_pedidos_itens.RecordCount > 1 then
      begin
      Sds_pedidos_itens.Last;
      with Sds_pedidos_itens do
      begin
      while Sds_pedidos_itensDESCRICAO_PRODUTO.AsString ='' do
      Sds_pedidos_itens.Delete;
      Sds_pedidos_itens.Next;
      Sds_pedidos_itens.First;
      end;
      end;

      IF sds_pedidos_itens.RecordCount > 0 then
      begin
      NValor:=1;
      NItem:=NItem+NValor;
      if DBGRID.COLUMNS.Grid.Fields[1].Text = '' then
      begin
      Sds_pedidos_itens.Edit;
      end else
      if DBGRID.COLUMNS.Grid.Fields[1].Text > '' then
      begin
      Sds_pedidos_itens.Insert;
      end;
      Sds_pedidos_itensCODIGO.AsInteger:=(NItem);
      Sds_pedidos_itensITEN.AsInteger :=(NItem);
      Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      Sds_pedidos_itensCODIGO_ID.Text := N_venda.Text;
      Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      Sds_pedidos_itensDESCONTO.Text := '0,00';
      Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      Sds_pedidos_itensFRACAO.Text := '1';
      end;

      Sds_pedidos_itens.last;
      DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
      Sds_pedidos_itens.Edit;
      ComboEdit1.Visible := True;
      ComboEdit1.SetFocus;
end;

procedure TformVendas.suiButton2Click(Sender: TObject);
begin
Try
if FormClientesaddVendas=nil   then
    begin
     FormclientesaddVendas:=TFormclientesaddVendas.Create(self);
       FormclientesaddVendas.Showmodal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;
end;

procedure TformVendas.PesquisarORClick(Sender: TObject);
begin
    while not formvendas.Sds_orcamentos_itens.EOF do
    begin
     formvendas.Sds_orcamentos_itens.Delete;
   //   formvendas.Sds_orcamentos_itens.ClearFields;
    end;

    while not formvendas.Sds_orcamentos.EOF do
    begin
      formvendas.Sds_orcamentos.Delete;
     // formvendas.Sds_orcamentos.ClearFields;
      end; 

//Try
//if FormConsultaOrcamentos=nil   then
    begin
     FormConsultaOrcamentos:=TFormConsultaOrcamentos.Create(self);
      FormConsultaOrcamentos.Showmodal;
      end;
  //    except
   //    ShowMessage('Erro ao Tentar Exibir o Formulário!');
//end;
end;

procedure TformVendas.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 { if Key=#13 then
  begin
Sds_pedidos.Filtered := False;

if edit2.Text='LETRAS' THEN
ACHOU := Sds_pedidos.locate('NOME_CLIENTE',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

IF ACHOU=FALSE THEN
SHOWMESSAGE('Venda Não Localizada');

IF ACHOU=TRUE THEN
Edit1.SetFocus;


IF EDIT2.Text='NUMEROS' THEN

ACHOU:=Sds_pedidos.locate('CODIGO',EDIT1.Text,[loCaseInsensitive]);


IF ACHOU=TRUE THEN
Edit1.SetFocus;

IF ACHOU=FALSE THEN
SHOWMESSAGE('Vanda Não Localizada');
EDIT1.Clear;
Alterar.SetFocus;
end; }
end;


procedure TformVendas.Edit1Change(Sender: TObject);
begin
{IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EDIT1.Text>='0') AND (Edit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EDIT1.Text='' THEN
EDIT2.Text:='' }

end;

procedure TformVendas.suiButton3Click(Sender: TObject);
begin
  try
if FormClientesaddorc=nil   then
    begin
     FormClientesaddorc:=TFormClientesaddorc.Create(self);
      FormClientesaddorc.Showmodal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;
end;


procedure TformVendas.BitBtn1Click(Sender: TObject);
begin
IF FormPrincipal.FBaixaCred = 'S' THEN
BEGIN
Try
if FormCRCrediario=nil   then
    begin
     FormCRCrediario:=TFormCRCrediario.Create(self);
     FormCRCrediario.Cliente.Text := DBComboCliente.Text;
      FormCRCrediario.ShowModal;
      end;
    //  ComboEdit1.SetFocus;
      except
   //    ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE    
BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TformVendas.dbgridColExit(Sender: TObject);
begin
 if DBGrid.SelectedField = Sds_pedidos_itensQUANTIDADE THEN
 IF DBGRID.COLUMNS.Grid.Fields[2].Value > 99999 then
  begin
   MessageDlg( 'Quantidade Invalida, não pode ser superior a 99999, pois Acarretará problemas na emissão do cupom',mtInformation,[mbOK],0);
 //  DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
   //DBGrid.SelectedIndex := 2;
   dbgrid.SelectedIndex := dbgrid.SelectedIndex - 1;
   Exit;
  end;

  if DBGrid.SelectedField = Sds_pedidos_itensQUANTIDADE THEN
  IF DBGRID.COLUMNS.Grid.Fields[2].Value < 0.001 then
  begin
   MessageDlg( 'Quantidade Invalida, não pode ser Inferior a 1',mtInformation,[mbOK],0);
 //  DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
    // DBGrid.SelectedIndex := 2;
     dbgrid.SelectedIndex := dbgrid.SelectedIndex - 1;
     Exit;
  end;
  IF DM.SDS_CONFIGURACOESUNIT_TOTAL.Text = 'T' then
begin
  if (DBGrid.SelectedField = sds_pedidos_itenspreco_total) then
  begin
    CALCULA;
  end;
 end ELSE
 BEGIN
  if (DBGrid.SelectedField = sds_pedidos_itensQUANTIDADE)  OR (DBGrid.SelectedField = sds_pedidos_itensPRECO_UNITARIO) or (DBGrid.SelectedField = sds_pedidos_itensDESCONTO)  THEN
  BEGIN
   CALCULA;
  end;
 END;

  IF DM.SDS_CONFIGURACOESPROX_LINHA.Text = 'N' then
  BEGIN
  if DBGrid.SelectedField = Sds_pedidos_itensPRECO_UNITARIO THEN
  BEGIN
  if (DBGrid.SelectedField = sds_pedidos_itensQUANTIDADE)  OR (DBGrid.SelectedField = sds_pedidos_itensPRECO_UNITARIO) or (DBGrid.SelectedField = sds_pedidos_itensDESCONTO) THEN
  BEGIN
   CALCULA;
  end;

  IF (DBGRID.COLUMNS.Grid.Fields[3].Value <= 0) or  (DBGRID.COLUMNS.Grid.Fields[3].AsString <= '') then
  begin
   MessageDlg( 'Valor Invalido, Favor Corrigir',mtInformation,[mbOK],0);
   //DBGRID.COLUMNS.Grid.Fields[2].FocusControl;
  // DBGrid.SelectedIndex := 4;
   dbgrid.SelectedIndex := dbgrid.SelectedIndex - 1;
   Exit;
  end;
  end;
  end;

end;


procedure TformVendas.DBComboClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Key in ['a'..'z', 'A'..'Z', '0'..'9', #8, #13, #32])then
begin
//ShowMessage(key+ ' é um caracter inválido, digite apenas letras ou números');
key := #0;
DBComboCliente.Text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;
//DBComboCliente.;

if DBComboCliente.Text > '9999999' then
begin
DBComboCliente.Text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;
end;
Sds_pedidos.edit;
ComboEdit1.SetFocus;
end;

if Key = #13 then
//if Key = #9 then

 BEGIN
Sds_pedidos.edit;

//DM.SDS_Clientes.Filtered := False;

{if edit2.Text='LETRAS' THEN
 BEGIN
 ACHOU := DM.SDS_Clientes.locate('nome_rs',DBComboCliente.Text,[loCaseInsensitive]);

 IF ACHOU=FALSE THEN
 DBComboClienteButtonClick(sender);

IF ACHOU=TRUE THEN
  Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
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
  Sds_pedidosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
  //Sds_pedidos_itens.Edit;
end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
ACHOU:= DM.SDS_Clientes.locate('CODIGO', DBComboCliente.Text,[]);


IF ACHOU=FALSE THEN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',DBComboCliente.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
//DBComboCliente.SetFocus;


IF ACHOU=TRUE THEN

  Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
  Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
  Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
  Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
  Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
  Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
  Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  Sds_pedidosCEP.Text := DM.SDS_ClientesCEP.Text;
  Sds_pedidosUF.Text  := DM.SDS_ClientesUF.Text;
  Sds_pedidosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
  Sds_pedidosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
  Sds_pedidosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;  }
 // Sds_pedidos_itens.Edit;


{IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');

DBComboClienteButtonClick(sender);

IF ACHOU=TRUE THEN
  Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
  Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
  Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
  Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
  Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString+'-'+DM.SDS_ClientesUF.AsString;
  Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
  Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  Sds_pedidos.Post;
  Sds_pedidos_itens.Edit;
  DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
  ComboEdit1.Visible := True;
  ComboEdit1.SetFocus;   }

end;
end;



procedure TformVendas.DBComboClienteChange(Sender: TObject);
begin
//DM.SDS_Clientes.Filtered := False;


IF (DBComboCliente.Text>='A') AND (DBComboCliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (DBComboCliente.Text>='0') AND (DBComboCliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF DBComboCliente.Text='' THEN
EDIT2.Text:='';

end;

procedure TformVendas.DBComboClienteExit(Sender: TObject);
var
  texto : pansichar;
begin
  Sds_pedidos.Edit;
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
  Sds_pedidos.Edit;
  Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
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
  Sds_pedidosCEP.Text := removechar(DM.SDS_ClientesCEP.Text);
  Sds_pedidosUF.Text  := DM.SDS_ClientesUF.Text;
  Sds_pedidosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
  Sds_pedidosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
  Sds_pedidosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
  Sds_pedidosIE_PRODUTOR.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
  Sds_pedidosPROD_RURAL.Text   := DM.SDS_ClientesPRODUTOR_RURAL.Text;
  CONVENIO := DM.SDS_ClientesCOD_CONV.ASINTEGER;
  DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
  ComboEdit1.Visible := True;
  ComboEdit1.SetFocus;
   end;
    except
    { on E: EDatabaseError do
     ShowMessage(E.Message); }
     ShowMessage('erro ao consultar');
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

  //DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
  DBComboCliente.Text := RemoveChar(DBComboCliente.Text);
  DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
  ComboEdit1.Visible := True;
  ComboEdit1.SetFocus;

IF ACHOU=FALSE THEN
begin
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',DBComboCliente.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
DBComboCliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  Sds_pedidos.Edit;
  Sds_pedidosNOME_CLIENTE.Text    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Sds_pedidosCODIGO_CLIENTE.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  Sds_pedidosENDERECO.Text        := DM.SDS_ClientesENDERECO.AsString;
  Sds_pedidosCPF_CNPJ.Text        := DM.SDS_ClientesCPF_CNPJ.Text;
  Sds_pedidosRG_IE.Text           := DM.SDS_ClientesRG_IE.Text;
  Sds_pedidosfone.Text            := DM.SDS_ClientesTELEFONE.Text;
  Sds_pedidosCIDADE.Text          := dm.SDS_ClientesCIDADE.AsString;
  Sds_pedidosBAIRRO.Text          := DM.Sds_clientesBairro.Text;
  Sds_pedidosPROPRIEDADE.Text     := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  Sds_pedidosCEP.text             := removechar(DM.SDS_ClientesCEP.Text);
  Sds_pedidosUF.Text              := DM.SDS_ClientesUF.Text;
  Sds_pedidosCOD_IBGE.Text        := DM.SDS_ClientesCOD_IBGE.Text;
  Sds_pedidosNUMERO.AsInteger     := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
  Sds_pedidosTIPO.TEXT            := DM.SDS_ClientesTIPO.Text;
  Sds_pedidosIE_PRODUTOR.Text     := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
  Sds_pedidosPROD_RURAL.Text      := DM.SDS_ClientesPRODUTOR_RURAL.Text;
   CONVENIO := DM.SDS_ClientesCOD_CONV.ASINTEGER;
  DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
  ComboEdit1.Visible := True;
  ComboEdit1.SetFocus;

 end;
 end;


{IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');

DBComboClienteButtonClick(sender);

IF ACHOU=TRUE THEN
  Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
  Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
  Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
  Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
  Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString+'-'+DM.SDS_ClientesUF.AsString;
  Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
  Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  Sds_pedidos.Post;
  Sds_pedidos_itens.Edit;
  DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
  ComboEdit1.Visible := True;
  ComboEdit1.SetFocus;}
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

    {   if DM.SDS_ClientesATIVO.Text = 'I' then
       begin
        // ShowMessage('Cliente Inativo Não é Possivel Efetuar a Venda...!!!');
         Application.MESSAGEBOX('Cliente Inativo Não é Possivel Efetuar a Venda, Favor Escolher um Cliente Ativo', 'Atenção', MB_ICONASTERISK + MB_OK  + MB_DEFBUTTON2);
         DBComboCliente.SetFocus;
       end; }

     IF  dm.SDS_Clientes.FieldByName('ATIVO').AsString = 'B' then
     begin // bloqueado
       // texto := pansichar('Cliente com crédito Bloqueado!, não sera possivel continuar?');
        application.MessageBox('Cliente com crédito Bloqueado!, não sera possivel continuar?','Atenção',MB_OKCANCEL+MB_ICONEXCLAMATION) ;
        DBComboCliente.SetFocus;
        exit;
     end;

      IF  dm.SDS_Clientes.FieldByName('ativo').asstring = 'I' then
       begin // inativo
       // texto := pansichar('Cliente INATIVO!, não sera possivel continuar?');
        application.MessageBox('Cliente INATIVO!, não sera possivel continuar?','Atenção',MB_OKCANCEL+MB_ICONEXCLAMATION) ;
        DBComboCliente.SetFocus;
        exit;
       end;

      IF  dm.SDS_Clientes.FieldByName('ATIVO').AsString = 'S' then
      begin // spc
        application.messagebox('Desculpe! Cliente no SPC, Verifique!','Aviso',mb_ok+MB_ICONEXCLAMATION);
        DBComboCliente.SetFocus;
        exit;
      end;                                  

end;


procedure TformVendas.ComboEdit1Change(Sender: TObject);
begin
IF (ComboEdit1.Text>='A') AND (ComboEdit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (ComboEdit1.Text>='0') AND (ComboEdit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF ComboEdit1.Text='' THEN
EDIT2.Text:='';

codigo_bar := ComboEdit1.text;
end;

procedure TformVendas.ComboEdit2Change(Sender: TObject);
begin
IF (ComboEdit2.Text>='A') AND (ComboEdit2.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (ComboEdit2.Text>='0') AND (ComboEdit2.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF ComboEdit2.Text='' THEN
EDIT2.Text:=''
end;

procedure TformVendas.NavegadorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
DBComboCliente.Text := Sds_pedidoscodigo_cliente.Text;
end;

procedure TformVendas.suiButton4Click(Sender: TObject);
begin
 if FormPRODUTOSfALTA=nil   then
    BEGIN
     FormPRODUTOSfALTA := TFormPRODUTOSfALTA.Create(self);
     FormPRODUTOSfALTA.showmodal;
     end;
end;

procedure TformVendas.BitBtn3Click(Sender: TObject);
begin
  Try
if FormHistoricoCliente=nil   then
    begin
     FormHistoricoCliente:=TFormHistoricoCliente.Create(self);
      FormHistoricoCliente.cliente.text := DBComboCliente.Text;
      FormHistoricoCliente.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TformVendas.sds_pedidos_itens1AfterPost(DataSet: TDataSet);
begin
 {if Sds_pedidos_itens.locate('CODIGO_PRODUTO',ComboEdit1.Text,[loPartialKey, loCaseInsensitive]) = True then
 begin
      ShowMessage('Produto ja cadastrado na Venda...');
      DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
      Sds_pedidos_itens.Edit;
      ComboEdit1.Visible := True;
      ComboEdit1.SetFocus;
 end;  }
{Sds_pedidos_itens.First;
formvendas.A:= 0;
formvendas.c:= 0;
formvendas.A:= formvendas.A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
formvendas.C:= formvendas.C + sds_pedidos_itensQUANTIDADE.AsFloat;
Sds_pedidos_itens.Next;
formvendas.Edit60.Text:= FloatToStr(formvendas.A);
formvendas.Edit62.Text:= FloatToStr(formvendas.A);
formvendas.qtde.Text:= FloatToStr(formvendas.c);
While not Sds_pedidos_itens.Eof do
begin
formvendas.A:= formvendas.A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
formvendas.c:= formvendas.c + sds_pedidos_itensQUANTIDADE.AsFloat;
Sds_pedidos_itens.Next;
formvendas.Edit60.Text:= FloatToStr(formvendas.A);
formvendas.Edit62.Text:= FloatToStr(formvendas.A - formvendas.E_desconto.Value);
formvendas.qtde.Text:= FloatToStr(formvendas.c);
end;
Sds_pedidos_itens.last; }


end;

procedure TformVendas.SDS_Orcamentos_itens1AfterPost(DataSet: TDataSet);
begin
{Sds_Orcamentos_itens.First;
formvendas.A:= 0;
formvendas.c:= 0;
formvendas.A:= formvendas.A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
formvendas.C:= formvendas.C + Sds_Orcamentos_itensQUANTIDADE.AsFloat;
Sds_Orcamentos_itens.Next;
formvendas.Edit55.Text:= FloatToStr(formvendas.A);
formvendas.Edit57.Text:= FloatToStr(formvendas.A);
formvendas.QtdeOr.Text:= FloatToStr(formvendas.c);
While not Sds_Orcamentos_itens.Eof do
begin
formvendas.A:= formvendas.A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
formvendas.C:= formvendas.C + sds_Orcamentos_itensQUANTIDADE.AsFloat;
Sds_Orcamentos_itens.Next;
formvendas.Edit55.Text:= FloatToStr(formvendas.A);
formvendas.Edit57.Text:= FloatToStr(formvendas.A - formvendas.EDIT56.Value);
formvendas.QtdeOr.Text:= FloatToStr(formvendas.c);
end;
Sds_Orcamentos_itens.last; }
end;

Procedure TformVendas.dbgridTotalsUpdated(Sender: TObject);
begin

//E_desconto.Text := DBGrid.Columns.Items[4].TotalFooter.Value;
//edit60.Text  := DBGrid.Columns.Items[5].TotalFooter.Value; // pega o valor total da coluna somada...
//Edit62.text  := DBGrid.Columns.Items[5].TotalFooter.Value; // pega o valor total da coluna somada...
end;

procedure TformVendas.DBGrid1TotalsUpdated(Sender: TObject);
begin
//Edit62.Value := sds_pedidos_itensSOMAVALOR_TOTAL.Value;
//Edit60.Value := sds_pedidos_itensSOMAPRECO_UNITARIO.Value;
//qtdeor.Text := DBGrid1.Columns.Items[2].TotalFooter.Value;
//edit56.Text  := DBGrid1.Columns.Items[4].TotalFooter.Value;
//edit55.Text  := DBGrid1.Columns.Items[5].TotalFooter.Value; // pega o valor total da coluna somada...
//Edit57.text  := DBGrid1.Columns.Items[5].TotalFooter.Value; // pega o valor total da coluna somada...

end;

procedure TformVendas.TorcamentosClick(Sender: TObject);
begin
cancelar.Enabled:=FALSE;
Inserir.Enabled:= False;
pesquisar.Enabled := False;
confirmar.Enabled := False;
end;

procedure TformVendas.TvendasClick(Sender: TObject);
begin
cancelarOR.Enabled:=FALSE;
InserirOR.Enabled:= False;
pesquisarOR.Enabled := False;
confirmarOR.Enabled := False;
end;

procedure TformVendas.TorcamentosShow(Sender: TObject);
begin
cancelarOR.Enabled:=TRUE;
InserirOR.Enabled:= TRUE;
pesquisarOR.Enabled := TRUE;
confirmarOR.Enabled := FALSE;
end;

procedure TformVendas.TvendasShow(Sender: TObject);
begin
cancelar.Enabled:=TRUE;
Inserir.Enabled:= TRUE;
pesquisar.Enabled := TRUE;
confirmar.Enabled := FALSE;
end;

procedure TformVendas.CodUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in ['0'..'9', #8]) then
          key := #0;
end;

procedure TformVendas.OrComboEdit2KeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

procedure TformVendas.OrComboEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in ['.','a'..'z','A'..'Z','0'..'9', #8, #32]) then
          key := #0;
end;

procedure TformVendas.OrComboEdit1Change(Sender: TObject);
begin
IF (OrComboEdit1.Text>='A') AND (OrComboEdit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (OrComboEdit1.Text>='0') AND (OrComboEdit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF OrComboEdit1.Text='' THEN
EDIT2.Text:='';
end;

procedure TformVendas.CALCULA;
var
  DESCONTO, preco : Real;
  DESC : string;
  saldo1 :string;
begin
Sds_pedidos_itens.Edit;

//if DBGRID.COLUMNS.Grid.Fields[2].Value > 0.00 then
//if DBGrid.SelectedField.FieldName = sds_pedidos_itensQUANTIDADE THEN
//begin

   if DM.SDS_CONFIGURACOESUSA_FRACAO.text = 'N' then
   begin
     with DM.QConsulta do
     begin
         close;
         SQL.Clear;
         SQL.ADD('SELECT sum(quantidade) as estoque FROM pedidos_itens where codigo_id =:codven and codigo_prod =:codpro');
         Parambyname('codven').AsInteger:= strtoint(formvendas.N_venda.Text);
         Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
         open;
     end;
      if dm.qconsulta.FieldByName('estoque').Asfloat > 0 then
      estoque_ant := dm.qconsulta.FieldByName('estoque').Asfloat
      else
      estoque_ant:= 0;

     with DM.qConsulta do
     begin
         close;
         SQL.Clear;
         SQL.ADD('SELECT estoque FROM produtos where codigo_barras =:codpro');
         //  Parambyname('codven').AsInteger:= strtoint(formvendas.N_venda.Text);
         Parambyname('codpro').AsString:= Trim(DBGRID.COLUMNS.Grid.Fields[0].Text);
         open;
     end;

     estoque := dm.qconsulta.FieldByName('estoque').Asfloat;

     // estoque := DM.Sds_produtos_cESTOQUE.AsFloat;
     quantidade := DBGRID.COLUMNS.Grid.Fields[2].Value;
     saldo := (estoque - quantidade + estoque_ant);

     if DM.SDS_CONFIGURACOESestoque_negativo.text = 'N' then
      If saldo <= -1 then
        begin
         saldo1 := FloatToStr(saldo);
         MessageDlg( 'Não Há Saldo Suficiente em Estoque Saldo = '+saldo1,mtInformation,[mbOK],0);
         DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
         ComboEdit1.Visible := True;
         ComboEdit1.SetFocus;
         ComboEdit1.SelectAll;
         Sds_pedidos_itens.Edit;
        end;
   end else

   if DM.SDS_CONFIGURACOESUSA_FRACAO.text = 'S' then
   begin
     with DM.QConsulta do
     begin
         close;
         SQL.Clear;
         SQL.ADD('SELECT sum(quantidade) as estoque FROM pedidos_itens where codigo_id =:codven and codigo_prod =:codpro');
         Parambyname('codven').AsInteger:= strtoint(formvendas.N_venda.Text);
         Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
         open;
     end;
      if dm.qconsulta.FieldByName('estoque').Asfloat > 0 then
      estoque_ant := dm.qconsulta.FieldByName('estoque').Asfloat
      else
      estoque_ant:= 0;

     with DM.qConsulta do
     begin
         close;
         SQL.Clear;
         SQL.ADD('SELECT estoque_fracao as estoque FROM produtos where codigo_barras =:codpro');
       //  Parambyname('codven').AsInteger:= strtoint(formvendas.N_venda.Text);
         Parambyname('codpro').AsString:=Trim(DBGRID.COLUMNS.Grid.Fields[0].Text);
         open;
     end;

   estoque := dm.qconsulta.FieldByName('estoque').Asfloat;

  // estoque := DM.SDS_PRODUTOS_cESTOQUE_FRACAO.AsFloat;
   quantidade := DBGRID.COLUMNS.Grid.Fields[2].Value;
   saldo := (estoque - quantidade + estoque_ant);

      if DM.SDS_CONFIGURACOESestoque_negativo.text = 'N' then
      If saldo <= -1 then
        begin
          saldo1 := FloatToStr(saldo);
          MessageDlg( 'Não Há Saldo Suficiente em Estoque Saldo = '+saldo1,mtInformation,[mbOK],0);
          DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
          ComboEdit1.Visible := True;
          ComboEdit1.SetFocus;
          ComboEdit1.SelectAll;
          Sds_pedidos_itens.Edit;
        end;
   end;

{if DBGRID.COLUMNS.Grid.Fields[2].AsString > '0' then
IF DBGRID.COLUMNS.Grid.Fields[4].AsString > DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.Text then
begin
  ShowMessage('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema');
  DBGRID.COLUMNS.Grid.Fields[4].FocusControl;
end else}

//IF DM.Sds_produtos_cCOMBUSTIVEL.Text = 'S' then
 IF DM.SDS_CONFIGURACOESUNIT_TOTAL.Text = 'T' then
 begin
 if RbPreco1.Checked = True then
  begin
  preco := DM.Sds_produtos_cPRECO_VENDA.AsFloat;
  end else
 if RbPreco2.Checked = True then
  begin
  preco := DM.Sds_produtos_cPRECO_VENDA2.AsFloat;
   end;

  if DM.SDS_CONFIGURACOESTP_DESCONTO.Text = 'R' then
  begin
  DBGRID.COLUMNS.Grid.Fields[3].Value := preco;
  Sds_pedidos_itens.Edit;
  if (DBGrid.SelectedField = sds_pedidos_itenspreco_total) then
  begin

  sds_pedidos_itensPRECO_UNITARIO.AsFloat := sds_pedidos_itensPRECO_TOTAL.AsFloat / sds_pedidos_itensQUANTIDADE.AsFloat;
  end;
    DESCONTO := sds_pedidos_itensDESCONTO.AsFloat;
  DESCONTO := DBGRID.COLUMNS.Grid.Fields[4].AsCurrency;

  Total := DBGRID.COLUMNS.Grid.Fields[2].Value * DBGRID.COLUMNS.Grid.Fields[3].Value;


  //DESCONTO := ((DESCONTO * TOTAL)/100);

  //DESC := FormatCurr('0.00', DESCONTO);

  //DESCONTO := StrToFloat(DESC);

  //DBGRID.COLUMNS.Grid.Fields[4].Value := DESCONTO;


  DBGRID.COLUMNS.Grid.Fields[5].Value := (TOTAL - DESCONTO);

{  if DBGrid.SelectedField = sds_pedidos_itensDESCONTO THEN
  begin
  DBGRID.COLUMNS.Grid.Fields[6].FocusControl;
  end;}
  end;


  if DM.SDS_CONFIGURACOESTP_DESCONTO.Text = 'P' then
  begin
  if (DBGrid.SelectedField = sds_pedidos_itenspreco_total) then
  begin

  sds_pedidos_itensPRECO_UNITARIO.AsFloat := sds_pedidos_itensPRECO_TOTAL.AsFloat / sds_pedidos_itensQUANTIDADE.AsFloat;
  END;

  DESCONTO := DBGRID.COLUMNS.Grid.Fields[4].AsCurrency;
  Total := DBGRID.COLUMNS.Grid.Fields[2].Value * DBGRID.COLUMNS.Grid.Fields[3].Value;
  DESCONTO := ((DESCONTO * TOTAL)/100);

  DESC := FormatCurr('0.00', DESCONTO);

  DESCONTO := StrToFloat(DESC);

  DBGRID.COLUMNS.Grid.Fields[4].Value := DESCONTO;
  DBGRID.COLUMNS.Grid.Fields[5].Value := (TOTAL - DESCONTO);

   end;
  end else

//IF DM.Sds_produtos_cCOMBUSTIVEL.Text = 'N' then

IF DM.SDS_CONFIGURACOESUNIT_TOTAL.Text = 'U' then
begin
if DM.SDS_CONFIGURACOESTP_DESCONTO.Text = 'R' then
BEGIN
DESCONTO := DBGRID.COLUMNS.Grid.Fields[4].AsCurrency;
Total := DBGRID.COLUMNS.Grid.Fields[2].Value * DBGRID.COLUMNS.Grid.Fields[3].Value;
//DESCONTO :=((DESCONTO * TOTAL)/100);

DESC := FormatCurr('0.00', DESCONTO);

DESCONTO := StrToFloat(DESC);

DBGRID.COLUMNS.Grid.Fields[4].Value := DESCONTO;
DBGRID.COLUMNS.Grid.Fields[5].Value := (TOTAL - DESCONTO);
end else

//IF DM.Sds_produtos_cCOMBUSTIVEL.Text = '' then
if DM.SDS_CONFIGURACOESTP_DESCONTO.Text = 'P' then
begin
DESCONTO := DBGRID.COLUMNS.Grid.Fields[4].AsCurrency;
Total := DBGRID.COLUMNS.Grid.Fields[2].Value * DBGRID.COLUMNS.Grid.Fields[3].Value;
DESCONTO := ((DESCONTO * TOTAL)/100);

DESC := FormatCurr('0.00', DESCONTO);

DESCONTO := StrToFloat(DESC);

DBGRID.COLUMNS.Grid.Fields[4].Value := DESCONTO;
DBGRID.COLUMNS.Grid.Fields[5].Value := (TOTAL - DESCONTO);
end;
end;
/// para lancamento de combustiveis

end;

procedure TformVendas.Edit56Enter(Sender: TObject);
begin
Edit57.Value := (Edit55.Value - Edit56.value);
Sds_orcamentos.Edit;
Sds_orcamentosVALOR_ITENS.AsFloat :=  Edit55.value;
Sds_orcamentosVALOR_DESCONTO.AsFloat := Edit56.value;
Sds_orcamentosVALOR_TOTAL.AsFloat := (Edit55.Value - Edit56.value);
Sds_orcamentos.Post;
end;

procedure TformVendas.dt_vendaExit(Sender: TObject);
begin
CodUsuario.SetFocus;
end;

procedure TformVendas.OkClick(Sender: TObject);
begin
Panel3.Visible := False;
DBGrid.SetFocus;
formvendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
formVendas.Sds_Pedidos_itens.Edit;
formVendas.ComboEdit1.Visible := True;
formVendas.ComboEdit1.SetFocus;
end;

procedure TformVendas.suiNOTAClick(Sender: TObject);
begin
Panel3.Visible := True;
DBEdit2.SetFocus;
end;

procedure TformVendas.RzDBButtonEdit1ButtonClick(Sender: TObject);
begin
// TRY
  DM.qrcfop.Active := False;
  DM.qrcfop.sql.Clear;
  DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop >=4999');
  DM.qrcfop.Active := true;
  Sds_pedidos.edit;

{if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit1.text := dm.SDS_CFOPDESCRICAO.text;
      RzDBButtonEdit1.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RzDBButtonEdit1.SetFocus;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Consulta de cfop!!');
end;}

  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit1.text := dm.qrcfopnatureza.text;
    RzDBButtonEdit1.Text := DM.qrcfopCFOP.Text;
  end;

end;


procedure TformVendas.RzDBButtonEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;



procedure TformVendas.RzDBButtonEdit1Exit(Sender: TObject);
begin
DM.qrcfop.Active := False;
DM.qrcfop.sql.Clear;
DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop >=4000');
DM.qrcfop.Active := true;
  
if RzDBButtonEdit1.Text > '' then
begin
Sds_pedidos.Edit;
if DM.QRCFOP.Locate('CFOP', RzDBButtonEdit1.Text,[])=True then
 begin
   edit1.Text := DM.QRCFOPNATUREZA.Text;
 end else
 if not DM.QRCFOP.Locate('CFOP', RzDBButtonEdit1.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
   RzDBButtonEdit1.SetFocus;
 end;
end;
end;

procedure TformVendas.EvDBEditBtn1BtnClick(Sender: TObject);
begin
if FormdocsFiscais=nil   then
    begin
      FormdocsFiscais:=TFormdocsFiscais.Create(self);
      FormdocsFiscais.ShowModal;
      Sds_pedidosMODELO_NF.Text := DMC.Sds_DocsFiscaisCODIGO.Text;
      Edit4.Text := DMC.Sds_DocsFiscaisDESCRICAO.Text;
     // suiEdit1.Text := DMC.Sds_DocsFiscaisDESCRICAO.Text;
end;
end;

procedure TformVendas.EvDBEditBtn1Enter(Sender: TObject);
begin
Sds_pedidos.Edit;
end;

procedure TformVendas.EvDBEditBtn1Exit(Sender: TObject);
begin
    if EvDBEditBtn1.text >'' then
    begin
     if DMC.Sds_DocsFiscais.Locate('codigo',EvDBEditBtn1.Text,[lopartialkey]) = True then
     begin
      Sds_pedidosMODELO_NF.Text := DMC.Sds_DocsFiscaisCODIGO.Text;
      Edit4.Text := DMC.Sds_DocsFiscaisDESCRICAO.Text;

      end else
        if not DMC.Sds_DocsFiscais.Locate('codigo',EvDBEditBtn1.Text,[lopartialkey]) = True then
        begin
         Application.MESSAGEBOX('Código Fiscal não localizado Verifique!!!', 'Atenção', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
         EvDBEditBtn1.SetFocus;
        end;
end;
end;

procedure TformVendas.sBitBtn1Click(Sender: TObject);
var
  venda : string;
  d: integer;
begin
   venda := ' ';


   InputQuery('Digite o numero da Venda', 'Codigo da venda: ',venda);

if venda > ' ' then
begin
   DM.Sds_Vendas_itens.Active := False;
   dm.sds_vendas.close;
   dm.sds_vendas.SQL.Clear;
   dm.sds_vendas.SQL.add('select * from PEDIDOS where codigo =:VDA');
   dm.sds_vendas.Params.ParamByName('vda').AsInteger := StrToInt(Venda);
   DM.Sds_vendas.Active := True;
   DM.Sds_Vendas_itens.Active := true;
   
formVendas.Sds_pedidos.Insert;
formVendas.Sds_pedidos.EDIT;
SPC_Codigo.ExecProc;
N:= (SPC_Codigo.ParamByName('ATUAL').AsInteger);
N_venda.Text:=IntTostr(N);
Sds_pedidosCODIGO.Text := IntTostr(N);
//formVendas.Sds_pedidosCODIGO.Text :=  IntTostr(N);
//N_venda.Text          := IntToStr(N);
formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime  := dm.sds_vendasDATA_PEDIDO.AsDateTime;
formvendas.Sds_pedidosDATA_ENTREGA.AsDateTime := dm.sds_vendasDATA_ENTREGA.AsDateTime;
formvendas.Sds_pedidosVALOR_ITENS.Text       := Dm.Sds_vendasVALOR_ITENS.Text;
formvendas.Sds_pedidosVALOR_DESCONTO.Text    := Dm.Sds_vendasVALOR_DESCONTO.Text;
formvendas.Sds_pedidosVALOR_TOTAL.Text       := Dm.Sds_vendasVALOR_TOTAL.Text;
formvendas.Sds_pedidosCODIGO_CLIENTE.Text    := Dm.Sds_vendasCODIGO_CLIENTE.Text;
formvendas.DBComboCliente.Text               := Dm.Sds_vendasCODIGO_CLIENTE.Text;
formvendas.Sds_pedidosNOME_CLIENTE.Text      := Dm.Sds_vendasNOME_CLIENTE.Text;
formvendas.Sds_pedidosENC_FINANCEIRO.Text    := Dm.Sds_vendasENC_FINANCEIRO.Text;
formvendas.Sds_pedidosCOD_PAGTO.Text         := Dm.Sds_vendasCOD_PAGTO.Text;
formvendas.Sds_pedidosPAGAMENTO.Text         := Dm.Sds_vendasPAGAMENTO.Text;
formvendas.Sds_pedidosOBSERVACOES.text       := Dm.Sds_vendasOBSERVACOES.text;
formvendas.Sds_pedidosCOD_VENDEDOR.text      := Dm.Sds_vendasCOD_VENDEDOR.text;
formvendas.Sds_pedidosUSUARIO.Text           := Dm.Sds_vendasUSUARIO.Text;
formvendas.Sds_pedidosCOD_EMPRESA.Text       := Dm.Sds_vendasCOD_EMPRESA.Text;
formvendas.Sds_pedidosENDERECO.Text           := dm.sds_vendasENDERECO.Text;
formvendas.sds_pedidosCIDADE.text             := dm.sds_vendasCIDADE.Text;
formvendas.Sds_pedidosBAIRRO.Text             := DM.sds_vendasBAIRRO.Text;
formVendas.Sds_pedidosNUMERO.Text             := DM.sds_vendasNUMERO.Text;
formvendas.Sds_pedidosFONE.Text               := DM.sds_vendasFONE.Text;
formvendas.Sds_pedidosSTATUS.Text             := DM.sds_vendasSTATUS.Text;
formvendas.Sds_pedidosTP.text                 := DM.sds_vendasTP.Text;
formVendas.Sds_pedidosN_CUPOM.Text            := DM.sds_vendasN_CUPOM.Text;
formvendas.Sds_pedidosN_ECF.text              := DM.sds_vendasN_ECF.Text;
formvendas.Sds_pedidosCOD_ORCAMENTO.text      := DM.sds_vendasCOD_ORCAMENTO.Text;
formvendas.Sds_pedidosCOD_OS.Text             := DM.sds_vendasCOD_OS.Text;
formvendas.Sds_pedidosNUM_NOTA.text           := dm.sds_vendasNUM_NOTA.Text;
formvendas.Sds_pedidosSERIE_NOTA.Text         := dm.sds_vendasSERIE_NOTA.Text;
formvendas.Sds_pedidosCPF_CNPJ.Text           := dm.sds_vendasCPF_CNPJ.text;
formvendas.Sds_pedidosRG_IE.text              := dm.sds_vendasRG_IE.Text;
formvendas.Sds_pedidosN_PARTIDA.Text          := dm.sds_vendasN_PARTIDA.Text;
formvendas.Sds_pedidosPROPRIEDADE.Text        := dm.sds_vendasPROPRIEDADE.Text;
formvendas.Sds_pedidosQUANT_VENDIDA.Text      := dm.sds_vendasQUANT_VENDIDA.Text;
formvendas.Sds_pedidosSALDO_VENDIDO.Text      := dm.sds_vendasSALDO_VENDIDO.Text;
formvendas.Sds_pedidosMED_VETERINARIO.Text    := dm.sds_vendasMED_VETERINARIO.Text;
formvendas.Sds_pedidosDATA_VACINA.Text        := dm.sds_vendasDATA_VACINA.Text;
formvendas.Sds_pedidosVALOR_AVISTA.Text       := dm.sds_vendasVALOR_AVISTA.Text;
formVendas.Sds_pedidosVALOR_PRAZO.Text        := dm.sds_vendasVALOR_PRAZO.Text;
formVendas.Sds_pedidosUF.Text                 := DM.sds_vendasUF.Text;
formVendas.Sds_pedidosCEP.Text                := dm.sds_vendasCEP.Text;
formVendas.Sds_pedidosCOD_IBGE.Text           := dm.sds_vendasCOD_IBGE.Text;
formVendas.Sds_pedidosVALOR_PAGO.Text         := dm.sds_vendasVALOR_PAGO.Text;
formVendas.Sds_pedidosVALOR_TROCO.Text        := dm.sds_vendasVALOR_TROCO.Text;
formVendas.Sds_pedidosTIPO.Text               := dm.sds_vendasTIPO.Text;
formVendas.Sds_pedidosREFERENCIA.Text         := dm.sds_vendasREFERENCIA.Text;
formVendas.sds_pedidoscelular.text            := dm.sds_vendasCELULAR.Text;
formVendas.Sds_pedidosprod_rural.text         := dm.sds_vendasPROD_RURAL.Text;
formVendas.Sds_pedidosie_produtor.text        := dm.sds_vendasIE_PRODUTOR.Text;
formVendas.Sds_pedidoskm.text                 := DM.sds_vendasKM.Text;
formvendas.Sds_pedidos.Post;

Dm.Sds_vendas_itens.First;
Contador := Dm.Sds_vendas_itens.RecordCount;
For d:=1 to Contador do
 begin
formvendas.Sds_pedidos_itens.Insert;
formvendas.Sds_pedidos_itens.Edit;
//SPC_COD_ITENS.ExecProc;
//N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
formvendas.Sds_pedidos_itensCODIGO.AsString           := '1'; //IntTostr(N);
formvendas.Sds_pedidos_itensCODIGO_ID.Text            :=  IntTostr(N);
formvendas.Sds_pedidos_itensCODIGO_PROD.Text          := Dm.Sds_vendas_itensCODIGO_PROD.Text;
formvendas.Sds_pedidos_itensCODIGO_PRODUTO.Text       := Dm.Sds_vendas_itensCODIGO_PRODUTO.Text;
formvendas.Sds_pedidos_itensDESCRICAO_PRODUTO.Text    := Dm.Sds_vendas_itensDESCRICAO_PRODUTO.Text;
formvendas.Sds_pedidos_itensDESCONTO.TEXT             := Dm.Sds_vendas_itensDESCONTO.Text;
formvendas.Sds_pedidos_itensQUANTIDADE.AsFloat           := Dm.Sds_vendas_itensQUANTIDADE.AsFloat;
formvendas.Sds_pedidos_itensPRECO_UNITARIO.AsFloat    := Dm.Sds_vendas_itensPRECO_UNITARIO.AsFloat;
formvendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat          := Dm.Sds_vendas_itensPRECO_TOTAL.AsFloat;
formvendas.Sds_pedidos_itensVENDEDOR.Text             := Dm.Sds_vendas_itensVENDEDOR.Text;
formvendas.Sds_pedidos_itensUNIDADE.Text              := Dm.Sds_vendas_itensUNIDADE.Text;
formvendas.Sds_pedidos_itensSIT_TRIBUTARIA.Text       := Dm.Sds_vendas_itensSIT_TRIBUTARIA.Text;
formvendas.Sds_pedidos_itensENC_FINANCEIRO.TEXT       := Dm.Sds_vendas_itensENC_FINANCEIRO.Text;
formvendas.Sds_pedidos_itensFRACAO.text               := Dm.Sds_vendas_itensFRACAO.Text;
formvendas.Sds_pedidos_itensCOD_NCM.Text              := Dm.Sds_vendas_itensCOD_NCM.Text;
formvendas.Sds_pedidos_itensPROD_SERV.Text            := Dm.Sds_vendas_itensPROD_SERV.TEXT;
formvendas.Sds_pedidos_itensITEN.Text                 := Dm.Sds_vendas_itensITEN.Text;
formvendas.sds_pedidos_itensCODIGO_BICO.Text          := DM.Sds_Vendas_itensID_BICO.TEXT;
formvendas.sds_pedidos_itensPROD_SERV.Text            := DM.Sds_Vendas_itensPROD_SERV.TEXT;
formvendas.sds_pedidos_itensPERC_ISS.Text             := DM.Sds_Vendas_itensPERC_ISS.TEXT;
formvendas.sds_pedidos_itensBASE_ISS.Text             := DM.Sds_Vendas_itensBASE_ISS.TEXT;
formvendas.sds_pedidos_itensVL_ISS.Text               := DM.Sds_Vendas_itensVL_ISS.TEXT;
formvendas.sds_pedidos_itensPERC_ICM.Text             := DM.Sds_Vendas_itensPERC_ICM.TEXT;
formvendas.sds_pedidos_itensBASE_ICMS.Text            := DM.Sds_Vendas_itensBASE_ICMS.TEXT;
formvendas.sds_pedidos_itensVL_ICM.Text               := DM.Sds_Vendas_itensVL_ICM.TEXT;
formvendas.sds_pedidos_itensPERC_IPI.Text             := DM.Sds_Vendas_itensPERC_IPI.TEXT;
formvendas.sds_pedidos_itensBASE_IPI.Text             := DM.Sds_Vendas_itensBASE_IPI.TEXT;
formvendas.sds_pedidos_itensVL_IPI.Text               := DM.Sds_Vendas_itensVL_IPI.TEXT;
formvendas.sds_pedidos_itensPERC_COFINS.Text          := DM.Sds_Vendas_itensPERC_COFINS.TEXT;
formvendas.sds_pedidos_itensVL_COFINS.Text            := DM.Sds_Vendas_itensVL_COFINS.TEXT;
formvendas.sds_pedidos_itensPERC_ICMS_SUBST.Text      := DM.Sds_Vendas_itensPERC_ICMS_SUBST.TEXT;
formvendas.sds_pedidos_itensBASE_ICMS_SUBST.Text      := DM.Sds_Vendas_itensBASE_ICMS_SUBST.TEXT;
formvendas.sds_pedidos_itensVL_ICMS_SUBST.Text        := DM.Sds_Vendas_itensVL_ICMS_SUBST.TEXT;
formvendas.sds_pedidos_itensPERC_PIS.Text             := DM.Sds_Vendas_itensPERC_PIS.TEXT;
formvendas.sds_pedidos_itensBASE_PIS.Text             := DM.Sds_Vendas_itensBASE_PIS.TEXT;
formvendas.sds_pedidos_itensVL_PIS.Text               := DM.Sds_Vendas_itensVL_PIS.TEXT;
//formvendas.sds_pedidos_itensCOD_EMPRESA.Text          := DM.Sds_Vendas_itensCOD_EMPRESA.TEXT;
//formvendas.sds_pedidos_itensimprime.Text          := DM.Sds_Vendas_itensIMPRIME.TEXT;
formvendas.sds_pedidos_itensBOMBA.Text              := DM.Sds_Vendas_itensID_BOMBA.Text;
Formvendas.sds_pedidos_itensTANQUE.Text             := DM.Sds_Vendas_itensID_TANQUE.Text;

Dm.Sds_vendas_itens.Next;
end;
formvendas.Sds_pedidos_itens.Post;

//formvendas.Tvendas.Visible := True;
formvendas.Tvendas.PageIndex := 1;
formvendas.Inserir.Enabled:= False;
formvendas.pesquisar.Enabled := False;
//formvendas.reimprimir.Enabled := False;
formvendas.confirmar.Enabled := True;
//Navegador.Enabled := False;
formvendas.GroupBox1.Enabled := True;
formvendas.GroupBox2.Enabled := True;
formvendas.groupbox3.Enabled := True;
//formvendas.Alterar.Enabled:=false;
formvendas.cancelar.Enabled:=False;

formvendas.Edit60.Visible := true;
formvendas.E_desconto.Visible := true;
formvendas.Edit62.Visible := true;
end;

end;

procedure TformVendas.sBitBtn2Click(Sender: TObject);
var
  valor_ant : Real;
  i: integer ;
begin
Sds_Pedidos_itens.First;
Contador := formvendas.Sds_Pedidos_itens.RecordCount;
For i:=1 to Contador do
begin
 sds_pedidos_itens.Edit;
 valor_ant := sds_pedidos_itensPRECO_UNITARIO.AsFloat;
 sds_pedidos_itensPRECO_UNITARIO.AsFloat := valor_ant + ((sds_pedidos_itensPRECO_UNITARIO.AsFloat * Edit5.value)/100);
 sds_pedidos_itenspreco_total.AsFloat   := (sds_pedidos_itensQUANTIDADE.AsFloat  * sds_pedidos_itensPRECO_UNITARIO.AsFloat);
 sds_pedidos_itens.Post;
 sds_pedidos_itens.Next;
 end;
end;

procedure TformVendas.sBitBtn3Click(Sender: TObject);
var
  valor_ant : Real;
  i: integer ;
begin
Sds_orcamentos_itens.First;
Contador := formvendas.Sds_orcamentos_itens.RecordCount;
For i:=1 to Contador do
begin
 Sds_orcamentos_itens.Edit;
 valor_ant := Sds_orcamentos_itensPRECO_UNITARIO.AsFloat;
 Sds_orcamentos_itensPRECO_UNITARIO.AsFloat := valor_ant + ((Sds_orcamentos_itensPRECO_UNITARIO.AsFloat * CurrencyEdit1.value)/100);
 Sds_orcamentos_itenspreco_total.AsFloat   := (Sds_orcamentos_itensQUANTIDADE.AsFloat  * Sds_orcamentos_itensPRECO_UNITARIO.AsFloat);
 Sds_orcamentos_itens.Post;
 Sds_orcamentos_itens.Next;
 end;
end;

procedure TformVendas.CheckBox5Click(Sender: TObject);
begin
if CheckBox5.Checked = True then
 CheckBox4.Checked := false
 else
 CheckBox4.Checked := True;
end;

procedure TformVendas.CheckBox4Click(Sender: TObject);
begin
if CheckBox4.Checked = True then
 CheckBox5.Checked := false
 else
 CheckBox5.Checked := True;
end;

procedure TformVendas.E1Click(Sender: TObject);
begin
FApagaOrcamentoCondicional  := tFApagaOrcamentoCondicional.create(Self);
FApagaOrcamentoCondicional.showmodal;
end;

end.

