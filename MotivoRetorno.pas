unit MotivoRetorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids,
  StdCtrls, Mask, SUIDBCtrls, SUIPageControl, SUITabControl,
  SUIButton, ImgList, Menus, SUIDlg, db;

type
  TFormMotivoRetorno = class(TForm)
    Pnldados: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    DBCodigo: TsuiDBEdit;
    Panel2: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    btnLocalizar: TsuiButton;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    DBEditDescricao: TDBEdit;
    Procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBEditDescricaoEnter(Sender: TObject);
    procedure DBEditDescricaoExit(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
       VI_Gravar,Cod:integer;

  end;

var
  FormMotivoRetorno: TFormMotivoRetorno;

implementation

uses Principal, ModulodeDados, Acesso, Z_RotinasGerais, ConsRetorno;



{$R *.dfm}


Procedure TFormMotivoRetorno.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Retorno.State = dsBrowse);
//Novo1.Enabled:=(DM.SDS_Retorno.State = dsBrowse);
//Editar1.Enabled:=(DM.SDS_Retorno.State = dsBrowse);
//Localizar1.Enabled:=(DM.SDS_Retorno.State = dsBrowse);
//Salvar1.Enabled:= (DM.SDS_Retorno.State in [dsInsert, dsEdit]);
//Cancelar1.Enabled:=(DM.SDS_Retorno.State in [dsInsert, dsEdit]);
BTNNOVO.Enabled:= (DM.SDS_Retorno.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Retorno.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Retorno.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Retorno.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Retorno.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Retorno.State = dsBrowse);
//Excluir1.Enabled:=(DM.SDS_Retorno.State = dsBrowse)
end;

procedure TFormMotivoRetorno.HabilitaPanel;
begin
Pnldados.Enabled:= True;
end;

procedure TFormMotivoRetorno.DesabilitaPanel;
begin
Pnldados.Enabled:= False;
end;

procedure TFormMotivoRetorno.HabilitaNovo;
begin
//Novo1.Enabled:=True;
//Editar1.Enabled:=False;
//Excluir1.Enabled:=False;
//Localizar1.Enabled:=False;
//Salvar1.Enabled:= False;
//Cancelar1.Enabled:=False;
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormMotivoRetorno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormMotivoRetorno:=nil;
end;

procedure TFormMotivoRetorno.btnNovoClick(Sender: TObject);
begin
If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
If FormPrincipal.Label3.Caption ='S'then
begin
Try
   DM.SPC_Retorno.ExecProc;
   Cod:= (DM.SPC_Retorno.ParamByName('ATUAL').AsInteger);
   DM.SDS_Retorno.Insert;
   DBCodigo.Text:=IntTostr(Cod);
   DM.SDS_RetornoUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_RetornoDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DBEditDescricao.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormMotivoRetorno.btnEditarClick(Sender: TObject);
begin
If FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
If FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_Retorno.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     DBEditDescricao.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormMotivoRetorno.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_Retorno.Cancel;
 if DM.SDS_Retorno.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     DBEditDescricao.Color:= $00E8E8E8;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormMotivoRetorno.btnSalvarClick(Sender: TObject);
begin
 Try
      begin

          DM.SDS_Retorno.Post;
          DM.SDS_Retorno.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
          DBEditDescricao.Color:= $00E8E8E8;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormMotivoRetorno.btnExcluirClick(Sender: TObject);
begin
If FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
If FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.ShowModal = mryes then
begin
Try
 Begin
    DM.SDS_Retorno.Delete;
    DM.SDS_Retorno.ApplyUpdates(0);
 end;
 If DM.SDS_Retorno.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
end;

procedure TFormMotivoRetorno.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Retorno.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormMotivoRetorno.FormShow(Sender: TObject);
begin
DM.SDS_Retorno.Active:= False;
DM.SDS_Retorno.Active:= True;
DESABILITAPANEL;
IF DM.SDS_Retorno.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
end;

procedure TFormMotivoRetorno.FormKeyDown(Sender: TObject; var Key: Word;
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
      BtnLocalizarClick(Sender);
      end;
      end;
end;

procedure TFormMotivoRetorno.DBComboBox1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormMotivoRetorno.DBComboBox1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormMotivoRetorno.DBEditDescricaoEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormMotivoRetorno.DBEditDescricaoExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormMotivoRetorno.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsRetorno=nil   then
    begin
    FormConsRetorno:=TFormConsRetorno.Create(self);
      FormConsRetorno.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormMotivoRetorno.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

end.
