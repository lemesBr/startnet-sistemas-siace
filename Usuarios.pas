unit Usuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus,  ImgList,  StdCtrls, Mask,
  DBCtrls, SUIDBCtrls, RXCtrls, SUIButton,  SUIGroupBox,
  SUIRadioGroup, SUIDlg, DB, TaskDialog, Buttons,
  sBitBtn, sPanel, sDBNavigator, aDvOfficePager;

type
  TFormUsuarios = class(TForm)
    pnldados: TPanel;
    Panel2: TPanel;
    DBNavigator: TsDBNavigator;
    btnNovo: TsBitBtn;
    btnCancelar: TsBitBtn;
    RxLabel1: TRxLabel;
    dbt_codigo: TDBEdit;
    RxLabel4: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    btnExcluir: TsBitBtn;
    btnLocalizar: TsBitBtn;
    db_nome: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    suiButton1: TsBitBtn;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    RxLabel5: TRxLabel;
    DBEdit4: TDBEdit;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    btnSalvar: TsBitBtn;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    FDvOfficePager1: TAdvOfficePager;
    FDvOfficePager11: TAdvOfficePage;
    FDvOfficePager12: TAdvOfficePage;
    DBCheckBox15: TDBCheckBox;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    Procedure AtualizaManutencao;
    procedure HabilitaNovo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure db_nomeEnter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure db_nomeExit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure suiDBRadioGroup3Enter(Sender: TObject);
    procedure suiDBRadioGroup2Enter(Sender: TObject);
    procedure suiDBRadioGroup1Enter(Sender: TObject);
    procedure suiDBRadioGroup3Exit(Sender: TObject);
    procedure suiDBRadioGroup2Exit(Sender: TObject);
    procedure suiDBRadioGroup1Exit(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuarios: TFormUsuarios;


implementation

uses ModulodeDados, Principal, Z_RotinasGerais, ConsUsuarios,
  Z_CriptDecript;

{$R *.dfm}

procedure TFormUsuarios.HabilitaPanel;
begin
pnldados.Enabled:= True;
FDvOfficePager11.Enabled := True;
FDvOfficePager12.Enabled := True;
end;

procedure TFormUsuarios.DesabilitaPanel;
begin
pnldados.Enabled:= False;
FDvOfficePager11.Enabled := False;
FDvOfficePager12.Enabled := false;
end;

Procedure TFormUsuarios.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Usuarios.State = dsBrowse);
//Novo1.Enabled:=(DM.SDS_Usuarios.State = dsBrowse);
//Editar1.Enabled:=(DM.SDS_Usuarios.State = dsBrowse);
//Localizar1.Enabled:=(DM.SDS_Usuarios.State = dsBrowse);
//Salvar1.Enabled:= (DM.SDS_Usuarios.State in [dsInsert, dsEdit]);
//Cancelar1.Enabled:=(DM.SDS_Usuarios.State in [dsInsert, dsEdit]);
BTNNOVO.Enabled:= (DM.SDS_Usuarios.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Usuarios.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Usuarios.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Usuarios.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Usuarios.State in [dsInsert, dsEdit]);
//BTNEDITAR.Enabled:= (DM.SDS_Usuarios.State = dsBrowse);
//Excluir1.Enabled:=(DM.SDS_Usuarios.State = dsBrowse)
end;

procedure TFormUsuarios.HabilitaNovo;
begin
//Novo1.Enabled:=True;
//Editar1.Enabled:=False;
//Excluir1.Enabled:=False;
//Localizar1.Enabled:=False;
//Salvar1.Enabled:= False;
//Cancelar1.Enabled:=False;
BTNNOVO.Enabled:=TRUE;
//BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormUsuarios:=nil;
end;

procedure TFormUsuarios.btnNovoClick(Sender: TObject);
VAR
codi: INTEGER;
begin
if FormPrincipal.Label3.Caption ='N'then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   DM.SPC_Usuarios.ExecProc;
   Codi:= (DM.SPC_Usuarios.ParamByName('ATUAL').AsInteger);
   DM.SDS_Usuarios.Insert;
   dbt_codigo.Text:= IntTostr(Codi);
   HabilitaPanel;
   AtualizaManutencao;

  { TD.TransactionID := 1;
   TD.IsolationLevel := XILReadCommitted;
   DM.SQLC.StartTransaction(TD);  }
   db_nome.Color:= ClWhite;
   DBEdit2.Color:= ClWhite;
   DBEdit1.Color:= ClWhite;
   DBEdit3.Color:= ClWhite;
   db_nome.SetFocus;
   Except
   FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgErro.Execute;
   end;
end;
end;

procedure TFormUsuarios.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_Usuarios.Cancel;
 if  DM.SDS_Usuarios.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
   db_nome.Color:= $00E8E8E8;
   DBEdit2.Color:= $00E8E8E8;
   DBEdit1.Color:= $00E8E8E8;
   DBEdit3.Color:= $00E8E8E8;
   Except
      FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgErro.Execute;
   end;
end;

procedure TFormUsuarios.btnSalvarClick(Sender: TObject);
var
Sen : String;
begin
If db_nome.Text = '' then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'Entre com o NOME COMPLETO';
FormPrincipal.MsgInformacao.Execute;
FDvOfficePager1.ActivePageIndex := 0;
db_nome.SetFocus;
end else
if DBEdit2.Text = '' then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'Entre Com a FUNÇÃO do Usuário';
FormPrincipal.MsgInformacao.Execute;
FDvOfficePager1.ActivePageIndex := 0;
DBEdit2.SetFocus;
end else
if DBEdit1.Text = '' then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'Entre Com o Nome do USUÁRIO';
FormPrincipal.MsgInformacao.Execute;
FDvOfficePager1.ActivePageIndex := 0;
DBEdit1.SetFocus;
end else
if DBEdit3.Text = '' then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'Entre Com a SENHA';
FormPrincipal.MsgInformacao.Execute;
FDvOfficePager1.ActivePageIndex := 0;
DBEdit3.SetFocus;
end else
 Try
      begin
      Sen:= wCriptografar(DBEdit3.Text,5);
      DM.SDS_UsuariosSENHA.AsString:= Sen;

      DM.SDS_UsuariosSALDO.Text :='0';
      DM.SDS_UsuariosDATA.AsDateTime := Date;
      DM.SDS_UsuariosSITUACAO.Text := '1';

          DM.SDS_Usuarios.Post;
          DM.SDS_Usuarios.ApplyUpdates(0);

          AtualizaManutencao;
          DesabilitaPanel;
   db_nome.Color:= $00E8E8E8;
   DBEdit2.Color:= $00E8E8E8;
   DBEdit1.Color:= $00E8E8E8;
   DBEdit3.Color:= $00E8E8E8;
     DBEdit1.Enabled := true;
   DBEdit3.Enabled := true;
      end;
   Except
      FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgErro.Execute;
   end;
end;

procedure TFormUsuarios.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
If Application.MESSAGEBOX('Confirma Exclusão?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
    if DM.SDS_UsuariosCODIGO.AsString = '1' then
    begin
     ShowMessage('O USUARIO SIACE NAO PODE SER EXCLUIDO');
     Exit;
    end;
    if DM.SDS_UsuariosCODIGO.AsString = '99' then
    begin
     ShowMessage('O USUARIO CAIXA NAO PODE SER EXCLUIDO');
     Exit;
    end;

    if DM.SDS_UsuariosUSUARIO.AsString = FormPrincipal.UserLogado then
    begin
     ShowMessage('O PROPRIO USUARIO NAO PODE SER EXCLUIDO');
     Exit;
    end;
    dm.SDS_vendas.Close;
    dm.SDS_vendas.SQL.Clear;
    dm.SDS_vendas.SQL.add('select * FROM  pedidos where cod_vendedor = :vendedor');
    dm.SDS_vendas.Params.ParamByName('vendedor').AsInteger := strtoint(DM.SDS_UsuariosCODIGO.AsString);
    dm.SDS_NFCE.open;
    if not DM.sds_vendas.Eof then
    begin
    ShowMessage('O USUARIO POSSIU MOVIMENTAÇÃO NO BANCO DE DADOS... NAO PODE SER EXCLUIDO');
     Exit;
    end else
    begin
    DM.SDS_Usuarios.Delete;
    DM.SDS_Usuarios.ApplyUpdates(0);
    end;

 if DM.SDS_Usuarios.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
{       Except
      FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      FormPrincipal.MsgErro.Execute;
end; }
end;
end;
end;

procedure TFormUsuarios.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Usuarios.State in [dsInsert, dsEdit, dsSetKey] then
  begin
     FormPrincipal.MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  FormPrincipal.MsgInformacao.Execute;
    CanClose := False;
  end;
end;

procedure TFormUsuarios.FormShow(Sender: TObject);
begin
//DM.SDS_Usuarios.Active:= False;
//DM.SDS_Usuarios.Active:= True;
DESABILITAPANEL;
IF DM.SDS_Usuarios.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
end;


procedure TFormUsuarios.db_nomeEnter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormUsuarios.DBEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormUsuarios.DBEdit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormUsuarios.DBEdit3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormUsuarios.db_nomeExit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormUsuarios.DBEdit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormUsuarios.DBEdit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormUsuarios.DBEdit3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormUsuarios.suiDBRadioGroup3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormUsuarios.suiDBRadioGroup2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormUsuarios.suiDBRadioGroup1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormUsuarios.suiDBRadioGroup3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormUsuarios.suiDBRadioGroup2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormUsuarios.suiDBRadioGroup1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormUsuarios.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsUsuarios=nil   then
    begin
    FormConsUsuarios:=TFormConsUsuarios.Create(self);
      FormConsUsuarios.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFormUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormUsuarios.suiButton1Click(Sender: TObject);
begin
   HabilitaPanel;
   db_nome.Color:= ClWhite;
   DBEdit2.Color:= ClWhite;
   DBEdit1.Enabled := False;
   //DBEdit3.Enabled := false;
   DBEdit3.Color:= ClWhite;

   FDvOfficePager1.ActivePageIndex := 0;
   DM.SDS_Usuarios.Edit;
   AtualizaManutencao;
   DM.SDS_UsuariosSENHA.clear;
   db_nome.SetFocus;
end;

end.
