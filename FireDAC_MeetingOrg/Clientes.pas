unit clientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls, RXToolEdit, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls,Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  DBClient, SimpleDS, SUIRadioGroup, RxLookup, FMTBcd, Provider, SqlExpr,
  RzPanel, RzTabs,   rxCurrEdit, RzEdit, RzDBEdit, RzDBBnEd, AlignEdit, PageView,
  Collection, Wwdbigrd, Wwdbgrid, IBCustomDataSet, IBQuery,
  TaskDialog, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FileCtrl, frxClass, frxDBSet,
  System.ImageList,  AdvReflectionImage, AdvGlowButton,
  vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, TFlatPanelUnit;


  type
  TFormClientes = class(TForm)
    Panel1: TPanel;
    pnldados: TPanel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel16: TRxLabel;
    RxLabel17: TRxLabel;
    RxLabel19: TRxLabel;
    RxLabel20: TRxLabel;
    RxLabel21: TRxLabel;
    DBDateEdit1: TDBDateEdit;
    OpenDialog1: TOpenPictureDialog;
    RxLabel2: TRxLabel;
    Panel5: TPanel;
    db_nome: TDBEdit;
    suiDBEdit1: TDBEdit;
    suiDBEdit3: TDBEdit;
    suiDBEdit2: TDBEdit;
    suiDBEdit4: TDBEdit;
    suiDBEdit12: TDBEdit;
    suiDBEdit8: TDBEdit;
    suiDBEdit7: TDBEdit;
    suiDBEdit9: TDBEdit;
    suiDBEdit11: TDBEdit;
    suiDBEdit10: TDBEdit;
    suiDBComboBox2: TDBComboBox;
    suiDBComboBox1: TDBComboBox;
    RxLabel32: TRxLabel;
    DBEdit1: TDBEdit;
    RxLabel46: TRxLabel;
    DBEdit2: TDBEdit;
    RxLabel48: TRxLabel;
    RxLabel49: TRxLabel;
    DBDateEdit5: TDBDateEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TRxDBComboEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    RxLabel51: TRxLabel;
    RxLabel57: TRxLabel;
    DBEdit9: TDBEdit;
    DBEdit19: TDBEdit;
    RxLabel68: TRxLabel;
    DBEdit30: TDBEdit;
    RxLabel75: TRxLabel;
    RxLabel82: TRxLabel;
    DBEdit37: TDBEdit;
    pc: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    Qry_cliente: TSQLQuery;
    dsp_clientes: TDataSetProvider;
    cds_cliente: TClientDataSet;
    Qry_clienteCODIGO: TIntegerField;
    Qry_clienteNOME_RS: TStringField;
    Qry_clienteENDERECO: TStringField;
    Qry_clienteCIDADE: TStringField;
    Qry_clienteUF: TStringField;
    Qry_clienteCEP: TStringField;
    Qry_clienteTELEFONE: TStringField;
    Qry_clienteTELEFONE2: TStringField;
    Qry_clienteEMAIL: TStringField;
    Qry_clienteNASCIMENTO_IA: TDateField;
    Qry_clienteSEXO: TStringField;
    Qry_clienteFOTO_LOGOMARCA: TBlobField;
    Qry_clienteBAIRRO: TStringField;
    Qry_clienteFAX: TStringField;
    Qry_clienteCELULAR: TStringField;
    Qry_clienteUSERCAD: TStringField;
    Qry_clienteDATACAD: TDateField;
    Qry_clienteCPF_CNPJ: TStringField;
    Qry_clienteOBSERVACOES: TBlobField;
    Qry_clienteCREDIARIO: TStringField;
    Qry_clienteESTADOCIVIL: TStringField;
    Qry_clienteRESIDENCIA_SEDE: TStringField;
    Qry_clientePAI: TStringField;
    Qry_clienteMAE: TStringField;
    Qry_clienteNOME_CONJUGE: TStringField;
    Qry_clienteCPF_CONJUGE: TStringField;
    Qry_clienteNASCIMENTO_CONJUGE: TDateField;
    Qry_clienteTRABALHO_CONJUGE: TStringField;
    Qry_clientePROFISSAO_CONJUGE: TStringField;
    Qry_clienteLOCALTRABALHO: TStringField;
    Qry_clientePROFISSAO_RA: TStringField;
    Qry_clienteTELEFONE_TRABALHO: TStringField;
    Qry_clienteFAX_TRABALHO: TStringField;
    Qry_clienteOBSERVACOES_TRABALHO: TBlobField;
    Qry_clienteBANCO: TStringField;
    Qry_clienteNOME_AGENCIA: TStringField;
    Qry_clienteNUMERO_AGENCIA: TStringField;
    Qry_clienteCONTA_CORRENTE: TIntegerField;
    Qry_clienteNOME1_REFERENCIA: TStringField;
    Qry_clienteNOME2_REFERENCIA: TStringField;
    Qry_clienteTELEFONE1_REFERENCIA: TStringField;
    Qry_clienteTELEFONE2_REFERENCIA: TStringField;
    Qry_clienteBANCO_REFERENCIA: TStringField;
    Qry_clienteAPELIDO: TStringField;
    Qry_clienteTIPO: TStringField;
    Qry_clienteOBSERVACOES_COMERCIAIS: TBlobField;
    Qry_clienteOBSERVACOES_BANCO: TBlobField;
    Qry_clientePG_CREDIARIO: TStringField;
    Qry_clientePG_CHEQUE: TStringField;
    Qry_clientePG_FINANCEIRA: TStringField;
    Qry_clienteREMUNERACAO: TFMTBCDField;
    Qry_clienteNUMERO: TStringField;
    Qry_clienteCOMPLEMENTO: TStringField;
    Qry_clienteCOD_EMPRESA: TIntegerField;
    Qry_clienteORGAO_EMISSOR: TStringField;
    Qry_clienteDATA_EMISSAO_RG: TDateField;
    Qry_clienteNATURALIDADE: TStringField;
    Qry_clienteNATURALIDADE_UF: TStringField;
    Qry_clienteCOD_CIDADE: TIntegerField;
    Qry_clienteCOD_BAIRRO: TIntegerField;
    Qry_clienteDATA_ALTERACAO: TDateField;
    Qry_clienteCOD_ZONA: TIntegerField;
    Qry_clientePONTO_REFERENCIA: TStringField;
    Qry_clienteATIVO: TStringField;
    Qry_clienteCONTATO1: TStringField;
    Qry_clienteCONTATO2: TStringField;
    Qry_clienteCX_POSTAL: TStringField;
    Qry_clienteVALOR_ALUGUEL: TFMTBCDField;
    Qry_clienteTEMPO_RESIDENCIA: TStringField;
    Qry_clienteNUMERO_DEPENDENTES: TIntegerField;
    Qry_clienteENDERECO_REFERENCIA1: TStringField;
    Qry_clienteENDERECO_REFERENCIA2: TStringField;
    Qry_clienteDATA_ADMISSAO_REFERENCIA1: TDateField;
    Qry_clienteDATA_ADMISSAO_REFERENCIA2: TDateField;
    Qry_clienteRG_CONJUGUE: TStringField;
    Qry_clienteRENDA_CONJUGUE: TFMTBCDField;
    Qry_clienteDATA_ADMINSSAO_CONJUGUE: TDateField;
    Qry_clienteFONE_CONJUGUE: TStringField;
    Qry_clienteENDERECO_COBRANCA: TStringField;
    Qry_clienteCEP_COBRANCA: TStringField;
    Qry_clienteCOD_CIDADE_COBRANCA: TIntegerField;
    Qry_clienteCX_POSTAL_COBRANCA: TStringField;
    Qry_clienteLIMITE_DE_CREDITO: TFMTBCDField;
    Qry_clienteINSC_MUNICIPAL: TStringField;
    Qry_clientePRODUTOR_RURAL: TStringField;
    Qry_clienteINSC_PRODUTOR_RURAL: TStringField;
    Qry_clienteCOD_BAIRRO_COBRANCA: TIntegerField;
    Qry_clienteCIDADE_COBRANCA: TStringField;
    Qry_clienteBAIRRO_COBRANCA: TStringField;
    Qry_clienteUF_COBRANCA: TStringField;
    Qry_clienteCONTA_BANCARIA: TStringField;
    Qry_clienteNOME_PROPRIEDADE: TStringField;
    Qry_clienteNOME_VETERINARIO: TStringField;
    Qry_clienteSOCIO1: TStringField;
    Qry_clienteCPFSOCIO1: TStringField;
    Qry_clienteDATANASCSOCIO1: TDateField;
    Qry_clienteSOCIO2: TStringField;
    Qry_clienteCPFSOCIO2: TStringField;
    Qry_clienteDATANASCSOCIO2: TDateField;
    Qry_clienteSOCIO3: TStringField;
    Qry_clienteCPFSOCIO3: TStringField;
    Qry_clienteDATANASCSOCIO3: TDateField;
    Qry_clienteSOCIO4: TStringField;
    Qry_clienteCPFSOCIO4: TStringField;
    Qry_clienteDATANASCSOCIO4: TDateField;
    Qry_clienteDATAFUNDACAO: TDateField;
    Qry_clienteCAPITALSOCIAL: TFMTBCDField;
    Qry_clienteFATURAMENTOBRUTO: TFMTBCDField;
    Qry_clienteREGJUNTACOM: TStringField;
    Qry_clienteENDSOCIO1: TStringField;
    Qry_clienteRGSOCIO1: TIntegerField;
    Qry_clienteENDSOCIO2: TStringField;
    Qry_clienteRGSOCIO2: TIntegerField;
    Qry_clienteENDSOCIO3: TStringField;
    Qry_clienteRGSOCIO3: TIntegerField;
    Qry_clienteENDSOCIO4: TStringField;
    Qry_clienteRGSOCIO4: TIntegerField;
    Qry_clienteAUTORIZADO1: TStringField;
    Qry_clienteAUTORIZADO2: TStringField;
    Qry_clienteAUTORIZADO3: TStringField;
    Qry_clienteCPF_AUT1: TStringField;
    Qry_clienteCPF_AUT2: TStringField;
    Qry_clienteCPF_AUT3: TStringField;
    Qry_clienteFUNCIONARIO: TStringField;
    Qry_clienteCTPS: TStringField;
    cds_clienteCODIGO: TIntegerField;
    cds_clienteNOME_RS: TStringField;
    cds_clienteENDERECO: TStringField;
    cds_clienteCIDADE: TStringField;
    cds_clienteUF: TStringField;
    cds_clienteCEP: TStringField;
    cds_clienteTELEFONE: TStringField;
    cds_clienteTELEFONE2: TStringField;
    cds_clienteEMAIL: TStringField;
    cds_clienteNASCIMENTO_IA: TDateField;
    cds_clienteSEXO: TStringField;
    cds_clienteFOTO_LOGOMARCA: TBlobField;
    cds_clienteBAIRRO: TStringField;
    cds_clienteFAX: TStringField;
    cds_clienteCELULAR: TStringField;
    cds_clienteUSERCAD: TStringField;
    cds_clienteDATACAD: TDateField;
    cds_clienteCPF_CNPJ: TStringField;
    cds_clienteOBSERVACOES: TBlobField;
    cds_clienteCREDIARIO: TStringField;
    cds_clienteESTADOCIVIL: TStringField;
    cds_clienteRESIDENCIA_SEDE: TStringField;
    cds_clientePAI: TStringField;
    cds_clienteMAE: TStringField;
    cds_clienteNOME_CONJUGE: TStringField;
    cds_clienteCPF_CONJUGE: TStringField;
    cds_clienteNASCIMENTO_CONJUGE: TDateField;
    cds_clienteTRABALHO_CONJUGE: TStringField;
    cds_clientePROFISSAO_CONJUGE: TStringField;
    cds_clienteLOCALTRABALHO: TStringField;
    cds_clientePROFISSAO_RA: TStringField;
    cds_clienteTELEFONE_TRABALHO: TStringField;
    cds_clienteFAX_TRABALHO: TStringField;
    cds_clienteOBSERVACOES_TRABALHO: TBlobField;
    cds_clienteBANCO: TStringField;
    cds_clienteNOME_AGENCIA: TStringField;
    cds_clienteNUMERO_AGENCIA: TStringField;
    cds_clienteCONTA_CORRENTE: TIntegerField;
    cds_clienteNOME1_REFERENCIA: TStringField;
    cds_clienteNOME2_REFERENCIA: TStringField;
    cds_clienteTELEFONE1_REFERENCIA: TStringField;
    cds_clienteTELEFONE2_REFERENCIA: TStringField;
    cds_clienteBANCO_REFERENCIA: TStringField;
    cds_clienteAPELIDO: TStringField;
    cds_clienteTIPO: TStringField;
    cds_clienteOBSERVACOES_COMERCIAIS: TBlobField;
    cds_clienteOBSERVACOES_BANCO: TBlobField;
    cds_clientePG_CREDIARIO: TStringField;
    cds_clientePG_CHEQUE: TStringField;
    cds_clientePG_FINANCEIRA: TStringField;
    cds_clienteREMUNERACAO: TFMTBCDField;
    cds_clienteNUMERO: TStringField;
    cds_clienteCOMPLEMENTO: TStringField;
    cds_clienteCOD_EMPRESA: TIntegerField;
    cds_clienteORGAO_EMISSOR: TStringField;
    cds_clienteDATA_EMISSAO_RG: TDateField;
    cds_clienteNATURALIDADE: TStringField;
    cds_clienteNATURALIDADE_UF: TStringField;
    cds_clienteCOD_CIDADE: TIntegerField;
    cds_clienteCOD_BAIRRO: TIntegerField;
    cds_clienteDATA_ALTERACAO: TDateField;
    cds_clienteCOD_ZONA: TIntegerField;
    cds_clientePONTO_REFERENCIA: TStringField;
    cds_clienteATIVO: TStringField;
    cds_clienteCONTATO1: TStringField;
    cds_clienteCONTATO2: TStringField;
    cds_clienteCX_POSTAL: TStringField;
    cds_clienteVALOR_ALUGUEL: TFMTBCDField;
    cds_clienteTEMPO_RESIDENCIA: TStringField;
    cds_clienteNUMERO_DEPENDENTES: TIntegerField;
    cds_clienteENDERECO_REFERENCIA1: TStringField;
    cds_clienteENDERECO_REFERENCIA2: TStringField;
    cds_clienteDATA_ADMISSAO_REFERENCIA1: TDateField;
    cds_clienteDATA_ADMISSAO_REFERENCIA2: TDateField;
    cds_clienteRG_CONJUGUE: TStringField;
    cds_clienteRENDA_CONJUGUE: TFMTBCDField;
    cds_clienteDATA_ADMINSSAO_CONJUGUE: TDateField;
    cds_clienteFONE_CONJUGUE: TStringField;
    cds_clienteENDERECO_COBRANCA: TStringField;
    cds_clienteCEP_COBRANCA: TStringField;
    cds_clienteCOD_CIDADE_COBRANCA: TIntegerField;
    cds_clienteCX_POSTAL_COBRANCA: TStringField;
    cds_clienteLIMITE_DE_CREDITO: TFMTBCDField;
    cds_clienteINSC_MUNICIPAL: TStringField;
    cds_clientePRODUTOR_RURAL: TStringField;
    cds_clienteINSC_PRODUTOR_RURAL: TStringField;
    cds_clienteCOD_BAIRRO_COBRANCA: TIntegerField;
    cds_clienteCIDADE_COBRANCA: TStringField;
    cds_clienteBAIRRO_COBRANCA: TStringField;
    cds_clienteUF_COBRANCA: TStringField;
    cds_clienteCONTA_BANCARIA: TStringField;
    cds_clienteNOME_PROPRIEDADE: TStringField;
    cds_clienteNOME_VETERINARIO: TStringField;
    cds_clienteSOCIO1: TStringField;
    cds_clienteCPFSOCIO1: TStringField;
    cds_clienteDATANASCSOCIO1: TDateField;
    cds_clienteSOCIO2: TStringField;
    cds_clienteCPFSOCIO2: TStringField;
    cds_clienteDATANASCSOCIO2: TDateField;
    cds_clienteSOCIO3: TStringField;
    cds_clienteCPFSOCIO3: TStringField;
    cds_clienteDATANASCSOCIO3: TDateField;
    cds_clienteSOCIO4: TStringField;
    cds_clienteCPFSOCIO4: TStringField;
    cds_clienteDATANASCSOCIO4: TDateField;
    cds_clienteDATAFUNDACAO: TDateField;
    cds_clienteCAPITALSOCIAL: TFMTBCDField;
    cds_clienteFATURAMENTOBRUTO: TFMTBCDField;
    cds_clienteREGJUNTACOM: TStringField;
    cds_clienteENDSOCIO1: TStringField;
    cds_clienteRGSOCIO1: TIntegerField;
    cds_clienteENDSOCIO2: TStringField;
    cds_clienteRGSOCIO2: TIntegerField;
    cds_clienteENDSOCIO3: TStringField;
    cds_clienteRGSOCIO3: TIntegerField;
    cds_clienteENDSOCIO4: TStringField;
    cds_clienteRGSOCIO4: TIntegerField;
    cds_clienteAUTORIZADO1: TStringField;
    cds_clienteAUTORIZADO2: TStringField;
    cds_clienteAUTORIZADO3: TStringField;
    cds_clienteCPF_AUT1: TStringField;
    cds_clienteCPF_AUT2: TStringField;
    cds_clienteCPF_AUT3: TStringField;
    cds_clienteFUNCIONARIO: TStringField;
    cds_clienteCTPS: TStringField;
    Qry_clienteTESTA_CREDITO: TStringField;
    Qry_clienteTESTA_LIMITE: TStringField;
    Panel10: TPanel;
    DBText1: TDBText;
    DBText3: TDBText;
    RxLabel50: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel1: TRxLabel;
    dbt_codigo: TDBEdit;
    suiButton3: TAdvGlowButton;
    suiButton4: TAdvGlowButton;
    RxLabel18: TRxLabel;
    FDvGlowButton1: TAdvGlowButton;
    EdtCodConvenio: TRzDBButtonEdit;
    EdtNomeConvenio: TEdit;
    AlignEdit1: TAlignEdit;
    pg_rodape: TPageView;
    PageSheet11: TPageSheet;
    pficha1: TPanel;
    PageSheet7: TPageSheet;
    pficha2: TPanel;
    PageSheet10: TPageSheet;
    PageSheet8: TPageSheet;
    pficha3: TPanel;
    FDvReflectionImage8: TAdvReflectionImage;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    Label53: TLabel;
    Label54: TLabel;
    SpeedButton3: TSpeedButton;
    Label55: TLabel;
    SpeedButton4: TSpeedButton;
    Label56: TLabel;
    RxLabel23: TRxLabel;
    RxLabel24: TRxLabel;
    suiDBEdit14: TDBEdit;
    suiDBEdit15: TDBEdit;
    DBMemo1: TDBMemo;
    Panel11: TPanel;
    RxLabel72: TRxLabel;
    DBEdit22: TDBEdit;
    suiDBCheckBox1: TDBCheckBox;
    RxLabel73: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel64: TRxLabel;
    RxLabel65: TRxLabel;
    RxLabel66: TRxLabel;
    RxLabel67: TRxLabel;
    RxLabel69: TRxLabel;
    RxLabel70: TRxLabel;
    RxLabel71: TRxLabel;
    suiDBComboBox3: TDBComboBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    RxDBComboEdit1: TRxDBComboEdit;
    PageSheet1: TPageSheet;
    pcad: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    RLIMITE: TRxDBCalcEdit;
    DBDateEdit3: TDBDateEdit;
    wwDBComboBox1: TwwDBComboBox;
    suiDBRadioGroup4: TDBRadioGroup;
    suiDBRadioGroup3: TDBRadioGroup;
    suiDBRadioGroup2: TDBRadioGroup;
    FDvReflectionImage1: TAdvReflectionImage;
    RxLabel55: TRxLabel;
    DBEdit28: TDBEdit;
    RxLabel74: TRxLabel;
    DBEdit29: TDBEdit;
    PageSheet2: TPageSheet;
    RxLabel76: TRxLabel;
    DBEdit31: TDBEdit;
    RxLabel79: TRxLabel;
    DBEdit34: TDBEdit;
    RxLabel80: TRxLabel;
    DBEdit35: TDBEdit;
    RxLabel81: TRxLabel;
    DBEdit36: TDBEdit;
    DBEdit33: TDBEdit;
    RxLabel78: TRxLabel;
    DBEdit32: TDBEdit;
    RxLabel77: TRxLabel;
    suiButton5: TAdvGlowButton;
    suiDBEdit22: TDBEdit;
    RxLabel45: TRxLabel;
    RxLabel36: TRxLabel;
    RxLabel35: TRxLabel;
    RxLabel34: TRxLabel;
    RxLabel33: TRxLabel;
    DBMemo3: TDBMemo;
    DBEdit27: TDBEdit;
    DBEDIT26: TDBEdit;
    DBEdit25: TDBEdit;
    PageSheet3: TPageSheet;
    RxLabel41: TRxLabel;
    suiDBEdit23: TDBEdit;
    RxLabel52: TRxLabel;
    DBEdit6: TDBEdit;
    RxLabel43: TRxLabel;
    suiDBEdit27: TDBEdit;
    RxLabel54: TRxLabel;
    DBEdit8: TDBEdit;
    RxLabel42: TRxLabel;
    suiDBEdit24: TDBEdit;
    RxLabel62: TRxLabel;
    DBEdit14: TDBEdit;
    RxLabel53: TRxLabel;
    DBEdit7: TDBEdit;
    RxLabel44: TRxLabel;
    suiDBEdit28: TDBEdit;
    RxLabel56: TRxLabel;
    DBEdit10: TDBEdit;
    RxLabel63: TRxLabel;
    DBEdit15: TDBEdit;
    suiDBEdit26: TDBEdit;
    suiDBEdit25: TDBEdit;
    suiDBEdit16: TDBEdit;
    suiDBEdit13: TDBEdit;
    RxLabel61: TRxLabel;
    RxLabel60: TRxLabel;
    RxLabel59: TRxLabel;
    RxLabel58: TRxLabel;
    RxLabel39: TRxLabel;
    RxLabel38: TRxLabel;
    RxLabel37: TRxLabel;
    RxLabel26: TRxLabel;
    RxLabel25: TRxLabel;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBDateEdit4: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBMemo2: TDBMemo;
    RxLabel13: TRxLabel;
    QUERY: TFDQuery;
    qrvenda: TFDQuery;
    qrproduto: TFDQuery;
    qrcontasreceber: TFDQuery;
    qrcontasreceberpg: TFDQuery;
    qrvenda_mes: TFDQuery;
    qrcontasreceberpgCODIGO: TIntegerField;
    qrcontasreceberpgCODIGO_CLIENTE: TIntegerField;
    qrcontasreceberpgDATA_COMPRA: TDateField;
    qrcontasreceberpgDATA_VENCIMENTO: TDateField;
    qrcontasreceberpgDATA_BAIXA: TDateField;
    qrcontasreceberpgHISTORICO: TIBStringField;
    qrcontasreceberpgUSUARIO_VENDA: TIBStringField;
    qrcontasreceberpgUSUARIO_BAIXA: TIBStringField;
    qrcontasreceberpgSITUACAO: TIBStringField;
    qrcontasreceberpgVALOR_COMPRA: TIBBCDField;
    qrcontasreceberpgVALOR_JUROS: TIBBCDField;
    qrcontasreceberpgVALOR_ACRESCIMO: TIBBCDField;
    qrcontasreceberpgVALOR_DESCONTO: TIBBCDField;
    qrcontasreceberpgVALOR_PAGAR: TIBBCDField;
    qrcontasreceberpgVALOR_PAGO: TIBBCDField;
    qrcontasreceberpgVALOR_TOTAL: TIBBCDField;
    qrcontasreceberpgCODIGO_COMPRA: TIntegerField;
    qrcontasreceberpgPARCELA: TIBStringField;
    qrcontasreceberpgNUMBOLETO: TIBStringField;
    qrcontasreceberpgBANCO_PORTADOR: TIntegerField;
    qrcontasreceberpgREMESSA: TIBStringField;
    qrcontasreceberpgDATACREDITO: TDateField;
    qrcontasreceberpgID_PORTADOR: TIntegerField;
    qrcontasreceberpgENVIADO: TIBStringField;
    qrcontasreceberpgCOD_EMPRESA: TIntegerField;
    qrcontasreceberpgNUMBOLETO1: TIntegerField;
    qrcontasreceberpgCODIGOCEDENTE: TIBStringField;
    qrcontasreceberpgTIPO: TIBStringField;
    qrcontasreceberpgCHEK_BOX: TIBStringField;
    qrcontasreceberpgNUM_NOTA: TIntegerField;
    qrcontasreceberpgSERIE_NOTA: TIBStringField;
    qrcontasreceberpgNOME_SACADO: TIBStringField;
    qrcontasreceberpgANO: TIBStringField;
    qrcontasreceberpgMES: TIBStringField;
    qrcontasreceberpgTP_BAIXA: TIBStringField;
    qrcontasreceberpgID_CONTRATO: TIntegerField;
    qrcontasreceberpgNOME_ARQ: TIBStringField;
    qrcontasreceberpgCOBRADOR: TIntegerField;
    qrcontasreceberpgCOMISSAO: TIBBCDField;
    qrcontasreceberpgDT_PREVISAO_PGTO: TDateField;
    qrcontasreceberpgDIAS_VENCIDO: TIntegerField;
    qrcontasreceberpgN_OS: TIBStringField;
    qrcontasreceberpgVLR_GRAFICA: TIBBCDField;
    qrcontasreceberpgVALOR_COMISAO: TIBBCDField;
    qrcontasreceberCODIGO: TIntegerField;
    qrcontasreceberCODIGO_CLIENTE: TIntegerField;
    qrcontasreceberDATA_COMPRA: TDateField;
    qrcontasreceberDATA_VENCIMENTO: TDateField;
    qrcontasreceberDATA_BAIXA: TDateField;
    qrcontasreceberHISTORICO: TIBStringField;
    qrcontasreceberUSUARIO_VENDA: TIBStringField;
    qrcontasreceberUSUARIO_BAIXA: TIBStringField;
    qrcontasreceberSITUACAO: TIBStringField;
    qrcontasreceberVALOR_COMPRA: TIBBCDField;
    qrcontasreceberVALOR_JUROS: TIBBCDField;
    qrcontasreceberVALOR_ACRESCIMO: TIBBCDField;
    qrcontasreceberVALOR_DESCONTO: TIBBCDField;
    qrcontasreceberVALOR_PAGAR: TIBBCDField;
    qrcontasreceberVALOR_PAGO: TIBBCDField;
    qrcontasreceberVALOR_TOTAL: TIBBCDField;
    qrcontasreceberCODIGO_COMPRA: TIntegerField;
    qrcontasreceberPARCELA: TIBStringField;
    qrcontasreceberNUMBOLETO: TIBStringField;
    qrcontasreceberBANCO_PORTADOR: TIntegerField;
    qrcontasreceberREMESSA: TIBStringField;
    qrcontasreceberDATACREDITO: TDateField;
    qrcontasreceberID_PORTADOR: TIntegerField;
    qrcontasreceberENVIADO: TIBStringField;
    qrcontasreceberCOD_EMPRESA: TIntegerField;
    qrcontasreceberNUMBOLETO1: TIntegerField;
    qrcontasreceberCODIGOCEDENTE: TIBStringField;
    qrcontasreceberTIPO: TIBStringField;
    qrcontasreceberCHEK_BOX: TIBStringField;
    qrcontasreceberNUM_NOTA: TIntegerField;
    qrcontasreceberSERIE_NOTA: TIBStringField;
    qrcontasreceberNOME_SACADO: TIBStringField;
    qrcontasreceberANO: TIBStringField;
    qrcontasreceberMES: TIBStringField;
    qrcontasreceberTP_BAIXA: TIBStringField;
    qrcontasreceberID_CONTRATO: TIntegerField;
    qrcontasreceberNOME_ARQ: TIBStringField;
    qrcontasreceberCOBRADOR: TIntegerField;
    qrcontasreceberCOMISSAO: TIBBCDField;
    qrcontasreceberDT_PREVISAO_PGTO: TDateField;
    qrcontasreceberDIAS_VENCIDO: TIntegerField;
    qrcontasreceberN_OS: TIBStringField;
    qrcontasreceberVLR_GRAFICA: TIBBCDField;
    qrcontasreceberVALOR_COMISAO: TIBBCDField;
    qrvendaCODIGO: TIntegerField;
    qrvendaVALOR_ITENS: TIBBCDField;
    qrvendaENC_FINANCEIRO: TIBBCDField;
    qrvendaVALOR_DESCONTO: TIBBCDField;
    qrvendaVALOR_TOTAL: TIBBCDField;
    qrvendaVALOR_COMISSAO: TIBBCDField;
    qrvendaUSUARIO: TIBStringField;
    qrvendaDATA_PEDIDO: TDateField;
    qrvendaDATA_ENTREGA: TDateField;
    qrvendaCODIGO_CLIENTE: TIntegerField;
    qrvendaNOME_CLIENTE: TIBStringField;
    qrvendaPAGAMENTO: TIBStringField;
    qrvendaSTATUS: TIBStringField;
    qrvendaSITUACAO: TIBStringField;
    qrvendaUSUARIO_ENTREGA: TIBStringField;
    qrvendaTP: TIBStringField;
    qrvendaOBSERVACOES: TIBStringField;
    qrvendaCOD_VENDEDOR: TIntegerField;
    qrvendaCOD_PAGTO: TIntegerField;
    qrvendaN_CUPOM: TIBStringField;
    qrvendaN_ECF: TIBStringField;
    qrvendaCOD_EMPRESA: TIntegerField;
    qrvendaHORA: TTimeField;
    qrvendaVALOR_ACRESCIMOS: TIBBCDField;
    qrvendaCOD_ORCAMENTO: TIntegerField;
    qrvendaCOD_PEDIDO: TIntegerField;
    qrvendaCOD_OS: TSmallintField;
    qrvendaNUM_NOTA: TIntegerField;
    qrvendaSERIE_NOTA: TIBStringField;
    qrvendaENDERECO: TIBStringField;
    qrvendaCPF_CNPJ: TIBStringField;
    qrvendaRG_IE: TIBStringField;
    qrvendaFONE: TIBStringField;
    qrvendaCIDADE: TIBStringField;
    qrvendaBAIRRO: TIBStringField;
    qrvendaN_PARTIDA: TIBStringField;
    qrvendaPROPRIEDADE: TIBStringField;
    qrvendaQUANT_VENDIDA: TIBBCDField;
    qrvendaSALDO_VENDIDO: TIBBCDField;
    qrvendaMED_VETERINARIO: TIBStringField;
    qrvendaDATA_VACINA: TDateField;
    qrvendaVALOR_AVISTA: TIBBCDField;
    qrvendaVALOR_PRAZO: TIBBCDField;
    qrvendaUF: TIBStringField;
    qrvendaCOD_IBGE: TIBStringField;
    qrvendaCEP: TIBStringField;
    qrvendaNUMERO: TIBStringField;
    qrvendaTIPO: TIBStringField;
    qrvendaVALOR_PAGO: TIBBCDField;
    qrvendaVALOR_TROCO: TIBBCDField;
    qrvendaENTREGADOR: TIBStringField;
    qrvendaTIPO_PEDIDO: TIBStringField;
    qrvendaFECHADO: TIBStringField;
    qrvendaMESA: TIBStringField;
    qrvendaREFERENCIA: TIBStringField;
    qrvendaCELULAR: TIBStringField;
    qrvendaPROD_RURAL: TIBStringField;
    qrvendaIE_PRODUTOR: TIBStringField;
    qrvendaVLR_PIS: TIBBCDField;
    qrvendaVLR_COFINS: TIBBCDField;
    qrvendaKM: TIntegerField;
    qrvendaCHAVE_FP: TIBStringField;
    qrvendaCHAVE_FP_CANCEL: TIBStringField;
    qrvendaCUPON_CANCELADO: TIBStringField;
    qrvendaCRZ: TIntegerField;
    QUERYTOTAL_GERAL: TIBBCDField;
    dsvenda: TDataSource;
    dsvenda_mes: TDataSource;
    dsreceberpg: TDataSource;
    dsproduto: TDataSource;
    dsreceber: TDataSource;
    ViewSplit1: TViewSplit;
    PPGTO: TFlatPanel;
    HeaderView4: THeaderView;
    SpeedButton1: TSpeedButton;
    FlatPanel1: TFlatPanel;
    Memo1: TMemo;
    HeaderView2: THeaderView;
    wwDBGrid3: TDBGrid;
    GroupBox4: TGroupBox;
    PageView2: TPageView;
    PageSheet4: TPageSheet;
    Label6: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    wwDBGrid4: TDBGrid;
    rvalor: TRxCalcEdit;
    rjuro: TRxCalcEdit;
    rtotal: TRxCalcEdit;
    PageSheet5: TPageSheet;
    Label9: TLabel;
    wwDBGrid5: TDBGrid;
    rtotal_pago: TRxCalcEdit;
    FlatPanel2: TFlatPanel;
    GroupBox3: TGroupBox;
    wwDBGrid2: TDBGrid;
    FlipView1: TFlipView;
    ViewSplit2: TViewSplit;
    Label4: TLabel;
    LTOTAL: TLabel;
    wwDBGrid1: TDBGrid;
    qrpgto: TFDQuery;
    DTS_cliente: TDataSource;
    PFICHA4: TPanel;
    Pficha5: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBCheckBox1: TDBCheckBox;
    PageSheet6: TPageSheet;
    DBEdit38: TDBEdit;
    Label18: TLabel;
    Label5: TLabel;
    edata_cadastro: TDBDateEdit;
    Label1: TLabel;
    DBEdit39: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    DBComboBox1: TDBComboBox;
    Label21: TLabel;
    Label2: TLabel;
    DBDateEdit6: TDBDateEdit;
    cds_clienteTESTA_CREDITO: TStringField;
    cds_clienteTESTA_LIMITE: TStringField;
    Qry_clienteRG_IE: TStringField;
    Qry_clienteCOD_CONV: TIntegerField;
    Qry_clienteFOTO: TStringField;
    Qry_clienteDATA_ULTIMA_COMPRA: TDateField;
    Qry_clienteFUNC_SALARIO: TFMTBCDField;
    Qry_clienteFUNC_DATA_ADMISSAO: TDateField;
    Qry_clienteFUNC_SITUACAO: TStringField;
    Qry_clienteFUNC_DEMISSAO: TDateField;
    Qry_clienteFUNC_CARGO: TStringField;
    qrvenda_mesSUM_0: TIBBCDField;
    qrvenda_mesSUM: TIBBCDField;
    qrprodutoCODIGO_CLIENTE: TIntegerField;
    qrprodutoCODIGO: TIntegerField;
    qrprodutoCODIGO_ID: TIntegerField;
    qrprodutoITEN: TIntegerField;
    qrprodutoCODIGO_PROD: TIntegerField;
    qrprodutoCODIGO_PRODUTO: TIBStringField;
    qrprodutoDESCRICAO_PRODUTO: TIBStringField;
    qrprodutoUNIDADE: TIBStringField;
    qrprodutoSIT_TRIBUTARIA: TIBStringField;
    qrprodutoVENDEDOR: TIntegerField;
    qrprodutoFRACAO: TIntegerField;
    qrprodutoCOD_NCM: TIBStringField;
    qrprodutoPROD_SERV: TIBStringField;
    dbfirst: TDBAdvGlowButton;
    dbprior: TDBAdvGlowButton;
    dbnext: TDBAdvGlowButton;
    dblast: TDBAdvGlowButton;
    btnNovo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnexcluir: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnLocalizar: TAdvGlowButton;
    Panel4: TPanel;
    RxLabel22: TRxLabel;
    DBEdit40: TDBEdit;
    Label12: TLabel;
    DBEdit41: TDBEdit;
    qrvenda_mesSUM_1: TBCDField;
    qrvenda_mesSUM_2: TBCDField;
    qrvenda_mesSUM_3: TBCDField;
    qrvenda_mesSUM_4: TBCDField;
    qrvenda_mesSUM_5: TBCDField;
    qrvenda_mesSUM_6: TBCDField;
    qrvenda_mesSUM_7: TBCDField;
    qrvenda_mesSUM_8: TBCDField;
    qrvenda_mesSUM_9: TBCDField;
    qrvenda_mesSUM_10: TBCDField;
    qrprodutoDESCONTO: TBCDField;
    qrprodutoQUANTIDADE: TBCDField;
    qrprodutoPRECO_TOTAL: TBCDField;
    qrprodutoCOMISSAO: TBCDField;
    qrprodutoDEV: TStringField;
    qrprodutoQNT_DEV: TBCDField;
    qrprodutoVAL_DEV: TBCDField;
    qrprodutoENC_FINANCEIRO: TBCDField;
    qrprodutoPERC_ISS: TBCDField;
    qrprodutoBASE_ISS: TBCDField;
    qrprodutoVL_ISS: TBCDField;
    qrprodutoPERC_ICM: TBCDField;
    qrprodutoBASE_ICMS: TBCDField;
    qrprodutoVL_ICM: TBCDField;
    qrprodutoPERC_IPI: TBCDField;
    qrprodutoBASE_IPI: TBCDField;
    qrprodutoVL_IPI: TBCDField;
    qrprodutoPERC_COFINS: TBCDField;
    qrprodutoBASE_COFINS: TBCDField;
    qrprodutoVL_COFINS: TBCDField;
    qrprodutoPERC_ICMS_SUBST: TBCDField;
    qrprodutoBASE_ICMS_SUBST: TBCDField;
    qrprodutoVL_ICMS_SUBST: TBCDField;
    qrprodutoPERC_PIS: TBCDField;
    qrprodutoBASE_PIS: TBCDField;
    qrprodutoVL_PIS: TBCDField;
    qrprodutoIMPRIME: TStringField;
    qrprodutoCOD_EMPRESA: TIntegerField;
    qrprodutoID_BICO: TIntegerField;
    qrprodutoID_TANQUE: TStringField;
    qrprodutoID_BOMBA: TStringField;
    qrprodutoBICO: TStringField;
    qrprodutoPRECO_UNITARIO: TFloatField;
    Panel6: TPanel;
    Bevel1: TBevel;
    DBImage1: TDBImage;
    suiButton1: TAdvGlowButton;
    suiButton2: TAdvGlowButton;
    TabSheet2: TRzTabSheet;
    Panel7: TPanel;
    FDvGlowButton2: TAdvGlowButton;
    FDvGlowButton3: TAdvGlowButton;
    pgcProfissao: TPageSheet;
    gridProfissao: TDBGrid;
    Panel8: TPanel;
    qrClientes_Profissao: TFDQuery;
    dsProfissao: TDataSource;
    qrClientes_ProfissaoID: TIntegerField;
    qrClientes_ProfissaoID_CLIENTES: TIntegerField;
    qrClientes_ProfissaoPROFISSAO_OCUPACAO: TStringField;
    qrClientes_ProfissaoNATUREZA_OCUPACAO: TStringField;
    qrClientes_ProfissaoNIVEL_CARGO: TStringField;
    qrClientes_ProfissaoDESCRICAO_CARGO: TStringField;
    qrClientes_ProfissaoEMPRESA_EMPREGADOR: TStringField;
    qrClientes_ProfissaoTIPO: TStringField;
    qrClientes_ProfissaoCPF_CNPJ: TStringField;
    qrClientes_ProfissaoCIDADE: TStringField;
    qrClientes_ProfissaoDATA_INICIO: TDateField;
    qrClientes_ProfissaoRENDA_BRUTA: TBCDField;
    qrClientes_ProfissaoGASTOS_VEICULO: TBCDField;
    qrClientes_ProfissaoOUTROS_GASTOS: TBCDField;
    btnIncluiProfissao: TAdvGlowButton;
    btnAlterarProfissao: TAdvGlowButton;
    btnExcluirProfissao: TAdvGlowButton;
    pgReferencia: TPageSheet;
    pgContato: TPageSheet;
    gridReferencia: TDBGrid;
    Panel9: TPanel;
    btnIncluirReferencia: TAdvGlowButton;
    btnAlterarReferencia: TAdvGlowButton;
    btnExcluirReferencia: TAdvGlowButton;
    dsReferencia: TDataSource;
    qrClientes_Referencia: TFDQuery;
    qrClientes_ReferenciaID: TIntegerField;
    qrClientes_ReferenciaID_CLIENTES: TIntegerField;
    qrClientes_ReferenciaNOME: TStringField;
    qrClientes_ReferenciaTELEFONE: TStringField;
    qrClientes_ReferenciaTIPO: TStringField;
    GridContato: TDBGrid;
    Panel12: TPanel;
    btnIncluirContato: TAdvGlowButton;
    dsContato: TDataSource;
    qrClientes_Contato: TFDQuery;
    qrClientes_ContatoID: TIntegerField;
    qrClientes_ContatoID_CLIENTES: TIntegerField;
    qrClientes_ContatoPRODUTO: TStringField;
    qrClientes_ContatoCONTATO_FINALIZADO: TStringField;
    qrClientes_ContatoCONTATO_PREJUDICADO: TStringField;
    qrClientes_ContatoTELEFONE_UTILIZADO: TStringField;
    gridDocumento: TDBGrid;
    dsDocumento: TDataSource;
    qrClientes_Document: TFDQuery;
    qrClientes_DocumentID: TIntegerField;
    qrClientes_DocumentID_CLIENTES: TIntegerField;
    qrClientes_DocumentDESCRICAO: TStringField;
    qrClientes_DocumentSITUACAO: TStringField;
    qrClientes_DocumentDOCUMENTO: TBlobField;
    img25: TImageList;
    FDQuery1: TFDQuery;
    RxLabel27: TRxLabel;
    frxReport: TfrxReport;
    qrRel: TfrxDBDataset;
    qrFichaCli: TFDQuery;
    qrFichaCliCLIENTE: TStringField;
    qrFichaCliCLIENTE_ENDERECO: TStringField;
    qrFichaCliCLIENTE_CPF_CNPJ: TStringField;
    qrFichaCliCLIENTE_RG_IE: TStringField;
    qrFichaCliCLIENTE_DATA_RG: TDateField;
    qrFichaCliCLIENTE_ORGAO: TStringField;
    qrFichaCliCLIENTE_NASC: TDateField;
    qrFichaCliCLIENTE_TELEFONE: TStringField;
    qrFichaCliCLIENTE_CELULAR: TStringField;
    qrFichaCliCLIENTE_FAX: TStringField;
    qrFichaCliCLIENTE_SEXO: TStringField;
    qrFichaCliCLIENTE_EMAIL: TStringField;
    qrFichaCliCLIENTE_PONTO_REF: TStringField;
    qrFichaCliCLIENTE_NATURALIDADE: TStringField;
    qrFichaCliCLIENTE_PAI: TStringField;
    qrFichaCliCLIENTE_MAE: TStringField;
    qrFichaCliCONJUGE_NOME: TStringField;
    qrFichaCliCONJUGE_CPF: TStringField;
    qrFichaCliCONJUGE_RG: TStringField;
    qrFichaCliCONJUGE_TRABALHO: TStringField;
    qrFichaCliCONJUGE_ADMISSAO: TDateField;
    qrFichaCliCONJUGE_PROFISSAO: TStringField;
    qrFichaCliCONJUGE_RENDA: TBCDField;
    qrFichaCliCONJUGE_FONE: TStringField;
    qrFichaCliAUTORIZADO01: TStringField;
    qrFichaCliAUTORIZADO02: TStringField;
    qrFichaCliAUTORIZADO03: TStringField;
    qrFichaCliAUT01: TStringField;
    qrFichaCliAUT02: TStringField;
    qrFichaCliAUT03: TStringField;
    qrFichaProfissao: TFDQuery;
    dsFichaCliente: TDataSource;
    qrFichaProfissaoPROFISSAO: TStringField;
    qrFichaProfissaoNATUREZA: TStringField;
    qrFichaProfissaoNIVEL: TStringField;
    qrFichaProfissaoEMPREGADOR: TStringField;
    qrFichaProfissaoCNPJ: TStringField;
    qrFichaProfissaoCIDADE: TStringField;
    qrFichaProfissaoDATA_INICIO: TDateField;
    qrFichaProfissaoRENDA_BRUTA: TBCDField;
    qrFichaCliCODIGO: TIntegerField;
    qrRelDetalheProf: TfrxDBDataset;
    qrFichaProfissaoID_CLIENTES: TIntegerField;
    qrFichaReferencia: TFDQuery;
    qrRelReferencia: TfrxDBDataset;
    qrFichaReferenciaID_CLIENTES: TIntegerField;
    qrFichaReferenciaNOME: TStringField;
    qrFichaReferenciaTELEFONE: TStringField;
    qrFichaReferenciaTIPO: TStringField;
    qrFichaCliLOGO: TBlobField;
    qrFichaContato: TFDQuery;
    qrRelContato: TfrxDBDataset;
    qrFichaContatoID: TIntegerField;
    qrFichaContatoID_CLIENTES: TIntegerField;
    qrFichaContatoPRODUTO: TStringField;
    qrFichaContatoCONTATO_FINALIZADO: TStringField;
    qrFichaContatoCONTATO_PREJUDICADO: TStringField;
    qrFichaContatoTELEFONE_UTILIZADO: TStringField;
    edtIEFisica: TDBEdit;
    lblIEFisica: TRxLabel;
    procedure CorAberto;
    procedure CorFechado;
    procedure HabilitaFisico;
    procedure DesabilitaFisico;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure db_nomeEnter(Sender: TObject);
    procedure db_nomeExit(Sender: TObject);
    procedure suiDBEdit2Enter(Sender: TObject);
    procedure suiDBEdit2Exit(Sender: TObject);
    procedure suiDBEdit3Enter(Sender: TObject);
    procedure suiDBEdit3Exit(Sender: TObject);
    procedure suiDBComboBox1Enter(Sender: TObject);
    procedure suiDBComboBox1Exit(Sender: TObject);
    procedure suiDBComboBox2Enter(Sender: TObject);
    procedure suiDBComboBox2Exit(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure suiDBComboBox3Enter(Sender: TObject);
    procedure suiDBComboBox3Exit(Sender: TObject);
    procedure suiDBEdit4Exit(Sender: TObject);
    procedure suiDBEdit4Enter(Sender: TObject);
    procedure suiDBEdit5Enter(Sender: TObject);
    procedure suiDBEdit5Exit(Sender: TObject);
    procedure suiDBEdit6Enter(Sender: TObject);
    procedure suiDBEdit6Exit(Sender: TObject);
    procedure suiDBEdit7Exit(Sender: TObject);
    procedure suiDBEdit7Enter(Sender: TObject);
    procedure suiDBEdit8Enter(Sender: TObject);
    procedure suiDBEdit8Exit(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure suiDBEdit9Enter(Sender: TObject);
    procedure suiDBEdit9Exit(Sender: TObject);
    procedure suiDBEdit10Enter(Sender: TObject);
    procedure suiDBEdit10Exit(Sender: TObject);
    procedure suiDBEdit11Enter(Sender: TObject);
    procedure suiDBEdit11Exit(Sender: TObject);
    procedure suiDBEdit12Enter(Sender: TObject);
    procedure suiDBEdit12Exit(Sender: TObject);
    procedure suiDBMemo1Enter(Sender: TObject);
    procedure suiDBMemo1Exit(Sender: TObject);
    procedure PageControl1Exit(Sender: TObject);
    procedure DBImage1Enter(Sender: TObject);
    procedure DBImage1Exit(Sender: TObject);
    procedure suiDBEdit14Enter(Sender: TObject);
    procedure suiDBEdit14Exit(Sender: TObject);
    procedure suiDBEdit15Enter(Sender: TObject);
    procedure suiDBEdit15Exit(Sender: TObject);
    procedure suiDBEdit13Enter(Sender: TObject);
    procedure suiDBEdit13Exit(Sender: TObject);
    procedure suiDBEdit16Enter(Sender: TObject);
    procedure suiDBEdit16Exit(Sender: TObject);
    procedure DBDateEdit2Enter(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure suiDBEdit25Enter(Sender: TObject);
    procedure suiDBEdit25Exit(Sender: TObject);
    procedure suiDBEdit26Enter(Sender: TObject);
    procedure suiDBEdit26Exit(Sender: TObject);
    procedure suiDBEdit17Enter(Sender: TObject);
    procedure suiDBEdit17Exit(Sender: TObject);
    procedure suiDBEdit18Enter(Sender: TObject);
    procedure suiDBEdit18Exit(Sender: TObject);
    procedure suiDBEdit19Enter(Sender: TObject);
    procedure suiDBEdit19Exit(Sender: TObject);
    procedure suiDBEdit20Enter(Sender: TObject);
    procedure suiDBEdit20Exit(Sender: TObject);
    procedure suiDBEdit30Enter(Sender: TObject);
    procedure suiDBEdit30Exit(Sender: TObject);
    procedure suiDBMemo3Enter(Sender: TObject);
    procedure suiDBMemo3Exit(Sender: TObject);
    procedure suiDBLookupComboBox1Enter(Sender: TObject);
    procedure suiDBLookupComboBox1Exit(Sender: TObject);
    procedure suiDBLookupComboBox2Enter(Sender: TObject);
    procedure suiDBMemo2Enter(Sender: TObject);
    procedure suiDBMemo2Exit(Sender: TObject);
    procedure suiDBEdit23Enter(Sender: TObject);
    procedure suiDBEdit23Exit(Sender: TObject);
    procedure suiDBEdit24Enter(Sender: TObject);
    procedure suiDBEdit24Exit(Sender: TObject);
    procedure suiDBEdit27Enter(Sender: TObject);
    procedure suiDBEdit27Exit(Sender: TObject);
    procedure suiDBEdit28Enter(Sender: TObject);
    procedure suiDBEdit28Exit(Sender: TObject);
    procedure suiDBLookupComboBox3Enter(Sender: TObject);
    procedure suiDBLookupComboBox3Exit(Sender: TObject);
    procedure suiDBEdit29Enter(Sender: TObject);
    procedure suiDBEdit29Exit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure CE(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure btnLocalizarClick(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBEdit1Enter(Sender: TObject);
    procedure suiDBEdit1Exit(Sender: TObject);
    procedure DBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure suiDBComboBox5Enter(Sender: TObject);
    procedure suiDBComboBox5Exit(Sender: TObject);
    procedure suiDBEdit22Enter(Sender: TObject);
    procedure suiDBEdit22Exit(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5ButtonClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure suiDBRadioGroup2Click(Sender: TObject);
    procedure suiDBRadioGroup2Exit(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure MostraErros(Sender: Tobject;
  E: Exception);
    procedure suiDBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_nomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure EdtCodConvenioButtonClick(Sender: TObject);
    procedure EdtCodConvenioExit(Sender: TObject);
    procedure EdtCodConvenioKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodConvenioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid4DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbt_codigoChange(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FDvGlowButton2Click(Sender: TObject);
    procedure FDvGlowButton3Click(Sender: TObject);
    procedure btnIncluiProfissaoClick(Sender: TObject);
    procedure btnAlterarProfissaoClick(Sender: TObject);
    procedure btnExcluirProfissaoClick(Sender: TObject);
    procedure btnIncluirReferenciaClick(Sender: TObject);
    procedure btnAlterarReferenciaClick(Sender: TObject);
    procedure btnExcluirReferenciaClick(Sender: TObject);
    procedure btnIncluirContatoClick(Sender: TObject);
    procedure gridDocumentoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure gridDocumentoCellClick(Column: TColumn);
    procedure RxLabel27Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormClientes: TFormClientes;
  PerExcluir: String;
  INSERINDO : Boolean;

implementation

uses ModulodeDados, Ubibli1, Z_RotinasGerais, Principal, Acesso, ConsClientes,
  DesbloquearCliente, ConsCidades, ConsBairros, FichaCliente, Autorizacao,
  webcam2, UConsConvenio, UDialog, ClientesProfissao, ClientesReferencia,
  ClientesContato, ClientesDocumento, FormConsultaCPF_CNPJ;



{$R *.dfm}

 const
  strErrorCPF='Este não é um número de CPF válido.';

function MessageDlgAde(Msg: string; AType: TMsgDlgType; AButtons:
TMsgDlgButtons;
IndiceHelp: LongInt; DefButton: TMOdalResult; Portugues: Boolean): Word;
var
I: Integer;
Mensagem: TForm;

begin
Mensagem := CreateMessageDialog(Msg, AType, Abuttons);
Mensagem.HelpContext := IndiceHelp;
with Mensagem do
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TButton) then
    begin
      if (TButton(Components[i]).ModalResult = DefButton) then
      begin
        ActiveControl := TWincontrol(Components[i]);
      end;
    end;
  end;
  if Portugues then
  begin
    if Atype = mtConfirmation then
      Caption := 'Confirmação'
    else if AType = mtWarning then
      Caption := 'Aviso'
    else if AType = mtError then
      Caption := 'Erro'
    else if AType = mtInformation then
      Caption := 'Informação';
  end;
end;
if Portugues then
begin
  TButton(Mensagem.FindComponent('YES')).Caption := '&Física';
  TButton(Mensagem.FindComponent('NO')).Caption := '&Jurídica';
  TButton(Mensagem.FindComponent('CANCEL')).Caption := '&Cancelar';
  TButton(Mensagem.FindComponent('ABORT')).Caption := '&Abortar';
  TButton(Mensagem.FindComponent('RETRY')).Caption := '&Repetir';
  TButton(Mensagem.FindComponent('IGNORE')).Caption := '&Ignorar';
  TButton(Mensagem.FindComponent('ALL')).Caption := '&Todos';
  TButton(Mensagem.FindComponent('HELP')).Caption := 'A&juda';
  TButton(Mensagem.FindComponent('YES_P')).Caption := '&Entradas';
  TButton(Mensagem.FindComponent('NO_P')).Caption := '&Saidas';
end;
Result := Mensagem.ShowModal;
Mensagem.Free;
end;

procedure TFormClientes.MostraErros(Sender: Tobject;
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

procedure TFormClientes.CorAberto;
begin
db_nome.Color:= clWindow;
suiDBEdit1.Color:= clWindow;
suiDBEdit2.Color:= clWindow;
suiDBEdit3.Color:= clWindow;
suiDBComboBox3.Color:= clWindow;
suiDBComboBox2.Color:= clWindow;
DBDateEdit1.Color:= clWindow;
suiDBComboBox1.Color:= clWindow;
suiDBEdit4.Color:= clWindow;
DBEdit5.Color:= clWindow;
suiDBEdit8.Color:= clWindow;
suiDBEdit7.Color:= clWindow;
DBEdit3.Color:= clWindow;
suiDBEdit9.Color:= clWindow;
suiDBEdit10.Color:= clWindow;
suiDBEdit12.Color:= clWindow;
DBMemo1.Color:= clWindow;
//DBImage1.Color:= clWindow;
DBEDIT26.Color:= clWindow;
DBEdit27.Color:= clWindow;
DBEDIT25.Color:= clWindow;
suiDBEdit22.Color:= clWindow;
DBMemo3.Color:= clWindow;
suiDBEdit23.Color:= clWindow;
suiDBEdit24.Color:= clWindow;
suiDBEdit27.Color:= clWindow;
suiDBEdit28.Color:= clWindow;
DBMemo2.Color:= clWindow;
suiDBEdit14.Color:= clWindow;
suiDBEdit15.Color:= clWindow;
suiDBEdit13.Color:= clWindow;
suiDBEdit16.Color:= clWindow;
suiDBEdit25.Color:= clWindow;
DBDateEdit2.Color:= clWindow;
suiDBEdit26.Color:= clWindow;
//suiDBEdit17.Color:= clWindow;
//suiDBEdit18.Color:= clWindow;
//suiDBEdit20.Color:= clWindow;
//suiDBEdit30.Color:= clWindow;
dbedit1.Color:= clWindow;
dbedit2.Color:= clWindow;
DBDateEdit5.Color:= clWindow;
suiDBEdit11.Color:= clWindow;
DBEdit4.Color:= clwindow;
//DBMemo4.Color:= clWindow;
DBLookupComboBox1.Color := clWindow;
DBEdit30.Color :=clWindow;
DBEdit28.Color :=clWindow;
DBEdit29.Color :=clWindow;

DBEdit16.Color:= clwindow;
DBEdit17.Color:= clwindow;
DBEdit18.Color:= clwindow;
DBEdit19.Color:= clwindow;
DBEdit20.Color:= clwindow;
DBEdit21.Color:= clwindow;
DBEdit23.Color:= clwindow;
DBEdit24.Color:= clwindow;
DBEdit22.Color:= clwindow;
RxDBComboEdit1.Color := clWindow;
DBEdit6.Color:= clwindow;
DBEdit7.Color:= clwindow;
DBEdit8.Color:= clwindow;
DBEdit9.Color:= clwindow;
DBEdit10.Color:= clwindow;
DBEdit11.Color:= clwindow;
DBEdit12.Color:= clwindow;
DBEdit13.Color:= clwindow;
DBEdit14.Color:= clwindow;
DBEdit15.Color:= clwindow;
SUIDBEdit23.Color:= clwindow;
SUIDBEdit24.Color:= clwindow;
SUIDBEdit27.Color:= clwindow;
SUIDBEdit28.Color:= clwindow;
DBDateEdit2.Color:= clwindow;

DBEdit31.Color:= clwindow;
DBEdit32.Color:= clwindow;
DBEdit33.Color:= clwindow;
DBEdit34.Color:= clwindow;
DBEdit35.Color:= clwindow;
DBEdit36.Color:= clwindow;
wwDBComboBox1.Color:= clwindow;
RLIMITE.Color:= clwindow;
DBDateEdit3.Color:= clwindow;
DBEdit40.Color := clwindow;
end;

procedure TFormClientes.CorFechado;
begin
db_nome.Color:= $00E8E8E8;
suiDBEdit1.Color:= $00E8E8E8;
suiDBEdit2.Color:= $00E8E8E8;
suiDBEdit3.Color:= $00E8E8E8;
suiDBComboBox3.Color:= $00E8E8E8;
suiDBComboBox2.Color:= $00E8E8E8;
DBDateEdit1.Color:= $00E8E8E8;
suiDBComboBox1.Color:= $00E8E8E8;
suiDBEdit4.Color:= $00E8E8E8;
DBEdit5.Color:= $00E8E8E8;
suiDBEdit8.Color:= $00E8E8E8;
suiDBEdit7.Color:= $00E8E8E8;
DBEdit3.Color:= $00E8E8E8;
suiDBEdit9.Color:= $00E8E8E8;
suiDBEdit10.Color:= $00E8E8E8;
suiDBEdit12.Color:= $00E8E8E8;
DBMemo1.Color:= $00E8E8E8;
//DBImage1.Color:= $00E8E8E8;
DBEDIT26.Color:= $00E8E8E8;
DBEDIT25.Color:= $00E8E8E8;
DBEDIT27.Color:= $00E8E8E8;
suiDBEdit22.Color:= $00E8E8E8;
DBMemo3.Color:= $00E8E8E8;
suiDBEdit23.Color:= $00E8E8E8;
suiDBEdit24.Color:= $00E8E8E8;
suiDBEdit27.Color:= $00E8E8E8;
suiDBEdit28.Color:= $00E8E8E8;
DBMemo2.Color:= $00E8E8E8;
suiDBEdit14.Color:= $00E8E8E8;
suiDBEdit15.Color:= $00E8E8E8;
suiDBEdit13.Color:= $00E8E8E8;
suiDBEdit16.Color:= $00E8E8E8;
suiDBEdit25.Color:= $00E8E8E8;
DBDateEdit2.Color:= $00E8E8E8;
suiDBEdit26.Color:= $00E8E8E8;
//suiDBEdit17.Color:= $00E8E8E8;
//suiDBEdit18.Color:= $00E8E8E8;
//suiDBEdit20.Color:= $00E8E8E8;
//suiDBEdit30.Color:= $00E8E8E8;
dbedit1.Color:= $00E8E8E8;
dbedit2.Color:= $00E8E8E8;
DBDateEdit5.Color:= $00E8E8E8;
suiDBEdit11.Color:= $00E8E8E8;
DBEdit4.Color:= $00E8E8E8;
//DBMemo4.Color:= $00E8E8E8;
DBLookupComboBox1.Color := $00E8E8E8;
DBEdit16.Color:= $00E8E8E8;
DBEdit17.Color:= $00E8E8E8;
DBEdit18.Color:= $00E8E8E8;
DBEdit19.Color:= $00E8E8E8;
DBEdit20.Color:= $00E8E8E8;
DBEdit21.Color:= $00E8E8E8;
DBEdit23.Color:= $00E8E8E8;
DBEdit24.Color:= $00E8E8E8;
DBEdit22.Color:= $00E8E8E8;
RxDBComboEdit1.Color := $00E8E8E8;
DBEdit6.Color:= $00E8E8E8;
DBEdit7.Color:= $00E8E8E8;
DBEdit8.Color:= $00E8E8E8;
DBEdit9.Color:= $00E8E8E8;
DBEdit10.Color:= $00E8E8E8;
DBEdit11.Color:= $00E8E8E8;
DBEdit12.Color:= $00E8E8E8;
DBEdit13.Color:= $00E8E8E8;
DBEdit14.Color:= $00E8E8E8;
DBEdit15.Color:= $00E8E8E8;
SUIDBEdit23.Color:= $00E8E8E8;
SUIDBEdit24.Color:= $00E8E8E8;
SUIDBEdit27.Color:= $00E8E8E8;
SUIDBEdit28.Color:= $00E8E8E8;
DBDateEdit2.Color:= $00E8E8E8;
DBEdit30.Color :=$00E8E8E8;
DBEdit28.Color := $00E8E8E8;
DBEdit29.Color := $00E8E8E8;

DBEdit31.Color:= $00E8E8E8;
DBEdit32.Color:= $00E8E8E8;
DBEdit33.Color:= $00E8E8E8;
DBEdit34.Color:= $00E8E8E8;
DBEdit35.Color:= $00E8E8E8;
DBEdit36.Color:= $00E8E8E8;
wwDBComboBox1.Color:= $00E8E8E8;
RLIMITE.Color:= $00E8E8E8;
DBDateEdit3.Color:= $00E8E8E8;
DBEdit40.Color := $00E8E8E8;
end;


procedure TFormClientes.DesabilitaFisico;
begin
lblIEFisica.Visible:= False;
edtIEFisica.Visible:= False;
edtIEFisica.Color:= $00E8E8E8;
suiDBEdit14.Enabled:= False;
suiDBEdit14.Color:= $00E8E8E8;
suiDBEdit15.Enabled:= False;
suiDBEdit15.Color:= $00E8E8E8;
suiDBEdit13.Enabled:= False;
suiDBEdit13.Color:= $00E8E8E8;
suiDBEdit16.Enabled:= False;
suiDBEdit16.Color:= $00E8E8E8;
suiDBEdit25.Enabled:= False;
suiDBEdit25.Color:= $00E8E8E8;
DBDateEdit2.Enabled:= False;
DBDateEdit2.Color:= $00E8E8E8;
suiDBEdit26.Enabled:= False;
suiDBEdit26.Color:= $00E8E8E8;
//suiDBEdit17.Enabled:= False;
//suiDBEdit17.Color:= $00E8E8E8;
//suiDBEdit18.Enabled:= False;
//suiDBEdit18.Color:= $00E8E8E8;
//suiDBEdit20.Enabled:= False;
//suiDBEdit20.Color:= $00E8E8E8;
//suiDBEdit30.Enabled:= False;
//suiDBEdit30.Color:= $00E8E8E8;
//DBMemo4.Enabled:= False;
//DBMemo4.Color:= $00E8E8E8;

DBEdit11.Enabled:= False;
DBEdit11.Color:= $00E8E8E8;
DBEdit12.Enabled:= False;
DBEdit12.Color:= $00E8E8E8;
DBEdit13.Enabled := False;
DBEdit13.Color:= $00E8E8E8;

RxLabel4.Caption:= 'Razão Social:';
RxLabel2.Caption:= 'Fantasia';
RxLabel5.Caption:= 'CNPJ:';
RxLabel6.Caption:= 'I.E.:';
RxLabel11.Caption:= 'Sede:';
RxLabel21.Caption:= 'Data de Inicio das Atividades:';
//RxLabel40.Caption:= 'Logomarca da Empresa';
RxLabel21.Left:= 87;
DBDateEdit1.Top:=130;
DBDateEdit1.Left:= 265;
RxLabel20.Visible:=False;
RxLabel19.Visible:= False;
suiDBComboBox2.Visible:= False;
suiDBComboBox1.Visible:= False;
DM.SDS_CliCPF_CNPJ.EditMask:= '99.999.999/9999-99;1;_';
rxlabel32.Visible := false;
dbedit1.Visible := false;
rxlabel49.Visible := false;
rxlabel46.Visible := false;
DBDateEdit5.Visible :=false;
rxlabel48.Visible := false;
dbedit2.Visible := false;
suiDBComboBox1.Visible := false;
DBEdit4.Visible := false;
end;

procedure TFormClientes.HabilitaFisico;
begin
lblIEFisica.Visible:= True;
edtIEFisica.Visible:= True;
suiDBEdit14.Enabled:= True;
suiDBEdit15.Enabled:= True;
suiDBEdit13.Enabled:= True;
suiDBEdit16.Enabled:= True;
suiDBEdit25.Enabled:= True;
DBDateEdit2.Enabled:= True;
suiDBEdit26.Enabled:= True;
//suiDBEdit17.Enabled:= True;
//suiDBEdit18.Enabled:= True;
//suiDBEdit20.Enabled:= True;
//suiDBEdit30.Enabled:= True;
//DBMemo4.Enabled:= True;

DBEdit11.Enabled:= True;
DBEdit12.Enabled:= True;
DBEdit13.enabled:= True;

RxLabel4.Caption:= 'Nome:';
RxLabel2.Caption:= 'Apelido';
RxLabel5.Caption:= 'CPF:';
RxLabel6.Caption:= 'R.G.:';
RxLabel11.Caption:= 'Residência:';
RxLabel21.Caption:= 'Estado Civil:';
//RxLabel40.Caption:= 'Foto do Cliente';
RxLabel21.Left:= 3;
DBDateEdit1.Top:=158;
DBDateEdit1.Left:= 87;
RxLabel20.Visible:=True;
RxLabel19.Visible:= True;
suiDBComboBox2.Visible:= True;
suiDBComboBox1.Visible:= True;
DM.SDS_CliCPF_CNPJ.EditMask:= '999.999.999-99;1;_';
rxlabel32.Visible := true;
dbedit1.Visible := true;
rxlabel49.Visible := true;
rxlabel46.Visible := true;
DBDateEdit5.Visible :=true;
rxlabel48.Visible := true;
dbedit2.Visible := true;
suiDBComboBox1.Visible := true;
DBEdit4.Visible := true;
end;

Procedure TFormClientes.AtualizaManutencao;
begin
dbfirst.Enabled:= (DM.SDS_Cli.State = dsBrowse);
dbprior.Enabled:= (DM.SDS_Cli.State = dsBrowse);
dbnext.Enabled:= (DM.SDS_Cli.State = dsBrowse);
dblast.Enabled:= (DM.SDS_Cli.State = dsBrowse);
BTNNOVO.Enabled:= (DM.SDS_Cli.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Cli.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Cli.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Cli.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Cli.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Cli.State = dsBrowse);
end;


procedure TFormClientes.HabilitaPanel;
begin
Panel5.Enabled:= True;
pficha1.Enabled:= True;
pficha2.Enabled:= True;
pficha3.Enabled:= True;
pficha4.Enabled:= True;
pficha5.Enabled:= True;
Panel2.Enabled:= True;
Panel3.Enabled:= True;
Panel9.Enabled:= True;
Panel7.Enabled:= True;
{suiTabSheet1.Enabled := True;
suiTabSheet2.Enabled := True;
suiTabSheet3.Enabled := True;
suiTabSheet4.Enabled := True;
suiTabSheet5.Enabled := True;}

end;

procedure TFormClientes.DesabilitaPanel;
begin
Panel5.Enabled:= False;
pficha1.Enabled:= False;
pficha2.Enabled:= False;
pficha3.Enabled:= False;
pficha4.Enabled:= False;
pficha5.Enabled:= False;
Panel2.Enabled:= False;
Panel3.Enabled:= False;
Panel9.Enabled:= False;
Panel7.Enabled:= false;
{suiTabSheet1.Enabled := False;
suiTabSheet2.Enabled := False;
suiTabSheet3.Enabled := False;
suiTabSheet4.Enabled := False;
suiTabSheet5.Enabled := False; }
end;

procedure TFormClientes.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormClientes.db_nomeEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormClientes.db_nomeExit(Sender: TObject);
var
  qrEmpresa: TFDQuery;
begin
  CorSaida(Sender);
  if DM.SDS_Cli.State = dsInsert then
  begin
    if db_nome.Text > '' then
    begin
      dm.SDS_CLIentes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_CLIentes.sql.add('select * from clientes where  NOME_RS like ' + #39 + '%' + db_nome.Text + '%' + #39+'ORDER BY codigo');
      DM.SDS_CLIentes.Active := True;

      qrEmpresa:= TFDQuery.Create(nil);
      qrEmpresa.Connection:= DM.Coneccao;
      qrEmpresa.SQL.Add('SELECT CNPJ FROM EMPRESA WHERE CNPJ = ' + QuotedStr('23.585.172/0001-70'));
      qrEmpresa.Open;

      if (DM.SDS_CLIentes.Locate('NOME_RS',db_nome.Text, []) = True) and (qrEmpresa.IsEmpty) then
      BEGIN
        FormPrincipal.MsgInformacao.HTMLText.text:= 'Já existe um cliente cadastrado com este Nome/Razão Social!!!';
        FormPrincipal.MsgInformacao.Execute;
        db_nome.Clear;
        db_nome.SetFocus;
      end;

      qrEmpresa.Destroy;
    end;
  end;
end;

procedure TFormClientes.suiDBEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit2Exit(Sender: TObject);
begin
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBComboBox2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBComboBox2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.DBDateEdit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.DBDateEdit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBComboBox3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBComboBox3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit4Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
     
end;

procedure TFormClientes.suiDBEdit4Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit5Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit5Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit6Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit6Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
     DM.SDS_CliBairro.Text := DM.sds_bairrosDESCRICAO.Text;
end;

procedure TFormClientes.suiDBEdit7Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit7Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit8Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit8Exit(Sender: TObject);
begin
     CorSaida(Sender);

if suiDBEdit8.Text > '' then
 if DM.Sds_cidades.Locate('NOME',suiDBEdit8.Text,[loCaseInsensitive]) then
 begin
 DM.SDS_CliCOD_CIDADE.Text := DM.Sds_cidadesCOD_CIDADE.Text;
DM.SDS_CliUF.Text := DM.Sds_cidadesUF.Value;
DM.SDS_CliCEP.Text := DM.Sds_cidadesCEP.value;
DM.SDS_CliCOD_IBGE.Text := DM.Sds_cidadesCOD_IBGE.Text;
     suiDBEdit4.SetFocus;
end else

if not DM.Sds_cidades.Locate('NOME',suiDBEdit8.Text,[loCaseInsensitive]) then
 if FormConsCidades=nil   then
    begin
    FormConscidades:=TFormConscidades.Create(self);
      FormConscidades.ShowModal;
      end;
DM.SDS_CliCIDADE.Text:= DM.Sds_cidadesNOME.Text;
DM.SDS_CliUF.Text := DM.Sds_cidadesUF.Value;
DM.SDS_CliCEP.Text := DM.Sds_cidadesCEP.value;
DM.SDS_CliCOD_IBGE.Text := DM.Sds_cidadesCOD_IBGE.Text;
 DM.SDS_CliCOD_CIDADE.Text := DM.Sds_cidadesCOD_CIDADE.Text;
     suiDBEdit4.SetFocus;
end;

procedure TFormClientes.DBComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.DBComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit9Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit9Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit10Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit10Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit11Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit11Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit12Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit12Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBMemo1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBMemo1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.PageControl1Exit(Sender: TObject);
begin
Corsaida(Sender)
end;

procedure TFormClientes.DBImage1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.DBImage1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit14Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit14Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit15Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit15Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit13Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit13Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit16Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit16Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.DBDateEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.DBDateEdit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit25Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit25Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit26Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit26Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit17Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit17Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit18Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit18Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit19Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit19Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit20Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit20Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit30Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit30Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBMemo3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBMemo3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBMemo2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBMemo2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit23Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit23Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit24Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit24Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit27Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit27Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit28Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit28Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBLookupComboBox3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit29Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit29Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.btnNovoClick(Sender: TObject);
begin
  if FormPrincipal.Label3.Caption ='N'then
  begin
    FormPrincipal.MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    FormPrincipal.MsgInformacao.Execute;
  End;

  suiButton3.Enabled :=False;

  if FormPrincipal.Label3.Caption ='S'then
  begin

    Try
      inserindo := True;
      If MessageDlgAde('Informe o tipo da Pessoa (Física ou Jurídica).',MtInformation,[MbYes, MbNo],0, mrNo, True)=Mrno Then
      begin
        pc.ActivePage:= TabSheet1;
        CorAberto;
        DesabilitaFisico;
        dm.ProxCod.Close;
        dm.ProxCod.SQL.Clear;
        dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM clientes');
        DM.ProxCod.Open;

        DM.SDS_Cli.Insert;
        DM.SDS_CliCODIGO.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
        DM.SDS_Cli.edit;
        DM.SDS_CliCOD_EMPRESA.Text:= dm.SDS_EmpresaCodigo.text;
        DM.SDS_CliCIDADE.Text := DM.SDS_EmpresaCIDADE.Text;
        DM.SDS_CliUSERCAD.Text:= FormPrincipal.UserLogado;
        DM.SDS_CliDATA_ALTERACAO.Text := DateToStr(Now);
        DM.SDS_CliCREDIARIO.Text:= 'NAO';
        DM.SDS_CliDATACAD.Text:= datetostr(now);
        DM.SDS_CliTIPO.Text:= 'J';
        DM.SDS_CliATIVO.Text:= 'A';
        AtualizaManutencao;
        HabilitaPanel;
        if DM.Sds_cidades.Locate('NOME', suiDBEdit8.Text, []) then;
        DBEdit3.Text := DM.Sds_cidadesUF.Value;
        suiDBEdit7.Text := DM.Sds_cidadesCEP.value;
        DM.SDS_CliCOD_CIDADE.text  := dm.Sds_cidadesCOD_CIDADE.Text;
        db_nome.SetFocus;
      end else
      begin
        pc.ActivePage:= TabSheet1;
        CorAberto;
        HabilitaFisico;
        dm.ProxCod.Close;
        dm.ProxCod.SQL.Clear;
        dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM clientes');
        DM.ProxCod.Open;

        DM.SDS_Cli.Insert;
        DM.SDS_CliCODIGO.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
        DM.SDS_Cli.edit;
        DM.SDS_CliCOD_EMPRESA.Text:= dm.SDS_EmpresaCodigo.text;
        DM.SDS_CliCIDADE.Text := DM.SDS_EmpresaCIDADE.Text;
        DM.SDS_CliUSERCAD.Text:= FormPrincipal.UserLogado;
        DM.SDS_CliDATA_ALTERACAO.Text := DateToStr(Now);
        DM.SDS_CliCREDIARIO.Text:= 'NAO';
        DM.SDS_CliDATACAD.Text:= datetostr(now);
        DM.SDS_CliTIPO.Text:= 'F';
        DM.SDS_CliATIVO.Text:= 'A';
        AtualizaManutencao;
        HabilitaPanel;
        if DM.Sds_cidades.Locate('NOME',sUIDBEdit8.Text,[]) then;
        DBEdit3.Text := DM.Sds_cidadesUF.Value;
        suiDBEdit7.Text := DM.Sds_cidadesCEP.value;
        DM.SDS_CliCOD_CIDADE.text  := dm.Sds_cidadesCOD_CIDADE.Text;
        db_nome.SetFocus;
      end;
      suiDBRadioGroup2.Enabled := False;

      DM.SDS_CliPG_CREDIARIO.Text := 'N';
      DM.SDS_CliPG_CHEQUE.Text := 'N';
      DM.SDS_CliPG_FINANCEIRA.Text := 'N';
      pgcProfissao.Enabled:= True;
      pgContato.Enabled:= True;
      pgReferencia.Enabled:= True;
    Except
      FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um erro! Reinicie o sistema e tente novamente!!!';
      FormPrincipal.MsgErro.Execute;
    end;
  end;
end;

procedure TFormClientes.btnEditarClick(Sender: TObject);
begin
  if FormPrincipal.Label2.Caption ='N'then
  begin
    FormPrincipal.MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    FormPrincipal.MsgInformacao.Execute;
  End;
  suiButton3.Enabled :=False;
  if FormPrincipal.Label2.Caption ='S'then
  begin
    Try
      inserindo := FALSE;
      DM.SDS_Cli.Edit;
      DM.SDS_CliDATA_ALTERACAO.Text := DateToStr(Now);
      AtualizaManutencao;
      HabilitaPanel;
      CorAberto;
      IF DM.SDS_CliTIPO.Value = 'J' THEN
      BEGIN
        DesabilitaFisico;
      end else
      begin
        HabilitaFisico;
      end;
      pc.TabIndex := 0;

      if DM.Sds_cidades.Locate('NOME',sUIDBEdit8.Text,[]) then;
      DBEdit3.Text := DM.Sds_cidadesUF.Value;
      suiDBEdit7.Text := DM.Sds_cidadesCEP.value;
      DM.SDS_CliCOD_CIDADE.text  := dm.Sds_cidadesCOD_CIDADE.Text;

      db_nome.SetFocus;
      pgcProfissao.Enabled:= True;
      pgContato.Enabled:= True;
      pgReferencia.Enabled:= True;
    Except
      FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um erro! Reinicie o sistema e tente novamente!!!';
      FormPrincipal.MsgErro.Execute;
    end;
    suiDBRadioGroup2.Enabled := TRUE;
  end;
end;

procedure TFormClientes.btnSalvarClick(Sender: TObject);
var
  qrSQL: TFDQuery;
  qrEmpresa: TFDQuery;
begin
  if DM.DTS_CLI.DataSet.State = dsInsert then
  begin
    qrSQL:= TFDQuery.Create(nil);
    qrSQL.Connection:= DM.Coneccao;
    qrSQL.SQL.Add('SELECT CPF_CNPJ FROM CLIENTES WHERE CPF_CNPJ = ' + QuotedStr(suiDBEdit2.Text));
    qrSQL.Open;

    qrEmpresa:= TFDQuery.Create(nil);
    qrEmpresa.Connection:= DM.Coneccao;
    qrEmpresa.SQL.Add('SELECT CNPJ FROM EMPRESA WHERE CNPJ = ' + QuotedStr('23.585.172/0001-70'));
    qrEmpresa.Open;

    if not (qrSQL.IsEmpty) and (qrEmpresa.IsEmpty) then
    begin
      Application.MessageBox('CPF/CNPJ já está cadastrado no Sistema!','Atenção',MB_ICONWARNING);
      qrSQL.Destroy;
      qrEmpresa.Destroy;
      Exit;
    end
    else
    begin
      qrSQL.Destroy;
      qrEmpresa.Destroy;
    end;
  end;

  if (suiDBEdit9.Text <> '') and (Length(suiDBEdit9.Text) < 10) then
  begin
    Application.MessageBox('O Campo Telefone não foi preenchido corretamente','Atenção',MB_ICONWARNING);
    Exit;
  end;

  if (suiDBEdit9.Text <> '') and (Length(suiDBEdit11.Text) < 10) then
  begin
    Application.MessageBox('O Campo Celular não foi preenchido corretamente','Atenção',MB_ICONWARNING);
    Exit;
  end;

  if (RxLabel5.Caption = 'CPF:') and (Length(suiDBEdit2.Text) <= 13) then
  begin
    Application.MessageBox('CPF inválido!','Atenção',MB_ICONWARNING);
    suiDBEdit2.SetFocus;
    Exit;
  end;

  if (RxLabel5.Caption = 'CNPJ:') and (Length(suiDBEdit2.Text) <= 17) then
  begin
    Application.MessageBox('CNPJ inválido!','Atenção',MB_ICONWARNING);
    suiDBEdit2.SetFocus;
    Exit;
  end;

  Try
    begin

      DM.SDS_Cli.edit;

      IF wwDBComboBox1.ItemIndex = 0 THEN BEGIN DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString := 'A';END;
      IF wwDBComboBox1.ItemIndex = 1 THEN BEGIN DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString := 'O';END;
      IF wwDBComboBox1.ItemIndex = 2 THEN BEGIN DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString := 'B'; END;
      IF wwDBComboBox1.ItemIndex = 3 THEN BEGIN DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString := 'I';END;
      IF wwDBComboBox1.ItemIndex = 4 THEN BEGIN DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString := 'S';END;

      DM.SDS_Cli.Post;
      DM.SDS_Cli.ApplyUpdates(0);
      AtualizaManutencao;
      DesabilitaPanel;
      CorFechado;
      suiButton3.Enabled :=True;
      IF DM.SDS_CliTIPO.Value = 'J' THEN
      BEGIN
        DesabilitaFisico;
      end else
      begin
        HabilitaFisico;
      end;
    end;

    if inserindo = True then
      formprincipal.log(codigo_usuario,'CLIENTES',DM.SDS_CLICODIGO.Text,'INCLUIU','INCLUSÃO DO CLIENTE Nº '+DM.SDS_CLIcodigo.Text +' Nome: '+ dm.sds_cliNome_rs.text)
    else
      formprincipal.log(codigo_usuario,'CLIENTES',DM.SDS_CLICodigo.Text,'ALTEROU','ALTERAÇÃO DO CLIENTE Nº '+DM.SDS_CLIcodigo.Text +' Nome: '+ dm.sds_cliNome_rs.text);

    suiDBRadioGroup2.Enabled := TRUE;
    pgcProfissao.Enabled:= False;
    pgContato.Enabled:= False;
    pgReferencia.Enabled:= False;

    qrClientes_Profissao.ApplyUpdates(0);

    qrClientes_Contato.ApplyUpdates(0);

    qrClientes_Referencia.ApplyUpdates(0);

    qrClientes_Document.ApplyUpdates(0);
  Except
    on E: EDatabaseError do
    ShowMessage(E.Message);
  end;
end;

procedure TFormClientes.btnCancelarClick(Sender: TObject);
begin
  Try
    DM.SDS_Cli.Cancel;
    DesabilitaPanel;
    CorFechado;
    suiButton3.Enabled :=True;
    If DM.SDS_Cli.RecordCount = 0 then
    begin
      HabilitaNovo;
      HabilitaFisico;
    end else
      AtualizaManutencao;

    IF DM.SDS_CliTIPO.Value = 'J' THEN
    BEGIN
      DesabilitaFisico;
    end else
    begin
      HabilitaFisico;
    end;
      suiDBRadioGroup2.Enabled := TRUE;

    pgcProfissao.Enabled:= False;
    pgContato.Enabled:= False;
    pgReferencia.Enabled:= False;
  Except
    FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um erro! Reinicie o sistema e tente novamente!!!';
    FormPrincipal.MsgErro.Execute;
  end;
end;

procedure TFormClientes.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
{   MsgConfirmacao.Text:= 'Confirma Exclusão do Registro ?';
   MsgConfirmacao.Button1Caption:= 'Sim';
   MsgConfirmacao.Button2Caption:= 'Não';
   IF MsgConfirmacao.ShowModal = mrYes then   }
   if Application.MESSAGEBOX('Confirma Exclusão do Registro ?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then

   begin
Try
 Begin

    formprincipal.log(codigo_usuario,'CLIENTES',DM.SDS_CLICodigo.Text,'EXCLUIU','EXCLUSAO DO CLIENTE Nº '+DM.SDS_CLIcodigo.Text +' Nome: '+ dm.sds_cliNome_rs.text); 

    DM.SDS_Cli.Delete;
    DM.SDS_Cli.ApplyUpdates(0);

    DM.SDS_Cli.Active:= False;
    DM.SDS_Cli.Active:= True;
    //SDS_CLI.Active:= False;
    //SDS_CLI.Active:= True;
    suiButton3.Enabled :=True;
 end;
IF DM.SDS_Cli.RecordCount = 0 then
begin
HabilitaNovo;
end else
AtualizaManutencao;
IF DM.SDS_CliTIPO.Value = 'J' THEN
BEGIN
   DesabilitaFisico;
   end else
   begin
   HabilitaFisico;
   end;
       Except
      FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um erro! Reinicie o sistema e tente novamente!!!';
      FormPrincipal.MsgErro.Execute;
end;
end;
end;
END;

procedure TFormClientes.CE(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOP,140,20,0,0,SWP_NOSIZE);
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
  DM.SDS_Empresa.Active := false;
  DM.SDS_Empresa.Active := True;
  dm.Sds_cidades.Active := False;
  DM.Sds_cidades.Active := True;
  dm.sds_bairros.Active := False;
  dm.sds_bairros.Active := True;
  DM.SDS_zonas.Active := False;
  DM.SDS_zonas.Active := true;
  DM.SDS_Cli.Active:= False;
   // DM.SDS_Cli.DataSet.CommandText:='select * from clientes where codigo <'+'1'+'order by NOME_RS ASC';
  // dm.SDS_Cli.DataSet.CommandText:='select * from clientes where CODIGO like ' + #39 + '%' + dbt_codigo.Text + '%' + #39+'order by NOME_RS ASC';
  DM.SDS_Cli.Active:= True;
  DM.SDS_Clientes.Active:= False;
  dm.SDS_Clientes.SQL.Clear;
  DM.SDS_Clientes.sql.add('select * from clientes where codigo <'+'-1'+'order by NOME_RS ASC');
  DM.SDS_Clientes.Active:= True;
  dsDocumento.DataSet.Open;
  dsContato.DataSet.Open;
  dsProfissao.DataSet.Open;
  dsReferencia.DataSet.Open;
  pgcProfissao.Enabled:= False;
  pgContato.Enabled:= False;
  pgReferencia.Enabled:= False;


  DESABILITAPANEL;
  IF DM.SDS_Cli.RecordCount = 0 then
  begin
    HabilitaNovo;
  end else
    AtualizaManutencao;
  IF DM.SDS_CliTIPO.Value = 'J' THEN
  BEGIN
    DesabilitaFisico;
   end else
  begin
    HabilitaFisico;
  end;

  pc.ActivePage:= TabSheet1;
  //DM.Sds_cidades.IndexDefs;
  //DM.SDS_Cli.Last;
  btnLocalizar.Enabled := True; 

  IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'A' THEN wwDBComboBox1.Text := 'CADASTRO APROVADO';
  IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'O' THEN wwDBComboBox1.Text := 'CADASTRO EM OBSERVAÇÃO';
  IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'B' THEN wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
  IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'I' THEN wwDBComboBox1.Text := 'INATIVO';
  IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'S' THEN wwDBComboBox1.Text := 'SPC';

  OpenDialog1.InitialDir := caminho_fotos_clientes;

  IF DM.SDS_CLI.FieldByName('FOTO').ASSTRING <> '' THEN
  BEGIN
    IMAGE2.Picture.LoadFromFile(DM.SDS_CLI.FIELDBYNAME('FOTO').ASSTRING);
  END
  ELSE
  BEGIN
    IMAGE2.Picture := NIL;
  END;
end;


procedure TFormClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;

  dm.IBTransaction.StartTransaction;
  DM.QConsulta.SQL.Clear;
  DM.QConsulta.SQL.Add('update clientes set clientes.numero = 1 where clientes.numero is null');
  DM.QConsulta.ExecSQL;
  dm.IBTransaction.Commit;
  dm.QConsulta.Close;
  dsDocumento.DataSet.Close;
  dsContato.DataSet.Close;
  dsProfissao.DataSet.Close;
  dsReferencia.DataSet.Close;
  DM.DTS_CLI.DataSet.close;
  DM.SDS_CLI.Close;
  
  Action:=CaFree;
  FormClientes:=nil;
  DM.SDS_CliCPF_CNPJ.EditMask:= '';
end;

procedure TFormClientes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Cli.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    FormPrincipal.MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
    FormPrincipal.MsgInformacao.Execute;
    CanClose := False;
  end;
end;


procedure TFormClientes.suiButton1Click(Sender: TObject);
begin
//Try
 if OpenDialog1.Execute then
  begin
    DBImage1.Picture.LoadFromFile(OpenDialog1.Filename);
  end;
  {Except
      MsgErro.Text:= 'Ocorreu um erro! Reinicie o sistema e tente novamente!!!';
      MsgErro.ShowModal;
   end; }
end;


procedure TFormClientes.suiButton2Click(Sender: TObject);
begin
DM.SDS_CliFOTO_LOGOMARCA.Clear;
end; 

procedure TFormClientes.suiDBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
{ with Tedit do
    If Key = #13 Then
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;  }
end;

procedure TFormClientes.btnLocalizarClick(Sender: TObject);
begin
Try
 //DM.SDS_Cli.Filtered := False;
if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.ShowModal;
     
     DM.SDS_CLI.Locate('codigo',dm.SDS_ClientesCODIGO.Text, [loCaseInsensitive]);

      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'A' THEN wwDBComboBox1.Text := 'CADASTRO APROVADO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'O' THEN wwDBComboBox1.Text := 'CADASTRO EM OBSERVAÇÃO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'B' THEN wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'I' THEN wwDBComboBox1.Text := 'INATIVO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'S' THEN wwDBComboBox1.Text := 'SPC';

       IF DM.SDS_CLI.FieldByName('FOTO').ASSTRING <> '' THEN
       BEGIN
          IMAGE2.Picture.LoadFromFile(DM.SDS_CLI.FIELDBYNAME('FOTO').ASSTRING);
       END
       ELSE
       BEGIN
         IMAGE2.Picture := NIL;
       END;

   IF DM.SDS_CliTIPO.Value = 'J' THEN
   BEGIN
   DesabilitaFisico;
   end else
   begin
   HabilitaFisico;
   end;
      end;

      pc.ActivePage:= TabSheet1;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Clientes!!');
end;
end;

procedure TFormClientes.Localizar1Click(Sender: TObject);
begin
Try
if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Clientes!!');
end;
end;

procedure TFormClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

      if (Key=VK_F3) then
      begin
       btnNovoClick(Sender);
      end;
      if (Key=VK_F4) then
      begin
       btnEditarClick(Sender);
      end;
     if (Key=VK_F5) then
      begin
       btnCancelarClick(Sender);
      end;
       if (Key=VK_F6) then
      begin
       btnExcluirClick(Sender);
      end;
      if (Key=VK_F10) then
      begin
       btnSalvarClick(Sender);
      end;

if (BtnLocalizar.Enabled = True)then
begin
   if (Key=VK_F7) then
      begin
      btnLocalizarClick(Sender);
      end;
      end;

end;

procedure TFormClientes.DBMemo1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.DBMemo1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormClientes.suiDBEdit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit1Exit(Sender: TObject);
begin
     CorSaida(Sender);
if DM.SDS_Cli.State = dsInsert then
begin
 if suiDBEdit1.Text > '' then
 begin
    DM.SDS_CLIentes.Active := false;
    dm.SDS_Clientes.SQL.Clear;
    dm.SDS_CLIentes.sql.add('select * from clientes where  APELIDO like ' + #39 + '%' + suiDBEdit1.Text + '%' + #39+'ORDER BY codigo');
    DM.SDS_CLIentes.Active := True;

 if DM.SDS_CLIentes.Locate('APELIDO',suiDBEdit1.Text, [loCaseInsensitive]) = True then
 BEGIN
  FormPrincipal.MSGInformacao.HTMLText.text:= 'Já existe um cliente cadastrado com este Apelido/Fantasia!!!';
  FormPrincipal.MSGInformacao.Execute;
  suiDBEdit1.Clear;
  suiDBEdit1.SetFocus;
  end;
end;
end;
end;

procedure TFormClientes.DBNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
       IF DM.SDS_CLI.FieldByName('FOTO').ASSTRING <> '' THEN
       BEGIN
          IMAGE2.Picture.LoadFromFile(DM.SDS_CLI.FIELDBYNAME('FOTO').ASSTRING);
       END
       ELSE
       BEGIN
         IMAGE2.Picture := NIL;
       END;
IF DM.SDS_CliTIPO.Value = 'J' THEN
BEGIN
   DesabilitaFisico;
   end else
   begin
   HabilitaFisico;
   end;
end;

procedure TFormClientes.suiDBComboBox5Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormClientes.suiDBComboBox5Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormClientes.suiDBEdit22Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormClientes.suiDBEdit22Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormClientes.suiButton3Click(Sender: TObject);
begin
Try

if FormDesbloquearCliente=nil   then
    begin
     FormDesbloquearCliente:=TFormDesbloquearCliente.Create(self);
     FormDesbloquearCliente.ComboEdit1.Text := dbt_codigo.text;
      FormDesbloquearCliente.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormClientes.Btn1Click(Sender: TObject);
begin
Try
if FormConsCidades=nil   then
    begin
    FormConscidades:=TFormConscidades.Create(self);
      FormConscidades.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
//DM.SDS_CliCOD_CIDADE.Text := DM.Sds_cidadesCOD_CIDADE.Text;
DM.SDS_CliCIDADE.Text:= DM.Sds_cidadesNOME.Text;
DM.SDS_CliUF.Text := DM.Sds_cidadesUF.Value;
DM.SDS_CliCEP.Text := DM.Sds_cidadesCEP.value;
DM.SDS_CliCOD_IBGE.Text := DM.Sds_cidadesCOD_IBGE.Text;
DM.SDS_CliCOD_CIDADE.Text := DM.Sds_cidadesCOD_CIDADE.Text;

end;

procedure TFormClientes.DBEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormClientes.DBEdit2Exit(Sender: TObject);
begin
CorSaida(sender);

{if DM.Sds_cidades.Locate('NOME',DBEdit2.Text,[loCaseInsensitive]) then
begin
dBEdit2.text := DM.Sds_cidadesNOME.Text;
DBEdit4.Text := DM.Sds_cidadesUF.text;
end else
if not DM.Sds_cidades.Locate('NOME',DBEdit2.Text,[loCaseInsensitive]) then
 if FormConsCidades=nil   then
    begin
    FormConscidades:=TFormConscidades.Create(self);
      FormConscidades.ShowModal;
      end;
 DBEdit2.text := DM.Sds_cidadesNOME.Text;
 DBEdit4.Text := DM.Sds_cidadesUF.text;
// suiDBLookupComboBox3.SetFocus;    }
 end;

procedure TFormClientes.DBEdit5Exit(Sender: TObject);
VAR
  BAIRRO : string;
begin
  CorSaida(sender);
  if DBEdit5.Text > ''then
  begin
  if  DM.sds_bairros.Locate('DESCRICAO',DBEdit5.Text,[loCaseInsensitive]) then
begin
DM.SDS_CliCod_Bairro.Text := DM.sds_bairrosCOD_BAIRRO.Text;
//DBEdit5.Refresh;
end else
if not DM.sds_bairros.Locate('DESCRICAO',DBEdit5.Text,[loCaseInsensitive]) then
begin
  if Application.MESSAGEBOX('Atenção!!! Bairro não localizado neste municício, Deseja Cadastra-lo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_yes then
  begin
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(COD_BAIRRO) as N_CODIGO FROM BAIRRO');
   DM.ProxCod.Open;
   BAIRRO :=  DBEdit5.Text;
  DM.sds_bairro.Open;
  
  DM.sds_bairro.Insert;
  dm.Sds_bairroCOD_BAIRRO.AsInteger :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
  dm.Sds_bairroDESCRICAO.Text :=  DBEdit5.Text;
  DM.Sds_bairroCOD_CIDADE.Text := DM.Sds_cidadesCOD_CIDADE.Text;
  dm.Sds_bairroCOD_EMPRESA.Text :=DM.SDS_EmpresaCODIGO.TEXT;
   dm.sds_bairroUSERCAD.Text:= FormPrincipal.UserLogado;
   dm.sds_bairroDATACAD.Text:= datetostr(now);
   DM.Sds_bairro.Post;
   DM.Sds_bairro.ApplyUpdates(0);
 {if FormConsBairros=nil   then
    begin
    FormConsbairros:=TFormConsBairros.Create(self);
      FormConsBAIRROS.ShowModal;
      end; }

      DM.SDS_CliBairro.Text := BAIRRO;
      DM.SDS_CliCod_Bairro.Text := DM.sds_bairroCOD_BAIRRO.Text;

      //DBEdit5.Refresh;
   end ELSE
   begin
   if FormConsBairros=nil   then
    begin
    FormConsbairros:=TFormConsBairros.Create(self);
      FormConsBAIRROS.ShowModal;
      end;

      DM.SDS_CliBairro.Text := dm.sds_bairrosDescricao.Value;
      DM.SDS_CliCod_Bairro.Text := DM.sds_bairrosCOD_BAIRRO.Text;
   end;
end;
end;
end;


procedure TFormClientes.DBEdit5Enter(Sender: TObject);
begin
CorEntrada(Sender);
//DBEdit5.Clear;
end;

procedure TFormClientes.DBEdit5ButtonClick(Sender: TObject);
begin
TRY
  if FormConsBairros=nil   then
    begin
    FormConsbairros:=TFormConsBairros.Create(self);
      FormConsBAIRROS.ShowModal;
      end;
      except
        ShowMessage('Erro ao exibir o Formulario!!!');
        end;
      DBEdit5.Text := dm.sds_bairrosDescricao.value;
   DM.SDS_CliCod_Bairro.Text := DM.sds_bairrosCOD_BAIRRO.Text;
      DBEdit5.Refresh;
end;

procedure TFormClientes.DBLookupComboBox1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormClientes.DBLookupComboBox1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormClientes.suiDBRadioGroup2Click(Sender: TObject);
begin
//  dm. SDS_Clientes.Post;
end;

procedure TFormClientes.suiDBRadioGroup2Exit(Sender: TObject);
begin
 IF DM.SDS_CliTIPO.Value = 'J' THEN
     BEGIN
     DesabilitaFisico;
     end else
     begin
     HabilitaFisico;
     end;
      IF DM.SDS_CliTIPO.Value = 'F' THEN
     BEGIN
      HabilitaFisico;
     end else
     begin
     DesabilitaFisico;
     end;
 //    dm. SDS_Clientes.Edit;
end;

procedure TFormClientes.suiButton4Click(Sender: TObject);
begin
  try
    try                                             
      frxReport.LoadFromFile('rel/relatorioFichaCliente.fr3');
      dsFichaCliente.DataSet.Filter:= 'CODIGO = ' + dbt_codigo.Text;
      dsFichaCliente.DataSet.Filtered:= True;
      dsFichaCliente.DataSet.Open;
      frxReport.ShowReport;
    except
      ShowMessage('Erro ao tentar Imprimir!');
    end;
  finally
    dsFichaCliente.DataSet.Close;
  end;
end;

procedure TFormClientes.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, #13, '0'..'9'])then
begin
//ShowMessage(key+ ' é um caracter inválido, digite apenas letras ou números');
key := #0;
end;
end;

procedure TFormClientes.suiDBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    If Key = vk_return Then
    begin
     if DM.SDS_Cli.State = dsInsert then
      begin
       DM.SDS_CLIentes.Active := false;
       dm.SDS_Clientes.SQL.Clear;
       DM.SDS_CLIentes.sql.add('select * from clientes where  CPF_CNPJ like ' + #39 + '%' + suiDBEdit2.Text + '%' + #39+'ORDER BY codigo');
       DM.SDS_CLIentes.Active := True;

       if DM.SDS_CLIentes.Locate('CPF_CNPJ',suiDBEdit2.Text, [loCaseInsensitive]) = True then
       BEGIN
       FormPrincipal.MSGInformacao.HTMLText.text:= 'Já existe um cliente cadastrado com este CPF/CNPJ!!!';
       FormPrincipal.MSGInformacao.Execute;
       suiDBEdit2.Clear;
       suiDBEdit2.SetFocus;
       end;


end;
    if (tbIsCPForCNPJ(suiDBEdit2.Text))=False then
     begin
       FormPrincipal.MsgErro.HTMLText.text:= 'Este não é um número de  CPF/CNPJ válido!!!';
       FormPrincipal.MsgErro.Execute;
       suiDBEdit2.SetFocus;
end;
end;
end;


procedure TFormClientes.db_nomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if (Key=vk_return) or (Key=vk_alt) then

end;

procedure TFormClientes.suiButton5Click(Sender: TObject);
var
  codcli : string;
begin

codcli:=dbt_codigo.text;
if codcli > '' then
BEGIN
cds_cliente.Active :=FALSE;
Qry_cliente.close;
Qry_cliente.SQL.Clear;
Qry_cliente.SQL.add('select * from clientes where COD_empresa >0'+'');
if codcli > '' then
Qry_cliente.SQL.add('and CODIGO ='+(codcli));
Qry_cliente.Open;
cds_cliente.Active :=true;

 if DM.SDS_CONFIGURACOESIMPRESSAO.Text ='P' then
BEGIN
FormAutorizacao := TFormAutorizacao.Create(self);
FormAutorizacao.RLReport1.DefaultFilter.Destroy;
FormAutorizacao.RLReport1.Prepare;
FormAutorizacao.RLReport1.PreviewModal;
end else
if DM.SDS_CONFIGURACOESIMPRESSAO.Text ='M' then
BEGIN
FormAutorizacao := TFormAutorizacao.Create(self);
FormAutorizacao.RLReport1.Prepare;
FormAutorizacao.RLReport1.PreviewModal;
end;
end;
end;

procedure TFormClientes.SpeedButton2Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
  begin
    image2.Picture.LoadFromFile(OpenDialog1.Filename);
    if dm.SDS_CLI.State <> dsedit then
    if dm.SDS_CLI.state <> dsinsert then
    dm.SDS_CLI.edit;
    dm.SDS_CLI.FIELDBYNAME('FOTO').ASSTRING := OpenDialog1.FileName;
    DBImage1.Picture.LoadFromFile(OpenDialog1.Filename);
  end;
end;

procedure TFormClientes.SpeedButton3Click(Sender: TObject);
begin
    if dm.SDS_CLI.State <> dsedit then
    if dm.SDS_CLI.state <> dsinsert then
    dm.SDS_CLI.edit;

  frmwebcam2 := tfrmwebcam2.create(self);
  frmwebcam2.showmodal;
  
end;

procedure TFormClientes.pcChange(Sender: TObject);
var
mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11, mes12, rec, pag: string;
begin
Application.ProcessMessages;
rec := 'A';
pag := 'F';

If PC.ActivePageIndex = 0 THEN
    begin
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'A' THEN wwDBComboBox1.Text := 'CADASTRO APROVADO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'O' THEN wwDBComboBox1.Text := 'CADASTRO EM OBSERVAÇÃO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'B' THEN wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'I' THEN wwDBComboBox1.Text := 'INATIVO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'S' THEN wwDBComboBox1.Text := 'SPC';

       IF DM.SDS_CLI.FieldByName('FOTO').ASSTRING <> '' THEN
       BEGIN
          IMAGE2.Picture.LoadFromFile(DM.SDS_CLI.FIELDBYNAME('FOTO').ASSTRING);
       END
       ELSE
       BEGIN
         IMAGE2.Picture := NIL;
       END;

    end;
     if pc.ActivePageIndex = 1 then
  begin

     if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;

    QUERY.close;
    QUERY.sql.clear;
    QUERY.sql.add('select SUM(VALOR_TOTAL) TOTAL_GERAL from pedidos where codigo_cliente = '''+dm.SDS_CLI.fieldbyname('codigo').asstring+'''');
    QUERY.open;
    LTOTAL.CAPTION := FORMATFLOAT('###,###,##0.00',QUERYTOTAL_GERAL.ASFLOAT);
    Application.ProcessMessages;
    qrvenda.close;
    qrvenda.sql.clear;
    qrvenda.sql.add('select * from pedidos where codigo_cliente = '''+DM.SDS_CLI.fieldbyname('codigo').asstring+''' order by data_pedido, codigo');
    qrvenda.open;

    Application.ProcessMessages;
  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('SELECT P.CODIGO_CLIENTE, I.* FROM PEDIDOS_ITENS I INNER JOIN PEDIDOS P ON (I.CODIGO_ID = P.CODIGO) where P.CODIGO_CLIENTE = '''+DM.SDS_CLI.fieldbyname('codigo').ASSTRING+'''');
  qrproduto.open;

  GROUPBOX3.CAPTION := 'PRODUTOS COMPRADOS [TODAS AS NOTAS]';

  Application.ProcessMessages;
  qrcontasreceber.Close;
  qrcontasreceber.SQL.Clear;
  qrcontasreceber.SQL.Add('select * from CREDIARIO where codigo_cliente ='+DM.SDS_CLI.fieldbyname('codigo').ASSTRING+' and situacao =:SIT order by data_vencimento, codigo');
  qrcontasreceber.Parambyname('sit').AsString:= rec;
  qrcontasreceber.open;

  qrcontasreceberpg.Close;
  qrcontasreceberpg.SQL.Clear;
  qrcontasreceberpg.SQL.Add('select * from CREDIARIO where codigo_cliente ='+DM.SDS_CLI.fieldbyname('codigo').ASSTRING+' and situacao =:SIT order by data_vencimento, codigo');
  qrcontasreceberpg.Parambyname('sit').AsString:= pag;
  qrcontasreceberpg.open;

  rtotal_pago.value := 0;

        RVALOR.VALUE := 0;
        RJURO.VALUE := 0;
        RTOTAL.VALUE := 0;
        while not qrcontasreceber.eof do
        begin
          rvalor.value := RVALOR.VALUE + QRCONTASRECEBER.FIELDBYNAME('VALOR_COMPRA').AsFloat;
          rJURO.value := RJURO.VALUE + QRCONTASRECEBER.FIELDBYNAME('VALOR_JUROS').AsFloat + QRCONTASRECEBER.FIELDBYNAME('VALOR_ACRESCIMO').AsFloat;
          rTOTAL.value := RTOTAL.VALUE + QRCONTASRECEBER.FIELDBYNAME('VALOR_TOTAL').AsFloat;
           qrcontasreceber.next;
        end;
        while not qrcontasreceberpg.eof do
        begin
          rtotal_pago.value := RTOTAL_pago.VALUE + QRCONTASreceberpg.FIELDBYNAME('valor_pago').AsFloat;
           qrcontasreceberpg.next;
        end;


    mes01 := copy(datetostr(date),4,7);
    mes02 := copy(datetostr(IncMonth(date,-1)),4,7);
    mes03 := copy(datetostr(IncMonth(date,-2)),4,7);
    mes04 := copy(datetostr(IncMonth(date,-3)),4,7);
    mes05 := copy(datetostr(IncMonth(date,-4)),4,7);
    mes06 := copy(datetostr(IncMonth(date,-5)),4,7);
    mes07 := copy(datetostr(IncMonth(date,-6)),4,7);
    mes08 := copy(datetostr(IncMonth(date,-7)),4,7);
    mes09 := copy(datetostr(IncMonth(date,-8)),4,7);
    mes10 := copy(datetostr(IncMonth(date,-9)),4,7);
    mes11 := copy(datetostr(IncMonth(date,-10)),4,7);
    mes12 := copy(datetostr(IncMonth(date,-11)),4,7);


    Application.ProcessMessages;
    qrvenda_mes.close;
    qrvenda_mes.SQL.clear;
    qrvenda_mes.sql.add('select sum(valor_total) sum_0, '+
                     '(select sum(valor_total) from PEDIDOS where data_pedido >= :data11 and data_pedido < :data10 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(valor_total) from PEDIDOS where data_pedido >= :data10 and data_pedido < :data09 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(valor_total) from PEDIDOS where data_pedido >= :data09 and data_pedido < :data08 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(valor_total) from PEDIDOS where data_pedido >= :data08 and data_pedido < :data07 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(valor_total) from PEDIDOS where data_pedido >= :data07 and data_pedido < :data06 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(valor_total) from PEDIDOS where data_pedido >= :data06 and data_pedido < :data05 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(valor_total) from PEDIDOS where data_pedido >= :data05 and data_pedido < :data04 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(valor_total) from PEDIDOS where data_pedido >= :data04 and data_pedido < :data03 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(valor_total) from PEDIDOS where data_pedido >= :data03 and data_pedido < :data02 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(valor_total) from PEDIDOS where data_pedido >= :data02 and data_pedido < :data01 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(valor_total) from PEDIDOS where data_pedido >= :data01 and data_pedido < :data00 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+''') '+
                     'from PEDIDOS where data_pedido >= :data12 and data_pedido < :data11 and codigo_cliente = '''+dm.sds_cli.fieldbyname('codigo').asstring+'''');

    qrvenda_mes.Params.ParamByName('data00').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,1)),4,7));
    qrvenda_mes.Params.ParamByName('data01').asdatetime := strtodate('01/'+copy(datetostr(date),4,7));
    qrvenda_mes.Params.ParamByName('data02').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-1)),4,7));
    qrvenda_mes.Params.ParamByName('data03').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-2)),4,7));
    qrvenda_mes.Params.ParamByName('data04').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-3)),4,7));
    qrvenda_mes.Params.ParamByName('data05').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-4)),4,7));
    qrvenda_mes.Params.ParamByName('data06').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-5)),4,7));
    qrvenda_mes.Params.ParamByName('data07').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-6)),4,7));
    qrvenda_mes.Params.ParamByName('data08').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-7)),4,7));
    qrvenda_mes.Params.ParamByName('data09').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-8)),4,7));
    qrvenda_mes.Params.ParamByName('data10').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-9)),4,7));
    qrvenda_mes.Params.ParamByName('data11').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-10)),4,7));
    qrvenda_mes.Params.ParamByName('data12').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-11)),4,7));

    qrvenda_mes.open;

    qrvenda_mesSUM_0.DisplayLabel   := mes12;
    qrvenda_mesSUM.DisplayLabel :=   mes11;
    qrvenda_mesSUM_1.DisplayLabel := mes10;
    qrvenda_mesSUM_2.DisplayLabel := mes09;
    qrvenda_mesSUM_3.DisplayLabel := mes08;
    qrvenda_mesSUM_4.DisplayLabel := mes07;
    qrvenda_mesSUM_5.DisplayLabel := mes06;
    qrvenda_mesSUM_6.DisplayLabel := mes05;
    qrvenda_mesSUM_7.DisplayLabel := mes04;
    qrvenda_mesSUM_8.DisplayLabel := mes03;
    qrvenda_mesSUM_9.DisplayLabel := mes02;
    qrvenda_mesSUM_10.DisplayLabel := mes01;
    Application.ProcessMessages;
  end;

end;

procedure TFormClientes.EdtCodConvenioButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConsConvenio, FrmConsConvenio);
  FrmConsConvenio.Tag:= 2;
  FrmConsConvenio.ShowModal;
end;

procedure TFormClientes.EdtCodConvenioExit(Sender: TObject);
begin

  AlignEdit1.Text :=  EdtCodConvenio.TEXT;
  EdtNomeConvenio.Text:= consulta('convenio', AlignEdit1, 'cod_con', 'nome_con', dm.IBTransaction, dm.qConsulta);
   {if EdtNomeConvenio.Text = '' then
      begin
        showmessage('Convênio não Cadastrado');
        EdtCodConvenio.SetFocus;
        exit;
     end; }
end;

procedure TFormClientes.EdtCodConvenioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFormClientes.EdtCodConvenioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_f2 then
     EdtCodConvenioButtonClick(Sender);

end;

procedure TFormClientes.wwDBGrid1DblClick(Sender: TObject);
var
  rec, pag : string;
begin
  rec := 'A';
  pag := 'F';
  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('SELECT P.CODIGO,P.CODIGO_CLIENTE, I.* FROM PEDIDOS_ITENS I INNER JOIN PEDIDOS P ON (I.CODIGO_ID = P.CODIGO) where P.CODIGO = '+qrvenda.fieldbyname('codigo').asstring);
  qrproduto.open;

  groupbox3.Caption := 'PRODUTOS COMPRADOS [NOTA: '+QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+']';

  qrcontasreceber.Close;
  qrcontasreceber.SQL.Clear;
  qrcontasreceber.SQL.Add('select * from crediario where codigo_compra = '''+qrvenda.fieldbyname('codigo').asstring+''' and situacao =:SIT order by data_vencimento, codigo');
  qrcontasreceber.Parambyname('sit').AsString:= rec;
  qrcontasreceber.open;

  qrcontasreceberpg.Close;
  qrcontasreceberpg.SQL.Clear;
  qrcontasreceberpg.SQL.Add('select * from crediario where codigo_compra ='''+qrvenda.fieldbyname('codigo').asstring+''' and situacao =:SIT order by data_vencimento, codigo');
  qrcontasreceberpg.Parambyname('sit').AsString:= pag;
  qrcontasreceberpg.open;
       rtotal_pago.value := 0;

        RVALOR.VALUE := 0;
        RJURO.VALUE := 0;
        RTOTAL.VALUE := 0;
        while not qrcontasreceber.eof do
        begin
          rvalor.value := RVALOR.VALUE + QRCONTASRECEBER.FIELDBYNAME('VALOR_COMPRA').AsFloat;
          rJURO.value := RJURO.VALUE + QRCONTASRECEBER.FIELDBYNAME('VALOR_JUROS').AsFloat;
          rTOTAL.value := RTOTAL.VALUE + QRCONTASRECEBER.FIELDBYNAME('VALOR_TOTAL').AsFloat;
           qrcontasreceber.next;
        end;
        while not qrcontasreceberpg.eof do
        begin
          rtotal_pago.value := RTOTAL_pago.VALUE + QRCONTASreceberpg.FIELDBYNAME('valor_pago').AsFloat;
           qrcontasreceberpg.next;
        end;
end;

procedure TFormClientes.wwDBGrid4DblClick(Sender: TObject);
begin
  if PageView2.ActivePageIndex = 0 then
     begin
       IF qrcontasreceber.FieldByName('VALOR_PAGO').ASFLOAT <> 0 THEN
       BEGIN

              qrpgto.close;
              qrpgto.SQL.Clear;
              qrpgto.SQL.Add('select * from crediario where CODIGO = '+qrcontasreceber.fieldbyname('codigo').asstring);
              qrpgto.open;
              memo1.Text := '';
              qrpgto.First;
              while not qrpgto.Eof do
              begin
                memo1.lines.add(qrpgto.fieldbyname('data_baixa').asstring+' -->'+formPrincipal.texto_justifica(formatfloat('###,###,##0.00',qrpgto.fieldbyname('valor_pago').asfloat),12,' ','E'));
                qrpgto.Next;
              end;
                  PPGTO.Visible := TRUE;
       END;
     end
     else
     begin
              qrpgto.close;
              qrpgto.SQL.Clear;
              qrpgto.SQL.Add('select * from crediario where Codigo = '+qrcontasreceberpg.fieldbyname('codigo').asstring+' order by data_baixa');
              qrpgto.open;
              memo1.Text := '';
              qrpgto.First;
              while not qrpgto.Eof do
              begin
                memo1.lines.add(qrpgto.fieldbyname('data_baixa').asstring+' -->'+formPrincipal.texto_justifica(formatfloat('###,###,##0.00',qrpgto.fieldbyname('valor_pago').asfloat),12,' ','E'));
                qrpgto.Next;
              end;
                  PPGTO.Visible := TRUE;

     end;


end;

procedure TFormClientes.SpeedButton1Click(Sender: TObject);
begin
 ppgto.visible := false;
end;

procedure TFormClientes.dbt_codigoChange(Sender: TObject);
begin
if DBCheckBox1.Checked = True then
PageSheet8.Visible := True
else
PageSheet8.Visible := True;
end;

procedure TFormClientes.DBCheckBox1Click(Sender: TObject);
begin
if DBCheckBox1.Checked = True then
PageSheet8.Visible := True
else
PageSheet8.Visible := True;
end;

procedure TFormClientes.SpeedButton4Click(Sender: TObject);
begin
DM.SDS_CliFOTO_LOGOMARCA.Clear;
end;

procedure TFormClientes.FDvGlowButton2Click(Sender: TObject);
begin
  try
    FormClientesDocumento:= TFormClientesDocumento.Create(nil);
    dsDocumento.DataSet.insert;
    FormClientesDocumento.ShowModal;
    if FormClientesDocumento.ModalResult = mrOk then
    begin
      dsDocumento.DataSet.FieldByName('ID_CLIENTES').text := dbt_codigo.text;
      dsDocumento.DataSet.Post;
      ShowMessage('Registro Incluido com sucesso, + '+#13+
      'para concluir a operação é necessário salvar o cliente!');
    end
    else
      dsDocumento.DataSet.Cancel;
  finally
    FreeAndNil(FormClientesDocumento);
  end;
end;

procedure TFormClientes.FDvGlowButton3Click(Sender: TObject);
begin
  if not dsDocumento.DataSet.IsEmpty then
  begin
    if Application.MESSAGEBOX('Confirma Exclusão do Documento ?',
    'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      dsDocumento.DataSet.Delete;
      qrClientes_Document.ApplyUpdates(0);
    end;
  end
  else
    ShowMessage('Preste atenção!,Não existe nenhum resgitro para que posso excluir!!!');
end;

procedure TFormClientes.btnIncluiProfissaoClick(Sender: TObject);
begin
  try
    FormClienteProfissao:= TFormClienteProfissao.Create(nil);
    dsProfissao.DataSet.insert;
    FormClienteProfissao.ShowModal;
    if FormClienteProfissao.ModalResult = mrOk then
    begin
      qrClientes_Profissao.FieldByName('ID_CLIENTES').Text := dbt_codigo.Text;
      dsProfissao.DataSet.Post;
     // qrClientes_Profissao.ApplyUpdates(0);
    end
    else
     dsProfissao.DataSet.Cancel;
  finally
    FreeAndNil(FormClienteProfissao);
  end;
end;

procedure TFormClientes.btnAlterarProfissaoClick(Sender: TObject);
begin
  if not dsProfissao.DataSet.IsEmpty then
  begin
    try
      FormClienteProfissao:= TFormClienteProfissao.Create(nil);
      dsProfissao.DataSet.Edit;
      FormClienteProfissao.ShowModal;
      if FormClienteProfissao.ModalResult = mrOk then
      begin
        dsProfissao.DataSet.Post;
        qrClientes_Profissao.ApplyUpdates(0);
      end
      else
        dsProfissao.DataSet.Cancel;
    finally
      FreeAndNil(FormClienteProfissao);
    end;
  end
  else
    ShowMessage('Preste atenção!,Não existe nenhum resgitro para que possa Alterar!!!');
end;

procedure TFormClientes.btnExcluirProfissaoClick(Sender: TObject);
begin
  if not dsProfissao.DataSet.IsEmpty then
  begin
    if Application.MESSAGEBOX('Confirma Exclusão do Registro ?',
    'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      dsProfissao.DataSet.Delete;
      qrClientes_Profissao.ApplyUpdates(0);
    end;
  end
  else
    ShowMessage('Preste atenção!,Não existe nenhum resgitro para que posso excluir!!!');
end;

procedure TFormClientes.btnIncluirReferenciaClick(Sender: TObject);
begin
  try
    FormClientesReferencia:= TFormClientesReferencia.Create(nil);
    dsReferencia.DataSet.insert;
    FormClientesReferencia.ShowModal;
    if FormClientesReferencia.ModalResult = mrOk then
    begin
    dsReferencia.DataSet.FieldByName('ID_CLIENTES').Text := dbt_codigo.Text;
      dsReferencia.DataSet.Post;
     // qrClientes_Referencia.ApplyUpdates(0);
    end
    else
      qrClientes_Referencia.Cancel;
  finally
    FreeAndNil(FormClientesReferencia);
  end;
end;

procedure TFormClientes.btnAlterarReferenciaClick(Sender: TObject);
begin
  if not dsReferencia.DataSet.IsEmpty then
  begin
    try
      FormClientesReferencia:= TFormClientesReferencia.Create(nil);
      dsReferencia.DataSet.Edit;
      FormClientesReferencia.ShowModal;
      if FormClientesReferencia.ModalResult = mrOk then
      begin
        dsReferencia.DataSet.Post;
        qrClientes_Referencia.ApplyUpdates(0);
      end
      else
        dsProfissao.DataSet.Cancel;
    finally
      FreeAndNil(FormClientesReferencia);
    end;
  end
  else
    ShowMessage('Preste atenção!,Não existe nenhum resgitro para que possa Alterar!!!');
end;

procedure TFormClientes.btnExcluirReferenciaClick(Sender: TObject);
begin
  if not dsReferencia.DataSet.IsEmpty then
  begin
    if Application.MESSAGEBOX('Confirma Exclusão do Registro ?',
    'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      dsReferencia.DataSet.Delete;
      qrClientes_Referencia.ApplyUpdates(0);
    end;
  end
  else
    ShowMessage('Preste atenção!,Não existe nenhum resgitro para que posso excluir!!!');
end;

procedure TFormClientes.btnIncluirContatoClick(Sender: TObject);
begin
  try
    FormClientesContato:= TFormClientesContato.Create(nil);
    dsContato.DataSet.insert;
    FormClientesContato.ShowModal;
    if FormClientesContato.ModalResult = mrOk then
    begin
      dsContato.DataSet.FieldByName('ID_CLIENTES').Text := dbt_codigo.Text;
      dsContato.DataSet.Post;
     // qrClientes_Contato.ApplyUpdates(0);
    end
    else
      qrClientes_Contato.Cancel;
  finally
    FreeAndNil(FormClientesContato);
  end;
end;

procedure TFormClientes.gridDocumentoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'ST' then
  begin
    gridDocumento.Canvas.FillRect(Rect);
    if dsDocumento.DataSet.FieldByName('SITUACAO').AsString = 'S' then
      img25.Draw(gridDocumento.Canvas,Rect.Left +7,Rect.Top + 0,3)
    else
      img25.Draw(gridDocumento.Canvas,Rect.Left+7,Rect.Top + 0,4);
  end
  else
  if Column.FieldName = 'ADD' then
  begin
    gridDocumento.Canvas.FillRect(Rect);
    img25.Draw(gridDocumento.Canvas,Rect.Left +7,Rect.Top + 0,0)
  end
  else
  if Column.FieldName = 'EXP' then
  begin
    gridDocumento.Canvas.FillRect(Rect);
    img25.Draw(gridDocumento.Canvas,Rect.Left +7,Rect.Top + 0,2)
  end
  else
  if Column.FieldName = 'DELL' then
  begin
    gridDocumento.Canvas.FillRect(Rect);
    img25.Draw(gridDocumento.Canvas,Rect.Left +8,Rect.Top + 0,1)
  end;
end;

procedure TFormClientes.gridDocumentoCellClick(Column: TColumn);
var
  S: TStream;
  MS: TMemoryStream;
  selDir: string;
  Char: PAnsiChar;
begin
  if Column.FieldName = 'ADD' then
  begin
    MS := TMemoryStream.Create;
    if OpenDialog1.Execute then // Localizar imagem
    try
      S := TFileStream.Create(OpenDialog1.FileName, fmOpenRead);
      try
        S.Position := 0;
        MS.LoadFromStream(S);
        MS.Seek(0, soFromBeginning);
        if (MS.Size = 0) then
          Exit;

        dsDocumento.DataSet.Edit;
        TBlobField(dsDocumento.DataSet.FieldByName('DOCUMENTO')).LoadFromStream(MS);
        dsDocumento.DataSet.FieldByName('SITUACAO').AsString:= 'S';
      finally
        S.Free;
        dsDocumento.DataSet.Post;
      //  qrClientes_Document.ApplyUpdates(0);
      end;
    finally
      MS.Free;
    end;
  end
  else
  if Column.FieldName = 'EXP' then
  begin
    if dsDocumento.DataSet.RecordCount > 0 then
    begin
      if SelectDirectory('Selecione uma pasta', 'C:\', selDir) then
      begin
        TBlobField( dsDocumento.DataSet.FieldByName('DOCUMENTO')).SaveToFile(selDir +'\'+
                  dsDocumento.DataSet.FieldByName('DESCRICAO').AsString+'.JPG');
        Application.MessageBox('Sua imagem foi exportada com sucesso.','Exportação completa',MB_ICONINFORMATION);
      end;
    end;
  end
  else
  if Column.FieldName = 'DELL' then
  begin
    if dsDocumento.DataSet.RecordCount > 0 then
    begin
      if Application.MESSAGEBOX('Deseja realmente excluir esse documento?',
      'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        dsDocumento.DataSet.Edit;
        dsDocumento.DataSet.FieldByName('DOCUMENTO').Clear;
        dsDocumento.DataSet.FieldByName('SITUACAO').AsString:= 'N';
        dsDocumento.DataSet.Post;
        qrClientes_Document.ApplyUpdates(0);
      end;
    end;
  end;

end;

procedure TFormClientes.RxLabel27Click(Sender: TObject);
begin
  try
    FConsultaCPF_CNPJ:= TFConsultaCPF_CNPJ.Create(nil);
    if RxLabel5.Caption = 'CNPJ:' then
    begin
      FConsultaCPF_CNPJ.pgcCPF_CNPJ.ActivePage:= FConsultaCPF_CNPJ.tbCNPJ;
      FConsultaCPF_CNPJ.AtualizaCaptchaCNPJ;
      if suiDBEdit2.Text <> '' then
        FConsultaCPF_CNPJ.EditCNPJ.Text:= suiDBEdit2.Text;
      FConsultaCPF_CNPJ.Caption:= 'Consulta CNPJ';
    end
    else
    if RxLabel5.Caption = 'CPF:' then
    begin
      FConsultaCPF_CNPJ.pgcCPF_CNPJ.ActivePage:= FConsultaCPF_CNPJ.tbCPF;
      FConsultaCPF_CNPJ.AtualizaCaptcha;
      if suiDBEdit2.Text <> '' then
        FConsultaCPF_CNPJ.EditCPF.Text:= suiDBEdit2.Text;
      FConsultaCPF_CNPJ.Caption:= 'Consulta CPF';
    end;
    FConsultaCPF_CNPJ.ShowModal;
  finally
    if RxLabel5.Caption = 'CNPJ:' then
    begin
      if FConsultaCPF_CNPJ.CNPJRazaoSocial <> '' then
      begin
        DM.DTS_CLI.DataSet.FieldByName('NOME_RS').asstring:= FConsultaCPF_CNPJ.CNPJRazaoSocial;
        DM.DTS_CLI.DataSet.FieldByName('APELIDO').asstring:= FConsultaCPF_CNPJ.CNPJFantasia;
        DM.DTS_CLI.DataSet.FieldByName('CIDADE').asstring:= FConsultaCPF_CNPJ.CNPJCidade;
        DM.DTS_CLI.DataSet.FieldByName('CEP').asstring:= FConsultaCPF_CNPJ.CNPJCEP;
        DM.DTS_CLI.DataSet.FieldByName('UF').asstring:= FConsultaCPF_CNPJ.CNPJUF;
        DM.DTS_CLI.DataSet.FieldByName('ENDERECO').asstring:= FConsultaCPF_CNPJ.CNPJEndereco;
        DM.DTS_CLI.DataSet.FieldByName('NUMERO').asstring:= FConsultaCPF_CNPJ.CNPJNumero;
        DM.DTS_CLI.DataSet.FieldByName('BAIRRO').asstring:= FConsultaCPF_CNPJ.CNPJBairro;
        DM.DTS_CLI.DataSet.FieldByName('TELEFONE').asstring:= FConsultaCPF_CNPJ.CNPJTelefone;
        DM.DTS_CLI.DataSet.FieldByName('EMAIL').asstring:= FConsultaCPF_CNPJ.CNPJEmail;
        DM.DTS_CLI.DataSet.FieldByName('NASCIMENTO_IA').AsDateTime:= FConsultaCPF_CNPJ.CNPJAbertura;
      end;
    end
    else
    if RxLabel5.Caption = 'CPF:' then
    begin
      if FConsultaCPF_CNPJ.NomeCliente <> '' then
      DM.DTS_CLI.DataSet.FieldByName('NOME_RS').asstring:= FConsultaCPF_CNPJ.NomeCliente;
    end;
    FreeAndNil(FConsultaCPF_CNPJ);
  end;
end;

end.
