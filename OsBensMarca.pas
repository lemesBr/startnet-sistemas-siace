unit OsBensMarca;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls,  StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls,  RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  FormPadrai, TaskDialog, sDBNavigator, sBitBtn, sPanel, acDBGrid,
  sDBEdit, sLabel, AdvSmoothMessageDialog, AdvGlowButton;

type
  TFormOsMarca = class(TFormPadrao)
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
  FormOsMarca: TFormOsMarca;


implementation
uses dmos1, Z_RotinasGerais, Principal, ModulodeDados;

{$R *.dfm}

procedure TFormOsMarca.FormShow(Sender: TObject);
begin
  inherited;
dmos.Sds_OsMarcas.active := false;
dmos.sds_osMarcas.active := True;
panel1.Enabled := false;
end;

Procedure TFormOSmarca.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DMOS.SDS_OSMARCAS.State = dsBrowse);
BTNNOVO.Enabled:= (DMOS.SDS_OSMARCAS.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DMOS.SDS_OSMARCAS.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (DMOS.SDS_OSMARCAS.State = dsBrowse);
BTNSALVAR.Enabled:= (DMOS.SDS_OSMARCAS.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DMOS.SDS_OSMARCAS.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DMOS.SDS_OSMARCAS.State = dsBrowse);
end;

procedure TFormOSMarca.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
END;
procedure TFormOsMarca.btnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     DMOS.SDS_OSMARCAS.Cancel;
 if DMOS.SDS_OSMARCAS.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DBEdit2.Color:= $00E8E8E8;
     panel1.Enabled := false;
   Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;


procedure TFormOsMarca.btnSalvarClick(Sender: TObject);
begin
  inherited;
 Try
      begin

          DMOS.SDS_OSMARCAS.Post;
          DMOS.SDS_OSMARCAS.ApplyUpdates(0);
          AtualizaManutencao;
          DBEdit2.Color:= $00E8E8E8;
          panel1.Enabled := false;
      end;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;

   end;
end;

procedure TFormOsMarca.btnExcluirClick(Sender: TObject);
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

panel1.Enabled := false;
Try
 Begin
    DMOS.SDS_OSMARCAS.Delete;
    DMOS.SDS_OSMARCAS.ApplyUpdates(0);
 end;
 if DMOS.SDS_OSMARCAS.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
            MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
end;
end;
end;

end;
procedure TFormOsMarca.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormOsMarca.btnNovoClick(Sender: TObject);
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
   dm.ProxCod.SQL.Add('select max(ID_OS_EQUIPAMENTO_MARCAS) as N_CODIGO FROM OS_BENS_MARCAS');
   DM.ProxCod.Open;


   DMOS.SDS_OSmarcas.Insert;
   DMOS.SDS_OSMarcasID_OS_EQUIPAMENTO_MARCAS.AsInteger :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
   DMOS.SDS_OSMarcasUSERCAD.Text:= FormPrincipal.UserLogado;
   DMOS.SDS_OSmARCASDATACAD.Text:= datetostr(now);
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

procedure TFormOsMarca.btnEditarClick(Sender: TObject);
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
     DMOS.SDS_OSmarcas.Edit;
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
procedure TFormOsMarca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
Formosmarca:=nil;
end;

procedure TFormOsMarca.DBEdit2Enter(Sender: TObject);
begin
  inherited;
CorEntrada(Sender);
end;

procedure TFormOsMarca.DBEdit2Exit(Sender: TObject);
begin
  inherited;
CorSaida(Sender);
end;

procedure TFormOsMarca.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if DMOS.SDS_OSmarcas.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
     MsgInformacao.Execute;
   CanClose := False;
end;
end;

procedure TFormOsMarca.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if not odd(DMOS.sds_Osmarcas.RecNo) then
  if not (gdselected in State) then
    begin
    suiDBGrid1.Canvas.Brush.Color := $00FFEFDF;
    suiDBGrid1.Canvas.FillRect(Rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

end.
