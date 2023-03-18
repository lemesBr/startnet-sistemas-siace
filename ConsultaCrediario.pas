unit ConsultaCrediario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  RXCtrls, SUIEdit, SUIDBCtrls, Grids, DBGrids,
  SUIButton, StdCtrls, Mask, DB,  SUIDlg, DBCtrls,
  FMTBcd, SqlExpr, DBClient, SimpleDS,  Buttons, RxToolEdit;

type
  TFormConsultaCrediario = class(TForm)
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
    Navigato: TDBNavigator;
    BTPrint: TBitBtn;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    BtJuros: TBitBtn;
    SPC_ATUALIZA: TSQLStoredProc;
    RemoveJuros: TsuiMessageDialog;
    Button1: TButton;
    Panel1: TPanel;
    Cliente: TComboEdit;
    RxLabel1: TRxLabel;
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
    procedure BtJurosClick(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
  private
  TipoCons: String;
  public
  Contador,Contador2,I:Integer;
  end;

var
  FormConsultaCrediario: TFormConsultaCrediario;
  

implementation

uses ModulodeDadosBaixas, ConsClientes, ModulodeDados, Z_RotinasGerais,
  Acesso, ModulodeDadosRelatorios, Principal, DetalhesCrediario;

{$R *.dfm}

procedure TFormConsultaCrediario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaCrediario:=nil;
end;

procedure TFormConsultaCrediario.FormShow(Sender: TObject);
VAR
I:Integer;
begin
//DM.SDS_Clientes.Active:= False;
//DMB.SDS_Cliente.Active:= False;
DM.SDS_Clientes.Active:= True;
DM.SDS_Clientes.Active:= True;
DMB.SDS_Crediario_Baixa.Active:= False;
BTPrint.Enabled:= False;
DBGrid1.Enabled:= False;
RXLabel5.Caption:= '';
RXLabel6.Caption:= '';
RXLabel7.Caption:= '';
RXLabel8.Caption:= '';
end;


procedure TFormConsultaCrediario.ClienteButtonClick(Sender: TObject);
var
Data, DataVenc,DiasVenc, DataAtual: TDateTime;
dia, mes, ano: Word;
TOT, Pert, TotPert, DIAS, X : Real;
T: Integer;
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
//DM.SDS_Clientes.Active:= False;
DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
//DM.SDS_Clientes.Active:= True;
DMB.SDS_CREDIARIO_VENCIDO.Active:= True;

If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;

TipoCons:= 'Encargos Financeiros: SIM';

DMB.SDS_CREDIARIO_VENCIDO.First;
Contador:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For T:=1 to Contador do
begin
DataAtual:= Date;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
DiasVenc := DataAtual - DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.Asdatetime;
Data := DataAtual - DataVenc;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
dias := DiasVenc;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
DMB.SPC_Juros.Params[5].value := dias;
DMB.SPC_Juros.Execproc;
DMB.SDS_CREDIARIO_VENCIDO.Next;
end;
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.First;

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMB.SDS_Crediario_Baixa.Eof do
begin

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
BTPrint.Enabled:= False;
DBGrid1.Enabled:= False;
BTJuros.Enabled:= True;
end else
begin
DBGrid1.Enabled:= True;
BTPrint.Enabled:= True;
BTJuros.Enabled:= True;
end;
end;
end;

procedure TFormConsultaCrediario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
 Var DtVen: TDateTime;
begin
DtVen:= DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Value;
If DtVen < Date then
Dbgrid1.Canvas.Font.Color:= clRed;
If DtVen >= Date then
Dbgrid1.Canvas.Font.Color:= clBlue;
Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;


procedure TFormConsultaCrediario.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCrediario.Edit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCrediario.Edit3Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCrediario.ClienteExit(Sender: TObject);
Var
Data, DataVenc, DiasVenc, DataAtual: TDateTime;
dia, mes, ano: Word;
TOT, Pert, TotPert, X,dias: Real;
Q: Integer;
begin
If  Cliente.Text='' then
    Begin
    Messagecli.ShowModal;
    Cliente.SetFocus;
    end else
X:= 0;
DM.SDS_Clientes.Active:= False;
DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
DM.SDS_Clientes.Active:= True;
DMB.SDS_CREDIARIO_VENCIDO.Active:= True;
If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;

TipoCons:= 'Encargos Financeiros: SIM';

DMB.SDS_CREDIARIO_VENCIDO.First;
Contador:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For Q:=1 to Contador do
begin
DataAtual:= Date;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
DiasVenc := DataAtual -DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.ASDATETIME;
Data := DataAtual - DataVenc;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
dias := DiasVenc;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
DMB.SPC_Juros.Params[5].value := dias;
DMB.SPC_Juros.Execproc;
DMB.SDS_CREDIARIO_VENCIDO.Next;
end;
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.First;

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMB.SDS_Crediario_Baixa.Eof do
begin

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
BTPrint.Enabled:= False;
DBGrid1.Enabled:= False;
BTJuros.Enabled:= False;
end else
begin
DBGrid1.Enabled:= True;
BTPrint.Enabled:= True;
BTJuros.Enabled:= True;
end;
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
    If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive]);
DMB.SDS_Crediario_Baixa.Active:= TRUE;
RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;

TipoCons:= 'Encargos Financeiros: SIM';

DMB.SDS_CREDIARIO_VENCIDO.First;
Contador:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For Q:=1 to Contador do
begin
DataAtual:= Date;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
Data := DataAtual - DataVenc;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Execproc;
DMB.SDS_CREDIARIO_VENCIDO.Next;
end;
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.First;

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
While not DMB.SDS_Crediario_Baixa.Eof do
begin

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
BTPrint.Enabled:= False;
DBGrid1.Enabled:= False;
BTJuros.Enabled:= False;
end else
begin
DBGrid1.Enabled:= True;
BTPrint.Enabled:= True;
BTJuros.Enabled:= True;
end;
end;
end;
CorSaida(Sender);
end;

procedure TFormConsultaCrediario.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCrediario.Edit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCrediario.Edit3Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCrediario.ClienteEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCrediario.BTPrintClick(Sender: TObject);
begin
IF FormPrincipal.RContasReceber = 'S' THEN
BEGIN
DMR.RvRelatorios.SetParam('TC',TipoCons);
DMR.RvRelatorios.SelectReport('Rp_Conta_Cliente',False);
DMR.RvRelatorios.Execute;
end else
begin
FormPrincipal.MSG_NOT.Execute;
end;
end;


procedure TFormConsultaCrediario.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaCrediario.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsultaCrediario.DBGrid1DblClick(Sender: TObject);
begin
if FormDetCrediario=nil   then
    begin
     FormDetCrediario:=TFormDetCrediario.Create(self);
      FormDetCrediario.ShowModal;
      end;
end;

procedure TFormConsultaCrediario.BtJurosClick(Sender: TObject);
var
X: Real;
Int: Integer;
begin
IF FormPrincipal.OrotRemJurosCre = 'S' THEN
BEGIN
if RemoveJuros.ShowModal = mryes then

begin
BTJuros.Enabled:= False;
TipoCons:= 'Encargos Financeiros: NÃO';
DMB.SDS_Crediario_Baixa.First;
Contador2:= DMB.SDS_Crediario_Baixa.RecordCount;
For Int:=1 to Contador2 do
begin
SPC_Atualiza.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
SPC_Atualiza.Params[2].Value:= 0 ;
SPC_Atualiza.Params[3].Value:= 0 ;
SPC_Atualiza.Execproc;
DMB.SDS_Crediario_Baixa.Next;
end;
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.First;
X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
While not DMB.SDS_Crediario_Baixa.Eof do
begin
X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
end;
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormConsultaCrediario.ClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
  ClienteExit(sender);
end;
end;

end.
