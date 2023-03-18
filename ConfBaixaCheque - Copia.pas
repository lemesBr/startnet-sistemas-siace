unit ConfBaixaCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIButton, StdCtrls, Mask, ToolEdit, RXCtrls,
  FMTBcd, DB, SqlExpr, SUIDlg, IBCustomDataSet, IBQuery;

type
  TFormConfBaixaCheque = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Cliente: TComboEdit;
    BTVisualizar: TsuiButton;
    Panel3: TPanel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    SPC_BaixarCheque: TSQLStoredProc;
    MessageConta: TsuiMessageDialog;
    MessageLocConta: TsuiMessageDialog;
    SPC_MovimentoBancario: TSQLStoredProc;
    qrcaixa_mov: TIBQuery;
    procedure suiButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton2Click(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClienteEnter(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure BTVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfBaixaCheque: TFormConfBaixaCheque;

implementation

uses ModulodeDadosBaixas, Acesso, ConsContaBancariapas, Z_RotinasGerais,
  ModulodeDados, RecebeCheque, Principal;

{$R *.dfm}

procedure TFormConfBaixaCheque.suiButton1Click(Sender: TObject);
Var X: Real;
begin
//SAIDA DO CAIXA
{SPC_MovimentoBancario.Params[1].AsDate:= DATE;
SPC_MovimentoBancario.Params[2].AsString:= 'Depósito do Cheque Nº - '+ DMB.SDS_BaixarChequeN_CHEQUE.TEXT + ' Na conta nº '+ RxLabel9.Caption;
SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
SPC_MovimentoBancario.Params[4].AsString:= 'C';
SPC_MovimentoBancario.Params[5].Value:= 0;
SPC_MovimentoBancario.Params[6].Value:= DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
SPC_MovimentoBancario.Params[7].Value:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
SPC_MovimentoBancario.Params[8].Value:= DM.SDS_Conta_BancariaCONTA.AsString;
SPC_MovimentoBancario.Params[9].Value:= null;
SPC_MovimentoBancario.Params[10].Value:= 'CHE';
SPC_MovimentoBancario.Execproc;                }
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, CODIGO_CC, NUMERO_CC)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :CODIGO_CC, :NUMERO_CC)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_SAIDAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 17; // SAIDA DO CAIXA
                    qrcaixa_mov.parambyname('historico').asstring := 'Depósito do Cheque Nº - '+ DMB.SDS_BaixarChequeN_CHEQUE.TEXT + ' Na conta nº '+ RxLabel9.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;;
                    qrcaixa_mov.parambyname('NUMERO_CC').ASSTRING:= DM.SDS_Conta_BancariaCONTA.ASSTRING;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;


// MOVIMENTACAO DA CONTA
{SPC_MovimentoBancario.Params[1].AsDate:= DATE;
SPC_MovimentoBancario.Params[2].AsString:= 'Depósito do Cheque Nº - '+ DMB.SDS_BaixarChequeN_CHEQUE.TEXT + ' Na conta nº '+ RxLabel9.Caption;
SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
SPC_MovimentoBancario.Params[4].AsString:= 'B';
SPC_MovimentoBancario.Params[5].Value:= DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;;
SPC_MovimentoBancario.Params[6].Value:= 0;
SPC_MovimentoBancario.Params[7].Value:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
SPC_MovimentoBancario.Params[8].Value:= DM.SDS_Conta_BancariaCONTA.AsString;
SPC_MovimentoBancario.Params[9].Value:= null;
SPC_MovimentoBancario.Params[10].Value:= 'DEP';
SPC_MovimentoBancario.Execproc;  }

                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, CODIGO_CC, NUMERO_CC)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :CODIGO_CC, :NUMERO_CC)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;;
                    qrcaixa_mov.parambyname('valor').asfloat :=DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 99; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Depósito do Cheque Nº - '+ DMB.SDS_BaixarChequeN_CHEQUE.TEXT + ' Na conta nº '+ RxLabel9.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'DEP';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;


SPC_BaixarCheque.Params[0].AsInteger:= DMB.SDS_BaixarChequeCODIGO.Value;
SPC_BaixarCheque.Params[2].AsString:= FormPrincipal.UserLogado;
SPC_BaixarCheque.Params[3].Value:= Date;
SPC_BaixarCheque.Params[4].AsString:= DM.SDS_Conta_BancariaCODIGO.Text;
SPC_BaixarCheque.Params[5].AsString:= DM.SDS_Conta_BancariaCONTA.Text;
SPC_BaixarCheque.Execproc;

DMB.SDS_BaixarCheque.Active:= False;
DMB.SDS_BaixarCheque.Active:= True;
DMB.SDS_BaixarCheque.First;
x:=0;
X:= X + DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
DMB.SDS_BaixarCheque.Next;
//FormRecebeCheque.Label1.Caption:= FormatFloat('R$: ##,##0.00',X);
FormRecebeCheque.CurrencyEdit1.Value := X;
While not DMB.SDS_BaixarCheque.Eof do
begin
X:= X + DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
DMB.SDS_BaixarCheque.Next;
//FormRecebeCheque.Label1.Caption:= FormatFloat('R$: ##,##0.00',X);
FormRecebeCheque.CurrencyEdit1.Value := X;
end;
DMB.SDS_BaixarCheque.First;

IF DMB.SDS_BaixarCheque.RecordCount = 0 THEN
BEGIN
FormRecebeCheque.BTBaixaParcial.Enabled:= FALSE;
FormRecebeCheque.DBGRID1.Enabled:= FALSE;
end;
Close;
end;

procedure TFormConfBaixaCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConfBaixaCheque:=nil;
end;

procedure TFormConfBaixaCheque.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormConfBaixaCheque.ClienteButtonClick(Sender: TObject);
begin
Try
if FormConsContaBancaria=nil   then
    begin
    FormConsContaBancaria:=TFormConsContaBancaria.Create(self);
      FormConsContaBancaria.ShowModal;
      Cliente.Text:= DM.SDS_Conta_BancariaCONTA.Text;
      end;
    If DM.SDS_Conta_Bancaria.locate('CONTA',Cliente.Text,[])=True then
begin
DM.SDS_Conta_Bancaria.Locate('CONTA',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel6.Caption:= DM.SDS_Conta_BancariaBANCO.Text;
RXLabel7.Caption:= DM.SDS_Conta_BancariaTITULAR.Text;
RXLabel8.Caption:= DM.SDS_Conta_BancariaAGENCIA.Text;
RXLabel9.Caption:= DM.SDS_Conta_BancariaCONTA.Text;
suibutton1.Enabled:= True;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormConfBaixaCheque.FormShow(Sender: TObject);
begin
DM.SDS_Conta_Bancaria.Active:= False;
DM.SDS_Conta_Bancaria.Active:= True;
RxLabel6.Caption:= '';
RxLabel7.Caption:= '';
RxLabel8.Caption:= '';
RxLabel9.Caption:= '';
suiButton1.Enabled:= False;
Cliente.Clear;
Cliente.SetFocus;
end;

procedure TFormConfBaixaCheque.ClienteEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConfBaixaCheque.ClienteExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConfBaixaCheque.BTVisualizarClick(Sender: TObject);
begin
If  Cliente.Text='' then
    Begin
    MessageConta.ShowModal;
    Cliente.SetFocus;
    end else
If DM.SDS_Conta_Bancaria.locate('CONTA',Cliente.Text,[])=True then
begin
DM.SDS_Conta_Bancaria.locate('CONTA',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel6.Caption:= DM.SDS_Conta_BancariaBANCO.Text;
RXLabel7.Caption:= DM.SDS_Conta_BancariaTITULAR.Text;
RXLabel8.Caption:= DM.SDS_Conta_BancariaAGENCIA.Text;
RXLabel9.Caption:= DM.SDS_Conta_BancariaCONTA.Text;
suibutton1.Enabled:= True;
end else
begin
    Cliente.color:= clWhite;
    MessageLocConta.ShowModal;

    if FormConsContaBancaria=nil   then
    begin
    FormConsContaBancaria:=TFormConsContaBancaria.Create(self);
      FormConsContaBancaria.ShowModal;
      Cliente.Text:= DM.SDS_Conta_BancariaCONTA.Text;
      end;
    If DM.SDS_Conta_Bancaria.locate('CONTA',Cliente.Text,[])=True then
begin
DM.SDS_Conta_Bancaria.Locate('CONTA',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel6.Caption:= DM.SDS_Conta_BancariaBANCO.Text;
RXLabel7.Caption:= DM.SDS_Conta_BancariaTITULAR.Text;
RXLabel8.Caption:= DM.SDS_Conta_BancariaAGENCIA.Text;
RXLabel9.Caption:= DM.SDS_Conta_BancariaCONTA.Text;
suibutton1.Enabled:= True;
end;
end;
end;

procedure TFormConfBaixaCheque.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#27 then close;
 If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormConfBaixaCheque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
