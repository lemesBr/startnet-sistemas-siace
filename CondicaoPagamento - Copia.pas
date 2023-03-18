unit CondicaoPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, RXCtrls, SUIDBCtrls, SUIButton,
  Mask, SUIDlg,  DB, DBTables, DBXpress, EditNew;

type
  TFormCondPagamento = class(TForm)
    pnldados: TPanel;
    dbt_codigo: TsuiDBEdit;
    Panel3: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    btnLocalizar: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    RxLabel6: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel2: TRxLabel;
    TP: TDBRadioGroup;
    ST: TDBRadioGroup;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    RxLabel8: TRxLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure TPExit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    Cod:Integer;
  end;

var
  FormCondPagamento: TFormCondPagamento;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, Principal, Z_RotinasGerais, ConsCondPagamento;

{$R *.dfm}

procedure TFormCondPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormCondPagamento:=nil;
end;

procedure TFormCondPagamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormCondPagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

if (BtnLocalizar.Enabled = True)then
begin
   if (Key=VK_F2) then
      begin
      btnLocalizarClick(Sender);
      end;
      end;
end;

procedure TFormCondPagamento.FormShow(Sender: TObject);
begin
DM.SDS_CondPagamento.Active:= False;
DM.SDS_CondPagamento.Active:= True;
IF DM.SDS_CondPagamento.RecordCount = 0 then
Begin
btnEditar.Enabled:= False;
btnCancelar.Enabled:= False;
btnSalvar.Enabled:= False;
btnExcluir.Enabled:= False;
btnLocalizar.Enabled:= False;
end else
begin
btnEditar.Enabled:= True;
btnCancelar.Enabled:= False;
btnSalvar.Enabled:= False;
btnExcluir.Enabled:= True;
btnLocalizar.Enabled:= True;
end;

end;

procedure TFormCondPagamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_CondPagamento.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.ShowModal;
   CanClose := False;
  end;
end;

procedure TFormCondPagamento.btnNovoClick(Sender: TObject);
begin
If FormPrincipal.Label3.Caption <>'S'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End else
begin
Try
   DM.SPC_CondPagamento.ExecProc;
   Cod:= (DM.SPC_CondPagamento.ParamByName('ATUAL').AsInteger);
   DM.SDS_CondPagamento.Insert;
   dbt_codigo.Text:=IntTostr(Cod);
   DM.SDS_CondPagamentoUSUARIO.Text:= FormPrincipal.UserLogado;
   DM.SDS_CondPagamentoDATA.Text:= datetostr(now);
   DM.SDS_CondPagamentoTIPO_PAGAMENTO.Value:= 'A';
   DM.SDS_CondPagamentoSTATUS.Value:= 'S';
   pnldados.Enabled:= True;
   btnEditar.Enabled:= False;
   btnCancelar.Enabled:= True;
   btnSalvar.Enabled:= True;
   btnExcluir.Enabled:= False;
   btnLocalizar.Enabled:= False;
   btnNovo.Enabled:= False;
   DBNavigator.Enabled:= False;
   DBEdit3.Enabled:= False;
   DBEdit3.Text:= '1';
   DBEdit4.Enabled:= False;
   DBEdit4.Text:= '0';
   DBEdit8.Enabled:= False;
   DBEdit8.Text:= '0';
   DBEdit7.Enabled:= False;
   DBEdit7.Text:= '1';
   DBEdit1.Color:= clWhite;
   DBEdit5.Color:= clWhite;
   DBEdit2.Color:= clWhite;
   DBEdit2.Enabled:= False;
   TP.Enabled:= TRUE;
   TP.Value := 'A';
   ST.Value := 'S';
   DBEdit1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormCondPagamento.btnCancelarClick(Sender: TObject);
begin
Try
 DM.SDS_CondPagamento.Cancel;
 DBNavigator.Enabled:= True;
 PnlDados.Enabled:= False;
 btnCancelar.Enabled:= False;
 btnSalvar.Enabled:= False;
 BtnNovo.Enabled:= True;
 TP.Enabled:= TRUE;
 DBEdit1.Color:= $00E8E8E8;
 DBEdit3.Color:= $00E8E8E8;
 DBEdit4.Color:= $00E8E8E8;
 DBEdit5.Color:= $00E8E8E8;
 DBEdit8.Color:= $00E8E8E8;
 DBEdit3.Enabled:= TRUE;
 DBEdit4.Enabled:= TRUE;
 DBEdit8.Enabled:= TRUE;
 DBEdit7.Enabled:= TRUE;

  DBEdit2.Color:= $00E8E8E8;
 DBEdit2.Enabled:= TRUE;
if DM.SDS_CondPagamento.RecordCount = 0 then
Begin
btnEditar.Enabled:= False;
btnExcluir.Enabled:= False;
btnLocalizar.Enabled:= False;
end else
begin
btnEditar.Enabled:= True;
btnExcluir.Enabled:= True;
btnLocalizar.Enabled:= True;
end;
Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
end;
end;

procedure TFormCondPagamento.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption <>'S'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End else
begin
Try
   DM.SDS_CondPagamento.Edit;
   pnldados.Enabled:= True;
   btnEditar.Enabled:= False;
   btnCancelar.Enabled:= True;
   btnSalvar.Enabled:= True;
   btnExcluir.Enabled:= False;
   btnLocalizar.Enabled:= False;
   btnNovo.Enabled:= False;
   DBNavigator.Enabled:= False;
   TP.Enabled:= False;
   DBEdit1.Color:= clWhite;
   DBEdit5.Color:= clWhite;
   if TP.Value = 'A' then
begin
   DBEdit3.Enabled:= False;
   DBEdit3.Color:= $00E8E8E8;
   DBEdit4.Enabled:= False;
   DBEdit4.Color:= $00E8E8E8;
   DBEdit8.Enabled:= False;
   DBEdit8.Color:= $00E8E8E8;
   DBEdit7.Enabled:= False;
end else
begin
   DBEdit3.Enabled:= TRUE;
   DBEdit3.Color:= clWhite;
   DBEdit4.Enabled:= TRUE;
   DBEdit4.Color:= clWhite;
   DBEdit8.Enabled:= TRUE;
   DBEdit8.Color:= clWhite;
   DBEdit7.Enabled:= TRUE;
end;
   DBEdit2.Color:= clWhite;
   DBEdit2.Enabled:= TRUE;
   DBEdit1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormCondPagamento.btnSalvarClick(Sender: TObject);
begin
if DBEdit1.Text = '' then
begin
MSGInformacao.Text:= 'Informe a Descrição da Condição de Pagamento';
MSGInformacao.ShowModal;
DBEdit1.SetFocus;
end else
if DBEdit3.Text = '' then
begin
MSGInformacao.Text:= 'Informe o Número de Parcelas!';
MSGInformacao.ShowModal;
DBEdit3.SetFocus;
end else
if DBEdit4.Text = '' then
begin
MSGInformacao.Text:= 'Informe a Variação de Dias Para Pagamento Das Parcelas!';
MSGInformacao.ShowModal;
DBEdit4.SetFocus;
end else
if DBEdit8.Text = '' then
begin
MSGInformacao.Text:= 'Informe o Número De Dias Para Pagamento Da Primeira Parcela!';
MSGInformacao.ShowModal;
DBEdit8.SetFocus;
end else
if DBEdit5.Text = '' then
begin
MSGInformacao.Text:= 'Informe o % de Juros ao Dia!';
MSGInformacao.ShowModal;
DBEdit5.SetFocus;
end else
begin
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
 Try
      begin

          DM.SDS_CondPagamento.Post;
          DM.SDS_CondPagamento.ApplyUpdates(0);
          DM.SQLC.Commit(TD);
 DBNavigator.Enabled:= True;
 PnlDados.Enabled:= False;
 TP.Enabled:= TRUE;
 DBEdit1.Color:= $00E8E8E8;
 DBEdit3.Color:= $00E8E8E8;
 DBEdit4.Color:= $00E8E8E8;
 DBEdit5.Color:= $00E8E8E8;
 DBEdit8.Color:= $00E8E8E8;
 DBEdit3.Enabled:= TRUE;
 DBEdit4.Enabled:= TRUE;
 DBEdit8.Enabled:= TRUE;
 DBEdit7.Enabled:= TRUE;
 btnEditar.Enabled:= True;
 btnCancelar.Enabled:= False;
 btnSalvar.Enabled:= False;
 btnExcluir.Enabled:= True;
 btnLocalizar.Enabled:= True;
 BtnNovo.Enabled:= True;

  DBEdit2.Color:= $00E8E8E8;
 DBEdit2.Enabled:= TRUE;
 end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormCondPagamento.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption <>'S'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End else
begin
if MsgConfirmacao.ShowModal = mryes then
begin
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
Try
 Begin
    DM.SDS_CondPagamento.Delete;
    DM.SDS_CondPagamento.ApplyUpdates(0);
    DM.SQLC.Commit(TD);
    DBNavigator.Enabled:= True;
    PnlDados.Enabled:= False;
    btnCancelar.Enabled:= False;
    btnSalvar.Enabled:= False;
    BtnNovo.Enabled:= True;
    TP.Enabled:= TRUE;
    DBEdit1.Color:= $00E8E8E8;
    DBEdit3.Color:= $00E8E8E8;
    DBEdit4.Color:= $00E8E8E8;
    DBEdit5.Color:= $00E8E8E8;
    DBEdit8.Color:= $00E8E8E8;
     DBEdit3.Enabled:= TRUE;
     DBEdit4.Enabled:= TRUE;
     DBEdit8.Enabled:= TRUE;
     DBEdit7.Enabled:= TRUE;

     DBEdit2.Color:= $00E8E8E8;
     DBEdit2.Enabled:= TRUE;
    
 end;
 if DM.SDS_CondPagamento.RecordCount = 0 then
 begin
btnEditar.Enabled:= False;
btnExcluir.Enabled:= False;
btnLocalizar.Enabled:= False;
end else
begin
btnEditar.Enabled:= True;
btnExcluir.Enabled:= True;
btnLocalizar.Enabled:= True;
end;
       Except
      DM.SQLC.Rollback(TD);
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
end;

procedure TFormCondPagamento.DBEdit8Exit(Sender: TObject);
var i, Total, Parcelas, DifDias, DiasPriPar: integer;
Media: variant;
begin
CorSaida(Sender);
if DBEdit3.Text = '' then
begin
MSGInformacao.Text:= 'Informe o Número de Parcelas!';
MSGInformacao.ShowModal;
DBEdit3.SetFocus;
end else
if DBEdit4.Text = '' then
begin
MSGInformacao.Text:= 'Informe a Variação de Dias Para Pagamento Das Parcelas!';
MSGInformacao.ShowModal;
DBEdit4.SetFocus;
end else
if DBEdit8.Text = '' then
begin
MSGInformacao.Text:= 'Informe o Número De Dias Para Pagamento Da Primeira Parcela!';
MSGInformacao.ShowModal;
DBEdit8.SetFocus;
end else
begin
Parcelas:= StrtoInt(DBEdit3.Text);
DifDias:= StrtoInt(DBEdit4.Text);
DiasPriPar:= StrtoInt(DBEdit8.Text);

  i:=1;
  Total:= 0;

  while not (i = (Parcelas + 1 )) do
   begin
     Total:= Total + ((i-1) * DifDias)+ DiasPriPar;
     i:= i + 1;
   end;

   Media := Total/Parcelas;
   DBEdit7.Text := FormatFloat('0', Media);
end;
end;

procedure TFormCondPagamento.DBEdit5Exit(Sender: TObject);
Var
Jdia, MediaDias, JTotal: Real;
begin
CorSaida(Sender);
if DBEdit3.Text = '' then
begin
MSGInformacao.Text:= 'Informe o Número de Parcelas!';
MSGInformacao.ShowModal;
DBEdit3.SetFocus;
end else
if DBEdit4.Text = '' then
begin
MSGInformacao.Text:= 'Faça o Calculo da Média de Dias Para Pagamento das Parcelas Antes de Inserir o Valor dos Juros ao Dia!';
MSGInformacao.ShowModal;
DBEdit5.Clear;
DBEdit3.SetFocus;
end else
if DBEdit5.Text = '' then
begin
MSGInformacao.Text:= 'Informe o % de Juros ao Dia!';
MSGInformacao.ShowModal;
DBEdit5.SetFocus;
end else
Begin
Jdia:= StrToFloat(DBEdit5.Text);
MediaDias:=  StrToFloat(DBEdit7.Text);
JTotal:= (Jdia * MediaDias);
DBEdit6.Text:= FloatToStr(JTotal);
end;
end;

procedure TFormCondPagamento.TPExit(Sender: TObject);
begin
if TP.Value = 'A' then
begin
   DBEdit3.Enabled:= False;
   DBEdit3.Color:= $00E8E8E8;
   DBEdit3.Text:= '1';
   DBEdit4.Enabled:= False;
   DBEdit4.Color:= $00E8E8E8;
   DBEdit4.Text:= '0';
   DBEdit8.Enabled:= False;
   DBEdit8.Color:= $00E8E8E8;
   DBEdit8.Text:= '0';
   DBEdit7.Enabled:= False;
   DBEdit7.Text:= '1';
end else
{if TP.Value = 'F' then
begin
   DBEdit3.Enabled:= False;
   DBEdit3.Color:= $00E8E8E8;
   DBEdit3.Text:= '1';
   DBEdit4.Enabled:= False;
   DBEdit4.Color:= $00E8E8E8;
   DBEdit4.Text:= '0';
   DBEdit8.Enabled:= False;
   DBEdit8.Color:= $00E8E8E8;
   DBEdit8.Text:= '0';
   DBEdit7.Enabled:= False;
   DBEdit7.Text:= '1';
end else  }
begin
   DBEdit3.Enabled:= TRUE;
   DBEdit3.Color:= clWhite;
   DBEdit3.Clear;
   DBEdit4.Enabled:= TRUE;
   DBEdit4.Color:= clWhite;
   DBEdit4.Clear;
   DBEdit8.Enabled:= TRUE;
   DBEdit8.Color:= clWhite;
   DBEdit8.Clear;
   DBEdit7.Enabled:= TRUE;
   DBEdit7.Clear;
end;
end;

procedure TFormCondPagamento.DBEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCondPagamento.DBEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCondPagamento.DBEdit3Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCondPagamento.DBEdit4Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCondPagamento.DBEdit8Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCondPagamento.DBEdit5Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCondPagamento.DBEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCondPagamento.DBEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCondPagamento.DBEdit3Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCondPagamento.DBEdit4Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCondPagamento.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsCondPagamento=nil   then
    begin
    FormConsCondPagamento:=TFormConsCondPagamento.Create(self);
    FormConsCondPagamento.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

end.
