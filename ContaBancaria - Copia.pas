unit ContaBancaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls,  StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus, ImgList, SUIDlg, DB, DBTables, Mask,
  DBCtrls,  RXCtrls, ToolEdit, RXDBCtrl, 
  Grids, DBGrids,   ComCtrls,Buttons,DBXpress,ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  SUIRadioGroup;


  type
  TFormContaBancaria = class(TForm)
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
    suiDBRadioGroup1: TsuiDBRadioGroup;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel5: TRxLabel;
    db_nome: TDBEdit;
    suiDBEdit1: TDBEdit;
    suiDBLookupComboBox1: TDBLookupComboBox;
    suiDBLookupComboBox2: TDBLookupComboBox;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    RxLabel6: TRxLabel;
    DBEdit1: TDBEdit;
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
    procedure suiDBLookupComboBox1Enter(Sender: TObject);
    procedure suiDBLookupComboBox2Enter(Sender: TObject);
    procedure suiDBEdit1Enter(Sender: TObject);
    procedure suiDBRadioGroup1Enter(Sender: TObject);
    procedure suiDBLookupComboBox1Exit(Sender: TObject);
    procedure suiDBLookupComboBox2Exit(Sender: TObject);
    procedure suiDBEdit1Exit(Sender: TObject);
    procedure suiDBRadioGroup1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormContaBancaria: TFormContaBancaria;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso, ConsUnidades,
  ConsMarcas, Marcas, ConsContaBancariapas;



{$R *.dfm}


Procedure TFormContaBancaria.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Conta_Bancaria.State = dsBrowse);
//Novo1.Enabled:=(DM.SDS_Conta_Bancaria.State = dsBrowse);
//Editar1.Enabled:=(DM.SDS_Conta_Bancaria.State = dsBrowse);
//Localizar1.Enabled:=(DM.SDS_Conta_Bancaria.State = dsBrowse);
//Salvar1.Enabled:= (DM.SDS_Conta_Bancaria.State in [dsInsert, dsEdit]);
//Cancelar1.Enabled:=(DM.SDS_Conta_Bancaria.State in [dsInsert, dsEdit]);
BTNNOVO.Enabled:= (DM.SDS_Conta_Bancaria.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Conta_Bancaria.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Conta_Bancaria.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Conta_Bancaria.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Conta_Bancaria.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Conta_Bancaria.State = dsBrowse);
//Excluir1.Enabled:=(DM.SDS_Conta_Bancaria.State = dsBrowse)
end;


procedure TFormContaBancaria.HabilitaPanel;
begin
pnldados.Enabled:= True;
//Panel2.Enabled:= False;
end;

procedure TFormContaBancaria.DesabilitaPanel;
begin
pnldados.Enabled:= False;
//Panel2.Enabled:= True;

end;

procedure TFormContaBancaria.HabilitaNovo;
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

procedure TFormContaBancaria.db_nomeEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormContaBancaria.db_nomeExit(Sender: TObject);
begin
     CorSaida(Sender);
end;

procedure TFormContaBancaria.btnNovoClick(Sender: TObject);
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
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CONTA_BANCARIA');
                    DM.ProxCod.Open;

   Cod:= (DM.ProxCodN_CODIGO.ASINTEGER + 1);
   DM.SDS_Conta_Bancaria.Insert;
   dbt_codigo.Text:=IntTostr(Cod);
   DM.SDS_Conta_BancariaUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_Conta_BancariaDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   suiDBLookupComboBox1.Color:= ClWhite;
   suiDBLookupComboBox2.Color:= ClWhite;
   suiDBEdit1.Color:= ClWhite;
   db_nome.Color:= ClWhite;
   DBEdit1.Color:= ClWhite;
   suiDBLookupComboBox1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormContaBancaria.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_Conta_Bancaria.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     suiDBLookupComboBox1.Color:= ClWhite;
     suiDBLookupComboBox2.Color:= ClWhite;
     suiDBEdit1.Color:= ClWhite;
     db_nome.Color:= ClWhite;
     DBEdit1.Color:= ClWhite;
     DB_Nome.SetFocus;
   Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormContaBancaria.btnSalvarClick(Sender: TObject);
begin
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);
 Try
      begin
          DM.SDS_Conta_BancariaFEBRABAN.Value := DM.SDS_BancosFEBRABAN.Value;
          DM.SDS_Conta_Bancaria.Post;
          DM.SDS_Conta_Bancaria.ApplyUpdates(0);
         // DM.SQLC.Commit(TD);
          AtualizaManutencao;
          DesabilitaPanel;
          suiDBLookupComboBox1.Color:= $00E8E8E8;
          suiDBLookupComboBox2.Color:= $00E8E8E8;
          suiDBEdit1.Color:= $00E8E8E8;
          db_nome.Color:= $00E8E8E8;
          DBEdit1.Color:= $00E8E8E8;
      end;
   Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

procedure TFormContaBancaria.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_Conta_Bancaria.Cancel;
 if DM.SDS_Conta_Bancaria.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     suiDBLookupComboBox1.Color:= $00E8E8E8;
     suiDBLookupComboBox2.Color:= $00E8E8E8;
     suiDBEdit1.Color:= $00E8E8E8;
     db_nome.Color:= $00E8E8E8;
     DBEdit1.Color:= $00E8E8E8;
   Except
       MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormContaBancaria.btnExcluirClick(Sender: TObject);
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
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
Try
 Begin
    DM.SDS_Conta_Bancaria.Delete;
    DM.SDS_Conta_Bancaria.ApplyUpdates(0);
    DM.SQLC.Commit(TD);
 end;
 if DM.SDS_Conta_Bancaria.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      DM.SQLC.Rollback(TD);
            MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
END;

procedure TFormContaBancaria.FormShow(Sender: TObject);
begin
DM.SDS_Bancos.Active:= False;
DM.SDS_Agencias.Active:= False;
DM.SDS_Conta_Bancaria.Active:= False;
DM.SDS_Bancos.Active:= True;
DM.SDS_Agencias.Active:= True;
DM.SDS_Conta_Bancaria.Active:= True;
DESABILITAPANEL;
IF DM.SDS_Conta_Bancaria.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;

end;


procedure TFormContaBancaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormContaBancaria:=nil;
end;

procedure TFormContaBancaria.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Conta_Bancaria.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;


procedure TFormContaBancaria.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsContaBancaria=nil   then
    begin
    FormConsContaBancaria:=TFormConsContaBancaria.Create(self);
      FormConsContaBancaria.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormContaBancaria.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFormContaBancaria.suiDBLookupComboBox1Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormContaBancaria.suiDBLookupComboBox2Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormContaBancaria.suiDBEdit1Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormContaBancaria.suiDBRadioGroup1Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormContaBancaria.suiDBLookupComboBox1Exit(Sender: TObject);
begin
  CorSaida(Sender);
end;

procedure TFormContaBancaria.suiDBLookupComboBox2Exit(Sender: TObject);
begin
  CorSaida(Sender);
end;

procedure TFormContaBancaria.suiDBEdit1Exit(Sender: TObject);
begin
  CorSaida(Sender);
end;

procedure TFormContaBancaria.suiDBRadioGroup1Exit(Sender: TObject);
begin
  CorSaida(Sender);
end;

procedure TFormContaBancaria.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

end.
