unit Otica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Mylabel, ExtCtrls,
  RXDBCtrl, SUIDBCtrls, SUIButton, RzDBNav, Buttons, RzPanel, RxToolEdit;

type
  TFormOtica = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    myLabel3d2: TmyLabel3d;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Cliente: TComboEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBMemo1: TDBMemo;
    Label22: TLabel;
    DBDateEdit1: TDBDateEdit;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    BtnEditar: TBitBtn;
    DBNavigator: TRzDBNavigator;
    btnLocalizar: TBitBtn;
    Edit2: TEdit;
    Procedure AtualizaManutencao;
    procedure btnNovoClick(Sender: TObject);
    procedure HabilitaPanel;
    procedure entrada(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure desabilitaPanel;
    procedure FormShow(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure Exit(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOtica: TFormOtica;

implementation

uses Principal, ModulodeDados, Z_RotinasGerais, ConsClientes, consotica;

{$R *.dfm}

procedure TFormOtica.HabilitaPanel;
begin
GroupBox1.Enabled:= True;
GroupBox2.Enabled:= True;
end;

procedure TFormOtica.desabilitaPanel;
begin
GroupBox1.Enabled:= false;
GroupBox2.Enabled:= false;
end;

Procedure TFormOtica.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Otica.State = dsBrowse);
BTNNOVO.Enabled:= (DM.SDS_OTICA.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Otica.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Otica.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Otica.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Otica.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Otica.State = dsBrowse);
end;

procedure TFormOtica.btnNovoClick(Sender: TObject);
var
  COD : INTEGER;
begin
if FormPrincipal.Label3.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
//suiButton3.Enabled :=False;
if FormPrincipal.Label3.Caption ='S'then
begin
   DM.SPC_OTICA.ExecProc;
   Cod:= (DM.SPC_OTICA.ParamByName('CODIGO').AsInteger);
   DM.SDS_OTICA.Insert;
   DM.SDS_OTICACODIGO.Text := IntTostr(Cod);
   DM.SDS_OTICACOD_EMPRESA.TEXT := DM.SDS_EmpresaCODIGO.Text;
   AtualizaManutencao;
   HabilitaPanel;
   DBDateEdit1.Date := Date;
   end;
   end;

procedure TFormOtica.entrada(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormOtica.ClienteButtonClick(Sender: TObject);
begin
dm.SDS_Clientes.Filtered := false;

if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     if Cliente.Text >'' then
     begin
      FormConsClientes.Edit1.Text := Cliente.Text;
      end;
      FormConsClientes.ShowModal;
      Cliente.Text                  := DM.SDS_ClientesCODIGO.Text;
      DM.SDS_OTICACOD_CLIENTE.TEXT  := DM.SDS_ClientesCODIGO.Text;
      DM.SDS_OTICANOME.TEXT         := DM.SDS_ClientesNOME_RS.Text;
      DM.SDS_OTICACPF.Text          := DM.SDS_ClientesCPF_CNPJ.Text;
      DM.SDS_OTICAENDERECO.Text    := DM.SDS_ClientesENDERECO.Text;
      DM.SDS_OTICACOMPLEMENTO.Text  := DM.SDS_ClientesCOMPLEMENTO.Text;
      DM.SDS_OTICABAIRRO.Text       := DM.Sds_clientesBairro.Text;
      DM.SDS_OTICACIDADE.Text       := DM.SDS_ClientesCIDADE.Text;
      DM.SDS_OTICAUF.Text           := DM.SDS_ClientesUF.Text;
      DM.SDS_OTICATELEFONE.Text     := DM.SDS_ClientesTELEFONE.Text;
end;
end;

procedure TFormOtica.FormShow(Sender: TObject);
begin
DM.SDS_OTICA.Active := False;
DM.SDS_OTICA.Active := True;
Cliente.Text := DM.SDS_OTICACOD_CLIENTE.Text;
end;

procedure TFormOtica.ClienteExit(Sender: TObject);
begin
dm.SDS_Clientes.Filtered := false;

if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

//IF ACHOU=FALSE THEN
//begin
ClienteButtonClick(sender);

end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

IF ACHOU=FALSE THEN
SHOWMESSAGE('Codigo do Cliente Não Localizado');

IF ACHOU=TRUE THEN
       //Cliente.Text                  := DM.SDS_ClientesCODIGO.Text;
      DM.SDS_OTICACOD_CLIENTE.TEXT  := DM.SDS_ClientesCODIGO.Text;
      DM.SDS_OTICANOME.TEXT         := DM.SDS_ClientesNOME_RS.Text;
      DM.SDS_OTICACPF.Text          := DM.SDS_ClientesCPF_CNPJ.Text;
      DM.SDS_OTICAENDERECO.Text    := DM.SDS_ClientesENDERECO.Text;
      DM.SDS_OTICACOMPLEMENTO.Text  := DM.SDS_ClientesCOMPLEMENTO.Text;
      DM.SDS_OTICABAIRRO.Text       := DM.Sds_clientesBairro.Text;
      DM.SDS_OTICACIDADE.Text       := DM.SDS_ClientesCIDADE.Text;
      DM.SDS_OTICAUF.Text           := DM.SDS_ClientesUF.Text;
      DM.SDS_OTICATELEFONE.Text     := DM.SDS_ClientesTELEFONE.Text;
end;
corsaida(sender);
end;

procedure TFormOtica.BtnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_otica.Edit;
     AtualizaManutencao;
     Cliente.SetFocus;
   Except
   ShowMessage('Ocorreu um erro! Reinicie o sistema e tente novamente!!!');
   end;
end;
end;

procedure TFormOtica.btnCancelarClick(Sender: TObject);
begin
     DM.SDS_otica.Cancel;
     DesabilitaPanel;
     AtualizaManutencao;
end;

procedure TFormOtica.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if Application.MESSAGEBOX('Confirma a Exclusão do Registro?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
Try
 Begin

    DM.SDS_otica.Delete;
    DM.SDS_otica.ApplyUpdates(0);
    DM.SDS_otica.Active:= False;
    DM.SDS_otica.Active:= True;
 end;

AtualizaManutencao;
      Except
      ShowMessage('Ocorreu um erro! Reinicie o sistema e tente novamente!!!');

end;
end;
end;
end;

procedure TFormOtica.btnSalvarClick(Sender: TObject);
begin
 Try
      begin
          DM.SDS_otica.Edit;
          dm.SDS_OTICACOD_CLIENTE.Text := Cliente.Text;
          DM.SDS_otica.Post;
          DM.SDS_otica.ApplyUpdates(0);

          AtualizaManutencao;
          DesabilitaPanel;
           DM.SDS_OTICA.Active:= False;
          DM.SDS_OTICA.Active:= True;
          end;
         Except
   ShowMessage('Ocorreu um erro! Reinicie o sistema e tente novamente!!!');

   end;

end;

procedure TFormOtica.Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormOtica.btnLocalizarClick(Sender: TObject);
begin
  try
DM.SDS_otica.Filtered := False;
if FormConsOtica=nil   then
    begin
     FormConsOtica:=TFormConsOtica.Create(self);
      FormConsOtica.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o tela de consultas!!');
end;
end;

procedure TFormOtica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FormOtica := nil;
end;

procedure TFormOtica.DBNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
Cliente.Text := DM.SDS_OTICACOD_CLIENTE.Text;
end;

procedure TFormOtica.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
