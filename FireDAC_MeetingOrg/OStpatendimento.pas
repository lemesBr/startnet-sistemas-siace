unit OStpatendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB,  Mask,
  DBCtrls, SUITabControl, RXCtrls,  RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  FormPadrai, SUIRadioGroup, Mylabel, TaskDialog, sDBNavigator, sBitBtn,
  sPanel, sGroupBox, sDBRadioGroup, acDBGrid, sDBEdit, sLabel,
  AdvSmoothMessageDialog;

type
  TFormOSAtendimento = class(TFormPadrao)
    Label1: TsLabel;
    Label2: TsLabel;
    DBEdit2: TsDBEdit;
    DBEdit1: TsDBEdit;
    suiDBGrid1: TsDBGrid;
    suiDBRadioGroup1: TsDBRadioGroup;
    myLabel3d1: TsLabelFX;
    procedure AtualizaManutencao;
    procedure HabilitaNovo;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
  FormOSAtendimento: TFormOSAtendimento;

implementation

uses dmos1, Z_RotinasGerais, Principal, ModulodeDados;

{$R *.dfm}

procedure TFormOSAtendimento.FormShow(Sender: TObject);
begin
  inherited;
dmos.SDS_TPatendimento.active := False;
dmos.SDS_TPatendimento.active := true;
panel1.Enabled := false;
end;

Procedure TFormOSAtendimento.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DMOS.SDS_TPatendimento.State = dsBrowse);
BTNNOVO.Enabled:= (DMOS.SDS_TPatendimento.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DMOS.SDS_TPatendimento.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (DMOS.SDS_TPatendimento.State = dsBrowse);
BTNSALVAR.Enabled:= (DMOS.SDS_TPatendimento.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DMOS.SDS_TPatendimento.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DMOS.SDS_TPatendimento.State = dsBrowse);
end;

procedure TFormOSAtendimento.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormOSAtendimento.btnNovoClick(Sender: TObject);
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
   dm.ProxCod.SQL.Add('select max(ID_OS_TIPO) as N_CODIGO FROM OS_TIPOATENDIMENTO');
   DM.ProxCod.Open;

   DMOS.SDS_TPatendimento.Insert;
   DMOS.SDS_TPatendimentoID_OS_TIPO.AsInteger:=DM.ProxCodN_CODIGO.ASINTEGER + 1;
   DMOS.SDS_TPatendimentoUSERCAD.Text:= FormPrincipal.UserLogado;
   DMOS.SDS_TPatendimentoDATACAD.Text:= datetostr(now);
   AtualizaManutencao;
    panel1.Enabled := true;
   DBEdit2.Color:= clWhite;
   DBEdit2.SetFocus;

   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;  
end;
end;

procedure TFormOSAtendimento.btnEditarClick(Sender: TObject);
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
     DMOS.SDS_TPatendimento.Edit;
     AtualizaManutencao;
     panel1.Enabled := true;
     DBEdit2.Color:= clWhite;
     DBEdit2.SetFocus;

   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
   end;
end;

procedure TFormOSAtendimento.btnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     DMOS.SDS_TPatendimento.Cancel;
 if DMOS.SDS_TPatendimento.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DBEdit2.Color:= $00E8E8E8;
     panel1.Enabled := false;
   Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;


procedure TFormOSAtendimento.btnSalvarClick(Sender: TObject);
begin
  inherited;
 Try
      begin
          DMOS.SDS_TPatendimento.Post;
          DMOS.SDS_TPatendimento.ApplyUpdates(0);
          AtualizaManutencao;
          DBEdit2.Color:= $00E8E8E8;
          panel1.Enabled := false;
      end;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
procedure TFormOSAtendimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
FormOsAtendimento:=nil;
end;

procedure TFormOSAtendimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;



procedure TFormOSAtendimento.btnExcluirClick(Sender: TObject);
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
    DMOS.SDS_TPatendimento.Delete;
    DMOS.SDS_TPatendimento.ApplyUpdates(0);
    panel1.Enabled := false;
 end;
 if DMOS.SDS_TPatendimento.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
end;
end;
end;
end;
procedure TFormOSAtendimento.DBEdit2Enter(Sender: TObject);
begin
  inherited;
corentrada(sender);
end;

procedure TFormOSAtendimento.DBEdit2Exit(Sender: TObject);
begin
  inherited;
corsaida(sender);
end;

procedure TFormOSAtendimento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if DMOS.SDS_tpatendimento.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
     MsgInformacao.Execute;
   CanClose := False;
end;
end;

procedure TFormOSAtendimento.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if not odd(DMOS.SDS_TPatendimento.RecNo) then
  if not (gdselected in State) then
    begin
    suiDBGrid1.Canvas.Brush.Color := $00FFEFDF;
    suiDBGrid1.Canvas.FillRect(Rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

end.
