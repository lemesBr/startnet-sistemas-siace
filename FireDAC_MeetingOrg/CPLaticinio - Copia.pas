unit CPLaticinio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, ExtCtrls, RXDBCtrl, DBCtrls,
  SUIButton, DBXpress, StdCtrls, DB, ToolEdit, Mask, RXCtrls,  SUIDlg;

type
  TFormContasPagarLaticinio = class(TForm)
    Pnldados: TPanel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel13: TRxLabel;
    suiDBComboBox1: TsuiDBComboBox;
    suiDBEdit2: TsuiDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    suiDBEdit3: TsuiDBEdit;
    suiDBEdit4: TsuiDBEdit;
    suiDBEdit5: TsuiDBEdit;
    Panel4: TPanel;
    Label1: TLabel;
    ButtonGP: TsuiButton;
    suiDBLookupComboBox1: TsuiDBLookupComboBox;
    DBnota: TRxDBComboEdit;
    FORNECEDOR2: TsuiDBEdit;
    fornecedor1: TsuiDBEdit;
    Panel1: TPanel;
    ButtonNovo: TsuiButton;
    ButtonCancelar: TsuiButton;
    ButtonLC: TsuiButton;
    suiButton6: TsuiButton;
    suiDBNavigator11: TsuiDBNavigator;
    ButtonSP: TsuiButton;
    Panel2: TPanel;
    suiDBNavigator21: TsuiDBNavigator;
    Panel5: TPanel;
    Bevel1: TBevel;
    DBGridCP: TsuiDBGrid;
    MSG_TC: TsuiMessageDialog;
    MessageErroFornecedor: TsuiMessageDialog;
    MessageCanClose: TsuiMessageDialog;
    Exclusao: TsuiMessageDialog;
    PerExcluir: TsuiMessageDialog;
    ErroGravacao: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    PerInserir: TsuiMessageDialog;
    PerEditar: TsuiMessageDialog;
    Procedure AtualizaManutencao;
    Procedure HabilitaNovo;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure FormShow(Sender: TObject);
    procedure suiDBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure ButtonGPClick(Sender: TObject);
    procedure ButtonNovoClick(Sender: TObject);
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonSPClick(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure ButtonLCClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod,Cod1,Contador:Integer;
    Tipo: String;
  end;

var
  FormContasPagarLaticinio: TFormContasPagarLaticinio;
  TD:TTransactionDesc;
  RD:TTransactionDesc;
  
implementation

uses ULaticinio, ModulodeDados, Principal, ConsContasPagar;

{$R *.dfm}

Procedure TFormContasPagarLaticinio.AtualizaManutencao;
begin
suiDBNavigator11.Enabled:= (DM.DTS_ContasPagar.State = dsBrowse);
suiDBNavigator21.Enabled:= (DM.DTS_Contas_Pagar.State = dsBrowse);
//suiButton1.Enabled:= (DM.DTS_Contas_Pagar.State = dsBrowse);
//suiButton2.Enabled:= (DM.DTS_Contas_Pagar.State in [dsInsert, dsEdit]);
//suiButton3.Enabled:= (DM.DTS_Contas_Pagar.State in [dsInsert, dsEdit]);
ButtonNovo.Enabled:= (DM.DTS_ContasPagar.State = dsBrowse);
ButtonCancelar.Enabled:= (DM.DTS_ContasPagar.State in [dsInsert, dsEdit]);
ButtonSP.Enabled:= (DM.DTS_ContasPagar.State in [dsInsert, dsEdit]);
suiButton6.Enabled:= (DM.DTS_ContasPagar.State = dsBrowse);
ButtonLC.Enabled:= (DM.DTS_ContasPagar.State = dsBrowse);
end;

Procedure TFormContasPagarLaticinio.HabilitaNovo;
begin
ButtonNovo.Enabled:=TRUE;
//suiButton1.Enabled:=FALSE;
//suiButton2.Enabled:=FALSE;
//suiButton3.Enabled:=FALSE;
suiButton6.Enabled:=FALSE;
ButtonCancelar.Enabled:=FALSE;
ButtonSP.Enabled:=FALSE;
ButtonLC.Enabled:=FALSE;
ButtonGP.Enabled:=FALSE
end;
procedure TFormContasPagarLaticinio.HabilitaPanel;
begin
Pnldados.Enabled:= True;
end;

procedure TFormContasPagarLaticinio.DesabilitaPanel;
begin
pnldados.Enabled:= False;
end;

procedure TFormContasPagarLaticinio.FormShow(Sender: TObject);
begin
DM.SDS_ContasPagar.Active:= False;
DM.SDS_Contas_Pagar.Active:= False;
DM.SDS_CondPagamento.Active := False;
DM.SDS_ContasPagar.Active:= True;
DM.SDS_Contas_Pagar.Active:= True;
DM.SDS_CondPagamento.Active := true;
//DM.SDS_ContasPagar.Last;
DESABILITAPANEL;
IF DM.SDS_ContasPagar.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
ButtonNovo.SetFocus;

ButtonNovo.Click;

DBnota.Text      := FormLaticinio.SDS_LATICINIOSCodigo.text;
DBDateEdit1.Date := FormLaticinio.SDS_LATICINIOSDATAI.AsDateTime;
DBDateEdit2.Date := FormLaticinio.SDS_LATICINIOSDATAF.AsDateTime;
DM.SDS_ContasPagarVALOR_DOCUMENTO.Value  := FormLaticinio.SDS_LATICINIOSVALOR_TOTAL.Value;
FORNECEDOR2.Text := FormLaticinio.SDS_LATICINIOSNOME_FORNECEDOR.Text;
fornecedor1.text := FormLaticinio.SDS_LATICINIOSCOD_FORNECEDOR.Text;
end;

procedure TFormContasPagarLaticinio.suiDBLookupComboBox1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
suiDBEdit3.Text := DM.SDS_CondPagamentoNUMERO_PAR.AsVariant;
end;

procedure TFormContasPagarLaticinio.suiDBEdit4KeyPress(Sender: TObject; var Key: Char);
 Var
Total,Parcela:Double;
begin
 with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;
      if suiDBEdit4.Text='' then   begin
            ShowMessage('Entre Com o Valor Do Documento!!');
            suiDBEdit4.SetFocus;
            end
            else
suiDBEdit5.Clear;
Total:=suiDBEdit4.Field.AsFloat;
Parcela:=StrToInt(suiDBEdit3.Text);
suiDBEdit5.Text:=FloatToStr(Total/Parcela);
end;
end;

procedure TFormContasPagarLaticinio.ButtonGPClick(Sender: TObject);
Var
I,N1,Cod,D1,M1:Integer;
A,M,D:WORD;

DT: TDateTime;
Days: Extended;
Y: Byte;
dtaux : TDateTime;
Begin
     dtAux := (StrToDate (DBDateEdit1.Text));
     if suidbComboBox1.Text='' then
 begin
  MSG_ERRO.Text:= 'Entre Com o Tipo de Documento!';
  MSG_ERRO.ShowModal;
     suidbComboBox1.SetFocus;
     end
     else
     if DBnota.Text='' then
 begin
   MSG_ERRO.Text:= 'Entre Com o Número da Nota!';
   MSG_ERRO.ShowModal;
   dbnota.SetFocus;
     end
     else
 {    if suidbComboBox2.Text='' then
 begin
    MSG_ERRO.Text:= 'Entre Com o Dia de Vencimento das Parcelas!';
    MSG_ERRO.ShowModal;
     suidbComboBox2.SetFocus;
     end
     else }
     if suiDBEdit4.Text='' then
 begin
     MSG_ERRO.Text:= 'Entre Com o Valor do Documento!';
     MSG_ERRO.ShowModal;
     suiDBEdit4.SetFocus;
     end
     else
     if suiDBEdit5.Text='' then
 begin
      MSG_ERRO.Text:= 'Entre Com o Valor da Parcela!';
      MSG_ERRO.ShowModal;
     suiDBEdit5.SetFocus;
     end
     else
     if suiDBEdit3.Text='' then
 begin
     MSG_ERRO.Text:= 'Entre Com o Número de Parcelas!';
     MSG_ERRO.ShowModal;
     suiDBEdit3.SetFocus;
end
else
begin

Try

//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);
          DM.SDS_ContasPagarANO.AsString := FormatDateTime('yyyy',dtAux);
          DM.SDS_ContasPagarMES.AsString := FormatDateTime('mm',dtAux);

          DM.SDS_ContasPagar.Post;
          DM.SDS_ContasPagar.ApplyUpdates(0);
  //        DM.SQLC.Commit(TD);

//RD.TransactionID := 1;
//RD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(RD);

 DBGridCP.Enabled:= TRUE;
 Days:= DM.SDS_CondPagamentoVARIACAO_DIAS.AsInteger;
 DT:= (Date + DM.SDS_CondPagamentoPIMEIRA_PAR.AsInteger) - Days;
 DM.Libera_Insert := True;
 DBGridCP.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
 Y:=0;
 for Y := 1 to StrToInt(DM.SDS_CondPagamentoNUMERO_PAR.Text) do
  begin
    if DM.SDS_Contas_Pagar.RecordCount < Y then

    {DM.SPC_Contas_Pagar.ExecProc;
     Cod:= (DM.SPC_Contas_Pagar.ParamByName('ATUAL').AsInteger);  }
     DM.SDS_Contas_Pagar.Insert;
     DM.SDS_Contas_Pagar.FieldByName('CODIGO_GERA').AsInteger:=1;// (Cod);

     DM.SDS_Contas_Pagar.Edit;
         DT:= DT + Days;
         DM.SDS_Contas_Pagar.FieldByName('CODIGO').AsInteger:=(Cod1);
         DM.SDS_Contas_Pagar.FieldByName('PARCELA').AsString:= (IntToStr(Y)+'/'+SUIDBEdit3.Text); //(IntToStr(I)+'/'+ (suiDBEdit3.Text));
         DM.SDS_Contas_Pagar.FieldByName('DATA_CADASTRO').AsDateTime:= DATE;
         DM.SDS_Contas_Pagar.FieldByName('DATA_EMISSAO').AsDateTime:=DBDateEdit1.Date;
         DM.SDS_Contas_Pagar.FieldByName('DATA_VENCIMENTO').Value:= DT;{AsDateTime:=StrToDatetime(Format('%2.2d/%2.2d/%4.d ',[D1,M,A]));}
         DM.SDS_Contas_Pagar.FieldByName('USUARIO_CADASTRO').AsString:= FormPrincipal.UserLogado;
         DM.SDS_Contas_Pagar.FieldByName('TIPO_DOCUMENTO').AsString:= suiDBComboBox1.Text;
         DM.SDS_Contas_Pagar.FieldByName('FORNECEDOR').AsString:= FORNECEDOR2.text;
         DM.SDS_Contas_Pagar.FieldByName('VALOR_DOCUMENTO').Value:= suiDBEdit4.Text;
         DM.SDS_Contas_Pagar.FieldByName('VALOR_PARCELA').Value:= suiDBEdit5.Text;
         DM.SDS_Contas_Pagar.FieldByName('N_DOCUMENTO').AsString:= dbnota.Text;
         DM.SDS_Contas_Pagar.FieldByName('SERIE').AsString:= suiDBEdit2.Text;
         DM.SDS_Contas_Pagar.FieldByName('AUTORIZACAO').AsString:= 'N';
         DM.SDS_Contas_Pagar.FieldByName('TIPO').AsString:= TIPO;
         DM.SDS_Contas_Pagar.Post;
         DM.SDS_Contas_Pagar.Next;
         DM.SDS_Contas_Pagar.Last;
         end;
         DM.SDS_Contas_Pagar.ApplyUpdates(0);
  //       DM.SQLC.Commit(RD);
ButtonGP.Enabled:= False;
ButtonCancelar.Enabled:= False;
ButtonNovo.Enabled:=False;
ButtonLC.Enabled:=False;
ButtonSP.Enabled:= True;
DBGridCP.Enabled:= True;
suiDBNavigator11.Enabled:= False;
//Fornecedor.Enabled:= False;
Fornecedor2.Enabled:= False;
SuiDbComboBox1.Enabled:= False;
//SuiDbComboBox2.Enabled:= False;
dbnota.Enabled:= False;
SuiDbEdit2.Enabled:= False;
SuiDbEdit3.Enabled:= False;
SuiDbEdit4.Enabled:= False;
SuiDbEdit5.Enabled:= False;
DBDateEdit1.Enabled:= False;
DBDateEdit2.Enabled:= False;
DM.Libera_Insert := False;
DM.SDS_Contas_Pagar.Edit;

except
        //DM.SDS_ContasPagar.Cancel;
      //  DM.SDS_Contas_Pagar.Cancel;
      //  DM.SDS_ContasPagar.CancelUpdates;
      //  DM.SDS_Contas_Pagar.CancelUpdates;
       // DM.SDS_ContasPagar.Delete;
       // DM.SDS_ContasPagar.ApplyUpdates(0);
       // DM.SQLC.Commit(RD);
      //  IF DM.SDS_ContasPagar.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     //   DESABILITAPANEL;
       // ErroGravacao.ShowModal;
end;
end;

end;

procedure TFormContasPagarLaticinio.ButtonNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
PerInserir.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
//IF MSG_TC.ShowModal = mrYes then
   begin
   Tipo:= 'F';
   DM.SPC_ContasPagar.ExecProc;
   Cod1:= (DM.SPC_ContasPagar.ParamByName('ATUAL').AsInteger);
   DM.SDS_ContasPagar.Insert;
   DM.SDS_ContasPagarCODIGO.Text:= IntToStr(Cod1);
   DM.SDS_ContasPagarDATA_CADASTRO.Value:= Date;
   DM.SDS_ContasPagarUSUARIO_CADASTRO.Value:= FormPrincipal.UserLogado;
   DM.SDS_ContasPagarTIPO.AsString:= Tipo;
   HabilitaPanel;
   AtualizaManutencao;
  // suiButton1.Enabled:= False;
   ButtonSP.Enabled:= False;
   ButtonGP.Enabled:= True;
   DBnOTA.SetFocus;
   end;
   Except
   MSG_ERRO.Text:= 'Erro na Inserção.';
    MSG_ERRO.ShowModal;
   end;
end;
end;

procedure TFormContasPagarLaticinio.ButtonCancelarClick(Sender: TObject);
begin
begin
Try
begin
    //ButtonGP.Enabled:= False;
    DM.SDS_ContasPagar.Cancel;
    DM.SDS_Contas_Pagar.Cancel;
    DM.SDS_ContasPagar.CancelUpdates;
    DM.SDS_Contas_Pagar.CancelUpdates;
    IF DM.SDS_ContasPagar.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
    DESABILITAPANEL;
end;
Except
     MSG_ERRO.Text:='Erro no Cancelamento.';
end;
end;

end;

procedure TFormContasPagarLaticinio.ButtonSPClick(Sender: TObject);
begin
begin
Try
DM.SDS_Contas_Pagar.Edit;
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
          DM.SDS_Contas_Pagar.Post;
          DM.SDS_Contas_Pagar.ApplyUpdates(0);
          DM.SQLC.Commit(TD);
//Fornecedor.Enabled:= True;
//Fornecedor2.Enabled:= True;
SuiDbComboBox1.Enabled:= True;
//SuiDbComboBox2.Enabled:= True;
dbnota.Enabled:= True;
SuiDbEdit2.Enabled:= True;
SuiDbEdit3.Enabled:= True;
SuiDbEdit4.Enabled:= True;
SuiDbEdit5.Enabled:= True;
DBDateEdit1.Enabled:= True;
DBDateEdit2.Enabled:= True;
IF DM.SDS_ContasPagar.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
DESABILITAPANEL;
DBGridCP.Options:=[dgTitles,dgIndicator,dgColLines,dgRowLines,dgRowSelect,dgAlwaysShowSelection];

   Except
        DM.SQLC.Rollback(TD);
        MSG_ERRO.Text:= 'Erro ao Salvar Parcelas!';
   end;
end;
end;

procedure TFormContasPagarLaticinio.suiButton6Click(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
PerExcluir.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if exclusao.ShowModal = mryes then
begin
Try
 Begin
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
  DM.SDS_Contas_Pagar.Last;
  with DM.SDS_Contas_Pagar do
  while RecordCount > 0 do
  Delete;
    DM.SDS_Contas_Pagar.ApplyUpdates(0);
    DM.SDS_ContasPagar.Delete;
    DM.SDS_ContasPagar.ApplyUpdates(0);
    DM.SQLC.Commit(TD);
 end;
 if DM.SDS_ContasPagar.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
      Except
      DM.SQLC.Rollback(TD);
      ErroGravacao.ShowModal;
end;
end;
end;
end;

procedure TFormContasPagarLaticinio.ButtonLCClick(Sender: TObject);
begin
Try
if FormConsContasPagar=nil   then
    begin
     FormConsContasPagar:=TFormConsContasPagar.Create(self);
      FormConsContasPagar.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário !!');
end;
end;

procedure TFormContasPagarLaticinio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormContasPagarLaticinio := nil;
end;

end.
