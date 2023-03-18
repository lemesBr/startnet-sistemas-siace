unit OsPrioridades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls,  RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  FormPadrai, TaskDialog, sDBNavigator, sBitBtn, sPanel, acDBGrid,
  sDBEdit, sLabel, AdvSmoothMessageDialog, AdvGlowButton;

type
  TFormOsPrioridades = class(TFormPadrao)
    Label1: TsLabel;
    DBEdit1: TsDBEdit;
    Label2: TsLabel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormOsPrioridades: TFormOsPrioridades;

implementation
uses dmos1, Z_RotinasGerais, Principal, ModulodeDados;

{$R *.dfm}

procedure TFormOsPrioridades.FormShow(Sender: TObject);
begin
  inherited;
dmos.Sds_Prioridade.active := false;
dmos.sds_Prioridade.active := True;
panel1.Enabled := false;
end;

Procedure TFormOSPrioridades.AtualizaManutencao;
begin
DBNavigator.Enabled:= (dmos.sds_prioridade.State = dsBrowse);
BTNNOVO.Enabled:= (dmos.sds_prioridade.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dmos.sds_prioridade.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (dmos.sds_prioridade.State = dsBrowse);
BTNSALVAR.Enabled:= (dmos.sds_prioridade.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dmos.sds_prioridade.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (dmos.sds_prioridade.State = dsBrowse);
end;

procedure TFormOSPrioridades.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;
procedure TFormOsPrioridades.btnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     dmos.sds_prioridade.Cancel;
 if dmos.sds_prioridade.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DBEdit2.Color:= $00E8E8E8;
     panel1.Enabled := false;
   Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;


procedure TFormOsPrioridades.btnSalvarClick(Sender: TObject);
begin
  inherited;
 Try
      begin

          dmos.sds_prioridade.Post;
          dmos.sds_prioridade.ApplyUpdates(0);
          AtualizaManutencao;
          DBEdit2.Color:= $00E8E8E8;
          panel1.Enabled := false;
      end;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;

procedure TFormOsPrioridades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
FormosPrioridades:=nil;
end;

procedure TFormOsPrioridades.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if dmos.sds_prioridade.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
     MsgInformacao.Execute;
   CanClose := False;
end;
end;

procedure TFormOsPrioridades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormOsPrioridades.DBEdit2Enter(Sender: TObject);
begin
  inherited;
corEntrada(sender);
end;

procedure TFormOsPrioridades.DBEdit2Exit(Sender: TObject);
begin
  inherited;
corSaida(sender);
end;



procedure TFormOsPrioridades.btnExcluirClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if Application.MESSAGEBOX('Confirma a Exclusão', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then

begin
panel1.Enabled := false;
Try
 Begin
    dmos.sds_prioridade.Delete;
    dmos.sds_prioridade.ApplyUpdates(0);
 end;
 if dmos.sds_prioridade.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
end;
end;
end;

END;

procedure TFormOsPrioridades.btnNovoClick(Sender: TObject);
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
   dm.ProxCod.SQL.Add('select max(ID_OS_PRIORIDADE) as N_CODIGO FROM OS_PRIORIDADE');
   DM.ProxCod.Open;

   dmos.sds_prioridade.Insert;
   dmos.Sds_PrioridadeID_OS_PRIORIDADE.AsInteger:=DM.ProxCodN_CODIGO.ASINTEGER + 1;
   dmos.sds_prioridadeUSERCAD.Text:= FormPrincipal.UserLogado;
   dmos.sds_prioridadeDATACAD.Text:= datetostr(now);
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

procedure TFormOsPrioridades.btnEditarClick(Sender: TObject);
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
     dmos.sds_prioridade.Edit;
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
procedure TFormOsPrioridades.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if not odd(DMOS.Sds_Prioridade.RecNo) then
  if not (gdselected in State) then
    begin
    suiDBGrid1.Canvas.Brush.Color := $00FFEFDF;
    suiDBGrid1.Canvas.FillRect(Rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

end.
