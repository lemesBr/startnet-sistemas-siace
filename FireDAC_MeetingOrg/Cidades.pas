unit Cidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormPadrai, Grids, DBGrids, SUIDBCtrls, DBCtrls, StdCtrls, Mask,
  SUIDlg, SUIButton, DB, ExtCtrls,  DBClient, SimpleDS,
  TaskDialog, sDBNavigator, Buttons, sBitBtn, sPanel, sDBLookupComboBox,
  sDBEdit, sLabel, aDvSmoothMessageDialog, Data.DBXFirebird;

type
  TFormCidades = class(TFormPadrao)
    DBEdit1: TsDBEdit;
    DBEdit2: TsDBEdit;
    DBLookupComboBox1: TsDBLookupComboBox;
    DBEdit3: TsDBEdit;
    Label1: TsLabel;
    Label2: TsLabel;
    Label3: TsLabel;
    Label4: TsLabel;
    Label6: TsLabel;
    DBEdit4: TsDBEdit;
    Sds_cid: TSimpleDataSet;
    Dts_cid: TDataSource;
    Sds_cidCOD_CIDADE: TIntegerField;
    Sds_cidNOME: TStringField;
    Sds_cidCEP: TStringField;
    Sds_cidCOD_ESTADO: TIntegerField;
    Sds_cidCOD_EMPRESA: TIntegerField;
    Sds_cidUSERCAD: TStringField;
    Sds_cidDATACAD: TDateField;
    DBEdit5: TsDBEdit;
    Label7: TsLabel;
    Panel3: TPanel;
    Label5: TsLabelFX;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnNovoClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormCidades: TFormCidades;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso, ConsCidades;

{$R *.dfm}

Procedure TFormcidades.AtualizaManutencao;
begin
DBNavigator.Enabled:= (dm.sds_cidades.State = dsBrowse);
BTNNOVO.Enabled:= (dm.sds_cidades.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dm.sds_cidades.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (dm.sds_cidades.State = dsBrowse);
BTNSALVAR.Enabled:= (dm.sds_cidades.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dm.sds_cidades.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (dm.sds_cidades.State = dsBrowse);
end;


procedure TFormcidades.HabilitaPanel;
begin
Panel1.Enabled:= True;
end;

procedure TFormcidades.DesabilitaPanel;
begin
panel1.Enabled:= False;
end;

procedure TFormcidades.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;


procedure TFormCidades.FormShow(Sender: TObject);
begin
  inherited;
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
 DM.Sds_cidades.Active := False;
 DM.SDS_Cidades.Active := true;
 DM.SDS_estados.Active := False;
 DM.SDS_estados.Active := true;
 dm.SDS_Empresa.Active := False;
 dm.SDS_Empresa.Active := true;
 Sds_cid.Active := False;
 Sds_cid.Active := True;
 DesabilitaPanel;
 end;

procedure TFormCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
action:= caFree;
formcidades:= nil;
end;

procedure TFormCidades.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if DM.Sds_cidades.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
    MsgInformacao.Execute;
    CanClose := False;
  end;
end;

procedure TFormCidades.btnNovoClick(Sender: TObject);
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
   //Cod:= (DM.SPC_Bancos.ParamByName('ATUAL').AsInteger);
   dm.sds_cidades.Insert;
   DBEdit1.Text:=IntTostr(Cod);
   dm.sds_cidadesUSERCAD.Text:= FormPrincipal.UserLogado;
   dm.sds_cidadesDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DBEdit2.SetFocus;
    Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
end;

procedure TFormCidades.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
DBEdit3.Text := DM.SDS_estadosUF.text;
//DBLookupComboBox1.DropDown;
end;

procedure TFormCidades.DBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
//DBEdit3.Text := DM.SDS_estadosUF.text;
CorSaida(sender);
end;

procedure TFormCidades.btnEditarClick(Sender: TObject);
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
     DM.Sds_cidades.Edit;
     AtualizaManutencao;
     HabilitaPanel;

   DBEdit2.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;

end;
end;

procedure TFormCidades.btnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     DM.Sds_cidades.Cancel;
 if DM.SDS_cidades.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
 
   Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;

procedure TFormCidades.btnSalvarClick(Sender: TObject);
begin
  inherited;
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);
 Try
      begin
        DM.Sds_cidadesCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
        DM.SDS_cidades.Post;
        dM.SDS_cidades.ApplyUpdates(0);
      // DM.SQLC.Commit(TD);
        AtualizaManutencao;
        DesabilitaPanel;
     
        end;

   //raise Exception.CIDADE_JA_EXISTE('CIDADE JA CADASTRADA VERIFIQUE');
   Except
   {On E: Exception Do
    begin
      ShowMessage(E.Message); }
        on E: EDatabaseError do
                ShowMessage(E.Message);
end;
end;


procedure TFormCidades.btnExcluirClick(Sender: TObject);
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
    DM.Sds_cidades.Delete;
    DM.Sds_cidades.ApplyUpdates(0);
  end;
 if DM.Sds_cidades.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
end;
end;
end;
end;

procedure TFormCidades.btnLocalizarClick(Sender: TObject);
begin
  inherited;
Try
if FormConscidades=nil   then
    begin
    FormConscidades:=TFormConscidades.Create(self);
      FormConscidades.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormCidades.DBEdit2Enter(Sender: TObject);
begin
  inherited;
CorEntrada(sender);
end;

procedure TFormCidades.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
CorEntrada(sender);
DBLookupComboBox1.DropDown;
end;

procedure TFormCidades.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
//DBLookupComboBox1.DropDown;
end;

procedure TFormCidades.DBEdit4Enter(Sender: TObject);
begin
  inherited;
CorEntrada(sender);
end;

procedure TFormCidades.DBEdit4Exit(Sender: TObject);
begin
  inherited;
CorSaida(sender);
{    if DM.Sds_cidades.State = dsInsert then
begin
 if SDS_cid.Locate('CEP',DBEdit4.Text, [loCaseInsensitive]) = True then
 BEGIN
 MsgInformacao.Text:= 'Cep Já Cadastrado Por favor Informe outro cep !!!';
 MsgInformacao.Showmodal;
 DBedit2.Clear;
 DBedit2.SetFocus;
  end;
end;}
end;

procedure TFormCidades.DBEdit2Exit(Sender: TObject);
begin
  inherited;
CorSaida(Sender);
    if DM.Sds_cidades.State = dsInsert then
begin
if SDS_cid.Locate('NOME',DBEdit2.Text, [loCaseInsensitive]) = True then
 BEGIN
 MsgInformacao.HTMLText.text:= 'cidade ja Cadastrada com Esta descrição !!!';
 MsgInformacao.Execute;
 DBedit2.Clear;
 DBedit2.SetFocus;
  end;

end; 
end;
procedure TFormCidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
