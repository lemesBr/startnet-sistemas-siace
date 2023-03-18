unit Unidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls, rxToolEdit, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls,Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  XDBCtrls, AdvGlowButton;


  type
  TFormUnidades = class(TForm)
    pnldados: TPanel;
    RxLabel1: TRxLabel;
    RxLabel4: TRxLabel;
    dbt_codigo: TDBEdit;
    Panel3: TPanel;
    RxLabel5: TRxLabel;
    btnNovo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnExcluir: TAdvGlowButton;
    btnLocalizar: TAdvGlowButton;
    DBNavigator: TXDBNavigator;
    DBEdit1: TDBEdit;
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
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormUnidades: TFormUnidades;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso, ConsClientes,
  ConsUnidades;



{$R *.dfm}


Procedure TFormUnidades.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Unidades.State = dsBrowse);
//Editar1.Enabled:=(DM.SDS_Unidades.State = dsBrowse);
//Localizar1.Enabled:=(DM.SDS_Unidades.State = dsBrowse);
//Salvar1.Enabled:= (DM.SDS_Unidades.State in [dsInsert, dsEdit]);
//Cancelar1.Enabled:=(DM.SDS_Unidades.State in [dsInsert, dsEdit]);
BTNNOVO.Enabled:= (DM.SDS_Unidades.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Unidades.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Unidades.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Unidades.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Unidades.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Unidades.State = dsBrowse);
//Excluir1.Enabled:=(DM.SDS_Unidades.State = dsBrowse)
end;


procedure TFormUnidades.HabilitaPanel;
begin
pnldados.Enabled:= True;
//Panel2.Enabled:= False;
end;

procedure TFormUnidades.DesabilitaPanel;
begin
pnldados.Enabled:= False;
//Panel2.Enabled:= True;

end;

procedure TFormUnidades.HabilitaNovo;
begin
//Novo1.Enabled:=True;
//Editar1.Enabled:=False;
//Excluir1.Enabled:=False;
//Localizar1.Enabled:=False;
//Salvar1.Enabled:= False;
//Cancelar1.Enabled:=False;
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormUnidades.db_nomeEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormUnidades.db_nomeExit(Sender: TObject);
begin
     CorSaida(Sender);
end;

procedure TFormUnidades.btnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
 {  DM.SPC_Unidades.ExecProc;  }
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM UNIDADES');
                    DM.ProxCod.Open;

   Cod:= (DM.ProxCodN_CODIGO.ASINTEGER + 1);

   DM.SDS_Unidades.Insert;
   DM.SDS_UnidadesCODIGO.Text:=IntTostr(Cod);
   DM.SDS_UnidadesUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_UnidadesDATACADASTRO.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   db_nome.Color:= clWhite;
   DBEdit1.Color:= clWhite;
   DBEdit1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormUnidades.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_Unidades.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     db_nome.Color:= clWhite;
     DBEdit1.Color:= clWhite;
     DBEdit1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormUnidades.btnSalvarClick(Sender: TObject);
begin
// Try
      begin

          DM.SDS_Unidades.Post;
          DM.SDS_Unidades.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
          db_nome.Color:= $00E8E8E8;
          DBEdit1.Color:= $00E8E8E8;
      end;
  { Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end; }

end;

procedure TFormUnidades.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_Unidades.Cancel;
 if DM.SDS_Unidades.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     db_nome.Color:= $00E8E8E8;
     DBEdit1.Color:= $00E8E8E8;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormUnidades.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.ShowModal = mryes then
begin

Try
 Begin
    DM.SDS_Unidades.Delete;
    DM.SDS_Unidades.ApplyUpdates(0);

 end;
 if DM.SDS_Unidades.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except

      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
END;

procedure TFormUnidades.FormShow(Sender: TObject);
begin
DM.SDS_Unidades.Active:= False;
DM.SDS_Unidades.Active:= True;
DESABILITAPANEL;
IF DM.SDS_Unidades.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;

end;


procedure TFormUnidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormUnidades:=nil;
end;

procedure TFormUnidades.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Unidades.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;


procedure TFormUnidades.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsUnidades=nil   then
    begin
    FormConsUnidades:=TFormConsUnidades.Create(self);
      FormConsUnidades.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Conveniados!!');
end;
end;

procedure TFormUnidades.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFormUnidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormUnidades.DBEdit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormUnidades.DBEdit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

end.
