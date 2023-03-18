unit PagDevDinheiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, SUIButton,
  RXCtrls, sUIEdit, SUIDlg, FMTBcd, DB, SqlExpr, RxToolEdit, RxCurrEdit;

type
  TFormPagDevDinheiro = class(TForm)
    suiButton1: TsuiButton;
    SPC_MOV_DIARIO: TSQLStoredProc;
    suiButton2: TsuiButton;
    Panel1: TPanel;
    CurrencyEdit1: TCurrencyEdit;
    RxLabel1: TRxLabel;
    MSG: TsuiMessageDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    SitDC : String;
  public
    { Public declarations }
  end;

var
  FormPagDevDinheiro: TFormPagDevDinheiro;
  TD:TTransactionDesc;

implementation

uses Principal, ModulodeDados, PagDevolucaoPedidos;

{$R *.dfm}

procedure TFormPagDevDinheiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormPagDevDinheiro:=nil;
end;

procedure TFormPagDevDinheiro.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormPagDevDinheiro.FormShow(Sender: TObject);
begin
CurrencyEdit1.Text:= FormPagDevolucaoPedidos.SDS_PagamentosVALOR.Text;
if FormPagDevolucaoPedidos.SDS_PagamentosTIPO.Value = 'D' then
begin
SitDC:= 'Devolução de Item do Pedido Nº'+' '+FormPagDevolucaoPedidos.SDS_PagamentosCODIGO_P.AsString;
end else
if FormPagDevolucaoPedidos.SDS_PagamentosTIPO.Value = 'C' then
begin
SitDC:= 'Cancelamento do Pedido Nº'+' '+FormPagDevolucaoPedidos.SDS_PagamentosCODIGO_P.AsString;
end;
end;

procedure TFormPagDevDinheiro.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormPagDevDinheiro.suiButton1Click(Sender: TObject);
begin
TRY
          SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          SPC_MOV_DIARIO.Params[2].AsString:= SitDC;
          SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          SPC_MOV_DIARIO.Params[5].Value:= 0;
          SPC_MOV_DIARIO.Params[6].Value:= FormPagDevolucaoPedidos.SDS_PagamentosVALOR.AsCurrency;
          SPC_MOV_DIARIO.Params[7].Value:= null;
          SPC_MOV_DIARIO.Params[8].Value:= null;
          SPC_MOV_DIARIO.Params[9].Value:= null;
          SPC_MOV_DIARIO.Params[10].Value:= 'PAG';

          SPC_MOV_DIARIO.ExecProc;

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
       MSG.Text:= 'Erro na Confirmação do Pagamento!!!';
       MSG.ShowModal;
end;
end;

procedure TFormPagDevDinheiro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
