unit UGerenciamentoNFce;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, pcnConversao, DB,
  IBCustomDataSet, IBDatabase, IBQuery, Menus, ACBrNFe, ACBrNFeDANFEClass,
  Mask, pcnNFeRTXT, RXDBCtrl, DBClient,
  SimpleDS, ImgList, acAlphaImageList, DBCtrls,  acPNG,
  NxPageControl, sMaskEdit, sCustomComboEdit, sTooledit, RpDefine,
  RpRender, RpRenderPDF, FMTBcd, SqlExpr,XMLIntf, XMLDoc, pcnNFeW,
  ACBrEAD,ACBrNFeNotasFiscais, ACBrUtil, pcnAuxiliar, pcnConversaoNFe,
  System.ImageList, AdvGlowButton, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Data.DBXFirebird;

type
  TFrmGerenciamentoNFce = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BtnEnviar: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Combo: TComboBox;
    BtnOk: TButton;
    BtnSair: TButton;
    QConsNfe: TFDQuery;
    DSConsNFe: TDataSource;
    IBTRNfe: TFDTransaction;
    PopupMenu1: TPopupMenu;
    Serviosespecias1: TMenuItem;
    ResetarNFe1: TMenuItem;
    Memo: TMemo;
    Ex1: TMenuItem;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    QBuscaItens: TFDQuery;
    qnFE: TSimpleDataSet;
    EdtDataIni: TsDateEdit;
    EdtDataFin: TsDateEdit;
    Paginas: TNxPageControl;
    Notas: TNxTabSheet;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Label34: TLabel;
    Image2: TImage;
    Label4: TLabel;
    Image3: TImage;
    Label5: TLabel;
    Image5: TImage;
    Label7: TLabel;
    Image6: TImage;
    Label8: TLabel;
    Image7: TImage;
    Label9: TLabel;
    Image11: TImage;
    Label13: TLabel;
    Cartas: TNxTabSheet;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    EnviaCarta: TAdvGlowButton;
    ExcluirCarta: TAdvGlowButton;
    NovaCarta: TAdvGlowButton;
    EditarCarta: TAdvGlowButton;
    ImpCarta: TAdvGlowButton;
    Panel5: TPanel;
    Label2: TLabel;
    DBText1: TDBText;
    GroupBox4: TGroupBox;
    Image4: TImage;
    Label6: TLabel;
    Image8: TImage;
    Label10: TLabel;
    Image9: TImage;
    Label11: TLabel;
    Image10: TImage;
    Label12: TLabel;
    Imagens: TsAlphaImageList;
    QCartas: TFDQuery;
    DSCartas: TDataSource;
    ICartas: TFDQuery;
    Panel6: TPanel;
    SPC_N_NFE: TSQLStoredProc;
    QCartasCOD: TIntegerField;
    QCartasCOD_NF: TIntegerField;
    QCartasDATA: TDateField;
    QCartasSEQ: TIntegerField;
    QConsNfeCALC_TRANSMITIDO: TStringField;
    QConsNfeCALC_CANCELADO: TStringField;
    QConsNfeCALC_INUTILIZADO: TStringField;
    QConsNfeCALC_EMAIL: TStringField;
    QConsNfeCALC_DESTINATARIO: TStringField;
    qnFECD_EMPRESA: TIntegerField;
    qnFENR_NOTA: TIntegerField;
    qnFECOD_CLIENTE: TIntegerField;
    qnFEFL_IMPRESSO: TStringField;
    qnFESERIE_NF: TStringField;
    qnFECD_CFOP: TIntegerField;
    qnFEDT_EMISSAO: TDateField;
    qnFEDT_LANCAMENTO: TDateField;
    qnFEVL_ACRESCIMOS: TFMTBCDField;
    qnFEVL_DESCONTOS: TFMTBCDField;
    qnFEVL_MERCADORIAS: TFMTBCDField;
    qnFEVL_SERVICOS: TFMTBCDField;
    qnFEVL_TOTAL: TFMTBCDField;
    qnFECOD_PGTO: TIntegerField;
    qnFEVL_AVISTA: TFMTBCDField;
    qnFEVL_PRAZO: TFMTBCDField;
    qnFEPESO_TOTAL: TFMTBCDField;
    qnFEQT_PECAS: TFMTBCDField;
    qnFECFOP_DESC: TStringField;
    qnFECD_TRANSPORTADORA: TIntegerField;
    qnFEUF_ORIGEM: TStringField;
    qnFEUF_DESTINO: TStringField;
    qnFEPESO_LIQUIDO: TFMTBCDField;
    qnFEVL_FRETE: TFMTBCDField;
    qnFEVL_SEGURO: TFMTBCDField;
    qnFEVL_BASE_ICM: TFMTBCDField;
    qnFEVL_ICM: TFMTBCDField;
    qnFEVL_BASE_ICM_SUBST: TFMTBCDField;
    qnFEVL_ICM_SUBST: TFMTBCDField;
    qnFEVL_IPI: TFMTBCDField;
    qnFEVL_ISS: TFMTBCDField;
    qnFETP_FRETE: TStringField;
    qnFEQT_VOLUMES: TFMTBCDField;
    qnFEESPECIE_VOLUMES: TStringField;
    qnFEMARCA_VOLUMES: TStringField;
    qnFENR_VOLUMES: TIntegerField;
    qnFECD_TIPOCOBR: TIntegerField;
    qnFECD_FUNCIONARIO: TIntegerField;
    qnFEDT_ATZ: TDateField;
    qnFEPLACA_TRANSP: TStringField;
    qnFEUF_PLACA_TRANSP: TStringField;
    qnFEVL_OUTROS: TFMTBCDField;
    qnFENR_PEDIDO: TIntegerField;
    qnFEVL_BASE_PIS: TFMTBCDField;
    qnFEVL_PIS: TFMTBCDField;
    qnFEVL_BASE_COFINS: TFMTBCDField;
    qnFEVL_COFINS: TFMTBCDField;
    qnFEVL_BASE_IPI: TFMTBCDField;
    qnFEVL_BASE_ISS: TFMTBCDField;
    qnFEVL_DESCONTO_ITEM: TFMTBCDField;
    qnFEVL_ISENTO_ITENS: TFMTBCDField;
    qnFEVL_OUTROS_ITENS: TFMTBCDField;
    qnFENR_PROTOCOLO_NFE: TStringField;
    qnFEDT_PROCESSAMENTO_NFE: TDateField;
    qnFESTATUS: TStringField;
    qnFENR_LOTE_NFE: TStringField;
    qnFENR_RECIBO_NFE: TStringField;
    qnFENR_PROTOCOLO_CANC_NFE: TStringField;
    qnFECHAVE_ACESSO_NFE: TStringField;
    qnFEVL_FRETE_CONHECIMENTO: TFMTBCDField;
    qnFEVL_ST_CONHECIMENTO: TFMTBCDField;
    qnFEVL_ICM_CONHECIMENTO: TFMTBCDField;
    qnFEBASE_ICM_PROPRIO_ST: TFMTBCDField;
    qnFEVL_ICM_PROPRIO_ST: TFMTBCDField;
    qnFEVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    qnFEVL_ICM_SUBST_REAL: TFMTBCDField;
    qnFECNPJ_TRANSP: TStringField;
    qnFENOME_TRANSP: TStringField;
    qnFEIE_TRANSP: TStringField;
    qnFEEND_TRANSPORTADOR: TStringField;
    qnFECIDADE_TRANSP: TStringField;
    qnFEUF_TRANSP: TStringField;
    qnFETP: TStringField;
    qnFEN_NOTA_ENTRADA: TStringField;
    qnFENOME_CLIENTE_FOR: TStringField;
    qnFECPF_CNPJ_CLIENTE_FORN: TStringField;
    qnFEIE_CLIENTE_FORN: TStringField;
    qnFEENDERECO_CLI_FORN: TStringField;
    qnFEEND_NUM_CLIENTE: TStringField;
    qnFECOD_IBGE: TStringField;
    qnFECEP_CLIENTE_FORN: TStringField;
    qnFEBAIRRO_CLIENTE_FORN: TStringField;
    qnFETIPO_PESSOA: TStringField;
    qnFETELEFONE: TStringField;
    qnFECIDADE_CLIENTE_FORN: TStringField;
    qnFEUF_CLIENTE_FORN: TStringField;
    qnFEIE_PRODUTOR: TStringField;
    qnFEPRODUTOR_RURAL: TStringField;
    qnFEPAGAMENTO: TStringField;
    qnFESTATUS_INUTILIZADO: TStringField;
    qnFESTATUS_CANCELADO: TStringField;
    qnFESTATUS_EMAIL: TStringField;
    qnFECOD_FORNECEDOR: TIntegerField;
    qnFEDEPEC: TStringField;
    qnFECHAVE2: TStringField;
    qnFESTATUS_RETORNO: TStringField;
    qnFEJUSTIFICATIVA_CANCEL_INUTIL: TStringField;
    qnFEMODELO: TStringField;
    qnFECORRECAO: TStringField;
    qnFEVL_TROCO: TFMTBCDField;
    qNfce_itens: TSimpleDataSet;
    qNfce_itensNR_SEQUENCIA: TIntegerField;
    qNfce_itensNR_NOTA: TIntegerField;
    qNfce_itensCOD_PRODUTO: TStringField;
    qNfce_itensCOD_NCM: TStringField;
    qNfce_itensDESCRICAO_PRODUTO: TStringField;
    qNfce_itensPROD_SERV: TStringField;
    qNfce_itensQT_PRODUTO: TFMTBCDField;
    qNfce_itensVL_UNITARIO: TFMTBCDField;
    qNfce_itensVL_TOTAL: TFMTBCDField;
    qNfce_itensDT_LANCAMENTO: TDateField;
    qNfce_itensPESO_LIQUIDO: TFloatField;
    qNfce_itensCD_ATUALIZACAO: TIntegerField;
    qNfce_itensCST: TStringField;
    qNfce_itensPC_RED_BASE_ICM: TFMTBCDField;
    qNfce_itensALIQ_ICM: TFMTBCDField;
    qNfce_itensALIQ_ICM_SUBST: TFMTBCDField;
    qNfce_itensALIQ_IPI: TFMTBCDField;
    qNfce_itensALIQ_ISS: TFMTBCDField;
    qNfce_itensVL_BASE_ICM: TFMTBCDField;
    qNfce_itensVL_ICM: TFMTBCDField;
    qNfce_itensVL_ICM_SUBST: TFMTBCDField;
    qNfce_itensVL_IPI: TFMTBCDField;
    qNfce_itensVL_ISS: TFMTBCDField;
    qNfce_itensDT_ALTERACAO: TDateField;
    qNfce_itensDESC_UNIDADE: TStringField;
    qNfce_itensPERC_DESCONTO: TFMTBCDField;
    qNfce_itensVL_BASE_ICM_SUBST: TFMTBCDField;
    qNfce_itensCD_CONTA: TIntegerField;
    qNfce_itensCFOP: TStringField;
    qNfce_itensVL_DESCONTO: TFMTBCDField;
    qNfce_itensVL_CONTABIL: TFMTBCDField;
    qNfce_itensVL_OUTROS: TFMTBCDField;
    qNfce_itensVL_ISENTO: TFMTBCDField;
    qNfce_itensALIQ_PIS: TFMTBCDField;
    qNfce_itensVL_BASE_PIS: TFMTBCDField;
    qNfce_itensVL_PIS: TFMTBCDField;
    qNfce_itensALIQ_COFINS: TFMTBCDField;
    qNfce_itensVL_BASE_COFINS: TFMTBCDField;
    qNfce_itensVL_COFINS: TFMTBCDField;
    qNfce_itensVL_BASE_ISS: TFMTBCDField;
    qNfce_itensVL_BASE_IPI: TFMTBCDField;
    qNfce_itensALIQ_ICM_PROPRIO_ST: TFMTBCDField;
    qNfce_itensVL_BASE_ICM_PROPRIO_ST: TFMTBCDField;
    qNfce_itensVL_ICM_PROPRIO_ST: TFMTBCDField;
    qNfce_itensALIQ_ICM_SUBST_REAL: TFMTBCDField;
    qNfce_itensVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    qNfce_itensVL_ICM_SUBST_REAL: TFMTBCDField;
    qNfce_itensITEN: TIntegerField;
    qNfce_itensCODIGO_PROD: TIntegerField;
    qNfce_itensCST_PIS: TStringField;
    qNfce_itensCST_COFINS: TStringField;
    qNfce_itensCST_IPI: TStringField;
    qNfce_itensCOD_EMPRESA: TIntegerField;
    Image12: TImage;
    Label3: TLabel;
    TRVendasoff: TFDTransaction;
    QVendasOFFLINE: TFDQuery;
    QVendasOFFLINECD_EMPRESA: TIntegerField;
    QVendasOFFLINENR_NOTA: TIntegerField;
    QVendasOFFLINECOD_CLIENTE: TIntegerField;
    QVendasOFFLINEFL_IMPRESSO: TIBStringField;
    QVendasOFFLINESERIE_NF: TIBStringField;
    QVendasOFFLINECD_CFOP: TIntegerField;
    QVendasOFFLINEDT_EMISSAO: TDateField;
    QVendasOFFLINEDT_LANCAMENTO: TDateField;
    QVendasOFFLINEVL_ACRESCIMOS: TIBBCDField;
    QVendasOFFLINEVL_DESCONTOS: TIBBCDField;
    QVendasOFFLINEVL_MERCADORIAS: TIBBCDField;
    QVendasOFFLINEVL_SERVICOS: TIBBCDField;
    QVendasOFFLINEVL_TOTAL: TIBBCDField;
    QVendasOFFLINECOD_PGTO: TIntegerField;
    QVendasOFFLINEVL_AVISTA: TIBBCDField;
    QVendasOFFLINEVL_PRAZO: TIBBCDField;
    QVendasOFFLINEPESO_TOTAL: TIBBCDField;
    QVendasOFFLINEQT_PECAS: TIBBCDField;
    QVendasOFFLINECFOP_DESC: TIBStringField;
    QVendasOFFLINECD_TRANSPORTADORA: TIntegerField;
    QVendasOFFLINEUF_ORIGEM: TIBStringField;
    QVendasOFFLINEUF_DESTINO: TIBStringField;
    QVendasOFFLINEPESO_LIQUIDO: TIBBCDField;
    QVendasOFFLINEVL_FRETE: TIBBCDField;
    QVendasOFFLINEVL_SEGURO: TIBBCDField;
    QVendasOFFLINEVL_BASE_ICM: TIBBCDField;
    QVendasOFFLINEVL_ICM: TIBBCDField;
    QVendasOFFLINEVL_BASE_ICM_SUBST: TIBBCDField;
    QVendasOFFLINEVL_ICM_SUBST: TIBBCDField;
    QVendasOFFLINEVL_IPI: TIBBCDField;
    QVendasOFFLINEVL_ISS: TIBBCDField;
    QVendasOFFLINETP_FRETE: TIBStringField;
    QVendasOFFLINEQT_VOLUMES: TIBBCDField;
    QVendasOFFLINEESPECIE_VOLUMES: TIBStringField;
    QVendasOFFLINEMARCA_VOLUMES: TIBStringField;
    QVendasOFFLINENR_VOLUMES: TIntegerField;
    QVendasOFFLINECD_TIPOCOBR: TIntegerField;
    QVendasOFFLINECD_FUNCIONARIO: TIntegerField;
    QVendasOFFLINEDT_ATZ: TDateField;
    QVendasOFFLINEPLACA_TRANSP: TIBStringField;
    QVendasOFFLINEUF_PLACA_TRANSP: TIBStringField;
    QVendasOFFLINEVL_OUTROS: TIBBCDField;
    QVendasOFFLINENR_PEDIDO: TIntegerField;
    QVendasOFFLINEVL_BASE_PIS: TIBBCDField;
    QVendasOFFLINEVL_PIS: TIBBCDField;
    QVendasOFFLINEVL_BASE_COFINS: TIBBCDField;
    QVendasOFFLINEVL_COFINS: TIBBCDField;
    QVendasOFFLINEVL_BASE_IPI: TIBBCDField;
    QVendasOFFLINEVL_BASE_ISS: TIBBCDField;
    QVendasOFFLINEVL_DESCONTO_ITEM: TIBBCDField;
    QVendasOFFLINEVL_ISENTO_ITENS: TIBBCDField;
    QVendasOFFLINEVL_OUTROS_ITENS: TIBBCDField;
    QVendasOFFLINENR_PROTOCOLO_NFE: TIBStringField;
    QVendasOFFLINEDT_PROCESSAMENTO_NFE: TDateField;
    QVendasOFFLINESTATUS: TIBStringField;
    QVendasOFFLINENR_LOTE_NFE: TIBStringField;
    QVendasOFFLINENR_RECIBO_NFE: TIBStringField;
    QVendasOFFLINENR_PROTOCOLO_CANC_NFE: TIBStringField;
    QVendasOFFLINECHAVE_ACESSO_NFE: TIBStringField;
    QVendasOFFLINEVL_FRETE_CONHECIMENTO: TIBBCDField;
    QVendasOFFLINEVL_ST_CONHECIMENTO: TIBBCDField;
    QVendasOFFLINEVL_ICM_CONHECIMENTO: TIBBCDField;
    QVendasOFFLINEBASE_ICM_PROPRIO_ST: TIBBCDField;
    QVendasOFFLINEVL_ICM_PROPRIO_ST: TIBBCDField;
    QVendasOFFLINEVL_BASE_ICM_SUBST_REAL: TIBBCDField;
    QVendasOFFLINEVL_ICM_SUBST_REAL: TIBBCDField;
    QVendasOFFLINECNPJ_TRANSP: TIBStringField;
    QVendasOFFLINENOME_TRANSP: TIBStringField;
    QVendasOFFLINEIE_TRANSP: TIBStringField;
    QVendasOFFLINEEND_TRANSPORTADOR: TIBStringField;
    QVendasOFFLINECIDADE_TRANSP: TIBStringField;
    QVendasOFFLINEUF_TRANSP: TIBStringField;
    QVendasOFFLINETP: TIBStringField;
    QVendasOFFLINEN_NOTA_ENTRADA: TIBStringField;
    QVendasOFFLINENOME_CLIENTE_FOR: TIBStringField;
    QVendasOFFLINECPF_CNPJ_CLIENTE_FORN: TIBStringField;
    QVendasOFFLINEIE_CLIENTE_FORN: TIBStringField;
    QVendasOFFLINEENDERECO_CLI_FORN: TIBStringField;
    QVendasOFFLINEEND_NUM_CLIENTE: TIBStringField;
    QVendasOFFLINECOD_IBGE: TIBStringField;
    QVendasOFFLINECEP_CLIENTE_FORN: TIBStringField;
    QVendasOFFLINEBAIRRO_CLIENTE_FORN: TIBStringField;
    QVendasOFFLINETIPO_PESSOA: TIBStringField;
    QVendasOFFLINETELEFONE: TIBStringField;
    QVendasOFFLINECIDADE_CLIENTE_FORN: TIBStringField;
    QVendasOFFLINEUF_CLIENTE_FORN: TIBStringField;
    QVendasOFFLINEIE_PRODUTOR: TIBStringField;
    QVendasOFFLINEPRODUTOR_RURAL: TIBStringField;
    QVendasOFFLINEPAGAMENTO: TIBStringField;
    QVendasOFFLINESTATUS_INUTILIZADO: TIBStringField;
    QVendasOFFLINESTATUS_CANCELADO: TIBStringField;
    QVendasOFFLINESTATUS_EMAIL: TIBStringField;
    QVendasOFFLINECOD_FORNECEDOR: TIntegerField;
    QVendasOFFLINEDEPEC: TIBStringField;
    QVendasOFFLINECHAVE2: TIBStringField;
    QVendasOFFLINESTATUS_RETORNO: TIBStringField;
    QVendasOFFLINEJUSTIFICATIVA_CANCEL_INUTIL: TIBStringField;
    QVendasOFFLINEMODELO: TIBStringField;
    QVendasOFFLINECORRECAO: TIBStringField;
    QVendasOFFLINEVL_TROCO: TIBBCDField;
    QVendasOFFLINEBXML: TBlobField;
    QConsNfeCD_EMPRESA: TIntegerField;
    QConsNfeNR_NOTA: TIntegerField;
    QConsNfeCOD_CLIENTE: TIntegerField;
    QConsNfeFL_IMPRESSO: TStringField;
    QConsNfeSERIE_NF: TStringField;
    QConsNfeCD_CFOP: TIntegerField;
    QConsNfeDT_EMISSAO: TDateField;
    QConsNfeDT_LANCAMENTO: TDateField;
    QConsNfeVL_ACRESCIMOS: TFMTBCDField;
    QConsNfeVL_DESCONTOS: TFMTBCDField;
    QConsNfeVL_MERCADORIAS: TFMTBCDField;
    QConsNfeVL_SERVICOS: TFMTBCDField;
    QConsNfeVL_TOTAL: TFMTBCDField;
    QConsNfeCOD_PGTO: TIntegerField;
    QConsNfeVL_AVISTA: TFMTBCDField;
    QConsNfeVL_PRAZO: TFMTBCDField;
    QConsNfePESO_TOTAL: TFMTBCDField;
    QConsNfeQT_PECAS: TBCDField;
    QConsNfeCFOP_DESC: TStringField;
    QConsNfeCD_TRANSPORTADORA: TIntegerField;
    QConsNfeUF_ORIGEM: TStringField;
    QConsNfeUF_DESTINO: TStringField;
    QConsNfePESO_LIQUIDO: TFMTBCDField;
    QConsNfeVL_FRETE: TFMTBCDField;
    QConsNfeVL_SEGURO: TFMTBCDField;
    QConsNfeVL_BASE_ICM: TFMTBCDField;
    QConsNfeVL_ICM: TFMTBCDField;
    QConsNfeVL_BASE_ICM_SUBST: TFMTBCDField;
    QConsNfeVL_ICM_SUBST: TFMTBCDField;
    QConsNfeVL_IPI: TFMTBCDField;
    QConsNfeVL_ISS: TFMTBCDField;
    QConsNfeTP_FRETE: TStringField;
    QConsNfeQT_VOLUMES: TBCDField;
    QConsNfeESPECIE_VOLUMES: TStringField;
    QConsNfeMARCA_VOLUMES: TStringField;
    QConsNfeNR_VOLUMES: TIntegerField;
    QConsNfeCD_TIPOCOBR: TIntegerField;
    QConsNfeCD_FUNCIONARIO: TIntegerField;
    QConsNfeDT_ATZ: TDateField;
    QConsNfePLACA_TRANSP: TStringField;
    QConsNfeUF_PLACA_TRANSP: TStringField;
    QConsNfeVL_OUTROS: TFMTBCDField;
    QConsNfeNR_PEDIDO: TIntegerField;
    QConsNfeVL_BASE_PIS: TFMTBCDField;
    QConsNfeVL_PIS: TFMTBCDField;
    QConsNfeVL_BASE_COFINS: TFMTBCDField;
    QConsNfeVL_COFINS: TFMTBCDField;
    QConsNfeVL_BASE_IPI: TFMTBCDField;
    QConsNfeVL_BASE_ISS: TFMTBCDField;
    QConsNfeVL_DESCONTO_ITEM: TFMTBCDField;
    QConsNfeVL_ISENTO_ITENS: TFMTBCDField;
    QConsNfeVL_OUTROS_ITENS: TFMTBCDField;
    QConsNfeNR_PROTOCOLO_NFE: TStringField;
    QConsNfeDT_PROCESSAMENTO_NFE: TDateField;
    QConsNfeSTATUS: TStringField;
    QConsNfeNR_LOTE_NFE: TStringField;
    QConsNfeNR_RECIBO_NFE: TStringField;
    QConsNfeNR_PROTOCOLO_CANC_NFE: TStringField;
    QConsNfeCHAVE_ACESSO_NFE: TStringField;
    QConsNfeVL_FRETE_CONHECIMENTO: TFMTBCDField;
    QConsNfeVL_ST_CONHECIMENTO: TFMTBCDField;
    QConsNfeVL_ICM_CONHECIMENTO: TFMTBCDField;
    QConsNfeBASE_ICM_PROPRIO_ST: TFMTBCDField;
    QConsNfeVL_ICM_PROPRIO_ST: TFMTBCDField;
    QConsNfeVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    QConsNfeVL_ICM_SUBST_REAL: TFMTBCDField;
    QConsNfeCNPJ_TRANSP: TStringField;
    QConsNfeNOME_TRANSP: TStringField;
    QConsNfeIE_TRANSP: TStringField;
    QConsNfeEND_TRANSPORTADOR: TStringField;
    QConsNfeCIDADE_TRANSP: TStringField;
    QConsNfeUF_TRANSP: TStringField;
    QConsNfeTP: TStringField;
    QConsNfeN_NOTA_ENTRADA: TStringField;
    QConsNfeNOME_CLIENTE_FOR: TStringField;
    QConsNfeCPF_CNPJ_CLIENTE_FORN: TStringField;
    QConsNfeIE_CLIENTE_FORN: TStringField;
    QConsNfeENDERECO_CLI_FORN: TStringField;
    QConsNfeEND_NUM_CLIENTE: TStringField;
    QConsNfeCOD_IBGE: TStringField;
    QConsNfeCEP_CLIENTE_FORN: TStringField;
    QConsNfeBAIRRO_CLIENTE_FORN: TStringField;
    QConsNfeTIPO_PESSOA: TStringField;
    QConsNfeTELEFONE: TStringField;
    QConsNfeCIDADE_CLIENTE_FORN: TStringField;
    QConsNfeUF_CLIENTE_FORN: TStringField;
    QConsNfeIE_PRODUTOR: TStringField;
    QConsNfePRODUTOR_RURAL: TStringField;
    QConsNfePAGAMENTO: TStringField;
    QConsNfeSTATUS_INUTILIZADO: TStringField;
    QConsNfeSTATUS_CANCELADO: TStringField;
    QConsNfeSTATUS_EMAIL: TStringField;
    QConsNfeCOD_FORNECEDOR: TIntegerField;
    QConsNfeDEPEC: TStringField;
    QConsNfeCHAVE2: TStringField;
    QConsNfeSTATUS_RETORNO: TStringField;
    QConsNfeJUSTIFICATIVA_CANCEL_INUTIL: TStringField;
    QConsNfeMODELO: TStringField;
    QConsNfeCORRECAO: TStringField;
    QConsNfeVL_TROCO: TFMTBCDField;
    QConsNfeBXML: TBlobField;
    QCartasCHAVE: TStringField;
    QCartasSTATUS_TRANSMITIDA: TStringField;
    QCartasPROTOCOLO: TStringField;
    QCartasDATA_AUT: TDateField;
    QCartasHORA_AUT: TTimeField;
    QCartasCORRECAO: TStringField;
    QCartasRETORNO: TMemoField;
    QCartasCOD_EMPRESA: TIntegerField;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensCODIGO_BARRAS: TStringField;
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
    QBuscaItensCFOP_EST_COMPRA: TStringField;
    QBuscaItensCFOP_INTER_COMPRA: TStringField;
    QBuscaItensCST_VENDA_INTER: TStringField;
    QBuscaItensCST_COMPRA: TStringField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TFMTBCDField;
    QBuscaItensFLAG_PIS_COFINS: TStringField;
    QBuscaItensFLAG_SUBSTITUICAO_TRIB: TStringField;
    QBuscaItensPERC_SUBST_TRIBUTARIA: TFMTBCDField;
    QBuscaItensFLAG_FABRICACAO_PROPRIA: TStringField;
    QBuscaItensFLAG_SERVICO: TStringField;
    QBuscaItensPERC_ALIQUOTA_ISS: TFMTBCDField;
    ibsql: TFDCommand;
    procedure BtnConsultarServicoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QConsNfeCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEnviarEmailClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnInutilizarClick(Sender: TObject);
    procedure BtnCancelamentoClick(Sender: TObject);
    procedure BtnConsultaNFeClick(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
    procedure ResetarNFe1Click(Sender: TObject);
    procedure btnGerarPDFClick(Sender: TObject);
    procedure Ex1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure NovaCartaClick(Sender: TObject);
    procedure EditarCartaClick(Sender: TObject);
    procedure ExcluirCartaClick(Sender: TObject);
    procedure EnviaCartaClick(Sender: TObject);
    procedure EnviarrCarta(COD, COD_NF: integer);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PaginasChange(Sender: TObject);
    procedure FDvGlowButton3Click(Sender: TObject);
//    procedure NotaFiscalEletronica(const iCodigoNotaFiscal: integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Corrige();
  end;

var
  FrmGerenciamentoNFce: TFrmGerenciamentoNFce;

implementation

uses  ModulodeDados, USendEmail, VMXCCePrint, Principal,
  Formata_CPF_CNPJ, pcnNFe, UCartaCorrecao, ufrmStatus, gerNFce, DateUtils, ACBrDFeUtil, pcnProcNFe, Ubibli1,
  UDialog, ACBrNFeConfiguracoes, FrmEnviaParaEmail;

var
  sAmbienteNfe: string;
  sSql: string;
  coluna: Integer;
{$R *.dfm}

function TrocaVirgPPto(Valor: string): String;
   var i:integer;
begin
    if Valor <>'' then begin
        for i := 0 to Length(Valor) do begin
            if Valor[i]=',' then Valor[i]:='.';

        end;
     end;
     Result := valor;
end;


function StringToHex(S: String): String;
var i: Integer;
begin
  Result:= '';
  for i := 1 to length(S) do
    Result:= Result+IntToHex(ord(S[i]),2);
end;

function Iif(Condicao: Boolean; Verdadeiro, Falso: Variant): Variant;
begin
 if Condicao then
   Result := Verdadeiro
 else Result := Falso;
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

function Dc_InputQuerySenha(const ACaption, APrompt: string; var Value:
string):
  Boolean;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
  function GetAveCharSize(Canvas: TCanvas): TPoint;
  var
    I: Integer;
    Buffer: array[0..51] of Char;
  begin
    for I := 0 to 25 do
      Buffer[I] := Chr(I + Ord('A'));
    for I := 0 to 25 do
      Buffer[I + 26] := Chr(I + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
    Result.X := Result.X div 52;
  end;
  procedure Saida(Sender: TObject);
  begin
    if TEdit(Sender).Text = '' then
    begin
      ShowMessage('Vazio');
      TEdit(Sender).SetFocus;
    end;
  end;
begin
  Result := False;
  Form := TForm.Create(Application);
  with Form do
  try
    Canvas.Font := Font;
    DialogUnits := GetAveCharSize(Canvas);
    BorderStyle := bsDialog;
    Caption := ACaption;
    ClientWidth := MulDiv(180, DialogUnits.X, 4);
    Position := poScreenCenter;
    Prompt := TLabel.Create(Form);
    with Prompt do
    begin
      Parent := Form;
      Caption := APrompt;
      Left := MulDiv(8, DialogUnits.X, 4);
      Top := MulDiv(8, DialogUnits.Y, 8);
      Constraints.MaxWidth := MulDiv(164, DialogUnits.X, 4);
      WordWrap := True;
    end;
    Edit := TEdit.Create(Form);
    with Edit do
    begin
      PasswordChar := '*';
      Parent := Form;
      Left := Prompt.Left;
      Top := Prompt.Top + Prompt.Height + 5;
      Width := MulDiv(164, DialogUnits.X, 4);
      MaxLength := 255;
      Text := Value;
      SelectAll;
    end;
    ButtonTop := Edit.Top + Edit.Height + 15;
    ButtonWidth := MulDiv(50, DialogUnits.X, 4);
    ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
    with TButton.Create(Form) do
    begin
      Parent := Form;
      Caption := 'Confirmar';
      ModalResult := mrOk;
      Default := True;
      SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
        ButtonHeight);
    end;
    with TButton.Create(Form) do
    begin
      Parent := Form;
      Caption := 'Cancelar';
      ModalResult := mrCancel;
      Cancel := True;
      SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top + Edit.Height + 15,
        ButtonWidth, ButtonHeight);
      Form.ClientHeight := Top + Height + 13;
    end;
    if ShowModal = mrOk then
    begin
      Value := Edit.Text;
      Result := True;
    end;
  finally
    Form.Free;
  end;
end;

procedure TFrmGerenciamentoNFce.EnviarrCarta(COD, COD_NF: integer);
Var
  sAmbienteNfe: string;
  sNatureza: string;
  iAux, Tipo_emp: integer;
  JC: String;
  DPEC: boolean;
  Chave, idLote, codOrgao, CNPJ, nSeqEvento, Correcao: string;
  Retorno: String;
  Protocolo: String;
  DataHora: Tdatetime;

begin
  { busca parametros }
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Add('SELECT CAMINHO_CERTIFICADO, NFE_SENHA, NFE_CERTIFICAO, NUMERO_SERIE,     '
          + 'TIPO_IMPRESSAO_DANFE, FORMA_EMISSAO_DANFE, NFE_LOGOMARCA,          '
          + 'SALVAR_LOG_DANFE, NFE_CAMINHO_XML, AMBIENTE_DANFE, PASTA_CANCELADAS_DANFE,   '
          + 'PASTA_INUTILIZADAS_DANFE, PASTA_TRANSMITIDAS_DANFE, CAMINHO_ARQUIVOS_PDF,    '
          + 'CAMINHO_RELATORIO_DANFE, ESTADO_NFE                                                      '
          + 'FROM CONFIGURACOES ' + 'WHERE COD_EMPRESA = :CODEMP');
        Parambyname('codemp').AsInteger := iEmp;
        open;

        dm.ACBrNFe1.Configuracoes.Certificados.Senha :=
          trim(fieldbyname('nfe_senha').AsString);
        dm.ACBrNFe1.Configuracoes.Certificados.NumeroSerie :=
          trim(fieldbyname('NFE_CERTIFICAO').AsString);

        if trim(fieldbyname('tipo_impressao_danfe').AsString) = 'R' then
          dm.ACBrNFe1.DANFE.TipoDANFE := tiRetrato
        else
          dm.ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;
        DPEC := False;
        case fieldbyname('forma_emissao_danfe').AsInteger of
          1:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal;
              JC := '';
            end;
          2:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teContingencia;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;
            end;
          3:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teSCAN;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;

            end;
          4:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teDPEC;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;
              DPEC := True;
            end;
          5:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teFSDA;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;

            end;
        end;

        dm.ACBrNFe1.DANFE.Logo := trim(fieldbyname('NFE_LOGOMARCA')
          .AsString);

        if trim(fieldbyname('salvar_log_danfe').AsString) = 'S' then
          dm.ACBrNFe1.Configuracoes.Geral.Salvar := True
        else
          dm.ACBrNFe1.Configuracoes.Geral.Salvar := False;

        dm.ACBrNFe1.Configuracoes.ARQUIVOS.PathSalvar :=
          trim(fieldbyname('NFE_CAMINHO_XML').AsString);

        sAmbienteNfe := trim(fieldbyname('ambiente_danfe').AsString);

        if trim(fieldbyname('ambiente_danfe').AsString) = 'P' then
          dm.ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao
        else
          dm.ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;

        dm.ACBrNFe1.Configuracoes.WebServices.UF :=
          trim(fieldbyname('estado_nfe').AsString);
        dm.ACBrNFe1.Configuracoes.WebServices.Visualizar := False;

        dm.ACBrNFe1.Configuracoes.Arquivos.PathEvento :=
          trim(fieldbyname('pasta_canceladas_danfe').AsString);
        dm.ACBrNFe1.Configuracoes.Arquivos.PathInu :=
          trim(fieldbyname('pasta_inutilizadas_danfe').AsString);
        dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe :=
          trim(fieldbyname('pasta_transmitidas_danfe').AsString);
      //  dm.ACBrNFe1.Configuracoes.Arquivos.PathMDe :=
      //   trim(fieldbyname('pasta_transmitidas_danfe').AsString);
        dm.ACBrNFeDANFEFR1.PathPDF :=
          trim(fieldbyname('caminho_arquivos_pdf').AsString);
      //  dm.ACBrNFe1.Configuracoes.Arquivos.PathMDe :=
      //    trim(fieldbyname('pasta_transmitidas_danfe').AsString);
        dm.ACBrNFe1.Configuracoes.Arquivos.PathEvento :=
          trim(fieldbyname('pasta_transmitidas_danfe').AsString);
        dm.ACBrNFe1.Configuracoes.Arquivos.Salvar := True;

       { dm.ACBrNFeDANFeRL1.FastFile :=
          trim(fieldbyname('caminho_relatorio_danfe').AsString);

        { dm.ACBrNFeDANFERave1.PathPDF := trim
          (fieldbyname('caminho_arquivos_pdf').AsString);
          dm.ACBrNFeDANFERave1.RavFile := trim
          (fieldbyname('caminho_relatorio_danfe').AsString); }
      end;

      dm.IBTransaction.Commit;
    except
      on e: exception do
      begin
        dm.IBTransaction.Rollback;
        ShowMessage('Erro ao buscar os parâmetros' + #13 + e.message);
      end;
    end;
  finally
    dm.QConsulta.close;
  end;

  { BUSCA CARTA }
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    dm.QConsulta.close;
    dm.QConsulta.sql.Clear;
    dm.QConsulta.sql.Text := 'SELECT * FROM NOTA_FISCAL_CCE WHERE COD=:COD';
    dm.QConsulta.Parambyname('COD').AsInteger := COD;
    dm.QConsulta.open;
    if dm.QConsulta.IsEmpty then
    begin
      dm.IBTransaction.Rollback;
     ShowMessage('Carta de correção não encontrada!');
      exit;
    end;
    
    Chave := RemoveChar(dm.QConsulta.fieldbyname('CHAVE').AsString);
    { if not ValidarChave(Chave) then
      begin
      MessageDlg('Chave Inválida.', mtError, [mbok], 0);
      exit;
      end; }
    idLote := '1';
    codOrgao := copy(Chave, 1, 2);
    CNPJ := copy(Chave, 7, 14);
    nSeqEvento := dm.QConsulta.fieldbyname('SEQ').AsString;
    Correcao := dm.QConsulta.fieldbyname('CORRECAO').AsString;
    dm.ACBrNFe1.CartaCorrecao.CCe.Evento.Clear;
    // dm.ACBrNFe1.EnvEvento.EnvEventoNFe.idLote := strtoint(idLote);
    dm.ACBrNFe1.EventoNFe.Evento.Clear;
    with dm.ACBrNFe1.EventoNFe.Evento.Add do
    begin
      infEvento.chNFe := Chave;
      infEvento.cOrgao := strtoint(codOrgao);
      infEvento.CNPJ := CNPJ;
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCCe;
      infEvento.nSeqEvento := strtoint(nSeqEvento);
      infEvento.versaoEvento := '1.00';

      infEvento.detEvento.xCorrecao := Correcao;

    end;
    dm.QConsulta.close;
    dm.IBTransaction.Commit;
  except
    on e: exception do
    begin
      dm.IBTransaction.Rollback;
      ShowMessage('Erro ao Buscar Carta' + #13 + e.message);
      exit;
    end;
  end;
  dm.ACBrNFe1.EventoNFe.GerarXML;
  if (frmStatus = nil) then
    frmStatus := TfrmStatus.Create(nil);
  frmStatus.lblStatus.Caption := 'Enviando CC-e';
  frmStatus.Show;
  frmStatus.BringToFront;
  Sleep(100);
  Application.ProcessMessages;
  dm.ACBrNFe1.EnviarEvento(strtoint(idLote));
  frmStatus.close;
  // dm.ACBrNFe1.WebServices.CartaCorrecao.Executar;

  if dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.cStat = 128 then
  begin
    if dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
      .RetInfEvento.cStat = 573 then
    begin
      showmessage
        ('Esta Carta de correção ja existe enviei um nova para substir');

      dm.QConsulta.close;
      dm.QConsulta.sql.Clear;
      dm.QConsulta.sql.Text :=
        'UPDATE NOTA_FISCAL_CCE SET PROTOCOLO=:PROT, DATA_AUT=:DATA,' +
        'HORA_AUT=:HORA, RETORNO=:RET, STATUS_TRANSMITIDA=:S where COD=:COD';
      dm.QConsulta.Parambyname('PROT').AsString := Protocolo;
      dm.QConsulta.Parambyname('DATA').AsString :=
        FormatDatetime('dd/mm/yyyy', DataHora);
      dm.QConsulta.Parambyname('HORA').AsString :=
        FormatDatetime('hh:mm:ss', DataHora);
      dm.QConsulta.Parambyname('RET').AsString := Retorno;
      dm.QConsulta.Parambyname('S').AsString := 'S';
      dm.QConsulta.Parambyname('COD').AsInteger := COD;
      dm.QConsulta.ExecSQL;
      dm.QConsulta.close;
      dm.IBTransaction.Commit;
      exit;
    end;
    if dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
      .RetInfEvento.cStat = 135 then
    begin
      Protocolo := dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.
        Items[0].RetInfEvento.nProt;
      DataHora := dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.
        Items[0].RetInfEvento.dhRegEvento;
      Retorno := dm.ACBrNFe1.WebServices.EnvEvento.RetornoWS;
      if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;
      try
        dm.QConsulta.close;
        dm.QConsulta.sql.Clear;
        dm.QConsulta.sql.Text :=
          'update nota_fiscal_cce set STATUS_TRANSMITIDA=:S where not COD=:COD and COD_NF=:COD_NF';
        dm.QConsulta.Parambyname('COD').AsInteger := COD;
        dm.QConsulta.Parambyname('COD_NF').AsInteger := COD_NF;
        dm.QConsulta.Parambyname('S').AsString := 'C';
        dm.QConsulta.ExecSQL;
        dm.QConsulta.close;
        dm.QConsulta.sql.Clear;
        dm.QConsulta.sql.Text :=
          'UPDATE NOTA_FISCAL_CCE SET PROTOCOLO=:PROT, DATA_AUT=:DATA,' +
          'HORA_AUT=:HORA, RETORNO=:RET, STATUS_TRANSMITIDA=:S where COD=:COD';
        dm.QConsulta.Parambyname('PROT').AsString := Protocolo;
        dm.QConsulta.Parambyname('DATA').AsString :=
          FormatDatetime('dd/mm/yyyy', DataHora);
        dm.QConsulta.Parambyname('HORA').AsString :=
          FormatDatetime('hh:mm:ss', DataHora);
        dm.QConsulta.Parambyname('RET').AsString := Retorno;
        dm.QConsulta.Parambyname('S').AsString := 'A';
        dm.QConsulta.Parambyname('COD').AsInteger := COD;
        dm.QConsulta.ExecSQL;
        dm.QConsulta.close;
        dm.IBTransaction.Commit;
        ShowMessage('Carta enviada' + #13 +
          inttostr(dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.
          Items[0].RetInfEvento.cStat) + ':' +
          dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
          .RetInfEvento.xMotivo);
        FrmGerenciamentoNFce.impCarta.Click;
      except
        on e: exception do
        begin
          dm.IBTransaction.Rollback;
          ShowMessage('Erro ao atualizar carta' + #13 + e.message);
          exit;
        end;
      end;
    end
    else
    begin
      ShowMessage('Carta não autorizada' + #13 +
        inttostr(dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items
        [0].RetInfEvento.cStat) + ':' + dm.ACBrNFe1.WebServices.EnvEvento.
        EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);

    end;

  end
  else
  begin
    ShowMessage('Erro ao processar Lote' + #13 +
      inttostr(dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.cStat) + ':' +
      dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.xMotivo);

  end;
end;


procedure TFrmGerenciamentoNFce.Corrige;
var
  Chave2, caminho, protocolo, chave, rec: string;
  cod: Integer;
  tempdata: string;
begin

  Chave2 := copy(trim(QConsNfeCHAVE2.AsString), 4,
    length(trim(QConsNfeCHAVE2.AsString)) - 3);
    // caminho := DM.ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\' + Chave2 +
    //  '-nfe.xml';

  tempdata := formatdatetime('yyyy', QConsNfeDT_EMISSAO.AsDateTime)
      + formatdatetime('mm', QConsNfeDT_EMISSAO.AsDateTime);

    { verifica se o arquivo xml da nota existe no caminho especificado }
  sCNPJEmpresa := RemoveChar(DM.SDS_EmpresaCNPJ.Text);

  Caminho := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text
      + sCNPJEmpresa +'\NFCe\'+ tempdata + '\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

  cod := QConsNfeNR_NOTA.AsInteger;

  if not fileexists(caminho) then
  begin
    ShowMessage('XML não encontrado!');
    exit;
  end;

  DM.ACBrNFe1.NotasFiscais.Clear;
  DM.ACBrNFe1.NotasFiscais.LoadFromFile(caminho);
  DM.ACBrNFe1.WebServices.Consulta.NFeChave := trim(Chave2);
  DM.ACBrNFe1.WebServices.Consulta.Executar;
  if DM.ACBrNFe1.WebServices.Consulta.cStat = 101 then
  begin
    ShowMessage('NF-e costa como cancelada Na Base de Dados da Sefaz..!' + #13 +
        DM.ACBrNFe1.WebServices.Consulta.XMotivo);
    DM.ACBrNFe1.NotasFiscais.Items[0].GerarXML();
    exit;
  end;

  if DM.ACBrNFe1.NotasFiscais.Items[0].Confirmada then
  begin
    DM.ACBrNFe1.NotasFiscais.Items[0].GerarXML();
    protocolo := DM.ACBrNFe1.WebServices.Consulta.protocolo;
    chave := Chave2;
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
    dm.IBTransaction.StartTransaction;

    try
      try
        with dm.QConsulta do
        begin

          close;
          sql.Clear;
          sql.Text := 'UPDATE NFE_NOTA ' +
            'SET CHAVE_ACESSO_NFE = :CHAVE, NR_PROTOCOLO_NFE = :PROTO' +
            'WHERE NR_NOTA = :CODNF';
          Parambyname('chave').AsString := trim(chave);
          Parambyname('proto').AsString := trim(protocolo);
          Parambyname('codnf').AsInteger := cod;
          ExecSQL;
        end;
        dm.IBTransaction.Commit;
      except
        dm.IBTransaction.Rollback;
        ShowMessage('Erro gravando a Chave e o Protrocolo da NF-e');
      end;
    finally
      dm.QConsulta.close;
    end;

    ShowMessage('Consulta concluída com sucesso!' + #13 + 'NFe autorizada...');

  end;

end;

procedure TFrmGerenciamentoNFce.BtnConsultarServicoClick(Sender: TObject);
begin
  if dm.acbrnfe1.ssl.certdatavenc < now then
  begin
    ShowMessage('Certificado vencido (data de validade expirada)');
    exit;
  end;

  dm.acbrnfe1.webservices.statusservico.executar;
 // memo.lines.add('Serviço......');
  ShowMessage('Status: ' + dm.acbrnfe1.webservices.statusservico.xmotivo);
end;

procedure TFrmGerenciamentoNFce.FormCreate(Sender: TObject);
begin
  qnfe.connection:= dm.sqlc;
  qnfce_itens.connection:= dm.sqlc;
  
  sSql := QConsNfe.sql.Text;

  iEmp := DM.SDS_EmpresaCODIGO.AsInteger;

  { busca parametros }
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Add(
            'SELECT NFE_CERTIFICAO, NFE_SENHA, CAMINHO_CERTIFICADO,     '
            +
            'TIPO_IMPRESSAO_DANFE, FORMA_EMISSAO_DANFE, NFE_LOGOMARCA,          '
            +
            'SALVAR_LOG_DANFE, NFE_CAMINHO_XML, PASTA_TRANSMITIDAS_DANFE, AMBIENTE_DANFE, PASTA_CANCELADAS_DANFE, '
            +
            'PASTA_INUTILIZADAS_DANFE, CAMINHO_ARQUIVOS_PDF,    ' + 'ESTADO_NFE ' + 'FROM CONFIGURACOES ' + 'WHERE COD_EMPRESA = :CODEMP');
        Parambyname('codemp').AsInteger := iEmp;
        Open;

        { Configurando a NFe }
        DM.ACBrNFe1.Configuracoes.Certificados.Senha := trim
          (fieldbyname('NFE_SENHA').AsString);
        DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := trim
          (fieldbyname('NFE_CERTIFICAO').AsString);

        if trim(fieldbyname('tipo_impressao_danfe').AsString) = 'R' then
          DM.ACBrNFe1.DANFE.TipoDANFE := tiRetrato
        else
          DM.ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;

        case fieldbyname('forma_emissao_danfe').AsInteger of
          1:
            DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal;
          2:
            DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teContingencia;
          3:
            DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teSCAN;
          4:
            DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teDPEC;
          5:
            DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teFSDA;
        end;

          DM.ACBrNFe1.DANFE.Logo := trim(fieldbyname('NFE_LOGOMARCA')
            .AsString);

        if trim(fieldbyname('salvar_log_danfe').AsString) = 'S' then
          DM.ACBrNFe1.Configuracoes.Geral.Salvar := true
        else
          DM.ACBrNFe1.Configuracoes.Geral.Salvar := false;

          DM.ACBrNFe1.Configuracoes.Arquivos.PathSalvar := trim
          (fieldbyname('NFE_CAMINHO_XML').AsString);

        sAmbienteNfe := trim(fieldbyname('ambiente_danfe').AsString);

        if trim(fieldbyname('ambiente_danfe').AsString) = 'P' then
          DM.ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao
        else
          DM.ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;

        DM.ACBrNFe1.Configuracoes.WebServices.UF := trim
          (fieldbyname('estado_nfe').AsString); ;
        DM.ACBrNFe1.Configuracoes.WebServices.Visualizar := false;

        DM.ACBrNFe1.Configuracoes.Arquivos.PathEvento := trim
          (fieldbyname('pasta_canceladas_danfe').AsString);
        DM.ACBrNFe1.Configuracoes.Arquivos.PathInu := trim
          (fieldbyname('pasta_inutilizadas_danfe').AsString);
        DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe := trim
          (fieldbyname('pasta_transmitidas_danfe').AsString);

       dm.ACBrNFeDANFEFR1.PathPDF := trim
         (fieldbyname('caminho_arquivos_pdf').AsString);
       { ACBrNFeDANFeRL1.RavFile := trim
          (fieldbyname('caminho_relatorio_danfe').AsString);}
      end;

      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      ShowMessage('Erro ao buscar os parâmetros de configuração da NFC-e... Verifique');
    end;
  finally
    dm.QConsulta.close;
  end;
  DM.ConfiguraNFCe;
end;

procedure TFrmGerenciamentoNFce.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if IBTRNfe.Active then
    IBTRNfe.Commit;

  Action := caFree;
  FrmGerenciamentoNFce := nil;
end;

procedure TFrmGerenciamentoNFce.QConsNfeCalcFields(DataSet: TDataSet);
begin
  if trim(QConsNfeSTATUS.AsString) = 'S' then
    QConsNfeCALC_TRANSMITIDO.AsString := 'TRANSMITIDA OK'
  else
    QConsNfeCALC_TRANSMITIDO.AsString := '';
  if QConsNfeDEPEC.AsString = '1' then
    QConsNfeCALC_TRANSMITIDO.AsString := 'TRANS. DEPEC';

  if trim(QConsNfeSTATUS_CANCELADO.AsString) = 'S' then
    QConsNfeCALC_CANCELADO.AsString := 'CANCELADA'
  else
    QConsNfeCALC_CANCELADO.AsString := '';

  if trim(QConsNfeSTATUS_INUTILIZADO.AsString) = 'S' then
    QConsNfeCALC_INUTILIZADO.AsString := 'INUTILIZADO'
  else
    QConsNfeCALC_INUTILIZADO.AsString := '';

  if trim(QConsNfeSTATUS_EMAIL.AsString) = 'S' then
    QConsNfeCALC_EMAIL.AsString := 'EMAIL OK'
  else
    QConsNfeCALC_EMAIL.AsString := '';

  {if QConsNfeRAZAO_FOR.IsNull then
    QConsNfeCALC_DESTINATARIO.AsString := QConsNfeNOME_CLI.AsString
  else
    QConsNfeCALC_DESTINATARIO.AsString := QConsNfeRAZAO_FOR.AsString;}
end;

procedure TFrmGerenciamentoNFce.ResetarNFe1Click(Sender: TObject);
var
  Senha: String;
  codnota: Integer;
begin
  Senha := inputBox('Senha programação', 'Digite a senha de programação', '');
  if Senha <> '' then
  begin
    if Senha = '@siace#' then
    begin
      codnota := QConsNfeNR_NOTA.AsInteger;
      if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;
      dm.Limpa_nfce.close;
      dm.Limpa_nfce.Parambyname('CODNF').AsInteger := codnota;
      dm.Limpa_nfce.ExecSQL;
      dm.Limpa_NFCE.close;
      dm.IBTransaction.Commit;
      BtnOkClick(self);
    end
    else
      ShowMessage('Senha incorreta!');
  end;
end;

procedure TFrmGerenciamentoNFce.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (not tdbgrid(sender).datasource.dataset.active) or
    (tdbgrid(sender).datasource.dataset.recordcount = 0)
  then exit;

  if column.field.fieldname = 'STATUS' then
  begin
    dbgrid1.canvas.fillrect(rect);
    if not(qconsnfestatus.asstring = 'S') then
    begin
      imagens.draw(dbgrid1.canvas, rect.left + 5, rect.top + 1, 3);
      
      if qconsnfedepec.asstring = 'S' then
        imagens.draw(dbgrid1.canvas, rect.left + 5 + 18 + 18, rect.top + 1, 6);

      if qconsnfestatus_inutilizado.asstring = 'S' then
        imagens.draw(dbgrid1.canvas, rect.left + 5 + 18 + 18 + 18 + 18 + 18, rect.top + 1, 7);
    end
    else
    begin
      if qconsnfestatus.asstring = 'S' then
        imagens.draw(dbgrid1.canvas, rect.left + 5, rect.top + 1, 1);

      if qconsnfestatus_cancelado.asstring = 'S' then
        imagens.draw(dbgrid1.canvas, rect.left + 5 + 18 + 18, rect.top + 1, 0);

      if qconsnfestatus_email.asstring = 'S' then
        imagens.draw(dbgrid1.canvas, rect.left + 5 + 18, rect.top + 1, 2);

      if qconsnfecorrecao.asstring = 'S' then
        imagens.draw(dbgrid1.canvas, rect.left + 5 + 18 + 18 + 18, rect.top + 1, 4);

      if (trim(qconsnfechave_acesso_nfe.asstring) = '') and
        (trim(qconsnfechave2.asstring) <> '')
      then
        imagens.draw(dbgrid1.canvas, rect.left + 5 + 18 + 18 + 18 + 18, rect.top + 1, 5);

      if qconsnfestatus_inutilizado.asstring = 'S' then
        imagens.draw(dbgrid1.canvas, rect.left + 5 + 18 + 18 + 18 + 18 + 18, rect.top + 1, 7);
    end;
  end;
end;

procedure TFrmGerenciamentoNFce.BtnOkClick(Sender: TObject);
var
  parametro: string;
begin
  coluna := 0;
  if IBTRNfe.Active then
    IBTRNfe.Commit;
  IBTRNfe.StartTransaction;

  if Combo.ItemIndex = 0 then
    parametro:= ' WHERE N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 1 then
    parametro:= ' WHERE STATUS = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 2 then
    parametro:= ' WHERE STATUS_EMAIL = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 3 then
    parametro:= ' WHERE STATUS_CANCELADO = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 4 then
    parametro:= ' WHERE CORRECAO = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 5 then
    parametro:= ' WHERE CHAVE_ACESSO_NFE = '''' AND CHAVE2 = '''' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 6 then
    parametro:= ' WHERE STATUS = ''N'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 7 then
    parametro:= ' WHERE DEPEC = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 8 then
    parametro:= ' WHERE STATUS_INUTILIZADO = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC ';

  with QConsNfe do
  begin
    close;
    sql.Clear;
    sql.Text := sSql;
    sql.Add(' WHERE N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
            ' ORDER BY N.NR_NOTA ASC');
    Parambyname('dataini').AsDate := EdtDataIni.Date;
    Parambyname('datafin').AsDate := EdtDataFin.Date;
    Open;
    FetchAll;
  end;
   qNfce_itens.Open;
end;

procedure TFrmGerenciamentoNFce.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmGerenciamentoNFce.FormShow(Sender: TObject);
begin
  EdtDataIni.Date := Date;
  EdtDataFin.Date := Date;
  EdtDataIni.SetFocus;

//dm.ACBrNFeDANFEFR1.FastFile := '\rel\DANFeNFCe.fr3';
//dm.ACBrNFeDANFEFR1.FastFileEvento := '\rel\EVENTOS.fr3';
//dm.ACBrNFeDANFEFR1.Detalhado := True;
//dm.ACBrNFeDANFEFR1.ShowDialog := True;
///dm.ACBrNFeDANFEFR1.MostrarPreview := True;
//dm.ACBrNFeDANFEFR1.tipoDanfe := tiNFCe;

dm.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
//dm.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;

DM.ACBRNFE1.Configuracoes.Geral.IdCSC := DM.SDS_CONFIGURACOESTOKEN.TEXT;
DM.ACBRNFE1.Configuracoes.Geral.CSC   := DM.SDS_CONFIGURACOESID_TOKEN.TEXT;

DM.ConfiguraNFCe;
end;

procedure TFrmGerenciamentoNFce.BtnEnviarEmailClick(Sender: TObject);
var
  vdt,
  vcaminhoxml,
  vcaminhopdf,
  vemail,
  vservidorsmpt,
  vportasmtp,
  vusuariosmpt,
  vsenhasmtp,
  vemailfrom,
  vemailassunto,
  vemailto: string;
  vemailmensagem,
  vemailcc: tstrings;
  vconexaosegura: boolean;
begin
  if (not qconsnfe.active) or (qconsnfe.recordcount = 0)  then exit;

  if trim(qconsnfestatus.asstring) = 'N' then
  begin
    showmessage('NFC-e não transmitida.');
    exit;
  end;

  if trim(qconsnfechave_acesso_nfe.asstring) = emptystr then
  begin
    showmessage('NFC-e sem chave de acesso.');
    exit;
  end;

  if trim(qconsnfenr_protocolo_nfe.asstring) = emptystr then
  begin
    showmessage('NFC-e sem protocolo.');
    exit;
  end;

  icodigonfe:= qconsnfenr_nota.asinteger;
  vdt:= formatdatetime('yyyymm', qconsnfedt_emissao.asdatetime);

  vcaminhoxml:= dm.acbrnfe1.configuracoes.arquivos.pathnfe + '\' +
    scnpjempresa + '\NFCe\' + vdt + '\' + trim(qconsnfechave_acesso_nfe.asstring) + '-nfe.xml';

  vcaminhopdf:= dm.acbrnfe1.danfe.pathpdf + '\' +
    trim(qconsnfechave_acesso_nfe.asstring) + '-nfe.pdf';

  if not fileexists(vcaminhoxml) then
    vcaminhoxml:= dm.acbrnfe1.configuracoes.arquivos.pathnfe + '\' +
      trim(qconsnfechave_acesso_nfe.asstring) + '-nfe.xml';

  if not fileexists(vcaminhoxml) then
  begin
    showmessage('XML da NFC-e inexistente.');
    exit;
  end;

  if not fileexists(vcaminhopdf) then
  begin
    showmessage('PDF da NFC-e inexistente.');
    exit;
  end;

  if not (qconsnfecod_cliente.isnull) then
    vemail:= trim(dm.retornastringtabela('email', 'clientes', 'codigo',
      qconsnfecod_cliente.asinteger))
  else
  if not (qconsnfecod_fornecedor.isnull) then
    vemail:= trim(dm.retornastringtabela('email', 'fornecedores', 'codigo',
      qconsnfecod_fornecedor.asinteger))
  else
    vemail:= emptystr;

  iemp:= dm.sds_empresacodigo.value;

  if dm.ibtransaction.active then
    dm.ibtransaction.commit;

  with dm.qconsulta do
  begin
    close;
    sql.clear;
    sql.add('select servidor_smtp, porta_smtp, usuario_smtp, senha_smtp, from_smtp,');
    sql.add('assunto_email_danfe, smtp_conexao_segura, mensagem_email_danfe ');
    sql.add('from configuracoes where cod_empresa = :codemp');
    params.parambyname('codemp').asinteger:= iemp;
    open;

    vservidorsmpt:= trim(fieldbyname('servidor_smtp').asstring);
    vportasmtp:= trim(fieldbyname('porta_smtp').asstring);
    vusuariosmpt:= trim(fieldbyname('usuario_smtp').asstring);
    vsenhasmtp:= trim(fieldbyname('senha_smtp').asstring);
    vemailassunto:= trim(fieldbyname('assunto_email_danfe').asstring);
    vemailmensagem:= tstringlist.create;
    vemailmensagem.add(trim(fieldbyname('mensagem_email_danfe').text));
    vemailfrom:= trim(fieldbyname('from_smtp').asstring);

    vconexaosegura:= trim(fieldbyname('smtp_conexao_segura').asstring) = 's';
  end;

  dm.sds_clientes.active:= false;
  dm.sds_clientes.sql.clear;
  dm.sds_clientes.sql.add('select * from clientes where codigo =:codigo order by nome_rs asc');
  dm.sds_clientes.params.parambyname('codigo').asinteger:= qconsnfecod_cliente.asinteger;
  dm.sds_clientes.active:= true;
  vemailto:= dm.sds_clientesemail.text;

  if (vservidorsmpt = emptystr) or
    (vportasmtp = emptystr) or
    (vusuariosmpt = emptystr) or
    (vsenhasmtp = emptystr)
  then
  begin
    showmessage('dados para envio de email não foram configurados.');
    exit;
  end;

  try
    fenviaparaemail:= tfenviaparaemail.create(nil);
    fenviaparaemail.host:= vservidorsmpt;
    fenviaparaemail.usuario:= vusuariosmpt;
    fenviaparaemail.porta:= strtointdef(vportasmtp, 0);
    fenviaparaemail.address:= vusuariosmpt;
    fenviaparaemail.edtassunto.text:= vemailassunto;
    fenviaparaemail.edtemailpara.text:= vemailto;
    fenviaparaemail.mmmensahem.text:= vemailmensagem.text;
    fenviaparaemail.localarquivoxml:= vcaminhoxml;
    fenviaparaemail.localarquivopdf:= vcaminhopdf;
    fenviaparaemail.senha:= vsenhasmtp;
    fenviaparaemail.showmodal;
  finally
    freeandnil(fenviaparaemail);
  end;

  btnok.click;
end;

procedure TFrmGerenciamentoNFce.BtnImprimirClick(Sender: TObject);
var
  scaminhoarquivo: string;
  tempdata, pag, cabecalho, pagamento,meio: string;
  url, tpamb, cdest, hash_sha1 : string;
  i, e, n, contador: integer;
  itens : string;
  ano, mes, Dia, idLote,ie: string;
begin
  if (not qconsnfe.active) or (qconsnfe.recordcount = 0)  then exit;

  if trim(qconsnfestatus.asstring) = 'N' then
  begin
    showmessage('NFC-e não transmitida.');
    exit;
  end;

  if trim(qconsnfechave_acesso_nfe.asstring) = '' then
  begin
    showmessage('NFC-e sem chave de acesso.');
    exit;
  end;

  if trim(qconsnfenr_protocolo_nfe.asstring) = '' then
  begin
    showmessage('NFC-e sem protocolo.');
    exit;
  end;

      tempdata:= formatdatetime('yyyymm', qconsnfedt_emissao.asdatetime);

      ano := formatdatetime('yyyy', QConsNfeDT_EMISSAO.AsDateTime);

      mes:= formatdatetime('mm', QConsNfeDT_EMISSAO.AsDateTime);
      Dia := formatdatetime('dd', QConsNfeDT_EMISSAO.AsDateTime);

    { verifica se o arquivo xml da nota existe no caminho especificado }
     sCNPJEmpresa := RemoveChar(DM.SDS_EmpresaCNPJ.Text);
     ie := RemoveChar(DM.SDS_EmpresaIE.Text);

 // scaminhoarquivo:= dm.sds_configuracoespasta_transmitidas_danfe.text + '\' +
 //   scnpjempresa + '\NFCe\' + tempdata + '\' + trim(qconsnfechave_acesso_nfe.asstring) + '-nfe.xml';

      sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text + '\' +
      sCNPJEmpresa +'\'+ ie + '\NFCe\'+ ano +'\' + mes +'\' + Dia + '\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

  if not fileexists(scaminhoarquivo) then
  begin
    scaminhoarquivo:= dm.sds_configuracoespasta_transmitidas_danfe.text + '\' +
      trim(qconsnfechave_acesso_nfe.asstring) + '-nfe.xml';
  end;

  if not fileexists(scaminhoarquivo) then
  begin
    showmessage('XML não encontrado.');
    exit;
  end;

  dm.acbrnfe1.notasfiscais.clear;
  dm.acbrnfe1.notasfiscais.loadfromfile(scaminhoarquivo);
 // dm.acbrnfedanfefr1.vtroco:= strtofloatdef(qconsnfevl_troco.text,0.00);

  if dm.sds_usuariosimp_daruma_nfce.text ='S'then
  begin
    cabecalho:= '<bmp></bmp>'+ DM.ACBrNFe1.NotasFiscais.items[0].nfe.Emit.xNome+'<l></l>'+
      'CNPJ: '+DM.ACBrNFe1.NotasFiscais.items[0].nfe.Emit.CNPJCPF+'   I.E:'+DM.ACBrNFe1.NotasFiscais.items[0].nfe.Emit.IE+'<l></l>'+
      ''+DM.ACBrNFe1.NotasFiscais.items[0].nfe.Emit.EnderEmit.xLgr+' nº:'+DM.ACBrNFe1.NotasFiscais.items[0].nfe.Emit.EnderEmit.nro +'<l></l>'+
      '------------------------------------------------<l></l>'+
      '      <b>DANFE NFC-e - Documento Auxiliar</b><l></l>'+
      '  <b>Não permite aproveitamento de crédito de ICMS</b><l></l>'+
      '------------------------------------------------<l></l>'+
      '<c>Codigo    Descricao         Qtde Un   VlrUnit   VlrTotal</c><l></l>'+
      '------------------------------------------------<l></l>';
    Memo.Clear;
    for n:=0 to DM.ACBrNFe1.NotasFiscais.Count-1 do
    begin
      with DM.ACBrNFe1.NotasFiscais.Items[n].NFe do
      begin
        for e := 0 to Det.Count-1 do
        begin
          with Det.Items[e] do
          begin
            Memo.Lines.Add('<c>'+Prod.cProd+ '    '+Prod.xProd+'</c><l></l>'+
              '<c>'+FormatFloat('##,##0.00',Prod.qTrib)+'                         '+Prod.uTrib+'     X '+FormatFloat('##,##0.00',Prod.vUnCom)+'    '+Formatar(FormatFloat('##,##0.00',(Prod.vUnCom * Prod.qTrib)),10,false,' ')+'</c><l></l>');
          end;
        end;
      end;
    end;
    itens:= Memo.Text;

    meio:=    '------------------------------------------------<l></l>'+
    'QTD. TOTAL DE ITENS                          '+FORMPRINCIPAL.texto_justifica(IntToStr(E),3,' ','E')+'<l></l>'+
    'VALOR TOTAL R$                   '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',DM.ACBrNFe1.NotasFiscais.items[0].nfe.Total.ICMSTot.vNF),15,' ','E')+'<l></l>'+
    'Descontos                        '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',DM.ACBrNFe1.NotasFiscais.items[0].nfe.Total.ICMSTot.vDesc),15,' ','E')+'<l></l>'+
    'Troco                            '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',QConsNfeVL_TROCO.asfloat),15,' ','E')+'<l></l>'+
    'FORMA DE PAGAMENTO                    Valor Pago<l></l>';

    if QConsNfeTP.TEXT ='A' then
    begin
    Pag := 'Dinheiro';
    end else
    if QConsNfeTP.TEXT ='C' then
    begin
    Pag := 'Crediario';
    end else
    if QConsNfeTP.TEXT ='H' then
    begin
    Pag := 'Cheque';
    end else
    if QConsNfeTP.TEXT ='F' then
    begin
    Pag := 'Cartao';
    end else
    begin
    Pag := 'Outros';
    end;
    pagamento:=  ''+pag+'                         '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',DM.ACBrNFe1.NotasFiscais.items[0].nfe.Total.ICMSTot.vNF),15,' ','E')+'<l></l>'+
      '------------------------------------------------<l></l>'+
      'Informação dos Tributos Totais Incidentes(Lei Federal 12.741/2012)                          0,00<l></l>' +
      '------------------------------------------------<l></l>'+
      '             AREA DE MENSAGEM FISCAL<l></l>'+
      '<c>Número: '+QConsNfeNR_NOTA.Text +' Série: 1 '+ 'Emissão: '+QConsNfeDT_EMISSAO.Text+'<c><l></l>'+
       '------------------------------------------------<l></l>'+
      '<c>                     Via do consumidor</c><l></l>'+
      'Consulte pela Chave de Acesso em: http://www.sefaz.mt.gov.br/nfce/consultanfce<l></l>'+
      '                 CHAVE DE ACESSO<l></l>'+
      '<c>     '+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe+'</c><l></l>'+
      '------------------------------------------------<l></l>'+
      '                  CONSUMIDOR<l></l>'+
      'Nome: '+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome+'<l></l>'+
      'Cpf: '+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF+'<l></l>'+
      'End: '+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr+ 'nº'+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro+'<l></l>'+
      'Bairro: '+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro+ 'Cid:'+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun+'UF:'+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF+'<l></l>'+
      '------------------------------------------------<l></l>'+
      '         Consulta via leitor de QR Code<l></l>'+
      '<ce><qrcode>http://www.desenvolvedoresdaruma.com.br</qrcode></ce><l></l>'+
      '<c>      Protocolo de Autorização:'+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt+'</c><sl>4</sl><gui></gui><l></l>';

    iretorno:= iimprimirtexto_dual_darumaframework(cabecalho+ itens + meio + pagamento, 0);
  end
  else
    dm.acbrnfe1.notasfiscais.imprimir;

  btnok.click;
end;

procedure TFrmGerenciamentoNFce.BtnInutilizarClick(Sender: TObject);
var
  smodelo, sserie, sano, snumeroinicial, snumerofinal: string;
  scnpj: string;
begin
  if pos(removechar(dm.sds_empresacnpj.text), dm.acbrnfe1.ssl.certsubjectname) = 0 then
  begin
    showmessage('Certificado pertencente a outra empresa / pessoa' + chr(13) + dm.acbrnfe1.ssl.certsubjectname);
    exit;
  end;
  if dm.acbrnfe1.ssl.certdatavenc < now then
  begin
    showmessage('Certificado vencido (data de validade expirada)');
    exit;
  end;

  iemp:= dm.sds_empresacodigo.asinteger;

  scnpj:= retiracaracter(dm.retornastringtabela('cnpj', 'empresa', 'codigo', iemp));
  smodelo:= '65';

  if not(inputquery('Webservices inutilização ', 'Ano', sano)) then
    exit;
  if not(inputquery('Webservices inutilização ', 'Serie', sserie)) then
    exit;
  if not(inputquery('Webservices inutilização ', 'Número inicial',snumeroinicial)) then
    exit;
  if not(inputquery('Webservices inutilização ', 'Número final', snumerofinal)) then
    exit;
  if not(inputquery('Webservices inutilização ', 'justificativa', sjustifnfe)) then
    exit;

  icodigonfe:= qconsnfenr_nota.asinteger;

  dm.acbrnfe1.webservices.inutiliza(scnpj, sjustifnfe, strtoint(sano),
    strtoint(smodelo), strtoint(sserie), strtoint(snumeroinicial),
      strtoint(snumerofinal));

  if dm.acbrnfe1.webservices.inutilizacao.cstat = 563 then
    dm.atualizastatusnfce(icodigonfe, 'STATUS_INUTILIZADO', sjustifnfe);

  showmessage('protocolo: ' + dm.acbrnfe1.webservices.inutilizacao.protocolo);

  if dm.acbrnfe1.webservices.inutilizacao.protocolo > '' then
    dm.atualizastatusnfce(icodigonfe, 'STATUS_INUTILIZADO', sjustifnfe)
  else
    showmessage('Nota não inutilizada houve algum erro.');
    
  btnok.click;
end;

procedure TFrmGerenciamentoNFce.BtnCancelamentoClick(Sender: TObject);
var
  scaminhoarquivo,
  ano, mes, Dia, idLote,ie: string;
begin
  if (not qconsnfe.active) or (qconsnfe.recordcount = 0)  then exit;
  
  if pos(removechar(dm.sds_empresacnpj.text), dm.acbrnfe1.ssl.certsubjectname) = 0 then
  begin
    showmessage('Certificado pertencente a outra empresa / pessoa' + chr(13) + dm.acbrnfe1.ssl.certsubjectname);
    exit;
  end;

  if dm.acbrnfe1.ssl.certdatavenc < now then
  begin
    showmessage('Certificado vencido (data de validade expirada)');
    exit;
  end;

  if trim(qconsnfestatus.asstring) = 'N' then
  begin
    showmessage('NFC-e não transmitida.');
    exit;
  end;

  if trim(qconsnfestatus_cancelado.asstring) = 'S' then
  begin
    showmessage('NFC-e cancelada.');
    exit;
  end;

  if trim(qconsnfechave_acesso_nfe.asstring) = '' then
  begin
    showmessage('NFC-e sem chave de acesso.');
    exit;
  end;

  if trim(qconsnfenr_protocolo_nfe.asstring) = '' then
  begin
    showmessage('NFC-e sem protocolo.');
    exit;
  end;

  icodigonfe:= qconsnfenr_nota.asinteger;

      ano := formatdatetime('yyyy', QConsNfeDT_EMISSAO.AsDateTime);

      mes:= formatdatetime('mm', QConsNfeDT_EMISSAO.AsDateTime);
      Dia := formatdatetime('dd', QConsNfeDT_EMISSAO.AsDateTime);

    { verifica se o arquivo xml da nota existe no caminho especificado }
     sCNPJEmpresa := RemoveChar(DM.SDS_EmpresaCNPJ.Text);
     ie := RemoveChar(DM.SDS_EmpresaIE.Text);

        sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text + '\' +
        sCNPJEmpresa +'\'+ ie + '\NFCe\'+ ano +'\' + mes +'\' + Dia + '\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

  if not fileexists(scaminhoarquivo) then
  begin
    scaminhoarquivo:= dm.sds_configuracoespasta_transmitidas_danfe.text +
      trim(qconsnfechave_acesso_nfe.asstring) + '-nfe.xml';
  end;

  if not fileexists(scaminhoarquivo) then
  begin
    showmessage('XML não encontrado.');
    exit;
  end;

  dm.acbrnfe1.notasfiscais.clear;
  dm.acbrnfe1.notasfiscais.loadfromfile(scaminhoarquivo);
  idlote:= '1';
  if not(inputquery('Webservices cancelamento', 'Justificativa', sjustifnfe)) then
    exit;

  dm.acbrnfe1.eventonfe.evento.clear;
  dm.acbrnfe1.eventonfe.idlote:= strtoint(idlote);
  with dm.acbrnfe1.eventonfe.evento.add do
  begin
    infevento.dhevento:= now;
    infevento.tpevento:= tecancelamento;
    infevento.detevento.xjust:= sjustifnfe;
  end;

  if dm.acbrnfe1.enviarevento(strtoint(idlote)) then
  begin
    if dm.acbrnfe1.webservices.envevento.cstat = 128 then
    begin
      if dm.acbrnfe1.webservices.envevento.eventoretorno.retevento.items[0].retinfevento.cstat = 135 then
        dm.atualizastatusnfce(icodigonfe, 'STATUS_CANCELADO', sjustifnfe);
                     if dm.IBTransaction.Active then
                dm.IBTransaction.Commit;
             dm.IBTransaction.StartTransaction;
             with dm.fConsulta do
                begin
                   close;
                   commandtext.Clear;
                   commandtext.Text:= 'Update pedidos set pedidos.num_nota = null, pedidos.serie_nota =  null where codigo=:CODIGO';
                   Parambyname('CODIGO').AsInteger  := QConsNfenr_pedido.AsInteger;
                   open;
                end;
             dm.IBTransaction.Commit;
             dm.fConsulta.Close;

          if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         with IBSQL do
          begin
           close;
            commandtext.Clear;
            commandtext.Add('update NFE_NOTA set NFE_NOTA.nr_pedido = null where  nr_nota = :nfe');
            Parambyname('nfe').Asinteger:= iCodigoNfe;
            open;
            end;
             dm.IBTransaction.Commit;
             IBSQL.close;
      end
      else
      begin
        showmessage(dm.acbrnfe1.webservices.envevento.eventoretorno.retevento.items[0].retinfevento.xmotivo);
    end;

  end;

  btnok.click;
end;

procedure TFrmGerenciamentoNFce.BtnConsultaNFeClick(Sender: TObject);
begin
  if (not qconsnfe.active) or (qconsnfe.recordcount = 0)  then exit;
  
  if dm.acbrnfe1.ssl.certdatavenc < now then
  begin
    showmessage('Certificado vencido (data de validade expirada).');
    exit;
  end;

  if
    (trim(qconsnfechave_acesso_nfe.asstring) = '') and
    (trim(qconsnfenr_recibo_nfe.asstring) = '') and
    (trim(qconsnfechave2.asstring) <> '')
  then
  begin
    showmessage('NFC-e danificada será corrigida.');
    corrige;
  end;

  if trim(qconsnfechave_acesso_nfe.asstring) = '' then
  begin
    showmessage('NFC-e sem chave de acesso');
    exit;
  end;

  dm.acbrnfe1.notasfiscais.clear;
  dm.acbrnfe1.webservices.consulta.nfechave:= trim(qconsnfechave_acesso_nfe.asstring);
  dm.acbrnfe1.webservices.consulta.executar;
  showmessage(dm.acbrnfe1.webservices.consulta.xmotivo);

  if (dm.acbrnfe1.webservices.consulta.cstat = 100) then
  begin
    if dm.ibtransaction.active then
      dm.ibtransaction.commit;
    dm.ibtransaction.starttransaction;
    with dm.fconsulta do
    begin
      close;
      commandtext.clear;
      commandtext.text:= 'UPDATE NFECE_NOTA SET STATUS =:STATUS, FL_IMPRESSO =:IMP, DEPEC =:DEPEC, NR_PROTOCOLO_NFE =:PROT, CHAVE_ACESSO_NFE =:CHAVE, CHAVE2 =:CHAVE2, MODELO =:MOD WHERE NR_NOTA = :COD_NF';
      parambyname('STATUS').asstring:= 'S';
      parambyname('IMP').asstring:= 'S';
      parambyname('DEPEC').asstring:= 'N';
      parambyname('PROT').asstring:= dm.acbrnfe1.webservices.consulta.protocolo;
      parambyname('CHAVE').asstring:= dm.acbrnfe1.webservices.consulta.nfechave;
      parambyname('CHAVE2').asstring:= 'NFE' + dm.acbrnfe1.webservices.consulta.nfechave;
      parambyname('MOD').asstring:= '55';
      parambyname('COD_NF').asinteger:= qconsnfenr_nota.asinteger;
      open;
    end;
    dm.ibtransaction.commit;
    dm.fconsulta.close;
  end;

  btnok.click;
end;

procedure TFrmGerenciamentoNFce.BtnEnviarClick(Sender: TObject);
var
  vpNumeroNota: string;
begin
  dm.ConfiguraNFCe;

  if (not qconsnfe.active) or (qconsnfe.recordcount = 0)  then exit;
  
  if Pos(RemoveChar(DM.SDS_EmpresaCNPJ.Text), DM.ACBrNFe1.SSL.CertSubjectName) = 0 then
  begin
    ShowMessage('Certificado pertencente a outra empresa / pessoa ' + chr(13) + DM.ACBrNFe1.SSL.CertSubjectName);
    Exit;
  end;

  if DM.ACBrNFe1.SSL.CertDataVenc < Now then
  begin
   ShowMessage('Certificado vencido (data de validade expirada)');
   Exit;
  end;

  vpNumeroNota:= QConsNfeNR_NOTA.Text;

  if (Trim(QConsNfeNR_PROTOCOLO_NFE.AsString) <> EmptyStr) then
  begin
    ShowMessage('NFC-e ja enviada... Nota sera corrigida.');
    DM.SDS_NFCE.Close;
    DM.SDS_NFCE.SQL.Clear;
    DM.SDS_NFCE.SQL.Add('select * from  nfece_nota where nr_nota = :nr_nota and cd_empresa =:cod_emp');
    DM.SDS_NFCE.Params.ParamByName('nr_nota').AsInteger:= StrToInt(vpNumeroNota);
    DM.SDS_NFCE.Params.ParamByName('cod_emp').AsInteger :=  IEMP;
    DM.SDS_NFCE.open;

    DM.sds_nfce_itens.Active:= false;
    DM.sds_nfce_itens.Active:= True;

    DM.SDS_NFCE.Edit;
    dm.SDS_NFCESTATUS.Text:='S';
    dm.SDS_NFCEFL_IMPRESSO.Text:='S';
    DM.SDS_NFCE.Post;
    BtnOk.Click;
    Exit;
  end;

  IMPRIME:= False;

  FormGeraNFce:= TFormGeraNFce.Create(Self);
  FormGeraNFce.combobox2.itemIndex:= 0;
  FormGeraNFce.combobox2.Enabled:= False;

  DM.qrcfop.Active:= False;
  DM.qrcfop.sql.Clear;
  DM.qrcfop.sql.Add('select * from tabela_cfop where cfop >= 4000');
  DM.qrcfop.Active:= True;

  FormGeraNFce.RxDBComboEdit2.Text:=  DM.SDS_NFCECD_CFOP.Text;
  
  DM.SDS_NFCE.Close;
  DM.SDS_NFCE.SQL.CLEAR;
  DM.SDS_NFCE.SQL.add('select * from  nfece_nota where nr_nota = :nr_nota and cd_empresa =:cod_emp');
  DM.SDS_NFCE.Params.ParamByName('nr_nota').AsInteger := StrToInt(vpNumeroNota);
  DM.SDS_NFCE.Params.ParamByName('cod_emp').AsInteger :=  IEMP;
  DM.SDS_NFCE.Open;

  DM.sds_nfCe_itens.Active:= False;
  DM.sds_nfCe_itens.Active:= True;

  FormGeraNFce.Inserir.Enabled:= False;
  FormGeraNFce.confirmar.Enabled:= True;
  FormGeraNFce.ShowModal;

  IF valida_nfc then
  begin
    SPC_N_NFE.Params[0].AsInteger:=  StrToInt(DM.SDS_NFCENR_PEDIDO.Text);
    SPC_N_NFE.Params[1].AsInteger:= StrToInt(DM.SDS_NFCENR_NOTA.Text);
    SPC_N_NFE.Params[2].AsString:=  DM.SDS_NFCESERIE_NF.Text;
    SPC_N_NFE.Params[3].AsInteger  := IEMP;
    SPC_N_NFE.ExecProc;
  end;

  BtnOk.Click;
end;

procedure TFrmGerenciamentoNFce.btnGerarPDFClick(Sender: TObject);
var
  vCaminhoArquivo,
  vDt: string;
begin
  if not(QConsNfe.State = dsbrowse) then Exit;

  if Trim(QConsNfeSTATUS.AsString) = 'N' then
  begin
    ShowMessage('NFC-e não transmitida.');
    Exit;
  end;

  if Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = EmptyStr then
  begin
    ShowMessage('NFC-e sem chave de acesso.');
    Exit;
  end;

  if Trim(QConsNfeNR_PROTOCOLO_NFE.AsString) = EmptyStr then
  begin
    ShowMessage('NFC-e sem protocolo.');
    Exit;
  end;

  vDt:= FormatDateTime('yyyymm', QConsNfeDT_EMISSAO.AsDateTime);
  sCNPJEmpresa:= RemoveChar(DM.SDS_EmpresaCNPJ.Text);

  vCaminhoArquivo:= DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text + '\' +
    sCNPJEmpresa + '\NFCe\' + vDt + '\' + Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

  if not FileExists(vCaminhoArquivo) then
  begin
    vCaminhoArquivo:= DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text + '\' +
      Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
  end;

  if not FileExists(vCaminhoArquivo) then
  begin
    ShowMessage('XML da NFC-e inexistente.');
    exit;
  end;

  DM.ACBrNFe1.NotasFiscais.Clear;
  DM.ACBrNFe1.NotasFiscais.LoadFromFile(vCaminhoArquivo);
  DM.ACBrNFe1.NotasFiscais.ImprimirPDF;
end;

procedure TFrmGerenciamentoNFce.Ex1Click(Sender: TObject);
var
  Senha: String;
  codnota: Integer;
begin

{  if QConsNfeCHAVE_ACESSO_NFE.Text > '' then
  begin
   //ShowMessage('Nota Enviada a Sefaz não pode Ser excluida!');
   MessageDlg('Nota Enviada a Sefaz não pode Ser excluida!', mtWarning,[mbOk], 0);
  end else }
 // Senha := ('Senha programação', 'Digite a senha de programação', '');
  Dc_InputQuerySenha('Senha Programacao', 'Digite a Senha Programadda',senha);
 // Senha := //inputBox('Senha programação', 'Digite a senha de programação', '');
  if Senha <> '' then
  begin
    if Senha = '@siace#' then
    begin
      codnota := QConsNfeNR_NOTA.AsInteger;
      if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;
      dm.Limpa.close;
      dm.Limpa.SQL.Clear;
      dm.Limpa.SQL.Add('Delete from nfece_nota WHERE NR_NOTA = :CODNF');
      dm.Limpa.Parambyname('CODNF').AsInteger := codnota;
      dm.Limpa.Open;
      dm.Limpa.close;
      dm.IBTransaction.Commit;
      BtnOkClick(self);
    end
    else
      ShowMessage('Senha incorreta!');
  end;
end;

procedure TFrmGerenciamentoNFce.Button1Click(Sender: TObject);
var
  sCaminhoXML: String;
  sCaminhoXMLEvento: String;
  tempdata: string;
  CCeImp1: TCCeImp;
  PastaPDFs: String;
begin

 {
 begin
 OpenDialog1.Title := 'Selecione a NFE';
 OpenDialog1.DefaultExt := '*.XML';
 OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Geral.PathSalvar;
 if OpenDialog1.Execute then
 begin
 OpenDialog2.Title := 'Selecione o Evento';
  OpenDialog2.DefaultExt := '*.XML';
  OpenDialog2.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog2.InitialDir := DM.ACBrNFe1.Configuracoes.Geral.PathSalvar;
 if OpenDialog2.Execute then
 begin
 CCeImp1 := TCCeImp.Create(nil);
 //CCeImp1.defineSaida(tps_PDF, ''+OpenDialog2.FileName+'.pdf'); // tps_PDF ou tps_Print
 CCeImp1.defineSaida(tps_preview,''+OpenDialog2.FileName+'.pdf'); // tps_PDF ou tps_Print ou tps_preview
 CCeImp1.defineLayOut(fp_Portrait); // implementado impressão retrato
 CCeImp1.defineXMLNFe(OpenDialog1.FileName); // XML da NFe corrigida
 CCeImp1.defineXMLCCe(OpenDialog2.FileName); // XML da CCe
 CCeImp1.defineSoftHouse('Siace Sistemas');
 try
 CCeImp1.Execute;
 except
 // Tratamento
 end;
 CCeImp1.Free;
 end;
end;
end;  }
 tempdata := formatdatetime('yyyymm', QConsNfeDT_EMISSAO.AsDateTime);
  sCaminhoXML := dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' + tempdata +
    '\nfe\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

  sCaminhoXMLEvento := dm.ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\' +
    formatdatetime('yyyymm', QCartasDATA.AsDateTime)+ '\CCe\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '110110' +
    QCartasSEQ.AsString + '-ProcEventoNFe.xml';
  if not fileexists(sCaminhoXML) then
  begin
    ShowMessage('Arquivo XML NFe não encontrado!');
    exit;
  end;
  if not fileexists(sCaminhoXMLEvento) then
  begin
    ShowMessage('Arquivo XML do Evento não encontrado!');
    exit;
  end;
  PastaPDFs := dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\PDF\';
  if not DirectoryExists(PastaPDFs) then
  begin
    ForceDirectories(PastaPDFs);
  end;
  CCeImp1 := TCCeImp.Create(nil);

  CCeImp1.defineSaida(tps_PDF,
    PastaPDFs + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-ProcEventoNFe.pdf');
  // tps_PDF ou tps_Print
  CCeImp1.defineLayOut(fp_Portrait); // implementado impressão retrato
  CCeImp1.defineXMLNFe(sCaminhoXML); // XML da NFe corrigida
  CCeImp1.defineXMLCCe(sCaminhoXMLEvento); // XML da CCe
  CCeImp1.defineSoftHouse('Siace Sistemas');
  try
    CCeImp1.Execute;
  except
    // Tratamento
    showmessage('Erro na impressão da CCe');
  end;
  CCeImp1.Free;
  CCeImp1 := TCCeImp.Create(nil);

  CCeImp1.defineSaida(tps_preview,
    PastaPDFs + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-ProcEventoNFe.pdf');
  // tps_PDF ou tps_Print
  CCeImp1.defineLayOut(fp_Portrait); // implementado impressão retrato
  CCeImp1.defineXMLNFe(sCaminhoXML); // XML da NFe corrigida
  CCeImp1.defineXMLCCe(sCaminhoXMLEvento); // XML da CCe
  CCeImp1.defineSoftHouse('Siace Sistemas');
  try
    CCeImp1.Execute;
  except
    // Tratamento
    showmessage('Erro na visualização da CCe');
  end;
  CCeImp1.Free;
end;

procedure TFrmGerenciamentoNFce.Button2Click(Sender: TObject);
var
 i, j, k, n  : integer;
  Nota, Node, NodePai, NodeItem: TTreeNode;
  NFeRTXT: TNFeRTXT;
  codigo, CHASSI: string;
begin
  dm.SDS_NFCE.Active := False;
  dm.SDS_NFCE.Active := True;
  dm.SDS_NFCE_itens.Active := False;
  dm.SDS_NFCE_itens.Active := True;
 // DM.SDS_Empresa.Open;
  QNfe.Active := False;
  QNfe.Active := True;


  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione o xml da NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := dm.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin

    dm.ACBrNFe1.NotasFiscais.Clear;
    //tenta TXT
    dm.ACBrNFe1.NotasFiscais.Add;
    NFeRTXT := TNFeRTXT.Create(dm.ACBrNFe1.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
    if NFeRTXT.LerTxt then
       NFeRTXT.Free
    else
    begin
       NFeRTXT.Free;
       //tenta XML
       dm.ACBrNFe1.NotasFiscais.Clear;
       try
          DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
       except
          ShowMessage('Arquivo NFe Inválido');
          exit;
       end;
    end;

       IF dm.ACBrNFe1.NotasFiscais.Items[n].NFe.Ide.modelo <> 65 then
    begin
          ShowMessage('XML não pertence a uma NFC-e válido');
          exit;
    end;
    dm.SDS_NFCE.Insert;

    for n:=0 to dm.ACBrNFe1.NotasFiscais.Count-1 do
    begin
    with dm.ACBrNFe1.NotasFiscais.Items[n].NFe do
     begin
         DM.SDS_Clientes.Active := false;
         dm.SDS_Clientes.SQL.Clear;
         dm.sds_clientes.sql.add('select * from clientes');
         DM.SDS_Clientes.Active := True;

         if tbFmtCPForCNPJ(Dest.CNPJCPF) > '' then
         begin
         if DM.SDS_Clientes.Locate('CPF_CNPJ', tbFmtCPForCNPJ(Dest.CNPJCPF),[])=True then
         begin
           dm.SDS_NFCECOD_CLIENTE.Text            := dm.SDS_ClientesCODIGO.Text;
           dm.SDS_NFCENOME_CLIENTE_FOR.text       := DM.SDS_CLIENTESNOME_RS.Text;
           dm.SDS_NFCEENDERECO_CLI_FORN.Text      := DM.SDS_ClientesENDERECO.Text;
           dm.SDS_NFCECPF_CNPJ_CLIENTE_FORN.Text  := dm.SDS_ClientesCPF_CNPJ.text;
           dm.SDS_NFCEIE_CLIENTE_FORN.Text        := DM.SDS_ClientesRG_IE.Text;
           dm.SDS_NFCECOD_IBGE.Text               := dm.SDS_ClientesCOD_IBGE.Text;
           dm.SDS_NFCETELEFONE.Text               := dm.SDS_ClientesTELEFONE.Text;
           dm.SDS_NFCEUF_CLIENTE_FORN.Text        := DM.SDS_ClientesUF.Text;
           dm.SDS_NFCECIDADE_CLIENTE_FORN.Text    := dm.SDS_ClientesCIDADE.Text;
           dm.SDS_NFCETIPO_PESSOA.Text            := DM.SDS_ClientesTIPO.Text;
           dm.SDS_NFCECEP_CLIENTE_FORN.Text       := removechar(dm.SDS_ClientesCEP.Text);
           dm.SDS_NFCEBAIRRO_CLIENTE_FORN.Text    := DM.SDS_ClientesBAIRRO.Text;
           dm.SDS_NFCEEND_NUM_CLIENTE.text        := DM.SDS_CLIENTESNUMERO.Text;
          end else

         if not DM.SDS_Clientes.Locate('CPF_CNPJ', tbFmtCPForCNPJ(Dest.CNPJCPF),[])=True then
         begin
          // try
            DM.SDS_Cli.Active := True;
            DM.SDS_Cli.Insert;
            DM.SDS_cliCODIGO.text              := '1';
            DM.SDS_CliUSERCAD.Text             := FormPrincipal.UserLogado;
            DM.SDS_CliDATACAD.Text             := datetostr(now);
            DM.SDS_CliCod_empresa.text         := DM.SDS_EmpresaCODIGO.Text;
            DM.SDS_CliNOME_RS.Text             := dest.xNome;
            DM.SDS_CliENDERECO.Text            := Dest.enderDest.xLgr;
            dm.SDS_CliCPF_CNPJ.text            := tbFmtCPForCNPJ(dest.CNPJCPF);
            DM.SDS_CliRG_IE.Text               := dest.IE;
            dm.SDS_CliCOD_IBGE.AsInteger       := dest.enderDest.cMun;
            dm.SDS_CliCIDADE.text              := dest.enderDest.xMun;
            dm.SDS_CliTELEFONE.Text            := tbFmtfone(dest.enderDest.fone);
            DM.SDS_CliUF.Text                  := dest.enderDest.UF;
            if Length(dest.CNPJCPF) > 12 then
            DM.SDS_CliTIPO.Text                := 'J'
            else
            DM.SDS_CliTIPO.Text                := 'F';
            dm.SDS_CliCEP.Text                 := tbFmtCep(IntToStr(dest.enderDest.CEP));
            DM.SDS_CliBAIRRO.Text              := dest.enderDest.xBairro;
            DM.SDS_CliNUMERO.Text              := RemoveChar(dest.enderDest.nro);
           // DM.SDS_ClientesCOD_EMPRESA.Text         := dm.SDS_EmpresaCODIGO.Text;

            DM.SDS_Cli.Post;
            DM.SDS_Cli.ApplyUpdates(0);

           { except
             ShowMessage('Erro ao Gravar o Cliente verifique ');
            end; }

            DM.SDS_Clientes.Active := false;
            dm.SDS_Clientes.SQL.Clear;
            dm.sds_clientes.sql.add('select * from clientes');
            DM.SDS_Clientes.Active := True;

          if DM.SDS_Clientes.Locate('CPF_CNPJ', tbFmtCPForCNPJ(Dest.CNPJCPF),[])=True then
          begin
           dm.SDS_NFCECOD_CLIENTE.Text            := dm.SDS_ClientesCODIGO.Text;
           dm.SDS_NFCENOME_CLIENTE_FOR.text       := DM.SDS_CLIENTESNOME_RS.Text;
           dm.SDS_NFCEENDERECO_CLI_FORN.Text      := DM.SDS_ClientesENDERECO.Text;
           dm.SDS_NFCECPF_CNPJ_CLIENTE_FORN.Text  := dm.SDS_ClientesCPF_CNPJ.text;
           dm.SDS_NFCEIE_CLIENTE_FORN.Text        := DM.SDS_ClientesRG_IE.Text;
           dm.SDS_NFCECOD_IBGE.Text               := dm.SDS_ClientesCOD_IBGE.Text;
           dm.SDS_NFCETELEFONE.Text               := dm.SDS_ClientesTELEFONE.Text;
           dm.SDS_NFCEUF_CLIENTE_FORN.Text        := DM.SDS_ClientesUF.Text;
           dm.SDS_NFCECIDADE_CLIENTE_FORN.Text    := dm.SDS_ClientesCIDADE.Text;
           dm.SDS_NFCETIPO_PESSOA.Text            := DM.SDS_ClientesTIPO.Text;
           dm.SDS_NFCECEP_CLIENTE_FORN.Text       := removechar(dm.SDS_ClientesCEP.Text);
           dm.SDS_NFCEBAIRRO_CLIENTE_FORN.Text    := DM.SDS_ClientesBAIRRO.Text;
           dm.SDS_NFCEEND_NUM_CLIENTE.text        := DM.SDS_CLIENTESNUMERO.Text;
          end;

         END;
         end else
         begin
           dm.SDS_NFCECOD_CLIENTE.Text            := '1';
           dm.SDS_NFCENOME_CLIENTE_FOR.text       := 'CONSUMIDOR';
         end;

        dm.SDS_NFCE.Edit;
       // dm.SDS_NFCEN_SEQUENCIA.Text                := '1';
        dm.SDS_NFCECD_EMPRESA.Text                 := DM.SDS_EmpresaCODIGO.Text;
        dm.SDS_NFCENR_NOTA.Text                    := RemoveChar(IntToStr(Ide.nNF));
        dm.SDS_NFCENR_LOTE_NFE.Text                := RemoveChar(IntToStr(Ide.nNF));
        dm.SDS_NFCECHAVE_ACESSO_NFE.Text           := RemoveChar(infNFe.ID);//procNFe.chNFe;
        dm.SDS_NFCENR_PROTOCOLO_NFE.Text           := procNFe.nProt;
        dm.SDS_NFCECHAVE2.Text                     := procNFe.chNFe;
        dm.SDS_NFCEMODELO.Text                     := IntToStr(Ide.modelo);
        dm.SDS_NFCESERIE_NF.text                   := IntToStr(Ide.serie);
        dm.SDS_NFCEDT_EMISSAO.AsDateTime           := Ide.dEmi;
        dm.SDS_NFCEDT_LANCAMENTO.AsDateTime        := Ide.dEmi;
        dm.SDS_NFCECFOP_DESC.Text                  := ide.natOp;
        dm.SDS_NFCEMODELO.Text                     := '65';
        dm.SDS_NFCEVL_BASE_ICM.Text                := FloatToStr(Total.ICMSTot.vBC);
        dm.SDS_NFCEVL_ICM.Text                     := FloatToStr(Total.ICMSTot.vICMS) ;
        dm.SDS_NFCEVL_BASE_ICM_SUBST.Text          := FloatToStr(Total.ICMSTot.vBCST) ;
        dm.SDS_NFCEVL_ICM_SUBST.text               := FloatToStr(Total.ICMSTot.vST) ;
        dm.SDS_NFCEVL_MERCADORIAS.Text             := FloatToStr(Total.ICMSTot.vProd) ;
        dm.SDS_NFCEVL_FRETE.text                   :=FloatToStr(Total.ICMSTot.vFrete) ;
        dm.SDS_NFCEVL_SEGURO.Text                  := FloatToStr(Total.ICMSTot.vSeg) ;
        dm.SDS_NFCEVL_DESCONTOS.Text               := FloatToStr(Total.ICMSTot.vDesc) ;
        // trvwNFe.Items.AddChild(Node,'vII='        +FloatToStr(Total.ICMSTot.vII)) ;
        dm.SDS_NFCEVL_ACRESCIMOS.Text               := FloatToStr(Total.ICMSTot.vOutro) ;

        dm.SDS_NFCEVl_IPI.Text                     := FloatToStr(Total.ICMSTot.vIPI) ;
        dm.SDS_NFCEVL_PIS.Text                     := FloatToStr(Total.ICMSTot.vPIS) ;
        dm.SDS_NFCEVL_COFINS.Text                  := FloatToStr(Total.ICMSTot.vCOFINS) ;
        dm.SDS_NFCEVL_OUTROS.Text                  := FloatToStr(Total.ICMSTot.vOutro) ;
        dm.SDS_NFCEVL_TOTAL.Text                   := FloatToStr(Total.ICMSTot.vNF) ;
        dm.SDS_NFCEPAGAMENTO.Text                  := Cobr.Fat.nFat;

        if  procNFe.nProt = ''  then
        dm.SDS_NFCESTATUS.Text                     := 'N'
        else
        dm.SDS_NFCESTATUS.Text                     := 'S';
        dm.SDS_NFCEFL_IMPRESSO.Text                := 'S';
        dm.SDS_NFCECD_CFOP.Text                    := Det.Items[I].prod.cfop;
        dm.SDS_NFCEVL_ACRESCIMOS.Text              := '0';
        dm.SDS_NFCEVL_AVISTA.Text                  := '0';
        dm.SDS_NFCEVL_PRAZO.Text                   := '0';

     if not DM.SDS_Empresa.Locate('CNPJ', tbFmtCPForCNPJ(Emit.CNPJCPF),[])=True then
     begin
     ShowMessage('NF-e não confere com o CNPJ do Proprietario da NF-e... Verifique !!!');
     dm.SDS_NFCE.Cancel;
    // dm.SDS_NFCE.Delete;
    /// dm.SDS_NFCE.ApplyUpdates(0);
     Break;
     end;

     if QNfe.Locate('Nr_nota',RemoveChar(IntToStr(Ide.nNF)), [loCaseInsensitive]) = True then
     BEGIN
     ShowMessage('Já existe um NF-E cadastrada com este numero, para este cliente !!!');
     dm.SDS_NFCE.Cancel;
   //  dm.SDS_NFCE.Delete;
   //  dm.SDS_NFCE.ApplyUpdates(0);
     Break;
     end;
       dm.SDS_NFCE.Post;
       dm.SDS_NFCE.ApplyUpdates(0);
       DM.Coneccao.Commit;
      BEGIN

       for I := 0 to Det.Count-1 do
       begin
          with Det.Items[I] do
           begin
             // NodeItem := trvwNFe.Items.AddChild(Nota,'Produto'+IntToStrZero(I+1,3));
             // codigo:= prod.cEAN;

              if DM.IBTransaction.Active then
              DM.IBTransaction.Commit;
              DM.IBTransaction.StartTransaction;


              DM.Sds_produtos.Active := false;
              DM.Sds_produtos.sql.clear;
              DM.Sds_produtos.sql.add('select * from PRODUTOS where Codigo =' + prod.cProd + 'ORDER BY DESCRICAO');
              DM.Sds_produtos.Active := True;

             CODIGO := DM.Sds_produtosCODIGO_BARRAS.AsString;

             If (DM.Sds_produtos.locate('CODIGO', prod.cProd,[])=True) or (DM.Sds_produtos.locate('DESCRICAO', Prod.xProd,[])=True) then
             begin
               dm.SDS_NFCE_itens.Insert;
               dm.SDS_NFCE_itensNR_SEQUENCIA.Text              := '1';
               DM.sds_nfce_itensCOD_EMPRESA.text               := DM.SDS_EmpresaCODIGO.Text;
               dm.SDS_NFCE_itensITEN.Text                      := IntToStr(prod.nItem);
               dm.SDS_NFCE_itensNR_NOTA.Text                   := RemoveChar(IntToStr(Ide.nNF));
               dm.SDS_NFCE_itensCODIGO_PROD.Text               := dm.SDS_PRODUTOSCODIGO.text;
               dm.SDS_NFCE_itensCOD_PRODUTO.Text               := dm.SDS_PRODUTOSCODIGO_BARRAS.text;
               dm.SDS_NFCE_itensDESCRICAO_PRODUTO.Text         := Prod.xProd;
               dm.SDS_NFCE_itensCOD_NCM.Text                   := Prod.NCM;

               dm.SDS_NFCE_itensCFOP.Text            := prod.cfop;            //QBuscaItensCFOP_EST_COMPRA.Text;

               with Imposto do
               begin
                with ICMS do
                 begin
                 IF (DM.SDS_EmpresaREGIME.Text = 'P') OR  (DM.SDS_EmpresaREGIME.Text = 'R') then
                 begin

                  if cst = cst00 then dm.SDS_NFCE_itensCST.Text := '000';
                  if cst = cst10 then dm.SDS_NFCE_itensCST.Text := '010';
                  if cst = cst20 then dm.SDS_NFCE_itensCST.Text := '020';
                  if cst = cst30 then dm.SDS_NFCE_itensCST.Text := '030';
                  if cst = cst40 then dm.SDS_NFCE_itensCST.Text := '040';
                  if cst = cst41 then dm.SDS_NFCE_itensCST.Text := '041';
                  if cst = cst50 then dm.SDS_NFCE_itensCST.Text := '050';
                  if cst = cst51 then dm.SDS_NFCE_itensCST.Text := '051';
                  if cst = cst60 then dm.SDS_NFCE_itensCST.Text := '060';
                  if cst = cst70 then dm.SDS_NFCE_itensCST.Text := '070';
                  if cst = cst80 then dm.SDS_NFCE_itensCST.Text := '080';
                  if cst = cst90 then dm.SDS_NFCE_itensCST.Text := '090';
                end else
                IF DM.SDS_EmpresaREGIME.Text = 'S' then
                begin
                  if CSOSN = csosn101 then dm.SDS_NFCE_itensCST.Text := '101';
                  if CSOSN = csosn102 then dm.SDS_NFCE_itensCST.Text := '102';
                  if CSOSN = csosn103 then dm.SDS_NFCE_itensCST.Text := '103';
                  if CSOSN = csosn201 then dm.SDS_NFCE_itensCST.Text := '201';
                  if CSOSN = csosn202 then dm.SDS_NFCE_itensCST.Text := '202';
                  if CSOSN = csosn203 then dm.SDS_NFCE_itensCST.Text := '203';
                  if CSOSN = csosn300 then dm.SDS_NFCE_itensCST.Text := '300';
                  if CSOSN = csosn400 then dm.SDS_NFCE_itensCST.Text := '400';
                  if CSOSN = csosn500 then dm.SDS_NFCE_itensCST.Text := '500';
                  if CSOSN = csosn900 then dm.SDS_NFCE_itensCST.Text := '900';
               end;
               end;
               end;

               dm.SDS_NFCE_itensDESC_UNIDADE.Text    := Prod.uCom;
               dm.SDS_NFCE_itensQT_PRODUTO.AsCurrency   := (Prod.qCom) ;
               dm.SDS_NFCE_itensVL_UNITARIO.AsCurrency  := (Prod.vUnCom) ;
               dm.SDS_NFCE_itensVL_DESCONTO.AsCurrency  := (Prod.vDesc) ;
               dm.SDS_NFCE_itensVL_TOTAL.AsCurrency     := (Prod.vProd) ;
               dm.sds_nfce_itensVL_OUTROS.AsCurrency    := (Prod.vOutro) ;

               dm.SDS_NFCE_itensVL_BASE_ICM.AsCurrency     := (Imposto.ICMS.vBC);
               dm.SDS_NFCE_itensALIQ_ICM.AsCurrency        := (Imposto.ICMS.pICMS);
               dm.SDS_NFCE_itensVL_ICM.AsCurrency         := (Imposto.ICMS.vICMS);

               dm.SDS_NFCE_itensVL_BASE_ICM_SUBST.AsCurrency    := (Imposto.ICMS.vBCST);
               dm.SDS_NFCE_itensALIQ_ICM_SUBST.AsCurrency    := (Imposto.ICMS.pICMSST);
               dm.SDS_NFCE_itensVL_ICM_SUBST.AsCurrency   := (Imposto.ICMS.vICMSST);

               dm.SDS_NFCE_itensVL_BASE_IPI.AsCurrency     := (Imposto.IPI.vBC);
               dm.SDS_NFCE_itensALIQ_IPI.AsCurrency      := (Imposto.IPI.pIPI);
               dm.SDS_NFCE_itensVL_IPI.AsCurrency      := (Imposto.IPI.vIPI);

               dm.SDS_NFCE_itensVL_BASE_PIS.AsCurrency    := (Imposto.pis.vBC);
               dm.SDS_NFCE_itensALIQ_PIS.AsCurrency       := (Imposto.pis.pPIS);
               dm.SDS_NFCE_itensVL_PIS.AsCurrency      := (Imposto.PIs.vPIS);

               dm.SDS_NFCE_itensVL_BASE_COFINS.AsCurrency    := (Imposto.COFINS.vBC);
               dm.SDS_NFCE_itensALIQ_COFINS.AsCurrency       := (Imposto.COFINS.pCOFINS);
               dm.SDS_NFCE_itensVL_COFINS.AsCurrency      := (Imposto.COFINS.vCOFINS);

               dm.SDS_NFCE_itens.Post;
               dm.SDS_NFCE_itens.ApplyUpdates(0);
               end else

              If not (DM.Sds_produtos.locate('CODIGO', prod.cProd,[])=True) or (DM.Sds_produtos.locate('DESCRICAO', Prod.xProd,[])=True) then
              begin
              try
              // try
                with dm.IBSQL do
                begin
                close;
                sql.Clear;
                sql.Add('INSERT INTO PRODUTOS ( CODIGO, CODIGO_BARRAS, DESCRICAO, ABREVIADO, PRECO_CUSTO, MARGEM_LUCRO,  COMISSAO,  UNIDADE, FRETE,'+
                        'ICMS,  IPI_IRPJ,  OUTROS_IMPOSTOS,  DESCONTOS,  CLASS_FISCAL,  SIT_TRIBUTARIA,  CUSTO_MEDIO,  PRECO_VENDA, DESCONTO_MAXIMO,'+
                        'CODIGO_GRUPO, CODIGO_SUBGRUPO, CODIGO_MARCA, NOME_GRUPO, NOME_SUBGRUPO, NOME_MARCA, NOME_FORNECEDOR, CODIGO_FORNECEDORES,'+
                        'FOTO, ESTOQUE_ATUAL,  ESTOQUE_VENDIDO, ESTOQUE,  ESTOQUE_MINIMO, ESTOQUE_MAXIMO, DATACAD,  USERCAD, ULTIMACOMPRA, SECCAO,'+
                        'CATEGORIA, LOCALIZACAO, APLICACAO, ESP_COD_AUX, GARANTIA, BALANCA, ETIQUETA, ATIVO, REFERENCIA, COD_EMPRESA, DESC_UNIDADE,'+
                        'PESOBRUTO, PESOLIQUIDO, FONETICO, DATAULTALTERACAO, CUSTOREPOSICAO, PRECO_ANT, PRECO_PROMOCAO, FLAG_PROMOCAO, DT_INICIO_PROMO,'+
                        'DT_FIM_PROMO, COD_LABORATORIO, LABORATORIO, PRINCIPIO_ATIVO, MED_CONTROLADO, QTD_FRACIONADA, QTD_CAIXA, MED_GENERICO, LOTE_MED,'+
                        'VALIDADE, CHEK_BOX, PRECO_VENDA2, MARGEM_LUCRO2, VALIDADE_PRODUTO, PROD_SERV, UNIDADE_ENT, DESC_UNID_ENT, QUANT_SAIDA, QUANT_ENTRADA,'+
                        'ESTOQUE_FRACAO, DATA_FABRICACAO, FRACAO, NCM_SH, COD_MS, CONTOLAESTOQUE, PRODUTOCOMPOSTO, TIPO_ATIVIDADE, COD_PRODUTO_ESTOQUE,'+
                        'CODIGO_LOCAL_ESTOQUE,  LISTA_ABC, GRUPO_TRIBUTACAO, COMBUSTIVEL, COR, ENABLE_NUMSERIE, ID_PRODUTOS, COD_ANP, CESTA, ML_QUANT_BEB,'+
                        'UND_TRIB, CHASSI, COR_DESC, N_MOTOR, ANO_FAB, ANO_MOD_FAB, TIPO_VEIC, N_SERIE, COD_MODELO, ESPECIE_VEICULO,  COD_COR_DENATRAN,'+
                        'TIPO_COMBUSTIVEL, VEICULO)'+
                        ' VALUES (:CODIGO, :CODIGO_BARRAS, :DESCRICAO, :ABREVIADO, :PRECO_CUSTO, :MARGEM_LUCRO, :COMISSAO,:UNIDADE,:FRETE,:ICMS,:IPI_IRPJ,'+
                        ':OUTROS_IMPOSTOS, :DESCONTOS, :CLASS_FISCAL,:SIT_TRIBUTARIA,:CUSTO_MEDIO,:PRECO_VENDA,:DESCONTO_MAXIMO,:CODIGO_GRUPO,:CODIGO_SUBGRUPO,'+
                        ':CODIGO_MARCA,:NOME_GRUPO,:NOME_SUBGRUPO,:NOME_MARCA,:NOME_FORNECEDOR,:CODIGO_FORNECEDORES,:FOTO,:ESTOQUE_ATUAL,:ESTOQUE_VENDIDO,'+
                        ':ESTOQUE,:ESTOQUE_MINIMO, :ESTOQUE_MAXIMO,:DATACAD,:USERCAD,:ULTIMACOMPRA,:SECCAO,:CATEGORIA,:LOCALIZACAO, :APLICACAO,:ESP_COD_AUX,'+
                        ':GARANTIA, :BALANCA, :ETIQUETA, :ATIVO, :REFERENCIA,:COD_EMPRESA,:DESC_UNIDADE,:PESOBRUTO,:PESOLIQUIDO,:FONETICO,:DATAULTALTERACAO,'+
                        ':CUSTOREPOSICAO, :PRECO_ANT,:PRECO_PROMOCAO,:FLAG_PROMOCAO,:DT_INICIO_PROMO,:DT_FIM_PROMO,:COD_LABORATORIO,:LABORATORIO,:PRINCIPIO_ATIVO,'+
                        ':MED_CONTROLADO, :QTD_FRACIONADA, :QTD_CAIXA, :MED_GENERICO,:LOTE_MED,:VALIDADE,:CHEK_BOX,:PRECO_VENDA2, :MARGEM_LUCRO2, :VALIDADE_PRODUTO,'+
                        ':PROD_SERV, :UNIDADE_ENT,:DESC_UNID_ENT, :QUANT_SAIDA,:QUANT_ENTRADA,:ESTOQUE_FRACAO, :DATA_FABRICACAO,:FRACAO, :NCM_SH, :COD_MS,'+
                        ':CONTOLAESTOQUE, :PRODUTOCOMPOSTO, :TIPO_ATIVIDADE, :COD_PRODUTO_ESTOQUE,:CODIGO_LOCAL_ESTOQUE, :LISTA_ABC,:GRUPO_TRIBUTACAO,'+
                        ':COMBUSTIVEL, :COR, :ENABLE_NUMSERIE, :ID_PRODUTOS, :COD_ANP, :CESTA, :ML_QUANT_BEB, :UND_TRIB, :CHASSI, :COR_DESC,:N_MOTOR,'+
                        ':ANO_FAB, :ANO_MOD_FAB, :TIPO_VEIC, :N_SERIE, :COD_MODELO, :ESPECIE_VEICULO, :COD_COR_DENATRAN, :TIPO_COMBUSTIVEL, :VEICULO)');

                        dm.ProxCod.Close;
                        dm.ProxCod.SQL.Clear;
                        dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS');
                        DM.ProxCod.Open;

                        Parambyname('CODIGO').AsInteger         := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                        Parambyname('CODIGO_BARRAS').AsString   := Formatar(inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1),5,False,'0');
                        Parambyname('DESCRICAO').AsString       := Prod.xProd;
                        Parambyname('ABREVIADO').value          := null;
                        Parambyname('PRECO_CUSTO').AsFloat      := Prod.vUnCom;
                        Parambyname('MARGEM_LUCRO').AsFloat     := 0;
                        Parambyname('COMISSAO').AsFloat         := 0;
                        Parambyname('UNIDADE').AsInteger        := 1;
                        Parambyname('FRETE').AsFloat            := 0;
                        Parambyname('ICMS').AsFloat             := 0;
                        Parambyname('IPI_IRPJ').AsFloat         := 0;
                        Parambyname('OUTROS_IMPOSTOS').AsFloat  := 0;
                        Parambyname('DESCONTOS').AsFloat        := 0;
                        Parambyname('CLASS_FISCAL').VALUE       := null;
                        Parambyname('SIT_TRIBUTARIA').ASSTRING  := 'NN';
                        Parambyname('CUSTO_MEDIO').ASFLOAT      := 0;
                        Parambyname('PRECO_VENDA').ASFLOAT      := Prod.vUnCom;
                        Parambyname('DESCONTO_MAXIMO').ASFLOAT  := 0;
                        Parambyname('CODIGO_GRUPO').VALUE       := NULL;
                        Parambyname('CODIGO_SUBGRUPO').VALUE    := NULL;
                        Parambyname('CODIGO_MARCA').VALUE       := NULL;
                        Parambyname('NOME_GRUPO').VALUE         := NULL;
                        Parambyname('NOME_SUBGRUPO').VALUE      := NULL;
                        Parambyname('NOME_MARCA').VALUE         := NULL;
                        Parambyname('NOME_FORNECEDOR').VALUE    := NULL;
                        Parambyname('CODIGO_FORNECEDORES').VALUE := NULL;
                        Parambyname('FOTO').VALUE               := NULL;
                        Parambyname('ESTOQUE_ATUAL').AsFloat    := 0;
                        Parambyname('ESTOQUE_VENDIDO').VALUE    := NULL;
                        Parambyname('ESTOQUE').ASFLOAT          := 0;
                        Parambyname('ESTOQUE_MINIMO').ASFLOAT   := 1;
                        Parambyname('ESTOQUE_MAXIMO').ASFLOAT   := 99;
                        Parambyname('DATACAD').ASDATE           := DATE;
                        Parambyname('USERCAD').ASSTRING         := FORMPRINCIPAL.USERLOGADO;
                        Parambyname('ULTIMACOMPRA').ASDATE      := DATE;
                        Parambyname('SECCAO').AsInteger           := 1;
                        Parambyname('CATEGORIA').AsInteger        := 1;
                        Parambyname('LOCALIZACAO').VALUE        := NULL;
                        Parambyname('APLICACAO').asstring       := infAdProd;
                        Parambyname('ESP_COD_AUX').VALUE        := NULL;
                        Parambyname('GARANTIA').VALUE           := NULL;
                        Parambyname('BALANCA').VALUE            := NULL;
                        Parambyname('ETIQUETA').VALUE           := NULL;
                        Parambyname('ATIVO').ASSTRING           := 'A';
                        Parambyname('REFERENCIA').VALUE         := NULL;
                        Parambyname('COD_EMPRESA').ASinteger    := dm.sds_empresacodigo.asinteger;
                        Parambyname('DESC_UNIDADE').ASSTRING    := Prod.UCom;
                        Parambyname('PESOBRUTO').Value          := NULL;//StrToFloat(RemoveChar(Prod.veicProd.pesoB));
                        Parambyname('PESOLIQUIDO').Value        := NULL;//StrToFloat(RemoveChar(Prod.veicProd.pesoL));
                        Parambyname('ETIQUETA').VALUE           := NULL;
                        Parambyname('FONETICO').VALUE           := NULL;
                        Parambyname('DATAULTALTERACAO').VALUE   := NULL;
                        Parambyname('CUSTOREPOSICAO').VALUE     := NULL;
                        Parambyname('PRECO_ANT').VALUE          := NULL;
                        Parambyname('PRECO_PROMOCAO').VALUE     := NULL;
                        Parambyname('FLAG_PROMOCAO').VALUE      := NULL;
                        Parambyname('DT_INICIO_PROMO').VALUE    := NULL;
                        Parambyname('DT_FIM_PROMO').VALUE       := NULL;
                        Parambyname('COD_LABORATORIO').VALUE    := NULL;
                        Parambyname('LABORATORIO').VALUE       := NULL;
                        Parambyname('PRINCIPIO_ATIVO').VALUE    := NULL;
                        Parambyname('MED_CONTROLADO').VALUE     := NULL;
                        Parambyname('QTD_FRACIONADA').VALUE     := NULL;
                        Parambyname('QTD_CAIXA').VALUE          := NULL;
                        Parambyname('MED_GENERICO').VALUE       := NULL;
                        Parambyname('LOTE_MED').VALUE           := NULL;
                        Parambyname('VALIDADE').VALUE           := NULL;
                        Parambyname('CHEK_BOX').VALUE           := NULL;
                        Parambyname('PRECO_VENDA2').VALUE       := NULL;
                        Parambyname('MARGEM_LUCRO2').VALUE      := NULL;
                        Parambyname('VALIDADE_PRODUTO').VALUE   := NULL;
                        Parambyname('PROD_SERV').AsString       := 'P';
                        Parambyname('UNIDADE_ENT').VALUE        := NULL;
                        Parambyname('DESC_UNID_ENT').VALUE      := NULL;
                        Parambyname('QUANT_SAIDA').VALUE        := NULL;
                        Parambyname('QUANT_ENTRADA').VALUE      := NULL;
                        Parambyname('ESTOQUE_FRACAO').VALUE     := NULL;
                        Parambyname('DATA_FABRICACAO').VALUE    := NULL;
                        Parambyname('FRACAO').AsInteger         := 1;
                        Parambyname('NCM_SH').AsString          := Prod.NCM;
                        Parambyname('COD_MS').VALUE             := NULL;
                        Parambyname('CONTOLAESTOQUE').VALUE     := NULL;
                        Parambyname('PRODUTOCOMPOSTO').VALUE    := NULL;
                        Parambyname('TIPO_ATIVIDADE').VALUE     := NULL;
                        Parambyname('COD_PRODUTO_ESTOQUE').AsInteger   := 1;
                        Parambyname('CODIGO_LOCAL_ESTOQUE').AsInteger  := 1;
                        Parambyname('LISTA_ABC').VALUE          := NULL;
                        Parambyname('GRUPO_TRIBUTACAO').AsInteger      := 1;
                        Parambyname('COMBUSTIVEL').AsString     := 'N';
                        Parambyname('COR').VALUE            := NULL;// StrToInt(Prod.veicProd.cCor);
                        Parambyname('ENABLE_NUMSERIE').AsInteger := 1;
                        Parambyname('ID_PRODUTOS').VALUE        := NULL;
                        Parambyname('COD_ANP').VALUE            := NULL;
                        Parambyname('CESTA').VALUE              := NULL;
                        Parambyname('ML_QUANT_BEB').VALUE       := NULL;
                        Parambyname('UND_TRIB').VALUE           := NULL;
                        Parambyname('COR_DESC').Value           := Prod.veicProd.cCor;
                        Parambyname('CHASSI').AsString          := Prod.veicProd.chassi;
                        Parambyname('COR_DESC').AsString        := Prod.veicProd.xCor;
                        Parambyname('N_MOTOR').AsString         := Prod.veicProd.nMotor;
                        Parambyname('ANO_FAB').AsString         := IntToStr(Prod.veicProd.anoFab);
                        Parambyname('ANO_MOD_FAB').AsString     := IntToStr(Prod.veicProd.anoMod);
                        Parambyname('TIPO_VEIC').AsString       := IntToStr(Prod.veicProd.tpVeic);
                        Parambyname('N_SERIE').AsString         := Prod.veicProd.nSerie;
                        Parambyname('COD_MODELO').AsString      := Prod.veicProd.cMod;
                        Parambyname('ESPECIE_VEICULO').AsString := IntToStr(Prod.veicProd.espVeic);
                        Parambyname('COD_COR_DENATRAN').AsString := Prod.veicProd.cCorDENATRAN;
                        Parambyname('TIPO_COMBUSTIVEL').AsString := Prod.veicProd.tpComb;
                        Parambyname('VEICULO').AsString          := 'N';
                        ExecSQL;
                      end;

                       DM.IBTransaction.CommitRetaining;


                         DM.Sds_produtos.Active := false;
                         DM.Sds_produtos.sql.clear;
                         DM.Sds_produtos.sql.add('select * from PRODUTOS where Codigo_barras like ' + #39 + '%' +  Formatar(inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1),5,False,'0') + '%' + #39+'ORDER BY DESCRICAO');
                         DM.Sds_produtos.Active := True;

                         If (DM.Sds_produtos.locate('CODIGO_BARRAS',  Formatar(inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1),5,False,'0') ,[])=True)then
                         begin
                           dm.SDS_NFCE_itens.Insert;
                           dm.SDS_NFCE_itensNR_SEQUENCIA.Text              := '1';
                           DM.sds_nfce_itensCOD_EMPRESA.Text               := dm.SDS_EmpresaCODIGO.Text;
                           dm.SDS_NFCE_itensITEN.Text                      := IntToStr(prod.nItem);
                           dm.SDS_NFCE_itensNR_NOTA.Text                   := RemoveChar(IntToStr(Ide.nNF));
                           dm.SDS_NFCE_itensCODIGO_PROD.Text               := dm.SDS_PRODUTOSCODIGO.text;
                           dm.SDS_NFCE_itensCOD_PRODUTO.Text               := dm.SDS_PRODUTOSCODIGO_BARRAS.text;
                           dm.SDS_NFCE_itensDESCRICAO_PRODUTO.Text         := Prod.xProd;
                           dm.SDS_NFCE_itensCOD_NCM.Text                   := Prod.NCM;
                           dm.SDS_NFCE_itensCFOP.Text                      := prod.cfop;

                             with Imposto do
                             begin
                              with ICMS do
                               begin
                               IF (DM.SDS_EmpresaREGIME.Text = 'P') OR  (DM.SDS_EmpresaREGIME.Text = 'R') then
                               begin

                                if cst = cst00 then dm.SDS_NFCE_itensCST.Text := '000';
                                if cst = cst10 then dm.SDS_NFCE_itensCST.Text := '010';
                                if cst = cst20 then dm.SDS_NFCE_itensCST.Text := '020';
                                if cst = cst30 then dm.SDS_NFCE_itensCST.Text := '030';
                                if cst = cst40 then dm.SDS_NFCE_itensCST.Text := '040';
                                if cst = cst41 then dm.SDS_NFCE_itensCST.Text := '041';
                                if cst = cst50 then dm.SDS_NFCE_itensCST.Text := '050';
                                if cst = cst51 then dm.SDS_NFCE_itensCST.Text := '051';
                                if cst = cst60 then dm.SDS_NFCE_itensCST.Text := '060';
                                if cst = cst70 then dm.SDS_NFCE_itensCST.Text := '070';
                                if cst = cst80 then dm.SDS_NFCE_itensCST.Text := '080';
                                if cst = cst90 then dm.SDS_NFCE_itensCST.Text := '090';
                              end else
                              IF DM.SDS_EmpresaREGIME.Text = 'S' then
                              begin
                                if CSOSN = csosn101 then dm.SDS_NFCE_itensCST.Text := '101';
                                if CSOSN = csosn102 then dm.SDS_NFCE_itensCST.Text := '102';
                                if CSOSN = csosn103 then dm.SDS_NFCE_itensCST.Text := '103';
                                if CSOSN = csosn201 then dm.SDS_NFCE_itensCST.Text := '201';
                                if CSOSN = csosn202 then dm.SDS_NFCE_itensCST.Text := '202';
                                if CSOSN = csosn203 then dm.SDS_NFCE_itensCST.Text := '203';
                                if CSOSN = csosn300 then dm.SDS_NFCE_itensCST.Text := '300';
                                if CSOSN = csosn400 then dm.SDS_NFCE_itensCST.Text := '400';
                                if CSOSN = csosn500 then dm.SDS_NFCE_itensCST.Text := '500';
                                if CSOSN = csosn900 then dm.SDS_NFCE_itensCST.Text := '900';
                             end;
                             end;
                             end;

                           dm.SDS_NFCE_itensDESC_UNIDADE.Text    := Prod.uCom;
                           dm.SDS_NFCE_itensQT_PRODUTO.Text      := FloatToStr(Prod.qCom) ;
                           dm.SDS_NFCE_itensVL_UNITARIO.Text       := FloatToStr(Prod.vUnCom) ;
                           dm.SDS_NFCE_itensVL_DESCONTO.Text      := FloatToStr(Prod.vDesc) ;
                           dm.SDS_NFCE_itensVL_TOTAL.Text      := FloatToStr(Prod.vProd) ;

                           dm.SDS_NFCE_itensVL_BASE_ICM.Text       := FloatToStr(Imposto.ICMS.vBC);
                           dm.SDS_NFCE_itensALIQ_ICM.Text       := FloatToStr(Imposto.ICMS.pICMS);
                           dm.SDS_NFCE_itensVL_ICM.Text      := FloatToStr(Imposto.ICMS.vICMS);

                           dm.SDS_NFCE_itensVL_BASE_ICM_SUBST.Text    := FloatToStr(Imposto.ICMS.vBCST);
                           dm.SDS_NFCE_itensALIQ_ICM_SUBST.Text    := FloatToStr(Imposto.ICMS.pICMSST);
                           dm.SDS_NFCE_itensVL_ICM_SUBST.Text   := FloatToStr(Imposto.ICMS.vICMSST);

                           dm.SDS_NFCE_itensVL_BASE_IPI.Text     := FloatToStr(Imposto.IPI.vBC);
                           dm.SDS_NFCE_itensALIQ_IPI.Text       := FloatToStr(Imposto.IPI.pIPI);
                           dm.SDS_NFCE_itensVL_IPI.Text      := FloatToStr(Imposto.IPI.vIPI);

                           dm.SDS_NFCE_itensVL_BASE_PIS.Text     := FloatToStr(Imposto.pis.vBC);
                           dm.SDS_NFCE_itensALIQ_PIS.Text       := FloatToStr(Imposto.pis.pPIS);
                           dm.SDS_NFCE_itensVL_PIS.Text      := FloatToStr(Imposto.PIs.vPIS);

                           dm.SDS_NFCE_itensVL_BASE_COFINS.Text     := FloatToStr(Imposto.COFINS.vBC);
                           dm.SDS_NFCE_itensALIQ_COFINS.Text       := FloatToStr(Imposto.COFINS.pCOFINS);
                           dm.SDS_NFCE_itensVL_COFINS.Text         := FloatToStr(Imposto.COFINS.vCOFINS);

                           dm.SDS_NFCE_itens.Post;
                           dm.SDS_NFCE_itens.ApplyUpdates(0);
                           end;


                finally
                  dm.IBSQL.Close;
                end;

            end;
              Application.ProcessMessages;
              BtnOkClick(Sender);
            end;
         end;
       end;     
     end;
    end;
   end;
end;

procedure TFrmGerenciamentoNFce.Button3Click(Sender: TObject);
var
sCaminhoArquivo, tempdata : string;
begin
  if (not qconsnfe.active) or (qconsnfe.recordcount = 0)  then exit;

  if trim(qconsnfestatus_cancelado.asstring) <> 'S' then
  begin
    showmessage('NFC-e não cancelada impossivel emitir...');
    exit;
  end;

  tempdata:= formatdatetime('yyyymm', qconsnfedt_emissao.asdatetime);
  scnpjempresa:= removechar(dm.sds_empresacnpj.text);

  scaminhoarquivo := dm.sds_configuracoespasta_transmitidas_danfe.text + '\' +
    scnpjempresa +'\NFCe\'+ tempdata + '\' + trim(qconsnfechave_acesso_nfe.asstring) + '-nfe.xml';

  if not fileexists(scaminhoarquivo) then
  begin
    scaminhoarquivo := dm.sds_configuracoespasta_transmitidas_danfe.text +
      trim(qconsnfechave_acesso_nfe.asstring) + '-nfe.xml';
  end;

  if not fileexists(scaminhoarquivo) then
  begin
    showmessage('XML não encontrado.');
    exit;
  end;

  dm.acbrnfe1.notasfiscais.clear;
  dm.acbrnfe1.notasfiscais.loadfromfile(scaminhoarquivo);

  opendialog1.title:= 'Selecione o evento';
  opendialog1.defaultext:= '*.xml';
  opendialog1.filter:= 'Arquivos xml (*.xml)|*.xml|Todos os arquivos (*.*)|*.*';
  opendialog1.initialdir:= dm.acbrnfe1.configuracoes.arquivos.pathsalvar;
  
  if opendialog1.execute then
  begin
    dm.acbrnfe1.eventonfe.evento.clear;
    dm.acbrnfe1.eventonfe.lerxml(opendialog1.filename) ;
    dm.acbrnfe1.imprimirevento;
  end;
end;

procedure TFrmGerenciamentoNFce.Button4Click(Sender: TObject);
var
 i, j, k, n  : integer;
  Nota, Node, NodePai, NodeItem: TTreeNode;
  NFeRTXT: TNFeRTXT;
  codigo, CHASSI: string;
begin
  dm.SDS_NFCE.Active := False;
  dm.SDS_NFCE.Active := True;
  dm.SDS_NFCE_itens.Active := False;
  dm.SDS_NFCE_itens.Active := True;
  dm.SDS_Empresa.Open;

  QNfe.Active := False;
  QNfe.Active := True;


  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione o xml da NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := dm.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin

    dm.ACBrNFe1.NotasFiscais.Clear;
    //tenta TXT
    dm.ACBrNFe1.NotasFiscais.Add;
    NFeRTXT := TNFeRTXT.Create(dm.ACBrNFe1.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
    if NFeRTXT.LerTxt then
       NFeRTXT.Free
    else
    begin
       NFeRTXT.Free;
       //tenta XML
       dm.ACBrNFe1.NotasFiscais.Clear;
       try
          DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
       except
          ShowMessage('Arquivo NFe Inválido');
          exit;
       end;
    end;


  //  dm.SDS_NFCE.Insert;
    IF dm.ACBrNFe1.NotasFiscais.Items[n].NFe.Ide.modelo <> 65 then
    begin
          ShowMessage('XML não pertence a uma NFC-e válido');
          exit;
    end;

    for n:=0 to dm.ACBrNFe1.NotasFiscais.Count-1 do
    begin
    with dm.ACBrNFe1.NotasFiscais.Items[n].NFe do
     begin
         DM.SDS_Clientes.Active := false;
         dm.SDS_Clientes.SQL.Clear;
         dm.sds_clientes.sql.add('select * from clientes');
         DM.SDS_Clientes.Active := True;

      if dm.SDS_NFCE.Locate('NR_NOTA', RemoveChar(IntToStr(Ide.nNF)),[] )= True then
      begin

         dm.SDS_NFCE.Edit;

      IF  tbFmtCPForCNPJ(Dest.CNPJCPF) >'' then
      BEGIN
       if DM.SDS_Clientes.Locate('CPF_CNPJ', tbFmtCPForCNPJ(Dest.CNPJCPF),[])=True then
         begin
           dm.SDS_NFCECOD_CLIENTE.Text            := dm.SDS_ClientesCODIGO.Text;
           dm.SDS_NFCENOME_CLIENTE_FOR.text       := DM.SDS_CLIENTESNOME_RS.Text;
           dm.SDS_NFCEENDERECO_CLI_FORN.Text      := DM.SDS_ClientesENDERECO.Text;
           dm.SDS_NFCECPF_CNPJ_CLIENTE_FORN.Text  := dm.SDS_ClientesCPF_CNPJ.text;
           dm.SDS_NFCEIE_CLIENTE_FORN.Text        := DM.SDS_ClientesRG_IE.Text;
           dm.SDS_NFCECOD_IBGE.Text               := dm.SDS_ClientesCOD_IBGE.Text;
           dm.SDS_NFCETELEFONE.Text               := dm.SDS_ClientesTELEFONE.Text;
           dm.SDS_NFCEUF_CLIENTE_FORN.Text        := DM.SDS_ClientesUF.Text;
           dm.SDS_NFCECIDADE_CLIENTE_FORN.Text    := dm.SDS_ClientesCIDADE.Text;
           dm.SDS_NFCETIPO_PESSOA.Text            := DM.SDS_ClientesTIPO.Text;
           dm.SDS_NFCECEP_CLIENTE_FORN.Text       := removechar(dm.SDS_ClientesCEP.Text);
           dm.SDS_NFCEBAIRRO_CLIENTE_FORN.Text    := DM.SDS_ClientesBAIRRO.Text;
           dm.SDS_NFCEEND_NUM_CLIENTE.text        := DM.SDS_CLIENTESNUMERO.Text;
          end else

         if not DM.SDS_Clientes.Locate('CPF_CNPJ', tbFmtCPForCNPJ(Dest.CNPJCPF),[])=True then
         begin
          // try
            DM.SDS_Cli.Active := True;
            DM.SDS_Cli.Insert;
            DM.SDS_cliCODIGO.text              := '1';
            DM.SDS_CliUSERCAD.Text             := FormPrincipal.UserLogado;
            DM.SDS_CliDATACAD.Text             := datetostr(now);
            DM.SDS_CliCod_empresa.text         := DM.SDS_EmpresaCODIGO.Text;
            DM.SDS_CliNOME_RS.Text             := dest.xNome;
            DM.SDS_CliENDERECO.Text            := Dest.enderDest.xLgr;
            dm.SDS_CliCPF_CNPJ.text            := tbFmtCPForCNPJ(dest.CNPJCPF);
            DM.SDS_CliRG_IE.Text               := dest.IE;
            dm.SDS_CliCOD_IBGE.AsInteger       := dest.enderDest.cMun;
            dm.SDS_CliCIDADE.text              := dest.enderDest.xMun;
            dm.SDS_CliTELEFONE.Text            := tbFmtfone(dest.enderDest.fone);
            DM.SDS_CliUF.Text                  := dest.enderDest.UF;
            if Length(dest.CNPJCPF) > 12 then
            DM.SDS_CliTIPO.Text                := 'J'
            else
            DM.SDS_CliTIPO.Text                := 'F';
            dm.SDS_CliCEP.Text                 := tbFmtCep(IntToStr(dest.enderDest.CEP));
            DM.SDS_CliBAIRRO.Text              := dest.enderDest.xBairro;
            DM.SDS_CliNUMERO.Text              := RemoveChar(dest.enderDest.nro);
           // DM.SDS_ClientesCOD_EMPRESA.Text         := dm.SDS_EmpresaCODIGO.Text;

            DM.SDS_Cli.Post;
            DM.SDS_Cli.ApplyUpdates(0);

           { except
             ShowMessage('Erro ao Gravar o Cliente verifique ');
            end; }

             DM.SDS_Clientes.Active := false;
             dm.SDS_Clientes.SQL.Clear;
             dm.sds_clientes.sql.add('select * from clientes');
             DM.SDS_Clientes.Active := True;

          if tbFmtCPForCNPJ(Dest.CNPJCPF) >'' then
          begin
          if DM.SDS_Clientes.Locate('CPF_CNPJ', tbFmtCPForCNPJ(Dest.CNPJCPF),[])=True then
          begin
           dm.SDS_NFCECOD_CLIENTE.Text            := dm.SDS_ClientesCODIGO.Text;
           dm.SDS_NFCENOME_CLIENTE_FOR.text       := DM.SDS_CLIENTESNOME_RS.Text;
           dm.SDS_NFCEENDERECO_CLI_FORN.Text      := DM.SDS_ClientesENDERECO.Text;
           dm.SDS_NFCECPF_CNPJ_CLIENTE_FORN.Text  := dm.SDS_ClientesCPF_CNPJ.text;
           dm.SDS_NFCEIE_CLIENTE_FORN.Text        := DM.SDS_ClientesRG_IE.Text;
           dm.SDS_NFCECOD_IBGE.Text               := dm.SDS_ClientesCOD_IBGE.Text;
           dm.SDS_NFCETELEFONE.Text               := dm.SDS_ClientesTELEFONE.Text;
           dm.SDS_NFCEUF_CLIENTE_FORN.Text        := DM.SDS_ClientesUF.Text;
           dm.SDS_NFCECIDADE_CLIENTE_FORN.Text    := dm.SDS_ClientesCIDADE.Text;
           dm.SDS_NFCETIPO_PESSOA.Text            := DM.SDS_ClientesTIPO.Text;
           dm.SDS_NFCECEP_CLIENTE_FORN.Text       := removechar(dm.SDS_ClientesCEP.Text);
           dm.SDS_NFCEBAIRRO_CLIENTE_FORN.Text    := DM.SDS_ClientesBAIRRO.Text;
           dm.SDS_NFCEEND_NUM_CLIENTE.text        := DM.SDS_CLIENTESNUMERO.Text;
          end;
          end;
          end;
         end else
         begin
           dm.SDS_NFCECOD_CLIENTE.Text            := '1';
           dm.SDS_NFCENOME_CLIENTE_FOR.text       := 'CONSUMIDOR';
         end;

        dm.SDS_NFCE.Edit;
        dm.SDS_NFCECD_EMPRESA.Text                := '1';
        dm.SDS_NFCENR_NOTA.Text                    := RemoveChar(IntToStr(Ide.nNF));
        dm.SDS_NFCECHAVE_ACESSO_NFE.Text           := RemoveChar(infNFe.ID);//procNFe.chNFe;
        dm.SDS_NFCENR_PROTOCOLO_NFE.Text           := procNFe.nProt;
        dm.SDS_NFCEMODELO.Text                     := IntToStr(Ide.modelo);
        dm.SDS_NFCESERIE_NF.text                   := IntToStr(Ide.serie);
        dm.SDS_NFCEDT_EMISSAO.AsDateTime           := Ide.dEmi;
        dm.SDS_NFCEDT_LANCAMENTO.AsDateTime        := Ide.dEmi;
        dm.SDS_NFCECFOP_DESC.Text                  := ide.natOp;
        dm.SDS_NFCEMODELO.Text                     := '65';
        dm.SDS_NFCEVL_BASE_ICM.Text                := FloatToStr(Total.ICMSTot.vBC);
        dm.SDS_NFCEVL_ICM.Text                     := FloatToStr(Total.ICMSTot.vICMS) ;
        dm.SDS_NFCEVL_BASE_ICM_SUBST.Text          := FloatToStr(Total.ICMSTot.vBCST) ;
        dm.SDS_NFCEVL_ICM_SUBST.text               := FloatToStr(Total.ICMSTot.vST) ;
        dm.SDS_NFCEVL_MERCADORIAS.Text             := FloatToStr(Total.ICMSTot.vProd) ;
        dm.SDS_NFCEVL_FRETE.text                   :=FloatToStr(Total.ICMSTot.vFrete) ;
        dm.SDS_NFCEVL_SEGURO.Text                  := FloatToStr(Total.ICMSTot.vSeg) ;
        dm.SDS_NFCEVL_DESCONTOS.Text               := FloatToStr(Total.ICMSTot.vDesc) ;
        // trvwNFe.Items.AddChild(Node,'vII='        +FloatToStr(Total.ICMSTot.vII)) ;
        dm.SDS_NFCEVL_ACRESCIMOS.Text               := FloatToStr(Total.ICMSTot.vOutro) ;
        dm.SDS_NFCEVl_IPI.Text                     := FloatToStr(Total.ICMSTot.vIPI) ;
        dm.SDS_NFCEVL_PIS.Text                     := FloatToStr(Total.ICMSTot.vPIS) ;
        dm.SDS_NFCEVL_COFINS.Text                  := FloatToStr(Total.ICMSTot.vCOFINS) ;
        dm.SDS_NFCEVL_OUTROS.Text                  := FloatToStr(Total.ICMSTot.vOutro) ;
        dm.SDS_NFCEVL_TOTAL.Text                   := FloatToStr(Total.ICMSTot.vNF) ;
        dm.SDS_NFCEPAGAMENTO.Text                  := Cobr.Fat.nFat;
        dm.SDS_NFCECD_EMPRESA.Text                 := DM.SDS_EmpresaCODIGO.Text;
        if  procNFe.nProt = ''  then
        dm.SDS_NFCESTATUS.Text                     := 'N'
        else
        dm.SDS_NFCESTATUS.Text                     := 'S';
        dm.SDS_NFCEFL_IMPRESSO.Text                := 'S';
        dm.SDS_NFCECD_CFOP.Text                    := Det.Items[I].prod.cfop;
        dm.SDS_NFCEVL_ACRESCIMOS.Text              := '0';
        dm.SDS_NFCEVL_AVISTA.Text                  := '0';
        dm.SDS_NFCEVL_PRAZO.Text                   := '0';

     if not DM.SDS_Empresa.Locate('CNPJ', tbFmtCPForCNPJ(Emit.CNPJCPF),[])=True then
     begin
     ShowMessage('NF-e não confere com o CNPJ do Proprietario da NF-e... Verifique !!!');
     dm.SDS_NFCE.Cancel;
    // dm.SDS_NFCE.Delete;
    /// dm.SDS_NFCE.ApplyUpdates(0);
     Break;
     end;

    { if QNfe.Locate('Nr_nota',RemoveChar(IntToStr(Ide.nNF)), [loCaseInsensitive]) = True then
     BEGIN
     ShowMessage('Já existe um NF-E cadastrada com este numero, para esta fornecedor !!!');
     dm.SDS_NFCE.Cancel;
   //  dm.SDS_NFCE.Delete;
   //  dm.SDS_NFCE.ApplyUpdates(0);
     Break;
     end;  }

      dm.SDS_NFCE.Post;
      DM.Coneccao.Commit;
      
      BEGIN
       with dm.SDS_NFCE_itens do
      begin
         first;
         while not eof do
            begin
              Delete;
             Next;
             ApplyUpdates(0);
            end;
        end;

       for I := 0 to Det.Count-1 do
       begin
          with Det.Items[I] do
           begin
             // NodeItem := trvwNFe.Items.AddChild(Nota,'Produto'+IntToStrZero(I+1,3));
             // codigo:= prod.cEAN;


              if DM.IBTransaction.Active then
              DM.IBTransaction.Commit;
              DM.IBTransaction.StartTransaction;


              DM.Sds_produtos.Active := false;
              DM.Sds_produtos.sql.clear;
              DM.Sds_produtos.sql.add('select * from PRODUTOS where Codigo_barras like ' + #39 + '%' + prod.cEAN + '%' + #39+'ORDER BY DESCRICAO');
              DM.Sds_produtos.Active := True;


             CODIGO := DM.Sds_produtosCODIGO_BARRAS.AsString;

             If (DM.Sds_produtos.locate('CODIGO', prod.cProd,[])=True) or (DM.Sds_produtos.locate('CODIGO_BARRAS', prod.cEAN,[])=True) or (DM.Sds_produtos.locate('DESCRICAO', Prod.xProd,[])=True) then
             begin
               dm.SDS_NFCE_itens.Insert;
               dm.SDS_NFCE_itensNR_SEQUENCIA.Text              := '1';
               DM.sds_nfce_itensCOD_EMPRESA.text               := '1';
               dm.SDS_NFCE_itensITEN.Text                      := IntToStr(prod.nItem);
               dm.SDS_NFCE_itensNR_NOTA.Text                   := RemoveChar(IntToStr(Ide.nNF));
               dm.SDS_NFCE_itensCODIGO_PROD.Text               := dm.SDS_PRODUTOSCODIGO.text;
               dm.SDS_NFCE_itensCOD_PRODUTO.Text               := dm.SDS_PRODUTOSCODIGO_BARRAS.text;
               dm.SDS_NFCE_itensDESCRICAO_PRODUTO.Text         := Prod.xProd;
               dm.SDS_NFCE_itensCOD_NCM.Text                   := Prod.NCM;
               DM.sds_nfce_itensCOD_EMPRESA.text               := DM.SDS_EmpresaCODIGO.Text;

               dm.SDS_NFCE_itensCFOP.Text            := prod.cfop;            //QBuscaItensCFOP_EST_COMPRA.Text;

               with Imposto do
               begin
                with ICMS do
                 begin
                 IF (DM.SDS_EmpresaREGIME.Text = 'P') OR  (DM.SDS_EmpresaREGIME.Text = 'R') then
                 begin

                  if cst = cst00 then dm.SDS_NFCE_itensCST.Text := '000';
                  if cst = cst10 then dm.SDS_NFCE_itensCST.Text := '010';
                  if cst = cst20 then dm.SDS_NFCE_itensCST.Text := '020';
                  if cst = cst30 then dm.SDS_NFCE_itensCST.Text := '030';
                  if cst = cst40 then dm.SDS_NFCE_itensCST.Text := '040';
                  if cst = cst41 then dm.SDS_NFCE_itensCST.Text := '041';
                  if cst = cst50 then dm.SDS_NFCE_itensCST.Text := '050';
                  if cst = cst51 then dm.SDS_NFCE_itensCST.Text := '051';
                  if cst = cst60 then dm.SDS_NFCE_itensCST.Text := '060';
                  if cst = cst70 then dm.SDS_NFCE_itensCST.Text := '070';
                  if cst = cst80 then dm.SDS_NFCE_itensCST.Text := '080';
                  if cst = cst90 then dm.SDS_NFCE_itensCST.Text := '090';
                end else
                IF DM.SDS_EmpresaREGIME.Text = 'S' then
                begin
                  if CSOSN = csosn101 then dm.SDS_NFCE_itensCST.Text := '101';
                  if CSOSN = csosn102 then dm.SDS_NFCE_itensCST.Text := '102';
                  if CSOSN = csosn103 then dm.SDS_NFCE_itensCST.Text := '103';
                  if CSOSN = csosn201 then dm.SDS_NFCE_itensCST.Text := '201';
                  if CSOSN = csosn202 then dm.SDS_NFCE_itensCST.Text := '202';
                  if CSOSN = csosn203 then dm.SDS_NFCE_itensCST.Text := '203';
                  if CSOSN = csosn300 then dm.SDS_NFCE_itensCST.Text := '300';
                  if CSOSN = csosn400 then dm.SDS_NFCE_itensCST.Text := '400';
                  if CSOSN = csosn500 then dm.SDS_NFCE_itensCST.Text := '500';
                  if CSOSN = csosn900 then dm.SDS_NFCE_itensCST.Text := '900';
               end;
               end;
               end;

               dm.SDS_NFCE_itensDESC_UNIDADE.Text    := Prod.uCom;
               dm.SDS_NFCE_itensQT_PRODUTO.Text      := FloatToStr(Prod.qCom) ;
               dm.SDS_NFCE_itensVL_UNITARIO.Text     := FloatToStr(Prod.vUnCom) ;
               dm.SDS_NFCE_itensVL_DESCONTO.Text     := FloatToStr(Prod.vDesc) ;
               dm.SDS_NFCE_itensVL_TOTAL.Text        := FloatToStr(Prod.vProd) ;
               dm.sds_nfce_itensVL_OUTROS.Text       := FloatToStr(Prod.vOutro) ;


               dm.SDS_NFCE_itensVL_BASE_ICM.Text     := FloatToStr(Imposto.ICMS.vBC);
               dm.SDS_NFCE_itensALIQ_ICM.Text        := FloatToStr(Imposto.ICMS.pICMS);
               dm.SDS_NFCE_itensVL_ICM.Text          := FloatToStr(Imposto.ICMS.vICMS);

               dm.SDS_NFCE_itensVL_BASE_ICM_SUBST.Text    := FloatToStr(Imposto.ICMS.vBCST);
               dm.SDS_NFCE_itensALIQ_ICM_SUBST.Text    := FloatToStr(Imposto.ICMS.pICMSST);
               dm.SDS_NFCE_itensVL_ICM_SUBST.Text   := FloatToStr(Imposto.ICMS.vICMSST);

               dm.SDS_NFCE_itensVL_BASE_IPI.Text     := FloatToStr(Imposto.IPI.vBC);
               dm.SDS_NFCE_itensALIQ_IPI.Text       := FloatToStr(Imposto.IPI.pIPI);
               dm.SDS_NFCE_itensVL_IPI.Text      := FloatToStr(Imposto.IPI.vIPI);

               dm.SDS_NFCE_itensVL_BASE_PIS.Text     := FloatToStr(Imposto.pis.vBC);
               dm.SDS_NFCE_itensALIQ_PIS.Text       := FloatToStr(Imposto.pis.pPIS);
               dm.SDS_NFCE_itensVL_PIS.Text      := FloatToStr(Imposto.PIs.vPIS);

               dm.SDS_NFCE_itensVL_BASE_COFINS.Text     := FloatToStr(Imposto.COFINS.vBC);
               dm.SDS_NFCE_itensALIQ_COFINS.Text       := FloatToStr(Imposto.COFINS.pCOFINS);
               dm.SDS_NFCE_itensVL_COFINS.Text      := FloatToStr(Imposto.COFINS.vCOFINS);

               dm.SDS_NFCE_itens.Post;
               dm.SDS_NFCE_itens.ApplyUpdates(0);
               end else

              If not (DM.Sds_produtos.locate('CODIGO', prod.cProd,[])=True) or (DM.Sds_produtos.locate('CODIGO_BARRAS', prod.cEAN,[])=True) or (DM.Sds_produtos.locate('DESCRICAO', Prod.xProd,[])=True) then
              begin
              try
              // try
                with dm.IBSQL do
                begin
                close;
                sql.Clear;
                sql.Add('INSERT INTO PRODUTOS ( CODIGO, CODIGO_BARRAS, DESCRICAO, ABREVIADO, PRECO_CUSTO, MARGEM_LUCRO,  COMISSAO,  UNIDADE, FRETE,'+
                        'ICMS,  IPI_IRPJ,  OUTROS_IMPOSTOS,  DESCONTOS,  CLASS_FISCAL,  SIT_TRIBUTARIA,  CUSTO_MEDIO,  PRECO_VENDA, DESCONTO_MAXIMO,'+
                        'CODIGO_GRUPO, CODIGO_SUBGRUPO, CODIGO_MARCA, NOME_GRUPO, NOME_SUBGRUPO, NOME_MARCA, NOME_FORNECEDOR, CODIGO_FORNECEDORES,'+
                        'FOTO, ESTOQUE_ATUAL,  ESTOQUE_VENDIDO, ESTOQUE,  ESTOQUE_MINIMO, ESTOQUE_MAXIMO, DATACAD,  USERCAD, ULTIMACOMPRA, SECCAO,'+
                        'CATEGORIA, LOCALIZACAO, APLICACAO, ESP_COD_AUX, GARANTIA, BALANCA, ETIQUETA, ATIVO, REFERENCIA, COD_EMPRESA, DESC_UNIDADE,'+
                        'PESOBRUTO, PESOLIQUIDO, FONETICO, DATAULTALTERACAO, CUSTOREPOSICAO, PRECO_ANT, PRECO_PROMOCAO, FLAG_PROMOCAO, DT_INICIO_PROMO,'+
                        'DT_FIM_PROMO, COD_LABORATORIO, LABORATORIO, PRINCIPIO_ATIVO, MED_CONTROLADO, QTD_FRACIONADA, QTD_CAIXA, MED_GENERICO, LOTE_MED,'+
                        'VALIDADE, CHEK_BOX, PRECO_VENDA2, MARGEM_LUCRO2, VALIDADE_PRODUTO, PROD_SERV, UNIDADE_ENT, DESC_UNID_ENT, QUANT_SAIDA, QUANT_ENTRADA,'+
                        'ESTOQUE_FRACAO, DATA_FABRICACAO, FRACAO, NCM_SH, COD_MS, CONTOLAESTOQUE, PRODUTOCOMPOSTO, TIPO_ATIVIDADE, COD_PRODUTO_ESTOQUE,'+
                        'CODIGO_LOCAL_ESTOQUE,  LISTA_ABC, GRUPO_TRIBUTACAO, COMBUSTIVEL, COR, ENABLE_NUMSERIE, ID_PRODUTOS, COD_ANP, CESTA, ML_QUANT_BEB,'+
                        'UND_TRIB, CHASSI, COR_DESC, N_MOTOR, ANO_FAB, ANO_MOD_FAB, TIPO_VEIC, N_SERIE, COD_MODELO, ESPECIE_VEICULO,  COD_COR_DENATRAN,'+
                        'TIPO_COMBUSTIVEL, VEICULO)'+
                        ' VALUES (:CODIGO, :CODIGO_BARRAS, :DESCRICAO, :ABREVIADO, :PRECO_CUSTO, :MARGEM_LUCRO, :COMISSAO,:UNIDADE,:FRETE,:ICMS,:IPI_IRPJ,'+
                        ':OUTROS_IMPOSTOS, :DESCONTOS, :CLASS_FISCAL,:SIT_TRIBUTARIA,:CUSTO_MEDIO,:PRECO_VENDA,:DESCONTO_MAXIMO,:CODIGO_GRUPO,:CODIGO_SUBGRUPO,'+
                        ':CODIGO_MARCA,:NOME_GRUPO,:NOME_SUBGRUPO,:NOME_MARCA,:NOME_FORNECEDOR,:CODIGO_FORNECEDORES,:FOTO,:ESTOQUE_ATUAL,:ESTOQUE_VENDIDO,'+
                        ':ESTOQUE,:ESTOQUE_MINIMO, :ESTOQUE_MAXIMO,:DATACAD,:USERCAD,:ULTIMACOMPRA,:SECCAO,:CATEGORIA,:LOCALIZACAO, :APLICACAO,:ESP_COD_AUX,'+
                        ':GARANTIA, :BALANCA, :ETIQUETA, :ATIVO, :REFERENCIA,:COD_EMPRESA,:DESC_UNIDADE,:PESOBRUTO,:PESOLIQUIDO,:FONETICO,:DATAULTALTERACAO,'+
                        ':CUSTOREPOSICAO, :PRECO_ANT,:PRECO_PROMOCAO,:FLAG_PROMOCAO,:DT_INICIO_PROMO,:DT_FIM_PROMO,:COD_LABORATORIO,:LABORATORIO,:PRINCIPIO_ATIVO,'+
                        ':MED_CONTROLADO, :QTD_FRACIONADA, :QTD_CAIXA, :MED_GENERICO,:LOTE_MED,:VALIDADE,:CHEK_BOX,:PRECO_VENDA2, :MARGEM_LUCRO2, :VALIDADE_PRODUTO,'+
                        ':PROD_SERV, :UNIDADE_ENT,:DESC_UNID_ENT, :QUANT_SAIDA,:QUANT_ENTRADA,:ESTOQUE_FRACAO, :DATA_FABRICACAO,:FRACAO, :NCM_SH, :COD_MS,'+
                        ':CONTOLAESTOQUE, :PRODUTOCOMPOSTO, :TIPO_ATIVIDADE, :COD_PRODUTO_ESTOQUE,:CODIGO_LOCAL_ESTOQUE, :LISTA_ABC,:GRUPO_TRIBUTACAO,'+
                        ':COMBUSTIVEL, :COR, :ENABLE_NUMSERIE, :ID_PRODUTOS, :COD_ANP, :CESTA, :ML_QUANT_BEB, :UND_TRIB, :CHASSI, :COR_DESC,:N_MOTOR,'+
                        ':ANO_FAB, :ANO_MOD_FAB, :TIPO_VEIC, :N_SERIE, :COD_MODELO, :ESPECIE_VEICULO, :COD_COR_DENATRAN, :TIPO_COMBUSTIVEL, :VEICULO)');

                        dm.ProxCod.Close;
                        dm.ProxCod.SQL.Clear;
                        dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS');
                        DM.ProxCod.Open;

                        Parambyname('CODIGO').AsInteger         := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                        Parambyname('CODIGO_BARRAS').AsString   := Formatar(inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1),5,False,'0');
                        Parambyname('DESCRICAO').AsString       := Prod.xProd;
                        Parambyname('ABREVIADO').value          := null;
                        Parambyname('PRECO_CUSTO').AsFloat      := Prod.vUnCom;
                        Parambyname('MARGEM_LUCRO').AsFloat     := 0;
                        Parambyname('COMISSAO').AsFloat         := 0;
                        Parambyname('UNIDADE').AsInteger        := 1;
                        Parambyname('FRETE').AsFloat            := 0;
                        Parambyname('ICMS').AsFloat             := 0;
                        Parambyname('IPI_IRPJ').AsFloat         := 0;
                        Parambyname('OUTROS_IMPOSTOS').AsFloat  := 0;
                        Parambyname('DESCONTOS').AsFloat        := 0;
                        Parambyname('CLASS_FISCAL').VALUE       := null;
                        Parambyname('SIT_TRIBUTARIA').ASSTRING  := 'NN';
                        Parambyname('CUSTO_MEDIO').ASFLOAT      := 0;
                        Parambyname('PRECO_VENDA').ASFLOAT      := Prod.vUnCom;
                        Parambyname('DESCONTO_MAXIMO').ASFLOAT  := 0;
                        Parambyname('CODIGO_GRUPO').VALUE       := NULL;
                        Parambyname('CODIGO_SUBGRUPO').VALUE    := NULL;
                        Parambyname('CODIGO_MARCA').VALUE       := NULL;
                        Parambyname('NOME_GRUPO').VALUE         := NULL;
                        Parambyname('NOME_SUBGRUPO').VALUE      := NULL;
                        Parambyname('NOME_MARCA').VALUE         := NULL;
                        Parambyname('NOME_FORNECEDOR').VALUE    := NULL;
                        Parambyname('CODIGO_FORNECEDORES').VALUE := NULL;
                        Parambyname('FOTO').VALUE               := NULL;
                        Parambyname('ESTOQUE_ATUAL').AsFloat    := 0;
                        Parambyname('ESTOQUE_VENDIDO').VALUE    := NULL;
                        Parambyname('ESTOQUE').ASFLOAT          := 0;
                        Parambyname('ESTOQUE_MINIMO').ASFLOAT   := 1;
                        Parambyname('ESTOQUE_MAXIMO').ASFLOAT   := 99;
                        Parambyname('DATACAD').ASDATE           := DATE;
                        Parambyname('USERCAD').ASSTRING         := FORMPRINCIPAL.USERLOGADO;
                        Parambyname('ULTIMACOMPRA').ASDATE      := DATE;
                        Parambyname('SECCAO').AsInteger           := 1;
                        Parambyname('CATEGORIA').AsInteger        := 1;
                        Parambyname('LOCALIZACAO').VALUE        := NULL;
                        Parambyname('APLICACAO').asstring       := infAdProd;
                        Parambyname('ESP_COD_AUX').VALUE        := NULL;
                        Parambyname('GARANTIA').VALUE           := NULL;
                        Parambyname('BALANCA').VALUE            := NULL;
                        Parambyname('ETIQUETA').VALUE           := NULL;
                        Parambyname('ATIVO').ASSTRING           := 'A';
                        Parambyname('REFERENCIA').VALUE         := NULL;
                        Parambyname('COD_EMPRESA').ASinteger    := dm.sds_empresacodigo.asinteger;
                        Parambyname('DESC_UNIDADE').ASSTRING    := Prod.UCom;
                        Parambyname('PESOBRUTO').Value          := NULL;//StrToFloat(RemoveChar(Prod.veicProd.pesoB));
                        Parambyname('PESOLIQUIDO').Value        := NULL;//StrToFloat(RemoveChar(Prod.veicProd.pesoL));
                        Parambyname('ETIQUETA').VALUE           := NULL;
                        Parambyname('FONETICO').VALUE           := NULL;
                        Parambyname('DATAULTALTERACAO').VALUE   := NULL;
                        Parambyname('CUSTOREPOSICAO').VALUE     := NULL;
                        Parambyname('PRECO_ANT').VALUE          := NULL;
                        Parambyname('PRECO_PROMOCAO').VALUE     := NULL;
                        Parambyname('FLAG_PROMOCAO').VALUE      := NULL;
                        Parambyname('DT_INICIO_PROMO').VALUE    := NULL;
                        Parambyname('DT_FIM_PROMO').VALUE       := NULL;
                        Parambyname('COD_LABORATORIO').VALUE    := NULL;
                        Parambyname('LABORATORIO').VALUE       := NULL;
                        Parambyname('PRINCIPIO_ATIVO').VALUE    := NULL;
                        Parambyname('MED_CONTROLADO').VALUE     := NULL;
                        Parambyname('QTD_FRACIONADA').VALUE     := NULL;
                        Parambyname('QTD_CAIXA').VALUE          := NULL;
                        Parambyname('MED_GENERICO').VALUE       := NULL;
                        Parambyname('LOTE_MED').VALUE           := NULL;
                        Parambyname('VALIDADE').VALUE           := NULL;
                        Parambyname('CHEK_BOX').VALUE           := NULL;
                        Parambyname('PRECO_VENDA2').VALUE       := NULL;
                        Parambyname('MARGEM_LUCRO2').VALUE      := NULL;
                        Parambyname('VALIDADE_PRODUTO').VALUE   := NULL;
                        Parambyname('PROD_SERV').AsString       := 'P';
                        Parambyname('UNIDADE_ENT').VALUE        := NULL;
                        Parambyname('DESC_UNID_ENT').VALUE      := NULL;
                        Parambyname('QUANT_SAIDA').VALUE        := NULL;
                        Parambyname('QUANT_ENTRADA').VALUE      := NULL;
                        Parambyname('ESTOQUE_FRACAO').VALUE     := NULL;
                        Parambyname('DATA_FABRICACAO').VALUE    := NULL;
                        Parambyname('FRACAO').AsInteger         := 1;
                        Parambyname('NCM_SH').AsString          := Prod.NCM;
                        Parambyname('COD_MS').VALUE             := NULL;
                        Parambyname('CONTOLAESTOQUE').VALUE     := NULL;
                        Parambyname('PRODUTOCOMPOSTO').VALUE    := NULL;
                        Parambyname('TIPO_ATIVIDADE').VALUE     := NULL;
                        Parambyname('COD_PRODUTO_ESTOQUE').AsInteger   := 1;
                        Parambyname('CODIGO_LOCAL_ESTOQUE').AsInteger  := 1;
                        Parambyname('LISTA_ABC').VALUE          := NULL;
                        Parambyname('GRUPO_TRIBUTACAO').AsInteger      := 1;
                        Parambyname('COMBUSTIVEL').AsString     := 'N';
                        Parambyname('COR').VALUE            := NULL;// StrToInt(Prod.veicProd.cCor);
                        Parambyname('ENABLE_NUMSERIE').AsInteger := 1;
                        Parambyname('ID_PRODUTOS').VALUE        := NULL;
                        Parambyname('COD_ANP').VALUE            := NULL;
                        Parambyname('CESTA').VALUE              := NULL;
                        Parambyname('ML_QUANT_BEB').VALUE       := NULL;
                        Parambyname('UND_TRIB').VALUE           := NULL;
                        Parambyname('COR_DESC').Value           := Prod.veicProd.cCor;
                        Parambyname('CHASSI').AsString          := Prod.veicProd.chassi;
                        Parambyname('COR_DESC').AsString        := Prod.veicProd.xCor;
                        Parambyname('N_MOTOR').AsString         := Prod.veicProd.nMotor;
                        Parambyname('ANO_FAB').AsString         := IntToStr(Prod.veicProd.anoFab);
                        Parambyname('ANO_MOD_FAB').AsString     := IntToStr(Prod.veicProd.anoMod);
                        Parambyname('TIPO_VEIC').AsString       := IntToStr(Prod.veicProd.tpVeic);
                        Parambyname('N_SERIE').AsString         := Prod.veicProd.nSerie;
                        Parambyname('COD_MODELO').AsString      := Prod.veicProd.cMod;
                        Parambyname('ESPECIE_VEICULO').AsString := IntToStr(Prod.veicProd.espVeic);
                        Parambyname('COD_COR_DENATRAN').AsString := Prod.veicProd.cCorDENATRAN;
                        Parambyname('TIPO_COMBUSTIVEL').AsString := Prod.veicProd.tpComb;
                        Parambyname('VEICULO').AsString          := 'N';
                        ExecSQL;
                      end;

                       DM.IBTransaction.CommitRetaining;

                 { except
                    DM.IBTransaction.Rollback;
                    showmessage('Erro ao Gravar o Item....');
                  end;  }

                         DM.Sds_produtos.Active := false;
                         DM.Sds_produtos.sql.clear;
                         DM.Sds_produtos.sql.add('select * from PRODUTOS where Codigo_barras like ' + #39 + '%' +  Formatar(inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1),5,False,'0') + '%' + #39+'ORDER BY DESCRICAO');
                         DM.Sds_produtos.Active := True;

                         If (DM.Sds_produtos.locate('CODIGO_BARRAS',  Formatar(inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1),5,False,'0') ,[])=True)then
                         begin
                           dm.SDS_NFCE_itens.Insert;
                           dm.SDS_NFCE_itensNR_SEQUENCIA.Text              := '1';
                   
                           DM.sds_nfce_itensCOD_EMPRESA.text               := DM.SDS_EmpresaCODIGO.Text;
                           dm.SDS_NFCE_itensITEN.Text                      := IntToStr(prod.nItem);
                           dm.SDS_NFCE_itensNR_NOTA.Text                   := RemoveChar(IntToStr(Ide.nNF));
                           dm.SDS_NFCE_itensCODIGO_PROD.Text               := dm.SDS_PRODUTOSCODIGO.text;
                           dm.SDS_NFCE_itensCOD_PRODUTO.Text               := dm.SDS_PRODUTOSCODIGO_BARRAS.text;
                           dm.SDS_NFCE_itensDESCRICAO_PRODUTO.Text         := Prod.xProd;
                           dm.SDS_NFCE_itensCOD_NCM.Text                   := Prod.NCM;
                           dm.SDS_NFCE_itensCFOP.Text                      := prod.cfop;

                             with Imposto do
                             begin
                              with ICMS do
                               begin
                               IF (DM.SDS_EmpresaREGIME.Text = 'P') OR  (DM.SDS_EmpresaREGIME.Text = 'R') then
                               begin

                                if cst = cst00 then dm.SDS_NFCE_itensCST.Text := '000';
                                if cst = cst10 then dm.SDS_NFCE_itensCST.Text := '010';
                                if cst = cst20 then dm.SDS_NFCE_itensCST.Text := '020';
                                if cst = cst30 then dm.SDS_NFCE_itensCST.Text := '030';
                                if cst = cst40 then dm.SDS_NFCE_itensCST.Text := '040';
                                if cst = cst41 then dm.SDS_NFCE_itensCST.Text := '041';
                                if cst = cst50 then dm.SDS_NFCE_itensCST.Text := '050';
                                if cst = cst51 then dm.SDS_NFCE_itensCST.Text := '051';
                                if cst = cst60 then dm.SDS_NFCE_itensCST.Text := '060';
                                if cst = cst70 then dm.SDS_NFCE_itensCST.Text := '070';
                                if cst = cst80 then dm.SDS_NFCE_itensCST.Text := '080';
                                if cst = cst90 then dm.SDS_NFCE_itensCST.Text := '090';
                              end else
                              IF DM.SDS_EmpresaREGIME.Text = 'S' then
                              begin
                                if CSOSN = csosn101 then dm.SDS_NFCE_itensCST.Text := '101';
                                if CSOSN = csosn102 then dm.SDS_NFCE_itensCST.Text := '102';
                                if CSOSN = csosn103 then dm.SDS_NFCE_itensCST.Text := '103';
                                if CSOSN = csosn201 then dm.SDS_NFCE_itensCST.Text := '201';
                                if CSOSN = csosn202 then dm.SDS_NFCE_itensCST.Text := '202';
                                if CSOSN = csosn203 then dm.SDS_NFCE_itensCST.Text := '203';
                                if CSOSN = csosn300 then dm.SDS_NFCE_itensCST.Text := '300';
                                if CSOSN = csosn400 then dm.SDS_NFCE_itensCST.Text := '400';
                                if CSOSN = csosn500 then dm.SDS_NFCE_itensCST.Text := '500';
                                if CSOSN = csosn900 then dm.SDS_NFCE_itensCST.Text := '900';
                             end;
                             end;
                             end;

                           dm.SDS_NFCE_itensDESC_UNIDADE.Text    := Prod.uCom;
                           dm.SDS_NFCE_itensQT_PRODUTO.Text      := FloatToStr(Prod.qCom) ;
                           dm.SDS_NFCE_itensVL_UNITARIO.Text       := FloatToStr(Prod.vUnCom) ;
                           dm.SDS_NFCE_itensVL_DESCONTO.Text      := FloatToStr(Prod.vDesc) ;
                           dm.SDS_NFCE_itensVL_TOTAL.Text      := FloatToStr(Prod.vProd) ;

                           dm.SDS_NFCE_itensVL_BASE_ICM.Text       := FloatToStr(Imposto.ICMS.vBC);
                           dm.SDS_NFCE_itensALIQ_ICM.Text       := FloatToStr(Imposto.ICMS.pICMS);
                           dm.SDS_NFCE_itensVL_ICM.Text      := FloatToStr(Imposto.ICMS.vICMS);

                           dm.SDS_NFCE_itensVL_BASE_ICM_SUBST.Text    := FloatToStr(Imposto.ICMS.vBCST);
                           dm.SDS_NFCE_itensALIQ_ICM_SUBST.Text    := FloatToStr(Imposto.ICMS.pICMSST);
                           dm.SDS_NFCE_itensVL_ICM_SUBST.Text   := FloatToStr(Imposto.ICMS.vICMSST);

                           dm.SDS_NFCE_itensVL_BASE_IPI.Text     := FloatToStr(Imposto.IPI.vBC);
                           dm.SDS_NFCE_itensALIQ_IPI.Text       := FloatToStr(Imposto.IPI.pIPI);
                           dm.SDS_NFCE_itensVL_IPI.Text      := FloatToStr(Imposto.IPI.vIPI);

                           dm.SDS_NFCE_itensVL_BASE_PIS.Text     := FloatToStr(Imposto.pis.vBC);
                           dm.SDS_NFCE_itensALIQ_PIS.Text       := FloatToStr(Imposto.pis.pPIS);
                           dm.SDS_NFCE_itensVL_PIS.Text      := FloatToStr(Imposto.PIs.vPIS);

                           dm.SDS_NFCE_itensVL_BASE_COFINS.Text     := FloatToStr(Imposto.COFINS.vBC);
                           dm.SDS_NFCE_itensALIQ_COFINS.Text       := FloatToStr(Imposto.COFINS.pCOFINS);
                           dm.SDS_NFCE_itensVL_COFINS.Text      := FloatToStr(Imposto.COFINS.vCOFINS);


                           dm.SDS_NFCE_itens.Post;
                           dm.SDS_NFCE_itens.ApplyUpdates(0);
                           end;


                finally
                  dm.IBSQL.Close;
                end;

            end;
              Application.ProcessMessages;
              BtnOkClick(Sender);
            end;
         end;
        end;
       end; // else
     {  begin
         ShowMessage('Nf-e não Consta na base de dados favor utilizar o botão importar....');
       end;}
     end;
    end;
   end;
end;

procedure TFrmGerenciamentoNFce.DBGrid1DblClick(Sender: TObject);
begin
 if not QConsNfeNR_NOTA.IsNull then
    Paginas.ActivePageIndex := 1;
end;

procedure TFrmGerenciamentoNFce.NovaCartaClick(Sender: TObject);
Var
  SEQQ: Integer;

begin
  if QConsNfeNR_NOTA.IsNull then
  begin
    ShowMessage('NFe não Selecionada');
    exit;
  end;
  if QConsNfeCHAVE_ACESSO_NFE.AsString = '' then
  begin
    ShowMessage('NFe sem chave de acesso!');
    exit;
  end;
  try
    Application.CreateForm(TfrmCadCartaCorrecao, frmCadCartaCorrecao);
    if not QCartas.IsEmpty then
    begin
      ICartas.close;
      ICartas.sql.Clear;
      ICartas.sql.Text :=
        'select MAX( SEQ ) from NOTA_FISCAL_CCE where COD_NF=:COD_NF';
      ICartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
      ICartas.Open;
      QCartas.Locate('SEQ', ICartas.fieldbyname('MAX').AsInteger, []);
      frmCadCartaCorrecao.Correcao.Lines.Add(' | CORRECOES ANTERIORES : ' +
        QCartasCORRECAO.AsString);
      ICartas.close;
    end;
    frmCadCartaCorrecao.ShowModal;
    if not frmCadCartaCorrecao.Cancelado then
    begin
      if frmCadCartaCorrecao.Correcao.Lines.Text <> '' then
      begin
        ICartas.close;
        ICartas.sql.Clear;
        ICartas.sql.Text :=
          'select MAX( SEQ ) from NOTA_FISCAL_CCE where COD_NF=:COD_NF';
        ICartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
        ICartas.Open;
        if ICartas.IsEmpty then
          SEQQ := 1
        else
        begin
          SEQQ := ICartas.fieldbyname('MAX').AsInteger + 1;
          if SEQQ > 1 then
           ShowMessage('Esta nova carta ira substituir a anterior!');
        end;
        ICartas.close;
        ICartas.sql.Clear;
        ICartas.sql.Text := 'Insert into NOTA_FISCAL_CCE(COD_NF,SEQ,CHAVE,' +
          'STATUS_TRANSMITIDA, DATA, CORRECAO) values( :COD_NF,:SEQ,:CHAVE,' +
          ':STATUS_TRANSMITIDA, :DATA, :CORRECAO)';
        ICartas.Parambyname('SEQ').AsInteger := SEQQ;
        ICartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
        ICartas.Parambyname('CHAVE').AsString :=
          QConsNfeCHAVE_ACESSO_NFE.AsString;
        ICartas.Parambyname('STATUS_TRANSMITIDA').AsString := 'N';
        ICartas.Parambyname('DATA').AsDate := frmCadCartaCorrecao.Data.Date;
        ICartas.Parambyname('CORRECAO').AsString :=
          frmCadCartaCorrecao.Correcao.Lines.Text;
        ICartas.ExecSQL;
        ICartas.close;
        IBTRNfe.CommitRetaining;
        QCartas.close;
        QCartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
        QCartas.Open;
      end;
    end;
  finally
    FreeAndNil(frmCadCartaCorrecao);
  end;


end;

procedure TFrmGerenciamentoNFce.EditarCartaClick(Sender: TObject);
begin
  if QConsNfeNR_NOTA.IsNull then
  begin
    ShowMessage('NFe não Selecionada');
    exit;
  end;
  if QConsNfeCHAVE_ACESSO_NFE.AsString = '' then
  begin
    ShowMessage('NFe sem chave de acesso!');
    exit;
  end;
  if (not QCartasPROTOCOLO.IsNull) and
    ((QCartasSTATUS_TRANSMITIDA.AsString = 'A') or
    (QCartasSTATUS_TRANSMITIDA.AsString = 'C')) then
  begin
    ShowMessage('Carta de correção ja foi envianda não pode ser alterada!');
    exit;
  end;
  if QCartasCOD.IsNull then
  begin
    ShowMessage('Carta não selecionada!');
    exit;
  end;

 if Application.MESSAGEBOX('Confirma a Alteração da CCE?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
  try
    Application.CreateForm(TfrmCadCartaCorrecao, frmCadCartaCorrecao);
    frmCadCartaCorrecao.Data.Date := QCartasDATA.AsDateTime;
    frmCadCartaCorrecao.Correcao.Lines.Text := QCartasCORRECAO.AsString;
    frmCadCartaCorrecao.ShowModal;
    if not frmCadCartaCorrecao.Cancelado then
    begin
      if frmCadCartaCorrecao.Correcao.Lines.Text <> '' then
      begin
        ICartas.close;
        ICartas.sql.Clear;
        ICartas.sql.Text :=
          'UPDATE NOTA_FISCAL_CCE SET DATA=:DATA, CORRECAO=:CORRECAO' +
          ' WHERE COD=:COD';
        ICartas.Parambyname('DATA').AsDate := frmCadCartaCorrecao.Data.Date;
        ICartas.Parambyname('CORRECAO').AsString :=
          frmCadCartaCorrecao.Correcao.Lines.Text;
        ICartas.Parambyname('COD').AsInteger := QCartasCOD.AsInteger;
        ICartas.ExecSQL;
        ICartas.close;
        IBTRNfe.CommitRetaining;

        QCartas.close;
        QCartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
        QCartas.Open;
      end;
    end;
  finally
    FreeAndNil(frmCadCartaCorrecao);
  end;
  end;
end;

procedure TFrmGerenciamentoNFce.ExcluirCartaClick(Sender: TObject);
begin
 if QConsNfeNR_NOTA.IsNull then
  begin
    ShowMessage('NFe não Selecionada');
    exit;
  end;
  if QConsNfeCHAVE_ACESSO_NFE.AsString = '' then
  begin
    ShowMessage('NFe sem chave de acesso!');
    exit;
  end;
  if (not QCartasPROTOCOLO.IsNull) and
    ((QCartasSTATUS_TRANSMITIDA.AsString = 'A') or
    (QCartasSTATUS_TRANSMITIDA.AsString = 'C')) then
  begin
    ShowMessage('Carta de correção ja foi envianda não pode ser alterada!');
    exit;
  end;
  if QCartasCOD.IsNull then
  begin
    ShowMessage('Carta não selecionada!');
    exit;
  end;
  if Application.MESSAGEBOX('Confirma a Exclusão da CCE?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
  ICartas.close;
  ICartas.sql.Clear;
  ICartas.sql.Text := 'DELETE FROM NOTA_FISCAL_CCE WHERE COD=:COD';
  ICartas.Parambyname('COD').AsInteger := QCartasCOD.AsInteger;
  ICartas.ExecSQL;
  ICartas.close;
  IBTRNfe.CommitRetaining;
  QCartas.close;
  QCartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
  QCartas.Open;
  end;
end;

procedure TFrmGerenciamentoNFce.EnviaCartaClick(Sender: TObject);
var
  CODD: Integer;
begin
  if QConsNfeNR_NOTA.IsNull then
  begin
    ShowMessage('NFe não Selecionada');
    exit;
  end;
  if QConsNfeCHAVE_ACESSO_NFE.AsString = '' then
  begin
    ShowMessage('NFe sem chave de acesso!');
    exit;
  end;
  if (not QCartasPROTOCOLO.IsNull) and
    ((QCartasSTATUS_TRANSMITIDA.AsString = 'A') or
    (QCartasSTATUS_TRANSMITIDA.AsString = 'C')) then
  begin
    ShowMessage('Carta de correção ja foi envianda não pode ser alterada!');
    exit;
  end;
  if QCartasCOD.IsNull then
  begin
    ShowMessage('Carta não selecionada!');
    exit;
  end;
  EnviarrCarta(QCartasCOD.AsInteger, QCartasCOD_NF.AsInteger);
  CODD := QConsNfeNR_NOTA.AsInteger;
  if IBTRNfe.Active then
    IBTRNfe.Commit;
  IBTRNfe.StartTransaction;
  with QConsNfe do
  begin
    close;
    sql.Clear;
    sql.Text := sSql;
    sql.Add(' WHERE N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
      ' AND N.MODELO = ' + #39 + '65' + #39 +
      ' ORDER BY N.DT_EMISSAO, N.NR_NOTA');
    Parambyname('dataini').AsDate := EdtDataIni.Date;
    Parambyname('datafin').AsDate := EdtDataFin.Date;
    Open;
  end;
  QConsNfe.Locate('NR_NOTA', CODD, []);

end;

procedure TFrmGerenciamentoNFce.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if Column.field.FieldName = 'STATUS' then // o nome do campo
  begin
    DBGrid2.Canvas.FillRect(Rect);
    if QCartasSTATUS_TRANSMITIDA.AsString = 'A' then
      Imagens.Draw(DBGrid2.Canvas, Rect.Left + 5, Rect.Top + 1, 1);
    if QCartasSTATUS_TRANSMITIDA.AsString = 'S' then
      Imagens.Draw(DBGrid2.Canvas, Rect.Left + 5, Rect.Top + 1, 0);
    if QCartasSTATUS_TRANSMITIDA.AsString = 'N' then
      Imagens.Draw(DBGrid2.Canvas, Rect.Left + 5, Rect.Top + 1, 3);
    if QCartasSTATUS_TRANSMITIDA.AsString = 'C' then
      Imagens.Draw(DBGrid2.Canvas, Rect.Left + 5, Rect.Top + 1, 4);
  end;
end;

procedure TFrmGerenciamentoNFce.PaginasChange(Sender: TObject);
begin
       if Paginas.ActivePageIndex = 1 then
       BEGIN
        QCartas.close;
        QCartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
        QCartas.Open;
        QCartas.FetchAll;
        end;
end;


procedure NotaFiscalEletronica(const iCodigoNotaFiscal: integer);
var
  sRazaoEmi, sFantasiaEmi, sEndEmi, sBaiEmi, sCidEmi, sCEPEmi, sUFEmi: string;
  sCNPJEmi, sIEEmi, sTelEmi, sIBGEEmi, sNumeroEmi: string;
  sRazaoDest, sEndDest, sBaiDest, sCidDest, sUFDest, sCepDest, sTelDest: string;
  sCNPJDest, sIEDest, sIBGEDest, sPessoaDest, sNumDest: string;
  sNomeTra, sEndTra, sCidTra, sUFTra, sCNPJTra, sIETra, sPlacaTra, sUFPlacaTra,
    CSOSNm: string;

  sChave, sProtrocolo: string;

  iOrdemItens: integer;
  bAux: boolean;

  sAmbienteNfe: string;
  sNatureza: string;
  iAux, Tipo_emp: integer;
  JC: String;
  DPEC: boolean;
  IDEPEC: integer;
  chave2: string;
begin
  { busca parametros }
 { if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Add(
          'SELECT CAMINHO_CERTIFICADO, SENHA_CERTIFICADO, NUMERO_SERIE_CERTIFICADO,     '
            +
            'TIPO_IMPRESSAO_DANFE, FORMA_EMISSAO_DANFE, CAMINHO_LOGOMARCA_DANFE,          '
            +
            'SALVAR_LOG_DANFE, CAMINHO_LOG_DANFE, AMBIENTE_DANFE, PASTA_CANCELADAS_DANFE, '
            + 'PASTA_INUTILIZADAS_DANFE, PASTA_TRANSMITIDAS_DANFE, CAMINHO_ARQUIVOS_PDF,    ' + 'CAMINHO_RELATORIO_DANFE, ESTADO_NFE                                                      ' + 'FROM PARAMETROS ' + 'WHERE COD_EMP = :CODEMP');
        Parambyname('codemp').AsInteger := iEmp;
        open;

        dm.ACBrNFe1.Configuracoes.Certificados.Senha := trim
          (fieldbyname('senha_certificado').AsString);
        dm.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := trim
          (fieldbyname('numero_serie_certificado').AsString);

        if trim(fieldbyname('tipo_impressao_danfe').AsString) = 'R' then
          dm.ACBrNFe1.DANFE.TipoDANFE := tiRetrato
        else
          dm.ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;
        DPEC := False;
        case fieldbyname('forma_emissao_danfe').AsInteger of
          1:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal;
              JC := '';
            end;
          2:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teContingencia;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;
            end;
          3:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teSCAN;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;

            end;
          4:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teDPEC;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;
              DPEC := True;
            end;
          5:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teFSDA;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;

            end;
        end;

        dm.ACBrNFe1.DANFE.Logo := trim(fieldbyname('caminho_logomarca_danfe')
            .AsString);

        if trim(fieldbyname('salvar_log_danfe').AsString) = 'S' then
          dm.ACBrNFe1.Configuracoes.Geral.Salvar := True
        else
          dm.ACBrNFe1.Configuracoes.Geral.Salvar := False;

        dm.ACBrNFe1.Configuracoes.Geral.PathSalvar := trim
          (fieldbyname('caminho_log_danfe').AsString);

        sAmbienteNfe := trim(fieldbyname('ambiente_danfe').AsString);

        if trim(fieldbyname('ambiente_danfe').AsString) = 'P' then
          dm.ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao
        else
          dm.ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;

        dm.ACBrNFe1.Configuracoes.WebServices.UF := trim
          (fieldbyname('estado_nfe').AsString);
        dm.ACBrNFe1.Configuracoes.WebServices.Visualizar := False;

        dm.ACBrNFe1.Configuracoes.Arquivos.PathCan := trim
          (fieldbyname('pasta_canceladas_danfe').AsString);
        dm.ACBrNFe1.Configuracoes.Arquivos.PathInu := trim
          (fieldbyname('pasta_inutilizadas_danfe').AsString);
        dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe := trim
          (fieldbyname('pasta_transmitidas_danfe').AsString);
        dm.ACBrNFeDANFEFR1.PathPDF := trim
          (fieldbyname('caminho_arquivos_pdf').AsString);
       // dm.ACBrNFeDANFEFR1.RavFile := trim
       //   (fieldbyname('caminho_relatorio_danfe').AsString);
      end;

      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro ao buscar os parâmetros');
    end;
  finally
    dm.QConsulta.close;
  end;

  // abre a nota fiscal e os Itens
  if dm.IBTRAux.Active then
    dm.IBTRAux.Commit;
  dm.IBTRAux.StartTransaction;

  dm.QbuscaItensNf.Parambyname('codnf').AsInteger := iCodigoNotaFiscal;
  dm.QbuscaItensNF.open;

  dm.QNF.Parambyname('codnf').AsInteger := iCodigoNotaFiscal;
  dm.QNF.open;

  // busca a natureza da operacao
  iAux := 0;
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Text := 'SELECT DISTINCT(I.COD_CFO) CFOP, C.NOME_CFO ' +
          'FROM ITENS_NOTA_FISCAL I   ' + 'INNER JOIN CFOP C          ' +
          'ON (I.COD_CFO = C.COD_CFO) ' + 'WHERE I.COD_NF = :CODNF    ' +
          'ORDER BY I.COD_CFO';
        Parambyname('codnf').AsInteger := iCodigoNotaFiscal;
        open;
        while not eof do
        begin
          if iAux = 0 then
            sNatureza := fieldbyname('nome_cfo').AsString
          else
            sNatureza := '\' + fieldbyname('nome_cfo').AsString;

          Inc(iAux);
          next;
        end;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('erro ao buscar os cfops');
    end;
  finally
    dm.QConsulta.close;
  end;

  / gerando o XML
  sChave := '';
  sProtrocolo := '';

  dm.ACBrNFe1.NotasFiscais.Clear;

  // busca dados empresa para NFe
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Text :=
          'SELECT RAZAO_EMP, FANTASIA_EMP, END_EMP, BAI_EMP, CID_EMP, CEP_EMP, EST_EMP, '
          +
          'CNPJ_EMP, INSC_EMP, TEL_EMP, CODIGO_MUNICIPIO, NUMERO_EMP, TIPO_EMP ' +
          'FROM EMPRESA ' + 'WHERE COD_EMP = :CODEMP';
        Parambyname('codemp').AsInteger := iEmp;
        open;
        sRazaoEmi := fieldbyname('razao_emp').AsString;
        sFantasiaEmi := fieldbyname('fantasia_emp').AsString;
        sEndEmi := fieldbyname('end_emp').AsString;
        sBaiEmi := fieldbyname('bai_emp').AsString;
        sCidEmi := fieldbyname('cid_emp').AsString;
        sCEPEmi := RetiraCaracter(fieldbyname('cep_emp').AsString);
        sUFEmi := fieldbyname('est_emp').AsString;
        sCNPJEmi := RetiraCaracter(fieldbyname('cnpj_emp').AsString);
        sIEEmi := RetiraCaracter(fieldbyname('insc_emp').AsString);
        sTelEmi := fieldbyname('tel_emp').AsString;
        sIBGEEmi := fieldbyname('CODIGO_MUNICIPIO').AsString;
        sNumeroEmi := fieldbyname('numero_emp').AsString;
        Tipo_emp := fieldbyname('TIPO_EMP').AsInteger;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('erro buscandos dados da empresa');
    end;
  finally
    dm.QConsulta.close;
  end;

  // busca dados do Cliente/Fornecedor para NFe
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        if dm.QNFCOD_CLI.AsInteger > 0 then
        begin
          sql.Text :=
            'SELECT NOME_CLI, ENDRES_CLI, BAIRES_CLI, CIDRES_CLI, ESTRES_CLI, CEPRES_CLI,  '
            +
            'TELRES_CLI, CNPJ_CLI, CODIGO_IBGE, FJ_CLI, NUMRES_CLI, INSC_ESTADUAL, FJ_CLI  '
            + 'FROM CLIENTE ' + 'WHERE COD_CLI = :CODCLI';
          Parambyname('codcli').AsInteger := dm.QNFCOD_CLI.AsInteger;
          open;
          sRazaoDest := fieldbyname('nome_cli').AsString;
          sEndDest := fieldbyname('endres_cli').AsString;
          sBaiDest := fieldbyname('baires_cli').AsString;
          sCidDest := fieldbyname('cidres_cli').AsString;
          sCepDest := RetiraCaracter(fieldbyname('cepres_cli').AsString);
          sUFDest := fieldbyname('estres_cli').AsString;
          sCNPJDest := RetiraCaracter(fieldbyname('cnpj_cli').AsString);
          sIEDest := RetiraCaracter(fieldbyname('insc_estadual').AsString);
          sTelDest := RetiraCaracter(fieldbyname('telres_cli').AsString);
          sIBGEDest := fieldbyname('codigo_ibge').AsString;
          sPessoaDest := fieldbyname('fj_cli').AsString;
          sNumDest := fieldbyname('numres_cli').AsString;
        end
        else
        begin
          sql.Text :=
            'SELECT RAZAO_FOR, END_FOR, BAI_FOR, CID_FOR, EST_FOR, CEP_FOR, ' +
            'TEL_FOR, CNPJ_FOR, INSC_FOR, CODIGO_IBGE, NUM_FOR, FJ_FOR      ' +
            'FROM FORNECEDOR ' + 'WHERE COD_FOR = :CODFOR';
          Parambyname('codfor').AsInteger := dm.QNFCOD_FOR.AsInteger;
          open;
          sRazaoDest := fieldbyname('razao_for').AsString;
          sEndDest := fieldbyname('end_for').AsString;
          sBaiDest := fieldbyname('bai_for').AsString;
          sCidDest := fieldbyname('cid_for').AsString;
          sCepDest := RetiraCaracter(fieldbyname('cep_for').AsString);
          sUFDest := fieldbyname('est_for').AsString;
          sCNPJDest := RetiraCaracter(fieldbyname('cnpj_for').AsString);
          sIEDest := RetiraCaracter(fieldbyname('insc_for').AsString);
          sTelDest := RetiraCaracter(fieldbyname('tel_for').AsString);
          sIBGEDest := fieldbyname('codigo_ibge').AsString;
          sPessoaDest := fieldbyname('fj_for').AsString;
          sNumDest := fieldbyname('num_for').AsString;
        end;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('erro buscandos dados do cliente/fornecedor');
    end;
  finally
    dm.QConsulta.close;
  end;

  // busca dados da Transportadora para NFe
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Text :=
          'SELECT NOME_TRA, END_TRA, CID_TRA, EST_TRA, CNPJ_TRA, INSC_TRA, PLACA_TRA, UF_PLACA_TRA '
          + 'FROM TRANSPORTADORA ' + 'WHERE COD_TRA = :CODTRA';
        Parambyname('codtra').AsInteger := dm.QNFCOD_TRA.AsInteger;
        open;
        sNomeTra := fieldbyname('nome_tra').AsString;
        sEndTra := fieldbyname('end_tra').AsString;
        sCidTra := fieldbyname('cid_tra').AsString;
        sUFTra := fieldbyname('est_tra').AsString;
        sCNPJTra := RetiraCaracter(fieldbyname('cnpj_tra').AsString);
        sIETra := RetiraCaracter(fieldbyname('insc_tra').AsString);
        sPlacaTra := RetiraCaracter(fieldbyname('placa_tra').AsString);
        sUFPlacaTra := fieldbyname('uf_placa_tra').AsString;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('erro buscandos dados da transportadora');
    end;
  finally
    dm.QConsulta.close;
  end;

  with dm.ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    Ide.natOp := sNatureza;
    if JC <> '' then
    begin
      Ide.xJust := JC;
      Ide.dhCont := Date;
    end;
    Ide.nNF := dm.QNFNUMERO_NOTA_NF.AsInteger;
    Ide.cNF := dm.QNFNUMERO_NOTA_NF.AsInteger;
    Ide.modelo := 55;
    Ide.serie := dm.QNFSERIE_NOTA.AsInteger;
    Ide.dEmi := dm.QNFDATA_EMISSAO_NF.AsDateTime;
    Ide.dSaiEnt := dm.QNFDATA_SAIDA_NF.AsDateTime;

    if trim(sAmbienteNfe) = 'P' then
      Ide.tpAmb := taProducao
    else
      Ide.tpAmb := taHomologacao;

    if dm.QNFTIPO_NOTA_FISCAL.AsInteger < 5 then
      Ide.tpNF := tnSaida
    else
      Ide.tpNF := tnEntrada;

    Ide.indPag := ipVista;
    Ide.verProc := '1.0.0.0';
    Ide.cUF := StrToIntDef(copy(sIBGEEmi, 1, 2), 0);
    Ide.cMunFG := StrToIntDef(sIBGEEmi, 0);

    [ Notas Referenciadas
      with Ide.NFref.Add do
      begin
      refNFe := ChaveNFeOriginal;

      ou

      RefNF.cUF := 35;
      RefNF.AAMM := '0310';
      end ]

    // Emitente
    dm.QbuscaItensNF.first;
    if dm.QBuscaItensNFUSA_CSOSN.AsString = 'S' then
      Emit.CRT := crtSimplesNacional;
    Emit.CNPJCPF := sCNPJEmi;
    Emit.IE := sIEEmi;
    Emit.xNome := sRazaoEmi;
    Emit.xFant := sFantasiaEmi;
    Emit.EnderEmit.fone := sTelEmi;
    Emit.EnderEmit.CEP := strtoint(sCEPEmi);
    Emit.EnderEmit.xLgr := sEndEmi;
    Emit.EnderEmit.nro := sNumeroEmi;
    Emit.EnderEmit.xCpl := '';
    Emit.EnderEmit.xBairro := sBaiEmi;
    Emit.EnderEmit.cMun := strtoint(sIBGEEmi);
    Emit.EnderEmit.xMun := sCidEmi;
    Emit.EnderEmit.UF := trim(sUFEmi);
    Emit.EnderEmit.cPais := 1058;
    Emit.EnderEmit.xPais := 'BRASIL';

    // Destinatário
    Dest.CNPJCPF := sCNPJDest;
    Dest.EnderDest.CEP := strtoint(sCepDest); ;
    Dest.EnderDest.xLgr := sEndDest;
    Dest.EnderDest.nro := sNumDest;
    Dest.EnderDest.xCpl := '';
    Dest.EnderDest.xBairro := sBaiDest;
    Dest.EnderDest.cMun := strtoint(sIBGEDest);
    Dest.EnderDest.xMun := sCidDest;
    Dest.EnderDest.UF := trim(sUFDest);
    Dest.EnderDest.fone := sTelDest;

    if trim(sPessoaDest) = 'J' then
      Dest.IE := sIEDest
    else
      Dest.IE := '';

    Dest.xNome := sRazaoDest;
    Dest.EnderDest.cPais := 1058;
    Dest.EnderDest.xPais := 'BRASIL';

    iOrdemItens := 0;
    dm.QbuscaItensNF.first;
    while not dm.QbuscaItensNF.eof do
    begin
      with Det.Add do
      begin
        Inc(iOrdemItens);
        infAdProd := '';
        Prod.nItem := iOrdemItens;
        Prod.CFOP := dm.QbuscaItensNFCOD_CFO.AsString;
        Prod.cProd := dm.QbuscaItensNFCOD_PRO.AsString;
        Prod.xProd := dm.QbuscaItensNFNOME_PRO.AsString;
        Prod.qCom := dm.QbuscaItensNFQUANT.AsCurrency;
        Prod.uCom := dm.QbuscaItensNFUNIDADE.AsString;
        Prod.vProd := dm.QBuscaItensNFCALC_TOTAL.AsCurrency;
        Prod.vUnCom := dm.QbuscaItensNFUNIT.AsCurrency;
        Prod.vDesc := dm.QBuscaItensNFDESCONTO.AsCurrency;
        Prod.qTrib := dm.QbuscaItensNFQUANT.AsCurrency; ;
        Prod.uTrib := dm.QbuscaItensNFUNIDADE.AsString;
        Prod.vUnTrib := dm.QbuscaItensNFUNIT.AsCurrency;
        Prod.NCM := dm.QBuscaItensNFCOD_NCM.AsString;
        Prod.vFrete := dm.QBuscaItensNFFRETE.AsCurrency;
        with Imposto do
        begin
          with ICMS do
          begin
            /// Novas linhas
            ///
            if trim(dm.QBuscaItensNFUSA_CSOSN.AsString) = 'S' then
            begin
              // CSOSNm := '900';
              CSOSNm := trim(dm.QBuscaItensNFCSOSN.AsString);
              CSOSN := StrToCSOSNICMS(bAux, CSOSNm);
              Orig := StrToOrig(bAux, trim(dm.QBuscaItensNFORIG.AsString));
              if CSOSNm = '900' then
              begin
                ICMS.modBC := dbiPrecoTabelado;
                ICMS.pICMS := dm.QbuscaItensNFALIQ.AsCurrency;
                ICMS.vICMS := dm.QBuscaItensNFVALOR_ICMS.AsCurrency;
                ICMS.vBC := dm.QBuscaItensNFBASE_CALCULO.AsCurrency;
              end;
              if trim(dm.QBuscaItensNFSUB_TRIBUTARIA.AsString) = 'S' then
              begin
                ICMS.modBCST := dbisPrecoTabelado;
                ICMS.pICMSST := dm.QBuscaItensNFVR_AGREGADO.AsCurrency;
                ICMS.vICMSST := dm.QBuscaItensNFVALOR_SUBTRIB.AsCurrency;
                ICMS.vBCST := dm.QBuscaItensNFBASE_SUBTRIB.AsCurrency;
              end;

            end
            else
            begin

              /// Fim de novas linhas
              ///
              CST := StrToCSTICMS(bAux,
                copy(trim(dm.QbuscaItensNFCST.AsString), 2, 2));
              ICMS.modBC := dbiPrecoTabelado;
              ICMS.pICMS := dm.QbuscaItensNFALIQ.AsCurrency;
              ICMS.vICMS := dm.QBuscaItensNFVALOR_ICMS.AsCurrency;
              ICMS.vBC := dm.QBuscaItensNFBASE_CALCULO.AsCurrency;
              if trim(dm.QBuscaItensNFSUB_TRIBUTARIA.AsString) = 'S' then
              begin
                ICMS.modBCST := dbisPrecoTabelado;
                ICMS.pICMSST := dm.QBuscaItensNFVR_AGREGADO.AsCurrency;
                ICMS.vICMSST := dm.QBuscaItensNFVALOR_SUBTRIB.AsCurrency;
                ICMS.vBCST := dm.QBuscaItensNFBASE_SUBTRIB.AsCurrency;
              end;
            end;

          end;
          PIS.CST := pis99;
          COFINS.CST := cof99;
          with IPI do
          begin
            if dm.QbuscaItensNFALIQ_IPI.AsCurrency > 0 then
            begin
              CST := ipi50;
              IPI.pIPI := dm.QbuscaItensNFALIQ_IPI.AsCurrency;
              IPI.vIPI := dm.QBuscaItensNFVALOR_IPI.AsCurrency;
              // ipi.vBC  := dm.QBuscaItensNFBASE_CALCULO_IPI.AsCurrency;
            end
            else
            begin
              CST := ipi53;
              IPI.pIPI := 0.00;
              IPI.vIPI := 0.00;
              IPI.vBC := 0.00;
            end;
          end;
        end;
      end;
      dm.QbuscaItensNF.next;
    end;

    Total.ICMSTot.vDesc := dm.QNFDESCONTO_NF.AsCurrency;
    Total.ICMSTot.vBC := dm.QNFBASE_CALCULO_ICMS_NF.AsCurrency;
    Total.ICMSTot.vICMS := dm.QNFVALOR_ICMS_NF.AsCurrency;
    Total.ICMSTot.vBCST := dm.QNFBASE_SUBST_NF.AsCurrency;
    Total.ICMSTot.vST := dm.QNFVALOR_SUBST_NF.AsCurrency;
    Total.ICMSTot.vProd := dm.QNFVALOR_TOTAL_PROD_NF.AsCurrency;

    Total.ICMSTot.vFrete := dm.QNFVALOR_FRETE_NF.AsCurrency;
    Total.ICMSTot.vSeg := dm.QNFVALOR_SEGURO_NF.AsCurrency;
    Total.ICMSTot.vOutro := dm.QNFOUTRAS_DESPESAS_NF.AsCurrency;
    Total.ICMSTot.vIPI := dm.QNFVALOR_IPI_NF.AsCurrency;
    Total.ICMSTot.vNF := dm.QNFVALOR_TOTAL_NF.AsCurrency;

    // TRANSPORTADORA
    Transp.Transporta.xNome := sNomeTra;
    Transp.Transporta.IE := sIETra;
    Transp.Transporta.xEnder := sEndTra;
    Transp.Transporta.UF := sUFTra;
    Transp.Transporta.xMun := sCidTra;
    Transp.Transporta.CNPJCPF := sCNPJTra;
    Transp.veicTransp.placa := sPlacaTra;
    Transp.veicTransp.UF := sUFPlacaTra;

    if trim(dm.QNFFRETE_CONTA_NF.AsString) = '1' then
      Transp.modFrete := mfContaEmitente
    else if trim(dm.QNFFRETE_CONTA_NF.AsString) = '2' then
      Transp.modFrete := mfContaDestinatario
    else if trim(dm.QNFFRETE_CONTA_NF.AsString) = '3' then
      Transp.modFrete := mfContaTerceiros
    else if trim(dm.QNFFRETE_CONTA_NF.AsString) = '4' then
      Transp.modFrete := mfSemFrete;

    // VOLUME
    with Transp.Vol.Add do
    begin
      qVol := dm.QNFQUANTIDADE_NF.AsInteger;
      esp := trim(dm.QNFESPECIE_NF.AsString);
      marca := trim(dm.QNFMARCA_NF.AsString);
      nVol := trim(dm.QNFNUMERO_NF.AsString);
      pesoL := dm.QNFPESO_LIQUIDO_NF.AsCurrency;
      pesoB := dm.QNFPESO_BRUTO_NF.AsCurrency;
    end;

    //FATURA
    Cobr.Fat.nFat := dm.QNFNUMERO_NOTA_NF.AsString;
    Cobr.Fat.vOrig := dm.QNFVALOR_TOTAL_NF.AsCurrency;
    Cobr.Fat.vDesc := 0.00;
    Cobr.Fat.vLiq := dm.QNFVALOR_TOTAL_NF.AsCurrency;

    //DUPLICATAS
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
    dm.IBTransaction.StartTransaction;
    dm.QConsulta.close;
    dm.QConsulta.sql.Clear;
    dm.QConsulta.sql.Text :=
      'SELECT C.COD_CTR, C.PARCELA_CTR, C.VENCTO_CTR, C.VALOR_CTR ' +
      'FROM CONTAS_RECEBER C ' + 'INNER JOIN VENDAS V   ' +
      'ON (C.COD_VENDA = V.COD_VEN) ' + 'WHERE V.COD_NF = :CODNF ' +
      'ORDER BY C.VENCTO_CTR';

    dm.QConsulta.Parambyname('codnf').AsInteger := iCodigoNotaFiscal;
    dm.QConsulta.open;
    while not dm.QConsulta.eof do
    begin
      with Cobr.Dup.Add do
      begin
        nDup := dm.QConsulta.fieldbyname('parcela_ctr').AsString;
        dVenc := dm.QConsulta.fieldbyname('vencto_ctr').AsDateTime;
        vDup := dm.QConsulta.fieldbyname('valor_ctr').AsCurrency;
      end;
      dm.QConsulta.next;
    end;
    dm.IBTransaction.Commit;
    dm.QConsulta.close;

    // Informações complementares
    InfAdic.infCpl := dm.QNFINF_COMPL_NF.AsString;
  end;

  dm.ACBrNFe1.NotasFiscais.GerarNFe;
  dm.ACBrNFe1.NotasFiscais.Assinar;
  dm.ACBrNFe1.NotasFiscais.Valida;
  chave2 := dm.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;

  // atualiza chave e protoco
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Text := 'UPDATE NOTA_FISCAL ' + 'SET CHAVE2 = :CHAVE ' +
          'WHERE COD_NF = :CODNF';
        Parambyname('chave').AsString := trim(chave2);
        Parambyname('codnf').AsInteger := iCodigoNotaFiscal;
        ExecSQL;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro gravando a Chave2');
    end;
  finally
    dm.QConsulta.close;
  end;

  // SALVA O XML
  dm.ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
  // envia
  try

    if not DPEC then
    begin
      IDEPEC := 0;
      dm.ACBrNFe1.WebServices.Envia(dm.QNFNUMERO_NOTA_NF.AsInteger);
      if dm.ACBrNFe1.NotasFiscais.Items[0].Confirmada then
      begin
        dm.ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
        dm.ACBrNFe1.NotasFiscais.Items[0].Imprimir;
        dm.ACBrNFe1.NotasFiscais.ImprimirPDF;
      end;
    end
    else
    begin
      IDEPEC := 1;
      if dm.ACBrNFe1.WebServices.EnviarDPEC.Executar then
      begin
        // protocolo de envio ao DPEC e impressão do DANFE
        dm.ACBrNFe1.DANFE.ProtocoloNFe :=
          dm.ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC + ' ' + DateTimeToStr
          (dm.ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
        dm.ACBrNFe1.NotasFiscais.Imprimir;
        // dm.ACBrNFe1.NotasFiscais.ImprimirPDF;
        // ShowMessage(DateTimeToStr(dm.ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC));
        showmessage(
          'NFe enviada em DPEC e deve ser posteriormente envianda em modo normal!');
      end;

    end;

    // seu codigo
  except
    on e: exception do
    begin
      showmessage('Erro ao enviar NF-e' + #13 + e.message);
      if pos('rejeicao', lowercase(e.Message)) > 0 then
      begin
        if dm.IBTransaction.Active then
          dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;
        dm.Limpa.close;
        dm.Limpa.Parambyname('CODNF').AsInteger := iCodigoNotaFiscal;
        dm.Limpa.ExecSQL;
        dm.Limpa.close;
        dm.IBTransaction.Commit;
      end;

    end;
  end;

  if not DPEC then
  begin
    sProtrocolo := dm.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0]
      .nProt;
    sChave := dm.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
  end
  else
  begin
    sProtrocolo := dm.ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC;
    sChave := copy(trim(chave2), 4, length(trim(chave2)) - 3);
  end;
  // atualiza chave e protoco
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Text := 'UPDATE NOTA_FISCAL ' +
          'SET CHAVE_ACESSO_NFE = :CHAVE, PROTOCOLO_NFE = :PROTO, DEPEC = :IDEPEC '
          + 'WHERE COD_NF = :CODNF';
        Parambyname('chave').AsString := trim(sChave);
        Parambyname('proto').AsString := trim(sProtrocolo);
        Parambyname('codnf').AsInteger := iCodigoNotaFiscal;
        Parambyname('IDEPEC').AsInteger := IDEPEC;
        ExecSQL;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro gravando a Chave e o Protrocolo da NFC-e');
    end;
  finally
    dm.QConsulta.close;
  end;

  // dm.ACBrNFe1.NotasFiscais.ImprimirPDF;

  dm.ACBrNFe1.NotasFiscais.Clear;}

end;

procedure TFrmGerenciamentoNFce.FDvGlowButton3Click(Sender: TObject);
begin
  BtnEnviarClick(Sender);
end;

end.
