unit Unit13Venda;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ToolEdit, CurrEdit,
 ComCtrls, TypInfo, ExtCtrls, ToolWin, Variants, Menus, DB, IBCustomDataSet,
 IBQuery, IBStoredProc, IBSQL, math, Placemnt, dateutils, DBTables, INIFiles,
  RDprint;

type
 TVendaFrm = class(TForm)
   StatusBar1: TStatusBar;
   Panel1: TPanel;
   Edit1: TEdit;
   Label1: TLabel;
   Label4: TLabel;
   Panel2: TPanel;
   CurrencyEdit3: TCurrencyEdit;
   Label9: TLabel;
   Panel3: TPanel;
   DBLookupComboBox1: TDBLookupComboBox;
   Label12: TLabel;
   DBText1: TDBText;
   PopupMenu1: TPopupMenu;
   CancelaltimoCupom1: TMenuItem;
   N1: TMenuItem;
   LeituraX1: TMenuItem;
   GroupBox1: TGroupBox;
   Label13: TLabel;
   Panel4: TPanel;
   Label2: TLabel;
   DBEdit4: TDBEdit;
   DBEdit6: TDBEdit;
   Label3: TLabel;
   Label5: TLabel;
   CurrencyEdit1: TCurrencyEdit;
   Panel5: TPanel;
   CurrencyEdit4: TCurrencyEdit;
   Label10: TLabel;
   CurrencyEdit2: TCurrencyEdit;
   Label6: TLabel;
    QryFrentista: TIBQuery;
   QryProduto: TIBQuery;
    DtsQryFrentista: TDataSource;
   DtsQryProduto: TDataSource;
   DtsQryCadastro: TDataSource;
   QryCadastro: TIBQuery;
   SQLVendas: TIBSQL;
   Panel6: TPanel;
   Panel7: TPanel;
   DBComboBox1: TDBComboBox;
   Timer1: TTimer;
   Panel8: TPanel;
   CurrencyEdit6: TCurrencyEdit;
   Label11: TLabel;
   Label8: TLabel;
   ListView1: TListView;
   QryTribEcf: TIBQuery;
   DtsQryTribEcf: TDataSource;
   Panel9: TPanel;
   Label16: TLabel;
   Label17: TLabel;
   Label18: TLabel;
   FormStorage1: TFormStorage;
   QryProdutoM: TIBQuery;
   DstQryProdutoM: TDataSource;
   QryCaixaVend: TIBQuery;
   QryCaixaVendSTATE: TIntegerField;
   QryCaixaVendCODCAIXAOPCL: TIntegerField;
   CurrencyEdit5: TCurrencyEdit;
    Label14: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    RDprint1: TRDprint;
    QrySintegra_Info: TIBQuery;
    Button1: TButton;
    QryEnc_Temp: TIBQuery;
    QryEnc_TempCOD_BICOENC_TEMP: TIntegerField;
    QryEnc_TempID_BICO: TIntegerField;
    QryEnc_TempID_BOMBA: TIntegerField;
    QryEnc_TempCOD_FRENTISTA: TIntegerField;
    QryEnc_TempID_PRODUTOS: TIntegerField;
    QryEnc_TempENC_LITROS: TIBBCDField;
    QryEnc_TempENC_DINHEIRO: TIBBCDField;
    QryEnc_TempPRODUTOS_DESC: TIBStringField;
    QryEnc_TempNIVEL_PRECO: TIntegerField;
    QryEnc_TempDINHEIRO: TIBBCDField;
    QryEnc_TempPRECO: TIBBCDField;
    QryEnc_TempDATAHORA: TDateTimeField;
    QryEnc_TempLITROS: TIBBCDField;
    QryEnc_TempID_TANQUE: TIntegerField;
    QryBicoEnc_Temp: TIBQuery;
    QryBicoEnc_TempCOD_BICOENC_TEMP: TIntegerField;
    QryBicoEnc_TempID_BICO: TIntegerField;
    QryBicoEnc_TempID_BOMBA: TIntegerField;
    QryBicoEnc_TempCOD_FRENTISTA: TIntegerField;
    QryBicoEnc_TempID_PRODUTOS: TIntegerField;
    QryBicoEnc_TempENC_LITROS: TIBBCDField;
    QryBicoEnc_TempENC_DINHEIRO: TIBBCDField;
    QryBicoEnc_TempPRODUTOS_DESC: TIBStringField;
    QryBicoEnc_TempNIVEL_PRECO: TIntegerField;
    QryBicoEnc_TempDINHEIRO: TIBBCDField;
    QryBicoEnc_TempPRECO: TIBBCDField;
    QryBicoEnc_TempDATAHORA: TDateTimeField;
    QryBicoEnc_TempLITROS: TIBBCDField;
    QryBicoEnc_TempID_TANQUE: TIntegerField;
    DtsQryBicoEnc_Temp: TDataSource;
    QryProdutoCODIGO: TIntegerField;
    QryProdutoCODIGO_BARRAS: TIBStringField;
    QryProdutoDESCRICAO: TIBStringField;
    QryProdutoABREVIADO: TIBStringField;
    QryProdutoPRECO_CUSTO: TIBBCDField;
    QryProdutoMARGEM_LUCRO: TIBBCDField;
    QryProdutoCOMISSAO: TIBBCDField;
    QryProdutoUNIDADE: TIntegerField;
    QryProdutoFRETE: TIBBCDField;
    QryProdutoICMS: TIBBCDField;
    QryProdutoIPI_IRPJ: TIBBCDField;
    QryProdutoOUTROS_IMPOSTOS: TIBBCDField;
    QryProdutoDESCONTOS: TIBBCDField;
    QryProdutoCLASS_FISCAL: TIBStringField;
    QryProdutoSIT_TRIBUTARIA: TIBStringField;
    QryProdutoCUSTO_MEDIO: TIBBCDField;
    QryProdutoPRECO_VENDA: TIBBCDField;
    QryProdutoDESCONTO_MAXIMO: TIBBCDField;
    QryProdutoCODIGO_GRUPO: TIntegerField;
    QryProdutoCODIGO_SUBGRUPO: TIntegerField;
    QryProdutoCODIGO_MARCA: TIntegerField;
    QryProdutoNOME_GRUPO: TIBStringField;
    QryProdutoNOME_SUBGRUPO: TIBStringField;
    QryProdutoNOME_MARCA: TIBStringField;
    QryProdutoNOME_FORNECEDOR: TIBStringField;
    QryProdutoCODIGO_FORNECEDORES: TIntegerField;
    QryProdutoFOTO: TBlobField;
    QryProdutoESTOQUE_ATUAL: TIBBCDField;
    QryProdutoESTOQUE_VENDIDO: TIBBCDField;
    QryProdutoESTOQUE: TIBBCDField;
    QryProdutoVALOR_ESTOQUE_ATUAL: TFloatField;
    QryProdutoVALOR_ESTOQUE: TFloatField;
    QryProdutoESTOQUE_MINIMO: TIntegerField;
    QryProdutoESTOQUE_MAXIMO: TIntegerField;
    QryProdutoDATACAD: TDateField;
    QryProdutoUSERCAD: TIBStringField;
    QryProdutoVALOR_EST_CUSTO_ATUAL: TFloatField;
    QryProdutoULTIMACOMPRA: TDateField;
    QryProdutoVALOR_EST_CUSTO: TFloatField;
    QryProdutoSECCAO: TIntegerField;
    QryProdutoCATEGORIA: TIntegerField;
    QryProdutoLOCALIZACAO: TIBStringField;
    QryProdutoAPLICACAO: TIBStringField;
    QryProdutoESP_COD_AUX: TIBStringField;
    QryProdutoGARANTIA: TIntegerField;
    QryProdutoBALANCA: TIBStringField;
    QryProdutoETIQUETA: TIBStringField;
    QryProdutoATIVO: TIBStringField;
    QryProdutoREFERENCIA: TIBStringField;
    QryProdutoCOD_EMPRESA: TIntegerField;
    QryProdutoDESC_UNIDADE: TIBStringField;
    QryProdutoPESOBRUTO: TIBBCDField;
    QryProdutoPESOLIQUIDO: TIBBCDField;
    QryProdutoFONETICO: TIBStringField;
    QryProdutoDATAULTALTERACAO: TDateField;
    QryProdutoCUSTOREPOSICAO: TIBBCDField;
    QryProdutoPRECO_ANT: TIBBCDField;
    QryProdutoPRECO_PROMOCAO: TIBBCDField;
    QryProdutoFLAG_PROMOCAO: TIBStringField;
    QryProdutoDT_INICIO_PROMO: TDateField;
    QryProdutoDT_FIM_PROMO: TDateField;
    QryProdutoCOD_LABORATORIO: TIntegerField;
    QryProdutoLABORATORIO: TIBStringField;
    QryProdutoPRINCIPIO_ATIVO: TIBStringField;
    QryProdutoMED_CONTROLADO: TIBStringField;
    QryProdutoQTD_FRACIONADA: TIBBCDField;
    QryProdutoQTD_CAIXA: TSmallintField;
    QryProdutoMED_GENERICO: TIBStringField;
    QryProdutoLOTE_MED: TIBStringField;
    QryProdutoVALIDADE: TDateField;
    QryProdutoCHEK_BOX: TIBStringField;
    QryProdutoPRECO_VENDA2: TIBBCDField;
    QryProdutoMARGEM_LUCRO2: TIBBCDField;
    QryProdutoVALIDADE_PRODUTO: TIBStringField;
    QryProdutoPROD_SERV: TIBStringField;
    QryProdutoUNIDADE_ENT: TIntegerField;
    QryProdutoDESC_UNID_ENT: TIBStringField;
    QryProdutoQUANT_SAIDA: TIBBCDField;
    QryProdutoQUANT_ENTRADA: TIBBCDField;
    QryProdutoESTOQUE_FRACAO: TIBBCDField;
    QryProdutoDATA_FABRICACAO: TDateField;
    QryProdutoFRACAO: TIntegerField;
    QryProdutoNCM_SH: TIBStringField;
    QryProdutoCOD_MS: TIBStringField;
    QryProdutoCONTOLAESTOQUE: TIBStringField;
    QryProdutoPRODUTOCOMPOSTO: TIBStringField;
    QryProdutoTIPO_ATIVIDADE: TIBStringField;
    QryProdutoCOD_PRODUTO_ESTOQUE: TIntegerField;
    QryProdutoCODIGO_LOCAL_ESTOQUE: TIntegerField;
    QryProdutoLISTA_ABC: TIBStringField;
    QryProdutoGRUPO_TRIBUTACAO: TIntegerField;
    QryProdutoCOMBUSTIVEL: TIBStringField;
    QryProdutoCOR: TIntegerField;
    QryProdutoENABLE_NUMSERIE: TIntegerField;
    QryProdutoID_PRODUTOS: TIntegerField;
    QryProdutoCOD_ANP: TIBStringField;
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DBEdit3Enter(Sender: TObject);
   procedure DBEdit3Exit(Sender: TObject);
   procedure Edit1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure FormCreate(Sender: TObject);
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure Abilita;
   procedure Desabilita;
   procedure DBComboBox1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBComboBox1Enter(Sender: TObject);
   procedure DBComboBox1Exit(Sender: TObject);
   procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure CurrencyEdit3Change(Sender: TObject);
   procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure CurrencyEdit3Enter(Sender: TObject);
   procedure CurrencyEdit3Exit(Sender: TObject);
   procedure FormShow(Sender: TObject);
   procedure DBLookupComboBox1Enter(Sender: TObject);
   procedure DBLookupComboBox1Exit(Sender: TObject);
   procedure CurrencyEdit5Enter(Sender: TObject);
   procedure CurrencyEdit5Change(Sender: TObject);
   procedure CurrencyEdit5KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure CurrencyEdit5Exit(Sender: TObject);
   procedure CurrencyEdit6KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure CurrencyEdit6Enter(Sender: TObject);
   procedure CurrencyEdit6Exit(Sender: TObject);
   procedure CurrencyEdit6Change(Sender: TObject);
   procedure Edit1Change(Sender: TObject);

   procedure FecharPedido(Sender: TObject);

   function Venda_Bematech_Fi1: boolean;
   function Venda_Bematech_Fi2: boolean;
   function Venda_Sweda_IFS7000: boolean;
   Function Cupom_NaoFiscal(Orcamento: Boolean = False): boolean;
   Function Cotacao_NaoFiscal(Orcamento: Boolean = False): boolean;
   function Venda_NotaFiscal: boolean;

   procedure AdicionaItem;
   function trunc2decimals(x: extended; digits: integer): extended;
   function LocalizaItem(RefStr: string): integer;
   procedure CurrencyEdit5KeyPress(Sender: TObject; var Key: char);
   procedure Timer1Timer(Sender: TObject);
   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure FormActivate(Sender: TObject);
   procedure CurrencyEdit3KeyPress(Sender: TObject; var Key: char);
   procedure CancelaltimoCupom1Click(Sender: TObject);
   procedure LeituraX1Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label15MouseEnter(Sender: TObject);
    procedure Label15MouseLeave(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);         //Testa se impressora on-line
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 VendaFrm: TVendaFrm;
 sAliquota: string;
 sTipoQtde: string;
 iDecimal, ContGav: integer;
 sTipoDesconto, MsgStr: string;
 Cotacao, PedTotalFlag: double;
 CODCLIFlag, CotacaoFlag: integer;

implementation

uses UnitDataM1, UnitFrmPrincipal, Unit14ProcProd, Unit15ProcCli,
 Unit_ECF_Bematech_Fi2,
 Unit_ECF_General_GP2000, Unit_ECF_Sweda_IFS7000, UnitFuncoes,
 Unit_ECF_Global, Unit_ECF_Bematech_Fi1, UnitProcBicoEnc_Temp;

{$R *.DFM}

function TVendaFrm.LocalizaItem(RefStr: string): integer;
var
 x: integer;
begin
 Result := -1;
 for x := 0 to Listview1.Items.Count - 1 do
  begin
   if Listview1.Items.Item[x].Caption = RefStr then
    begin
     Result := x;
     Break;
    end;
  end;
end;

//------ Trunca valores na casa decimal desejada ------
function TVendaFrm.trunc2decimals(x: extended; digits: integer): extended;
begin
 Result := x;

 if Pos(decimalseparator, Floattostr(x)) <> 0 then
  Result := StrtoFloat(Copy(FloattoStr(x), 0, Pos(decimalseparator, FloattoStr(x)) + digits));
end;

//------ Gera Novo pedido & Adiciona Item a Lista de Compras ------
procedure TVendaFrm.AdicionaItem;
var
 index, conta, x: integer;
begin
 statusbar1.panels[0].Text := 'Adicionando produto "' + edit1.Text +
   '" x "' + currencyedit5.Text + '" à lista. Aguarde...';
 statusbar1.Refresh;
 screen.cursor := crHourGlass;
 //cont:=0;
 //------ Gera Novo Pedido ------

 //------ Adiciona Itens a Lista de Compras ------
 index := LocalizaItem(edit1.Text);
 if (QryProduto.Locate('REFERENCIA', edit1.Text, [])) or
   (QryProdutoM.Locate('NUM_SERIE', edit1.Text, [])) then
   //Localiza Produto na Tabela
   if index = -1 then
    begin
     Listview1.Items.Insert(0);
     if QryProduto['ENABLE_NUMSERIE'] = 0 then
       Listview1.Items.Item[0].Caption := QryProduto['REFERENCIA']
     else
       Listview1.Items.Item[0].Caption := QryProdutoM['NUM_SERIE'];

     Listview1.Items.Item[0].SubItems.Insert(0, formatcurr('0.000', currencyedit5.Value));
     Listview1.Items.Item[0].SubItems.Insert(1, QryProduto['Nome']);
     Listview1.Items.Item[0].SubItems.Insert(2, formatcurr('0.000', QryProduto['PRECO_VENDA']));
     Listview1.Items.Item[0].SubItems.Insert(3, formatcurr('0.00', currencyedit1.Value));
     Listview1.Items.Item[0].SubItems.Insert(4, '0');      //Quantidade da Promoção
     Listview1.Items.Item[0].SubItems.Insert(5, '0');      //Preço da Promoção
     Listview1.Items.Item[0].SubItems.Insert(6, '0');      //Promoção Habilitada
     Listview1.Items.Item[0].SubItems.Insert(7, QryProduto['ENABLE_NUMSERIE']);      //trab. com nº serie
     Listview1.Items.Item[0].SubItems.Insert(8, QryProduto['COD_PRODUTOS']);      //trab. com nº serie

     if QryProduto['ENABLE_NUMSERIE'] = 0 then
      begin
       Listview1.Items.Item[0].SubItems.Insert(9, '');    //trab. com nº serie
       Listview1.Items.Item[0].SubItems.Insert(10, '');    //trab. com nº serie
       Listview1.Items.Item[0].SubItems.Insert(11, '');    //trab. com nº serie
       Listview1.Items.Item[0].SubItems.Insert(12, '');    //trab. com nº serie
       Listview1.Items.Item[0].SubItems.Insert(13, QryProduto['REFERENCIA']);
       Listview1.Items.Item[0].SubItems.Insert(14, '');
      end
     else
      begin
       Listview1.Items.Item[0].SubItems.Insert(9, QryProdutoM['PRC_CUSTO']);        //trab. com nº serie
       if not varisnull(QryProdutoM['FIM_GARANTIA_FABRICANTE']) then
         Listview1.Items.Item[0].SubItems.Insert(10, QryProdutoM['FIM_GARANTIA_FABRICANTE'])          //trab. com nº serie
       else
         Listview1.Items.Item[0].SubItems.Insert(10, datetostr(Yesterday));         //trab. com nº serie
       Listview1.Items.Item[0].SubItems.Insert(11, QryProdutoM['DATA_COMPRA']);        //trab. com nº serie
       if QryProdutoM['GARANTIA_POSVENDA'] = 0 then
        Listview1.Items.Item[0].SubItems.Insert(12, '')    //trab. com nº serie
       else
        Listview1.Items.Item[0].SubItems.Insert(12, datetostr(QryProdutoM['GARANTIA_POSVENDA'] + now));    //trab. com nº serie
       Listview1.Items.Item[0].SubItems.Insert(13, QryProduto['REFERENCIA']);
       if not varisnull(QryProdutoM['COD_NF_ENTRADA']) then
         Listview1.Items.Item[0].SubItems.Insert(14, QryProdutoM['COD_NF_ENTRADA'])
       else
         Listview1.Items.Item[0].SubItems.Insert(14, '');
      end;

     //--- Grupo de Produtos ---
     if not VarIsNull(QryProduto['COD_GRUPOP']) then
       Listview1.Items.Item[0].SubItems.Insert(15, IntToStr(QryProduto['COD_GRUPOP']))       //Grupo de Produtos
     else
       Listview1.Items.Item[0].SubItems.Insert(15, '0');

     //--- Sub-Grupo de Produtos ---
     if not VarIsNull(QryProduto['COD_SUBGRUPOP']) then
       Listview1.Items.Item[0].SubItems.Insert(16, IntToStr(QryProduto['COD_SUBGRUPOP']))        //Sub-Grupo de Produtos
     else
       Listview1.Items.Item[0].SubItems.Insert(16, '0');

     //--- Código do ECF ---
     if not VarIsNull(QryProduto['COD_ECF']) then
      begin
       if QryTribEcf.Locate('CODECF', QryProduto['COD_ECF'], []) then
         Listview1.Items.Item[0].SubItems.Insert(17, IntToStr(QryProduto['COD_ECF']))           //Código do ECF
       else
        begin
         QryTribEcf.Locate('NOME', DefTNome, []);               //se tem CODECF mas valor invalido, passa valor default
         Listview1.Items.Item[0].SubItems.Insert(17, IntToStr(QryTribEcf['CODECF']));
        end;
      end
     else
      begin
       QryTribEcf.Locate('NOME', DefTNome, []);           //se não tem CODECF, passa valor default
       Listview1.Items.Item[0].SubItems.Insert(17, IntToStr(QryTribEcf['CODECF']));
      end;

     //--- Classificação Fiscal ---
     if not VarIsNull(QryProduto['CL_FIS']) then
       Listview1.Items.Item[0].SubItems.Insert(18, QryProduto['CL_FIS'])             //Classificação Fiscal
     else
       Listview1.Items.Item[0].SubItems.Insert(18, '0');

     //--- Situação Tributária ---
     if not VarIsNull(QryProduto['S_TRIB']) then
       Listview1.Items.Item[0].SubItems.Insert(19, QryProduto['S_TRIB'])            //Situação Tributária
     else
       Listview1.Items.Item[0].SubItems.Insert(19, '0');

     //--- Aliquota de ICMS ---
     if not VarIsNull(QryProduto['ALIQUOTA_ICMS']) then
       Listview1.Items.Item[0].SubItems.Insert(20, FormatCurr('0.00', QryProduto['ALIQUOTA_ICMS']))//Aliquota de ICMS
     else
       Listview1.Items.Item[0].SubItems.Insert(20, '0');

     //--- Aliquota de IPI ---
     if not VarIsNull(QryProduto['ALIQUOTA_IPI']) then
       Listview1.Items.Item[0].SubItems.Insert(21, FormatCurr('0.00', QryProduto['ALIQUOTA_IPI'])) //Aliquota de IPI
     else
       Listview1.Items.Item[0].SubItems.Insert(21, '0');

     //--- Valor de ICMS ---
     if not VarIsNull(QryProduto['ALIQUOTA_ICMS']) then
       Listview1.Items.Item[0].SubItems.Insert(22, FormatCurr('0.00', ((QryProduto['ALIQUOTA_ICMS'] / 100) * QryProduto['PRECO_VENDA']))) //Valor de ICMS
     else
       Listview1.Items.Item[0].SubItems.Insert(22, FormatCurr('0.00', 0));

     //--- Valor de IPI ---
     if not VarIsNull(QryProduto['ALIQUOTA_IPI']) then
       Listview1.Items.Item[0].SubItems.Insert(23, FormatCurr('0.00', ((QryProduto['ALIQUOTA_IPI'] / 100) * QryProduto['PRECO_VENDA'])))  //Valor de IPI
     else
       Listview1.Items.Item[0].SubItems.Insert(23, FormatCurr('0.00', 0));

     //--- Valor de Apresentação ---
     if not VarIsNull(QryProduto['APR_UND']) then
       Listview1.Items.Item[0].SubItems.Insert(24, QryProduto['APR_UND'])       //Valor de Apresentação
     else
       Listview1.Items.Item[0].SubItems.Insert(24, '');
     //COD_BICOENC_TEMP = '', campo utilizado para inserção de abastecimento
     VendaFrm.Listview1.Items.Item[0].SubItems.Insert(25, '');

     //--- Se houver promoção ---
     if (QryProduto['PRM_QUANT'] > 0) and (QryProduto['PRM_PRC'] > 0) then
      begin
       if currencyedit5.Value >= QryProduto['PRM_QUANT'] then
       //observa se a nova quantidade é maior q a da promocao
        begin
         Listview1.Items.Item[0].SubItems.Strings[2] :=
           formatcurr('0.00', QryProduto['PRM_PRC']);
         Listview1.Items.Item[0].SubItems.Strings[3] :=
           formatcurr('0.00', currencyedit1.Value);
         Listview1.Items.Item[0].SubItems.Strings[4] := QryProduto['PRM_QUANT'];
         //Quantidade da Promoção
         Listview1.Items.Item[0].SubItems.Strings[5] := QryProduto['PRM_PRC'];
         //Preço da Promoção
         Listview1.Items.Item[0].SubItems.Strings[6] := '1';
         //Promoção Habilitada
        end
      end;
     currencyedit2.Value := currencyedit2.Value +
       strtofloat(Listview1.Items.Item[0].SubItems.Strings[3]);

     //--- PROMOÇAO DO Nº DE SERIE ---
     if QryProduto['ENABLE_NUMSERIE'] = 1 then
      begin
       //conta a quant de item com Nº de serie em Promoção que ha na lista
       for x := 0 to Listview1.Items.Count - 1 do
        begin
         if Listview1.Items.Item[x].SubItems.Strings[7] = '1' then
           if QryProdutoM['COD_PRODUTOS'] =
             StrToInt(Listview1.Items.Item[x].SubItems.Strings[8]) then
             conta := conta + 1;
        end;
       //tratamento de itens em promoçao
       for x := 0 to ListView1.items.Count - 1 do
        begin
         if (QryProdutoM['COD_PRODUTOS'] = Listview1.Items.Item[x].SubItems.Strings[8]) and
           (ListView1.Items.Count > 1) then
          begin
           QryProduto.Locate('COD_PRODUTOS', Listview1.Items.Item[x].SubItems.Strings[8],
             []);                   //Se houver promocao
           if (QryProduto['PRM_QUANT'] > 0) and (QryProduto['PRM_PRC'] > 0) then
            begin
             if conta >= QryProduto['PRM_QUANT'] then                  //observa se a nova quantidade é maior q a da promocao
              begin                                                                  //atualiza valores em promoçao
               currencyedit2.Value := currencyedit2.Value -
                 strtofloat(Listview1.Items.Item[x].SubItems.Strings[3]);                      //Deduz do sub-total atual do total, para depois adicionar o novo sub-total
               Listview1.Items.Item[x].SubItems.Strings[2] := formatcurr('0.00', QryProduto['PRM_PRC']);               //se for, altera os precos para os respectivos da promocao
               Listview1.Items.Item[x].SubItems.Strings[3] := formatcurr('0.00', StrToCurr(Listview1.Items.Item[0].SubItems.Strings[0]) *
                                                              QryProduto['PRM_PRC']);
               Listview1.Items.Item[x].SubItems.Strings[4] := QryProduto['PRM_QUANT'];                //Quantidade da Promoção
               Listview1.Items.Item[x].SubItems.Strings[5] := QryProduto['PRM_PRC'];                //Preço da Promoção
               Listview1.Items.Item[x].SubItems.Strings[6] := '1';                //Promoção Habilitada
               currencyedit2.Value := currencyedit2.Value +
                 strtofloat(Listview1.Items.Item[x].SubItems.Strings[3]);                //Deduz do sub-total atual do total, para depois adicionar o novo sub-total
              end;
            end;
           QryProdutoM.First;
          end;
        end;
      end;
    end
   else
    begin
     if QryProduto['ENABLE_NUMSERIE'] = 0 then
      begin
       currencyedit2.Value := currencyedit2.Value -
         strtofloat(Listview1.Items.Item[index].SubItems.Strings[3]);         //Deduz do sub-total atual do total, para depois adicionar o novo sub-total
       Listview1.Items.Item[index].SubItems.Strings[0] :=
         formatcurr('0.00', strtofloat(Listview1.Items.Item[index].SubItems.Strings[0]) +
         currencyedit5.Value);

       if (QryProduto['PRM_QUANT'] > 0) and (QryProduto['PRM_PRC'] > 0) then         //Se houver promocao
        begin
         if strtofloat(Listview1.Items.Item[index].SubItems.Strings[0]) >= QryProduto['PRM_QUANT'] then               //observa se a nova quantidade é maior q a da promocao
          begin
           Listview1.Items.Item[index].SubItems.Strings[2] :=
             formatcurr('0.00', QryProduto['PRM_PRC']);                   //se for, altera os precos para os respectivos da promocao
           Listview1.Items.Item[index].SubItems.Strings[3] :=
             formatcurr('0.00', StrToCurr(Listview1.Items.Item[index].SubItems.Strings[0]) *
             QryProduto['PRM_PRC']);
           Listview1.Items.Item[index].SubItems.Strings[4] := QryProduto['PRM_QUANT'];            //Quantidade da Promoção
           Listview1.Items.Item[index].SubItems.Strings[5] := QryProduto['PRM_PRC'];            //Preço da Promoção
           Listview1.Items.Item[index].SubItems.Strings[6] := '1';                   //Promoção Habilitada
          end
         else
          begin                                                                        //se nao for maior se comporta como se nao houvesse promocao
           Listview1.Items.Item[index].SubItems.Strings[3] :=
             formatcurr('0.00', strtofloat(Listview1.Items.Item[index].SubItems.Strings[3]) +
             currencyedit1.Value);
           Listview1.Items.Item[index].SubItems.Strings[4] := '0';              //Quantidade da Promoção
           Listview1.Items.Item[index].SubItems.Strings[5] := '0';              //Preço da Promoção
           Listview1.Items.Item[index].SubItems.Strings[6] := '0';              //Promoção Habilitada
          end;
        end
       else
        begin                                                                        //se nao for maior se comporta como se nao houvesse promocao
         Listview1.Items.Item[index].SubItems.Strings[3] :=
           formatcurr('0.00', strtofloat(Listview1.Items.Item[index].SubItems.Strings[3]) +
           currencyedit1.Value);
         Listview1.Items.Item[index].SubItems.Strings[4] := '0';           //Quantidade da Promoção
         Listview1.Items.Item[index].SubItems.Strings[5] := '0';           //Preço da Promoção
         Listview1.Items.Item[index].SubItems.Strings[6] := '0';           //Promoção Habilitada
        end;

       currencyedit2.Value := currencyedit2.Value +
         strtofloat(Listview1.Items.Item[index].SubItems.Strings[3]);
      end
     else
       application.MessageBox('Esse Nº de Série já está na lista de Venda.',
         'Atenção', mb_ok + mb_iconinformation);
    end;

 desabilita;

 currencyedit2.displayformat := ',0.00';
 edit1.Text := '';
end;

//------ Fechamento de Pedidos ------
procedure tVendaFrm.FecharPedido(Sender: TObject);
var
 x, COD_PEDIDOS: integer;
 Valor_IPI, Valor_ICMS: currency;
 noError: boolean;
 AskStr: PChar;
begin
 noError := True;
 VendaFrm.Enabled := False;
 with QryCaixaVend do
  begin
   Close;
   UnPrepare;
   sql.clear;
   sql.add('Select * from CAIXAOPCL where ');
   sql.add('codcaixaopcl  in (Select max(codcaixaopcl) from CAIXAOPCL where (CODPDV = :CODPDV))');
   params.ParamByName('CODPDV').AsInteger := cod_pdv;
   Prepare;
   Open;
  end;

 if QryCaixaVend['STATE'] = 1 then          //Se o caixa estiver aberto Fecha Pedido
  begin
   if Fiscal then
    begin
     AskStr := 'Fechar Pedido e Imprimir Cupom Fiscal?';
     Label18.Caption := 'Imprimindo Cupom Fiscal';
    end
   else
    begin
     AskStr := 'Fechar Pedido?';
     Label18.Caption := 'Finalizando a Venda';
    end;
   Label17.Caption := Label18.Caption;

   try
     if application.messagebox(AskStr, 'Atenção', mb_YesNo + mb_iconquestion + mb_defbutton2) = idYes then
      begin
       if Fiscal then
        begin
         panel9.Visible := True;
         statusbar1.panels[0].Text := 'Imprimindo Cupom Fiscal. Aguarde...';
         Application.ProcessMessages;

         //-- Abertura de Gaveta do ECF ---
         if noError then
          begin
           if Gaveta_Instalada then
            begin
             if Gaveta_Venda then
              Abrir_Gaveta_ECF
             else if (DBcombobox1.ItemIndex = 1) then
              Abrir_Gaveta_ECF;
            end;
          end;

         if noError then
          begin
           case TipoECF of
             ECF_BemaFi1: noError := Venda_Bematech_Fi1;      //MP20Fi1
             ECF_BemaFi2: noError := Venda_Bematech_Fi2;      //MP20Fi2
             ECF_Sweda,
             ECF_Zanthus: noError := Venda_Sweda_IFS7000;
            end;
          end;
        end
       else
        begin
         if Application.MessageBox('Imprimir COMPROVANTE NÃO FISCAL?', 'Atenção!', mb_yesno + mb_iconquestion) = idYes then
          Cotacao_NaoFiscal(False);

        end;

       if noError then
        begin
         //--- Dados referentes ao Cliente ---
         with QryCadastro do
          begin
            Close;
           Unprepare;
           SQL.Clear;
           SQL.Add('Select * from cadastro where CODCLI = :CODCLI');
           Params.ParamByName('CODCLI').AsInteger := CODCLIFlag;
           Prepare;
           Open;
          end;

         //--- Totaliza Valores de IPI e ICMS ---
         Valor_IPI := 0;
         Valor_ICMS := 0;
         for x := 0 to Listview1.items.Count - 1 do
          begin
           Valor_IPI := Valor_IPI + StrToCurr(Listview1.Items.Item[x].SubItems.Strings[23]);
           Valor_ICMS := Valor_ICMS + StrToCurr(Listview1.Items.Item[x].SubItems.Strings[22]);
          end;

         //--- Dados referentes ao Pedido ---
         SQLVendas.Close;
         SQLVendas.SQL.Clear;
         SQLVendas.SQL.Add('insert into PEDIDOS (COD_VEND, COD_CLI_DESTINATARIO, CNPJ_DESTINATARIO, IE_DESTINATARIO, UF_DESTINATARIO, EMITENTE_NF, NUM_ITENS, DESCONTO,');
         SQLVendas.SQL.Add('VALOR_TOTALPRODUTO, BASE_ICMS,COD_FORMA_PGT, FORMA_PGT, FIM_PED, COD_CAIXA_OP_CL, NOME_DESTINATARIO, CODPDV, MODELO_NF, ');
         SQLVendas.SQL.Add('ULTATUAL, ULTATUALCODSETOR, ULTATUALCODSETORUSER, DATAHORA, SITUACAO_NF, IMP_OK, IMP_TIPO, VALOR_TOTALNF, VALOR_IPI, VALOR_ICMS)');
         SQLVendas.SQL.Add('values (:COD_VEND, :COD_CLI_DESTINATARIO, :CNPJ_DESTINATARIO, :IE_DESTINATARIO, :UF_DESTINATARIO, :EMITENTE_NF, :NUM_ITENS, :DESCONTO,');
         SQLVendas.SQL.Add(':VALOR_TOTALPRODUTO, :BASE_ICMS, :COD_FORMA_PGT, :FORMA_PGT, :FIM_PED, :COD_CAIXA_OP_CL, :NOME_DESTINATARIO, :CODPDV, :MODELO_NF,');
         SQLVendas.SQL.Add(':ULTATUAL, :ULTATUALCODSETOR, :ULTATUALCODSETORUSER, :DATAHORA, :SITUACAO_NF, :IMP_OK, :IMP_TIPO, :VALOR_TOTALNF, :VALOR_IPI, :VALOR_ICMS)');
         SQLVendas.Params.ByName('COD_CAIXA_OP_CL').AsInteger := QryCaixaVend['CODCAIXAOPCL'];
         SQLVendas.Params.ByName('COD_VEND').AsInteger := QryFrentista['COD_FRENTISTA'];
         SQLVendas.Params.ByName('COD_CLI_DESTINATARIO').AsInteger := CODCLIFlag;
         if QryCadastro.RecordCount > 0 then
          begin
           if not VarisNull(QryCadastro['CGCCPF']) then
             SQLVendas.Params.ByName('CNPJ_DESTINATARIO').AsString := QryCadastro['CGCCPF'];
           if not VarisNull(QryCadastro['INSCEST']) then
             SQLVendas.Params.ByName('IE_DESTINATARIO').AsString := QryCadastro['INSCEST'];
           if not VarisNull(QryCadastro['UF']) then
             SQLVendas.Params.ByName('UF_DESTINATARIO').AsString := QryCadastro['UF'];
          end;
         SQLVendas.Params.ByName('EMITENTE_NF').AsString := 'P';
         SQLVendas.Params.ByName('VALOR_TOTALPRODUTO').AsFloat := currencyedit2.Value + currencyedit6.Value;
         SQLVendas.Params.ByName('VALOR_TOTALNF').AsFloat := currencyedit2.value;
         SQLVendas.Params.ByName('BASE_ICMS').AsFloat := CurrencyEdit2.Value + CurrencyEdit6.Value;
         SQLVendas.Params.ByName('VALOR_ICMS').AsFloat := Valor_ICMS;
         SQLVendas.Params.ByName('SITUACAO_NF').AsInteger := 0;
         SQLVendas.Params.ByName('NUM_ITENS').AsInteger := ListView1.Items.Count;
         if not VarIsNull(currencyedit6.Value) then
           SQLVendas.Params.ByName('DESCONTO').AsFloat := currencyedit6.Value;
         SQLVendas.Params.ByName('FORMA_PGT').AsString := DBCombobox1.Text;
         SQLVendas.Params.ByName('COD_FORMA_PGT').AsInteger := DbCombobox1.ItemIndex;
         SQLVendas.Params.ByName('DATAHORA').AsDateTime := now;
         SQLVendas.Params.ByName('ULTATUAL').AsDateTime := now;
         SQLVendas.Params.ByName('ULTATUALCODSETORUSER').AsInteger := CodSetorUser;
         SQLVendas.Params.ByName('ULTATUALCODSETOR').AsInteger := CodSetor;
         SQLVendas.Params.ByName('IMP_OK').AsInteger := 0;
         if Fiscal then
           SQLVendas.Params.ByName('IMP_TIPO').AsString := 'Cupom Fiscal'
         else
           SQLVendas.Params.ByName('IMP_TIPO').AsString := 'Nota Fiscal';
         SQLVendas.Params.ByName('FIM_PED').AsInteger := 1;
         SQLVendas.Params.ByName('VALOR_IPI').AsFloat := Valor_IPI;
         SQLVendas.Params.ByName('NOME_DESTINATARIO').AsString := Label12.Caption;
         SQLVendas.Params.ByName('CODPDV').Asinteger := cod_pdv;
         SQLVendas.Params.ByName('MODELO_NF').AsString := '2D';
         SQLVendas.Prepare;
         SQLVendas.ExecQuery;

         //--- Retorna o Código do pedido Inserido ---
         Dm1.IBSQLGen_id.Close;
         Dm1.IBSQLGen_id.SQL.Clear;
         Dm1.IBSQLGen_id.SQL.add('SELECT GEN_ID(GCod_Pedidos, 0) FROM RDB$DATABASE');
         Dm1.IBSQLGen_id.ExecQuery;
         COD_PEDIDOS := Dm1.IBSQLGen_id.Fields[0].AsInteger;

         for x := 0 to Listview1.items.Count - 1 do
          begin
           //--- Informações dos Itens de Pedido ---
           SQLVendas.Close;
           SQLVendas.SQL.Clear;
           SQLVendas.SQL.Add('insert into PEDIDOS_ITENS (COD_PEDIDOS, COD_PRODUTOS, REF_PRODUTOS, NUM_ITEM, PRODUTO, COD_GRUPOP,');
           SQLVendas.SQL.Add('COD_SUBGRUPOP, COD_ECF, PRC_VENDA, SUBTOTAL, VALOR_DESCONTO, PERC_DESCONTO, PRM_ENABLED, PRM_QUANT, PRM_PRC, QUANTIDADE, NUM_SERIE, DATA_COMPRA_NSERIE,');
           SQLVendas.SQL.Add('PRC_CUSTO_NSERIE, FIM_GARANTIA_FABRICANTE, FIM_GARANTIA_APOS_VENDA, COD_NF_ENTRADA, BASE_ICMS, BASE_ICMS_SUBST, ALIQUOTA_ICMS, ALIQUOTA_IPI,');
           SQLVendas.SQL.Add('VALOR_ICMS, VALOR_IPI, CL_FIS, S_TRIB, ENABLED, DATAHORA, ULTATUALCODSETOR, ULTATUALCODSETORUSER, ULTATUAL, APR_UND)');
           SQLVendas.SQL.Add('values (:COD_PEDIDOS, :COD_PRODUTOS, :REF_PRODUTOS, :NUM_ITEM, :PRODUTO, :COD_GRUPOP, :COD_SUBGRUPOP, :COD_ECF, :PRC_VENDA, :SUBTOTAL, :VALOR_DESCONTO,');
           SQLVendas.SQL.Add(':PERC_DESCONTO, :PRM_ENABLED, :PRM_QUANT, :PRM_PRC, :QUANTIDADE, :NUM_SERIE, :DATA_COMPRA_NSERIE, :PRC_CUSTO_NSERIE, :FIM_GARANTIA_FABRICANTE, :FIM_GARANTIA_APOS_VENDA,');
           SQLVendas.SQL.Add(':COD_NF_ENTRADA, :BASE_ICMS, :BASE_ICMS_SUBST, :ALIQUOTA_ICMS, :ALIQUOTA_IPI, :VALOR_ICMS, :VALOR_IPI, :CL_FIS, :S_TRIB, :ENABLED, :DATAHORA, :ULTATUALCODSETOR,');
           SQLVendas.SQL.Add(':ULTATUALCODSETORUSER, :ULTATUAL, :APR_UND)');
           SQLVendas.Params.ByName('COD_PEDIDOS').AsInteger := COD_PEDIDOS;
           if Listview1.Items.Item[x].SubItems.Strings[7] = IntToStr(0) then
            begin
             SQLVendas.Params.ByName('REF_PRODUTOS').AsString :=
               Listview1.Items.Item[x].Caption;
             SQLVendas.Params.ByName('NUM_SERIE').AsString := '';
             SQLVendas.Params.ByName('PRC_CUSTO_NSERIE').AsString := '';
             SQLVendas.Params.ByName('FIM_GARANTIA_FABRICANTE').AsString := '';
             SQLVendas.Params.ByName('DATA_COMPRA_NSERIE').AsString := '';
             SQLVendas.Params.ByName('FIM_GARANTIA_APOS_VENDA').AsString := '';
             SQLVendas.Params.ByName('COD_NF_ENTRADA').AsString := '';
            end
           else
            begin
             SQLVendas.Params.ByName('NUM_SERIE').AsString :=
               Listview1.Items.Item[x].Caption;
             SQLVendas.Params.ByName('PRC_CUSTO_NSERIE').AsFloat :=
               StrToCurr(Listview1.Items.Item[x].SubItems.Strings[9]);
             SQLVendas.Params.ByName('FIM_GARANTIA_FABRICANTE').Asdatetime :=
               StrTodate(Listview1.Items.Item[x].SubItems.Strings[10]);
             SQLVendas.Params.ByName('DATA_COMPRA_NSERIE').AsDatetime :=
               StrToDate(Listview1.Items.Item[x].SubItems.Strings[11]);
             if Listview1.Items.Item[x].SubItems.Strings[12] <> '' then
               SQLVendas.Params.ByName('FIM_GARANTIA_APOS_VENDA').Asdatetime :=
                 StrToDate(Listview1.Items.Item[x].SubItems.Strings[12])
             else
               SQLVendas.Params.ByName('FIM_GARANTIA_APOS_VENDA').AsVariant := '';
             SQLVendas.Params.ByName('REF_PRODUTOS').AsString :=
               Listview1.Items.Item[x].SubItems.Strings[13];
             SQLVendas.Params.ByName('COD_NF_ENTRADA').AsString :=
               Listview1.Items.Item[x].SubItems.Strings[14];
            end;
           SQLVendas.Params.ByName('QUANTIDADE').AsFloat := StrToCurr(Listview1.Items.Item[x].SubItems.Strings[0]);
           SQLVendas.Params.ByName('Produto').AsString := Listview1.Items.Item[x].SubItems.Strings[1];
           SQLVendas.Params.ByName('PRC_VENDA').AsFloat := StrToCurr(Listview1.Items.Item[x].SubItems.Strings[2]);
           SQLVendas.Params.ByName('SUBTOTAL').AsFloat := StrToCurr(Listview1.Items.Item[x].SubItems.Strings[3]);
           SQLVendas.Params.ByName('PRM_QUANT').AsFloat := StrToCurr(Listview1.Items.Item[x].SubItems.Strings[4]);
           SQLVendas.Params.ByName('PRM_PRC').AsFloat := StrToCurr(Listview1.Items.Item[x].SubItems.Strings[5]);
           SQLVendas.Params.ByName('PRM_ENABLED').AsString :=
             Listview1.Items.Item[x].SubItems.Strings[6];
           SQLVendas.Params.ByName('Cod_Produtos').AsInteger :=
             StrToInt(Listview1.Items.Item[x].SubItems.Strings[8]);
           SQLVendas.Params.ByName('Datahora').asDatetime := now;
           SQLVendas.Params.ByName('UltAtual').AsDateTime := now;
           SQLVendas.Params.ByName('UltAtualCodSetor').AsInteger := CodSetor;
           SQLVendas.Params.ByName('UltAtualCodSetoruser').AsInteger := CodSetorUser;
           SQLVendas.Params.ByName('NUM_ITEM').AsInteger := x + 1;
           SQLVendas.Params.ByName('COD_GRUPOP').AsInteger :=
             StrToInt(Listview1.Items.Item[x].SubItems.Strings[15]);
           SQLVendas.Params.ByName('COD_SUBGRUPOP').AsInteger :=
             StrToInt(Listview1.Items.Item[x].SubItems.Strings[16]);
           SQLVendas.Params.ByName('COD_ECF').AsInteger :=
             StrToInt(Listview1.Items.Item[x].SubItems.Strings[17]);
           SQLVendas.Params.ByName('VALOR_DESCONTO').AsInteger := 0;
           SQLVendas.Params.ByName('PERC_DESCONTO').AsInteger := 0;
           SQLVendas.Params.ByName('BASE_ICMS').AsFloat :=
             StrToFloat(Listview1.Items.Item[x].SubItems.Strings[3]);
           SQLVendas.Params.ByName('BASE_ICMS_SUBST').AsFloat := 0;
           SQLVendas.Params.ByName('ALIQUOTA_ICMS').AsFloat :=
             StrToCurr(Listview1.Items.Item[x].SubItems.Strings[20]);
           SQLVendas.Params.ByName('ALIQUOTA_IPI').AsFloat :=
             StrToCurr(Listview1.Items.Item[x].SubItems.Strings[21]);
           SQLVendas.Params.ByName('VALOR_ICMS').AsFloat :=
             StrToCurr(Listview1.Items.Item[x].SubItems.Strings[22]);
           SQLVendas.Params.ByName('VALOR_IPI').AsFloat :=
             StrToCurr(Listview1.Items.Item[x].SubItems.Strings[23]);
           SQLVendas.Params.ByName('CL_FIS').AsString :=
             Listview1.Items.Item[x].SubItems.Strings[18];
           SQLVendas.Params.ByName('S_TRIB').AsString :=
             Listview1.Items.Item[x].SubItems.Strings[19];
           SQLVendas.Params.ByName('APR_UND').AsString :=
             Listview1.Items.Item[x].SubItems.Strings[24];
           SQLVendas.Prepare;
           SQLVendas.ExecQuery;

           //--- Atualiza Informações de Produtos no Estoque ---
           SQLVendas.Close;
           SQLVendas.SQL.Clear;
           SQLVendas.SQL.Add('Update Produtos set EST_ATUAL = EST_ATUAL - :EST_ATUAL where REFERENCIA=:REFERENCIA');
           SQLVendas.Params.ByName('REFERENCIA').AsVariant :=
             Listview1.Items.Item[x].Caption;
           SQLVendas.Params.ByName('EST_ATUAL').AsVariant :=
             StrToCurr(Listview1.Items.Item[x].SubItems.Strings[0]);
           SQLVendas.Prepare;
           SQLVendas.ExecQuery;

           //--- Atualiza Informações dos Nº de Serie em Estoque ---
           if Listview1.Items.Item[x].SubItems.Strings[7] = IntToStr(1) then
            begin
             SQLVendas.Close;
             SQLVendas.SQL.Clear;
             SQLVendas.SQL.Add('delete from Produtos_NSerie where NUM_SERIE=:NUM_SERIE');
             SQLVendas.Params.ByName('NUM_SERIE').AsVariant :=
               Listview1.Items.Item[x].Caption;
             SQLVendas.Prepare;
             SQLVendas.ExecQuery;
            end;

           //--- Exclue abastecimentos em aberto        ***Desabilitado temporariamente para tentar corrigir falha de deadlock no servidor!
          {if Listview1.Items.Item[x].SubItems.Strings[25] <> '' then
            begin
             SQLVendas.Close;
             SQLVendas.SQL.Clear;
             SQLVendas.SQL.Add('delete from BICOENC_TEMP where COD_BICOENC_TEMP=:COD_BICOENC_TEMP');
             SQLVendas.Params.ByName('COD_BICOENC_TEMP').AsString :=
               Listview1.Items.Item[x].SubItems.Strings[25];
             SQLVendas.Prepare;
             SQLVendas.ExecQuery;
            end;   }
          end;

         //--- Dados referentes ao Caixa ---
         SQLVendas.Close;
         SQLVendas.SQL.Clear;
         SQLVendas.SQL.Add('Update CAIXAOPCL set Tot_Vendas = Tot_Vendas + :Tot_Vendas, ' +
           'EmCartao = EmCartao + :EmCartao, EmCheque = EmCheque + :EmCheque, ' +
           'EmDinheiro = EmDinheiro + :EmDinheiro, EmOutros = EmOutros + :EmOutros, ' +
           'EmCaixaFechamento = EmCaixaFechamento + :EmCaixaFechamento, ' +
           'Tot_Descontos = Tot_Descontos + :Tot_Descontos where CODCAIXAOPCL = :CODCAIXAOPCL');
         SQLVendas.Params.ByName('CODCAIXAOPCL').AsInteger := QryCaixaVend['CODCAIXAOPCL'];
         SQLVendas.Params.ByName('Tot_Vendas').AsVariant := currencyedit2.Value;
         SQLVendas.Params.ByName('EmCaixaFechamento').AsVariant := currencyedit2.Value;
         if dbcombobox1.ItemIndex = 1 then
           SQLVendas.Params.ByName('EmDinheiro').AsVariant := currencyedit2.Value;
         if dbcombobox1.ItemIndex = 2 then
           SQLVendas.Params.ByName('EmCheque').AsVariant := currencyedit2.Value;
         if dbcombobox1.ItemIndex = 3 then
           SQLVendas.Params.ByName('EmCartao').AsVariant := currencyedit2.Value;
         if dbcombobox1.ItemIndex = 4 then
           SQLVendas.Params.ByName('EmOutros').AsVariant := currencyedit2.Value;
         if currencyedit6.Visible then
           SQLVendas.Params.ByName('Tot_Descontos').AsVariant := currencyedit6.Value;
         SQLVendas.Prepare;
         SQLVendas.ExecQuery;

         //Esta desabilitado temporariamente... mas para multiplas estações atualizando preço e quantidade tem q habilitar
         //para atualizar query de produtos por exemplo!
          {if DM1.CanCommit then
           begin
            DM1.GetRecPosIBArray(IBArray);
            SQLVendas.Transaction.Commit;
            DM1.OpenIBArray(IBArray);
            DM1.SetRecPosIBArray(IBArray);
           end
          else    }
         SQLVendas.Transaction.CommitRetaining;

         //--- Prepara Tela para Novo Pedido ---
         Listview1.Items.Clear;
         statusbar1.panels[2].Text := 'Caixa Livre';
         label9.Visible := False;
         label10.Visible := False;
         panel7.Visible := False;
         panel7.Enabled := False;
         panel8.Visible := False;
         panel8.Enabled := False;
         currencyedit2.Clear;
         currencyedit3.onchange := nil;
         currencyedit6.onchange := nil;
         currencyedit3.Clear;
         currencyedit6.Clear;
         currencyedit3.onchange := currencyedit3change;
         currencyedit6.onchange := currencyedit6change;
         currencyedit4.Clear;
         currencyedit3.enabled := False;
         currencyedit3.Visible := False;
         currencyedit4.Visible := False;
         currencyedit2.Value := 0;
         CODCLIFlag := -1;
         currencyedit2.displayformat := ',';
         label12.Caption := 'Venda Avulso.';
         Label1.Enabled := True;
         Label2.Enabled := True;
         Label3.Enabled := True;
         Label4.Enabled := True;
         Label5.Enabled := True;
         dbcombobox1.ItemIndex := 0;
         VendaFrm.Enabled := True;
         desabilita;
        end;
      end
     else
      begin
       panel9.Visible := False;
       VendaFrm.Enabled := True;
       if TEdit(sender).canfocus then
        begin
         button1.SetFocus;
         TEdit(sender).setfocus;
        end;
       Screen.Cursor := crDefault;
      end;
   finally
     Screen.Cursor := crDefault;
     Application.ProcessMessages;
     panel9.Visible := False;
     VendaFrm.Enabled := True;
    end;
  end
 else
  begin
   VendaFrm.Enabled := True;
   LogToFile('Fechar_Pedido: Caixa está Fechado durante a tentativa de venda', True);
   Application.MessageBox('Caixa está Fechado' + #13 +
     'Realize a abertura do caixa e tente novamente...',
     'Atenção', mb_ok + mb_iconinformation);
  end;
end;

procedure TVendaFrm.Abilita;
begin
 edit1.Enabled := False;
 currencyedit5.Enabled := True;
 currencyedit1.displayformat := ',0.00';
 Currencyedit5.displayformat := ',0.000';
 currencyedit5.Value := 1;
 if currencyedit5.canfocus then
  currencyedit5.SetFocus;
 panel6.Enabled := False;
 currencyedit1.Enabled := True;
end;

procedure TVendaFrm.Desabilita;
begin
 groupbox1.Visible := False;

 if ListView1.Items.Count > 0 then
  begin
   panel6.Enabled := True;
   //statusbar1.panels[2].text := 'Pedido Nº: '+ inttostr(CodPedAuxFlag) + ' - ' + inttostr(NumItensFlag) + ' iten(s)';
   currencyedit2.Enabled := True;
  end
 else
  begin
   panel6.Enabled := False;
   statusbar1.panels[2].Text := 'Caixa Livre';
   currencyedit2.Enabled := False;
  end;

 currencyedit1.displayformat := ',';
 currencyedit5.displayformat := ',';
 currencyedit5.Enabled := False;
 currencyedit5.onchange := nil;
 currencyedit5.Value := 0;
 currencyedit5.onchange := currencyedit5change;
 currencyedit1.Enabled := False;
 currencyedit1.Value := 0;

 dbedit6.DataField := 'PRECO_VENDA';
 dbedit4.DataField := 'DESCRICAO';

 dbedit4.Text := '';
 dbedit6.Text := '';

 edit1.Enabled := True;
 if edit1.CanFocus then
  begin
   edit1.SetFocus;
   edit1.OnEnter(edit1);
  end;

 screen.cursor := crDefault;
end;

procedure TVendaFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM1.CloseIBArray([VendaFrm.QryTribEcf, VendaFrm.QryFrentista,
   VendaFrm.QryProduto, VendaFrm.QryProdutoM, VendaFrm.QryCadastro, VendaFrm.QrySintegra_Info]);
 action := cafree;
end;

procedure TVendaFrm.DBEdit3Enter(Sender: TObject);
begin
 TDBEdit(Sender).color := claqua;
end;

procedure TVendaFrm.DBEdit3Exit(Sender: TObject);
begin
 TDBEdit(Sender).color := clwindow;
end;

procedure TVendaFrm.Edit1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 //--- Abertura de Gaveta por Intervenção ---
 if key = vk_home then
  begin
   if Gaveta_Intervencao then
     Abrir_Gaveta_ECF;
  end;


 if key = vk_escape then
  begin
   if ListView1.Items.Count = 0 then
    begin
     panel6.Enabled := False;
     dblookupcombobox1.Visible := True;
     edit1.Clear;
     panel1.Enabled := False;
     Label1.Enabled := False;
     Label2.Enabled := False;
     Label3.Enabled := False;
     Label4.Enabled := False;
     Label5.Enabled := False;
     Label6.Enabled := False;
     Label12.Enabled := False;
     label15.enabled := False;
     currencyedit2.Enabled := False;
     statusbar1.panels[2].Text := '';

     if dblookupcombobox1.canfocus then
      dblookupcombobox1.SetFocus;
    end
   else
    begin
     if statusbar1.panels[0].Text <> 'Cancele o pedido e tente novamente...  /  <F8> Cancela Pedido' then
      begin
       msgstr := statusbar1.panels[0].Text;
       statusbar1.panels[0].Text := 'Cancele o pedido e tente novamente...  /  <F8> Cancela Pedido';
       timer1.Enabled := True;
      end;
    end;
  end;

 //------ Procura de Produtos ------
 if key = vk_F5 then
  begin
   Label1Click(self);
  end;

 //------ Procura de Clientes ------
 if key = vk_F6 then
  begin
   Label15Click(self);
  end;

 //------ Procura de Abastecimento em aberto ------
 if key = vk_F7 then
  begin
   msgstr := statusbar1.panels[0].Text;
   statusbar1.panels[0].Text := 'Abrindo tela de consulta de abastecimentos...';
   application.createform(tVendaBicoEnc_TempListFrm, VendaBicoEnc_TempListFrm);
   statusbar1.panels[0].Text := '';
   VendaBicoEnc_TempListFrm.showmodal;
   VendaClienteListFrm.Free;
   statusbar1.panels[0].Text := msgstr;
  end;

 //------ Cancela pedido ------
 if key = vk_F8 then
  begin
   if ListView1.Items.Count > 0 then
    begin
     if application.messagebox('Tem certeza que deseja Cancelar o Pedido?',
       'Atenção', mb_YesNo + mb_iconquestion) = idYes then
      begin
       statusbar1.panels[0].Text := 'Cancelando pedido. Aguarde...';
       statusbar1.Refresh;
       screen.cursor := crHourGlass;

       ListView1.Items.Clear;

       dbedit4.Text := '';
       dbedit6.Text := '';

       currencyedit2.Value := 0;
       currencyedit2.displayformat := ',';
       label12.Caption := 'Venda Avulso.';
       //      CODCLIFlag:=-1;
       desabilita;
      end;
    end
   else
    begin
     if statusbar1.panels[0].Text <> 'Caixa Livre, não há itens na Lista de Compras...' then
      begin
       msgstr := statusbar1.panels[0].Text;
       statusbar1.panels[0].Text := 'Caixa Livre, não há itens na Lista de Compras...';
       timer1.Enabled := True;
      end;
    end
  end;

 if key = vk_return then
  begin
   if edit1.Text <> '' then
    begin
     screen.cursor := crHourGlass;
     statusbar1.panels[0].Text := 'Localizando Produto. Aguarde...';
     statusbar1.Refresh;
     if QryProduto.Locate('REFERENCIA', Edit1.Text, []) then
     //Tenta localizar produto na tabela
      begin
       if QryProduto['ENABLE_NUMSERIE'] = 0 then
        begin
         abilita;
         if (QryProduto['PRM_QUANT'] > 0) and (QryProduto['PRM_PRC'] > 0) then
         //Se houver promocao, mostra na tela
          begin
           groupbox1.Visible := True;
           groupbox1.color := clwindow;
           label13.Caption := FormatCurr('###,##0.00',
             QryProduto['PRM_QUANT']) + ' x ' + FormatCurr('###,##0.00',
             QryProduto['PRM_PRC']) + ' = ' + FormatCurr('###,##0.00',
             QryProduto['PRM_PRC'] * QryProduto['PRM_QUANT']);
           GroupBox1.Caption := ' Promoção: 1 x ' + FormatCurr('###,##0.00',
             QryProduto['PRC_VENDA']) + ' = ' + FormatCurr('###,##0.00', QryProduto['PRC_VENDA']) + ' ';
          end;
        end
       else
        begin
         screen.cursor := crDefault;
         statusbar1.panels[0].Text := '';
         statusbar1.Refresh;
         dbedit4.Text := '';
         dbedit6.Text := '';
         application.messagebox('Essa Referencia é de um Produto que Trabalha com Nº de Série' +
           #13 +
           'Tente Novamente Digitanto um Nº de Série Refêrente a esse Produto.',
           'Atenção', mb_Ok + mb_Iconinformation);
         edit1.selectall;
         edit1.OnEnter(edit1);
        end;
      end
     else                                                                        //Produto não localizado na tabela
      begin
       if QryProdutoM.Locate('NUM_SERIE', Edit1.Text, []) then
       //Tenta localizar produto na tabela de nº de serie
        begin
         abilita;
         QryProduto.Locate('COD_PRODUTOS', QryProdutoM['COD_PRODUTOS'], []);
         if (QryProduto['PRM_QUANT'] > 0) and (QryProduto['PRM_PRC'] > 0) then
         //Se houver promocao, mostra na tela
          begin
           groupbox1.Visible := True;
           groupbox1.color := clwindow;
           label13.Caption := floattostr(QryProduto['PRM_QUANT']) +
             ' x ' + FormatCurr('0.00', QryProduto['PRM_PRC']) + ' = ' + FormatCurr('0.00',
             QryProduto['PRM_PRC'] * QryProduto['PRM_QUANT']);
          end;
         CurrencyEdit5Change(self);
        end
       else
        begin
         screen.cursor := crDefault;
         statusbar1.panels[0].Text := '';
         statusbar1.Refresh;
         dbedit4.Text := '';
         dbedit6.Text := '';
         application.messagebox('Referência de Produto não encontrada, produto não cadastrado...' +
           #13 +
           'Digite outra referência e tente novamente ou Pressione <F5> para Procurar Produtos',
           'Atenção', mb_Ok + mb_Iconinformation);
         edit1.selectall;
         edit1.OnEnter(edit1);
        end;
      end;
     screen.cursor := crDefault;
    end
   else               //Edit1 Vazio, tenta fechar pedido
    begin
     if ListView1.Items.Count > 0 then           //Pedido c/ itens, inicia fechamento
      begin
       PedTotalFlag := currencyedit2.Value;
       panel6.Enabled := False;
       panel7.enabled := true;
       panel7.Visible := True;
       Label1.Enabled := False;
       Label2.Enabled := False;
       Label3.Enabled := False;
       Label4.Enabled := False;
       Label5.Enabled := False;
       edit1.Enabled := False;

       if dbcombobox1.canfocus then
        dbcombobox1.SetFocus;
      end
     else                                                //Pedido sem nenhum iten
      begin
       if statusbar1.panels[0].Text <> 'Caixa Livre, não há itens na Lista de Compras...' then
        begin
         msgstr := statusbar1.panels[0].Text;
         statusbar1.panels[0].Text := 'Caixa Livre, não há itens na Lista de Compras...';
         timer1.Enabled := True;
        end;

       if edit1.canfocus then
        edit1.SetFocus;
      end;
    end;
  end;
end;

procedure TVendaFrm.FormCreate(Sender: TObject);
begin
 CODCLIFlag := -1;
 CotacaoFlag := -1;

 dbedit4.Text := '';
 dbedit6.Text := '';
end;

procedure TVendaFrm.Edit1Enter(Sender: TObject);
begin
 TEdit(Sender).color := claqua;

 if Tedit(Sender).Name = 'Edit1' then
   if listview1.Items.Count > 0 then
     statusbar1.panels[0].Text := '<F5> Produto  /  <F6> Cliente  /  <F7> Abastecimento  /  <F8> Cancela Pedido'
   else
     statusbar1.panels[0].Text := '<F5> Produto  /  <F6> Cliente  /  <F7> Abastecimento  /  <Esc> Voltar';

end;


procedure TVendaFrm.Edit1Exit(Sender: TObject);
begin
 TEdit(Sender).color := clwindow;
end;

procedure TVendaFrm.DBComboBox1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 //Imprime Orcamento Não Fiscal
 if key = Vk_F1 then
  if not Fiscal then
   Cotacao_NaoFiscal(True);

 if key = vk_escape then
  begin
   dbcombobox1.ItemIndex := 0;
   panel7.enabled := False;
   panel7.Visible := False;
   Label1.Enabled := True;
   Label2.Enabled := True;
   Label3.Enabled := True;
   Label4.Enabled := True;
   Label5.Enabled := True;
   edit1.Enabled := True;

   if edit1.CanFocus then
    edit1.SetFocus;
  end;

 if key = vk_F12 then
  begin
   if dbcombobox1.Text <> '' then
    begin
     panel7.Enabled := False;
     panel8.Enabled := True;
     panel8.Visible := True;
     if currencyedit6.canfocus then
      currencyedit6.SetFocus;
    end
   else
     application.messagebox('Para efetuar um Desconto sobre Pedido:' + #13 +
       'Selecione primeiramente a forma de pagamento e então pressione <F12>.',
       'Atenção.', mb_ok + mb_iconinformation);
  end;

 if key = vk_return then
  begin
   if dbcombobox1.Text <> '' then
    begin
     if dbcombobox1.ItemIndex = 1 then     //pagamento em dinheiro
      begin
       label9.Visible := True;
       label10.Visible := True;
       currencyedit3.enabled := True;
       currencyedit3.Visible := True;
       currencyedit4.Visible := True;
       panel7.Enabled := False;

       if currencyedit3.canfocus then
        currencyedit3.SetFocus;
      end
     else
      begin
       FecharPedido(Sender);                       //Finaliza pedido e imprime
      end;
    end
   else
    begin      //nenhuma forma de pagamento selecionada
     if statusbar1.panels[0].Text <> 'Selecione a forma de pagamento e tente novamente...' then
      begin
       msgstr := statusbar1.panels[0].Text;
       statusbar1.panels[0].Text := 'Selecione a forma de pagamento e tente novamente...';
       timer1.Enabled := True;
      end;
    end;
  end;
end;

procedure TVendaFrm.DBComboBox1Enter(Sender: TObject);
begin
 dbcombobox1.color := claqua;
 if Fiscal then
  statusbar1.panels[0].Text := 'Selecione a Forma de Pagamento e tecle <Enter>  /  <F12> Efetuar Desconto'
 else
  statusbar1.panels[0].Text := 'Selecione a Forma de Pagamento e tecle <Enter>  /  <F1> Orçamento  /  <F12> Efetuar Desconto';
end;

procedure TVendaFrm.DBComboBox1Exit(Sender: TObject);
begin
 dbcombobox1.color := clwindow;
end;

procedure TVendaFrm.CurrencyEdit3KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 //Imprime Orcamento Não Fiscal
 if key = Vk_F1 then
  if not Fiscal then
   Cotacao_NaoFiscal(True);

 if key = vk_escape then
  begin
   label9.Visible := False;;
   label10.Visible := False;;
   currencyedit3.enabled := False;
   currencyedit3.Visible := False;
   currencyedit4.Visible := False;
   currencyedit3.Clear;
   currencyedit4.Clear;
   if panel8.Visible = True then
    begin
     panel8.Enabled := True;
     if currencyedit6.Canfocus then
      currencyedit6.SetFocus;
    end
   else
    begin
     panel7.Enabled := True;
     if dbcombobox1.canfocus then
       dbcombobox1.SetFocus;
    end;
  end;

 if key = vk_return then
  begin
   if currencyedit3.Value <> 0 then
     if currencyedit3.Value >= currencyedit2.Value then
      begin     // fecha pedido e imprime
       FecharPedido(sender);                       //Finaliza pedido e imprime
      end
     else
      begin
       if statusbar1.panels[0].Text <> 'Valor pago deve ser maior que o valor total do pedido' then
        begin
         msgstr := statusbar1.panels[0].Text;
         statusbar1.panels[0].Text := 'Valor pago deve ser maior que o valor total do pedido';
         timer1.Enabled := True;
        end;
      end;
  end;
end;

procedure TVendaFrm.CurrencyEdit3Change(Sender: TObject);
begin
 if currencyedit3.Value = 0 then
   //no caso do user escrever e deletar tudo, esta linha tira o erro
   currencyedit4.Value := 0
 else
  begin
   if currencyedit3.Value >= currencyedit2.Value then           // testa se quantia>=total
     currencyedit4.Value := currencyedit3.Value -
       currencyedit2.Value  // subtrai os valores p/ dar o troco
   else
     currencyedit4.Value := 0;
  end
end;

procedure TVendaFrm.DBLookupComboBox1KeyDown(Sender: TObject;
 var Key: word; Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = vk_return then
  begin
   if dblookupcombobox1.keyvalue <> null then
    begin
     DBLookupComboBox1.Visible := False;
     Panel1.Enabled := True;
     Label1.Enabled := True;
     Label2.Enabled := True;
     Label3.Enabled := True;
     Label4.Enabled := True;
     Label5.Enabled := True;
     Label6.Enabled := True;
     Label12.Enabled := True;
     label15.enabled := True;
     currencyedit2.Enabled := True;

     desabilita;
    end
   else
    begin
     if statusbar1.panels[0].Text <> 'Selecione o Atendente e tente novamente...' then
      begin
       msgstr := statusbar1.panels[0].Text;
       statusbar1.panels[0].Text := 'Selecione o Atendente e tente novamente...';
       timer1.Enabled := True;
      end;
    end;
  end;
end;

procedure TVendaFrm.CurrencyEdit3Enter(Sender: TObject);
begin
 Tcurrencyedit(Sender).color := claqua;
 if Fiscal then
  statusbar1.panels[0].Text := 'Indique o valor recebido em dinheiro  /  <Enter> Fechar o pedido  /  <Esc> Voltar'
 else
  statusbar1.panels[0].Text := 'Indique o valor recebido em dinheiro  /  <Enter> Fechar o pedido  /  <Esc> Voltar  /  <F1> Orçamento';
end;

procedure TVendaFrm.CurrencyEdit3Exit(Sender: TObject);
begin
 Tcurrencyedit(Sender).color := clwindow;
end;

procedure TVendaFrm.FormShow(Sender: TObject);
begin
 screen.cursor := crDefault;
 //------Maximiza o Form Cobrindo Toda Tela -------
 Top := 0;
 Left := 0;
 Width := Screen.Width;
 Height := Screen.Height;

 dbedit4.Text := '';
 dbedit6.Text := '';

 //------ Leitura do Nome da Loja ------
 label14.Caption := principalfrm.logolabel.Caption;
end;

procedure TVendaFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
 dblookupcombobox1.color := clwindow;
 statusbar1.panels[0].Text := 'Selecione o Atendente e tecle <Enter>  /  <Esc> Sair';
end;

procedure TVendaFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
 dblookupcombobox1.color := clbtnface;
end;

procedure TVendaFrm.CurrencyEdit5Enter(Sender: TObject);
begin
 currencyedit5.color := claqua;
 if ListView1.Items.Count > 0 then
   statusbar1.panels[0].Text :=
     'Indique a Quantidade e tecle <Enter>  /  <0> Excluir produto da lista   /  <Esc> Voltar'
 else
   statusbar1.panels[0].Text := 'Indique a Quantidade e tecle <Enter>  /  <Esc> Voltar'
end;

procedure TVendaFrm.CurrencyEdit5Change(Sender: TObject);
begin
 //------ Calcula Sub-Total ------
 if currencyedit5.Text <> '' then
  begin
   if (QryProduto['Prm_Quant'] <> null) and (QryProduto['Prm_Quant'] <> 0) then
    begin
     if currencyedit5.Value >= QryProduto['Prm_Quant'] then
      begin
       if dbedit6.Text <> QryProduto['Prm_Prc'] then
         //Troca o preço de Venda pelo da Promoção
         dbedit6.Text := QryProduto['Prm_Prc'];
       currencyedit1.value := trunc2decimals(currencyedit5.Value * QryProduto['Prm_Prc'], 2);
      end
     else
      begin
       if dbedit6.Text <> QryProduto['PRECO_VENDA'] then
         //Troca o preço de Promoção pelo de Venda
         dbedit6.Text := QryProduto['PRECO_VENDA'];
       currencyedit1.value := trunc2decimals(currencyedit5.Value * QryProduto['PRECO_VENDA'], 2);
      end;
    end
   else
     currencyedit1.value := trunc2decimals(currencyedit5.Value * QryProduto['PRECO_VENDA'], 2);
  end
 else
  currencyedit1.Value := 0;
end;

procedure TVendaFrm.CurrencyEdit5KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
var
 index, cont, x: integer;
begin
 if key = vk_escape then
   desabilita;

 if key = vk_return then
  begin
   if QryProduto['ENABLE_NUMSERIE'] = 1 then
    begin
     if CurrencyEdit5.Text <> '1' then
      begin
       Application.messagebox('Só Pode ser vendido um Produto com Nº de Série de cada vez.',
         'Atenção', mb_ok + mb_iconinformation);
       CurrencyEdit5.Value := 1;
      end;
    end;

   if currencyedit5.Text <> '' then
    begin
     if currencyedit5.Value = 0 then       //exclui produto da lista de items
      begin
       index := LocalizaItem(Edit1.Text);

       if index = -1 then           //Localiza produto na lista de compras
        begin
         Application.messagebox('Impossível excluir produto: Referência de produto não encontrada na lista de compras...',
           'Atenção', mb_ok + mb_iconinformation);
         currencyedit5.SelectAll;
        end
       else                                                                      //Produto a ser excluido localizado na lista de compras
        begin
         if Application.messagebox('Deseja excluir item da lista de compras?',
           'Atenção', mb_YesNo + mb_iconquestion) = idYes then
          begin
           //--- Exclui Produto da Lista de Compras ---
           currencyedit2.Value := currencyedit2.Value -
             strtofloat(listview1.Items.Item[index].SubItems.Strings[3]);
           statusbar1.panels[0].Text := 'Excluindo produto "' + edit1.Text +
             '" da lista. Aguarde...';
           statusbar1.Refresh;

           //--- atualiza o item caso o nº dele em promoçao for maior que o nº na lista ---
           if Listview1.Items.Item[index].SubItems.Strings[7] = '1' then
            begin
             //conta a quant de item com Nº de serie em Promoção
             cont := 0;
             for x := 0 to Listview1.Items.Count - 1 do
              begin
               if Listview1.Items.Item[x].SubItems.Strings[6] = '1' then
                 if Listview1.Items.Item[x].SubItems.Strings[8] =
                   Listview1.Items.Item[index].SubItems.Strings[8] then
                   cont := cont + 1;
              end;
             //atualizaçao--- cont-1 porque o item que será deletado vem depois desse bloco
             if (cont - 1) < StrToInt(Listview1.Items.Item[index].SubItems.Strings[4]) then
              begin
               for x := 0 to Listview1.Items.Count - 1 do
                begin
                 if Listview1.Items.Item[index].SubItems.Strings[8] =
                   Listview1.Items.Item[x].SubItems.Strings[8] then
                  begin
                   if index <> x then
                     currencyedit2.Value := currencyedit2.Value - QryProduto['PRM_PRC'];
                   QryProdutoM.Locate('NUM_SERIE', edit1.Text, []);
                   QryProduto.Locate('CODIGO', QryProdutoM['COD_PRODUTOS'], []);
                   Listview1.Items.Item[x].SubItems.Strings[2] :=
                     formatcurr('0.00', QryProduto['PRECO_VENDA']);
                   Listview1.Items.Item[x].SubItems.Strings[3] :=
                     formatcurr('0.00', QryProduto['PRECO_VENDA']);
                   Listview1.Items.Item[x].SubItems.Strings[4] := '0';
                   //Quantidade da Promoção
                   Listview1.Items.Item[x].SubItems.Strings[5] := '0';
                   //Preço da Promoção
                   Listview1.Items.Item[x].SubItems.Strings[6] := '0';
                   //Promoção Habilitada

                   if index <> x then
                     CurrencyEdit2.Value := CurrencyEdit2.Value + QryProduto['PRECO_VENDA'];
                  end;
                end;
              end;
            end;
           listview1.Items.Delete(index);
           screen.cursor := crHourGlass;

           if ListView1.Items.Count = 0 then
            begin
             //--- Lista de Compras Vazia, Cancela pedido ---
             currencyedit2.displayformat := ',';
             //Limpa currencyedit
            end;

           desabilita;
          end
        end;
      end
     else                                                                        //Quantidade <> 0 adiciona item a lista
      begin
       if currencyedit1.Value <> 0 then
         AdicionaItem
       else
        begin                                                                    //Sub-Total menor que 0,01
         if statusbar1.panels[0].Text <> 'Informe uma Quantidade válida e tente novamente...' then
          begin
           msgstr := statusbar1.panels[0].Text;
           statusbar1.panels[0].Text := 'Informe uma Quantidade válida e tente novamente...';
           timer1.Enabled := True;
          end;
        end;
      end;
    end
   else                                                                          //Quantidade não preenchida
    begin
     if statusbar1.panels[0].Text <> 'Informe uma Quantidade válida e tente novamente...' then
      begin
       msgstr := statusbar1.panels[0].Text;
       statusbar1.panels[0].Text := 'Informe uma Quantidade válida e tente novamente...';
       timer1.Enabled := True;
      end;
    end
  end;
end;

procedure TVendaFrm.CurrencyEdit5Exit(Sender: TObject);
begin
 currencyedit5.color := clwindow;
end;

procedure TVendaFrm.CurrencyEdit6KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 //Imprime Orcamento Não Fiscal
 if key = Vk_F1 then
  if not Fiscal then
   Cotacao_NaoFiscal(True);

 if key = vk_escape then
  begin
   currencyedit6.Clear;
   panel8.Enabled := False;
   panel8.Visible := False;
   panel7.Enabled := True;

   if dbcombobox1.CanFocus then
     dbcombobox1.SetFocus;
  end;

 if key = vk_return then
  begin
   if currencyedit6.Value > 0 then
    begin
     if currencyedit2.Value > 0 then
      begin
       if dbcombobox1.ItemIndex = 1 then     //caso pagamento em dinheiro
        begin
         label9.Visible := True;
         label10.Visible := True;
         currencyedit3.enabled := True;
         currencyedit3.Visible := True;
         currencyedit4.Visible := True;
         panel8.Enabled := False;
         if currencyedit3.canfocus then
           currencyedit3.SetFocus;
        end
       else
         FecharPedido(sender);                       //Finaliza pedido e imprime
      end
     else
       statusbar1.panels.items[0].Text := 'Valor do DESCONTO deve ser menor que valor TOTAL.';
    end
   else
     statusbar1.panels.items[0].Text := 'Valor do DESCONTO não pode ser igual a 0 (zero).';
  end;
end;

procedure TVendaFrm.CurrencyEdit6Enter(Sender: TObject);
begin
 Tedit(Sender).color := claqua;
 if Fiscal then
  statusbar1.panels[0].Text := 'Indique o "Valor Total" do Desconto  /  <Esc> para Voltar'
 else
  statusbar1.panels[0].Text := 'Indique o "Valor Total" do Desconto  /  <F1> Orçamento  /  <Esc> para Voltar';
end;

procedure TVendaFrm.CurrencyEdit6Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
end;

procedure TVendaFrm.CurrencyEdit6Change(Sender: TObject);
begin
 if currencyedit6.Value <> 0 then
   currencyedit2.Value := PedTotalFlag - currencyedit6.Value
 else
   currencyedit2.Value := PedTotalFlag;
end;

procedure TVendaFrm.Edit1Change(Sender: TObject);
begin
 if groupbox1.Visible = True then
   groupbox1.Visible := False;

 if ListView1.Items.Count > 0 then
  begin
   if edit1.Text = '' then
     statusbar1.panels[0].Text :=
       '<F5> Produto  /  <F6> Cliente  /  <F7> Abastecimento  /  <F8> Cancela Pedido  /  <Enter> Fechar Pedido'
   else
     statusbar1.panels[0].Text := '<F5> Produto  /  <F6> Cliente  /  <F7> Abastecimento  /  <F8> Cancela Pedido'
  end
 else
   statusbar1.panels[0].Text := '<F5> Produto  /  <F6> Cliente  /  <F7> Abastecimento  /  <Esc> Voltar';

 dbedit4.Text := '';
 dbedit6.Text := '';
 currencyedit1.Text := '';
end;

procedure TVendaFrm.CurrencyEdit5KeyPress(Sender: TObject; var Key: char);
begin
 if key = '-' then
   key := #0;
 if key = '.' then                                               //Substitue "." por ","
   key := ',';
end;

procedure TVendaFrm.Timer1Timer(Sender: TObject);
begin
 //------ Timer para controle de msg temporárias no statusbar ------
 timer1.Enabled := False;
 statusbar1.panels[0].Text := msgstr;
end;

procedure TVendaFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TVendaFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([VendaFrm.QryTribEcf, VendaFrm.QryFrentista,
   VendaFrm.QryProduto, VendaFrm.QryProdutoM, VendaFrm.QryCadastro, VendaFrm.QrySintegra_Info]);

 //--- Coloca DbLookUp no primeiro registro ---
 if VarIsNull(Dblookupcombobox1.KeyValue) then
   Dblookupcombobox1.KeyValue := Dblookupcombobox1.ListSource.DataSet.Fields.FieldByName(Dblookupcombobox1.KeyField).AsInteger;
end;

function TVendaFrm.Venda_NotaFiscal: boolean;
begin
{ Application.CreateForm(TSaidaNFfrm, SaidaNFfrm);
 SaidaNFfrm.Carrega_Info_Cliente(CODCLIFlag);
 SaidaNFFrm.Carrega_Info_Pedidos(COD_PEDIDOS);
 SaidaNFfrm.dateedit4.Date:=Now;
 SaidaNFfrm.dateedit5.Date:=Now;
 SaidaNFfrm.Datetimepicker1.Time:=Now;
 SaidaNFfrm.edit13.Text:=inttostr(NumNota);
 SaidaNFfrm.showmodal;
 SaidaNFfrm.free;         }
end;

procedure TVendaFrm.CurrencyEdit3KeyPress(Sender: TObject; var Key: char);
begin
 if key = '-' then
   key := #0;
 if key = '.' then                                               //Substitue "." por ","
   key := ',';
end;

function TVendaFrm.Venda_Bematech_Fi1: boolean;
var
 i: integer;
 Nome, Endereco, Referencia, Bairro, Total: string;
 noError: boolean;
 ArquivoIni: TIniFile;
 Path: string;
begin
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);

 noError := Abre_Cupom_Bematech_Fi1;

 Nome := '';
 Endereco := '';
 Referencia := '';
 Bairro := '';

 if QryCadastro.Locate('CODIGO', CODCLIFlag, []) then
  begin
   nome := Label12.Caption;
   if not VarIsNull(QryCadastro['ENDERECO']) then  Endereco := QryCadastro['ENDERECO'];
   if not VarIsNull(QryCadastro['PONTO_REFERENCIA']) then Referencia := QryCadastro['PONTO_REFERENCIA'];
   if not VarIsNull(QryCadastro['BAIRRO']) then  Bairro := QryCadastro['BAIRRO'];
  end;

 for i := 0 to Listview1.items.Count - 1 do
  begin
   if noError then
    begin
     noError := Vende_Item_Bematech_Fi1(Listview1.Items.Item[i].Caption,
       Listview1.Items.Item[i].SubItems.Strings[1],
       '01',
       Listview1.Items.Item[i].SubItems.Strings[0],
       Listview1.Items.Item[i].SubItems.Strings[2],
       '0',
       7, 4);
    end;
  end;

 if noError then
  begin
   if not varisnull(Currencyedit6.Value) then
    noError := Desconto_Cupom_Bematech_Fi1(floattostr(Currencyedit6.Value * 100),
      df_Tipo_Desconto);
  end;

 total := floattostr(Currencyedit2.Value * 100);
// if Currencyedit3.Visible then
//   total := floattostr(Currencyedit3.Value * 100);

 if noError then
   noError := Totaliza_Cupom_Bematech_Fi1(dbcombobox1.Text, total);

 if noError then
  begin
   noError := Fecha_Cupom_Bematech_Fi1(Nome,
     Endereco,
     Referencia,
     Bairro,
     dblookupcombobox1.Text,
     ArquivoINI.ReadString('ECF',
     'MsgP', 'Siace Sistemas'));
  end;

 Result := noError;
 ArquivoIni.Free;
end;

function TVendaFrm.Venda_Bematech_Fi2: boolean;
var
 i: integer;
 Nome, Endereco, Referencia, Bairro, Total: string;
 noError: boolean;
 ArquivoIni: TIniFile;
 Path: string;
begin
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);

 Nome := '';
 Endereco := '';
 Referencia := '';
 Bairro := '';

 if QryCadastro.Locate('CODIGO', CODCLIFlag, []) then
  begin
   nome := Label12.Caption;
   if not VarIsNull(QryCadastro['ENDERECO']) then  Endereco := QryCadastro['ENDERECO'];
   if not VarIsNull(QryCadastro['PONTO_REFERENCIA']) then Referencia := QryCadastro['PONTO_REFERENCIA'];
   if not VarIsNull(QryCadastro['BAIRRO']) then  Bairro := QryCadastro['BAIRRO'];

   if not varisnull(QryCadastro['CPF_CNPJ']) then
     noError := Abre_Cupom_Bematech_Fi2(QryCadastro['CPF_CNPJ'])
   else
     noError := Abre_Cupom_Bematech_Fi2('');

   sleep(200);
  end
 else
   noError := Abre_Cupom_Bematech_Fi2('');

 for i := 0 to Listview1.items.Count - 1 do
  begin
   if noError then
    begin
     QryTribEcf.Locate('CODECF', Listview1.Items.Item[i].SubItems.Strings[17], []);

     noError := Vende_Item_Bematech_Fi2(Listview1.Items.Item[i].Caption,       //Codigo
       Listview1.Items.Item[i].SubItems.Strings[1],                            //Descricao
       QryTribEcf['NOME'],                                                     //Aliquota
       df_Tipo_Qnt_Fi2,                                                        //Tipo_Qnt
       Listview1.Items.Item[i].SubItems.Strings[0],                            //Qnt
       3,                                                                      //Casas_Decimais
       Listview1.Items.Item[i].SubItems.Strings[2],                            //Valor
       '$',                                                                    //Tipo_Desconto
       '0');                                                                   //Valor_Desconto
     sleep(200);
    end;
  end;

 if noError then
  begin
   total := floattostr(Currencyedit2.Value * 100);
   //if Currencyedit3.Visible then                                             //Retirado pois a impressora precisa de valor em caixa p/ fornecer troco!
   //  total := floattostr(Currencyedit3.Value * 100);   //Venda em Dinheiro

   noError := Fecha_Cupom_Bematech_Fi2(dbcombobox1.Text,                       //Forma_Pgt
     'D',                                                                      //Acre_Desc
     '$',                                                                      //Tipo_Acrec_Desc
     formatcurr('0000', Currencyedit6.Value * 100),                            //Valor_Acrec_Desc
     total,                                                                    //Valor_Pago
     Nome,                                                                     //Nome
     Endereco,                                                                 //Endereco
     Referencia,                                                               //Referencia
     Bairro,                                                                   //Bairro
     dblookupcombobox1.Text,                                                   //Vendedor
     Msg_P);                                                                   //Msg_P
  end;

 Result := noError;
 ArquivoIni.Free;
end;

function TVendaFrm.Venda_Sweda_IFS7000: boolean;
var
 i: integer;
 Nome, Endereco, Bairro, Referencia, Total: string;
 noError: boolean;
 ArquivoIni: TIniFile;
 Path: string;
begin
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);

 Nome := '';
 Endereco := '';
 Referencia := '';
 Bairro := '';

 if QryCadastro.Locate('CODIGO', CODCLIFlag, []) then
  begin
   Nome := Label12.Caption;
   if not VarIsNull(QryCadastro['ENDERECO']) then  Endereco := QryCadastro['ENDERECO'];
   if not VarIsNull(QryCadastro['PONTO_REFERENCIA']) then
     Referencia := QryCadastro['PONTO_REFERENCIA'];
   if not VarIsNull(QryCadastro['BAIRRO']) then  Bairro := QryCadastro['BAIRRO'];
   if not VarIsNull(QryCadastro['CPF_CNPJ']) then
     noError := Abre_Cupom_Sweda_IFS7000(QryCadastro['CPF_CNPJ'])
   else
     noError := Abre_Cupom_Sweda_IFS7000('0');

   sleep(200);
  end
 else
   noError := Abre_Cupom_Sweda_IFS7000('0');

 for i := 0 to Listview1.items.Count - 1 do
  begin
   if noError then
     QryTribEcf.Locate('CODECF', Listview1.Items.Item[i].SubItems.Strings[17], []);

   noError := Vende_Item_Sweda_IFS7000(Listview1.Items.Item[i].Caption,    //Código
     Listview1.Items.Item[i].SubItems.Strings[0],    //Quantidade
     Listview1.Items.Item[i].SubItems.Strings[2],
     //Valor Unitário
     Listview1.Items.Item[i].SubItems.Strings[3],    //Sub-Total
     Listview1.Items.Item[i].SubItems.Strings[1],    //Descrição
     QryTribEcf['NOME']);                            //Aliquota
   sleep(200);
  end;

 if noError then
  begin
   if Panel8.Visible then
    begin
     noError := Desconto_Cupom_SWEDA_IFS7000(floattostr(Currencyedit6.Value * 100));
     sleep(200);
    end;
  end;

 if noError then
  begin
   total := floattostr(Currencyedit2.Value * 100);
//   if Currencyedit3.Visible then
//     total := floattostr(Currencyedit3.Value * 100);

   noError := Totaliza_Cupom_SWEDA_IFS7000((IntToStr(DBComboBox1.ItemIndex)), total);
   sleep(200);
  end;

 if noError then
   noError := Fechar_Cupom_SWEDA_IFS7000(Nome,                   //Cliente
     Endereco,               //Endereço
     Referencia,             //Referencia
     Bairro,                 //Bairro
     DBLookupComboBox1.Text, //Vendedor
     ArquivoINI.ReadString('ECF',
     'MsgP', 'Siace Sistemas') //Mensagem Promocional
     );

 Result := noError;
 ArquivoIni.Free;
end;

//------ Boleto Nao Fiscal (Using RDPrint Unit)------
Function TVendaFrm.Cupom_NaoFiscal(Orcamento: Boolean = False): boolean;
var
 linha, i: integer;
 Traco: string;
begin
 Result := False;

 if dbcombobox1.Text <> '' then
  begin
   if application.messagebox('Imprimir Orçamento ?', 'Atenção', mb_YesNo+mb_iconquestion) = idno then
    exit;
  end
 else
  begin
   application.messagebox('Para efetuar a impressão do Orçamento:' + #13 +
     'Selecione primeiramente a forma de pagamento e então pressione <F1>',
     'Atenção', mb_ok + mb_iconinformation);
   exit;
  end;

 Screen.Cursor := crHourGlass;
 statusbar1.panels[0].text:='Imprimindo Cupom Não Fiscal. Aguarde...';

 //--- Parametros para o CUPOM FISCAL ---
 rdprint1.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
 rdprint1.TamanhoQteColunas     := 56;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
 rdprint1.FonteTamanhoPadrao    := s20cpp; // Fonte Comprimido em 20 cpp
 rdprint1.OpcoesPreview.Preview := false;
 Traco    := '--------------------------------------------------------';

 //--- Cabeçalho do Cupom ----
 with rdprint1 do
  begin
   abrir;
   impc(01, 28, Label14.caption, [Comp12, Negrito]);
   imp (02, 01, traco);
   imp (03, 01, 'Vendedor: ' + copy(DBLookupComboBox1.Text, 0, 17));
   impd(03, 57, datetimetostr(now),[]);

   linha := 4;

   //--- Dados do Cliente ---
   if QryCadastro.Locate('CODigo', CODCLIFlag, []) then
    begin
     imp (linha, 01, traco);
     inc(Linha);
     if not VarIsNull(QryCadastro['NOME_RS']) then
      impf(linha, 01, 'Cliente: ' + copy(QryCadastro['NOME_RS'],0,39),[])
     else
      impf(linha, 01, 'Cliente: ',[]);
     inc(Linha);

     If not VarIsNull(QryCadastro['ENDERECO']) then
      impf(linha, 01, 'End.: '+ copy(QryCadastro['ENDERECO'],0,42),[])
     else
      impf(linha, 01, 'End.: ',[]);
     inc(Linha);

     If not VarIsNull(QryCadastro['PONTO_REFERENCIA']) then
      impf(linha, 01, 'Ref.: '+ copy(QryCadastro['PONTO_REFERENCIA'],0,42),[])
     else
      impf(linha, 01, 'Ref.: ',[]);
     inc(Linha);
     inc(Linha);
    end;

   //--- Titulo dos Itens ---
   imp (linha, 01, traco);
   inc(Linha);
   imp (linha, 01, '[Ref ][Produto       ][ Qnt. ][   Prc.    ][  SubTot.  ]');
   inc(Linha);
   imp (linha, 01, traco);
   inc(Linha);

   for i := 0 to Listview1.items.Count - 1 do
    begin
     with rdprint1 do
      begin
       impf(linha, 01, copy(Listview1.Items.Item[i].Caption,0,5),[]);             //Código
       impf(linha, 07, copy(Listview1.Items.Item[i].SubItems.Strings[1],0,14),[]);//Descrição
       impd(linha, 31, Listview1.Items.Item[i].SubItems.Strings[0],[]);           //Quantidade
       impd(linha, 44, Listview1.Items.Item[i].SubItems.Strings[2],[]);           //Valor Unitário
       impd(linha, 57, Listview1.Items.Item[i].SubItems.Strings[3],[]);           //Sub-Total
      end;
     inc(linha);
    end;

   imp(linha, 01, traco);
   inc(linha);

   if panel8.visible then                   //com desconto
    begin
     impf(linha, 01, 'Sub-Total: R$ ',[]);
     impd(linha, 57, FormatCurr('###,##0.00', Currencyedit2.value + Currencyedit6.value), []);
     inc(linha);

     impf(linha, 01, 'Desconto : R$  ',[]);
     impd(linha, 57, FormatCurr('###,##0.00', Currencyedit6.value),[]);
     inc(linha);
    end;

   impf(linha, 01, 'Total    : R$ ',[]);
   impd(linha, 57, FormatCurr('###,##0.00', Currencyedit2.value),[]);
   inc(linha);

   impf(linha, 01, 'Pagamento: ' + dbcombobox1.text,[]);
   if Currencyedit3.value > 0 then
    impd(linha, 57, FormatCurr('###,##0.00', Currencyedit3.Value),[]);
   inc(linha);

   if Currencyedit4.value > 0 then
    begin
     impf  (linha,01,'Troco    : R$ ',[]);
     impd(linha,57,FormatCurr('###,##0.00', Currencyedit4.value),[]);
     inc(linha);
    end;

   imp(linha,01,traco);
   inc(linha);

   impc(linha, 28, Msg_P, []);
   inc(linha);

   if not Orcamento then
    impc(linha,28,'Controle Interno', [])
   else
    impc(linha,28,'->> ORCAMENTO <<-', [Comp12, Negrito]);
   inc(linha);

   imp(linha,01,' ');
   inc(linha);
   impc(linha,28,'_______________________________________  ____:____:____',[]);
   inc(linha);
   impc(linha,24,'                Assinatura                    Hora',[]);
   inc(linha);

   if Orcamento then
    begin
     impc(linha,28,'Orcamento válido até: ___/___/___', [Comp12, Negrito]);
     inc(linha);
    end;

   imp(linha,01,' ');

   imp(linha,01,'........................................................');
   inc(linha);
//   impc(linha,28,'TKS Software (71) 371-1818',[]);

   linha := linha + 10;
   imp(linha,01,' ');

   fechar;
  end;

 Screen.Cursor := crDefault;
 Result:=true;
end;

//------ Cotação Nao Fiscal (Using RDPrint Unit)------
Function TVendaFrm.Cotacao_NaoFiscal(Orcamento: Boolean = False): boolean;
var
 linha, i: integer;
 Traco: string;
begin
 Result := False;

 Screen.Cursor := crHourGlass;
 if not Orcamento then
  statusbar1.panels[0].text:='Imprimindo Comprovante Não Fiscal. Aguarde...'
 else
  statusbar1.panels[0].text:='Imprimindo Orçamento Não Fiscal. Aguarde...';

 //--- Parametros para o CUPOM FISCAL ---
 rdprint1.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
 rdprint1.TamanhoQteColunas     := 80;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 12)
 rdprint1.FonteTamanhoPadrao    := s12cpp; // Fonte Comprimido em 12 cpp
 rdprint1.OpcoesPreview.Preview := True;
 Traco := '--------------------------------------------------------------------------------';

 //--- Cabeçalho do Cupom ----
 with rdprint1 do
  begin
   abrir;
   impc(01, 40, Label14.caption, [Comp12, Negrito]);
   imp (02, 01, traco);
   imp (03, 01, 'Atendente: ' + copy(DBLookupComboBox1.Text, 0, 17));
   impd(03, 81, datetimetostr(now),[]);

   linha := 4;

   //--- Dados do Cliente ---
   if QryCadastro.Locate('CODIGO', CODCLIFlag, []) then
    begin
     imp (linha, 01, traco);
     inc(Linha);
     if not VarIsNull(QryCadastro['NOME_RS']) then
      impf(linha, 01, 'Cliente:    ' + copy(QryCadastro['NOME_RS'],0,39),[])
     else
      impf(linha, 01, 'Cliente:    ',[]);
     inc(Linha);

     If not VarIsNull(QryCadastro['ENDERECO']) then
      impf(linha, 01, 'Endereco:   '+ copy(QryCadastro['ENDERECO'],0,42),[])
     else
      impf(linha, 01, 'Endereco:   ',[]);
     inc(Linha);

     If not VarIsNull(QryCadastro['PONTO_REFERENCIA']) then
      impf(linha, 01, 'Referencia: '+ copy(QryCadastro['PONTO_REFERENCIA'],0,42),[])
     else
      impf(linha, 01, 'Referencia: ',[]);
     inc(Linha);
    end;

   //--- Titulo dos Itens ---
   imp (linha, 01, traco);
   inc(Linha);
   imp (linha, 01, '[Referencia   ][Produto                ][   Qnt.   ][   Preco    ][  SubTotal  ]');
   inc(Linha);
   imp (linha, 01, traco);
   inc(Linha);

   for i := 0 to Listview1.items.Count - 1 do
    begin
     with rdprint1 do
      begin
       impf(linha, 01, copy(Listview1.Items.Item[i].Caption,0,13),[]);             //Código
       impf(linha, 16, copy(Listview1.Items.Item[i].SubItems.Strings[1], 0, 25),[]);//Descrição
       impd(linha, 53, Listview1.Items.Item[i].SubItems.Strings[0],[]);           //Quantidade
       impd(linha, 67, Listview1.Items.Item[i].SubItems.Strings[2],[]);           //Valor Unitário
       impd(linha, 81, Listview1.Items.Item[i].SubItems.Strings[3],[]);           //Sub-Total
      end;
     inc(linha);
    end;

   imp(linha, 01, traco);
   inc(linha);

   if panel8.visible then                   //com desconto
    begin
     impd(linha, 53, 'Sub-Total: R$',[]);
     impd(linha, 81, FormatCurr('###,##0.00', Currencyedit2.value + Currencyedit6.value), []);
     inc(linha);

     impd(linha, 53, 'Desconto: R$',[]);
     impd(linha, 81, FormatCurr('###,##0.00', Currencyedit6.value),[]);
     inc(linha);
    end;

   impd(linha, 53, 'Total: R$',[]);
   impd(linha, 81, FormatCurr('###,##0.00', Currencyedit2.value),[]);
   inc(linha);

   impd(linha, 50, 'Pagamento:',[]);
   impf(linha, 51, dbcombobox1.text,[]);
   if Currencyedit3.value > 0 then
    impd(linha, 81, FormatCurr('###,##0.00', Currencyedit3.Value),[]);
   inc(linha);

   if Currencyedit4.value > 0 then
    begin
     impd(linha,53,'Troco: R$',[]);
     impd(linha,81,FormatCurr('###,##0.00', Currencyedit4.value),[]);
     inc(linha);
    end;

   imp(linha,01,traco);
   inc(linha);

   impc(linha, 40, Msg_P, []);
   inc(linha);

   if not Orcamento then
    impc(linha,40,'-> COMPROVANTE NAO FISCAL <-', [])
   else
    impc(linha,40,'-> ORCAMENTO <-', [Comp12, Negrito]);
   inc(linha);

   imp(linha,01,' ');
   inc(linha);
   impd(linha,80,'_______________________________________  ____:____:____',[]);
   inc(linha);
   impd(linha,81,'                Assinatura                    Hora',[]);
   inc(linha);

   if Orcamento then
    begin
     impd(linha,81,'Orcamento válido até: ___/___/___', [Negrito]);
     inc(linha);
    end;

   imp(linha,01,' ');

   imp(linha,01,traco);
   inc(linha);

   if not VarIsNull(QrySintegra_Info['NOME_CONTRIBUINTE']) then
    begin
     impf(linha, 01, QrySintegra_Info['NOME_CONTRIBUINTE'], [Negrito]);
     inc(linha);
    end;

   if not VarIsNull(QrySintegra_Info['LOGRADOURO']) then
    if not VarIsNull(QrySintegra_Info['NRO']) then
     begin
      impf(linha, 01, QrySintegra_Info['LOGRADOURO'] + ' - ' + QrySintegra_Info.FieldByName('NRO').AsString, []);
      inc(linha);
     end;

   if not VarIsNull(QrySintegra_Info['COMPLEMENTO']) then
    if not VarIsNull(QrySintegra_Info['BAIRRO']) then
     begin
      impf(linha, 01, QrySintegra_Info['COMPLEMENTO'] + ' - ' + QrySintegra_Info['BAIRRO'], []);
      inc(linha);
     end;

   if not VarIsNull(QrySintegra_Info['MUNICIPIO']) then
    if not VarIsNull(QrySintegra_Info['UF']) then
     begin
      impf(linha, 01, QrySintegra_Info['MUNICIPIO'] + ' - ' + QrySintegra_Info['UF'], []);
      inc(linha);
     end;

   if not VarIsNull(QrySintegra_Info['CEP']) then
    begin
     impf(linha, 01, 'Cep: ' + QrySintegra_Info['CEP'], []);
     inc(linha);
    end;

   if not VarIsNull(QrySintegra_Info['TELEFONE']) then
    begin
     impf(linha, 01, 'Fone: ' + QrySintegra_Info['TELEFONE'], []);
     inc(linha);
    end;

   if not VarIsNull(QrySintegra_Info['FAX']) then
    begin
     impf(linha, 01, 'Fax: ' + QrySintegra_Info['FAX'], []);
     inc(linha);
    end;

   linha := linha + 10;
   imp(linha,01,' ');

   rdprint1.TamanhoQteLinhas := linha;
   fechar;
  end;

 Screen.Cursor := crDefault;
 Result:=true;
end;


procedure TVendaFrm.CancelaltimoCupom1Click(Sender: TObject);
begin
 PrincipalFrm.CancelaltimoCupom1Click(self);
end;

procedure TVendaFrm.LeituraX1Click(Sender: TObject);
begin
 PrincipalFrm.LeituraX1Click(self);
end;

procedure TVendaFrm.Label15Click(Sender: TObject);
begin
 //------ Procura de Clientes ------
 msgstr := statusbar1.panels[0].Text;
 statusbar1.panels[0].Text := 'Abrindo tela de consulta de clientes...';
 application.createform(tVendaClienteListFrm, VendaClienteListFrm);
 statusbar1.panels[0].Text := '';
 VendaClienteListFrm.showmodal;
 VendaClienteListFrm.Free;
 statusbar1.panels[0].Text := msgstr;
end;

procedure TVendaFrm.Label15MouseEnter(Sender: TObject);
begin
 if TLabel(sender).Enabled then
  begin
   TLabel(sender).Font.Color := clblue;
   TLabel(sender).Font.Style := [fsBold, fsUnderline];
  end;
end;

procedure TVendaFrm.Label15MouseLeave(Sender: TObject);
begin
 if TLabel(sender).Enabled then
  begin
   TLabel(sender).Font.Color := clWindowText;
   TLabel(sender).Font.Style := [];
  end; 
end;

procedure TVendaFrm.Label1Click(Sender: TObject);
begin
 //------ Procura de Produtos ------
 msgstr := statusbar1.panels[0].Text;
 statusbar1.panels[0].Text := 'Abrindo tela de consulta de produtos...';
 application.createform(tVendaProdutoListFrm, VendaProdutoListFrm);
 statusbar1.panels[0].Text := '';
 VendaProdutoListFrm.showmodal;
 VendaProdutoListFrm.Free;
 statusbar1.panels[0].Text := msgstr;
end;

procedure TVendaFrm.Button1Click(Sender: TObject);
begin
 currencyedit3.SetFocus;
end;

end.
