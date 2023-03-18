unit PagDevCrediario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RXDBCtrl, DBCtrls, SUIDBCtrls,
  StdCtrls, Mask,  RXCtrls, SUIButton, Mylabel, DB,
  FMTBcd, SqlExpr, SUIDlg, DBClient, SimpleDS, Data.DBXFirebird, RxToolEdit,
  RxCurrEdit;

type
  TFormPagDevCrediario = class(TForm)
    Panel2: TPanel;
    myLabel3d1: TmyLabel3d;
    Panel4: TPanel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    Bevel1: TBevel;
    Panel1: TPanel;
    RxLabel2: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxLabel1: TRxLabel;
    RxLabel5: TRxLabel;
    DB_CODIGO: TsuiDBEdit;
    suiDBEdit4: TsuiDBEdit;
    db_nome: TsuiDBEdit;
    RxLabel3: TRxLabel;
    DBDateEdit1: TDBDateEdit;
    MSG: TsuiMessageDialog;
    SDS_CREDIARIO: TSimpleDataSet;
    DTS_CREDIARIO: TDataSource;
    SDS_CREDIARIOCODIGO: TIntegerField;
    SDS_CREDIARIOCODIGO_CLIENTE: TIntegerField;
    SDS_CREDIARIODATA_COMPRA: TDateField;
    SDS_CREDIARIODATA_VENCIMENTO: TDateField;
    SDS_CREDIARIODATA_BAIXA: TDateField;
    SDS_CREDIARIOHISTORICO: TStringField;
    SDS_CREDIARIOUSUARIO_VENDA: TStringField;
    SDS_CREDIARIOUSUARIO_BAIXA: TStringField;
    SDS_CREDIARIOSITUACAO: TStringField;
    SDS_CREDIARIOVALOR_COMPRA: TFMTBCDField;
    SDS_CREDIARIOVALOR_JUROS: TFMTBCDField;
    SDS_CREDIARIOVALOR_ACRESCIMO: TFMTBCDField;
    SDS_CREDIARIOVALOR_DESCONTO: TFMTBCDField;
    SDS_CREDIARIOVALOR_PAGAR: TFMTBCDField;
    SDS_CREDIARIOVALOR_PAGO: TFMTBCDField;
    SDS_CREDIARIOVALOR_TOTAL: TFMTBCDField;
    SDS_CREDIARIOCODIGO_COMPRA: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    SitDC: String;
  public
    { Public declarations }
  end;

var
  FormPagDevCrediario: TFormPagDevCrediario;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, PagDevolucaoPedidos, Principal;

{$R *.dfm}

procedure TFormPagDevCrediario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormPagDevCrediario:=nil;
end;

procedure TFormPagDevCrediario.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormPagDevCrediario.suiButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormPagDevCrediario.FormShow(Sender: TObject);
begin
SDS_CREDIARIO.Active:= False;
SDS_CREDIARIO.Active:= True;
CurrencyEdit1.Text:= FormPagDevolucaoPedidos.SDS_PagamentosVALOR.Text;
if FormPagDevolucaoPedidos.SDS_PagamentosTIPO.Value = 'D' then
begin
SitDC:= 'Crédito na Devolução de Item do Pedido Nº'+' '+FormPagDevolucaoPedidos.SDS_PagamentosCODIGO_P.AsString;
end else
if FormPagDevolucaoPedidos.SDS_PagamentosTIPO.Value = 'C' then
begin
SitDC:= 'Crédito no Cancelamento do Pedido Nº'+' '+FormPagDevolucaoPedidos.SDS_PagamentosCODIGO_P.AsString;
end;
If DM.SDS_Clientes.locate('CODIGO',FormPagDevolucaoPedidos.SDS_PagamentosCODIGO_C.Value, [loPartialKey,loCaseInsensitive])=True then
begin
suiButton2.Enabled:= True;
end else
begin
suiButton2.Enabled:= False;
end;
end;

procedure TFormPagDevCrediario.suiButton2Click(Sender: TObject);
VAR
vA, vT, vS : Real;
begin
IF SDS_CREDIARIO.Locate('CODIGO_COMPRA',FormPagDevolucaoPedidos.SDS_PagamentosCODIGO_P.Value, [loPartialKey,loCaseInsensitive])=True then
BEGIN
vA:= SDS_CREDIARIOVALOR_DESCONTO.AsCurrency;
vS:= FormPagDevolucaoPedidos.SDS_PagamentosVALOR.AsCurrency;
vT:= (vA + vS);
TRY

          SDS_CREDIARIO.Edit;
          SDS_CREDIARIOVALOR_DESCONTO.AsCurrency:= vT;

          TD.TransactionID := 1;
          TD.IsolationLevel := XILReadCommitted;
          DM.SQLC.StartTransaction(TD);
          SDS_CREDIARIO.Post;
          SDS_CREDIARIO.ApplyUpdates(0);
          DM.SQLC.Commit(TD);


          FormPagDevolucaoPedidos.SDS_Pagamentos.Edit;
          FormPagDevolucaoPedidos.SDS_PagamentosSTATUS.Value:= 'P';

          TD.TransactionID := 1;
          TD.IsolationLevel := XILReadCommitted;
          DM.SQLC.StartTransaction(TD);
          FormPagDevolucaoPedidos.SDS_Pagamentos.Post;
          FormPagDevolucaoPedidos.SDS_Pagamentos.ApplyUpdates(0);
          DM.SQLC.Commit(TD);

FormPagDevolucaoPedidos.SDS_Pagamentos.Active:= False;
FormPagDevolucaoPedidos.SDS_Pagamentos.Active:= True;
if  FormPagDevolucaoPedidos.SDS_Pagamentos.RecordCount = 0 then
begin
FormPagDevolucaoPedidos.suiButton1.Enabled:= False;
FormPagDevolucaoPedidos.SDS_Pagamentos.Active:= False;
end else
begin
FormPagDevolucaoPedidos.suiButton1.Enabled:= True;
FormPagDevolucaoPedidos.SDS_Pagamentos.Active:= True;
end;
         Close;
         Except
       MSG.Text:= 'Erro na Confirmação do Crédito no Crediário !!!';
       MSG.ShowModal;
end;
end;
end;

procedure TFormPagDevCrediario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
