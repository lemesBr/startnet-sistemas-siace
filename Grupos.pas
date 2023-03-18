unit Grupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls, rxToolEdit, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls,Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  TaskDialog, sDBEdit, sLabel, sDBNavigator, sBitBtn, sPanel, AdvGlowButton;


  type
  TFormGrupos = class(TForm)
    pnldados: TsPanel;
    RxLabel1: TsLabel;
    RxLabel4: TsLabel;
    dbt_codigo: TsDBEdit;
    Panel3: TsPanel;
    btnNovo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnExcluir: TAdvGlowButton;
    btnLocalizar: TAdvGlowButton;
    DBNavigator: TsDBNavigator;
    db_nome: TsDBEdit;
    RxLabel2: TsLabel;
    DBEdit1: TsDBEdit;
    DBEdit2: TsDBEdit;
    RxLabel3: TsLabel;
    DBEdit3: TsDBEdit;
    RxLabel5: TsLabel;
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
  FormGrupos: TFormGrupos;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso, ConsGrupos;


{$R *.dfm}


Procedure TFormGrupos.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Grupos.State = dsBrowse);
//Novo1.Enabled:=(DM.SDS_Grupos.State = dsBrowse);
//Editar1.Enabled:=(DM.SDS_Grupos.State = dsBrowse);
//Localizar1.Enabled:=(DM.SDS_Grupos.State = dsBrowse);
//Salvar1.Enabled:= (DM.SDS_Grupos.State in [dsInsert, dsEdit]);
//Cancelar1.Enabled:=(DM.SDS_Grupos.State in [dsInsert, dsEdit]);
BTNNOVO.Enabled:= (DM.SDS_Grupos.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Grupos.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Grupos.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Grupos.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Grupos.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Grupos.State = dsBrowse);
//Excluir1.Enabled:=(DM.SDS_Grupos.State = dsBrowse);
end;


procedure TFormGrupos.HabilitaPanel;
begin
pnldados.Enabled:= True;
end;

procedure TFormGrupos.DesabilitaPanel;
begin
pnldados.Enabled:= False;

end;

procedure TFormGrupos.HabilitaNovo;
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

procedure TFormGrupos.db_nomeEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormGrupos.db_nomeExit(Sender: TObject);
begin
     CorSaida(Sender);
end;

procedure TFormGrupos.btnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM GRUPOS');
   DM.ProxCod.Open;


   DM.SDS_Grupos.Insert;
   DM.SDS_GruposCODIGO.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;
   DM.SDS_GruposUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_GruposDATACADASTRO.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   db_nome.SetFocus;
   db_nome.Color := clWhite;
   DBEdit1.Color := clWhite;
   DBEdit2.Color := clWhite;
   DBEdit3.Color := clWhite;

   Except
   FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgErro.Execute;
   end;
end;
end;

procedure TFormGrupos.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_Grupos.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     db_nome.SetFocus;
     db_nome.Color := clWhite;
     DBEdit1.Color := clWhite;
     DBEdit2.Color := clWhite;
     DBEdit3.Color := clWhite;
   Except
   FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgErro.Execute;
   end;

end;
end;

procedure TFormGrupos.btnSalvarClick(Sender: TObject);
begin
 Try
      begin
     {  dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM GRUPOS');
      DM.ProxCod.Open;
      DM.SDS_Grupos.Edit;
      DM.SDS_GruposCODIGO.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;  }

          DM.SDS_Grupos.Post;
          DM.SDS_Grupos.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
          db_nome.Color:= $00E8E8E8;
          DBEdit1.Color := $00E8E8E8;
             DBEdit2.Color := $00E8E8E8;
   DBEdit3.Color := $00E8E8E8;
      end;
   Except
   FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgErro.Execute;
   end;

end;

procedure TFormGrupos.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_Grupos.Cancel;
 if DM.SDS_Grupos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     db_nome.Color:= $00E8E8E8;
      DBEdit1.Color := $00E8E8E8;
   DBEdit2.Color := $00E8E8E8;
   DBEdit3.Color := $00E8E8E8;
   Except
   FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgErro.Execute;
   end;
end;

procedure TFormGrupos.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin

if Application.MESSAGEBOX('Confirma a exclusão do Grupo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then

begin
Try
 Begin
    DM.SDS_Grupos.Delete;
    DM.SDS_Grupos.ApplyUpdates(0);
 end;
 if DM.SDS_Grupos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      FormPrincipal.MsgErro.Execute;
end;
end;
end;
END;

procedure TFormGrupos.FormShow(Sender: TObject);
begin
DM.SDS_Grupos.Active:= False;
DM.SDS_Grupos.Active:= True;
DESABILITAPANEL;
IF DM.SDS_Grupos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;

end;


procedure TFormGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormGrupos:=nil;
end;

procedure TFormGrupos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Grupos.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  FormPrincipal.MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
 FormPrincipal.MsgInformacao.Execute;
  CanClose := False;
  end;
end;


procedure TFormGrupos.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Conveniados!!');
end;
end;

procedure TFormGrupos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFormGrupos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
