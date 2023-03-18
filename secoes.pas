unit secoes;

interface

uses
  windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls,  StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB,  Mask,
  DBCtrls, SUITabControl, RXCtrls, rxToolEdit, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons,ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  AdvGlowButton, XDBCtrls;


type
  TFormSeccao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    suiDBNavigator1: TXDBNavigator;
    DbtCODIGO: TDBEdit;
    DBTDescricao: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnNovo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnExcluir: TAdvGlowButton;
    Mensagedialogo: TsuiMessageDialog;
    MsgErro: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    btnLocalizar: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaNovo;
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
  

    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormSeccao: TFormSeccao;


implementation

uses ModulodeDados, Principal, Acesso, ConsSeccao;

{$R *.dfm}

procedure TFormSeccao.DesabilitaPanel;
begin
Panel1.Enabled := false;
end;
procedure TFormSeccao.HabilitaPanel;
begin
Panel1.Enabled := True;
end;
Procedure TFormSeccao.AtualizaManutencao;
begin
suiDBNavigator1.Enabled:= (DM.SDS_seccao.State = dsBrowse);
BTNNOVO.Enabled:= (DM.SDS_Seccao.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Seccao.State = dsBrowse);
//BTNLOCALIZAR.Enabled:= (DM.SDS_Seccao.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Seccao.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Seccao.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Seccao.State = dsBrowse);
end;

procedure TFormSeccao.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormSeccao.FormShow(Sender: TObject);
begin
DM.SDS_Seccao.Active:= False;
DM.SDS_Seccao.Active:= True;
DESABILITAPANEL;
IF DM.SDS_Seccao.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;

end;

procedure TFormSeccao.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
Action:=CaFree;
FormSeccao:=nil;
end;

procedure TFormSeccao.btnNovoClick(Sender: TObject);
begin
If FormPrincipal.Label3.Caption ='N'then
begin
Mensagedialogo.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
Mensagedialogo.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM SECCAO');
   DM.ProxCod.Open;
   DM.SDS_Seccao.Insert;
   DM.SDS_SECCAOCODIGO.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
   DM.SDS_seccaoUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_seccaoDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   dbtdescricao.Color:= clWhite;
   dbtDescricao.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
end;
end;
end;

procedure TFormSeccao.btnEditarClick(Sender: TObject);
begin
//  DM.SDS_SECCAO.EDIT;
if FormPrincipal.Label2.Caption ='N'then
begin
Mensagedialogo.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
Mensagedialogo.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_Seccao.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     dbtDescricao.Color:= clWhite;
     dbtDescricao.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormSeccao.btnCancelarClick(Sender: TObject);
begin
  Try
     DM.SDS_Seccao.Cancel;
 if DM.SDS_seccao.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     dbtDescricao.Color:= $00E8E8E8;
   Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormSeccao.btnSalvarClick(Sender: TObject);
begin

 Try
      begin
         { dm.ProxCod.Close;
          dm.ProxCod.SQL.Clear;
          dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM seccao');
          DM.ProxCod.Open;
          DM.SDS_SECCAO.Edit;
          DM.SDS_SECCAOCODIGO.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1; }

          DM.SDS_Seccao.Post;
          DM.SDS_Seccao.ApplyUpdates(0);
          AtualizaManutencao;
         DesabilitaPanel;
     dbtDescricao.Color:= $00E8E8E8;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormSeccao.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MensageDialogo.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MensageDialogo.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.ShowModal = mryes then
begin
Try
 Begin
    DM.SDS_Seccao.Delete;
    DM.SDS_Seccao.ApplyUpdates(0);

 end;
 if DM.SDS_Seccao.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
       MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
       MsgErro.ShowModal;
end;
end;
end;
end;

procedure TFormSeccao.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsSeccao=nil   then
    begin
    FormConsSeccao:=TFormConsSeccao.Create(self);
      FormConsSeccao.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormSeccao.FormKeyDown(Sender: TObject; var Key: Word;
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
END;
procedure TFormSeccao.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormSeccao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Seccao.State in [dsInsert, dsEdit, dsSetKey] then
  begin
     MensageDialogo.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MensageDialogo.ShowModal;
    CanClose := False;
  end;
end;

end.
