unit OsTipoBens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  FormPadrai, Mylabel, TaskDialog, sDBNavigator, sBitBtn, sPanel, acDBGrid,
  sDBEdit, sLabel, AdvSmoothMessageDialog;



type
  TFormOsTpBens = class(TFormPadrao)
    DBEdit1: TsDBEdit;
    DBEdit2: TsDBEdit;
    Label1: TsLabel;
    Label2: TsLabel;
    suiDBGrid1: TsDBGrid;
    myLabel3d1: TsLabelFX;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaNovo;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
  FormOsTpBens: TFormOsTpBens;

implementation

uses  DMOS1, Z_RotinasGerais, Principal, Acesso, ModulodeDados;

{$R *.dfm}

Procedure TFormOStpBens.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DMOS.SDS_TipoBens.State = dsBrowse);
BTNNOVO.Enabled:= (DMOS.SDS_TipoBens.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DMOS.SDS_TipoBens.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (DMOS.SDS_TipoBens.State = dsBrowse);
BTNSALVAR.Enabled:= (DMOS.SDS_TipoBens.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DMOS.SDS_TipoBens.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DMOS.SDS_TipoBens.State = dsBrowse);
end;

procedure TFormostpBens.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormOsTpBens.FormShow(Sender: TObject);
begin
  inherited;
DMOS.SDS_TIPOBENS.ACTIVE := FALSE;
DMOS.SDS_TIPOBENS.ACTIVE := TRUE;
panel1.Enabled := false;
end;

procedure TFormOsTpBens.btnNovoClick(Sender: TObject);
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
 //  DMOS.SPC_TipoBens.ExecProc;
 //  Cod:= (DMOS.SPC_TipoBens.ParamByName('ATUAL').AsInteger);
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(ID_OS_EQUIPAMENTO_TIPO) as N_CODIGO FROM OS_BENS_TIPO');
   DM.ProxCod.Open;

   DMOS.SDS_TipoBens.Insert;
   DMOS.SDS_TipoBensID_OS_EQUIPAMENTO_TIPO.AsInteger:=DM.ProxCodN_CODIGO.ASINTEGER + 1;
   DMOS.SDS_TipoBensUSERCAD.Text:= FormPrincipal.UserLogado;
   DMOS.SDS_TipoBensDATACAD.Text:= datetostr(now);
//   HabilitaPanel;
   AtualizaManutencao;
//   dbedit1.Color:= clWhite;
   DBEdit2.Color:= clWhite;
   panel1.Enabled := true;
   dbedit2.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
end;

procedure TFormOsTpBens.btnEditarClick(Sender: TObject);
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
     DMOS.SDS_TipoBens.Edit;
    AtualizaManutencao;
//     HabilitaPanel;
     panel1.Enabled := true;
     dbEdit2.Color:= clWhite;
//     suiDBEdit2.Color:= clWhite;
     dbEdit2.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;

end;
end;



procedure TFormOsTpBens.btnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     DMos.SDS_TipoBens.Cancel;
 if DMos.SDS_TipoBens.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
//     DesabilitaPanel;
     dbEdit2.Color:= $00E8E8E8;
//     suiDBEdit2.Color:= $00E8E8E8;
     panel1.Enabled := false;
   Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;



procedure TFormOsTpBens.btnSalvarClick(Sender: TObject);
begin
  inherited;

 Try
      begin
          DMos.SDS_tipoBens.Post;
          DMos.SDS_tipoBens.ApplyUpdates(0);

          AtualizaManutencao;
//          DesabilitaPanel;
          DBEDIT2.Color:= $00E8E8E8;
//     suiDBEdit2.Color:= $00E8E8E8;
          panel1.Enabled := false;
      end;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;

end;

procedure TFormOsTpBens.btnExcluirClick(Sender: TObject);
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
    DMOS.SDS_TIPOBENS.Delete;
    DMOS.SDS_TIPOBENS.ApplyUpdates(0);
    panel1.Enabled := false;
 end;
 if DMOS.SDS_TIPOBENS.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
end;
end;
end;
end;
procedure TFormOsTpBens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormOsTpBens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
FormOStpBens:=nil;
end;

procedure TFormOsTpBens.DBEdit2Enter(Sender: TObject);
begin
  inherited;
CorEntrada(Sender);
end;

procedure TFormOsTpBens.DBEdit2Exit(Sender: TObject);
begin
  inherited;
CorSaida(Sender);
end;

procedure TFormOsTpBens.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if DMOS.SDS_TIPOBENS.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
     MsgInformacao.Execute;
   CanClose := False;
end;
end;

procedure TFormOsTpBens.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if not odd(DMOS.SDS_TipoBens.RecNo) then
  if not (gdselected in State) then
    begin
    suiDBGrid1.Canvas.Brush.Color := $00FFEFDF;
    suiDBGrid1.Canvas.FillRect(Rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

end.
