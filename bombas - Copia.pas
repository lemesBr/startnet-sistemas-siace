unit bombas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo, StdCtrls, DB, DBCtrls, Mask, FDvGlowButton, ExtCtrls,
  SUIDlg, FDvPanel;

type
  TFormBombas = class(TFrmCadastroNovo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    CheckBox1: TCheckBox;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBombas: TFormBombas;

implementation

uses ModuledadosPostos, Principal, ModulodeDados, consBomba;

{$R *.dfm}


Procedure TFormBombas.AtualizaManutencao;
begin
//DBNavigator.Enabled:= (DMP.sds_frentista.State = dsBrowse);
BTNNOVO.Enabled:= (DMP.SDS_BOMBA.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DMP.SDS_BOMBA.State  = dsBrowse);
BtnConsultar.Enabled:= (DMP.SDS_BOMBA.State  = dsBrowse);
BtnGravar.Enabled:= (DMP.SDS_BOMBA.State  in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DMP.SDS_BOMBA.State  in [dsInsert, dsEdit]);
BtnAlterar.Enabled:= (DMP.SDS_BOMBA.State  = dsBrowse);
end;


procedure TFormBombas.HabilitaPanel;
begin
Panel1.Enabled:= True;
end;

procedure TFormBombas.DesabilitaPanel;
begin
Panel1.Enabled:= False;

end;

procedure TFormBombas.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BtnAlterar.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BtnGravar.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BtnConsultar.Enabled:= False;
end;

procedure TFormBombas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
Action := caFree;
FormBombas := nil;
end;

procedure TFormBombas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if DMP.SDS_BOMBA.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.ShowModal;
  CanClose := False;
  end;
end;

procedure TFormBombas.BtnSairClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFormBombas.btnNovoClick(Sender: TObject);
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
   dm.ProxCod.SQL.Add('select max(COD_BOMBA) as N_CODIGO FROM BOMBA');
   DM.ProxCod.Open;

   DMp.SDS_BOMBA.Insert;
   DMp.SDS_BOMBACOD_BOMBA.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;

   HabilitaPanel;
   AtualizaManutencao;
   DBComboBox1.SetFocus;

   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormBombas.BtnAlterarClick(Sender: TObject);
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
     DMP.SDS_BOMBA.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     DBComboBox1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormBombas.BtnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     DMP.SDS_BOMBA.Cancel;
 if DMP.SDS_BOMBA.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormBombas.BtnExcluirClick(Sender: TObject);
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
    DMp.SDS_BOMBA.Delete;
    DMp.SDS_BOMBA.ApplyUpdates(0);
 end;
 if DMp.SDS_BOMBA.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
end;

procedure TFormBombas.BtnGravarClick(Sender: TObject);
begin
  inherited;
Try
      begin

      DMp.SDS_BOMBA.Edit;
      DMp.SDS_BOMBAID_BOMBA.ASINTEGER :=DMP.SDS_BOMBACOD_BOMBA.ASINTEGER;

      if CheckBox1.Checked = True then
      begin
        DMP.SDS_BOMBAAUTO_AUTORIZA.Text := '1';
      end else
         if CheckBox1.Checked = false then
      begin
        DMP.SDS_BOMBAAUTO_AUTORIZA.Text := '0';
      end;
      
          DMP.SDS_BOMBA.Post;
          DMP.SDS_BOMBA.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormBombas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormBombas.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   Application.CreateForm(TFormConsBomba, FormConsBomba);
   FormConsBomba.showmodal;
end;

procedure TFormBombas.FormShow(Sender: TObject);
begin
  inherited;
DMP.SDS_BOMBA.Active := False;
DMP.SDS_BOMBA.Active := True;
dmp.sds_frentista.Active := False;
dmp.sds_frentista.Active := True;
end;

procedure TFormBombas.DBComboBox1Exit(Sender: TObject);
begin
  inherited;
      DMp.SDS_BOMBA.Edit;
      DMp.SDS_BOMBAID_BOMBA.ASINTEGER :=DMP.SDS_BOMBACOD_BOMBA.ASINTEGER;
end;

end.
