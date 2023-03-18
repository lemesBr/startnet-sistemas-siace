unit CaixaRegistradora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  StdCtrls,  Mask,
  Grids, DBGrids,  DB, DBClient, SimpleDS, DBCtrls,
  RXDBCtrl, FMTBcd, Provider, SqlExpr, Buttons, acDBGrid,
  sSpeedButton, sDBEdit, sPanel, sDBNavigator, sMaskEdit, sCustomComboEdit,
  sTooledit, sDBDateEdit, sBitBtn,  TaskDialog, RXCtrls, Data.DBXFirebird;

type
  TFormCaixaRegistradora = class(TForm)
    Panel1: TsPanel;
    suiButton2: TsBitBtn;
    Panel3: TsPanel;
    Panel4: TsPanel;
    Panel5: TsPanel;
    RxLabel1: TRxLabel;
    SDS_PedidosA: TSimpleDataSet;
    SDS_PedidosA_itens: TSimpleDataSet;
    DTS_PedidosA: TDataSource;
    DTS_ItensPA: TDataSource;
    SDS_PedidosA_itensCODIGO: TIntegerField;
    SDS_PedidosA_itensCODIGO_ID: TIntegerField;
    SDS_PedidosA_itensCODIGO_PRODUTO: TStringField;
    SDS_PedidosA_itensDESCRICAO_PRODUTO: TStringField;
    SDS_PedidosA_itensPRECO_UNITARIO: TFMTBCDField;
    SDS_PedidosA_itensQUANTIDADE: TFMTBCDField;
    SDS_PedidosA_itensPRECO_TOTAL: TFMTBCDField;
    Panel6: TsPanel;
    suiDBEdit1: TsDBEdit;
    suiDBEdit2: TsDBEdit;
    suiDBEdit4: TsDBEdit;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    SDS_Cheques: TSimpleDataSet;
    DTS_Cheques: TDataSource;
    SDS_ChequesCODIGO: TIntegerField;
    SDS_ChequesCODIGO_COMPRA: TIntegerField;
    SDS_ChequesBANCO: TStringField;
    SDS_ChequesAGENCIA: TStringField;
    SDS_ChequesCONTA_CORRENTE: TStringField;
    SDS_ChequesCONTA_DESDE: TDateField;
    SDS_ChequesTITULAR: TStringField;
    SDS_ChequesTIPO_CHEQUE: TStringField;
    SDS_ChequesN_CHEQUE: TStringField;
    SDS_ChequesQNT: TStringField;
    SDS_ChequesVALOR_CHEQUE: TFMTBCDField;
    SDS_ChequesCLIENTE: TStringField;
    SDS_ChequesRETORNARDO: TStringField;
    SDS_ChequesRETORNADO_PAGO: TStringField;
    SDS_ChequesMOTIVO_RETORNO: TStringField;
    SDS_ChequesDATA_CADASTRO: TDateField;
    SDS_ChequesDATA_DEPOSITO: TDateField;
    SDS_ChequesDATA_RETORNO: TDateField;
    SDS_ChequesDATA_BAIXA: TDateField;
    SDS_ChequesUSUARIO_CADASTRO: TStringField;
    SDS_ChequesUSUARIO_BAIXA: TStringField;
    SDS_ChequesCOMPENSADO: TStringField;
    SDS_ChequesCODIGO_CC: TIntegerField;
    SDS_ChequesNUMERO_CC: TStringField;
    SDS_PedidosACODIGO: TIntegerField;
    SDS_PedidosAVALOR_ITENS: TFMTBCDField;
    SDS_PedidosAVALOR_DESCONTO: TFMTBCDField;
    SDS_PedidosAVALOR_TOTAL: TFMTBCDField;
    SDS_PedidosAVALOR_COMISSAO: TFMTBCDField;
    SDS_PedidosAUSUARIO: TStringField;
    SDS_PedidosADATA_PEDIDO: TDateField;
    SDS_PedidosADATA_ENTREGA: TDateField;
    SDS_PedidosACODIGO_CLIENTE: TIntegerField;
    SDS_PedidosANOME_CLIENTE: TStringField;
    SDS_PedidosAPAGAMENTO: TStringField;
    Panel8: TsPanel;
    DBDateEdit1: TsDBDateEdit;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    suiButton1: TsSpeedButton;
    suiButton3: TsSpeedButton;
    suiButton4: TsSpeedButton;
    SDS_PedidosASTATUS: TStringField;
    Panel9: TsPanel;
    suiDBGrid1: TsDBGrid;
    SDS_PedidosA_itensDESCONTO: TFMTBCDField;
    SDS_PedidosA_itensENC_FINANCEIRO: TFMTBCDField;
    SDS_PedidosAENC_FINANCEIRO: TFMTBCDField;
    SDS_PedidosATP: TStringField;
    SDS_PedidosAOBSERVACOES: TStringField;
    DBEdit1: TsDBEdit;
    Panel2: TsPanel;
    suiDBGrid2: TsDBGrid;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    Bevel1: TBevel;
    suiDBNavigator1: TsDBNavigator;
    SDS_ChequesNUMERO: TIntegerField;
    SDS_PedidosA_itensCOMISSAO: TFMTBCDField;
    SDS_PedidosA_itensDEV: TStringField;
    SDS_PedidosA_itensQNT_DEV: TFMTBCDField;
    SDS_PedidosA_itensVAL_DEV: TFMTBCDField;
    SDS_ChequesCOD_EMPRESA: TIntegerField;
    SDS_ChequesCOD_CLIENTE: TIntegerField;
    SDS_ChequesCOD_BARRAS_CHEQUE: TStringField;
    QRY_MOV_DIARIO: TSQLQuery;
    QRY_MOV_DIARIOCODIGO: TIntegerField;
    QRY_MOV_DIARIODATA: TDateField;
    QRY_MOV_DIARIOHISTORICO: TStringField;
    QRY_MOV_DIARIOUSUARIO: TStringField;
    QRY_MOV_DIARIOTIPO: TStringField;
    QRY_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField;
    QRY_MOV_DIARIOVALOR_SAIDA: TFMTBCDField;
    QRY_MOV_DIARIOCODIGO_CC: TIntegerField;
    QRY_MOV_DIARIONUMERO_CC: TStringField;
    QRY_MOV_DIARIOCODIGO_VENDA: TIntegerField;
    DSP_MOV_DIARIO: TDataSetProvider;
    CDS_MOV_DIARIO: TClientDataSet;
    CDS_MOV_DIARIOCODIGO: TIntegerField;
    CDS_MOV_DIARIODATA: TDateField;
    CDS_MOV_DIARIOHISTORICO: TStringField;
    CDS_MOV_DIARIOUSUARIO: TStringField;
    CDS_MOV_DIARIOTIPO: TStringField;
    CDS_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField;
    CDS_MOV_DIARIOVALOR_SAIDA: TFMTBCDField;
    CDS_MOV_DIARIOCODIGO_CC: TIntegerField;
    CDS_MOV_DIARIONUMERO_CC: TStringField;
    CDS_MOV_DIARIOCODIGO_VENDA: TIntegerField;
    DTS_MOV_DIARIO: TDataSource;
    suiButton5: TsSpeedButton;
    SDS_PedidosAVALOR_AVISTA: TFMTBCDField;
    SDS_PedidosAVALOR_PRAZO: TFMTBCDField;
    SDS_PedidosASITUACAO: TStringField;
    SDS_PedidosAUSUARIO_ENTREGA: TStringField;
    SDS_PedidosACOD_VENDEDOR: TIntegerField;
    SDS_PedidosACOD_PAGTO: TIntegerField;
    SDS_PedidosAN_CUPOM: TStringField;
    SDS_PedidosAN_ECF: TStringField;
    SDS_PedidosACOD_EMPRESA: TIntegerField;
    SDS_PedidosAHORA: TTimeField;
    SDS_PedidosAVALOR_ACRESCIMOS: TFMTBCDField;
    SDS_PedidosACOD_ORCAMENTO: TIntegerField;
    SDS_PedidosACOD_PEDIDO: TIntegerField;
    SDS_PedidosACOD_OS: TSmallintField;
    SDS_PedidosANUM_NOTA: TIntegerField;
    SDS_PedidosASERIE_NOTA: TStringField;
    SDS_PedidosAENDERECO: TStringField;
    SDS_PedidosACPF_CNPJ: TStringField;
    SDS_PedidosARG_IE: TStringField;
    SDS_PedidosAFONE: TStringField;
    SDS_PedidosACIDADE: TStringField;
    SDS_PedidosABAIRRO: TStringField;
    SDS_PedidosAN_PARTIDA: TStringField;
    SDS_PedidosAPROPRIEDADE: TStringField;
    SDS_PedidosAQUANT_VENDIDA: TFMTBCDField;
    SDS_PedidosASALDO_VENDIDO: TFMTBCDField;
    SDS_PedidosAMED_VETERINARIO: TStringField;
    SDS_PedidosADATA_VACINA: TDateField;
    SDS_PedidosAUF: TStringField;
    SDS_PedidosACOD_IBGE: TStringField;
    SDS_PedidosACEP: TStringField;
    SDS_PedidosANUMERO: TStringField;
    SDS_PedidosATIPO: TStringField;
    SDS_PedidosAVALOR_PAGO: TFMTBCDField;
    SDS_PedidosAVALOR_TROCO: TFMTBCDField;
    SDS_PedidosAENTREGADOR: TStringField;
    SDS_PedidosATIPO_PEDIDO: TStringField;
    SDS_PedidosAFECHADO: TStringField;
    SDS_PedidosAMESA: TStringField;
    SDS_PedidosAREFERENCIA: TStringField;
    SDS_PedidosACELULAR: TStringField;
    SDS_PedidosAPROD_RURAL: TStringField;
    SDS_PedidosAIE_PRODUTOR: TStringField;
    SDS_PedidosAVLR_PIS: TFMTBCDField;
    SDS_PedidosAVLR_COFINS: TFMTBCDField;
    SDS_PedidosAKM: TIntegerField;
    SDS_PedidosACHAVE_FP: TStringField;
    SDS_PedidosACHAVE_FP_CANCEL: TStringField;
    SDS_PedidosACUPON_CANCELADO: TStringField;
    SDS_PedidosACRZ: TIntegerField;
    SDS_PedidosACHEK_BOX: TStringField;
    SDS_PedidosAANO: TIntegerField;
    SDS_PedidosAMODELO_NF: TStringField;
    SDS_PedidosACFOP_NF: TStringField;
    SDS_PedidosA_itensITEN: TIntegerField;
    SDS_PedidosA_itensCODIGO_PROD: TIntegerField;
    SDS_PedidosA_itensUNIDADE: TStringField;
    SDS_PedidosA_itensSIT_TRIBUTARIA: TStringField;
    SDS_PedidosA_itensVENDEDOR: TIntegerField;
    SDS_PedidosA_itensFRACAO: TIntegerField;
    SDS_PedidosA_itensCOD_NCM: TStringField;
    SDS_PedidosA_itensPROD_SERV: TStringField;
    SDS_PedidosA_itensPERC_ISS: TFMTBCDField;
    SDS_PedidosA_itensBASE_ISS: TFMTBCDField;
    SDS_PedidosA_itensVL_ISS: TFMTBCDField;
    SDS_PedidosA_itensPERC_ICM: TFMTBCDField;
    SDS_PedidosA_itensBASE_ICMS: TFMTBCDField;
    SDS_PedidosA_itensVL_ICM: TFMTBCDField;
    SDS_PedidosA_itensPERC_IPI: TFMTBCDField;
    SDS_PedidosA_itensBASE_IPI: TFMTBCDField;
    SDS_PedidosA_itensVL_IPI: TFMTBCDField;
    SDS_PedidosA_itensPERC_COFINS: TFMTBCDField;
    SDS_PedidosA_itensBASE_COFINS: TFMTBCDField;
    SDS_PedidosA_itensVL_COFINS: TFMTBCDField;
    SDS_PedidosA_itensPERC_ICMS_SUBST: TFMTBCDField;
    SDS_PedidosA_itensBASE_ICMS_SUBST: TFMTBCDField;
    SDS_PedidosA_itensVL_ICMS_SUBST: TFMTBCDField;
    SDS_PedidosA_itensPERC_PIS: TFMTBCDField;
    SDS_PedidosA_itensBASE_PIS: TFMTBCDField;
    SDS_PedidosA_itensVL_PIS: TFMTBCDField;
    SDS_PedidosA_itensIMPRIME: TStringField;
    SDS_PedidosA_itensCOD_EMPRESA: TIntegerField;
    SDS_PedidosA_itensID_BICO: TIntegerField;
    SDS_PedidosA_itensID_TANQUE: TStringField;
    SDS_PedidosA_itensID_BOMBA: TStringField;
    SDS_PedidosA_itensBICO: TStringField;
    Timer1: TTimer;
    SDS_COND_PAGTO: TSimpleDataSet;
    DTS_COND_PAGTO: TDataSource;
    SDS_COND_PAGTOCOD_VENDA: TIntegerField;
    SDS_COND_PAGTOCOD_FORMA: TIntegerField;
    SDS_COND_PAGTOVALOR: TFMTBCDField;
    SDS_COND_PAGTOTIPO: TStringField;
    SDS_COND_PAGTODESC_FORMA: TStringField;
    RxLabel4: TRxLabel;
    sPanel1: TsPanel;
    sDBGrid1: TsDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
//    procedure suiButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixaRegistradora: TFormCaixaRegistradora;
  TD:TTransactionDesc;

implementation

uses Principal, BancoEspecifico, DepositosBanco,
  SaquesBanco, RetornoCheques, BaixaChequesRetornados, 
  RecebeCheque, ModulodeDados,  Z_RotinasGerais,
  boletos, CRCrediario, Vendas;

{$R *.dfm}

procedure TFormCaixaRegistradora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormCaixaRegistradora:=nil;
end;

procedure TFormCaixaRegistradora.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormCaixaRegistradora.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0, SWP_NOMOVE+swp_nosize);

                 SDS_PedidosA.Active:= False;
                 SDS_PedidosA_itens.Active:= False;
                 SDS_COND_PAGTO.Active := False;
                 SDS_PedidosA.Active:= True;
                 SDS_PedidosA_itens.Active:= True;
                 SDS_COND_PAGTO.Active := true;

                if  SDS_PedidosA.RecordCount = 0 then
                begin
                suiButton2.Enabled:= False;
                suiButton1.Enabled:= False;
                suiDBGrid1.Enabled:= False;
                suiDBGrid2.Enabled:= False;
                end else
                begin
                suiButton2.Enabled:= True;
                suiButton1.Enabled:= True;
                suiDBGrid1.Enabled:= True;
                suiDBGrid2.Enabled:= True;
                suiDBGrid1.SetFocus;
                end;

end;

procedure TFormCaixaRegistradora.suiButton2Click(Sender: TObject);
var
  pedido: string;
  dtaux : TDateTime;
  Contador, e : Integer;
begin
formVendas:=TformVendas.Create(self);
formVendas.tag := 1;

PREVENDA := SDS_PedidosACODIGO.Text;

formvendas.Sds_pedidos.Active := FALSE;
formvendas.Sds_pedidos.Active := True;

formvendas.SDS_pedidos_itens.Active := False;
Formvendas.SDS_pedidos_itens.Active := True;

//formprincipal.log(codigo_usuario,'VENDA',venda,'ALTEROU','ALTERAÇÃO DA VENDA Nº '+venda+'Cliente: '+ DM.sds_vendasCODIGO_CLIENTE.Text+' - '+DM.sds_vendasNOME_CLIENTE.text);

formVendas.Sds_pedidos.Insert;
formVendas.Sds_pedidos.EDIT;
formvendas.SPC_Codigo.ExecProc;
N:= (formvendas.SPC_Codigo.ParamByName('ATUAL').AsInteger);
formvendas.sds_pedidosCODIGO.Text :=IntTostr(N);
formvendas.N_venda.Text          := IntToStr(N);
formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime  := Sds_pedidosADATA_PEDIDO.AsDateTime;
formvendas.Sds_pedidosDATA_ENTREGA.AsDateTime := Sds_pedidosADATA_ENTREGA.AsDateTime;
formvendas.Sds_pedidosVALOR_ITENS.Text       := Sds_pedidosAVALOR_ITENS.Text;
formvendas.Sds_pedidosVALOR_DESCONTO.Text    := Sds_pedidosAVALOR_DESCONTO.Text;
formvendas.Sds_pedidosVALOR_TOTAL.Text       := Sds_pedidosAVALOR_TOTAL.Text;
formvendas.Sds_pedidosCODIGO_CLIENTE.Text    := Sds_pedidosACODIGO_CLIENTE.Text;
formvendas.DBComboCliente.Text               := Sds_pedidosACODIGO_CLIENTE.Text;
formvendas.Sds_pedidosNOME_CLIENTE.Text      := Sds_pedidosANOME_CLIENTE.Text;
formvendas.Sds_pedidosENC_FINANCEIRO.Text    := Sds_pedidosAENC_FINANCEIRO.Text;
formvendas.Sds_pedidosCOD_PAGTO.Text         := Sds_pedidosACOD_PAGTO.Text;
formvendas.Sds_pedidosPAGAMENTO.Text         := Sds_pedidosAPAGAMENTO.Text;
formvendas.Sds_pedidosOBSERVACOES.text       := Sds_pedidosAOBSERVACOES.text;
formvendas.Sds_pedidosCOD_VENDEDOR.text      := Sds_pedidosACOD_VENDEDOR.text;
formvendas.Sds_pedidosUSUARIO.Text           := Sds_pedidosAUSUARIO.Text;
formvendas.Sds_pedidosCOD_EMPRESA.Text       := Sds_pedidosACOD_EMPRESA.Text;
formvendas.Sds_pedidosENDERECO.Text           := Sds_pedidosAENDERECO.Text;
formvendas.sds_pedidosCIDADE.text             := Sds_pedidosACIDADE.Text;
formvendas.Sds_pedidosBAIRRO.Text             := Sds_pedidosABAIRRO.Text;
formVendas.Sds_pedidosNUMERO.Text             := Sds_pedidosANUMERO.Text;
formvendas.Sds_pedidosFONE.Text               := Sds_pedidosAFONE.Text;
formvendas.Sds_pedidosSTATUS.Text             := Sds_pedidosASTATUS.Text;
formvendas.Sds_pedidosTP.text                 := Sds_pedidosATP.Text;
formVendas.Sds_pedidosN_CUPOM.Text            := Sds_pedidosAN_CUPOM.Text;
formvendas.Sds_pedidosN_ECF.text              := Sds_pedidosAN_ECF.Text;
formvendas.Sds_pedidosCOD_ORCAMENTO.text      := Sds_pedidosACOD_ORCAMENTO.Text;
formvendas.Sds_pedidosCOD_OS.Text             := Sds_pedidosACOD_OS.Text;
formvendas.Sds_pedidosNUM_NOTA.text           := Sds_pedidosANUM_NOTA.Text;
formvendas.Sds_pedidosSERIE_NOTA.Text         := Sds_pedidosASERIE_NOTA.Text;
formvendas.Sds_pedidosCPF_CNPJ.Text           := Sds_pedidosACPF_CNPJ.text;
formvendas.Sds_pedidosRG_IE.text              := Sds_pedidosARG_IE.Text;
formvendas.Sds_pedidosN_PARTIDA.Text          := Sds_pedidosAN_PARTIDA.Text;
formvendas.Sds_pedidosPROPRIEDADE.Text        := Sds_pedidosAPROPRIEDADE.Text;
formvendas.Sds_pedidosQUANT_VENDIDA.Text      := Sds_pedidosAQUANT_VENDIDA.Text;
formvendas.Sds_pedidosSALDO_VENDIDO.Text      := Sds_pedidosASALDO_VENDIDO.Text;
formvendas.Sds_pedidosMED_VETERINARIO.Text    := Sds_pedidosAMED_VETERINARIO.Text;
formvendas.Sds_pedidosDATA_VACINA.Text        := Sds_pedidosADATA_VACINA.Text;
formvendas.Sds_pedidosVALOR_AVISTA.Text       := Sds_pedidosAVALOR_AVISTA.Text;
formVendas.Sds_pedidosVALOR_PRAZO.Text        := Sds_pedidosAVALOR_PRAZO.Text;
formVendas.Sds_pedidosUF.Text                 := Sds_pedidosAUF.Text;
formVendas.Sds_pedidosCEP.Text                := Sds_pedidosACEP.Text;
formVendas.Sds_pedidosCOD_IBGE.Text           := Sds_pedidosACOD_IBGE.Text;
formVendas.Sds_pedidosVALOR_PAGO.Text         := Sds_pedidosAVALOR_PAGO.Text;
formVendas.Sds_pedidosVALOR_TROCO.Text        := Sds_pedidosAVALOR_TROCO.Text;
formVendas.Sds_pedidosTIPO.Text               := Sds_pedidosATIPO.Text;
formVendas.Sds_pedidosREFERENCIA.Text         := Sds_pedidosAREFERENCIA.Text;
formVendas.sds_pedidoscelular.text            := Sds_pedidosACELULAR.Text;
formVendas.Sds_pedidosprod_rural.text         := Sds_pedidosAPROD_RURAL.Text;
formVendas.Sds_pedidosie_produtor.text        := Sds_pedidosAIE_PRODUTOR.Text;
formVendas.Sds_pedidoskm.text                 := Sds_pedidosAKM.Text;
formvendas.Sds_pedidos.Post;

Sds_pedidosA_itens.First;
Contador := Sds_pedidosA_itens.RecordCount;
For E:=1 to Contador do
 begin
formvendas.Sds_pedidos_itens.Insert;
formvendas.Sds_pedidos_itens.Edit;
//SPC_COD_ITENS.ExecProc;
//N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
formvendas.Sds_pedidos_itensCODIGO.AsString           := '1'; //IntTostr(N);
formvendas.Sds_pedidos_itensCODIGO_ID.Text            := formvendas.sds_pedidosCODIGO.Text;
formvendas.Sds_pedidos_itensCODIGO_PROD.Text          := Sds_pedidosA_itensCODIGO_PROD.Text;
formvendas.Sds_pedidos_itensCODIGO_PRODUTO.Text       := Sds_pedidosA_itensCODIGO_PRODUTO.Text;
formvendas.Sds_pedidos_itensDESCRICAO_PRODUTO.Text    := Sds_pedidosA_itensDESCRICAO_PRODUTO.Text;
formvendas.Sds_pedidos_itensDESCONTO.TEXT             := Sds_pedidosA_itensDESCONTO.Text;
formvendas.Sds_pedidos_itensQUANTIDADE.AsFloat           := Sds_pedidosA_itensQUANTIDADE.AsFloat;
formvendas.Sds_pedidos_itensPRECO_UNITARIO.AsFloat    := Sds_pedidosA_itensPRECO_UNITARIO.AsFloat;
formvendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat          := Sds_pedidosA_itensPRECO_TOTAL.AsFloat;
formvendas.Sds_pedidos_itensVENDEDOR.Text             := Sds_pedidosA_itensVENDEDOR.Text;
formvendas.Sds_pedidos_itensUNIDADE.Text              := Sds_pedidosA_itensUNIDADE.Text;
formvendas.Sds_pedidos_itensSIT_TRIBUTARIA.Text       := Sds_pedidosA_itensSIT_TRIBUTARIA.Text;
formvendas.Sds_pedidos_itensENC_FINANCEIRO.TEXT       := Sds_pedidosA_itensENC_FINANCEIRO.Text;
formvendas.Sds_pedidos_itensFRACAO.text               := Sds_pedidosA_itensFRACAO.Text;
formvendas.Sds_pedidos_itensCOD_NCM.Text              := Sds_pedidosA_itensCOD_NCM.Text;
formvendas.Sds_pedidos_itensPROD_SERV.Text            := Sds_pedidosA_itensPROD_SERV.TEXT;
formvendas.Sds_pedidos_itensITEN.Text                 := Sds_pedidosA_itensITEN.Text;
formvendas.sds_pedidos_itensCODIGO_BICO.Text          := Sds_pedidosA_itensID_BICO.TEXT;
formvendas.sds_pedidos_itensPROD_SERV.Text            := Sds_pedidosA_itensPROD_SERV.TEXT;
formvendas.sds_pedidos_itensPERC_ISS.Text             := Sds_pedidosA_itensPERC_ISS.TEXT;
formvendas.sds_pedidos_itensBASE_ISS.Text             := Sds_pedidosA_itensBASE_ISS.TEXT;
formvendas.sds_pedidos_itensVL_ISS.Text               := Sds_pedidosA_itensVL_ISS.TEXT;
formvendas.sds_pedidos_itensPERC_ICM.Text             := Sds_pedidosA_itensPERC_ICM.TEXT;
formvendas.sds_pedidos_itensBASE_ICMS.Text            := Sds_pedidosA_itensBASE_ICMS.TEXT;
formvendas.sds_pedidos_itensVL_ICM.Text               := Sds_pedidosA_itensVL_ICM.TEXT;
formvendas.sds_pedidos_itensPERC_IPI.Text             := Sds_pedidosA_itensPERC_IPI.TEXT;
formvendas.sds_pedidos_itensBASE_IPI.Text             := Sds_pedidosA_itensBASE_IPI.TEXT;
formvendas.sds_pedidos_itensVL_IPI.Text               := Sds_pedidosA_itensVL_IPI.TEXT;
formvendas.sds_pedidos_itensPERC_COFINS.Text          := Sds_pedidosA_itensPERC_COFINS.TEXT;
formvendas.sds_pedidos_itensVL_COFINS.Text            := Sds_pedidosA_itensVL_COFINS.TEXT;
formvendas.sds_pedidos_itensPERC_ICMS_SUBST.Text      := Sds_pedidosA_itensPERC_ICMS_SUBST.TEXT;
formvendas.sds_pedidos_itensBASE_ICMS_SUBST.Text      := Sds_pedidosA_itensBASE_ICMS_SUBST.TEXT;
formvendas.sds_pedidos_itensVL_ICMS_SUBST.Text        := Sds_pedidosA_itensVL_ICMS_SUBST.TEXT;
formvendas.sds_pedidos_itensPERC_PIS.Text             := Sds_pedidosA_itensPERC_PIS.TEXT;
formvendas.sds_pedidos_itensBASE_PIS.Text             := Sds_pedidosA_itensBASE_PIS.TEXT;
formvendas.sds_pedidos_itensVL_PIS.Text               := Sds_pedidosA_itensVL_PIS.TEXT;
//formvendas.sds_pedidos_itensCOD_EMPRESA.Text          := Sds_pedidosA_itensCOD_EMPRESA.TEXT;
//formvendas.sds_pedidos_itensimprime.Text          := Sds_pedidosA_itensIMPRIME.TEXT;
formvendas.sds_pedidos_itensBOMBA.Text              := Sds_pedidosA_itensID_BOMBA.Text;
Formvendas.sds_pedidos_itensTANQUE.Text             := Sds_pedidosA_itensID_TANQUE.Text;

Sds_pedidosA_itens.Next;
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

      //formvendas.DBComboClienteExit(Sender);

      formvendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
      formvendas.sds_pedidos_itens.Edit;
      formVendas.ComboEdit1.Visible := True;
      formVendas.ComboEdit1.SetFocus;
      formVendas.CheckBox4.Checked := True;

        if concluiu = True then
        begin
         SDS_PedidosA.Refresh;
         SDS_PedidosA_itens.Refresh;
        end;
    //  btnfaturar.Visible := False;



{if SDS_PedidosATP.Value = 'A' THEN
BEGIN
            pedido := SDS_PedidosACODIGO.Text;
            
             // EXLCUI MOV. DO CAIXA
            CDS_MOV_DIARIO.Active := False;
            QRY_MOV_DIARIO.CLOSE;
            QRY_MOV_DIARIO.SQL.Clear;
            QRY_MOV_DIARIO.SQL.add('select * from MOVIMENTO_DIARIO where codigo_venda ='+(pedido));
            QRY_MOV_DIARIO.Open;
            CDS_MOV_DIARIO.Active := true;
             begin
            with CDS_MOV_DIARIO do
            while CDS_MOV_DIARIO.RecordCount > 0 do
            CDS_MOV_DIARIO.Delete;
            CDS_MOV_DIARIO.ApplyUpdates(0);
            end;
            
     FormCaixaDinheiro:=TFormCaixaDinheiro.Create(self);
     FormCaixaDinheiro.ShowModal;
     FormCaixaRegistradora.SDS_PedidosA.refresh;

                if  SDS_PedidosA.RecordCount = 0 then
                begin
                suiButton2.Enabled:= False;
                suiButton1.Enabled:= False;
                suiDBGrid1.Enabled:= False;
                suiDBGrid2.Enabled:= False;
                end else
                begin
                suiButton2.Enabled:= True;
                suiButton1.Enabled:= True;
                suiDBGrid1.Enabled:= True;
                suiDBGrid2.Enabled:= True;
                suiDBGrid1.SetFocus;
                end;


end else
if SDS_PedidosATP.Value = 'F' THEN
BEGIN  pedido := SDS_PedidosACODIGO.Text;

             // EXLCUI MOV. DO CAIXA
            CDS_MOV_DIARIO.Active := False;
            QRY_MOV_DIARIO.CLOSE;
            QRY_MOV_DIARIO.SQL.Clear;
            QRY_MOV_DIARIO.SQL.add('select * from MOVIMENTO_DIARIO where codigo_venda ='+(pedido));
            QRY_MOV_DIARIO.Open;
            CDS_MOV_DIARIO.Active := true;
             begin
            with CDS_MOV_DIARIO do
            while CDS_MOV_DIARIO.RecordCount > 0 do
            CDS_MOV_DIARIO.Delete;
            CDS_MOV_DIARIO.ApplyUpdates(0);
            end;

     FormCaixaFinanceira:=TFormCaixaFinanceira.Create(self);
     FormCaixaFinanceira.ShowModal;

     FormCaixaRegistradora.SDS_PedidosA.refresh;

                if  SDS_PedidosA.RecordCount = 0 then
                begin
                suiButton2.Enabled:= False;
                suiButton1.Enabled:= False;
                suiDBGrid1.Enabled:= False;
                suiDBGrid2.Enabled:= False;
                end else
                begin
                suiButton2.Enabled:= True;
                suiButton1.Enabled:= True;
                suiDBGrid1.Enabled:= True;
                suiDBGrid2.Enabled:= True;
                suiDBGrid1.SetFocus;
                end;
end else
if SDS_PedidosATP.Value = 'C' THEN
BEGIN
            pedido := SDS_PedidosACODIGO.Text;

             // EXLCUI MOV. DO CAIXA
            CDS_MOV_DIARIO.Active := False;
            QRY_MOV_DIARIO.CLOSE;
            QRY_MOV_DIARIO.SQL.Clear;
            QRY_MOV_DIARIO.SQL.add('select * from MOVIMENTO_DIARIO where codigo_venda ='+(pedido));
            QRY_MOV_DIARIO.Open;
            CDS_MOV_DIARIO.Active := true;
             begin
            with CDS_MOV_DIARIO do
            while CDS_MOV_DIARIO.RecordCount > 0 do
            CDS_MOV_DIARIO.Delete;
            CDS_MOV_DIARIO.ApplyUpdates(0);
            end;


     FormCaixaCrediario:=TFormCaixaCrediario.Create(self);
     FormCaixaCrediario.ShowModal;

     FormCaixaRegistradora.SDS_PedidosA.refresh;
     
                if  SDS_PedidosA.RecordCount = 0 then
                begin
                suiButton2.Enabled:= False;
                suiButton1.Enabled:= False;
                suiDBGrid1.Enabled:= False;
                suiDBGrid2.Enabled:= False;
                end else
                begin
                suiButton2.Enabled:= True;
                suiButton1.Enabled:= True;
                suiDBGrid1.Enabled:= True;
                suiDBGrid2.Enabled:= True;
                suiDBGrid1.SetFocus;
                end;
end else
if SDS_PedidosATP.Value = 'H' THEN
BEGIN
     FormCaixaCheque:=TFormCaixaCheque.Create(self);
     FormCaixaCheque.ShowModal;

     FormCaixaRegistradora.SDS_PedidosA.refresh;

                if  SDS_PedidosA.RecordCount = 0 then
                begin
                suiButton2.Enabled:= False;
                suiButton1.Enabled:= False;
                suiDBGrid1.Enabled:= False;
                suiDBGrid2.Enabled:= False;
                end else
                begin
                suiButton2.Enabled:= True;
                suiButton1.Enabled:= True;
                suiDBGrid1.Enabled:= True;
                suiDBGrid2.Enabled:= True;
                suiDBGrid1.SetFocus;
                end;
end;   }
end;


procedure TFormCaixaRegistradora.suiButton1Click(Sender: TObject);
begin
Try
     SDS_PedidosA.Edit;
     Panel8.Enabled:= True;
     SuiButton1.Enabled:= False;
     SuiButton2.Enabled:= False;
     SuiDBGrid1.Enabled:= False;
     SuiDBGrid2.Enabled:= False;
     SuiButton3.Enabled:= True;
     SuiButton4.Enabled:= True;
     DBEdit1.Color:= clWhite;
     DBDateEdit1.SetFocus;
   Except
    ShowMessage('ERRO AO GRAVAR A PRÉ-VENDA');
   end;   
end;

procedure TFormCaixaRegistradora.DBDateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCaixaRegistradora.DBDateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCaixaRegistradora.suiButton4Click(Sender: TObject);
begin
Try
     DM.SDS_Bancos.Cancel;
     Panel8.Enabled:= False;
     SuiButton1.Enabled:= True;
     SuiButton2.Enabled:= True;
     SuiDBGrid1.Enabled:= True;
     SuiDBGrid2.Enabled:= True;
     SuiButton3.Enabled:= False;
     SuiButton4.Enabled:= False;
     DBDateEdit1.Color:= $00E8E8E8;
     DBEdit1.Color:= $00E8E8E8;
     SuiButton2.SetFocus;
   Except
     ShowMessage('ERRO AO GRAVAR A PRÉ-VENDA');
   end;
end;

procedure TFormCaixaRegistradora.suiButton3Click(Sender: TObject);
begin
 Try
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
begin
          SDS_PedidosA.Post;
          SDS_PedidosA.ApplyUpdates(0);
          DM.SQLC.Commit(TD);
     Panel8.Enabled:= False;
     SuiButton1.Enabled:= True;
     SuiButton2.Enabled:= True;
     SuiDBGrid1.Enabled:= True;
     SuiDBGrid2.Enabled:= True;
     SuiButton3.Enabled:= False;
     SuiButton4.Enabled:= False;
     DBDateEdit1.Color:= $00E8E8E8;
     DBEdit1.Color:= $00E8E8E8;
     SuiButton2.SetFocus;
      end;
   Except
    ShowMessage('ERRO AO GRAVAR A PRÉ-VENDA');
   end;
end;

procedure TFormCaixaRegistradora.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if  SuiButton3.Enabled = True then
  begin
    ShowMessage('ANTES DE SAIR VOCÊ DEVE GRAVAR OU CANCELAR A PRÉ-VENDA');
    CanClose := False;
  end;
end;

procedure TFormCaixaRegistradora.suiDBGrid1DblClick(Sender: TObject);
begin
if suiButton2.Enabled = True then
begin
suiButton2Click(Sender);
end;
end;

procedure TFormCaixaRegistradora.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

      if (Key=VK_F10) then
      begin
       SUIButton2.click;
      end;

      if (Key=VK_F5) then
      begin
       Sds_pedidosA.Refresh;
      end;

      if (Key=VK_F9) then
      begin
       SUIButton5.click;
      end;
end;

procedure TFormCaixaRegistradora.DBEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCaixaRegistradora.DBEdit1Exit(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCaixaRegistradora.suiButton5Click(Sender: TObject);
begin
IF FormPrincipal.FBaixaCred = 'S' THEN
BEGIN
Try
if FormCRCrediario=nil   then
    begin
     FormCRCrediario:=TFormCRCrediario.Create(self);
      FormCRCrediario.ShowModal;
      end;
    //  ComboEdit1.SetFocus;
      except
   //    ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;

end;

procedure TFormCaixaRegistradora.Timer1Timer(Sender: TObject);
begin
IF NOT (SDS_PedidosA.State in [dsInsert, dsEdit] ) then
begin
SDS_PedidosA.Refresh;
SDS_PedidosA_itens.Refresh;

end;
end;


end.
