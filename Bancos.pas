unit Bancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls,  RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons,ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  ACBrBase, ACBrBoleto, ACBrUtil, TypInfo, DateUtils, pcnConversao, ACBrDFeSSL,
  ACBrBoletoConversao, ACBrBoletoRetorno, XDBCtrls, AdvGlowButton;


  type
  TFormBancos = class(TForm)
    pnldados: TPanel;
    RxLabel1: TRxLabel;
    RxLabel4: TRxLabel;
    dbt_codigo: TDBEdit;
    Panel3: TPanel;
    btnNovo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnExcluir: TAdvGlowButton;
    btnLocalizar: TAdvGlowButton;
    DBNavigator: TXDBNavigator;
    RxLabel6: TRxLabel;
    MsgInformacao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgErro: TsuiMessageDialog;
    db_nome: TDBEdit;
    suiDBEdit2: TDBEdit;
    Panel1: TPanel;
    Label5: TLabel;
    RxLabel2: TRxLabel;
    DBEdit1: TDBEdit;
    cbxBanco: TComboBox;
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
    procedure suiDBEdit2Enter(Sender: TObject);
    procedure suiDBEdit2Exit(Sender: TObject);
    procedure cbxBancoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormBancos: TFormBancos;


implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso, ConsBancos, Udmcob;



{$R *.dfm}


Procedure TFormBancos.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Bancos.State = dsBrowse);
BTNNOVO.Enabled:= (DM.SDS_Bancos.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Bancos.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Bancos.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Bancos.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Bancos.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Bancos.State = dsBrowse);
end;


procedure TFormBancos.HabilitaPanel;
begin
pnldados.Enabled:= True;
end;

procedure TFormBancos.DesabilitaPanel;
begin
pnldados.Enabled:= False;

end;

procedure TFormBancos.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormBancos.db_nomeEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormBancos.db_nomeExit(Sender: TObject);
begin
     CorSaida(Sender);
end;

procedure TFormBancos.btnNovoClick(Sender: TObject);
begin
If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
    dm.ProxCod.Close;
    dm.ProxCod.SQL.Clear;
    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM BANCOS');
    DM.ProxCod.Open;

    Cod:= (DM.ProxCodN_CODIGO.ASINTEGER + 1);

   DM.SDS_Bancos.Insert;
   DM.SDS_BancosCODIGO.TEXT:=IntTostr(Cod);
   DM.SDS_BancosUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_BancosDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   db_nome.Color:= clWhite;
   suiDBEdit2.Color:= clWhite;
   DBEdit1.Color:= clWhite;
   db_nome.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormBancos.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_Bancos.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     db_nome.Color:= clWhite;
     suiDBEdit2.Color:= clWhite;
     DBEdit1.Color:= clWhite;
     db_nome.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormBancos.btnSalvarClick(Sender: TObject);
begin
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);
 Try
      begin

          DM.SDS_Bancos.Post;
          DM.SDS_Bancos.ApplyUpdates(0);
         // DM.SQLC.Commit(TD);
          AtualizaManutencao;
          DesabilitaPanel;
     db_nome.Color:= $00E8E8E8;
     suiDBEdit2.Color:= $00E8E8E8;
     DBEdit1.Color:= $00E8E8E8;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

procedure TFormBancos.cbxBancoExit(Sender: TObject);
var
Banco          : TACBrBanco;
Boleto         : TACBrBoleto;
 CobAnterior    : TACBrTipoCobranca;
begin
  Boleto := dmcob.ACBrBoleto;
   CobAnterior := Boleto.Banco.TipoCobranca;
 { if CobAnterior <> TACBrTipoCobranca(cbxBanco.ItemIndex) then
    edtLocalPag.Text := '';  }

  Banco := Boleto.Banco;
  Banco.TipoCobranca        := TACBrTipoCobranca(cbxBanco.ItemIndex);

 DBEdit1.Text  := inttostr(Banco.Numero);
end;

procedure TFormBancos.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_Bancos.Cancel;
 if DM.SDS_Bancos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     db_nome.Color:= $00E8E8E8;
     suiDBEdit2.Color:= $00E8E8E8;
     DBEdit1.Color:= $00E8E8E8;
   Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormBancos.btnExcluirClick(Sender: TObject);
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
    DM.SDS_Bancos.Delete;
    DM.SDS_Bancos.ApplyUpdates(0);

 end;
 if DM.SDS_Bancos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
      Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
END;

procedure TFormBancos.FormShow(Sender: TObject);
var
  Banco: TACBrTipoCobranca;
begin
  cbxBanco.Items.clear;
	for Banco := Low(TACBrTipoCobranca) to High(TACBrTipoCobranca) do
    cbxBanco.Items.Add( GetEnumName(TypeInfo(TACBrTipoCobranca), integer(Banco) ) );

DM.SDS_Bancos.Active:= False;
DM.SDS_Bancos.Active:= True;
DESABILITAPANEL;
IF DM.SDS_Bancos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;

end;


procedure TFormBancos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormBancos:=nil;
end;

procedure TFormBancos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Bancos.State in [dsInsert, dsEdit, dsSetKey] then
  begin
     MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;


procedure TFormBancos.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsBancos=nil   then
    begin
    FormConsBancos:=TFormConsBancos.Create(self);
      FormConsBancos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormBancos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFormBancos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormBancos.suiDBEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormBancos.suiDBEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

end.
