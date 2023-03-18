unit BancoAnalitico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, RXCtrls, ExtCtrls, 
  StdCtrls, Mask, ToolEdit, Mylabel, DBCtrls, Buttons,
  TaskDialog;

type
  TFormBancoAnalitico = class(TForm)
    Panel3: TPanel;
    RxLabel4: TRxLabel;
    RxLabel8: TRxLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel5: TRxLabel;
    BTRelatorio: TBitBtn;
    suiDBNavigator1: TDBNavigator;
    Panel1: TPanel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    BTVisualizar: TBitBtn;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    myLabel3d1: TRxLabel;
    MsgNenhumRegistro: TAdvTaskDialog;
    MsgData: TAdvTaskDialog;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure BTRelatorioClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBancoAnalitico: TFormBancoAnalitico;

implementation

uses ModulodeDadosConsultas2, Z_RotinasGerais, ModulodeDadosBaixas,
  ModulodeDadosRelatorios, Principal;

{$R *.dfm}

procedure TFormBancoAnalitico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormBancoAnalitico:=nil;
end;

procedure TFormBancoAnalitico.BTVisualizarClick(Sender: TObject);
var
E, S, T, saldo: Real;
begin

If DateEdit2.Date < DateEdit1.Date then
begin
MsgData.Execute;
DateEdit2.Clear;
DateEdit2.SetFocus;
end else
begin

    DMC2.SQLD_MOV_BANCO.Active:=False;
    DMC2.CDS_MOV_BANCO.Active:=False;
    DMC2.SQLD_MOV_BANCO.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_MOV_BANCO.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_MOV_BANCO.Active:=True;
    DMC2.CDS_MOV_BANCO.Active:=True;

    DMC2.Qry_Saldo_ant.Active:=False;
    DMC2.cds_saldo_ant.Active:=False;
    // DMC2.Qry_Saldo_ant.Params[0].AsString:=Edit2.Text;
    DMC2.Qry_Saldo_ant.Params[0].AsDate:=DateEdit1.Date;
    DMC2.Qry_Saldo_ant.Active:=True;
    DMC2.cds_saldo_ant.Active:=True;


SALDO := DMC2.CDS_Saldo_AntENTRADA.asfloat - DMC2.CDS_Saldo_AntSAIDA.asfloat;
  If  DMC2.CDS_MOV_BANCO.EOF then
  Begin
       RXLabel10.Caption:= '';
       RXLabel8.Caption:= '';
       RXLabel2.Caption:= '';
       RXLabel5.Caption:= '';
       BTRelatorio.Enabled:= False;
       DMC2.SQLD_MOV_BANCO.Active:=False;
       DMC2.CDS_MOV_BANCO.Active:=False;
       MsgNenhumRegistro.Execute;
       end else
begin
E:= E + DMC2.CDS_MOV_BANCOVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_BANCOVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_BANCO.Next;
T:= E - S;
RXLabel10.Caption:= FormatFloat('R$: ##,##0.00',saldo);
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',E);
RXLabel2.Caption:= FormatFloat('R$: ##,##0.00',S);
RXLabel5.Caption:= FormatFloat('R$: ##,##0.00',saldo+T);
//BTRelatorio.Enabled:= True;
While not DMC2.CDS_MOV_BANCO.Eof do
begin
E:= E + DMC2.CDS_MOV_BANCOVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_BANCOVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_BANCO.Next;
T:= E - S;
RXLabel10.Caption:= FormatFloat('R$: ##,##0.00',saldo);
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',E);
RXLabel2.Caption:= FormatFloat('R$: ##,##0.00',S);
RXLabel5.Caption:= FormatFloat('R$: ##,##0.00',saldo+T);
BTRelatorio.Enabled:= True;
end;
DMC2.CDS_MOV_BANCO.First;
end;
end;
end;

procedure TFormBancoAnalitico.FormShow(Sender: TObject);
begin
DMC2.SQLD_MOV_BANCO.Active:=False;
DMC2.CDS_MOV_BANCO.Active:=False;
RxLabel2.Caption:= '';
RxLabel5.Caption:= '';
RxLabel8.Caption:= '';
DateEdit1.SetFocus;
end;

procedure TFormBancoAnalitico.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormBancoAnalitico.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormBancoAnalitico.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormBancoAnalitico.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormBancoAnalitico.BTRelatorioClick(Sender: TObject);
var
E, S, T, SALDO: Real;
begin

If DateEdit2.Date < DateEdit1.Date then
begin
ShowMessage('Data inicial maior q a data Final');
DateEdit2.Clear;
DateEdit2.SetFocus;
end else
begin
   DMC2.Qry_Saldo_ant.Active:=False;
    DMC2.cds_saldo_ant.Active:=False;
   // DMC2.Qry_Saldo_ant.Params[0].AsString:=Edit2.Text;
    DMC2.Qry_Saldo_ant.Params[0].AsDate:=DateEdit1.Date;
    DMC2.Qry_Saldo_ant.Active:=True;
    DMC2.cds_saldo_ant.Active:=True;


    DMC2.SQLD_MOV_BANCO.Active:=False;
    DMC2.CDS_MOV_BANCO.Active:=False;
    DMC2.SQLD_MOV_BANCO.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_MOV_BANCO.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_MOV_BANCO.Active:=True;
    DMC2.CDS_MOV_BANCO.Active:=True;


SALDO := DMC2.CDS_Saldo_AntENTRADA.asfloat - DMC2.CDS_Saldo_AntSAIDA.asfloat;

//Edit2.Text := FormatFloat('R$: ##,##0.00',SALDO);

  If  DMC2.CDS_MOV_BANCO.EOF then
  Begin
       ShowMessage('Sem registros a emitir');
end else
begin
E:= E + DMC2.CDS_MOV_BANCOVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_BANCOVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_BANCO.Next;
T:= E - S;
While not DMC2.CDS_MOV_BANCO.Eof do
begin
E:= E + DMC2.CDS_MOV_BANCOVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_BANCOVALOR_SAIDA.AsFloat ;
DMC2.CDS_MOV_BANCO.Next;
T:= E - S;
end;
DMC2.CDS_MOV_BANCO.First;

DMR.RvRelatorios.SetParam('datai',DateEdit1.Text);
DMR.RvRelatorios.SetParam('dataf',DateEdit2.Text);
DMR.RvRelatorios.SetParam('soma',FormatFloat('R$: ##,##0.00',SALDO + T ));
DMR.RvRelatorios.SelectReport('Rp_BancoAnalitico',False);
DMR.RvRelatorios.Execute;
end;
end;
{begin
IF FormPrincipal.RBANCOS = 'S' THEN
BEGIN
DMR.RvRelatorios.SetParam('datai',DateEdit1.Text);
DMR.RvRelatorios.SetParam('data',DateEdit1.Text);
DMR.RvRelatorios.SetParam('dataf',DateEdit2.Text);
DMR.RvRelatorios.SetParam('soma',RXLabel5.Caption);
DMR.RvRelatorios.SelectReport('Rp_BancoAnalitico',False);
DMR.RvRelatorios.Execute;
end ELSE
BEGIN
FormPrincipal.MSG_NOT.Execute;
end; }
end;


procedure TFormBancoAnalitico.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormBancoAnalitico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
