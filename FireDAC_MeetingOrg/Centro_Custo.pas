unit Centro_Custo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, SUIDBCtrls, SUIButton,
  Mask, DBCtrls, wwdblook, Wwdbdlg, DB, SUIDlg, RXDBCtrl, RzEdit,
  RzDBEdit, RzDBBnEd, RxToolEdit;

type
  TFormCentroCusto = class(TForm)
    pnfundo: TPanel;
    Label1: TLabel;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    Panel3: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    DBDateEdit1: TDBDateEdit;
    Label4: TLabel;
    Label83: TLabel;
    econta: TRzDBButtonEdit;
    enomeconta: TRzDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EvDBComboBox1Exit(Sender: TObject);
    procedure econtaButtonClick(Sender: TObject);
    procedure econtaEnter(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure wwDBLookupComboDlg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormCentroCusto: TFormCentroCusto;

implementation

uses ModuleDados1, ModulodeDados, Principal, ConsPlanoContas;

{$R *.dfm}


Procedure TFormCentroCusto.AtualizaManutencao;
begin
DBNavigator.Enabled:= (dm1.Sds_CentroCusto.State = dsBrowse);
BTNNOVO.Enabled:= (dm1.Sds_CentroCusto.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dm1.Sds_CentroCusto.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (dm.sds_estados.State = dsBrowse);
BTNSALVAR.Enabled:= (dm1.Sds_CentroCusto.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dm1.Sds_CentroCusto.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (dm1.Sds_CentroCusto.State = dsBrowse);
end;


procedure TFormCentroCusto.HabilitaPanel;
begin
Panel3.Enabled:= True;
end;

procedure TFormCentroCusto.DesabilitaPanel;
begin
Panel3.Enabled:= False;

end;

procedure TFormCentroCusto.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;
procedure TFormCentroCusto.btnNovoClick(Sender: TObject);
begin
 If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm1.Sds_CentroCusto.Insert;
   dm1.Sds_CentroCustoCOD_CENTRO.Value:= 0;
   dm1.Sds_CentroCustoCod_empresa.text := DM.SDS_EmpresaCODIGO.Text;
   dm1.Sds_CentroCustoUSERCAD.Text:= FormPrincipal.UserLogado;
   dm1.Sds_CentroCustoDATA_CAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DBDateEdit1.SetFocus;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;

end;

procedure TFormCentroCusto.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
   dm1.Sds_CentroCusto.Edit;
   AtualizaManutencao;
   HabilitaPanel;
   DBEdit2.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

end;

procedure TFormCentroCusto.btnCancelarClick(Sender: TObject);
begin
Try
     dm1.Sds_CentroCusto.Cancel;
     if dm1.Sds_CentroCusto.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
      Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
   end;
end;

procedure TFormCentroCusto.btnSalvarClick(Sender: TObject);
begin

      begin

        dm1.Sds_CentroCustoCod_empresa.text := DM.SDS_EmpresaCODIGO.Text;
        dm1.Sds_CentroCusto.Post;
        dm1.Sds_CentroCusto.ApplyUpdates(0);
        AtualizaManutencao;
        DesabilitaPanel;
        dm1.Sds_CentroCusto.Refresh;
     end;

end;

procedure TFormCentroCusto.btnExcluirClick(Sender: TObject);
begin
Try
 Begin
    dm1.Sds_CentroCusto.Delete;
    dm1.Sds_CentroCusto.ApplyUpdates(0);
    end;
 if dm1.Sds_CentroCusto.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;

procedure TFormCentroCusto.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
Close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormCentroCusto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if dm1.Sds_CentroCusto.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
    MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormCentroCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FormCentroCusto := nil;
end;

procedure TFormCentroCusto.FormCreate(Sender: TObject);
begin
dm1.Sds_CentroCusto.Active := False;
dm1.Sds_CentroCusto.Active := true;
if econta.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
    then
     // blocregiaoClick(FormContaBancaria)
    else
    begin
      enomeconta.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
    end;
   end;
end;

procedure TFormCentroCusto.EvDBComboBox1Exit(Sender: TObject);
begin
{if EvDBComboBox1.ItemIndex = 0 then
begin
   DBEdit4.Enabled := False;
   EvDBEditBtn1.SetFocus
end ELSE
if EvDBComboBox1.ItemIndex = 1 then
begin
   DBEdit4.Enabled := True;
end;}
end;


procedure TFormCentroCusto.econtaButtonClick(Sender: TObject);
begin
  FormConsPlanoContas := tFormConsPlanoContas.create(self);
  FormConsPlanoContas.showmodal;

  econta.Text := DM.SDS_PLCONTASCODIGO.TEXT;
  enomeconta.Text := DM.SDS_PlCONTASnome.TEXT;

  btnSalvar.SetFocus;
end;

procedure TFormCentroCusto.econtaEnter(Sender: TObject);
begin
TEdit(Sender).Color := $00A0FAF8;
end;

procedure TFormCentroCusto.econtaExit(Sender: TObject);
begin
TEdit(Sender).Color := clwindow;
 if econta.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
    then
      econtaButtonClick(FormCentroCusto)
    else
    begin
      enomeconta.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
    end;
   end  else
    btnSalvar.SetFocus;
end;

procedure TFormCentroCusto.econtaKeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in ['0'..'9', #8]) then
          key := #0;
          
 if Key = #13 then
  begin
  if econta.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
    then
      econtaButtonClick(FormCentroCusto)
    else
    begin
      enomeconta.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
    end;
   end  else
    btnSalvar.SetFocus;
  end;
end;

procedure TFormCentroCusto.DBNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 if econta.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
    then
     // blocregiaoClick(FormContaBancaria)
    else
    begin
    //  Edit5.setfocus;
      enomeconta.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
    end;
   end;
end;

procedure TFormCentroCusto.wwDBLookupComboDlg1Click(Sender: TObject);
begin
 if econta.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
    then
     // blocregiaoClick(FormContaBancaria)
    else
    begin
      enomeconta.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
    end;
   end;
end;

end.
