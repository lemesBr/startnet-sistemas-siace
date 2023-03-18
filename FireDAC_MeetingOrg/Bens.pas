unit Bens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, SUIDBCtrls, SUIButton,
  Mask, DBCtrls, wwdblook, Wwdbdlg, DB, SUIDlg, RxDBComb;

type
  TFormBens = class(TForm)
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
    Label4: TLabel;
    EvDBComboBox1: TRxDBComboBox;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    EvDBEditBtn1: TDBEdit;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Edit1: TEdit;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
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
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormBens: TFormBens;

implementation

uses ModuleDados1, ModulodeDados, Principal, ConsPlanoContas;

{$R *.dfm}


Procedure TFormBens.AtualizaManutencao;
begin
DBNavigator.Enabled:= (dm1.Sds_bens.State = dsBrowse);
BTNNOVO.Enabled:= (dm1.Sds_bens.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dm1.Sds_bens.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (dm.sds_estados.State = dsBrowse);
BTNSALVAR.Enabled:= (dm1.Sds_bens.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dm1.Sds_bens.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (dm1.Sds_bens.State = dsBrowse);
end;


procedure TFormBens.HabilitaPanel;
begin
Panel3.Enabled:= True;
end;

procedure TFormBens.DesabilitaPanel;
begin
Panel3.Enabled:= False;

end;

procedure TFormBens.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;
procedure TFormBens.btnNovoClick(Sender: TObject);
begin
 If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm1.Sds_bens.Insert;
   DM1.Sds_bensCODIGO.Value:= 0;
   DM1.Sds_bensIDENTIF_MERC.TEXT:='1';
   EvDBComboBox1.ItemIndex := 0; 
   dm1.Sds_bensCod_empresa.text := DM.SDS_EmpresaCODIGO.Text;
   dm1.Sds_bensUSERCAD.Text:= FormPrincipal.UserLogado;
   dm1.Sds_bensDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DBEdit2.SetFocus;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;

end;

procedure TFormBens.EvDBEditBtn1BtnClick(Sender: TObject);
begin
if FormConsPlanoContas=nil   then
    begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
      FormConsPlanoContas.ShowModal;
      dm1.Sds_bensCOD_CONTA.text := dm.sds_PlContasCod_completo.text;
       edit1.text :=  dm.sds_PlContasNome.text;
      end;

end;

procedure TFormBens.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
  DM1.Sds_bens.Edit;
   AtualizaManutencao;
   HabilitaPanel;
   DBEdit2.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

end;

procedure TFormBens.btnCancelarClick(Sender: TObject);
begin
Try
     dm1.Sds_bens.Cancel;
     if dm1.Sds_bens.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
      Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
   end;
end;

procedure TFormBens.btnSalvarClick(Sender: TObject);
begin
Try
      begin

        dm1.Sds_bensCod_empresa.text := DM.SDS_EmpresaCODIGO.Text;
        dm1.Sds_bens.Post;
        dm1.Sds_bens.ApplyUpdates(0);
        AtualizaManutencao;
        DesabilitaPanel;
        dm1.Sds_bens.Refresh;
     end;

   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormBens.btnExcluirClick(Sender: TObject);
begin
Try
 Begin
    dm1.Sds_bens.Delete;
    dm1.sds_bens.ApplyUpdates(0);
    end;
 if dm1.Sds_bens.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;

procedure TFormBens.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
Close;


    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormBens.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if DM1.Sds_bens.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
    MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormBens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FormBens := nil;
end;

procedure TFormBens.FormCreate(Sender: TObject);
begin
dm1.Sds_bens.Active := False;
dm1.Sds_bens.Active := true;
end;

procedure TFormBens.EvDBComboBox1Exit(Sender: TObject);
begin
if EvDBComboBox1.ItemIndex = 0 then
begin
   DBEdit4.Enabled := False;
   EvDBEditBtn1.SetFocus
end ELSE
if EvDBComboBox1.ItemIndex = 1 then
begin
   DBEdit4.Enabled := True;
end;
end;


end.
