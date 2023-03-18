unit DadosZ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXDBCtrl, SUIDBCtrls, SUIButton, StdCtrls, Mask,
  DBCtrls, RXCtrls, ExtCtrls, DB, Grids, XDBGrids, SUIDlg, RxToolEdit;

type
  TFormDadosZ = class(TForm)
    XDBGrid1: TXDBGrid;
    pnldados: TPanel;
    RxLabel1: TRxLabel;
    RxLabel4: TRxLabel;
    db_nome: TDBEdit;
    Panel3: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    DBEdit2: TDBEdit;
    RxLabel5: TRxLabel;
    DBEdit3: TDBEdit;
    RxLabel6: TRxLabel;
    DBEdit4: TDBEdit;
    RxLabel7: TRxLabel;
    DBEdit5: TDBEdit;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    procedure btnNovoClick(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDadosZ: TFormDadosZ;

implementation

uses ModuleDados1, Principal;

{$R *.dfm}

Procedure TFormDadosZ.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM1.Sds_Red_Z.State = dsBrowse);
BTNNOVO.Enabled:= (DM1.Sds_Red_Z.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM1.Sds_Red_Z.State = dsBrowse);
BTNSALVAR.Enabled:= (DM1.Sds_Red_Z.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM1.Sds_Red_Z.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM1.Sds_Red_Z.State = dsBrowse);
end;

procedure TFormDadosZ.btnEditarClick(Sender: TObject);
begin
 if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM1.Sds_Red_Z.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     DBEdit1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

end;



procedure TFormDadosZ.HabilitaPanel;
begin
pnldados.Enabled:= True;
end;

procedure TFormDadosZ.DesabilitaPanel;
begin
pnldados.Enabled:= False;

end;

procedure TFormDadosZ.HabilitaNovo;
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
end;

procedure TFormDadosZ.btnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
try
   DM1.Sds_Red_Z.Insert;
   HabilitaPanel;
   AtualizaManutencao;
   DBEdit1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormDadosZ.btnCancelarClick(Sender: TObject);
begin
Try
      DM1.Sds_Red_Z.Cancel;
  if  DM1.Sds_Red_Z.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

procedure TFormDadosZ.btnExcluirClick(Sender: TObject);
begin
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
    DM1.Sds_Red_Z.Delete;
    DM1.Sds_Red_Z.ApplyUpdates(0);

 end;
 if DM1.Sds_Red_Z.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
 Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
 end;
end;
end;  
end;

procedure TFormDadosZ.btnSalvarClick(Sender: TObject);
begin
 Try
      begin
          DM1.Sds_Red_Z.Post;
          DM1.Sds_Red_Z.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormDadosZ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 FormDadosZ := nil;
end;

procedure TFormDadosZ.FormShow(Sender: TObject);
begin
DM1.Sds_ecf.Active := False;
DM1.Sds_ecf.Active := True;
DM1.Sds_Red_Z.Active := False;
DM1.Sds_Red_Z.Active := True;;
end;

procedure TFormDadosZ.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
Close;
end;

end.
