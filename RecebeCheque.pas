unit RecebeCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, SUIDBCtrls, Grids,
  DBGrids, RXCtrls, SUIButton, FMTBcd, DB, SqlExpr, SUIDlg,
  IBCustomDataSet, IBQuery, sPanel, sDBNavigator, Buttons, sBitBtn,
  acDBGrid, Mask, RxToolEdit, RxCurrEdit, sLabel;

type
  TFormRecebeCheque = class(TForm)
    Panel5: TPanel;
    BTBaixaParcial: TsBitBtn;
    Panel3: TPanel;
    RxLabel4: TRxLabel;
    DBGrid1: TDBGrid;
    suiDBNavigator1: TsDBNavigator;
    myLabel3d1: TsLabelFX;
    Panel1: TPanel;
    Label4: TLabel;
    suiButton1: TsBitBtn;
    SPC_BaixarCheque: TSQLStoredProc;
    SPC_MovimentoBancario: TSQLStoredProc;
    qrcaixa_mov: TIBQuery;
    CurrencyEdit1: TCurrencyEdit;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTBaixaParcialClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecebeCheque: TFormRecebeCheque;
  Var X: Currency;

implementation

uses ModulodeDadosBaixas, Acesso, ConfBaixaCheque, Principal,
  ModulodeDados;

{$R *.dfm}

procedure TFormRecebeCheque.FormShow(Sender: TObject);
begin
DMB.SDS_BaixarCheque.Active:= False;
DMB.SDS_BaixarCheque.Active:= True;

DM.SDS_Conta_Bancaria.Active:= False;
DM.SDS_Conta_Bancaria.Active:= True;

IF DMB.SDS_BaixarCheque.RecordCount = 0 THEN
BEGIN
BTBaixaParcial.Enabled:= FALSE;
suiButton1.Enabled:= FALSE;
DBGRID1.Enabled:= FALSE;
end;
{DMB.SDS_BaixarCheque.First;
X:= X + DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
DMB.SDS_BaixarCheque.Next;
CurrencyEdit1.Value := X;
While not DMB.SDS_BaixarCheque.Eof do
begin
X:= X + DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
DMB.SDS_BaixarCheque.Next;
//Label1.Caption:= FormatFloat('R$: ##,##0.00',X);
CurrencyEdit1.Value := X;
end;
DMB.SDS_BaixarCheque.First;
DBGrid1.SetFocus; }

        
end;

procedure TFormRecebeCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormRecebeCheque:=nil;
end;

procedure TFormRecebeCheque.BTBaixaParcialClick(Sender: TObject);
begin
IF DMB.SDS_BaixarCheque.RecordCount = 0 THEN
BEGIN
BTBaixaParcial.Enabled:= FALSE;
DBGRID1.Enabled:= FALSE;
ShowMessage('Não ha dados a baixar!!');
END ELSE
BEGIN
Try
if FormConfBaixaCheque=nil   then
    begin
     FormConfBaixaCheque:=TFormConfBaixaCheque.Create(self);
      FormConfBaixaCheque.ShowModal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;
END;

procedure TFormRecebeCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormRecebeCheque.DBGrid1DblClick(Sender: TObject);
begin
if (BTBaixaParcial.Enabled = True)then
begin
BTBaixaParcialClick(Sender);
end;
end;

procedure TFormRecebeCheque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormRecebeCheque.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label1.Caption ='S'then
begin

    if (Key = VK_DELETE) then
    begin
    if Application.MESSAGEBOX('Confirma Exclusão do Cheque?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      DMB.SDS_BaixarCheque.Delete;
      DMB.SDS_BaixarCheque.ApplyUpdates(0);
    end;
    end;
end;
end;

procedure TFormRecebeCheque.suiButton1Click(Sender: TObject);
begin
IF DMB.SDS_BaixarCheque.RecordCount = 0 THEN
BEGIN
suiButton1.Enabled:= FALSE;
DBGRID1.Enabled:= FALSE;
ShowMessage('Não ha dados a baixar!!');
end else
    if Application.MESSAGEBOX('Confirma a Baixa do Cheque para Caixa?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
       { SPC_MovimentoBancario.Params[1].AsDate:= DATE;
        SPC_MovimentoBancario.Params[2].AsString:= 'Transf. do Cheque Nº - '+ DMB.SDS_BaixarChequeN_CHEQUE.TEXT + ' para caixa';
        SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
        SPC_MovimentoBancario.Params[4].AsString:= 'C';
        SPC_MovimentoBancario.Params[5].Value:= DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
        SPC_MovimentoBancario.Params[6].Value:= 0;
        SPC_MovimentoBancario.Params[7].Value:= NULL;
        SPC_MovimentoBancario.Params[8].Value:= null;
        SPC_MovimentoBancario.Params[9].Value:= null;
        SPC_MovimentoBancario.Params[10].Value:= 'AVU';
        SPC_MovimentoBancario.Execproc;   }

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
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
                    qrcaixa_mov.parambyname('valor').asfloat := DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 16; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Transf. do Cheque Nº - '+ DMB.SDS_BaixarChequeN_CHEQUE.TEXT + ' para caixa';
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'AVU';
                  //  qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                  //  qrcaixa_mov.parambyname('CODIGO_CC').VALUE:= NULL;
                  //  qrcaixa_mov.parambyname('NUMERO_CC').VALUE:= null;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
        // fim lancto no caixa


                  SPC_BaixarCheque.Params[0].AsInteger:= DMB.SDS_BaixarChequeCODIGO.Value;
                  SPC_BaixarCheque.Params[2].AsString:= FormPrincipal.UserLogado;
                  SPC_BaixarCheque.Params[3].Value:= Date;
                  SPC_BaixarCheque.Params[4].value:= null;
                  SPC_BaixarCheque.Params[5].Value:= null;
                  SPC_BaixarCheque.Execproc;

          DMB.SDS_BaixarCheque.Active:= False;
          DMB.SDS_BaixarCheque.Active:= True;

          DMB.SDS_BaixarCheque.First;
           x:=0;
          X := X + DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
          DMB.SDS_BaixarCheque.Next;
          //FormRecebeCheque.Label1.Caption:= FormatFloat('R$: ##,##0.00',X);
          FormRecebeCheque.CurrencyEdit1.Value := X;
          While not DMB.SDS_BaixarCheque.Eof do
          begin
          X := X + DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
          DMB.SDS_BaixarCheque.Next;
          //FormRecebeCheque.Label1.Caption:= FormatFloat('R$: ##,##0.00',X);
          FormRecebeCheque.CurrencyEdit1.Value := X;
          end;
          DMB.SDS_BaixarCheque.First;
    end;
end;

procedure TFormRecebeCheque.Timer1Timer(Sender: TObject);
begin
          DMB.SDS_BaixarCheque.Active:= False;
          DMB.SDS_BaixarCheque.Active:= True;
          x:= 0;
          DMB.SDS_BaixarCheque.First;
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
          Timer1.Enabled := False;
end;

end.
