unit frentistas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo,  StdCtrls, Mask, DBCtrls,
  ExtCtrls, DB, SUIDlg, AdvGlowButton, AdvPanel;

type
  TFormFrentista = class(TFrmCadastroNovo)
    Pnldados: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    procedure btnNovoClick(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFrentista: TFormFrentista;

implementation

uses ModuledadosPostos, ModulodeDados, Principal, Consfrentistas;

{$R *.dfm}

Procedure TFormFrentista.AtualizaManutencao;
begin
//DBNavigator.Enabled:= (DMP.sds_frentista.State = dsBrowse);
BTNNOVO.Enabled:= (DMP.sds_frentista.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DMP.sds_frentista.State = dsBrowse);
BtnConsultar.Enabled:= (DMP.sds_frentista.State = dsBrowse);
BtnGravar.Enabled:= (DMP.sds_frentista.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DMP.sds_frentista.State in [dsInsert, dsEdit]);
BtnAlterar.Enabled:= (DMP.sds_frentista.State = dsBrowse);
end;


procedure TFormFrentista.HabilitaPanel;
begin
pnldados.Enabled:= True;
end;

procedure TFormFrentista.DesabilitaPanel;
begin
pnldados.Enabled:= False;

end;

procedure TFormFrentista.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BtnAlterar.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BtnGravar.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BtnConsultar.Enabled:= False;
end;
procedure TFormFrentista.btnNovoClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(COD_FRENTISTA) as N_CODIGO FROM frentista');
   DM.ProxCod.Open;

   DMp.sds_frentista.Insert;
  // dbcodigo.Text:=IntTostr(Cod);
   DMp.sds_frentistaCOD_FRENTISTA.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;

  //DM.SDS_CategoriaUSERCAD.Text:= FormPrincipal.UserLogado;
  // DM.SDS_CategoriaDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DBEdit2.SetFocus;

   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormFrentista.BtnAlterarClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DMP.sds_frentista.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     DBEdit2.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormFrentista.BtnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     DMP.sds_frentista.Cancel;
 if DMP.sds_frentista.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormFrentista.BtnExcluirClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.ShowModal = mryes then
begin
Try
 Begin
    DMp.sds_frentista.Delete;
    DMp.sds_frentista.ApplyUpdates(0);
 end;
 if DMp.sds_frentista.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
end;

procedure TFormFrentista.BtnGravarClick(Sender: TObject);
begin
  inherited;
Try
      begin
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(COD_FRENTISTA) as N_CODIGO FROM frentista');
      DM.ProxCod.Open;
      DMp.sds_frentista.Edit;
      DMp.sds_frentistaCOD_FRENTISTA.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
      DMp.sds_frentistaID_FRENTISTA.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;

          DMP.sds_frentista.Post;
          DMP.sds_frentista.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormFrentista.BtnSairClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFormFrentista.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if DMP.sds_frentista.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.ShowModal;
  CanClose := False;
  end;
end;

procedure TFormFrentista.FormShow(Sender: TObject);
begin
  inherited;
DMP.sds_frentista.Active := False;
DMP.sds_frentista.Active := True;
DesabilitaPanel;
end;

procedure TFormFrentista.BtnConsultarClick(Sender: TObject);
begin
  inherited;
Try
if FormConsFrentista=nil   then
    begin
    FormConsFrentista:=TFormConsFrentista.Create(self);
      FormConsFrentista.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormFrentista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action := caFree;
FormFrentista := nil;
end;

procedure TFormFrentista.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
