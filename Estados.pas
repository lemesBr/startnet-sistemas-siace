unit Estados;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ComCtrls, ExtCtrls, SUIDBCtrls, SUIButton, DB, DBCtrls,
  Mask, Grids, DBGrids, SUIDlg, XDBGrids, wwdblook, Wwdbdlg,
  Messages, Variants, XDBCtrls, AdvGlowButton;

type
  TFormEstados = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    btnNovo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnExcluir: TAdvGlowButton;
    DBNavigator: TXDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    Panel3: TPanel;
    pnfundo: TPanel;
    Label1: TLabel;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
      Cod:Integer;
  end;

var
  FormEstados: TFormEstados;

implementation

uses ModulodeDados, Principal, Z_RotinasGerais;

{$R *.dfm}

Procedure TFormESTADOS.AtualizaManutencao;
begin
DBNavigator.Enabled:= (dm.sds_estados.State = dsBrowse);
BTNNOVO.Enabled:= (dm.sds_estados.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dm.sds_estados.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (dm.sds_estados.State = dsBrowse);
BTNSALVAR.Enabled:= (dm.sds_estados.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dm.sds_estados.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (dm.sds_estados.State = dsBrowse);
end;


procedure TFormEstados.HabilitaPanel;
begin
Panel3.Enabled:= True;
end;

procedure TFormEstados.DesabilitaPanel;
begin
Panel3.Enabled:= False;

end;

procedure TFormestados.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormEstados.btnNovoClick(Sender: TObject);
begin
 If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm.sds_estados.Insert;
   DBEdit1.Text:=IntTostr(Cod);
   dm.sds_estadosUSERCAD.Text:= FormPrincipal.UserLogado;
   dm.sds_estadosDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DBEdit1.Color:= clWhite;
   DBEdit2.Color:= clWhite;
   //DBGrid.Color := clWhite;
   DBComboBox1.Color:= clWhite;
   DBEdit2.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormEstados.btnCancelarClick(Sender: TObject);
begin
Try
     dm.sds_estados.Cancel;
     if dm.sds_estados.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     DBEdit1.Color:= clBtnFace;
     DBEdit2.Color:= clBtnFace;
     DBComboBox1.Color:= clBtnFace;
    // DBGrid.Color := clBtnFace;
     Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
   end;
end;

procedure TFormEstados.btnSalvarClick(Sender: TObject);
begin
 Try
      begin
        dm.sds_estadosCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
        dm.sds_estados.Post;
        dm.sds_estados.ApplyUpdates(0);
        AtualizaManutencao;
        DesabilitaPanel;
        DBEdit1.Color:= clBtnFace;
        DBEdit2.Color:= clBtnFace;
       // DBGrid.Color := clBtnFace;
        DBComboBox1.Color:= clBtnFace;
        end;

   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormEstados.btnExcluirClick(Sender: TObject);
begin
Try
 Begin
    dm.sds_estados.Delete;
    dm.sds_estados.ApplyUpdates(0);
 end;
 if dm.sds_estados.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;

procedure TFormEstados.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
   dm.sds_estados.Edit;
   AtualizaManutencao;
   HabilitaPanel;
   DBEdit1.Color:= clWhite;
   DBEdit2.Color:= clWhite;
   DBComboBox1.Color:= clWhite;
 //  DBGrid.Color := clWhite;
   DBEdit2.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormEstados.FormShow(Sender: TObject);
begin
SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
dm.SDS_estados.Active := False;
DM.SDS_estados.Active := True;
DesabilitaPanel;
end;

procedure TFormEstados.DBGrid1DblClick(Sender: TObject);
begin
TabSheet1.PageControl.ActivePageIndex :=0;
end;

procedure TFormEstados.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   TabSheet1.PageControl.ActivePageIndex :=0;
   end;
end;

procedure TFormEstados.DBGridDblClick(Sender: TObject);
begin
TabSheet1.PageControl.ActivePageIndex :=0;
end;

procedure TFormEstados.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   TabSheet1.PageControl.ActivePageIndex :=0;
   end;
end;

procedure TFormEstados.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.

