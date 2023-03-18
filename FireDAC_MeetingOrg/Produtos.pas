unit Produtos;

interface
               
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls,  Menus,  ImgList,  DB,
  Mask,  DBCtrls, IBSQL, IBDatabase, ACBrBase, ACBrLCB, ExtDlgs, RzCmboBx, RzDBCmbo,
  AlignEdit, RXDBCtrl, Buttons,  RzEdit, RzBtnEdt, Wwdbigrd, Wwdbgrid, TFlatPanelUnit,
  RxDBComb, jpeg,   Grids, BaseGrid,  DBAdvGrid, RXCtrls, RzTabs, Math,  Printers, DBGrids,
  IBCustomDataSet, IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzDBEdit,
  ACBrSocket, ACBrNCMs, AdvUtil, VclTee.TeeGDIPlus, AdvMenus, AdvToolBar,
  AdvGlowButton, AdvShapeButton, AdvObj, AdvGrid, RxToolEdit, RxCurrEdit,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart;

  type
  TFormProdutos = class(TForm)
    Panel1: TPanel;
    pnldados: TPanel;
    OpenDialog1: TOpenPictureDialog;
    Panel3: TPanel;
    Panel4: TPanel;
    RxLabel6: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel2: TRxLabel;
    Panel5: TPanel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel13: TRxLabel;
    RxLabel16: TRxLabel;
    RxLabel18: TRxLabel;
    RxLabel22: TRxLabel;
    RxLabel23: TRxLabel;
    RxLabel24: TRxLabel;
    RxLabel25: TRxLabel;
    Grupo: TRxDBComboEdit;
    SubGrupo: TRxDBComboEdit;
    Marca: TRxDBComboEdit;
    suiButton5: TAdvGlowButton;
    suiButton6: TAdvGlowButton;
    suiButton7: TAdvGlowButton;
    suiButton8: TAdvGlowButton;
    suiButton9: TAdvGlowButton;
    FORNECEDOR: TRxDBComboEdit;
    suiButton3: TAdvGlowButton;
    RxLabel19: TRxLabel;
    RxLabel20: TRxLabel;
    RxLabel11: TRxLabel;
    DBEdit1: TDBEdit;
    db_nome: TDBEdit;
    suiDBLookupComboBox1: TDBLookupComboBox;
    Bevel2: TBevel;
    RxLabel1: TRxLabel;
    RxLabel21: TRxLabel;
    suiButton4: TAdvGlowButton;
    suiButton10: TAdvGlowButton;
    suiDBRadioGroup1: TDBRadioGroup;
    suiDBGrid2: TDBAdvGrid;
    Panel7: TPanel;
    Label1: TLabel;
    Panel8: TPanel;
    Panel10: TPanel;
    Label2: TLabel;
    suiDBGrid1: TDBAdvGrid;
    RxLabel35: TRxLabel;
    DBEdit2: TDBEdit;
    CheckBox1: TDBCheckBox;
    CheckBox2: TDBCheckBox;
    Panel11: TPanel;
    RxLabel37: TRxLabel;
    RxLabel36: TRxLabel;
    RxLabel28: TRxLabel;
    RxLabel38: TRxLabel;
    RxLabel26: TRxLabel;
    RxLabel27: TRxLabel;
    Panel9: TPanel;
    GroupBox1: TGroupBox;
    RxLabel43: TRxLabel;
    DBEdit13: TDBEdit;
    RxLabel44: TRxLabel;
    DBEdit3: TDBEdit;
    RxLabel5: TRxLabel;
    RxLabel45: TRxLabel;
    RxLabel46: TRxLabel;
    RxLabel47: TRxLabel;
    RxLabel48: TRxLabel;
    RxLabel49: TRxLabel;
    DBEdit19: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxLabel50: TRxLabel;
    RxLabel51: TRxLabel;
    GroupBox2: TGroupBox;
    suiDBCheckBox1: TDBCheckBox;
    RxLabel52: TRxLabel;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxLabel54: TRxLabel;
    RxLabel55: TRxLabel;
    RxLabel53: TRxLabel;
    suiDBRadioGroup2: TDBRadioGroup;
    Edit3: TRxDBCalcEdit;
    DBEdit22: TDBEdit;
    RxLabel59: TRxLabel;
    dbt_codigo: TDBEdit;
    DBDateEdit4: TDBDateEdit;
    RxLabel60: TRxLabel;
    RxLabel61: TRxLabel;
    RxLabel62: TRxLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    RxLabel56: TRxLabel;
    lUltimaLeitura: TLabel;
    ACBrLCB3: TACBrLCB;
    RxLabel57: TRxLabel;
    Panel2: TPanel;
    Bevel1: TBevel;
    DBImage1: TDBImage;
    suiButton1: TAdvGlowButton;
    suiButton2: TAdvGlowButton;
    RxLabel3: TRxLabel;
    Pc: TRzPageControl;
    Produtos: TRzTabSheet;
    Complem: TRzTabSheet;
    Agregados: TRzTabSheet;
    Similares: TRzTabSheet;
    suiDBEdit3: TRxDBCalcEdit;
    DBEdit14: TRxDBCalcEdit;
    suiDBEdit5: TRxDBCalcEdit;
    suiDBEdit4: TRxDBCalcEdit;
    suiDBEdit12: TRxDBCalcEdit;
    suiDBEdit14: TRxDBCalcEdit;
    DBEdit20: TRxDBCalcEdit;
    suiDBEdit6: TRxDBCalcEdit;
    suiDBEdit15: TRxDBCalcEdit;
    suiDBEdit16: TRxDBCalcEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit17: TRxDBCalcEdit;
    DBEdit18: TRxDBCalcEdit;
    DBEdit23: TRxDBCalcEdit;
    DBEdit21: TDBEdit;
    suiDBEdit11: TDBEdit;
    DBEdit5: TRxDBCalcEdit;
    DBEdit4: TRxDBCalcEdit;
    suiDBEdit1: TRxDBCalcEdit;
    Image1: TImage;
    RxLabel65: TRxLabel;
    DBText6: TDBText;
    RxLabel64: TRxLabel;
    DBText5: TDBText;
    Categoria: TRxDBComboEdit;
    Seccao: TRxDBComboEdit;
    RxLabel42: TRxLabel;
    lEstoque: TRxDBComboEdit;
    suiButton12: TAdvGlowButton;
    RxLabel58: TRxLabel;
    suibutton11: TSpeedButton;
    Edit1: TAlignEdit;
    grupo2: TDBEdit;
    SubGrupo2: TDBEdit;
    marca2: TDBEdit;
    fornecedor2: TDBEdit;
    Categoria2: TEdit;
    seccao2: TEdit;
    Lestoque2: TEdit;
    RxLabel66: TRxLabel;
    Grupo_Trib: TRxDBComboEdit;
    D_grupo_t: TEdit;
    suiButton13: TAdvGlowButton;
    suiDBRadioGroup3: TDBRadioGroup;
    RxLabel12: TRxLabel;
    DBEdit26: TDBEdit;
    suiDBEdit8: TDBComboBox;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    GroupBox3: TGroupBox;
    RxDBCalcEdit2: TRxDBCalcEdit;
    RxLabel14: TRxLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    RxLabel15: TRxLabel;
    RxLabel17: TRxLabel;
    EvDBNumEdit1: TRxDBCalcEdit;
    suiDBCheckBox2: TDBCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    TabSheet4: TRzTabSheet;
    TabSheet5: TRzTabSheet;
    TabSheet7: TRzTabSheet;
    RxLabel63: TRxLabel;
    EvDBComboBox1: TRxDBComboBox;
    pficha9: TPanel;
    Label55: TLabel;
    Bevel11: TBevel;
    Panel6: TPanel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Label37: TLabel;
    FDvGlowButton3: TAdvGlowButton;
    FDvGlowButton4: TAdvGlowButton;
    Panel12: TPanel;
    Label15: TLabel;
    elocproduto: TRzButtonEdit;
    eproduto: TRzEdit;
    erentabilidade: TRzNumericEdit;
    brent_gravar: TAdvGlowButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    rtotal_rent: TRzNumericEdit;
    wwDBGrid6: TDBGrid;
    check_rentabilidade: TDBCheckBox;
    FDvShapeButton1: TAdvShapeButton;
    pnutricional: TPanel;
    GroupBox5: TGroupBox;
    DBEdit39: TDBEdit;
    FlatPanel3: TFlatPanel;
    FlatPanel4: TFlatPanel;
    FlatPanel5: TFlatPanel;
    FlatPanel6: TFlatPanel;
    Shape6: TShape;
    Shape5: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape1: TShape;
    Label145: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    FlatPanel7: TFlatPanel;
    Shape10: TShape;
    Shape9: TShape;
    Shape8: TShape;
    Shape7: TShape;
    Shape2: TShape;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label165: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    FlatPanel8: TFlatPanel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    ptampainfnutricional: TFlatPanel;
    Label44: TLabel;
    bitbtn6: TAdvGlowButton;
    pficha5: TPanel;
    Bevel19: TBevel;
    Panel13: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Bevel14: TBevel;
    Label67: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    button3: TAdvGlowButton;
    eserial: TRzEdit;
    DBCheckBox3: TDBCheckBox;
    Panel14: TPanel;
    FDvGlowButton2: TAdvGlowButton;
    FDvGlowButton5: TAdvGlowButton;
    DBMemo1: TDBEdit;
    TabSheet8: TRzTabSheet;
    GroupBox4: TGroupBox;
    RxLabel31: TRxLabel;
    DBEdit6: TDBEdit;
    RxLabel29: TRxLabel;
    RxDBCalcEdit3: TRxDBCalcEdit;
    RxLabel30: TRxLabel;
    RxDBCalcEdit4: TRxDBCalcEdit;
    suiDBCheckBox3: TDBCheckBox;
    DBEdit7: TDBEdit;
    RxLabel32: TRxLabel;
    RxLabel33: TRxLabel;
    DBEdit8: TDBEdit;
    RxLabel34: TRxLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    RxLabel39: TRxLabel;
    RxLabel40: TRxLabel;
    DBEdit11: TDBEdit;
    RxLabel41: TRxLabel;
    DBEdit27: TDBEdit;
    RxLabel67: TRxLabel;
    DBEdit28: TDBEdit;
    RxLabel68: TRxLabel;
    DBEdit29: TDBEdit;
    RxLabel69: TRxLabel;
    DBEdit30: TDBEdit;
    RxLabel70: TRxLabel;
    DBEdit31: TDBEdit;
    RxLabel71: TRxLabel;
    DBEdit32: TDBEdit;
    IBTRPro: TIBTransaction;
    IBSQLPro: TIBSQL;
    qrinfnutricional_produto: TDataSource;
    DBEdit33: TDBEdit;
    RxLabel72: TRxLabel;
    RxLabel73: TRxLabel;
    RxLabel74: TRxLabel;
    RxLabel75: TRxLabel;
    RxLabel76: TRxLabel;
    Image2: TImage;
    DBMemo2: TDBEdit;
    dbfirst: TDBAdvGlowButton;
    dbprior: TDBAdvGlowButton;
    dbnext: TDBAdvGlowButton;
    dblast: TDBAdvGlowButton;
    btnNovo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnexcluir: TAdvGlowButton;
    btnLocalizar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    popmenu1: TAdvPopupMenu;
    Indstrializao1: TMenuItem;
    N1: TMenuItem;
    Inventrio1: TMenuItem;
    N2: TMenuItem;
    MovimentarEstoque1: TMenuItem;
    ConsultaSerial1: TMenuItem;
    N3: TMenuItem;
    GrupoSubgrupo1: TMenuItem;
    Fornecedor1: TMenuItem;
    MarcaFabricanteLaboratrio1: TMenuItem;
    Receitas1: TMenuItem;
    NaturezadeOperaoCFOP1: TMenuItem;
    N4: TMenuItem;
    Exportarparaarquivo1: TMenuItem;
    ImportardeArquivo1: TMenuItem;
    N5: TMenuItem;
    otalizarestoque1: TMenuItem;
    N6: TMenuItem;
    AtualizaodePreos1: TMenuItem;
    AtualizarPreosdeVendasRemarcados1: TMenuItem;
    EvDBComboBox4: TRxDBComboBox;
    EvDBComboBox2: TRxDBComboBox;
    EvDBComboBox3: TRxDBComboBox;
    RxDBComboBox1: TRzDBComboBox;
    TabSheet6: TRzTabSheet;
    Panel15: TPanel;
    DBCheckBox1: TDBCheckBox;
    FDvGlowButton1: TAdvGlowButton;
    FDvGlowButton6: TAdvGlowButton;
    DBAdvGrid2: TDBAdvGrid;
    BtnRelacionar: TAdvGlowButton;
    wwDBGrid2: TDBGrid;
    QRRENTABILIDADE: TFDQuery;
    dsrentabilidade: TDataSource;
    dts_grade: TDataSource;
    qrproduto_loc: TFDQuery;
    qrproduto_locCODIGO: TIntegerField;
    qrproduto_locCODIGO_BARRAS: TStringField;
    qrproduto_locDESCRICAO: TStringField;
    Dts_Serial: TDataSource;
    TabSheet3: TRzTabSheet;
    graf_venda: TChart;
    Series1: TBarSeries;
    Chart1: TChart;
    BarSeries1: TBarSeries;
    qrvenda_mes: TFDQuery;
    pcomposicao: TPanel;
    Label34: TLabel;
    DBEdit61: TDBEdit;
    QRRENTABILIDADERENTABILIDADE: TIntegerField;
    QRRENTABILIDADECOD_PRODUTO: TIntegerField;
    QRRENTABILIDADEPRODUTO: TStringField;
    QRRENTABILIDADERENDIMENTO: TBCDField;
    QRRENTABILIDADEQUANTIDADE: TBCDField;
    QRRENTABILIDADEVALOR: TBCDField;
    QRRENTABILIDADECODIGO: TIntegerField;
    qrvenda_mesCOLUMN_0: TBCDField;
    qrvenda_mesCOLUMN: TBCDField;
    qrvenda_mesCOLUMN_1: TBCDField;
    qrvenda_mesCOLUMN_2: TBCDField;
    qrvenda_mesCOLUMN_3: TBCDField;
    qrvenda_mesCOLUMN_4: TBCDField;
    qrvenda_mesCOLUMN_5: TBCDField;
    qrvenda_mesCOLUMN_6: TBCDField;
    qrvenda_mesCOLUMN_7: TBCDField;
    qrvenda_mesCOLUMN_8: TBCDField;
    qrvenda_mesCOLUMN_9: TBCDField;
    qrvenda_mesCOLUMN_10: TBCDField;
    DBLookupComboBox2: TDBLookupComboBox;
    RxLabel79: TRxLabel;
    RxDBCalcEdit6: TRxDBCalcEdit;
    RxLabel80: TRxLabel;
    Sds_unidades: TFDQuery;
    DataSource1: TDataSource;
    Sds_unidadesCODIGO: TIntegerField;
    Sds_unidadesDESCRICAO: TStringField;
    Sds_unidadesUSERCAD: TStringField;
    Sds_unidadesABREVIATURA: TStringField;
    Sds_unidadesDATACADASTRO: TDateField;
    RxLabel78: TRxLabel;
    RzDBComboBox1: TRzDBComboBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RxLabel77: TRxLabel;
    DBEdit34: TDBEdit;
    RxLabel81: TRxLabel;
    DBEdit35: TDBEdit;
    ACBrNCMs1: TACBrNCMs;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    tbImovel: TRzTabSheet;
    DBEdit36: TDBEdit;
    RxLabel82: TRxLabel;
    DBEdit37: TDBEdit;
    RxLabel83: TRxLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit38: TDBEdit;
    RxLabel84: TRxLabel;
    RxLabel85: TRxLabel;
    DBEdit60: TDBEdit;
    RxLabel86: TRxLabel;
    DBEdit62: TDBEdit;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBDateEdit5: TDBDateEdit;
    DBDateEdit6: TDBDateEdit;
    DBCheckBox8: TDBCheckBox;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    RxLabel87: TRxLabel;
    DBEdit65: TDBEdit;
    RxLabel88: TRxLabel;
    RxLabel89: TRxLabel;
    RxLabel90: TRxLabel;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    FDvGlowButton7: TAdvGlowButton;
    RxLabel91: TRxLabel;
    RxLabel92: TRxLabel;
    suiDBEdit7: TDBEdit;
    RxLabel93: TRxLabel;
    DBEdit68: TDBEdit;
    RxLabel94: TRxLabel;
    DBEdit69: TDBEdit;
    RxLabel95: TRxLabel;
    DBEdit70: TDBEdit;
    RxLabel96: TRxLabel;
    DBEdit71: TDBEdit;
    RxDBComboEdit1: TRxDBComboEdit;
    RxLabel97: TRxLabel;
    DBEdit72: TDBEdit;
    RxLabel98: TRxLabel;
    RxLabel99: TRxLabel;
    DBEdit73: TDBEdit;
    RxLabel100: TRxLabel;
    DBEdit74: TDBEdit;
    qrProdutos_Imovel: TFDQuery;
    qrProdutos_ImovelID: TIntegerField;
    qrProdutos_ImovelID_PRODUTOS: TIntegerField;
    qrProdutos_ImovelVALOR_ALUGUEL: TBCDField;
    qrProdutos_ImovelVALOR_VENDA: TBCDField;
    qrProdutos_ImovelCOD_IPTU: TStringField;
    qrProdutos_ImovelCOD_AGUA: TStringField;
    qrProdutos_ImovelCOD_ENERGIA: TStringField;
    qrProdutos_ImovelAGUA_ATIVO: TStringField;
    qrProdutos_ImovelENERGIA_ATIVO: TStringField;
    qrProdutos_ImovelDATA_ENERGIA: TDateField;
    qrProdutos_ImovelDATA_AGUA: TDateField;
    qrProdutos_ImovelPLACA: TStringField;
    qrProdutos_ImovelPLACA_NUMERO: TIntegerField;
    qrProdutos_ImovelPLACA_REFERENCIA: TStringField;
    qrProdutos_ImovelCARTORIO: TStringField;
    qrProdutos_ImovelMATRICULA: TStringField;
    qrProdutos_ImovelAREA_TERRENO: TIntegerField;
    qrProdutos_ImovelLADO_ESQUERDO: TIntegerField;
    qrProdutos_ImovelLADO_DIREIRO: TIntegerField;
    qrProdutos_ImovelCIDADE: TStringField;
    qrProdutos_ImovelCEP: TStringField;
    qrProdutos_ImovelUF: TStringField;
    qrProdutos_ImovelCOD_INGE: TStringField;
    qrProdutos_ImovelENDERECO: TStringField;
    qrProdutos_ImovelNUMERO: TIntegerField;
    qrProdutos_ImovelBAIRRO: TStringField;
    dsImovel: TDataSource;
    qrProdutos_ImovelSITUACAO: TStringField;
    RxLabel101: TRxLabel;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    RxLabel102: TRxLabel;
    RxLabel103: TRxLabel;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    RxLabel104: TRxLabel;
    qrProdutos_ImovelTESTADA: TIntegerField;
    qrProdutos_ImovelPROFUNDIDADE: TIntegerField;
    qrProdutos_ImovelN_LOTE: TStringField;
    qrProdutos_ImovelQUADRA: TStringField;
    qrProdutos_ImovelN_SUITES: TIntegerField;
    qrProdutos_ImovelN_QUARTOS: TIntegerField;
    qrProdutos_ImovelN_SALAS: TIntegerField;
    qrProdutos_ImovelN_BANHEIROS: TIntegerField;
    qrProdutos_ImovelN_GARAGENS: TIntegerField;
    RxLabel105: TRxLabel;
    DBEdit79: TDBEdit;
    RxLabel106: TRxLabel;
    DBEdit80: TDBEdit;
    RxLabel107: TRxLabel;
    DBEdit81: TDBEdit;
    RxLabel108: TRxLabel;
    DBEdit82: TDBEdit;
    RxLabel109: TRxLabel;
    DBEdit83: TDBEdit;
    BtnAddPro: TSpeedButton;
    RxLabel110: TRxLabel;
    DBEdit84: TDBEdit;
    SpeedButton3: TSpeedButton;
    RxDBCalcEdit5: TRxDBCalcEdit;
    RxLabel111: TRxLabel;
    RxDBCalcEdit7: TRxDBCalcEdit;
    RxLabel112: TRxLabel;
    qrProdutos_ImovelPERC_IMPOSTO: TBCDField;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure corAberto;
    procedure corFechado;
    procedure LocalizarGrupos(Sender: TObject);
    procedure LocalizarSubGrupos(Sender: TObject);
    procedure LocalizarMarca(Sender: TObject);
    procedure LocalizarFornecedores(Sender: TObject);
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
    procedure suiDBLookupComboBox1Enter(Sender: TObject);
    procedure suiDBLookupComboBox1Exit(Sender: TObject);
    procedure suiDBLookupComboBox2Enter(Sender: TObject);
    procedure suiDBLookupComboBox2Exit(Sender: TObject);
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
    procedure _c(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrupoButtonClick(Sender: TObject);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure GrupoExit(Sender: TObject);
    procedure SubGrupoButtonClick(Sender: TObject);
    procedure SubGrupoExit(Sender: TObject);
    procedure suiDBEdit1Enter(Sender: TObject);
    procedure suiDBEdit1Exit(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure GrupoEnter(Sender: TObject);
    procedure SubGrupoEnter(Sender: TObject);
    procedure MarcaEnter(Sender: TObject);
    procedure MarcaExit(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure MarcaButtonClick(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure suiButton9Click(Sender: TObject);
    procedure FORNECEDOREnter(Sender: TObject);
    procedure FORNECEDORExit(Sender: TObject);
    procedure FORNECEDORButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton3Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton10Click(Sender: TObject);
    procedure BtnRelacionarClick(Sender: TObject);
    procedure suiDBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ACBrLCB3LeCodigo(Sender: TObject);
    procedure Vende(Sender: TObject);
    procedure Lerini;
    procedure Edit3Exit(Sender: TObject);
    procedure suiButton11Click(Sender: TObject);
    procedure DbSeccaoEnter(Sender: TObject);
    procedure DbSeccaoExit(Sender: TObject);
    procedure RxDBComboBox1Enter(Sender: TObject);
    procedure RxDBComboBox1Exit(Sender: TObject);
    procedure DBcategoriaEnter(Sender: TObject);
    procedure DBcategoriaExit(Sender: TObject);
    procedure DBEdit20Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure RxDBCalcEdit1Exit(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure REdit17Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure CategoriaButtonClick(Sender: TObject);
    procedure CategoriaEnter(Sender: TObject);
    procedure CategoriaExit(Sender: TObject);
    procedure SeccaoButtonClick(Sender: TObject);
    procedure SeccaoEnter(Sender: TObject);
    procedure SeccaoExit(Sender: TObject);
    procedure suiButton12Click(Sender: TObject);
    procedure lEstoqueButtonClick(Sender: TObject);
    procedure lEstoqueExit(Sender: TObject);
    procedure lEstoqueKeyPress(Sender: TObject; var Key: Char);
    procedure SeccaoKeyPress(Sender: TObject; var Key: Char);
    procedure CategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure FORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure MarcaKeyPress(Sender: TObject; var Key: Char);
    procedure SubGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure GrupoKeyPress(Sender: TObject; var Key: Char);
    procedure lEstoqueChange(Sender: TObject);
    procedure DBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure Grupo_TribButtonClick(Sender: TObject);
    procedure suiButton13Click(Sender: TObject);
    procedure Grupo_TribExit(Sender: TObject);
    procedure suiDBRadioGroup3Change(Sender: TObject);
    procedure bitbtn6Click(Sender: TObject);
    procedure dbt_codigoChange(Sender: TObject);
    procedure PcChange(Sender: TObject);
    procedure EvDBComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure DBEdit44Exit(Sender: TObject);
    procedure DBEdit46Exit(Sender: TObject);
    procedure DBEdit48Exit(Sender: TObject);
    procedure DBEdit52Exit(Sender: TObject);
    procedure DBEdit58Exit(Sender: TObject);
    procedure DBEdit61Exit(Sender: TObject);
    procedure AtualizaodePreos1Click(Sender: TObject);
    procedure MovimentarEstoque1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure NaturezadeOperaoCFOP1Click(Sender: TObject);
    procedure Inventrio1Click(Sender: TObject);
    procedure FDvGlowButton2Click(Sender: TObject);
    procedure button3Click(Sender: TObject);
    procedure FDvGlowButton5Click(Sender: TObject);
    procedure eserialChange(Sender: TObject);
    procedure wwDBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure brent_gravarClick(Sender: TObject);
    procedure FDvGlowButton3Click(Sender: TObject);
    procedure QRRENTABILIDADEBeforeDelete(DataSet: TDataSet);
    procedure QRRENTABILIDADEBeforeEdit(DataSet: TDataSet);
    procedure QRRENTABILIDADEBeforeInsert(DataSet: TDataSet);
    procedure FDvGlowButton4Click(Sender: TObject);
    procedure FDvGlowButton1Click(Sender: TObject);
    procedure FDvGlowButton6Click(Sender: TObject);
    procedure elocprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure elocprodutoButtonClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure suiDBEdit5Exit(Sender: TObject);
    procedure suiDBEdit14Exit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FDvGlowButton7Click(Sender: TObject);
    procedure Sds_c(Sender: TObject);
    procedure BtnAddProClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);

  private
    { Private declarations }
     
  public
    { Public declarations }
    Cod:Integer;
    bGrava :Boolean;
    preco_ant : Real;
    preco_custo_ant : Real;
    custo_medio_ant : Real;
    DecimalSeparator : Char;
   end;

var
  FormProdutos: TFormProdutos;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso, ConsGrupos,
  ConsSubGrupos, Unidades, ConsMarcas, ConsProdutos, Grupos, SubGrupos,
  Marcas, Fornecedores, secoes, categorias, Agregados,
  Similares, IniFiles, ConsProdSimilar, ModulodeDadosConsultas, LeitorSerial,
  CONSULTANCM, ConsCategoria, ConsSeccao, UCadLocaisEstoque,
  UConsLocaisEstoque, Ubibli1, UConsGRP, UGrupoTributacao, UaltPrecos,
  UAcertoEstoque, CFOP, Uinventario_rel, produto_serial_ficha,
  Produtos_grade, xloc_fornecedor, ConsCidades, UProdutosCaixa,
  CONSULTACEST;

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

procedure TFormProdutos.corFechado;
begin
   DBEdit1.Color:= $00E8E8E8;
   //Edit2.Color:= $00E8E8E8;
   db_nome.Color:= $00E8E8E8;
//   suiDBEdit2.Color:= $00E8E8E8;
   suiDBLookupComboBox1.Color:= $00E8E8E8;
   Grupo.Color:= $00E8E8E8;
   SubGrupo.Color:= $00E8E8E8;
   Marca.Color:= $00E8E8E8;
   FORNECEDOR.Color:= $00E8E8E8;
   Grupo2.Color:= $00E8E8E8;
   SubGrupo2.Color:= $00E8E8E8;
   Marca2.Color:= $00E8E8E8;
   FORNECEDOR2.Color:= $00E8E8E8;
   suiDBEdit1.Color:= $00E8E8E8;
   suiDBEdit3.Color:= $00E8E8E8;
   suiDBEdit5.Color:= $00E8E8E8;
   suiDBEdit4.Color:= $00E8E8E8;
   suiDBEdit12.Color:= $00E8E8E8;
   suiDBEdit14.Color:= $00E8E8E8;
   suiDBEdit11.Color:= $00E8E8E8;
   suiDBEdit6.Color:= $00E8E8E8;
   suiDBEdit8.Color:= $00E8E8E8;
   suiDBEdit16.Color:= $00E8E8E8;
   suiDBEdit15.Color:= $00E8E8E8;
   DBEdit2.Color:= $00E8E8E8;
   Categoria.Color:= $00E8E8E8;
   Seccao.Color:= $00E8E8E8;
   Seccao2.color:=$00E8E8E8;
   Categoria2.Color:=$00E8E8E8;
   lEstoque.color:=$00E8E8E8;
   lestoque2.Color:=$00E8E8E8;  
   DBImage1.Color:= $00E8E8E8;
       DBEDIT22.Color := $00E8E8E8;
  // Edit1.Color := $00E8E8E8;
   Edit3.Color := $00E8E8E8;
  // DBLookupComboBox1.Color := $00E8E8E8;
   dbmemo1.Color:= $00E8E8E8;
   dbmemo2.Color:= $00E8E8E8;
   suiDBEdit11.Color:= $00E8E8E8;
   DBEdit3.Color:= $00E8E8E8;
   DBEdit4.Color:= $00E8E8E8;
   DBEdit5.Color:= $00E8E8E8;
   DBDateEdit1.Color :=  $00E8E8E8;
   DBEdit12.Color:= $00E8E8E8;
   DBEdit13.Color:= $00E8E8E8;
   DBEdit15.Color:= $00E8E8E8;
   DBEdit16.Color:= $00E8E8E8;
   DBEdit17.Color:= $00E8E8E8;
   DBEdit18.Color:= $00E8E8E8;
   DBEdit19.Color:= $00E8E8E8;
   DBDateEdit2.Color:= $00E8E8E8;
   DBDateEdit3.Color:= $00E8E8E8;
   RxDBCalcEdit1.Color:= $00E8E8E8;
   DBEdit14.Color := $00E8E8E8;
   DBEdit20.Color := $00E8E8E8;
   DBEdit25.Color := $00E8E8E8;
   RxDBComboBox1.Color := $00E8E8E8;
   Grupo_Trib.Color := $00E8E8E8;
   DBEdit26.Color   := $00E8E8E8;
   DBLookupComboBox1.Color :=$00E8E8E8;
   EvDBNumEdit1.Color := $00E8E8E8;
   RxDBCalcEdit2.Color := $00E8E8E8;
   D_grupo_t.Color :=  $00E8E8E8;
   seccao2.Color :=  $00E8E8E8;
   Grupo_Trib.Color :=  $00E8E8E8;
   lEstoque.Color :=  $00E8E8E8;
   lEstoque2.Color :=  $00E8E8E8;
   Categoria.Color :=  $00E8E8E8;
   Categoria2.Color :=  $00E8E8E8;
   RxDBCalcEdit2.Color := $00E8E8E8;
   DBEdit26.Color := $00E8E8E8;

   DBEdit6.Color := $00E8E8E8;
   DBEdit7.Color := $00E8E8E8;
   DBEdit8.Color := $00E8E8E8;
   DBEdit9.Color := $00E8E8E8;
   DBEdit10.Color := $00E8E8E8;
   DBEdit11.Color := $00E8E8E8;
   DBEdit28.Color := $00E8E8E8;
   DBEdit29.Color := $00E8E8E8;
   DBEdit30.Color := $00E8E8E8;
   DBEdit31.Color := $00E8E8E8;
   DBEdit32.Color := $00E8E8E8;
   lEstoque.color :=$00E8E8E8;
   Grupo_Trib.Color := $00E8E8E8;
   DBEdit34.Color := $00E8E8E8;
   DBEdit35.Color := $00E8E8E8;

   end;

procedure TFormProdutos.corAberto;
   begin
   DBEdit1.Color:= clWhite;
   //Edit2.Color:= clWhite;
   db_nome.Color:= clWhite;
   DBEdit2.Color:= clWhite;
   suiDBLookupComboBox1.Color:= clWhite;
   Grupo.Color:= clWhite;
   SubGrupo.Color:= clWhite;
   Marca.Color:= clWhite;
   FORNECEDOR.Color:= clWhite;
  // Grupo2.Color:= clWhite;
  // SubGrupo2.Color:= clWhite;
  // Marca2.Color:= clWhite;
  // FORNECEDOR2.Color:= clWhite;
   suiDBEdit1.Color:= clWhite;
   suiDBEdit3.Color:= clWhite;
   suiDBEdit5.Color:= clWhite;
   suiDBEdit4.Color:= clWhite;
   suiDBEdit12.Color:= clWhite;
   suiDBEdit14.Color:= clWhite;
   suiDBEdit6.Color:= clWhite;
   suiDBEdit8.Color:= clWhite;
   suiDBEdit16.Color:= clWhite;
   suiDBEdit15.Color:= clWhite;
   DBEdit12.Color:= clWhite;
   DBImage1.Color:= clWhite;
   Seccao.color:=clWhite;
   Categoria.Color:=clWhite;
  // Seccao2.color:=clWhite;
  // Categoria2.Color:=clWhite;
   lEstoque.color:=clWhite;
  // lestoque2.Color:=clWhite;
   DBDateEdit2.Color:= clWhite;
   DBDateEdit3.Color:= clWhite;
   RxDBCalcEdit1.Color:= clWhite;
   DBEDIT22.Color := clWhite;
  // Edit1.Color := clWhite;
   Edit3.Color := clWhite;
  // DBLookupComboBox1.Color := clWhite;
   DBEDIT25.Color := clWhite;
   dbmemo1.Color:= clWhite;
   dbmemo2.Color:= clWhite;
   suiDBEdit11.Color:= clWhite;
   DBEdit3.Color:= clWhite;
   DBEdit4.Color:= clWhite;
   DBEdit5.Color:= clWhite;
   DBDateEdit1.Color :=  clWhite;
   DBEdit12.Color:= clWhite;
   DBEdit13.Color:= clWhite;
   DBEdit15.Color:= clWhite;
   DBEdit16.Color:= clWhite;
   DBEdit17.Color:= clWhite;
   DBEdit18.Color:= clWhite;
   DBEdit19.Color:= clWhite;
   DBEdit14.Color := clWhite;
   DBEdit20.Color := clWhite;
   RxDBComboBox1.color := clWhite;
   Grupo_Trib.Color := clWhite;
   DBEdit26.Color  := clWhite;
   DBLookupComboBox1.Color :=clWhite;
   EvDBNumEdit1.Color := clWhite;
   RxDBCalcEdit2.Color := clWhite;
 //  D_grupo_t.Color :=  clWhite;

   DBEdit6.Color := clWhite;
   DBEdit7.Color :=  clWhite;
   DBEdit8.Color :=  clWhite;
   DBEdit9.Color :=  clWhite;
   DBEdit10.Color :=  clWhite;
   DBEdit11.Color :=  clWhite;
   DBEdit28.Color :=  clWhite;
   DBEdit29.Color :=  clWhite;
   DBEdit30.Color :=  clWhite;
   DBEdit31.Color :=  clWhite;
   DBEdit32.Color :=  clWhite;
   DBEdit34.Color :=  clWhite;
   DBEdit35.Color :=  clWhite;
   lEstoque.color :=  clWhite;
   Grupo_Trib.Color := clWhite;
end;


procedure TFormProdutos.LerINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     ACBrLCB3.Porta := INI.ReadString('LEITOR','Porta', ACBrLCB3.Porta);
     ACBrLCB3.sufixo := INI.ReadString('LEITOR','Sulfixo',ACBrLCB3.Sufixo);
     ACBrLCB3.Device.Baud := INI.ReadInteger('LEITOR','baud',ACBrLCB3.Device.Baud);
     ACBrLCB3.ExcluirSufixo := INI.ReadBool('LEITOR','ExcluirSulfixo',ACBrLCB3.ExcluirSufixo);
     ACBrLCB3.Intervalo := INI.ReadInteger('LEITOR','Intervalo',ACBrLCB3.Intervalo);
     ACBrLCB3.PrefixoAExcluir:= ini.readString('LEITOR','Prefixo',ACBrLCB3.PrefixoAExcluir);
  finally
     INI.Free ;
  end ;
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


//=====================================
function DV(Codigo: String) : Integer;
var
  i, SomaPar : Integer;
begin
  SomaPar := 0;
  Result := 0;

  for i := 1 to 6 do
  begin
    Result := Result + StrToInt(Codigo[2*i-1]);
    SomaPar := SomaPar + StrToInt(Codigo[2*i]);
  end;
  Result := Result + 3 * SomaPar;
  Result := Ceil(Result/10)*10 - Result;
  end;


//===================================



procedure TFormProdutos.suiButton10Click(Sender: TObject);
BEGIN
Try
if FormSeccao=nil   then
    begin
     FormSeccao:=TFormSeccao.Create(self);
     FormSeccao.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;


procedure TFormProdutos.LocalizarGrupos(Sender: TObject);
begin
DM.SDS_Grupos.Open;
DM.SDS_Grupos.Refresh;
if (DM.SDS_Grupos.Locate('CODIGO',VarArrayOf([Grupo.Text]),[])) then
begin
Grupo.Clear;
Grupo2.Text:= DM.SDS_GruposDESCRICAO.Text;
Grupo.Text:= DM.SDS_GruposCodigo.AsString;

end else begin
FormPrincipal.MsgAtencao.HTMLText.Text:= 'Grupo Inexistente !!!';
FormPrincipal.MsgAtencao.Execute;
if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.ShowModal;
      end;
Grupo.Clear;
Grupo2.Text:= DM.SDS_GruposDESCRICAO.Text;
Grupo.Text:= DM.SDS_GruposCodigo.AsString;
DM.SDS_ProdutosNOME_SUBGRUPO.Clear;
DM.SDS_ProdutosCODIGO_SUBGRUPO.Clear;
SubGrupo.Clear;
SubGrupo2.Clear;
SubGrupo.SetFocus;
end;
end;

procedure TFormProdutos.LocalizarSubGrupos(Sender: TObject);
begin
DM.SDS_SubGrupos.Open;
DM.SDS_SubGrupos.Refresh;
if (DM.SDS_SubGrupos.Locate('CODIGO',VarArrayOf([SubGrupo.Text]),[])) then
begin
SubGrupo.Clear;
SubGrupo2.Text:= DM.SDS_SubGruposNome.Text;
SubGrupo.Text:= DM.SDS_SubGruposCodigo.AsString;
//Marca.SetFocus;
end else begin
FormPrincipal.MsgAtencao.HTMLText.Text  := 'Sub-Grupo Inexistente !!!';
FormPrincipal.MsgAtencao.Execute;
if FormConsSubGrupos=nil   then
    begin
    FormConsSubGrupos:=TFormConsSubGrupos.Create(self);
      FormConsSubGrupos.Show;
      end;
SubGrupo.Clear;
SubGrupo2.Text:= DM.SDS_SubGruposNome.Text;
SubGrupo.Text:= DM.SDS_SubGruposCodigo.AsString;
Marca.SetFocus;
end;
end;

procedure TFormProdutos.LocalizarMarca(Sender: TObject);
begin
DM.SDS_Marcas.Open;
DM.SDS_Marcas.Refresh;
if (DM.SDS_Marcas.Locate('CODIGO',VarArrayOf([Marca.Text]),[])) then
begin
Marca.Clear;
Marca2.Text:= DM.SDS_MarcasDESCRICAO.Text;
Marca.Text:= DM.SDS_MarcasCODIGO.AsString;
//FORNECEDOR.SetFocus;
end else begin
FormPrincipal.MsgAtencao.HTMLText.Text  := 'Marca Inexistente !!!';
FormPrincipal.MsgAtencao.Execute;
if FormConsMarcas=nil   then
    begin
    FormConsMarcas:=TFormConsMarcas.Create(self);
      FormConsMarcas.Show;
      end;
Marca.Clear;
Marca2.Text:= DM.SDS_MarcasDESCRICAO.Text;
Marca.Text:= DM.SDS_MarcasCODIGO.AsString;
FORNECEDOR.SetFocus;
end;
end;

procedure TFormProdutos.LocalizarFornecedores(Sender: TObject);
begin
DM.SDS_Fornecedores.Active:= False;
DM.SDS_Fornecedores.Active:= True;
If (DM.SDS_Fornecedores.Locate('CODIGO',VarArrayOf([Fornecedor.Text]),[])) then
begin
Fornecedor.Clear;
Fornecedor2.Text:= DM.SDS_FornecedoresNome.Text;
Fornecedor.Text:= DM.SDS_FornecedoresCODIGO.AsString;
end else begin
FormPrincipal.MsgAtencao.HTMLText.Text  := 'Fornecedor Inexistente !!!';
FormPrincipal.MsgAtencao.Execute;
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);
      Fornecedor.Clear;
Fornecedor2.Text:= DM.SDS_FornecedoresNome.Text;
Fornecedor.Text:= DM.SDS_FornecedoresCODIGO.AsString;
end;
end;


Procedure TFormProdutos.AtualizaManutencao;
begin
dbfirst.Enabled:= (DM.SDS_Produtos.State = dsBrowse);
dbprior.Enabled:= (DM.SDS_Produtos.State = dsBrowse);
dbnext.Enabled:= (DM.SDS_Produtos.State = dsBrowse);
DBlast.Enabled:= (DM.SDS_Produtos.State = dsBrowse);
BTNNOVO.Enabled:= (DM.SDS_Produtos.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Produtos.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (DM.SDS_Produtos.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Produtos.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Produtos.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Produtos.State = dsBrowse);
end;

procedure TFormProdutos.HabilitaPanel;
begin
pnldados.Enabled:= True;
Panel11.Enabled := True;
GroupBox3.Enabled := True;
GroupBox4.Enabled := True;
Panel4.Enabled := True;
Panel5.Enabled := True;
end;

procedure TFormProdutos.DesabilitaPanel;
begin
pnldados.Enabled:= False;
Panel11.Enabled := false;
GroupBox3.Enabled := false;
GroupBox4.Enabled := false;
Panel4.Enabled :=False;
Panel5.Enabled :=False;
end;

procedure TFormProdutos.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormProdutos.db_nomeEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormProdutos.db_nomeExit(Sender: TObject);
begin
     CorSaida(Sender);
if DM.SDS_PRODUTOS.State = dsInsert then
begin
 if dmc.SDS_Pdv.Locate('DESCRICAO',DB_NOME.Text, []) = True then
 BEGIN
 FormPrincipal.MsgInformacao.HTMLText.Text  := 'Existe um produto cadastrado com esta Descrição. Favor informar outra Descrição !!!';
 FormPrincipal.MsgInformacao.Execute;
 DB_NOME.Clear;
 DB_NOME.SetFocus;
  end;
end;
end;

procedure TFormProdutos.suiDBEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
if DM.SDS_PRODUTOS.State = dsInsert then
begin
 if dmc.SDS_PDV.Locate('REFERENCIA',DBEdit2.Text, []) = True then
 BEGIN
 FormPrincipal.MsgInformacao.HTMLText.Text  := 'Existe um produto cadastrado com esta Refencia. Favor Verifique !!!';
 FormPrincipal.MsgInformacao.Execute;
 DBEdit2.Clear;
 DBEdit2.SetFocus;
end;
end;
end;

procedure TFormProdutos.suiDBEdit3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit3Exit(Sender: TObject);
 var
custo,valor:DOUBLE;
lucro:Integer;
begin
IF suiDBEdit3.Text > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  suiDBEdit3.Text := '0';
 if Panel5.Enabled = True then  suiDBEdit3.SetFocus;
end ELSE

      if suiDBEdit3.text >='0' then
      begin
      custo:= DM.SDS_PRODUTOSPRECO_CUSTO.AsCurrency;
      lucro:=DM.SDS_PRODUTOSMARGEM_LUCRO.AsVariant;
      valor:=((custo*lucro)/100+custo);
      DM.SDS_ProdutosPRECO_VENDA.AsFloat:=(Valor);
     if Panel5.Enabled = True then  DBEdit14.SetFocus;
      end;

     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBComboBox2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBComboBox2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.DBDateEdit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.DBDateEdit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBComboBox3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBComboBox3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit4Exit(Sender: TObject);

var
custo,customedio:DOUBLE;
lucro, gasto1, gasto2, gasto3, gasto4, gasto5, gastototal: Real;
begin
  inherited;
IF SUIDBEdit4.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit4.Text := '0';
  if Panel5.Enabled = True then SUIDBEdit4.SetFocus;
end ELSE

     CorSaida(Sender);
     custo:= DM.SDS_PRODUTOSPRECO_CUSTO.AsCurrency;
     lucro:=DM.SDS_PRODUTOSDESCONTOS.AsCurrency;
     gasto1:=DM.SDS_PRODUTOSCOMISSAO.AsCurrency;
     gasto2:=DM.SDS_PRODUTOSICMS.AsCurrency;
     gasto3:=DM.SDS_PRODUTOSIPI_IRPJ.AsCurrency;
     gasto4:=DM.SDS_PRODUTOSFRETE.AsCurrency;
     gasto5:=DM.SDS_PRODUTOSOUTROS_IMPOSTOS.AsCurrency;
     gastototal:= (gasto1 + gasto2 + gasto3 + gasto4 + gasto5 - lucro);
     customedio:=(gastototal * custo)/100+custo;
     DM.SDS_ProdutosCUSTO_MEDIO.AsString:=FloatToStr(customedio);
end;

procedure TFormProdutos.suiDBEdit4Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit5Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit6Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit6Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
     IF SUIDBEdit6.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit6.Text := '0';
 // SUIDBEdit6.SetFocus;
end;
end;

procedure TFormProdutos.suiDBEdit7Exit(Sender: TObject);
var
custo,customedio:DOUBLE;
lucro, gasto1, gasto2, gasto3, gasto4, gasto5, gastototal:Integer;
begin
  inherited;
{IF SUIDBEdit7.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit7.Text := '0';
  SUIDBEdit7.SetFocus;
end ELSE



     CorSaida(Sender);
     custo:= DM.SDS_PRODUTOSPRECO_CUSTO.AsCurrency;
     lucro:=DM.SDS_PRODUTOSDESCONTOS.AsVariant;
     gasto1:=DM.SDS_PRODUTOSCOMISSAO.AsVariant;
     gasto2:=DM.SDS_PRODUTOSICMS.AsVariant;
     gasto3:=DM.SDS_PRODUTOSIPI_IRPJ.AsVariant;
     gasto4:=DM.SDS_PRODUTOSFRETE.AsVariant;
     gasto5:=DM.SDS_PRODUTOSOUTROS_IMPOSTOS.AsVariant;
     gastototal:= (gasto1 + gasto2 + gasto3 + gasto4 + gasto5 - lucro);
     customedio:=(gastototal * custo)/100+custo;
     DM.SDS_ProdutosCUSTO_MEDIO.AsString:=FloatToStr(customedio);   }
end;

procedure TFormProdutos.suiDBEdit7Enter(Sender: TObject);
begin
  inherited;
 //    CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit8Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit8Exit(Sender: TObject);
begin
  inherited;
  CorSaida(Sender);

end;

procedure TFormProdutos.DBComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.DBComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit9Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit9Exit(Sender: TObject);
var
custo,customedio:DOUBLE;
lucro, gasto1, gasto2, gasto3, gasto4, gasto5, gastototal:Integer;
begin
{  inherited;
IF SUIDBEdit9.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit9.Text := '0';
  SUIDBEdit9.SetFocus;
end ELSE


     CorSaida(Sender);
     custo:= DM.SDS_PRODUTOSPRECO_CUSTO.AsCurrency;
     lucro:=DM.SDS_PRODUTOSDESCONTOS.AsVariant;
     gasto1:=DM.SDS_PRODUTOSCOMISSAO.AsVariant;
     gasto2:=DM.SDS_PRODUTOSICMS.AsVariant;
     gasto3:=DM.SDS_PRODUTOSIPI_IRPJ.AsVariant;
     gasto4:=DM.SDS_PRODUTOSFRETE.AsVariant;
     gasto5:=DM.SDS_PRODUTOSOUTROS_IMPOSTOS.AsVariant;
     gastototal:= (gasto1 + gasto2 + gasto3 + gasto4 + gasto5 - lucro);
     customedio:=(gastototal * custo)/100+custo;
     DM.SDS_ProdutosCUSTO_MEDIO.AsString:=FloatToStr(customedio);  }
end;

procedure TFormProdutos.suiDBEdit10Enter(Sender: TObject);
begin
  inherited;
 //    CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit10Exit(Sender: TObject);
var
custo,customedio:DOUBLE;
lucro, gasto1, gasto2, gasto3, gasto4, gasto5, gastototal:Integer;
begin
{  inherited;
 IF SUIDBEdit10.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit10.Text := '0';
  SUIDBEdit10.SetFocus;
end ELSE


     CorSaida(Sender);
     custo:= DM.SDS_PRODUTOSPRECO_CUSTO.AsCurrency;
     lucro:=DM.SDS_PRODUTOSDESCONTOS.AsVariant;
     gasto1:=DM.SDS_PRODUTOSCOMISSAO.AsVariant;
     gasto2:=DM.SDS_PRODUTOSICMS.AsVariant;
     gasto3:=DM.SDS_PRODUTOSIPI_IRPJ.AsVariant;
     gasto4:=DM.SDS_PRODUTOSFRETE.AsVariant;
     gasto5:=DM.SDS_PRODUTOSOUTROS_IMPOSTOS.AsVariant;
     gastototal:= (gasto1 + gasto2 + gasto3 + gasto4 + gasto5 - lucro);
     customedio:=(gastototal * custo)/100+custo;
     DM.SDS_ProdutosCUSTO_MEDIO.AsString:=FloatToStr(customedio);  }
end;

procedure TFormProdutos.suiDBEdit11Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit11Exit(Sender: TObject);
begin
  inherited;
IF SUIDBEdit11.TEXT > '12' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit11.Text := '0';
  SUIDBEdit11.SetFocus;
end;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit12Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit12Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
          IF SUIDBEdit12.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit12.Text := '0';
  if Panel5.Enabled = True then  SUIDBEdit12.SetFocus;
end;
end;

procedure TFormProdutos.suiDBMemo1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBMemo1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.PageControl1Exit(Sender: TObject);
begin
Corsaida(Sender)
end;

procedure TFormProdutos.DBImage1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.DBImage1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit14Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit15Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit15Exit(Sender: TObject);
begin
  inherited;

IF SUIDBEdit15.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit15.Text := '0';
 if Panel5.Enabled = True then  SUIDBEdit15.SetFocus;
end;
     CorSaida(Sender);

end;

procedure TFormProdutos.suiDBEdit13Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit13Exit(Sender: TObject);

var
custo,customedio:DOUBLE;
lucro, gasto1, gasto2, gasto3, gasto4, gasto5, gastototal:Integer;
begin
{  inherited;
IF SUIDBEdit13.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit13.Text := '0';
  SUIDBEdit13.SetFocus;
end ELSE

     CorSaida(Sender);
     custo:= DM.SDS_PRODUTOSPRECO_CUSTO.AsCurrency;
     lucro:=DM.SDS_PRODUTOSDESCONTOS.AsVariant;
     gasto1:=DM.SDS_PRODUTOSCOMISSAO.AsVariant;
     gasto2:=DM.SDS_PRODUTOSICMS.AsVariant;
     gasto3:=DM.SDS_PRODUTOSIPI_IRPJ.AsVariant;
     gasto4:=DM.SDS_PRODUTOSFRETE.AsVariant;
     gasto5:=DM.SDS_PRODUTOSOUTROS_IMPOSTOS.AsVariant;
     gastototal:= (gasto1 + gasto2 + gasto3 + gasto4 + gasto5 - lucro);
     customedio:=(gastototal * custo)/100+custo;
     DM.SDS_ProdutosCUSTO_MEDIO.AsString:=FloatToStr(customedio);  }
end;

procedure TFormProdutos.suiDBEdit16Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit16Exit(Sender: TObject);
begin
  inherited;
       IF SUIDBEdit16.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit16.Text := '0';
  SUIDBEdit16.SetFocus;
end ELSE
     CorSaida(Sender);
     pc.ActivePageIndex:= 1;
end;

procedure TFormProdutos.DBDateEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.DBDateEdit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit25Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit25Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit26Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit26Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit17Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit17Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit18Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit18Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit19Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit19Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit20Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit20Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit30Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit30Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
      DM.SDS_PRODUTOSUNIDADE.Text  := DM.SDS_UnidadesCODIGO.Text;
      DM.sds_produtosDesc_unidade.Text  := DM.SDS_UnidadesABREVIATURA.Text;
end;

procedure TFormProdutos.suiDBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBMemo2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBMemo2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit23Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit23Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit24Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit24Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit27Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit27Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit28Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit28Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBLookupComboBox3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.suiDBEdit29Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit29Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.btnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
 FormPrincipal.MsgInformacao.HTMLText.Text  := 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso !!!';
 FormPrincipal.MsgInformacao.Execute;
End;


if FormPrincipal.Label3.Caption ='S'then
begin
  {DM.SDS_PRODUTOS.Active:= FALSE;
  DM.SDS_PRODUTOS.DataSet.CommandText:= 'select * from PRODUTOS where codigo <'+'-1'+'ORDER BY CODIGO asc';
  DM.SDS_PRODUTOS.Active:= TRUE;}

  
   pc.ActivePageIndex := 0;
   bGrava := True;

  // DM.SPC_Produtos.ExecProc;
  // Cod:= (DM.SPC_Produtos.ParamByName('CODIGO').AsInteger);
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS');
   DM.ProxCod.Open;

   DM.SDS_Produtos.Insert;
   DM.SDS_ProdutosCODIGO.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
   DM.SDS_PRODUTOSDESCRICAO.Text := '';
   DM.SDS_PRODUTOSCODIGO_BARRAS.text:= Formatar(dbt_codigo.Text,5,False,'0');
   DM.sds_PRODUTOSCOD_EMPRESA.Text:= dm.SDS_EmpresaCodigo.text;
   DM.SDS_ProdutosUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_ProdutosDATACAD.Text:= datetostr(now);
   DM.SDS_ProdutosESTOQUE_ATUAL.Text:= '0';
   DM.SDS_ProdutosESTOQUE.Text:= '0';
   DM.SDS_PRODUTOSESTOQUE_VENDIDO.Text:= '0';
   DM.SDS_ProdutosPRECO_CUSTO.Text:= '0';
   DM.SDS_ProdutosMARGEM_LUCRO.Text:= '0';
   DM.SDS_ProdutosMARGEM_LUCRO2.Text:= '0';
   DM.SDS_ProdutosCOMISSAO.Text:= '0';
   DM.SDS_ProdutosFRETE.Text:= '0';
   DM.SDS_ProdutosICMS.Text:= '0';
   DM.SDS_ProdutosIPI_IRPJ.Text:= '0';
   DM.SDS_ProdutosOUTROS_IMPOSTOS.Text:= '0';
   DM.SDS_ProdutosDESCONTOS.Text:= '0';
   DM.SDS_PRODUTOSDESCONTO_MAXIMO.Text:= '0';
   DM.SDS_PRODUTOSESTOQUE_MAXIMO.Text:= '0';
   DM.SDS_PRODUTOSESTOQUE_MINIMO.Text:= '0';
   DM.SDS_PRODUTOSATIVO.Text:='A';
   DM.SDS_PRODUTOSQUANT_ENTRADA.Text:= '1,000';
   DM.SDS_PRODUTOSQUANT_SAIDA.Text:= '1,000';
   DM.SDS_PRODUTOSPROD_SERV.Text:= 'P';
   DM.SDS_PRODUTOSFRACAO.Text:= '1';
   DM.SDS_PRODUTOSSIT_TRIBUTARIA.Text :='0,01';
   dm.SDS_PRODUTOSTIPO_ATIVIDADE.Text := '00';
   DM.SDS_PRODUTOSESTOQUE_FRACAO.Text:= '0';
   DM.SDS_PRODUTOSCOD_PRODUTO_ESTOQUE.Text:= '1';
   DM.SDS_PRODUTOSENABLE_NUMSERIE.Text := '0';
   DM.SDS_PRODUTOSCOMBUSTIVEL.Text := 'N';
   dm.SDS_PRODUTOSPRODUTO_PROPRIEDADE.Text := '0';
   dm.SDS_PRODUTOSMULTIP_FRACAO.Text := '1';


   HabilitaPanel;
   AtualizaManutencao;
   corAberto;
   suiButton4.Enabled:= TRUE;
   suiButton10.Enabled:= TRUE;
   suiButton5.Enabled:= True;
   suiButton6.Enabled:= True;
   suiButton7.Enabled:= True;
   suiButton8.Enabled:= True;
   suiButton9.Enabled:= True;
   suiButton3.Enabled:= True;
   suiButton1.Enabled:= True;
   suiButton2.Enabled:= True;
   edit3.Enabled := True;
   {if CheckBox3.Checked = True  then
   begin
     CheckBox3.Checked := False;
   end; }
   Categoria2.Clear;
   seccao2.Clear;
   lEstoque2.Clear;

   DBEdit1.SetFocus;
   DM.SDS_Produtos.Edit;

   IF DM.SDS_EmpresaTIPO_SEGMENTO.Text = '7' then
   qrProdutos_Imovel.Insert;
   end;
end;

procedure TFormProdutos.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin 
 FormPrincipal.MsgInformacao.HTMLText.Text  := 'O usuário conectado não possui autorização para Alterar Registro. Contate o Administrador do Sistema para obter acesso !!!';
 FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
//Try
 DM.SDS_PRODUTOS.Locate('CODIGO',dbt_codigo.Text, []);

 if not DM.SDS_PRODUTOS.eof then
 begin
     pc.ActivePageIndex := 0;

     bGrava := false;

     DM.SDS_Produtos.Edit;
     DM.sds_PRODUTOSCOD_EMPRESA.Text:= dm.SDS_EmpresaCodigo.text;

     preco_ant := dm.SDS_PRODUTOSPRECO_VENDA.AsFloat;
     preco_custo_ant := dm.SDS_PRODUTOSPRECO_CUSTO.AsFloat;
     custo_medio_ant := dm.SDS_PRODUTOSCUSTO_MEDIO.AsFloat;

     IF DM.SDS_EmpresaTIPO_SEGMENTO.Text = '7' then
     qrProdutos_Imovel.edit;
     
     AtualizaManutencao;
     HabilitaPanel;
     corAberto;
     Edit3.Enabled := False;
     suiButton5.Enabled:= False;
     DBEdit1.Enabled:= True;
     suiButton6.Enabled:= True;
     suiButton4.Enabled:= True;
     suiButton10.Enabled:= True;
     suiButton7.Enabled:= True;
     suiButton8.Enabled:= True;
     suiButton9.Enabled:= True;
     suiButton3.Enabled:= True;
     suiButton1.Enabled:= True;
     suiButton2.Enabled:= True;
     edit3.Enabled := False;
     suiButton12.Enabled:= True;
     suiButton13.Enabled:= True;

    { if CheckBox3.Checked = True  then
     begin
     CheckBox3.Checked := False;
     end;  }
     pnutricional.Enabled := true;
     pc.ActivePageIndex := 0;
     db_nome.SetFocus;
  // Except
   //MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   //MsgErro.Showmodal;
   end else
   begin
     ShowMessage('SELECIONE UM PRODUTO PARA ALTERAR');
   end;

end;
end;

procedure TFormProdutos.btnSalvarClick(Sender: TObject);
var
  codigo: string;
begin
     IF DM.SDS_EmpresaTIPO_SEGMENTO.Text = '7' then
     qrProdutos_Imovel.edit;
     
Application.ProcessMessages;
If DBEdit1.Text = '' then
begin
 MessageDlg('Informe o Codigo EAN do Produto', mtInformation,[mbok], 0);
DBEdit1.SetFocus;
Exit;
 Abort;
end else

if db_nome.Text = '' then
begin
 MessageDlg('Informe a Descrição do Produto', mtInformation,[mbOk], 0);
db_nome.SetFocus;
Exit;
Abort;
end else

if suiDBEdit14.Text = '' then
begin
 MessageDlg('Informe o Preço de Venda do Produto', mtInformation,[mbOk], 0);
 suiDBEdit14.SetFocus;
 Exit;
 Abort;
end else

{if suiDBEdit6.Text = '' then
begin
 MessageDlg('Informe o Valor Maximo de Desconto Para Este Produto', mtInformation,[mbOk], 0);
suiDBEdit6.SetFocus;
Exit;
                  Abort;
end else  }

if suiDBEdit8.Text = '' then
begin
 MessageDlg('Informe a Situação Tributária do Produto', mtInformation,[mbOk], 0);

suiDBEdit8.SetFocus;
Exit;
Abort;
end else
{
if suiDBEdit16.Text = '' then
begin
 MessageDlg('Informe o Estoque Máximo do Produto', mtInformation,[mbOk], 0);
suiDBEdit16.SetFocus;
Exit;
 Abort;
end else

if suiDBEdit15.Text = '' then
begin
 MessageDlg('Informe o Estoque Minimo do Produto', mtInformation,[mbOk], 0);
suiDBEdit15.SetFocus;
Exit;
                  Abort;
end else   }

if Categoria.Text = '' then
begin

 MessageDlg('Informe a Categoria para o do Produto', mtInformation,[mbOk], 0);

Categoria.SetFocus;
Exit;
                  Abort;
end else

if Seccao.Text = '' then
begin
 MessageDlg('Informe a Secção para o do Produto', mtInformation,[mbOk], 0);
Seccao.SetFocus;
Exit;
 Abort;
end else

if suiDBLookupComboBox1.Text = '' then
begin
 MessageDlg('Informe a Unidade do Produto', mtInformation,[mbOk], 0);
suiDBLookupComboBox1.SetFocus;
Exit;
                  Abort;
end else

if lEstoque.Text = '' then
begin
 MessageDlg('Informe o Local do estoque para o Produto', mtInformation,[mbOk], 0);
lEstoque.SetFocus;
Exit;
                  Abort;
end else

if Grupo_Trib.Text = '' then
begin
 MessageDlg('Informe o Grupo de tributação para o Produto', mtInformation,[mbOk], 0);
 Grupo_Trib.SetFocus;
 Exit;

 Abort;
end else
          if bGrava then
              begin
                 dmc.SDS_PDV.Active := False;
                 dmc.SDS_PDV.Active := true;
                 if DMC.SDS_PDV.Locate('CODIGO_BARRAS',DBEdit1.Text, []) = True then
                 BEGIN
                 MessageDlg('Existe um produto  cadastrado com este Código EAN. Favor informar outro Código EAN', mtInformation,[mbOk], 0);
                  DBEdit1.Clear;
                  DBEdit1.SetFocus;
                  Exit;
                  Abort;
                 end;
           end;

begin

DM.SDS_PRODUTOSDATAULTALTERACAO.AsDateTime := Date;

if IBTRPro.Active then
     IBTRPro.Commit;
  IBTRPro.StartTransaction;
  try
  //  try
      with IBSQLPro do
        begin
           close;
           sql.Clear;
           if bGrava then
              begin
              //   cod_pro.Text:= inttostr(prxcod('produto', 'cod_pro', dm.IBTransaction, dm.ibsqlcod));

                 sql.Add('INSERT INTO PRODUTOS(CODIGO, CODIGO_BARRAS, DESCRICAO, ABREVIADO, PRECO_CUSTO, MARGEM_LUCRO,'+
                         'COMISSAO, UNIDADE, FRETE, ICMS, IPI_IRPJ, OUTROS_IMPOSTOS, DESCONTOS, CLASS_FISCAL, SIT_TRIBUTARIA,'+
                         'CUSTO_MEDIO, PRECO_VENDA, DESCONTO_MAXIMO, CODIGO_GRUPO, CODIGO_SUBGRUPO, CODIGO_MARCA,  NOME_GRUPO,'+
                         'NOME_SUBGRUPO, NOME_MARCA, NOME_FORNECEDOR, CODIGO_FORNECEDORES, FOTO, ESTOQUE_ATUAL, ESTOQUE_VENDIDO,'+
                         'ESTOQUE, ESTOQUE_MINIMO, ESTOQUE_MAXIMO, DATACAD, USERCAD,  SECCAO, CATEGORIA, LOCALIZACAO,'+
                         'APLICACAO, ESP_COD_AUX, GARANTIA, BALANCA, ETIQUETA, ATIVO, REFERENCIA, COD_EMPRESA,  DESC_UNIDADE,'+
                         'PESOBRUTO, PESOLIQUIDO, FONETICO, DATAULTALTERACAO, CUSTOREPOSICAO, PRECO_ANT, PRECO_PROMOCAO, FLAG_PROMOCAO,'+
                         'DT_INICIO_PROMO, DT_FIM_PROMO, COD_LABORATORIO, LABORATORIO, PRINCIPIO_ATIVO, MED_CONTROLADO,  QTD_FRACIONADA,'+
                         'QTD_CAIXA, MED_GENERICO, LOTE_MED, VALIDADE, CHEK_BOX, PRECO_VENDA2, MARGEM_LUCRO2, VALIDADE_PRODUTO,'+
                         'PROD_SERV, UNIDADE_ENT, DESC_UNID_ENT, QUANT_SAIDA, QUANT_ENTRADA, ESTOQUE_FRACAO,  DATA_FABRICACAO,'+
                         'FRACAO, NCM_SH, COD_MS, CONTOLAESTOQUE, PRODUTOCOMPOSTO, TIPO_ATIVIDADE, COD_PRODUTO_ESTOQUE, CODIGO_LOCAL_ESTOQUE,'+
                         'LISTA_ABC, GRUPO_TRIBUTACAO, COMBUSTIVEL, COR, ENABLE_NUMSERIE, ID_PRODUTOS, COD_ANP,  CESTA,  ML_QUANT_BEB,'+
                         'UND_TRIB, CHASSI, COR_DESC, N_MOTOR, ANO_FAB, ANO_MOD_FAB, TIPO_VEIC, N_SERIE, COD_MODELO, ESPECIE_VEICULO,'+
                         'COD_COR_DENATRAN, TIPO_COMBUSTIVEL, VEICULO, USA_RENTABILIDADE, USA_SERIAL, USA_GRADE, PRODUTO_PROPRIEDADE, MULTIP_FRACAO,'+
                         'ALERTA_COPA, ALERTA_COZINHA, ANDROID_VISUALIZA, TEMPO_PREPARO, CODORIGINAL, COD_PACOTE, CEST)'+
                         ' VALUES (:CODIGO,:CODIGO_BARRAS,:DESCRICAO,:ABREVIADO,:PRECO_CUSTO,'+
                         ':MARGEM_LUCRO, :COMISSAO,:UNIDADE, :FRETE,:ICMS,:IPI_IRPJ,:OUTROS_IMPOSTOS,:DESCONTOS, :CLASS_FISCAL,:SIT_TRIBUTARIA,'+
                         ':CUSTO_MEDIO, :PRECO_VENDA, :DESCONTO_MAXIMO, :CODIGO_GRUPO,:CODIGO_SUBGRUPO, :CODIGO_MARCA, :NOME_GRUPO,'+
                         ':NOME_SUBGRUPO, :NOME_MARCA, :NOME_FORNECEDOR, :CODIGO_FORNECEDORES, :FOTO,:ESTOQUE_ATUAL, :ESTOQUE_VENDIDO,'+
                         ':ESTOQUE,:ESTOQUE_MINIMO,:ESTOQUE_MAXIMO, :DATACAD, :USERCAD, :SECCAO, :CATEGORIA,  :LOCALIZACAO,'+
                         ':APLICACAO, :ESP_COD_AUX, :GARANTIA, :BALANCA, :ETIQUETA, :ATIVO,:REFERENCIA,  :COD_EMPRESA,  :DESC_UNIDADE,'+
                         ':PESOBRUTO, :PESOLIQUIDO, :FONETICO, :DATAULTALTERACAO, :CUSTOREPOSICAO, :PRECO_ANT, :PRECO_PROMOCAO,:FLAG_PROMOCAO,'+
                         ':DT_INICIO_PROMO, :DT_FIM_PROMO,:COD_LABORATORIO,:LABORATORIO,:PRINCIPIO_ATIVO, :MED_CONTROLADO,  :QTD_FRACIONADA,'+
                         ':QTD_CAIXA, :MED_GENERICO, :LOTE_MED,:VALIDADE,:CHEK_BOX,:PRECO_VENDA2,:MARGEM_LUCRO2,  :VALIDADE_PRODUTO, :PROD_SERV,'+
                         ':UNIDADE_ENT,:DESC_UNID_ENT,:QUANT_SAIDA,:QUANT_ENTRADA,:ESTOQUE_FRACAO,:DATA_FABRICACAO,:FRACAO, :NCM_SH, :COD_MS,'+
                         ':CONTOLAESTOQUE, :PRODUTOCOMPOSTO, :TIPO_ATIVIDADE, :COD_PRODUTO_ESTOQUE, :CODIGO_LOCAL_ESTOQUE, :LISTA_ABC,:GRUPO_TRIBUTACAO,'+
                         ':COMBUSTIVEL, :COR, :ENABLE_NUMSERIE, :ID_PRODUTOS, :COD_ANP, :CESTA,:ML_QUANT_BEB, :UND_TRIB, :CHASSI, :COR_DESC,:N_MOTOR,'+
                         ':ANO_FAB, :ANO_MOD_FAB, :TIPO_VEIC,:N_SERIE,:COD_MODELO,:ESPECIE_VEICULO,:COD_COR_DENATRAN, :TIPO_COMBUSTIVEL,:VEICULO,'+
                         ':USA_RENTABILIDADE, :USA_SERIAL, :USA_GRADE, :PRODUTO_PROPRIEDADE, :MULTIP_FRACAO, :ALERTA_COPA, :ALERTA_COZINHA, :ANDROID_VISUALIZA, :TEMPO_PREPARO, :CODORIGINAL, :COD_PACOTE, :CEST)');

               formprincipal.log(codigo_usuario,'PRODUTOS',DM.SDS_PRODUTOSCODIGO.Text,'INCLUIU','INCLUSÃO DO PRODUTO Nº '+DM.SDS_PRODUTOSCODIGO.Text +' Nome: '+ dm.SDS_PRODUTOSDESCRICAO.text);
              end
           else
              begin
                 sql.Add('UPDATE PRODUTOS SET CODIGO_BARRAS = :CODIGO_BARRAS, DESCRICAO = :DESCRICAO, ABREVIADO = :ABREVIADO,  PRECO_CUSTO = :PRECO_CUSTO,'+
                         'MARGEM_LUCRO = :MARGEM_LUCRO, COMISSAO = :COMISSAO, UNIDADE = :UNIDADE, FRETE = :FRETE,  ICMS = :ICMS,  IPI_IRPJ = :IPI_IRPJ,   '+
                         'OUTROS_IMPOSTOS = :OUTROS_IMPOSTOS, DESCONTOS = :DESCONTOS, CLASS_FISCAL = :CLASS_FISCAL, SIT_TRIBUTARIA = :SIT_TRIBUTARIA,     '+
                         'CUSTO_MEDIO = :CUSTO_MEDIO, PRECO_VENDA = :PRECO_VENDA, DESCONTO_MAXIMO = :DESCONTO_MAXIMO, CODIGO_GRUPO = :CODIGO_GRUPO,       '+
                         'CODIGO_SUBGRUPO = :CODIGO_SUBGRUPO, CODIGO_MARCA = :CODIGO_MARCA, NOME_GRUPO = :NOME_GRUPO, NOME_SUBGRUPO = :NOME_SUBGRUPO,     '+
                         'NOME_MARCA = :NOME_MARCA, NOME_FORNECEDOR = :NOME_FORNECEDOR, CODIGO_FORNECEDORES = :CODIGO_FORNECEDORES,    FOTO = :FOTO,      '+
                         'ESTOQUE_MINIMO = :ESTOQUE_MINIMO, ESTOQUE_MAXIMO = :ESTOQUE_MAXIMO,  '+
                         'SECCAO = :SECCAO, CATEGORIA = :CATEGORIA, LOCALIZACAO = :LOCALIZACAO, APLICACAO = :APLICACAO,  ESP_COD_AUX = :ESP_COD_AUX,      '+
                         'GARANTIA = :GARANTIA, BALANCA = :BALANCA, ETIQUETA = :ETIQUETA, ATIVO = :ATIVO, REFERENCIA = :REFERENCIA, COD_EMPRESA = :COD_EMPRESA,'+
                         'DESC_UNIDADE = :DESC_UNIDADE, PESOBRUTO = :PESOBRUTO, PESOLIQUIDO = :PESOLIQUIDO, FONETICO = :FONETICO, DATAULTALTERACAO = :DATAULTALTERACAO,'+
                         'CUSTOREPOSICAO = :CUSTOREPOSICAO, PRECO_ANT = :PRECO_ANT, PRECO_PROMOCAO = :PRECO_PROMOCAO, FLAG_PROMOCAO = :FLAG_PROMOCAO,     '+
                         'DT_INICIO_PROMO = :DT_INICIO_PROMO, DT_FIM_PROMO = :DT_FIM_PROMO, COD_LABORATORIO = :COD_LABORATORIO, LABORATORIO = :LABORATORIO,'+
                         'PRINCIPIO_ATIVO = :PRINCIPIO_ATIVO, MED_CONTROLADO = :MED_CONTROLADO, QTD_FRACIONADA = :QTD_FRACIONADA,  QTD_CAIXA = :QTD_CAIXA, '+
                         'MED_GENERICO = :MED_GENERICO, LOTE_MED = :LOTE_MED, VALIDADE = :VALIDADE, CHEK_BOX = :CHEK_BOX, PRECO_VENDA2 = :PRECO_VENDA2,    '+
                         'MARGEM_LUCRO2 = :MARGEM_LUCRO2, VALIDADE_PRODUTO = :VALIDADE_PRODUTO, PROD_SERV = :PROD_SERV, UNIDADE_ENT = :UNIDADE_ENT,        '+
                         'DESC_UNID_ENT = :DESC_UNID_ENT, QUANT_SAIDA = :QUANT_SAIDA, QUANT_ENTRADA = :QUANT_ENTRADA,'+
                         'FRACAO = :FRACAO, NCM_SH = :NCM_SH, COD_MS = :COD_MS, CONTOLAESTOQUE = :CONTOLAESTOQUE,      '+
                         'PRODUTOCOMPOSTO = :PRODUTOCOMPOSTO, TIPO_ATIVIDADE = :TIPO_ATIVIDADE, COD_PRODUTO_ESTOQUE = :COD_PRODUTO_ESTOQUE, CODIGO_LOCAL_ESTOQUE = :CODIGO_LOCAL_ESTOQUE,'+
                         'LISTA_ABC = :LISTA_ABC, GRUPO_TRIBUTACAO = :GRUPO_TRIBUTACAO, COMBUSTIVEL = :COMBUSTIVEL, COR = :COR, ENABLE_NUMSERIE = :ENABLE_NUMSERIE,'+
                         'ID_PRODUTOS = :ID_PRODUTOS, COD_ANP = :COD_ANP, CESTA = :CESTA, ML_QUANT_BEB = :ML_QUANT_BEB, UND_TRIB = :UND_TRIB, CHASSI = :CHASSI,'+
                         'COR_DESC = :COR_DESC, N_MOTOR = :N_MOTOR, ANO_FAB = :ANO_FAB, ANO_MOD_FAB = :ANO_MOD_FAB, TIPO_VEIC = :TIPO_VEIC,N_SERIE = :N_SERIE,'+
                         'COD_MODELO = :COD_MODELO, ESPECIE_VEICULO = :ESPECIE_VEICULO, COD_COR_DENATRAN = :COD_COR_DENATRAN,  TIPO_COMBUSTIVEL = :TIPO_COMBUSTIVEL,'+
                         'VEICULO = :VEICULO,  USA_RENTABILIDADE = :USA_RENTABILIDADE,  USA_SERIAL = :USA_SERIAL, USA_GRADE = :USA_GRADE, PRODUTO_PROPRIEDADE = :PRODUTO_PROPRIEDADE,'+
                         'MULTIP_FRACAO = :MULTIP_FRACAO, ALERTA_COPA =:ALERTA_COPA, ALERTA_COZINHA =:ALERTA_COZINHA, ANDROID_VISUALIZA =:ANDROID_VISUALIZA, TEMPO_PREPARO =:TEMPO_PREPARO, '+
                         'CODORIGINAL =:CODORIGINAL, COD_PACOTE =:COD_PACOTE, CEST =:CEST WHERE  (CODIGO = :CODIGO)');

               formprincipal.log(codigo_usuario,'PRODUTOS',DM.SDS_PRODUTOSCODIGO.Text,'ALTEROU','ALTERAÇÃO DO PRODUTO Nº '+DM.SDS_PRODUTOSCODIGO.Text +' Nome: '+ dm.SDS_PRODUTOSDESCRICAO.text);

              end;


           Parambyname('CODIGO').AsInteger            := strtoint(dbt_codigo.Text);
           Parambyname('CODIGO_BARRAS').AsString      := DBEdit1.Text;
           Parambyname('DESCRICAO').AsString          := trim(db_nome.Text);
           Parambyname('ABREVIADO').Value             := null;
           Parambyname('PRECO_CUSTO').AsFloat         := suiDBEdit1.Value;
           Parambyname('MARGEM_LUCRO').AsFloat        := suiDBEdit3.Value;
           Parambyname('COMISSAO').AsFloat            := suiDBEdit5.Value;
           Parambyname('UNIDADE').AsInteger           := DM.SDS_UnidadesCODIGO.AsInteger;
           Parambyname('FRETE').AsFloat               := 0;
           Parambyname('ICMS').AsFloat                := 0;
           Parambyname('IPI_IRPJ').AsFloat            := 0;
           Parambyname('OUTROS_IMPOSTOS').AsFloat     := 0;
           Parambyname('DESCONTOS').AsFloat           := suiDBEdit4.Value;
           ParamByName('CLASS_FISCAL').Value          := null;
           ParamByName('SIT_TRIBUTARIA').AsString     := suiDBEdit8.Text;
           Parambyname('CUSTO_MEDIO').AsFloat         := suiDBEdit12.Value;
           Parambyname('PRECO_VENDA').AsFloat         := suiDBEdit14.Value;
           Parambyname('DESCONTO_MAXIMO').AsFloat     := suiDBEdit6.Value;

           if Grupo.Text > '' THEN
           Parambyname('CODIGO_GRUPO').AsInteger      :=StrToInt(Grupo.TEXT)
           else
           Parambyname('CODIGO_GRUPO').Value          :=null;

          if SubGrupo.Text >'' THEN
           Parambyname('CODIGO_SUBGRUPO').AsInteger   :=StrToInt(SubGrupo.TEXT)
          else
           Parambyname('CODIGO_SUBGRUPO').Value      := null;

           if Marca.Text >'' THEN
           Parambyname('CODIGO_MARCA').AsInteger      :=StrToInt(Marca.TEXT)
           ELSE
           Parambyname('CODIGO_MARCA').Value          :=null;

           Parambyname('NOME_GRUPO').AsString         := trim(grupo2.Text);
           Parambyname('NOME_SUBGRUPO').AsString      := trim(SubGrupo2.Text);
           Parambyname('NOME_MARCA').AsString         := trim(marca2.Text);
           Parambyname('NOME_FORNECEDOR').AsString    := trim(fornecedor2.Text);

           if FORNECEDOR.Text >'' THEN
           Parambyname('CODIGO_FORNECEDORES').AsInteger  :=StrToInt(FORNECEDOR.TEXT)
           else
           Parambyname('CODIGO_FORNECEDORES').Value   :=null;

           Parambyname('FOTO').Value                  := null;//DM.SDS_PRODUTOSFOTO.BlobType;

           IF bGrava = True then
           BEGIN
           Parambyname('ESTOQUE_ATUAL').AsFloat       := Edit3.Value;
           Parambyname('ESTOQUE_VENDIDO').value       := NULL;
           Parambyname('ESTOQUE').AsFloat             := Edit3.Value;
           end;

           Parambyname('ESTOQUE_MINIMO').AsFloat      := suiDBEdit15.Value;
           Parambyname('ESTOQUE_MAXIMO').AsFloat      := suiDBEdit16.Value;

           IF bGrava = True then
           BEGIN
           Parambyname('DATACAD').AsDate              := Date;
           Parambyname('USERCAD').AsString            := FormPrincipal.UserLogado;
         //  Parambyname('ULTIMACOMPRA').AsDate        := Date;
           end;

           Parambyname('SECCAO').AsInteger            :=StrToInt(Seccao.TEXT);
           Parambyname('CATEGORIA').AsInteger         :=StrToInt(Categoria.TEXT);

           Parambyname('LOCALIZACAO').AsString         := dbedit22.text;
           Parambyname('APLICACAO').AsString          := DBMemo2.Text;
           Parambyname('ESP_COD_AUX').AsString        := DBMemo1.Text;

           if suiDBEdit11.Text >'' THEN
           Parambyname('GARANTIA').AsInteger          :=StrToInt(suiDBEdit11.TEXT)
           else
           Parambyname('GARANTIA').Value              := null;

           IF CheckBox2.Checked = True then
           Parambyname('BALANCA').AsString           := 'S'
           else
           Parambyname('BALANCA').AsString           := 'N';

           IF CheckBox1.Checked = True then
           Parambyname('ETIQUETA').AsString          := 'S'
           else
           Parambyname('ETIQUETA').AsString          := 'N';

           IF suiDBRadioGroup1.ItemIndex = 0 then
           Parambyname('ATIVO').AsString             := 'A'
           else
           Parambyname('ATIVO').AsString             := 'I';

           Parambyname('REFERENCIA').AsString        := DBEdit2.Text;
           Parambyname('COD_EMPRESA').AsInteger      := StrToInt(DM.SDS_EmpresaCODIGO.TEXT);
           Parambyname('DESC_UNIDADE').AsString      := suiDBLookupComboBox1.Text;
           Parambyname('PESOBRUTO').AsFloat          := DBEdit4.Value;
           Parambyname('PESOLIQUIDO').AsFloat        := DBEdit5.Value;
           Parambyname('FONETICO').Value             := NULL;
           Parambyname('DATAULTALTERACAO').AsDate    := Date;
           Parambyname('CUSTOREPOSICAO').AsFLOAT     := 0;

           if bGrava = False then
           Parambyname('PRECO_ANT').AsFloat          := preco_ant
           else
           Parambyname('PRECO_ANT').Value            := null;

           Parambyname('PRECO_PROMOCAO').AsFloat     := RxDBCalcEdit1.value;

           IF suiDBCheckBox1.Checked = True then
           Parambyname('FLAG_PROMOCAO').AsString     := 'S'
           else
           Parambyname('FLAG_PROMOCAO').AsString     := 'N';

           Parambyname('DT_INICIO_PROMO').AsDate     :=  DM.SDS_PRODUTOSDT_INICIO_PROMO.AsDateTime;
           Parambyname('DT_FIM_PROMO').AsDate        :=  DM.SDS_PRODUTOSDT_FIM_PROMO.AsDateTime;

          if DBEdit12.text >'' then
           Parambyname('COD_LABORATORIO').AsInteger  :=   StrToInt(DBEdit12.TEXT)
           else
          Parambyname('COD_LABORATORIO').value       :=  null;

           Parambyname('LABORATORIO').AsString       :=  trim(DBEdit13.Text);
           Parambyname('PRINCIPIO_ATIVO').AsString   :=  trim(DBEdit3.Text);
           Parambyname('MED_CONTROLADO').AsString    :=  trim(DBEdit15.Text);
           Parambyname('QTD_FRACIONADA').AsFloat     :=  DBEdit18.Value;

           if dbedit17.text >'' then
           Parambyname('QTD_CAIXA').AsInteger        :=  StrToInt(DBEdit17.TEXT)
           else
           Parambyname('QTD_CAIXA').value            :=  null;

           Parambyname('MED_GENERICO').AsString      :=  trim(DBEdit15.Text);
           Parambyname('LOTE_MED').AsString          :=  trim(DBEdit19.Text);
           Parambyname('VALIDADE').AsDate            :=  DM.SDS_PRODUTOSVALIDADE.AsDateTime;
           Parambyname('CHEK_BOX').Value             :=  null;
           Parambyname('PRECO_VENDA2').AsFloat       :=   DBEdit20.Value;
           Parambyname('MARGEM_LUCRO2').AsFloat      :=   DBEdit14.Value;
           Parambyname('VALIDADE_PRODUTO').AsString  :=  trim(DBEdit21.Text);

           IF suiDBRadioGroup2.ItemIndex = 0 then
           Parambyname('PROD_SERV').AsString           := 'P'
           else
           Parambyname('PROD_SERV').AsString           := 'S';

           Parambyname('UNIDADE_ENT').VALUE            :=  Sds_unidadesCODIGO.AsInteger;
           Parambyname('DESC_UNID_ENT').Value          :=  DBLookupComboBox2.text;
           Parambyname('QUANT_SAIDA').Value            :=  NULL;
           Parambyname('QUANT_ENTRADA').Value          :=  NULL;

           IF bGrava = True then
           BEGIN
           Parambyname('ESTOQUE_FRACAO').AsFloat      := edit3.Value * DBEdit23.Value;
           Parambyname('DATA_FABRICACAO').AsDate       :=  Date;
           end;

           Parambyname('FRACAO').AsInteger             :=  StrToInt(DBEdit23.TEXT);
           Parambyname('NCM_SH').AsString              :=  trim(DBEdit25.Text);
           Parambyname('COD_MS').AsString              :=  trim(DBEdit24.Text);
           Parambyname('CONTOLAESTOQUE').AsString      :=  'True';
           Parambyname('PRODUTOCOMPOSTO').AsString     :=  'S';
           Parambyname('TIPO_ATIVIDADE').AsString      :=  DM.SDS_PRODUTOSTIPO_ATIVIDADE.TEXT;

           Parambyname('COD_PRODUTO_ESTOQUE').AsInteger    := 1;
           Parambyname('CODIGO_LOCAL_ESTOQUE').AsInteger   := StrToInt(lEstoque.TEXT);
           Parambyname('LISTA_ABC').AsString            :=  DM.SDS_PRODUTOSLISTA_ABC.TEXT;
           Parambyname('GRUPO_TRIBUTACAO').AsInteger    := StrToInt(Grupo_Trib.TEXT);
           IF suiDBRadioGroup3.ItemIndex = 0 then
           Parambyname('COMBUSTIVEL').AsString          := 'S'
           else
           Parambyname('COMBUSTIVEL').AsString          := 'N';
           IF DBEDIT7.TEXT >'' THEN
           Parambyname('COR').AsInteger                 := StrToInt(DBEDIT7.TEXT)
           else
           Parambyname('COR').Value                     := null;

           Parambyname('ENABLE_NUMSERIE').Value         := 0;

           Parambyname('ID_PRODUTOS').AsInteger         := strtoint(dbt_codigo.Text);

           if DBEdit26.TEXT >'' then
           Parambyname('COD_ANP').AsString              := DBEdit26.TEXT
           else
           Parambyname('COD_ANP').value              := null;

           IF suiDBCheckBox2.Checked = True then
           Parambyname('CESTA').AsString                := 'S'
           else
           Parambyname('CESTA').AsString                := 'N';

           Parambyname('ML_QUANT_BEB').AsFloat          := EvDBNumEdit1.Value;

           Parambyname('UND_TRIB').AsString             := DBLookupComboBox1.Text;
           Parambyname('CHASSI').AsString               := DBEdit6.TEXT;
           Parambyname('COR_DESC').AsString             := DBEdit8.TEXT;
           Parambyname('N_MOTOR').AsString               := DBEdit27.TEXT;
           Parambyname('ANO_FAB').AsString               := DBEdit9.TEXT;
           Parambyname('ANO_MOD_FAB').AsString           := DBEdit10.TEXT;
           Parambyname('TIPO_VEIC').AsString             := DBEdit28.TEXT;
           Parambyname('N_SERIE').AsString               := DBEdit11.TEXT;
           Parambyname('COD_MODELO').AsString            := DBEdit29.TEXT;
           Parambyname('ESPECIE_VEICULO').AsString       := DBEdit30.TEXT;
           Parambyname('COD_COR_DENATRAN').AsString      := DBEdit31.TEXT;
           Parambyname('TIPO_COMBUSTIVEL').AsString      := DBEdit32.TEXT;

           IF suiDBCheckBox3.Checked = True then
           Parambyname('VEICULO').AsString               := 'S'
           else
           Parambyname('VEICULO').AsString               := 'N';

           IF check_rentabilidade.Checked = True then
           Parambyname('USA_RENTABILIDADE').AsString     := '1'
           else
           Parambyname('USA_RENTABILIDADE').AsString     := '0';

            IF DBCheckBox3.Checked = True then
           Parambyname('USA_SERIAL').AsString            := '1'
           else
           Parambyname('USA_SERIAL').AsString            := '0';

           IF DBCheckBox1.Checked = True then
           Parambyname('USA_GRADE').AsString             := '1'
           else
           Parambyname('USA_GRADE').AsString             := '0';
           if RzDBComboBox1.ItemIndex = 0 then
           begin
           Parambyname('PRODUTO_PROPRIEDADE').AsString   :=  '0';
           end else
           if RzDBComboBox1.ItemIndex = 1 then
           begin
           Parambyname('PRODUTO_PROPRIEDADE').AsString   :=  '1';
           end else
           if RzDBComboBox1.ItemIndex = 2 then
           begin
           Parambyname('PRODUTO_PROPRIEDADE').AsString   :=  '2';
           end;
           Parambyname('MULTIP_FRACAO').AsString           :=  RxDBCalcEdit6.text;
           
           if DBCheckBox2.Checked = True then
           Parambyname('ALERTA_COPA').AsString           := 'S'
           else
           Parambyname('ALERTA_COPA').AsString           := 'N';

           if DBCheckBox4.Checked = True then
           Parambyname('ALERTA_COZINHA').AsString           := 'S'
           else
           Parambyname('ALERTA_COZINHA').AsString           := 'N';

           if DBCheckBox5.Checked = True then
           Parambyname('ANDROID_VISUALIZA').AsString           := 'S'
           else
           Parambyname('ANDROID_VISUALIZA').AsString           := 'N';

           Parambyname('TEMPO_PREPARO').AsString               :=  RzDBDateTimeEdit1.Text;
           Parambyname('CODORIGINAL').AsString                 :=  DBEdit34.Text;
           Parambyname('COD_PACOTE').AsString                  :=  DBEdit35.Text;
           Parambyname('CEST').AsString                        :=  DBEdit84.Text;

          ExecQuery;
        end;
      IBTRPro.CommitRetaining;
  {  except
      IBTRPro.Rollback;
      showmessage('Erro ao Gravar o Produto');
    end; }
  finally
    IBSQLPro.Close;
  end;

  IF DM.SDS_EmpresaTIPO_SEGMENTO.Text = '7' then
  begin
  qrProdutos_ImovelID_PRODUTOS.Text := dbt_codigo.text;
  qrProdutos_Imovel.Post;
  end;

   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(ID_OCORRENCIA) as N_CODIGO FROM PRODUTOS_PRECOS_LOG');
   DM.ProxCod.Open;

  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
    try
      with dm.logpro do
         begin
            close;
            parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
            Parambyname('ID_PRODUTO').AsInteger     := strtoint(dbt_codigo.Text);
            parambyname('ID_OCORRENCIA').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
            Parambyname('TIPO_ALTERACAO').AsInteger := 1;    //aleteração de produtos
            Parambyname('DATA_HORA').Asdatetime     := date;
            Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.Asinteger;
            Parambyname('P_COMPRA_ANT').Asfloat     := preco_custo_ant;
            Parambyname('P_CUSTO_ANT').Asfloat      := preco_custo_ant;
            Parambyname('P_CUSTO_MEDIO_ANT').Asfloat := custo_medio_ant;
            Parambyname('P_VENDA_ANT').Asfloat      := preco_ant;
            Parambyname('P_COMPRA_NOVO').Asfloat    := dm.sds_produtospreco_custo.asfloat;
            Parambyname('P_CUSTO_NOVO').Asfloat     := dm.sds_produtospreco_custo.asfloat;
            Parambyname('P_CUSTO_MEDIO_NOVO').Asfloat  := dm.sds_produtosCUSTO_MEDIO.asfloat;
            Parambyname('P_VENDA_NOVO').Asfloat     := dm.sds_produtospreco_venda.asfloat;
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

          AtualizaManutencao;
          DesabilitaPanel;
          suiButton5.Enabled:= False;
          suiButton6.Enabled:= False;
          suiButton7.Enabled:= False;
          suiButton8.Enabled:= False;
          suiButton9.Enabled:= False;
          suiButton3.Enabled:= False;
          suiButton1.Enabled:= False;
          suiButton2.Enabled:= False;
          suiButton4.Enabled:= False;
          suiButton10.Enabled:= False;
          suiButton12.Enabled:= False;
          suiButton13.Enabled:= False;
          DBEdit1.Enabled:= True;
          corFechado;

         btnCancelar.Enabled := false;
         btnEditar.Enabled := True;
         btnSalvar.Enabled := False;
         btnExcluir.Enabled := True;
         btnNovo.Enabled := True;

         if (dm.qrinfnutricional_produto.State = dsedit) or (dm.qrinfnutricional_produto.State = dsinsert) then
         dm.qrinfnutricional_produto.Post;
         dm.qrinfnutricional_produto.ApplyUpdates(0);

         codigo:= dbt_codigo.text;

         dm.SDS_PRODUTOS.close;
         dm.SDS_PRODUTOS.DataSet.CommandText := 'select * from PRODUTOS where codigo = '''+codigo+''' order by codigo';
         dm.SDS_PRODUTOS.Open;

         if bGrava = False then
         begin
         //
         end;
       //  dm.SDS_PRODUTOS.Active := False;

         bGrava := False;

        end;
AtualizaManutencao;
end;


procedure TFormProdutos.btnCancelarClick(Sender: TObject);
begin
Try

     DBEdit1.Clear;
     DM.SDS_PRODUTOSCODIGO_BARRAS.Clear;
     DM.SDS_Produtos.Cancel;
     IF DM.SDS_EmpresaTIPO_SEGMENTO.Text = '7' then
     qrProdutos_Imovel.Cancel;
 if DM.SDS_Produtos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     suiButton4.Enabled:= False;
     suiButton5.Enabled:= False;
     suiButton6.Enabled:= False;
     suiButton7.Enabled:= False;
     suiButton8.Enabled:= False;
     suiButton9.Enabled:= False;
     suiButton3.Enabled:= False;
     suiButton1.Enabled:= False;
     suiButton2.Enabled:= False;
     suiButton10.Enabled:= False;
     DBEdit1.Enabled:= True;

     corFechado;

   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;

procedure TFormProdutos.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin

 FormPrincipal.MsgInformacao.HTMLText.Text  := 'O usuário conectado não possui autorização para Excluir/Alterao o Registro. Contate o Administrador do Sistema para obter acesso !!!';
 FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
{MsgConfirmacao.Content:= 'Confirma Exclusão?';
if MsgConfirmacao.Showmodal = mryes then}
 if not DM.SDS_PRODUTOS.eof then
 begin
if Application.MESSAGEBOX('Confirma Exclusão??', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
 Begin
    formprincipal.log(codigo_usuario,'PRODUTOS',DM.SDS_PRODUTOScodigo.Text,'EXCLUIU','EXCLUSAO DO PRODUTO Nº '+DM.SDS_PRODUTOSCODIGO.Text +' Nome: '+ dm.SDS_PRODUTOSDESCRICAO.text);

  //  DM.SDS_Produtos.Delete;
  //  DM.SDS_Produtos.ApplyUpdates(0);
   if IBTRPro.Active then
     IBTRPro.Commit;
  IBTRPro.StartTransaction;
  try
    try
      with IBSQLPro do
        begin
           close;
           sql.Clear;
           SQL.Add('  DELETE FROM PRODUTOS WHERE (CODIGO = :CODIGO)');
           Parambyname('CODIGO').AsInteger := strtoint(dbt_codigo.Text);

      ExecQuery;
        end;
      IBTRPro.CommitRetaining;
    except
      IBTRPro.Rollback;
      showmessage('Erro ao excluir o  Produto já deve ter movimentação....');
    end;
  finally
    IBSQLPro.Close;
       dm.SDS_PRODUTOS.Close;
       btnCancelar.Enabled := false;
         btnEditar.Enabled := True;
         btnSalvar.Enabled := False;
         btnExcluir.Enabled := True;
         btnNovo.Enabled := True;
  end;

 // btnCancelar.Click;



    corFechado;
 end;
// if DM.SDS_Produtos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;

 end;
end else
begin
  ShowMessage('SELECIONE UM PRODUTO PARA EXCLUIR');
end;
END;
end;

procedure TFormProdutos._c(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);

//SetWindowPos(Handle,HWND_TOP,140,20,0,0,SWP_NOSIZE);
//DM.SDS_Produtos.Active:= False;
//1QDM.SDS_Produtos.Active:= True;
DM.SDS_Fornecedores.Active:= False;
DM.SDS_Grupos.Active:= False;
DM.SDS_SubGrupos.Active:= False;
DM.SDS_Marcas.Active:= False;
DM.SDS_Unidades.Active:= False;
//DMC.SDS_PDV.Active:= True;
DM.SDS_Unidade.Active:= false;

DM.SDS_Fornecedores.Active:= True;
DM.SDS_Grupos.Active:= True;
DM.SDS_SubGrupos.Active:= True;
DM.SDS_Marcas.Active:= True;
DM.SDS_Unidades.Active:= True;
DM.SDS_CATEGORIA.Active:=True;
DM.SDS_SECCAO.Active:=true;
dm.SDS_AGREGADOS.Active:= True;
DM.SDS_SIMILARES.Active:= True;
//DM.SDS_Produtos.Last;
DM.SDS_Unidade.Active:= True;
DESABILITAPANEL;
//IF DM.SDS_Produtos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;

Panel1.SetFocus;

if dm.SDS_CONFIGURACOESUSA_FRACAO.Text = 'S' then
begin
  DBEdit23.Enabled := True;
end;

if DM.SDS_EmpresaTIPO_SEGMENTO.Text = '7' then
tbImovel.TabVisible := True
else
tbImovel.TabVisible := False;

 dm.qrinfnutricional_produto.Open;
 Pc.ActivePageIndex := 0;
  dsImovel.DataSet.Open;

 btnEditar.enabled:= False;
 btnexcluir.Enabled:= False;
 btnCancelar.enabled:= False;
 btnSalvar.enabled:= False;
end;

procedure TFormProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormProdutos:=nil;
dsImovel.DataSet.Close;
end;

procedure TFormProdutos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if bGrava = True then
 begin
 if DM.SDS_Produtos.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  FormPrincipal.MsgInformacao.HTMLText.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  FormPrincipal.MsgInformacao.Execute;
    CanClose := False;
  end;
  end;  
end;

procedure TFormProdutos.suiButton1Click(Sender: TObject);
begin
Try
 if OpenDialog1.Execute then
  begin
    DBImage1.Picture.LoadFromFile(OpenDialog1.Filename);
  end;
  Except
  FormPrincipal.MsgInformacao.HTMLText.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
  FormPrincipal.MsgInformacao.Execute;
   end;
end;

procedure TFormProdutos.suiButton2Click(Sender: TObject);
begin
DM.SDS_ProdutosFOTO.Clear;
end;

procedure TFormProdutos.Novo1Click(Sender: TObject);
begin
btnNovoClick(Sender);
end;

procedure TFormProdutos.Editar1Click(Sender: TObject);
begin
btnEditarClick(Sender);
End;

procedure TFormProdutos.Cancelar1Click(Sender: TObject);
begin
btnCancelarClick(Sender);
end;

procedure TFormProdutos.Salvar1Click(Sender: TObject);
begin
btnSalvarClick(Sender);
end;

procedure TFormProdutos.Excluir1Click(Sender: TObject);
begin
btnExcluirClick(Sender);
end;

procedure TFormProdutos.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsProdutos=nil   then
    begin
      IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
       BEGIN
       ACBrLCB3.Desativar;
       end ;

      FormConsProdutos:=TFormConsProdutos.Create(self);
      FormConsProdutos.Showmodal;

        IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
        BEGIN
         ACBrLCB3.Ativar;
         end ;
      end;
       
DM.SDS_CATEGORIA.Open;
if Categoria.Text >'' THEN
if (DM.SDS_CATEGORIA.Locate('CODIGO',VarArrayOf([Categoria.Text]),[])) then
begin
Categoria2.Text:= DM.SDS_CATEGORIADESCRICAO.Text;
end;
DM.SDS_Seccao.Open;
if Seccao.Text >'' THEN
if (DM.SDS_Seccao.Locate('CODIGO',VarArrayOf([Seccao.Text]),[])) then
begin
Seccao2.Text:= DM.SDS_SeccaoDESCRICAO.Text;
end;

if lEstoque.Text >'' THEN
BEGIN
 EDIT1.Text:= lEstoque.Text;
lEstoque2.Text:= consulta('locais_estoque', Edit1, 'codigo', 'descricao', dm.IBTransaction, dm.qConsulta);
end;

DM.Sds_grupo_trib.Open;
if Grupo_Trib.Text >'' THEN
if (DM.Sds_grupo_trib.Locate('COD_GRUPO',VarArrayOf([Grupo_Trib.Text]),[])) then
begin
D_grupo_t.Text:= DM.Sds_grupo_tribDESCRICAO.Text;
end;

AtualizaManutencao;

      except
   //    ShowMessage('Erro ao Tentar Exibir o Formulário de pesquisa de produtos!!');
end;
end;

procedure TFormProdutos.Localizar1Click(Sender: TObject);
begin
btnLocalizarClick(Sender);
end;

procedure TFormProdutos.FormKeyDown(Sender: TObject; var Key: Word;
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
      if (ssalt in shift) and (Key = Vk_f2) then
      BEGIN
      SpeedButton2.Enabled := true;
      end;
{ if (Key=VK_F5) then
      begin
       dm.SDS_PRODUTOS.Refresh;
      end;  }
end;

procedure TFormProdutos.GrupoButtonClick(Sender: TObject);
begin
Try
if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
Grupo2.Text:= DM.SDS_GruposDESCRICAO.Text;
Grupo.Text:= DM.SDS_GruposCodigo.AsString;
SubGrupo.Clear;
SubGrupo2.Clear;
SubGrupo.SetFocus;
end;

procedure TFormProdutos.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
 Try
if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
Grupo.Clear;
Grupo2.Text:= DM.SDS_GruposDESCRICAO.Text;
Grupo.Text:= DM.SDS_GruposCodigo.AsString;
DM.SDS_ProdutosNOME_SUBGRUPO.Clear;
DM.SDS_ProdutosCODIGO_SUBGRUPO.Clear;
SubGrupo2.Clear;
SubGrupo.SetFocus;
end;

procedure TFormProdutos.GrupoExit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
IF GRUPO.TEXT > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  GRUPO.Text := '';
  GRUPO.SetFocus;
end ELSE


     if Grupo.Text = '' then
begin
SubGrupo.Clear;
SubGrupo2.Clear;
Marca.Clear;
Marca2.Clear;
end else begin
LocalizarGrupos(Sender);
end;
end;

procedure TFormProdutos.SubGrupoButtonClick(Sender: TObject);
begin
Try
if FormConsSubGrupos=nil   then
    begin
    FormConsSubGrupos:=TFormConsSubGrupos.Create(self);
      FormConsSubGrupos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
SubGrupo.Clear;
SubGrupo2.Text:= DM.SDS_SubGruposNome.Text;
SubGrupo.Text:= DM.SDS_SubGruposCodigo.AsString;
Marca.SetFocus;
end;

procedure TFormProdutos.SubGrupoExit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
IF SubGrupo.TEXT > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SubGrupo.Text := '';
  SubGrupo.SetFocus;
end ELSE
     if SubGrupo.Text = '' then
begin
//Marca.Clear;
//Marca2.Clear;
end else begin
LocalizarSubGrupos(Sender);
end;
end;

procedure TFormProdutos.suiDBEdit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.suiDBEdit1Exit(Sender: TObject);
begin
     CorSaida(Sender);

     
IF suiDBEdit1.value > 9999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  suiDBEdit1.Text := '0';
 if Panel5.Enabled = True then  suiDBEdit1.SetFocus;
end;

end;

procedure TFormProdutos.suiButton5Click(Sender: TObject);

var
  tam: Integer;
  s:string;
  begin
  Try
    tam := length(DBEdit1.Text);
    if tam = 13 then
    begin
      //Edit2.Text := IntToStr(DV(DBEdit1.Text));
      if DBEdit1.Text[13] = IntToStr(DV(DBEdit1.Text)) then
      begin
      FormPrincipal.MsgInformacao.HTMLText.text:= 'Código de Barras Correto';
      FormPrincipal.MsgInformacao.Execute;

      DBEdit2.SetFocus;
      end
      else begin
      FormPrincipal.MsgAtencao.HTMLText.text:= 'Código de Barras Incorreto !';
      FormPrincipal.MsgAtencao.Execute;
      DBEdit1.SetFocus;
      end;
      end
      else
      begin
      FormPrincipal.MsgAtencao.HTMLText.text:= 'Deve Conter 13 Dígitos !';
      FormPrincipal.MsgAtencao.Execute;
      DBEdit1.SetFocus;
    end;
    Except
   FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgErro.Execute;

  end;
end;

procedure TFormProdutos.suiButton6Click(Sender: TObject);
begin
IF FormPrincipal.CUnidades = 'S' THEN
BEGIN
Try
if FormUnidades=nil   then
    begin
     FormUnidades:=TFormUnidades.Create(self);
      FormUnidades.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormProdutos.GrupoEnter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.SubGrupoEnter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.MarcaEnter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.MarcaExit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
IF mARCA.TEXT > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  mARCA.Text := '';
  Marca.SetFocus;
end ELSE

if Marca.Text = '' then
begin
Marca2.Clear;
end else begin
LocalizarMarca(Sender);
end;
end;

procedure TFormProdutos.ComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.ComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.ComboBox2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.ComboBox2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormProdutos.MarcaButtonClick(Sender: TObject);
begin
Try
if FormConsMarcas=nil   then
    begin
    FormConsMarcas:=TFormConsMarcas.Create(self);
      FormConsMarcas.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
Marca.Clear;
 Marca2.Text:= DM.SDS_MarcasDESCRICAO.Text;
 Marca.Text:= DM.SDS_MarcasCODIGO.AsString;
FORNECEDOR.SetFocus;
end;

procedure TFormProdutos.suiButton7Click(Sender: TObject);
begin
IF FormPrincipal.CGrupos = 'S' THEN
BEGIN
Try
if FormGrupos=nil   then
    begin
     FormGrupos:=TFormGrupos.Create(self);
      FormGrupos.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormProdutos.suiButton8Click(Sender: TObject);
begin
IF FormPrincipal.CSubGrupos = 'S' THEN
BEGIN
Try
if FormSubGrupos=nil   then
    begin
     FormSubGrupos:=TFormSubGrupos.Create(self);
      FormSubGrupos.Showmodal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormProdutos.suiButton9Click(Sender: TObject);
begin
IF FormPrincipal.CMarcas = 'S' THEN
BEGIN
Try
if FormMarcas=nil   then
    begin
     FormMarcas:=TFormMarcas.Create(self);
      FormMarcas.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormProdutos.FORNECEDOREnter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormProdutos.FORNECEDORExit(Sender: TObject);
begin
 inherited;
     CorSaida(Sender);
IF FORNECEDOR.Text > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  FORNECEDOR.Text := '';
  FORNECEDOR.SetFocus;
end ELSE


     if FORNECEDOR.Text = '' then
begin
FORNECEDOR2.Clear;
end else begin
LocalizarFORNECEDORES(Sender);
end;
end;

procedure TFormProdutos.FORNECEDORButtonClick(Sender: TObject);
begin
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);

FORNECEDOR.Clear;
FORNECEDOR2.Text:= DM.SDS_FornecedoresNOME.Text;
FORNECEDOR.Text:= DM.SDS_FornecedoresCODIGO.AsString;
SUIDBEDIT15.SetFocus;
end;

procedure TFormProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;    

end;

procedure TFormProdutos.suiButton3Click(Sender: TObject);
begin
IF FormPrincipal.CFornecedores = 'S' THEN
BEGIN
Try
if FormFornecedores=nil   then
    begin
     FormFornecedores:=TFormFornecedores.Create(self);
     FormFornecedores.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormProdutos.DBEdit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
if DM.SDS_PRODUTOS.State = dsInsert then
begin
  DMC.SDS_PDV.Active := false;
  DMC.SDS_PDV.DataSet.CommandText:= 'select * from produtos where  CODIGO_BARRAS like ' + #39 + '%' + DBEdit1.Text + '%' + #39+'ORDER BY codigo';
  DMC.SDS_PDV.Active := True;

 if DMC.SDS_PDV.Locate('CODIGO_BARRAS',DBEdit1.Text, []) = True then
 BEGIN
  //MsgInformacao.Text:= 'Existe um produto  cadastrado com este Código EAN. Favor informar outro Código EAN!!!';
  //MsgInformacao.ShowModal;
  Application.MESSAGEBOX('Atenção!!! Existe um produto  cadastrado com este Código EAN. Favor informar outro Código EAN!!!', 'Confirmar', MB_ICONQUESTION + MB_OK + MB_DEFBUTTON1);
  DBEdit1.Clear;
  DM.SDS_PRODUTOSCODIGO_BARRAS.Clear;
  DBEdit1.SetFocus;
  end;
end;
end;

procedure TFormProdutos.DBEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
DM.SDS_PRODUTOS.Edit;
end;
procedure TFormProdutos.suiButton4Click(Sender: TObject);
begin
// IF FormPrincipal.CCategorias = 'S' THEN
BEGIN
Try
if FormCategorias=nil   then
    begin
     FormCategorias:=TFormCategorias.Create(self);
     FormCategorias.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
// end ELSE BEGIN
// FormPrincipal.MSG_NOT.Show;
end;
end;

procedure TFormProdutos.BtnRelacionarClick(Sender: TObject);
begin
Try
if FormAgregados=nil   then
    begin
    FormAgregados := TFormAgregados.Create(self);
      FormAgregados.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormProdutos.suiDBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
 if Key in [',','.'] then
     Key := DecimalSeparator ;
end;

procedure TFormProdutos.DBEdit14Exit(Sender: TObject);
  var
custo,valor:DOUBLE;
lucro:Integer;
begin

IF DBEdit14.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  dBEdit14.Text := '0';
  if Panel5.Enabled = True then DBEdit14.SetFocus;
end ;
     
      IF DBEdit14.Text >='0'  then
      begin
      custo:= DM.SDS_PRODUTOSPRECO_CUSTO.AsCurrency;
      lucro:=DM.SDS_PRODUTOSMARGEM_LUCRO2.AsVariant;
      valor:=((custo*lucro)/100+custo);
      DM.SDS_ProdutosPRECO_VENDA2.AsString:=FloatToStr(Valor);
    if Panel5.Enabled = True then   suiDBEdit5.SetFocus;
      end;

     CorSaida(Sender);

end;

procedure TFormProdutos.DBLookupComboBox1Exit(Sender: TObject);
begin
  CorSaida(SENDER);
  DM.SDS_PRODUTOSUNIDADE_ENT.Text  := DM.SDS_UnidadesCODIGO.Text;
  DM.SDS_PRODUTOSDESC_UNID_ENT.Text  := DM.SDS_UnidadesABREVIATURA.Text;
end;


procedure TFormProdutos.FormCreate(Sender: TObject);
begin
  DM.SDS_PRODUTOS.Active:= FALSE;
  DM.SDS_PRODUTOS.DataSet.CommandText:= 'select * from PRODUTOS where codigo <' +'-1' +'ORDER BY CODIGO asc';
  DM.SDS_PRODUTOS.Active:= TRUE;

  Sds_unidades.Open;

  DM.Sds_Grupo_trib.Open;

  IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
  BEGIN
  Lerini;
  ACBrLCB3.Ativar;
  end;
end;

procedure TFormProdutos.ACBrLCB3LeCodigo(Sender: TObject);
begin
// lUltimaLeitura.Caption := Converte1(ACBrLCB1.UltimaLeitura ) ;
  DBEdit1.Clear;
  if not ACBrLCB3.UsarFila then
     Vende(Sender)
  else
   dbEdit1.Assign( ACBrLCB3.Fila );
end;

procedure TFormProdutos.Vende;
begin

  DBEdit1.Text := ACBrLCB3.UltimoCodigo;

  //suiButton3Click(Sender);

end;


procedure TFormProdutos.Edit3Exit(Sender: TObject);
begin
IF Edit3.Value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  Edit3.Text := '0';
  Edit3.SetFocus;
end ELSE
DM.SDS_PRODUTOS.Edit;
dm.SDS_PRODUTOSESTOQUE_ATUAL.AsFloat := StrToFloatDef(Edit3.Text,0.00);
end;

procedure TFormProdutos.suiButton11Click(Sender: TObject);
begin
 DM.SDS_NCM.Active := False;
 DM.SDS_NCM.Active := True;
 DM.SDS_NCM.Filtered := False;
Try
if FormConsNcm=nil   then
    begin
     FormConsNcm:=TFormConsNcm.Create(self);
      FormConsNcm.Showmodal;
      DM.SDS_PRODUTOSNCM_SH.Text := DM.SDS_NCMCODIGO_NCM.Text;
      dbedit25.SetFocus;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormProdutos.DbSeccaoEnter(Sender: TObject);
begin
CorEntrada(sender);
end;

procedure TFormProdutos.DbSeccaoExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormProdutos.RxDBComboBox1Enter(Sender: TObject);
begin
CorEntrada(sender);
end;

procedure TFormProdutos.RxDBComboBox1Exit(Sender: TObject);
begin
CorSaida(Sender);
suiDBEdit1.SetFocus;
end;

procedure TFormProdutos.DBcategoriaEnter(Sender: TObject);
begin
CorEntrada(sender);
end;

procedure TFormProdutos.DBcategoriaExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormProdutos.DBEdit20Enter(Sender: TObject);
begin
CorSaida(SENDER);
end;

procedure TFormProdutos.DBEdit4Exit(Sender: TObject);
begin
     IF DBEdit4.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  DBEdit4.Text := '0';
  DBEdit4.SetFocus;
end else
CorSaida(Sender);
end;

procedure TFormProdutos.DBEdit5Exit(Sender: TObject);
begin
     IF DBEdit5.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  DBEdit5.Text := '0';
  DBEdit5.SetFocus;
end else
CorSaida(Sender);
end;

procedure TFormProdutos.DBEdit21Exit(Sender: TObject);
begin
{IF DBEdit21.TEXT > '12' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  DBEdit21.Text := '0';
  DBEdit21.SetFocus;
end else }
CorSaida(Sender);
end;

procedure TFormProdutos.RxDBCalcEdit1Exit(Sender: TObject);
begin
     IF RxDBCalcEdit1.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  RxDBCalcEdit1.Text := '0';
  RxDBCalcEdit1.SetFocus;
end else
CorSaida(Sender);
end;

procedure TFormProdutos.DBEdit23Exit(Sender: TObject);
begin
     IF DBEdit23.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  DBEdit23.Text := '1';
  DBEdit23.SetFocus;
end else
CorSaida(Sender);
end;

procedure TFormProdutos.DBEdit15Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormProdutos.DBEdit16Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormProdutos.DBEdit17Exit(Sender: TObject);
begin
     IF DBEdit17.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  DBEdit17.Text := '0';
  DBEdit17.SetFocus;
end else
CorSaida(Sender);
end;

procedure TFormProdutos.DBEdit18Exit(Sender: TObject);
begin
     IF DBEdit18.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  DBEdit18.Text := '1';
  DBEdit18.SetFocus;
end else
CorSaida(Sender);
end;

procedure TFormProdutos.DBEdit19Exit(Sender: TObject);
begin
CorSaida(SENDER);
end;

procedure TFormProdutos.DBEdit14Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormProdutos.DBEdit22Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormProdutos.DBEdit12Exit(Sender: TObject);
begin
IF DBEdit12.TEXT > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  DBEdit12.Text := '1';
  DBEdit12.SetFocus;
end else
CorSaida(Sender);
end;

procedure TFormProdutos.DBEdit12Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormProdutos.REdit17Enter(Sender: TObject);
begin
CorEntrada(SENDER);
end;

procedure TFormProdutos.DBEdit5Enter(Sender: TObject);
begin
 CorEntrada(SENDER);
end;

procedure TFormProdutos.CategoriaButtonClick(Sender: TObject);
begin
 Try
if FormConscategoria=nil   then
    begin
    FormConscategoria:=TFormConscategoria.Create(self);
      FormConscategoria.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
Categoria.Clear;
categoria2.Text:= DM.SDS_CATEGORIADESCRICAO.Text;
Categoria.Text:= DM.SDS_CATEGORIACODIGO.AsString;
Seccao.SetFocus;
end;

procedure TFormProdutos.CategoriaEnter(Sender: TObject);
begin
CorEntrada(sender);
end;

procedure TFormProdutos.CategoriaExit(Sender: TObject);
begin
CorSaida(Sender);
IF Categoria.TEXT > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  Categoria.Text := '';
  Categoria.SetFocus;
end ELSE

if Categoria.Text = '' then
begin
Categoria.Clear;
end else
begin
DM.SDS_CATEGORIA.Open;
DM.SDS_CATEGORIA.Refresh;
if (DM.SDS_CATEGORIA.Locate('CODIGO',VarArrayOf([Categoria.Text]),[])) then
begin
Categoria.Clear;
Categoria2.Text:= DM.SDS_CATEGORIADESCRICAO.Text;
Categoria.Text:= DM.SDS_CATEGORIACODIGO.AsString;
//Seccao.SetFocus;
end else
begin
FormPrincipal.MsgAtencao.HTMLText.text:= 'Categoria Inexistente !!!';
FormPrincipal.MsgAtencao.Execute;
if FormConsCategoria=nil   then
    begin
    FormConsCategoria:=TFormConsCategoria.Create(self);
      FormConsCategoria.Showmodal;
      end;
categoria.Clear;
Categoria2.Text:= DM.SDS_CATEGORIADESCRICAO.Text;
Categoria.Text:= DM.SDS_CATEGORIACODIGO.AsString;
Seccao.SetFocus;
end;
end;
end;

procedure TFormProdutos.SeccaoButtonClick(Sender: TObject);
begin
try
if FormConsseccao=nil   then
    begin
    FormConsseccao:=TFormConsseccao.Create(self);
      FormConsseccao.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
Seccao.Clear;
seccao2.Text:= DM.SDS_SECCAODESCRICAO.Text;
Seccao.Text:= DM.SDS_SECCAOCODIGO.AsString;
lEstoque.SetFocus;
end;

procedure TFormProdutos.SeccaoEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormProdutos.SeccaoExit(Sender: TObject);
begin
CorSaida(Sender);
IF Seccao.TEXT > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  Seccao.Text := '';
  Seccao.SetFocus;
end ELSE

if Seccao.Text = '' then
begin
Seccao.Clear;
end else
begin
DM.SDS_Seccao.Open;
DM.SDS_Seccao.Refresh;
if (DM.SDS_Seccao.Locate('CODIGO',VarArrayOf([Seccao.Text]),[])) then
begin
Seccao.Clear;
Seccao2.Text:= DM.SDS_SeccaoDESCRICAO.Text;
Seccao.Text:= DM.SDS_SeccaoCODIGO.AsString;
//lEstoque.SetFocus;
end else
begin
FormPrincipal.MsgAtencao.HTMLText.text:= 'Categoria Inexistente !!!';
FormPrincipal.MsgAtencao.Execute;
if FormConsSeccao=nil   then
    begin
    FormConsSeccao:=TFormConsSeccao.Create(self);
      FormConsSeccao.Showmodal;
      end;
Seccao.Clear;
Seccao2.Text:= DM.SDS_SeccaoDESCRICAO.Text;
Seccao.Text:= DM.SDS_SeccaoCODIGO.AsString;
lEstoque.SetFocus;
end;
end;

end;

procedure TFormProdutos.suiButton12Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCadLocaisEstoque, FrmCadLocaisEstoque);
  FrmCadLocaisEstoque.Tag:= 0;
  FrmCadLocaisEstoque.ShowModal;
end;

procedure TFormProdutos.lEstoqueButtonClick(Sender: TObject);
begin
 try
if FrmConsLocaisEstoque=nil   then
    begin
    FrmConsLocaisEstoque:=TFrmConsLocaisEstoque.Create(self);
     FrmConsLocaisEstoque.tag :=1;
      FrmConsLocaisEstoque.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormProdutos.lEstoqueExit(Sender: TObject);
begin
 CorSaida(Sender);

//  lEstoque2.Text:= consulta('motivo_acerto', edit1, 'cod_mot', 'nome_mot', dm.IBTransaction, dm.qConsulta);
  if lEstoque.Text >'' then
  BEGIN
  lEstoque2.Text:= consulta('locais_estoque', Edit1, 'codigo', 'descricao', dm.IBTransaction, dm.qConsulta);
  if lEstoque2.Text = '' then
     begin
        showmessage('Motivo de Acerto não Cadastrado');
        lEstoque.SetFocus;
     end;
end;
end;

procedure TFormProdutos.lEstoqueKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFormProdutos.SeccaoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFormProdutos.CategoriaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFormProdutos.FORNECEDORKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFormProdutos.MarcaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFormProdutos.SubGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFormProdutos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 // if not (key in ['0'..'9', #13, #8]) then
   if not (Key in ['a'..'z', 'A'..'Z', '0'..'9', '-', #8, #13])then
     key:= #0;
end;

procedure TFormProdutos.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFormProdutos.GrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFormProdutos.lEstoqueChange(Sender: TObject);
begin
edit1.Text := lEstoque.Text;
end;

procedure TFormProdutos.DBNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin

DM.SDS_CATEGORIA.Open;
if Categoria.Text >'' THEN
if (DM.SDS_CATEGORIA.Locate('CODIGO',VarArrayOf([Categoria.Text]),[])) then
begin
Categoria2.Text:= DM.SDS_CATEGORIADESCRICAO.Text;
end;
DM.SDS_Seccao.Open;
if Seccao.TEXT >'' THEN
if (DM.SDS_Seccao.Locate('CODIGO',VarArrayOf([Seccao.Text]),[])) then
begin
Seccao2.Text:= DM.SDS_SeccaoDESCRICAO.Text;
end;

if lEstoque.TEXT >'' THEN
BEGIN
 EDIT1.Text:= lEstoque.Text;
lEstoque2.Text:= consulta('locais_estoque', Edit1, 'codigo', 'descricao', dm.IBTransaction, dm.qConsulta);
end;

DM.Sds_grupo_trib.Open;
if Grupo_Trib.Text >'' THEN
if (DM.Sds_grupo_trib.Locate('COD_GRUPO',VarArrayOf([Grupo_Trib.Text]),[])) then
begin
D_grupo_t.Text:= DM.Sds_grupo_tribDESCRICAO.Text;
end;
end;

procedure TFormProdutos.Grupo_TribButtonClick(Sender: TObject);
begin
try
if FormConsGrupoT=nil   then
    begin
    FormConsGrupoT:=TFormConsGrupoT.Create(self);
    // FormConsGrupoT.tag :=1;
      FormConsGrupoT.ShowModal;
      Grupo_Trib.Text := DM.Sds_Grupo_tribCod_grupo.text;
      D_grupo_t.Text :=  DM.Sds_Grupo_tribDescricao.text;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormProdutos.suiButton13Click(Sender: TObject);
begin
  Try
if FormTributacao=nil   then
    begin
    FormTributacao:=TFormTributacao.Create(self);
      FormTributacao.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormProdutos.Grupo_TribExit(Sender: TObject);
begin
CorSaida(Sender);
  {dm.cds_Grupo_trib.Close;
  with dm.Qry_Grupo_trib do
     begin
        close;
        sql.Clear;
        sql.add('SELECT * FROM GRUPO_TRIBUTACAO');
        sql.add(' WHERE COD_GRUPO = ' + Grupo_Trib.Text);
        open;
     end;
     dm.cds_Grupo_trib.Open;
     D_GRUPO_T.TEXT := dm.cds_Grupo_tribdESCRICAO.TEXT;
     end; }
IF Grupo_Trib.TEXT > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  Grupo_Trib.Text := '';
  Grupo_Trib.SetFocus;
end ELSE
if Grupo_Trib.Text = '' then
begin
Grupo_Trib.Clear;
end else
IF Grupo_Trib.TEXT > '' then
begin
DM.Sds_grupo_trib.Open;
DM.Sds_grupo_trib.Refresh;

if (DM.Sds_grupo_trib.Locate('COD_GRUPO', VarArrayOf([Grupo_Trib.Text]),[])) then
begin
D_GRUPO_T.Text:= dm.sds_Grupo_tribdESCRICAO.TEXT;
Grupo_Trib.Text:= dm.sds_Grupo_tribCOD_GRUPO.TEXT;
//suiDBRadioGroup1.SetFocus;
end else
begin
FormPrincipal.MsgAtencao.HTMLText.text:= 'Grupo de Tributacao Inexistente !!!';
FormPrincipal.MsgAtencao.Execute;
if FormTributacao=nil   then
    begin
     FormTributacao:=TFormTributacao.Create(self);
      FormTributacao.Showmodal;
      end;
Grupo_Trib.Clear;
D_GRUPO_T.Text:= dm.sds_Grupo_tribdESCRICAO.TEXT;
Grupo_Trib.Text:= dm.sds_Grupo_tribCod_grupo.TEXT;
suiDBEdit1.SetFocus;
end;
end;
end;

procedure TFormProdutos.suiDBRadioGroup3Change(Sender: TObject);
begin
 if suiDBRadioGroup3.Value = 'S' then
begin
 DBEdit26.Enabled := True ;
 END ELSE
 if suiDBRadioGroup3.Value = 'N' then
 begin
  DBEdit26.Enabled := FALSE;
  end;
end;

procedure TFormProdutos.bitbtn6Click(Sender: TObject);
begin
 // DM.qrinfnutricional_produto.Active
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS_INFO_ADIC');
   DM.ProxCod.Open;

  pnutricional.enabled := True;

  DM.qrinfnutricional_produto.insert;

  DM.qrinfnutricional_produto.fieldbyname('codigo').asinteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
  DM.qrinfnutricional_produto.fieldbyname('cod_produto').asstring := DM.sds_produtos.fieldbyname('codigo').asstring;
  ptampainfnutricional.Visible := false;
  dbedit39.setfocus;

end;

procedure TFormProdutos.dbt_codigoChange(Sender: TObject);
var
mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11, mes12 : string;

begin
   IF dbt_codigo.Text <> ''THEN
   BEGIN
     if Pc.activepageindex = 11 then
   begin

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


    qrvenda_mes.close;
    qrvenda_mes.SQL.clear;
    qrvenda_mes.sql.add('select sum(qtde) sum_0, '+
                     '(select sum(qtde) from V_VENDAS_PRODUTOS where  data >= :data11 and data < :data10 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_VENDAS_PRODUTOS where  data >= :data10 and data < :data09 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_VENDAS_PRODUTOS where  data >= :data09 and data < :data08 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_VENDAS_PRODUTOS where  data >= :data08 and data < :data07 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_VENDAS_PRODUTOS where  data >= :data07 and data < :data06 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_VENDAS_PRODUTOS where  data >= :data06 and data < :data05 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_VENDAS_PRODUTOS where  data >= :data05 and data < :data04 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_VENDAS_PRODUTOS where  data >= :data04 and data < :data03 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_VENDAS_PRODUTOS where  data >= :data03 and data < :data02 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_VENDAS_PRODUTOS where  data >= :data02 and data < :data01 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_VENDAS_PRODUTOS where  data >= :data01 and data < :data00 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+''') '+
                     'from V_VENDAS_PRODUTOS where  data >= :data12 and data < :data11 and codproduto = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''');

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




    qrvenda_mesCOLUMN_0.DisplayLabel := mes12;
    qrvenda_mesCOLUMN.DisplayLabel :=   mes11;
    qrvenda_mesCOLUMN_1.DisplayLabel := mes10;
    qrvenda_mesCOLUMN_2.DisplayLabel := mes09;
    qrvenda_mesCOLUMN_3.DisplayLabel := mes08;
    qrvenda_mesCOLUMN_4.DisplayLabel := mes07;
    qrvenda_mesCOLUMN_5.DisplayLabel := mes06;
    qrvenda_mesCOLUMN_6.DisplayLabel := mes05;
    qrvenda_mesCOLUMN_7.DisplayLabel := mes04;
    qrvenda_mesCOLUMN_8.DisplayLabel := mes03;
    qrvenda_mesCOLUMN_9.DisplayLabel := mes02;
    qrvenda_mesCOLUMN_10.DisplayLabel := mes01;


     series1.Clear;
     series1.AddY(qrvenda_mesCOLUMN_0.AsFloat,qrvenda_mesCOLUMN_0.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN.AsFloat,qrvenda_mesCOLUMN.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_1.AsFloat,qrvenda_mesCOLUMN_1.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_2.AsFloat,qrvenda_mesCOLUMN_2.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_3.AsFloat,qrvenda_mesCOLUMN_3.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_4.AsFloat,qrvenda_mesCOLUMN_4.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_5.AsFloat,qrvenda_mesCOLUMN_5.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_6.AsFloat,qrvenda_mesCOLUMN_6.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_7.AsFloat,qrvenda_mesCOLUMN_7.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_8.AsFloat,qrvenda_mesCOLUMN_8.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_9.AsFloat,qrvenda_mesCOLUMN_9.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_10.AsFloat,qrvenda_mesCOLUMN_10.DisplayLabel,clred);

    qrvenda_mes.close;
    qrvenda_mes.SQL.clear;
    qrvenda_mes.sql.add('select sum(qtde) sum_0, '+
                     '(select sum(qtde) from V_ENTRADA_PRODUTOS WHERE DATA_CADASTRO >= :data11 and DATA_CADASTRO < :data10 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_ENTRADA_PRODUTOS where DATA_CADASTRO >= :data10 and DATA_CADASTRO < :data09 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_ENTRADA_PRODUTOS where DATA_CADASTRO >= :data09 and DATA_CADASTRO < :data08 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_ENTRADA_PRODUTOS where DATA_CADASTRO >= :data08 and DATA_CADASTRO < :data07 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_ENTRADA_PRODUTOS where DATA_CADASTRO >= :data07 and DATA_CADASTRO < :data06 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_ENTRADA_PRODUTOS where DATA_CADASTRO >= :data06 and DATA_CADASTRO < :data05 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_ENTRADA_PRODUTOS where DATA_CADASTRO >= :data05 and DATA_CADASTRO < :data04 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_ENTRADA_PRODUTOS where DATA_CADASTRO >= :data04 and DATA_CADASTRO < :data03 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_ENTRADA_PRODUTOS where DATA_CADASTRO >= :data03 and DATA_CADASTRO < :data02 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_ENTRADA_PRODUTOS where DATA_CADASTRO >= :data02 and DATA_CADASTRO < :data01 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from V_ENTRADA_PRODUTOS where DATA_CADASTRO >= :data01 and DATA_CADASTRO < :data00 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+''') '+
                     'from V_ENTRADA_PRODUTOS where DATA_CADASTRO >= :data12 and DATA_CADASTRO < :data11 and CODIGO_PRODUTO = '''+DM.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''');

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




    qrvenda_mesCOLUMN_0.DisplayLabel := mes12;
    qrvenda_mesCOLUMN.DisplayLabel :=   mes11;
    qrvenda_mesCOLUMN_1.DisplayLabel := mes10;
    qrvenda_mesCOLUMN_2.DisplayLabel := mes09;
    qrvenda_mesCOLUMN_3.DisplayLabel := mes08;
    qrvenda_mesCOLUMN_4.DisplayLabel := mes07;
    qrvenda_mesCOLUMN_5.DisplayLabel := mes06;
    qrvenda_mesCOLUMN_6.DisplayLabel := mes05;
    qrvenda_mesCOLUMN_7.DisplayLabel := mes04;
    qrvenda_mesCOLUMN_8.DisplayLabel := mes03;
    qrvenda_mesCOLUMN_9.DisplayLabel := mes02;
    qrvenda_mesCOLUMN_10.DisplayLabel := mes01;

     BARseries1.Clear;
     BARseries1.AddY(qrvenda_mesCOLUMN_0.AsFloat,qrvenda_mesCOLUMN_0.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN.AsFloat,qrvenda_mesCOLUMN.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_1.AsFloat,qrvenda_mesCOLUMN_1.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_2.AsFloat,qrvenda_mesCOLUMN_2.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_3.AsFloat,qrvenda_mesCOLUMN_3.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_4.AsFloat,qrvenda_mesCOLUMN_4.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_5.AsFloat,qrvenda_mesCOLUMN_5.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_6.AsFloat,qrvenda_mesCOLUMN_6.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_7.AsFloat,qrvenda_mesCOLUMN_7.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_8.AsFloat,qrvenda_mesCOLUMN_8.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_9.AsFloat,qrvenda_mesCOLUMN_9.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_10.AsFloat,qrvenda_mesCOLUMN_10.DisplayLabel,CLBLUE);
   end;

    if PC.ActivePageIndex = 11 then // grade
    begin
       DM.qrgrade_produto.close;
       DM.qrgrade_produto.sql.clear;
       DM.qrgrade_produto.sql.add('select * from PRODUTOS_GRADE where cod_produto = '''+dm.SDS_PRODUTOS.fieldbyname('codigo').asstring+''' order by codigo');
       DM.qrgrade_produto.Open;
    end;

    if PC.ActivePageIndex = 7 then // seriais
    begin
       dm.qrserial_produto.close;
       dm.qrserial_produto.sql.clear;
       dm.qrserial_produto.sql.add('select * from PRODUTOS_SERIAL where codproduto = '''+dm.SDS_PRODUTOS.fieldbyname('codigo').asstring+''' and situacao <> 4 order by codigo');
       dm.qrserial_produto.Open;
    end;


    if Pc.ActivePageIndex = 6 then // informacao nutricional
    begin
       dm.qrinfnutricional_produto.close;
    //   dm.qrinfnutricional_produto.sql.clear;
       dm.qrinfnutricional_produto.DataSet.CommandText := 'select * from PRODUTOS_INFO_ADIC where cod_produto = '''+dm.SDS_PRODUTOS.fieldbyname('codigo').asstring+''' order by codigo';
       dm.qrinfnutricional_produto.Open;

        if dm.qrinfnutricional_produto.RecordCount = 0 then
        begin
           ptampainfnutricional.visible := true;
           pnutricional.enabled := false;
        end
        else
        begin
          ptampainfnutricional.visible := false;
          pnutricional.enabled := True;
          DM.qrinfnutricional_produto.Edit;
        end;
    end;

    
   if Pc.ActivePageIndex = 8 then // rentabilidade
    begin
       rtotal_rent.value := 0;
       if DM.SDS_PRODUTOS.fieldbyname('usa_rentabilidade').asinteger = 1 then
       begin
         qrrentabilidade.close;
         qrrentabilidade.sql.clear;
         qrrentabilidade.sql.add('select * from PRODUTO_RENTABILIDADE where RENTABILIDADE = '''+dm.SDS_PRODUTOS.fieldbyname('codigo').asstring+'''');
         qrrentabilidade.Open;

         qrrentabilidade.first;
         while not qrrentabilidade.Eof do
         begin
           rtotal_rent.value := rtotal_rent.value + qrrentabilidade.fieldbyname('rendimento').asfloat;
           qrrentabilidade.next;
         end;
         end
       else
        qrrentabilidade.close;
    end;
   end;
end;



procedure TFormProdutos.PcChange(Sender: TObject);
begin
  dbt_codigoChange(FormProdutos);
end;

procedure TFormProdutos.EvDBComboBox4KeyPress(Sender: TObject;
  var Key: Char);
begin
DBEdit40.SetFocus;
end;

procedure TFormProdutos.DBEdit40Exit(Sender: TObject);
begin
if DM.qrinfnutricional_produtoVALOR_CALORICO.AsInteger > 2000 then
begin
 DM.qrinfnutricional_produto.Edit;
 DM.qrinfnutricional_produtoVALOR_CALORICO.Text := '2000';
end;

 IF  DM.qrinfnutricional_produtoVALOR_CALORICO.AsInteger > 0 THEN
 begin
  DM.qrinfnutricional_produto.Edit;
  DM.qrinfnutricional_produtoVALOR_CALORICO_VD.AsFloat := DM.qrinfnutricional_produtoVALOR_CALORICO.AsFloat * 100 / 2000;
 end;
end;

procedure TFormProdutos.DBEdit42Exit(Sender: TObject);
begin
 if DM.qrinfnutricional_produtoCARBOIDRATOS.AsInteger > 300 then
begin
  DM.qrinfnutricional_produto.Edit;
 DM.qrinfnutricional_produtoCARBOIDRATOS.Text := '300';
end;

 IF  DM.qrinfnutricional_produtoCARBOIDRATOS.AsInteger > 0 THEN
 begin
  DM.qrinfnutricional_produto.Edit;
  DM.qrinfnutricional_produtoCARBOIDRATOS_VD.AsFloat := DM.qrinfnutricional_produtoCARBOIDRATOS.AsFloat * 100 / 300;
 end;
end;

procedure TFormProdutos.DBEdit44Exit(Sender: TObject);
begin
  if DM.qrinfnutricional_produtoPROTEINAS.AsInteger > 75 then
begin
  DM.qrinfnutricional_produto.Edit;
 DM.qrinfnutricional_produtoPROTEINAS.Text := '75';
end;

 IF  DM.qrinfnutricional_produtoPROTEINAS.AsInteger > 0 THEN
 begin
  DM.qrinfnutricional_produto.Edit;
  DM.qrinfnutricional_produtoPROTEINAS_VD.AsFloat := DM.qrinfnutricional_produtoPROTEINAS.AsFloat * 100 / 75;
 end;

end;

procedure TFormProdutos.DBEdit46Exit(Sender: TObject);
begin
if DM.qrinfnutricional_produtoGORDURASTOTAIS.AsInteger > 55 then
begin
  DM.qrinfnutricional_produto.Edit;
 DM.qrinfnutricional_produtoGORDURASTOTAIS.Text := '55';
end;

 IF  DM.qrinfnutricional_produtoGORDURASTOTAIS.AsInteger > 0 THEN
 begin
  DM.qrinfnutricional_produto.Edit;
  DM.qrinfnutricional_produtoGORDURASTOTAIS_VD.AsFloat := DM.qrinfnutricional_produtoGORDURASTOTAIS.AsFloat * 100 / 55;
 end;

end;

procedure TFormProdutos.DBEdit48Exit(Sender: TObject);
begin

if DM.qrinfnutricional_produtoGORDURASSATURADAS.AsInteger > 22 then
begin
 DM.qrinfnutricional_produto.Edit;
 DM.qrinfnutricional_produtoGORDURASSATURADAS.Text := '22';
end;

  IF  DM.qrinfnutricional_produtoGORDURASSATURADAS.AsInteger > 0 THEN
 begin
 DM.qrinfnutricional_produto.Edit;
  DM.qrinfnutricional_produtoGORDURASSATURADAS_VD.AsFloat := DM.qrinfnutricional_produtoGORDURASSATURADAS.AsFloat * 100 / 22;
 end;


end;

procedure TFormProdutos.DBEdit52Exit(Sender: TObject);
begin
 if DM.qrinfnutricional_produtoFIBRA.AsInteger > 25 then
begin
 DM.qrinfnutricional_produto.Edit;
 DM.qrinfnutricional_produtoFIBRA.Text := '25';
 end;
 IF  DM.qrinfnutricional_produtoFIBRA.AsInteger > 0 THEN
 begin
   DM.qrinfnutricional_produto.Edit;
  DM.qrinfnutricional_produtoFIBRA_VD.AsFloat := DM.qrinfnutricional_produtoFIBRA.AsFloat * 100 / 25;
 end;

end;

procedure TFormProdutos.DBEdit58Exit(Sender: TObject);
begin
  if DM.qrinfnutricional_produtoSODIO.AsInteger > 2400 then
begin
 DM.qrinfnutricional_produto.Edit;
 DM.qrinfnutricional_produtoSODIO.Text := '2400';
end;

 IF  DM.qrinfnutricional_produtosodio.AsInteger > 0 THEN
 begin
   DM.qrinfnutricional_produto.Edit;
  DM.qrinfnutricional_produtoSODIO_VD.AsFloat := DM.qrinfnutricional_produtoSODIO.AsFloat * 100 / 2400;
 end;

end;

procedure TFormProdutos.DBEdit61Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormProdutos.AtualizaodePreos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAltPreco, FormAltPreco);
  FormAltPreco.showmodal;
end;

procedure TFormProdutos.MovimentarEstoque1Click(Sender: TObject);
begin
Application.CreateForm(TFormAcertoEstoque, FormAcertoEstoque);
  FormAcertoEstoque.Tag := 0;
end;

procedure TFormProdutos.Fechar1Click(Sender: TObject);
begin
close;
end;

procedure TFormProdutos.NaturezadeOperaoCFOP1Click(Sender: TObject);
begin
    Formcfop:=TFormCfop.Create(self);
end;

procedure TFormProdutos.Inventrio1Click(Sender: TObject);
begin
  Application.CreateForm(TFormInv, FormInv);
  FormInv.showmodal;
end;

procedure TFormProdutos.FDvGlowButton2Click(Sender: TObject);
begin
  frmproduto_serial_ficha := tfrmproduto_serial_ficha.create(self);
  frmproduto_serial_ficha.showmodal;


  dm.qrserial_produto.Refresh;

end;

procedure TFormProdutos.button3Click(Sender: TObject);
begin
 if dm.qrserial_produto.RecordCount = 0 then exit;


  //if dm.autentica('Baixar Serial',4) then
 // begin
    case dm.qrserial_produto.FieldByName('situacao').asinteger of
    1:
    begin
      If application.MessageBox('Tem certeza que deseja BAIXAR este serial do Estoque?','Atenção',mb_yesno+mb_iconwarning) = idyes then
      begin
        dm.qrserial_produto.edit;
        dm.qrserial_produto.fieldbyname('situacao').asinteger := 3;
        dm.qrserial_produto.fieldbyname('cliente').asstring := 'BAIXADO - '+codigo_usuario;
        dm.qrserial_produto.FieldByName('DATAVENDA').ASDATETIME := DATE;
        dm.qrserial_produto.Post;
      //  dm.Conexao.Commit;
       (****************************************)

          {     qrProduto_mov.Open;
                qrproduto_mov.Insert;
                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 5;
                qrproduto_mov.fieldbyname('codvendedor').asstring :=  codigo_usuario;
                qrproduto_mov.fieldbyname('qtde').asfloat := 1;
                qrproduto_mov.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('total').asfloat := qrproduto.fieldbyname('precocusto').asfloat;
                qrProduto_mov.Post;  }

        (****************************************)
      end;
    end;
    2:
    begin
      showmessage('Este serial já foi vendido! Impossível BAIXAR/RETORNAR o mesmo!');
    end;
    3:
    begin
      If application.MessageBox('Tem certeza que deseja RETORNAR este serial para o Estoque?','Atenção',mb_yesno+mb_iconwarning) = idyes then
      begin
        dm.qrserial_produto.edit;
        dm.qrserial_produto.fieldbyname('situacao').asinteger := 1;
        dm.qrserial_produto.fieldbyname('cliente').asstring := '';
        dm.qrserial_produto.FieldByName('DATAVENDA').ASstring := '';
        dm.qrserial_produto.Post;
       // dm.Conexao.Commit;
        (****************************************)
             {   qrProduto_mov.Open;
                qrproduto_mov.Insert;
                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 8;
                qrproduto_mov.fieldbyname('codvendedor').asstring :=  codigo_usuario;
                qrproduto_mov.fieldbyname('qtde').asfloat := 1;
                qrproduto_mov.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('total').asfloat := qrproduto.fieldbyname('precocusto').asfloat;
                qrProduto_mov.Post; }
        (****************************************)
      end;
    end;

    end; //case

//    frmmodulo.qrserial_produto.Refresh;
 { end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end; }
end;

procedure TFormProdutos.FDvGlowButton5Click(Sender: TObject);
begin
 
    if application.MessageBox('Confirma a exclusão do serial?','Excluir',mb_yesno+mb_iconwarning) = idyes then
    begin
      if dm.qrserial_produto.fieldbyname('codnota').asstring <> 'AVULSO' then
      begin
        application.messagebox('Este serial não pode ser excluído!','Atenção',mb_ok+mb_iconerror);
        exit;
      end;
      dm.qrserial_produto.Delete;
    end;
end;

procedure TFormProdutos.eserialChange(Sender: TObject);
begin
  dm.qrserial_produto.Locate('serial',eserial.text,[loCaseInsensitive]);
end;

procedure TFormProdutos.wwDBGrid2DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 if dm.qrserial_produto.FieldByName('situacao').asinteger = 2 then
  begin
    wwDbgrid2.canvas.Brush.Color:= clred;
    wwDbgrid2.Canvas.Pen.Color:= clWhite;
  end;
  if dm.qrserial_produto.FieldByName('situacao').asinteger = 3 then
  begin
    wwDbgrid2.canvas.Brush.Color:= $00A0FAF8;
    wwDbgrid2.Canvas.Pen.Color:= clblack;
  end;
  wwDbgrid2.DefaultDrawDataCell(Rect, field, State);
end;


procedure TFormProdutos.brent_gravarClick(Sender: TObject);
begin
IF check_rentabilidade.Checked THEN
 BEGIN
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS_GRADE');
   DM.ProxCod.Open;

 if radiobutton1.checked then
 begin
    qrrentabilidade.Insert;
    qrrentabilidade.fieldbyname('cod_produto').asstring := elocproduto.text;
    qrrentabilidade.fieldbyname('produto').asstring := eproduto.text;
    qrrentabilidade.fieldbyname('rendimento').asfloat := erentabilidade.Value;
    qrrentabilidade.fieldbyname('codigo').AsInteger :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;
    qrrentabilidade.fieldbyname('rentabilidade').asstring := dm.sds_produtosCODIGO.ASSTRING;
    qrrentabilidade.post;
 end
 else
 begin
    qrrentabilidade.Insert;
    qrrentabilidade.fieldbyname('cod_produto').asstring := '-1';
    qrrentabilidade.fieldbyname('produto').asstring := 'P E R D A';
    qrrentabilidade.fieldbyname('rendimento').asfloat := erentabilidade.Value;
    qrrentabilidade.fieldbyname('codigo').AsInteger :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;
    qrrentabilidade.fieldbyname('rentabilidade').asstring := dm.sds_produtosCODIGO.ASSTRING;
    qrrentabilidade.post;
 end;

  rtotal_rent.Value := rtotal_rent.value + qrrentabilidade.fieldbyname('rendimento').asfloat;

  RADIOBUTTON1.Checked := TRUE;
  elocproduto.setfocus;
  elocproduto.text := '';
  eproduto.text := '';
  erentabilidade.value := 0;


  END
  ELSE
  BEGIN
    application.messagebox('Este produto não utiliza rentabilidade! Favor verificar!','Atenção',mb_ok+mb_iconerror);
    exit;
  END;

end;

procedure TFormProdutos.FDvGlowButton3Click(Sender: TObject);
begin
// if frmprincipal.autentica('Excluir RENTABILIDADE',4) then
  begin
    WHILE QRRENTABILIDADE.RecordCount <> 0 DO
    qrRENTABILIDADE.Delete;
  rtotal_rent.Value := 0;
  end
{  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;  }
end;

procedure TFormProdutos.QRRENTABILIDADEBeforeDelete(DataSet: TDataSet);
begin
 if (DM.SDS_produtos.state <> dsinsert) then
  if (DM.SDS_produtos.state <> dsedit) then
  if DM.SDS_produtos.recordcount > 0 then
     DM.SDS_produtos.Edit
  else
     abort;
end;

procedure TFormProdutos.QRRENTABILIDADEBeforeEdit(DataSet: TDataSet);
begin
  if (DM.SDS_produtos.state <> dsinsert) then
  if (DM.SDS_produtos.state <> dsedit) then
  if DM.SDS_produtos.recordcount > 0 then
     DM.SDS_produtos.Edit
  else
     abort;
end;

procedure TFormProdutos.QRRENTABILIDADEBeforeInsert(DataSet: TDataSet);
begin
  if (DM.SDS_produtos.state <> dsinsert) then
  if (DM.SDS_produtos.state <> dsedit) then
  if DM.SDS_produtos.recordcount > 0 then
     DM.SDS_produtos.Edit
  else
     abort;
end;

procedure TFormProdutos.FDvGlowButton4Click(Sender: TObject);
begin
 //if frmprincipal.autentica('Excluir RENTABILIDADE',4) then
  begin
  rtotal_rent.Value := rtotal_rent.value - qrrentabilidade.fieldbyname('rendimento').asfloat;
    qrRENTABILIDADE.Delete;
  end
{  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end; }
end;

procedure TFormProdutos.FDvGlowButton1Click(Sender: TObject);
begin

      dm.qrgrade_produto.Insert;
      
      FormGrade:=TFormGrade.Create(self);
      FormGrade.Showmodal;
end;

procedure TFormProdutos.FDvGlowButton6Click(Sender: TObject);
begin
if Application.MESSAGEBOX('Confirma a Exclusão da Grade desse Produto?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
dm.qrgrade_produto.close;
dm.qrgrade_produto.sql.clear;
dm.qrgrade_produto.sql.add('DELETE from PRODUTOS_GRADE where cod_produto = '''+DM.SDS_PRODUTOScodigo.asstring+'''');
dm.qrgrade_produto.EXECSQL;
end;
end;

procedure TFormProdutos.elocprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
   // elocproduto.text := frmprincipal.zerarcodigo(elocproduto.text,6);
    if elocproduto.text > '' then
    begin
      qrproduto_loc.close;
      qrproduto_loc.SQL.clear;
      qrproduto_loc.sql.add('select * from produtos where codigo = '''+elocproduto.text+'''');
      qrproduto_loc.open;
      if qrproduto_loc.RecordCount > 0 then
      begin
        eproduto.text := qrproduto_loc.fieldbyname('descricao').asstring;
        elocproduto.text := qrproduto_loc.fieldbyname('codigo').asstring;
        erentabilidade.setfocus;
      end
      else
      begin
          application.messagebox('Produto não cadastrado!','Atenção',mb_ok+mb_iconerror);
          elocproduto.setfocus;
          exit;
      end;
    end
    else
      elocprodutoButtonClick(formprodutos);
    end;
end;

procedure TFormProdutos.elocprodutoButtonClick(Sender: TObject);
begin
   FormConsProdutos:=TFormConsProdutos.Create(self);
   FormConsProdutos.Showmodal;
    elocproduto.text := dm.SDS_PRODUTOScodigo.text;
    eproduto.text := dm.SDS_PRODUTOSDESCRICAO.text;
end;

procedure TFormProdutos.DBEdit2Exit(Sender: TObject);
begin
if DBEdit2.Text >'' then
begin
if DM.SDS_PRODUTOS.State = dsInsert then
begin
  DMC.SDS_PDV.Active := false;
  DMC.SDS_PDV.DataSet.CommandText:= 'select * from produtos where  REFERENCIA like ' + #39 + '%' + DBEdit2.Text + '%' + #39+'ORDER BY codigo';
  DMC.SDS_PDV.Active := True;

 if DMC.SDS_PDV.Locate('REFERENCIA',DBEdit2.Text, []) = True then
 BEGIN
  //MsgInformacao.Text:= 'Existe um produto  cadastrado com este Código EAN. Favor informar outro Código EAN!!!';
  //MsgInformacao.ShowModal;
 if Application.MESSAGEBOX('Atenção!!! Existe um produto  cadastrado com esta Refência/Cod Fabricante. Deseja Continuar?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_NO then
  begin
  DBEdit2.Clear;
  DM.SDS_PRODUTOSREFERENCIA.Clear;
  DBEdit2.SetFocus;
  end else
  begin
    suiDBLookupComboBox1.SetFocus;
  end;
  end;
end;
CorSaida(Sender);
end;
end;

procedure TFormProdutos.suiDBEdit5Exit(Sender: TObject);
var
custo,customedio:DOUBLE;
lucro, gasto1, gasto2, gasto3, gasto4, gasto5, gastototal:real;
begin

IF SUIDBEdit5.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit5.Text := '0';
  if Panel5.Enabled = True then SUIDBEdit5.SetFocus;
end ELSE

     CorSaida(Sender);

     custo:= DM.SDS_PRODUTOSPRECO_CUSTO.AsCurrency;
     lucro:=DM.SDS_PRODUTOSDESCONTOS.AsCurrency;
     gasto1:=DM.SDS_PRODUTOSCOMISSAO.AsCurrency;
     gasto2:=DM.SDS_PRODUTOSICMS.AsCurrency;
     gasto3:=DM.SDS_PRODUTOSIPI_IRPJ.AsCurrency;
     gasto4:=DM.SDS_PRODUTOSFRETE.AsCurrency;
     gasto5:=DM.SDS_PRODUTOSOUTROS_IMPOSTOS.AsCurrency;
     gastototal:= (gasto1 + gasto2 + gasto3 + gasto4 + gasto5 - lucro);
     customedio:=(gastototal * custo)/100+custo;
     DM.SDS_ProdutosCUSTO_MEDIO.AsString:=FloatToStr(customedio);

end;

procedure TFormProdutos.suiDBEdit14Exit(Sender: TObject);
var
custo,valor, lucro:DOUBLE;
begin
 if Panel5.Enabled = True then
 begin
IF SUIDBEdit14.value > 9999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  SUIDBEdit14.Text := '0';
  if Panel5.Enabled = True then SUIDBEdit14.SetFocus;
end ELSE

     CorSaida(Sender);
     IF DM.SDS_PRODUTOSPRECO_PROMOCAO.AsString = '' then
     begin
     DM.SDS_PRODUTOSPRECO_PROMOCAO.Value :=  DM.SDS_PRODUTOSPRECO_VENDA.Value;
     end;

     if suiDBEdit14.text >'0' then
      begin
      custo:= DM.SDS_PRODUTOSPRECO_CUSTO.AsCurrency;
      lucro:=DM.SDS_PRODUTOSpreco_VENDA.AsVariant;
      valor:=((lucro * 100)/custo) - 100;
      DM.SDS_PRODUTOSMARGEM_LUCRO.AsFloat:=(Valor);
     // DBEdit20.SetFocus;
      end;
 end;
end;

procedure TFormProdutos.DBEdit20Exit(Sender: TObject);
var
custo,valor, lucro:DOUBLE;
begin
 if Panel5.Enabled = True then
 begin
IF DBEdit20.value > 9999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  DBEdit20.Text := '0';
 DBEdit20.SetFocus;
end;

      if DBEdit20.text >'0' then
      begin
      custo:= DM.SDS_PRODUTOSPRECO_CUSTO.AsCurrency;
      lucro:=DM.SDS_PRODUTOSpreco_VENDA2.AsVariant;
      valor:=((lucro * 100)/custo) - 100;
      DM.SDS_PRODUTOSMARGEM_LUCRO2.AsFloat:=(Valor);
    //  suiDBEdit4.SetFocus;
      end;
end;
end;

procedure TFormProdutos.SpeedButton1Click(Sender: TObject);
begin
if Length(DBEdit25.Text) <> 8 then
 Begin
 MessageDlg('O codigo do NCM deve conter 8 Caracteres', mtWarning, [mbOK], 0);
 Exit;
 End;


if Not ACBrNcms1.validar(DBEdit25.Text) then
 MessageDlg('Codigo NCM Invalido', mtWarning, [mbOK], 0)
Else
 MessageDlg('Codigo NCM Valido OK!', mtInformation, [mbOK], 0);
end;

procedure TFormProdutos.SpeedButton2Click(Sender: TObject);
Var
I:Integer;
begin
     if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;

        try
          with dm.Consulta do
             begin
                close;
                sql.Clear;
                sql.add('DELETE FROM TABELA_NCM');
                ExecQuery;

             end;
          dm.IBTransaction.Commit;
        except
          dm.IBTransaction.StartTransaction;
          showmessage('Erro ao limpar a tabela de ncms');
        end;
ACBrNcms1.ListarNcms();


dm.SDS_NCM.Open;
for I := 0 to ACBrNcms1.Ncms.Count -1 do
  Begin
  dm.SDS_NCM.Insert;

  dm.SDS_NCMCODIGO_NCM.Text := ACBrNcms1.Ncms[i].CodigoNcm;
  dm.SDS_NCMDESCRICAO.Text := ACBrNcms1.Ncms[i].DescricaoNcm;

  dm.SDS_NCM.Post;
  dm.SDS_NCM.ApplyUpdates(0);
  Application.ProcessMessages;
  End;

//Label1.Caption := 'Numero de Registros: '+ IntToStr(dm.SDS_NCM.RecordCount);
MessageDlg('Fim do Processo de importação dos ncms!', mtInformation, [mbOK], 0);
end;

procedure TFormProdutos.FDvGlowButton7Click(Sender: TObject);
begin
  CorSaida(Sender);
 dm.Sds_cidades.Open;
 if FormConsCidades=nil   then
    begin
    FormConscidades:=TFormConscidades.Create(self);
      FormConscidades.ShowModal;
      end;
qrProdutos_ImovelCIDADE.Text:= DM.Sds_cidadesNOME.Text;
qrProdutos_ImovelUF.Text := DM.Sds_cidadesUF.Value;
qrProdutos_ImovelCEP.Text := DM.Sds_cidadesCEP.value;
qrProdutos_ImovelCOD_INGE.Text := DM.Sds_cidadesCOD_IBGE.Text;
//qrProdutos_ImovelCOD_CIDADE.Text := DM.Sds_cidadesCOD_CIDADE.Text;
suiDBEdit7.SetFocus;
end;

procedure TFormProdutos.Sds_c(Sender: TObject);
begin
  dm.Sds_cidades.Open;
 if DBEdit67.Text > '' then
 if DM.Sds_cidades.Locate('NOME',DBEdit67.Text,[loCaseInsensitive]) then
 begin
 qrProdutos_ImovelCIDADE.Text := DM.Sds_cidadesCOD_CIDADE.Text;
qrProdutos_ImovelUF.Text := DM.Sds_cidadesUF.Value;
qrProdutos_ImovelCEP.Text := DM.Sds_cidadesCEP.value;
qrProdutos_ImovelCOD_INGE.Text := DM.Sds_cidadesCOD_IBGE.Text;
suiDBEdit7.SetFocus;
end else

if not DM.Sds_cidades.Locate('NOME',DBEdit67.Text,[loCaseInsensitive]) then
 if FormConsCidades=nil   then
    begin
    FormConscidades:=TFormConscidades.Create(self);
      FormConscidades.ShowModal;
      end;
qrProdutos_ImovelCIDADE.Text:= DM.Sds_cidadesNOME.Text;
qrProdutos_ImovelUF.Text := DM.Sds_cidadesUF.Value;
qrProdutos_ImovelCEP.Text := DM.Sds_cidadesCEP.value;
qrProdutos_ImovelCOD_INGE.Text := DM.Sds_cidadesCOD_IBGE.Text;
//qrProdutos_ImovelCOD_CIDADE.Text := DM.Sds_cidadesCOD_CIDADE.Text;
suiDBEdit7.SetFocus;
end;

procedure TFormProdutos.BtnAddProClick(Sender: TObject);
begin
FormProdutosCaixa :=TFormProdutosCaixa.Create(self);
  FormProdutosCaixa.edtcodpro.text := dbt_codigo.Text;
     FormProdutosCaixa.ShowModal;
end;

procedure TFormProdutos.SpeedButton3Click(Sender: TObject);
begin
 DM.SDS_cest.Active := False;
 DM.SDS_cest.Active := True;
 DM.Sds_cest.Filtered := False;
Try
if FormConsNcm=nil   then
    begin
     FormConsCest:=TFormConsCest.Create(self);
      FormConsCest.Showmodal;
      DM.SDS_PRODUTOScest.Text := DM.Sds_cestCEST.Text;

      dbedit84.SetFocus;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

end.
