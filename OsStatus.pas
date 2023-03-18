unit OsStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons,ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  FormPadrai, TaskDialog, sDBNavigator, sBitBtn, sPanel, acDBGrid,
  sDBEdit, sLabel, aDvSmoothMessageDialog, AdvGlowButton;

type
  TFormOsStatus = class(TFormPadrao)
    Label1: TsLabel;
    DBEdit1: TsDBEdit;
    DBEdit2: TsDBEdit;
    suiDBGrid1: TsDBGrid;
    myLabel3d1: TsLabelFX;
    procedure FormShow(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaNovo;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormOsStatus: TFormOsStatus;

implementation
uses dmos1, Z_RotinasGerais, Principal, ModulodeDados;

{$R *.dfm}

procedure TFormOsStatus.FormShow(Sender: TObject);
begin
  inherited;
dmos.Sds_Status.active := false;
dmos.sds_Status.active := True;
panel1.Enabled := false;
end;

Procedure TFormOSStatus.AtualizaManutencao;
begin
DBNavigator.Enabled:= (dmos.sds_Status.State = dsBrowse);
BTNNOVO.Enabled:= (dmos.sds_Status.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dmos.sds_Status.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (dmos.sds_Status.State = dsBrowse);
BTNSALVAR.Enabled:= (dmos.sds_Status.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dmos.sds_Status.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (dmos.sds_Status.State = dsBrowse);
end;

procedure TFormOSStatus.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
END;

procedure TFormOsStatus.btnNovoClick(Sender: TObject);
begin
  inherited;
If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Execute;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   //DMOS.SPC_Status.ExecProc;
   //Cod:= (DMOS.SPC_status.ParamByName('ATUAL').AsInteger);
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max( ID_OS_STATUS) as N_CODIGO FROM  OS_STATUS_ATENDIMENTO');
   DM.ProxCod.Open;

   dmos.sds_Status.Insert;
   dmos.Sds_statusID_OS_STATUS.AsInteger :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
   dmos.sds_StatusUSERCAD.Text:= FormPrincipal.UserLogado;
   dmos.sds_StatusDATACAD.Text:= datetostr(now);
   AtualizaManutencao;
   DBEdit2.Color:= clWhite;
   panel1.Enabled := true;
   DBEdit2.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
end;

procedure TFormOsStatus.btnEditarClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Execute;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     dmos.sds_Status.Edit;
     AtualizaManutencao;
     DBEdit2.Color:= clWhite;
     panel1.Enabled := true;
     DBEdit2.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
end;

procedure TFormOsStatus.btnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     dmos.sds_Status.Cancel;
 if dmos.sds_Status.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DBEdit2.Color:= $00E8E8E8;
     panel1.Enabled := false;
   Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;

procedure TFormOsStatus.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormOsStatus.btnSalvarClick(Sender: TObject);
begin
  inherited; 
 Try
      begin
          dmos.sds_Status.Post;
          dmos.sds_Status.ApplyUpdates(0);
          AtualizaManutencao;
          DBEdit2.Color:= $00E8E8E8;
          panel1.Enabled := false;
      end;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
procedure TFormOsStatus.DBEdit2Enter(Sender: TObject);
begin
  inherited;
corEntrada(sender);
end;

procedure TFormOsStatus.DBEdit2Exit(Sender: TObject);
begin
  inherited;
corSaida(sender);
end;

procedure TFormOsStatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
FormosStatus:=nil;
end;

procedure TFormOsStatus.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if dmos.sds_Status.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
     MsgInformacao.Execute;
   CanClose := False;
end;
end;

procedure TFormOsStatus.btnExcluirClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if Application.MESSAGEBOX('Confirma a Exclusão?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
Try
 Begin
    dmos.sds_Status.Delete;
    dmos.sds_Status.ApplyUpdates(0);
    panel1.Enabled := false;
 end;
 if dmos.sds_Status.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
end;
end;
end;
end;
procedure TFormOsStatus.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if not odd(DMOS.Sds_status.RecNo) then
  if not (gdselected in State) then
    begin
    suiDBGrid1.Canvas.Brush.Color := $00FFEFDF;
    suiDBGrid1.Canvas.FillRect(Rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

end.
