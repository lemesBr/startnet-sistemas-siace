unit Bens_utilizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,  SUIDBCtrls, SUIButton,
  Mask, DBCtrls, wwdblook, Wwdbdlg, DB, SUIDlg;

type
  TFormBensUtilizacao = class(TForm)
    pnfundo: TPanel;
    Label1: TLabel;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    Panel3: TPanel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    Label7: TLabel;
    EvDBEditBtn1: TDBEdit;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Edit1: TEdit;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    procedure btnNovoClick(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure EvDBEditBtn1BtnClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EvDBComboBox1Exit(Sender: TObject);
    procedure wwDBLookupComboDlg2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormBensUtilizacao: TFormBensUtilizacao;

implementation

uses ModuleDados1, ModulodeDados, Principal;

{$R *.dfm}


Procedure TFormBensUtilizacao.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM1.Sds_bens_utilizacao.State = dsBrowse);
BTNNOVO.Enabled:= (DM1.Sds_bens_utilizacao.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM1.Sds_bens_utilizacao.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (dm.sds_estados.State = dsBrowse);
BTNSALVAR.Enabled:= (DM1.Sds_bens_utilizacao.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM1.Sds_bens_utilizacao.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM1.Sds_bens_utilizacao.State = dsBrowse);
end;


procedure TFormBensUtilizacao.HabilitaPanel;
begin
Panel3.Enabled:= True;
end;

procedure TFormBensUtilizacao.DesabilitaPanel;
begin
Panel3.Enabled:= False;

end;

procedure TFormBensUtilizacao.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;
procedure TFormBensUtilizacao.btnNovoClick(Sender: TObject);
begin
 If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm1.Sds_bens_utilizacao.Insert;
   DM1.Sds_bens_utilizacaoSEQUENCIA.Value:= 0;
   DM1.Sds_bens_utilizacaoCod_empresa.text := DM.SDS_EmpresaCODIGO.Text;
  // DM1.Sds_bens_utilizacaoUSER_CAD.Text:= FormPrincipal.UserLogado;
  // DM1.Sds_bens_utilizacaoDATA_CAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DBEdit2.SetFocus;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;

end;

procedure TFormBensUtilizacao.EvDBEditBtn1BtnClick(Sender: TObject);
begin
{if FormConsPlanoContas=nil   then
    begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
      FormConsPlanoContas.ShowModal;
      dm1.Sds_bensCOD_CONTA.text := dm.sds_PlContasCod_completo.text;
       edit1.text :=  dm.sds_PlContasNome.text;
      end;   }

end;

procedure TFormBensUtilizacao.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
   DM1.Sds_bens_utilizacao.Edit;
   AtualizaManutencao;
   HabilitaPanel;
   DBEdit2.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

end;

procedure TFormBensUtilizacao.btnCancelarClick(Sender: TObject);
begin
Try
     DM1.Sds_bens_utilizacao.Cancel;
     if DM1.Sds_bens_utilizacao.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
      Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
   end;
end;

procedure TFormBensUtilizacao.btnSalvarClick(Sender: TObject);
begin
Try
      begin

        DM1.Sds_bens_utilizacaoCod_empresa.text := DM.SDS_EmpresaCODIGO.Text;
        DM1.Sds_bens_utilizacao.Post;
        DM1.Sds_bens_utilizacao.ApplyUpdates(0);
        AtualizaManutencao;
        DesabilitaPanel;
        DM1.Sds_bens_utilizacao.Refresh;
     end;

   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormBensUtilizacao.btnExcluirClick(Sender: TObject);
begin
Try
 Begin
    DM1.Sds_bens_utilizacao.Delete;
    DM1.Sds_bens_utilizacao.ApplyUpdates(0);
    end;
 if dm1.Sds_bens.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;

procedure TFormBensUtilizacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
Close;


    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormBensUtilizacao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if DM1.Sds_bens_utilizacao.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
    MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormBensUtilizacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FormBensUtilizacao := nil;
end;

procedure TFormBensUtilizacao.FormCreate(Sender: TObject);
begin
DM1.Sds_bens_utilizacao.Active := False;
DM1.Sds_bens_utilizacao.Active := true;
dm1.Sds_CentroCusto.Active := False;
dm1.Sds_CentroCusto.Active := true;
end;

procedure TFormBensUtilizacao.EvDBComboBox1Exit(Sender: TObject);
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


procedure TFormBensUtilizacao.wwDBLookupComboDlg2Exit(Sender: TObject);
begin
 Edit1.Text := DM1.Sds_CentroCustoDESCRICAO.Text;
end;

end.
