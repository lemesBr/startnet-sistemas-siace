unit OsBens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls,  RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  FormPadrai, Mylabel, TaskDialog, sDBNavigator, sBitBtn, sPanel, acDBGrid,
  sLabel, sDBLookupComboBox, sDBEdit, AdvSmoothMessageDialog;

type
  TFormOSBem = class(TFormPadrao)
    Label1: TLabel;
    DBEdit1: TsDBEdit;
    DBEdit2: TsDBEdit;
    suiDBGrid1: TsDBGrid;
    Label2: TsLabel;
    DBLookupComboBox1: TsDBLookupComboBox;
    DBLookupComboBox2: TsDBLookupComboBox;
    Label4: TsLabel;
    Label5: TsLabel;
    myLabel3d1: TsLabelFX;
    procedure AtualizaManutencao;
    procedure HabilitaNovo;
    procedure FormShow(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
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
  FormOSBem: TFormOSBem;

implementation

uses DMOS1, Z_RotinasGerais, Principal, ModulodeDados;

{$R *.dfm}

Procedure TFormOSbem.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DMOS.SDS_BEM.State = dsBrowse);
BTNNOVO.Enabled:= (DMOS.SDS_BEM.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DMOS.SDS_BEM.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (DMOS.SDS_BEM.State = dsBrowse);
BTNSALVAR.Enabled:= (DMOS.SDS_BEM.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DMOS.SDS_BEM.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DMOS.SDS_BEM.State = dsBrowse);
end;

procedure TFormOSbem.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormOSBem.FormShow(Sender: TObject);
begin
  inherited;
dmos.sds_bem.active := false;
dmos.sds_bem.active := true;
DMOS.SDS_TipoBens.Active := FALSE;
DMOS.SDS_TipoBens.ACTIVE := TRUE;
DMOS.SDS_OSMarcas.ACTIVE := FALSE;
DMOS.SDS_OSMarcas.ACTIVE := TRUE;
panel1.Enabled := false;
end;

procedure TFormOSBem.DBEdit2Enter(Sender: TObject);
begin
  inherited;
corentrada(sender);
end;

procedure TFormOSBem.DBEdit2Exit(Sender: TObject);
begin
  inherited;
corsaida(sender);
end;

procedure TFormOSBem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
FormOSbem:=nil;
end;

procedure TFormOSBem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormOSBem.btnNovoClick(Sender: TObject);
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
   dm.ProxCod.SQL.Add('select max(ID_OS_EQUIPAMENTOS) as N_CODIGO FROM OS_BENS');
   DM.ProxCod.Open;

   DMOS.SDS_BEM.Insert;
   DMOS.Sds_bemID_OS_EQUIPAMENTOS.AsInteger:= DM.ProxCodN_CODIGO.ASINTEGER + 1;
   DMOS.SDS_BEMUSERCAD.Text:= FormPrincipal.UserLogado;
   DMOS.SDS_BEMDATACAD.Text:= datetostr(now);
   AtualizaManutencao;
   DBEdit2.Color:= clWhite;
   DBLookupComboBox1.color:= clWhite;
   DBLookupComboBox2.Color:= clWhite;
   panel1.Enabled := true;
   DBEdit2.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
end;

procedure TFormOSBem.btnEditarClick(Sender: TObject);
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
     DMOS.SDS_BEM.Edit;
     AtualizaManutencao;
     DBEdit2.Color:= clWhite;
     DBLOOKUPCOMBOBOX1.color:= CLWHITE;
     DBLOOKUPCOMBOBOX2.color:= CLWHITE;
     panel1.Enabled := true;
     DBEdit2.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
 END;
end;

procedure TFormOSBem.btnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     DMOS.SDS_BEM.Cancel;
 if DMOS.SDS_BEM.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DBEdit2.Color:= $00E8E8E8;
     DBLOOKUPCOMBOBOX1.Color:= $00E8E8E8;
     DBLOOKUPCOMBOBOX2.Color:= $00E8E8E8;
     panel1.Enabled := false;
   Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;

procedure TFormOSBem.btnSalvarClick(Sender: TObject);
begin
  inherited;

 Try
      begin
          DMOS.SDS_BEM.Post;
          DMOS.SDS_BEM.ApplyUpdates(0);
          AtualizaManutencao;
          DBEdit2.Color:= $00E8E8E8;
          DBLOOKUPCOMBOBOX1.color:= $00E8E8E8;
          DBLOOKUPCOMBOBOX2.color:= $00E8E8E8;
          panel1.Enabled := false;
      end;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;


procedure TFormOSBem.btnExcluirClick(Sender: TObject);
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
    DMOS.SDS_BEM.Delete;
    DMOS.SDS_BEM.ApplyUpdates(0);
    panel1.Enabled := false;
 end;
 if DMOS.SDS_BEM.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
end;
end;
end;
end;
procedure TFormOSBem.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormOSBem.DBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormOSBem.DBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormOSBem.DBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormOSBem.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if DMOS.SDS_BEM.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
     MsgInformacao.Execute;
   CanClose := False;
//  if application.messagebox('Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!  ', 'Atenção', mb_yesno + mb_iconquestion +
//    mb_defbutton2) = id_yes then
//MESSAGEDLG('Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!!', mtError, [mbOk], 0);
  end;
end;



procedure TFormOSBem.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if not odd(DMOS.Sds_bem.RecNo) then
  if not (gdselected in State) then
    begin
    suiDBGrid1.Canvas.Brush.Color := $00FFEFDF;
    suiDBGrid1.Canvas.FillRect(Rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

end.
