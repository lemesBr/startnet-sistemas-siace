unit bairros;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormPadrai, Grids, DBGrids, SUIDBCtrls, DBCtrls, StdCtrls, Mask,
  SUIDlg, SUIButton, DB, DBXpress, ExtCtrls, DBClient, SimpleDS,
  RXDBCtrl, ComCtrls, TaskDialog, sDBNavigator, Buttons, sBitBtn, sPanel,
  sEdit, acDBGrid, sDBEdit, sDBLookupComboBox, sLabel, sPageControl,
  FDvSmoothMessageDialog;


type
  TFormBairros = class(TFormPadrao)
    DBEdit1: TsDBEdit;
    DBEdit2: TsDBEdit;
    DBLookupComboBox1: TsDBLookupComboBox;
    Panel4: TPanel;
    Label5: TsLabelFX;
    Label2: TsLabel;
    Label1: TsLabel;
    Label3: TsLabel;
    RxDBGrid1: TsDBGrid;
    PageControl1: TsPageControl;
    TabSheet1: TsTabSheet;
    TabSheet2: TsTabSheet;
    Edit1: TsEdit;
    Label4: TsLabel;
    Panel3: TsPanel;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
    
  end;

var
  FormBairros: TFormBairros;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, Z_RotinasGerais, ModulodeDadosConsultas, Principal,
  ConsBairros;


{$R *.dfm}

Procedure TFormbairros.AtualizaManutencao;
begin
DBNavigator.Enabled:= (dm.sds_bairro.State = dsBrowse);
BTNNOVO.Enabled:= (dm.sds_bairro.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dm.sds_bairro.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (dm.sds_bairro.State = dsBrowse);
BTNSALVAR.Enabled:= (dm.sds_bairro.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dm.sds_bairro.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (dm.sds_bairro.State = dsBrowse);
end;


procedure TFormbairros.HabilitaPanel;
begin
Panel3.Enabled:= True;
end;

procedure TFormbairros.DesabilitaPanel;
begin
Panel3.Enabled:= False;

end;

procedure TFormbairros.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;
procedure TFormBairros.btnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     dm.sds_bairro.Cancel;
     if dm.sds_bairro.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     DBEdit1.Color:= clBtnFace;
     DBEdit2.Color:= clBtnFace;
     DBLookupComboBox1.Color:= clBtnFace;
     RxDBGrid1.Color := clBtnFace;
     Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
   end;
end;


procedure TFormBairros.btnSalvarClick(Sender: TObject);
begin
  inherited;
If DBLookupComboBox1.text = '' then
begin
 MessageDlg('Informe a Cidade', mtInformation,[mbOk], 0);
DBLookupComboBox1.SetFocus;
end else
 Try
      begin
        dm.sds_bairroCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
        dm.sds_bairro.Post;
        dm.sds_bairro.ApplyUpdates(0);
        AtualizaManutencao;
        DesabilitaPanel;
        DBEdit1.Color:= clBtnFace;
        DBEdit2.Color:= clBtnFace;
        RxDBGrid1.Color := clBtnFace;
        DBLookupComboBox1.Color:= clBtnFace;
        end;

   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;

end;

procedure TFormBairros.btnExcluirClick(Sender: TObject);
begin
  inherited;
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
Try
 Begin
    dm.sds_bairro.Delete;
    dm.sds_bairro.ApplyUpdates(0);
    DM.SQLC.Commit(TD);
 end;
 if dm.sds_bairro.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      DM.SQLC.Rollback(TD);
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
end;
end;

procedure TFormBairros.btnNovoClick(Sender: TObject);
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
   dm.ProxCod.SQL.Add('select max(COD_BAIRRO) as N_CODIGO FROM BAIRRO');
   DM.ProxCod.Open;

   dm.sds_bairro.Insert;
   dm.Sds_bairroCOD_BAIRRO.AsFloat :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
   dm.sds_bairroUSERCAD.Text:= FormPrincipal.UserLogado;
   dm.sds_bairroDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DBEdit1.Color:= clWhite;
   DBEdit2.Color:= clWhite;
   RxDBGrid1.Color := clWhite;
   DBLookupComboBox1.Color:= clWhite;
   DBEdit2.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
end;

procedure TFormBairros.FormShow(Sender: TObject);
begin
  inherited;
SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
     DM.sds_cidades.Active := False;
     DM.sds_cidades.Active := true;
     dm.sds_bairro.Active := False;
     dm.sds_bairro.Active := true;
     //dm.SDS_Empresa.Active := False;
     //DM.SDS_Empresa.Active := True;
     DesabilitaPanel;

end;

procedure TFormBairros.btnLocalizarClick(Sender: TObject);
begin
  inherited;
TRY
  if FormConsBairros=nil   then
    begin
    FormConsbairros:=TFormConsBairros.Create(self);
      FormConsBAIRROS.ShowModal;
      end;
      except
        ShowMessage('Erro ao exibir o Formulario!!!');
        end;
    
end;

procedure TFormBairros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=caFree;
FormBairros:=nil;
end;

procedure TFormBairros.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if dm.sds_bairro.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
    MsgInformacao.Execute;
    CanClose := False;
  end;
end;

procedure TFormBairros.btnEditarClick(Sender: TObject);
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
     dm.sds_bairro.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     DBEdit1.Color:= clWhite;
   DBEdit2.Color:= clWhite;
   DBLookupComboBox1.Color:= clWhite;
      RxDBGrid1.Color := clWhite;
   DBEdit2.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;

end;
end;
procedure TFormBairros.DBEdit2Enter(Sender: TObject);
begin
  inherited;
CorEntrada(Sender);
end;

procedure TFormBairros.DBEdit2Exit(Sender: TObject);
begin
  inherited;
CorSaida(Sender);
end;

procedure TFormBairros.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
CorEntrada(Sender);

end;

procedure TFormBairros.DBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
CorSaida(sender);
end;

procedure TFormBairros.Edit1Change(Sender: TObject);
begin
  inherited;
dm.sds_bairro.locate('DESCRICAO',Edit1.Text,[lopartialkey,loCaseinSensitive]);
end;

procedure TFormBairros.Edit1Exit(Sender: TObject);
begin
  inherited;
RxDBGrid1.SetFocus;
end;

procedure TFormBairros.RxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
TabSheet1.PageControl.ActivePageIndex :=0;
end;

procedure TFormBairros.RxDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key=#13) then
      begin
      TabSheet1.PageControl.ActivePageIndex := 0;
   end;

end;

procedure TFormBairros.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if key=#13 then
   begin
  // key:=#0;
   selectnext(activecontrol,True,True);
end;
end;

procedure TFormBairros.FormKeyPress(Sender: TObject; var Key: Char);
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
