unit PagDevCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBClient, SimpleDS, Grids, DBGrids,
  SUIDBCtrls, SUIButton, StdCtrls, Mask, RXCtrls,
  FMTBcd, SqlExpr, Data.DBXFirebird, RxToolEdit, RxCurrEdit;

type
  TFormPagDevcheque = class(TForm)
    SDS_CH_S: TSimpleDataSet;
    DTS_CH_S: TDataSource;
    SDS_CH_SCODIGO: TIntegerField;
    SDS_CH_SCODIGO_COMPRA: TIntegerField;
    SDS_CH_SBANCO: TStringField;
    SDS_CH_SAGENCIA: TStringField;
    SDS_CH_SCONTA_CORRENTE: TStringField;
    SDS_CH_SCONTA_DESDE: TDateField;
    SDS_CH_STITULAR: TStringField;
    SDS_CH_STIPO_CHEQUE: TStringField;
    SDS_CH_SN_CHEQUE: TStringField;
    SDS_CH_SQNT: TStringField;
    SDS_CH_SVALOR_CHEQUE: TFMTBCDField;
    SDS_CH_SCLIENTE: TStringField;
    SDS_CH_SRETORNARDO: TStringField;
    SDS_CH_SRETORNADO_PAGO: TStringField;
    SDS_CH_SMOTIVO_RETORNO: TStringField;
    SDS_CH_SDATA_CADASTRO: TDateField;
    SDS_CH_SDATA_DEPOSITO: TDateField;
    SDS_CH_SDATA_RETORNO: TDateField;
    SDS_CH_SDATA_BAIXA: TDateField;
    SDS_CH_SUSUARIO_CADASTRO: TStringField;
    SDS_CH_SUSUARIO_BAIXA: TStringField;
    SDS_CH_SCOMPENSADO: TStringField;
    SDS_CH_SCODIGO_CC: TIntegerField;
    SDS_CH_SNUMERO_CC: TStringField;
    SDS_CH_B: TSimpleDataSet;
    DTS_CH_B: TDataSource;
    DTS_CH_E: TDataSource;
    Panel1: TPanel;
    RxLabel2: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel4: TPanel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    Panel6: TPanel;
    Panel3: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    suiDBGrid1: TsuiDBGrid;
    Panel5: TPanel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    RxLabel5: TRxLabel;
    Panel9: TPanel;
    suiDBGrid2: TsuiDBGrid;
    Panel10: TPanel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    Panel11: TPanel;
    Panel12: TPanel;
    RxLabel8: TRxLabel;
    Panel13: TPanel;
    suiDBGrid3: TsuiDBGrid;
    Panel14: TPanel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    CurrencyEdit2: TCurrencyEdit;
    SDS_CH_E: TSimpleDataSet;
    SDS_CH_ECODIGO: TIntegerField;
    SDS_CH_ECODIGO_COMPRA: TIntegerField;
    SDS_CH_EBANCO: TStringField;
    SDS_CH_EAGENCIA: TStringField;
    SDS_CH_ECONTA_CORRENTE: TStringField;
    SDS_CH_ECONTA_DESDE: TDateField;
    SDS_CH_ETITULAR: TStringField;
    SDS_CH_ETIPO_CHEQUE: TStringField;
    SDS_CH_EN_CHEQUE: TStringField;
    SDS_CH_EQNT: TStringField;
    SDS_CH_EVALOR_CHEQUE: TFMTBCDField;
    SDS_CH_ECLIENTE: TStringField;
    SDS_CH_ERETORNARDO: TStringField;
    SDS_CH_ERETORNADO_PAGO: TStringField;
    SDS_CH_EMOTIVO_RETORNO: TStringField;
    SDS_CH_EDATA_CADASTRO: TDateField;
    SDS_CH_EDATA_DEPOSITO: TDateField;
    SDS_CH_EDATA_RETORNO: TDateField;
    SDS_CH_EDATA_BAIXA: TDateField;
    SDS_CH_EUSUARIO_CADASTRO: TStringField;
    SDS_CH_EUSUARIO_BAIXA: TStringField;
    SDS_CH_ECOMPENSADO: TStringField;
    SDS_CH_ECODIGO_CC: TIntegerField;
    SDS_CH_ENUMERO_CC: TStringField;
    SDS_CH_BCODIGO: TIntegerField;
    SDS_CH_BCODIGO_COMPRA: TIntegerField;
    SDS_CH_BBANCO: TStringField;
    SDS_CH_BAGENCIA: TStringField;
    SDS_CH_BCONTA_CORRENTE: TStringField;
    SDS_CH_BCONTA_DESDE: TDateField;
    SDS_CH_BTITULAR: TStringField;
    SDS_CH_BTIPO_CHEQUE: TStringField;
    SDS_CH_BN_CHEQUE: TStringField;
    SDS_CH_BQNT: TStringField;
    SDS_CH_BVALOR_CHEQUE: TFMTBCDField;
    SDS_CH_BCLIENTE: TStringField;
    SDS_CH_BRETORNARDO: TStringField;
    SDS_CH_BRETORNADO_PAGO: TStringField;
    SDS_CH_BMOTIVO_RETORNO: TStringField;
    SDS_CH_BDATA_CADASTRO: TDateField;
    SDS_CH_BDATA_DEPOSITO: TDateField;
    SDS_CH_BDATA_RETORNO: TDateField;
    SDS_CH_BDATA_BAIXA: TDateField;
    SDS_CH_BUSUARIO_CADASTRO: TStringField;
    SDS_CH_BUSUARIO_BAIXA: TStringField;
    SDS_CH_BCOMPENSADO: TStringField;
    SDS_CH_BCODIGO_CC: TIntegerField;
    SDS_CH_BNUMERO_CC: TStringField;
    SPC_MovimentoBancario: TSQLStoredProc;
    SPC_Dev_Cheque: TSQLStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  E,X,Y,S: Real;
  public
    { Public declarations }
  end;

var
  FormPagDevcheque: TFormPagDevcheque;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, PagDevolucaoPedidos, Principal;

{$R *.dfm}

procedure TFormPagDevcheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormPagDevcheque:=nil;
end;

procedure TFormPagDevcheque.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormPagDevcheque.suiButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormPagDevcheque.FormShow(Sender: TObject);
begin

SDS_CH_S.Active:= False;
SDS_CH_S.Active:= True;
if SDS_CH_S.RecordCount = 0 then
begin
SDS_CH_S.Active:= False;
RXLabel4.Caption:= 'R$: 0,00';
end else
begin
X:= X + SDS_CH_SVALOR_CHEQUE.AsFloat;
SDS_CH_S.Next;
RXLabel4.Caption:= FormatFloat('R$: ##,##0.00',X);
While not SDS_CH_S.Eof do
begin
X:= X + SDS_CH_SVALOR_CHEQUE.AsFloat;
SDS_CH_S.Next;
RXLabel4.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
end;

SDS_CH_E.Active:= False;
SDS_CH_E.Active:= True;
if SDS_CH_E.RecordCount = 0 then
begin
SDS_CH_E.Active:= False;
RXLabel10.Caption:= 'R$: 0,00';
end else
begin
E:= E + SDS_CH_EVALOR_CHEQUE.AsFloat;
SDS_CH_E.Next;
RXLabel10.Caption:= FormatFloat('R$: ##,##0.00',E);
While not SDS_CH_E.Eof do
begin
E:= E + SDS_CH_EVALOR_CHEQUE.AsFloat;
SDS_CH_E.Next;
RXLabel10.Caption:= FormatFloat('R$: ##,##0.00',E);
end;
end;

SDS_CH_B.Active:= False;
SDS_CH_B.Active:= True;
if SDS_CH_B.RecordCount = 0 then
begin
SDS_CH_B.Active:= False;
RXLabel7.Caption:= 'R$: 0,00';
end else
begin
Y:= Y + SDS_CH_BVALOR_CHEQUE.AsFloat;
SDS_CH_B.Next;
RXLabel7.Caption:= FormatFloat('R$: ##,##0.00',Y);
While not SDS_CH_B.Eof do
begin
Y:= Y + SDS_CH_BVALOR_CHEQUE.AsFloat;
SDS_CH_B.Next;
RXLabel7.Caption:= FormatFloat('R$: ##,##0.00',Y);
end;
end;
S:= (X+Y);
CurrencyEdit1.Text:= FloatToSTr(E);
CurrencyEdit2.Text:= FloatToSTr(S);
end;

procedure TFormPagDevcheque.suiButton2Click(Sender: TObject);
VAR
Contador, I: INTEGER;
begin
if SDS_CH_S.Active = True then
begin
if SDS_CH_S.RecordCount > 0 then
begin
SPC_MovimentoBancario.Params[1].AsDate:= DATE;
SPC_MovimentoBancario.Params[2].AsString:= 'DEV. DE CHEQUE - CANCELAMENTO DA VENDA Nº'+' '+ FormPagDevolucaoPedidos.SDS_PagamentosCODIGO_P.AsString;
SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
SPC_MovimentoBancario.Params[4].AsString:= 'C';
SPC_MovimentoBancario.Params[5].Value:= 0;
SPC_MovimentoBancario.Params[6].Value:= X;
SPC_MovimentoBancario.Params[7].Value:= NULL;
SPC_MovimentoBancario.Params[8].Value:= NULL;
SPC_MovimentoBancario.Params[9].Value:= NULL;
SPC_MovimentoBancario.Params[10].Value:= 'PAG';

SPC_MovimentoBancario.Execproc;

SDS_CH_S.First;
Contador:=SDS_CH_S.RecordCount;
For I:=1 to Contador do
begin
SPC_Dev_Cheque.Params[0].Value:= SDS_CH_SCODIGO.AsInteger;
SPC_Dev_Cheque.Params[1].AsString:= 'D';
SPC_Dev_Cheque.Execproc;
SDS_CH_S.Next;
end;
end;
end;

if SDS_CH_E.Active = True then
begin
if SDS_CH_E.RecordCount > 0 then
begin
SPC_MovimentoBancario.Params[1].AsDate:= DATE;
SPC_MovimentoBancario.Params[2].AsString:= 'PAG. DE CHEQUE - CANCELAMENTO DO PEDIDO Nº'+' '+ FormPagDevolucaoPedidos.SDS_PagamentosCODIGO_P.AsString;
SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
SPC_MovimentoBancario.Params[4].AsString:= 'C';
SPC_MovimentoBancario.Params[5].Value:= 0;
SPC_MovimentoBancario.Params[6].Value:= E;
SPC_MovimentoBancario.Params[7].Value:= NULL;
SPC_MovimentoBancario.Params[8].Value:= NULL;
SPC_MovimentoBancario.Params[9].Value:= NULL;
SPC_MovimentoBancario.Params[10].Value:= 'PAG';
SPC_MovimentoBancario.Execproc;
SDS_CH_E.First;
Contador:=SDS_CH_E.RecordCount;
For I:=1 to Contador do
begin
SPC_Dev_Cheque.Params[0].Value:= SDS_CH_ECODIGO.AsInteger;
SPC_Dev_Cheque.Params[1].AsString:= 'D';
SPC_Dev_Cheque.Execproc;
SDS_CH_E.Next;
end;
end;
end;

if SDS_CH_B.Active = True then
begin
if SDS_CH_B.RecordCount > 0 then
begin
SPC_MovimentoBancario.Params[1].AsDate:= DATE;
SPC_MovimentoBancario.Params[2].AsString:= 'DEV. DE CHEQUE - CANCELAMENTO DO PEDIDO Nº'+' '+ FormPagDevolucaoPedidos.SDS_PagamentosCODIGO_P.AsString;
SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
SPC_MovimentoBancario.Params[4].AsString:= 'B';
SPC_MovimentoBancario.Params[5].Value:= 0;
SPC_MovimentoBancario.Params[6].Value:= SDS_CH_BVALOR_CHEQUE.AsCurrency;
SPC_MovimentoBancario.Params[7].Value:= SDS_CH_BCODIGO_CC.AsString;
SPC_MovimentoBancario.Params[8].Value:= SDS_CH_BNUMERO_CC.AsString;
SPC_MovimentoBancario.Params[9].Value:= NULL;
SPC_MovimentoBancario.Params[10].Value:= 'PAG';
SPC_MovimentoBancario.Execproc;
SDS_CH_B.First;
Contador:=SDS_CH_B.RecordCount;
For I:=1 to Contador do
begin
SPC_Dev_Cheque.Params[0].Value:= SDS_CH_BCODIGO.AsInteger;
SPC_Dev_Cheque.Params[1].AsString:= 'D';
SPC_Dev_Cheque.Execproc;
SDS_CH_B.Next;
end;
end;
end;

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
end;

procedure TFormPagDevcheque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
