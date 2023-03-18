unit ConsultaCrediarioRecebido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  RXCtrls, SUIEdit, SUIDBCtrls, Grids, DBGrids,
  SUIButton, StdCtrls, Mask, DB, SUIDlg, DBCtrls,
  FMTBcd, SqlExpr, DBClient, SimpleDS, Buttons, sSkinManager,
  sSpeedButton, sPanel, sDBNavigator, RxToolEdit;

type
  TFormConsultaCrediarioRecebido = class(TForm)
    Panel5: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxLabel4: TRxLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    MessageCli: TsuiMessageDialog;
    MessageLocCli: TsuiMessageDialog;
    RxLabel8: TRxLabel;
    Navigato: TsDBNavigator;
    BTPrint: TsSpeedButton;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Cliente: TComboEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure ClienteEnter(Sender: TObject);
    procedure BTPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
 
  private

  public
  Contador,I:Integer;
  end;

var
  FormConsultaCrediarioRecebido: TFormConsultaCrediarioRecebido;
  

implementation

uses ConsClientes, Z_RotinasGerais,
  ModulodeDadosRelatorios, Principal, ModulodeDados,
  ModulodeDadosConsultas5, DetalhesPesqCreRecebidoCliente;

{$R *.dfm}

procedure TFormConsultaCrediarioRecebido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaCrediarioRecebido:=nil;
end;

procedure TFormConsultaCrediarioRecebido.FormShow(Sender: TObject);
VAR
I:Integer;
begin
DM.SDS_Clientes.Active:= False;
DMC5.SDS_CliCrediario.Active:= False;
DM.SDS_Clientes.Active:= True;
DMC5.SDS_CliCrediario.Active:= True;
DMC5.SDS_CrediarioRecebido.Active:= False;
DBGrid1.Enabled:= False;
RXLabel5.Caption:= '';
RXLabel6.Caption:= '';
RXLabel7.Caption:= '';
RXLabel8.Caption:= '';
end;


procedure TFormConsultaCrediarioRecebido.ClienteButtonClick(Sender: TObject);
var
T: Integer;
X: Real;
begin
Try
if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Clientes!!');
end;
DMC5.SDS_CliCrediario.Active:= False;
DMC5.SDS_CREDIARIORECEBIDO.Active:= False;
DMC5.SDS_CliCrediario.Active:= True;
DMC5.SDS_CREDIARIORECEBIDO.Active:= True;

 If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
DMC5.SDS_CliCrediario.Locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel5.Caption:= DMC5.SDS_CliCrediarioCODIGO.Text;
RXLabel6.Caption:= DMC5.SDS_CliCrediarioNOME_RS.Text;
RXLabel7.Caption:= DMC5.SDS_CliCrediarioCPF_CNPJ.Text;

X:= X + DMC5.SDS_CREDIARIORECEBIDOVALOR_PAGO.AsFloat;
DMC5.SDS_CREDIARIORECEBIDO.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMC5.SDS_CREDIARIORECEBIDO.Eof do
begin

X:= X + DMC5.SDS_CREDIARIORECEBIDOVALOR_PAGO.AsFloat;
DMC5.SDS_CREDIARIORECEBIDO.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
DMC5.SDS_CREDIARIORECEBIDO.First;
if  DMC5.SDS_CREDIARIORECEBIDO.RecordCount = 0 then
begin
BTPrint.Enabled:= False;
DBGrid1.Enabled:= False;
end else
begin
DBGrid1.Enabled:= True;
BTPrint.Enabled:= True;
end;
end;
end;

procedure TFormConsultaCrediarioRecebido.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
 Var DtVen, DtPag: TDateTime;
begin
DtVen:= DMc5.SDS_CrediarioRecebidoDATA_VENCIMENTO.Value;
DtPag:= DMc5.SDS_CrediarioRecebidoDATA_BAIXA.Value;
If DtVen < DtPag then
Dbgrid1.Canvas.Font.Color:= clRed;
If DtVen >= DtPag then
Dbgrid1.Canvas.Font.Color:= clBlue;
Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;


procedure TFormConsultaCrediarioRecebido.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCrediarioRecebido.Edit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCrediarioRecebido.Edit3Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCrediarioRecebido.ClienteExit(Sender: TObject);
Var
X : Real;
Q: Integer;
begin
If  Cliente.Text='' then
    Begin
    Messagecli.ShowModal;
    Cliente.SetFocus;
    end else
X:= 0;
DMC5.SDS_CliCrediario.Active:= False;
DMC5.SDS_CREDIARIORECEBIDO.Active:= False;
DMC5.SDS_CliCrediario.Active:= True;
DMC5.SDS_CREDIARIORECEBIDO.Active:= True;
If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
DMC5.SDS_CliCrediario.Locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel5.Caption:= DMC5.SDS_CliCrediarioCODIGO.Text;
RXLabel6.Caption:= DMC5.SDS_CliCrediarioNOME_RS.Text;
RXLabel7.Caption:= DMC5.SDS_CliCrediarioCPF_CNPJ.Text;

X:= X + DMC5.SDS_CREDIARIORECEBIDOVALOR_PAGO.AsFloat;
DMC5.SDS_CREDIARIORECEBIDO.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMC5.SDS_CREDIARIORECEBIDO.Eof do
begin

X:= X + DMC5.SDS_CREDIARIORECEBIDOVALOR_PAGO.AsFloat;
DMC5.SDS_CREDIARIORECEBIDO.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
DMC5.SDS_CREDIARIORECEBIDO.First;
if  DMC5.SDS_CREDIARIORECEBIDO.RecordCount = 0 then
begin
BTPrint.Enabled:= False;
DBGrid1.Enabled:= False;
end else
begin
DBGrid1.Enabled:= True;
BTPrint.Enabled:= True;
end;
CorSaida(Sender);
end
else
begin
    Cliente.color:= clWhite;
    MessageLocCli.ShowModal;
    if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
      end;
If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
DMC5.SDS_CliCrediario.Locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel5.Caption:= DMC5.SDS_CliCrediarioCODIGO.Text;
RXLabel6.Caption:= DMC5.SDS_CliCrediarioNOME_RS.Text;
RXLabel7.Caption:= DMC5.SDS_CliCrediarioCPF_CNPJ.Text;

X:= X + DMC5.SDS_CREDIARIORECEBIDOVALOR_PAGO.AsFloat;
DMC5.SDS_CREDIARIORECEBIDO.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMC5.SDS_CREDIARIORECEBIDO.Eof do
begin

X:= X + DMC5.SDS_CREDIARIORECEBIDOVALOR_PAGO.AsFloat;
DMC5.SDS_CREDIARIORECEBIDO.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
DMC5.SDS_CREDIARIORECEBIDO.First;
if  DMC5.SDS_CREDIARIORECEBIDO.RecordCount = 0 then
begin
BTPrint.Enabled:= False;
DBGrid1.Enabled:= False;
end else
begin
DBGrid1.Enabled:= True;
BTPrint.Enabled:= True;
end;
end;
end;
CorSaida(Sender);
end;

procedure TFormConsultaCrediarioRecebido.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCrediarioRecebido.Edit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCrediarioRecebido.Edit3Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCrediarioRecebido.ClienteEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCrediarioRecebido.BTPrintClick(Sender: TObject);
Var
Clie: String;
begin
IF FormPrincipal.RContasReceber = 'S' THEN
BEGIN
Clie:= RxLabel5.Caption +' - '+ RxLabel6.Caption +' - '+ RxLabel7.Caption;
DMR.RvRelatorios.SetParam('Cli',Clie);
DMR.RvRelatorios.SelectReport('Rp_CrediarioRecebidoCliente',False);
DMR.RvRelatorios.Execute;
end else
begin
FormPrincipal.MSG_NOT.Execute;
end;
end;


procedure TFormConsultaCrediarioRecebido.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaCrediarioRecebido.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsultaCrediarioRecebido.DBGrid1DblClick(Sender: TObject);
begin
if FormDetPesCreRecebidoCliente=nil   then
    begin
     FormDetPesCreRecebidoCliente:=TFormDetPesCreRecebidoCliente.Create(self);
      FormDetPesCreRecebidoCliente.ShowModal;
      end;
end;


end.
