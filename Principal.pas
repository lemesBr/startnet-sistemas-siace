unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, WinSkinData, AdvOfficePager,
  AdvOfficePagerStylers, AdvPanel, AdvSmoothMessageDialog, RDprint, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, acAlphaImageList, ACBrBase, ACBrCalculadora,
  Vcl.ExtDlgs, sDialogs, Vcl.AppEvnts, Vcl.StdCtrls, Vcl.Buttons, AdvGlowButton,
  sLabel, AdvToolBar, acPNG, IniFiles, Registry, ShellAPI, IdStackWindows;


type
  TFormPrincipal = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    Timer1: TTimer;
    Label1: TsLabel;
    Label2: TsLabel;
    Label3: TsLabel;
    OpenPictureDialog1: TsOpenPictureDialog;
    cCaminho: TEdit;
    SuiStatusBar1: TStatusBar;
    Calculator: TACBrCalculadora;
    MainMenu1: TMainMenu;
    Estoque1: TMenuItem;
    Estoque2: TMenuItem;
    Produtos1: TMenuItem;
    s76: TMenuItem;
    Grupo1: TMenuItem;
    SubGrupos1: TMenuItem;
    Marca1: TMenuItem;
    Unidades1: TMenuItem;
    s77: TMenuItem;
    s78: TMenuItem;
    s79: TMenuItem;
    s80: TMenuItem;
    s81: TMenuItem;
    s82: TMenuItem;
    N1: TMenuItem;
    Vendas1: TMenuItem;
    Clientes1: TMenuItem;
    CondiodePagamento1: TMenuItem;
    N2: TMenuItem;
    s83: TMenuItem;
    s84: TMenuItem;
    s85: TMenuItem;
    s86: TMenuItem;
    N3: TMenuItem;
    Banco1: TMenuItem;
    Agncias1: TMenuItem;
    Bancos1: TMenuItem;
    ContaCorrente1: TMenuItem;
    MotivoRetorno1: TMenuItem;
    s87: TMenuItem;
    N4: TMenuItem;
    Acesso1: TMenuItem;
    Usurios1: TMenuItem;
    N5: TMenuItem;
    ContasaPagar1: TMenuItem;
    Fornecedor1: TMenuItem;
    ZonasRotas1: TMenuItem;
    N6: TMenuItem;
    s88: TMenuItem;
    N7: TMenuItem;
    s89: TMenuItem;
    ransportadora1: TMenuItem;
    N8: TMenuItem;
    abelas1: TMenuItem;
    s90: TMenuItem;
    s91: TMenuItem;
    N9: TMenuItem;
    Imobilizado1: TMenuItem;
    s92: TMenuItem;
    s93: TMenuItem;
    s94: TMenuItem;
    N10: TMenuItem;
    PlanodeContas1: TMenuItem;
    Financeiro1: TMenuItem;
    NotasFiscais1: TMenuItem;
    EntradadeNotasFiscaiseAtualizaodeEstoque1: TMenuItem;
    N11: TMenuItem;
    Estoque3: TMenuItem;
    s95: TMenuItem;
    s96: TMenuItem;
    s97: TMenuItem;
    s98: TMenuItem;
    s99: TMenuItem;
    N12: TMenuItem;
    ContasaPagar2: TMenuItem;
    Lanamentos1: TMenuItem;
    AutorizaodePagamento1: TMenuItem;
    BaixadeContasaPagar1: TMenuItem;
    N13: TMenuItem;
    ContasaReceber1: TMenuItem;
    Credirio1: TMenuItem;
    BaixadeCheques1: TMenuItem;
    s100: TMenuItem;
    s101: TMenuItem;
    N14: TMenuItem;
    s102: TMenuItem;
    s103: TMenuItem;
    s104: TMenuItem;
    N15: TMenuItem;
    ControleBancrio1: TMenuItem;
    Cheques1: TMenuItem;
    s105: TMenuItem;
    BaixadeChequesRetornados1: TMenuItem;
    DepositoemConta1: TMenuItem;
    RetornodeCheques1: TMenuItem;
    SaqueemConta1: TMenuItem;
    N16: TMenuItem;
    ControledeCaixa1: TMenuItem;
    FaturamentoCaixaRegistradora1: TMenuItem;
    Lanamentos2: TMenuItem;
    LanamentosSaidadeCapital1: TMenuItem;
    DevoluoTrocadeProdutosPedidos1: TMenuItem;
    N17: TMenuItem;
    VendasPedidosOramentos1: TMenuItem;
    s20: TMenuItem;
    S22: TMenuItem;
    DevoluoParcialdePedidoProposta1: TMenuItem;
    N18: TMenuItem;
    Almoxarifado1: TMenuItem;
    EntregadePedidoProposta1: TMenuItem;
    N19: TMenuItem;
    Laticinio1: TMenuItem;
    s107: TMenuItem;
    N20: TMenuItem;
    Relatorios1: TMenuItem;
    N21: TMenuItem;
    ExportarDados1: TMenuItem;
    s108: TMenuItem;
    N22: TMenuItem;
    Contratos1: TMenuItem;
    s109: TMenuItem;
    N23: TMenuItem;
    tica1: TMenuItem;
    s111: TMenuItem;
    s112: TMenuItem;
    OrdemdeServio1: TMenuItem;
    Cadastro1: TMenuItem;
    s106: TMenuItem;
    s113: TMenuItem;
    s114: TMenuItem;
    s115: TMenuItem;
    s116: TMenuItem;
    CadastrodeAtendimentos1: TMenuItem;
    s117: TMenuItem;
    s118: TMenuItem;
    s119: TMenuItem;
    s120: TMenuItem;
    s121: TMenuItem;
    s122: TMenuItem;
    s123: TMenuItem;
    Pesquisas1: TMenuItem;
    Banco2: TMenuItem;
    ControleEspecfico1: TMenuItem;
    N24: TMenuItem;
    ControledeCaixa2: TMenuItem;
    CaixaAnaltico1: TMenuItem;
    CaixaGeral1: TMenuItem;
    N25: TMenuItem;
    Cheques2: TMenuItem;
    ChequesaBaixar1: TMenuItem;
    ChequesBaixadosporPerdo1: TMenuItem;
    ChequesRetornadosaBaixar1: TMenuItem;
    ChequesUtilizadosparaPagamento1: TMenuItem;
    N26: TMenuItem;
    Comies1: TMenuItem;
    PedidoDireto1: TMenuItem;
    ExtornodeComissodeDevolues1: TMenuItem;
    N27: TMenuItem;
    ContasaPagar3: TMenuItem;
    s40: TMenuItem;
    ContasPagarFornecedores1: TMenuItem;
    PlanodeConta1: TMenuItem;
    N28: TMenuItem;
    ContasaReceber2: TMenuItem;
    CredirioporPerodo1: TMenuItem;
    Credirio2: TMenuItem;
    CredirioporPerdo1: TMenuItem;
    N29: TMenuItem;
    CredirioRecebidoporCliente1: TMenuItem;
    CredirioRecebidoporPerodo1: TMenuItem;
    N30: TMenuItem;
    ChequesPrDatados1: TMenuItem;
    N31: TMenuItem;
    Estoque4: TMenuItem;
    Produtos2: TMenuItem;
    AcertodeEstoques1: TMenuItem;
    N32: TMenuItem;
    Vendas2: TMenuItem;
    Pedidos1: TMenuItem;
    PedidoDireto2: TMenuItem;
    N33: TMenuItem;
    PedidoDiretoCancelado1: TMenuItem;
    N34: TMenuItem;
    Oramentos1: TMenuItem;
    N35: TMenuItem;
    RegistrodeVendas1: TMenuItem;
    Relatorios2: TMenuItem;
    RelatriosdeBanco1: TMenuItem;
    N36: TMenuItem;
    RelatriosdeCaixa1: TMenuItem;
    N37: TMenuItem;
    RelatriodeCheques1: TMenuItem;
    N38: TMenuItem;
    RelatoriodeComisses1: TMenuItem;
    N39: TMenuItem;
    RelatoriodeCompras1: TMenuItem;
    ComprasGeral1: TMenuItem;
    ComprasLaticinio1: TMenuItem;
    PedidosdeProdutosemFalta1: TMenuItem;
    N40: TMenuItem;
    RelatriosdeContasaPagar1: TMenuItem;
    N41: TMenuItem;
    RelatriosdeCredirio1: TMenuItem;
    ContasReceber1: TMenuItem;
    ContasRecebergeralCliente1: TMenuItem;
    N42: TMenuItem;
    RelatriosdeEstoque1: TMenuItem;
    RelatoriosDiversos1: TMenuItem;
    InventriodeEstoque1: TMenuItem;
    N43: TMenuItem;
    RelatriosdeVendas1: TMenuItem;
    RelatorioVendas1: TMenuItem;
    RelatriodeVendaspProdutos1: TMenuItem;
    ReltoriosdeVendasGrficas1: TMenuItem;
    RelatriodeVendasXCustos1: TMenuItem;
    ResumodeProdutosVendidosnoMs1: TMenuItem;
    RelatriodeTotaisPisCofins1: TMenuItem;
    N44: TMenuItem;
    s124: TMenuItem;
    N45: TMenuItem;
    S125: TMenuItem;
    N46: TMenuItem;
    S126: TMenuItem;
    N47: TMenuItem;
    Etiquetas1: TMenuItem;
    S127: TMenuItem;
    S128: TMenuItem;
    S129: TMenuItem;
    Cadastros1: TMenuItem;
    Clientes2: TMenuItem;
    Cadastro2: TMenuItem;
    Aniversariantes1: TMenuItem;
    ClientescMovnoMs1: TMenuItem;
    Produtos3: TMenuItem;
    Cadastros2: TMenuItem;
    Utilitrios1: TMenuItem;
    Configuraes1: TMenuItem;
    DadosdaEmpresa1: TMenuItem;
    ConfiguraesdoSistema1: TMenuItem;
    ConfiguraesdeVdeo1: TMenuItem;
    LiberaodosMdulos1: TMenuItem;
    LayoutdoContratodeVendas1: TMenuItem;
    N49: TMenuItem;
    Reemio1: TMenuItem;
    Oramentos2: TMenuItem;
    N50: TMenuItem;
    PedidoProposta1: TMenuItem;
    N51: TMenuItem;
    Duplicatas1: TMenuItem;
    N52: TMenuItem;
    DadosdoCliente1: TMenuItem;
    HistricodoCliente1: TMenuItem;
    N54: TMenuItem;
    Importaco1: TMenuItem;
    S130: TMenuItem;
    Ajuda1: TMenuItem;
    S135: TMenuItem;
    N56: TMenuItem;
    ImpressoraFiscal1: TMenuItem;
    S63: TMenuItem;
    LeituraX1: TMenuItem;
    ReduoZ2: TMenuItem;
    MenuItem1: TMenuItem;
    S64: TMenuItem;
    AlteraoSimbolodaMoeda2: TMenuItem;
    aDiodeAlquotaTributria2: TMenuItem;
    AtivaDesativaoHorriodeVero2: TMenuItem;
    Programalinhasentrecupons2: TMenuItem;
    Programaforadeimpactodasagulhas2: TMenuItem;
    MenuItem2: TMenuItem;
    S65: TMenuItem;
    PorData2: TMenuItem;
    PorReduo2: TMenuItem;
    MenuItem3: TMenuItem;
    S66: TMenuItem;
    DataHoraImpressora2: TMenuItem;
    Minutosimprimindo2: TMenuItem;
    Minutosligada1: TMenuItem;
    NumerodaLoja2: TMenuItem;
    Nmerodecuponscancelados2: TMenuItem;
    Numerodeserie2: TMenuItem;
    NumerodeRedues2: TMenuItem;
    Numerodocaixa2: TMenuItem;
    RetornaEstadodaImpressora2: TMenuItem;
    RetornodeAlquotas2: TMenuItem;
    Retornodonumerodocupom2: TMenuItem;
    SimbolodaMoeda2: TMenuItem;
    MenuItem4: TMenuItem;
    S67: TMenuItem;
    AcionaGaveta2: TMenuItem;
    VerificaGaveta2: TMenuItem;
    ResetaImpressoraemCasodeErro2: TMenuItem;
    CancelaUltimoCupomFiscalEmitido2: TMenuItem;
    VersodaDll1: TMenuItem;
    N57: TMenuItem;
    Capturardados1: TMenuItem;
    S136: TMenuItem;
    S137: TMenuItem;
    N58: TMenuItem;
    S138: TMenuItem;
    N59: TMenuItem;
    AlterarSenha1: TMenuItem;
    N60: TMenuItem;
    CadeadodoSistema1: TMenuItem;
    N61: TMenuItem;
    Calculadora1: TMenuItem;
    N62: TMenuItem;
    WindowsExplorer1: TMenuItem;
    N63: TMenuItem;
    PapeldeParede1: TMenuItem;
    Novo1: TMenuItem;
    N64: TMenuItem;
    Ladoalado1: TMenuItem;
    N65: TMenuItem;
    BackupRestaurar1: TMenuItem;
    N66: TMenuItem;
    Calendrio1: TMenuItem;
    N67: TMenuItem;
    Mensageiro1: TMenuItem;
    N68: TMenuItem;
    CalculadoraF1: TMenuItem;
    S131: TMenuItem;
    S132: TMenuItem;
    S133: TMenuItem;
    S134: TMenuItem;
    NFe1: TMenuItem;
    S139: TMenuItem;
    S140: TMenuItem;
    Janelas1: TMenuItem;
    EmCascata1: TMenuItem;
    Horizontal1: TMenuItem;
    Vertical1: TMenuItem;
    Ajuda2: TMenuItem;
    Sobre1: TMenuItem;
    N69: TMenuItem;
    Sair1: TMenuItem;
    ConfernciadeEstoque1: TMenuItem;
    s143: TMenuItem;
    ValeTroco1: TMenuItem;
    CartodeCreditoDbito1: TMenuItem;
    N70: TMenuItem;
    Cartes1: TMenuItem;
    Administradora1: TMenuItem;
    N71: TMenuItem;
    ContasaReceberCartes1: TMenuItem;
    Lanamento1: TMenuItem;
    Recebimento1: TMenuItem;
    Cancelamento1: TMenuItem;
    Duplicata1: TMenuItem;
    s142: TMenuItem;
    LanamentodeChequesEmtidos1: TMenuItem;
    advToolBar1: TAdvToolBar;
    B_clientes: TAdvGlowButton;
    B_Receber: TAdvGlowButton;
    bV_frente: TAdvGlowButton;
    B_Vendas: TAdvGlowButton;
    B_produtos: TAdvGlowButton;
    B_os: TAdvGlowButton;
    B_monitor_os: TAdvGlowButton;
    advGlowButton8: TAdvGlowButton;
    advGlowButton9: TAdvGlowButton;
    advGlowButton10: TAdvGlowButton;
    b_cobranca: TAdvGlowButton;
    advGlowButton12: TAdvGlowButton;
    advGlowButton13: TAdvGlowButton;
    N72: TMenuItem;
    Postos1: TMenuItem;
    Frentistas1: TMenuItem;
    anque1: TMenuItem;
    Bombas1: TMenuItem;
    Bicos1: TMenuItem;
    ChequesEmitidos1: TMenuItem;
    ChequesRecebidos1: TMenuItem;
    CompensaodeCheques1: TMenuItem;
    DevoluodeCheqyesEmitidos1: TMenuItem;
    N73: TMenuItem;
    FarmciaPopular1: TMenuItem;
    advGlowButton1: TAdvGlowButton;
    sAlphaImageList1: TsAlphaImageList;
    ProdutoComposto1: TMenuItem;
    Image1: TImage;
    RelatriodeVendasPagto1: TMenuItem;
    Convnio1: TMenuItem;
    N55: TMenuItem;
    s141: TMenuItem;
    AtualizaImpostosIBPT1: TMenuItem;
    Hotel1: TMenuItem;
    Apartamento1: TMenuItem;
    EntradadeHospedes1: TMenuItem;
    LigaesTelefonicas1: TMenuItem;
    Cadastros3: TMenuItem;
    Categoria1: TMenuItem;
    ControleDiriodoHotel1: TMenuItem;
    ApartamentosOcupados1: TMenuItem;
    Movimentododia1: TMenuItem;
    RelaodeApartamentos1: TMenuItem;
    RelaodeProdutos1: TMenuItem;
    RelaodeCategorias1: TMenuItem;
    ActionList1: TActionList;
    Action1: TAction;
    CaixaGeral2: TMenuItem;
    qrcx: TFDQuery;
    Label7: TsLabel;
    lsit_caixa: TsLabel;
    lcaixa: TsLabel;
    Label5: TsLabel;
    ImprimirFichadeCaixa1: TMenuItem;
    LogUsarios1: TMenuItem;
    RelatriodeAferies1: TMenuItem;
    N74: TMenuItem;
    LimpaFilaGerenciadordecupons1: TMenuItem;
    delCupom: TFDQuery;
    IntegerField3: TIntegerField;
    Reservas1: TMenuItem;
    LMC1: TMenuItem;
    LMCLivro1: TMenuItem;
    Relatrios1: TMenuItem;
    MapaResumo1: TMenuItem;
    ConsultaHospedagens1: TMenuItem;
    conslutaprodutos1: TMenuItem;
    ApplicationEvents2: TApplicationEvents;
    BitBtn1: TBitBtn;
    LanamentosCC1: TMenuItem;
    DonwloadNFe1: TMenuItem;
    GerenciamentoNFCe1: TMenuItem;
    DelItem: TFDQuery;
    N75: TMenuItem;
    Veiculos1: TMenuItem;
    Veculos1: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    MovimentaodeVeculos1: TMenuItem;
    Abastecidas1: TMenuItem;
    Relatorios3: TMenuItem;
    Abastecimentos1: TMenuItem;
    Veiculos2: TMenuItem;
    rocasdeOleo1: TMenuItem;
    LancamentosLMC1: TMenuItem;
    LMCLivroMod21: TMenuItem;
    LancAbertFechamento1: TMenuItem;
    Action2: TAction;
    RelatoriodeBoletosPagosReceber1: TMenuItem;
    ChequesRecebidos2: TMenuItem;
    ChequesEmitidos2: TMenuItem;
    Consulta1: TMenuItem;
    Recebidos1: TMenuItem;
    Emitidos1: TMenuItem;
    FormaoAlteraodePreos1: TMenuItem;
    LanamentoAvulsoAgrupado1: TMenuItem;
    DownloadXMLNFe1: TMenuItem;
    RDprint1: TRDprint;
    RxLabel3: TsLabelFX;
    MsgErro: TAdvSmoothMessageDialog;
    MSG_NOT: TAdvSmoothMessageDialog;
    MsgInformacao: TAdvSmoothMessageDialog;
    MsgInfiscal: TAdvSmoothMessageDialog;
    ActionSkinned: TAction;
    MsgAtencao: TAdvSmoothMessageDialog;
    R1: TMenuItem;
    N53: TMenuItem;
    C1: TMenuItem;
    L1: TMenuItem;
    L2: TMenuItem;
    r2: TMenuItem;
    fretes1: TMenuItem;
    F1: TMenuItem;
    V1: TMenuItem;
    A1: TMenuItem;
    advPanelStyler1: TAdvPanelStyler;
    advOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    SkinData1: TSkinData;
    c2: TMenuItem;
    f2: TMenuItem;
    C3: TMenuItem;
    C4: TMenuItem;
    n78: TMenuItem;
    r3: TMenuItem;
    C5: TMenuItem;
    M1: TMenuItem;
    Timer2: TTimer;
    DATEEDIT1: TDateTimePicker;
    P1: TMenuItem;
    R4: TMenuItem;
    R5: TMenuItem;
    C6: TMenuItem;
    N79: TMenuItem;
    s110: TMenuItem;
    N80: TMenuItem;
    P2: TMenuItem;
    N48: TMenuItem;
    v2: TMenuItem;
    P3: TMenuItem;
    c7: TMenuItem;
    G1: TMenuItem;
    C8: TMenuItem;
    N81: TMenuItem;
    P4: TMenuItem;
    N82: TMenuItem;
    G2: TMenuItem;
    P5: TMenuItem;
    C9: TMenuItem;
    O1: TMenuItem;
    c10: TMenuItem;
    N83: TMenuItem;
    a2: TMenuItem;
    N84: TMenuItem;
    R6: TMenuItem;
    N85: TMenuItem;
    R7: TMenuItem;
    R8: TMenuItem;
    V3: TMenuItem;
    S1: TMenuItem;
    C12: TMenuItem;
    sAlphaImageList2: TsAlphaImageList;
    sAlphaImageList3: TsAlphaImageList;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    N86: TMenuItem;
    c14: TMenuItem;
    G3: TMenuItem;
    Procedure Retorno_Impressora;
    Procedure Analisa_iRetorno();
//    procedure MudarComEnter(var Msg: TMsg; var Handled: Boolean);
    function UltimoDiaMes(Mdt: TDateTime): TDateTime;
    procedure Timer1Timer(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure formclose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Unidades1Click(Sender: TObject);
    procedure Marca1Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure RxSpeedButton4Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure Agncias1Click(Sender: TObject);
    procedure SubGrupos1Click(Sender: TObject);
    procedure EntradadeNotasFiscaiseAtualizaodeEstoque1Click(
      Sender: TObject);
    procedure MotivoRetorno1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Lanamentos1Click(Sender: TObject);
    procedure AutorizaodePagamento1Click(Sender: TObject);
    procedure BaixadeContasaPagar1Click(Sender: TObject);
    procedure ContasaPagar2Click(Sender: TObject);
    procedure RelatriosdeContasaPagar1Click(Sender: TObject);
    procedure Credirio1Click(Sender: TObject);
    procedure DadosdaEmpresa1Click(Sender: TObject);
    procedure ContaCorrente1Click(Sender: TObject);
    procedure Cheques1Click(Sender: TObject);
    procedure CaixaAnaltico1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure DepositoemConta1Click(Sender: TObject);
    procedure RetornodeCheques1Click(Sender: TObject);
    procedure BaixadeChequesRetornados1Click(Sender: TObject);
    procedure Lanamentos2Click(Sender: TObject);
    procedure LanamentosSaidadeCapital1Click(Sender: TObject);
    procedure CaixaGeral1Click(Sender: TObject);
    procedure ControleEspecfico1Click(Sender: TObject);
    procedure RelatriosdeCaixa1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Credirio2Click(Sender: TObject);
    procedure BaixadeCheques1Click(Sender: TObject);
    procedure ChequesPrDatados1Click(Sender: TObject);
    procedure ChequesaBaixar1Click(Sender: TObject);
    procedure ChequesRetornadosaBaixar1Click(Sender: TObject);
    procedure ChequesBaixadosporPerdo1Click(Sender: TObject);
    procedure ConfiguraesdeVdeo1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure WindowsExplorer1Click(Sender: TObject);
    procedure PedidoDireto2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SaqueemConta1Click(Sender: TObject);
    procedure Oramentos1Click(Sender: TObject);
    procedure RegistrodeVendas1Click(Sender: TObject);
    procedure AlterarSenha1Click(Sender: TObject);
    procedure LiberaodosMdulos1Click(Sender: TObject);
    procedure RxSpeedButton3Click(Sender: TObject);
    procedure RxSpeedButton7Click(Sender: TObject);
    procedure Ladoalado1Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure RxSpeedButton8Click(Sender: TObject);
    procedure RxSpeedButton2Click(Sender: TObject);
    procedure RxSpeedButton9Click(Sender: TObject);
    procedure CadeadodoSistema1Click(Sender: TObject);
    procedure ConfiguraesdoSistema1Click(Sender: TObject);
    procedure PedidoProposta1Click(Sender: TObject);
    procedure Oramentos2Click(Sender: TObject);
    procedure PedidoDireto3Click(Sender: TObject);
    procedure FaturamentoCaixaRegistradora1Click(Sender: TObject);
    procedure EntregadePedidoProposta1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure RegistrodePedidosECF1Click(Sender: TObject);
    procedure S22Click(Sender: TObject);
    procedure DevoluoParcialdePedidoProposta1Click(Sender: TObject);
    procedure DevoluoTrocadeProdutosPedidos1Click(Sender: TObject);
    procedure ChequesUtilizadosparaPagamento1Click(Sender: TObject);
    procedure ExtornodeComissodeDevolues1Click(Sender: TObject);
    procedure ContasPagarFornecedores1Click(Sender: TObject);
    procedure PlanodeConta1Click(Sender: TObject);
    procedure PedidoDiretoCancelado1Click(Sender: TObject);
    procedure RxSpeedButton5Click(Sender: TObject);
    procedure RelatriosdeBanco1Click(Sender: TObject);
    procedure Oramentos3Click(Sender: TObject);
    procedure HistricodoCliente1Click(Sender: TObject);
    procedure RelatriodeCheques1Click(Sender: TObject);
    procedure CondiodePagamento1Click(Sender: TObject);
    procedure Duplicatas1Click(Sender: TObject);
    procedure CredirioporPerdo1Click(Sender: TObject);
    procedure CredirioRecebidoporCliente1Click(Sender: TObject);
    procedure CredirioRecebidoporPerodo1Click(Sender: TObject);
    procedure RxSpeedButton6Click(Sender: TObject);
    procedure s77Click(Sender: TObject);
    procedure s78Click(Sender: TObject);
    procedure s79Click(Sender: TObject);
    procedure s106Click(Sender: TObject);
    procedure s113Click(Sender: TObject);
    procedure s116Click(Sender: TObject);
    procedure s115Click(Sender: TObject);
    procedure s114Click(Sender: TObject);
    procedure s117Click(Sender: TObject);
    procedure s118Click(Sender: TObject);
    procedure StatusdoAtendimento1Click(Sender: TObject);
    procedure s120Click(Sender: TObject);
    procedure s87Click(Sender: TObject);
    procedure s102Click(Sender: TObject);
    procedure s104Click(Sender: TObject);
    procedure s103Click(Sender: TObject);
    procedure LayoutdoContratodeVendas1Click(Sender: TObject);
    procedure s95Click(Sender: TObject);
    procedure S135Click(Sender: TObject);
    procedure BackupRestaurar1Click(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure RelatorioVendas1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure s20Click(Sender: TObject);
    procedure s100Click(Sender: TObject);
    procedure s83Click(Sender: TObject);
    procedure s85Click(Sender: TObject);
    procedure s84Click(Sender: TObject);
    procedure S130Click(Sender: TObject);
    procedure ComprasGeral1Click(Sender: TObject);
    procedure ComprasLaticinio1Click(Sender: TObject);
    procedure s86Click(Sender: TObject);
    procedure RelatriodeVendaspProdutos1Click(Sender: TObject);
    procedure s107Click(Sender: TObject);
    procedure s88Click(Sender: TObject);
    procedure s101Click(Sender: TObject);
    procedure s108Click(Sender: TObject);
    procedure s124Click(Sender: TObject);
    procedure RxSpeedButton11Click(Sender: TObject);
    procedure PedidosdeProdutosemFalta1Click(Sender: TObject);
    procedure s98Click(Sender: TObject);
    procedure ContasRecebergeralCliente1Click(Sender: TObject);
    procedure ContasReceber2Click(Sender: TObject);
    procedure RxSpeedButton13Click(Sender: TObject);
    procedure S125Click(Sender: TObject);
    procedure S126Click(Sender: TObject);
    procedure S127Click(Sender: TObject);
    procedure Mensageiro1Click(Sender: TObject);
    procedure s99Click(Sender: TObject);
    procedure s109Click(Sender: TObject);
    procedure ransportadora1Click(Sender: TObject);
    procedure S138Click(Sender: TObject);
    procedure s111Click(Sender: TObject);
    procedure s112Click(Sender: TObject);
//    procedure CreateParams(var Params: TCreateParams);
    procedure S128Click(Sender: TObject);
    procedure s105Click(Sender: TObject);
    procedure ReltoriosdeVendasGrficas1Click(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure RelatriodeVendasXCustos1Click(Sender: TObject);
    procedure s90Click(Sender: TObject);
    procedure s91Click(Sender: TObject);
    procedure Aniversariantes1Click(Sender: TObject);
    procedure EmCascata1Click(Sender: TObject);
    procedure Horizontal1Click(Sender: TObject);
    procedure Vertical1Click(Sender: TObject);
    procedure S129Click(Sender: TObject);
    procedure s80Click(Sender: TObject);
    procedure ApplicationEvents1Activate(Sender: TObject);
    procedure NFe1Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure B_produtosClick(Sender: TObject);
    procedure s92Click(Sender: TObject);
    procedure s93Click(Sender: TObject);
    procedure s94Click(Sender: TObject);
    procedure S134Click(Sender: TObject);
    procedure S132Click(Sender: TObject);
    procedure S133Click(Sender: TObject);
    procedure S131Click(Sender: TObject);
    procedure LerINI;
    procedure LiberaUser;
    procedure DoEnterAsTab(var Msg: TMsg; var Handled: Boolean);
    procedure B_osClick(Sender: TObject);
    procedure s122Click(Sender: TObject);
    procedure s121Click(Sender: TObject);
    procedure B_monitor_osClick(Sender: TObject);
    procedure ResumodeProdutosVendidosnoMs1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure ClientescMovnoMs1Click(Sender: TObject);
    procedure LeituraX1Click(Sender: TObject);
    procedure CancelaUltimoCupomFiscalEmitido2Click(Sender: TObject);
    procedure ResetaImpressoraemCasodeErro2Click(Sender: TObject);
    procedure VerificaGaveta2Click(Sender: TObject);
    procedure AcionaGaveta2Click(Sender: TObject);
    procedure SimbolodaMoeda2Click(Sender: TObject);
    procedure FDiodeAlquotaTributria2Click(Sender: TObject);
    procedure ReduoZ2Click(Sender: TObject);
    function Is4DigitYear: Boolean;
    procedure s81Click(Sender: TObject);
    procedure s82Click(Sender: TObject);
    procedure s96Click(Sender: TObject);
    procedure s97Click(Sender: TObject);
    procedure AcertodeEstoques1Click(Sender: TObject);
    procedure PorData2Click(Sender: TObject);
    procedure PorReduo2Click(Sender: TObject);
    procedure DataHoraImpressora2Click(Sender: TObject);
    procedure AlteraoSimbolodaMoeda2Click(Sender: TObject);
    procedure AtivaDesativaoHorriodeVero2Click(Sender: TObject);
    procedure Programalinhasentrecupons2Click(Sender: TObject);
    procedure Programaforadeimpactodasagulhas2Click(Sender: TObject);
    procedure Minutosimprimindo2Click(Sender: TObject);
    procedure NumerodaLoja2Click(Sender: TObject);
    procedure Nmerodecuponscancelados2Click(Sender: TObject);
    procedure Numerodeserie2Click(Sender: TObject);
    procedure NumerodeRedues2Click(Sender: TObject);
    procedure Numerodocaixa2Click(Sender: TObject);
    procedure RetornaEstadodaImpressora2Click(Sender: TObject);
    procedure RetornodeAlquotas2Click(Sender: TObject);
    procedure Retornodonumerodocupom2Click(Sender: TObject);
    procedure VersodaDll1Click(Sender: TObject);
    procedure S136Click(Sender: TObject);
    procedure S137Click(Sender: TObject);
    procedure RelatoriosDiversos1Click(Sender: TObject);
    procedure S139Click(Sender: TObject);
    procedure InventriodeEstoque1Click(Sender: TObject);
    procedure RelatriodeTotaisPisCofins1Click(Sender: TObject);
    procedure s76Click(Sender: TObject);
    procedure ConfernciadeEstoque1Click(Sender: TObject);
    procedure s143Click(Sender: TObject);
    procedure ValeTroco1Click(Sender: TObject);
    procedure CartodeCreditoDbito1Click(Sender: TObject);
    procedure Administradora1Click(Sender: TObject);
    procedure Duplicata1Click(Sender: TObject);
    procedure Lanamento1Click(Sender: TObject);
    procedure Recebimento1Click(Sender: TObject);
    procedure s142Click(Sender: TObject);
    Function AddAChild(MyFormCompClass: TComponentClass; var Reference): boolean;
    procedure LanamentodeChequesEmtidos1Click(Sender: TObject);
    procedure Frentistas1Click(Sender: TObject);
    procedure anque1Click(Sender: TObject);
    procedure Bombas1Click(Sender: TObject);
    procedure Bicos1Click(Sender: TObject);
    procedure ConfiguraDataHora;
    procedure WMWinIniChange(var Message: TMessage); message WM_WININICHANGE;
    function RegistryManipula(Key, SubKey, Conteudo: String): Boolean;
    procedure FarmciaPopular1Click(Sender: TObject);
    procedure advGlowButton1Click(Sender: TObject);
    procedure ProdutoComposto1Click(Sender: TObject);
    procedure Skindata1BeforeChange(Sender: TObject);
    procedure RelatriodeVendasPagto1Click(Sender: TObject);
    procedure Convnio1Click(Sender: TObject);
    procedure s141Click(Sender: TObject);
    function tiraacento ( str: String ): String;
    function texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
    procedure AtualizaImpostosIBPT1Click(Sender: TObject);
    procedure Apartamento1Click(Sender: TObject);
    procedure EntradadeHospedes1Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure ControleDiriodoHotel1Click(Sender: TObject);
    procedure ApartamentosOcupados1Click(Sender: TObject);
    procedure Movimentododia1Click(Sender: TObject);
    procedure RelaodeProdutos1Click(Sender: TObject);
    procedure RelaodeApartamentos1Click(Sender: TObject);
    procedure RelaodeCategorias1Click(Sender: TObject);
    procedure Cadastros2Click(Sender: TObject);
    procedure CaixaGeral2Click(Sender: TObject);
    procedure ImprimirFichadeCaixa1Click(Sender: TObject);
    procedure LogUsarios1Click(Sender: TObject);
    procedure RelatriodeAferies1Click(Sender: TObject);
    procedure LimpaFilaGerenciadordecupons1Click(Sender: TObject);
    procedure Reservas1Click(Sender: TObject);
    procedure ConsultaHospedagens1Click(Sender: TObject);
    procedure LMCLivro1Click(Sender: TObject);
    procedure ApplicationEvents2Exception(Sender: TObject; E: Exception);
    procedure BitBtn1Click(Sender: TObject);
    procedure CompensaodeCheques1Click(Sender: TObject);
    procedure LanamentosCC1Click(Sender: TObject);
    procedure DonwloadNFe1Click(Sender: TObject);
    procedure GerenciamentoNFCe1Click(Sender: TObject);
    procedure Veiculos1Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure Abastecidas1Click(Sender: TObject);
    procedure Abastecimentos1Click(Sender: TObject);
    procedure LancamentosLMC1Click(Sender: TObject);
    procedure LMCLivroMod21Click(Sender: TObject);
    procedure LancAbertFechamento1Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure RelatoriodeBoletosPagosReceber1Click(Sender: TObject);
    procedure Consulta1Click(Sender: TObject);
    procedure Emitidos1Click(Sender: TObject);
    procedure FormaoAlteraodePreos1Click(Sender: TObject);
    procedure LanamentoAvulsoAgrupado1Click(Sender: TObject);
    procedure DownloadXMLNFe1Click(Sender: TObject);
    procedure ActionSkinnedExecute(Sender: TObject);
    procedure sSkinManager1GetMenuExtraLineData(FirstItem: TMenuItem;
      var SkinSection, Caption: String; var Glyph: TBitmap;
      var LineVisible: Boolean);
    procedure R1Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure L2Click(Sender: TObject);
    procedure r2Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
    function Locregistro(TABELA: TDataSet; valor: string;
      campo: string): Boolean;
    procedure A1Click(Sender: TObject);
    procedure c2Click(Sender: TObject);
    procedure f2Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure C4Click(Sender: TObject);
    procedure n78Click(Sender: TObject);
    procedure r3Click(Sender: TObject);
    procedure C5Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    function zerarcodigo(codigo: string; Qtde: Integer): string;
 //   function somenteNumero(sNum: string): string;
    function CalculaDigEAN13(Cod: string): string;
    function isFloat(Str: string): double;
    procedure Timer2Timer(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure R4Click(Sender: TObject);
    procedure R5Click(Sender: TObject);
    procedure p2Click(Sender: TObject);
    procedure v2Click(Sender: TObject);
    procedure P3Click(Sender: TObject);
    procedure c7Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure P4Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure G2Click(Sender: TObject);
    procedure P5Click(Sender: TObject);
    procedure C9Click(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure c10Click(Sender: TObject);
    procedure a2Click(Sender: TObject);
    procedure R6Click(Sender: TObject);
    procedure R7Click(Sender: TObject);
    procedure R8Click(Sender: TObject);
    procedure U1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure V3Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure C12Click(Sender: TObject);
    procedure C11Click(Sender: TObject);
    procedure C13Click(Sender: TObject);
    procedure P6Click(Sender: TObject);
    procedure c14Click(Sender: TObject);
    procedure G3Click(Sender: TObject);
  //  procedure TrimAppMemorySize(Sender: TObject);
  

   // procedure log(CODUSUARIO,TABELA,CODREGISTRO,FUNCAO,hISTORICO:string);

  private
      procedure AbreForm(Form: TForm; FormClass: TFormClass);

  public

 
Contador,I:Integer;
UserLogado: String;

usuario_temp : string;

CProdutos, CSubGrupos, CMarcas, CFornecedores, CUnidades, CGrupos,
CAgencias, CContaBancaria, CBancos, CMotivoRetorno, CClientes, CUsuarios,
CPlanoContas, CCondPagamento,

FLancCP, FBaixaCP, FAutCP, FBaixaCred, FBaixaCheques, FEntradas,
FOrcamentos, FPedidoDireto, FRegPedidos, FVendasECF, FVendasSINTEGRA,
FBaixaChequesRet, FRetCheques, FSaques, FDepositos, FEntradaCapital,
FSaidaCapital, FAEntregaPedido, FPagDevPedidos, FDevolPedidos, FCaixaReg,

{PBancoAnalitico} PBancoEspecifico, PCaixaAnalitico, PCaixaEspecifico,
PChequesBaixar, PChequesBaixados, PChequesRetornados, PContasPagarGeral,
PCrediario, PCheques, PProdutos, Porcamentos, PPedidoDireto, PRegPedidos,
PCancelados,PContasPagarFor,PContasPagarPlC,PExtComissao,
PCheQuesExtornados, PComissPDireto,

RBancos, RCaixa, RCheques, RCompras, REstoque, RVendas, RContasPagar,
RContasReceber, RComissoes,

RotInfoEmpresa, RotConfSistema, RotRelFiscal, RotInicialiazacao,
RotLeituraMemFiscal, RotInfoImpressora, RotOutrasRotinas, RotReeOrcamentos,
RotReePedidos, RotReeDuplicatas, RotHistCliente, RotAutCrediario, RotLibAcesso,

OrotRemJurosCre : String;

USER,PASS, NFCE, bloqueia :String;

procedure log(CODUSUARIO,TABELA,CODREGISTRO,FUNCAO,hISTORICO:string);



 end;

  //Buscar Porta e Velocidade Automático
  function eBuscarPortaVelocidade_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';
   //Imprimir  Dual
  function iImprimirTexto_DUAL_DarumaFramework(stTexto: String; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll';
   //Retornar valor DarumaFramework.xml
  function regRetornaValorChave_DarumaFramework(pszProduto:string;pszChave:string;pszValor:string):Integer;StdCall; External 'DarumaFramework.dll';
 //URL QrCode
  function rURLQrcode_NFCe_Daruma(StrRetornoUrl: String): Integer; StdCall; External 'DarumaFramework.dll';
 

var
  FormPrincipal: TFormPrincipal;
  X: TIniFile;
  iRetorno: Integer;         // Variável com o retorno da função
  iControle: Integer;
  iACK, iST1, iST2: Integer; // Variáveis com o retorno do Status da Impressora
  oldwidth:integer;
  OldHeight :integer;
  Auxwidth:integer;
  Auxheight:integer ;
  valida_nfc, valida_nfe, IMPRIME :Boolean;
  ShortDateFormat: string;

implementation

uses Z_RotinasGerais, clientes, Acesso, ModulodeDados, Unidades,
  Marcas, Grupos, Fornecedores, Produtos, Bancos, Agencias,  SubGrupos, MotivoRetorno,
  Sobre, RelatorioEstoque, ConsultaContasPagar, 
  Empresa, ContaBancaria, RecebeCheque, CaixaAnalitico,
  ConsultaProdutos, Usuarios, DepositosBanco,
  RetornoCheques, BaixaChequesRetornados, LancamentosCaixa,
  LancamentosCaixaSaida, CaixaEspecifico, BancoEspecifico, RelatorioCaixa,
  ConsultaCrediario, ConsultaCheques, ConsultaChequesRetornados,
  ConsultaChequesBaixados, ConsultaPedidoDireto, SaquesBanco,
  ConsultaOrcamentos, Z_DeclaracoesBemaFi32, BEMA_LeituraX, BEMA_ReducaoZ,
  AlterarSenha, LiberarAcesso, MenuCadastros,
  MenuCaixa, Z_CriptDecript, MenuBancos, MenuCR, Logoff,
  Configuracoes, DesbloquearCliente, ReemissaoPP,
  ReemissaoO, ConsultaComissaoPD, CaixaRegistradora,
  EntregadePedidos, PlanoContas, DevolucaoPedido,
  PagDevolucaoPedidos, ConsultaChequesPag, ConsultaExtornoComissao,
  ConsultaContasPagarFor, ConsultaContasPagarPLC, ConsultaPedidoCancelado,
  ReemissaoDuplicata, MenuPesquisas, RelatorioBanco, CRCrediario,
  HistoricoCliente, RelatorioCheques, RelatorioComissao,
  RelatorioCompras, CondicaoPagamento,
  RegPedido, ConsultaCrediarioReceber, ConsultaCrediarioRecebido,
  ConsultaCrediarioRecebidoPeriodo, RelatorioContasReceber, secoes,
  categorias, Similares, OsTipoBens, OsBensMarca, osCores, OSlocalizacao,
  OsBens, OStpatendimento, OsPrioridades, OsStatus, OSLancamento,
  ConfBancos, TitulosLista, Contrato,
  RelatorioVendas, ECFTeste1, ActiveX, UBackup, Calendario,
  relVendas, Vendas, cobranca, Cidades, bairros, Estados,
  ArquivodeRetorno748, importacaoAbcFarma, RelatorioProdLaticinios, Zonas,
  Rel_vendas_produtos, ULaticinio, temas, LancCrediario, Exporta_Balancas,
  LiberacaoAcesso1, Recibo, ConsProdutos, RelPedidoCompras, ProdutosFalta,
  ConsultaContasReceber, autorizacao_liberacao, relIndea, Graficos,
  etiquetas, ManFaltas, Contratos, ContratosBoletos,
  Tranportador, LeitorSerial, Otica, consotica, HORMAIN,
  Chequesavulso, FormGraficas, Nfe, Nfe_Conf,
  RelVendasCustos, cst, CFOP, aniversario, etiquetasPPLA, Frm_SPEDFiscal,
  Bens, Centro_Custo, Bens_utilizacao, DadosZ, DadosTotZ,
  Inventario, ConsultaOs, monitorOS, Resumo_Venda_Produtos, RelClientes,
  RelClientesSped, BEMA_Aliquota, UCadMotivo, UCadLocaisEstoque,
  UAcertoEstoque, UTransfLocaisEstoque, UConsAcertoEstoque, ULMFData,
  BEMA_MemFiscalRed, BEMA_SimboloMoeda, BEMA_HorarioVerao,
  BEMA_LinhasCupons, BEMA_ImpactoAgulhas, UdownloadMdf, inventarioEstoque,
  UGeraMdb, ModulodeDadosConsultas, UInventario, UINVENTARIOABERT,
  UGerenciamentoNFe, Uinventario_rel, Upiscofins, UGrupoTributacao,
  ConferenciaEstoque, UAfeicao, ValeTroco, URelContasReceberCartao,
  UDuplicataADM, UCadAdmCartaoCredito, ULancCTRADM, URecAdm, UaltPrecos,
  Cheques_emitidos, frentistas, tanques, bombas, bicos, uFarmaciaPopular2,
  UProdutosComposicao, relvendaspgto, UResumo, UCadConvenio,
  atualizaimpostos, fApartamento, fListApartamento, fCategoria,
  fListControleDiario, fListMovDia, fListApartOcupado, fListApartamento1,
  fListProduto, fListCategoria, caixa, lista_caixa2, usuario_log,
  afericao_rel, Agendamento, ConsultaHospedagens, lmc, UCompensacao,
  contacorrente_lancamento, Udonloadnfe, UGerenciamentoNFce, veiculo,
  relveiculos, UmovAbastecidas, URelAbastecimentos, Relatriolmc,
  AberFechLMC, RelLMC, LMCImpressao, Urelboletos, UConsCheque,
  FRelChequesEmitidosporPeriodo_u, UAlteraPreco,
  contasreceber_ficha_varios,  Urelgrupotrib,
  Uextratoestoque, Uextratoproduto, Urecebidas, Ufretes, UpagarFretes,
  contaspagar, lista_pagar2, lista_funcionario2, Lista_comissao, UMesas,
  Valecomb, URelConv, CRCrediarioconv, compra_menu, Uaniversariantes,
  UrelNcmInvalidos, Urelvendasnotas, Urelvendasresumo, LancamentoContrato,
  lista_imovel, RelatorioImovel, lista_planocontas2, ValeFuncionario,
  UrelCestInvalidos, lista_contabil, urelextrato, FormRelatorioProduto,
  UConsDiferencas, FrmOS_AUTO, FrmComposicao, Ubibli1, FrmAgendaOdonto,
  FrmPatioMadeireira, FrmEntradaTorasMadeireira,
  FrmBaixaPlaquetasMadeireira, FrmRelContasPagarPorCliente,
  FrmRelNotaFiscal, FormRelatorioEstoqueProduto, FrmRelatorioEstoque,
  frmRelatorioValeFuncionario, FrmNCM, IdStack, frmCompraMadeira,
  frmOrigemFlorestal, frmPatios, Biblioteca, Unit2, boletos,
  ufrmRETORNOmanutencao, uManifesto, uGeraSP;


{$R *.dfm}


function TformPrincipal.isFloat(Str: string): double;
begin
  try
    result := strtofloat(Str);

  except
    result := 0;
  end;
end;

///Set Screen Resolution
function TformPrincipal.CalculaDigEAN13(Cod: string): string;
  function Par(Cod: Integer): Boolean;
  begin
    result := Cod mod 2 = 0;
  end;

var
  i, SomaPar, SomaImpar: Integer;
begin
  SomaPar := 0;
  SomaImpar := 0;
  for i := 1 to 12 do
    if Par(i) then
      SomaPar := SomaPar + strtoint(Cod[i])
    else
      SomaImpar := SomaImpar + strtoint(Cod[i]);

  SomaPar := SomaPar * 3;
  i := 0;
  while i < (SomaPar + SomaImpar) do
    Inc(i, 10);
  result := IntToStr(i - (SomaPar + SomaImpar));

end;


function TformPrincipal.UltimoDiaMes(Mdt: TDateTime): TDateTime;
{ retorna o ultimo dia o mes, de uma data fornecida }
var
  ano, mes, dia: Word;
  mDtTemp: TDateTime;
begin
  Decodedate(Mdt, ano, mes, dia);
  mDtTemp := (Mdt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  result := mDtTemp - dia;
end;

function TformPrincipal.zerarcodigo(codigo: string; Qtde: Integer): string;
begin
  while Length(codigo) < Qtde do
    codigo := '0' + codigo;
  result := codigo;
end;

function TformPrincipal.Locregistro(TABELA: TDataSet; valor: string;
  campo: string): Boolean;
begin
  if TABELA.Locate(campo, valor, [loCaseInsensitive]) then
  begin
    result := true;
  end
  else
  begin
    application.messagebox('Registro não encontrado!!', 'Erro',
      mb_ok + mb_iconwarning);
    result := false;
  end;

end;

function SetScreenResolution(Width, Height: integer): Longint;
var
  DeviceMode: TDeviceMode;
begin
  with DeviceMode do begin
    dmSize := SizeOf(TDeviceMode);
    dmPelsWidth := Width;
    dmPelsHeight := Height;
    dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
  end;
  Result := ChangeDisplaySettings(DeviceMode, CDS_UPDATEREGISTRY);
end;

procedure tformprincipal.log(CODUSUARIO,TABELA,CODREGISTRO,FUNCAO,hISTORICO:string);
begin
   if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
    DM.IBTransaction.StartTransaction;
      begin
        try
          try
          DM.QConsulta.close;
          DM.QConsulta.SQL.clear;
          DM.QConsulta.sql.add('insert into log');
          DM.QConsulta.sql.add('(data,hora,codusuario,tabela,codregistro,funcao,historico)');
          DM.QConsulta.SQL.add('values');
          DM.QConsulta.sql.add('(:data,:hora,:codusuario,:tabela,:codregistro,:funcao,:historico)');
          DM.QConsulta.params.parambyname('data').asdatetime := date;
          DM.QConsulta.params.parambyname('hora').asstring := timetostr(time);
          DM.QConsulta.params.parambyname('codusuario').AsString := usuario_temp;
          DM.QConsulta.params.parambyname('tabela').asstring := TABELA;
          DM.QConsulta.params.parambyname('codregistro').asstring := copy(codregistro,1,10);
          DM.QConsulta.params.parambyname('funcao').asstring := copy(funcao,1,10);
          DM.QConsulta.params.parambyname('historico').asstring := copy(historico,1,150);
          DM.QConsulta.execsql;
           except
            DM.IBTransaction.Rollback;
            showmessage('Erro ao Gravar o log do sistema');
          end;
        finally
          DM.QConsulta.Close;
        end;
     end;
      usuario_temp := codigo_usuario;

end;

function tformprincipal.tiraacento ( str: String ): String;
var
i: Integer;
begin
for i := 1 to Length ( str ) do
case str[i] of
'è': str[i] := 'e';
'ì': str[i] := 'i';
'ù': str[i] := 'u';
'î': str[i] := 'i';
'û': str[i] := 'u';
'á': str[i] := ' ';//
'é': str[i] := '‚';//
'í': str[i] := '¡';//
'ó': str[i] := '¢';//
'ú': str[i] := '£';//
'à': str[i] := '…';//
'ò': str[i] := '•';//
'â': str[i] := 'ƒ';//
'ê': str[i] := 'ˆ';//
'ô': str[i] := '“';//
'ä': str[i] := '„';//
'ë': str[i] := '‰';//
'ï': str[i] := '‹';//
'ö': str[i] := '”';//
'ü': str[i] := '';//
'ã': str[i] := '†';//
'õ': str[i] := 'o';
'ñ': str[i] := '¤';//
'ç': str[i] := '‡';//
'Á': str[i] := 'A';
'É': str[i] := '';//
'Í': str[i] := 'I';
'Ó': str[i] := 'O';
'Ú': str[i] := 'U';
'À': str[i] := 'A';
'È': str[i] := 'E';
'Ì': str[i] := 'I';
'Ò': str[i] := 'O';
'Ù': str[i] := 'U';
'Â': str[i] := '';
'Ê': str[i] := 'E';
'Î': str[i] := 'I';
'Ô': str[i] := 'O';
'Û': str[i] := 'U';
'Ä': str[i] := 'A';
'Ë': str[i] := 'E';
'Ï': str[i] := 'I';
'Ö': str[i] := 'O';
'Ü': str[i] := 'š';//
'Ã': str[i] := 'A';
'Õ': str[i] := 'O';
'Ñ': str[i] := '¥';//
'Ç': str[i] := '€';//
'ª': str[i] := '¦';//
'º': str[i] := '§';//
end;
Result := str;
end;

function tformprincipal.texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
begin
   texto := tiraacento(texto);
   if tipo = 'E' then
   begin
     while length(texto) < qtde_caracteres do texto := caracter+texto;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'D' then
   begin
     while length(texto) < qtde_caracteres do texto := texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'C' then
   begin
     if (qtde_caracteres mod 2) <> 0 then qtde_caracteres := qtde_caracteres - 1;
     while length(texto) < qtde_caracteres do texto := caracter+texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   result := texto;
end;

Function TFormPrincipal.AddAChild(MyFormCompClass: TComponentClass; var Reference): boolean;
var                                   //function to check if the specified form is already open;
 i : integer;
begin
{if DM1.IBConectado then
 begin }
  screen.cursor:= crHourGlass;
  Result:=false;
  if MdiChildCount > 0 then
  for i := 0 to MDIChildCount - 1 do
   begin
    if MDIChildren[i] = TForm(Reference) then
     begin
      Result:=true;
      if (TForm(Reference).Canfocus) and (TForm(Reference).Enabled) and (TForm(Reference).Visible)then
       begin
        TForm(Reference).BringtoFront;
        TForm(Reference).setfocus;
       end;
      break;
     end
   end;

  if result = false then
  begin
   lockwindowupdate(Handle);
   Application.createform(MyFormCompClass, Reference);
   lockwindowupdate(0);
  end;
  screen.cursor:= crDefault;
 {end;}
end;

function TFormPrincipal.Is4DigitYear: Boolean;
begin
  result := (Pos('yyyy', ShortDateFormat) > 0);
end;

// SUBFORMULARIO CHAMA JANELAS
//Procedure TFormPrincipal.ChamaJanela(Instance: TComponentClass; Ref: TForm);
//var i: integer;
//Begin
//   try
//     for i := 0 to MDIChildCount - 1 do
//       if(Instance.ClassName = MDIChildren[i].ClassName)then begin
//         MDIChildren[i].BringToFront;
//         exit;
//       end;
//     Application.CreateForm(Instance, Ref);
//   except
//     Application.CreateForm(Instance, Ref);
//   end;
//End;

// **********************************************************************
// -------------------- Analisa a Variável iRetorno ---------------------

{procedure TFormPrincipal.CreateParams(var Params: TCreateParams);
begin
inherited CreateParams(Params);
with Params do
if not (csDesigning in ComponentState) then
begin
WndParent := GetDesktopWindow;
Style := WS_CLIPSIBLINGS or WS_CHILD;
ExStyle := WS_EX_TOPMOST or WS_EX_TOOLWINDOW;
WindowClass.Style := CS_DBLCLKS or CS_SAVEBITS and not(CS_HREDRAW or CS_VREDRAW);
end
end;}


procedure TFormPrincipal.ConfiguraDataHora;
const
  Chave = 'Control PanelInternational';
  SubChave = 'sShortDate';
  Conteudo = 'dd/mm/yyyy';
begin
  // não encontrei outra maneira de alterar o conteudo de sShortDate
  RegistryManipula(Chave, SubChave, Conteudo);
  // envia mensagem para atualização das variáveis TFormatSettings:
  SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, 0);
end;

procedure TFormPrincipal.WMWinIniChange(var Message: TMessage);
begin
  if (Message.Msg = WM_WININICHANGE) and Application.UpdateFormatSettings then
  begin
    // atualização das variáveis TFormatSettings
    GetFormatSettings;
  end;
end;

function TFormPrincipal.RegistryManipula(Key, SubKey, Conteudo: String): Boolean;
const
  cstMsg = 'Não foi possível "%s" a entrada "%s", '+
           'chave "%s" no registry desta máquina.';
var
  Registry: TRegistry;
begin
  Result := False;
  Registry := TRegistry.Create;
  try
    with Registry do
    begin
      Access  := KEY_ALL_ACCESS;
      RootKey := HKEY_CURRENT_USER;
      if not OpenKey(Key, True) then
        ShowMessage(Format(cstMsg,['ACESSAR',Key,SubKey]))
      else
      begin
        try
          WriteString(SubKey, Conteudo);
          CloseKey;
          Result := True;
        except
          ShowMessage(Format(cstMsg,['GRAVAR',Key,SubKey]));
        end;
      end;
    end;
  finally
    Registry.Free;
  end;

  if (Result=False) then
  begin
    Halt(0);
  end;
end;
Procedure TFormPrincipal.Analisa_iRetorno();
Begin
  if iRetorno = 0 then
    Application.MessageBox( 'Erro de Comunicação !', 'Erro',MB_IconError + MB_OK);

  If iRetorno = -1 Then
    Application.MessageBox( 'Erro de Execução na Função. Verifique!', 'Erro', MB_IconError + MB_OK);

  if iRetorno = -2  then
    Application.MessageBox( 'Parâmetro Inválido !', 'Erro',MB_IconError + MB_OK);

  if iRetorno = -3  then
    Application.MessageBox( 'Alíquota não programada !', 'Atenção',MB_IconInformation + MB_OK);

  If iRetorno = -4 Then
    Application.MessageBox( 'Arquivo BemaFI32.INI não encontrado. Verifique!', 'Atenção',
                                MB_IconInformation + MB_OK);

  If iRetorno = -5 Then
    Application.MessageBox( 'Erro ao Abrir a Porta de Comunicação', 'Erro',
                                MB_IconError + MB_OK);

  If iRetorno = -6 Then
    Application.MessageBox( 'Impressora Desligada ou Desconectada', 'Atenção',
                                MB_IconInformation + MB_OK);

  If iRetorno = -7 Then
    Application.MessageBox( 'Banco Não Cadastrado no Arquivo BemaFI32.ini', 'Atenção',
                                MB_IconInformation + MB_OK);

  If iRetorno = -8 Then
    Application.MessageBox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
                                MB_IconError + MB_OK);

  if iRetorno = -18 then
    Application.MessageBox( 'Não foi possível abrir arquivo INTPOS.001 !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -19 then
    Application.MessageBox( 'Parâmetro diferentes !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -20 then
    Application.MessageBox( 'Transação cancelada pelo Operador !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -21 then
    Application.MessageBox( 'A Transação não foi aprovada !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -22 then
    Application.MessageBox( 'Não foi possível terminal a Impressão !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -23 then
    Application.MessageBox( 'Não foi possível terminal a Operação !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -24 then
    Application.MessageBox( 'Forma de pagamento não programada.', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -25 then
    Application.MessageBox( 'Totalizador não fiscal não programado.', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -26 then
    Application.MessageBox( 'Transação já Efetuada !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -28 then
    Application.MessageBox( 'Não há Informações para serem Impressas !', 'Atenção',
                                MB_IconInformation + MB_OK);
End;


Procedure TFormPrincipal.Retorno_Impressora;
  Var iACK, iST1, iST2: Integer;
  Begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);
    If iACK = 6 then
       BEGIN

          // Verifica ST1

          IF iST1 >= 128 Then BEGIN iST1 := iST1 - 128; end;
          IF iST1 >= 64  Then BEGIN iST1 := iST1 - 64;  end;
          IF iST1 >= 32  Then BEGIN iST1 := iST1 - 32;  end;
          IF iST1 >= 16  Then BEGIN iST1 := iST1 - 16;  end;
          IF iST1 >= 8   Then BEGIN iST1 := iST1 - 8;   end;
          IF iST1 >= 4   Then BEGIN iST1 := iST1 - 4;   end;
          IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   end;
          IF iST1 >= 1   Then BEGIN iST1 := iST1 - 1;   end;

          // Verifica ST2

          IF iST2 >= 128 Then BEGIN iST2 := iST2 - 128; end;
          IF iST2 >= 64  Then BEGIN iST2 := iST2 - 64;  end;
          IF iST2 >= 32  Then BEGIN iST2 := iST2 - 32;  end;
          IF iST2 >= 16  Then BEGIN iST2 := iST2 - 16;  end;
          IF iST2 >= 8   Then BEGIN iST2 := iST2 - 8;   end;
          IF iST2 >= 4   Then BEGIN iST2 := iST2 - 4;   end;
          IF iST2 >= 2   Then BEGIN iST2 := iST2 - 2;   end;
          IF iST2 >= 1   Then BEGIN iST2 := iST2 - 1;   end;
       End;

    If iACK = 21 Then BEGIN
       showmessage( 'Atenção!!!' + #13 + #10 +
                    'A Impressora retornou NAK. O programa será abortado.');
    End;
End;

{procedure TFormPrincipal.MudarComEnter(var Msg: TMsg; var Handled: Boolean);
begin

If not ((Screen.ActiveControl is TCustomMemo) or
(Screen.ActiveControl is TCustomGrid) or
(Screen.ActiveForm.ClassName = 'TMessageForm')) then
begin

If Msg.message = WM_KEYDOWN then
begin
Case Msg.wParam of
VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
end;
end;
end;


end;}


procedure TFormPrincipal.Timer1Timer(Sender: TObject);
begin
{Texto := FormPrincipal.Caption;
FormPrincipal.Caption := Copy(Texto,2,Length(Texto))+Texto[1]; }
suiStatusBar1.Panels[5].Text:= TimeToStr(Time);
suiStatusBar1.Panels[4].Text:= MostraData(Date);
suiStatusBar1.Panels[3].Text:= 'Usuário : '+ '  ' + FormPrincipal.UserLogado;

end;

procedure TFormPrincipal.ApplicationEvents1Hint(Sender: TObject);
begin
//suiStatusBar1.Panels[0].Text := 'Status:' + '   ' + Application.Hint;
end;

procedure TFormPrincipal.Clientes1Click(Sender: TObject);
begin
//Try
  FormClientes:=nil ;
  FormClientes:=TFormClientes.Create(self);
  FormClientes.FormStyle := fsMDIChild;
  FormClientes.Visible := True;

end;

procedure TFormPrincipal.RxSpeedButton1Click(Sender: TObject);
begin
Clientes1Click(Sender);
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var
  Mens: String;
begin
  {if not Is4DigitYear then
    Showmessage('Acerte o formato do ano para 4 Dígitos');    }

  try
    X := TIniFile.Create(ExtractFilePath(Application.ExeName)+'siace.ini');
    Image1.Picture.LoadFromFile(X.ReadString('Papel de parede','Caminho',''));
    Ladoalado1.Checked := X.ReadBool('Papel de parede','Lado a lado',Ladoalado1.Checked);
    Image1.Stretch := Ladoalado1.Checked;
    X.Free;
  except
    //
  end;
  
  FormPrincipal.KeyPreview := True;
  LerINI;

 // TrimAppMemorySize;
end;


procedure TFormPrincipal.formclose(Sender: TObject;
  var Action: TCloseAction);
begin
IRetorno := Bematech_FI_FechaPortaSerial();
BitBtn1Click(Sender);
//Application.Terminate;
end;

procedure TFormPrincipal.liberaUser;
begin
user:= dm.SDS_UsuariosUSUARIO.Text;

if DM.SDS_Usuarios.locate('USUARIO',USER,[locaseInsensitive])then
begin
Label1.Caption :=  DM.SDS_Usuarios.FieldByname('EXCLUIR').AsString;
Label2.Caption :=  DM.SDS_Usuarios.FieldByname('EDITAR').AsString;
Label3.Caption :=  DM.SDS_Usuarios.FieldByname('INSERIR').AsString;
codigo_usuario :=  DM.SDS_Usuarios.FieldByname('CODIGO').AsString;
NFCE           :=  DM.SDS_Usuarios.FieldByname('UTILIZA_NFCE').AsString;
bloqueia       :=  DM.SDS_Usuarios.FieldByname('BLOQUEIA_VENDA').AsString;

//////////////////////////////////////////////////////////////////
CProdutos        := DM.SDS_Usuarios.FieldByname('S01').AsString;
CSubGrupos       := DM.SDS_Usuarios.FieldByname('S02').AsString;
CMarcas          := DM.SDS_Usuarios.FieldByname('S03').AsString;
CFornecedores    := DM.SDS_Usuarios.FieldByname('S04').AsString;
CUnidades        := DM.SDS_Usuarios.FieldByname('S05').AsString;
CGrupos          := DM.SDS_Usuarios.FieldByname('S06').AsString;
CAgencias        := DM.SDS_Usuarios.FieldByname('S07').AsString;
CContaBancaria   := DM.SDS_Usuarios.FieldByname('S08').AsString;
CBancos          := DM.SDS_Usuarios.FieldByname('S09').AsString;
CMotivoRetorno   := DM.SDS_Usuarios.FieldByname('S10').AsString;
CClientes        := DM.SDS_Usuarios.FieldByname('S11').AsString;
CUsuarios        := DM.SDS_Usuarios.FieldByname('S12').AsString;
CPlanoContas     := DM.SDS_Usuarios.FieldByname('S13').AsString;

//////////////////////////////////////////////////////////////////
FLancCP          := DM.SDS_Usuarios.FieldByname('S14').AsString;
FBaixaCP         := DM.SDS_Usuarios.FieldByname('S15').AsString;
FAutCP           := DM.SDS_Usuarios.FieldByname('S16').AsString;
FBaixaCred       := DM.SDS_Usuarios.FieldByname('S17').AsString;
FBaixaCheques    := DM.SDS_Usuarios.FieldByname('S18').AsString;
FEntradas        := DM.SDS_Usuarios.FieldByname('S19').AsString;
FOrcamentos      := DM.SDS_Usuarios.FieldByname('S20').AsString;
FPedidoDireto    := DM.SDS_Usuarios.FieldByname('S21').AsString;
FRegPedidos      := DM.SDS_Usuarios.FieldByname('S22').AsString;
FPagDevPedidos   := DM.SDS_Usuarios.FieldByname('S23').AsString;
FDevolPedidos    := DM.SDS_Usuarios.FieldByname('S24').AsString;
FCaixaReg        := DM.SDS_Usuarios.FieldByname('S25').AsString;
FBaixaChequesRet := DM.SDS_Usuarios.FieldByname('S26').AsString;
FRetCheques      := DM.SDS_Usuarios.FieldByname('S27').AsString;
FSaques          := DM.SDS_Usuarios.FieldByname('S28').AsString;
FDepositos       := DM.SDS_Usuarios.FieldByname('S29').AsString;
FEntradaCapital  := DM.SDS_Usuarios.FieldByname('S30').AsString;
FSaidaCapital    := DM.SDS_Usuarios.FieldByname('S31').AsString;
FAEntregaPedido  := DM.SDS_Usuarios.FieldByname('S32').AsString;
//////////////////////////////////////////////////////////////////
//PBancoAnalitico  := DM.SDS_Usuarios.FieldByname('S33').AsString;
PBancoEspecifico := DM.SDS_Usuarios.FieldByname('S34').AsString;
PCaixaAnalitico  := DM.SDS_Usuarios.FieldByname('S35').AsString;
PCaixaEspecifico := DM.SDS_Usuarios.FieldByname('S36').AsString;
PChequesBaixar   := DM.SDS_Usuarios.FieldByname('S37').AsString;
PChequesBaixados := DM.SDS_Usuarios.FieldByname('S38').AsString;
PChequesRetornados := DM.SDS_Usuarios.FieldByname('S39').AsString;
PContasPagarGeral := DM.SDS_Usuarios.FieldByname('S40').AsString;
PCrediario       := DM.SDS_Usuarios.FieldByname('S41').AsString;
PProdutos        := DM.SDS_Usuarios.FieldByname('S42').AsString;
POrcamentos      := DM.SDS_Usuarios.FieldByname('S43').AsString;
PPedidoDireto    := DM.SDS_Usuarios.FieldByname('S44').AsString;
PRegPedidos      := DM.SDS_Usuarios.FieldByname('S45').AsString;
PCancelados      := DM.SDS_Usuarios.FieldByname('S46').AsString;
PContasPagarFor  := DM.SDS_Usuarios.FieldByname('S47').AsString;
PContasPagarPlC  := DM.SDS_Usuarios.FieldByname('S48').AsString;
PComissPDireto   := DM.SDS_Usuarios.FieldByname('S49').AsString;
PExtComissao     := DM.SDS_Usuarios.FieldByname('S50').AsString;
PCheQuesExtornados := DM.SDS_Usuarios.FieldByname('S51').AsString;
///////////////////////////////////////////////////////////////////
RBancos          := DM.SDS_Usuarios.FieldByname('S52').AsString;
RCaixa           := DM.SDS_Usuarios.FieldByname('S53').AsString;
RCheques         := DM.SDS_Usuarios.FieldByname('S54').AsString;
RCompras         := DM.SDS_Usuarios.FieldByname('S55').AsString;
REstoque         := DM.SDS_Usuarios.FieldByname('S56').AsString;
RVendas          := DM.SDS_Usuarios.FieldByname('S57').AsString;
RContasPagar     := DM.SDS_Usuarios.FieldByname('S58').AsString;
RContasReceber   := DM.SDS_Usuarios.FieldByname('S59').AsString;
RComissoes       := DM.SDS_Usuarios.FieldByname('S60').AsString;
///////////////////////////////////////////////////////////////////
RotInfoEmpresa     := DM.SDS_Usuarios.FieldByname('S61').AsString;
RotConfSistema     := DM.SDS_Usuarios.FieldByname('S62').AsString;
RotRelFiscal       := DM.SDS_Usuarios.FieldByname('S63').AsString;
RotInicialiazacao  := DM.SDS_Usuarios.FieldByname('S64').AsString;
RotLeituraMemFiscal:= DM.SDS_Usuarios.FieldByname('S65').AsString;
RotInfoImpressora  := DM.SDS_Usuarios.FieldByname('S66').AsString;
RotOutrasRotinas   := DM.SDS_Usuarios.FieldByname('S67').AsString;
RotReeOrcamentos   := DM.SDS_Usuarios.FieldByname('S68').AsString;
RotReePedidoS      := DM.SDS_Usuarios.FieldByname('S69').AsString;
RotReeDuplicatas   := DM.SDS_Usuarios.FieldByname('S70').AsString;
RotHistCliente     := DM.SDS_Usuarios.FieldByname('S71').AsString;
RotAutCrediario    := DM.SDS_Usuarios.FieldByname('S72').AsString;
RotLibAcesso       := DM.SDS_Usuarios.FieldByname('S73').AsString;
////////////////////////////////////////////////////////////////////
OrotRemJurosCre       := DM.SDS_Usuarios.FieldByname('S74').AsString;
CCondPagamento   := DM.SDS_Usuarios.FieldByname('S75').AsString;
///////////////////////////////////////////////////
//////////////////////////////////////////////////
If CProdutos = 'S' THEN
BEGIN
B_produtos.Enabled:= TRUE;
Produtos1.Enabled:= TRUE;
end else
If CProdutos = 'N' THEN
begin
B_produtos.Enabled:= false;
Produtos1.Enabled:= False;
FormaoAlteraodePreos1.Enabled :=False;
end;

If CFornecedores = 'S' THEN
BEGIN
Fornecedor1.Enabled:= TRUE;
end else
If CFornecedores = 'N' THEN
begin
Fornecedor1.Enabled:= False;
end;

If CGrupos = 'S' THEN
BEGIN
Grupo1.Enabled:= TRUE;
end else
If CGrupos = 'N' THEN
begin
Grupo1.Enabled:= False;
end;

If CSubGrupos = 'S' THEN
BEGIN
SubGrupos1.Enabled:= TRUE;
end else
If CGrupos = 'N' THEN
begin
SubGrupos1.Enabled:= False;
end;

If Cmarcas = 'S' THEN
BEGIN
Marca1.Enabled:= TRUE;
end else
begin
Marca1.Enabled:= False;
end;

If CUnidades = 'S' THEN
BEGIN
Unidades1.Enabled:= TRUE;
end else
begin
Unidades1.Enabled:= False;
end;

If CClientes = 'S' THEN
BEGIN
B_clientes.Enabled:= TRUE;
Clientes1.Enabled:= TRUE;
end else
begin
B_clientes.Enabled:= false;
Clientes1.Enabled:= False;
end;

If CAgencias = 'S' THEN
BEGIN
Agncias1.Enabled:= TRUE;
end else
begin
Agncias1.Enabled:= False;
end;

If CBancos = 'S' THEN
BEGIN
Bancos1.Enabled:= TRUE;
end else
begin
Bancos1.Enabled:= False;
end;

If CContaBancaria = 'S' THEN
BEGIN
ContaCorrente1.Enabled:= TRUE;
end else
begin
ContaCorrente1.Enabled:= False;
end;

If CMotivoRetorno = 'S' THEN
BEGIN
MotivoRetorno1.Enabled:= TRUE;
end else
begin
MotivoRetorno1.Enabled:= False;
end;

If CUsuarios = 'S' THEN
BEGIN
Usurios1.Enabled:= TRUE;
end else
begin
Usurios1.Enabled:= False;
end;

If CPlanoContas = 'S' THEN
BEGIN
PlanodeContas1.Enabled:= TRUE;
end else
begin
PlanodeContas1.Enabled:= False;
end;

If CCondPagamento = 'S' THEN
BEGIN
CondiodePagamento1.Enabled:= TRUE;
end else
begin
CondiodePagamento1.Enabled:= False;
end;

//////////////////////////////////////////
//////////////////////////////////////////

If FEntradaCapital = 'S' THEN
BEGIN
Lanamentos2.Enabled:= TRUE;
end else
begin
Lanamentos2.Enabled:= False;
end;

If FSaidaCapital = 'S' THEN
BEGIN
LanamentosSaidadeCapital1.Enabled:= TRUE;
end else
begin
LanamentosSaidadeCapital1.Enabled:= False;
end;

If FDepositos = 'S' THEN
BEGIN
DepositoemConta1.Enabled:= TRUE;
end else
begin
DepositoemConta1.Enabled:= False;
end;

If FSaques = 'S' THEN
BEGIN
SaqueemConta1.Enabled:= TRUE;
end else
begin
SaqueemConta1.Enabled:= False;
end;

If FRetCheques = 'S' THEN
BEGIN
RetornodeCheques1.Enabled:= TRUE;
end else
begin
RetornodeCheques1.Enabled:= False;
end;

If FBaixaChequesRet = 'S' THEN
BEGIN
BaixadeChequesRetornados1.Enabled:= TRUE;
end else
begin
BaixadeChequesRetornados1.Enabled:= False;
end;

If FBaixaCheques = 'S' THEN
BEGIN
Cheques1.Enabled:= TRUE;
BaixadeCheques1.Enabled:= TRUE;
end else
begin
Cheques1.Enabled:= False;
BaixadeCheques1.Enabled:= FALSE;
end;

If FBaixaCred = 'S' THEN
BEGIN
Credirio1.Enabled:= TRUE;
end else
begin
Credirio1.Enabled:= False;
end;

If FLancCP = 'S' THEN
BEGIN
Lanamentos1.Enabled:= TRUE;
end else
begin
Lanamentos1.Enabled:= False;
end;

If FBaixaCP = 'S' THEN
BEGIN
BaixadeContasaPagar1.Enabled:= TRUE;
end else
begin
BaixadeContasaPagar1.Enabled:= False;
end;

If FAutCP = 'S' THEN
BEGIN
AutorizaodePagamento1.Enabled:= TRUE;
end else
begin
AutorizaodePagamento1.Enabled:= False;
end;

If FEntradas = 'S' THEN
BEGIN
EntradadeNotasFiscaiseAtualizaodeEstoque1.Enabled:= TRUE;
end else
begin
EntradadeNotasFiscaiseAtualizaodeEstoque1.Enabled:= False;
end;

If FCaixaReg = 'S' THEN
BEGIN
FaturamentoCaixaRegistradora1.Enabled:= TRUE;
end else
begin
FaturamentoCaixaRegistradora1.Enabled:= False;
end;

If FOrcamentos = 'S' THEN
BEGIN
Oramentos1.Enabled:= TRUE;
end else
begin
Oramentos1.Enabled:= False;
end;  

If FAEntregaPedido = 'S' THEN
BEGIN
EntregadePedidoProposta1.Enabled:= TRUE;
end else
begin
EntregadePedidoProposta1.Enabled:= False;
end;

If FRegPedidos = 'S' THEN
BEGIN
BV_Frente.Enabled:= TRUE;
s22.Enabled:= True;
end else
begin
BV_Frente.Enabled:= False;
s22.Enabled:= False;
end;

If FPagDevPedidos = 'S' THEN
BEGIN
DevoluoTrocadeProdutosPedidos1.Enabled:= TRUE;
end else
begin
DevoluoTrocadeProdutosPedidos1.Enabled:= False;
end;

If FDevolPedidos = 'S' THEN
BEGIN
DevoluoParcialdePedidoProposta1.Enabled:= TRUE;
end else
begin
DevoluoParcialdePedidoProposta1.Enabled:= False;
end;

///////////////////////////////////////////////////
///////////////////////////////////////////////////

If PCaixaAnalitico = 'S' THEN
BEGIN
CaixaAnaltico1.Enabled:= TRUE;
end else
begin
CaixaAnaltico1.Enabled:= False;
end;

If PCaixaEspecifico = 'S' THEN
BEGIN
CaixaGeral1.Enabled:= TRUE;
end else
begin
CaixaGeral1.Enabled:= False;
end;

{If PBancoAnalitico = 'S' THEN
BEGIN
ContaCorrente2.Enabled:= TRUE;
end else
begin
ContaCorrente2.Enabled:= False;
end; }

If PBancoEspecifico = 'S' THEN
BEGIN
ControleEspecfico1.Enabled:= TRUE;
end else
begin
ControleEspecfico1.Enabled:= False;
end;

If PChequesBaixar = 'S' THEN
BEGIN
ChequesaBaixar1.Enabled:= TRUE;
ChequesPrDatados1.Enabled:= TRUE;
end else
begin
ChequesaBaixar1.Enabled:= False;
ChequesPrDatados1.Enabled:= False;
end;

If PChequesBaixados = 'S' THEN
BEGIN
ChequesBaixadosporPerdo1.Enabled:= TRUE;
end else
begin
ChequesBaixadosporPerdo1.Enabled:= False;
end;

If PChequesRetornados = 'S' THEN
BEGIN
ChequesRetornadosaBaixar1.Enabled:= TRUE;
end else
begin
ChequesRetornadosaBaixar1.Enabled:= False;
end;

If PComissPDireto = 'S' THEN
BEGIN
PedidoDireto1.Enabled:= TRUE;
end else
begin
PedidoDireto1.Enabled:= False;
end;

If PContasPagarGeral = 'S' THEN
BEGIN
ContasaPagar2.Enabled:= TRUE;
end else
begin
ContasaPagar2.Enabled:= False;
end;

If PCrediario = 'S' THEN
BEGIN
Credirio2.Enabled:= TRUE;
CredirioporPerdo1.Enabled:= TRUE;
CredirioRecebidoporCliente1.Enabled:= TRUE;
CredirioRecebidoporPerodo1.Enabled:= TRUE;
end else
begin
Credirio2.Enabled:= False;
CredirioporPerdo1.Enabled:= False;
CredirioRecebidoporCliente1.Enabled:= False;
CredirioRecebidoporPerodo1.Enabled:= False;
end;

If PProdutos = 'S' THEN
BEGIN
Produtos2.Enabled:= TRUE;
end else
begin
Produtos2.Enabled:= False;
end;

If POrcamentos = 'S' THEN
BEGIN
Oramentos1.Enabled:= TRUE;
end else
begin
Oramentos1.Enabled:= False;
end;

If PPedidoDireto = 'S' THEN
BEGIN
PedidoDireto2.Enabled:= TRUE;
end else
begin
PedidoDireto2.Enabled:= False;
end;

If PRegPedidos = 'S' THEN
BEGIN
RegistrodeVendas1.Enabled:= TRUE;
end else
begin
RegistrodeVendas1.Enabled:= False;
end;

If PCancelados = 'S' THEN
BEGIN
PedidoDiretoCancelado1.Enabled:= TRUE;
end else
begin
PedidoDiretoCancelado1.Enabled:= False;
end;

If PContasPagarFor = 'S' THEN
BEGIN
ContasPagarFornecedores1.Enabled:= TRUE;
end else
begin
ContasPagarFornecedores1.Enabled:= False;
end;

If PContasPagarPlc = 'S' THEN
BEGIN
PlanodeConta1.Enabled:= TRUE;
end else
begin
PlanodeConta1.Enabled:= False;
end;

If PExtComissao = 'S' THEN
BEGIN
ExtornodeComissodeDevolues1.Enabled:= TRUE;
end else
begin
ExtornodeComissodeDevolues1.Enabled:= False;
end;

If PChequesExtornados = 'S' THEN
BEGIN
ChequesUtilizadosparaPagamento1.Enabled:= TRUE;
end else
begin
ChequesUtilizadosparaPagamento1.Enabled:= False;
end;
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////


If RBancos = 'S' THEN
BEGIN
RelatriosdeBanco1.Enabled:= TRUE;
end else
begin
RelatriosdeBanco1.Enabled:= False;
end;

If RCaixa = 'S' THEN
BEGIN
RelatriosdeCaixa1.Enabled:= TRUE;
end else
begin
RelatriosdeCaixa1.Enabled:= False;
end;

If RCheques = 'S' THEN
BEGIN
RelatriodeCheques1.Enabled:= TRUE;
end else
begin
RelatriodeCheques1.Enabled:= False;
end;

If RComissoes = 'S' THEN
BEGIN
RelatoriodeComisses1.Enabled:= TRUE;
end else
begin
RelatoriodeComisses1.Enabled:= False;
end;

If RCompras = 'S' THEN
BEGIN
RelatoriodeCompras1.Enabled:= TRUE;
end else
begin
RelatoriodeCompras1.Enabled:= False;
end;

If RContasPagar = 'S' THEN
BEGIN
RelatriosdeContasaPagar1.Enabled:= TRUE;
end else
begin
RelatriosdeContasaPagar1.Enabled:= False;
end;

If RContasReceber = 'S' THEN
BEGIN
RelatriosdeCredirio1.Enabled:= TRUE;
end else
begin
RelatriosdeCredirio1.Enabled:= False;
end;

If REstoque = 'S' THEN
BEGIN
RelatriosdeEstoque1.Enabled:= TRUE;
end else
begin
RelatriosdeEstoque1.Enabled:= False;
end;

If RVendas = 'S' THEN
BEGIN
RelatriosdeVendas1.Enabled:= TRUE;
end else
begin
RelatriosdeVendas1.Enabled:= False;
end;

///////////////////////////////////////////////
/////////////////////////////////////////////// 


If RotInfoEmpresa = 'S' THEN
BEGIN
DadosdaEmpresa1.Enabled:= TRUE;
end else
begin
DadosdaEmpresa1.Enabled:= False;
end;

If RotConfSistema = 'S' THEN
BEGIN
ConfiguraesdoSistema1.Enabled:= TRUE;
end else
begin
ConfiguraesdoSistema1.Enabled:= False;
end;

If RotHistCliente = 'S' THEN
BEGIN
HistricodoCliente1.Enabled:= TRUE;
end else
begin
HistricodoCliente1.Enabled:= False;
end;


If RotReeorcamentos = 'S' THEN
BEGIN
Oramentos2.Enabled:= TRUE;
end else
begin
Oramentos2.Enabled:= False;
end;

If RotReePedidos = 'S' THEN
BEGIN
PedidoProposta1.Enabled:= TRUE;
end else
begin
PedidoProposta1.Enabled:= False;
end;

If RotReeDuplicatas = 'S' THEN
BEGIN
Duplicatas1.Enabled:= TRUE;
end else
begin
Duplicatas1.Enabled:= False;
end;

If RotLibAcesso = 'S' THEN
BEGIN
LiberaodosMdulos1.Enabled:= TRUE;
end else
begin
LiberaodosMdulos1.Enabled:= False;
end;

// daki pra baixo
If DM.SDS_UsuariosS20.Text = 'S' THEN
BEGIN
s20.Enabled:= TRUE;
B_Vendas.Enabled:= TRUE;
end else
begin
s20.Enabled:= False;
B_Vendas.Enabled:= False;
end; 

If DM.SDS_UsuariosS63.Text = 'S' THEN
BEGIN
s63.Enabled:= TRUE;
end else
begin
s63.Enabled:= False;
end;

If DM.SDS_UsuariosS64.Text = 'S' THEN
BEGIN
s64.Enabled:= TRUE;
end else
begin
s64.Enabled:= False;
end;

If DM.SDS_UsuariosS65.Text = 'S' THEN
BEGIN
s65.Enabled:= TRUE;
end else
begin
s65.Enabled:= False;
end;

If DM.SDS_UsuariosS66.Text = 'S' THEN
BEGIN
s66.Enabled:= TRUE;
end else
begin
s66.Enabled:= False;
end;

If DM.SDS_UsuariosS67.Text = 'S' THEN
BEGIN
s67.Enabled:= TRUE;
end else
begin
s67.Enabled:= False;
end;


If DM.SDS_UsuariosS76.Text = 'S' THEN
BEGIN
s76.Enabled:= TRUE;
end else
begin
s76.Enabled:= False;
end;

If DM.SDS_UsuariosS77.Text = 'S' THEN
BEGIN
s77.Enabled:= TRUE;
end else
begin
s77.Enabled:= False;
end;


If DM.SDS_UsuariosS78.Text = 'S' THEN
BEGIN
s78.Enabled:= TRUE;
end else
begin
s78.Enabled:= False;
end;

If DM.SDS_UsuariosS79.Text = 'S' THEN
BEGIN
s79.Enabled:= TRUE;
end else
begin
s79.Enabled:= False;
end;


If DM.SDS_UsuariosS80.Text = 'S' THEN
BEGIN
s80.Enabled:= TRUE;
end else
begin
s80.Enabled:= False;
end;

If DM.SDS_UsuariosS81.Text = 'S' THEN
BEGIN
s81.Enabled:= TRUE;
end else
begin
s81.Enabled:= False;
end;


If DM.SDS_UsuariosS82.Text = 'S' THEN
BEGIN
s82.Enabled:= TRUE;
end else
begin
s82.Enabled:= False;
end;

If DM.SDS_UsuariosS83.Text = 'S' THEN
BEGIN
s83.Enabled:= TRUE;
end else
begin
s83.Enabled:= False;
end;

If DM.SDS_UsuariosS84.Text = 'S' THEN
BEGIN
s84.Enabled:= TRUE;
end else
begin
s84.Enabled:= False;
end;

If DM.SDS_UsuariosS85.Text = 'S' THEN
BEGIN
s85.Enabled:= TRUE;
end else
begin
s85.Enabled:= False;
end;

If DM.SDS_UsuariosS86.Text = 'S' THEN
BEGIN
s86.Enabled:= TRUE;
end else
begin
s86.Enabled:= False;
end;


If DM.SDS_UsuariosS87.Text = 'S' THEN
BEGIN
s87.Enabled:= TRUE;
end else
begin
s87.Enabled:= False;
end;

If DM.SDS_UsuariosS88.Text = 'S' THEN
BEGIN
s88.Enabled:= TRUE;
end else
begin
s88.Enabled:= False;
end;

If DM.SDS_UsuariosS89.Text = 'S' THEN
BEGIN
s89.Enabled:= TRUE;
end else
begin
s89.Enabled:= False;
end;

If DM.SDS_UsuariosS90.Text = 'S' THEN
BEGIN
s90.Enabled:= TRUE;
end else
begin
s90.Enabled:= False;
end;


If DM.SDS_UsuariosS91.Text = 'S' THEN
BEGIN
s91.Enabled:= TRUE;
end else
begin
s91.Enabled:= False;
end;

If DM.SDS_UsuariosS92.Text = 'S' THEN
BEGIN
s92.Enabled:= TRUE;
end else
begin
s92.Enabled:= False;
end;

If DM.SDS_UsuariosS93.Text = 'S' THEN
BEGIN
s93.Enabled:= TRUE;
end else
begin
s93.Enabled:= False;
end;

If DM.SDS_UsuariosS94.Text = 'S' THEN
BEGIN
s94.Enabled:= TRUE;
end else
begin
s94.Enabled:= False;
end;

If DM.SDS_UsuariosS95.Text = 'S' THEN
BEGIN
s95.Enabled:= TRUE;
end else
begin
s95.Enabled:= False;
end;

If DM.SDS_UsuariosS96.Text = 'S' THEN
BEGIN
s96.Enabled:= TRUE;
end else
begin
s96.Enabled:= False;
end;

If DM.SDS_UsuariosS97.Text = 'S' THEN
BEGIN
s97.Enabled:= TRUE;
end else
begin
s97.Enabled:= False;
end;

If DM.SDS_UsuariosS98.Text = 'S' THEN
BEGIN
s98.Enabled:= TRUE;
end else
begin
s98.Enabled:= False;
end;

If DM.SDS_UsuariosS99.Text = 'S' THEN
BEGIN
s99.Enabled:= TRUE;
end else
begin
s99.Enabled:= False;
end;

If DM.SDS_UsuariosS100.Text = 'S' THEN
BEGIN
s100.Enabled:= TRUE;
b_cobranca.Enabled:= TRUE;
end else
begin
s100.Enabled:= False;
b_cobranca.Enabled:= False;
end;

If DM.SDS_UsuariosS102.Text = 'S' THEN
BEGIN
s101.Enabled:= TRUE;
end else
begin
s101.Enabled:= False;
end;

If DM.SDS_UsuariosS102.Text = 'S' THEN
BEGIN
s102.Enabled:= TRUE;
end else
begin
s102.Enabled:= False;
end;

If DM.SDS_UsuariosS103.Text = 'S' THEN
BEGIN
s103.Enabled:= TRUE;
end else
begin
s103.Enabled:= False;
end;

If DM.SDS_UsuariosS104.Text = 'S' THEN
BEGIN
s104.Enabled:= TRUE;
end else
begin
s104.Enabled:= False;
end;

If DM.SDS_UsuariosS105.Text = 'S' THEN
BEGIN
s105.Enabled:= TRUE;
end else
begin
s105.Enabled:= False;
end;

If DM.SDS_UsuariosS106.Text = 'S' THEN
BEGIN
s106.Enabled:= TRUE;
end else
begin
s106.Enabled:= False;
end;

If DM.SDS_UsuariosS107.Text = 'S' THEN
BEGIN
s107.Enabled:= TRUE;
end else
begin
s107.Enabled:= False;
end;

If DM.SDS_UsuariosS108.Text = 'S' THEN
BEGIN
s108.Enabled:= TRUE;
end else
begin
s108.Enabled:= False;
end;


If DM.SDS_UsuariosS109.Text = 'S' THEN
BEGIN
s109.Enabled:= TRUE;
end else
begin
s109.Enabled:= False;
end;

If DM.SDS_UsuariosS110.Text = 'S' THEN
BEGIN
s110.Enabled:= TRUE;
end else
begin
s110.Enabled:= False;
end;

If DM.SDS_UsuariosS111.Text = 'S' THEN
BEGIN
s111.Enabled:= TRUE;
end else
begin
s111.Enabled:= False;
end;

If DM.SDS_UsuariosS112.Text = 'S' THEN
BEGIN
s112.Enabled:= TRUE;
end else
begin
s112.Enabled:= False;
end;

If DM.SDS_UsuariosS113.Text = 'S' THEN
BEGIN
s113.Enabled:= TRUE;
end else
begin
s113.Enabled:= False;
end;


If DM.SDS_UsuariosS113.Text = 'S' THEN
BEGIN
s114.Enabled:= TRUE;
end else
begin
s114.Enabled:= False;
end;

If DM.SDS_UsuariosS115.Text = 'S' THEN
BEGIN
s115.Enabled:= TRUE;
end else
begin
s115.Enabled:= False;
end;

If DM.SDS_UsuariosS115.Text = 'S' THEN
BEGIN
s116.Enabled:= TRUE;
end else
begin
s116.Enabled:= False;
end;

If DM.SDS_UsuariosS117.Text = 'S' THEN
BEGIN
s117.Enabled:= TRUE;
end else
begin
s117.Enabled:= False;
end;

If DM.SDS_UsuariosS118.Text = 'S' THEN
BEGIN
s118.Enabled:= TRUE;
end else
begin
s118.Enabled:= False;
end;

If DM.SDS_UsuariosS119.Text = 'S' THEN
BEGIN
s119.Enabled:= TRUE;
end else
begin
s119.Enabled:= False;
end;

If DM.SDS_UsuariosS120.Text = 'S' THEN
BEGIN
s120.Enabled:= TRUE;
B_os.Enabled:= TRUE;
end else
begin
s120.Enabled:= False;
B_os.Enabled:= False;
end;


If DM.SDS_UsuariosS121.Text = 'S' THEN
BEGIN
s121.Enabled:= TRUE;
B_monitor_os.Enabled:= TRUE;
end else
begin
s121.Enabled:= False;
B_monitor_os.Enabled:= False;
end;

If DM.SDS_UsuariosS122.Text = 'S' THEN
BEGIN
s122.Enabled:= TRUE;
end else
begin
s122.Enabled:= False;
end;

If DM.SDS_UsuariosS123.Text = 'S' THEN
BEGIN
s123.Enabled:= TRUE;
end else
begin
s123.Enabled:= False;
end;

If DM.SDS_UsuariosS124.Text = 'S' THEN
BEGIN
s124.Enabled:= TRUE;
end else
begin
s124.Enabled:= False;
end;

If DM.SDS_UsuariosS125.Text = 'S' THEN
BEGIN
s125.Enabled:= TRUE;
end else
begin
s125.Enabled:= False;
end;

If DM.SDS_UsuariosS126.Text = 'S' THEN
BEGIN
s126.Enabled:= TRUE;
end else
begin
s126.Enabled:= False;
end;

If DM.SDS_UsuariosS127.Text = 'S' THEN
BEGIN
s127.Enabled:= TRUE;
end else
begin
s127.Enabled:= False;
end;

If DM.SDS_UsuariosS128.Text = 'S' THEN
BEGIN
s128.Enabled:= TRUE;
end else
begin
s128.Enabled:= False;
end;

If DM.SDS_UsuariosS129.Text = 'S' THEN
BEGIN
s129.Enabled:= TRUE;
end else
begin
s129.Enabled:= False;
end;

If DM.SDS_UsuariosS130.Text = 'S' THEN
BEGIN
s130.Enabled:= TRUE;
end else
begin
s130.Enabled:= False;
end;

If DM.SDS_UsuariosS131.Text = 'S' THEN
BEGIN
s131.Enabled:= TRUE;
end else
begin
s131.Enabled:= False;
end;

If DM.SDS_UsuariosS132.Text = 'S' THEN
BEGIN
s132.Enabled:= TRUE;
end else
begin
s132.Enabled:= False;
end;

If DM.SDS_UsuariosS133.Text = 'S' THEN
BEGIN
s133.Enabled:= TRUE;
end else
begin
s133.Enabled:= False;
end;


If DM.SDS_UsuariosS134.Text = 'S' THEN
BEGIN
s134.Enabled:= TRUE;
end else
begin
s134.Enabled:= False;
end;

If DM.SDS_UsuariosS135.Text = 'S' THEN
BEGIN
s135.Enabled:= TRUE;
end else
begin
s135.Enabled:= False;
end;


If DM.SDS_UsuariosS136.Text = 'S' THEN
BEGIN
s136.Enabled:= TRUE;
end else
begin
s136.Enabled:= False;
end;

If DM.SDS_UsuariosS137.Text = 'S' THEN
BEGIN
s137.Enabled:= TRUE;
end else
begin
s137.Enabled:= False;
end;

If DM.SDS_UsuariosS138.Text = 'S' THEN
BEGIN
s138.Enabled:= TRUE;
end else
begin
s138.Enabled:= False;
end;

If DM.SDS_UsuariosS139.Text = 'S' THEN
BEGIN
s139.Enabled:= TRUE;
end else
begin
s139.Enabled:= False;
end;

If DM.SDS_UsuariosS140.Text = 'S' THEN
BEGIN
s140.Enabled:= TRUE;
end else
begin
s140.Enabled:= False;
end;

If DM.SDS_UsuariosS141.Text = 'S' THEN
BEGIN
s141.Enabled:= TRUE;
end else
begin
s141.Enabled:= False;
end;

If DM.SDS_UsuariosS142.Text = 'S' THEN
BEGIN
s142.Enabled:= TRUE;
end else
begin
s142.Enabled:= False;
end;

If DM.SDS_UsuariosS143.Text = 'S' THEN
BEGIN
s143.Enabled:= TRUE;
end else
begin
s143.Enabled:= False;
end;
//////////////////////////////////////////////
end;
end;


procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  try
    Form_Usuario:=  TForm_Usuario.Create(self);
    Form_Usuario.ShowModal;
  finally
    if Form_Usuario.fecha = True then
    begin
      if DM.SQLC.Connected  = true then
      BEGIN
        USER := DM.SDS_UsuariosUSUARIO.Text;
        FormPrincipal.suiStatusBar1.Panels[3].Text:= USER;


        userLogado:= USER;

        liberaUser;
        Application.ProcessMessages;

        usuario_temp :=  DM.SDS_Usuarios.FieldByname('CODIGO').AsString;
        iCodUsu     := DM.SDS_Usuarios.FieldByname('CODIGO').Asinteger;
        Application.ProcessMessages;

        Application.ProcessMessages;

      //  advToolBar1.Width := FormPrincipal.Width;
      end;
    end;
    FreeAndNil(Form_Usuario);
  end;
  Sleep(2000);
  Action1.Execute;
end;

procedure TFormPrincipal.Unidades1Click(Sender: TObject);
begin
Try
if FormUnidades=nil   then
    begin
     FormUnidades:=TFormUnidades.Create(self);
      FormUnidades.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;
end;

procedure TFormPrincipal.Marca1Click(Sender: TObject);
begin
Try
if FormMarcas=nil   then
    begin
     FormMarcas:=TFormMarcas.Create(self);
      FormMarcas.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;
end;

procedure TFormPrincipal.Grupo1Click(Sender: TObject);
begin
Try
if FormGrupos=nil   then
    begin
     FormGrupos:=TFormGrupos.Create(self);
      FormGrupos.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;
end;

procedure TFormPrincipal.Fornecedor1Click(Sender: TObject);
begin

     FormFornecedores:=TFormFornecedores.Create(self);
    //  FormFornecedores.Show;

end;

procedure TFormPrincipal.Produtos1Click(Sender: TObject);
begin
//  AddAChild(TFormProdutos, FormProdutos);
 //  TFormProdutos.Create(Application);
{Try
  if FormProdutos=nil   then
    begin
     FormProdutos:=TFormProdutos.Create(self);
  //     FormProdutos.Show;
       end;
      except
     ShowMessage('Erro ao tentar exibir o formulário!!');
 end;  }

  //FormProdutos:=TFormProdutos.Create(self);

{ LockWindowUpdate(Handle);
 // if (FormProdutos= nil) then
    begin
      try
        Application.CreateForm (TFormProdutos, FormProdutos);
      except
      //  FormProdutos.Free;
      end;
    end;
    //FormProdutos.Show;
 // LockWindowUpdate(0);}


      FormProdutos:=NIL;
      FormProdutos:=TFormProdutos.Create(self);
      FormProdutos.FormStyle := fsMDIChild;
      FormProdutos.Visible:= True;

 end;

procedure TFormPrincipal.RxSpeedButton4Click(Sender: TObject);
begin
Try
if FormMenuCaixa=nil   then
    begin
     FormMenuCaixa:=TFormMenuCaixa.Create(self);
      FormMenuCaixa.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.Bancos1Click(Sender: TObject);
begin
Try
if FormBancos=nil   then
    begin
     FormBancos:=TFormBancos.Create(self);
      FormBancos.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;
end;

procedure TFormPrincipal.Agncias1Click(Sender: TObject);
begin
Try
if FormAgencias=nil   then
    begin
     FormAgencias:=TFormAgencias.Create(self);
      FormAgencias.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;
end;

procedure TFormPrincipal.SubGrupos1Click(Sender: TObject);
begin
Try
if FormSubGrupos=nil   then
    begin
     FormSubGrupos:=TFormSubGrupos.Create(self);
      FormSubGrupos.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.EntradadeNotasFiscaiseAtualizaodeEstoque1Click(
  Sender: TObject);
begin
{  DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
begin
Try
if FormNotasFiscais=nil   then
    begin
     FormNotasFiscais:=TFormNotasFiscais.Create(self);
    //  FormNotasFiscais.ShowModal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end; }
end;

procedure TFormPrincipal.MotivoRetorno1Click(Sender: TObject);
begin
Try
if FormMotivoRetorno=nil   then
    begin
     FormMotivoRetorno:=TFormMotivoRetorno.Create(self);
      FormMotivoRetorno.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.Sobre1Click(Sender: TObject);
begin
Try
if FormSobre=nil then
    begin
     FormSobre:=TFormSobre.Create(self);
      FormSobre.ShowModal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.Lanamentos1Click(Sender: TObject);
begin
{if FormLancamentosCP=nil   then
    begin
     FormLancamentosCP:=TFormLancamentosCP.Create(self);
      FormLancamentosCP.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;}
end;

procedure TFormPrincipal.AutorizaodePagamento1Click(Sender: TObject);
begin

   {  FormAutorizacaoCP:=TFormAutorizacaoCP.Create(self);
      FormAutorizacaoCP.Show;   }
end;

procedure TFormPrincipal.BaixadeContasaPagar1Click(Sender: TObject);
begin
{DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
begin
Try
if FormBaixaCP=nil   then
    begin
     FormBaixaCP:=TFormBaixaCP.Create(self);
      FormBaixaCP.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;}
end;

procedure TFormPrincipal.ContasaPagar2Click(Sender: TObject);
begin
Try
if FormConsultaContasPagar=nil   then
    begin
     FormConsultaContasPagar:=TFormConsultaContasPagar.Create(self);
     FormConsultaContasPagar.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.RelatriosdeContasaPagar1Click(Sender: TObject);
begin
  try
    frmlista_pagar2:= Tfrmlista_pagar2.Create(nil);
    frmlista_pagar2.ShowModal;
  finally
    FreeAndNil(frmlista_pagar2);
  end;
end;

procedure TFormPrincipal.Credirio1Click(Sender: TObject);
begin
DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
begin
Try
if FormCRCrediario=nil   then
    begin
     FormCRCrediario:=TFormCRCrediario.Create(self);
      FormCRCrediario.Showmodal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end;
end;

procedure TFormPrincipal.DadosdaEmpresa1Click(Sender: TObject);
begin
  AbreForm(FormEmpresa, TFormEmpresa);
end;

procedure TFormPrincipal.ContaCorrente1Click(Sender: TObject);
begin
Try
if FormContaBancaria=nil   then
    begin
     FormContaBancaria:=TFormContaBancaria.Create(self);
     FormContaBancaria.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;

end;

procedure TFormPrincipal.Cheques1Click(Sender: TObject);
begin
Try
if FormRecebeCheque=nil   then
    begin
     FormRecebeCheque:=TFormRecebeCheque.Create(self);
      FormRecebeCheque.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;

end;

procedure TFormPrincipal.CaixaAnaltico1Click(Sender: TObject);
begin
Try
if FormCaixaAnalitico=nil   then
    begin
     FormCaixaAnalitico:=TFormCaixaAnalitico.Create(self);
      FormCaixaAnalitico.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
Close;
end;

procedure TFormPrincipal.Produtos2Click(Sender: TObject);
begin
Try
if FormConsultaProdutos=nil   then
    begin
     FormConsultaProdutos:=TFormConsultaProdutos.Create(self);
      FormConsultaProdutos.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;

procedure TFormPrincipal.Usurios1Click(Sender: TObject);
begin
Try
if FormUsuarios=nil   then
    begin
     FormUsuarios:=TFormUsuarios.Create(self);
      FormUsuarios.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;

procedure TFormPrincipal.DepositoemConta1Click(Sender: TObject);
begin
Try
if FormDepositos=nil   then
    begin
     FormDepositos:=TFormDepositos.Create(self);
      FormDepositos.tag := 1;
      FormDepositos.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;

procedure TFormPrincipal.RetornodeCheques1Click(Sender: TObject);
begin
Try
if FormRetornoCheques=nil   then
    begin
     FormRetornoCheques:=TFormRetornoCheques.Create(self);
      FormRetornoCheques.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;

procedure TFormPrincipal.BaixadeChequesRetornados1Click(Sender: TObject);
begin
Try
if FormBaixaChequeRetornado=nil   then
    begin
     FormBaixaChequeRetornado:=TFormBaixaChequeRetornado.Create(self);
      FormBaixaChequeRetornado.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;

procedure TFormPrincipal.Lanamentos2Click(Sender: TObject);
begin
{Try
if FormLancamentosCaixa=nil   then
    begin
     FormLancamentosCaixa:=TFormLancamentosCaixa.Create(self);
      FormLancamentosCaixa.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;    }
end;

procedure TFormPrincipal.LanamentosSaidadeCapital1Click(Sender: TObject);
begin
{Try
if FormLancamentosCaixaSaida=nil   then
    begin
     FormLancamentosCaixaSaida:=TFormLancamentosCaixaSaida.Create(self);
      FormLancamentosCaixaSaida.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;}
end;

procedure TFormPrincipal.CaixaGeral1Click(Sender: TObject);
begin
Try
if FormCaixaEspecifico=nil   then
    begin
     FormCaixaEspecifico:=TFormCaixaEspecifico.Create(self);
      FormCaixaEspecifico.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;

procedure TFormPrincipal.ControleEspecfico1Click(Sender: TObject);
begin
Try
if FormBancoEspecifico=nil   then
    begin
     FormBancoEspecifico:=TFormBancoEspecifico.Create(self);
      FormBancoEspecifico.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;

procedure TFormPrincipal.RelatriosdeCaixa1Click(Sender: TObject);
begin
Try
if FormRelatorioCaixa=nil   then
    begin
     FormRelatorioCaixa:=TFormRelatorioCaixa.Create(self);
      FormRelatorioCaixa.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormPrincipal.Credirio2Click(Sender: TObject);
begin
Try
if FormConsultaCrediario=nil   then
    begin
     FormConsultaCrediario:=TFormConsultaCrediario.Create(self);
      FormConsultaCrediario.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end;

procedure TFormPrincipal.BaixadeCheques1Click(Sender: TObject);
begin
Try
if FormRecebeCheque=nil   then
    begin
     FormRecebeCheque:=TFormRecebeCheque.Create(self);
      FormRecebeCheque.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end;

procedure TFormPrincipal.ChequesPrDatados1Click(Sender: TObject);
begin
Try
if FormConsultaCheques=nil   then
    begin
     FormConsultaCheques:=TFormConsultaCheques.Create(self);
     FormConsultaCheques.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.ChequesaBaixar1Click(Sender: TObject);
begin

     FormConsultaCheques:=TFormConsultaCheques.Create(self);
     FormConsultaCheques.ShowModal;

end;

procedure TFormPrincipal.ChequesRetornadosaBaixar1Click(Sender: TObject);
begin
Try
if FormConsultaChequesRetornados=nil   then
    begin
     FormConsultaChequesRetornados:=TFormConsultaChequesRetornados.Create(self);
     FormConsultaChequesRetornados.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.ChequesBaixadosporPerdo1Click(Sender: TObject);
begin
{Try
If FormConsultaChequesBaixados=nil   then
    begin }
     FormConsultaChequesBaixados:=TFormConsultaChequesBaixados.Create(self);
     FormConsultaChequesBaixados.ShowModal;
{      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end; }
end;

procedure TFormPrincipal.ConfiguraesdeVdeo1Click(Sender: TObject);
begin
WinExec('RunDLL32.exe Shell32.DLL,Control_RunDLL Desk.cpl', SW_Show)
end;

procedure TFormPrincipal.Calculadora1Click(Sender: TObject);
begin
Calculator.Execute;
end;

procedure TFormPrincipal.WindowsExplorer1Click(Sender: TObject);
begin
WinExec('EXPLORER.EXE ',sw_showNormal);
end;

procedure TFormPrincipal.PedidoDireto2Click(Sender: TObject);
begin
Try
if FormConsultaPedidoDireto=nil   then
    begin
     FormConsultaPedidoDireto:=TFormConsultaPedidoDireto.Create(self);
     FormConsultaPedidoDireto.suiButton4.Enabled := False;
     FormConsultaPedidoDireto.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Application.MessageBox('Deseja realmente fechar o sistema?', 'Confirmar',
    MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_NO
  then
    CanClose:= False
  else
  begin
    if FileExists('C:\StartNet_Sistemas\BACKUP.EXE') and
      (UpperCase(Trim(TBiblioteca.LerIni('siace.ini', 'DADOS', 'DATABASE'))) = UpperCase('C:\StartNet_Sistemas\STARTNET.FDB'))
    then
    begin
      if Application.MessageBox('Deseja fazer um backup do banco de dados?',
        'Backup do banco de dados',
        MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES
      then
        ShellExecute(HWND_DESKTOP,'OPEN', PChar('C:\StartNet_Sistemas\BACKUP.EXE'), nil, nil, SW_SHOWNORMAL);
    end;
  end;
end;

procedure TFormPrincipal.SaqueemConta1Click(Sender: TObject);
begin
Try
if FormSaques=nil   then
    begin
     FormSaques:=TFormSaques.Create(self);
      FormSaques.ShowModal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;

procedure TFormPrincipal.Oramentos1Click(Sender: TObject);
begin
Try
if FormConsultaOrcamentos=nil   then
    begin
     FormConsultaOrcamentos:=TFormConsultaOrcamentos.Create(self);
     FormConsultaOrcamentos.suiButton4.Enabled := False;
     FormConsultaOrcamentos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.RegistrodeVendas1Click(Sender: TObject);
begin
{Try
if FormConsultaRegVendas=nil   then
    begin
     FormConsultaRegVendas:=TFormConsultaRegVendas.Create(self);
     FormConsultaRegVendas.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end; }
end;

procedure TFormPrincipal.AlterarSenha1Click(Sender: TObject);
begin
Try
if FormAlteraSenha=nil   then
    begin
     FormAlteraSenha:=TFormAlteraSenha.Create(self);
      FormAlteraSenha.Showmodal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end; 
end;

procedure TFormPrincipal.LiberaodosMdulos1Click(Sender: TObject);
begin
Try
if FormLibAcesso=nil   then
    begin
     FormLibAcesso:=TFormLibAcesso.Create(self);
      FormLibAcesso.Showmodal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
{Try
if FormLiberacaoNew=nil   then
    begin
     FormLiberacaoNew:=TFormLiberacaoNew.Create(self);
      FormLiberacaoNew.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;}
end;

procedure TFormPrincipal.RxSpeedButton3Click(Sender: TObject);
begin
DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
if (DM.SDS_Usuarios.fieldbyname('data').AsDateTime <> Date) and (DM.SDS_Usuarios.fieldbyname('situacao').asinteger = 1) then
    begin
    application.MessageBox('A Data do Caixa está diferente da atual! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
    Exit;
   end
   else
begin
Try
  //If formVendas = nil   then
    begin
     formVendas:=TformVendas.Create(self);
     formVendas.tag := 0;
    //  formVendas.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Vendas!!');
end;
//Application.CreateForm(TformVendas, formVendas);
end;
end;

procedure TFormPrincipal.RxSpeedButton7Click(Sender: TObject);
begin
Try
if FormMenuBancos=nil   then
    begin
     FormMenuBancos:=TFormMenuBancos.Create(self);
      FormMenuBancos.Showmodal;
      end;
      except
     //  ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.Ladoalado1Click(Sender: TObject);
begin
  Ladoalado1.Checked := Not Ladoalado1.Checked;
  X := TIniFile.Create(ExtractFilePath(Application.ExeName)+'siace.ini');
  X.WriteBool('Papel de parede','Lado a lado',Ladoalado1.Checked);
  Image1.Stretch := Ladoalado1.Checked;
  X.Free;
  FormPrincipal.WindowState := wsMinimized;
  FormPrincipal.WindowState := wsMaximized;
end;

procedure TFormPrincipal.Novo1Click(Sender: TObject);
begin
  Try
  OpenPictureDialog1.Execute;
  Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  X := TIniFile.Create(ExtractFilePath(Application.ExeName)+'siace.ini');
  X.WriteString('Papel de parede','Caminho',OpenPictureDialog1.FileName);
  X.Free;
//  Image1.Picture.Assign();
//  FormPrincipal.Refresh;
  FormPrincipal.WindowState := wsMinimized;
  FormPrincipal.WindowState := wsMaximized;
  Except
   Abort;
   end;
end;

procedure TFormPrincipal.RxSpeedButton8Click(Sender: TObject);
begin
Try
if FormMenuCR=nil   then
    begin
     FormMenuCR:=TFormMenuCR.Create(self);
      FormMenuCR.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.RxSpeedButton2Click(Sender: TObject);
begin
{Try
if FormMenuCP=nil   then
    begin }
DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
begin
     frmcontaspagar:=Tfrmcontaspagar.Create(self);
      frmcontaspagar.Showmodal;
{      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');  }
end;
end;

procedure TFormPrincipal.RxSpeedButton9Click(Sender: TObject);
begin
Try
if FormLogoff=nil   then
    begin
     FormLogoff:=TFormLogoff.Create(self);
      FormLogoff.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
//ucMyControl.StartLogin; }
{try
Form_Usuario:=TForm_Usuario.Create(self);
Form_Usuario.ShowModal;  
USER := DM.SDS_UsuariosUSUARIO.Text;
FormPrincipal.suiStatusBar1.Panels[1].Text:= USER;
liberaUser;
userLogado:= USER;
finally
Form_Usuario.Release;
end; }
end;

procedure TFormPrincipal.CadeadodoSistema1Click(Sender: TObject);
begin
Application.MessageBox('', 'Caption', MB_OK);
  Try
    if FormLogoff=nil   then
    begin
      FormLogoff:=TFormLogoff.Create(self);
      FormLogoff.ShowModal;
    end;
  except
     ShowMessage('Erro ao Tentar Exibir o Formulário!!');
  end;
end;

procedure TFormPrincipal.ConfiguraesdoSistema1Click(Sender: TObject);
begin
  try
    FormConfiguracoes:= TFormConfiguracoes.Create(Self);
    FormConfiguracoes.ShowModal;
  finally
    FreeAndNil(FormConfiguracoes);
  end;
end;

procedure TFormPrincipal.PedidoProposta1Click(Sender: TObject);
begin
Try
if FormReemissaoPP=nil   then
    begin
     FormReemissaoPP:=TFormReemissaoPP.Create(self);
      FormReemissaoPP.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.Oramentos2Click(Sender: TObject);
begin
Try
if FormReemissaoO=nil   then
    begin
     FormReemissaoO:=TFormReemissaoO.Create(self);
      FormReemissaoO.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.PedidoDireto3Click(Sender: TObject);
begin
Try
if FormConsultaComissaoPD=nil   then
    begin
     FormConsultaComissaoPD:=TFormConsultaComissaoPD.Create(self);
     FormConsultaComissaoPD.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.FaturamentoCaixaRegistradora1Click(
  Sender: TObject);
begin
Try
if FormCaixaRegistradora=nil   then
    begin
     FormCaixaRegistradora:=TFormCaixaRegistradora.Create(self);
    // FormCaixaRegistradora.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.EntregadePedidoProposta1Click(Sender: TObject);
begin
Try
if FormEntregadePedidos=nil   then
    begin
     FormEntregadePedidos:=TFormEntregadePedidos.Create(self);
     FormEntregadePedidos.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.PlanodeContas1Click(Sender: TObject);
begin
Try
if FormPlanoContas=nil   then
    begin
     FormPlanoContas:=TFormPlanoContas.Create(self);
      FormPlanoContas.Show;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;
end;

procedure TFormPrincipal.RegistrodePedidosECF1Click(Sender: TObject);
begin
Try
if FormCupomFiscal = nil   then
    begin
     FormCupomFiscal:=TFormCupomFiscal.Create(self);
     FormCupomFiscal.E_Usuario.Caption:=FormPrincipal.UserLogado;
     FormCupomFiscal.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.S22Click(Sender: TObject);
begin
DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
if (DM.SDS_Usuarios.fieldbyname('data').AsDateTime <> Date) and (DM.SDS_Usuarios.fieldbyname('situacao').asinteger = 1) then
    begin
    application.MessageBox('A Data do Caixa está diferente da atual! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
    Exit;
   end
   else
Try
if FormCupomFiscal = nil   then
    begin
     FormCupomFiscal:=TFormCupomFiscal.Create(self);
     FormCupomFiscal.E_Usuario.Caption:=FormPrincipal.UserLogado;
     FormCupomFiscal.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.DevoluoParcialdePedidoProposta1Click(
  Sender: TObject);
begin
Try
if FormDevolucaoPedido=nil   then
   begin
     FormDevolucaoPedido:=TFormDevolucaoPedido.Create(self);
     FormDevolucaoPedido.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.DevoluoTrocadeProdutosPedidos1Click(
  Sender: TObject);
begin
Try
if FormPagDevolucaoPedidos = nil   then
    begin
     FormPagDevolucaoPedidos:=TFormPagDevolucaoPedidos.Create(self);
     FormPagDevolucaoPedidos.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.ChequesUtilizadosparaPagamento1Click(
  Sender: TObject);
begin
Try
if FormConsultaChequesPag=nil   then
    begin
     FormConsultaChequesPag:=TFormConsultaChequesPag.Create(self);
     FormConsultaChequesPag.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.ExtornodeComissodeDevolues1Click(Sender: TObject);
begin
Try
if FormConsultaExtornoComissao=nil   then
    begin
     FormConsultaExtornoComissao:=TFormConsultaExtornoComissao.Create(self);
     FormConsultaExtornoComissao.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.ContasPagarFornecedores1Click(Sender: TObject);
begin
Try
if FormConsultaContasPagarFor=nil   then
    begin
     FormConsultaContasPagarFor:=TFormConsultaContasPagarFor.Create(self);
     FormConsultaContasPagarFor.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.PlanodeConta1Click(Sender: TObject);
begin
Try
if FormConsultaContasPagarPLC=nil   then
    begin
     FormConsultaContasPagarPLC:=TFormConsultaContasPagarPLC.Create(self);
     FormConsultaContasPagarPLC.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.PedidoDiretoCancelado1Click(Sender: TObject);
begin
Try
if FormConsultaPedidoCancelado=nil   then
    begin
     FormConsultaPedidoCancelado:=TFormConsultaPedidoCancelado.Create(self);
     FormConsultaPedidoCancelado.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!');
end;
end;

procedure TFormPrincipal.RxSpeedButton5Click(Sender: TObject);
begin
Try
if FormMenuPesquisas=nil   then
    begin
     FormMenuPesquisas:=TFormMenuPesquisas.Create(self);
      FormMenuPesquisas.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.RelatriosdeBanco1Click(Sender: TObject);
begin
Try
if FormRelatorioBanco=nil   then
    begin
     FormRelatorioBanco:=TFormRelatorioBanco.Create(self);
      FormRelatorioBanco.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.Oramentos3Click(Sender: TObject);
begin
{Try
if FormNOrcamentos = nil   then
     begin
     FormNOrcamentos:=TFormNOrcamentos.Create(self);
     FormNOrcamentos.E_Usuario.Text:=FormPrincipal.UserLogado;
     FormNOrcamentos.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;}
end;

procedure TFormPrincipal.HistricodoCliente1Click(Sender: TObject);
begin
     FormHistoricoCliente:=TFormHistoricoCliente.Create(self);
      FormHistoricoCliente.Show;
end;

procedure TFormPrincipal.RelatriodeCheques1Click(Sender: TObject);
begin
Try
if FormRelatorioCheques=nil   then
    begin
     FormRelatorioCheques:=TFormRelatorioCheques.Create(self);
     FormRelatorioCheques.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.ComprasLaticinio1Click(Sender: TObject);
begin
Try
if FormPordLaticinios=nil   then
    begin
     FormPordLaticinios:=TFormPordLaticinios.Create(self);
     FormPordLaticinios.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;

end;

procedure TFormPrincipal.CondiodePagamento1Click(Sender: TObject);
begin
Try
if FormCondPagamento=nil   then
    begin
     FormCondPagamento:=TFormCondPagamento.Create(self);
      FormCondPagamento.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.Duplicatas1Click(Sender: TObject);
begin
Try
if FormReemissaoDuplicata=nil   then
    begin
     FormReemissaoDuplicata:=TFormReemissaoDuplicata.Create(self);
      FormReemissaoDuplicata.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.CredirioporPerdo1Click(Sender: TObject);
begin
Try
if FormConsultaCrediarioReceber=nil   then
    begin
     FormConsultaCrediarioReceber:=TFormConsultaCrediarioReceber.Create(self);
      FormConsultaCrediarioReceber.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário !!');
end;
end;

procedure TFormPrincipal.CredirioRecebidoporCliente1Click(Sender: TObject);
begin
if FormConsultaCrediarioRecebido=nil   then
    begin
     FormConsultaCrediarioRecebido:=TFormConsultaCrediarioRecebido.Create(self);
      FormConsultaCrediarioRecebido.Show;
end;
end;

procedure TFormPrincipal.CredirioRecebidoporPerodo1Click(Sender: TObject);
begin
if FormConsultaCrediarioRecebidoPeriodo=nil   then
    begin
     FormConsultaCrediarioRecebidoPeriodo:=TFormConsultaCrediarioRecebidoPeriodo.Create(self);
      FormConsultaCrediarioRecebidoPeriodo.Show;
end;
end;

procedure TFormPrincipal.RxSpeedButton6Click(Sender: TObject);
begin
formprincipal.close;
end;

procedure TFormPrincipal.s77Click(Sender: TObject);
begin
Try
if FormSeccao=nil   then
 begin
   FormSeccao:=TFormSeccao.Create(self);
      FormSeccao.Show;
       end;
         except
       ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;

end;

procedure TFormPrincipal.s78Click(Sender: TObject);
begin
//Try
if FormCategorias=nil   then
    begin
    FormCategorias:=TFormCategorias.Create(self);
      FormCategorias.Show;
      end;
 {     except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end; }
end;

procedure TFormPrincipal.s79Click(Sender: TObject);
begin
Try
if FormSimilares=nil   then
    begin
    FormSimilares := TFormSimilares.Create(self);
      FormSimilares.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s106Click(Sender: TObject);
begin
Try
if FormOstpBens=nil   then
    begin
    FormOstpBens := TFormOstpBens.Create(self);
    //  FormOstpBens.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s113Click(Sender: TObject);
begin
 Try
if FormOsMARCA=nil   then
    begin
    FormOsmARCA := TFormOsMARCA.Create(self);
      FormOsMARCA.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s116Click(Sender: TObject);
begin
 Try
if FormOsCORES=nil   then
    begin
    FormOsCORES := TFormOscoRES.Create(self);
      //FormOsCORES.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s115Click(Sender: TObject);
begin
  Try
if FormOslocalizacao=nil   then
    begin
    FormOslocalizacao := TFormOslocalizacao.Create(self);
    //  FormOslocalizacao.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s114Click(Sender: TObject);
begin
  Try
if FormOsbem=nil   then
   begin
    FormOsbem := TFormOsbem.Create(application);
      //FormOsbem.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;
// ChamaJanela(TFormOsbem, FormOsbem);
// END;


procedure TFormPrincipal.s117Click(Sender: TObject);
begin
 Try
if FormOSAtendimento=nil   then
    begin
    FormOSAtendimento := TFormOSAtendimento.Create(self);
   //   FormOSAtendimento.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s118Click(Sender: TObject);
begin
Try
if FormOSPrioridades=nil   then
    begin
    FormOSPrioridades := TFormOSPrioridades.Create(self);
    //  FormOSPrioridades.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;
procedure TFormPrincipal.StatusdoAtendimento1Click(Sender: TObject);
begin
 Try
if FormOSstatus=nil   then
    begin
    FormOSstatus := TFormOSStatus.Create(self);
      FormOSStatus.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s120Click(Sender: TObject);
begin
    FormOS := TFormOS.Create(self);
    //  FormOS.Show;

end;

procedure TFormPrincipal.s87Click(Sender: TObject);
begin

    FormlyBancos := TFormLyBancos.Create(self);
      FormlyBancos.ShowModal;
END;

procedure TFormPrincipal.s102Click(
  Sender: TObject);
begin
TRY
if FrmTitulosLista=nil   then
    begin
    FrmTitulosLista := TFrmTitulosLista.Create(self);
      FrmTitulosLista.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s104Click(Sender: TObject);
begin
 TRY
if FormBoletosBanc=nil   then
    begin
    FormBoletosBanc := TFormBoletosBanc.Create(self);
      FormBoletosBanc.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s103Click(Sender: TObject);
begin
TRY
if FormArquivodeRetorno748=nil   then
    begin
    FormArquivodeRetorno748 := TFormArquivodeRetorno748.Create(self);
      FormArquivodeRetorno748.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário Baixa de Titulos!!');
end;
end;
procedure TFormPrincipal.LayoutdoContratodeVendas1Click(Sender: TObject);
begin
TRY
if formContrato=nil   then
    begin
    formContrato := TformContrato.Create(self);
      formContrato.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Contratos!!');
end;
end;

procedure TFormPrincipal.s95Click(Sender: TObject);
begin
 TRY
if FormInventarioEstoque=nil   then
    begin
    FormInventarioEstoque := TFormInventarioEstoque.Create(self);
     // FormAjusteEstoque.Show;
      end;
     except
    ShowMessage('Erro ao Tentar Exibir o Formulário de Ajuste de Estoque, Contate o Administrador do sistema!!');
end;
end;

procedure TFormPrincipal.S135Click(Sender: TObject);
begin
 TRY
   if formECF=nil   then
    BEGIN
     //CoInitialize(nil);
     //Application.CreateForm(TformECF, formECF);
     formECF := TformECF.Create(self);
     formECF.Showmodal;
     //CoUninitialize;
    end;
     except
       ShowMessage('Erro ao Tentar Exibir o Formulario de Configuração do ECF!!');
    end;
end;

procedure TFormPrincipal.BackupRestaurar1Click(Sender: TObject);
begin
 TRY
   if formBackup=nil   then
    BEGIN
     formBackup := TformBackup.Create(self);
     formBackup.show;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Backup!!');
end;
end;

procedure TFormPrincipal.Calendrio1Click(Sender: TObject);
begin
 TRY
   if formCalendario=nil   then
    BEGIN
     formCalendario := TformCalendario.Create(self);
     formCalendario.show;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulario de Calendario!!');
end;
end;

procedure TFormPrincipal.RelatorioVendas1Click(Sender: TObject);
begin
TRY
   if FormRelVendas=nil   then
    BEGIN
     FormRelVendas := TFormRelVendas.Create(self);
     FormRelVendas.showModal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir o Relatório de Vendas!!');
end;
end;

procedure TFormPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
 if (Key=VK_F1) then
      begin
      Calculator.Execute;
     // calculator.Execute(1);
      end;

      if  ((ssalt in shift) and (Key = 90))  then
      begin
      FormConsultaProdutos:=TFormConsultaProdutos.Create(self);
      FormConsultaProdutos.ShowModal;
    //  FormConsProdutos:=TFormConsProdutos.Create(self);
    //  FormConsProdutos.ShowModal;
      end;


      if (Key=VK_F2) then
      begin
      RxSpeedButton3Click(Sender);
      end;

end;

procedure TFormPrincipal.s20Click(Sender: TObject);
begin
DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
if (DM.SDS_Usuarios.fieldbyname('data').AsDateTime <> Date) and (DM.SDS_Usuarios.fieldbyname('situacao').asinteger = 1) then
    begin
    application.MessageBox('A Data do Caixa está diferente da atual! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
    Exit;
   end
   else
begin
TRY
    // if FormVendas=nil   then
    BEGIN
     FormVendas := TFormVendas.Create(self);
     formVendas.tag := 0;
     //  FormVendas.show;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir o Tela de Vendas!!');
end;
end;
end;

procedure TFormPrincipal.s100Click(Sender: TObject);
begin

     FormCobranca := TFormCobranca.Create(self);
     //FormCobranca.ShowModal;

end;

procedure TFormPrincipal.s83Click(Sender: TObject);
begin

    Formcidades:=TFormcidades.Create(self);
      Formcidades.ShowModal;

end;

procedure TFormPrincipal.s85Click(Sender: TObject);
begin

    Formbairros:=TFormbairros.Create(self);
      Formbairros.ShowModal;
end;

procedure TFormPrincipal.s84Click(Sender: TObject);
begin

    FormEstados:=TFormEstados.Create(self);
      FormEstados.ShowModal;

end;

procedure TFormPrincipal.S130Click(
  Sender: TObject);
begin
 Try
if FormABcFarma=nil   then
    begin
    FormABcFarma:=TFormABcFarma.Create(self);
      FormABcFarma.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Importacão Abc Farma!!');
end;
end;

procedure TFormPrincipal.ComprasGeral1Click(Sender: TObject);
begin
Try
if FormRelatorioCompras=nil   then
    begin
     FormRelatorioCompras:=TFormRelatorioCompras.Create(self);
     FormRelatorioCompras.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s86Click(Sender: TObject);
begin
Try
if Formzonas=nil   then
    begin
     Formzonas:=TFormzonas.Create(self);
     Formzonas.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.RelatriodeVendaspProdutos1Click(Sender: TObject);
begin
 Try
if FormRel_vendas_produtos=nil   then
    begin
     FormRel_vendas_produtos:=TFormRel_vendas_produtos.Create(self);
     FormRel_vendas_produtos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s107Click(Sender: TObject);
begin
Try
if FormLaticinio=nil   then
    begin
     FormLaticinio:=TFormLaticinio.Create(self);
     FormLaticinio.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s88Click(Sender: TObject);
begin
Try
if FormTemas=nil   then
    begin
     FormTemas:=TFormTemas.Create(self);
     FormTemas.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s101Click(Sender: TObject);
begin
 Try
if FormLancCrediario=nil   then
    begin
     FormLancCrediario:=TFormLancCrediario.Create(self);
     FormLancCrediario.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s108Click(Sender: TObject);
begin
   Try
if FormExportaBalanca=nil   then
    begin
     FormExportaBalanca:=TFormExportaBalanca.Create(self);
     FormExportaBalanca.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s124Click(Sender: TObject);
begin
    Try
if Formrecibo=nil   then
    begin
     Formrecibo:=TFormrecibo.Create(self);
     Formrecibo.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.RxSpeedButton11Click(Sender: TObject);
begin
  DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
if (DM.SDS_Usuarios.fieldbyname('data').AsDateTime <> Date) and (DM.SDS_Usuarios.fieldbyname('situacao').asinteger = 1) then
    begin
    application.MessageBox('A Data do Caixa está diferente da atual! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
    Exit;
   end
else

If FormCupomFiscal = nil   then
    begin
     FormCupomFiscal:=TFormCupomFiscal.Create(self);
      FormCupomFiscal.ShowModal;
      end;

end;

procedure TFormPrincipal.PedidosdeProdutosemFalta1Click(Sender: TObject);
begin
  try
If FormPedidoCompra = nil   then
    begin
     FormPedidoCompra:=TFormPedidoCompra.Create(self);
      FormPedidoCompra.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulario de Impressaão de pedidos de compras!!');
end;
end;

procedure TFormPrincipal.s98Click(Sender: TObject);
begin
try
  if FormPRODUTOSfALTA=nil   then
    BEGIN
     FormPRODUTOSfALTA := TFormPRODUTOSfALTA.Create(self);
     FormPRODUTOSfALTA.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Custos!!');
end;
end;

procedure TFormPrincipal.ContasRecebergeralCliente1Click(Sender: TObject);
begin
 Try
 if FormConsultaCr=nil   then
    begin
     FormConsultaCr:=TFormConsultaCr.Create(self);
      FormConsultaCr.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.ContasReceber2Click(Sender: TObject);
begin
Try
if FormRelatorioContasReceber=nil   then
    begin
     FormRelatorioContasReceber:=TFormRelatorioContasReceber.Create(self);
      FormRelatorioContasReceber.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.RxSpeedButton13Click(Sender: TObject);
begin
       DMC.sds_libera.Active := False;
       DMC.sds_libera.Active := True;

if not DMC.sds_libera.Eof then
BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := DMC.sds_liberaCOD_CLIENTE.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;


Try
if FormAtutoriza=nil   then
    begin
     FormAtutoriza:=TFormAtutoriza.Create(self);
      FormAtutoriza.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end else
 ShowMessage('SEM CLIENTES A AUTORIZAR!!');
end;

procedure TFormPrincipal.S125Click(Sender: TObject);
begin
//Try
if FormRelIndea=nil   then
    begin
     FormRelIndea:=TFormRelIndea.Create(self);
      FormRelIndea.Showmodal;
      end;
     { except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;}
end;

procedure TFormPrincipal.S126Click(Sender: TObject);
begin
  try
 if FormGraficos=nil   then
    begin
     FormGraficos:=TFormGraficos.Create(self);
      FormGraficos.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.S127Click(Sender: TObject);
begin
  TRY
   if FormEtiquetas=nil   then
    BEGIN
     FormEtiquetas := TFormEtiquetas.Create(self);
     FormEtiquetas.show;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir o Tela de emissaão de etiquetas!!');
end;
end;

procedure TFormPrincipal.Mensageiro1Click(Sender: TObject);
begin
// WinExec('ICQF.EXE ',SW_SHOW);
//UCApplicationMessage1.ShowMessages();
end;

procedure TFormPrincipal.s99Click(Sender: TObject);
begin
 try
  if FormManfALTAs=nil   then
    BEGIN
     FormManfALTAs := TFormManfALTAs.Create(self);
     FormManfALTAs.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Man. de Faltas!!');
end;
end;

procedure TFormPrincipal.s109Click(Sender: TObject);
begin
//  try
//    if FormContratos=nil   then
//    BEGIN
//      FormContratos := TFormContratos.Create(self);
//    // FormContratos.showmodal;
//    end;
//  except
//    ShowMessage('Erro ao Tentar Exibir a tela de Contratos!!');
//  end;

  AbreForm(frmLancamentoContrato,TfrmLancamentoContrato);
end;

procedure TFormPrincipal.ransportadora1Click(Sender: TObject);
begin
   try
  if FormTransportador=nil   then
    BEGIN
     FormTransportador := TFormTransportador.Create(self);
     FormTransportador.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Transportadoras!!');
end;
end;

procedure TFormPrincipal.S138Click(Sender: TObject);
begin
   try
  if FormLeitorSerial=nil   then
    BEGIN
     FormLeitorSerial := TFormLeitorSerial.Create(self);
     FormLeitorSerial.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Configura Leitor Serial!!');
end;
end;

procedure TFormPrincipal.s111Click(Sender: TObject);
begin
    try
  if FormOtica=nil   then
    BEGIN
     FormOtica := TFormOtica.Create(self);
     FormOtica.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Configura Leitor Serial!!');
end;
end;

procedure TFormPrincipal.s112Click(Sender: TObject);
begin
  try
DM.SDS_otica.Filtered := False;
if FormConsOtica=nil   then
    begin
     FormConsOtica:=TFormConsOtica.Create(self);
      FormConsOtica.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o tela de consultas!!');
end;
end;

procedure TFormPrincipal.S128Click(Sender: TObject);
begin
  try
if FormEtqProdutos=nil   then
    begin
     FormEtqProdutos:=TFormEtqProdutos.Create(self);
      FormEtqProdutos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o tela de consultas!!');
end;
end;

procedure TFormPrincipal.s105Click(Sender: TObject);
begin
 try
if FormChAvulso=nil   then
    begin
     FormChAvulso:=TFormChAvulso.Create(self);
      FormChAvulso.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o tela de cheques!!');
end;
end;


procedure TFormPrincipal.ReltoriosdeVendasGrficas1Click(Sender: TObject);
begin
  try
if FormGrafica=nil   then
    begin
     FormGrafica:=TFormGrafica.Create(self);
      FormGrafica.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o tela de Relatório de Gráficas!!');
end;
end;

procedure TFormPrincipal.ApplicationEvents1Minimize(Sender: TObject);
begin
{Application.Minimize;
ShowWindow(Application.Handle, SW_HIDE);}
end;

procedure TFormPrincipal.RelatriodeVendasXCustos1Click(Sender: TObject);
begin
Try
if FormVendas_Custos=nil   then
    begin
    FormVendas_Custos:=TFormVendas_Custos.Create(self);
     FormVendas_Custos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Geração do Relatório!!');
end;
end;

procedure TFormPrincipal.s90Click(Sender: TObject);
begin
 Try
if Formcst=nil   then
    begin
    Formcst:=TFormCst.Create(self);
     FormCst.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Geração do Relatório!!');
end;
end;

procedure TFormPrincipal.s91Click(Sender: TObject);
begin
{Try
if Formcfop=nil   then
    begin
    Formcfop:=TFormCfop.Create(self);
     FormCfop.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Geração do Relatório!!');
end; }

    Formcfop:=TFormCfop.Create(self);

end;


procedure TFormPrincipal.Aniversariantes1Click(Sender: TObject);
begin
 Try
if FormAniversario=nil   then
    begin
    FormAniversario:=TFormAniversario.Create(self);
     FormAniversario.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Geração do Relatório!!');
end;
end;

procedure TFormPrincipal.EmCascata1Click(Sender: TObject);
begin
Cascade;
end;

procedure TFormPrincipal.Horizontal1Click(Sender: TObject);
begin
TileMode := tbHorizontal;
Tile;
end;

procedure TFormPrincipal.Vertical1Click(Sender: TObject);
begin
TileMode := tbVertical;
Tile;
end;

procedure TFormPrincipal.S129Click(Sender: TObject);
begin
  try
if FormEtiquetasPPLA=nil   then
    begin
    FormEtiquetasPPLA:=TFormEtiquetasPPLA.Create(self);
     FormEtiquetasPPLA.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Geração do Relatório!!');
end;
end;

procedure TFormPrincipal.s80Click(Sender: TObject);
begin
 Try
if FormConsProdutos=nil   then
    begin
    FormConsProdutos:=TFormConsProdutos.Create(self);
      FormConsProdutos.Showmodal;

      end;
      except
   //    ShowMessage('Erro ao Tentar Exibir o Formulário de pesquisa de produtos!!');
end;

end;

procedure TFormPrincipal.ApplicationEvents1Activate(Sender: TObject);
var 
  IdStackWin: TIdStackWindows; 
begin


  IdStackWin := TIdStackWindows.Create;
  try
    suiStatusBar1.Panels[2].Text := 'IP: ' + IdStackWin.LocalAddress;
  finally
    IdStackWin.Free;
  end;
end;

procedure TFormPrincipal.NFe1Click(Sender: TObject);
begin
//WinExec('Siace_NFe.exe',sw_showNormal);
 //Try
if FormNfe_Conf=nil   then
    begin
      CoInitialize(nil);
     FormNFE_Conf:=TFormNFE_conf.Create(self);
     // FormNFE_Conf.Showmodal;
      CoUninitialize;
   //   end;
   //   except
    //   ShowMessage('Erro ao Tentar Exibir o Formulário!!');
      end;
end;

procedure TFormPrincipal.ToolButton12Click(Sender: TObject);
begin
 {Try
  If formOrcamentos = nil   then
    begin
     formOrcamentos:=TformOrcamentos.Create(self);
    //  formVendas.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Vendas!!');
end; }
end;

procedure TFormPrincipal.B_produtosClick(Sender: TObject);
begin
Produtos1Click(Sender);
end;

procedure TFormPrincipal.s92Click(Sender: TObject);
begin
  Try
 //If formVendas = nil   then
    begin
     formBens:=TformBens.Create(self);
    //  formVendas.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Cadastro de Bens!!');
end;
end;

procedure TFormPrincipal.s93Click(Sender: TObject);
begin

    Try
 //If formVendas = nil   then
    begin
     FormCentroCusto:=TFormCentroCusto.Create(self);
    //  formVendas.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Cadastro de Bens!!');
end;
end;

procedure TFormPrincipal.s94Click(Sender: TObject);
begin

    Try
 //If formVendas = nil   then
    begin
     FormBensUtilizacao:=TFormBensUtilizacao.Create(self);
    //  formVendas.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Cadastro de Bens!!');
end;
end;

procedure TFormPrincipal.S134Click(Sender: TObject);
begin
// try
//
//if FormSPEDFiscal=nil   then
//    begin
//     FormSPEDFiscal:=TFormSPEDFiscal.Create(self);
//    // FormSPEDFiscal.Showmodal;
//     end;
//     except
//      ShowMessage('Erro ao Tentar Exibir o Formulário do Sped Fiscal!!');
//      end;
{  if UpperCase(trim(TBiblioteca.LerIni('Siace.ini', 'DADOS', 'DATABASE'))) = UpperCase('C:\StartNet_Sistemas\STARTNET.FDB') then
    ShellExecute(HWND_DESKTOP,'open', PChar('C:\siace\EFDSIACE.exe'), nil, nil, SW_SHOWNORMAL)
  else
    Application.MESSAGEBOX('SPED só poderar ser gerado no servidor!','Error',MB_ICONERROR); }
end;

procedure TFormPrincipal.S132Click(Sender: TObject);
begin
 try
   if FormDadosZ=nil   then
    begin
     FormDadosZ:=TFormDadosZ.Create(self);
      FormDadosZ.Showmodal;
     end;
     except
      ShowMessage('Erro ao Tentar Exibir o Formulário do Sped Fiscal!!');
      end;

end;

procedure TFormPrincipal.S133Click(Sender: TObject);
begin
  try
   if FormTotalizadorZ=nil   then
    begin
     FormTotalizadorZ:=TFormTotalizadorZ.Create(self);
      FormTotalizadorZ.Showmodal;
     end;
     except
      ShowMessage('Erro ao Tentar Exibir o Formulário do Sped Fiscal!!');
      end;

end;

procedure TFormPrincipal.S131Click(Sender: TObject);
begin
   try
   if FormInventario=nil   then
    begin
     FormInventario:=TFormInventario.Create(self);
      FormInventario.Showmodal;
     end;
     except
      ShowMessage('Erro ao Tentar Exibir o Formulário do Sped Fiscal!!');
      end;

end;

procedure TFormPrincipal.LerINI;
  Var ArqINI : String ;
      INI : TIniFile ;
       l, t: integer;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
  SkinData1.SkinFile := INI.ReadString('Temas','Tema','');
  finally
     INI.Free ;
  end ;
 {  IniName := ExtractFilePath(Application.ExeName) + 'siace.ini';
  if not acDirExists(formprincipal.sSkinManager1.SkinDirectory) then
    formprincipal.sSkinManager1.SkinDirectory := ExtractFilePath(Application.ExeName) + 'Skins';

  // Load skin data if exists in Ini
  s := sStoreUtils.ReadIniString('skins', 'SkinDirectory', IniName);  // Skin directory is stored?
  if s <> '' then
    formprincipal.sSkinManager1.SkinDirectory := s;

  s := sStoreUtils.ReadIniString('skins', 'SkinName', IniName);       // Skin name is stored?
  if s <> '' then
    formprincipal.sSkinManager1.SkinName := s;

  t := sStoreUtils.ReadIniInteger('skins', 'SkinActive', 1, IniName); // Skin is active? Default value is True

  Application.HintPause := 800;         // Define own hint pause
  Application.HintShortPause := 300;}
 // ActionHintsSkinned.Execute; {Enable hints}

 { formprincipal.sSkinManager1.Active := (t = 1);
  if not formprincipal.sSkinManager1.Active then
    ActionSkinned.Execute; }
end;

procedure TFormPrincipal.DoEnterAsTab(var Msg: TMsg; var Handled: Boolean);
begin
if Msg.Message = WM_KEYDOWN then
if Msg.wParam = VK_RETURN then Keybd_event(VK_TAB, 0, 0, 0);
end;

procedure TFormPrincipal.B_osClick(Sender: TObject);
begin
  DM.SDS_PRODUTOS.Active:= FALSE;
  DM.Sds_produtos.sql.clear;
  DM.SDS_PRODUTOS.sql.add('select * from PRODUTOS where codigo <'+'-1'+'ORDER BY CODIGO asc');
  DM.SDS_PRODUTOS.Active:= TRUE;

    FormOS := TFormOS.Create(self);
end;

procedure TFormPrincipal.s122Click(Sender: TObject);
begin
if FormConsOS=nil   then
    begin
    FormConsOS:=TFormConsOS.Create(self);
      FormConsOS.Showmodal;
end;
end;

procedure TFormPrincipal.s121Click(Sender: TObject);
begin

    FormMonitorOS:=TFormMonitorOS.Create(self);
      FormMonitorOS.Showmodal;
end;

procedure TFormPrincipal.B_monitor_osClick(Sender: TObject);
begin
  // if FormMonitorOS=nil   then
   // begin
    FormMonitorOS:=TFormMonitorOS.Create(self);
      FormMonitorOS.Showmodal;
//end;
end;

procedure TFormPrincipal.ResumodeProdutosVendidosnoMs1Click(
  Sender: TObject);
begin
    if FormResumovendas=nil   then
    begin
    FormResumovendas:=TFormResumovendas.Create(self);
     FormResumovendas.Showmodal;
end;
end;

procedure TFormPrincipal.Cadastro2Click(Sender: TObject);
begin
   if FormRelClientes=nil   then
    begin
    FormRelClientes:=TFormRelClientes.Create(self);
     FormRelClientes.Showmodal;
end;
end;

procedure TFormPrincipal.ClientescMovnoMs1Click(Sender: TObject);
begin
   if FormRelClientesVendasMes=nil   then
    begin
    FormRelClientesVendasMes:=TFormRelClientesVendasMes.Create(self);
     FormRelClientesVendasMes.Showmodal;
end;
end;

procedure TFormPrincipal.LeituraX1Click(Sender: TObject);
begin
Try
if Form_LeituraX=nil   then
    begin
     Form_LeituraX:=TForm_LeituraX.Create(self);
      Form_LeituraX.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.CancelaUltimoCupomFiscalEmitido2Click(
  Sender: TObject);
begin
Try
  iRetorno := Bematech_FI_CancelaCupom();
  Analisa_iRetorno();
  MsgInfiscal.HTMLText.Text:=  'Cupom Fiscal Cancelado';
  MsgInfiscal.Execute;
  Retorno_Impressora();
  Except
  ShowMessage( 'Erro no Cancelamento do Cupom Fiscal');
  end;
end;

procedure TFormPrincipal.ResetaImpressoraemCasodeErro2Click(
  Sender: TObject);
begin
  iRetorno := Bematech_FI_ResetaImpressora();
  Analisa_iRetorno();
  Retorno_Impressora();
end;

procedure TFormPrincipal.VerificaGaveta2Click(Sender: TObject);
 var iEstadoGaveta : Integer;
      cEstadoGaveta : String;
Begin
  iEstadoGaveta := 0;
  // função que retorna o estado da gaveta
  iRetorno := Bematech_FI_VerificaEstadoGaveta( iEstadoGaveta );
  // Procedure que analisa o retorno da função
  Analisa_iRetorno();
  // Converte o valor inteiro paga string
  str(iEstadoGaveta, cEstadoGaveta );
  MsgInfiscal.HTMLText.Text:=  'Estado da Gaveta:' + #13 + #13 + cEstadoGaveta;
  MsgInfiscal.Execute;
  // Procedure que analisa o retorno da Impressora
  Retorno_Impressora();

end;

procedure TFormPrincipal.AcionaGaveta2Click(Sender: TObject);
begin
  // Função para Abrir a gaveta de dinheiro
  iRetorno := Bematech_FI_AcionaGaveta();
  // Procedure que analisa o retorno da função
  Analisa_iRetorno();
  // Procedure que analisa o retorno da Impressora
  Retorno_Impressora();
end;

procedure TFormPrincipal.SimbolodaMoeda2Click(Sender: TObject);
var CGC: String;
    iConta: integer;
Begin
  for iConta := 1 to 2 do
    CGC := CGC + ' ';

  iRetorno := Bematech_FI_SimboloMoeda( CGC );
  Analisa_iRetorno();
  MsgInfiscal.HTMLText.Text:=  'Símbolo da Moeda: ' + CGC;
  MsgInfiscal.Execute;
  Retorno_Impressora();
end;

procedure TFormPrincipal.FDiodeAlquotaTributria2Click(Sender: TObject);
begin
Try
if FormAliquota=nil   then
    begin
     FormAliquota:=TFormAliquota.Create(self);
      FormAliquota.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.ReduoZ2Click(Sender: TObject);
begin
Try
if Form_ReducaoZ=nil   then
    begin
     Form_ReducaoZ:=TForm_ReducaoZ.Create(self);
      Form_ReducaoZ.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;

end;

procedure TFormPrincipal.s81Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCadMotivo, FrmCadMotivo);
  FrmCadMotivo.Tag:= 0;
  FrmCadMotivo.ShowModal;
end;

procedure TFormPrincipal.s82Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCadLocaisEstoque, FrmCadLocaisEstoque);
  FrmCadLocaisEstoque.Tag:= 0;
  FrmCadLocaisEstoque.ShowModal;
end;

procedure TFormPrincipal.s96Click(Sender: TObject);
begin
  Application.CreateForm(TFormAcertoEstoque, FormAcertoEstoque);
  FormAcertoEstoque.Tag := 0;
 // FormAcertoEstoque.showmodal;
end;

procedure TFormPrincipal.s97Click(Sender: TObject);
begin
  Application.CreateForm(TFrmTransfLocaisEstoque, FrmTransfLocaisEstoque);
  FrmTransfLocaisEstoque.Tag := 0;
  FrmTransfLocaisEstoque.showmodal;
end;

procedure TFormPrincipal.AcertodeEstoques1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmConsAcertoEstoque, FrmConsAcertoEstoque);
  FrmConsAcertoEstoque.Tag := 1;
  FrmConsAcertoEstoque.showmodal;
end;

procedure TFormPrincipal.PorData2Click(Sender: TObject);
begin
   Application.CreateForm(TFrmLMFData, FrmLMFData);
   FrmLMFData.showmodal;
end;


procedure TFormPrincipal.PorReduo2Click(Sender: TObject);
begin
Try
if FormMemFiscalRed=nil   then
    begin
     FormMemFiscalRed:=TFormMemFiscalRed.Create(self);
      FormMemFiscalRed.ShowModal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end;

procedure TFormPrincipal.DataHoraImpressora2Click(Sender: TObject);
var DAta, Hora: String;
    iConta: integer;
    Dt, Hr: Real;
Begin
  for iConta := 1 to 6 do
    Data := Data + ' ';

  for iConta := 1 to 6 do
    Hora := Hora + ' ';

  iRetorno := Bematech_FI_DataHoraImpressora( Data, Hora );
  Analisa_iRetorno();
  Dt:= StrToFloat(Data);
  Hr:= StrToFloat(Hora);
  MsgInfiscal.HTMLText.Text:= 'Data / Hora da Impressora Fiscal: ' + FormatFloat('00/00/00',Dt) + ' - ' + FormatFloat('00:00:00',Hr);
  MsgInfiscal.Execute;
  Retorno_Impressora();

end;

procedure TFormPrincipal.AlteraoSimbolodaMoeda2Click(Sender: TObject);
begin
Try
if FormSimboloMoeda=nil   then
    begin
     FormSimboloMoeda:=TFormSimboloMoeda.Create(self);
      FormSimboloMoeda.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.AtivaDesativaoHorriodeVero2Click(Sender: TObject);
begin
 Try
if FormHorarioVerao=nil   then
    begin
     FormHorarioVerao:=TFormHorarioVerao.Create(self);
      FormHorarioVerao.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.Programalinhasentrecupons2Click(Sender: TObject);
begin
Try
if FormLinhasCupons=nil   then
    begin
    FormLinhasCupons:=TFormLinhasCupons.Create(self);
     FormLinhasCupons.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.Programaforadeimpactodasagulhas2Click(
  Sender: TObject);
begin
Try
if FormImpactoAgulhas=nil   then
    begin
    FormImpactoAgulhas:=TFormImpactoAgulhas.Create(self);
     FormImpactoAgulhas.ShowModal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.Minutosimprimindo2Click(Sender: TObject);
 var MINUTOS: String;
      iConta: integer;
Begin
  for iConta := 1 to 4 do
    MINUTOS := MINUTOS + ' ';

  iRetorno := Bematech_FI_MinutosImprimindo( MINUTOS );
  Analisa_iRetorno();
  MsgInfiscal.HTMLText.Text:=  'Minutos Imprimindo: ' + MINUTOS;
  MsgInfiscal.Execute;
  Retorno_Impressora();

end;

procedure TFormPrincipal.NumerodaLoja2Click(Sender: TObject);
 var CGC: String;
      iConta: integer;
Begin
  for iConta := 1 to 4 do
    CGC := CGC + ' ';

  iRetorno := Bematech_FI_NumeroLoja( CGC );
  Analisa_iRetorno();
  MsgInfiscal.HTMLText.Text:=  'Número da Loja : ' + CGC;
  MsgInfiscal.Execute;
  Retorno_Impressora();

end;

procedure TFormPrincipal.Nmerodecuponscancelados2Click(Sender: TObject);
  var cCuponsCancelados : String;
       iConta            : Integer;
Begin
  // reserva 4 bytes para a variável
  For iConta := 1 To 4 Do
    cCuponsCancelados := cCuponsCancelados + ' ';
  // função que retorna o número de cupons cancelados
  iRetorno := Bematech_FI_NumeroCuponsCancelados( cCuponsCancelados );
  // Procedure que analisa o retorno da função
  Analisa_iRetorno();
  MsgInfiscal.HTMLText.Text:=  'Número de Cupons Cancelados: ' + #13 + #13 + cCuponsCancelados;
  MsgInfiscal.Execute;
  // Procedure que analisa o retorno da Impressora
  Retorno_Impressora();
end;

procedure TFormPrincipal.Numerodeserie2Click(Sender: TObject);
  var cNumeroSerie : String;
      iConta       : Integer;
Begin
  // reserva 15 bytes para a variável
  For iConta := 1 To 15 Do
    cNumeroSerie := cNumeroSerie + ' ';
  // função que retorna o número de série da impressora
  iRetorno := Bematech_FI_NumeroSerie( cNumeroSerie );
  // Procedure que analisa o retorno da função
  Analisa_iRetorno();
  MsgInfiscal.HTMLText.Text:=  'Número de Série da Impressora Fiscal: ' + #13 + #13 + cNumeroSerie;
  MsgInfiscal.Execute;
  // Procedure que analisa o retorno da Impressora
  Retorno_Impressora();
end;

procedure TFormPrincipal.NumerodeRedues2Click(Sender: TObject);
 var CGC: String;
      iConta: integer;
Begin
  for iConta := 1 to 4 do
    CGC := CGC + ' ';

  iRetorno := Bematech_FI_NumeroReducoes( CGC );
  Analisa_iRetorno();
  MsgInfiscal.HTMLText.Text:=  'Número de Reduções: ' + CGC;
  MsgInfiscal.Execute;
  Retorno_Impressora();

end;

procedure TFormPrincipal.Numerodocaixa2Click(Sender: TObject);
 var CGC: String;
      iConta: integer;
Begin
  for iConta := 1 to 4 do
    CGC := CGC + ' ';

  iRetorno := Bematech_FI_NumeroCaixa( CGC );
  Analisa_iRetorno();
  MsgInfiscal.HTMLText.Text:=  'Número do Caixa: ' + CGC;
  MsgInfiscal.Execute;
  Retorno_Impressora();
end;

procedure TFormPrincipal.RetornaEstadodaImpressora2Click(Sender: TObject);
  Var iAck, iSt1, iSt2: Integer;
Begin
  iRetorno := Bematech_FI_VerificaEstadoImpressora( iAck, iSt1, iSt2 );
  Analisa_iRetorno();
  MsgInfiscal.HTMLText.Text:=  'Retorno da Impressora:' + #13 + 'ACK = ' + IntToStr( iAck )
                 + #13 + 'ST1 = ' + IntToStr( iSt1 ) + #13 + 'ST2 = '
                 + IntToStr( iSt2 );
  MsgInfiscal.Execute;

end;

procedure TFormPrincipal.RetornodeAlquotas2Click(Sender: TObject);
 Var cAliquotas: String;
      iConta: Integer;
Begin
  For iConta := 1 To 79 Do
    cAliquotas := cAliquotas + ' ';
  iRetorno := Bematech_FI_RetornoAliquotas( cAliquotas );
  Analisa_iRetorno();
  MsgInfiscal.HTMLText.Text:=  'Alíquotas Programadas:' + #13 + #13 + cAliquotas;
  MsgInfiscal.Execute;

end;

procedure TFormPrincipal.Retornodonumerodocupom2Click(Sender: TObject);
 var cNumeroCupom: String;
      iConta   : Integer;
Begin
  For iConta := 1 To 6 Do
    cNumeroCupom := cNumeroCupom + ' ';
  iRetorno := Bematech_FI_NumeroCupom( cNumeroCupom );
  Analisa_iRetorno();
  MsgInfiscal.HTMLText.Text:=  'Número do Cupom:' + #13 + #13 + cNumeroCupom;
  MsgInfiscal.Execute;
  // Procedure que analisa o retorno da Impressora
  Retorno_Impressora();
end;

procedure TFormPrincipal.VersodaDll1Click(Sender: TObject);
var
  iconta :Integer;
  cVersao :string;
begin
//ShowMessage('Versão dll: ' + VersaoDLL(iECF);
for iConta := 1 to 10 do cVersao := cVersao + ' ';

 iRetorno := Bematech_FI_VersaoDll( cVersao );
 //Analisa_iRetorno();
 Analisa_Retorno_Bematech(bMFD);
 MsgInfiscal.HTMLText.Text:=  'Versao da DLL:' + #13 + #13 +  cVersao ;
 MsgInfiscal.Execute;
// Retorno_Impressora();
end;

procedure TFormPrincipal.S136Click(Sender: TObject);
begin
Try
if FormDownloadaMFD=nil   then
    begin
     FormDownloadaMFD:=TFormDownloadaMFD.Create(self);
     FormDownloadaMFD.ShowModal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end;

procedure TFormPrincipal.S137Click(Sender: TObject);
begin
 Try
if FormGeraMdb=nil   then
    begin
     FormGeraMdb:=TFormGeraMdb.Create(self);
     FormGeraMdb.ShowModal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end;

procedure TFormPrincipal.RelatoriosDiversos1Click(Sender: TObject);
begin
Try
if FormRelatorioEstoqueAtual=nil   then
    begin
     FormRelatorioEstoqueAtual:=TFormRelatorioEstoqueAtual.Create(self);
      FormRelatorioEstoqueAtual.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;


procedure TFormPrincipal.S139Click(Sender: TObject);
begin
Try
if FrmGerenciamentoNFe=nil   then
    begin
    FrmGerenciamentoNFe:=TFrmGerenciamentoNFe.Create(self);
      FrmGerenciamentoNFe.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.InventriodeEstoque1Click(Sender: TObject);
begin
Try
if FormInv=nil   then
    begin
    FormInv:=TFormInv.Create(self);
      FormInv.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;


procedure TFormPrincipal.RelatriodeTotaisPisCofins1Click(Sender: TObject);
begin
  Try
if FormPisCofins=nil   then
    begin
    FormPisCofins:=TFormPisCofins.Create(self);
      FormPisCofins.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.s76Click(Sender: TObject);
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

procedure TFormPrincipal.ConfernciadeEstoque1Click(Sender: TObject);
begin
 try
  if FormConfEstoque=nil   then
    BEGIN
     FormConfEstoque := TFormConfEstoque.Create(self);
     FormConfEstoque.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de boletos p/ Contratos!!');
end;
end;

procedure TFormPrincipal.s143Click(Sender: TObject);
begin
  try
  if FormAfericao=nil   then
    BEGIN
     FormAfericao := TFormAfericao.Create(self);
     FormAfericao.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Aferição!!');
end;
end;

procedure TFormPrincipal.ValeTroco1Click(Sender: TObject);
begin
  try
  if FormvaleTroco=nil   then
    BEGIN
     FormvaleTroco := TFormvaleTroco.Create(self);
     FormvaleTroco.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Vale Troco!!');
end;
end;

procedure TFormPrincipal.CartodeCreditoDbito1Click(Sender: TObject);
begin
  FrmRelContasReceberCartao := TFrmRelContasReceberCartao.Create(self);
    FrmRelContasReceberCartao.showmodal;

end;

procedure TFormPrincipal.Administradora1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCadAdmCartaoCredito, FrmCadAdmCartaoCredito);
  FrmCadAdmCartaoCredito.Tag := 0;
  FrmCadAdmCartaoCredito.showmodal;
end;

procedure TFormPrincipal.Duplicata1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmDuplicataADM, FrmDuplicataADM);
  FrmDuplicataADM.Tag := 0;
  FrmDuplicataADM.showmodal;
end;

procedure TFormPrincipal.Lanamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmLancCTRADM, FrmLancCTRADM);
  FrmLancCTRADM.Tag := 0;
  FrmLancCTRADM.showmodal;
end;

procedure TFormPrincipal.Recebimento1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmRECADM, FrmRECADM);
  FrmRECADM.showmodal;
end;

procedure TFormPrincipal.s142Click(Sender: TObject);
begin
  Application.CreateForm(TFormAltPreco, FormAltPreco);
  FormAltPreco.showmodal;
end;

procedure TFormPrincipal.LanamentodeChequesEmtidos1Click(Sender: TObject);
begin
  { Application.CreateForm(TForm_Cheques, Form_Cheques);
   Form_Cheques.showmodal;  }
   AddAChild(TForm_Cheques, Form_Cheques) ;
end;

procedure TFormPrincipal.Frentistas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFrentista, FormFrentista);
  FormFrentista.showmodal;
end;

procedure TFormPrincipal.anque1Click(Sender: TObject);
begin
   Application.CreateForm(TFormTanques, FormTanques);
   FormTanques.showmodal;
end;

procedure TFormPrincipal.Bombas1Click(Sender: TObject);
begin
   Application.CreateForm(TFormBombas, FormBombas);
   FormBombas.showmodal;
end;

procedure TFormPrincipal.Bicos1Click(Sender: TObject);
begin
    Application.CreateForm(TFormBicos, FormBicos);
   FormBicos.showmodal;
end;

procedure TFormPrincipal.FarmciaPopular1Click(Sender: TObject);
begin
      try
                            // If frmFarmaciaPopular=nil then
                               begin
                              //  CoInitialize(nil);
                                frmFarmaciaPopular:=TfrmFarmaciaPopular.Create(self);
                                //frmFarmaciaPopular.VENDA := FORMVENDAS.Sds_pedidosCODIGO.Text;
                                  frmFarmaciaPopular.Tag := 2;
                                   frmFarmaciaPopular.ShowModal;
                                //    CoUninitialize;
                                end;
                                except
                                  ShowMessage('Houve um erro ao Criar o Formulario  da Farmácia Popular');
                                end;
end;

procedure TFormPrincipal.advGlowButton1Click(Sender: TObject);
begin
//EntradadeNotasFiscaiseAtualizaodeEstoque1Click(Sender);
 DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
begin
     frmcompra_menu:=Tfrmcompra_menu.Create(self);
end;
end;

procedure TFormPrincipal.ProdutoComposto1Click(Sender: TObject);
begin
  AbreForm(FrmProdutosComposicao,TFrmProdutosComposicao);
end;

procedure TFormPrincipal.Skindata1BeforeChange(Sender: TObject);
begin
//  Skindata1.FHueOffset := 0;
//  Skindata1.FSaturation := 0;
  end;

procedure TFormPrincipal.RelatriodeVendasPagto1Click(Sender: TObject);
begin
    Application.CreateForm(TFormVendasPagto, FormVendasPagto);
    FormVendasPagto.showmodal;
end;

procedure TFormPrincipal.Convnio1Click(Sender: TObject);
begin
    Application.CreateForm(TFrmCadConvenio, FrmCadConvenio);
    FrmCadConvenio.showmodal;
end;

procedure TFormPrincipal.s141Click(Sender: TObject);
begin
 FrmResumo:=TfrmResumo.Create(self);
 FrmResumo.ShowModal;
end;


procedure TFormPrincipal.AtualizaImpostosIBPT1Click(Sender: TObject);
begin
    Application.CreateForm(TFormImpostos, FormImpostos);
    FormImpostos.showmodal;
end;

procedure TFormPrincipal.Apartamento1Click(Sender: TObject);
begin
  If F_Apartamento = Nil Then
    Application.CreateForm(TF_Apartamento,F_Apartamento);
  F_Apartamento.ShowModal;
end;

procedure TFormPrincipal.EntradadeHospedes1Click(Sender: TObject);
begin
 // If F_ListApartamento = Nil Then
  // Application.CreateForm(TF_ListApartamento,F_ListApartamento);
      F_ListApartamento:=TF_ListApartamento.Create(self);
 // F_ListApartamento.ShowModal;
end;

procedure TFormPrincipal.Categoria1Click(Sender: TObject);
begin
  If F_Categoria= Nil Then
    Application.CreateForm(TF_Categoria,F_Categoria);
  F_Categoria.ShowModal;
end;

procedure TFormPrincipal.ControleDiriodoHotel1Click(Sender: TObject);
begin
  If F_ListControleDiario= Nil Then
    Application.CreateForm(TF_ListControleDiario,F_ListControleDiario);
    F_ListControleDiario.ShowModal;
end;

procedure TFormPrincipal.ApartamentosOcupados1Click(Sender: TObject);
begin
  If F_ListApartOcupado= Nil Then
    Application.CreateForm(TF_ListApartOcupado,F_ListApartOcupado);
    F_ListApartOcupado.ShowModal;
end;

procedure TFormPrincipal.Movimentododia1Click(Sender: TObject);
begin
  If F_ListMovDia= Nil Then
    Application.CreateForm(TF_ListMovDia,F_ListMovDia);
    F_ListMovDia.ShowModal;
end;

procedure TFormPrincipal.RelaodeProdutos1Click(Sender: TObject);
begin
  If F_ListProduto = Nil Then
    Application.CreateForm(TF_ListProduto,F_ListProduto);
  F_ListProduto.ShowModal;
end;

procedure TFormPrincipal.RelaodeApartamentos1Click(Sender: TObject);
begin
  If F_ListApartamento1 = Nil Then
    Application.CreateForm(TF_ListApartamento1,F_ListApartamento1);
  F_ListApartamento1.ShowModal;
end;

procedure TFormPrincipal.RelaodeCategorias1Click(Sender: TObject);
begin
  If F_ListCategoria = Nil Then
    Application.CreateForm(TF_ListCategoria,F_ListCategoria);
  F_ListCategoria.ShowModal;
end;

procedure TFormPrincipal.Cadastros2Click(Sender: TObject);
begin
  If F_ListProduto = Nil Then
    Application.CreateForm(TF_ListProduto,F_ListProduto);
  F_ListProduto.ShowModal;
end;

procedure TFormPrincipal.CaixaGeral2Click(Sender: TObject);
begin
    frmcaixa := tfrmcaixa.create(self);
    frmcaixa.showmodal;
end;

procedure TFormPrincipal.ImprimirFichadeCaixa1Click(Sender: TObject);
begin
  try
    FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
    FRMLISTA_CAIXA2.SHOWMODAL;
  finally
    FreeAndNil(FRMLISTA_CAIXA2);
  end;
end;

procedure TFormPrincipal.LogUsarios1Click(Sender: TObject);
begin
    frmusuario_log := tfrmusuario_log.create(self);
    frmusuario_log.showmodal;
end;

procedure TFormPrincipal.RelatriodeAferies1Click(Sender: TObject);
begin
    FormRelAfercao := tFormRelAfercao.create(self);
    FormRelAfercao.showmodal;
end;

procedure TFormPrincipal.LimpaFilaGerenciadordecupons1Click(
  Sender: TObject);
begin
                    try
                      try
                       if DM.IBTransaction.Active then
                          DM.IBTransaction.Commit;
                        DM.IBTransaction.StartTransaction;
                        with Delcupom do
                           begin
                              close;
                              sql.Clear;
                              sql.add('delete from cupom');
                              ExecSQL;
                           end;
                        dm.IBTransaction.CommitRetaining;
                      except
                        dm.IBTransaction.Rollback;
                        showmessage('Erro ao Excluir o cupom');
                      end;
                    finally
                      Delcupom.Close;
                    end;

end;

procedure TFormPrincipal.Reservas1Click(Sender: TObject);
begin
    If FormAgendamento = Nil Then
       Application.CreateForm(TFormAgendamento,FormAgendamento);
       FormAgendamento.ShowModal;
end;

procedure TFormPrincipal.ConsultaHospedagens1Click(Sender: TObject);
begin
 Application.CreateForm(TFormConsHospedagens,FormConsHospedagens);
 FormConsHospedagens.SHOWMODAL;
end;

procedure TFormPrincipal.LMCLivro1Click(Sender: TObject);
begin
 Application.CreateForm(TFormrelatLmc,FormrelatLmc);
 FormrelatLmc.SHOWMODAL;
end;

procedure TFormPrincipal.ApplicationEvents2Exception(Sender: TObject;
  E: Exception);
var
 mensagem: string;
 Pos1, Pos2: integer;
begin
{if Pos(UpperCase('is not a valid date'), UpperCase(E.Message)) <> 0 then
  mensagem:='Data inválida, proceda a correção.'
 else if Pos(UpperCase('must have a value'), UpperCase(E.Message)) <> 0 then
 begin
  Pos1:=Pos('''', E.Message);
  mensagem:=E.Message;
  Delete(mensagem, Pos1, 1);
  Pos2:=Pos('''', mensagem);
  mensagem:=copy(E.Message, Pos1 + 1, Pos2 - Pos1);
  mensagem := 'É obrigatório o preenchimento do campo '+ mensagem + '.';
 end
 else if Pos(UpperCase('key violation'), UpperCase(E.Message)) <> 0 then
  mensagem := 'Houve violação de Chave. Registro já incluido.'
 else if Pos(UpperCase('is not a valid time'), UpperCase(E.Message)) <> 0 then
  mensagem := 'Hora inválida, proceda a correção.'
 else if Pos(UpperCase('is not a valid float'), UpperCase(E.Message)) <> 0 then
 begin
  Pos1 :=Pos('''', E.Message);
  mensagem :=E.Message;
  Delete(mensagem, Pos1, 1);
  Pos2 := Pos('''', mensagem);
  mensagem :=copy(E.Message, Pos1 + 1, Pos2 - Pos1);
  mensagem := 'O valor '+ mensagem + ' não é válido.';
 end
 else if Pos(UpperCase('field value required'), UpperCase(E.Message)) <> 0 then
 begin
  Pos1 :=Pos('column ', E.Message) + 7;
  Pos2 :=Pos(',', E.Message);
  mensagem :=copy(E.Message, Pos1, Pos2 - Pos1);
  mensagem := 'Campo ' + mensagem + ' deve ser preenchido.';
 end
 else if Pos(UpperCase('ATTEMPT TO STORE DUPLICATE VALUE'), UpperCase(E.Message)) <> 0
 then
  mensagem := 'Não é permitido valor duplicado. '
 else if Pos(UpperCase('FOREIGN KEY'), UpperCase(E.Message)) <> 0 then
  mensagem := 'Operação não permitida, registro vinculado em outra tabela está faltando.'
 else if Pos('VIOLATION OF PRIMARY OR UNIQUE KEY CONSTRAINT', UpperCase(E.Message)) <> 0
 then
  mensagem := 'Registro Duplicado'+#13#10+Copy(UpperCase(E.Message),Pos('VIOLATION OF PRIMARY OR UNIQUE KEY CONSTRAINT',UpperCase(E.Message))+47,100)
 else if (Pos(UpperCase('MUST APPLY UPDATES BEFORE REFRESHING DATA'),
 UpperCase(E.Message)) <> 0) then
  mensagem := 'É necessário aplicara as alterações antes de atualizar os dados.'
 else if (Pos(UpperCase('INVALID INPUT VALUE'), UpperCase(E.Message)) <> 0) then
  mensagem := 'Valor digitado não é valido conforme a máscara.'
 else
  mensagem := 'Ocorreu o seguinte erro: ' + #13 +UpperCase(E.Message);
 MessageDlg(mensagem, mtError, [mbOk], 0);
 Exit;
 //ABORT;   }
end;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
{If (Screen.Width = 1024)and(Auxwidth=1024)and(Screen.Height = 768)and(Auxheight=768) then
begin
  Application.Terminate;
  end;
  If (Screen.Width = 1024)and(Auxwidth<>1024)and(Screen.Height = 768)and(Auxheight<>768) then

        if  (Application.MessageBox('Voltando para sua resolução antiga...','Ajustes Automaticos',MB_OK +MB_ICONWARNING)=ID_OK )then

         Begin
            OldWidth := 800  ;
            OldHeight := 600;
            SetScreenResolution(Auxwidth, Auxheight);
        end;
         Application.Terminate;
                                  }
end;

procedure TFormPrincipal.CompensaodeCheques1Click(Sender: TObject);
begin
    FormCompensacao:=TFormCompensacao.Create(self);
    FormCompensacao.ShowModal;
end;

procedure TFormPrincipal.LanamentosCC1Click(Sender: TObject);
begin
    frmcontacorrente_lancamento:=Tfrmcontacorrente_lancamento.Create(self);
    frmcontacorrente_lancamento.ShowModal;
end;

procedure TFormPrincipal.DonwloadNFe1Click(Sender: TObject);
begin
   { FormDonwloadNfe:=TFormDonwloadNfe.Create(self);
    FormDonwloadNfe.ShowModal; }
    Application.CreateForm( TFrmManifesto, FrmManifesto);
    FrmManifesto.Showmodal;
end;

procedure TFormPrincipal.GerenciamentoNFCe1Click(Sender: TObject);
begin
    FrmGerenciamentoNFce:=TFrmGerenciamentoNFce.Create(self);
    FrmGerenciamentoNFce.ShowModal;
end;

procedure TFormPrincipal.Veiculos1Click(Sender: TObject);
begin
  Try
if FrmVEICULO=nil   then
    begin
    FrmVEICULO:=TFrmVEICULO.Create(self);
    // Formbairros.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Veiculos!!');
end;
end;

procedure TFormPrincipal.Veculos1Click(Sender: TObject);
begin
 try
  if FormRelVeiculos=nil   then
    begin
    FormRelVeiculos:=TFormRelVeiculos.Create(self);
    FormRelVeiculos.Tag := 0;
     FormRelVeiculos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Relatório de Veículos !!');
end;
end;

procedure TFormPrincipal.Abastecidas1Click(Sender: TObject);
begin
  FormMovComb := tFormMovComb.create(self);
  //frmXLOC_VEICULO.Tag  := 0;
  FormMovComb.showmodal;
end;

procedure TFormPrincipal.Abastecimentos1Click(Sender: TObject);
begin
  FormRelAbastecimentos := TFormRelAbastecimentos.create(self);
  //frmXLOC_VEICULO.Tag  := 0;
  FormRelAbastecimentos.showmodal;
end;

procedure TFormPrincipal.LancamentosLMC1Click(Sender: TObject);
begin
Application.CreateForm(TFrmLmc,FrmLmc);
 frmLMC.SHOWMODAL;
end;

procedure TFormPrincipal.LMCLivroMod21Click(Sender: TObject);
begin
 Application.CreateForm(TfrmLMCImpressao,frmLMCImpressao);
 frmLMCImpressao.SHOWMODAL;
end;

procedure TFormPrincipal.LancAbertFechamento1Click(Sender: TObject);
begin

 Application.CreateForm(TfrmLivroLMC,frmLivroLMC);
 frmLivroLMC.SHOWMODAL;
end;


procedure TFormPrincipal.Action2Execute(Sender: TObject);
begin
    qrcx.close;
    qrcx.sql.clear;
    qrcx.sql.add('select * from usuarios where codigo = '+ usuario_temp);
    qrcx.open;

    if qrcx.RecordCount > 0 then
    begin
      lcaixa.Caption := qrcx.fieldbyname('data').asstring;
      if qrcx.fieldbyname('situacao').asinteger = 1 then
         lsit_caixa.caption := 'ABERTO' else
         lsit_caixa.caption := 'FECHADO';
    end
    else
    begin
      Lcaixa.caption := '---';
      lsit_caixa.Caption := '---'
    end;


{   if (DM.SDS_Usuarios.fieldbyname('data').AsDateTime <> Date) and (DM.SDS_Usuarios.fieldbyname('situacao').asinteger = 1) then
    begin
      if application.messagebox(PChar('A Data do Caixa está diferente da atual!' +
         #13 + 'Deseja fechar o caixa do dia ' + DM.SDS_Usuarios.fieldbyname('data').asstring + '?'),
         'Atenção', MB_IconInformation + MB_YESNO) = idYes then
      begin
         CaixaGeral2.Click;
      end;
   end;   }


end;

procedure TFormPrincipal.RelatoriodeBoletosPagosReceber1Click(
  Sender: TObject);
begin
   Application.CreateForm(TFormRelBoletos,FormRelBoletos);
    FormRelBoletos.SHOWMODAL;
end;

procedure TFormPrincipal.Consulta1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmConsCheque, FrmConsCheque);
  FrmConsCheque.Tag:= 1;
  FrmConsCheque.ShowModal;
end;

procedure TFormPrincipal.Emitidos1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelChequesEmitidosporPeriodo, FRelChequesEmitidosporPeriodo);
   FRelChequesEmitidosporPeriodo.ShowModal;
end;

procedure TFormPrincipal.FormaoAlteraodePreos1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmAlteraPreco, FrmAlteraPreco);
  FrmAlteraPreco.Tag := 0;
  FrmAlteraPreco.showmodal;
end;


procedure TFormPrincipal.LanamentoAvulsoAgrupado1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmcontasreceber_ficha_varios, frmcontasreceber_ficha_varios);
  // frmcontasreceber_ficha_varios.Tag := 0;
  frmcontasreceber_ficha_varios.showmodal;
end;

procedure TFormPrincipal.DownloadXMLNFe1Click(Sender: TObject);
begin
    Application.CreateForm( TFrmManifesto, FrmManifesto );
    FrmManifesto.Showmodal;
end;

procedure TFormPrincipal.ActionSkinnedExecute(Sender: TObject);
begin
 //ActionSkinned.Checked := not ActionSkinned.Checked;
 // SkinsComboBox.Enabled := ActionSkinned.Checked;
 //FormPrincipal.sSkinManager1.Active := ActionSkinned.Checked;
end;
procedure TFormPrincipal.sSkinManager1GetMenuExtraLineData(
  FirstItem: TMenuItem; var SkinSection, Caption: String;
  var Glyph: TBitmap; var LineVisible: Boolean);
begin
    LineVisible := True; // External line available
    Caption := 'Siace Sistemas'; //sSkinProvider1.SystemMenu.Items[0].Caption;
end;


procedure TFormPrincipal.R1Click(Sender: TObject);
begin

Application.CreateForm( TFormRelGrupoT, FormRelGrupoT );
    FormRelGrupoT.Showmodal;
end;

procedure TFormPrincipal.L1Click(Sender: TObject);
begin
   Application.CreateForm( TFormLogEstoque, FormLogEstoque );
   FormLogEstoque.Showmodal;
end;

procedure TFormPrincipal.L2Click(Sender: TObject);
begin
  Application.CreateForm( TFormLogProduto, FormLogProduto );
  FormLogProduto.Showmodal;
end;

procedure TFormPrincipal.r2Click(Sender: TObject);
begin
   Application.CreateForm( TFormRecebido, FormRecebido );
   FormRecebido.Showmodal;
end;

procedure TFormPrincipal.F1Click(Sender: TObject);
begin
   Application.CreateForm( TFormFretes, FormFretes );
   FormFretes.Showmodal;
end;

procedure TFormPrincipal.V1Click(Sender: TObject);
begin
     Application.CreateForm( TFormValeComb, FormValeComb );
     FormValeComb.showmodal;
end;

procedure TFormPrincipal.A1Click(Sender: TObject);
begin
   Application.CreateForm( TFormPagarFretes, FormPagarFretes );
   FormPagarFretes.Showmodal;
end;

procedure TFormPrincipal.c2Click(Sender: TObject);
begin
DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
 application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
begin
Application.CreateForm( Tfrmcontaspagar, frmcontaspagar );
frmcontaspagar.Showmodal;
end;
end;

procedure TFormPrincipal.f2Click(Sender: TObject);
begin
 Application.CreateForm( Tfrmlista_funcionario2, frmlista_funcionario2 );
 frmlista_funcionario2.Showmodal;
end;

procedure TFormPrincipal.C3Click(Sender: TObject);
begin
Try
if FormRelatorioComissao=nil   then
    begin
     FormRelatorioComissao:=TFormRelatorioComissao.Create(self);
     FormRelatorioComissao.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.C4Click(Sender: TObject);
begin
     FormComissaoCategoria:=TFormComissaoCategoria.Create(self);
     FormComissaoCategoria.Showmodal;
end;

procedure TFormPrincipal.n78Click(Sender: TObject);
begin
     FrmMesas:=TFrmMesas.Create(self);
     FrmMesas.Showmodal;
end;

procedure TFormPrincipal.r3Click(Sender: TObject);
begin
     FrmRelConv:=TFrmRelConv.Create(self);
     FrmRelConv.Showmodal;
end;

procedure TFormPrincipal.C5Click(Sender: TObject);
begin
DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
begin
Try
if FormCRCrediarioconv=nil   then
    begin
     FormCRCrediarioconv:=TFormCRCrediarioconv.Create(self);
      FormCRCrediarioconv.Showmodal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end;
end;

procedure TFormPrincipal.M1Click(Sender: TObject);
begin
 DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
begin
     frmcompra_menu:=Tfrmcompra_menu.Create(self);
end;     
end;

procedure TFormPrincipal.Timer2Timer(Sender: TObject);
begin


IF DM.SDS_EmpresaTIPO_SEGMENTO.Text = '4' then
begin
   Hotel1.Visible := True;
   Postos1.Visible := False;
   N72.Visible     := False;
//  If F_ListApartamento = Nil Then

    Application.CreateForm(TFrmMesas,FrmMesas);
    Timer2.Enabled := False;
    FrmMesas.ShowModal;
end ELSE

 IF DM.SDS_EmpresaTIPO_SEGMENTO.Text = '2' then
begin
   Hotel1.Visible := True;
   Postos1.Visible := False;
   N72.Visible     := False;
//  If F_ListApartamento = Nil Then
    Application.CreateForm(TF_ListApartamento,F_ListApartamento);
 // F_ListApartamento.ShowModal;
 Timer2.Enabled := False;
end ELSE
IF DM.SDS_EmpresaTIPO_SEGMENTO.Text = '3' then
begin
Postos1.Visible := True;
N72.Visible     := True;
fretes1.Visible := false;
Timer2.Enabled := False;
end ELSE

IF DM.SDS_EmpresaTIPO_SEGMENTO.Text = '5' then
begin
fretes1.Visible := True;
Timer2.Enabled := False;
end ELSE
begin
Hotel1.Visible := False;
Postos1.Visible := False;
N72.Visible     := False;
fretes1.Visible := false;
end;

Timer2.Enabled := False;
end;

procedure TFormPrincipal.Action1Execute(Sender: TObject);
begin
  qrcx.close;
  qrcx.sql.clear;
  qrcx.sql.add('select * from usuarios where codigo = '+ usuario_temp);
  qrcx.open;

  if qrcx.RecordCount > 0 then
  begin
    lcaixa.Caption := qrcx.fieldbyname('data').asstring;
    if not (qrcx.fieldbyname('situacao').IsNull) and (qrcx.fieldbyname('situacao').asinteger = 1) then
      lsit_caixa.caption := 'ABERTO'
    else
      lsit_caixa.caption := 'FECHADO';
  end
  else
  begin
    Lcaixa.caption := '---';
    lsit_caixa.Caption := '---'
  end;

 { if not (DM.SDS_Usuarios.fieldbyname('data').IsNull) and (DM.SDS_Usuarios.fieldbyname('data').AsDateTime <> Date) and
  not (qrcx.fieldbyname('situacao').IsNull) and (DM.SDS_Usuarios.fieldbyname('situacao').asinteger = 1) then
  begin
    if application.messagebox(PChar('A Data do Caixa está diferente da atual!' +
      #13 + 'Deseja fechar o caixa do dia ' + DM.SDS_Usuarios.fieldbyname('data').asstring + '?'),
      'Atenção', MB_IconInformation + MB_YESNO) = idYes then
    begin
      CaixaGeral2.Click;
    end;
  end;

  try
    with DelItem do
    begin
      close;
      Parambyname('sit').AsString := 'A';
      ExecSQL;
    end;
    DM.IBTransaction.Commit;
  except
    DM.IBTransaction.Rollback;
    showmessage('Erro ao Excluir o Crediario');
  end;   }

  if dm.SDS_UsuariosMOSTRA_PENDENTES.Text = 'S' then
  BEGIN
    FrmResumo:=TfrmResumo.Create(self);
    FrmResumo.ShowModal;
  end;

  DATEEDIT1.Date := Date;

  dmc.Qry_clientes.close;
  dmc.Qry_clientes.SQL.Clear;
  dmc.Qry_clientes.SQL.add('SELECT * FROM CLIENTES WHERE EXTRACT(DAY FROM NASCIMENTO_IA) = :DIA and ');
  dmc.Qry_clientes.SQL.add('EXTRACT(MONTH FROM NASCIMENTO_IA) = :MES ORDER BY NOME_RS ASC');
  dmc.Qry_clientes.parambyname('dia').AsInteger := strtoint(copy(datetostr(DateEdit1.Date), 1,2));
  dmc.Qry_clientes.parambyname('mes').AsInteger := strtoint(copy(datetostr(DateEdit1.Date), 4,2));
  dmc.Qry_clientes.Open;
  dmc.cds_clientes.active := false;
  dmc.cds_clientes.active := True;

  if not dmc.cds_clientes.eof then
  begin
    FormAniver:=TFormAniver.Create(self);
    FormAniver.ShowModal;
  end;

  Timer2.Enabled := True;

end;

procedure TFormPrincipal.P1Click(Sender: TObject);
begin
FormNcmInv  := tFormNcmInv.create(Self);
FormNcmInv.FDQuery1.Close;
FormNcmInv.FDQuery1.Open;
FormNcmInv.RLReport1.Prepare;
FormNcmInv.RLReport1.PreviewModal;
end;

procedure TFormPrincipal.R4Click(Sender: TObject);
begin
     FormRelVendaNotas :=TFormRelVendaNotas.Create(self);
      FormRelVendaNotas.ShowModal;
end;

procedure TFormPrincipal.R5Click(Sender: TObject);
begin
       FormRelVendaResumo :=TFormRelVendaResumo.Create(self);
       FormRelVendaResumo.ShowModal;
end;

procedure TFormPrincipal.AbreForm(Form: TForm; FormClass: TFormClass);
begin
 // try
    try
      Form:= FormClass.Create(Nil);
      Form.ShowModal;
    finally
      Freeandnil(Form);
    end;
 { except
    ShowMessage('Erro ao tentar abrir, Tente novamente!');
  end;  }
end;

procedure TFormPrincipal.p2Click(Sender: TObject);
begin
  AbreForm(frmlista_planocontas2,Tfrmlista_planocontas2);
end;

procedure TFormPrincipal.v2Click(Sender: TObject);
begin
   AbreForm(FrmValeFuncionario,TFrmValeFuncionario);
end;

procedure TFormPrincipal.P3Click(Sender: TObject);
begin
FormcestInv := tFormcestInv.create(Self);
FormcestInv.FDQuery1.Close;
FormcestInv.FDQuery1.Open;
FormcestInv.RLReport1.Prepare;             
FormcestInv.RLReport1.PreviewModal;
end;

procedure TFormPrincipal.c7Click(Sender: TObject);
begin
     FormContratos := TFormContratos.Create(self);
end;

procedure TFormPrincipal.G1Click(Sender: TObject);
begin
  AbreForm(FormContratosBoleto,TFormContratosBoleto);
end;

procedure TFormPrincipal.P4Click(Sender: TObject);
begin
  AbreForm(frmlista_Contabil, Tfrmlista_Contabil);
end;

procedure TFormPrincipal.N82Click(Sender: TObject);
begin
  AbreForm(FrmRelatorioImovel,TFrmRelatorioImovel);
end;

procedure TFormPrincipal.G2Click(Sender: TObject);
begin  
 AbreForm(FormExtImovel,TFormExtImovel);
end;

procedure TFormPrincipal.G3Click(Sender: TObject);
begin
  try
   if FrmSpedSP=nil   then
    begin
      FrmSpedSP:=TFrmSpedSP.Create(self);
       FrmSpedSP.Showmodal;
     end;
     except
      ShowMessage('Erro ao Tentar Exibir o Formulário do Sped Fiscal!!');
      end;
end;

procedure TFormPrincipal.P5Click(Sender: TObject);
begin
 try
    FRelatorioProduto:= TFRelatorioProduto.Create(nil);
    FRelatorioProduto.ShowModal;
  finally
    FreeAndNil(FRelatorioProduto);
  end;
end;

procedure TFormPrincipal.C9Click(Sender: TObject);
begin
AbreForm(FormConsDiferencas,TFormConsDiferencas);
end;

procedure TFormPrincipal.O1Click(Sender: TObject);
begin
 // AbreForm(FOS_AUTO,TFOS_AUTO);
  FOS_AUTO:= TFOS_AUTO.Create(nil);
end;

procedure TFormPrincipal.c10Click(Sender: TObject);
begin
FComposicao  := tFComposicao.create(nil);
end;

procedure TFormPrincipal.a2Click(Sender: TObject);
begin
FAgendaOdonto := tFAgendaOdonto.create(nil);
end;

procedure TFormPrincipal.R6Click(Sender: TObject);
begin
  try
    FRelContasPagarPorCliente:= TFRelContasPagarPorCliente.Create(nil);
    FRelContasPagarPorCliente.ShowMOdal;
  finally
    FreeAndNil(FRelContasPagarPorCliente);
  end;
end;

procedure TFormPrincipal.R7Click(Sender: TObject);
begin
  try
    FRelNotaFiscal:= TFRelNotaFiscal.Create(nil);
    FRelNotaFiscal.caption:= 'Relatório de NF-e';
    FRelNotaFiscal.ShowMOdal;
  finally
    FreeAndNil(FRelNotaFiscal);
  end;
end;

procedure TFormPrincipal.R8Click(Sender: TObject);
begin
  try
    FRelNotaFiscal:= TFRelNotaFiscal.Create(nil);
    FRelNotaFiscal.caption:= 'Relatório de NFC-e';
    FRelNotaFiscal.ShowMOdal;
  finally
    FreeAndNil(FRelNotaFiscal);
  end;
end;

procedure TFormPrincipal.U1Click(Sender: TObject);
begin
   try
    FRelatorioEstoqueProduto:= TFRelatorioEstoqueProduto.Create(nil);
    FRelatorioEstoqueProduto.caption:= 'Relatório de Estoque Por Produto e período';
    FRelatorioEstoqueProduto.ShowMOdal;
  finally
    FreeAndNil(FRelatorioEstoqueProduto);
  end;
end;

procedure TFormPrincipal.D1Click(Sender: TObject);
begin
 try
    FRelatorioEstoque:= tFRelatorioEstoque.Create(nil);
    FRelatorioEstoque.caption:= 'Relatório de Estoque por período';
    FRelatorioEstoque.ShowMOdal;
  finally
    FreeAndNil(FRelatorioEstoque);
  end;
end;

procedure TFormPrincipal.V3Click(Sender: TObject);
begin
  try
    FRelatorioValeFuncionario:= TFRelatorioValeFuncionario.create(Nil);
    FRelatorioValeFuncionario.ShowModal;
  finally
    FreeAndnil(FRelatorioValeFuncionario);
  end;
end;

procedure TFormPrincipal.S1Click(Sender: TObject);
begin
  try
    FRelatorioEstoque:= TFRelatorioEstoque.Create(nil);
    FRelatorioEstoque.ShowModal;
  finally
    FreeAndNil(FRelatorioEstoque);
  end;
end;

procedure TFormPrincipal.C12Click(Sender: TObject);
begin
  AbreForm(FNCM,TFNCM);
end;

procedure TFormPrincipal.C11Click(Sender: TObject);
begin
  try
    FCompraMadeira:= TFCompraMadeira.Create(nil);
    FCompraMadeira.ShowModal;
  finally
    FreeAndNil(FCompraMadeira);
  end;
end;

procedure TFormPrincipal.C13Click(Sender: TObject);
begin
  try
    FOrigemFlorestal:= TFOrigemFlorestal.Create(nil);
    FOrigemFlorestal.ShowModal;
  finally
    FreeAndNil(FOrigemFlorestal);
  end;
end;

procedure TFormPrincipal.c14Click(Sender: TObject);
begin

 try
    frmRETORNOmanutencao:= TfrmRETORNOmanutencao.Create(nil);
    frmRETORNOmanutencao.ShowModal;
  finally
    FreeAndNil(frmRETORNOmanutencao);
  end;
end;

procedure TFormPrincipal.P6Click(Sender: TObject);
begin
  try
    FPatios:= TFPatios.Create(nil);
    FPatios.ShowModal;
  finally
    FreeAndNil(FPatios);
  end;
end;

initialization
//RLConsts.SetVersion(4,00,'1');
END.

