unit ConsultaCrediarioReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, SUIDBCtrls,
  RXCtrls, Grids, DBGrids, SUIButton, DB, DBClient, SimpleDS, SUIDlg,
  FMTBcd, SqlExpr, Buttons, DBCtrls, sMaskEdit, sCustomComboEdit,
  sTooledit, sBevel, sBitBtn, sDBNavigator, acDBGrid, sLabel, sPanel;

type
  TFormConsultaCrediarioReceber = class(TForm)
    pnpesq: TsPanel;
    Panel4: TsPanel;
    DBGrid1: TsDBGrid;
    Panel1: TsPanel;
    RxLabel8: TsLabel;
    RxLabel4: TsLabel;
    Navigator: TsDBNavigator;
    BTPrint: TsBitBtn;
    Panel2: TsPanel;
    Label2: TsLabel;
    DateEdit1: TsDateEdit;
    DateEdit2: TsDateEdit;
    Label4: TsLabel;
    suiButton1: TsBitBtn;
    Bevel1: TsBevel;
    MsgInformacao: TsuiMessageDialog;
    MsgErro: TsuiMessageDialog;
    BTJuros: TsBitBtn;
    RemoveJuros: TsuiMessageDialog;
    SPC_ATUALIZA: TSQLStoredProc;
    SPC_Juros: TSQLStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure BTJurosClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BTPrintClick(Sender: TObject);
  private
    DataIni, DataFin, TipoCons: String;
  public
  Contador, Contador2:Integer;
  end;

var
  FormConsultaCrediarioReceber: TFormConsultaCrediarioReceber;

implementation

uses Principal, Z_RotinasGerais, ModulodeDadosConsultas5, ModulodeDados,
  DetalhesPesqCrediarioPeriodo, ModulodeDadosRelatorios;

{$R *.dfm}

procedure TFormConsultaCrediarioReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaCrediarioReceber:=nil;
end;

procedure TFormConsultaCrediarioReceber.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsultaCrediarioReceber.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaCrediarioReceber.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
DateEdit1.Date := Date;
end;

procedure TFormConsultaCrediarioReceber.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
DateEdit2.Date := Date;
end;

procedure TFormConsultaCrediarioReceber.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCrediarioReceber.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCrediarioReceber.suiButton1Click(Sender: TObject);
var
DI, DF: String;
Data, DataVenc, DiasVenc, DataAtual: TDateTime;
dia, mes, ano: Word;
TOT, Pert, TotPert, X, DIAS : Real;
Q: Integer;
begin
Try
    DMC5.SQLD_CrediarioReceber.Active:=False;
    DMC5.CDS_CrediarioReceber.Active:=False;
    DMC5.SQLD_CrediarioReceber.Params[0].AsDate:=DateEdit1.Date;
    DMC5.SQLD_CrediarioReceber.Params[1].AsDate:=DateEdit2.Date;
    DMC5.SQLD_CrediarioReceber.Active:=True;
    DMC5.CDS_CrediarioReceber.Active:=True;
    DMC5.CDS_CrediarioReceber.First;

DataIni:= DateEdit1.Text;
DataFin:= DateEdit2.Text;
TipoCons:= 'Encargos Financeiros: SIM';

Contador:= DMC5.CDS_CrediarioReceber.RecordCount;
For Q:=1 to Contador do
begin
DataAtual:= Date;
DataVenc:= DMC5.CDS_CrediarioReceberDATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
DiasVenc := DataAtual - DMC5.CDS_CrediarioReceberDATA_VENCIMENTO.Asdatetime;
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
SPC_Juros.Params[0].AsInteger:= DMC5.CDS_CrediarioReceberCODIGO.Value;
SPC_Juros.Params[2].Value:= TotPert;
SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
SPC_Juros.Params[5].value := dias;
SPC_Juros.Execproc;
DMC5.CDS_CrediarioReceber.Next;
end;

    DMC5.SQLD_CrediarioReceber.Active:=False;
    DMC5.CDS_CrediarioReceber.Active:=False;
    DMC5.SQLD_CrediarioReceber.Params[0].AsDate:=DateEdit1.Date;
    DMC5.SQLD_CrediarioReceber.Params[1].AsDate:=DateEdit2.Date;
    DMC5.SQLD_CrediarioReceber.Active:=True;
    DMC5.CDS_CrediarioReceber.Active:=True;

X:= 0;
DMC5.CDS_CrediarioReceber.First;
X:= X + DMC5.CDS_CrediarioReceberVALOR_TOTAL.AsFloat;
DMC5.CDS_CrediarioReceber.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMC5.CDS_CrediarioReceber.Eof do
begin
X:= X + DMC5.CDS_CrediarioReceberVALOR_TOTAL.AsFloat;
DMC5.CDS_CrediarioReceber.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;

    If  DMC5.CDS_CrediarioReceber.RecordCount = 0 then
    Begin
    BTPrint.Enabled:= False;
    DBGrid1.Enabled:= False;
    BtJuros.Enabled:= False;
    MsgInformacao.Text:= 'Não Há Crediário a Receber no Período Informado!';
    MsgInformacao.ShowModal;
    end else
    begin
    DBGrid1.Enabled:= True;
    BTPrint.Enabled:= True;
    BtJuros.Enabled:= True;
    end;
      Except
      MsgErro.Text:= 'Ocorreu um erro ao localizar crediario a receber por período. Reinicie o sistema e tente novamente!';
      MsgErro.ShowModal;
   end;
end;



procedure TFormConsultaCrediarioReceber.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var DtVen: TDateTime;
begin
DtVen:= DMC5.CDS_CrediarioReceberDATA_VENCIMENTO.Value;
If DtVen < Date then
Dbgrid1.Canvas.Font.Color:= clRed;
If DtVen >= Date then
Dbgrid1.Canvas.Font.Color:= clBlue;
Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TFormConsultaCrediarioReceber.FormShow(Sender: TObject);
begin
DMC5.SQLD_CrediarioReceber.Active:= False;
DMC5.CDS_CrediarioReceber.Active:= False;
end;

procedure TFormConsultaCrediarioReceber.BTJurosClick(Sender: TObject);
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
DMC5.CDS_CrediarioReceber.First;
Contador2:= DMC5.CDS_CrediarioReceber.RecordCount;
For Int:=1 to Contador2 do
begin
SPC_Atualiza.Params[0].AsInteger:= DMC5.CDS_CrediarioReceberCODIGO.Value;
SPC_Atualiza.Params[2].Value:= 0 ;
SPC_Atualiza.Params[3].Value:= 0 ;
SPC_Atualiza.Execproc;
DMC5.CDS_CrediarioReceber.Next;
end;

    DMC5.SQLD_CrediarioReceber.Active:=False;
    DMC5.CDS_CrediarioReceber.Active:=False;
    DMC5.SQLD_CrediarioReceber.Params[0].AsDate:=DateEdit1.Date;
    DMC5.SQLD_CrediarioReceber.Params[1].AsDate:=DateEdit2.Date;
    DMC5.SQLD_CrediarioReceber.Active:=True;
    DMC5.CDS_CrediarioReceber.Active:=True;

DMC5.CDS_CrediarioReceber.First;
X:= X + DMC5.CDS_CrediarioReceberVALOR_TOTAL.AsFloat;
DMC5.CDS_CrediarioReceber.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
While not DMC5.CDS_CrediarioReceber.Eof do
begin
X:= X + DMC5.CDS_CrediarioReceberVALOR_TOTAL.AsFloat;
DMC5.CDS_CrediarioReceber.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
end;
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormConsultaCrediarioReceber.DBGrid1DblClick(Sender: TObject);
begin
if FormDetPesCrediarioPeriodo=nil   then
    begin
     FormDetPesCrediarioPeriodo:=TFormDetPesCrediarioPeriodo.Create(self);
      FormDetPesCrediarioPeriodo.ShowModal;
      end;
end;

procedure TFormConsultaCrediarioReceber.BTPrintClick(Sender: TObject);
begin
IF FormPrincipal.RContasReceber = 'S' THEN
BEGIN
DMR.RvRelatorios.SetParam('DI',DataIni);
DMR.RvRelatorios.SetParam('DF',DataFin);
DMR.RvRelatorios.SetParam('TC',TipoCons);
DMR.RvRelatorios.SelectReport('Rp_CrediarioReceberPeriodo',False);
DMR.RvRelatorios.Execute;
end else
begin
FormPrincipal.MSG_NOT.Execute;
end;
end;

end.
