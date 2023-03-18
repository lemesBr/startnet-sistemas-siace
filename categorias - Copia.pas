unit categorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, stdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus, ImgList, SUIDlg, DB, DBTables, Mask,
  DBCtrls, SUITabControl, RXCtrls, ToolEdit, RXDBCtrl, SUIPageControl,
  Grids, DBGrids, ComCtrls, Buttons, DBXpress, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  FormPadrai, EDBNum, TaskDialog, sDBNavigator, sBitBtn, sPanel, sDBEdit,
  CurrEdit, sGroupBox, sLabel, FDvSmoothMessageDialog;


type
  TFormCategorias = class(TFormPadrao)
    Label1: TsLabel;
    Label2: TsLabel;
    GroupBox1: TsGroupBox;
    Label3: TLabel;
    Label4: TsLabel;
    Label5: TsLabel;
    DBCodigo: TsDBEdit;
    DBDescricao: TsDBEdit;
    DBavista: TRxDBCalcEdit;
    DBPrazo: TRxDBCalcEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure AtualizaManutencao;
//    procedure HabilitaPanel;
//    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBDescricaoEnter(Sender: TObject);
    procedure DBDescricaoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure DBAvistaChange(Sender: TObject);
    procedure DBPrazoChange(Sender: TObject);
    procedure EvDBNumEdit1Enter(Sender: TObject);
    procedure EvDBNumEdit1Exit(Sender: TObject);
    procedure EvDBNumEdit2Exit(Sender: TObject);
    procedure EvDBNumEdit2Enter(Sender: TObject);
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    
  private
    { Private declarations }
  public
    { Public declarations }
     Cod:Integer;
  end;

var
  FormCategorias: TFormCategorias;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso,
  ConsCategoria, ConsBancos;

{$R *.dfm}

procedure TFormCategorias.HabilitaPanel;
begin
Panel1.Enabled := True;
end;

procedure TFormCategorias.DesabilitaPanel;
begin
Panel1.Enabled := false;
end;

Procedure TFormCategorias.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Categoria.State = dsBrowse);
BTNNOVO.Enabled:= (DM.SDS_Categoria.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Categoria.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Categoria.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Categoria.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Categoria.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Categoria.State = dsBrowse);
end;

procedure TFormCategorias.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormCategorias.btnNovoClick(Sender: TObject);
begin
//If FormLibAcesso..Label3.Caption ='N'then
//begin
//MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
//MsgInformacao.ShowModal;
//End;
//if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM categorias');
   DM.ProxCod.Open;

   DM.SDS_Categoria.Insert;
  // dbcodigo.Text:=IntTostr(Cod);
   DM.SDS_CategoriaCODIGO.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;

   DM.SDS_CategoriaUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_CategoriaDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   dbDescricao.Color:= clWhite;
   dbAvista.Color:= clWhite;
   dbPrazo.Color:= clWhite;
   dbDescricao.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;

end;

procedure TFormCategorias.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Execute;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_Categoria.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     dbDescricao.Color:= clWhite;
     dbAvista.Color:= clWhite;
     dbpRAZO.Color:= clWhite;
     dbDescricao.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
end;

procedure TFormCategorias.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_Categoria.Cancel;
 if DM.SDS_Categoria.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     dbdescricao.Color:= $00E8E8E8;
     dbAvista.Color:= $00E8E8E8;
     dbprazo.Color:= $00E8E8E8;
   Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;

procedure TFormCategorias.btnSalvarClick(Sender: TObject);
begin

 Try  
        begin
  { dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM categorias');
   DM.ProxCod.Open;
   DM.SDS_Categoria.Edit;
   DM.SDS_CategoriaCODIGO.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1; }


          DM.SDS_Categoria.Post;
          DM.SDS_Categoria.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
     dbDescricao.Color:= $00E8E8E8;
     dbavista.Color:= $00E8E8E8;
     dbprazo.Color:= $00E8E8E8;
      end;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;

procedure TFormCategorias.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
//if MsgConfirmacao.ShowModal = mryes then
if Application.MESSAGEBOX('Confirma a Exclusão da Categoria?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
Try
 Begin
    DM.SDS_Categoria.Delete;
    DM.SDS_Categoria.ApplyUpdates(0);
    DM.SQLC.Commit(TD);
 end;
 if DM.SDS_Categoria.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      DM.SQLC.Rollback(TD);
            MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
end;
end;
end;
end;

procedure TFormCategorias.DBDescricaoEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormCategorias.DBDescricaoExit(Sender: TObject);
begin
CorSaida(Sender);
end;


procedure TFormCategorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormCategorias:=nil;
end;

procedure TFormCategorias.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Categoria.State in [dsInsert, dsEdit, dsSetKey] then
  begin
     MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.Execute;
    CanClose := False;
  end;

end;

procedure TFormCategorias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

if (BtnLocalizar.Enabled = True)then
begin
   if (Key=VK_F2) then
      begin
      btnLocalizarClick(Sender);
      end;
end;
end;
procedure TFormCategorias.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormCategorias.FormShow(Sender: TObject);
begin
DM.SDS_Categoria.Active:= False;
DM.SDS_Categoria.Active:= True;
DESABILITAPANEL;
IF DM.SDS_Categoria.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;

end;

procedure TFormCategorias.btnLocalizarClick(Sender: TObject);
begin
//Try
//if FormConsBancos=nil   then
//    begin
    FormConsCategoria:=TFormConsCategoria.Create(self);
      FormConsCategoria.ShowModal;
      end;
//      except
//       ShowMessage('Erro ao Tentar Exibir o Formulário!!');



procedure TFormCategorias.DBAvistaChange(Sender: TObject);
begin
//DBavista.Text := FloatToStrf(StrToFloat(DbAvista.Text),ffnumber,18,2);
end;

procedure TFormCategorias.DBPrazoChange(Sender: TObject);
begin
//DBPrazo.Text := FloatToStrf(StrToFloat(Dbprazo.Text),ffnumber,18,2);
end;

procedure TFormCategorias.EvDBNumEdit1Enter(Sender: TObject);
begin
//CorEntrada(Sender)
dBaVISTA.Color:= CLyELLOW;
end;

procedure TFormCategorias.EvDBNumEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCategorias.EvDBNumEdit2Exit(Sender: TObject);
begin
  inherited;
CorSaida(Sender);
end;

procedure TFormCategorias.EvDBNumEdit2Enter(Sender: TObject);
begin
  inherited;
dBPrazo.Color:= CLyELLOW;
end;

end.

