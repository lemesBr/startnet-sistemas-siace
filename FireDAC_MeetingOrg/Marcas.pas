unit Marcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, stdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls, rxToolEdit, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls,Buttons,ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs;


  type
  TFormMarcas = class(TForm)
    Panel3: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    btnLocalizar: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    pnldados: TPanel;
    RxLabel1: TRxLabel;
    RxLabel4: TRxLabel;
    dbt_codigo: TsuiDBEdit;
    db_nome: TDBEdit;
    MsgInformacao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgErro: TsuiMessageDialog;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure db_nomeEnter(Sender: TObject);
    procedure db_nomeExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormMarcas: TFormMarcas;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso, ConsUnidades,
  ConsMarcas;



{$R *.dfm}


Procedure TFormMarcas.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Marcas.State = dsBrowse);
//Novo1.Enabled:=(DM.SDS_Marcas.State = dsBrowse);
//Editar1.Enabled:=(DM.SDS_Marcas.State = dsBrowse);
//Localizar1/.Enabled:=(DM.SDS_Marcas.State = dsBrowse);
//Salvar1.Enabled:= (DM.SDS_Marcas.State in [dsInsert, dsEdit]);
//Cancelar1.Enabled:=(DM.SDS_Marcas.State in [dsInsert, dsEdit]);
BTNNOVO.Enabled:= (DM.SDS_Marcas.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Marcas.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Marcas.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Marcas.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Marcas.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Marcas.State = dsBrowse);
//Excluir1.Enabled:=(DM.SDS_Marcas.State = dsBrowse)
end;


procedure TFormMarcas.HabilitaPanel;
begin
pnldados.Enabled:= True;
end;

procedure TFormMarcas.DesabilitaPanel;
begin
pnldados.Enabled:= False;

end;

procedure TFormMarcas.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormMarcas.db_nomeEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormMarcas.db_nomeExit(Sender: TObject);
begin
     CorSaida(Sender);
end;

procedure TFormMarcas.btnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM marcas');
   DM.ProxCod.Open;


   DM.SDS_Marcas.Insert;
   DM.SDS_MarcasCODIGO.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;

  // dbt_codigo.Text:=IntTostr(Cod);
   DM.SDS_MarcasUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_MarcasDATACADASTRO.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DB_Nome.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Showmodal;
   end;
end;
end;

procedure TFormMarcas.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Showmodal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_Marcas.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     DB_Nome.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Showmodal;
   end;

end;
end;

procedure TFormMarcas.btnSalvarClick(Sender: TObject);
begin

 Try
      begin
 {  dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MARCAS');
   DM.ProxCod.Open;
   DM.SDS_Marcas.Edit;
   DM.SDS_MarcasCODIGO.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;}

          DM.SDS_Marcas.Post;
          DM.SDS_Marcas.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
          db_nome.Color:= $00E8E8E8;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Showmodal;
   end;

end;

procedure TFormMarcas.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_Marcas.Cancel;
 if DM.SDS_Marcas.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     db_nome.Color:= $00E8E8E8;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Showmodal;
   end;
end;

procedure TFormMarcas.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Showmodal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.Showmodal = mryes then
begin

Try
 Begin
    DM.SDS_Marcas.Delete;
    DM.SDS_Marcas.ApplyUpdates(0);

 end;
 if DM.SDS_Marcas.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Showmodal;
end;
end;
end;
END;

procedure TFormMarcas.FormShow(Sender: TObject);
begin
DM.SDS_Marcas.Active:= False;
DM.SDS_Marcas.Active:= True;
DESABILITAPANEL;
IF DM.SDS_Marcas.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;

end;


procedure TFormMarcas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormMarcas:=nil;
end;

procedure TFormMarcas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Marcas.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.Showmodal;
    CanClose := False;
  end;
end;


procedure TFormMarcas.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsMarcas=nil   then
    begin
    FormConsMarcas:=TFormConsMarcas.Create(self);
      FormConsMarcas.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Conveniados!!');
end;
end;

procedure TFormMarcas.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFormMarcas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

end.
