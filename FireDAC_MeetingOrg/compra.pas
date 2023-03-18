{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00400000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE ON}
{$WARN UNSAFE_CODE ON}
{$WARN UNSAFE_CAST ON}
unit compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, TFlatPanelUnit,
  wwdblook, RzEdit,
  RzDBEdit, RzDBBnEd, RXDBCtrl, RzLabel, 
  Grids, Wwdbigrd, Wwdbgrid, ImgList, RzPanel, RzCmboBx, ACBrNFe, pcnConversao, pcnConversaoNFe,
  pcnNFeRTXT, ACBrBase, DB,ACBrNFeNotasFiscais, DateUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvMenus, AdvMenuStylers,
  System.ImageList, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvShapeButton, RzBtnEdt, sDBEdit, RxToolEdit, sLabel, RzDBSpin, RzDBCmbo,
  AdvGlowButton, PageView, XPMan;

type
  Tfrmcompra = class(TForm)
    FDvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    stilo2: TAdvOfficeStatusBarOfficeStyler;
    FDvOfficeStatusBarOfficeStyler3: TAdvOfficeStatusBarOfficeStyler;
    FDvPreviewMenu1: TAdvPreviewMenu;
    FDvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    FDvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    ImageList1: TImageList;
    FDvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    FDvOfficeStatusBarOfficeStyler5: TAdvOfficeStatusBarOfficeStyler;
    FDvOfficeStatusBarOfficeStyler6: TAdvOfficeStatusBarOfficeStyler;
    FDvOfficeStatusBarOfficeStyler7: TAdvOfficeStatusBarOfficeStyler;
    dsnota: TDataSource;
    FDvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    qrnota_item: TFDQuery;
    dscompra_item: TDataSource;
    qrnf: TFDQuery;
    qrgrade_entrada: TFDQuery;
    FDvOfficeStatusBarOfficeStyler2: TAdvOfficeStatusBarOfficeStyler;
    query: TFDQuery;
    tab_principal: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    PageSheet12: TPageSheet;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    Bevel7: TBevel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBNumericEdit11: TRzDBNumericEdit;
    RzDBNumericEdit13: TRzDBNumericEdit;
    RzDBNumericEdit17: TRzDBNumericEdit;
    RzDBNumericEdit18: TRzDBNumericEdit;
    RzDBNumericEdit19: TRzDBNumericEdit;
    RzDBNumericEdit20: TRzDBNumericEdit;
    RzDBNumericEdit21: TRzDBNumericEdit;
    RzDBNumericEdit22: TRzDBNumericEdit;
    RzDBNumericEdit23: TRzDBNumericEdit;
    RzDBNumericEdit24: TRzDBNumericEdit;
    RzDBNumericEdit25: TRzDBNumericEdit;
    RzDBNumericEdit26: TRzDBNumericEdit;
    RzDBNumericEdit27: TRzDBNumericEdit;
    RzDBNumericEdit28: TRzDBNumericEdit;
    RzDBNumericEdit29: TRzDBNumericEdit;
    RzDBNumericEdit30: TRzDBNumericEdit;
    RzDBNumericEdit31: TRzDBNumericEdit;
    RzDBNumericEdit32: TRzDBNumericEdit;
    RzDBNumericEdit33: TRzDBNumericEdit;
    RzDBNumericEdit34: TRzDBNumericEdit;
    RzDBNumericEdit35: TRzDBNumericEdit;
    RzDBNumericEdit36: TRzDBNumericEdit;
    RzDBNumericEdit37: TRzDBNumericEdit;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
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
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    PageSheet3: TPageSheet;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit3: TDBEdit;
    ecodremetente: TRzDBButtonEdit;
    emercadoria: TRzDBNumericEdit;
    RzDBComboBox3: TRzDBComboBox;
    enota_fiscal: TDBEdit;
    RzDBNumericEdit4: TRzDBNumericEdit;
    Bevel2: TBevel;
    Label21: TLabel;
    Label22: TLabel;
    Panel4: TPanel;
    Label24: TLabel;
    RzDBNumericEdit38: TRzDBNumericEdit;
    Label53: TLabel;
    RzDBNumericEdit39: TRzDBNumericEdit;
    Label56: TLabel;
    RzDBNumericEdit40: TRzDBNumericEdit;
    Label57: TLabel;
    RzDBNumericEdit41: TRzDBNumericEdit;
    Label58: TLabel;
    RzDBNumericEdit42: TRzDBNumericEdit;
    Panel5: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label32: TLabel;
    eserie: TDBEdit;
    ecodempresa: TRzDBButtonEdit;
    DBEdit22: TDBEdit;
    DBEdit1: TDBEdit;
    combo_tipo: TRzDBComboBox;
    Edit2: TEdit;
    ecodmodelo: TRzDBButtonEdit;
    Label8: TLabel;
    ECODFORNECEDOR: TRzDBButtonEdit;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    eemissao: TDBDateEdit;
    eentrada: TDBDateEdit;
    ecfop: TRzDBButtonEdit;
    Bevel1: TBevel;
    Panel6: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    ebase_icms: TRzDBNumericEdit;
    EVALORICMS: TRzDBNumericEdit;
    ebase_subst: TRzDBNumericEdit;
    evalor_subst: TRzDBNumericEdit;
    EVLAORFRETE: TRzDBNumericEdit;
    ESEGURO: TRzDBNumericEdit;
    EOUTRAS: TRzDBNumericEdit;
    EVALORIPI: TRzDBNumericEdit;
    RzDBNumericEdit9: TRzDBNumericEdit;
    RzDBNumericEdit10: TRzDBNumericEdit;
    rdesconto: TRzDBNumericEdit;
    XDESCONTO: TDBCheckBox;
    Label15: TLabel;
    Bevel5: TBevel;
    evalor_produtos: TRzDBNumericEdit;
    Label2: TLabel;
    Bevel4: TBevel;
    Bevel8: TBevel;
    Label59: TLabel;
    Label19: TLabel;
    etotalnota: TRzDBNumericEdit;
    Label60: TLabel;
    Panel1: TPanel;
    Bevel9: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    batualiza_itens: TButton;
    Bevel10: TBevel;
    Label26: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label20: TLabel;
    Label55: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Shape13: TShape;
    Label80: TLabel;
    DBText14: TDBText;
    DBText13: TDBText;
    Label81: TLabel;
    Label82: TLabel;
    img: TAdvShapeButton;
    pfatura: TPanel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    bgerar: TAdvGlowButton;
    wwDBGrid2: TwwDBGrid;
    Panel7: TPanel;
    Bevel13: TBevel;
    qrpagar: TFDQuery;
    dspagar: TDataSource;
    econta: TRzDBButtonEdit;
    edit5: TRzDBEdit;
    ecount: TRzDBSpinEdit;
    enomeconta: TRzDBEdit;
    Bevel3: TBevel;
    FDvGlowButton2: TAdvGlowButton;
    Panel2: TPanel;
    Label23: TLabel;
    Label4: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label54: TLabel;
    Label61: TLabel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Label62: TLabel;
    Label63: TLabel;
    edbicms: TRzNumericEdit;
    edfrete: TRzNumericEdit;
    edvicms: TRzNumericEdit;
    edseguro: TRzNumericEdit;
    edbst: TRzNumericEdit;
    edoutras: TRzNumericEdit;
    edipi: TRzNumericEdit;
    edvst: TRzNumericEdit;
    edtotal: TRzNumericEdit;
    edprodutos: TRzNumericEdit;
    edespecial: TRzNumericEdit;
    dbedit4: TwwDBLookupCombo;
    ZQuery1: TFDQuery;
    qrnota_item_lista: TFDQuery;
    Label7: TLabel;
    eddesconto: TRzNumericEdit;
    rtproduto: TRzNumericEdit;
    GroupBox2: TGroupBox;
    DBEdit19: TDBEdit;
    qrproduto_grade: TFDQuery;
    qrproduto_serial: TFDQuery;
    Label86: TLabel;
    rtipo: TRzDBComboBox;
    Label87: TLabel;
    rintegracao: TRzDBNumericEdit;
    eaproveita_credito: TRzComboBox;
    Label88: TLabel;
    qrnota_itemnatureza: TStringField;
    qrnota_itemcst_descricao: TStringField;
    enumero: TDBEdit;
    Label90: TLabel;
    Label92: TLabel;
    DBEdit23: TDBEdit;
    sDBEdit1: TsDBEdit;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sDBEdit2: TsDBEdit;
    Label91: TLabel;
    GroupBox1: TGroupBox;
    etipo_baseicms: TDBCheckBox;
    qrpagarCODIGO: TIntegerField;
    qrpagarDATA_EMISSAO: TDateField;
    qrpagarDATA_VENCIMENTO: TDateField;
    qrpagarDATA_PAGAMENTO: TDateField;
    qrpagarCODCONTA: TIntegerField;
    qrpagarCODFORNECEDOR: TIntegerField;
    qrpagarVALOR: TBCDField;
    qrpagarVALORPAGO: TBCDField;
    qrpagarLIQUIDO: TBCDField;
    qrpagarDESCONTO: TBCDField;
    qrpagarACRESCIMO: TBCDField;
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
    qrproduto_serialCODIGO: TIntegerField;
    qrproduto_serialCODPRODUTO: TIntegerField;
    qrproduto_serialSERIAL: TStringField;
    qrproduto_serialESTOQUE: TBCDField;
    qrproduto_serialCODCLIENTE: TIntegerField;
    qrproduto_serialPRECOCUSTO: TBCDField;
    qrproduto_serialPRECOVENDA: TBCDField;
    qrproduto_serialDATAVENDA: TDateField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCLIENTE: TStringField;
    qrproduto_serialCODNOTA: TStringField;
    qrproduto_serialCODITEM: TStringField;
    qrproduto_serialDATACOMPRA: TDateField;
    qrproduto_serialNUMERONOTA: TStringField;
    qrproduto_serialCODFORNECEDOR: TIntegerField;
    qrproduto_serialCODVENDA_ITEM: TIntegerField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TIntegerField;
    qrproduto_gradeCODIGO: TIntegerField;
    qrproduto_gradeCOD_PRODUTO: TIntegerField;
    qrproduto_gradeCOD_BARRAS: TStringField;
    qrproduto_gradePRECO_VENDA_GRADE: TBCDField;
    qrproduto_gradeDESCRICAO: TStringField;
    qrproduto_gradeDEC_UNIDADE: TStringField;
    qrproduto_gradeESTOQUE: TBCDField;
    qrproduto_gradeCOR: TStringField;
    Label93: TLabel;
    EVLORPIS: TRzDBNumericEdit;
    Label94: TLabel;
    EVALORCOFINS: TRzDBNumericEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
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
    qrnota_item_listaCODIGO_ITEM: TIntegerField;
    qrnota_item_listaCODIGO_PRODUTO: TIntegerField;
    qrnota_item_listaCODIGO_BARRAS: TStringField;
    qrnota_item_listaCODIGO_NOTA: TIntegerField;
    qrnota_item_listaDESCRICAO: TStringField;
    qrnota_item_listaNCM_SH: TStringField;
    qrnota_item_listaCST: TStringField;
    qrnota_item_listaCFOP: TStringField;
    qrnota_item_listaDESC_UNIDADE: TStringField;
    qrnota_item_listaQUANTIDADE: TBCDField;
    qrnota_item_listaVALOR_UNI: TBCDField;
    qrnota_item_listaVALOR_DESC: TBCDField;
    qrnota_item_listaTOTAL_ITEM: TBCDField;
    qrnota_item_listaDATA: TDateField;
    qrnota_item_listaBASE_ICMS: TBCDField;
    qrnota_item_listaVALOR_ICMS: TBCDField;
    qrnota_item_listaVALOR_IPI: TBCDField;
    qrnota_item_listaPERC_ICMS: TBCDField;
    qrnota_item_listaPERC_IPI: TBCDField;
    qrnota_item_listaPRECO_VENDA: TBCDField;
    qrnota_item_listaPRECO_VENDA2: TBCDField;
    qrnota_item_listaDATA_VALIDADE: TDateField;
    qrnota_item_listaDATA_FABRICACAO: TDateField;
    qrnota_item_listaFRACAO: TIntegerField;
    qrnota_item_listaQUANT_FRACIONADA: TBCDField;
    qrnota_item_listaLOTE_MED: TStringField;
    qrnota_item_listaMARG_LUCRO: TBCDField;
    qrnota_item_listaATIVO: TStringField;
    qrnota_item_listaBASE_ICMS_ST: TBCDField;
    qrnota_item_listaALIC_ICMS_ST: TBCDField;
    qrnota_item_listaVALOR_ICMS_ST: TBCDField;
    qrnota_item_listaCOD_EMPRESA: TIntegerField;
    qrnota_item_listaIMOBILZ: TStringField;
    qrnota_item_listaBASE_PIS: TBCDField;
    qrnota_item_listaPERC_PIS: TBCDField;
    qrnota_item_listaVALOR_PIS: TBCDField;
    qrnota_item_listaBASE_COFINS: TBCDField;
    qrnota_item_listaPERC_COFINS: TBCDField;
    qrnota_item_listaVALOR_COFINS: TBCDField;
    qrnota_item_listaBASE_IPI: TBCDField;
    qrnota_item_listaUN_FRACAO: TStringField;
    qrnota_item_listaITEM: TIntegerField;
    qrnota_item_listaCODFORNECEDOR: TIntegerField;
    qrnota_item_listaNUM_NOTA: TStringField;
    qrnota_item_listaICMS_RETIDO: TStringField;
    qrnota_item_listaSUBTOTAL: TBCDField;
    qrnota_item_listaDESCONTO_P: TBCDField;
    qrnota_item_listaICMS_REDUCAO: TBCDField;
    qrnota_item_listaICMS_VALORRETIDO: TBCDField;
    qrnota_item_listaICMS_ISENTO: TBCDField;
    qrnota_item_listaICMS_NAOTRIBUTADO: TBCDField;
    qrnota_item_listaIPI_TIPO: TStringField;
    qrnota_item_listaTIPO: TIntegerField;
    qrnota_item_listaFRETE: TBCDField;
    qrnota_item_listaOUTRAS: TBCDField;
    qrnota_item_listaSEGURO: TBCDField;
    qrnota_item_listaCLASSIFICACAO_FISCAL: TStringField;
    qrnota_item_listaSUB_PRODUTOS: TBCDField;
    qrnota_item_listaITEM_ESPECIAL_VALOR: TBCDField;
    qrnota_item_listaICMS_OUTRAS: TBCDField;
    qrnota_item_listaALTERA_ITEM: TIntegerField;
    qrnota_item_listaCREDITO_ICMS: TBCDField;
    qrnota_item_listaCREDITO_ICMS_BASE: TBCDField;
    qrnota_item_listaPMARGEM: TFloatField;
    qrnota_item_listaPRECO_CUSTO: TBCDField;
    qrnota_item_listaDESCRICAO_1: TStringField;
    Label89: TLabel;
    RzDBComboBox2: TRzDBComboBox;
    Label95: TLabel;
    eCentro: TRzButtonEdit;
    EnomeCentro: TEdit;
    Label96: TLabel;
    EImovel: TRzButtonEdit;
    EnomeImovel: TEdit;
    qrnota_item_listaCODLANCAMENTO: TStringField;
    qrnota_itemCODLANCAMENTO: TStringField;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ecodempresaButtonClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure ecodempresaKeyPress(Sender: TObject; var Key: Char);
    procedure enumeroExit(Sender: TObject);
    procedure enumeroEnter(Sender: TObject);
    procedure enumeroKeyPress(Sender: TObject; var Key: Char);
    procedure eserieExit(Sender: TObject);
    procedure ECODFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure ECODFORNECEDORButtonClick(Sender: TObject);
    procedure eemissaoEnter(Sender: TObject);
    procedure eentradaEnter(Sender: TObject);
    procedure evalor_substExit(Sender: TObject);
    procedure RzDBNumericEdit9Exit(Sender: TObject);
    procedure etotalnotaKeyPress(Sender: TObject; var Key: Char);
    procedure xdescontoClick(Sender: TObject);
    procedure ecfopKeyPress(Sender: TObject; var Key: Char);
    procedure ecfopButtonClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure batualiza_itensClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure RzDBNumericEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure ecodremetenteKeyPress(Sender: TObject; var Key: Char);
    procedure ecodremetenteButtonClick(Sender: TObject);
    procedure combo_tipoChange(Sender: TObject);
    procedure enota_fiscalExit(Sender: TObject);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit1Exit(Sender: TObject);
    procedure RzDBNumericEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure edvicmsExit(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure ecodmodeloKeyPress(Sender: TObject; var Key: Char);
    procedure ecodmodeloButtonClick(Sender: TObject);
    procedure evalor_produtosExit(Sender: TObject);
    procedure ECODFORNECEDORExit(Sender: TObject);
    procedure XDESCONTOKeyPress(Sender: TObject; var Key: Char);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure econtaButtonClick(Sender: TObject);
    procedure edit5KeyPress(Sender: TObject; var Key: Char);
    procedure ecountKeyPress(Sender: TObject; var Key: Char);
    procedure bgerarClick(Sender: TObject);
    procedure FDvGlowButton2Click(Sender: TObject);
    procedure qrpagarBeforePost(DataSet: TDataSet);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure ebase_icmsKeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19Exit(Sender: TObject);
    procedure ecountExit(Sender: TObject);
    procedure eemissaoExit(Sender: TObject);
    procedure eentradaExit(Sender: TObject);
    procedure eaproveita_creditoKeyPress(Sender: TObject; var Key: Char);
    procedure RzDBComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure ecodmodeloExit(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure sDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure sDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure etotalnotaExit(Sender: TObject);
    procedure sDBEdit2Exit(Sender: TObject);
    procedure sDBEdit1Exit(Sender: TObject);
    function ValidaChaveAcesso(codUF: integer; dtEmissao: TDateTime;
    CNPJ: string; Modelo, Serie, NumeroNF: integer; chave: string): string;
    procedure eCentroButtonClick(Sender: TObject);
    procedure eCentroKeyPress(Sender: TObject; var Key: Char);
    procedure EImovelButtonClick(Sender: TObject);
    procedure EImovelKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public

    vbicms, vvicms, vipi, vbst, vvst, vfrete, vespecial, vseguro, voutras,
      vprodutos, vtotal: double;
    { Public declarations }

  end;

var
  frmcompra: Tfrmcompra;
  itens: integer;
  altera_preco: boolean;
  xreducao: real;
  xipi: integer;
  aceita_inclusao: boolean;
  estoque_ant, estoque_antfracao :Double;
  //  alterando : Boolean;
  custo_ant, estoque, custo, MARGEM, VENDA, NOVO_CUSTO: REAL;

implementation

uses xloc_empresa, principal, xloc_fornecedor, xloc_cfop,
  compra_item, compra_menu, ModulodeDados, DocsFiscais,
  ModulodeDadosConsultas, ConsPlanoContas, contaspagar, gerNFE, Ubibli1,
  selecTanques, Centro_Custo, ModuleDados1, ConsProdutos, importa_nfe,
  PesquisaImoveis, uDMMovimentacao, loc_centrocusto;

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
  end;


function  Tfrmcompra.ValidaChaveAcesso(codUF: integer; dtEmissao: TDateTime;
  CNPJ: string; Modelo, Serie, NumeroNF: integer; chave: string): string;
var
 str : string;
begin
    result := '';

    //Estado
    str := Copy(chave,1,2);

    if str<>IntToStr(codUF) then

       result := result+'Estado na chave inválido'+sLineBreak;

    //Data Emissão

    str := Copy(chave,3,4);

    if str<>FormatDateTime('YYMM',dtEmissao) then

       result := result+'Data na chave não confere'+sLineBreak;

    //CNPJ
    str := Copy(chave,7,14);

    if str<>CNPJ then

       result := result+'CNPJ do fornecedor não confere com o da chave'+sLineBreak;

    //Modelo

    str := Copy(chave,21,2);

    if StrToInt(str)<>Modelo then

       result := result+'Modelo inválido'+sLineBreak;

    //Série

    str := Copy(chave,23,3);

    if StrToInt(str)<>Serie then

       result := result+'Série inválida'+sLineBreak;

   //Número

    str := Copy(chave,26,9);

    if StrToInt(str)<>NumeroNF then

       result := result+'Número da nota difere da chave'+sLineBreak;

    if length(chave)<>44 then

       result := result+'Não tem 44 dígitos'+sLineBreak;

       ShowMessage(''+result+'');
end;


procedure Tfrmcompra.bcancelarClick(Sender: TObject);
begin
if Application.MESSAGEBOX('Confirma o Cancelamento da Nota Fiscal, dados serão Perdidos...', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
  if frmcompra_menu.vopcao_nfe = 1 then
  begin
    qrpagar.close;
    qrpagar.sql.clear;
    qrpagar.sql.add('DELETE FROM CONTAS_APAGAR WHERE CODNOTA = ''' +
      frmcompra_menu.QRNOTA.FIELDBYNAME('CODIGO_NOTA').ASSTRING + '''');
    qrpagar.ExecSQL;



    query.close;
    query.sql.clear;
    query.sql.add('delete from NOTASFISCAIS where codigo_nota = ''' +
      DBEdit19.Text + '''');
    //query.sql.add('and cod_fornecedor = ''' + ECODFORNECEDOR.Text + '''');
    query.ExecSQL;


    frmcompra_menu.QRNOTA.cancel;
 //   DM.Coneccao.Commit;
    Application.ProcessMessages;
    close;
  end
  else
  begin
    bgravarClick(frmcompra);
  end;
end;
end;


procedure Tfrmcompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcompra.FormShow(Sender: TObject);
var
  vitem: integer;
begin
  CAPTION := CAPTION + '       Código: ' + frmcompra_menu.QRNOTA.FIELDBYNAME
    ('codigo_nota').ASSTRING;

  if frmcompra_menu.QRNOTA.State = dsinsert then
  begin
    bcancelar.CAPTION := 'Cancelar';
    bcancelar.Picture := img.Picture;
  end
  else
  begin
    bcancelar.CAPTION := 'Retornar';
  end;

  xipi := 0;
  altera_preco := false;
  xreducao := 0;

  if frmcompra_menu.QRNOTA.State = dsinsert then
  begin

    frmcompra_menu.qrempresa.close;
    frmcompra_menu.qrempresa.sql.clear;
    frmcompra_menu.qrempresa.sql.add('select * from empresa');
    frmcompra_menu.qrempresa.open;

    Edit2.Text := frmcompra_menu.qrempresa.FIELDBYNAME('uf').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('cod_empresa').ASSTRING :=
      frmcompra_menu.qrempresa.FIELDBYNAME('codigo').ASSTRING;

    frmcompra_menu.qrempresa.close;
    frmcompra_menu.qrempresa.sql.clear;
    frmcompra_menu.qrempresa.sql.add('select * from empresa where codigo = ''' +
      frmcompra_menu.qrnotaCOD_EMPRESA.asstring + '''');
    frmcompra_menu.qrempresa.open;

  end
  else
  begin
    frmcompra_menu.qrempresa.close;
    frmcompra_menu.qrempresa.sql.clear;
    frmcompra_menu.qrempresa.sql.add('select * from empresa where codigo = ''' +
      frmcompra_menu.qrnotaCOD_EMPRESA.asstring + '''');
    frmcompra_menu.qrempresa.open;
    Edit2.Text := frmcompra_menu.qrempresa.FIELDBYNAME('uf').ASSTRING;
  end;

  frmcompra_menu.qrfornecedor.close;
  frmcompra_menu.qrfornecedor.sql.clear;
  IF ECODFORNECEDOR.Text > '' then
  frmcompra_menu.qrfornecedor.sql.add('select * from fornecedores where codigo = '''
    + frmcompra_menu.qrnotaCOD_FORNECEDOR.ASSTRING + '''')
  else
  frmcompra_menu.qrfornecedor.sql.add('select * from fornecedores where codigo = ''-1''');
  frmcompra_menu.qrfornecedor.open;
  Edit1.Text := frmcompra_menu.qrfornecedorESTADO.TEXT;
  eemissao.setfocus;

 // DM.qrtransportador.open;

  { qrnota_item.Close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select * from c000088 where codnota = '''+frmcompra_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
    qrnota_item.Open;

  }

  qrnota_item_lista.close;
  qrnota_item_lista.sql.clear;
  qrnota_item_lista.sql.add
    ('select item.*, produto.DESCRICAO from NOTASFISCAIS_ITENS item, PRODUTOS produto');
  qrnota_item_lista.sql.add('where item.codigo_produto = produto.codigo');
  qrnota_item_lista.sql.add('and codigo_nota = ''' +
    frmcompra_menu.QRNOTA.FIELDBYNAME('codigo_nota').ASSTRING + ''' order by CODLANCAMENTO');
  qrnota_item_lista.open;

  itens := qrnota_item_lista.RecordCount + 1;

  // atualiza somatoria da nota fiscal
  edbicms.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_CALCULO_ICMS').asfloat;
  edvicms.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS').asfloat;
  edipi.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat;
  edbst.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_CALC_ICMS_SUBST').asfloat;
  edvst.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS_SUBST').asfloat;
  edfrete.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat;
  edespecial.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('CONF_ITEM_ESPECIAL').asfloat;
  edseguro.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_SEGURO').asfloat;
  edoutras.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat;
  edprodutos.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('VALOR_TOTAL_PRODUTOS').asfloat;


  // if frmcompra_menu.qrnota.fieldbyname('VALOR_DESCONTO').asfloat > 0 then
  // eddesconto.Value    := frmcompra_menu.qrnota.fieldbyname('VALOR_DESCONTO').asfloat
  // else
  // eddesconto.Value    := frmcompra_menu.qrnota.fieldbyname('DESCONTO').asfloat;

  if rtipo.Text = '' then
    rtipo.ItemIndex := 0;

  eddesconto.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_desconto').asfloat;

  edtotal.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat;

  vespecial := frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat;

  if frmcompra_menu.QRNOTA.State = dsedit then
  begin
    tab_principal.ActivePageIndex := 0;
    if (ecodmodelo.Text = '07') or (ecodmodelo.Text = '08') or
      (ecodmodelo.Text = '09') or (ecodmodelo.Text = '10') or
      (ecodmodelo.Text = '11') then
    begin
      combo_tipo.ItemIndex := 3;
      tab_principal.ActivePageIndex := 5;
    end;

    ECODFORNECEDOR.setfocus;
  end
  else
  begin
    ecodempresa.setfocus;
  end;

  qrpagar.close;
  qrpagar.sql.clear;
  qrpagar.sql.add('SELECT * FROM CONTAS_APAGAR WHERE CODNOTA = ''' +
    frmcompra_menu.QRNOTA.FIELDBYNAME('CODIGO_NOTA').ASSTRING +
    ''' ORDER BY DATA_VENCIMENTO');
  qrpagar.open;

  aceita_inclusao := false;
  if frmcompra_menu.QRNOTA.State = dsinsert then
  begin
    pfatura.Enabled := true;
  end
  else
  begin
    if qrpagar.RecordCount > 0 then
      pfatura.Enabled := false
    else
      pfatura.Enabled := true;
  end;

  rtproduto.Value := 0;

  frmcompra.qrnota_item_lista.first;
  while not frmcompra.qrnota_item_lista.Eof do
  begin
    rtproduto.Value := rtproduto.Value + frmcompra.qrnota_item_lista.FIELDBYNAME
      ('total_item').asfloat;
    itens := itens + 1;
    frmcompra.qrnota_item_lista.next;
  end;
        if frmcompra_menu.qrnota.fieldbyname('cod_IMOVEL').asstring >'' then
        begin
         if dm.IBTransaction.Active then
             dm.IBTransaction.Commit;
          dm.IBTransaction.StartTransaction;
            try
              with dm.Consulta do
                 begin
                    close;
                    sql.Clear;
                    sql.add('SELECT * FROM PRODUTOS WHERE CODIGO = :CODPRO');
                    Parambyname('CODPRO').AsInteger:= StrToInt(frmcompra_menu.qrnota.fieldbyname('cod_IMOVEL').asstring);
                    ExecQuery;
                    Custo_ant :=  fieldbyname('PRECO_CUSTO').AsCurrency - etotalnota.value;
                 end;
              dm.IBTransaction.Commit;
            except
              dm.IBTransaction.rollback;
              showmessage('Erro ao buscar o custo do produto');
           end;
         end;

 { (* ********************* verificar a nota nao tem item mas na 88 existe ********************** *)
  if qrnota_item_lista.RecordCount = 0 then
  begin

    query.close;
    query.sql.clear;
    query.sql.add('select * from NOTASFISCAIS_ITENS where CODIGO_NOTA = ''' +
      frmcompra_menu.QRNOTA.FIELDBYNAME('CODIGO_NOTA').ASSTRING + '''');
    query.sql.add('and cod_fornecedor = ''' + frmcompra_menu.QRNOTA.FIELDBYNAME
      ('cod_fornecedor').ASSTRING + '''');
    query.sql.add('and modelo = ''' + frmcompra_menu.QRNOTA.FIELDBYNAME
      ('modelo').ASSTRING + '''');
    query.sql.add('and data = :vdat');
    query.Params.ParamByName('vdat').AsDateTime :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('DATA_EMISSAO').AsDateTime;
    query.open;

    if query.RecordCount > 0 then
    begin

      frmcompra.qrnota_item.open;

      vitem := 0;

      while not query.Eof do
      begin
        vitem := vitem + 1;
        frmcompra.qrnota_item.Insert;
        frmcompra.qrnota_item.FIELDBYNAME('codigo').ASSTRING := frmprincipal.codifica('000032');
        frmcompra.qrnota_item.FIELDBYNAME('codlancamento').ASSTRING := frmcompra.qrnota_item.FIELDBYNAME('codigo').ASSTRING;
        frmcompra.qrnota_item.FIELDBYNAME('data').AsDateTime :=  frmcompra_menu.QRNOTA.FIELDBYNAME('DATA_CADASTRO').asfloat;
        codigo_it := frmcompra.qrnota_item.FIELDBYNAME('codigo').ASSTRING;
        frmcompra.qrnota_item.FIELDBYNAME('codnota').ASSTRING :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('codigo').ASSTRING;
        frmcompra.qrnota_item.FIELDBYNAME('notafiscal').ASSTRING :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('numero').ASSTRING;
        frmcompra.qrnota_item.FIELDBYNAME('codfornecedor').ASSTRING :=
          frmcompra.ECODFORNECEDOR.Text;
        frmcompra.qrnota_item.FIELDBYNAME('CFOP').ASSTRING :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('CFOP').ASSTRING;
        if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat > 0 then
          frmcompra.qrnota_item.FIELDBYNAME('icms_retido').ASSTRING := 'S'
        else
          frmcompra.qrnota_item.FIELDBYNAME('icms_retido').ASSTRING := 'N';
        frmcompra.qrnota_item.FIELDBYNAME('item').ASSTRING :=
          frmprincipal.zerarcodigo(inttostr(itens), 3);

        if frmcompra.rdesconto.Value = 0 then
        begin
          frmcompra.qrnota_item.FIELDBYNAME('DESCONTO').asfloat := 0;
          frmcompra.qrnota_item.FIELDBYNAME('DESCONTO_P').asfloat := 0;
        end;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_ISENTO').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_NAOTRIBUTADO').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_VALORRETIDO').asfloat := 0;

        frmcompra.qrnota_item.FIELDBYNAME('ICMS_ALIQUOTA').asfloat :=
          query.FIELDBYNAME('icms').asfloat;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_REDUCAO').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_BASE').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_VALOR').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('SUB_VALOR').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('IPI_BASE').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('IPI_VALOR').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('IPI_ALIQUOTA').asfloat := 0;;
        frmcompra.qrnota_item.FIELDBYNAME('CLASSIFICACAO_FISCAL')
          .ASSTRING := '';

        frmcompra.qrnota_item.FIELDBYNAME('SUB_MARGEM').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('SUB_BASE').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('SUB_PRODUTOS').asfloat := 0;

        frmcompra.qrnota_itemCODPRODUTO.ASSTRING :=
          query.FIELDBYNAME('codproduto').ASSTRING;
        frmcompra.qrnota_itemQTDE.asfloat := query.FIELDBYNAME('qtde').asfloat;
        frmcompra.qrnota_itemUNITARIO.asfloat :=
          query.FIELDBYNAME('unitario').asfloat;
        frmcompra.qrnota_itemITEM.ASSTRING :=
          frmprincipal.zerarcodigo(inttostr(vitem), 3);
        if (query.FIELDBYNAME('cst').Value = '') or
          (query.FIELDBYNAME('cst').Value = null) then
          frmcompra.qrnota_itemCST.ASSTRING := '000'
        else
          frmcompra.qrnota_itemCST.ASSTRING := query.FIELDBYNAME('cst')
            .ASSTRING;
        frmcompra.qrnota_itemDESCONTO.asfloat :=
          query.FIELDBYNAME('desconto').asfloat;
        frmcompra.qrnota_itemSUBTOTAL.asfloat := query.FIELDBYNAME('total')
          .asfloat - query.FIELDBYNAME('desconto').asfloat;
        frmcompra.qrnota_itemTOTAL.asfloat :=
          query.FIELDBYNAME('total').asfloat;
        frmcompra.qrnota_itemICMS_ALIQUOTA.asfloat :=
          query.FIELDBYNAME('aliquota').asfloat;
        frmcompra.qrnota_itemUN_COMPRA.ASSTRING :=
          query.FIELDBYNAME('unidade').ASSTRING;
        frmcompra.qrnota_itemIPI_TIPO.ASSTRING := '0.Não Tem IPI';

        frmcompra.qrnota_item.Post;

        query.next;
      end;
      DM.Conexao.Commit;
      Application.ProcessMessages;
      close;
    end;
  end;      }
end;

procedure Tfrmcompra.ecodempresaButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_empresa := tfrmxloc_empresa.create(self);
  frmxloc_empresa.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcompra_menu.qrempresa.close;
    frmcompra_menu.qrempresa.sql.clear;
    frmcompra_menu.qrempresa.sql.add('select * from empresa where codigo = ''' +
      resultado_pesquisa1 + '''');
    frmcompra_menu.qrempresa.open;
    frmcompra_menu.QRNOTA.FIELDBYNAME('cod_empresa').ASSTRING :=
      resultado_pesquisa1;

    Edit2.Text := frmcompra_menu.qrEMPRESAUF.Value;

    enumero.setfocus;
  end;
end;

procedure Tfrmcompra.bgravarClick(Sender: TObject);
var
  //texto: pWideChar;
  texto: string;
  vqde_item: integer;
  vitem: integer;
    dtaux : TDateTime;
begin
  dtAux := (StrToDate (eemissao.Text));

  IF ecodmodelo.Text = '06' then
  begin
    IF EVALORICMS.Value = 0 then
    begin
    showmessage('Favor informar valor do ICMS para a conta de energia..!');
    EVALORICMS.setfocus;
    exit;
    end;
    IF ebase_icms.Value = 0 then
    begin
    showmessage('Favor informar valor base do ICMS para a conta de energia..!');
    ebase_icms.setfocus;
    exit;
    end;
  end;

  if copy(datetostr(eemissao.date), 7, 4) <> copy(datetostr(date), 7, 4) then
  begin
    if application.messagebox('Data de Emissão fora do ano corrente, Continua?', 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
    begin
      eemissao.SetFocus;
      exit;
    end;
  end;

  if copy(datetostr(eentrada.date), 7, 4) <> copy(datetostr(date), 7, 4) then
  begin
    if application.messagebox('Data de Entrada fora do ano corrente, Continua?', 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
    begin
      eentrada.SetFocus;
      exit;
    end;
  end;

  if dsnota.DataSet.State in [dsinsert, dsedit] then
  begin
  //  dsnota.dataset.fieldbyname('obs7').asstring := frmPrincipal.zerarcodigo(dbedit19.text, 6);
    dsnota.dataset.fieldbyname('obs8').asstring := formPrincipal.zerarcodigo(inttostr(ecount.IntValue), 3);
  end;

  if ecodmodelo.text = '' then
  begin
    showmessage('Favor informar um modelo de documento válido!');
    ecodmodelo.setfocus;
    exit;
  end;

  if eemissao.text = '  /  /    ' then
  begin
    showmessage('Data de Emissão Não pode ser em branco, Verifique...');
    eemissao.SetFocus;
    exit;
  end;

  if eentrada.text = '  /  /    ' then
  begin
    showmessage('Data de Entrada Não pode ser em branco, Verifique...');
    eentrada.SetFocus;
    exit;
  end;

   (********************** verificar se existe a mesma nota para o mesmo forncedor ***********************)
  if frmcompra_menu.qrnota.State = dsinsert then
  begin
    qrnf.close;
    qrnf.SQL.clear;
    qrnf.SQL.Add('select * from notasfiscais where num_nota = ''' + frmcompra_menu.qrnota.fieldbyname('num_nota').asstring + '''');
    qrnf.SQL.Add('and cod_fornecedor = ''' + frmcompra_menu.qrnota.fieldbyname('cod_fornecedor').asstring + '''');
    qrnf.SQL.Add('and modelo = ''' + frmcompra_menu.qrnota.fieldbyname('modelo').asstring + '''');
    qrnf.open;
    if qrnf.recordcount > 0 then
    begin
      application.messagebox('Já existe uma NOTA FISCAL cadastrada com este MODELO e o mesmo NÚMERO para este FORNECEDOR!', 'Atenção', mb_ok + mb_iconerror);
      exit;
    end;
  end;


    (**********************verificar campos obrigatorios***********************)
  if (ecodempresa.text = '') or (ecodempresa.text = '000000') then
  begin
    application.MessageBox('Favor informar a empresa!', 'Erro', mb_ok + mb_iconerror);
    exit;
  end;
  if (ecodfornecedor.text = '') or (ecodfornecedor.text = '000000') then
  begin
    application.MessageBox('Favor informar o fornecedor!', 'Erro', mb_ok + mb_iconerror);
    exit;
  end;
  if (enumero.text = '') or (enumero.text = '000000') then
  begin
    application.MessageBox('Favor informar o número da nota!', 'Erro', mb_ok + mb_iconerror);
    exit;
  end;

    if not qrpagar.Eof THEN
    BEGIN
    frmcompra_menu.qrnotaTP.Text := 'C';
    frmcompra_menu.qrnotaVALOR_PRAZO.Value        := etotalnota.value;
    end else
    BEGIN
    frmcompra_menu.qrnotaTP.Text := 'A';
    frmcompra_menu.qrnotaVALOR_AVISTA.Value       := etotalnota.value;
    end;

    (**********************lancar dados do conhecimento de transporte**********)

  if (COMBO_TIPO.ItemIndex = 3) or (COMBO_TIPO.ItemIndex = 6) OR (COMBO_TIPO.ItemIndex = 7) then
  begin
     // atualiza somatoria da nota fiscal
    edbicms.Value := frmcompra_menu.qrnota.fieldbyname('BASE_CALCULO_ICMS').asfloat;
    edvicms.Value := frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat;
    edipi.Value := frmcompra_menu.qrnota.fieldbyname('VALOR_IPI').asfloat;
    edbst.Value := frmcompra_menu.qrnota.fieldbyname('BASE_CALC_ICMS_SUBST').asfloat;
    edvst.Value := frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS_SUBST').asfloat;
    edfrete.Value := frmcompra_menu.qrnota.fieldbyname('VALOR_FRETE').asfloat;
    edespecial.Value := frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat;
    edseguro.Value := frmcompra_menu.qrnota.fieldbyname('VALOR_SEGURO').asfloat;
    edoutras.Value := frmcompra_menu.qrnota.fieldbyname('VALOR_OUTRAS_DESPESAS').asfloat;
    edprodutos.Value := frmcompra_menu.qrnota.fieldbyname('VALOR_TOTAL_PRODUTOS').asfloat;
    edtotal.Value := frmcompra_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat;
    frmcompra_menu.qrnota.Edit;
    frmcompra_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat := etotalnota.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_TOTAL_PRODUTOS').asfloat := evalor_produtos.Value;
    frmcompra_menu.qrnota.fieldbyname('BASE_CALCULO_ICMS').asfloat := ebase_icms.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').AsFloat := EVALORICMS.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_IPI').asfloat:= EVALORIPI.Value;;
    frmcompra_menu.qrnota.fieldbyname('BASE_CALC_ICMS_SUBST').asfloat := ebase_subst.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS_SUBST').asfloat := evalor_subst.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_FRETE').asfloat := EVLAORFRETE.VALUE;
    frmcompra_menu.qrnota.fieldbyname('VALOR_PIS').asfloat := EVLORPIS.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_COFINS').asfloat := EVALORCOFINS.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_SEGURO').asfloat := ESEGURO.Value;;
    frmcompra_menu.qrnota.fieldbyname('VALOR_OUTRAS_DESPESAS').asfloat := EOUTRAS.Value;;
  end
  else
  begin
    if (frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat = 0) or (frmcompra_menu.qrnota.fieldbyname('valor_total_produtos').asfloat = 0) then
    begin
      application.MessageBox('Valor da Nota/Produtos zerado! Deseja prosseguir?', 'Erro', mb_ok + mb_iconquestion);
      frmcompra_menu.qrnota.post;
      DM.coneccao.commit;
      Application.ProcessMessages;
      close;
      exit;
    end;

    if ((frmcompra_menu.qrnota.FieldByName('CONF_TOTALPRODUTOS').asfloat -
      frmcompra_menu.qrnota.FieldByName('VALOR_TOTAL_PRODUTOS').asfloat) > 0.10) or
      ((frmcompra_menu.qrnota.FieldByName('CONF_TOTALPRODUTOS').asfloat -
      frmcompra_menu.qrnota.FieldByName('VALOR_TOTAL_PRODUTOS').asfloat) < (-0.10)) then

    begin
      texto := ('Foi alterado alguma Informação na Nota Fiscal de Entrada' + #13 +
        'ou há Inconsistência no valor total dos Produtos.' + #13 +
        'Por isso, esta nota precisa ser gravada para sua finalização!' + #13 +
        'Deseja prosseguir com a finalização?' + #13 +
        'Diferença: R$' + formatfloat('###,###,##0.00', (frmcompra_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat - frmcompra_menu.qrnota.FieldByName('conf_TOTALNOTA').asfloat)));

     // if messagedlg(texto, 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then exit;
      if MessageDlg(texto, mtConfirmation,[mbyes,mbno], 0) = idno then exit;
       // ShowMessage(''+texto+'');
     //   if application.messagebox(''+texto+'', 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then exit;
    end;
   (********************** verificar total do ipi ***********************)

    if ((frmcompra_menu.qrnota.FieldByName('valor_ipi').asfloat -
      frmcompra_menu.qrnota.FieldByName('conf_ipi').asfloat) > 0.10) or
      ((frmcompra_menu.qrnota.FieldByName('valor_ipi').asfloat -
      frmcompra_menu.qrnota.FieldByName('conf_ipi').asfloat) < (-0.10)) then
    begin
      texto := ('Houve inconsistência no valor total do IPI!' + #13 +
        'Diferença: R$' + formatfloat('###,###,##0.00', (frmcompra_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat - frmcompra_menu.qrnota.FieldByName('conf_TOTALNOTA').asfloat)) + #13 +
        'Deseja prosseguir com a finalização?');

       if MessageDlg(texto, mtConfirmation,[mbyes,mbno], 0) = idno  then exit;
    // ShowMessage(''+texto+'');
   // if application.messagebox(texto, 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then exit;
    end;
  end;

  qrnota_item.Close;
  qrnota_item.sql.clear;
  qrnota_item.sql.add('select * from notasfiscais_itens where codigo_produto is not null and codigo_nota = ''' + frmcompra_menu.qrnota.fieldbyname('codigo_nota').asstring + ''' order by item');
  qrnota_item.Open;

 { if frmcompra_menu.qrnota.state = dsinsert then
  begin

      //DM.qrproduto_mov.Open;
    DM.QRPRODUTO_MOV.CLOSE;
    DM.QRPRODUTO_MOV.SQL.CLEAR;
    DM.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
    DM.QRPRODUTO_MOV.OPEN;

    if qrnota_item.recordcount > 0 then
    begin
      qrnota_item.first;
      while not qrnota_item.eof do
      begin
        DM.qrproduto_mov.Insert;
        DM.qrproduto_mov.FieldByName('codigo').AsString := qrnota_item.fieldbyname('codlancamento').asstring;
        DM.qrproduto_mov.fieldbyname('codnota').AsString := qrnota_item.fieldbyname('codnota').asstring + 'NE';
        DM.qrproduto_mov.fieldbyname('SERIAL').AsString := ''; //qrnota_item.fieldbyname('codigo').asstring;
        DM.qrproduto_mov.fieldbyname('numeronota').AsString := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
        DM.qrproduto_mov.fieldbyname('codproduto').asstring := qrnota_item.fieldbyname('codproduto').asstring;
        if qrnota_item.FieldByName('fracao').asfloat > 0 then
        begin
          DM.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat;
          DM.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / (qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat);
        end
        else
        begin
          DM.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat;
          DM.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / qrnota_item.FieldByName('qtde').asfloat;
        end;
        DM.qrproduto_mov.fieldbyname('total').asfloat := qrnota_item.fieldbyname('total').asfloat;

        if qrnota_item.fieldbyname('un_fracao').AsString <> '' then
          DM.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_fracao').AsString
        else
          DM.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_compra').AsString;

        DM.qrproduto_mov.fieldbyname('aliquota').asFLOAT := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
        DM.qrproduto_mov.fieldbyname('credito_icms').asFLOAT := qrnota_item.fieldbyname('CREDITO_ICMS').asFLOAT;
        DM.qrproduto_mov.fieldbyname('pis').asFLOAT := qrnota_item.fieldbyname('PIS').asFLOAT;
        DM.qrproduto_mov.fieldbyname('cofins').asFLOAT := qrnota_item.fieldbyname('COFINS').asFLOAT;
        DM.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
        DM.qrproduto_mov.fieldbyname('codcliente').AsString := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
        DM.qrproduto_mov.fieldbyname('codvendedor').AsString := 'S/VEND';
        DM.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
        DM.qrproduto_mov.FieldByName('data').asstring := frmcompra_menu.qrnota.FIELDBYNAME('DATA_CADASTRO').ASSTRING;
        DM.qrproduto_mov.fieldbyname('cfop').AsString := qrnota_item.fieldbyname('cfop').AsString;

        DM.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := qrnota_item.fieldbyname('LOTE_FABRICACAO').AsString;
        DM.qrproduto_mov.fieldbyname('vencimento').AsDateTime := qrnota_item.fieldbyname('LOTE_VALIDADE').AsDateTime;

        DM.qrproduto_mov.Post;
        qrnota_item.Next;
      end;
    end
    else
    begin

        // vrifica se o sistema nao achou informações na tabela qrnota_item
        // e pegou as informações da qrnota_item_lista

          if qrnota_item_lista.RecordCount > 0 then
            begin
              qrnota_item_lista.First;
              while not qrnota_item_lista.Eof do begin
                DM.qrproduto_mov.Insert;
                DM.qrproduto_mov.FieldByName('codigo').AsString       := qrnota_item_lista.fieldbyname('codlancamento').asstring;
                DM.qrproduto_mov.fieldbyname('codnota').AsString      := qrnota_item_lista.fieldbyname('codnota').asstring+'NE';
                DM.qrproduto_mov.fieldbyname('SERIAL').AsString       := qrnota_item_lista.fieldbyname('codigo').asstring;
                DM.qrproduto_mov.fieldbyname('numeronota').AsString   := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
                DM.qrproduto_mov.fieldbyname('codproduto').asstring   := qrnota_item_lista.fieldbyname('codproduto').asstring;
                if qrnota_item_lista.FieldByName('fracao').asfloat > 0 then
                  begin
                    DM.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item_lista.FieldByName('qtde').asfloat * qrnota_item_lista.FieldByName('fracao').asfloat;
                    DM.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item_lista.FieldByName('total').asfloat/(qrnota_item_lista.FieldByName('qtde').asfloat * qrnota_item_lista.FieldByName('fracao').asfloat);
                  end
                ELSE
                  begin
                    DM.qrproduto_mov.fieldbyname('qtde').asfloat        := qrnota_item_lista.FieldByName('qtde').asfloat;
                    DM.qrproduto_mov.fieldbyname('unitario').asfloat    := qrnota_item_lista.FieldByName('total').asfloat/qrnota_item_lista.FieldByName('qtde').asfloat;
                  end;
                DM.qrproduto_mov.fieldbyname('total').asfloat         := qrnota_item_lista.fieldbyname('total').asfloat;
                DM.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item_lista.fieldbyname('un_fracao').AsString;

                DM.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := qrnota_item_lista.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
                DM.qrproduto_mov.fieldbyname('CST').AsString      := qrnota_item_lista.fieldbyname('CST').AsString;
                DM.qrproduto_mov.fieldbyname('cfop').AsString      := qrnota_item_lista.fieldbyname('cfop').AsString;
                DM.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
                DM.qrproduto_mov.fieldbyname('codcliente').AsString   := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
                DM.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
                DM.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER   := 1;
                DM.qrproduto_mov.FieldByName('data').asstring         := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;
                DM.qrproduto_mov.Post;

                qrnota_item_lista.Next;
              end;

        end;

    end;

  end
  else
  begin

    if qrnota_item.recordcount > 0 then
    begin
      qrnota_item.first;
      while not qrnota_item.eof do
      begin

        DM.QRPRODUTO_MOV.CLOSE;
        DM.QRPRODUTO_MOV.SQL.CLEAR;
        DM.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ' + QuotedStr(qrnota_itemCODNOTA.AsString + 'NE'));
        DM.QRPRODUTO_MOV.SQL.ADD('AND CODPRODUTO = ' + QuotedStr(qrnota_itemCODPRODUTO.AsString));
        DM.QRPRODUTO_MOV.OPEN;
          // deilson

        if DM.QRPRODUTO_MOV.RecordCount > 0 then
        begin

          DM.qrproduto_mov.EDIT;
          DM.qrproduto_mov.fieldbyname('codnota').AsString := qrnota_item.fieldbyname('codnota').asstring + 'NE';
          DM.qrproduto_mov.fieldbyname('numeronota').AsString := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
          DM.qrproduto_mov.fieldbyname('codproduto').asstring := qrnota_item.fieldbyname('codproduto').asstring;
          if qrnota_item.FieldByName('fracao').asfloat > 0 then
          begin
            DM.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat;
            DM.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / (qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat);
          end
          else
          begin
            DM.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat;
            DM.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / qrnota_item.FieldByName('qtde').asfloat;
          end;
          DM.qrproduto_mov.fieldbyname('total').asfloat := qrnota_item.fieldbyname('total').asfloat;

          if qrnota_item.fieldbyname('un_fracao').AsString <> '' then
            DM.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_fracao').AsString
          else
            DM.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_compra').AsString;

            //DM.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_compra').AsString; //qrnota_item.fieldbyname('un_fracao').AsString;

          DM.qrproduto_mov.fieldbyname('aliquota').asFLOAT := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
          DM.qrproduto_mov.fieldbyname('credito_icms').asFLOAT := qrnota_item.fieldbyname('CREDITO_ICMS').asFLOAT;
          DM.qrproduto_mov.fieldbyname('pis').asFLOAT := qrnota_item.fieldbyname('PIS').asFLOAT;
          DM.qrproduto_mov.fieldbyname('cofins').asFLOAT := qrnota_item.fieldbyname('COFINS').asFLOAT;
          DM.qrproduto_mov.fieldbyname('CST').AsString := qrnota_item.fieldbyname('CST').AsString;
          DM.qrproduto_mov.fieldbyname('cfop').AsString := qrnota_item.fieldbyname('cfop').AsString;

          DM.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := qrnota_item.fieldbyname('LOTE_FABRICACAO').AsString;
          DM.qrproduto_mov.fieldbyname('vencimento').AsDateTime := qrnota_item.fieldbyname('LOTE_VALIDADE').AsDateTime;

          DM.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
          DM.qrproduto_mov.fieldbyname('codcliente').AsString := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
          DM.qrproduto_mov.fieldbyname('codvendedor').AsString := 'S/VEND';
          DM.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
          DM.qrproduto_mov.FieldByName('data').asstring := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;


          DM.qrproduto_mov.Post;

            //DM.qrproduto_mov.Open;
          DM.QRPRODUTO_MOV.CLOSE;
          DM.QRPRODUTO_MOV.SQL.CLEAR;
          DM.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''' + qrnota_item.FIELDBYNAME('CODNOTA').ASSTRING + 'NE' + '''');
          DM.QRPRODUTO_MOV.SQL.ADD('and CODPRODUTO = ''' + qrnota_item.FIELDBYNAME('CODPRODUTO').ASSTRING + '''');
          DM.QRPRODUTO_MOV.OPEN;

        end
        else
        begin

          query.Close;
          query.sql.clear;
          query.sql.add('select codigo, produto from c000025 where codigo = ''' + qrnota_item.fieldbyname('codproduto').asstring + '''');
          query.open;
            {
            texto := pansichar(query.fieldbyname('codigo').asstring+' - '+ query.fieldbyname('produto').asstring);
            case application.messagebox(pansichar('O produto: [ '+texto+' ] não possue lançamento de estoque!'+#13+
                                        'Existem 3 possibilidades para que isso aconteça:'+#13+
                                        '1ª - Esta nota está sendo alterada o foi feita a inclusão deste item (Clique em SIM);'+#13+
                                        '2ª - Foi feita a atualização do sistema, e esta nota foi lançFDa antes da atualização (Clique em NÃO);'+#13+
                                        '3ª - O lançamento foi excluído indevidamente; (Clique em Sim);'+#13+
                                        'Caso tenha dúvidas, clique em cancelar e consulte o suporte!'+#13+
                                        'Deseja criar o lançamento de Estoque para este produto?'),
                                        'Atenção',MB_YESNOCANCEL+mb_iconwarning+MB_DEFBUTTON3) of
            idYes :

             //begin

          DM.qrproduto_mov.Insert;
          DM.qrproduto_mov.FieldByName('codigo').AsString := qrnota_item.fieldbyname('codlancamento').asstring;
          DM.qrproduto_mov.fieldbyname('codnota').AsString := qrnota_item.fieldbyname('codnota').asstring + 'NE';
          DM.qrproduto_mov.fieldbyname('SERIAL').AsString := ''; //qrnota_item.fieldbyname('codigo').asstring;
          DM.qrproduto_mov.fieldbyname('numeronota').AsString := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
          DM.qrproduto_mov.fieldbyname('codproduto').asstring := qrnota_item.fieldbyname('codproduto').asstring;
          if qrnota_item.FieldByName('fracao').asfloat > 0 then
          begin
            DM.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat;
            DM.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / (qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat);
          end
          else
          begin
            DM.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat;
            DM.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / qrnota_item.FieldByName('qtde').asfloat;
          end;
          DM.qrproduto_mov.fieldbyname('total').asfloat := qrnota_item.fieldbyname('total').asfloat;

          if qrnota_item.fieldbyname('un_fracao').AsString <> '' then
            DM.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_fracao').AsString
          else
            DM.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_compra').AsString;

              //DM.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_compra').AsString; //qrnota_item.fieldbyname('un_fracao').AsString;

          DM.qrproduto_mov.fieldbyname('aliquota').asFLOAT := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
          DM.qrproduto_mov.fieldbyname('credito_icms').asFLOAT := qrnota_item.fieldbyname('CREDITO_ICMS').asFLOAT;
          DM.qrproduto_mov.fieldbyname('pis').asFLOAT := qrnota_item.fieldbyname('PIS').asFLOAT;
          DM.qrproduto_mov.fieldbyname('cofins').asFLOAT := qrnota_item.fieldbyname('COFINS').asFLOAT;
          DM.qrproduto_mov.fieldbyname('CST').AsString := qrnota_item.fieldbyname('CST').AsString;
          DM.qrproduto_mov.fieldbyname('cfop').AsString := qrnota_item.fieldbyname('cfop').AsString;

          DM.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := qrnota_item.fieldbyname('LOTE_FABRICACAO').AsString;
          DM.qrproduto_mov.fieldbyname('vencimento').AsDateTime := qrnota_item.fieldbyname('LOTE_VALIDADE').AsDateTime;

          DM.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
          DM.qrproduto_mov.fieldbyname('codcliente').AsString := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
          DM.qrproduto_mov.fieldbyname('codvendedor').AsString := 'S/VEND';
          DM.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
          DM.qrproduto_mov.FieldByName('data').asstring := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;
          DM.qrproduto_mov.Post;
            //end;
            {
            idcancel :begin
                       break;
                       exit;
                      end;

            end;

        end;
        qrnota_item.next;
        Application.ProcessMessages;
      end;

    end;
   end; }

  if alterando = True then
  begin
   if frmcompra_menu.qrnotaCOD_IMOVEL.Text > '' then
    begin
        // BUSCA ESTOQUE
           if dm.IBTransaction.Active then
             dm.IBTransaction.Commit;
          dm.IBTransaction.StartTransaction;

            try
              with dm.Consulta do
                 begin
                    close;
                    sql.Clear;
                    sql.add('SELECT * FROM PRODUTOS WHERE CODIGO = :CODPRO');
                    Parambyname('CODPRO').AsInteger:= StrToInt(frmcompra_menu.qrnotaCOD_IMOVEL.Text);
                    ExecQuery;
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
            with dm.Consulta do
                 begin
                    close;
                    sql.Clear;
                    sql.add('UPDATE PRODUTOS SET PRECO_VENDA =:VDA, PRECO_CUSTO =:CUSTO WHERE CODIGO = :CODPRO;');
                    NOVO_CUSTO := (custo_ant + etotalnota.VALUE);
                    Parambyname('VDA').AsCurrency:= NOVO_CUSTO + (NOVO_CUSTO * MARGEM /100);
                    Parambyname('CUSTO').AsCurrency:= NOVO_CUSTO;
                    Parambyname('CODPRO').AsInteger:= StrToInt(frmcompra_menu.qrnotaCOD_IMOVEL.Text);
                    ExecQuery;
                 end;
              dm.IBTransaction.Commit;
             except
             dm.IBTransaction.rollback;
             showmessage('Erro ao atualizar o custo do produto/ imovel');
             end;
           end;
   end else
    if alterando = false then
   begin
   if frmcompra_menu.qrnotaCOD_IMOVEL.Text > '' then
    begin
        // BUSCA ESTOQUE
           if dm.IBTransaction.Active then
             dm.IBTransaction.Commit;
          dm.IBTransaction.StartTransaction;

            try
              with dm.Consulta do
                begin
                    close;
                    sql.Clear;
                    sql.add('SELECT * FROM PRODUTOS WHERE CODIGO = :CODPRO');
                    Parambyname('CODPRO').AsInteger:= StrToInt(frmcompra_menu.qrnotaCOD_IMOVEL.Text);
                    ExecQuery;
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
            with dm.Consulta do
                 begin
                    close;
                    sql.Clear;
                    sql.add('UPDATE PRODUTOS SET PRECO_VENDA =:VDA, PRECO_CUSTO =:CUSTO WHERE CODIGO = :CODPRO;');
                    NOVO_CUSTO := CUSTO + etotalnota.Value;
                    Parambyname('VDA').AsCurrency:= NOVO_CUSTO + (NOVO_CUSTO * MARGEM /100);
                    Parambyname('CUSTO').AsCurrency:= NOVO_CUSTO;
                    Parambyname('CODPRO').AsInteger:= StrToInt(frmcompra_menu.qrnotaCOD_IMOVEL.Text);
                    ExecQuery;
                 end;
              dm.IBTransaction.Commit;
             except
             dm.IBTransaction.rollback;
             showmessage('Erro ao atualizar o custo do produto/ imovel');
             end;
    end;
    end;


   // ajusta o total da nota pelo rodapé
 frmcompra_menu.qrnota.edit;
  frmcompra_menu.qrnota.fieldbyname('SERIE_NF').AsString := eserie.Text;

  frmcompra_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat := edtotal.Value;
  frmcompra_menu.qrnota.fieldbyname('VALOR_TOTAL_PRODUTOS').asfloat := edprodutos.Value;

  //frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat := edtotal.Value;
 // frmcompra_menu.qrnota.fieldbyname('VALOR_TOTAL_PRODUTOS').asfloat := edprodutos.Value;

  frmcompra_menu.qrnota.fieldbyname('BASE_CALCULO_ICMS').asfloat := edbicms.Value;
  frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := edvicms.Value;

  frmcompra_menu.qrnota.fieldbyname('BASE_CALC_ICMS_SUBST').asfloat := edbst.Value;
  frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS_SUBST').asfloat := edvst.Value;

  frmcompra_menu.qrnota.fieldbyname('VALOR_FRETE').asfloat := edfrete.Value;
  frmcompra_menu.qrnota.fieldbyname('VALOR_SEGURO').asfloat := edseguro.Value;
  frmcompra_menu.qrnota.fieldbyname('VALOR_OUTRAS_DESPESAS').asfloat := edoutras.Value;
  frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat := edespecial.Value;
  frmcompra_menu.qrnota.fieldbyname('VALOR_IPI').asfloat := edipi.Value;

  frmcompra_menu.qrnota.fieldbyname('VALOR_DESCONTO').asfloat := rdesconto.Value;
  frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat := RzDBNumericEdit9.Value;

  if (COMBO_TIPO.ItemIndex = 3) or (COMBO_TIPO.ItemIndex = 6) OR (COMBO_TIPO.ItemIndex = 7) then // CONHECIMENTO DE TRANSPORTE
  begin
    frmcompra_menu.qrnota.fieldbyname('BASE_CALCULO_ICMS').asfloat := 0;
    frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := 0;
    frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat := 0;
    frmcompra_menu.qrnota.fieldbyname('ICMS_OUTRAS').asfloat := edtotal.Value - edipi.Value;
     frmcompra_menu.qrnota.Edit;
    frmcompra_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat := etotalnota.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_TOTAL_PRODUTOS').asfloat := evalor_produtos.Value;
    frmcompra_menu.qrnota.fieldbyname('BASE_CALCULO_ICMS').asfloat := ebase_icms.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').AsFloat := EVALORICMS.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_IPI').asfloat:= EVALORIPI.Value;;
    frmcompra_menu.qrnota.fieldbyname('BASE_CALC_ICMS_SUBST').asfloat := ebase_subst.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS_SUBST').asfloat := evalor_subst.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_FRETE').asfloat := EVLAORFRETE.VALUE;
    frmcompra_menu.qrnota.fieldbyname('VALOR_PIS').asfloat := EVLORPIS.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_COFINS').asfloat := EVALORCOFINS.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_SEGURO').asfloat := ESEGURO.Value;
    frmcompra_menu.qrnota.fieldbyname('VALOR_OUTRAS_DESPESAS').asfloat := EOUTRAS.Value;

    frmcompra_menu.qrnotames.AsString := FormatDateTime('mm',dtAux);
    frmcompra_menu.qrnotaano.AsString := FormatDateTime('yyyy',dtAux);
  end
  else
  begin
    frmcompra_menu.qrnota.fieldbyname('BASE_CALCULO_ICMS').asfloat := edbicms.value; //frmcompra_menu.qrnota.fieldbyname('CONF_BASEICMS').asfloat;
    frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := edvicms.value; //frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat;
    if (frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat = 0) and (frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS_SUBST').asfloat = 0) then
      frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat := edprodutos.value; //frmcompra_menu.qrnota.fieldbyname('VALOR_TOTAL_PRODUTOS').asfloat;
  end;
  frmcompra_menu.qrnota.fieldbyname('VALOR_SEGURO').asfloat := edseguro.value; //frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat;
  frmcompra_menu.qrnota.fieldbyname('VALOR_OUTRAS_DESPESAS').asfloat := edseguro.value; //frmcompra_menu.qrnota.fieldbyname('VALOR_OUTRAS_DESPESAS').asfloat;
  frmcompra_menu.qrnota.fieldbyname('VALOR_FRETE').asfloat := edfrete.value; //frmcompra_menu.qrnota.fieldbyname('VALOR_OUTRAS_DESPESAS').asfloat;
  frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat := edespecial.value; //frmcompra_menu.qrnota.fieldbyname('VALOR_OUTRAS_DESPESAS').asfloat;
  frmcompra_menu.qrnota.fieldbyname('VALOR_IPI').asfloat := edipi.value; //frmcompra_menu.qrnota.fieldbyname('VALOR_OUTRAS_DESPESAS').asfloat;

  frmcompra_menu.qrnotames.AsString := FormatDateTime('mm',dtAux);
  frmcompra_menu.qrnotaano.AsString := FormatDateTime('yyyy',dtAux);

  frmcompra_menu.qrnotaCOD_IMOVEL.Text := EImovel.Text;
  frmcompra_menu.qrnotaCOD_CENTRO_CUSTO.TEXT := ECENTRO.Text;

  frmcompra_menu.qrnota.post;

  formprincipal.log(codigo_usuario,'NOTAFISCAL',frmcompra_menu.qrnotaNUM_NOTA.Text,'INCLUIU','INCLUSÃO DO NOTA FISCAL Nº '+frmcompra_menu.qrnotaNUM_NOTA.Text +' FORNECEDOR: '+ frmcompra_menu.qrnotaFORNECEDOR.Text);

  /// recodifica os itens da nota fiscal

  vqde_item := 0;
  qrnota_item.first;
  while not qrnota_item.Eof do
  begin
    vqde_item := vqde_item + 1;
    qrnota_item.Edit;
    qrnota_item.FieldByName('ITEM').AsString := formPrincipal.zerarcodigo(INTTOSTR(vqde_item), 3);
    qrnota_item.Post;
    qrnota_item.Next;
  end;
         IF (combo_tipo.ItemIndex = 0) or (combo_tipo.ItemIndex = 1) or (combo_tipo.ItemIndex = 2) or (combo_tipo.ItemIndex = 5) then
         BEGIN
             If DM.SDS_CONFIGURACOESUTILIZA_NFE.Text = 'S' then
              if Application.MESSAGEBOX('Confirma Geração e Emissão da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 begin
                      DM.SDS_NotasFiscais.Close;
                      DM.SDS_NotasFiscais.SQL.Clear;
                      DM.SDS_NotasFiscais.SQL.add('select * from notasfiscais where codigo_nota = '+frmcompra_menu.qrnotaCODIGO_NOTA.Text+'');
                      DM.SDS_NotasFiscais.Open;

                      DM.SDS_NotasFiscaisItens.Close;
                      DM.SDS_NotasFiscaisitens.open;

                       try
                        If FormGefaNFe=nil then
                         begin
                          FormGefaNFe:=TFormGefaNFe.Create(self);
                          FormGefaNFe.combobox2.itemIndex := 1;
                          FormGefaNFe.combobox2.Enabled := False;

                          DM.qrcfop.Active := False;
                          DM.qrcfop.sql.Clear;
                          DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop <=4000');
                          DM.qrcfop.Active := true;
                          FormGefaNFe.ShowModal;
                         // Application.ProcessMessages;
                          end;
                          except
                          //  ShowMessage('Houve um erro na emissão da NF-e');
                            on E: EDatabaseError do
                            ShowMessage(E.Message);
                          end;
                       end;
           qrnota_item_lista.First;
            while not qrnota_item_lista.Eof do
             begin
              if dm.IBTransaction.Active then
               DM.IBTransaction.Commit;
               DM.IBTransaction.StartTransaction;
               Try
                try
                 with frmcompra_menu.Qtanque do
                 begin
                        Close;
                        ParamByName('CODPRO').AsInteger := qrnota_item_listaCODIGO_PRODUTO.AsInteger;
                        OPEN;
                        DM.IBTransaction.CommitRetaining;

                        Application.ProcessMessages;

                  end;

                        frmcompra_menu.Qtanque.FetchAll;

                        if frmcompra_menu.Qtanque.RecordCount > 1 then
                        begin

                        Application.CreateForm(TFormSelectanques, FormSelectanques);
                        FormSelectanques.showmodal;
                        end;


                        if not frmcompra_menu.Qtanque.Eof then
                        begin
                        estoque := frmcompra_menu.QTANQUEESTOQUE.AsFloat;

                        if DM.IBTransaction.Active then
                           DM.IBTransaction.Commit;
                        DM.IBTransaction.StartTransaction;
                        try
                          try
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
                                         parambyname('COD_NOTA_ENT').AsInteger       := frmcompra_menu.qrnotaCODIGO_NOTA.AsInteger;
                                         parambyname('TAN_NUM_FIS').AsInteger        := frmcompra_menu.QtanqueID_TANQUE.AsInteger;
                                         parambyname('BOM_NUM_FIS').value            := null;
                                         parambyname('BIC_NUM_LOG').Value            := null;
                                         parambyname('ENC_ABT').AsFloat              := estoque - qrnota_item_listaQUANTIDADE.AsFloat;
                                         parambyname('ENC_FCT').AsFloat              := estoque;
                                         parambyname('COD_CLIENTE').AsInteger        := frmcompra_menu.qrnotaCOD_FORNECEDOR.AsInteger;
                                         parambyname('COD_VENDEDOR').Asstring        :=  FormPrincipal.usuario_temp;
                                         parambyname('DATA').AsDate                  :=  frmcompra_menu.qrnotaDATA_CADASTRO.AsDateTime;
                                         parambyname('CODPRODUTO').AsInteger         :=  qrnota_item_listaCODIGO_PRODUTO.AsInteger;
                                         parambyname('UNITARIO').AsFloat             :=  qrnota_item_listaVALOR_UNI.AsFloat;
                                         parambyname('UNIDADE').AsString             :=   qrnota_item_listaDESC_UNIDADE.AsString;
                                         parambyname('QTDE').AsFloat                 :=  qrnota_item_listaQUANTIDADE.AsFloat;
                                         parambyname('TOTAL').AsFloat                :=  qrnota_item_listaTOTAL_ITEM.AsFloat;
                                         parambyname('ICMS_ALIQUOTA').AsFloat        :=   qrnota_item_listaPERC_ICMS.AsFloat;
                                         parambyname('ICMS_BASE').AsFloat            :=   qrnota_item_listaBASE_ICMS.AsFloat;
                                         parambyname('ICMS_VALOR').AsFloat           :=   qrnota_item_listaVALOR_ICMS.AsFloat;
                                         parambyname('CREDITO_ICMS').AsFloat         :=   0;
                                         parambyname('IPI_ALIQUOTA').AsFloat         :=   qrnota_item_listaPERC_IPI.AsFloat;
                                         parambyname('IPI_BASE').AsFloat             :=   qrnota_item_listaBASE_ICMS.AsFloat;
                                         parambyname('IPI_VALOR').AsFloat            :=   qrnota_item_listaVALOR_IPI.AsFloat;
                                         parambyname('PIS_ALIQUOTA').AsFloat         :=   0;
                                         parambyname('PIS_BASE').AsFloat             :=   0;
                                         parambyname('PIS_VALOR').AsFloat            :=   0;
                                         parambyname('COFINS_ALIQUOTA').AsFloat      :=   0;
                                         parambyname('COFINS_BASE').AsFloat          :=   0;
                                         parambyname('COFINS_VALOR').AsFloat         :=   0;
                                         parambyname('CFOP').AsString                :=   qrnota_item_listaCFOP.AsString;
                                         parambyname('NUMERO_VDA').Value             :=   null;
                                         parambyname('DESCONTO').AsFloat             :=   qrnota_item_listaVALOR_DESC.AsFloat;
                                         parambyname('ACRESCIMO').AsFloat            :=   0;
                                         parambyname('MOVIMENTO').AsInteger          :=   1;
                                         parambyname('BASE_CALCULO').AsFloat         :=   qrnota_item_listaTOTAL_ITEM.AsFloat;
                                         parambyname('SITUACAO').AsInteger           :=   1;
                                         parambyname('CUPOM_NUMERO').value           :=   null;
                                         parambyname('MODELO').Value                 :=   null;
                                         parambyname('ITEM').AsString                :=   qrnota_item_listaCODIGO_ITEM.AsString;
                                         parambyname('CST').AsString                 :=   qrnota_item_listaCST.AsString;
                                         parambyname('MOVIMENTO_ESTOQUE').AsFloat    :=   qrnota_item_listaQUANTIDADE.AsFloat;
                                         parambyname('COD_USUARIO').AsString         :=   FormPrincipal.usuario_temp;
                                         parambyname('LANCADO').AsInteger            :=   1;
                                         ExecQuery;
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
                      except
                        DM.IBTransaction.Rollback;
                        showmessage('Erro ao Atualizar o estoque do Tanque');
                        end;
                      finally
                      frmcompra_menu.Qtanque.Close;
                 end; 
                  qrnota_item_lista.Next;
                end;
          end;
  {
    // Atualiza Dados Estoque
    QryCMD.close;
    QryCmd.sql.clear;
    QryCmd.sql.add('update c000100 set');
    QryCmd.sql.add('estoque_inicial = 0 ');
    QryCmd.sql.add('Where estoque_inicial is null ');
    QryCmd.ExecSQL;

    QryCMD.close;
    QryCmd.sql.clear;
    QryCmd.sql.add('update c000100 set');
    QryCmd.sql.add('estoque_atual = estoque_inicial + entradas - saidas');
    QryCmd.ExecSQL;
}

  DM.coneccao.commit;
  Application.ProcessMessages;

  close;
end;

procedure Tfrmcompra.ecodempresaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;

    frmcompra_menu.QRNOTA.FIELDBYNAME('cod_empresa').ASSTRING := dm.sds_empresacodigo.text;
     // f0rmprincipal.zerarcodigo(TEdit(Sender).Text, 6);
    if TEdit(Sender).Text <> '' then
    begin
      frmcompra_menu.qrempresa.close;
      frmcompra_menu.qrempresa.sql.clear;
      frmcompra_menu.qrempresa.sql.add('select * from empresa where codigo = '''
        + ecodempresa.Text + '''');
      frmcompra_menu.qrempresa.open;

      if frmcompra_menu.qrempresa.RecordCount = 0 then
      begin
        Application.messagebox('Empresa não cadastrada!', 'Aviso',
          mb_ok + MB_ICONWARNING);
        enumero.setfocus;
      end
      else
      begin
        Edit2.Text := frmcompra_menu.qrEMPRESAUF.Value;
        Perform(wm_nextdlgctl, 0, 0);
      end;
    end
    else
    begin
      ecodempresaButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.enumeroExit(Sender: TObject);
begin
  TEdit(Sender).color := clbtnface;
  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

 { frmcompra_menu.QRNOTA.FIELDBYNAME('num_Nota').ASSTRING :=
    frmprincipal.zerarcodigo(frmcompra_menu.QRNOTA.FIELDBYNAME('numero')
    .ASSTRING, 6);}

  if frmcompra_menu.QRNOTA.FIELDBYNAME('num_nota').ASSTRING = '' then
  begin
    Application.messagebox('Favor informar um número válido!', 'Atenção',
      mb_ok + mb_iconerror);
    enumero.setfocus;
  end;
end;

procedure Tfrmcompra.enumeroEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure Tfrmcompra.enumeroKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);

   if not( key  in ['0'..'9']) then
   key := #0;

end;

procedure Tfrmcompra.eserieExit(Sender: TObject);
begin
  if (trim(eserie.Text) = '') or (trim(eserie.Text) = '00') or
    (trim(eserie.Text) = '000') then
  begin
    showmessage('Série Inválida, Verifique...');
    eserie.setfocus;
    exit;
  end;
  TEdit(Sender).color := clwindow;

end;

procedure Tfrmcompra.ECODFORNECEDORKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;

    {frmcompra_menu.QRNOTA.FIELDBYNAME('cod_fornecedor').ASSTRING :=
      frmprincipal.zerarcodigo(TEdit(Sender).Text, 6); }
    if TEdit(Sender).Text <> '' then
    begin

      frmcompra_menu.qrfornecedor.close;
      frmcompra_menu.qrfornecedor.sql.clear;
      frmcompra_menu.qrfornecedor.sql.add
        ('select * from fornecedores where codigo = ''' +
        ECODFORNECEDOR.Text + '''');
      frmcompra_menu.qrfornecedor.open;
        frmcompra_menu.QRNOTA.FIELDBYNAME('fornecedor').ASSTRING := frmcompra_menu.qrfornecedorNOME.Text;
      Edit1.Text := frmcompra_menu.qrfornecedorESTADO.Value;
        frmcompra_menu.QRNOTAENDERECO_CLI_FORN.Text   := frmcompra_menu.qrfornecedorENDERECO.Text;
       frmcompra_menu.QRNOTACNPJ.Text                := frmcompra_menu.qrfornecedorcnpj.text;
       frmcompra_menu.QRNOTAie.Text                  := frmcompra_menu.qrfornecedorIE.Text;
       frmcompra_menu.QRNOTACOD_IBGE.Text            := frmcompra_menu.qrfornecedorcodigo_ibge.Text;
       frmcompra_menu.QRNOTATELEFONE.Text            := frmcompra_menu.qrfornecedorTELEFONE.Text;
       frmcompra_menu.QRNOTAUF_CLIENTE_FORN.Text     := frmcompra_menu.qrfornecedorESTADO.Text;
       frmcompra_menu.QRNOTACIDADE_CLIENTE_FORN.Text := frmcompra_menu.qrfornecedorCIDADE.Text;
       frmcompra_menu.QRNOTATIPO_PESSOA.Text         := frmcompra_menu.qrfornecedorTP.Text;
       frmcompra_menu.QRNOTACEP_CLIENTE_FORN.Text    := removechar(frmcompra_menu.qrfornecedorCEP.Text);
       frmcompra_menu.QRNOTABAIRRO_CLIENTE_FORN.Text  := frmcompra_menu.qrfornecedorBAIRRO.Text;
       frmcompra_menu.QRNOTAEND_NUM_CLIENTE.text      := frmcompra_menu.qrfornecedorNUMERO.Text;
       edit1.Text     := frmcompra_menu.qrfornecedorESTADO.Text;

      if frmcompra_menu.qrfornecedor.RecordCount = 0 then
      begin
        Application.messagebox('Fornecedor não cadastrado!', 'Aviso',
          mb_ok + MB_ICONWARNING);
        ECODFORNECEDOR.Text := '';
        ECODFORNECEDOR.setfocus;
        exit;
      end
      else if (frmcompra_menu.qrfornecedorCNPJ.Value = '') or
        (frmcompra_menu.qrfornecedorESTADO.Value = '') or
        (frmcompra_menu.qrfornecedorIE.Value = '') then
      begin
        showmessage('Atenção! Dados de Fornecedor Inconsistente...');
        exit;
      end;


      Perform(wm_nextdlgctl, 0, 0);
    end
    else
    begin
      ECODFORNECEDORButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.ECODFORNECEDORButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcompra_menu.qrfornecedor.close;
    frmcompra_menu.qrfornecedor.sql.clear;
    frmcompra_menu.qrfornecedor.sql.add
      ('select * from fornecedores where codigo = ''' + resultado_pesquisa1 + '''');
    frmcompra_menu.qrfornecedor.open;
    frmcompra_menu.QRNOTA.FIELDBYNAME('cod_fornecedor').ASSTRING := resultado_pesquisa1;
    frmcompra_menu.QRNOTA.FIELDBYNAME('fornecedor').ASSTRING := resultado_pesquisa2;

   frmcompra_menu.QRNOTAENDERECO_CLI_FORN.Text   := frmcompra_menu.qrfornecedorENDERECO.Text;
   frmcompra_menu.QRNOTACNPJ.Text                := frmcompra_menu.qrfornecedorcnpj.text;
   frmcompra_menu.QRNOTAie.Text                  := frmcompra_menu.qrfornecedorIE.Text;
   frmcompra_menu.QRNOTACOD_IBGE.Text            := frmcompra_menu.qrfornecedorcodigo_ibge.Text;
   frmcompra_menu.QRNOTATELEFONE.Text            := frmcompra_menu.qrfornecedorTELEFONE.Text;
   frmcompra_menu.QRNOTAUF_CLIENTE_FORN.Text     := frmcompra_menu.qrfornecedorESTADO.Text;
   frmcompra_menu.QRNOTACIDADE_CLIENTE_FORN.Text := frmcompra_menu.qrfornecedorCIDADE.Text;
   frmcompra_menu.QRNOTATIPO_PESSOA.Text         := frmcompra_menu.qrfornecedorTP.Text;
   frmcompra_menu.QRNOTACEP_CLIENTE_FORN.Text    := removechar(frmcompra_menu.qrfornecedorCEP.Text);
   frmcompra_menu.QRNOTABAIRRO_CLIENTE_FORN.Text := frmcompra_menu.qrfornecedorBAIRRO.Text;
   frmcompra_menu.QRNOTAEND_NUM_CLIENTE.text     := frmcompra_menu.qrfornecedorNUMERO.Text;
   Edit1.Text                                    := frmcompra_menu.qrfornecedorESTADO.Text;

    if (frmcompra_menu.qrfornecedorCNPJ.Value = '') or
      (frmcompra_menu.qrfornecedorESTADO.Value = '') or
      (frmcompra_menu.qrfornecedorIE.Value = '') then
    begin
      showmessage('Atenção! Dados de Fornecedor Inconsistente...');
      exit;
    end;

    Edit1.Text := frmcompra_menu.qrfornecedorESTADO.Value;
    sDBEdit1.setfocus;
  end;
end;

procedure Tfrmcompra.eemissaoEnter(Sender: TObject);
begin
  if eemissao.Text = '  /  /    ' then
    eemissao.date := date;
end;

procedure Tfrmcompra.eentradaEnter(Sender: TObject);
begin
  if eentrada.Text = '  /  /    ' then
    eentrada.date := date;
end;

procedure Tfrmcompra.evalor_substExit(Sender: TObject);
begin
  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

  { frmcompra_menu.QRNOTA.FIELDBYNAME('ICMSRETIDO').asfloat > 0 then
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat;
  end
  else
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS_SUBST').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS_SUBST').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat;
  end; }
   if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat > 0 then
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
  end
  else
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
  end;


end;

procedure Tfrmcompra.RzDBNumericEdit9Exit(Sender: TObject);
begin
  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

  {if frmcompra_menu.QRNOTA.FIELDBYNAME('ICMSRETIDO').asfloat > 0 then
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat;

    if frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS').asfloat > 0 then
      frmcompra_menu.QRNOTA.FIELDBYNAME('PERC_ICMSRETIDO').asfloat :=
        (frmcompra_menu.QRNOTA.FIELDBYNAME('ICMSRETIDO').asfloat * 100) /
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS').asfloat;

  end
  else
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS_SUBST').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS_SUBST').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat;
  end;  }
    if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat > 0 then
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;

    if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORICMS').asfloat > 0 then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSREDITO_PERC').asfloat :=
        (frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat * 100) /
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORICMS').asfloat;

  end
  else
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
  end;


end;

procedure Tfrmcompra.etotalnotaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

    tab_principal.ActivePageIndex := 0;
    if combo_tipo.ItemIndex = 3 then
    begin
      tab_principal.ActivePageIndex := 5;
      enota_fiscal.setfocus;

    end
    else
    begin
      tab_principal.ActivePageIndex := 0;
      bincluir.setfocus;
    end;
  end;
end;

procedure Tfrmcompra.xdescontoClick(Sender: TObject);
begin
  if XDESCONTO.checked then
  begin

    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;

    if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat > 0 then
    begin
      if XDESCONTO.checked then
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat -
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_DESCONTO').asfloat
      else
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat;
    end
    else
    begin
      if XDESCONTO.checked then
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS_SUBST').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat -
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_DESCONTO').asfloat
      else
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS_SUBST').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat;
    end;

  end;
end;

procedure Tfrmcompra.ecfopKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;
    if TEdit(Sender).Text <> '' then
    begin
      DM.qrcfop.close;
      DM.qrcfop.sql.clear;
      DM.qrcfop.sql.add('select * from tabela_cfop where cfop = ''' +
        ecfop.Text + ''' and tipo = 1');
      DM.qrcfop.open;
      if DM.qrcfop.RecordCount = 0 then
      begin
        Application.messagebox('CFOP não cadastrado ou não é de entrada!',
          'Aviso', mb_ok + MB_ICONWARNING);
        ecfop.setfocus;
      end
      else
        Perform(wm_nextdlgctl, 0, 0);
    end
    else
    begin
      ecfopButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.ecfopButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := ' = 1 ';
  frmxloc_cfOP := tfrmxloc_cfOP.create(self);
  frmxloc_cfOP.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.close;
    DM.qrcfop.sql.clear;
    DM.qrcfop.sql.add('select * from tabela_cfop where cfop = ''' +
      resultado_pesquisa1 + '''');
    DM.qrcfop.open;
    frmcompra_menu.QRNOTA.FIELDBYNAME('CFOP_NOTA').ASSTRING := resultado_pesquisa1;
   // sEdit1.texrt := resultado_pesquisa2;
    ebase_icms.setfocus;
  end;
end;

procedure Tfrmcompra.bincluirClick(Sender: TObject);
var
  codg: string;
begin

  if etotalnota.Value = 0 then
  begin
    Application.messagebox('Favor informar o Valor da Nota Fiscal!', 'Atenção',
      mb_ok + mb_iconerror);
    evalor_produtos.setfocus;
    exit;
  end;

  frmcompra_menu.vopcao_item := 1;

  if (frmcompra_menu.QRNOTA.FIELDBYNAME('num_nota').ASSTRING = '') then
  begin
    Application.messagebox('Favor informar um número válido para Nota Fiscal!',
      'Atenção', mb_ok + mb_iconerror);
    enumero.setfocus;
    exit;
  end;

  // balterar.Enabled := False;

  // frmcompra_menu.vopcao_nfe := 1;

  vbicms := 0;
  vvicms := 0;
  vipi := 0;
  vbst := 0;
  vvst := 0;
  vfrete := 0;
  // vespecial := 0;
  vseguro := 0;
  voutras := 0;
  vprodutos := 0;
  vtotal := 0;
  dm.ProxCod.Close;
  dm.ProxCod.SQL.Clear;
  dm.ProxCod.SQL.Add('select max(codigo_item) as N_CODIGO FROM Notasfiscais_itens');
  DM.ProxCod.Open;
  codg := IntToStr(DM.ProxCodN_CODIGO.ASINTEGER + 1);// frmprincipal.codifica('000032');
  qrnota_item.close;
  qrnota_item.sql.clear;
  qrnota_item.sql.add('select * from notasfiscais_itens where codigo_nota = ''' + DBEdit19.Text + '''');
  qrnota_item.open;

  qrnota_item.Insert;
  qrnota_item.FIELDBYNAME('codigo_item').ASSTRING := codg;
  qrnota_item.FIELDBYNAME('codlancamento').ASSTRING := codg ;
  qrnota_item.FIELDBYNAME('data').AsDateTime :=  frmcompra_menu.QRNOTA.FIELDBYNAME('DATA_CADASTRO').asfloat;
  codigo_it := codg;
  qrnota_item.FIELDBYNAME('codigo_nota').ASSTRING := frmcompra_menu.QRNOTA.FIELDBYNAME('codigo_nota').ASSTRING;
  qrnota_item.FIELDBYNAME('codfornecedor').ASSTRING := ECODFORNECEDOR.Text;
  qrnota_item.FIELDBYNAME('NUM_NOTA').ASSTRING :=  frmcompra_menu.QRNOTA.FIELDBYNAME('num_NOTA').ASSTRING;
  qrnota_item.FIELDBYNAME('CFOP').ASSTRING := frmcompra_menu.QRNOTA.FIELDBYNAME('CFOP_NOTA').ASSTRING;

  if frmcompra_menu.QRNOTA.FIELDBYNAME('ICMSRETIDO').asfloat > 0 then
    qrnota_item.FIELDBYNAME('icms_retido').ASSTRING := 'S'
  else
    qrnota_item.FIELDBYNAME('icms_retido').ASSTRING := 'N';

  qrnota_item.FIELDBYNAME('item').ASSTRING := inttostr(itens);
  qrnota_item.FIELDBYNAME('IPI_TIPO').ASSTRING := '0.Não Tem IPI';

  if rdesconto.Value = 0 then
  begin
    qrnota_item.FIELDBYNAME('VALOR_DESC').asfloat := 0;
    qrnota_item.FIELDBYNAME('DESCONTO_P').asfloat := 0;
  end;

  qrnota_item.FIELDBYNAME('PERC_ICMS').asfloat := 0;
  qrnota_item.FIELDBYNAME('ICMS_REDUCAO').asfloat := 0;
  qrnota_item.FIELDBYNAME('BASE_ICMS').asfloat := 0;
  qrnota_item.FIELDBYNAME('VALOR_ICMS').asfloat := 0;
  qrnota_item.FIELDBYNAME('ICMS_ISENTO').asfloat := 0;
  qrnota_item.FIELDBYNAME('ICMS_NAOTRIBUTADO').asfloat := 0;
  qrnota_item.FIELDBYNAME('ICMS_VALORRETIDO').asfloat := 0;
  qrnota_item.FIELDBYNAME('BASE_ICMS_ST').asfloat := 0;
  qrnota_item.FIELDBYNAME('VALOR_ICMS_ST').asfloat := 0;
  qrnota_item.FIELDBYNAME('PERC_IPI').asfloat := 0;
  qrnota_item.FIELDBYNAME('BASE_IPI').asfloat := 0;
  qrnota_item.FIELDBYNAME('VALOR_IPI').asfloat := 0;
  qrnota_item.FIELDBYNAME('CLASSIFICACAO_FISCAL').ASSTRING := '';
  qrnota_item.FIELDBYNAME('ALIC_ICMS_ST').asfloat := 0;
  //qrnota_item.FIELDBYNAME('SUB_BASE').asfloat := 0;
  // frmcompra_menu.qrnotaCONF_BASESUB.AsFloat;
  qrnota_item.FIELDBYNAME('SUB_PRODUTOS').asfloat := 0;

  qrnota_item.FIELDBYNAME('frete').asfloat := 0;
  qrnota_item.FIELDBYNAME('seguro').asfloat := 0;
  qrnota_item.FIELDBYNAME('outras').asfloat := 0;
  qrnota_item.FIELDBYNAME('ITEM_ESPECIAL_VALOR').asfloat := 0;

  if frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_CALC_ICMS_SUBST').asfloat > 0 then
    qrnota_item.FIELDBYNAME('SUB_PRODUTOS').asfloat :=
      frmcompra_menu.qrnotaVALOR_TOTAL_PRODUTOS.asfloat;

      
  frmcompra_item := tfrmcompra_item.create(self);
  frmcompra_item.showmodal;

  qrnota_item_lista.Refresh;

  batualiza_itensClick(frmcompra);

  bgravar.setfocus;

end;

procedure Tfrmcompra.batualiza_itensClick(Sender: TObject);
begin
  frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_CALCULO_ICMS').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ICMS').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_CALC_ICMS_SUBST').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ICMS_subst').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_frete').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_seguro').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_outras_despesas').asfloat := 0;
  // frmcompra_menu.qrnota.fieldbyname('item_especial_total').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ipi').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_total_produtos').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('credito_icms').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_pis').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_cofins').asfloat := 0;
 // frmcompra_menu.QRNOTA.FIELDBYNAME('ipi').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_ISENTO').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_OUTRAS').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat := 0;

  itens := 1;

  frmcompra.qrnota_item_lista.first;
  rtproduto.Value := 0;

  while not frmcompra.qrnota_item_lista.Eof do
  begin

    frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_ISENTO').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_ISENTO').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('ICMS_ISENTO').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('ICMS_NAOTRIBUTADO').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_OUTRAS').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_OUTRAS').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('ICMS_OUTRAS').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_CALCULO_ICMS').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_CALCULO_ICMS').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('base_icms').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ICMS').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ICMS').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('valor_icms').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_CALC_ICMS_SUBST').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_CALC_ICMS_SUBST').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('BASE_ICMS_ST').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('valor_icms_subst').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_icms_subst').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('valor_icms_st').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('valor_frete').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_frete').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('frete').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('valor_seguro').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_seguro').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('seguro').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('valor_outras_despesas').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_outras_despesas').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('outras').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ipi').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ipi').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('valor_ipi').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('credito_icms').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('credito_icms').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('credito_icms').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('valor_pis').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_pis').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('valor_pis').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('valor_cofins').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_cofins').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('valor_cofins').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('valor_total_produtos').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_total_produtos').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('subtotal').asfloat;

    rtproduto.Value := rtproduto.Value + frmcompra.qrnota_item_lista.FIELDBYNAME
      ('total_item').asfloat;

    if rdesconto.Value > 0 then
    begin
      if (XDESCONTO.checked = true) and (frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat > 0) then
      begin
        // frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := frmcompra_menu.qrnota.fieldbyname('VALOR_DESCONTO').asfloat;

        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat +
          frmcompra.qrnota_item_lista.FIELDBYNAME('valor_desc').asfloat;

          frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat :=
          (frmcompra_menu.QRNOTA.FIELDBYNAME('valor_total_produtos').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('valor_frete').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('valor_seguro').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('valor_outras_despesas').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ipi').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('item_especial_total').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('valor_icms_subst').asfloat) -
          frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat;

      end
      else
      begin
        if (frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat > 0) then
        begin

          // frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := frmcompra_menu.qrnota.fieldbyname('VALOR_DESCONTO').asfloat;

          frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat :=
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat +
            frmcompra.qrnota_item_lista.FIELDBYNAME('valor_desc').asfloat;

          frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat :=
            (frmcompra_menu.QRNOTA.FIELDBYNAME('valor_total_produtos').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_frete').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_seguro').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_outras_despesas').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('item_especial_total').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ipi').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_icms_subst').asfloat) -
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat;

        end
        else
        begin
          frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat := 0;
          frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat :=
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_total_produtos').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_frete').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_seguro').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_outras_despesas').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ipi').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_icms_subst').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('item_especial_total').asfloat;

        end;
      end;
    end
    else
    begin

        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat +
        frmcompra.qrnota_item_lista.FIELDBYNAME('Valor_desc').asfloat;

        frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat :=
        (frmcompra_menu.QRNOTA.FIELDBYNAME('valor_total_produtos').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_frete').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_seguro').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_outras_despesas').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('item_especial_total').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ipi').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_icms_subst').asfloat) -
        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat;

    end;

    edtotal.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat;

    itens := itens + 1;

    frmcompra.qrnota_item_lista.next;
  end;

  frmcompra_menu.QRNOTA.FIELDBYNAME('itens').AsINTEGER := itens - 1;

  eddesconto.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('valor_desconto').asfloat;

  frmcompra.edbicms.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('base_calculo_icms').asfloat;
  frmcompra.edvicms.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('valor_icms').asfloat;
  frmcompra.edipi.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ipi').asfloat;
  frmcompra.edbst.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_CALC_ICMS_SUBST').asfloat;
  frmcompra.edvst.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('valor_icms_subst').asfloat;
  frmcompra.edfrete.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('valor_frete').asfloat;
  frmcompra.edespecial.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('item_especial_total').asfloat;
  frmcompra.edseguro.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('valor_seguro').asfloat;
  frmcompra.edoutras.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('valor_outras_despesas').asfloat;
  frmcompra.edprodutos.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('valor_total_produtos').asfloat;
  frmcompra.edtotal.Value := frmcompra_menu.QRNOTA.FIELDBYNAME ('total_nota').asfloat;

  // action := cafree;

end;

procedure Tfrmcompra.bexcluirClick(Sender: TObject);
var
  vrecno: integer;
  vqde_item: integer;
begin
  vrecno := qrnota_item.RecNo;
  vbicms := 0;
  vvicms := 0;
  vipi := 0;
  vbst := 0;
  vvst := 0;
  vfrete := 0;
  // vespecial := 0;
  vseguro := 0;
  voutras := 0;
  vprodutos := 0;
  vtotal := 0;
  if Application.messagebox('Confirma a exclusão do item?', 'Atenção',
    mb_yesno + MB_ICONWARNING) = idyes then
  begin
    if qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING <> '' then
    begin
     { DM.QRPRODUTO_MOV.close;
      DM.QRPRODUTO_MOV.sql.clear;
      DM.QRPRODUTO_MOV.sql.add('DELETE FROM C000032 WHERE CODIGO = ''' +
        qrnota_item_lista.FIELDBYNAME('CODLANCAMENTO').ASSTRING + '''');
      DM.QRPRODUTO_MOV.ExecSQL; }
      qrgrade_entrada.close;
      qrgrade_entrada.sql.clear;
      qrgrade_entrada.sql.add('select * from produto_grade where coditem = ''' +
        qrnota_item_lista.FIELDBYNAME('CODLANCAMENTO').ASSTRING + '''');
      qrgrade_entrada.open;

      DM.qrgrade_produto.close;
      DM.qrgrade_produto.sql.clear;
      DM.qrgrade_produto.sql.add('select * from produtos_grade where COD_PRODUTO = ''' +
        qrnota_item_lista.FIELDBYNAME('CODIGO_PRODUTO').ASSTRING + '''');
      DM.qrgrade_produto.open;
      while qrgrade_entrada.RecordCount <> 0 do
      begin
        if DM.qrgrade_produto.Locate('codigo',
          qrgrade_entrada.FIELDBYNAME('codgrade').ASSTRING, [loCaseInsensitive])
        then
        begin
          DM.qrgrade_produto.EDIT;
          DM.qrgrade_produto.FIELDBYNAME('estoque').asfloat :=
            DM.qrgrade_produto.FIELDBYNAME('estoque').asfloat -
            qrgrade_entrada.FIELDBYNAME('quantidade').asfloat;
          DM.qrgrade_produto.Post;
        end;
        qrgrade_entrada.delete;
      end;
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
                  parambyname('ID_MOVIMENTO').AsInteger       := frmcompra_menu.QRNOTACODIGO_NOTA.AsInteger;
                  Parambyname('FRACAO').Asfloat               := qrnota_itemFRACAO.AsINTEGER;
                  Parambyname('ESTOQUE_ANTERIOR').Asfloat     := estoque;
                  Parambyname('QUANTIDADE').Asfloat           := qrnota_itemQUANTIDADE.AsFloat;
                  Parambyname('ESTOQUE_POSTERIOR').Asfloat    := ESTOQUE - qrnota_itemQUANTIDADE.AsFloat;
                  Parambyname('SITUACAO_ESTOQUE').ASINTEGER   := 1; //ENTRADA DE PRODUTOS
                  Parambyname('OPERACAO').TEXT                :=  '-';
                  Parambyname('ACAO_BD').TEXT                 := 'E';
                  Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
                  parambyname('COD_VENDA').value              :=  null;
                  parambyname('COD_COMPRA').AsInteger         :=  frmcompra_menu.QRNOTACODIGO_NOTA.AsInteger;
                  Parambyname('HISTORICO').TEXT               := 'Exclusão da NFE Entrada Nº ' + frmcompra_menu.QRNOTANUM_NOTA.TEXT + '- '+ frmcompra_menu.QRNOTAFORNECEDOR.TEXT;
                  Parambyname('HORA').AsString                := TimeToStr(Time);
                  ExecSQL;
                end;
                DM.IBTransaction.Commit;
                  except
                    DM.IBTransaction.Rollback;
                    showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                                'Verifique que já foi lançFDo');
                  end;
                finally
                  dm.logEst.Close;
                 end;

              DM.qrproduto.Close;
              DM.qrproduto.sql.Clear;
              DM.qrproduto.sql.add('select * from produtos where CODIGO = ''' + qrnota_item_listaCODIGO_PRODUTO.AsString + '''');
              DM.qrproduto.open;

               IF (frmcompra_menu.qrnotaTIPO.ASSTRING = 'COMPRA P/ REVENDA') OR (frmcompra_menu.QRNOTATIPO.ASSTRING ='COMPRA P/ CONSUMO') OR (frmcompra_menu.QRNOTATIPO.ASSTRING = 'COMPRA P/ INDUSTRIALIZAÇÃO') or (frmcompra_menu.QRNOTATIPO.ASSTRING = 'GARANTIA')then
               BEGIN
                IF DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'S' then
                begin
                dm.qrproduto.edit;
                dm.qrprodutoESTOQUE.AsFloat               := dm.qrprodutoESTOQUE.AsFloat - qrnota_item_listaQUANTIDADE.ASFLOAT;
                dm.qrprodutoESTOQUE_ATUAL.AsFloat         := dm.qrprodutoESTOQUE.AsFloat - qrnota_item_listaQUANTIDADE.ASFLOAT;
                dm.qrprodutoESTOQUE_FRACAO.AsFloat        := dm.qrprodutoESTOQUE_FRACAO.AsFloat - (qrnota_item_listaQUANTIDADE.ASFLOAT * qrnota_item_listaFRACAO.ASFLOAT);
                dm.qrproduto.Post;
                end ELSE
                begin
                dm.qrproduto.edit;
                dm.qrprodutoESTOQUE.AsFloat               := dm.qrprodutoESTOQUE.AsFloat - (qrnota_item_listaQUANTIDADE.ASFLOAT * qrnota_item_listaFRACAO.ASFLOAT);
                dm.qrprodutoESTOQUE_ATUAL.AsFloat               := dm.qrprodutoESTOQUE.AsFloat - (qrnota_item_listaQUANTIDADE.ASFLOAT * qrnota_item_listaFRACAO.ASFLOAT);
                dm.qrproduto.Post;
                end;
               end;



    end;

    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('delete from NOTASFISCAIS_ITENS where CODLANCAMENTO = ''' +
      qrnota_item_lista.FIELDBYNAME('CODLANCAMENTO').ASSTRING + ''' and codigo_nota = ''' +
      qrnota_item_lista.FIELDBYNAME('codigo_nota').ASSTRING + '''');
    qrnota_item.ExecSQL;
//    DM.Coneccao.Commit;
    Application.ProcessMessages;

    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select * from NOTASFISCAIS_ITENS where codigo_nota = ''' +
      qrnota_item_lista.FIELDBYNAME('codigo_nota').ASSTRING + '''');
    qrnota_item.open;

    qrnota_item_lista.Refresh;

    vqde_item := 0;
    qrnota_item.first;
    while not qrnota_item.Eof do
    begin
      vqde_item := vqde_item + 1;
      qrnota_item.EDIT;
      qrnota_item.FIELDBYNAME('ITEM').ASSTRING := inttostr(vqde_item);
      qrnota_item.Post;
      qrnota_item.next;
    end;

    DM.Coneccao.Commit;
    Application.ProcessMessages;

    qrnota_item_lista.Refresh;

    batualiza_itensClick(frmcompra);     
  end;
end;

procedure Tfrmcompra.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.RzDBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBEdit5.setfocus;
end;

procedure Tfrmcompra.DBEdit4Enter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure Tfrmcompra.DBEdit4Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  DM.sds_transportador.active := False;
  DM.sds_transportador.active := true;

  if DM.sds_transportador.Locate('NOME_TRANSP', dbedit4.Text, [loCaseInsensitive])
  then
  begin
   // frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_PLACA').ASSTRING :=   DM.sds_transportador.FIELDBYNAME('placa').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_UF').ASSTRING :=       DM.sds_transportador.FIELDBYNAME('uf').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_CNPJ').ASSTRING :=     DM.sds_transportador.FIELDBYNAME('CNPJ').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_IE').ASSTRING :=       DM.sds_transportador.FIELDBYNAME('INSCRICAO').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_ENDERECO').ASSTRING := DM.sds_transportador.FIELDBYNAME('endereco').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_CIDADE').ASSTRING :=   DM.sds_transportador.FIELDBYNAME('cidade').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_UF').ASSTRING :=       DM.sds_transportador.FIELDBYNAME('uf').ASSTRING;
  end;
end;

procedure Tfrmcompra.RzDBNumericEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcompra.combo_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ecodmodelo.setfocus;
end;

procedure Tfrmcompra.ecodremetenteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;

   { frmcompra_menu.QRNOTA.FIELDBYNAME('codremetente').ASSTRING :=
      frmprincipal.zerarcodigo(TEdit(Sender).Text, 6); }
    if TEdit(Sender).Text <> '' then
    begin
      frmcompra_menu.qrfornecedor.close;
      frmcompra_menu.qrfornecedor.sql.clear;
      frmcompra_menu.qrfornecedor.sql.add
        ('select * from fornecedores where codigo = ''' + ecodremetente.Text + '''');
      frmcompra_menu.qrfornecedor.open;
      if frmcompra_menu.qrfornecedor.RecordCount = 0 then
      begin
        Application.messagebox('Fornecedor/Remetente não cadastrado!', 'Aviso',
          mb_ok + MB_ICONWARNING);
        ecodremetente.setfocus;
      end
      else
        frmcompra_menu.QRNOTA.FIELDBYNAME('remetente').ASSTRING := frmcompra_menu.qrfornecedorNOME.Text;;
        Perform(wm_nextdlgctl, 0, 0);
    end
    else
    begin
      ecodremetenteButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.ecodremetenteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcompra_menu.qrfornecedor.close;
    frmcompra_menu.qrfornecedor.sql.clear;
    frmcompra_menu.qrfornecedor.sql.add
      ('select * from fornecedores where codigo = ''' + resultado_pesquisa1 + '''');
    frmcompra_menu.qrfornecedor.open;
    frmcompra_menu.QRNOTA.FIELDBYNAME('codremetente').ASSTRING := resultado_pesquisa1;
    frmcompra_menu.QRNOTA.FIELDBYNAME('remetente').ASSTRING := resultado_pesquisa2;
    emercadoria.setfocus;
  end;
end;

procedure Tfrmcompra.combo_tipoChange(Sender: TObject);
begin
  if combo_tipo.ItemIndex = 3 then
    tab_principal.ActivePageIndex := 5
  else
    tab_principal.ActivePageIndex := 0;
end;

procedure Tfrmcompra.enota_fiscalExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

 { frmcompra_menu.QRNOTA.FIELDBYNAME('num_nota').ASSTRING :=
    frmprincipal.zerarcodigo(frmcompra_menu.QRNOTA.FIELDBYNAME('nota_fiscal')
    .ASSTRING, 6); }

  qrnf.close;
  qrnf.sql.clear;
  qrnf.sql.add('select * from notasfiscais where num_nota = ''' +
    frmcompra_menu.QRNOTA.FIELDBYNAME('num_nota').ASSTRING + '''');
  qrnf.open;
  if qrnf.RecordCount = 1 then
  begin
    frmcompra_menu.QRNOTA.FIELDBYNAME('codremetente').ASSTRING :=
      qrnf.FIELDBYNAME('cod_fornecedor').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_ITENS_NOTA').ASSTRING :=
      qrnf.FIELDBYNAME('valor_total_produtos').ASSTRING;

  end;

end;

procedure Tfrmcompra.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcompra.RzDBNumericEdit1Exit(Sender: TObject);
begin
  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

  with frmcompra_menu.QRNOTA do
  begin
    if FIELDBYNAME('ITEM_FRETE_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_FRETE_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_FRETE_BASE').asfloat :=
          FIELDBYNAME('ITEM_FRETE_VALOR').asfloat;
      if FIELDBYNAME('ITEM_FRETE_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_FRETE_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_FRETE_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_FRETE_ICMS').asfloat :=
            FIELDBYNAME('ITEM_FRETE_BASE').asfloat *
            (FIELDBYNAME('ITEM_FRETE_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    if FIELDBYNAME('ITEM_SEGURO_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_SEGURO_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_SEGURO_BASE').asfloat :=
          FIELDBYNAME('ITEM_SEGURO_VALOR').asfloat;
      if FIELDBYNAME('ITEM_SEGURO_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_SEGURO_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_SEGURO_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_SEGURO_ICMS').asfloat :=
            FIELDBYNAME('ITEM_SEGURO_BASE').asfloat *
            (FIELDBYNAME('ITEM_SEGURO_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    if FIELDBYNAME('ITEM_PIS_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_PIS_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_PIS_BASE').asfloat :=
          FIELDBYNAME('ITEM_PIS_VALOR').asfloat;
      if FIELDBYNAME('ITEM_PIS_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_PIS_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_PIS_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_PIS_ICMS').asfloat := FIELDBYNAME('ITEM_PIS_BASE')
            .asfloat * (FIELDBYNAME('ITEM_PIS_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    if FIELDBYNAME('ITEM_COMPLEMENTO_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_COMPLEMENTO_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_COMPLEMENTO_BASE').asfloat :=
          FIELDBYNAME('ITEM_COMPLEMENTO_VALOR').asfloat;
      if FIELDBYNAME('ITEM_COMPLEMENTO_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_COMPLEMENTO_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_COMPLEMENTO_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_COMPLEMENTO_ICMS').asfloat :=
            FIELDBYNAME('ITEM_COMPLEMENTO_BASE').asfloat *
            (FIELDBYNAME('ITEM_COMPLEMENTO_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    if FIELDBYNAME('ITEM_SERVICO_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_SERVICO_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_SERVICO_BASE').asfloat :=
          FIELDBYNAME('ITEM_SERVICO_VALOR').asfloat;
      if FIELDBYNAME('ITEM_SERVICO_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_SERVICO_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_SERVICO_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_SERVICO_ICMS').asfloat :=
            FIELDBYNAME('ITEM_SERVICO_BASE').asfloat *
            (FIELDBYNAME('ITEM_SERVICO_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    if FIELDBYNAME('ITEM_OUTRAS_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_OUTRAS_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_OUTRAS_BASE').asfloat :=
          FIELDBYNAME('ITEM_OUTRAS_VALOR').asfloat;
      if FIELDBYNAME('ITEM_OUTRAS_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_OUTRAS_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_OUTRAS_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_OUTRAS_ICMS').asfloat :=
            FIELDBYNAME('ITEM_OUTRAS_BASE').asfloat *
            (FIELDBYNAME('ITEM_OUTRAS_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    FIELDBYNAME('ITEM_ESPECIAL_VALOR').asfloat :=
      FIELDBYNAME('ITEM_FRETE_VALOR').asfloat + FIELDBYNAME('ITEM_SEGURO_VALOR')
      .asfloat + FIELDBYNAME('ITEM_PIS_VALOR').asfloat +
      FIELDBYNAME('ITEM_COMPLEMENTO_VALOR').asfloat +
      FIELDBYNAME('ITEM_SERVICO_VALOR').asfloat +
      FIELDBYNAME('ITEM_OUTRAS_VALOR').asfloat;

    FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat := FIELDBYNAME('ITEM_FRETE_ICMS')
      .asfloat + FIELDBYNAME('ITEM_SEGURO_ICMS').asfloat +
      FIELDBYNAME('ITEM_PIS_ICMS').asfloat +
      FIELDBYNAME('ITEM_COMPLEMENTO_ICMS').asfloat +
      FIELDBYNAME('ITEM_SERVICO_ICMS').asfloat +
      FIELDBYNAME('ITEM_OUTRAS_ICMS').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_VALOR').asfloat :=
      FIELDBYNAME('ITEM_ESPECIAL_VALOR').asfloat;
    frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat :=
      FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_total_produtos').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_frete').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_seguro').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_outras_despesas').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ipi').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_icms_subst').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat;

    edtotal.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat;
    edespecial.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
      ('ITEM_ESPECIAL_TOTAL').asfloat;

    vespecial := frmcompra_menu.QRNOTA.FIELDBYNAME
      ('ITEM_ESPECIAL_TOTAL').asfloat;

  end;

end;

procedure Tfrmcompra.RzDBNumericEdit37KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcompra.edvicmsExit(Sender: TObject);
begin
  edtotal.Value := (edprodutos.Value + edvst.Value + edfrete.Value +
    edseguro.Value + edoutras.Value + edipi.Value + edespecial.Value) -
    rdesconto.Value;
end;

procedure Tfrmcompra.balterarClick(Sender: TObject);
var
  vrecno: integer;
begin
  if Edit1.Text = '' then
  begin
    showmessage('Informação do Estado do Fornecedor Inválido...');
    ECODFORNECEDOR.setfocus;
    exit;
  end;
  frmcompra_menu.vopcao_item := 2;
  vrecno := qrnota_item_lista.RecNo;
  vbicms := 0;
  vvicms := 0;
  vipi := 0;
  vbst := 0;
  vvst := 0;
  vfrete := 0;
  // vespecial := 0;
  vseguro := 0;
  voutras := 0;
  vprodutos := 0;
  vtotal := 0;

  qrnota_item.close;
  qrnota_item.sql.clear;
  qrnota_item.sql.add('select * from notasfiscais_itens where CODLANCAMENTO = ''' +
  qrnota_item_lista.FIELDBYNAME('CODLANCAMENTO').ASSTRING + ''' and codigo_nota = ''' +
  qrnota_item_lista.FIELDBYNAME('codigo_nota').ASSTRING + '''');
  qrnota_item.open;

  qrnota_item.EDIT;

  frmcompra_item := tfrmcompra_item.create(self);
  frmcompra_item.eproduto.Text := qrnota_item_lista.FIELDBYNAME('descricao').ASSTRING;
      //  estoque_ant := qrnota_item_listaQUANTIDADE.AsFloat;
      // estoque_antfracao := qrnota_item_listaQUANT_FRACIONADA.AsFloat;
      DM.qrproduto.Close;
      DM.qrproduto.sql.Clear;
      DM.qrproduto.sql.add('select * from produtos where CODIGO = ''' + frmcompra.qrnota_itemCODIGO_PRODUTO.AsString + '''');
      DM.qrproduto.open;

      estoque_ant   := dm.qrprodutoESTOQUE.AsFloat - frmcompra.qrnota_itemQUANTIDADE.AsFloat;
      estoque_antfracao := dm.qrprodutoESTOQUE_FRACAO.AsFloat -  (frmcompra.qrnota_itemQUANTIDADE.AsFloat * frmcompra.qrnota_itemFRACAO.ASFLOAT);

  alterando := True;
  frmcompra_item.showmodal;

  qrnota_item.Refresh;
  batualiza_itensClick(frmcompra);
  qrnota_item_lista.RecNo := vrecno;

  bgravar.setfocus;
end;

procedure Tfrmcompra.ecfopExit(Sender: TObject);
begin
  IF enumero.Text = '' then
  begin
  ShowMessage('Preencha o numero da nota para prosseguir');
  enumero.SetFocus;
  Exit;
  end;
  if (frmcompra.Edit1.Text = frmcompra.Edit2.Text) and
    (copy(ecfop.Text, 1, 1) = '2') then
  begin
    showmessage('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
    ecfop.setfocus;
    exit;
  end
  else
  if (frmcompra.Edit1.Text <> frmcompra.Edit2.Text) and
    (copy(ecfop.Text, 1, 1) = '1') then
  begin
    showmessage('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
    ecfop.setfocus;
    exit;
  end;
end;

procedure Tfrmcompra.ecodmodeloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;

  //  frmcompra_menu.QRNOTA.FIELDBYNAME('modelo').ASSTRING :=  frmprincipal.zerarcodigo(TEdit(Sender).Text, 2);

    if TEdit(Sender).Text <> '00' then
    begin
      frmcompra_menu.qrmodelo.close;
      frmcompra_menu.qrmodelo.sql.clear;
      frmcompra_menu.qrmodelo.sql.add
        ('select * from COD_DOCUMENTOS_FISCAIS where codigo = ''' + ecodmodelo.Text + '''');
      frmcompra_menu.qrmodelo.open;

      if frmcompra_menu.qrmodelo.RecordCount > 0 then
      begin
        frmcompra_menu.QRNOTA.Edit;
        if ecodmodelo.Text = '01' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'NF';

        if ecodmodelo.Text = '04' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'PRD';

        if ecodmodelo.Text = '55' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'NFE';

        if ecodmodelo.Text = '57' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'CTE';

        if ecodmodelo.Text = '06' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'ENE';

        if ecodmodelo.Text = '22' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'TEL';


        eserie.setfocus;
      end
      else
      begin
        Application.messagebox('Modelo não cadastrado!', 'Atenção',
          mb_ok + MB_ICONWARNING);
        ecodmodelo.SelectAll;
        ecodmodelo.setfocus;
        ecodmodeloButtonClick(frmcompra);
      end;
    end
    else
    begin
      ecodmodeloButtonClick(frmcompra);
      tab_principal.ActivePageIndex := 0;
      frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING :=
        frmcompra_menu.qrmodelo.FIELDBYNAME('descricao').ASSTRING;
    end;
    eemissao.setfocus;
    if TEdit(Sender).Text = '55' then
    begin
      Label89.Enabled := true;
    end
    else
    begin
      Label89.Enabled := false;
    end;
  end;
end;

procedure Tfrmcompra.ecodmodeloButtonClick(Sender: TObject);
begin
  resultado_pesquisa4 := '';
  parametro_pesquisa := '';
 { frmxloc_modelo := tfrmxloc_modelo.create(self);
  frmxloc_modelo.showmodal;  }
  dmc.sds_docsFiscais.active := False;
  dmc.sds_docsFiscais.active := true;

    FormdocsFiscais:=TFormdocsFiscais.Create(self);
     FormdocsFiscais.ShowModal;
      frmcompra_menu.QRNOTA.FIELDBYNAME('modelo').ASSTRING := DMC.Sds_DocsFiscaisCODIGO.Text;
      // suiDBEdit4.text := DMC.Sds_DocsFiscaisDESCRICAO.Text;
      //  sLabel1.Caption := DMC.Sds_DocsFiscaisDESCRICAO.Text;
      resultado_pesquisa4 := DMC.Sds_DocsFiscaisCODIGO.Text;

  if resultado_pesquisa4 <> '' then
  begin
    frmcompra_menu.qrmodelo.close;
    frmcompra_menu.qrmodelo.sql.clear;
    frmcompra_menu.qrmodelo.sql.add('select * from COD_DOCUMENTOS_FISCAIS where codigo = '''
      + resultado_pesquisa4 + '''');
    frmcompra_menu.qrmodelo.open;
    frmcompra_menu.QRNOTA.FIELDBYNAME('modelo').ASSTRING := resultado_pesquisa4;
 //   frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING :=  frmcompra_menu.qrmodelo.FIELDBYNAME('sigla').ASSTRING;

    tab_principal.ActivePageIndex := 0;
    if (ecodmodelo.Text = '57') then
    begin
      combo_tipo.ItemIndex := 3;
      tab_principal.ActivePageIndex := 5
    end;
    eserie.setfocus;
  end;
end;

procedure Tfrmcompra.evalor_produtosExit(Sender: TObject);
begin

  if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat = 0 then
  begin
    if Application.messagebox('Valor dos produtos não Informado! Continua?',
      'Aviso', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
    begin
      evalor_produtos.setfocus;
      exit;
    end;
  end;

  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

 { if frmcompra_menu.QRNOTA.FIELDBYNAME('ICMSRETIDO').asfloat > 0 then
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat;
  end
  else
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS_SUBST').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('TOTAL_NOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_ICMS_SUBST').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_TOTAL_PRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_OUTRAS_DESPESAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_IPI').asfloat;
  end; }
  if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat > 0 then
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
  end
  else
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
  end;


end;

procedure Tfrmcompra.ECODFORNECEDORExit(Sender: TObject);
begin
  IF enumero.Text = '' then
  begin
   ShowMessage('Preencha o numero da nota para prosseguir');
   enumero.SetFocus;
  Exit;
  end;
  (* ********************* verificar se existe a mesma nota para o mesmo forncedor ********************** *)
 if (ECODFORNECEDOR.Text > '') and  (ecodmodelo.Text > '') then
 begin
  if frmcompra_menu.QRNOTA.State = dsinsert then
  begin
    qrnf.close;
    qrnf.sql.clear;
    qrnf.sql.add('select * from NOTASFISCAIS where num_nota = ''' +
      enumero.Text + '''');
    qrnf.sql.add('and cod_fornecedor = ''' + ECODFORNECEDOR.Text + '''');
    qrnf.sql.add('and modelo = ''' + ecodmodelo.Text + '''');
    qrnf.open;
    if qrnf.RecordCount > 0 then
    begin
      Application.messagebox
        ('Já existe uma nota fiscal cadastrada com este número para este fornecedor!',
        'Atenção', mb_ok + mb_iconerror);
      enumero.setfocus;
      exit;
    end;
  end;
  end;
end;

procedure Tfrmcompra.XDESCONTOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
  //  econta.Text := frmprincipal.zerarcodigo(econta.Text, 6);
    if econta.Text <> '' then
      if not formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
      then
        econtaButtonClick(frmcompra)
      else
        edit5.setfocus
    else
      econta.setfocus;

  end;
end;

procedure Tfrmcompra.econtaButtonClick(Sender: TObject);
begin
{  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  econta.Text := DM.qrplano.FIELDBYNAME('codigo').ASSTRING;  }
  FormConsPlanoContas := tFormConsPlanoContas.create(self);
  FormConsPlanoContas.showmodal;

  econta.Text := DM.SDS_PLCONTASCODIGO.TEXT;
 // enomeconta.Text := DM.SDS_PlCONTASnome.TEXT;
  edit5.setfocus;
end;

procedure Tfrmcompra.edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.ecountKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgerar.setfocus;
end;

procedure Tfrmcompra.bgerarClick(Sender: TObject);
var
  i: integer;
  valor_fat: real;
begin
  if frmcompra_menu.QRNOTA.State = dsinsert then
  begin
    qrpagar.close;
    qrpagar.sql.clear;
    qrpagar.sql.add('DELETE FROM CONTAS_APAGAR WHERE CODNOTA = ''' +
      frmcompra_menu.QRNOTA.FIELDBYNAME('CODIGO_NOTA').ASSTRING + '''');
    qrpagar.ExecSQL;

    qrpagar.sql.clear;
    qrpagar.sql.add('SELECT * FROM CONTAS_APAGAR WHERE CODNOTA = ''' +
      frmcompra_menu.QRNOTA.FIELDBYNAME('CODIGO_NOTA').ASSTRING +
      ''' ORDER BY DATA_VENCIMENTO');
    qrpagar.open;
  end;
  aceita_inclusao := true;

  if edtotal.Value > 0 then
    valor_fat := edtotal.Value
  else if etotalnota.Value > 0 then
    valor_fat := etotalnota.Value
  else
  begin
    Application.messagebox('Esta nota fiscal não possue valor!', 'Erro',
      mb_ok + mb_iconerror);
    exit;
  end;

  for i := 1 to ecount.IntValue do
  begin
     dm.ProxCod.Close;
     dm.ProxCod.SQL.Clear;
     dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CONTAS_APAGAR');
     DM.ProxCod.Open;

    qrpagar.Insert;
    qrpagar.FIELDBYNAME('codigo').asINTEGER        :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;
    qrpagar.FIELDBYNAME('data_emissao').AsDateTime := eemissao.date;
    qrpagar.FIELDBYNAME('codfornecedor').ASSTRING := ECODFORNECEDOR.Text;
    qrpagar.FIELDBYNAME('codconta').ASSTRING := econta.Text;
    qrpagar.FIELDBYNAME('notafiscal').ASSTRING := enumero.Text;
    qrpagar.FIELDBYNAME('situacao').AsINTEGER := 1;
    qrpagar.FIELDBYNAME('filtro').AsINTEGER := 0;
    qrpagar.FIELDBYNAME('codnota').ASSTRING := frmcompra_menu.QRNOTA.FIELDBYNAME
      ('CODIGO_NOTA').ASSTRING;
    qrpagar.FIELDBYNAME('valor').asfloat := valor_fat / ecount.IntValue;
    qrpagar.FIELDBYNAME('documento').ASSTRING := enumero.Text + '/' +
      inttostr(i);
    qrpagar.FIELDBYNAME('historico').ASSTRING := edit5.Text;
    qrpagar.FIELDBYNAME('especie').ASSTRING := 'DUPLICATA';
    qrpagar.FIELDBYNAME('C').ASSTRING := '';
    qrpagar.FIELDBYNAME('E').ASSTRING := '';
    qrpagar.FIELDBYNAME('data_vencimento').AsDateTime :=
      INCMONTH(eemissao.date, i);
    qrpagar.Post;
  end;
  DM.Coneccao.Commit;
  Application.ProcessMessages;

  qrpagar.Refresh;

  aceita_inclusao := false; 
end;

procedure Tfrmcompra.FDvGlowButton2Click(Sender: TObject);
begin
  if qrpagar.FIELDBYNAME('SITUACAO').AsINTEGER = 2 then
  begin
    Application.messagebox
      ('Este documento já foi pago! Impossível prosseguir com a exclusao!',
      'Atenção', mb_ok + mb_iconerror);
    exit;
  end;

  if Application.messagebox('Confirma e exclusão deste documento?', 'Atenção',
    mb_yesno + MB_ICONWARNING) = idyes then
  begin
    qrpagar.delete;
    DM.Coneccao.Commit;
    Application.ProcessMessages;
    if qrpagar.RecordCount = 0 then
      pfatura.Enabled := true;
  end; 
end;

procedure Tfrmcompra.qrpagarBeforePost(DataSet: TDataSet);
begin

  if qrpagar.FIELDBYNAME('SITUACAO').AsINTEGER = 2 then
  begin
    Application.messagebox
      ('Este documento já foi pago! Impossível prosseguir com a edição!',
      'Atenção', mb_ok + mb_iconerror);
    abort;
  end
  else
  begin
    if aceita_inclusao then
      qrpagar.FIELDBYNAME('liquido').asfloat :=
        qrpagar.FIELDBYNAME('valor').asfloat
    else
    begin
      if qrpagar.State = dsinsert then
        abort;
    end;
  end;
end;

procedure Tfrmcompra.DBEdit5Enter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure Tfrmcompra.DBEdit5Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmcompra.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.ebase_icmsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.RzDBNumericEdit41KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      Perform(wm_nextdlgctl, 0, 0)
    else if (Key in ['0' .. '9']) then
      //
    else
      abort;
end;

procedure Tfrmcompra.DBEdit19Exit(Sender: TObject);
begin
 { if dsnota.DataSet.State in [dsinsert, dsedit] then
    dsnota.DataSet.FIELDBYNAME('obs7').ASSTRING :=
      frmprincipal.zerarcodigo(dsnota.DataSet.FIELDBYNAME('obs7').ASSTRING, 6);  }
end;

procedure Tfrmcompra.ecountExit(Sender: TObject);
begin
{  if dsnota.DataSet.State in [dsinsert, dsedit] then
    dsnota.DataSet.FIELDBYNAME('obs8').ASSTRING :=
      frmprincipal.zerarcodigo(dsnota.DataSet.FIELDBYNAME('obs8').ASSTRING, 3);  }

end;

procedure Tfrmcompra.eemissaoExit(Sender: TObject);
begin
  if copy(datetostr(eemissao.date), 7, 4) <> copy(datetostr(date), 7, 4) then
  begin
    if Application.messagebox('Data de Emissão fora do ano corrente, Continua?',
      'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
    begin
      eemissao.setfocus;
    end;
  end;
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmcompra.eentradaExit(Sender: TObject);
begin
  if copy(datetostr(eentrada.date), 7, 4) <> copy(datetostr(date), 7, 4) then
  begin
    if Application.messagebox('Data de Entrada fora do ano corrente, Continua?',
      'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
    begin
      eentrada.setfocus;
    end;
  end;
  TEdit(Sender).color := clwindow;

end;

procedure Tfrmcompra.eaproveita_creditoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.RzDBComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    eCentro.setfocus;
end;

procedure Tfrmcompra.ecodmodeloExit(Sender: TObject);
begin
  if TEdit(Sender).Text = '' then
  begin
    ecodmodeloButtonClick(frmcompra);
  end;

  IF enumero.Text = '' then
  begin
   ShowMessage('Preencha o numero da nota para prosseguir');
   enumero.SetFocus;
  Exit;
  end;


  if frmcompra_menu.qrmodelo.RecordCount > 0 then
      begin
        frmcompra_menu.QRNOTA.Edit;
        if ecodmodelo.Text = '01' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'NF';

        if ecodmodelo.Text = '04' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'PRD';

        if ecodmodelo.Text = '55' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'NFE';

        if ecodmodelo.Text = '57' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'CTE';

        if ecodmodelo.Text = '06' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'ENE';

        if ecodmodelo.Text = '22' then
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING := 'TEL';
      end;

end;

procedure Tfrmcompra.econtaExit(Sender: TObject);
begin
if econta.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
    then
      econtaButtonClick(frmcontaspagar)
    else
    begin
    //  Edit5.setfocus;
      enomeconta.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
    end;
   end  else
    edit5.setfocus;
end;

procedure Tfrmcompra.sDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.sDBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.etotalnotaExit(Sender: TObject);
begin
frmcompra_menu.qrnota.post;
frmcompra_menu.qrnota.edit;
end;

procedure Tfrmcompra.sDBEdit2Exit(Sender: TObject);
begin
frmcompra_menu.qrnota.post;
frmcompra_menu.qrnota.edit;
end;

procedure Tfrmcompra.sDBEdit1Exit(Sender: TObject);
var
  UF: integer;
  Emissao: TDateTime;
  CNPJ: string;
  Modelo, Serie, NumeroNF: integer;
  chave: string;
begin
 if ((ecodmodelo.text = '55')  or (ecodmodelo.text = '57')) then
    begin
    if sDBEdit1.text ='' then
    begin
        Application.MESSAGEBOX('Quando tipo Modelo for (55 - NF-e) ou (57 - CT-e) deve ser Preenchida a chave da NF-e... Verifique!!!', 'Atenção', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
        sDBEdit1.SetFocus;
    end;
 
    if copy(datetostr(eemissao.date), 4, 2) <> copy(sDBEdit1.Text, 5, 2) then
    begin
       Application.MESSAGEBOX('Mês embutido na chave da nfe ou cte esta diferente da data de emissão favor corrigir a data!!!', 'Atenção', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
       eemissao.SetFocus;
       Exit;
    end;

    if sDBEdit1.Text >'' then
    begin
    chave:= sDBEdit1.text;
    NumeroNF := StrToInt(enumero.text);
    Modelo :=  StrToInt(ecodmodelo.text);
    Emissao := eemissao.Date;
    Serie :=  StrToInt(ESERIE.text);
    UF :=     UFtoCUF(EDIT1.Text);
    CNPJ :=    RemoveChar(frmcompra_menu.qrfornecedorCNPJ.Text);
    ValidaChaveAcesso(UF,Emissao,CNPJ,Modelo, Serie, NumeroNF,chave);
    end;
  end;
end;

procedure Tfrmcompra.eCentroButtonClick(Sender: TObject);
begin
  frmloc_centro := tfrmloc_centro.create(self);
  frmloc_centro.showmodal;

  eCentro.Text := DM1.Sds_CentroCustoCOD_CENTRO.TEXT;
  EnomeCentro.Text := DM1.Sds_CentroCustoDESCRICAO.TEXT;
  econta.Text := DM1.Sds_CentroCustoCOD_PLANO.Text;
  EImovel.SetFocus;
end;

procedure Tfrmcompra.eCentroKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmcompra.EImovelButtonClick(Sender: TObject);
begin
 FPesquisaImovel:=TFPesquisaImovel.Create(self);
 FPesquisaImovel.Showmodal;

 if NOT DMMovimentacao.dsImovel.DataSet.IsEmpty then
 begin
 EImovel.TEXT := DMMovimentacao.qrImovelID_PRODUTOS.Text;
 EnomeImovel.Text := DMMovimentacao.qrImovelDESCRICAO.Text;
 ebase_icms.SetFocus;
 end;
end;

procedure Tfrmcompra.EImovelKeyPress(Sender: TObject; var Key: Char);
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
       ebase_icms.SetFocus;
      end;
      if not DMMovimentacao.qrImovel.locate('ID_PRODUTOS',EImovel.text, [])=True then
      begin
      EImovelButtonClick(frmimporta_nfe);
      end;
      end else
      BEGIN
      ebase_icms.SetFocus;
      end;
      end;
end;

end.
