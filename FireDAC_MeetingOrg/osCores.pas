unit osCores;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls,  StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB,  Mask,
  DBCtrls, SUITabControl, RXCtrls, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  FormPadrai, Mylabel, TaskDialog, sDBNavigator, sBitBtn, sPanel, acDBGrid,
  sDBEdit, sLabel, aDvSmoothMessageDialog;
type
  TFormOsCores = class(TFormPadrao)
    DBEdit1: TsDBEdit;
    DBEdit2: TsDBEdit;
    Label1: TsLabel;
    Label2: TsLabel;
    suiDBGrid1: TsDBGrid;
    myLabel3d1: TsLabelFX;
    procedure FormShow(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaNovo;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
     Cod:Integer;
  end;

var
  FormOsCores: TFormOsCores;

implementation

uses DMOS1, Z_RotinasGerais, Principal, ModulodeDados;

{$R *.dfm}

procedure TFormOsCores.FormShow(Sender: TObject);
begin
  inherited;
dmos.sds_oscor.active := false;
dmos.sds_oscor.active := true;
panel1.Enabled := false;
end;

Procedure TFormOSCORes.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DMOS.SDS_OSCOR.State = dsBrowse);
BTNNOVO.Enabled:= (DMOS.SDS_OSCOR.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DMOS.SDS_OSCOR.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (DMOS.SDS_OSCOR.State = dsBrowse);
BTNSALVAR.Enabled:= (DMOS.SDS_OSCOR.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DMOS.SDS_OSCOR.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DMOS.SDS_OSCOR.State = dsBrowse);
end;

procedure TFormOSCORes.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;
procedure TFormOsCores.btnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     DMOS.SDS_OSCOR.Cancel;
 if DMOS.SDS_OSCOR.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DBEdit2.Color:= $00E8E8E8;
     panel1.Enabled := false;
   Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;


procedure TFormOsCores.btnSalvarClick(Sender: TObject);
begin
  inherited;
 Try
      begin
          DMOS.SDS_OSCOR.Post;
          DMOS.SDS_OSCOR.ApplyUpdates(0);
          AtualizaManutencao;
          DBEdit2.Color:= $00E8E8E8;
          panel1.Enabled := false;
      end;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;


procedure TFormOsCores.btnExcluirClick(Sender: TObject);
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
    DMOS.SDS_OSCOR.Delete;
    DMOS.SDS_OSCOR.ApplyUpdates(0);
    panel1.Enabled := false;
 end;
 if DMOS.SDS_OSCOR.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
end;
end;
end;
end;
procedure TFormOsCores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormOsCores.btnNovoClick(Sender: TObject);
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

   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(ID_OS_EQUIPAMENTO_COR) as N_CODIGO FROM OS_BEM_COR');
   DM.ProxCod.Open;

   DMOS.SDS_OSCOR.Insert;
   DMOS.SDS_OScorID_OS_EQUIPAMENTO_COR.AsInteger:=DM.ProxCodN_CODIGO.ASINTEGER + 1;
   DMOS.SDS_OSCORUSERCAD.Text:= FormPrincipal.UserLogado;
   DMOS.SDS_OSCORDATACAD.Text:= datetostr(now);
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

procedure TFormOsCores.btnEditarClick(Sender: TObject);
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
     DMOS.SDS_OSCOR.Edit;
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
procedure TFormOsCores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
Formoscores:=nil;
end;

procedure TFormOsCores.DBEdit2Enter(Sender: TObject);
begin
  inherited;
CorEntrada(Sender);
end;

procedure TFormOsCores.DBEdit2Exit(Sender: TObject);
begin
  inherited;
CorSaida(Sender);
end;

procedure TFormOsCores.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if DMOS.SDS_OSCOR.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
     MsgInformacao.Execute;
   CanClose := False;
end;
end;
procedure TFormOsCores.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if not odd(DMOS.SDS_OScor.RecNo) then
  if not (gdselected in State) then
    begin
    suiDBGrid1.Canvas.Brush.Color := $00FFEFDF;
    suiDBGrid1.Canvas.FillRect(Rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

end.
