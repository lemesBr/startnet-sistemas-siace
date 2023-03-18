unit compra_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FDvOfficeStatusBar, ImgList, FDvMenus, FDvMenuStylers,
  FDvToolBar, FDvToolBarStylers, FDvPreviewMenu, FDvPreviewMenuStylers,
  FDvOfficeStatusBarStylers, FDvGlowButton, Grids, Wwdbigrd, Wwdbgrid, DB,
  Menus, DBCtrls, Mask, pcnConversao,ACBrUtil, ACBrDFeUtil, ACBrNFe, pcnNFeRTXT,
  RzEdit, RzDBEdit, RzDBBnEd, RzBtnEdt, frxClass, frxPreview, ACBrNFeNotasFiscais,
  frxDesgn, ExtCtrls,  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IBCustomDataSet, IBQuery,
  ToolEdit;

type
  Tfrmcompra_menu = class(TForm)
    FDvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    qrnota: TFDQuery;
    qrnotaempresa: TStringField;
    dsnota: TDataSource;
    qrempresa: TFDQuery;
    qrmodelo: TFDQuery;
    qrfornecedor: TFDQuery;
    menu_tabelas_fiscais: TAdvPopupMenu;
    ClassesdeRecolhimento1: TMenuItem;
    ModelosdeNotasFiscais1: TMenuItem;
    CFOP1: TMenuItem;
    pop: TAdvPopupMenu;
    Incluir2: TMenuItem;
    Alterar2: TMenuItem;
    Excluir2: TMenuItem;
    LocalizarFiltro2: TMenuItem;
    Relatrios2: TMenuItem;
    Sair2: TMenuItem;
    qrfornecedor2: TFDQuery;
    qrproduto: TFDQuery;
    qrnota_item: TFDQuery;
    qrgrade_entrada: TFDQuery;
    qrnota_antes: TFDQuery;
    qritem_antes: TFDQuery;
    qrnota_total: TFDQuery;
    Bevel7: TBevel;
    Panel1: TPanel;
    Label22: TLabel;
    Label5: TLabel;
    rtotal: TRzNumericEdit;
    rqde: TRzNumericEdit;
    grid: TwwDBGrid;
    Panel3: TPanel;
    Bevel1: TBevel;
    Label8: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    efornecedor: TRzButtonEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ENUMERO: TEdit;
    RzDBEdit1: TRzDBEdit;
    Bevel2: TBevel;
    Label6: TLabel;
    qrpagar: TFDQuery;
    qrnotaconta: TStringField;
    Label1: TLabel;
    N1: TMenuItem;
    ImportaNotaFiscalEletrnica1: TMenuItem;
    btotaliza_nota: TButton;
    qrnotaCODIGO_NOTA: TIntegerField;
    qrnotaNUM_NOTA: TStringField;
    qrnotaSERIE_NF: TStringField;
    qrnotaCFOP_NOTA: TStringField;
    qrnotaDATA_EMISSAO: TDateField;
    qrnotaCOD_FORNECEDOR: TIntegerField;
    qrnotaFORNECEDOR: TStringField;
    qrnotaDATA_VENCIMENTO: TDateField;
    qrnotaTOTAL_NOTA: TBCDField;
    qrnotaCNPJ: TStringField;
    qrnotaIE: TStringField;
    qrnotaUSUARIO_CADASTRO: TStringField;
    qrnotaDATA_CADASTRO: TDateField;
    qrnotaOBSERVACOES: TBlobField;
    qrnotaMES: TStringField;
    qrnotaANO: TStringField;
    qrnotaCHAVE_NFE: TStringField;
    qrnotaPROTOCOLO_NFE: TStringField;
    qrnotaBASE_CALCULO_ICMS: TBCDField;
    qrnotaVALOR_ICMS: TBCDField;
    qrnotaBASE_CALC_ICMS_SUBST: TBCDField;
    qrnotaVALOR_ICMS_SUBST: TBCDField;
    qrnotaVALOR_FRETE: TBCDField;
    qrnotaVALOR_SEGURO: TBCDField;
    qrnotaVALOR_DESCONTO: TBCDField;
    qrnotaVALOR_OUTRAS_DESPESAS: TBCDField;
    qrnotaVALOR_IPI: TBCDField;
    qrnotaVALOR_TOTAL_PRODUTOS: TBCDField;
    qrnotaVALOR_TOTAL_ITENS_NOTA: TBCDField;
    qrnotaVLR_ICMS_GARANTIDO: TBCDField;
    qrnotacod_pagto: TIntegerField;
    qrnotaTP: TStringField;
    qrnotaENDERECO_CLI_FORN: TStringField;
    qrnotaEND_NUM_CLIENTE: TStringField;
    qrnotaCOD_IBGE: TStringField;
    qrnotaCEP_CLIENTE_FORN: TStringField;
    qrnotaBAIRRO_CLIENTE_FORN: TStringField;
    qrnotaTIPO_PESSOA: TStringField;
    qrnotaTELEFONE: TStringField;
    qrnotaCIDADE_CLIENTE_FORN: TStringField;
    qrnotaUF_CLIENTE_FORN: TStringField;
    qrnotaDESC_PAGTO: TStringField;
    qrnotaVALOR_AVISTA: TBCDField;
    qrnotaVALOR_PRAZO: TBCDField;
    qrnotapagamento: TStringField;
    qrnotaMODELO: TStringField;
    qrnotaEMITENTE: TStringField;
    qrnotaVALOR_COFINS: TBCDField;
    qrnotaVALOR_PIS: TBCDField;
    qrnotaVALOR_PIS_ST: TBCDField;
    qrnotaVALOR_COFIS_ST: TBCDField;
    qrnotaPERC_ICMS: TBCDField;
    qrnotaCST: TStringField;
    qrnotaSUB_SERIE: TStringField;
    qrprodutoCODIGO: TIntegerField;
    qrprodutoCODIGO_BARRAS: TStringField;
    qrprodutoDESCRICAO: TStringField;
    qrprodutoABREVIADO: TStringField;
    qrprodutoPRECO_CUSTO: TBCDField;
    qrprodutoMARGEM_LUCRO: TBCDField;
    qrprodutoCOMISSAO: TBCDField;
    qrprodutoUNIDADE: TIntegerField;
    qrprodutoFRETE: TBCDField;
    qrprodutoICMS: TBCDField;
    qrprodutoIPI_IRPJ: TBCDField;
    qrprodutoOUTROS_IMPOSTOS: TBCDField;
    qrprodutoDESCONTOS: TBCDField;
    qrprodutoCLASS_FISCAL: TStringField;
    qrprodutoSIT_TRIBUTARIA: TStringField;
    qrprodutoCUSTO_MEDIO: TBCDField;
    qrprodutoPRECO_VENDA: TBCDField;
    qrprodutoDESCONTO_MAXIMO: TBCDField;
    qrprodutoCODIGO_GRUPO: TIntegerField;
    qrprodutoCODIGO_SUBGRUPO: TIntegerField;
    qrprodutoCODIGO_MARCA: TIntegerField;
    qrprodutoNOME_GRUPO: TStringField;
    qrprodutoNOME_SUBGRUPO: TStringField;
    qrprodutoNOME_MARCA: TStringField;
    qrprodutoNOME_FORNECEDOR: TStringField;
    qrprodutoCODIGO_FORNECEDORES: TIntegerField;
    qrprodutoFOTO: TBlobField;
    qrprodutoESTOQUE_ATUAL: TBCDField;
    qrprodutoESTOQUE_VENDIDO: TBCDField;
    qrprodutoESTOQUE: TBCDField;
    qrprodutoVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    qrprodutoVALOR_ESTOQUE: TFMTBCDField;
    qrprodutoESTOQUE_MINIMO: TIntegerField;
    qrprodutoESTOQUE_MAXIMO: TIntegerField;
    qrprodutoDATACAD: TDateField;
    qrprodutoUSERCAD: TStringField;
    qrprodutoVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    qrprodutoULTIMACOMPRA: TDateField;
    qrprodutoVALOR_EST_CUSTO: TFMTBCDField;
    qrprodutoSECCAO: TIntegerField;
    qrprodutoCATEGORIA: TIntegerField;
    qrprodutoLOCALIZACAO: TStringField;
    qrprodutoAPLICACAO: TStringField;
    qrprodutoESP_COD_AUX: TStringField;
    qrprodutoGARANTIA: TIntegerField;
    qrprodutoBALANCA: TStringField;
    qrprodutoETIQUETA: TStringField;
    qrprodutoATIVO: TStringField;
    qrprodutoREFERENCIA: TStringField;
    qrprodutoCOD_EMPRESA: TIntegerField;
    qrprodutoDESC_UNIDADE: TStringField;
    qrprodutoPESOBRUTO: TBCDField;
    qrprodutoPESOLIQUIDO: TBCDField;
    qrprodutoFONETICO: TStringField;
    qrprodutoDATAULTALTERACAO: TDateField;
    qrprodutoCUSTOREPOSICAO: TBCDField;
    qrprodutoPRECO_ANT: TBCDField;
    qrprodutoPRECO_PROMOCAO: TBCDField;
    qrprodutoFLAG_PROMOCAO: TStringField;
    qrprodutoDT_INICIO_PROMO: TDateField;
    qrprodutoDT_FIM_PROMO: TDateField;
    qrprodutoCOD_LABORATORIO: TIntegerField;
    qrprodutoLABORATORIO: TStringField;
    qrprodutoPRINCIPIO_ATIVO: TStringField;
    qrprodutoMED_CONTROLADO: TStringField;
    qrprodutoQTD_FRACIONADA: TBCDField;
    qrprodutoQTD_CAIXA: TSmallintField;
    qrprodutoMED_GENERICO: TStringField;
    qrprodutoLOTE_MED: TStringField;
    qrprodutoVALIDADE: TDateField;
    qrprodutoCHEK_BOX: TStringField;
    qrprodutoPRECO_VENDA2: TBCDField;
    qrprodutoMARGEM_LUCRO2: TBCDField;
    qrprodutoVALIDADE_PRODUTO: TStringField;
    qrprodutoPROD_SERV: TStringField;
    qrprodutoUNIDADE_ENT: TIntegerField;
    qrprodutoDESC_UNID_ENT: TStringField;
    qrprodutoQUANT_SAIDA: TBCDField;
    qrprodutoQUANT_ENTRADA: TBCDField;
    qrprodutoESTOQUE_FRACAO: TBCDField;
    qrprodutoDATA_FABRICACAO: TDateField;
    qrprodutoFRACAO: TIntegerField;
    qrprodutoNCM_SH: TStringField;
    qrprodutoCOD_MS: TStringField;
    qrprodutoCONTOLAESTOQUE: TStringField;
    qrprodutoPRODUTOCOMPOSTO: TStringField;
    qrprodutoTIPO_ATIVIDADE: TStringField;
    qrprodutoCOD_PRODUTO_ESTOQUE: TIntegerField;
    qrprodutoCODIGO_LOCAL_ESTOQUE: TIntegerField;
    qrprodutoLISTA_ABC: TStringField;
    qrprodutoGRUPO_TRIBUTACAO: TIntegerField;
    qrprodutoCOMBUSTIVEL: TStringField;
    qrprodutoCOR: TIntegerField;
    qrprodutoENABLE_NUMSERIE: TIntegerField;
    qrprodutoID_PRODUTOS: TIntegerField;
    qrprodutoCOD_ANP: TStringField;
    qrprodutoCESTA: TStringField;
    qrprodutoML_QUANT_BEB: TBCDField;
    qrprodutoUND_TRIB: TStringField;
    qrprodutoCHASSI: TStringField;
    qrprodutoCOR_DESC: TStringField;
    qrprodutoN_MOTOR: TStringField;
    qrprodutoANO_FAB: TStringField;
    qrprodutoANO_MOD_FAB: TStringField;
    qrprodutoTIPO_VEIC: TStringField;
    qrprodutoN_SERIE: TStringField;
    qrprodutoCOD_MODELO: TStringField;
    qrprodutoESPECIE_VEICULO: TStringField;
    qrprodutoCOD_COR_DENATRAN: TStringField;
    qrprodutoTIPO_COMBUSTIVEL: TStringField;
    qrprodutoVEICULO: TStringField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoPRODUTO_PROPRIEDADE: TIntegerField;
    qrprodutoMULTIP_FRACAO: TIntegerField;
    Panel2: TPanel;
    Bevel3: TBevel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    btabela: TAdvGlowMenuButton;
    bfechar: TAdvGlowButton;
    FDvGlowButton1: TAdvGlowButton;
    bfiltrar: TAdvGlowButton;
    qrnotaTRANSP_NOME: TStringField;
    qrnotaTRANSP_PLACA: TStringField;
    qrnotaTRANSP_PLACAUF: TStringField;
    qrnotaTRANSP_IE: TStringField;
    qrnotaTRANSP_CNPJ: TStringField;
    qrnotaTRANSP_ENDERECO: TStringField;
    qrnotaTRANSP_CIDADE: TStringField;
    qrnotaTRANSP_UF: TStringField;
    qrnotaTRANSP_QTDE: TBCDField;
    qrnotaTRANSP_ESPECIE: TStringField;
    qrnotaTRANSP_MARCA: TStringField;
    qrnotaTRANSP_NUMERO: TStringField;
    qrnotaTRANSP_PESOBRUTO: TBCDField;
    qrnotaTRANSP_PESOLIQUIDO: TBCDField;
    qrnotaOBS1: TStringField;
    qrnotaOBS2: TStringField;
    qrnotaOBS3: TStringField;
    qrnotaOBS4: TStringField;
    qrnotaOBS5: TStringField;
    qrnotaOBS6: TStringField;
    qrnotaOBS7: TStringField;
    qrnotaOBS8: TStringField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaITENS: TIntegerField;
    qrnotaTIPO: TStringField;
    qrnotaNOTA_FISCAL: TStringField;
    qrnotaICMS_ISENTO: TBCDField;
    qrnotaICMS_OUTRAS: TBCDField;
    qrnotaDESCONTO_INCIDENTE: TIntegerField;
    qrnotaITEM_FRETE_VALOR: TBCDField;
    qrnotaITEM_FRETE_BASE: TBCDField;
    qrnotaITEM_FRETE_ALIQUOTA: TBCDField;
    qrnotaITEM_FRETE_ICMS: TBCDField;
    qrnotaITEM_SEGURO_VALOR: TBCDField;
    qrnotaITEM_SEGURO_BASE: TBCDField;
    qrnotaITEM_SEGURO_ALIQUOTA: TBCDField;
    qrnotaITEM_SEGURO_ICMS: TBCDField;
    qrnotaITEM_PIS_VALOR: TBCDField;
    qrnotaITEM_PIS_BASE: TBCDField;
    qrnotaITEM_PIS_ALIQUOTA: TBCDField;
    qrnotaITEM_PIS_ICMS: TBCDField;
    qrnotaITEM_COMPLEMENTO_VALOR: TBCDField;
    qrnotaITEM_COMPLEMENTO_BASE: TBCDField;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA: TBCDField;
    qrnotaITEM_COMPLEMENTO_ICMS: TBCDField;
    qrnotaITEM_SERVICO_VALOR: TBCDField;
    qrnotaITEM_SERVICO_BASE: TBCDField;
    qrnotaITEM_SERVICO_ALIQUOTA: TBCDField;
    qrnotaITEM_SERVICO_ICMS: TBCDField;
    qrnotaITEM_OUTRAS_VALOR: TBCDField;
    qrnotaITEM_OUTRAS_BASE: TBCDField;
    qrnotaITEM_OUTRAS_ALIQUOTA: TBCDField;
    qrnotaITEM_OUTRAS_ICMS: TBCDField;
    qrnotaITEM_ESPECIAL_TOTAL: TBCDField;
    qrnotaITEM_ESPECIAL_VALOR: TBCDField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaCONF_ITEM_ESPECIAL: TBCDField;
    qrnotaCREDITO_ICMS: TBCDField;
    qrnotaOPERACAO: TStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaAPROVEITA_CREDITO_ICMS: TStringField;
    qrnotaCOD_EMPRESA: TIntegerField;
    qrnota_itemCODIGO_ITEM: TIntegerField;
    qrnota_itemCODIGO_PRODUTO: TIntegerField;
    qrnota_itemCODIGO_BARRAS: TStringField;
    qrnota_itemCODIGO_NOTA: TIntegerField;
    qrnota_itemDESCRICAO: TStringField;
    qrnota_itemNCM_SH: TStringField;
    qrnota_itemCST: TStringField;
    qrnota_itemCFOP: TStringField;
    qrnota_itemDESC_UNIDADE: TStringField;
    qrnota_itemQUANTIDADE: TBCDField;
    qrnota_itemVALOR_UNI: TBCDField;
    qrnota_itemVALOR_DESC: TBCDField;
    qrnota_itemTOTAL_ITEM: TBCDField;
    qrnota_itemDATA: TDateField;
    qrnota_itemBASE_ICMS: TBCDField;
    qrnota_itemVALOR_ICMS: TBCDField;
    qrnota_itemVALOR_IPI: TBCDField;
    qrnota_itemPERC_ICMS: TBCDField;
    qrnota_itemPERC_IPI: TBCDField;
    qrnota_itemPRECO_VENDA: TBCDField;
    qrnota_itemPRECO_VENDA2: TBCDField;
    qrnota_itemDATA_VALIDADE: TDateField;
    qrnota_itemDATA_FABRICACAO: TDateField;
    qrnota_itemFRACAO: TIntegerField;
    qrnota_itemQUANT_FRACIONADA: TBCDField;
    qrnota_itemLOTE_MED: TStringField;
    qrnota_itemMARG_LUCRO: TBCDField;
    qrnota_itemATIVO: TStringField;
    qrnota_itemBASE_ICMS_ST: TBCDField;
    qrnota_itemALIC_ICMS_ST: TBCDField;
    qrnota_itemVALOR_ICMS_ST: TBCDField;
    qrnota_itemCOD_EMPRESA: TIntegerField;
    qrnota_itemIMOBILZ: TStringField;
    qrnota_itemBASE_PIS: TBCDField;
    qrnota_itemPERC_PIS: TBCDField;
    qrnota_itemVALOR_PIS: TBCDField;
    qrnota_itemBASE_COFINS: TBCDField;
    qrnota_itemPERC_COFINS: TBCDField;
    qrnota_itemVALOR_COFINS: TBCDField;
    qrnota_itemBASE_IPI: TBCDField;
    qrnota_itemUN_FRACAO: TStringField;
    qrempresaCODIGO: TIntegerField;
    qrempresaRAZAO_SOCIAL: TStringField;
    qrempresaNOME_FANTASIA: TStringField;
    qrempresaENDERECO: TStringField;
    qrempresaCIDADE: TStringField;
    qrempresaUF: TStringField;
    qrempresaCEP: TStringField;
    qrempresaTELEFONE: TStringField;
    qrempresaFAX: TStringField;
    qrempresaEMAIL: TStringField;
    qrempresaHOMEPAGE: TStringField;
    qrempresaCNPJ: TStringField;
    qrempresaIE: TStringField;
    qrempresaNUMERO: TIntegerField;
    qrempresaBAIRRO: TStringField;
    qrempresaIM: TStringField;
    qrempresaLOGOMARCA: TBlobField;
    qrempresaCNAE: TStringField;
    qrempresaCOD_CID_IBGE: TStringField;
    qrempresaURS_INDEA: TStringField;
    qrempresaULE_INDEA: TStringField;
    qrempresaMATRICULA_INDEA: TStringField;
    qrempresaPROPRIETARIO: TStringField;
    qrempresaRESPONSAVEL_TECINICO: TStringField;
    qrempresaCRMV_N: TStringField;
    qrempresaFLAG_VETERINARIA: TStringField;
    qrempresaREGIME: TStringField;
    qrempresaALIC_SIMPLES: TBCDField;
    qrempresaALIC_PIS: TBCDField;
    qrempresaALIC_COFINS: TBCDField;
    qrempresaALIC_IRPJ: TBCDField;
    qrempresaALIC_CSLL: TBCDField;
    qrempresaSUFRAMA: TStringField;
    qrempresaNOME_CONTADOR: TStringField;
    qrempresaCNPJ_CONTADOR: TStringField;
    qrempresaCRC_CONTADOR: TStringField;
    qrempresaENDERECO_CONTADOR: TStringField;
    qrempresaCEP_CONTADOR: TStringField;
    qrempresaNUM_CONTADOR: TIntegerField;
    qrempresaBAIRRO_CONTADOR: TStringField;
    qrempresaCOMPL_CONTADOR: TStringField;
    qrempresaFONE_CONTADOR: TStringField;
    qrempresaFAX_CONTADOR: TStringField;
    qrempresaEMAIL_CONTADOR: TStringField;
    qrempresaCOD_IBGE_CONTADOR: TStringField;
    qrempresaCPF_CONTADOR: TStringField;
    qrempresaCIDADE_CONTADOR: TStringField;
    qrempresaUF_CONTADOR: TStringField;
    qrempresaCPF_RESPONSAVEL: TStringField;
    qrempresaCOMPLEMENTO: TStringField;
    qrempresaTIPO_SEGMENTO: TStringField;
    qrempresaCPF_PROPRIETARIO: TStringField;
    qrempresaDISTRIBUIDORA_COMBUSTIVEL: TStringField;
    qrempresaNUM_JUNT_COM: TStringField;
    qrempresaDATA_INICIO_LMC: TDateField;
    qrempresaDATA_FIM_LMC: TDateField;
    qrempresaNUM_ORD_LMC: TIntegerField;
    qrmodeloCODIGO: TStringField;
    qrmodeloDESCRICAO: TStringField;
    qrnotaICMSRETIDO: TBCDField;
    qrnotaPERC_ICMSRETIDO: TBCDField;
    qrnotaESPECIE: TStringField;
    qrnotaCODREMETENTE: TIntegerField;
    qrfornecedor2CODIGO: TIntegerField;
    qrfornecedor2NOME: TStringField;
    qrfornecedor2FANTASIA: TStringField;
    qrfornecedor2ENDERECO: TStringField;
    qrfornecedor2CIDADE: TStringField;
    qrfornecedor2ESTADO: TStringField;
    qrfornecedor2CEP: TStringField;
    qrfornecedor2TELEFONE: TStringField;
    qrfornecedor2FAX: TStringField;
    qrfornecedor2EMAIL: TStringField;
    qrfornecedor2HOMEPAGE: TStringField;
    qrfornecedor2TIPO: TStringField;
    qrfornecedor2CNPJ: TStringField;
    qrfornecedor2IE: TStringField;
    qrfornecedor2BAIRRO: TStringField;
    qrfornecedor2REPRESCELULAR: TStringField;
    qrfornecedor2USERCAD: TStringField;
    qrfornecedor2DATACADASTRO: TDateField;
    qrfornecedor2OBSERVACOES: TBlobField;
    qrfornecedor2REPRESNOME: TStringField;
    qrfornecedor2REPRESFONEFAX: TStringField;
    qrfornecedor2REPRESEMAIL: TStringField;
    qrfornecedor2REPRESOBSERVACOES: TBlobField;
    qrfornecedor2PRODUTOR_RURAL: TStringField;
    qrfornecedor2INSC_PRODUTOR: TStringField;
    qrfornecedor2COD_LINHA: TIntegerField;
    qrfornecedor2LINHA: TStringField;
    qrfornecedor2COD_EMPRESA: TIntegerField;
    qrfornecedor2VALOR_LEITE: TBCDField;
    qrfornecedor2codigo_ibge: TStringField;
    qrfornecedor2NUMERO: TIntegerField;
    qrfornecedor2COMPLEMENTO: TStringField;
    qrfornecedor2TP: TStringField;
    qrnotaREMETENTE: TStringField;
    qrnotaVALOR_MERCADORIAS: TBCDField;
    qrnota_itemITEM: TIntegerField;
    qrnota_itemCODFORNECEDOR: TIntegerField;
    qrnota_itemNUM_NOTA: TStringField;
    qrnota_itemICMS_RETIDO: TStringField;
    qrnota_itemSUBTOTAL: TBCDField;
    qrnota_itemDESCONTO_P: TBCDField;
    qrnota_itemICMS_REDUCAO: TBCDField;
    qrnota_itemICMS_VALORRETIDO: TBCDField;
    qrnota_itemICMS_ISENTO: TBCDField;
    qrnota_itemICMS_NAOTRIBUTADO: TBCDField;
    qrnota_itemIPI_TIPO: TStringField;
    qrnota_itemTIPO: TIntegerField;
    qrnota_itemFRETE: TBCDField;
    qrnota_itemOUTRAS: TBCDField;
    qrnota_itemSEGURO: TBCDField;
    qrnota_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnota_itemSUB_PRODUTOS: TBCDField;
    qrnota_itemITEM_ESPECIAL_VALOR: TBCDField;
    qrnota_itemICMS_OUTRAS: TBCDField;
    qrnota_itemALTERA_ITEM: TIntegerField;
    qrnota_itemCREDITO_ICMS: TBCDField;
    qrnota_itemCREDITO_ICMS_BASE: TBCDField;
    qrnota_itemPMARGEM: TFloatField;
    qrnota_itemPRECO_CUSTO: TBCDField;
    qrfornecedorCODIGO: TIntegerField;
    qrfornecedorNOME: TStringField;
    qrfornecedorFANTASIA: TStringField;
    qrfornecedorENDERECO: TStringField;
    qrfornecedorCIDADE: TStringField;
    qrfornecedorESTADO: TStringField;
    qrfornecedorCEP: TStringField;
    qrfornecedorTELEFONE: TStringField;
    qrfornecedorFAX: TStringField;
    qrfornecedorEMAIL: TStringField;
    qrfornecedorHOMEPAGE: TStringField;
    qrfornecedorTIPO: TStringField;
    qrfornecedorCNPJ: TStringField;
    qrfornecedorIE: TStringField;
    qrfornecedorBAIRRO: TStringField;
    qrfornecedorREPRESCELULAR: TStringField;
    qrfornecedorUSERCAD: TStringField;
    qrfornecedorDATACADASTRO: TDateField;
    qrfornecedorOBSERVACOES: TBlobField;
    qrfornecedorREPRESNOME: TStringField;
    qrfornecedorREPRESFONEFAX: TStringField;
    qrfornecedorREPRESEMAIL: TStringField;
    qrfornecedorREPRESOBSERVACOES: TBlobField;
    qrfornecedorPRODUTOR_RURAL: TStringField;
    qrfornecedorINSC_PRODUTOR: TStringField;
    qrfornecedorCOD_LINHA: TIntegerField;
    qrfornecedorLINHA: TStringField;
    qrfornecedorCOD_EMPRESA: TIntegerField;
    qrfornecedorVALOR_LEITE: TBCDField;
    qrfornecedorcodigo_ibge: TStringField;
    qrfornecedorNUMERO: TIntegerField;
    qrfornecedorCOMPLEMENTO: TStringField;
    qrfornecedorTP: TStringField;
    qrnotadesc_cfop: TStringField;
    qrnotadesc_modelo: TStringField;
    qrnota_itemCODLANCAMENTO: TStringField;
    qrnotaCONF_BASEICMS: TBCDField;
    qrnotaCONF_VALORICMS: TBCDField;
    qrnotaCONF_BASESUB: TBCDField;
    qrnotaCONF_VALORSUB: TBCDField;
    qrnotaCONF_FRETE: TBCDField;
    qrnotaCONF_SEGURO: TBCDField;
    qrnotaCONF_OUTRAS: TBCDField;
    qrnotaCONF_IPI: TBCDField;
    qrnotaCONF_DESCONTO: TBCDField;
    qrnotaCONF_TOTALPRODUTOS: TBCDField;
    qrnotaCONF_TOTALNOTA: TBCDField;
    qrnotaCONF_ICMSRETIDO: TBCDField;
    qrnotaCONF_ICMSREDITO_PERC: TBCDField;
    qrnotaCONFI_PIS: TBCDField;
    qrnotaCONF_COFINS: TBCDField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateField;
    qrprodutoCODORIGINAL: TStringField;
    qrprodutoDATA_ULTIMA_COMPRA: TDateField;
    Query1: TFDQuery;
    F1: TMenuItem;
    Edit1: TEdit;
    D1: TMenuItem;
    Qry_Mov_Comb: TIBQuery;
    Qtanque: TIBQuery;
    QtanqueCOD_TANQUE: TIntegerField;
    QtanqueID_TANQUE: TIntegerField;
    QtanqueLITROS: TIBBCDField;
    QtanqueULTATUAL: TDateTimeField;
    QtanqueULTATUALCODSETOR: TIntegerField;
    QtanqueULTATUALCODSETORUSER: TIntegerField;
    QtanqueDATAHORA: TDateTimeField;
    QtanqueENABLED: TIntegerField;
    QtanqueOBS: TIBStringField;
    QtanqueCOD_PRODUTOS: TIntegerField;
    QtanqueLITROS_ATUAL: TIBBCDField;
    QtanqueVLR_SAI: TIBBCDField;
    QtanqueVLR_ENT: TIBBCDField;
    QtanqueEST_INI: TIBBCDField;
    QtanqueEST_ATU: TIBBCDField;
    QtanqueDAT_ULT_ENT: TDateField;
    QtanqueNUM_NF: TIntegerField;
    QtanqueDAT_ULT_SAI: TDateField;
    QtanqueDESCRICAO: TIBStringField;
    QtanqueESTOQUE: TIBBCDField;
    dts_tanques: TDataSource;
    procedure bincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bfecharClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure b(Sender: TObject);
    procedure gridRowChanged(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure abelasFunes2Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure ClassesdeRecolhimento1Click(Sender: TObject);
    procedure ModelosdeNotasFiscais1Click(Sender: TObject);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorButtonClick(Sender: TObject);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BfiltrarClick(Sender: TObject);
    procedure ENUMEROExit(Sender: TObject);
    procedure btotaliza_notaClick(Sender: TObject);
    procedure efornecedorEnter(Sender: TObject);
    procedure gridTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure ImportaNotaFiscalEletrnica1Click(Sender: TObject);
    procedure ENUMEROEnter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
  private
    { Private declarations }
  public
  vopcao_nfe,vopcao_item: integer;
    { Public declarations }
  end;

var
  frmcompra_menu: Tfrmcompra_menu;
     vrecno, cod: integer;
     preco_ant, preco_custo_ant, custo_medio_ant, ESTOQUE :Real;
implementation

uses principal, compra, Ubibli1, xloc_fornecedor,
  compra_item, lista_notaentrada, lista_notacompra, importa_nfe,
  ModulodeDados, CFOP, cst, fornecedor_codigo, Vendas;

{$R *.dfm}

procedure Tfrmcompra_menu.bincluirClick(Sender: TObject);
begin
  vrecno := qrnota.RecNo;

  vopcao_nfe := 1;

 If FormPrincipal.Label3.Caption ='N'then
 begin
  Application.MESSAGEBOX('O usu�rio conectado n�o possui autoriza��o para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!!', 'Aten��o', MB_ICONQUESTION + MB_OK + MB_DEFBUTTON1) ;
  //'O usu�rio conectado n�o possui autoriza��o para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
// MsgInformacao.Execute;
 End;
 if FormPrincipal.Label3.Caption ='S'then
 begin
  DM.SDS_CFOP.Active := False;
  DM.SDS_CFOP.DataSet.CommandText:='select * from CFOP where codigo_cfop <=3999';
  DM.SDS_CFOP.Active := true;

 // DM.SPC_NotasFiscais.ExecProc;
 // Cod:= (DM.SPC_NotasFiscais.ParamByName('ATUAL').AsInteger);

  dm.ProxCod.Close;
  dm.ProxCod.SQL.Clear;
  dm.ProxCod.SQL.Add('select max(CODIGO_NOTA) as N_CODIGO FROM NOTASFISCAIS');
  DM.ProxCod.Open;

  qrnota.Insert;

  qrnota.FieldByName('codigo_nota').asInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
  qrnota.fieldbyname('tipo').asstring := 'COMPRA P/ REVENDA';
  qrnota.FIELDBYNAME('DESCONTO_INCIDENTE').ASFLOAT := 0;
  qrnotaINTEGRACAO.AsInteger := 0;
  dsnota.dataset.fieldbyname('obs7').asstring := qrnota.FieldByName('codigo_nota').asstring;
  qrnota.fieldbyname('situacao').asinteger := 2;
  qrnota.FieldByName('BASEICMS_PRODUTOS').AsInteger := 1;
  qrnota.fieldbyname('data_cadastro').asdatetime := date;
  qrnota.fieldbyname('USUARIO_CADASTRO').aSSTRING := FormPrincipal.UserLogado;
  qrnota.fieldbyname('EMITENTE').aSSTRING := '1';



  frmcompra := tfrmcompra.create(self);
  frmcompra.rtipo.ItemIndex := 0;
  frmcompra.showmodal;
  qrnota.refresh;

  qrnota.RecNo := vrecno;

  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  EMPRESA');
  qrempresa.Open;

  qrfornecedor.close;
  qrfornecedor.sql.clear;
  qrfornecedor.sql.add('select * from  FORNECEDORES');
  qrfornecedor.Open;

  btotaliza_notaClick(frmcompra_menu);

  qrnota.RecNo := vrecno;
end;
end;

procedure Tfrmcompra_menu.FormShow(Sender: TObject);
begin
 if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  DM.QConsulta.SQL.Clear;
  DM.QConsulta.SQL.Add('update notasfiscais set notasfiscais.emitente = 1');
  DM.QConsulta.ExecSQL;
  dm.IBTransaction.Commit;
  dm.QConsulta.Close;


  qrmodelo.CLOSE;
  QRMODELO.SQL.CLEAR;
  QRMODELO.SQL.ADD('SELECT * FROM COD_DOCUMENTOS_FISCAIS ORDER BY CODIGO');
  QRMODELO.OPEN;
  QRMODELO.IndexFieldNames := 'CODIGO';

 { dm.QRFILIAL.close;
  dm.QRFILIAL.sql.clear;
  dm.QRFILIAL.sql.add('select * from empresa');
  dm.QRFILIAL.Open;   }

  dm.sds_fornecedores.close;
  dm.sds_fornecedores.sql.clear;
  dm.sds_fornecedores.sql.add('select * from fornecedores');
  dm.sds_fornecedores.Open;

 dateedit1.text := '01/'+copy(datetostr(date),4,7);
 dateedit2.date := Formprincipal.UltimoDiaMes(date);

  qrnota.close;
  qrnota.sql.clear;
  qrnota.SQL.add('select * from notasfiscais where data_cadastro BETWEEN :datai and :dataf order by data_cadastro');
  qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
  qrnota.open;


  rqde.Value   := qrnota.RecordCount;

  btotaliza_notaClick(frmcompra_menu);

  gridRowChanged(frmcompra_menu);
end;

procedure Tfrmcompra_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmcompra_menu := nil;
  ACTION := CAFREE;
end;

procedure Tfrmcompra_menu.bfecharClick(Sender: TObject);
begin
   close;
end;

procedure Tfrmcompra_menu.balterarClick(Sender: TObject);
begin
  vrecno := qrnota.RecNo;
  vopcao_nfe := 2;
  qrnota.edit;

  frmcompra := tfrmcompra.create(self);
  frmcompra.showmodal;

  qrnota.refresh;
  qrnota.RecNo := vrecno;
  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  EMPRESA');
  qrempresa.Open;

  qrfornecedor.close;
  qrfornecedor.sql.clear;
  qrfornecedor.sql.add('select * from  FORNECEDORES');
  qrfornecedor.Open;

  btotaliza_notaClick(frmcompra_menu);

  qrnota.RecNo := vrecno;

end;

procedure Tfrmcompra_menu.bexcluirClick(Sender: TObject);
begin

  if application.messagebox('Confirma a exclus�o desta nota fiscal?','Excluir',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
  begin
  {  if frmprincipal.autentica('Exluir NF',4) then
    begin  }
    IF qrnota.RecordCount > 0  then
    BEGIN
      qrnota_item.close;
      qrnota_item.sql.clear;
      qrnota_item.sql.add('select * from notasfiscais_itens where codigo_nota = '''+edit1.text+'''');
      qrnota_item.open;
      qrnota_item.first;

      while qrnota_item.RecordCount <> 0 do
      begin
          IF qrnota_item.FIELDBYNAME('CODIGO_ITEM').ASSTRING > '' THEN
          BEGIN
         {   dm.QRPRODUTO_MOV.CLOSE;
            dm.QRPRODUTO_MOV.SQL.CLEAR;
            dm.QRPRODUTO_MOV.SQL.ADD('DELETE FROM C000032 WHERE CODIGO = '''+qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
            dm.QRPRODUTO_MOV.ExecSQL;}

            qrgrade_entrada.Close;
            qrgrade_entrada.SQL.clear;
            qrgrade_entrada.SQL.add('select * from CONTROLE_LOTES where coditem = '''+qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
            qrgrade_entrada.Open;

            QRPAGAR.CLOSE;
            QRPAGAR.SQL.CLEAR;
            QRPAGAR.SQL.ADD('DELETE FROM CONTAS_APAGAR WHERE CODNOTA = '''+FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CODIGO_NOTA').ASSTRING+''' and situacao = 1');
            QRPAGAR.ExecSQL;

            dm.qrgrade_produto.close;
            dm.qrgrade_produto.sql.clear;
            dm.qrgrade_produto.SQL.Add('select * from PRODUTOS_GRADE where COD_PRODUTO = '''+qrnota_item.FIELDBYNAME('CODIGO_PRODUTO').ASSTRING+'''');
            dm.qrgrade_produto.open;

            while qrgrade_entrada.RecordCount <> 0 do
            BEGIN
              if dm.qrgrade_produto.Locate('codigo',qrgrade_entrada.fieldbyname('codgrade').asstring,[loCaseInsensitive]) then
              begin
                dm.qrgrade_produto.edit;
                dm.qrgrade_produto.FieldByName('estoque').asfloat := dm.qrgrade_produto.FieldByName('estoque').asfloat -
                                                                            qrgrade_entrada.FieldByName('qtde').asfloat;
                dm.qrgrade_produto.post;
              end;
              qrgrade_entrada.delete;
            END;

                       // BUSCA ESTOQUE
             if dm.IBTransaction.Active then
               dm.IBTransaction.Commit;
            dm.IBTransaction.StartTransaction;
              TRY
              try
                with dm.Consulta do
                   begin
                      close;
                      sql.Clear;
                      sql.add('SELECT ESTOQUE, PRECO_VENDA, PRECO_CUSTO, CUSTO_MEDIO FROM PRODUTOS WHERE CODIGO = :CODPRO');
                      Parambyname('CODPRO').AsInteger:= StrToInt(qrnota_itemCODIGO_PRODUTO.Text);
                      ExecQuery;
                      estoque:= fieldbyname('ESTOQUE').AsCurrency;
                       preco_ant := fieldbyname('PRECO_VENDA').AsCurrency;
                       preco_custo_ant := fieldbyname('PRECO_CUSTO').AsCurrency ;
                        custo_medio_ant := fieldbyname('CUSTO_MEDIO').AsCurrency  ;
                   end;
                dm.IBTransaction.Commit;
              except
                dm.IBTransaction.StartTransaction;
                showmessage('Erro ao buscar o custo do produto');
              end;

               dm.ProxCod.Close;
               dm.ProxCod.SQL.Clear;
               dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
               DM.ProxCod.Open;
            TRY
             with DM.logEst do
               begin
                  close;
                  parambyname('ID_EMPRESA').AsInteger         := strtoint(dm.sds_empresacodigo.Text);
                  parambyname('ID_FILIAL').AsInteger          := strtoint(dm.sds_empresacodigo.Text);
                  parambyname('ID_AJUSTE').AsInteger          := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                  Parambyname('ID_PRODUTO').AsInteger         := StrToInt(qrnota_itemCODIGO_PRODUTO.Text);
                  Parambyname('ID_LOTE').Value                := null;
                  Parambyname('ID_PRODUTO_SERIE').Value       := null;
                  Parambyname('DATA').AsDateTime              := date;
                  Parambyname('ID_USUARIO').Asinteger         := dm.sds_usuariosCodigo.AsInteger;
                  parambyname('ID_MOVIMENTO').AsInteger       := qrnotaCODIGO_NOTA.AsInteger;
                  Parambyname('FRACAO').Asfloat               := qrnota_itemFRACAO.AsINTEGER;
                  Parambyname('ESTOQUE_ANTERIOR').Asfloat     := estoque;
                  Parambyname('QUANTIDADE').Asfloat           := qrnota_itemQUANTIDADE.AsFloat;
                  Parambyname('ESTOQUE_POSTERIOR').Asfloat    := ESTOQUE - qrnota_itemQUANTIDADE.AsFloat;
                  Parambyname('SITUACAO_ESTOQUE').ASINTEGER   := 1; //ENTRADA DE PRODUTOS
                  Parambyname('OPERACAO').TEXT                :=  '-';
                  Parambyname('ACAO_BD').TEXT                 := 'E';
                  Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
                  parambyname('COD_VENDA').value              :=  null;
                  parambyname('COD_COMPRA').AsInteger         :=  qrnotaCODIGO_NOTA.AsInteger;
                  Parambyname('HISTORICO').TEXT               := 'Exclus�o da NFE Entrada N� ' + qrnotaNUM_NOTA.TEXT + '- '+ qrnotaFORNECEDOR.TEXT;
                  Parambyname('HORA').AsString                := TimeToStr(Time);
                  ExecSQL;
                end;
                DM.IBTransaction.Commit;
                  except
                    DM.IBTransaction.Rollback;
                    showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                                'Verifique que j� foi lan�FDo');
                  end;
                finally
                  dm.logEst.Close;
                 end;

              DM.qrproduto.Close;
              DM.qrproduto.sql.Clear;
              DM.qrproduto.sql.add('select * from produtos where CODIGO = ''' + qrnota_itemCODIGO_PRODUTO.AsString + '''');
              DM.qrproduto.open;

               IF (QRNOTATIPO.ASSTRING = 'COMPRA P/ REVENDA') OR (QRNOTATIPO.ASSTRING ='COMPRA P/ CONSUMO') OR (QRNOTATIPO.ASSTRING = 'COMPRA P/ INDUSTRIALIZA��O') or (QRNOTATIPO.ASSTRING = 'GARANTIA')then
               BEGIN
                IF DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'S' then
                begin
                dm.qrproduto.edit;
                dm.qrprodutoESTOQUE.AsFloat               := dm.qrprodutoESTOQUE.AsFloat - qrnota_itemQUANTIDADE.ASFLOAT;
                dm.qrprodutoESTOQUE_FRACAO.AsFloat        := dm.qrprodutoESTOQUE_FRACAO.AsFloat - (qrnota_itemQUANTIDADE.ASFLOAT * qrnota_itemFRACAO.ASFLOAT);
                dm.qrproduto.Post;
                end ELSE
                begin
                dm.qrproduto.edit;
                dm.qrprodutoESTOQUE.AsFloat               := dm.qrprodutoESTOQUE.AsFloat - (qrnota_itemQUANTIDADE.ASFLOAT * qrnota_itemFRACAO.ASFLOAT);
                dm.qrproduto.Post;
                end;
               end;
          END;
          qrnota_item.delete;
      end;

      formprincipal.log(codigo_usuario,'NOTAFISCAL',frmcompra_menu.qrnotaNUM_NOTA.Text,'EXCLUIU','EXCLUS�O DO NOTA FISCAL N� '+qrnotaNUM_NOTA.Text +' FORNECEDOR: '+ qrnotaFORNECEDOR.Text);

      query1.close;
      query1.sql.clear;
      query1.sql.add('delete from notasfiscais where codigo_nota = '''+edit1.Text+'''');
      query1.ExecSQL;
      dm.Coneccao.commit;
    end;
    end else
    ShowMessage('SELECIONE ALGUMA NOTA PARA EXCLUIR');

  bfiltrarClick(frmcompra_menu);
end;

procedure Tfrmcompra_menu.brelatorioClick(Sender: TObject);
begin
  FRMLISTA_NOTACOMPRA := TFRMLISTA_NOTACOMPRA.CREATE(SELF);
  FRMLISTA_NOTACOMPRA.SHOWMODAL;
end;

procedure Tfrmcompra_menu.b(Sender: TObject);
begin
//
end;

procedure Tfrmcompra_menu.gridRowChanged(Sender: TObject);
begin
  IF QRNOTA.FIELDBYNAME('SITUACAO').ASINTEGER = 2 THEN
    BALTERAR.Enabled := TRUE ELSE BALTERAR.Enabled := FALSE;
    Edit1.text :=   qrnotaCODIGO_NOTA.Text;
end;

procedure Tfrmcompra_menu.Alterar2Click(Sender: TObject);
begin
  if balterar.Enabled then balterarClick(frmcompra_menu);
end;

procedure Tfrmcompra_menu.abelasFunes2Click(Sender: TObject);
begin
 btabela.Click;
end;

procedure Tfrmcompra_menu.CFOP1Click(Sender: TObject);
begin
{  FRMCFOP := TFRMCFOP.CREATE(SELF);
  FRMCFOP.SHOWMODAL;  }

   Formcfop:=TFormCfop.Create(self);

end;

procedure Tfrmcompra_menu.ClassesdeRecolhimento1Click(Sender: TObject);
begin
    Formcst:=TFormCst.Create(self);
     FormCst.ShowModal;
end;

procedure Tfrmcompra_menu.ModelosdeNotasFiscais1Click(Sender: TObject);
begin
 { FRMmodelo_fiscal := TFRMmodelo_fiscal.CREATE(SELF);
  FRMmodelo_fiscal.SHOWMODAL; }
end;

procedure Tfrmcompra_menu.efornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if efornecedor.text <> '' then
    begin
    qrfornecedor2.close;
    qrfornecedor2.sql.Clear;
    //qrfornecedor2.sql.add('select * from c000009 where upper(nome) like '''+ansiuppercase(efornecedor.Text)+'%'' or codigo = '''+frmprincipal.zerarcodigo(efornecedor.Text,6)+'''');
    qrfornecedor2.sql.add('select * from FORNECEDORES where codigo = '''+formprincipal.zerarcodigo(copy(efornecedor.Text,1,6),6)+'''');
    qrfornecedor2.Open;
    if qrfornecedor2.RecordCount > 0 then
    begin
      if qrfornecedor2.RecordCount = 1 then
      begin
        efornecedor.text := qrfornecedor2.fieldbyname('codigo').asstring +' '+ qrfornecedor2.fieldbyname('nome').asstring;
        enumero.SetFocus;
      end
      else
      begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  'select * from fornecedores where upper(nome) like '''+ansiuppercase(efornecedor.text)+'%'' order by nome';
        frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
        frmxloc_fornecedor.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          efornecedor.text := resultado_pesquisa1+' '+resultado_pesquisa2;
            enumero.SetFocus;

        end;
      end;
    end
    else
    begin
      application.messagebox('Fornecedor n�o encontrado!','Aten��o',mb_ok+mb_iconerror);
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  '';
        frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
        frmxloc_fornecedor.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          efornecedor.text := resultado_pesquisa1+' '+resultado_pesquisa2;
            enumero.SetFocus;
      
        end;

    end;
    end;


    PERFORM(WM_NEXTDLGCTL,0,0);
  end;


end;

procedure Tfrmcompra_menu.efornecedorButtonClick(Sender: TObject);
begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  efornecedor.text;

    //  FormConsFornecedores:=TFormConsFornecedores.Create(self);
      {FormConsFornecedores.ShowModal;
      resultado_pesquisa2   := DM.SDS_FornecedoresNOME.Text;
      resultado_pesquisa1 :=  DM.SDS_Fornecedorescodigo.Text;

     // suiDBEdit5.text    := dm.sds_fornecedorescnpj.text;
     // suiDBEdit6.Text    := DM.SDS_FornecedoresESTADO.Text;  }

        frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
        frmxloc_fornecedor.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          efornecedor.text := resultado_pesquisa1+' '+resultado_pesquisa2;
          enumero.setfocus;

        end;
end;

procedure Tfrmcompra_menu.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)
end;

procedure Tfrmcompra_menu.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN bfiltrar.setfocus;
end;

procedure Tfrmcompra_menu.BfiltrarClick(Sender: TObject);
var fornecedor, nota : string;
begin
  if efornecedor.Text = '' then fornecedor := ''
   else fornecedor := ' and cod_fornecedor = '''+ resultado_pesquisa1 +'''';

  if (enumero.text = '') then nota := ''
  else nota := ' and num_nota = '''+enumero.text+'''';

  qrnota.close;
  qrnota.sql.clear;
  if (enumero.text = '') then
  begin
    qrnota.SQL.add('select * from notasfiscais where data_cadastro BETWEEN :datai and :dataf '+fornecedor+nota+' order by data_cadastro');
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
  end
  else
    qrnota.SQL.add('select * from notasfiscais where codigo_nota is not null '+nota+' order by data_cadastro');
  qrnota.open;

  rqde.Value   := qrnota.RecordCount;

  btotaliza_notaClick(frmcompra_menu);

  gridRowChanged(frmcompra_menu);
  enumero.text := '';
end;

procedure Tfrmcompra_menu.ENUMEROExit(Sender: TObject);
begin
 // enumero.text := formprincipal.zerarcodigo(enumero.text,6);
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcompra_menu.btotaliza_notaClick(Sender: TObject);
begin
  rqde.value := 0;
  rtotal.value := 0;
  dsnota.DataSet := nil;
  qrnota.first;
  while not qrnota.Eof do
  begin
     rqde.Value := rqde.Value + 1;
     rtotal.value := rtotal.value + qrnota.fieldbyname('total_nota').asfloat;

    qrnota.next;
  end;
  dsnota.DataSet := qrnota;
end;

procedure Tfrmcompra_menu.efornecedorEnter(Sender: TObject);
begin
     efornecedor.Text := '';
     tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcompra_menu.gridTitleButtonClick(Sender: TObject;
  AFieldName: String);
  var fornecedor, nota : string;
begin

   if (ansiuppercase(aFieldName) = ansiuppercase('num_nota'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data_emissao'))or
     // (ansiuppercase(aFieldName) = ansiuppercase('obs7'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data_cadastro'))or
      (ansiuppercase(aFieldName) = ansiuppercase('cfop'))or
    //  (ansiuppercase(aFieldName) = ansiuppercase('especie'))or
      (ansiuppercase(aFieldName) = ansiuppercase('serie'))or
    //  (ansiuppercase(aFieldName) = ansiuppercase('numero'))or
      (ansiuppercase(aFieldName) = ansiuppercase('modelo'))or
      (ansiuppercase(aFieldName) = ansiuppercase('chave_nfe')) OR
      (ansiuppercase(aFieldName) = ansiuppercase('total_nota'))
      then
   begin
     if efornecedor.Text = '' then fornecedor := ''  else fornecedor := ' and cod_fornecedor = '''+copy(efornecedor.text,1,6)+'''';
     if (enumero.text = '') then nota := '' else nota := ' and num_nota = '''+enumero.text+'''';

     qrnota.close;
     qrnota.sql.clear;
     qrnota.SQL.add('select * from notasfiscais where data_cadastro BETWEEN :datai and :dataf '+fornecedor+nota+' order by '+afieldname);
     qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
     qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrnota.open;
   end;

   if ansiuppercase(afieldname) = 'FORNECEDOR' then
   begin
     if efornecedor.Text = '' then fornecedor := ''  else fornecedor := ' and cod_fornecedor = '''+copy(efornecedor.text,1,6)+'''';
     if (enumero.text = '') then nota := '' else nota := ' and num_nota = '''+enumero.text+'''';
     qrnota.close;
     qrnota.sql.clear;
     qrnota.SQL.add('select * from notasfiscais where data_cadastro BETWEEN :datai and :dataf '+fornecedor+nota+' order by cod_fornecedor, data_cadastro');
     qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
     qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrnota.open;
   end;
end;

procedure Tfrmcompra_menu.ImportaNotaFiscalEletrnica1Click(
  Sender: TObject);
begin
  frmimporta_nfe := tfrmimporta_nfe.create(self);
  frmimporta_nfe.showmodal;
  qrnota.Refresh;
end;

procedure Tfrmcompra_menu.ENUMEROEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcompra_menu.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcompra_menu.F1Click(Sender: TObject);
begin
  frmfornecedor_codigo := tfrmfornecedor_codigo.create(self);
  frmfornecedor_codigo.tag := 0;
 // frmfornecedor_codigo.Lproduto.Caption := qrprodutoCODIGO.AsString + '-' +  qrprodutoPRODUTO.AsString;
  frmfornecedor_codigo.showmodal;
end;

procedure Tfrmcompra_menu.D1Click(Sender: TObject);
var
 E, N, Contador: Integer;
begin
if Application.MESSAGEBOX('Confirma a Gera��o da Devolu��o dos produtos da nota?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
                      DM.SDS_NotasFiscais.Close;
                      DM.SDS_NotasFiscais.SQL.Clear;
                      DM.SDS_NotasFiscais.SQL.add('select * from notasfiscais where codigo_nota = '+edit1.text+'');
                      DM.SDS_NotasFiscais.Open;

                      DM.SDS_NotasFiscaisItens.Close;
                      DM.SDS_NotasFiscaisitens.open;


 If formVendas = nil   then
    begin
     formVendas:=TformVendas.Create(self);
     formVendas.tag := 0;
    //  formVendas.Show;
      end;

begin

    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;
    
formvendas.sds_pedidos.Insert;
formvendas.sds_pedidos.EDIT;
formvendas.SPC_Codigo.ExecProc;
N:= (formvendas.SPC_Codigo.ParamByName('ATUAL').AsInteger);
formvendas.sds_pedidosCODIGO.Text             :=IntTostr(N);
formvendas.N_venda.Text                       := IntToStr(N);
formvendas.sds_pedidosDATA_PEDIDO.AsDateTime  := date;
formvendas.sds_pedidosDATA_ENTREGA.AsDateTime := date;
formvendas.sds_pedidosVALOR_ITENS.Text        := dm.SDS_NotasFiscaisVALOR_TOTAL_PRODUTOS.Text;
formvendas.sds_pedidosVALOR_DESCONTO.Text     := dm.SDS_NotasFiscaisVALOR_DESCONTO.Text;
formvendas.sds_pedidosVALOR_TOTAL.Text        := dm.SDS_NotasFiscaisTOTAL_NOTA.Text;
formvendas.sds_pedidosENC_FINANCEIRO.Text     := '0';
//formvendas.sds_pedidosCOD_PAGTO.Text         := DMOS.SDS_OS_PRODUTOCOD_PAGTO.Text;
//formvendas.sds_pedidosPAGAMENTO.Text         := DMOS.SDS_OS_PRODUTOPAGAMENTO.Text;
//formvendas.sds_pedidosOBSERVACOES.text       := DMOS.SDS_OS_PRODUTOOBSERVACOES.text;
formvendas.sds_pedidosCOD_VENDEDOR.text       := codigo_usuario;
formvendas.sds_pedidosUSUARIO.Text            := FormPrincipal.UserLogado;
formvendas.sds_pedidosCOD_EMPRESA.Text        := DM.SDS_EmpresaCODIGO.Text;
formVendas.Sds_pedidoskm.Text                 := '0';

          if DM.SDS_Clientes.Locate('CPF_CNPJ', DM.SDS_NotasFiscaisCNPJ.TEXT,[])=True then
          begin
            formvendas.Sds_pedidos.Edit;
            formvendas.sds_pedidosCODIGO_CLIENTE.Text    := DM.SDS_ClientesCODIGO.TEXT;
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
            formvendas.Sds_pedidosCEP.Text := removechar(DM.SDS_ClientesCEP.Text);
            formvendas.Sds_pedidosUF.Text  := DM.SDS_ClientesUF.Text;
            formvendas.Sds_pedidosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
            formvendas.Sds_pedidosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
            formvendas.Sds_pedidosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
            formvendas.Sds_pedidosIE_PRODUTOR.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
            formvendas.Sds_pedidosPROD_RURAL.Text   := DM.SDS_ClientesPRODUTOR_RURAL.Text;
           end else
           formvendas.dbcombocliente.text := '1';
        { if not DM.SDS_Clientes.Locate('CPF_CNPJ', DM.SDS_NotasFiscaisCNPJ.TEXT,[])=True then
         begin
             if DM.SDS_Fornecedores.Locate('CODIGO', RxDBComboEdit1.TEXT,[])=True then
            DM.SDS_CLIENTES.Insert;
            DM.SDS_ClientesCODIGO.Text := '1';
            DM.SDS_ClientesUSERCAD.Text             := FormPrincipal.UserLogado;
            DM.SDS_ClientesDATACAD.Text             := datetostr(now);
            DM.SDS_FornecedoresCod_empresa.text     := DM.SDS_EmpresaCODIGO.Text;
            DM.SDS_FornecedoresNOME.Text            := Copy(Emit.xNome,1,70);
            DM.SDS_FornecedoresENDERECO.Text        := Copy(Emit.EnderEmit.xLgr,1,44);
            dm.sds_fornecedorescnpj.text            := tbFmtCNPJ(Emit.CNPJCPF);
          //  DM.SDS_FornecedoresCNPJ.EditMask        := '99.999.999/9999-99;1;_';
            DM.SDS_FornecedoresIE.Text              := Emit.IE;
            dm.SDS_Fornecedorescodigo_ibge.AsInteger := Emit.EnderEmit.cMun;
            dm.SDS_FornecedoresCIDADE.text          := Copy(Emit.EnderEmit.xMun,1,40);
            dm.SDS_FornecedoresTELEFONE.Text        := tbFmtfone(Emit.EnderEmit.fone);

            DM.SDS_FornecedoresESTADO.Text          := Copy(Emit.EnderEmit.UF,1,2);
            DM.SDS_FornecedoresTP.Text              := 'J';
           // DM.SDS_FornecedoresTiPo.Text              := 'Jur�dica';
            dm.SDS_FornecedoresCEP.Text             := tbFmtCep(IntToStr(Emit.EnderEmit.CEP));
            DM.SDS_FornecedoresBAIRRO.Text          := Copy(Emit.EnderEmit.xBairro,1,30);
            DM.SDS_FornecedoresNUMERO.Text          := somenteNumero(Copy(Emit.EnderEmit.nro,1,9));
            DM.SDS_FornecedoresFANTASIA.Text        := Copy(Emit.xFant,1,70);

            DM.SDS_Fornecedores.Post;
            DM.SDS_Fornecedores.ApplyUpdates(0);  }


DM.SDS_NotasFiscaisItens.First;
Contador := DM.SDS_NotasFiscaisItens.RecordCount;
For E:=1 to Contador do
 begin
formvendas.sds_pedidos_itens.Insert;
formvendas.sds_pedidos_itens.Edit;
//SPC_COD_ITENS.ExecProc;
//N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
formvendas.sds_pedidos_itensCODIGO.AsString           := '1'; //IntTostr(N);
formvendas.sds_pedidos_itensCODIGO_ID.Text            := formvendas.N_venda.Text;
formvendas.sds_pedidos_itensITEN.Text                 := DM.SDS_NotasFiscaisItensCODIGO_ITEM.Text;
formvendas.sds_pedidos_itensCODIGO_PROD.Text          := DM.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text;
formvendas.sds_pedidos_itensCODIGO_PRODUTO.Text       := DM.SDS_NotasFiscaisItensCODIGO_BARRAS.Text;
formvendas.sds_pedidos_itensDESCRICAO_PRODUTO.Text    := DM.SDS_NotasFiscaisItensDESCRICAO.Text;
formvendas.sds_pedidos_itensDESCONTO.TEXT             := DM.SDS_NotasFiscaisItensVALOR_DESC.Text;
formvendas.sds_pedidos_itensQUANTIDADE.Text           := DM.SDS_NotasFiscaisItensQUANTIDADE.Text;
formvendas.sds_pedidos_itensPRECO_UNITARIO.Text       := DM.SDS_NotasFiscaisItensVALOR_UNI.Text;
formvendas.sds_pedidos_itensPRECO_TOTAL.Text          := DM.SDS_NotasFiscaisItensTOTAL_ITEM.Text;
formvendas.sds_pedidos_itensVENDEDOR.Text             := codigo_usuario;
formvendas.sds_pedidos_itensUNIDADE.Text              := DM.SDS_NotasFiscaisItensDESC_UNIDADE.Text;
//formvendas.sds_pedidos_itensSIT_TRIBUTARIA.Text       := DM.SDS_NotasFiscaisItensSIT_TRIBUTARIA.Text;
//formvendas.sds_pedidos_itensENC_FINANCEIRO.TEXT       := DM.SDS_NotasFiscaisItensENC_FINANCEIRO.Text;
formvendas.sds_pedidos_itensFRACAO.text               := DM.SDS_NotasFiscaisItensFRACAO.Text;
formvendas.sds_pedidos_itensCOD_NCM.Text              := DM.SDS_NotasFiscaisItensNCM_SH.Text;
formvendas.sds_pedidos_itensPROD_SERV.Text            := 'P';
DM.SDS_NotasFiscaisItens.Next;

end;


formvendas.sds_pedidos.Post;

formvendas.Pc.ActivePageIndex := 1;
formvendas.Tvendas.PageIndex := 1;
formvendas.Inserir.Enabled:= False;
formvendas.pesquisar.Enabled := False;
formvendas.confirmar.Enabled := True;
formvendas.GroupBox1.Enabled := True;
formvendas.GroupBox2.Enabled := True;
formvendas.groupbox3.Enabled := True;
formvendas.cancelar.Enabled:=true;

 formvendas.Edit60.Visible := true;
 formvendas.E_desconto.Visible := true;
 formvendas.Edit62.Visible := true;

 IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  formvendas.RbPreco1.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  formvendas.RbPreco2.Checked := True;
  end;

  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='S' then
  begin
  formvendas.DBGRID.Columns.Items[3].ReadOnly := False;
  end else
  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='N' then
  begin
  formvendas.DBGRID.Columns.Items[3].ReadOnly := True;
  end;

      formvendas.sds_pedidos_itens.last;
      formvendas.sds_pedidos_itens.Insert;

      formvendas.DBComboClienteExit(Sender);

      formvendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
      formvendas.sds_pedidos_itens.Edit;
      formVendas.ComboEdit1.Visible := True;
      formVendas.ComboEdit1.SetFocus;
     // btnfaturar.Visible := False;

end;
end;

end;

end.
