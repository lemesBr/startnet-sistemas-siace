unit ConsultaCrediarioRecebidoPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  StdCtrls, Mask, ToolEdit, SUIDBCtrls,
  RXCtrls, Grids, DBGrids, SUIButton, DB, DBClient, SimpleDS, SUIDlg,
  FMTBcd, SqlExpr, Buttons, sBitBtn, sPanel, sDBNavigator, acDBGrid,
  sMaskEdit, sCustomComboEdit, sTooledit, TaskDialog;

type
  TFormConsultaCrediarioRecebidoPeriodo = class(TForm)
    pnpesq: TPanel;
    Panel4: TPanel;
    DBGrid1: TsDBGrid;
    Panel1: TPanel;
    RxLabel8: TRxLabel;
    RxLabel4: TRxLabel;
    Navigator: TsDBNavigator;
    BTPrint: TsBitBtn;
    Panel2: TPanel;
    DateEdit1: TsDateEdit;
    DateEdit2: TsDateEdit;
    suiButton1: TsBitBtn;
    Bevel1: TBevel;
    Label4: TLabel;
    Label2: TLabel;
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
    procedure BTPrintClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    DataIni, DataFin : String;
  public
  Contador, Contador2:Integer;
  end;

var
  FormConsultaCrediarioRecebidoPeriodo: TFormConsultaCrediarioRecebidoPeriodo;

implementation

uses Principal, Z_RotinasGerais, ModulodeDadosConsultas5, ModulodeDados,
  DetalhesPesqCrediarioPeriodo, ModulodeDadosRelatorios,
  DetalhesPesqCreRecebidoPeriodo;

{$R *.dfm}

procedure TFormConsultaCrediarioRecebidoPeriodo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaCrediarioRecebidoPeriodo:=nil;
end;

procedure TFormConsultaCrediarioRecebidoPeriodo.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsultaCrediarioRecebidoPeriodo.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaCrediarioRecebidoPeriodo.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCrediarioRecebidoPeriodo.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCrediarioRecebidoPeriodo.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCrediarioRecebidoPeriodo.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCrediarioRecebidoPeriodo.suiButton1Click(Sender: TObject);
var
X : Real;
begin
Try
    DMC5.SQLD_CrediarioRecebidoP.Active:=False;
    DMC5.CDS_CrediarioRecebidoP.Active:=False;
    DMC5.SQLD_CrediarioRecebidoP.Params[0].AsDate:=DateEdit1.Date;
    DMC5.SQLD_CrediarioRecebidoP.Params[1].AsDate:=DateEdit2.Date;
    DMC5.SQLD_CrediarioRecebidoP.Active:=True;
    DMC5.CDS_CrediarioRecebidoP.Active:=True;
    DMC5.CDS_CrediarioRecebidoP.First;

DataIni:= DateEdit1.Text;
DataFin:= DateEdit2.Text;

X:= 0;
X:= X + DMC5.CDS_CrediarioRecebidoPVALOR_PAGO.AsFloat;
DMC5.CDS_CrediarioRecebidoP.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMC5.CDS_CrediarioRecebidoP.Eof do
begin
X:= X + DMC5.CDS_CrediarioRecebidoPVALOR_PAGO.AsFloat;
DMC5.CDS_CrediarioRecebidoP.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;

    If  DMC5.CDS_CrediarioRecebidoP.RecordCount = 0 then
    Begin
    BTPrint.Enabled:= False;
    DBGrid1.Enabled:= False;
    FormPrincipal.MsgInformacao.HTMLText.text:= 'Não Há Crediário Recebido no Período Informado!';
    FormPrincipal.MsgInformacao.Execute;
    end else
    begin
    DBGrid1.Enabled:= True;
    BTPrint.Enabled:= True;
    end;
      Except
      FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um erro ao localizar crediario a receber por período. Reinicie o sistema e tente novamente!';
      FormPrincipal.MsgErro.Execute;
   end;
end;



procedure TFormConsultaCrediarioRecebidoPeriodo.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var DtVen, DtBaixa: TDateTime;
begin
DtBaixa:= DMC5.CDS_CrediarioRecebidoPDATA_BAIXA.Value;
DtVen:= DMC5.CDS_CrediarioRecebidoPDATA_Vencimento.Value;
If DtVen < DtBaixa then
Dbgrid1.Canvas.Font.Color:= clRed;
If DtVen >= DtBaixa then
Dbgrid1.Canvas.Font.Color:= clBlue;
Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TFormConsultaCrediarioRecebidoPeriodo.FormShow(Sender: TObject);
begin
DMC5.SQLD_CrediarioRecebidoP.Active:= False;
DMC5.CDS_CrediarioRecebidoP.Active:= False;
end;

procedure TFormConsultaCrediarioRecebidoPeriodo.BTPrintClick(Sender: TObject);
begin
IF FormPrincipal.RContasReceber = 'S' THEN
BEGIN
DMR.RvRelatorios.SetParam('DI',DataIni);
DMR.RvRelatorios.SetParam('DF',DataFin);
DMR.RvRelatorios.SelectReport('Rp_CrediarioRecebidoPeriodo',False);
DMR.RvRelatorios.Execute;
end else
begin
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormConsultaCrediarioRecebidoPeriodo.DBGrid1DblClick(
  Sender: TObject);
begin
if FormDetPesCreRecebidoPeriodo=nil   then
    begin
     FormDetPesCreRecebidoPeriodo:=TFormDetPesCreRecebidoPeriodo.Create(self);
      FormDetPesCreRecebidoPeriodo.ShowModal;
      end;
end;

end.
