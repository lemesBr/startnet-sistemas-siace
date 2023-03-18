unit cst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIDBCtrls, SUIButton, Mask, DBCtrls, RXCtrls,
  ExtCtrls, wwdblook, DB, Wwdbdlg;

type
  TFormCst = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    pnldados: TPanel;
    RxLabel4: TRxLabel;
    RxLabel2: TRxLabel;
    db_nome: TDBEdit;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    ComboEdit1: TwwDBLookupComboDlg;
    RxLabel1: TRxLabel;
    DBRadioGroup4: TDBRadioGroup;
    procedure btnNovoClick(Sender: TObject);
    Procedure AtualizaManutencao;
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCst: TFormCst;

implementation

uses ModulodeDados, Principal;

{$R *.dfm}

Procedure TFormCst.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.Sds_cst.State = dsBrowse);
BTNNOVO.Enabled:= (DM.Sds_cst.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.Sds_cst.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (DM.Sds_cst.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.Sds_cst.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.Sds_cst.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.Sds_cst.State = dsBrowse);
end;


procedure TFormCst.btnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   DM.SDS_CST.Insert;
   AtualizaManutencao;
   pnldados.Enabled := true;
   DBEdit1.SetFocus;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;
end;

procedure TFormCst.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!!');
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_CST.Edit;
      pnldados.Enabled := true;
      AtualizaManutencao;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;

end;

end;

procedure TFormCst.btnCancelarClick(Sender: TObject);
begin
Try
    DM.SDS_CST.Cancel;
    pnldados.Enabled := False;
    AtualizaManutencao;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;

end;

procedure TFormCst.btnSalvarClick(Sender: TObject);
begin
 Try
      begin
          DM.SDS_CST.Post;
          DM.SDS_CST.ApplyUpdates(0);
          pnldados.Enabled := False;
          AtualizaManutencao;
      end;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;

procedure TFormCst.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if Application.MESSAGEBOX('Confirma a Exlusão do Transportador?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
Try
 Begin
    DM.SDS_CST.Delete;
    DM.SDS_CST.ApplyUpdates(0);

 end;
   Except
      ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
end;

end;
end;
end;

procedure TFormCst.FormShow(Sender: TObject);
begin
dm.SDS_CST.Active := False;
dm.SDS_CST.Active := true;

end;

procedure TFormCst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FormCst := nil;
end;

procedure TFormCst.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if DM.SDS_CST.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  ShowMessage('Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!');
  CanClose := False;
  end;
end;

procedure TFormCst.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
