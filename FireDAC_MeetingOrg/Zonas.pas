unit Zonas;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormPadrai, Grids, DBGrids, SUIDBCtrls, DBCtrls, StdCtrls, Mask,
  SUIDlg, SUIButton, DB, ExtCtrls, DBClient, SimpleDS,
  RXDBCtrl, ComCtrls;
type
  TFormZonas = class(TForm)
    Panel2: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    btnLocalizar: TsuiButton;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    Label5: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    RxDBGrid1: TRxDBGrid;
    Edit1: TEdit;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;

  private
    { Private declarations }
  public
    Cod:Integer;

  end;

var
  FormZonas: TFormZonas;

implementation

uses ModulodeDados, Principal;

{$R *.dfm}

Procedure TFormzonas.AtualizaManutencao;
begin
DBNavigator.Enabled:= (dm.sds_zonas.State = dsBrowse);
BTNNOVO.Enabled:= (dm.sds_zonas.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dm.sds_zonas.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (dm.sds_bairro.State = dsBrowse);
BTNSALVAR.Enabled:= (dm.sds_zonas.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dm.sds_zonas.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (dm.sds_zonas.State = dsBrowse);
end;


procedure TFormzonas.HabilitaPanel;
begin
Panel3.Enabled:= True;
end;

procedure TFormzonas.DesabilitaPanel;
begin
Panel3.Enabled:= False;

end;

procedure TFormzonas.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;


procedure TFormZonas.btnNovoClick(Sender: TObject);
begin
If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm.sds_zonas.Insert;
   DBEdit1.Text:=IntTostr(Cod);
   dm.SDS_zonasUSERCAD.Text:= FormPrincipal.UserLogado;
   dm.SDS_zonasDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DBEdit1.Color:= clWhite;
   DBEdit2.Color:= clWhite;
   RxDBGrid1.Color := clWhite;
   DBEdit2.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormZonas.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     dm.SDS_zonas.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     DBEdit1.Color:= clWhite;
     DBEdit2.Color:= clWhite;
     RxDBGrid1.Color := clWhite;
     DBEdit2.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormZonas.btnCancelarClick(Sender: TObject);
begin
Try
     dm.SDS_zonas.Cancel;
     if dm.SDS_zonas.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     DBEdit1.Color:= clBtnFace;
     DBEdit2.Color:= clBtnFace;
     RxDBGrid1.Color := clBtnFace;
     Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
   end;
end;

procedure TFormZonas.btnSalvarClick(Sender: TObject);
begin
 Try
      begin
        dm.SDS_zonasCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
        dm.SDS_zonas.Post;
        dm.SDS_zonas.ApplyUpdates(0);
        AtualizaManutencao;
        DesabilitaPanel;
        DBEdit1.Color:= clBtnFace;
        DBEdit2.Color:= clBtnFace;
        RxDBGrid1.Color := clBtnFace;
        end;

   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormZonas.btnExcluirClick(Sender: TObject);
begin
Try
 Begin
    dm.SDS_zonas.Delete;
    dm.SDS_zonas.ApplyUpdates(0);
 end;
 if dm.SDS_zonas.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;

procedure TFormZonas.Edit1Change(Sender: TObject);
begin
dm.sds_ZONAS.locate('DESCRICAO',Edit1.Text,[lopartialkey,loCaseinSensitive]);
end;

procedure TFormZonas.Edit1Exit(Sender: TObject);
begin
RxDBGrid1.SetFocus;
end;

procedure TFormZonas.RxDBGrid1DblClick(Sender: TObject);
begin
TabSheet1.PageControl.ActivePageIndex :=0;
end;

procedure TFormZonas.RxDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key=#13) then
      begin
      TabSheet1.PageControl.ActivePageIndex := 0;
   end;
end;

procedure TFormZonas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;
FormZonas:=nil;
end;

procedure TFormZonas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if dm.SDS_zonas.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
    MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormZonas.FormShow(Sender: TObject);
begin
     dm.SDS_zonas.Active := False;
     dm.SDS_zonas.Active := true;
     dm.SDS_Empresa.Active := False;
     DM.SDS_Empresa.Active := True;
     DesabilitaPanel;
end;

end.
