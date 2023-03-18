unit importa_nfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ACBrNFe, OleCtrls, SHDocVw, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, DB, Wwdatsrc, Mask, ExtCtrls, RzPanel,
  pcnConversao, pcnConversaoNFe, pcnNFeW, Menus, RzPrgres, ImgList, wwdblook,
  RzDBEdit, DBCtrls, RzCmboBx, RzDBCmbo, RzDBSpin, RzEdit, RzDBBnEd,
   RzTabs, jpeg, frxClass, frxDBSet, frxDesgn,
  ACBrBase, ACBrValidador,  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, sCheckBox, sMaskEdit, sCustomComboEdit,
  sTooledit, XDBGrids, IBSQL, ACBrDFe,  RzBtnEdt,
  DBGrids, IniFiles, System.ImageList, AdvGlowButton, AdvReflectionImage,
  RxToolEdit, RxCurrEdit;

type
  Tfrmimporta_nfe = class(TForm)
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    qrnota: TFDQuery;
    qritem1: TFDQuery;
    dsnota: TwwDataSource;
    dsitem: TwwDataSource;
    query: TFDQuery;
    enota: TEdit;
    eserie: TEdit;
    emodelo: TEdit;
    enota_uf: TEdit;
    edata_emissao: TEdit;
    edata_saida: TEdit;
    ecod_municipio: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edv: TEdit;
    Label8: TLabel;
    eid: TEdit;
    enatureza: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    eemitente: TEdit;
    Label12: TLabel;
    edestinatario: TEdit;
    ecnpj_emitente: TEdit;
    ecnpj_destinatario: TEdit;
    ebase_calculo: TCurrencyEdit;
    evalor_icms: TCurrencyEdit;
    ebase_substituicao: TCurrencyEdit;
    evalor_substituicao: TCurrencyEdit;
    evalor_produtos: TCurrencyEdit;
    efrete: TCurrencyEdit;
    eseguro: TCurrencyEdit;
    eoutras_despesas: TCurrencyEdit;
    evalor_ipi: TCurrencyEdit;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edesconto: TCurrencyEdit;
    Label24: TLabel;
    evalor_pis: TCurrencyEdit;
    Label25: TLabel;
    evalor_cofins: TCurrencyEdit;
    Label26: TLabel;
    evalor_isento: TCurrencyEdit;
    RzPanel1: TRzPanel;
    Label27: TLabel;
    Label28: TLabel;
    ecod_fornecedor: TEdit;
    ecod_destinatario: TEdit;
    qrproduto_mov: TFDQuery;
    eicms_retido: TCurrencyEdit;
    Label29: TLabel;
    Label30: TLabel;
    evalor_itemespecial: TCurrencyEdit;
    Label31: TLabel;
    ecfop: TEdit;
    Label32: TLabel;
    ecredito_icms: TCurrencyEdit;
    qrproduto: TFDQuery;
    qrfornecedor_codigo: TFDQuery;
    Label33: TLabel;
    Label34: TLabel;
    emunicipio_emitente: TEdit;
    emunicipio_destinatario: TEdit;
    eitems: TCurrencyEdit;
    Label35: TLabel;
    etipo_nota: TEdit;
    etipo_venda: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    bsair: TBitBtn;
    pop1: TPopupMenu;
    sair1: TMenuItem;
    bar: TRzProgressBar;
    euf_emitente: TEdit;
    euf_destinatario: TEdit;
    ImageList1: TImageList;
    bgravar: TBitBtn;
    bimporta: TBitBtn;
    page_dados: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    wwDBGrid2: TwwDBGrid;
    pfatura: TPanel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Bevel3: TBevel;
    bgerar: TAdvGlowButton;
    econta: TRzDBButtonEdit;
    edit5: TRzDBEdit;
    ecount: TRzDBSpinEdit;
    enomeconta: TRzDBEdit;
    wwDBGrid1: TwwDBGrid;
    Panel7: TPanel;
    FDvGlowButton2: TAdvGlowButton;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    RzDBNumericEdit14: TRzDBNumericEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    RzDBNumericEdit15: TRzDBNumericEdit;
    RzDBNumericEdit16: TRzDBNumericEdit;
    dbedit4: TwwDBLookupCombo;
    qrtransportador: TFDQuery;
    qrplano: TFDQuery;
    qrnotaconta: TStringField;
    qrplano2: TFDQuery;
    dspagar: TDataSource;
    qrpagar: TFDQuery;
    blimpa_variavel: TBitBtn;
    evalor_nota: TCurrencyEdit;
    Label14: TLabel;
    bexcluir: TBitBtn;
    bprodutos: TBitBtn;
    lstatus: TLabel;
    bcancelar: TBitBtn;
    bimprime: TBitBtn;
    fximprime: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsitem: TfrxDBDataset;
    fsnota: TfrxDBDataset;
    FDvGlowButton1: TAdvGlowButton;
    FDvGlowButton3: TAdvGlowButton;
    FDvGlowButton4: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    qraux: TFDQuery;
    tbshetlog: TRzTabSheet;
    memo1: TMemo;
    pnl1: TPanel;
    BtnImportar: TAdvGlowButton;
    qrproduto_movCODIGO: TWideStringField;
    qrproduto_movCODNOTA: TWideStringField;
    qrproduto_movCODPRODUTO: TWideStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TWideStringField;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movNUMERONOTA: TWideStringField;
    qrproduto_movCODCLIENTE: TWideStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODVENDEDOR: TWideStringField;
    qrproduto_movCODGRADE: TWideStringField;
    qrproduto_movSERIAL: TWideStringField;
    qrproduto_movUNIDADE: TWideStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrproduto_movVALOR_IPI: TFloatField;
    qrproduto_movSITUACAO: TIntegerField;
    qrproduto_movECF_SERIE: TWideStringField;
    qrproduto_movECF_CAIXA: TWideStringField;
    qrproduto_movCODALIQUOTA: TWideStringField;
    qrproduto_movCUPOM_NUMERO: TWideStringField;
    qrproduto_movCUPOM_MODELO: TWideStringField;
    qrproduto_movCUPOM_ITEM: TWideStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TWideStringField;
    qrproduto_movLOTE_FABRICACAO: TWideStringField;
    qrproduto_movMOVIMENTO_ESTOQUE: TFloatField;
    qrproduto_movLANCADO: TIntegerField;
    qrproduto_movVENCIMENTO: TDateTimeField;
    qrproduto_movCODBARRA: TWideStringField;
    qrproduto_movMARGEM_DESCONTO: TFloatField;
    qrproduto_movCREDITO_ICMS: TFloatField;
    qrproduto_movPIS: TFloatField;
    qrproduto_movCOFINS: TFloatField;
    qrproduto_movLOJA: TWideStringField;
    qrproduto_movCODSUBGRUPO: TWideStringField;
    qrproduto_movTIPO: TWideStringField;
    qrproduto_movCODUSUARIO: TWideStringField;
    qrproduto_movORIGEM: TWideStringField;
    qrproduto_movDESTINO: TWideStringField;
    qrproduto_movPRODUTO: TWideStringField;
    QryCadastraProduto: TFDQuery;
    ACBrValidador1: TACBrValidador;
    qryestoque: TFDQuery;
    FDvReflectionImage1: TAdvReflectionImage;
    qrtransportadorCD_EMPRESA: TIntegerField;
    qrtransportadorCD_TRANSPORTADOR: TIntegerField;
    qrtransportadorNOME_TRANSP: TStringField;
    qrtransportadorNOME_FANTASIA_TRANSP: TStringField;
    qrtransportadorINSCRICAO: TStringField;
    qrtransportadorCNPJ: TStringField;
    qrtransportadorCEP: TStringField;
    qrtransportadorENDERECO: TStringField;
    qrtransportadorBAIRRO: TStringField;
    qrtransportadorCD_CIDADE: TIntegerField;
    qrtransportadorTELE_TRANSP: TStringField;
    qrtransportadorFAX_TRANS: TStringField;
    qrtransportadorPESSOA_CONTATO: TStringField;
    qrtransportadorE_MAIL: TStringField;
    qrtransportadorCEL_TRANSP: TStringField;
    qrtransportadorDT_ATZ: TDateField;
    qrtransportadorFL_FISICO_JURIDICO: TStringField;
    qrtransportadorCD_FORNECEDOR: TIntegerField;
    qrtransportadorNUMERO: TIntegerField;
    qrtransportadorCOMPLEMENTO: TStringField;
    qrtransportadorCIDADE: TStringField;
    qrtransportadorUF: TStringField;
    qrtransportadorIBGE: TIntegerField;
    qrtransportadorPLACA: TStringField;
    qrtransportadorUF_PLACA: TStringField;
    qrtransportadorANTT: TStringField;
    qrfornecedor_codigoCODFORNECEDOR: TIntegerField;
    qrfornecedor_codigoCODPRODUTO: TIntegerField;
    qrplanoCODIGO: TIntegerField;
    qrplanoCOD_NATUREZA: TStringField;
    qrplanoNIVEL_CTA: TStringField;
    qrplanoCOD_CTA: TStringField;
    qrplanoINDICADOR: TStringField;
    qrplanoNOME: TStringField;
    qrplanoUSERCAD: TStringField;
    qrplanoDATACAD: TDateField;
    qrplanoCOD_COMPLETO: TStringField;
    qrpagarCODIGO: TIntegerField;
    qrpagarDATA_EMISSAO: TDateField;
    qrpagarDATA_VENCIMENTO: TDateField;
    qrpagarDATA_PAGAMENTO: TDateField;
    qrpagarCODCONTA: TIntegerField;
    qrpagarCODFORNECEDOR: TIntegerField;
    qrpagarDOCUMENTO: TStringField;
    qrpagarNOTAFISCAL: TStringField;
    qrpagarHISTORICO: TStringField;
    qrpagarC: TStringField;
    qrpagarE: TStringField;
    qrpagarFILTRO: TIntegerField;
    qrpagarESPECIE: TStringField;
    qrpagarSITUACAO: TIntegerField;
    qrpagarCODNOTA: TIntegerField;
    qrpagarMOVIMENTO: TIntegerField;
    qrpagarCODCAIXA: TIntegerField;
    qrauxCODFORNECEDOR: TIntegerField;
    qrauxCODPRODUTO: TIntegerField;
    qrauxCODIGO: TStringField;
    ZQuery1: TFDQuery;
    qryestoqueCOD_EMP: TIntegerField;
    qryestoqueCOD_PRO: TIntegerField;
    qryestoqueCODIGO_LOCAL_ESTOQUE: TIntegerField;
    QryCadastraProdutoCODIGO: TIntegerField;
    QryCadastraProdutoCODIGO_BARRAS: TStringField;
    QryCadastraProdutoDESCRICAO: TStringField;
    QryCadastraProdutoABREVIADO: TStringField;
    qrnotaCODIGO_NOTA: TIntegerField;
    qrnotaNUM_NOTA: TStringField;
    qrnotaSERIE_NF: TStringField;
    qrnotaCFOP_NOTA: TStringField;
    qrnotaDATA_EMISSAO: TDateField;
    qrnotaCOD_FORNECEDOR: TIntegerField;
    qrnotaFORNECEDOR: TStringField;
    qrnotaDATA_VENCIMENTO: TDateField;
    qrnotaCNPJ: TStringField;
    qrnotaIE: TStringField;
    qrnotaUSUARIO_CADASTRO: TStringField;
    qrnotaDATA_CADASTRO: TDateField;
    qrnotaOBSERVACOES: TBlobField;
    qrnotaMES: TStringField;
    qrnotaANO: TStringField;
    qrnotaCHAVE_NFE: TStringField;
    qrnotaPROTOCOLO_NFE: TStringField;
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
    qrnotapagamento: TStringField;
    qrnotaMODELO: TStringField;
    qrnotaEMITENTE: TStringField;
    qrnotaCST: TStringField;
    qrnotaSUB_SERIE: TStringField;
    qrnotaTRANSP_NOME: TStringField;
    qrnotaTRANSP_PLACA: TStringField;
    qrnotaTRANSP_PLACAUF: TStringField;
    qrnotaTRANSP_IE: TStringField;
    qrnotaTRANSP_CNPJ: TStringField;
    qrnotaTRANSP_ENDERECO: TStringField;
    qrnotaTRANSP_CIDADE: TStringField;
    qrnotaTRANSP_UF: TStringField;
    qrnotaTRANSP_ESPECIE: TStringField;
    qrnotaTRANSP_MARCA: TStringField;
    qrnotaTRANSP_NUMERO: TStringField;
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
    qrnotaOPERACAO: TStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaAPROVEITA_CREDITO_ICMS: TStringField;
    qrnotaCOD_EMPRESA: TIntegerField;
    qrnotaESPECIE: TStringField;
    qrnotaCODREMETENTE: TIntegerField;
    qrfiscal_modelo: TFDQuery;
    qrnotaREMETENTE: TStringField;
    qritem: TFDMemTable;
    qritemchave: TIntegerField;
    qritem1CODIGO_ITEM: TIntegerField;
    qritem1CODIGO_PRODUTO: TIntegerField;
    qritem1CODIGO_BARRAS: TStringField;
    qritem1CODIGO_NOTA: TIntegerField;
    qritem1DESCRICAO: TStringField;
    qritem1NCM_SH: TStringField;
    qritem1CST: TStringField;
    qritem1CFOP: TStringField;
    qritem1DESC_UNIDADE: TStringField;
    qritem1DATA: TDateField;
    qritem1DATA_VALIDADE: TDateField;
    qritem1DATA_FABRICACAO: TDateField;
    qritem1FRACAO: TIntegerField;
    qritem1ATIVO: TStringField;
    qritem1COD_EMPRESA: TIntegerField;
    qritem1IMOBILZ: TStringField;
    qritem1UN_FRACAO: TStringField;
    qritem1ITEM: TIntegerField;
    qritem1CODFORNECEDOR: TIntegerField;
    qritem1NUM_NOTA: TStringField;
    qritem1ICMS_RETIDO: TStringField;
    qritem1ALTERA_ITEM: TIntegerField;
    Label53: TLabel;
    combo_tipo: TRzComboBox;
    Edit1: TEdit;
    sCheckBox1: TsCheckBox;
    Label54: TLabel;
    sDateEdit1: TsDateEdit;
    XDBGrid1: TXDBGrid;
    qrprodutoCODIGO: TIntegerField;
    qrprodutoDESCRICAO: TStringField;
    qrprodutoCODIGO_BARRAS: TStringField;
    qrprodutoDESC_UNIDADE: TStringField;
    qrprodutoCOD_GRUPO: TIntegerField;
    qrprodutoDESCRICAO_1: TStringField;
    SQLVendas1: TFDCommand;
    Label55: TLabel;
    Label56: TLabel;
    eCentro: TRzButtonEdit;
    Label57: TLabel;
    EImovel: TRzButtonEdit;
    EnomeCentro: TEdit;
    EnomeImovel: TEdit;
    qrpagarCOD_CENTRO_CUSTO: TIntegerField;
    qrpagarCOD_IMOVEL: TIntegerField;
    qrnotaCOD_CENTRO_CUSTO: TIntegerField;
    qrnotaCOD_IMOVEL: TIntegerField;
    qrfornecedor_codigoCODIGO: TStringField;
    tbHistoricoProduto: TRzTabSheet;
    DBGrid1: TDBGrid;
    dsProdutoHistorico: TDataSource;
    qrProdutoHistorico: TFDQuery;
    qrProdutoHistoricoCODIGO_ITEM: TIntegerField;
    qrProdutoHistoricoCODIGO_PRODUTO: TIntegerField;
    qrProdutoHistoricoCODIGO_BARRAS: TStringField;
    qrProdutoHistoricoCODIGO_NOTA: TIntegerField;
    qrProdutoHistoricoDESCRICAO: TStringField;
    qrProdutoHistoricoNCM_SH: TStringField;
    qrProdutoHistoricoCST: TStringField;
    qrProdutoHistoricoCFOP: TStringField;
    qrProdutoHistoricoDESC_UNIDADE: TStringField;
    qrProdutoHistoricoQUANTIDADE: TBCDField;
    qrProdutoHistoricoDATA: TDateField;
    qrProdutoHistoricoDATA_VALIDADE: TDateField;
    qrProdutoHistoricoDATA_FABRICACAO: TDateField;
    qrProdutoHistoricoFRACAO: TIntegerField;
    qrProdutoHistoricoQUANT_FRACIONADA: TBCDField;
    qrProdutoHistoricoLOTE_MED: TStringField;
    qrProdutoHistoricoATIVO: TStringField;
    qrProdutoHistoricoCOD_EMPRESA: TIntegerField;
    qrProdutoHistoricoIMOBILZ: TStringField;
    qrProdutoHistoricoUN_FRACAO: TStringField;
    qrProdutoHistoricoITEM: TIntegerField;
    qrProdutoHistoricoCODFORNECEDOR: TIntegerField;
    qrProdutoHistoricoNUM_NOTA: TStringField;
    qrProdutoHistoricoICMS_RETIDO: TStringField;
    qrProdutoHistoricoIPI_TIPO: TStringField;
    qrProdutoHistoricoTIPO: TIntegerField;
    qrProdutoHistoricoCLASSIFICACAO_FISCAL: TStringField;
    SQLVendas: TFDQuery;
    qrpagarCOD_EMPRESA: TIntegerField;
    qrProdutoHistoricoVALOR_UNI: TBCDField;
    qrProdutoHistoricoVALOR_DESC: TFMTBCDField;
    qrProdutoHistoricoTOTAL_ITEM: TFMTBCDField;
    qrProdutoHistoricoBASE_ICMS: TFMTBCDField;
    qrProdutoHistoricoVALOR_ICMS: TFMTBCDField;
    qrProdutoHistoricoVALOR_IPI: TFMTBCDField;
    qrProdutoHistoricoPERC_ICMS: TFMTBCDField;
    qrProdutoHistoricoPERC_IPI: TFMTBCDField;
    qrProdutoHistoricoPRECO_VENDA: TFMTBCDField;
    qrProdutoHistoricoPRECO_VENDA2: TFMTBCDField;
    qrProdutoHistoricoMARG_LUCRO: TFMTBCDField;
    qrProdutoHistoricoBASE_ICMS_ST: TFMTBCDField;
    qrProdutoHistoricoALIC_ICMS_ST: TFMTBCDField;
    qrProdutoHistoricoVALOR_ICMS_ST: TFMTBCDField;
    qrProdutoHistoricoBASE_PIS: TFMTBCDField;
    qrProdutoHistoricoPERC_PIS: TFMTBCDField;
    qrProdutoHistoricoVALOR_PIS: TFMTBCDField;
    qrProdutoHistoricoBASE_COFINS: TFMTBCDField;
    qrProdutoHistoricoPERC_COFINS: TFMTBCDField;
    qrProdutoHistoricoVALOR_COFINS: TFMTBCDField;
    qrProdutoHistoricoBASE_IPI: TFMTBCDField;
    qrProdutoHistoricoDESCONTO_P: TFMTBCDField;
    qrProdutoHistoricoICMS_REDUCAO: TFMTBCDField;
    qrProdutoHistoricoICMS_VALORRETIDO: TFMTBCDField;
    qrProdutoHistoricoICMS_ISENTO: TFMTBCDField;
    qrProdutoHistoricoICMS_NAOTRIBUTADO: TFMTBCDField;
    qrProdutoHistoricoFRETE: TFMTBCDField;
    qrProdutoHistoricoOUTRAS: TFMTBCDField;
    qrProdutoHistoricoSUBTOTAL: TFMTBCDField;
    qrProdutoHistoricoSEGURO: TFMTBCDField;
    qrProdutoHistoricoSUB_PRODUTOS: TFMTBCDField;
    qrProdutoHistoricoITEM_ESPECIAL_VALOR: TFMTBCDField;
    qrProdutoHistoricoICMS_OUTRAS: TFMTBCDField;
    qrProdutoHistoricoALTERA_ITEM: TIntegerField;
    qrProdutoHistoricoCREDITO_ICMS: TFMTBCDField;
    qrProdutoHistoricoCREDITO_ICMS_BASE: TFMTBCDField;
    qrProdutoHistoricoPMARGEM: TSingleField;
    qrProdutoHistoricoPRECO_CUSTO: TFMTBCDField;
    qrProdutoHistoricoCODLANCAMENTO: TStringField;
    qrprodutoPRECO_VENDA: TFMTBCDField;
    qrprodutoPRECO_CUSTO: TFMTBCDField;
    qrprodutoFLAG_SUBSTITUICAO_TRIB: TStringField;
    qrprodutoPERC_SUBST_TRIBUTARIA: TFMTBCDField;
    qrprodutoFLAG_SERVICO: TStringField;
    qrprodutoPERC_ALIQUOTA_ISS: TFMTBCDField;
    qrprodutoFLAG_FABRICACAO_PROPRIA: TStringField;
    qrprodutoPERC_ALIQUOTA_IPI: TFMTBCDField;
    qrprodutoFLAG_PIS_COFINS: TStringField;
    qrprodutoPERC_ALIQUOTA_PIS: TFMTBCDField;
    qrprodutoPERC_ALIQUOTA_COFINS: TFMTBCDField;
    qrprodutoFLAG_ICMSGARANTIDO_INTEGRAL: TStringField;
    qrprodutoPERC_ICMS_GARANTIDO_INTEGRAL: TFMTBCDField;
    qrprodutoCFOP_ESTADUAL_DEV: TStringField;
    qrprodutoCFOP_INTERESTADUAL_DEV: TStringField;
    qrprodutoCFOP_EST_COMPRA: TStringField;
    qrprodutoCFOP_INTER_COMPRA: TStringField;
    qrprodutoCFOP_EST_VENDA: TStringField;
    qrprodutoCFOP_INTER_VENDA: TStringField;
    qrprodutoCFOP_EST_TRANSF: TStringField;
    qrprodutoCFOP_INTER_EST_TRASNF: TStringField;
    qrprodutoCST_VENDA: TStringField;
    qrprodutoCST_COMPRA: TStringField;
    qrprodutoFLAG_ICMS: TStringField;
    qrprodutoPERC_ICMS_ESTADUAL: TFMTBCDField;
    qrprodutoPERC_ICMS_INTER_ESTADUAL: TFMTBCDField;
    qrprodutoSIT_PIS_VENDA_EST: TStringField;
    qrprodutoSIT_COFINS_VENDA_EST: TStringField;
    qrprodutoSIT_PIS_VENDA_INTER_EST: TStringField;
    qrprodutoSIT_COFINS_VENDA_INTER_EST: TStringField;
    qrprodutoSIT_PIS_COMPRA: TStringField;
    qrprodutoSIT_COFINS_COMPRA: TStringField;
    qrprodutoCST_VENDA_INTER: TStringField;
    qrprodutoCST_COMPRA_INTER: TStringField;
    qrprodutoPERC_RED_ICMS: TFMTBCDField;
    qrprodutoCST_IPI_ENTRADA: TStringField;
    qrprodutoCST_IPI_SAIDA: TStringField;
    qrprodutoCFOP_REV_EST: TStringField;
    qrprodutoCFOP_REV_INTER: TStringField;
    qrprodutoPERC_LUCRO_ST: TFMTBCDField;
    qrprodutoCST_VENDA_NFCE: TStringField;
    qrprodutoCST_VENDA_INTER_NFCE: TSmallintField;
    qrfornecedor_codigoPRECO: TFMTBCDField;
    qrplanoSALDO_CTA: TFMTBCDField;
    qrplanoDEB_CRED: TStringField;
    qrpagarVALOR: TFMTBCDField;
    qrpagarVALORPAGO: TFMTBCDField;
    qrpagarLIQUIDO: TFMTBCDField;
    qrpagarDESCONTO: TFMTBCDField;
    qrpagarACRESCIMO: TFMTBCDField;
    qrauxPRECO: TFMTBCDField;
    qryestoqueESTOQUE: TFMTBCDField;
    qryestoqueQTDE_FRACIONADA: TFMTBCDField;
    qrnotaTOTAL_NOTA: TFMTBCDField;
    qrnotaBASE_CALCULO_ICMS: TFMTBCDField;
    qrnotaVALOR_ICMS: TFMTBCDField;
    qrnotaBASE_CALC_ICMS_SUBST: TFMTBCDField;
    qrnotaVALOR_ICMS_SUBST: TFMTBCDField;
    qrnotaVALOR_FRETE: TFMTBCDField;
    qrnotaVALOR_SEGURO: TFMTBCDField;
    qrnotaVALOR_DESCONTO: TFMTBCDField;
    qrnotaVALOR_OUTRAS_DESPESAS: TFMTBCDField;
    qrnotaVALOR_IPI: TFMTBCDField;
    qrnotaVALOR_TOTAL_PRODUTOS: TFMTBCDField;
    qrnotaVALOR_TOTAL_ITENS_NOTA: TFMTBCDField;
    qrnotaVLR_ICMS_GARANTIDO: TFMTBCDField;
    qrnotaVALOR_AVISTA: TFMTBCDField;
    qrnotaVALOR_PRAZO: TFMTBCDField;
    qrnotaVALOR_COFINS: TFMTBCDField;
    qrnotaVALOR_PIS: TFMTBCDField;
    qrnotaVALOR_PIS_ST: TFMTBCDField;
    qrnotaVALOR_COFIS_ST: TFMTBCDField;
    qrnotaPERC_ICMS: TFMTBCDField;
    qrnotaTRANSP_QTDE: TFMTBCDField;
    qrnotaTRANSP_PESOBRUTO: TFMTBCDField;
    qrnotaTRANSP_PESOLIQUIDO: TFMTBCDField;
    qrnotaICMS_ISENTO: TFMTBCDField;
    qrnotaICMS_OUTRAS: TFMTBCDField;
    qrnotaDESCONTO_INCIDENTE: TIntegerField;
    qrnotaITEM_FRETE_VALOR: TFMTBCDField;
    qrnotaITEM_FRETE_BASE: TFMTBCDField;
    qrnotaITEM_FRETE_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_FRETE_ICMS: TFMTBCDField;
    qrnotaITEM_SEGURO_VALOR: TFMTBCDField;
    qrnotaITEM_SEGURO_BASE: TFMTBCDField;
    qrnotaITEM_SEGURO_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_SEGURO_ICMS: TFMTBCDField;
    qrnotaITEM_PIS_VALOR: TFMTBCDField;
    qrnotaITEM_PIS_BASE: TFMTBCDField;
    qrnotaITEM_PIS_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_PIS_ICMS: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_VALOR: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_BASE: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_ICMS: TFMTBCDField;
    qrnotaITEM_SERVICO_VALOR: TFMTBCDField;
    qrnotaITEM_SERVICO_BASE: TFMTBCDField;
    qrnotaITEM_SERVICO_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_SERVICO_ICMS: TFMTBCDField;
    qrnotaITEM_OUTRAS_VALOR: TFMTBCDField;
    qrnotaITEM_OUTRAS_BASE: TFMTBCDField;
    qrnotaITEM_OUTRAS_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_OUTRAS_ICMS: TFMTBCDField;
    qrnotaITEM_ESPECIAL_TOTAL: TFMTBCDField;
    qrnotaITEM_ESPECIAL_VALOR: TFMTBCDField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaCONF_ITEM_ESPECIAL: TFMTBCDField;
    qrnotaCREDITO_ICMS: TFMTBCDField;
    qrnotaICMSRETIDO: TFMTBCDField;
    qrnotaPERC_ICMSRETIDO: TFMTBCDField;
    qrnotaVALOR_MERCADORIAS: TFMTBCDField;
    qrnotaCONF_BASEICMS: TFMTBCDField;
    qrnotaCONF_VALORICMS: TFMTBCDField;
    qrnotaCONF_BASESUB: TFMTBCDField;
    qrnotaCONF_VALORSUB: TFMTBCDField;
    qrnotaCONF_FRETE: TFMTBCDField;
    qrnotaCONF_SEGURO: TFMTBCDField;
    qrnotaCONF_OUTRAS: TFMTBCDField;
    qrnotaCONF_IPI: TFMTBCDField;
    qrnotaCONF_DESCONTO: TFMTBCDField;
    qrnotaCONF_TOTALPRODUTOS: TFMTBCDField;
    qrnotaCONF_TOTALNOTA: TFMTBCDField;
    qrnotaCONF_ICMSRETIDO: TFMTBCDField;
    qrnotaCONF_ICMSREDITO_PERC: TFMTBCDField;
    qrnotaCONFI_PIS: TFMTBCDField;
    qrnotaCONF_COFINS: TFMTBCDField;
    qritem1QUANTIDADE: TBCDField;
    qritem1VALOR_UNI: TBCDField;
    qritem1VALOR_DESC: TFMTBCDField;
    qritem1TOTAL_ITEM: TFMTBCDField;
    qritem1BASE_ICMS: TFMTBCDField;
    qritem1VALOR_ICMS: TFMTBCDField;
    qritem1VALOR_IPI: TFMTBCDField;
    qritem1PERC_ICMS: TFMTBCDField;
    qritem1PERC_IPI: TFMTBCDField;
    qritem1PRECO_VENDA: TFMTBCDField;
    qritem1PRECO_VENDA2: TFMTBCDField;
    qritem1BASE_ICMS_ST: TFMTBCDField;
    qritem1ALIC_ICMS_ST: TFMTBCDField;
    qritem1VALOR_ICMS_ST: TFMTBCDField;
    qritem1BASE_PIS: TFMTBCDField;
    qritem1PERC_PIS: TFMTBCDField;
    qritem1VALOR_PIS: TFMTBCDField;
    qritem1BASE_COFINS: TFMTBCDField;
    qritem1PERC_COFINS: TFMTBCDField;
    qritem1VALOR_COFINS: TFMTBCDField;
    qritem1BASE_IPI: TFMTBCDField;
    qritem1ICMS_REDUCAO: TFMTBCDField;
    qritem1ICMS_VALORRETIDO: TFMTBCDField;
    qritem1ICMS_ISENTO: TFMTBCDField;
    qritem1ICMS_NAOTRIBUTADO: TFMTBCDField;
    qritem1ICMS_OUTRAS: TFMTBCDField;
    qritem1CREDITO_ICMS: TFMTBCDField;
    qritem1CREDITO_ICMS_BASE: TFMTBCDField;
    qritem1PMARGEM: TSingleField;
    qritem1PRECO_CUSTO: TFMTBCDField;
    qritem1CODLANCAMENTO: TStringField;
    qritem1QUANT_FRACIONADA: TBCDField;
    qritem1LOTE_MED: TStringField;
    qritem1MARG_LUCRO: TFMTBCDField;
    qritem1SUBTOTAL: TFMTBCDField;
    qritem1DESCONTO_P: TFMTBCDField;
    qritem1IPI_TIPO: TStringField;
    qritem1TIPO: TIntegerField;
    qritem1FRETE: TFMTBCDField;
    qritem1OUTRAS: TFMTBCDField;
    qritem1SEGURO: TFMTBCDField;
    qritem1CLASSIFICACAO_FISCAL: TStringField;
    qritem1SUB_PRODUTOS: TFMTBCDField;
    qritem1ITEM_ESPECIAL_VALOR: TFMTBCDField;
    QryCadastraProdutoPRECO_CUSTO: TFMTBCDField;
    QryCadastraProdutoMARGEM_LUCRO: TFMTBCDField;
    QryCadastraProdutoCOMISSAO: TFMTBCDField;
    QryCadastraProdutoUNIDADE: TIntegerField;
    QryCadastraProdutoFRETE: TFMTBCDField;
    QryCadastraProdutoICMS: TFMTBCDField;
    QryCadastraProdutoIPI_IRPJ: TFMTBCDField;
    QryCadastraProdutoOUTROS_IMPOSTOS: TFMTBCDField;
    QryCadastraProdutoDESCONTOS: TFMTBCDField;
    QryCadastraProdutoCLASS_FISCAL: TStringField;
    QryCadastraProdutoSIT_TRIBUTARIA: TStringField;
    QryCadastraProdutoCUSTO_MEDIO: TFMTBCDField;
    QryCadastraProdutoPRECO_VENDA: TFMTBCDField;
    QryCadastraProdutoDESCONTO_MAXIMO: TFMTBCDField;
    QryCadastraProdutoCODIGO_GRUPO: TIntegerField;
    QryCadastraProdutoCODIGO_SUBGRUPO: TIntegerField;
    QryCadastraProdutoCODIGO_MARCA: TIntegerField;
    QryCadastraProdutoNOME_GRUPO: TStringField;
    QryCadastraProdutoNOME_SUBGRUPO: TStringField;
    QryCadastraProdutoNOME_MARCA: TStringField;
    QryCadastraProdutoNOME_FORNECEDOR: TStringField;
    QryCadastraProdutoCODIGO_FORNECEDORES: TIntegerField;
    QryCadastraProdutoFOTO: TBlobField;
    QryCadastraProdutoESTOQUE_ATUAL: TBCDField;
    QryCadastraProdutoESTOQUE_VENDIDO: TFMTBCDField;
    QryCadastraProdutoESTOQUE: TBCDField;
    QryCadastraProdutoVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    QryCadastraProdutoVALOR_ESTOQUE: TFMTBCDField;
    QryCadastraProdutoESTOQUE_MINIMO: TIntegerField;
    QryCadastraProdutoESTOQUE_MAXIMO: TIntegerField;
    QryCadastraProdutoDATACAD: TDateField;
    QryCadastraProdutoUSERCAD: TStringField;
    QryCadastraProdutoVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    QryCadastraProdutoULTIMACOMPRA: TDateField;
    QryCadastraProdutoVALOR_EST_CUSTO: TFMTBCDField;
    QryCadastraProdutoSECCAO: TIntegerField;
    QryCadastraProdutoCATEGORIA: TIntegerField;
    QryCadastraProdutoLOCALIZACAO: TStringField;
    QryCadastraProdutoAPLICACAO: TStringField;
    QryCadastraProdutoESP_COD_AUX: TStringField;
    QryCadastraProdutoGARANTIA: TIntegerField;
    QryCadastraProdutoBALANCA: TStringField;
    QryCadastraProdutoETIQUETA: TStringField;
    QryCadastraProdutoATIVO: TStringField;
    QryCadastraProdutoREFERENCIA: TStringField;
    QryCadastraProdutoCOD_EMPRESA: TIntegerField;
    QryCadastraProdutoDESC_UNIDADE: TStringField;
    QryCadastraProdutoPESOBRUTO: TFMTBCDField;
    QryCadastraProdutoPESOLIQUIDO: TFMTBCDField;
    QryCadastraProdutoFONETICO: TStringField;
    QryCadastraProdutoDATAULTALTERACAO: TDateField;
    QryCadastraProdutoCUSTOREPOSICAO: TFMTBCDField;
    QryCadastraProdutoPRECO_ANT: TFMTBCDField;
    QryCadastraProdutoPRECO_PROMOCAO: TFMTBCDField;
    QryCadastraProdutoFLAG_PROMOCAO: TStringField;
    QryCadastraProdutoDT_INICIO_PROMO: TDateField;
    QryCadastraProdutoDT_FIM_PROMO: TDateField;
    QryCadastraProdutoCOD_LABORATORIO: TIntegerField;
    QryCadastraProdutoLABORATORIO: TStringField;
    QryCadastraProdutoPRINCIPIO_ATIVO: TStringField;
    QryCadastraProdutoMED_CONTROLADO: TStringField;
    QryCadastraProdutoQTD_FRACIONADA: TFMTBCDField;
    QryCadastraProdutoQTD_CAIXA: TSmallintField;
    QryCadastraProdutoMED_GENERICO: TStringField;
    QryCadastraProdutoLOTE_MED: TStringField;
    QryCadastraProdutoVALIDADE: TDateField;
    QryCadastraProdutoCHEK_BOX: TStringField;
    QryCadastraProdutoPRECO_VENDA2: TFMTBCDField;
    QryCadastraProdutoMARGEM_LUCRO2: TFMTBCDField;
    QryCadastraProdutoVALIDADE_PRODUTO: TStringField;
    QryCadastraProdutoPROD_SERV: TStringField;
    QryCadastraProdutoUNIDADE_ENT: TIntegerField;
    QryCadastraProdutoDESC_UNID_ENT: TStringField;
    QryCadastraProdutoQUANT_SAIDA: TBCDField;
    QryCadastraProdutoQUANT_ENTRADA: TBCDField;
    QryCadastraProdutoESTOQUE_FRACAO: TBCDField;
    QryCadastraProdutoDATA_FABRICACAO: TDateField;
    QryCadastraProdutoFRACAO: TIntegerField;
    QryCadastraProdutoNCM_SH: TStringField;
    QryCadastraProdutoCOD_MS: TStringField;
    QryCadastraProdutoCONTOLAESTOQUE: TStringField;
    QryCadastraProdutoPRODUTOCOMPOSTO: TStringField;
    QryCadastraProdutoTIPO_ATIVIDADE: TStringField;
    QryCadastraProdutoCOD_PRODUTO_ESTOQUE: TIntegerField;
    QryCadastraProdutoCODIGO_LOCAL_ESTOQUE: TIntegerField;
    QryCadastraProdutoLISTA_ABC: TStringField;
    QryCadastraProdutoGRUPO_TRIBUTACAO: TIntegerField;
    QryCadastraProdutoCOMBUSTIVEL: TStringField;
    QryCadastraProdutoCOR: TIntegerField;
    QryCadastraProdutoENABLE_NUMSERIE: TIntegerField;
    QryCadastraProdutoID_PRODUTOS: TIntegerField;
    QryCadastraProdutoCOD_ANP: TStringField;
    QryCadastraProdutoCESTA: TStringField;
    QryCadastraProdutoML_QUANT_BEB: TFMTBCDField;
    QryCadastraProdutoUND_TRIB: TStringField;
    QryCadastraProdutoCHASSI: TStringField;
    QryCadastraProdutoCOR_DESC: TStringField;
    QryCadastraProdutoN_MOTOR: TStringField;
    QryCadastraProdutoANO_FAB: TStringField;
    QryCadastraProdutoANO_MOD_FAB: TStringField;
    QryCadastraProdutoTIPO_VEIC: TStringField;
    QryCadastraProdutoN_SERIE: TStringField;
    QryCadastraProdutoCOD_MODELO: TStringField;
    QryCadastraProdutoESPECIE_VEICULO: TStringField;
    QryCadastraProdutoCOD_COR_DENATRAN: TStringField;
    QryCadastraProdutoTIPO_COMBUSTIVEL: TStringField;
    QryCadastraProdutoVEICULO: TStringField;
    QryCadastraProdutoUSA_RENTABILIDADE: TIntegerField;
    QryCadastraProdutoUSA_SERIAL: TIntegerField;
    QryCadastraProdutoUSA_GRADE: TIntegerField;
    QryCadastraProdutoPRODUTO_PROPRIEDADE: TIntegerField;
    QryCadastraProdutoMULTIP_FRACAO: TIntegerField;
    QryCadastraProdutoDATA_REMARCACAO_VENDA: TDateField;
    QryCadastraProdutoCODORIGINAL: TStringField;
    QryCadastraProdutoDATA_ULTIMA_COMPRA: TDateField;
    QryCadastraProdutoALERTA_COPA: TStringField;
    QryCadastraProdutoALERTA_COZINHA: TStringField;
    QryCadastraProdutoANDROID_VISUALIZA: TStringField;
    QryCadastraProdutoTEMPO_PREPARO: TTimeField;
    QryCadastraProdutoSABORES: TIntegerField;
    QryCadastraProdutoCOD_PACOTE: TStringField;
    QryCadastraProdutoCEST: TStringField;
    qritemCODIGO_ITEM: TIntegerField;
    qritemCODIGO_PRODUTO: TIntegerField;
    qritemCODIGO_BARRAS: TStringField;
    qritemCODIGO_NOTA: TIntegerField;
    qritemDESCRICAO: TStringField;
    qritemNCM_SH: TStringField;
    qritemCST: TStringField;
    qritemCFOP: TStringField;
    qritemDESC_UNIDADE: TStringField;
    qritemDATA: TDateField;
    qritemDATA_VALIDADE: TDateField;
    qritemDATA_FABRICACAO: TDateField;
    qritemFRACAO: TIntegerField;
    qritemATIVO: TStringField;
    qritemCOD_EMPRESA: TIntegerField;
    qritemIMOBILZ: TStringField;
    qritemUN_FRACAO: TStringField;
    qritemITEM: TIntegerField;
    qritemCODFORNECEDOR: TIntegerField;
    qritemNUM_NOTA: TStringField;
    qritemICMS_RETIDO: TStringField;
    qritemALTERA_ITEM: TIntegerField;
    qritemQUANTIDADE: TBCDField;
    qritemVALOR_UNI: TBCDField;
    qritemVALOR_DESC: TFMTBCDField;
    qritemTOTAL_ITEM: TFMTBCDField;
    qritemBASE_ICMS: TFMTBCDField;
    qritemVALOR_ICMS: TFMTBCDField;
    qritemVALOR_IPI: TFMTBCDField;
    qritemPERC_ICMS: TFMTBCDField;
    qritemPERC_IPI: TFMTBCDField;
    qritemPRECO_VENDA: TFMTBCDField;
    qritemPRECO_VENDA2: TFMTBCDField;
    qritemBASE_ICMS_ST: TFMTBCDField;
    qritemALIC_ICMS_ST: TFMTBCDField;
    qritemVALOR_ICMS_ST: TFMTBCDField;
    qritemBASE_PIS: TFMTBCDField;
    qritemPERC_PIS: TFMTBCDField;
    qritemVALOR_PIS: TFMTBCDField;
    qritemBASE_COFINS: TFMTBCDField;
    qritemPERC_COFINS: TFMTBCDField;
    qritemVALOR_COFINS: TFMTBCDField;
    qritemBASE_IPI: TFMTBCDField;
    qritemICMS_REDUCAO: TFMTBCDField;
    qritemICMS_VALORRETIDO: TFMTBCDField;
    qritemICMS_ISENTO: TFMTBCDField;
    qritemICMS_NAOTRIBUTADO: TFMTBCDField;
    qritemICMS_OUTRAS: TFMTBCDField;
    qritemCREDITO_ICMS: TFMTBCDField;
    qritemCREDITO_ICMS_BASE: TFMTBCDField;
    qritemPMARGEM: TSingleField;
    qritemPRECO_CUSTO: TFMTBCDField;
    qritemCODLANCAMENTO: TStringField;
    qritemQUANT_FRACIONADA: TBCDField;
    qritemLOTE_MED: TStringField;
    qritemMARG_LUCRO: TFMTBCDField;
    qritemSUBTOTAL: TFMTBCDField;
    qritemDESCONTO_P: TFMTBCDField;
    qritemIPI_TIPO: TStringField;
    qritemTIPO: TIntegerField;
    qritemFRETE: TFMTBCDField;
    qritemOUTRAS: TFMTBCDField;
    qritemSEGURO: TFMTBCDField;
    qritemCLASSIFICACAO_FISCAL: TStringField;
    qritemSUB_PRODUTOS: TFMTBCDField;
    qritemITEM_ESPECIAL_VALOR: TFMTBCDField;
    qritemCHASSI: TStringField;
    qritemCOR_DESC: TStringField;
    qritemN_MOTOR: TStringField;
    qritemANO_FAB: TStringField;
    qritemANO_MOD_FAB: TStringField;
    qritemTIPO_VEIC: TStringField;
    qritemN_SERIE: TStringField;
    qritemCOD_MODELO: TStringField;
    qritemESPECIE_VEICULO: TStringField;
    qritemCOD_COR_DENATRAN: TStringField;
    qritemTIPO_COMBUSTIVEL: TStringField;
    qritemVEICULO: TStringField;
    qritemCOD_FAB: TStringField;
    qritemCOR: TIntegerField;
    qritemMARCA: TStringField;
    qritemCOD_MARCA: TIntegerField;
    qryManifesto: TFDQuery;
    qryManifestoCODIGO: TIntegerField;
    qryManifestoNUMERO: TStringField;
    qryManifestoCHAVE: TStringField;
    qryManifestoSERIE: TStringField;
    qryManifestoNOME: TStringField;
    qryManifestoCNPJ: TStringField;
    qryManifestoIE: TStringField;
    qryManifestoNSU: TStringField;
    qryManifestoDT_ENTRADA: TDateField;
    qryManifestoDT_EMISSAO: TDateField;
    qryManifestoSITUACAO: TStringField;
    qryManifestoFK_EMPRESA: TIntegerField;
    qryManifestoFK_USUARIO: TIntegerField;
    qryManifestoVALOR: TFMTBCDField;
    qryManifestoCAMINHO_XML: TStringField;
    qryManifestoXML: TMemoField;
    qryManifestoGEROU: TStringField;
    qryManifestoTTOTAL: TAggregateField;
    procedure bimportaClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bsairClick(Sender: TObject);
    procedure sair1Click(Sender: TObject);
    procedure qritem1CalcFields(DataSet: TDataSet);
    procedure blimpa_variavelClick(Sender: TObject);
    procedure econtaButtonClick(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure bexcluirClick(Sender: TObject);
    procedure bprodutosClick(Sender: TObject);
    procedure FDvGlowButton2Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimeClick(Sender: TObject);
    procedure eidEnter(Sender: TObject);
    procedure eidExit(Sender: TObject);
    procedure bgerarClick(Sender: TObject);
    procedure qritemCalcFields(DataSet: TDataSet);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eCentroButtonClick(Sender: TObject);
    procedure eCentroKeyPress(Sender: TObject; var Key: Char);
    procedure EImovelButtonClick(Sender: TObject);
    procedure EImovelKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure page_dadosChange(Sender: TObject);
    procedure qritemPRECO_VENDAChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure XDBGrid1EditButtonClick(Sender: TObject);
  private
    { Private declarations }

  public
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure CadastraFornecedor;
    Function CadastrarProduto(CodProdutoXML, CodBarras, Produto, CodFornecedor,
      Unidade, NCM, csosn, cst: string; IPI, qtdEmbalagem: double): Boolean;
    Function CodBarrasValido(cod: string): string;
    procedure VerificaProdutos;
    { Public declarations }
    function RemoveAcento(s: String): String;
  //  function lettersNotAccents(Str: String): String;
    var
    vfImportar: Boolean;

  end;

var
  frmimporta_nfe: Tfrmimporta_nfe;
  altera_custo: integer;
  continua: Boolean;
  aceita_inclusao: Boolean;
  CodigoProdutoNovo, NomeProduto, vcod_produto, vcodBarra_produto: string;
  pMargem, vPrecoVenda, vPrecoVenda2, pDFixas, MLUCRO1, MLUCRO2: double;

  preco_ant, preco_custo_ant, custo_medio_ant, ESTOQUE :Real;
  MargemLucroCalc,PrecoVendaCalc, nota: Integer;



implementation

uses ACBrNFeNotasFiscais, pcnNFe, MaskUtils, Ubibli1, principal, UFuncoes,
  ModulodeDados, ConsPlanoContas, Produtos, fornecedor_codigo,
  ModuleDados1, ConsProdutos, Centro_Custo, PesquisaImoveis,
  uDMMovimentacao, loc_centrocusto, ufrmNfeImportar, ConsMarcas;

{$R *.dfm}

var
  vfIni: TiniFile;

  vfPath, vfChave: string;

  function somenteNumero(sNum:string):string;
var s1, s2: string;
    i: Integer;
begin
     s1 := snum;
     s2 := '';
     for i := 1 to Length(s1) do
          if s1[i] in ['0'..'9'] then
               s2 := s2 + s1[i];
     result:=s2;
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
procedure Tfrmimporta_nfe.bimportaClick(Sender: TObject);
var
  x, i: integer;
  vid, vnat, vnota, vserie, vcfop, vmodelo, vemissao, vsaida, vuf,
    vcodmunicipio, vdv: string;
  vemitente, vdestinatario, vemitente_cnpj, vdestinatario_cnpj: string;
   vcod_fornecedor, vcod_produto: string;
  vcidade, vcep, vcomplemento, vtelefone1, vtelefone2, vfax, vcontato1,
    vcontato2: string;
  vcelular1, vcelular2, vemail, vhomepage, vcnpj, vie, vbanco, vagencia,
    vconta: string;
  vobs1, vobs2, vobs3, vnumero, vim, vcod_municipio_ibge, cod_fab, vibge: string;
  vnomeprod, vxBairro, vxLgr, vfantasia, vmunemitente, vmundestinatario: string;
  xvnomeprod, vcadprodnovo, vtipo, vassistencia_tecnica: integer;
  va: double;
  vdata: string;
  vfracao: double;
  dtaux : TDateTime;
  vcod_item: Integer;
begin
  vfPath:= '';
  sDateEdit1.Date := Date;
  FDvGlowButton1.Enabled := true;

  qritem.Close;
  qritem.Open;

  qritem.First;
  while not qritem.eof do
  begin
   qritem.Delete;
   qritem.Next;
   application.ProcessMessages;
  end;

  continua := true;
  bcancelar.Enabled := true;

  page_dados.ActivePageIndex := 0;
  memo1.Clear;

  if vfImportar then
  begin
  {  if not Assigned(frmNfeImportar) then
      Application.CreateForm(TfrmNfeImportar, frmNfeImportar);
    frmNfeImportar.ShowModal;
    if frmNfeImportar.vfNfePath = '' then
      Exit;
    vfPath:= frmNfeImportar.vfNfePath }
    qryManifesto.close;
    qryManifesto.ParamByName('cod').asinteger := Manifesto ;
    qryManifesto.open;
  end
  else
  begin
    OpenDialog1.Title := 'Selecione a NFE';
    OpenDialog1.DefaultExt := '*.XML';
    OpenDialog1.Filter := '*.XML';
    OpenDialog1.InitialDir:= 'C:\StartNet_Sistemas\XML-IMPORTAR';
  end;

  if vfImportar or OpenDialog1.Execute then
  begin
    { : ABRE AS AS TABELAS DE PRODUTOS }
    dm.qrproduto.Close;
    dm.qrproduto.sql.Clear;
    dm.qrproduto.sql.add('select * from PRODUTOS');
    dm.qrproduto.sql.add('Where codigo = ' + QuotedStr('-1'));
    dm.qrproduto.sql.add('order by descricao');
    dm.qrproduto.open;

    bimporta.Enabled := false;

    { : CARREGA O XML PARA O COMPONENTE }
    ACBrNFe1.NotasFiscais.Clear;

    try
      if vfImportar then
        ACBrNFe1.NotasFiscais.LoadFromString(qryManifestoXML.Value)
      else
        ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

      vfChave:= Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,4,44);
    except
      MessageDlg('XML inválido! Verifique.', mtError, [mbOK], 0);
      exit;
    end;

    { : ALIMENTA AS VARIAVEIS CONFORME XML }
    vid := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    vnat := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp;

    vnota := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF);
    vserie := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie);
    vmodelo := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo);
    vcfop := '';
    vuf := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF);

    if (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi) <> ' / /') and
      (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi) <> '30/12/1899')
    then
      vemissao := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi)
    else
      vemissao := '  /  /    ';

    if (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt) <> ' / /') and
      (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt) <> '30/12/1899')
    then
      vsaida := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt)
    else
      vsaida := vemissao;

    vcodmunicipio := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG);
    vdv := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cDV);

    vemitente := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
    vemitente_cnpj := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
    vmunemitente := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun);

    vdestinatario := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
    vdestinatario_cnpj := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
    vmundestinatario := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun);

    // tipo de nota (saida/entrada)
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF = tnSaida then
      etipo_nota.Text := 'S'
    else
      etipo_nota.Text := 'E';

    // tipo de venda (vista/prazo)
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag = ipVista then
      etipo_venda.Text := 'V'
    else
      etipo_venda.Text := 'P';

    { : ALIMENTA OS CAMPOS DO FORM COM INFORMAÇÕES DO XML }
    eid.Text := vid;
    enatureza.Text := vnat;
    enota.Text := vnota;
    emodelo.Text := vmodelo;
    eserie.Text := vserie;
    ecfop.Text := vcfop;

    enota_uf.Text := vuf;
    edata_emissao.Text := vemissao;
    edata_saida.Text := vsaida;
    ecod_municipio.Text := vcodmunicipio;
    edv.Text := vdv;
    eemitente.Text := vemitente;
    edestinatario.Text := vdestinatario;
    if Length(RemoveChar(vemitente_cnpj)) > 11  then
    ecnpj_emitente.Text := FormatMaskText('99.999.999/9999-99;0;_', (vemitente_cnpj))
    else
    ecnpj_emitente.Text := FormatMaskText('999.999.999-99;0;_', (vemitente_cnpj));

    if Length(RemoveChar(vdestinatario_cnpj)) > 11  then
    ecnpj_destinatario.Text := FormatMaskText('99.999.999/9999-99;0;_', (vdestinatario_cnpj))
    else
    ecnpj_destinatario.Text := FormatMaskText('999.999.999-99;0;_', (vdestinatario_cnpj));

    euf_emitente.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
    euf_destinatario.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;

    emunicipio_emitente.Text := vmunemitente;
    emunicipio_destinatario.Text := vmundestinatario;

    ecod_fornecedor.Text := '';
    ecod_destinatario.Text := '000001';

    if sCheckBox1.Checked = true then
    begin
     IF vdestinatario_cnpj <> '' THEN
     if not DM.SDS_Empresa.Locate('CNPJ', (ecnpj_destinatario.Text),[])=True then
     begin
     ShowMessage('NF-E não confere com o CNPJ do destinatário... Verifique !!!');
     Limpaedit(frmimporta_nfe);
     Exit;
     end;
    end; 

    { : ABRE TABELA DE FORNECEDOR LOCALIZANDO O CNPJ }
    query.Close;
    query.sql.Clear;
    query.sql.add('select * from FORNECEDORES');
    query.sql.add('where cnpj = ''' + ecnpj_emitente.Text + '''');
    query.open;

    { : SE O FORNECEDOR ESTIVER CADASTRADO INFORMA O CODIGO DO MESMO }
    if query.RecordCount > 0 then
    begin
      ecod_fornecedor.Text := query.fieldbyname('codigo').AsString;
      vcod_fornecedor := ecod_fornecedor.Text;
    end
    else
    begin { : SE O FORNECEDOR NÃO ESTIVER CADASTRADO - CADASTRA }

      CadastraFornecedor;

      ecod_fornecedor.Text := dm.SDS_FornecedoresCODIGO.AsString;
      vcod_fornecedor := ecod_fornecedor.Text;
      {
        application.messagebox('Fornecedor Não Cadastrado ou CNPJ Inválido, Verifique!','Atenção',mb_ok+MB_ICONEXCLAMATION);
        blimpa_variavelClick(frmimporta_nfe);
        qritem.Close;
        qritem.SQL.Clear;
        qritem.SQL.Add('select * from c000088');
        qritem.SQL.Add('where codigo = ''XXXXXX''');
        qritem.Open;
        bimporta.Enabled := True;
        Exit;
      }
    end;

    x := 0;

    { : VERIFICA SE A NOTA JA FOI IMPORTADA ANTES }
    query.Close;
    query.sql.Clear;
    query.sql.add('select * from NOTASFISCAIS where num_nota = ''' + enota.Text + '''');
    query.sql.add('and cod_fornecedor = ''' + ecod_fornecedor.Text + '''');
    query.sql.add('and modelo = ''' + emodelo.Text + '''');
    query.open;
    if query.RecordCount > 0 then
    begin
      application.messagebox('Nota Fiscal Já Importada! Verifique!', 'Atenção',
        mb_ok + mb_iconerror);
      // enumero.SetFocus;
      blimpa_variavelClick(frmimporta_nfe);
      qritem1.Close;
      qritem1.sql.Clear;
      qritem1.sql.add('select * from NOTASFISCAIS_ITENS');
      qritem1.sql.add('where CODIGO_ITEM  = ''-1''');
      qritem1.open;
      exit;
    end;

    { : ABRE A TABELA DO CABEÇALHO DAS NOTAS }
    qrnota.Close;
    qrnota.sql.Clear;
    qrnota.sql.add('select * from notasfiscais');
    qrnota.open;
    dtAux := (StrToDate (edata_emissao.Text));
    { : INSERE AS PRIMEIRAS INFORMAÇÕES DO XML }
    dm.ProxCod.Close;
    dm.ProxCod.SQL.Clear;
    dm.ProxCod.SQL.Add('select max(CODIGO_NOTA) as N_CODIGO FROM NOTASFISCAIS');
    DM.ProxCod.Open;


    qrnota.Insert;
    qrnotaCODIGO_NOTA.ASINTEGER     :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
    qrnotaTIPO.AsString             := COMBO_TIPO.TEXT;//'COMPRA P/ REVENDA';
    qrnotaNUM_NOTA.AsString         := enota.Text;
    qrnotaCHAVE_NFE.Value           := eid.Text;
    qrnotaDESCONTO_INCIDENTE.ASFLOAT := 0;
    qrnotaOBS7.AsString             := qrnotaCODIGO_nota.AsString;
    qrnotaSITUACAO.AsInteger        := 2;
    qrnotaBASEICMS_PRODUTOS.AsInteger := 1;
    qrnotaDATA_CADASTRO.AsDateTime  := sDateEdit1.Date;
    qrnotaDATA_EMISSAO.AsString     := edata_emissao.Text;
    qrnotaFORNECEDOR.AsString       := eemitente.Text;
    qrnotaCNPJ.Text                 := ecnpj_emitente.Text;
    qrnotaENDERECO_CLI_FORN.Text    := DM.SDS_FornecedoresENDERECO.Text;
    qrnotaie.Text                   := DM.SDS_FornecedoresIE.Text;
    qrnotaCOD_IBGE.Text             := emunicipio_emitente.Text;
    qrnotaTELEFONE.Text             := dm.SDS_FornecedoresTELEFONE.Text;
    qrnotaUF_CLIENTE_FORN.Text      := DM.SDS_FornecedoresESTADO.Text;
    qrnotaCIDADE_CLIENTE_FORN.Text  := dm.SDS_FornecedoresCIDADE.Text;
    qrnotaTIPO_PESSOA.Text          := DM.SDS_FornecedoresTP.Text;
    qrnotaCEP_CLIENTE_FORN.Text     := removechar(dm.SDS_FornecedoresCEP.Text);
    qrnotaBAIRRO_CLIENTE_FORN.Text  := DM.SDS_FornecedoresBAIRRO.Text;
    qrnotaEND_NUM_CLIENTE.text      := DM.SDS_FornecedoresNUMERO.Text;
    qrnotaUSUARIO_CADASTRO.Text     := FormPrincipal.UserLogado;
    qrnotaPROTOCOLO_NFE.text        := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
    qrnotames.AsString              := FormatDateTime('mm',dtAux);
    qrnotaano.AsString              := FormatDateTime('yyyy',dtAux);
    qrnotaEMITENTE.TEXT             := '1';



    { : ABRE A TABELA DE ITENS DA NOTA COM FILTRO DA NOTA SELECIONADA }
    qritem1.Close;
    qritem1.sql.Clear;
    qritem1.sql.add('select * from NOTASFISCAIS_ITENS');
    qritem1.sql.add('where codigo_nota = ''' + qrnota.fieldbyname('codigo_nota').AsString + '''');
    qritem1.sql.add('and num_nota = ''' + enota.Text + '''');
    qritem1.sql.add('order by item');
    qritem1.open;

    qrpagar.Close;
    qrpagar.sql.Clear;
    qrpagar.sql.add('DELETE FROM Contas_apagar WHERE CODNOTA = ''' + qrnota.fieldbyname('codigo_nota').AsString + '''');
    qrpagar.execsql;

    {: QUANTIDA DE ITENS DA NOTA }
    eitems.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count;

    application.ProcessMessages;

    {: ZERA A BARRA DE PROGRESSO }
    bar.PartsComplete := 0;
    bar.TotalParts := eitems.AsInteger;

      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(CODIGO) as N_CODIGO from produtos');
      DM.ProxCod.Open;

      vcod_item := (DM.ProxCodN_CODIGO.ASINTEGER);

    { : LOOP NO ITENS DO XML }
    for x := 0 to eitems.AsInteger - 1 do
    begin
      // frmprincipal.Aguarde('Aguarde', 'Importando Itens ' + IntToStr(x + 1) +
      // '/' + IntToStr(eitems.AsInteger), false, true, 0);

      CodigoProdutoNovo := '';
      vcod_produto := '';
      NomeProduto := '';
      vcodBarra_produto := '';
      vPrecoVenda := 0;
      vPrecoVenda2 := 0;

      { : VERIFICA SE EXISTE REFERENCIA DO PRODUTO DO XML AO FORNECEDOR }
      qrfornecedor_codigo.Close;
      qrfornecedor_codigo.sql.Clear;
      qrfornecedor_codigo.sql.add('select * from fornecedor_codigo');
      qrfornecedor_codigo.sql.add('where codfornecedor = :forn ');
      qrfornecedor_codigo.sql.add('and codigo =:cod ');
      qrfornecedor_codigo.Parambyname('forn').AsString :=   ecod_fornecedor.Text;
      qrfornecedor_codigo.Parambyname('COD').AsString  :=   ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd;
      qrfornecedor_codigo.open;


      { : SE TIVER REFERENCIADO AO FORNECEDOR PELO COD XML }
      if qrfornecedor_codigo.RecordCount > 0 then
      begin
        vcod_produto := qrfornecedor_codigoCODPRODUTO.AsString;

        { : TENTA LOCALIZAR NO CADASTRO DE PRODUTOS - produtos }
        query.Close;
        query.sql.Clear;
        query.sql.add('SELECT P.CODIGO, P.MARGEM_LUCRO, P.MARGEM_LUCRO2, p.Preco_Venda, p.preco_venda2, p.QTD_CAIXA, p.referencia, p.MULTIP_FRACAO, P.CODIGO_BARRAS, P.DESCRICAO, P.ICMS, G.*, P.ESTOQUE, P.ESTOQUE_FRACAO');
        query.sql.add('FROM PRODUTOS P');
        query.sql.add('INNER JOIN grupo_tributacao G');
        query.sql.add('ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)');
        query.sql.add('where codigo = :cod ');
        query.Parambyname('COD').AsString :=   vcod_produto;
        query.open;

        { : Se Encontrou o produto no Cadastro }
        if query.RecordCount > 0 then
        begin
          vcod_produto := query.fieldbyname('codigo').AsString;
          // Pega o codigo do produto no estoque
          NomeProduto       := query.fieldbyname('descricao').AsString;
          vcodBarra_produto := query.fieldbyname('Codigo_Barras').AsString;
          vPrecoVenda       := query.fieldbyname('Preco_Venda').ASFLOAT;
          vPrecoVenda2      := query.fieldbyname('Preco_Venda2').ASFLOAT;
          cod_fab           := query.fieldbyname('referencia').AsString;
          MLUCRO1           := query.fieldbyname('MARGEM_LUCRO').ASFLOAT;
          MLUCRO2           := query.fieldbyname('MARGEM_LUCRO2').ASFLOAT;

          { : VERIFICA A FRAÇÃO NO CADASTRO - C000025 }


          if query.fieldbyname('MULTIP_FRACAO').ASFLOAT > 0 then
          begin
            vfracao := query.fieldbyname('MULTIP_FRACAO').ASFLOAT ;
          end else
          if query.fieldbyname('QTD_CAIXA').ASFLOAT > 0 then
          begin
            vfracao := query.fieldbyname('QTD_CAIXA').ASFLOAT /100;
          end else
           begin
            vfracao := 1;
           end;
        end;
      end
      else { : Se nao tiver associado ao fornecedor }
      begin
         if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.chassi > '' then
         begin
          vcod_produto := '';
          vfracao := 1;
          query.Close;
          query.sql.Clear;
          query.sql.add('SELECT P.CODIGO, P.MARGEM_LUCRO, P.MARGEM_LUCRO2,  p.Preco_Venda, p.preco_venda2, p.QTD_CAIXA, p.referencia, p.MULTIP_FRACAO,  P.CODIGO_BARRAS, P.DESCRICAO, P.ICMS, G.*, P.ESTOQUE, P.ESTOQUE_FRACAO');
          query.sql.add('FROM PRODUTOS P');
          query.sql.add('INNER JOIN grupo_tributacao G');
          query.sql.add('ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)');
          query.sql.add('where CHASSI = ''' + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.chassi + '''');
          query.open;
          //: Se localizou o produto pelo cod barra na tag cod produto do xml
          if query.RecordCount > 0 then
          begin
            vcod_produto := query.fieldbyname('codigo').AsString;
            NomeProduto := query.fieldbyname('descricao').AsString;
            vcodBarra_produto := query.fieldbyname('Codigo_Barras').AsString;
            vPrecoVenda := query.fieldbyname('Preco_Venda').ASFLOAT;
            vPrecoVenda2      := query.fieldbyname('Preco_Venda2').ASFLOAT;
            cod_fab           := query.fieldbyname('referencia').AsString;
            MLUCRO1           := query.fieldbyname('MARGEM_LUCRO').ASFLOAT;
            MLUCRO2           := query.fieldbyname('MARGEM_LUCRO2').ASFLOAT;
            {if query.fieldbyname('MULTIP_FRACAO').ASFLOAT > 0 then
              vfracao := query.fieldbyname('MULTIP_FRACAO').ASFLOAT
            else
              vfracao := 1;  }
          if query.fieldbyname('MULTIP_FRACAO').ASFLOAT > 0 then
          begin
            vfracao := query.fieldbyname('MULTIP_FRACAO').ASFLOAT ;
          end else
          if query.fieldbyname('QTD_CAIXA').ASFLOAT > 0 then  
          begin
            vfracao := query.fieldbyname('QTD_CAIXA').ASFLOAT /100;
          end else
           begin
            vfracao := 1;
           end;
          end;
          end;
        {  end
          else
          begin
            // inicio
            vcod_item := vcod_item + 1;
           vcodBarra_produto := '978100' + formprincipal.zerarcodigo(IntToStr(vcod_item), 6);
           vcodBarra_produto := vcodBarra_produto + formprincipal.CalculaDigEAN13(somenteNumero(vcodBarra_produto));
          end;  }

        { : se tiver codigo de barra }
        if (somenteNumero(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN) <> '') then
        begin
          query.Close;
          query.sql.Clear;
          query.sql.add('SELECT P.CODIGO, P.MARGEM_LUCRO, P.MARGEM_LUCRO2,  p.Preco_Venda, p.preco_venda2, p.QTD_CAIXA, p.referencia, p.MULTIP_FRACAO, P.CODIGO_BARRAS, P.DESCRICAO, P.ICMS, G.*, P.ESTOQUE, P.ESTOQUE_FRACAO');
          query.sql.add('FROM PRODUTOS P');
          query.sql.add('INNER JOIN grupo_tributacao G');
          query.sql.add('ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)');
          query.sql.add('where codigo_barras = ''' + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN + '''');
          query.open;


          { : se Localizou o produto pelo cod barra do xml }
          if query.RecordCount > 0 then
          begin
            vcod_produto      := query.fieldbyname('codigo').AsString;
            NomeProduto       := query.fieldbyname('descricao').AsString;
            vcodBarra_produto := query.fieldbyname('Codigo_Barras').AsString;
            vPrecoVenda       := query.fieldbyname('Preco_Venda').ASFLOAT;
            vPrecoVenda2      := query.fieldbyname('Preco_Venda2').ASFLOAT;
            cod_fab           := query.fieldbyname('referencia').AsString;
            MLUCRO1           := query.fieldbyname('MARGEM_LUCRO').ASFLOAT;
            MLUCRO2           := query.fieldbyname('MARGEM_LUCRO2').ASFLOAT;

          if query.fieldbyname('MULTIP_FRACAO').ASFLOAT > 0 then
          begin
            vfracao := query.fieldbyname('MULTIP_FRACAO').ASFLOAT ;
          end else
          if query.fieldbyname('QTD_CAIXA').ASFLOAT > 0 then
          begin
            vfracao := query.fieldbyname('QTD_CAIXA').ASFLOAT /100;
          end else
           begin
            vfracao := 1;
           end;
          end;
          end
          else
          begin
            // inicio
          { IF query.Eof then
           BEGIN }
           vcod_item := vcod_item + 1;
         //  end;
           vcodBarra_produto := '978100' + formprincipal.zerarcodigo(IntToStr(vcod_item), 6);
           vcodBarra_produto := vcodBarra_produto + formprincipal.CalculaDigEAN13(somenteNumero(vcodBarra_produto));
       //   end;
          end; { : FIM - Se nao tiver cod Barras e nao tiver referenciado }
       end;

      // INSERE OS ITENS NO LANCAMENTO
      qritem.Insert;
      qritemCODIGO_ITEM.AsInteger := vcod_item;
      qritemITEM.AsString := formprincipal.zerarcodigo(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.nItem), 3);
      qritemCODIGO_NOTA.AsString := qrnota.fieldbyname('codigo_nota').AsString;
      qritemCODIGO_PRODUTO.AsString := vcod_produto;
      if DM.SDS_CONFIGURACOESIMP_CODIGO_FORNECEDOR.Text = 'S' then
      qritemCOD_FAB.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd
      else
      //if cod_fab > '' then
      qritemCOD_FAB.AsString := cod_fab;

     // qritemMARCA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.E

      if Length(CodBarrasValido(CodigoProdutoNovo)) > 0 then
        qritemCODIGO_BARRAS.AsString := CodBarrasValido(CodigoProdutoNovo)
      else
      if Length(CodBarrasValido(vcod_produto)) > 0 then
        qritemCODIGO_BARRAS.AsString := CodBarrasValido(vcod_produto)
      else
      if Length(vcodBarra_produto) > 0 then
        qritemCODIGO_BARRAS.AsString := vcodBarra_produto
      else
      if Length(CodBarrasValido(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd)) > 0 then
        qritemCODIGO_BARRAS.AsString := CodBarrasValido(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd);

      if (Length(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN) > 0)
        AND (Length(vcodBarra_produto) = 0) then
        qritemCODIGO_BARRAS.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN;

      { : Coloca o nome do produto do cadastro caso esteja cadastrado }
      if Length(NomeProduto) > 0 then
      begin
        qritemDESCRICAO.AsString   := NomeProduto;
     end else
     begin
        Edit1.Text                 :=    ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.xProd;
        qritemDESCRICAO.AsString   := Edit1.Text;
      end;
      qritemCODLANCAMENTO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd;
      qritemDESC_UNIDADE.AsString  := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.uTrib;
      qritemUN_FRACAO.AsString     := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.uTrib, 1, 2);

      if vfracao <= 0 then
        vfracao := 1;

      IF (qritemDESC_UNIDADE.AsString = 'UN') or (qritemDESC_UNIDADE.AsString = 'PT') OR (qritemDESC_UNIDADE.AsString = 'KG') or (qritemDESC_UNIDADE.AsString = 'LT') OR (qritemDESC_UNIDADE.AsString = 'UND') OR (qritemDESC_UNIDADE.AsString = 'UNID') then
       qritemFRACAO.ASFLOAT := 1
      ELSE
      qritemFRACAO.ASFLOAT := vfracao;

      // CST
      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst00
      then
        qritemCST.AsString := '000'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst10
      then
        qritemCST.AsString := '010'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst20
      then
        qritemCST.AsString := '020'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst30
      then
        qritemCST.AsString := '030'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst40
      then
        qritemCST.AsString := '040'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst41
      then
        qritemCST.AsString := '041'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst50
      then
        qritemCST.AsString := '050'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst51
      then
        qritemCST.AsString := '051'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst60
      then
        qritemCST.AsString := '060'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst70
      then
        qritemCST.AsString := '070'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst90
      then
        qritemCST.AsString := '090'
      else
        qritemCST.AsString := '';

      // CFOP
      if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5405') or
        (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5403')
      then
        qritemCFOP.AsString := '1403'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5101') or
        (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5102')
      then
        qritemCFOP.AsString := '1102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6101') or
        (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6102')
      then
        qritemCFOP.AsString := '2102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6403')
      then
        qritemCFOP.AsString := '2403'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6910') or
        (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6911')
      then
        qritemCFOP.AsString := '2102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5910') or
        (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5911')
      then
        qritemCFOP.AsString := '1102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5401') then
        qritemCFOP.AsString := '1401'
      else
       if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5656') or
       (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5655') then
        qritemCFOP.AsString := '1652'
       else
       if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6656') or
       (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6655') then
        qritemCFOP.AsString := '2652'
       else
       if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6401') then
        qritemCFOP.AsString := '2401'
      else
       IF query.RecordCount > 0 then
       BEGIN
       if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP < '6000') then
        qritemCFOP.AsString := query.fieldbyname('CFOP_EST_COMPRA').AsString
        else
        if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP > '6000') then
        qritemCFOP.AsString := query.fieldbyname('cfop_inter_compra').AsString ;
       end;
        //ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP; // ''

      // qritemCFOP.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP;
      if ecfop.Text = '' then
      begin
        ecfop.Text := qritemCFOP.AsString;
      end;

      qritemQUANTIDADE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.qCom;

      qritemSUBTOTAL.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vProd;
      qritemVALOR_DESC.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vDesc;
      qritemTOTAL_ITEM.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vProd - ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vDesc;

      qritemVALOR_UNI.ASFLOAT := qritemTOTAL_ITEM.ASFLOAT / qritemQUANTIDADE.ASFLOAT;

      qritemDESCONTO_P.ASFLOAT := 0;
      qritemFRETE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vFrete;
      qritemOUTRAS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vOutro;
      qritemSEGURO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vSeg;

      qritemBASE_ICMS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vBC;
      qritemICMS_RETIDO.AsString := 'N';
      qritemPERC_ICMS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pICMS;

      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pRedBC > 0
      then
        qritemICMS_REDUCAO.ASFLOAT := 7
      else
        qritemICMS_REDUCAO.ASFLOAT := 0;

      // qritemICMS_REDUCAO.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pRedBCST;

      qritemVALOR_ICMS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vICMS;;
      qritemICMS_VALORRETIDO.ASFLOAT := 0;
      qritemICMS_ISENTO.ASFLOAT := 0;
      qritemICMS_NAOTRIBUTADO.ASFLOAT := 0;

      qritemALIC_ICMS_ST.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pMVAST;
      qritemBASE_ICMS_ST.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vBCST;
      qritemVALOR_ICMS_ST.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vICMSST;
      qritemSUB_PRODUTOS.ASFLOAT := 0;

      qritemIPI_TIPO.ASFLOAT := 0;
      qritemPERC_IPI.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.IPI.pIPI;
      qritemBASE_IPI.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.IPI.vBC;
      qritemVALOR_IPI.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.IPI.vIPI;

      qritemDATA.AsDateTime := date;
      qritemTIPO.AsInteger := 0;
      qritemNUM_NOTA.AsString := enota.Text;
      qritemNCM_SH.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.NCM;

      qritemCLASSIFICACAO_FISCAL.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.NCM;
      qritemSUB_PRODUTOS.AsString := '';
      qritemCODFORNECEDOR.AsString := ecod_fornecedor.Text;
      qritemITEM_ESPECIAL_VALOR.ASFLOAT := 0;
      qritemALTERA_ITEM.AsInteger := 0;

      qritemCREDITO_ICMS.ASFLOAT := 0;
      qritemBASE_PIS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.PIS.vBC;
      qritemVALOR_PIS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.PIS.vPIS;
      qritemBASE_COFINS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.COFINS.vBC;
      qritemVALOR_COFINS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.COFINS.vCOFINS;

       memo1.lines.add('MEDICAMENTOS ----------------------------------');

      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Count > 0 then
      begin
        qritemLOTE_MED.AsString := ACBrNFe1.NotasFiscais.Items[0]
          .NFe.Det.Items[x].Prod.med.Items[0].nLote;
        qritemDATA_VALIDADE.AsString :=
          DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
          .Prod.med.Items[0].dVal);
         qritemDATA_FABRICACAO.AsString :=
          DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
          [x].Prod.med.Items[0].dFab);

        memo1.lines.add(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
          .Prod.med.Items[0].nLote);
        memo1.lines.add(FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
          [x].Prod.med.Items[0].qLote));
        memo1.lines.add(FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
          [x].Prod.med.Items[0].vPMC));
        memo1.lines.add(DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
          [x].Prod.med.Items[0].dFab));
        memo1.lines.add(DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
          [x].Prod.med.Items[0].dFab));
      end
      else
      begin
        qritemLOTE_MED.AsString := '';
        qritemDATA_VALIDADE.AsString := '';
      end;

      { : PREÇOS }
    {  qritemPRECO_CUSTO.ASFLOAT :=
        CalculaPreco((qritemTOTAL_ITEM.ASFLOAT + qritemFRETE.ASFLOAT +
        qritemSEGURO.ASFLOAT + qritemOUTRAS.ASFLOAT + qritemVALOR_IPI.ASFLOAT) /
        (qritemQUANTIDADE.ASFLOAT) / qritemFRACAO.ASFLOAT, pDFixas);  }

       qritemPRECO_CUSTO.AsCurrency := qritemVALOR_UNI.AsCurrency / vfracao;
      {
       qritemPRECO_CUSTO.AsCurrency := (qritemVALOR_UNI.AsCurrency + qritemFRETE.AsCurrency + qritemSEGURO.AsCurrency +
       qritemOUTRAS.AsCurrency + qritemVALOR_IPI.AsCurrency) / qritemFRACAO.AsCurrency ; }
      { FDicionar no preço de custo o valor do icms ou o % do simples }
      // Temp

      if MLUCRO1 > 0 THEN
       qritemMARG_LUCRO.AsCurrency := MLUCRO1
       ELSE
      qritemMARG_LUCRO.AsCurrency := DM.SDS_CONFIGURACOESMARGEM_LUCRO.AsCurrency;

      IF MLUCRO2 >0 THEN
       qritemPMARGEM.AsCurrency := MLUCRO2
       ELSE
       qritemPMARGEM.AsCurrency := DM.SDS_CONFIGURACOESMARGEM_LUCRO.AsCurrency;
       // (((qritemPRECO_VENDA.ASFLOAT - qritemPRECO_CUSTO.ASFLOAT) / qritemPRECO_CUSTO.ASFLOAT)) * 100;

      if vPrecoVenda > 0 then
        qritemPRECO_VENDA.AsCurrency := vPrecoVenda
      else
        qritemPRECO_VENDA.AsCurrency := (qritemPRECO_CUSTO.AsCurrency / qritemFRACAO.AsCurrency * qritemMARG_LUCRO.AsCurrency) /100 + qritemPRECO_CUSTO.AsCurrency;

       if vPrecoVenda2 > 0 then
        qritemPRECO_VENDA2.AsCurrency := vPrecoVenda2
      else
        qritemPRECO_VENDA2.AsCurrency := (qritemPRECO_CUSTO.AsCurrency / qritemFRACAO.AsCurrency * qritemPMARGEM.AsCurrency) /100 + qritemPRECO_CUSTO.AsCurrency;

      { : PREÇOS }
      {
        memo1.lines.add('ARMAS----------------------------------');
        memo1.lines.add(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].descr);
        memo1.lines.add(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].nSerie));
        memo1.lines.add(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].nCano));
      }

      // memo1.lines.add('CONBUSTIVEIS----------------------------------');

       memo1.lines.add('veiculos----------------------------------');

       if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.chassi > '' then
       begin
        qritemCor.AsInteger            := StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.cCor);
        qritemCHASSI.AsString          := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.chassi;
        qritemCOR_DESC.AsString        := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.xCor;
        qritemN_MOTOR.AsString         := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.nMotor;
        qritemANO_FAB.AsString         := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.anoFab);
        qritemANO_MOD_FAB.AsString     := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.anoMod);
        qritemTIPO_VEIC.AsString       := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.tpVeic);
        qritemN_SERIE.AsString         := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.nSerie;
        qritemCOD_MODELO.AsString      := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.cMod;
        qritemESPECIE_VEICULO.AsString := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.espVeic);
        qritemCOD_COR_DENATRAN.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.cCorDENATRAN;
        qritemTIPO_COMBUSTIVEL.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.veicProd.tpComb;
        qritemVEICULO.AsString          := 'S';
       // qritemCHASSI.AsString           := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]prod.veicProd.chassi;

        qrnota.edit;
        qrnotaCFOP_NOTA.Text           := '1912';
        qritemCFOP.Text                := '1912';
        ecfop.Text                     := '1912';
        end;

       bar.PartsComplete := bar.PartsComplete + 1;
       lstatus.caption := '[ ' + formprincipal.zerarcodigo
        (IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.nItem),
        3) + ' ] ' + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN +
        ' | ' + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.xProd;
      application.ProcessMessages;

      if not continua then
        break;

    end; { : FIM - loop FOR }
    // formprincipal.FechaAguarde;

    qritem.First;

    if not continua then
    begin

      bar.Percent := 0;
      lstatus.caption := '...';

      qrnota.Close;
      qrnota.sql.Clear;
      qrnota.sql.add('select * from notasfiscais');
      qrnota.sql.add('where codigo_nota = ''-1''');
      qrnota.open;

      qritem1.Close;
      qritem1.sql.Clear;
      qritem1.sql.add('select * from notasfiscais_itens');
      qritem1.sql.add('where codigo_item = ''-1''');
      qritem1.open;

      blimpa_variavelClick(frmimporta_nfe);

      exit;
    end;

    bar.Percent := 0;
    lstatus.caption := '';

    qritem.Refresh;

    ebase_calculo.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
    evalor_icms.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
    ebase_substituicao.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST;
    evalor_substituicao.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;

    efrete.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
    eseguro.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
    eoutras_despesas.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
    evalor_ipi.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;

    evalor_isento.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII;
    evalor_pis.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
    evalor_cofins.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;

    edesconto.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
    evalor_produtos.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
    evalor_nota.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;

    // memo1.lines.add('TRANSPORTADORA----------------------------------');
    qrnotaTRANSP_NOME.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome;
    qrnotaTRANSP_IE.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE;
    qrnotaTRANSP_CNPJ.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF;
    qrnotaTRANSP_ENDERECO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder;

    qrnotaTRANSP_NUMERO.AsString := '';
    qrnotaTRANSP_CIDADE.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun;
    qrnotaTRANSP_UF.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF;

    qrnotaTRANSP_PLACA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.veicTransp.placa;
    qrnotaTRANSP_PLACAUF.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.veicTransp.UF;

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete = mfContaEmitente then
      qrnotaEMITENTE.AsString := '1' // - EMITENTE
    else
      qrnotaEMITENTE.AsString := '2'; // - DESTINATÁRIO

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Count > 0 then
    begin
      qrnotaTRANSP_ESPECIE.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].esp;
      qrnotaTRANSP_MARCA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].marca;

      qrnotaTRANSP_QTDE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol;
      qrnotaTRANSP_PESOLIQUIDO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL;
      qrnotaTRANSP_PESOBRUTO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB;
    end;

    memo1.lines.add('VOLUME----------------------------------');
    memo1.lines.add('REBOQUE----------------------------------');

    qrpagar.Close;
    qrpagar.sql.Clear;
    qrpagar.sql.add('SELECT * FROM CONTAS_APAGAR WHERE CODNOTA = ''' + qrnotaCODIGO_NOTA.AsString +
      ''' ORDER BY DATA_VENCIMENTO');
    qrpagar.open;

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count > 0 then
    begin
      econta.Text := dm.SDS_CONFIGURACOESPLANO_DUPLICATA_NFE.Text;
      qrnotaconta.AsString := 'FORNECEDORES';
      qrnotaOBS5.AsString := dm.SDS_CONFIGURACOESPLANO_DUPLICATA_NFE.Text;
      // dm.qrconfigPLANO_CONTA60.AsString;
      // '000019';
      qrnotaOBS6.AsString := 'Duplicata a Pagar';
      qrnotaOBS8.AsString := Trim(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count));

      bar.PartsComplete := 0;
      bar.TotalParts := eitems.AsInteger;

      for x := 0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count - 1 do
      begin
             dm.ProxCod.Close;
        dm.ProxCod.SQL.Clear;
        dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CONTAS_APAGAR');
        DM.ProxCod.Open;

        qrpagar.Insert;
        qrpagarCODIGO.AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
        qrpagarDOCUMENTO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].nDup;
        qrpagarESPECIE.AsString := 'DUPLICATA';
        qrpagarHISTORICO.AsString := 'Duplicata a Pagar';
        qrpagarDATA_VENCIMENTO.AsDateTime := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].dVenc;
        qrpagarVALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].vDup;
        qrpagarVALORPAGO.ASFLOAT := 0;
        qrpagarDATA_EMISSAO.AsDateTime := date;
        qrpagarDATA_PAGAMENTO.AsString := '';
        qrpagarCODCONTA.AsString := dm.sds_configuracoesPLANO_DUPLICATA_NFE.AsString;
        qrpagarCODFORNECEDOR.AsString := ecod_fornecedor.Text;
        qrpagarLIQUIDO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].vDup;
        qrpagarDESCONTO.ASFLOAT := 0;
        qrpagarACRESCIMO.ASFLOAT := 0;
        qrpagarNOTAFISCAL.AsString := enota.Text;
        qrpagarC.AsString := '';
        qrpagarE.AsString := '';
        qrpagarFILTRO.AsInteger := 0;
        qrpagarSITUACAO.AsInteger := 1;
        qrpagarCODNOTA.AsString := qrnotaCODIGO_NOTA.AsString;
        qrpagarMOVIMENTO.AsInteger := 0;
        qrpagarCODCAIXA.AsString := '99';
        QRPAGARCOD_IMOVEL.TEXT := EImovel.Text;
        qrpagarCOD_CENTRO_CUSTO.TEXT := eCentro.Text;
        qrpagar.Post;
      end;
    end;
    bgravar.Enabled := true;
    bimporta.Enabled := true;
    bcancelar.Enabled := false;
    lstatus.caption := '...';
  end;

end;

procedure Tfrmimporta_nfe.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.lines.SaveToFile(ExtractFileDir(application.ExeName) + 'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName) + 'temp.xml');
end;

procedure Tfrmimporta_nfe.bgravarClick(Sender: TObject);
label inicia;
var
    vcodbarra: string;
    vcod_modelo: integer;
    vaceito, vnaoaceito: integer;
    dtaux : TDateTime;
    vcod_item1, vcod_item2  :Integer;
    estoque, custo, MARGEM, VENDA, NOVO_CUSTO: REAL;
    vpQuery: TFDQuery;
begin
  vpQuery:= nil;
  dtAux := (StrToDate (edata_emissao.Text));
  // formprincipal.Aguarde('Aguarde', 'Faturando nota, efetuando lançamentos....',
  // false, true, 0);

  { : PREENCHE CONTAS A PAGAR CASO HAJA NO XML }
  if qrpagar.RecordCount > 0 then
  begin
    if econta.Text = '' then
    begin

      dm.sds_CONFIGuracoes.open;
      if dm.sds_configuracoesPLANO_DUPLICATA_NFE.AsString <> '' then
        econta.Text := dm.sds_configuracoesPLANO_DUPLICATA_NFE.AsString
      else
      begin
        application.messagebox('Número da Conta Não Informada, Verifique!',
          'Atenção', mb_ok + MB_ICONEXCLAMATION);
        page_dados.ActivePageIndex := 2;
        econta.SetFocus;
        // formprincipal.FechaAguarde;
        exit;
      end;
    end;
  end;

    if etipo_venda.Text = 'P' THEN
    BEGIN
    qrnotaTP.Text := 'C';
    qrnotaVALOR_PRAZO.Value        := evalor_nota.Value;
    end else
    BEGIN
    qrnotaTP.Text := 'A';
    qrnotaVALOR_AVISTA.Value        := evalor_nota.value;
    end;
    
  qrfiscal_modelo.Close;
  qrfiscal_modelo.sql.Clear;
  qrfiscal_modelo.sql.add
    ('select * from COD_DOCUMENTOS_FISCAIS where CODIGO = ''55''');
  qrfiscal_modelo.open;

  if qrfiscal_modelo.RecordCount = 0 then
  begin
    if application.messagebox
      ('Modelo 55 Nota Fiscal Eletrônica Não Cadastrado, Deseja Cria-lo?',
      'Aviso', mb_yesno + MB_ICONWARNING) = idyes then
    begin
      query.Close;
      query.sql.Clear;
      query.sql.add('select * from COD_DOCUMENTOS_FISCAIS');
      query.sql.add('order by codigo');
      query.open;
      if query.RecordCount > 0 then
      begin
        query.Last;
        vcod_modelo := query.fieldbyname('codigo').AsInteger + 1;
        query.Append;
        query.fieldbyname('codigo').AsString := '55';
          //formprincipal.zerarcodigo(IntToStr(vcod_modelo), 2);
        //query.fieldbyname('modelo').AsString := 'Nota Fiscal Eletronica';
        //query.fieldbyname('sigla').AsString := 'NFE';
        query.fieldbyname('DESCRICAO').AsString := 'Nota Fiscal Eletronica';
       // query.fieldbyname('tipo_registro').AsString := '50';
        query.Post;
        dm.coneccao.commit;
      end;
    end
    else
    begin
      ecfop.SetFocus;
      // formprincipal.FechaAguarde;
      exit;
    end;
  end;

  { : ABRE A TABELA DE MOVIMENTAÇÃO DE PRODUTOS }
 { qrproduto_mov.Close;
  qrproduto_mov.sql.Clear;
  qrproduto_mov.sql.add('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
  qrproduto_mov.open; }

  qritem.First;
  while not qritem.eof do
  begin

    if Length(qritemCODIGO_BARRAS.AsString) = 0 then
    begin
      MessageBeep(64);
      application.messagebox('Atenção!' + #13#10 +
        'Existe Produto que precisa ser localizado para referenciamento ao cadastro, VERIFIQUE.',
        'Importação de XML', mb_ok + MB_ICONWARNING);
      // formprincipal.Mensagem('Atenção!' + #13#10 +
      // 'Existe Produto que precisa ser localizado para referenciamento ao cadastro, VERIFIQUE.',
      // 'Importação de XML');
      // formprincipal.FechaAguarde;
      abort;
    end;

    if formprincipal.isFloat(qritemPRECO_VENDA.AsString) <= 0 then
    begin
      MessageBeep(64);
      application.messagebox('Atenção!' + #13#10 +
        'Produto Sem Preço de Venda, VERIFIQUE.', 'Importação de XML',
        mb_ok + MB_ICONWARNING);
      // formprincipal.Mensagem('Atenção!' + #13#10 +
      // 'Produto Sem Preço de Venda, VERIFIQUE.', 'Importação de XML');
      // formprincipal.FechaAguarde;
      abort;
    end;

  {   if formprincipal.isFloat(qritemMARG_LUCRO.AsString) <= 0 then
      begin
      MessageBeep(64);
      application.messagebox('Atenção!' + #13#10 +
      'Produto Sem Margem de Lucro, VERIFIQUE.', 'Importação de XML',
      mb_ok + MB_ICONWARNING);
      // formprincipal.Mensagem('Atenção!' + #13#10 +
      // 'Produto Sem Margem de Lucro, VERIFIQUE.', 'Importação de XML');
      // formprincipal.FechaAguarde;
      abort;
      end;   }

    qritem.next;
    application.ProcessMessages;
  end;

  if qritem.RecordCount > 0 then
  begin

   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS');
   DM.ProxCod.Open;

   vcod_item1 := (DM.ProxCodN_CODIGO.ASINTEGER);
   vcod_item2 := (DM.ProxCodN_CODIGO.ASINTEGER);

    qritem.First;

    while not qritem.eof do
    begin
      inicia:
      { : INICIA VERIFICAÇÃO SE O PRODUTO ESTÁ PRONTO PARA RECEBER MOVIMENTAÇÃO - HISTORICO DE COMPRAS  }
      if qritemCODIGO_PRODUTO.AsString <> '' then
      begin
        query.Close;
        query.sql.Clear;
        query.sql.add('select * from PRODUTOS');
        query.sql.add('where codigo = ''' + qritemCODIGO_PRODUTO.AsString + '''');
        query.open;

        if query.RecordCount > 0 then
          vcodbarra := query.fieldbyname('CODIGO_BARRAS').AsString
        else
        begin //{ : CADASTRA O PRODUTO E ATUALIZA O CODPRODUTO NO QRITEM
         { CadastrarProduto(qritemCODLANCAMENTO.AsString,
            qritemCODIGO_BARRAS.AsString, qritemDESCRICAO.AsString,
            qritemCODFORNECEDOR.AsString, qritemDESC_UNIDADE.AsString,
            '00', '400', '041', qritemPERC_IPI.ASFLOAT, qritemFRACAO.ASFLOAT); }

             // QryCadastraProduto.Close;
             // QryCadastraProduto.open;

              dm.ProxCod.Close;
              dm.ProxCod.SQL.Clear;
              dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS');
              DM.ProxCod.Open;
              vcod_item2 := (DM.ProxCodN_CODIGO.ASINTEGER);

              vcodBarra_produto := qritemCODIGO_BARRAS.AsString;

             vcod_item2 := vcod_item2 + 1;
             //  Edit3.Text := IntToStr(vcod_item2);
            // vcodBarra_produto := '978100' + formprincipal.zerarcodigo(IntToStr(vcod_item2), 6);
            // vcodBarra_produto := vcodBarra_produto + formprincipal.CalculaDigEAN13(somenteNumero(vcodBarra_produto));

         {   QryCadastraProduto.Insert;
            QryCadastraProdutoCODIGO.AsInteger           := vcod_item2; //formprincipal.codifica('000025');
            QryCadastraProdutoCODORIGINAL.TEXT           := qritemCODLANCAMENTO.AsString;
           { if qritemCODIGO_BARRAS.Text = '' then
            QryCadastraProdutoCODIGO_BARRAS.TEXT         := vcodBarra_produto
            else}
          {  QryCadastraProdutoCODIGO_BARRAS.TEXT         := qritemCODIGO_BARRAS.Text;
            QryCadastraProdutodescricao.Text             := qritemDESCRICAO.AsString ;
            QryCadastraProdutoCODIGO_FORNECEDORES.text   := qritemCODFORNECEDOR.AsString;
            QryCadastraProdutoDESC_UNIDADE.TEXT          := qritemUN_FRACAO.AsString ;
            QryCadastraProdutoDESC_UNID_ENT.TEXT         := qritemDESC_UNIDADE.AsString;
            QryCadastraProdutoNCM_SH.Text                := qritemNCM_SH.AsString;
            QryCadastraProdutoTIPO_ATIVIDADE.text        := '00';
            QryCadastraProdutoBALANCA.ASSTRING           := 'N';
            QryCadastraProdutoUSA_SERIAL.AsInteger       := 0;
            QryCadastraProdutoUSA_GRADE.AsString         := '0';
            QryCadastraProdutoCODIGO_LOCAL_ESTOQUE.AsInteger := 1;
            QryCadastraProdutoCOD_PRODUTO_ESTOQUE.AsInteger  := 1;
            QryCadastraProdutoUSERCAD.ASSTRING           := FORMPRINCIPAL.USERLOGADO;
            QryCadastraProdutoULTIMACOMPRA.AsDateTime    := DATE;
            QryCadastraProdutoSECCAO.AsInteger           := 1;
            QryCadastraProdutoCATEGORIA.AsInteger        := 1;
            QryCadastraProdutoMULTIP_FRACAO.AsInteger    := 1;
            QryCadastraProdutoFRACAO.AsInteger           := 1;
            QryCadastraProdutoESTOQUE.AsFloat            := 0;
            QryCadastraProdutoESTOQUE_ATUAL.AsFloat      := 0;
            QryCadastraProdutoESTOQUE_FRACAO.AsFloat     := 0;
            QryCadastraProdutoDATACAD.AsDateTime         := date;
            QryCadastraProdutoMARGEM_LUCRO.AsFloat       := 0;
            QryCadastraProdutoCOMISSAO.AsFloat           := 0;
            QryCadastraProdutoPRECO_ANT.AsFloat          := 0;
            QryCadastraProdutoPRECO_PROMOCAO.AsFloat     := 0;
            QryCadastraProdutoMARGEM_LUCRO2.AsFloat      := 0;
            QryCadastraProdutoUNIDADE.AsInteger          := 1;
            QryCadastraProdutoFRETE.AsFloat              := 0;
            QryCadastraProdutoICMS.AsFloat               := 0;
            QryCadastraProdutoIPI_IRPJ.AsFloat           := 0;
            QryCadastraProdutoOUTROS_IMPOSTOS.AsFloat    := 0;
            QryCadastraProdutoDESCONTOS.AsFloat          := 0;
            QryCadastraProdutoCLASS_FISCAL.Text          := '00';
            QryCadastraProdutoSIT_TRIBUTARIA.ASSTRING    := 'NN';
            QryCadastraProdutoCUSTO_MEDIO.ASFLOAT        := 0;
            QryCadastraProdutoCOD_EMPRESA.AsInteger      := dm.sds_empresacodigo.asinteger;
            QryCadastraProdutoATIVO.ASSTRING             := 'A';
            QryCadastraProdutoENABLE_NUMSERIE.AsInteger  := 0;
            IF qritemVEICULO.Text = 'S' then
            BEGIN
            QryCadastraProdutoCOR.Value                  := qritemCOR.Value;
            QryCadastraProdutoCHASSI.AsString            := qritemChassi.Value;
            QryCadastraProdutoCOR_DESC.AsString          := qritemCOR_desc.Value;
            QryCadastraProdutoN_MOTOR.AsString           := qritemN_MOTOR.Value;
            QryCadastraProdutoANO_FAB.AsString           := qritemano_fab.Value;
            QryCadastraProdutoANO_MOD_FAB.AsString       := qritemANO_MOD_FAB.Value;
            QryCadastraProdutoTIPO_VEIC.AsString         := qritemTIPO_VEIC.Value;
            QryCadastraProdutoN_SERIE.AsString           := qritemN_SERIE.Value;
            QryCadastraProdutoCOD_MODELO.AsString        := qritemCOD_MODELO.Value;
            QryCadastraProdutoESPECIE_VEICULO.AsString   := qritemESPECIE_VEICULO.Value;
            QryCadastraProdutoCOD_COR_DENATRAN.AsString  := qritemCOD_COR_DENATRAN.Value;
            QryCadastraProdutoTIPO_COMBUSTIVEL.AsString  := qritemTIPO_COMBUSTIVEL.Value;
            QryCadastraProdutoVEICULO.AsString           := qritemVEICULO.Value;
            QryCadastraProdutoGRUPO_TRIBUTACAO.AsString  := '11';
            QryCadastraProdutoPRECO_VENDA.AsFloat        := qritemPRECO_VENDA.AsFloat;
            QryCadastraProdutoPRECO_VENDA2.AsFloat        := qritemPRECO_VENDA2.AsFloat;
            end else
            begin
            QryCadastraProdutoPRECO_VENDA.AsFloat        := 0;
            QryCadastraProdutoPRECO_VENDA2.AsFloat       := 0;
            QryCadastraProdutoGRUPO_TRIBUTACAO.AsString  := '1';
            end;
            QryCadastraProduto.Post;   }

             try
             if DM.IBTransaction.Active then
              DM.IBTransaction.Commit;
             DM.IBTransaction.StartTransaction;
              with SQLVendas do
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


                        Parambyname('CODIGO').AsInteger         := vcod_item2;
                        Parambyname('CODIGO_BARRAS').AsString   := vcodBarra_produto;
                        Parambyname('DESCRICAO').AsString       := Copy(qritemDESCRICAO.Text, 1,70);
                        Parambyname('ABREVIADO').value          := null;
                        Parambyname('PRECO_CUSTO').AsFloat      := qritemVALOR_UNI.asfloat / qritemFRACAO.AsFloat;
                        Parambyname('MARGEM_LUCRO').AsFloat     := mlucro1;
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
                        Parambyname('PRECO_VENDA').ASFLOAT      := qritemPRECO_VENDA.AsFloat;
                        Parambyname('DESCONTO_MAXIMO').ASFLOAT  := 0;
                        Parambyname('CODIGO_GRUPO').VALUE       := NULL;
                        Parambyname('CODIGO_SUBGRUPO').VALUE    := NULL;
                        if qritemCOD_MARCA.Value > 0 then
                        Parambyname('CODIGO_MARCA').VALUE       := qritemCOD_MARCA.TEXT
                        else
                        Parambyname('CODIGO_MARCA').VALUE       := null;
                        Parambyname('NOME_GRUPO').VALUE         := NULL;
                        Parambyname('NOME_SUBGRUPO').VALUE      := NULL;
                        if qritemCOD_MARCA.Value > 0 then
                        Parambyname('NOME_MARCA').VALUE         := qritemMARCA.TEXT
                        else
                        Parambyname('NOME_MARCA').VALUE         := null;
                        Parambyname('NOME_FORNECEDOR').VALUE    := NULL;
                        Parambyname('CODIGO_FORNECEDORES').VALUE := NULL;
                        Parambyname('FOTO').VALUE               := NULL;
                        Parambyname('ESTOQUE_ATUAL').AsFloat    := 0;
                        Parambyname('ESTOQUE_VENDIDO').VALUE    := NULL;
                        Parambyname('ESTOQUE').ASFLOAT          := 0;
                        Parambyname('ESTOQUE_MINIMO').ASFLOAT   := 1;
                        Parambyname('ESTOQUE_MAXIMO').ASFLOAT   := 1;
                        Parambyname('DATACAD').ASDATE           := DATE;
                        Parambyname('USERCAD').ASSTRING         := FORMPRINCIPAL.USERLOGADO;
                        Parambyname('ULTIMACOMPRA').ASDATE      := DATE;
                        Parambyname('SECCAO').AsInteger           := 1;
                        Parambyname('CATEGORIA').AsInteger        := 1;
                        Parambyname('LOCALIZACAO').VALUE        := NULL;
                        Parambyname('APLICACAO').Value          := null;
                        Parambyname('ESP_COD_AUX').VALUE        := NULL;
                        Parambyname('GARANTIA').VALUE           := NULL;
                        Parambyname('BALANCA').VALUE            := NULL;
                        Parambyname('ETIQUETA').VALUE           := NULL;
                        Parambyname('ATIVO').ASSTRING           := 'A';
                        IF DM.SDS_CONFIGURACOESIMP_CODIGO_FORNECEDOR.Text = 'S' THEN
                        Parambyname('REFERENCIA').VALUE         := qritemCODFORNECEDOR.Text
                        else
                        Parambyname('REFERENCIA').VALUE         := qritemCOD_FAB.Text;
                        Parambyname('COD_EMPRESA').ASinteger    := dm.sds_empresacodigo.asinteger;
                        Parambyname('DESC_UNIDADE').ASSTRING    := qritemUN_FRACAO.asstring;

                        IF qritemVEICULO.Text = 'S' then
                        Parambyname('PESOBRUTO').AsFloat        := 0
                        else
                        Parambyname('PESOBRUTO').Value          := null;

                       IF qritemVEICULO.Text = 'S' then
                        Parambyname('PESOLIQUIDO').AsFloat      := 0
                        else
                        Parambyname('PESOLIQUIDO').Value        := null;

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
                        Parambyname('MARGEM_LUCRO2').VALUE      := MLUCRO2;
                        Parambyname('VALIDADE_PRODUTO').VALUE   := NULL;
                        Parambyname('PROD_SERV').AsString       := 'P';
                        Parambyname('UNIDADE_ENT').VALUE        := null;
                        Parambyname('DESC_UNID_ENT').asstring   := qritemdesc_unidade.asstring;
                        Parambyname('QUANT_SAIDA').VALUE        := NULL;
                        Parambyname('QUANT_ENTRADA').VALUE      := NULL;
                        Parambyname('ESTOQUE_FRACAO').VALUE     := NULL;
                        Parambyname('DATA_FABRICACAO').VALUE    := NULL;
                        Parambyname('FRACAO').AsInteger         := 1;
                        Parambyname('NCM_SH').AsString          := qritemNCM_SH.AsString;
                        Parambyname('COD_MS').VALUE             := NULL;
                        Parambyname('CONTOLAESTOQUE').VALUE     := NULL;
                        Parambyname('PRODUTOCOMPOSTO').VALUE    := NULL;
                        Parambyname('TIPO_ATIVIDADE').VALUE     := NULL;
                        Parambyname('COD_PRODUTO_ESTOQUE').AsInteger   := 1;
                        Parambyname('CODIGO_LOCAL_ESTOQUE').AsInteger  := 1;
                        Parambyname('LISTA_ABC').VALUE                 := NULL;
                        IF qritemVEICULO.Text = 'S' then
                        Parambyname('GRUPO_TRIBUTACAO').AsInteger      := 11
                        ELSE
                        Parambyname('GRUPO_TRIBUTACAO').AsInteger      := 1;
                        Parambyname('COMBUSTIVEL').AsString     := 'N';
                        Parambyname('COR').VALUE                 := NULL;
                        Parambyname('ENABLE_NUMSERIE').AsInteger := 1;
                        Parambyname('ID_PRODUTOS').VALUE        := NULL;
                        Parambyname('COD_ANP').VALUE            := NULL;
                        Parambyname('CESTA').VALUE              := NULL;
                        Parambyname('ML_QUANT_BEB').VALUE       := NULL;
                        Parambyname('UND_TRIB').VALUE           := NULL;
                        IF qritemVEICULO.Text = 'S' then
                        begin
                        Parambyname('COR').AsInteger            := qritemCOR.Value;
                        Parambyname('CHASSI').AsString          := qritemCHASSI.AsString;
                        Parambyname('COR_DESC').AsString        := qritemCOR_desc.Value;
                        Parambyname('N_MOTOR').AsString         := qritemN_MOTOR.Value;
                        Parambyname('ANO_FAB').AsString         := qritemano_fab.Value;
                        Parambyname('ANO_MOD_FAB').AsString     := qritemANO_MOD_FAB.Value;
                        Parambyname('TIPO_VEIC').AsString       := qritemTIPO_VEIC.Value;
                        Parambyname('N_SERIE').AsString         := qritemN_SERIE.Value;
                        Parambyname('COD_MODELO').AsString      := qritemCOD_MODELO.Value;
                        Parambyname('ESPECIE_VEICULO').AsString := qritemESPECIE_VEICULO.Value;
                        Parambyname('COD_COR_DENATRAN').AsString := qritemCOD_COR_DENATRAN.Value;
                        Parambyname('TIPO_COMBUSTIVEL').AsString := qritemTIPO_COMBUSTIVEL.Value;
                        Parambyname('VEICULO').AsString          := 'S';
                        end else
                        begin
                        Parambyname('COR').VALUE                 := 0;
                        Parambyname('CHASSI').VALUE              := NULL;
                        Parambyname('COR_DESC').VALUE            := NULL;
                        Parambyname('N_MOTOR').VALUE             := NULL;
                        Parambyname('ANO_FAB').VALUE             := NULL;
                        Parambyname('ANO_MOD_FAB').VALUE         := NULL;
                        Parambyname('TIPO_VEIC').VALUE           := NULL;
                        Parambyname('N_SERIE').VALUE             := NULL;
                        Parambyname('COD_MODELO').VALUE          := NULL;
                        Parambyname('ESPECIE_VEICULO').VALUE     := NULL;
                        Parambyname('COD_COR_DENATRAN').VALUE    := NULL;
                        Parambyname('TIPO_COMBUSTIVEL').VALUE    := NULL;
                        Parambyname('VEICULO').AsString          := 'N';
                        end;
                        ExecSQL;
                      end;
                       DM.IBTransaction.CommitRetaining;
                      finally
                        SQLVendas.Close;
                      end;

            CodigoProdutoNovo := IntToStr(vcod_item2);
            NomeProduto := qritemDESCRICAO.text;

            qrfornecedor_codigo.Insert;
            qrfornecedor_codigoCODFORNECEDOR.TEXT := ecod_fornecedor.Text ;
            qrfornecedor_codigoCODPRODUTO.TEXT := CodigoProdutoNovo;
            qrfornecedor_codigoCODIGO.TEXT := qritemCODLANCAMENTO.AsString;
            qrfornecedor_codigoPRECO.Value := 0;
            qrfornecedor_codigo.Post;

          if Length(qritemCODIGO_PRODUTO.AsString) = 0 then
          begin
            qritem.edit;
            qritemCODIGO_PRODUTO.AsString := CodigoProdutoNovo;
            qritem.Post;
          end;

        end;

        vcodbarra := qritemCODIGO_BARRAS.AsString;

       // { : CADASTRA A MOVIMENTAÇÃO DE ENTRADA DO PRODUTO
      {  qrproduto_mov.Insert;
        qrproduto_movCODIGO.AsString := formprincipal.codifica('000032');
        qrproduto_movCODNOTA.AsString := qritem.fieldbyname('codnota')
          .AsString + 'NE';
        qrproduto_movSERIAL.AsString := qritem.fieldbyname('codigo').AsString;
        qrproduto_movNUMERONOTA.AsString :=
          qrnota.fieldbyname('NUMERO').AsString;
        qrproduto_movCODPRODUTO.AsString :=
          qritem.fieldbyname('codigo_produto').AsString;

        qrproduto_movQTDE.ASFLOAT := qritemQTDE.ASFLOAT * qritemFRACAO.ASFLOAT;
        qrproduto_movUNITARIO.ASFLOAT := qritemUNITARIO.ASFLOAT /
          qritemFRACAO.ASFLOAT;

        qrproduto_movTOTAL.ASFLOAT := qritemTOTAL.ASFLOAT;
        qrproduto_movUNIDADE.AsString := qritemUN_FRACAO.AsString;
        qrproduto_movALIQUOTA.ASFLOAT := qritemICMS_ALIQUOTA.ASFLOAT;
        qrproduto_movCUPOM_MODELO.AsString := qrnotaMODELO.AsString;
        qrproduto_movCODCLIENTE.AsString := ecod_fornecedor.Text;
        qrproduto_movCODVENDEDOR.AsString := 'S/VEND';
        qrproduto_movMOVIMENTO.AsInteger := 1;
        qrproduto_movDATA.AsString := edata_emissao.Text;

        qrproduto_movICMS.ASFLOAT := qritemICMS_ALIQUOTA.ASFLOAT;;
        qrproduto_movVALOR_ICMS.ASFLOAT := qritemICMS_VALOR.ASFLOAT;;
        qrproduto_movVALOR_IPI.ASFLOAT := qritemIPI_VALOR.ASFLOAT;;
        qrproduto_movICMS_REDUZIDO.ASFLOAT := qritemICMS_VALORRETIDO.ASFLOAT;;
        qrproduto_movBASE_CALCULO.ASFLOAT := qritemICMS_BASE.ASFLOAT;;

        qrproduto_movIPI.ASFLOAT := qritemIPI_ALIQUOTA.ASFLOAT;;
        qrproduto_movDESCONTO.ASFLOAT := qritemDESCONTO.ASFLOAT;;
        qrproduto_movACRESCIMO.ASFLOAT := 0;

        qrproduto_movCREDITO_ICMS.ASFLOAT := qritemCREDITO_ICMS.ASFLOAT;;
        qrproduto_movPIS.ASFLOAT := qritemPIS.ASFLOAT;;
        qrproduto_movCOFINS.ASFLOAT := qritemCOFINS.ASFLOAT;;

        qrproduto_movCODBARRA.AsString := vcodbarra;
        qrproduto_movCFOP.AsString := qritemCFOP.AsString;
        qrproduto_movCST.AsString := qritemCST.AsString;
        qrproduto_movLOTE_FABRICACAO.AsString := qritemLOTE_FABRICACAO.AsString;
        qrproduto_movVENCIMENTO.AsDateTime := qritemLOTE_VALIDADE.AsDateTime;

        qrproduto_mov.Post;   }

        lstatus.caption := '[ ' + qritem.fieldbyname('codigo_produto').AsString +
          ' ] ' + qritem.fieldbyname('codigo_barras').AsString + ' | ' +
          qritem.fieldbyname('DESCRICAO').AsString;
        application.ProcessMessages;

      END;


       // Se existir produto sem ligação ao cadastro
      if qritemCODIGO_PRODUTO.AsString = '' then
      begin

          {CadastrarProduto(qritemCODLANCAMENTO.AsString, qritemCODIGO_BARRAS.AsString,
          qritemDESCRICAO.AsString, qritemCODFORNECEDOR.AsString,
          qritemDESC_UNIDADE.AsString, '00', '400','041', 0, 1);  }

          query.Close;
          query.sql.Clear;
          query.sql.add('select codigo, codigo_barras, descricao from produtos');
          query.sql.add('where codigo_barras = ' + QuotedStr(qritemCODIGO_BARRAS.AsString));
          // query.SQL.Add('or codbarra = ' + QuotedStr(CodProdutoXML));
          query.open;

          if query.RecordCount = 0 then
           begin

             // QryCadastraProduto.Close;
             // QryCadastraProduto.open;

              dm.ProxCod.Close;
              dm.ProxCod.SQL.Clear;
              dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS');
              DM.ProxCod.Open;
              vcod_item1 := (DM.ProxCodN_CODIGO.ASINTEGER);

              vcod_item1 := vcod_item1 + 1;
            // Edit2.Text := IntToStr(vcod_item1);
              vcodBarra_produto := qritemCODIGO_BARRAS.AsString;

           //  vcodBarra_produto := '978100' + formprincipal.zerarcodigo(IntToStr(vcod_item1), 6);
           //  vcodBarra_produto := vcodBarra_produto + formprincipal.CalculaDigEAN13(somenteNumero(vcodBarra_produto));

        {    QryCadastraProduto.Insert;
            QryCadastraProdutoCODIGO.AsInteger           := vcod_item1; //formprincipal.codifica('000025');
            QryCadastraProdutoCODORIGINAL.TEXT           := qritemCODLANCAMENTO.AsString;
            // if qritemCODIGO_BARRAS.Text = '' then
        //    QryCadastraProdutoCODIGO_BARRAS.TEXT         := vcodBarra_produto
            //else  }
         {   QryCadastraProdutoCODIGO_BARRAS.TEXT         := qritemCODIGO_BARRAS.Text;
            QryCadastraProdutodescricao.Text             := qritemDESCRICAO.AsString ;
            QryCadastraProdutoCODIGO_FORNECEDORES.text   := qritemCODFORNECEDOR.AsString;
            QryCadastraProdutoDESC_UNIDADE.TEXT          := qritemUN_FRACAO.AsString ;
            QryCadastraProdutoDESC_UNID_ENT.TEXT         := qritemDESC_UNIDADE.AsString;
            QryCadastraProdutoNCM_SH.Text                := qritemNCM_SH.AsString;
            QryCadastraProdutoTIPO_ATIVIDADE.text        := '00';
            QryCadastraProdutoBALANCA.ASSTRING           := 'N';
            QryCadastraProdutoUSA_SERIAL.AsInteger       := 0;
            QryCadastraProdutoUSA_GRADE.AsString         := '0';
            QryCadastraProdutoCODIGO_LOCAL_ESTOQUE.AsInteger := 1;
            QryCadastraProdutoCOD_PRODUTO_ESTOQUE.AsInteger  := 1;
            QryCadastraProdutoUSERCAD.ASSTRING           := FORMPRINCIPAL.USERLOGADO;
            QryCadastraProdutoULTIMACOMPRA.AsDateTime    := DATE;
            QryCadastraProdutoSECCAO.AsInteger           := 1;
            QryCadastraProdutoCATEGORIA.AsInteger        := 1;
            QryCadastraProdutoMULTIP_FRACAO.AsInteger    := 1;
            QryCadastraProdutoFRACAO.AsInteger           := 1;
            QryCadastraProdutoESTOQUE.AsFloat            := 0;
            QryCadastraProdutoESTOQUE_ATUAL.AsFloat      := 0;
            QryCadastraProdutoESTOQUE_FRACAO.AsFloat     := 0;
            QryCadastraProdutoDATACAD.AsDateTime         := date;
            QryCadastraProdutoMARGEM_LUCRO.AsFloat       := 0;
            QryCadastraProdutoCOMISSAO.AsFloat           := 0;
            QryCadastraProdutoPRECO_ANT.AsFloat          := 0;
            QryCadastraProdutoPRECO_PROMOCAO.AsFloat     := 0;
            QryCadastraProdutoMARGEM_LUCRO2.AsFloat      := 0;
            QryCadastraProdutoUNIDADE.AsInteger          := 1;
            QryCadastraProdutoFRETE.AsFloat              := 0;
            QryCadastraProdutoICMS.AsFloat               := 0;
            QryCadastraProdutoIPI_IRPJ.AsFloat           := 0;
            QryCadastraProdutoOUTROS_IMPOSTOS.AsFloat    := 0;
            QryCadastraProdutoDESCONTOS.AsFloat          := 0;
            QryCadastraProdutoCLASS_FISCAL.Text          := '00';
            QryCadastraProdutoSIT_TRIBUTARIA.ASSTRING    := 'NN';
            QryCadastraProdutoCUSTO_MEDIO.ASFLOAT        := 0;
            QryCadastraProdutoCOD_EMPRESA.AsInteger      := dm.sds_empresacodigo.asinteger;
            QryCadastraProdutoATIVO.ASSTRING             := 'A';
            QryCadastraProdutoENABLE_NUMSERIE.AsInteger  := 0;
            IF qritemVEICULO.Text = 'S' then
            BEGIN
            QryCadastraProdutoCOR.Value                  := qritemCOR.Value;
            QryCadastraProdutoCHASSI.AsString            := qritemChassi.Value;
            QryCadastraProdutoCOR_DESC.AsString          := qritemCOR_desc.Value;
            QryCadastraProdutoN_MOTOR.AsString           := qritemN_MOTOR.Value;
            QryCadastraProdutoANO_FAB.AsString           := qritemano_fab.Value;
            QryCadastraProdutoANO_MOD_FAB.AsString       := qritemANO_MOD_FAB.Value;
            QryCadastraProdutoTIPO_VEIC.AsString         := qritemTIPO_VEIC.Value;
            QryCadastraProdutoN_SERIE.AsString           := qritemN_SERIE.Value;
            QryCadastraProdutoCOD_MODELO.AsString        := qritemCOD_MODELO.Value;
            QryCadastraProdutoESPECIE_VEICULO.AsString   := qritemESPECIE_VEICULO.Value;
            QryCadastraProdutoCOD_COR_DENATRAN.AsString  := qritemCOD_COR_DENATRAN.Value;
            QryCadastraProdutoTIPO_COMBUSTIVEL.AsString  := qritemTIPO_COMBUSTIVEL.Value;
            QryCadastraProdutoVEICULO.AsString           := qritemVEICULO.Value;
            QryCadastraProdutoGRUPO_TRIBUTACAO.AsString  := '11';
            QryCadastraProdutoPRECO_VENDA.AsFloat        := qritemPRECO_VENDA.AsFloat;
            QryCadastraProdutoPRECO_VENDA2.AsFloat       := qritemPRECO_VENDA2.AsFloat;
            end else
            begin
            QryCadastraProdutoPRECO_VENDA.AsFloat        := 0;
            QryCadastraProdutoPRECO_VENDA2.AsFloat       := 0;
            QryCadastraProdutoGRUPO_TRIBUTACAO.AsString  := '1';
            end;
            QryCadastraProduto.Post;

            CodigoProdutoNovo := QryCadastraProdutoCODIGO.text;
            NomeProduto := QryCadastraProdutoDESCRICAO.text; }
              try
              if DM.IBTransaction.Active then
                DM.IBTransaction.Commit;
              DM.IBTransaction.StartTransaction;
              with SQLVendas do
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


                        Parambyname('CODIGO').AsInteger         := vcod_item1;
                        Parambyname('CODIGO_BARRAS').AsString   := vcodBarra_produto;
                        Parambyname('DESCRICAO').AsString       := Copy(qritemDESCRICAO.Text, 1,70);
                        Parambyname('ABREVIADO').value          := null;
                        Parambyname('PRECO_CUSTO').AsFloat      := qritemVALOR_UNI.asfloat / qritemFRACAO.AsFloat;
                        Parambyname('MARGEM_LUCRO').AsFloat     := MLUCRO1;
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
                        Parambyname('PRECO_VENDA').ASFLOAT      := qritemPRECO_VENDA.AsFloat;
                        Parambyname('DESCONTO_MAXIMO').ASFLOAT  := 0;
                        Parambyname('CODIGO_GRUPO').VALUE       := NULL;
                        Parambyname('CODIGO_SUBGRUPO').VALUE    := NULL;
                        if qritemCOD_MARCA.Value > 0 then
                        Parambyname('CODIGO_MARCA').VALUE       := qritemCOD_MARCA.TEXT
                        else
                        Parambyname('CODIGO_MARCA').VALUE       := null;
                        Parambyname('NOME_GRUPO').VALUE         := NULL;
                        Parambyname('NOME_SUBGRUPO').VALUE      := NULL;
                        if qritemCOD_MARCA.Value > 0 then
                        Parambyname('NOME_MARCA').VALUE         := qritemMARCA.Value
                        else
                        Parambyname('NOME_MARCA').VALUE         := null;
                        Parambyname('NOME_FORNECEDOR').VALUE    := NULL;
                        Parambyname('CODIGO_FORNECEDORES').VALUE := NULL;
                        Parambyname('FOTO').VALUE               := NULL;
                        Parambyname('ESTOQUE_ATUAL').AsFloat    := 0;
                        Parambyname('ESTOQUE_VENDIDO').VALUE    := NULL;
                        Parambyname('ESTOQUE').ASFLOAT          := 0;
                        Parambyname('ESTOQUE_MINIMO').ASFLOAT   := 1;
                        Parambyname('ESTOQUE_MAXIMO').ASFLOAT   := 1;
                        Parambyname('DATACAD').ASDATE           := DATE;
                        Parambyname('USERCAD').ASSTRING         := FORMPRINCIPAL.USERLOGADO;
                        Parambyname('ULTIMACOMPRA').ASDATE      := DATE;
                        Parambyname('SECCAO').AsInteger         := 1;
                        Parambyname('CATEGORIA').AsInteger        := 1;
                        Parambyname('LOCALIZACAO').VALUE          := NULL;
                        Parambyname('APLICACAO').Value            := null;
                        Parambyname('ESP_COD_AUX').VALUE          := NULL;
                        Parambyname('GARANTIA').VALUE             := NULL;
                        Parambyname('BALANCA').VALUE              := NULL;
                        Parambyname('ETIQUETA').VALUE             := NULL;
                        Parambyname('ATIVO').ASSTRING             := 'A';
                        IF DM.SDS_CONFIGURACOESIMP_CODIGO_FORNECEDOR.Text = 'S' THEN
                        Parambyname('REFERENCIA').VALUE         := qritemCODFORNECEDOR.Text
                        ELSE
                        Parambyname('REFERENCIA').VALUE         := qritemCOD_FAB.Text ;
                        Parambyname('COD_EMPRESA').ASinteger    := dm.sds_empresacodigo.asinteger;
                        Parambyname('DESC_UNIDADE').ASSTRING    := qritemUN_FRACAO.asstring;

                        IF qritemVEICULO.Text = 'S' then
                        Parambyname('PESOBRUTO').AsFloat        := 0
                        else
                        Parambyname('PESOBRUTO').Value          := null;

                       IF qritemVEICULO.Text = 'S' then
                        Parambyname('PESOLIQUIDO').AsFloat      := 0
                        else
                        Parambyname('PESOLIQUIDO').Value        := null;

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
                        Parambyname('LABORATORIO').VALUE        := NULL;
                        Parambyname('PRINCIPIO_ATIVO').VALUE    := NULL;
                        Parambyname('MED_CONTROLADO').VALUE     := NULL;
                        Parambyname('QTD_FRACIONADA').VALUE     := NULL;
                        Parambyname('QTD_CAIXA').VALUE          := NULL;
                        Parambyname('MED_GENERICO').VALUE       := NULL;
                        Parambyname('LOTE_MED').VALUE           := NULL;
                        Parambyname('VALIDADE').VALUE           := NULL;
                        Parambyname('CHEK_BOX').VALUE           := NULL;
                        Parambyname('PRECO_VENDA2').VALUE       := NULL;
                        Parambyname('MARGEM_LUCRO2').VALUE      := mlucro2;
                        Parambyname('VALIDADE_PRODUTO').VALUE   := NULL;
                        Parambyname('PROD_SERV').AsString       := 'P';
                        Parambyname('UNIDADE_ENT').VALUE        := NULL;
                        Parambyname('DESC_UNID_ENT').VALUE      := qritemdesc_unidade.asstring;
                        Parambyname('QUANT_SAIDA').VALUE        := NULL;
                        Parambyname('QUANT_ENTRADA').VALUE      := NULL;
                        Parambyname('ESTOQUE_FRACAO').VALUE     := NULL;
                        Parambyname('DATA_FABRICACAO').VALUE    := NULL;
                        Parambyname('FRACAO').AsInteger         := 1;
                        Parambyname('NCM_SH').AsString          := qritemNCM_SH.AsString;
                        Parambyname('COD_MS').VALUE             := NULL;
                        Parambyname('CONTOLAESTOQUE').VALUE     := NULL;
                        Parambyname('PRODUTOCOMPOSTO').VALUE    := NULL;
                        Parambyname('TIPO_ATIVIDADE').VALUE     := NULL;
                        Parambyname('COD_PRODUTO_ESTOQUE').AsInteger   := 1;
                        Parambyname('CODIGO_LOCAL_ESTOQUE').AsInteger  := 1;
                        Parambyname('LISTA_ABC').VALUE                 := NULL;
                        IF qritemVEICULO.Text = 'S' then
                        Parambyname('GRUPO_TRIBUTACAO').AsInteger      := 11
                        ELSE
                        Parambyname('GRUPO_TRIBUTACAO').AsInteger      := 1;
                        Parambyname('COMBUSTIVEL').AsString     := 'N';
                        Parambyname('COR').VALUE                 := 0;
                        Parambyname('ENABLE_NUMSERIE').AsInteger := 1;
                        Parambyname('ID_PRODUTOS').VALUE        := NULL;
                        Parambyname('COD_ANP').VALUE            := NULL;
                        Parambyname('CESTA').VALUE              := NULL;
                        Parambyname('ML_QUANT_BEB').VALUE       := NULL;
                        Parambyname('UND_TRIB').VALUE           := NULL;
                        IF qritemVEICULO.Text = 'S' then
                        begin
                        Parambyname('COR').AsInteger            := qritemCOR.Value;
                        Parambyname('CHASSI').AsString          := qritemCHASSI.AsString;
                        Parambyname('COR_DESC').AsString        := qritemCOR_desc.Value;
                        Parambyname('N_MOTOR').AsString         := qritemN_MOTOR.Value;
                        Parambyname('ANO_FAB').AsString         := qritemano_fab.Value;
                        Parambyname('ANO_MOD_FAB').AsString     := qritemANO_MOD_FAB.Value;
                        Parambyname('TIPO_VEIC').AsString       := qritemTIPO_VEIC.Value;
                        Parambyname('N_SERIE').AsString         := qritemN_SERIE.Value;
                        Parambyname('COD_MODELO').AsString      := qritemCOD_MODELO.Value;
                        Parambyname('ESPECIE_VEICULO').AsString := qritemESPECIE_VEICULO.Value;
                        Parambyname('COD_COR_DENATRAN').AsString := qritemCOD_COR_DENATRAN.Value;
                        Parambyname('TIPO_COMBUSTIVEL').AsString := qritemTIPO_COMBUSTIVEL.Value;
                        Parambyname('VEICULO').AsString          := 'S';
                        end else
                        begin
                        Parambyname('COR').VALUE                 := 0;
                        Parambyname('CHASSI').VALUE              := NULL;
                        Parambyname('COR_DESC').VALUE            := NULL;
                        Parambyname('N_MOTOR').VALUE             := NULL;
                        Parambyname('ANO_FAB').VALUE             := NULL;
                        Parambyname('ANO_MOD_FAB').VALUE         := NULL;
                        Parambyname('TIPO_VEIC').VALUE           := NULL;
                        Parambyname('N_SERIE').VALUE             := NULL;
                        Parambyname('COD_MODELO').VALUE          := NULL;
                        Parambyname('ESPECIE_VEICULO').VALUE     := NULL;
                        Parambyname('COD_COR_DENATRAN').VALUE    := NULL;
                        Parambyname('TIPO_COMBUSTIVEL').VALUE    := NULL;
                        Parambyname('VEICULO').AsString          := 'N';
                        end;
                        Execsql;
                      end;
                      DM.IBTransaction.CommitRetaining;
                      finally
                      SQLVendas.Close;
                      end;

            CodigoProdutoNovo := IntToStr(vcod_item1);
            NomeProduto := qritemDESCRICAO.text;


            qrfornecedor_codigo.Insert;
            qrfornecedor_codigoCODFORNECEDOR.TEXT := qritemCODFORNECEDOR.AsString ;
            qrfornecedor_codigoCODPRODUTO.TEXT := CodigoProdutoNovo;
            qrfornecedor_codigoCODIGO.TEXT := qritemCODLANCAMENTO.AsString;
            qrfornecedor_codigoPRECO.Value := 0;
            qrfornecedor_codigo.Post;
            end
            else
            begin
             vcod_produto       := query.fieldbyname('Codigo').AsString;
             CodigoProdutoNovo  := query.fieldbyname('Codigo').AsString;
             NomeProduto        := query.fieldbyname('descricao').AsString;
            end;

            dm.coneccao.commit;


        if Length(qritemCODIGO_PRODUTO.AsString) = 0 then
        begin
          qritem.edit;
          qritemCODIGO_PRODUTO.ASSTRING := CodigoProdutoNovo;
          qritemCODIGO_BARRAS.ASSTRING := vcodBarra_produto;
          qritem.Post;
        // qritem.edit;
        end;

        goto inicia; // VOLTA PARA INFORMAR A MOVIMENTAÇÃO DO PRODUTO
      end;

      qritem.next;
    end;
  end;

  
  // **-- gravação da nota  --***//
  qrnotaCOD_EMPRESA.AsInteger := iemp;
  qrnotaCOD_FORNECEDOR.AsString := ecod_fornecedor.Text;
  qrnotaMODELO.AsString := emodelo.Text;
  qrnotaESPECIE.AsString := 'NFE';
  qrnotaSERIE_NF.AsString := eserie.Text;
  qrnotaCFOP_NOTA.AsString := ecfop.Text;
  qrnotaDATA_EMISSAO.AsString := edata_emissao.Text;
  qrnotaDATA_CADASTRO.AsDateTime := sDateEdit1.date;

  qrnotaCOD_IMOVEL.Text := EImovel.Text;
  qrnotaCOD_CENTRO_CUSTO.TEXT := ECENTRO.Text;

  qrnotaOPERACAO.AsString := etipo_venda.Text;

  if etipo_venda.Text = 'P' then
    qrnotaINTEGRACAO.AsInteger := 1
  else
    qrnotaINTEGRACAO.AsInteger := 0;

  // TRANSPORTADOR
  qrnotaTRANSP_NOME.AsString := '';
  qrnotaEMITENTE.AsString := '';
  qrnotaTRANSP_PLACA.AsString := '';
  qrnotaTRANSP_PLACAUF.AsString := '';
  qrnotaTRANSP_IE.AsString := '';
  qrnotaTRANSP_CNPJ.AsString := '';
  qrnotaTRANSP_ENDERECO.AsString := '';
  qrnotaTRANSP_CIDADE.AsString := '';
  qrnotaTRANSP_UF.AsString := '';
  qrnotaTRANSP_ESPECIE.AsString := '';
  qrnotaTRANSP_MARCA.AsString := '';
  qrnotaTRANSP_NUMERO.AsString := '';
  qrnotaTRANSP_QTDE.ASFLOAT := 0;
  qrnotaTRANSP_PESOBRUTO.ASFLOAT := 0;
  qrnotaTRANSP_PESOLIQUIDO.ASFLOAT := 0;

  // OBSERVACOES
  {
    qrnotaOBS1.AsString := '';
    qrnotaOBS2.AsString := '';
    qrnotaOBS3.AsString := '';
    qrnotaOBS4.AsString := '';
    qrnotaOBS5.AsString := '';
    qrnotaOBS6.AsString := '';
    qrnotaOBS7.AsString := '';
    qrnotaOBS8.AsString := '';
  }

  qrnotaSITUACAO.AsInteger := 2; // Faturada
  qrnotaITENS.AsInteger := eitems.AsInteger;

  // qrnotaTIPO.AsString := enatureza.Text;
  qrnotaNOTA_FISCAL.AsString := '';
  qrnotaVALOR_TOTAL_ITENS_NOTA.ASFLOAT := 0;
  qrnotaCODREMETENTE.AsString := '';
  qrnotaDESCONTO_INCIDENTE.AsInteger := 0;

  // ITEM ESPECIAL

  qrnotaITEM_FRETE_VALOR.ASFLOAT := 0;
  qrnotaITEM_FRETE_BASE.ASFLOAT := 0;
  qrnotaITEM_FRETE_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_FRETE_ICMS.ASFLOAT := 0;
  qrnotaITEM_SEGURO_VALOR.ASFLOAT := 0;
  qrnotaITEM_SEGURO_BASE.ASFLOAT := 0;
  qrnotaITEM_SEGURO_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_SEGURO_ICMS.ASFLOAT := 0;
  qrnotaITEM_PIS_VALOR.ASFLOAT := 0;
  qrnotaITEM_PIS_BASE.ASFLOAT := 0;
  qrnotaITEM_PIS_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_PIS_ICMS.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_VALOR.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_BASE.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_ICMS.ASFLOAT := 0;
  qrnotaITEM_SERVICO_VALOR.ASFLOAT := 0;
  qrnotaITEM_SERVICO_BASE.ASFLOAT := 0;
  qrnotaITEM_SERVICO_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_SERVICO_ICMS.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_VALOR.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_BASE.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_ICMS.ASFLOAT := 0;
  qrnotaITEM_ESPECIAL_TOTAL.ASFLOAT := 0;
  qrnotaITEM_ESPECIAL_VALOR.ASFLOAT := 0;

  // CONFERENCIA DE NOTA
  qrnotaCONF_TOTALNOTA.ASFLOAT := evalor_nota.Value;
  qrnotaCONF_TOTALPRODUTOS.ASFLOAT := evalor_produtos.Value;
  qrnotaCONF_BASEICMS.ASFLOAT := ebase_calculo.Value;
  qrnotaCONF_VALORICMS.ASFLOAT := evalor_icms.Value;
  qrnotaCONF_BASESUB.ASFLOAT := ebase_substituicao.Value;
  qrnotaCONF_VALORSUB.ASFLOAT := evalor_substituicao.Value;
  qrnotaCONF_FRETE.ASFLOAT := efrete.Value;
  qrnotaCONF_SEGURO.ASFLOAT := eseguro.Value;
  qrnotaCONF_OUTRAS.ASFLOAT := eoutras_despesas.Value;
  qrnotaCONF_ITEM_ESPECIAL.ASFLOAT := 0;
  qrnotaCONF_IPI.ASFLOAT := evalor_ipi.Value;
  qrnotaCONF_DESCONTO.ASFLOAT := edesconto.Value;
  qrnotaCONF_ICMSRETIDO.ASFLOAT := eicms_retido.Value;

  // TOTAIS DE NOTA
  qrnotaTOTAL_NOTA.ASFLOAT := evalor_nota.Value;
  qrnotaVALOR_TOTAL_PRODUTOS.ASFLOAT := evalor_produtos.Value;
  qrnotaBASE_CALCULO_ICMS.ASFLOAT := ebase_calculo.Value;
  qrnotaBASE_CALC_ICMS_SUBST.ASFLOAT := ebase_substituicao.Value;
  qrnotaVALOR_ICMS_SUBST.ASFLOAT := evalor_substituicao.Value;
  qrnotaVALOR_ICMS.ASFLOAT := evalor_icms.Value;
  qrnotaVALOR_SEGURO.ASFLOAT := eseguro.Value;
  qrnotaVALOR_OUTRAS_DESPESAS.ASFLOAT := eoutras_despesas.Value;
  qrnotaVALOR_FRETE.ASFLOAT := efrete.Value;
  qrnotaITEM_ESPECIAL_TOTAL.ASFLOAT := evalor_itemespecial.Value;
  qrnotaVALOR_IPI.ASFLOAT := evalor_ipi.Value;
  qrnotaICMS_ISENTO.ASFLOAT := evalor_isento.Value;
  qrnotaICMS_OUTRAS.ASFLOAT := eoutras_despesas.Value;
  qrnotaCREDITO_ICMS.ASFLOAT := ecredito_icms.Value;
  qrnotaVALOR_PIS.ASFLOAT := evalor_pis.Value;
  qrnotaVALOR_COFINS.ASFLOAT := evalor_cofins.Value;
  qrnotaVALOR_DESCONTO.ASFLOAT := edesconto.Value;

  qrnota.Post;

  qrnota.First;
  qritem.First;


    if qritem.recordcount > 0 then
    begin
      qritem.first;
      while not qritem.eof do
      begin
          // BUSCA ESTOQUE
       if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;

        try
          with dm.QConsulta do
             begin
                close;
                SQL.Clear;
                SQL.add('SELECT ESTOQUE, PRECO_VENDA, PRECO_CUSTO, CUSTO_MEDIO FROM PRODUTOS WHERE CODIGO = :CODPRO');
                Parambyname('CODPRO').AsInteger:= StrToInt(qritemCODIGO_PRODUTO.Text);
                OPEN;
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

      with DM.logEst do
         begin
            close;
            parambyname('ID_EMPRESA').AsInteger         := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_FILIAL').AsInteger          := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_AJUSTE').AsInteger          := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
            Parambyname('ID_PRODUTO').AsInteger         := StrToInt(qritemCODIGO_PRODUTO.Text);
            Parambyname('ID_LOTE').Value                := null;
            Parambyname('ID_PRODUTO_SERIE').Value       := null;
            Parambyname('DATA').AsDateTime              := date;
            Parambyname('ID_USUARIO').Asinteger         := dm.sds_usuariosCodigo.AsInteger;
            parambyname('ID_MOVIMENTO').AsInteger       :=  strtoint(qrnotaCODIGO_NOTA.Text);
            Parambyname('FRACAO').Asfloat               := qritemFRACAO.AsINTEGER;
            Parambyname('ESTOQUE_ANTERIOR').Asfloat     := estoque;
            Parambyname('QUANTIDADE').Asfloat           :=  qritemQUANTIDADE.AsFloat;
            Parambyname('ESTOQUE_POSTERIOR').Asfloat    := ESTOQUE + qritemQUANTIDADE.AsFloat;
            Parambyname('SITUACAO_ESTOQUE').ASINTEGER   := 1; //ENTRADA DE PRODUTOS
            Parambyname('OPERACAO').TEXT                :=  '+';
            Parambyname('ACAO_BD').TEXT                 := 'I';
            Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
            parambyname('COD_VENDA').value              :=  null;
            parambyname('COD_COMPRA').AsInteger         :=   strtoint(qrnotaCODIGO_NOTA.Text);
            Parambyname('HISTORICO').TEXT               := 'NFE Entrada Nº ' + qrnotaNUM_NOTA.Text + '- '+ eemitente.TEXT;
            Parambyname('HORA').AsString                := TimeToStr(Time);
            ExecSQL;
          end;
       //  DM.IBTransaction.Commit;

         dm.ProxCod.Close;
         dm.ProxCod.SQL.Clear;
         dm.ProxCod.SQL.Add('select max(ID_OCORRENCIA) as N_CODIGO FROM PRODUTOS_PRECOS_LOG');
         DM.ProxCod.Open;

          if DM.IBTransaction.Active then
             DM.IBTransaction.Commit;
          DM.IBTransaction.StartTransaction;
          try
            try
              with DM.logpro do
                 begin
                    close;
                    parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
                    parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
                    Parambyname('ID_PRODUTO').AsInteger     := StrToInt(qritemCODIGO_PRODUTO.Text);
                    parambyname('ID_OCORRENCIA').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    Parambyname('TIPO_ALTERACAO').AsInteger := 2;    //NOTA ENTRADA de produtos
                    Parambyname('DATA_HORA').Asdatetime     := date;
                    Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.Asinteger;
                    Parambyname('P_COMPRA_ANT').Asfloat     := preco_custo_ant;
                    Parambyname('P_CUSTO_ANT').Asfloat      := preco_custo_ant;
                    Parambyname('P_CUSTO_MEDIO_ANT').Asfloat := custo_medio_ant;
                    Parambyname('P_VENDA_ANT').Asfloat      := preco_ant;
                    Parambyname('P_COMPRA_NOVO').Asfloat    := qritemVALOR_UNI.asfloat;
                    Parambyname('P_CUSTO_NOVO').Asfloat     := qritemVALOR_UNI.asfloat;
                    Parambyname('P_CUSTO_MEDIO_NOVO').Asfloat  :=  (StrToFloatDef(qritemTOTAL_ITEM.text,0.00) + StrToFloatDef(qritemVALOR_ICMS_ST.Text,0.00)) / StrToFloatDef(qritemQUANTIDADE.Text,0.000);
                    Parambyname('P_VENDA_NOVO').Asfloat     := qritempreco_venda.asfloat;
                    ExecSQL;
                 end;
              DM.IBTransaction.Commit;

            except
              DM.IBTransaction.Rollback;
              showmessage('Erro ao Gravar o log do produto, ' + #13 +
                          'Verifique que já foi lançFDo');
            end;
          finally
            DM.LogPro.Close;
           end;

      qritem.Next;
      end;
    end;

    if EImovel.Text > '' then
    begin
          // BUSCA ESTOQUE
           if dm.IBTransaction.Active then
             dm.IBTransaction.Commit;
          dm.IBTransaction.StartTransaction;

            try
              with dm.QConsulta do
                begin
                    close;
                    sql.Clear;
                    sql.add('SELECT * FROM PRODUTOS WHERE CODIGO = :CODPRO');
                    Parambyname('CODPRO').AsInteger:= StrToInt(EImovel.Text);
                    OPEN;
                    estoque:= fieldbyname('ESTOQUE').AsCurrency;
                    Custo :=  fieldbyname('PRECO_CUSTO').AsCurrency;
                    MARGEM :=  fieldbyname('MARGEM_LUCRO').AsCurrency;
                    VENDA :=  fieldbyname('PRECO_VENDA').AsCurrency;
                 end;
              dm.IBTransaction.Commit;
            except
              dm.IBTransaction.rollback;
              showmessage('Erro ao buscar o custo do produto');
            end;
        // Atualiza preços do custo e venda do imovel
        try
            if dm.IBTransaction.Active then
             dm.IBTransaction.Commit;
          dm.IBTransaction.StartTransaction;
            with dm.QConsulta do
                 begin
                    close;
                    sql.Clear;
                    sql.add('UPDATE PRODUTOS SET PRECO_VENDA =:VDA, PRECO_CUSTO =:CUSTO WHERE CODIGO = :CODPRO;');
                    NOVO_CUSTO := CUSTO + evalor_nota.Value;
                    Parambyname('VDA').AsCurrency:= NOVO_CUSTO + (NOVO_CUSTO * MARGEM /100);
                    Parambyname('CUSTO').AsCurrency:= NOVO_CUSTO;
                    Parambyname('CODPRO').AsInteger:= StrToInt(EImovel.Text);
                    ExecSQL;
                 end;
              dm.IBTransaction.Commit;
         except
             dm.IBTransaction.rollback;
             showmessage('Erro ao atualizar o custo do produto/ imovel');
     end;
     end;

     
        qritem.First;
        while not qritem.eof do // lanca produtos na tabela notasfiscais_itens
          begin
                    qritem1.close;
                    qritem1.open;
                    qritem1.Insert;

          //  ShowMessage('TESTE 4');

                    qritem1CODIGO_ITEM.AsInteger        := 0;
                    qritem1CODIGO_PRODUTO.AsInteger     := StrToInt(qritemCODIGO_PRODUTO.Text);
                    qritem1CODIGO_BARRAS.AsString       := qritemCODIGO_BARRAS.AsString;
                    qritem1CODIGO_NOTA.AsInteger        := StrToInt(qritemCODIGO_NOTA.Text);
                    qritem1DESCRICAO.AsString           := qritemDESCRICAO.AsString;
                    qritem1NCM_SH.AsString              := qritemNCM_SH.AsString;
                    qritem1CST.AsString                 := qritemCST.AsString;
                 //   qritem1CST.AsString                 := qritemCST.AsString;
                    qritem1CFOP.AsString                := qritemCFOP.AsString;
                    qritem1DESC_UNIDADE.AsString        := qritemDESC_UNIDADE.AsString;
                    qritem1QUANTIDADE.AsCurrency        := StrToFloatDef(qritemQUANTIDADE.text,0.0000);
                    qritem1VALOR_UNI.AsCurrency         := StrToFloatDef(qritemVALOR_UNI.Text,0.00);
                    qritem1VALOR_DESC.AsCurrency        := StrToFloatDef(qritemVALOR_DESC.Text,0.00);
                    qritem1TOTAL_ITEM.AsCurrency        := StrToFloatDef(qritemTOTAL_ITEM.text,0.00);
                    qritem1DATA.AsDateTime              := QRNOTADATA_EMISSAO.AsDateTime;
                    qritem1BASE_ICMS.AsCurrency         := StrToFloatDef(qritemBASE_ICMS.text,0.00);
                    qritem1VALOR_ICMS.AsCurrency        := StrToFloatDef(qritemVALOR_ICMS.text,0.00);
                    qritem1VALOR_IPI.AsCurrency         := StrToFloatDef(qritemVALOR_IPI.text,0.00);
                    qritem1PERC_ICMS.AsCurrency         := StrToFloatDef(qritemPERC_ICMS.text,0.00);
                    qritem1PERC_IPI.AsCurrency          := StrToFloatDef(qritemPERC_IPI.text,0.00);
                    qritem1PRECO_VENDA.AsCurrency       := ((qritemVALOR_UNI.asfloat * qritemMARG_LUCRO.ASFLOAT) / 100) + qritemVALOR_UNI.asfloat;
                    qritem1PRECO_VENDA2.AsCurrency      := StrToFloatDef(qritemPRECO_VENDA2.Text,0.00);
                    qritem1DATA_VALIDADE.AsDateTime     := qritemDATA_VALIDADE.AsDateTime;
                    qritem1DATA_FABRICACAO.AsDateTime   := qritemDATA_FABRICACAO.AsDateTime;
                    qritem1FRACAO.AsInteger             := StrToInt(qritemFRACAO.Text);
                    qritem1QUANT_FRACIONADA.AsCurrency  := StrToFloatDef(qritemQUANT_FRACIONADA.Text,0.00);
                    qritem1LOTE_MED.AsString            := qritemLOTE_MED.AsString;
                    qritem1MARG_LUCRO.AsCurrency        := StrToFloatDef(qritemMARG_LUCRO.Text,0.00);
                    qritem1ATIVO.AsString               := qritemATIVO.AsString;
                    qritem1BASE_ICMS_ST.AsCurrency      := StrToFloatDef(qritemBASE_ICMS_ST.text,0.00);
                    qritem1ALIC_ICMS_ST.AsCurrency      := StrToFloatDef(qritemALIC_ICMS_ST.text,0.00);
                    qritem1VALOR_ICMS_ST.AsCurrency     := StrToFloatDef(qritemVALOR_ICMS_ST.text,0.00);
                    qritem1COD_EMPRESA.AsInteger        := StrToInt(DM.SDS_EmpresaCODIGO.Text);
                    qritem1IMOBILZ.AsString             := qritemIMOBILZ.ASSTRING;
                    qritem1BASE_PIS.AsCurrency          := StrToFloatDef(qritemBASE_PIS.text,0.00);
                    qritem1PERC_PIS.AsCurrency          := StrToFloatDef(qritemPERC_PIS.text,0.00);
                    qritem1VALOR_PIS.AsCurrency         := StrToFloatDef(qritemVALOR_PIS.text,0.00);
                    qritem1BASE_COFINS.AsCurrency       := StrToFloatDef(qritemBASE_COFINS.text,0.00);
                    qritem1PERC_COFINS.AsCurrency       := StrToFloatDef(qritemPERC_COFINS.text,0.00);
                    qritem1VALOR_COFINS.AsCurrency      := StrToFloatDef(qritemVALOR_COFINS.text,0.00);
                    qritem1BASE_IPI.AsCurrency          := StrToFloatDef(qritemBASE_IPI.text,0.00);
                    qritem1UN_FRACAO.AsString           := qritemUN_FRACAO.ASSTRING;
                    qritem1ITEM.AsInteger               := qritemITEM.AsInteger;
                    qritem1CODFORNECEDOR.AsInteger     := StrToInt(qritemCODFORNECEDOR .Text);
                    qritem1NUM_NOTA.AsString            := qritemNUM_NOTA.ASSTRING;
                    qritem1ICMS_RETIDO.AsString         := qritemICMS_RETIDO.AsString;
                    qritem1SUBTOTAL.AsCurrency          := StrToFloatDef(qritemSUBTOTAL.text,0.00);
                    qritem1DESCONTO_P.AsCurrency        := StrToFloatDef(qritemDESCONTO_P.text,0.00);
                    qritem1ICMS_REDUCAO.AsCurrency      := StrToFloatDef(qritemICMS_REDUCAO.text,0.00);
                    qritem1ICMS_VALORRETIDO.AsCurrency  := StrToFloatDef(qritemICMS_VALORRETIDO.text,0.00);
                    qritem1ICMS_ISENTO.AsCurrency       := StrToFloatDef(qritemICMS_ISENTO.text,0.00);
                    qritem1ICMS_NAOTRIBUTADO.AsCurrency := StrToFloatDef(qritemICMS_REDUCAO.text,0.00);
                    qritem1IPI_TIPO.AsString            := qritemIPI_TIPO.asstring;
                    qritem1TIPO.AsInteger               := qritemTIPO.AsInteger;
                    qritem1FRETE.AsCurrency             := StrToFloatDef(qritemFRETE.text,0.00);
                    qritem1OUTRAS.AsCurrency            := StrToFloatDef(qritemOUTRAS.text,0.00);
                    qritem1SEGURO.AsCurrency            := StrToFloatDef(qritemSEGURO.text,0.00);
                    qritem1CLASSIFICACAO_FISCAL.AsString := qritemCLASSIFICACAO_FISCAL.ASSTRING;
                    qritem1SUB_PRODUTOS.AsCurrency      := StrToFloatDef(qritemSUB_PRODUTOS.text,0.00);
                    qritem1ITEM_ESPECIAL_VALOR.AsCurrency := StrToFloatDef(qritemITEM_ESPECIAL_VALOR.text,0.00);
                    qritem1ICMS_OUTRAS.AsCurrency        := StrToFloatDef(qritemICMS_OUTRAS.text,0.00);
                    qritem1ALTERA_ITEM.Asinteger        :=  qritemALTERA_ITEM.AsInteger;
                    qritem1CREDITO_ICMS.AsCurrency       := StrToFloatDef(qritemCREDITO_ICMS.text,0.00);
                    qritem1CREDITO_ICMS_BASE.AsCurrency  := StrToFloatDef(qritemCREDITO_ICMS_BASE.text,0.00);
                    qritem1PMARGEM.Asfloat              := StrToFloatDef(qritemPMARGEM.Text,0.00);
                    qritem1PRECO_CUSTO.AsCurrency        := StrToFloatDef(qritemPRECO_CUSTO.text,0.00);
                    qritem1CODLANCAMENTO.AsString        := qritemCODLANCAMENTO.ASSTRING;   
                   qritem1.POST;

                  qritem.Next;
          end;

 formprincipal.log(codigo_usuario,'NOTAFISCAL',qrnotaNUM_NOTA.Text,'INCLUIU','INCLUSÃO DO NOTA FISCAL Nº '+qrnotaNUM_NOTA.Text +' FORNECEDOR: '+ qrnotaCOD_FORNECEDOR.Text +' - ' + qrnotaFORNECEDOR.Text);


  qritem.First;
  while not qritem.eof do // ATUALIZA TABELA PRECO REMARCADO - C000026
  begin
    dm.qrproduto.Close;
    dm.qrproduto.sql.Clear;
    dm.qrproduto.sql.add('SELECT * FROM PRODUTOS WHERE CODIGO = ''' + qritemCODIGO_PRODUTO.AsString + '''');
    dm.qrproduto.open;


    qrproduto.Close;
    qrproduto.sql.Clear;
    qrproduto.sql.add('select p.codigo, p.descricao, p.codigo_barras, p.desc_unidade, p.preco_venda, p.preco_custo, g.* from produtos P, grupo_tributacao g');
    qrproduto.sql.add(' where p.grupo_tributacao = g.COD_GRUPO AND CODIGO = ''' +    qritemCODIGO_PRODUTO.AsString + '''');
    qrproduto.open;

    DM.qrproduto.Close;
    DM.qrproduto.sql.Clear;
    DM.qrproduto.sql.add('select * from produtos where CODIGO = ''' + qritemCODIGO_PRODUTO.AsString + '''');
    DM.qrproduto.open;


    qrfornecedor_codigo.Close;
    qrfornecedor_codigo.sql.Clear;
    qrfornecedor_codigo.sql.add('Select * from fornecedor_codigo');
    qrfornecedor_codigo.sql.add('Where CODFORNECEDOR = ' +QuotedStr(ecod_fornecedor.Text));
    qrfornecedor_codigo.sql.add('and CODPRODUTO = ' +  QuotedStr(qritemCODIGO_PRODUTO.AsString));
    qrfornecedor_codigo.sql.add('or CODIGO = ' +  QuotedStr(qritemCODLANCAMENTO.AsString));
    qrfornecedor_codigo.sql.add('and CODFORNECEDOR = ' + QuotedStr(ecod_fornecedor.Text));
    qrfornecedor_codigo.open;



    if qrfornecedor_codigo.RecordCount = 0 then
    begin
      qrfornecedor_codigo.Insert;
      qrfornecedor_codigoCODFORNECEDOR.TEXT := ecod_fornecedor.Text;
      qrfornecedor_codigoCODPRODUTO.TEXT := qritemCODIGO_PRODUTO.AsString;
      qrfornecedor_codigoCODIGO.TEXT := qritemCODLANCAMENTO.AsString;
      qrfornecedor_codigoPRECO.ASFLOAT := qritemVALOR_UNI.ASFLOAT; // mizael
      qrfornecedor_codigo.Post;
    end;

   IF (combo_tipo.ItemIndex = 0) OR (combo_tipo.ItemIndex = 1) OR (combo_tipo.ItemIndex = 2) or (combo_tipo.ItemIndex = 4)then
   BEGIN
    IF DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'S' then
    begin
    dm.qrproduto.edit;
    dm.qrprodutoPRECO_CUSTO.AsFloat           := qritemVALOR_UNI.asfloat / qritemFRACAO.AsFloat;//qritemPRECO_CUSTO.ASFLOAT;
    dm.qrprodutoESTOQUE.AsFloat               := dm.qrprodutoESTOQUE.AsFloat + qritemQUANTIDADE.ASFLOAT;
    dm.qrprodutoESTOQUE_ATUAL.AsFloat         := dm.qrprodutoESTOQUE.AsFloat + qritemQUANTIDADE.ASFLOAT;
    dm.qrprodutoESTOQUE_FRACAO.AsFloat        := dm.qrprodutoESTOQUE_FRACAO.AsFloat + (qritemQUANTIDADE.ASFLOAT * qritemFRACAO.ASFLOAT);
    dm.qrprodutoPRECO_VENDA.AsFloat           := ((qritemVALOR_UNI.asfloat * qritemMARG_LUCRO.ASFLOAT) / 100) + qritemVALOR_UNI.asfloat;;
    dm.qrprodutoPRECO_VENDA2.AsFloat          := qritemPRECO_VENDA2.ASFLOAT;
    dm.qrprodutoMARGEM_LUCRO.AsFloat          := qritemMARG_LUCRO.ASFLOAT;
    dm.qrprodutoMULTIP_FRACAO.ASFLOAT         := qritemFRACAO.ASFLOAT;
    dm.qrprodutoNCM_SH.Value                  := qritemNCM_SH.AsString;
  //  dm.qrprodutoNOTAFISCAL.Value := enota.Text;
    dm.qrprodutoCODIGO_FORNECEDORES.TEXT      := ecod_fornecedor.Text;
    dm.qrprodutoNOME_FORNECEDOR.TEXT          := eemitente.Text;
    dm.qrprodutoDATA_ULTIMA_COMPRA.AsDateTime := date;

   // if dm.SDS_CONFIGURACOESIMP_CODIGO_FORNECEDOR.Text ='S' then
    dm.qrprodutoREFERENCIA.Text:=  qritemCOD_FAB.Text;
   
    if dm.qrprodutoTIPO_ATIVIDADE.AsString = '' then
      dm.qrprodutoTIPO_ATIVIDADE.Value := qritemCLASSIFICACAO_FISCAL.AsString;

    dm.qrproduto.Post;
    end ELSE
    begin
    dm.qrproduto.edit;
    dm.qrprodutoPRECO_CUSTO.AsFloat           := qritemVALOR_UNI.asfloat / qritemFRACAO.AsFloat; //qritemPRECO_CUSTO.ASFLOAT;
    dm.qrprodutoESTOQUE.AsFloat               := dm.qrprodutoESTOQUE.AsFloat + (qritemQUANTIDADE.ASFLOAT * qritemFRACAO.ASFLOAT);
    dm.qrprodutoESTOQUE_atual.AsFloat         := dm.qrprodutoESTOQUE.AsFloat + (qritemQUANTIDADE.ASFLOAT * qritemFRACAO.ASFLOAT);
    dm.qrprodutoPRECO_VENDA.AsFloat           := ((qritemVALOR_UNI.asfloat * qritemMARG_LUCRO.ASFLOAT) / 100) + qritemVALOR_UNI.asfloat;;
    dm.qrprodutoPRECO_VENDA2.AsFloat          := qritemPRECO_VENDA2.ASFLOAT;
    dm.qrprodutoMARGEM_LUCRO.AsFloat          := qritemMARG_LUCRO.ASFLOAT;
    dm.qrprodutoMULTIP_FRACAO.ASFLOAT         := qritemFRACAO.ASFLOAT;
    dm.qrprodutoNCM_SH.Value                  := qritemNCM_SH.AsString;
  //  dm.qrprodutoNOTAFISCAL.Value := enota.Text;
    dm.qrprodutoCODIGO_FORNECEDORES.TEXT      := ecod_fornecedor.Text;
     dm.qrprodutoNOME_FORNECEDOR.TEXT         := eemitente.Text;
    dm.qrprodutoDATA_ULTIMA_COMPRA.AsDateTime := date;

  //  if dm.SDS_CONFIGURACOESIMP_CODIGO_FORNECEDOR.Text ='S' then
    dm.qrprodutoREFERENCIA.Text:=   qritemCOD_FAB.Text;

    if dm.qrprodutoTIPO_ATIVIDADE.AsString = '' then
      dm.qrprodutoTIPO_ATIVIDADE.Value := qritemCLASSIFICACAO_FISCAL.AsString;

    dm.qrproduto.Post;
    end;
   end;

    //ATUALIZA TABELA ESTOQUE
  {  qryestoque.Close;
    qryestoque.sql.Clear;
    qryestoque.sql.add('SELECT * FROM ESTOQUE WHERE COD_PRO = ' +
      QuotedStr(qritemCODIGO_PRODUTO.AsString));
    qryestoque.sql.add('AND COD_EMP = ' +
      QuotedStr(dm.SDS_EMPRESACODIGO.AsString));

    qryestoque.open;
    qryestoque.edit;
    qryestoqueESTOQUE.Value := dm.qrprodutoESTOQUE.Value;
    qryestoque.Post;  }

 //   ShowMessage('teste');

    dm.qrpreco.Close;
    dm.qrpreco.sql.Clear;
    dm.qrpreco.sql.add('select * from produto_precos where codproduto = ''' + qritemCODIGO_PRODUTO.AsString + '''');
    dm.qrpreco.open;

    if dm.qrpreco.RecordCount = 0 then
    BEGIN
      // caso produto nao tenha Grade de preco, criar
      dm.qrpreco.Insert;
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO from produto_precos');
      DM.ProxCod.Open;
      dm.qrpreco.fieldbyname('codigo').ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
    dm.qrpreco.fieldbyname('codproduto').AsString :=      qritemCODIGO_PRODUTO.AsString;
    dm.qrpreco.fieldbyname('DATA_ALTERACAO').Value := date;
    dm.qrprecoCODFILIAL.Value := dm.SDS_EmpresaCODIGO.Value;
    dm.qrprecoVCUSTO_COMPRA.Value := qritemPRECO_CUSTO.ASFLOAT;
    dm.qrprecoPRECOVAREJO1.Value := qritemPRECO_VENDA.ASFLOAT;
    dm.qrprecoCP_PIPI.Value := qritemPERC_IPI.ASFLOAT;
    dm.qrprecoCP_VIPI.Value := qritemVALOR_IPI.ASFLOAT;
    dm.qrprecoCP_VFRETE.Value :=
      ((qritemFRETE.ASFLOAT / qritemQUANTIDADE.ASFLOAT) / qritemFRACAO.ASFLOAT);
    dm.qrprecoCP_VSEGURO.Value :=
      ((qritemSEGURO.ASFLOAT / qritemQUANTIDADE.ASFLOAT) / qritemFRACAO.ASFLOAT);
    dm.qrprecoCP_VOUTROS.Value :=
      ((qritemOUTRAS.ASFLOAT / qritemQUANTIDADE.ASFLOAT) / qritemFRACAO.ASFLOAT);
    if qritemICMS_REDUCAO.ASFLOAT > 0 then
      dm.qrprecoCP_PICMS.Value := qritemICMS_REDUCAO.ASFLOAT
    else
      dm.qrprecoCP_PICMS.Value := qritemPERC_ICMS.ASFLOAT;

    { varejo }
    dm.qrprecoPRECOVAREJO1.Value := qritemPRECO_VENDA.ASFLOAT;
    dm.qrprecoPMARGEM1.Value := qritemPMARGEM.ASFLOAT;

    { atacado }
    dm.qrprecoPRECOATACADO1.Value := qritemPRECO_VENDA.ASFLOAT *  qritemFRACAO.ASFLOAT;

    dm.qrprecoVD_PICMS.Value := 0; // Temp

    if qrproduto.fieldbyname('FLAG_PIS_COFINS').AsString = 'S' then
    begin
      dm.qrprecoCP_PPIS.ASFLOAT   := qritemVALOR_PIS.ASFLOAT;
      dm.qrprecoCP_PCOFINS.ASFLOAT := qritemVALOR_COFINS.ASFLOAT;
      dm.qrprecoVD_PPIS.Value    := qrPRODUTOPERC_ALIQUOTA_PIS.ASFLOAT;
      dm.qrprecoVD_PCOFINS.Value := qrPRODUTOPERC_ALIQUOTA_COFINS.ASFLOAT;
    end;

    dm.qrpreco.Post;

    qritem.next;
    application.ProcessMessages;

    end else
    BEGIN

  //    ShowMessage('teste1');
      dm.qrpreco.edit;

    dm.qrpreco.fieldbyname('codigo').ASINTEGER :=dm.qrpreco.fieldbyname('codigo').ASINTEGER;
    dm.qrpreco.fieldbyname('codproduto').AsString :=      qritemCODIGO_PRODUTO.AsString;
    dm.qrpreco.fieldbyname('DATA_ALTERACAO').Value := date;
    dm.qrprecoVCUSTO_COMPRA.Value := qritemPRECO_CUSTO.ASFLOAT;
    dm.qrprecoPRECOVAREJO1.Value := qritemPRECO_VENDA.ASFLOAT;
    dm.qrprecoCP_PIPI.Value := qritemPERC_IPI.ASFLOAT;
    dm.qrprecoCP_VIPI.Value := qritemVALOR_IPI.ASFLOAT;
    dm.qrprecoCP_VFRETE.Value :=
      ((qritemFRETE.ASFLOAT / qritemQUANTIDADE.ASFLOAT) / qritemFRACAO.ASFLOAT);
    dm.qrprecoCP_VSEGURO.Value :=
      ((qritemSEGURO.ASFLOAT / qritemQUANTIDADE.ASFLOAT) / qritemFRACAO.ASFLOAT);
    dm.qrprecoCP_VOUTROS.Value :=
      ((qritemOUTRAS.ASFLOAT / qritemQUANTIDADE.ASFLOAT) / qritemFRACAO.ASFLOAT);
    if qritemICMS_REDUCAO.ASFLOAT > 0 then
      dm.qrprecoCP_PICMS.Value := qritemICMS_REDUCAO.ASFLOAT
    else
      dm.qrprecoCP_PICMS.Value := qritemPERC_ICMS.ASFLOAT;

    { varejo }
    dm.qrprecoPRECOVAREJO1.Value := qritemPRECO_VENDA.ASFLOAT;
    dm.qrprecoPMARGEM1.Value := qritemPMARGEM.ASFLOAT;

    { atacado }
    dm.qrprecoPRECOATACADO1.Value := qritemPRECO_VENDA.ASFLOAT *  qritemFRACAO.ASFLOAT;

    dm.qrprecoVD_PICMS.Value := 0; // Temp

    if qrproduto.fieldbyname('FLAG_PIS_COFINS').AsString = 'S' then
    begin
      dm.qrprecoCP_PPIS.ASFLOAT   := qritemVALOR_PIS.ASFLOAT;
      dm.qrprecoCP_PCOFINS.ASFLOAT := qritemVALOR_COFINS.ASFLOAT;
      dm.qrprecoVD_PPIS.Value    := qrPRODUTOPERC_ALIQUOTA_PIS.ASFLOAT;
      dm.qrprecoVD_PCOFINS.Value := qrPRODUTOPERC_ALIQUOTA_COFINS.ASFLOAT;
    end;
    dm.qrpreco.Post;

    qritem.next;
    application.ProcessMessages;
    end;
  END;
 //     ShowMessage('teste3');
  // formprincipal.FechaAguarde;

  dm.coneccao.commit;

  qritem.First;

  while not qritem.eof do // ATUALIZA TABELA PRECO REMARCADO - C000026
  begin
    qrfornecedor_codigo.Close;
    qrfornecedor_codigo.sql.Clear;
    qrfornecedor_codigo.sql.add('Select * from fornecedor_codigo');
    qrfornecedor_codigo.sql.add('Where CODFORNECEDOR = ' + QuotedStr(ecod_fornecedor.Text));
    qrfornecedor_codigo.sql.add('and CODPRODUTO = ' +  QuotedStr(qritemCODIGO_PRODUTO.AsString));
    qrfornecedor_codigo.sql.add('or CODIGO = ' +   QuotedStr(qritemCODIGO_ITEM.AsString));
    qrfornecedor_codigo.sql.add('and CODFORNECEDOR = ' + QuotedStr(ecod_fornecedor.Text));
    qrfornecedor_codigo.open;

    if qrfornecedor_codigo.RecordCount > 0 then
    begin
      qrfornecedor_codigo.edit;
      qrfornecedor_codigoPRECO.ASFLOAT := qritemVALOR_UNI.ASFLOAT; // mizael
      qrfornecedor_codigo.Post;
    end;

    qritem.next;
    application.ProcessMessages;
  end;

  dm.coneccao.commit;
  // ******** FIM TABELA REMARCAÇÃO

  blimpa_variavelClick(frmimporta_nfe);
  lstatus.caption := '...';

  if vfImportar then
  begin
    try
      vpQuery:= TFDQuery.Create(nil);
      try
        vpQuery.Connection:= DM.Coneccao;
        vpQuery.SQL.Clear;
        vpQuery.SQL.Add('UPDATE IMPORTAR_XMLS SET XML = NULL, STATUS =:STATUS WHERE CHAVE =:CHAVE');
        vpQuery.Prepare;
        vpQuery.Params.ParamByName('STATUS').AsString:= 'F';
        vpQuery.Params.ParamByName('CHAVE').AsString:= vfChave;
        vpQuery.ExecSQL;

        DeleteFile(vfPath);
      except
        DeleteFile(vfPath);
      end;
    finally
      FreeAndNil(vpQuery);
    end;
  end;

  MessageBeep(64);
  application.messagebox('Importação Concluida Com Sucesso!', 'Atenção',
    mb_ok + MB_ICONINFORMATION);
  eid.SetFocus;
  Close;
end;

procedure Tfrmimporta_nfe.FormShow(Sender: TObject);
begin
  try
    try
      vfIni:= TIniFile.Create(ExtractFilePath(Application.ExeName) + 'SIACE.ini');
      vfImportar:= vfIni.ReadBool('IMPORTAR-XMLS', 'IMPORTAR', False);
    except
      vfImportar:= False;
    end;
  finally
    if Assigned(vfIni) then FreeAndNil(vfIni);
  end;
  
 

  combo_tipo.ItemIndex := 0;
end;

{function Tfrmimporta_nfe.lettersNotAccents(Str: String): String;
type
  USASCIIString = type AnsiString(20127);
var
  C: Char;
begin
  result := '';
  for C in Str do
    result := result + String(USASCIIString(C));
end;    }

procedure Tfrmimporta_nfe.bsairClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmimporta_nfe.CadastraFornecedor;
begin
  dm.ProxCod.Close;
  dm.ProxCod.SQL.Clear;
  dm.ProxCod.SQL.Add('select max(CODIGO) as N_CODIGO from FORNECEDORES');
  DM.ProxCod.Open;
      if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;

  DM.SDS_Fornecedores.open;
  DM.SDS_Fornecedores.Insert;
  DM.SDS_FornecedoresCODIGO.Value := (DM.ProxCodN_CODIGO.ASINTEGER) + 1; //formprincipal.codifica('000009');
  DM.SDS_FornecedoresNOME.Value :=
    copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome, 1, 100);
  DM.SDS_FornecedoresFANTASIA.Value :=
    copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant, 1, 100);
  DM.SDS_FornecedoresENDERECO.Value := ACBrNFe1.NotasFiscais.Items[0]
    .NFe.Emit.EnderEmit.xLgr;
  DM.SDS_FornecedoresBAIRRO.Value := ACBrNFe1.NotasFiscais.Items[0]
    .NFe.Emit.EnderEmit.xBairro;
  DM.SDS_FornecedoresCIDADE.Value := ACBrNFe1.NotasFiscais.Items[0]
    .NFe.Emit.EnderEmit.xMun;
  DM.SDS_FornecedoresESTADO.Value := ACBrNFe1.NotasFiscais.Items[0]
    .NFe.Emit.EnderEmit.UF;
  DM.SDS_FornecedoresCEP.Value :=
    IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
  DM.SDS_Fornecedorescodigo_ibge.Value :=
    IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun);
  DM.SDS_FornecedoresTELEFONE.Value := ACBrNFe1.NotasFiscais.Items[0]
    .NFe.Emit.EnderEmit.fone;
  DM.SDS_FornecedoresCNPJ.Value := ecnpj_emitente.Text;
  DM.SDS_FornecedoresIE.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
  DM.SDS_FornecedoresCOD_EMPRESA.Value := DM.SDS_EmpresaCODIGO.Value; // now;
  DM.SDS_FornecedoresTP.Text := 'J'; 
  DM.SDS_Fornecedores.Post;
  DM.SDS_Fornecedores.ApplyUpdates(0);
  dm.IBTransaction.Commit;

   DM.SDS_Fornecedores.Active := false;
   dm.SDS_Fornecedores.SQL.Clear;
   DM.SDS_Fornecedores.SQL.Add('select * from fornecedores where cnpj = '''+ecnpj_emitente.Text +''' order by codigo ASC');
   DM.SDS_Fornecedores.Active := True;

end;

function Tfrmimporta_nfe.CadastrarProduto(CodProdutoXML, CodBarras, Produto,
  CodFornecedor, Unidade, NCM, csosn, cst: string;
  IPI, qtdEmbalagem: double): Boolean;
begin
  query.Close;
  query.sql.Clear;
  query.sql.add('select codigo, codigo_barras, descricao from produtos');
  query.sql.add('where codigo_barras = ' + QuotedStr(CodBarras));
  // query.SQL.Add('or codbarra = ' + QuotedStr(CodProdutoXML));
  query.open;

  if query.RecordCount = 0 then
  begin

   { QryCadastraProduto.Close;
    QryCadastraProduto.open;    }

       dm.ProxCod.Close;
       dm.ProxCod.SQL.Clear;
       dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS');
       DM.ProxCod.Open;

{    QryCadastraProduto.Insert;
    QryCadastraProdutoCODIGO.AsInteger           :=  DM.ProxCodN_CODIGO.ASINTEGER + 1; //formprincipal.codifica('000025');
    QryCadastraProdutoCODORIGINAL.Value          := CodProdutoXML;
    QryCadastraProdutoCODIGO_BARRAS.Value        := CodBarras;
    QryCadastraProdutodescricao.Value            := Produto;
    QryCadastraProdutoCODIGO_FORNECEDORES.text   := CodFornecedor;
    QryCadastraProdutoDESC_UNIDADE.Value         := Unidade;
    QryCadastraProdutoDESC_UNID_ENT.Value        := Unidade;
    QryCadastraProdutoNCM_SH.Value               := NCM;
    QryCadastraProdutoTIPO_ATIVIDADE.text        := '00';
    QryCadastraProdutoBALANCA.ASSTRING           := 'N';
    QryCadastraProdutoUSA_SERIAL.AsInteger       := 0;
    QryCadastraProdutoUSA_GRADE.Value            := 0;
   // QryCadastraProdutoCSOSN.Value := csosn;
  //  QryCadastraProdutoCST.Value := cst;
   // QryCadastraProdutoIPI.Value := IPI;
    QryCadastraProdutoGRUPO_TRIBUTACAO.AsString  := '1';
    QryCadastraProdutoCODIGO_LOCAL_ESTOQUE.Value := 1;
    QryCadastraProdutoCOD_PRODUTO_ESTOQUE.Value  := 1;
    QryCadastraProdutoUSERCAD.ASSTRING           := FORMPRINCIPAL.USERLOGADO;
    QryCadastraProdutoULTIMACOMPRA.AsDateTime       := DATE;
    QryCadastraProdutoSECCAO.AsInteger           := 1;
    QryCadastraProdutoCATEGORIA.AsInteger        := 1;
    QryCadastraProdutoMULTIP_FRACAO.AsInteger    := 1;
    QryCadastraProdutoFRACAO.Value               := 1;
    QryCadastraProdutoESTOQUE.Value              := 0;
    QryCadastraProdutoDATACAD.Value              := date;
    QryCadastraProdutoMARGEM_LUCRO.AsFloat     := 0;
    QryCadastraProdutoCOMISSAO.AsFloat         := 0;
    QryCadastraProdutoUNIDADE.AsInteger        := 1;
    QryCadastraProdutoFRETE.AsFloat            := 0;
    QryCadastraProdutoICMS.AsFloat             := 0;
    QryCadastraProdutoIPI_IRPJ.AsFloat         := 0;
    QryCadastraProdutoOUTROS_IMPOSTOS.AsFloat  := 0;
    QryCadastraProdutoDESCONTOS.AsFloat        := 0;
    QryCadastraProdutoCLASS_FISCAL.VALUE       := null;
    QryCadastraProdutoSIT_TRIBUTARIA.ASSTRING  := 'NN';
    QryCadastraProdutoCUSTO_MEDIO.ASFLOAT      := 0;
    QryCadastraProdutoCOD_EMPRESA.AsInteger    := dm.sds_empresacodigo.asinteger;
    QryCadastraProdutoATIVO.ASSTRING           := 'A';
    QryCadastraProdutoENABLE_NUMSERIE.AsInteger    := 0;
    QryCadastraProduto.Post;

    CodigoProdutoNovo := QryCadastraProdutoCODIGO.text;
    NomeProduto := QryCadastraProdutoDESCRICAO.text;

    qrfornecedor_codigo.Insert;
    qrfornecedor_codigoCODFORNECEDOR.TEXT := CodFornecedor;
    qrfornecedor_codigoCODPRODUTO.TEXT := CodigoProdutoNovo;
    qrfornecedor_codigoCODIGO.TEXT := CodProdutoXML;
    qrfornecedor_codigoPRECO.Value := 0;
    qrfornecedor_codigo.Post;   }

                 if DM.IBTransaction.Active then
                   DM.IBTransaction.Commit;
                   DM.IBTransaction.StartTransaction;

                    with dm.QConsulta do
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
                        Parambyname('CODIGO_BARRAS').AsString   := CodBarras;
                        Parambyname('DESCRICAO').AsString       := copy(Produto,1,70);
                        Parambyname('ABREVIADO').value          := null;
                        Parambyname('PRECO_CUSTO').AsFloat          := 0; //Prod.vUnCom;
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
                        Parambyname('PRECO_VENDA').ASFLOAT           := 0;
                        Parambyname('DESCONTO_MAXIMO').ASFLOAT  := 0;
                        Parambyname('CODIGO_GRUPO').VALUE       := NULL;
                        Parambyname('CODIGO_SUBGRUPO').VALUE    := NULL;
                        Parambyname('CODIGO_MARCA').VALUE       := NULL;
                        Parambyname('NOME_GRUPO').VALUE         := NULL;
                        Parambyname('NOME_SUBGRUPO').VALUE      := NULL;
                        Parambyname('NOME_MARCA').VALUE         := NULL;
                        Parambyname('NOME_FORNECEDOR').VALUE    := NULL;
                        Parambyname('CODIGO_FORNECEDORES').VALUE := CodFornecedor;
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
                        Parambyname('APLICACAO').asstring       := NULL;
                        Parambyname('ESP_COD_AUX').VALUE        := NULL;
                        Parambyname('GARANTIA').VALUE           := NULL;
                        Parambyname('BALANCA').VALUE            := NULL;
                        Parambyname('ETIQUETA').VALUE           := NULL;
                        Parambyname('ATIVO').ASSTRING           := 'A';
                        Parambyname('REFERENCIA').VALUE         := NULL;
                        Parambyname('COD_EMPRESA').ASinteger    := dm.sds_empresacodigo.asinteger;
                        Parambyname('DESC_UNIDADE').ASSTRING    := Unidade;
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
                        Parambyname('UNIDADE_ENT').VALUE        := Unidade;
                        Parambyname('DESC_UNID_ENT').VALUE      := NULL;
                        Parambyname('QUANT_SAIDA').VALUE        := NULL;
                        Parambyname('QUANT_ENTRADA').VALUE      := NULL;
                        Parambyname('ESTOQUE_FRACAO').VALUE     := NULL;
                        Parambyname('DATA_FABRICACAO').VALUE    := NULL;
                        Parambyname('FRACAO').AsInteger         := 1;
                        Parambyname('NCM_SH').AsString          := NCM;
                        Parambyname('COD_MS').VALUE             := NULL;
                        Parambyname('CONTOLAESTOQUE').VALUE     := NULL;
                        Parambyname('PRODUTOCOMPOSTO').VALUE    := NULL;
                        Parambyname('TIPO_ATIVIDADE').VALUE     := NULL;
                        Parambyname('COD_PRODUTO_ESTOQUE').AsInteger   := 1;
                        Parambyname('CODIGO_LOCAL_ESTOQUE').AsInteger  := 1;
                        Parambyname('LISTA_ABC').VALUE                  := NULL;
                        Parambyname('GRUPO_TRIBUTACAO').AsInteger      := 1;
                        Parambyname('COMBUSTIVEL').AsString             := 'N';
                        Parambyname('COR').VALUE                  := NULL;// StrToInt(Prod.veicProd.cCor);
                        Parambyname('ENABLE_NUMSERIE').AsInteger := 0;
                        Parambyname('ID_PRODUTOS').VALUE        := NULL;
                        Parambyname('COD_ANP').VALUE            := NULL;
                        Parambyname('CESTA').VALUE              := NULL;
                        Parambyname('ML_QUANT_BEB').VALUE       := NULL;
                        Parambyname('UND_TRIB').VALUE           := NULL;

                        Parambyname('COR_DESC').Value           := NULL;
                        Parambyname('CHASSI').AsString          := NULL;
                        Parambyname('COR_DESC').AsString        := NULL;
                        Parambyname('N_MOTOR').AsString         := NULL;
                        Parambyname('ANO_FAB').AsString         := NULL;
                        Parambyname('ANO_MOD_FAB').AsString     := NULL;
                        Parambyname('TIPO_VEIC').AsString       := NULL;
                        Parambyname('N_SERIE').AsString         := NULL;
                        Parambyname('COD_MODELO').AsString      := NULL;
                        Parambyname('ESPECIE_VEICULO').AsString := NULL;
                        Parambyname('COD_COR_DENATRAN').AsString := NULL;
                        Parambyname('TIPO_COMBUSTIVEL').AsString := NULL;
                        {Parambyname('COR_DESC').Value           := Prod.veicProd.cCor;
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
                        Parambyname('TIPO_COMBUSTIVEL').AsString := Prod.veicProd.tpComb;}
                        Parambyname('VEICULO').AsString          := 'N';
                        ExecSQL;
                      end;

                       DM.IBTransaction.CommitRetaining;


  end
  else
  begin
    vcod_produto := query.fieldbyname('Codigo').AsString;
    CodigoProdutoNovo := query.fieldbyname('Codigo').AsString;
    NomeProduto := query.fieldbyname('descricao').AsString;
  end;

  dm.coneccao.commit;
  result := true;
end;

function Tfrmimporta_nfe.CodBarrasValido(cod: string): string;
begin
  ACBrValidador1.TipoDocto := docGTIN;
  ACBrValidador1.Documento := cod;
  if ACBrValidador1.Validar then
    result := cod
  else
    result := '';
end;

procedure Tfrmimporta_nfe.sair1Click(Sender: TObject);
begin
  bsairClick(frmimporta_nfe);
end;

procedure Tfrmimporta_nfe.VerificaProdutos;
begin

end;

// dados referentes a importação

{
  Os impostos referente a importação estão em

  Det.Items[n].Imposto.II.vBc = Valor da Base de Calculo para Imposto de Importação
  Det.Items[n].Imposto.II.vDespAdu = Valor das Despesas FDuaneiras
  Det.Items[n].Imposto.II.vII = Valor do Imposto de Importação
  Det.Items[n].Imposto.II.vIOF = Valor do IOF sobre Imposto de Importação

  Mas ainda faltam os dados referentes a DI Declaração de Importação no caso o Nº da DI.

  with  Prod.DI.Add do
  begin
  nDi := '1';
  dDi := Date;
  xLocDesemb := 'Local';
  UFDesemb   := 'SP';
  dDesemb := Date;
  cExportador := 'Exportador';
  with FDi.Add do
  begin
  nAdicao
  nSeqAdi
  cFabricante
  vDescDI
  end;
  end;
}

procedure Tfrmimporta_nfe.qritem1CalcFields(DataSet: TDataSet);
begin
  if qritemCODIGO_BARRAS.AsString = '' then
    qritemchave.AsInteger := 0
  else
    qritemchave.AsInteger := 1;
end;

function Tfrmimporta_nfe.RemoveAcento(s: string): string;
var
  i: integer;
begin
  for i := 1 to Length(s) do
    case s[i] of
      'Á':
        s[i] := 'A';
      'É':
        s[i] := 'E';
      'Í':
        s[i] := 'I';
      'Ó':
        s[i] := 'O';
      'Ú':
        s[i] := 'U';
      'À':
        s[i] := 'A';
      'È':
        s[i] := 'E';
      'Ì':
        s[i] := 'I';
      'Ò':
        s[i] := 'O';
      'Ù':
        s[i] := 'U';
      'Â':
        s[i] := 'A';
      'Ê':
        s[i] := 'E';
      'Î':
        s[i] := 'I';
      'Ô':
        s[i] := 'O';
      'Û':
        s[i] := 'U';
      'Ä':
        s[i] := 'A';
      'Ë':
        s[i] := 'E';
      'Ï':
        s[i] := 'I';
      'Ö':
        s[i] := 'O';
      'Ü':
        s[i] := 'U';
      'Ã':
        s[i] := 'A';
      'Õ':
        s[i] := 'O';
      'Ñ':
        s[i] := 'N';
      'Ç':
        s[i] := 'C';
      'á':
        s[i] := 'a';
      'é':
        s[i] := 'e';
      'í':
        s[i] := 'i';
      'ó':
        s[i] := 'o';
      'ú':
        s[i] := 'u';
      'à':
        s[i] := 'a';
      'è':
        s[i] := 'e';
      'ì':
        s[i] := 'i';
      'ò':
        s[i] := 'o';
      'ù':
        s[i] := 'u';
      'â':
        s[i] := 'a';
      'ê':
        s[i] := 'e';
      'î':
        s[i] := 'i';
      'ô':
        s[i] := 'o';
      'û':
        s[i] := 'u';
      'ä':
        s[i] := 'a';
      'ë':
        s[i] := 'e';
      'ï':
        s[i] := 'i';
      'ö':
        s[i] := 'o';
      'ü':
        s[i] := 'u';
      'ã':
        s[i] := 'a';
      'õ':
        s[i] := 'o';
      'ñ':
        s[i] := 'n';
      'ç':
        s[i] := 'c';
    end;
  result := s;
end;

procedure Tfrmimporta_nfe.blimpa_variavelClick(Sender: TObject);
begin
  eid.Text := '';
  enatureza.Text := '';
  ecod_fornecedor.Text := '';
  ecod_municipio.Text := '';
  ecod_destinatario.Text := '';
  ecnpj_emitente.Text := '';
  ecnpj_destinatario.Text := '';
  enota.Text := '';
  eserie.Text := '';
  emodelo.Text := '';
  enota_uf.Text := '';
  edata_emissao.Text := '';
  edata_saida.Text := '';
  edv.Text := '';
  eid.Text := '';
  eemitente.Text := '';
  edestinatario.Text := '';
  ecfop.Text := '';
  emunicipio_emitente.Text := '';
  emunicipio_destinatario.Text := '';
  etipo_nota.Text := '';
  etipo_venda.Text := '';
  euf_emitente.Text := '';
  euf_destinatario.Text := '';
  ecod_fornecedor.Text := '';

end;

procedure Tfrmimporta_nfe.econtaButtonClick(Sender: TObject);
begin
  FormConsPlanoContas := tFormConsPlanoContas.create(self);
  FormConsPlanoContas.showmodal;

  econta.Text := DM.SDS_PLCONTASCODIGO.TEXT;
  enomeconta.Text := DM.SDS_PlCONTASnome.TEXT;

  edit5.SetFocus;
end;

procedure Tfrmimporta_nfe.econtaKeyPress(Sender: TObject; var Key: Char);
begin
   if not(key in ['0'..'9', #8]) then
          key := #0;

  if Key = #13 then
  begin
   // econta.Text := formprincipal.zerarcodigo(econta.Text, 6);
     if econta.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
    then
      econtaButtonClick(frmimporta_nfe)
    else
    begin
    //  Edit5.setfocus;
      enomeconta.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
    end;
   end  else
  //  blocconta.setfocus;
    edit5.SetFocus;
  end;
end;

procedure Tfrmimporta_nfe.bexcluirClick(Sender: TObject);
begin
  qritem.Delete;
  dm.coneccao.commit;
end;

procedure Tfrmimporta_nfe.bprodutosClick(Sender: TObject);
begin

 // busca_produto := 2;
  {if formprincipal.acesso(codigo_usuario, '02.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!', 'Atenção',
      mb_ok + mb_iconerror);
    exit;
  end;   }

{  dm.QRCONFIG.open;
  if dm.QRCONFIG.fieldbyname('CADASTRO_PRODUTO').AsString = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.create(self);
    frmproduto.showmodal;
  end
  else
  begin
    if dm.QRCONFIG.fieldbyname('CADASTRO_PRODUTO').AsString = 'LIGHT'
    then
    begin
      frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
      frmproduto_LIGTH.showmodal;
    end
    else
    begin
      if dm.QRCONFIG.fieldbyname('CADASTRO_PRODUTO').AsString = 'FARMA'
      then
      begin
        frmproduto_FARMA := tfrmproduto_FARMA.create(self);
        frmproduto_FARMA.showmodal;
      end
      else
      begin
        if dm.QRCONFIG.fieldbyname('CADASTRO_PRODUTO').AsString = 'PECAS'
        then
        begin
          frmproduto_AUTO := tfrmproduto_AUTO.create(self);
          frmproduto_AUTO.showmodal;
        end;
      end;
    end;
  end;   }
      FormProdutos:=NIL;
      FormProdutos:=TFormProdutos.Create(self);
      FormProdutos.FormStyle := fsNormal;
      FormProdutos.Visible:= False;
      FormProdutos.btnLocalizar.Enabled :=False;
      FormProdutos.ShowModal;

  atualiza_produto_novo := true;

end;

procedure Tfrmimporta_nfe.FDvGlowButton2Click(Sender: TObject);
begin
//  if formprincipal.autentica('Excluir Contas a Pagar', 4) then
  If FormPrincipal.Label1.Caption ='N'then
begin
SHOWMESSAGE('O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');

End else
If FormPrincipal.Label1.Caption ='S'then
begin
  if Application.MESSAGEBOX('Confirma a Exclusão permanente da Nota Fiscal, dados serão perdidos...', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    qrpagar.Delete;
    dm.coneccao.commit;
  end;

end;
end;

procedure Tfrmimporta_nfe.bcancelarClick(Sender: TObject);
begin
  continua := false;
  application.messagebox('Importação Cancalada pelo usuário!', 'Atenção',
    mb_ok + MB_ICONEXCLAMATION);
  bcancelar.Enabled := false;
  bimporta.Enabled := true;

  qritem.First;
  while not qritem.eof do
  begin
   qritem.Delete;
   qritem.Next;
   application.ProcessMessages;
  end;
end;

procedure Tfrmimporta_nfe.bimprimeClick(Sender: TObject);
begin

  dm.qrrelatorio.open;
  dm.qrrelatorio.edit;

  dm.qrrelatorio.fieldbyname('LINHA1').AsString := eemitente.Text;
  dm.qrrelatorio.fieldbyname('LINHA2').AsString := ecnpj_emitente.Text;
  dm.qrrelatorio.fieldbyname('LINHA3').AsString := enota.Text;
  dm.qrrelatorio.fieldbyname('LINHA4').AsString := emodelo.Text;
  dm.qrrelatorio.fieldbyname('LINHA5').AsString := eserie.Text;
  dm.qrrelatorio.fieldbyname('LINHA6').AsString := edata_emissao.Text;
  dm.qrrelatorio.fieldbyname('LINHA7').AsString := edata_saida.Text;

  dm.qrrelatorio.fieldbyname('VALOR1').ASFLOAT := ebase_calculo.Value;
  dm.qrrelatorio.fieldbyname('VALOR2').ASFLOAT := evalor_icms.Value;
  dm.qrrelatorio.fieldbyname('VALOR3').ASFLOAT :=
    ebase_substituicao.Value;
  dm.qrrelatorio.fieldbyname('VALOR4').ASFLOAT :=
    evalor_substituicao.Value;
  dm.qrrelatorio.fieldbyname('VALOR5').ASFLOAT := evalor_produtos.Value;
  dm.qrrelatorio.fieldbyname('VALOR6').ASFLOAT := efrete.Value;
  dm.qrrelatorio.fieldbyname('VALOR7').ASFLOAT := eseguro.Value;
  dm.qrrelatorio.fieldbyname('VALOR8').ASFLOAT := eoutras_despesas.Value;
  dm.qrrelatorio.fieldbyname('VALOR9').ASFLOAT := evalor_ipi.Value;

  dm.qrrelatorio.fieldbyname('VALOR10').ASFLOAT := edesconto.Value;
  dm.qrrelatorio.fieldbyname('VALOR11').ASFLOAT := evalor_isento.Value;
  dm.qrrelatorio.fieldbyname('VALOR12').ASFLOAT := evalor_pis.Value;
  dm.qrrelatorio.fieldbyname('VALOR13').ASFLOAT := evalor_cofins.Value;
  dm.qrrelatorio.fieldbyname('VALOR14').ASFLOAT := ecredito_icms.Value;
  dm.qrrelatorio.fieldbyname('VALOR15').ASFLOAT := evalor_nota.Value;

  fximprime.LoadFromFile('\siace\REL\F000197.fr3');
  fximprime.ShowReport;

end;

procedure Tfrmimporta_nfe.eidEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmimporta_nfe.eidExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmimporta_nfe.bgerarClick(Sender: TObject);
var
  i: integer;
  valor_fat: real;
begin

  qrpagar.Close;
  qrpagar.sql.Clear;
  qrpagar.sql.add('DELETE FROM Contas_apagar WHERE NOTAFISCAL = ' + enota.Text);
  qrpagar.execsql;

  qrpagar.sql.Clear;
  qrpagar.sql.add('SELECT * FROM Contas_apagar WHERE NOTAFISCAL = ' + enota.Text + ' ORDER BY DATA_VENCIMENTO');
  qrpagar.open;

  if evalor_nota.Value > 0 then
    valor_fat := evalor_nota.Value
  else
  begin
    application.messagebox('Esta nota fiscal não possue valor!', 'Erro',
      mb_ok + mb_iconerror);
    exit;
  end;

  for i := 1 to ecount.IntValue do
  begin

    bar.PartsComplete := 0;
    bar.TotalParts := eitems.AsInteger;

     dm.ProxCod.Close;
     dm.ProxCod.SQL.Clear;
     dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CONTAS_APAGAR');
     DM.ProxCod.Open;

    qrpagar.Insert;
    qrpagarCODIGO.asinteger :=  DM.ProxCodN_CODIGO.ASINTEGER + 1; //formprincipal.codifica('000046');;
    qrpagarDOCUMENTO.AsString := enota.Text + '/' + formprincipal.zerarcodigo
      (IntToStr(i), 2);
    qrpagarESPECIE.AsString := 'DUPLICATA';
    qrpagarHISTORICO.AsString := 'Duplicata a Pagar';
    qrpagarDATA_VENCIMENTO.AsDateTime := INCMONTH(StrToDate(edata_emissao.Text), i);
    qrpagarVALOR.ASFLOAT := valor_fat / ecount.IntValue;
    qrpagarVALORPAGO.ASFLOAT := 0;
    qrpagarDATA_EMISSAO.AsDateTime := StrToDate(edata_emissao.Text);
    qrpagarDATA_PAGAMENTO.AsString := '';
    qrpagarCODCONTA.AsString := econta.Text;
    qrpagarCODFORNECEDOR.AsString := ecod_fornecedor.Text;
    qrpagarLIQUIDO.ASFLOAT := valor_fat / ecount.IntValue;
    qrpagarDESCONTO.ASFLOAT := 0;
    qrpagarACRESCIMO.ASFLOAT := 0;
    qrpagarNOTAFISCAL.AsString := enota.Text;
    qrpagarC.AsString := '';
    qrpagarE.AsString := '';
    qrpagarFILTRO.AsInteger := 0;
    qrpagarSITUACAO.AsInteger := 1;
    qrpagarCODNOTA.text := qrnotaCODIGO_NOTA.text;
    qrpagarMOVIMENTO.AsInteger := 0;
    qrpagarCODCAIXA.AsString := '99';
    qrpagarCOD_empresa.asinteger := Iemp;
   // QRPAGARCOD_IMOVEL.TEXT := EImovel.Text;
   // qrpagarCOD_CENTRO_CUSTO.TEXT := eCentro.Text;
    qrpagar.Post;

    bgravar.Enabled := true;
    bimporta.Enabled := true;
    bcancelar.Enabled := false;
    lstatus.caption := '...';
    end;
  dm.coneccao.commit;
  application.ProcessMessages;

  qrpagar.Refresh;

end;

procedure Tfrmimporta_nfe.qritemCalcFields(DataSet: TDataSet);
begin
  if qritemCODIGO_PRODUTO.AsString = '' then
    qritemchave.AsInteger := 0
  else
    qritemchave.AsInteger := 1;
end;

procedure Tfrmimporta_nfe.wwDBGrid2DblClick(Sender: TObject);
var
 CodBarras : string;
begin
  atualiza := False;

  frmfornecedor_codigo := tfrmfornecedor_codigo.create(self);
  frmfornecedor_codigo.Tag  := 1;
  frmfornecedor_codigo.qrfornecedor_codigo.Close;
  frmfornecedor_codigo.qrfornecedor_codigo.Open;
  frmfornecedor_codigo.qrfornecedor.close;
  frmfornecedor_codigo.qrfornecedor.sql.clear;
  frmfornecedor_codigo.qrfornecedor.sql.add('select * from fornecedores where codigo = ''' + qritemCODFORNECEDOR.AsString + '''');
  frmfornecedor_codigo.qrfornecedor.open;


  frmfornecedor_codigo.qrfornecedor_codigo.Insert;
  frmfornecedor_codigo.bincluir.Click;
  frmfornecedor_codigo.qrfornecedor_codigoCODIGO.Text        := qritemCODLANCAMENTO.AsString;
  frmfornecedor_codigo.qrfornecedor_codigo.fieldbyname('codigo').asstring := qritemCODLANCAMENTO.AsString;
  frmfornecedor_codigo.qrfornecedor_codigoCODFORNECEDOR.Text := qritemCODFORNECEDOR.AsString;
  frmfornecedor_codigo.qrfornecedor_codigo.fieldbyname('codfornecedor').asstring := qritemCODFORNECEDOR.AsString;
  frmfornecedor_codigo.Edit3.Visible  := True;
  frmfornecedor_codigo.Edit1.Visible  := True;
  frmfornecedor_codigo.Label5.Visible := True;
  frmfornecedor_codigo.Label6.Visible := True;
  frmfornecedor_codigo.Label7.Visible := True;
  frmfornecedor_codigo.Edit3.text     := qritemCODIGO_BARRAS.AsString;
  frmfornecedor_codigo.Edit1.Text     := qritemDESCRICAO.AsString;
  frmfornecedor_codigo.ECODFORNECEDOR.Enabled := False;
 // frmfornecedor_codigo.Lproduto.Caption := qrprodutoCODIGO.AsString + '-' +  qrprodutoPRODUTO.AsString;
//  CodBarras := (copy(frmfornecedor_codigo.Edit3.text, 1, 3));
  frmfornecedor_codigo.showmodal;

  IF atualiza = True then
  begin
  qritem.Edit;
  qritemCODIGO_PRODUTO.Text  := RESULTADO_PESQUISA1;
  DM.Sds_produtos.Active     := false;
  DM.Sds_produtos.sql.clear;
  DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO = ' + #39  + RESULTADO_PESQUISA1 + #39+'ORDER BY DESCRICAO');
  DM.Sds_produtos.Active        := True;
  qritemPRECO_VENDA.AsFloat     := DM.SDS_PRODUTOSPRECO_VENDA.AsFloat;
  qritemPRECO_VENDA2.AsFloat    := DM.SDS_PRODUTOSPRECO_VENDA2.AsFloat;
  qritemMARG_LUCRO.AsFloat      := DM.SDS_PRODUTOSMARGEM_LUCRO.AsFloat;
 { if CodBarras <> '978' then
  qritemCODIGO_BARRAS.AsString  := frmfornecedor_codigo.Edit3.text
  else  }
  qritemCODIGO_BARRAS.AsString  := DM.SDS_PRODUTOSCODIGO_BARRAS.AsString;
  qritemCOD_FAB.AsString        := DM.SDS_PRODUTOSREFERENCIA.AsString;
  qritemCOD_MARCA.Text := DM.SDS_MARCASCODIGO.Text;
  DM.SDS_Marcas.OPEN;
  DM.SDS_Marcas.Locate('CODIGO',DM.Sds_produtosCODIGO_MARCA.Text,[lopartialkey]);
  qritemMARCA.Text := DM.SDS_MarcasDESCRICAO.Text;
  FDvGlowButton1.Enabled := False;
  end;

end;

procedure Tfrmimporta_nfe.XDBGrid1EditButtonClick(Sender: TObject);
begin
if xDBGrid1.SelectedField = qritemCOD_MARCA THEN
 begin
 qritem.Edit;
 DM.SDS_Marcas.OPEN;
 FormConsMarcas:=NIL;
 FormConsMarcas:=TFormConsMarcas.Create(self);
 FormConsMarcas.Showmodal;
 qritemCOD_MARCA.Text := DM.SDS_MARCASCODIGO.Text;
 qritemMARCA.Text := DM.SDS_MarcasDESCRICAO.Text;
end;
end;

procedure Tfrmimporta_nfe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrProdutoHistorico.Close;
  frmimporta_nfe:=nil;
  Action := caFree;
end;

procedure Tfrmimporta_nfe.eCentroButtonClick(Sender: TObject);
begin
  frmloc_centro := tfrmloc_centro.create(self);
  frmloc_centro.showmodal;

  eCentro.Text := DM1.Sds_CentroCustoCOD_CENTRO.TEXT;
  EnomeCentro.Text := DM1.Sds_CentroCustoDESCRICAO.TEXT;
  econta.Text := DM1.Sds_CentroCustoCOD_PLANO.Text;
   FDvGlowButton1.SetFocus;
end;

procedure Tfrmimporta_nfe.eCentroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
   if eCentro.Text > '' then
   begin
    if not formprincipal.Locregistro(DM1.Sds_CentroCusto, eCentro.Text, 'COD_CENTRO')
    then
      eCentroButtonClick(frmimporta_nfe)
    else
    begin
      EnomeCentro.Text := DM1.Sds_CentroCusto.fieldbyname('DESCRICAO').asstring;
      EImovel.SetFocus;
    end;
   end  else
    EImovel.SetFocus;
  end;
end;

procedure Tfrmimporta_nfe.EImovelButtonClick(Sender: TObject);
begin
 FPesquisaImovel:=TFPesquisaImovel.Create(self);
 FPesquisaImovel.Showmodal;

 if NOT DMMovimentacao.dsImovel.DataSet.IsEmpty then
 begin
 EImovel.TEXT := DMMovimentacao.qrImovelID_PRODUTOS.Text;
 EnomeImovel.Text := DMMovimentacao.qrImovelDESCRICAO.Text;
 FDvGlowButton1.SetFocus;
 end;
end;

procedure Tfrmimporta_nfe.EImovelKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
      begin
      DMMovimentacao.qrImovel.open;

      IF EImovel.Text > '' then
      BEGIN
      If DMMovimentacao.qrImovel.locate('ID_PRODUTOS',EImovel.text, [])=True then
      begin
       EImovel.TEXT := DMMovimentacao.qrImovelID_PRODUTOS.Text;
       EnomeImovel.Text := DMMovimentacao.qrImovelDESCRICAO.Text;
       FDvGlowButton1.SetFocus;
      end;
      if not DMMovimentacao.qrImovel.locate('ID_PRODUTOS',EImovel.text, [])=True then
      begin
      EImovelButtonClick(frmimporta_nfe);
      end;
      end else
      BEGIN
      FDvGlowButton1.SetFocus;
      end;
      end;
end;

procedure Tfrmimporta_nfe.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(dsProdutoHistorico.DataSet.RecNo) then
  begin
    DBGrid1.Canvas.Brush.Color:= $00E5E5E5;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
  if gdSelected in State then
  begin
    DBGrid1.Canvas.Brush.Color:= $00FB6D62;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure Tfrmimporta_nfe.page_dadosChange(Sender: TObject);
begin
  qrProdutoHistorico.Close;
  qrProdutoHistorico.ParamByName('CODIGO').AsInteger:= qritemCODIGO_PRODUTO.AsInteger;
  qrProdutoHistorico.Open;
end;

procedure Tfrmimporta_nfe.qritemPRECO_VENDAChange(Sender: TField);
begin
  qritemMARG_LUCRO.ASFLOAT:= ((qritemPRECO_VENDA.AsFloat  * 100) / qritemVALOR_UNI.asfloat) - 100;
end;

procedure Tfrmimporta_nfe.FormCreate(Sender: TObject);
begin
  vfIni:= nil;
//  vfImportar:= False;
  DM.SDS_Fornecedores.open;

   qritem1.Close;
  qritem1.sql.Clear;
  qritem1.sql.add('select * from notasfiscais_itens');
  qritem1.sql.add('where codigo_nota = ''-1''');
  qritem1.open;

  qritem.Close;
  qritem.open;


  qrtransportador.open;

  bgravar.Enabled := false;
  bcancelar.Enabled := false;

  blimpa_variavelClick(frmimporta_nfe);

  qritemQUANTIDADE.DisplayFormat := mascara_qtde;
  qritemVALOR_UNI.DisplayFormat := mascara_valor;
  qritemSUBTOTAL.DisplayFormat := mascara_valor;
  qritemVALOR_DESC.DisplayFormat := mascara_valor;
  qritemTOTAL_ITEM.DisplayFormat := mascara_valor;
  qritemDESCONTO_P.DisplayFormat := mascara_valor;
  qritemPERC_ICMS.DisplayFormat := mascara_valor;
  qritemICMS_REDUCAO.DisplayFormat := mascara_valor;
  qritemBASE_ICMS.DisplayFormat := mascara_valor;
  qritemVALOR_ICMS.DisplayFormat := mascara_valor;
  qritemICMS_VALORRETIDO.DisplayFormat := mascara_valor;
  qritemPERC_IPI.DisplayFormat := mascara_valor;
  qritemBASE_IPI.DisplayFormat := mascara_valor;
  qritemVALOR_IPI.DisplayFormat := mascara_valor;
  qrpagarVALOR.DisplayFormat := mascara_valor;
  qrpagarVALORPAGO.DisplayFormat := mascara_valor;
  qrpagarLIQUIDO.DisplayFormat := mascara_valor;
  qrpagarDESCONTO.DisplayFormat := mascara_valor;
  qrpagarACRESCIMO.DisplayFormat := mascara_valor;
end;

end.
