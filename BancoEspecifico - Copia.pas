unit BancoEspecifico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, RXCtrls, ExtCtrls, 
  StdCtrls, Mask, ToolEdit, SUIButton, SUIDlg, DBCtrls, Mylabel, Buttons;

type
  TFormBancoEspecifico = class(TForm)
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
    MsgNenhumRegistro: TsuiMessageDialog;
    MsgData: TsuiMessageDialog;
    Panel1: TPanel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel9: TRxLabel;
    BTVisualizar: TBitBtn;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    suiDBNavigator1: TDBNavigator;
    myLabel3d1: TmyLabel3d;
    LCP: TDBLookupComboBox;
    Edit2: TEdit;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit3Enter(Sender: TObject);
    procedure DateEdit4Enter(Sender: TObject);
    procedure DateEdit4Exit(Sender: TObject);
    procedure DateEdit3Exit(Sender: TObject);
    procedure BTRelatorioClick(Sender: TObject);
    procedure LCPEnter(Sender: TObject);
    procedure LCPExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBancoEspecifico: TFormBancoEspecifico;

implementation

uses ModulodeDadosConsultas2, Z_RotinasGerais, ModulodeDadosBaixas,
  ModulodeDadosRelatorios, ModulodeDados, Principal;

{$R *.dfm}

procedure TFormBancoEspecifico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormBancoEspecifico:=nil;
end;

procedure TFormBancoEspecifico.BTVisualizarClick(Sender: TObject);
var
E, S, T, SALDO: Real;
begin

If DateEdit4.Date < DateEdit3.Date then
begin
MsgData.ShowModal;
DateEdit4.Clear;
DateEdit4.SetFocus;
end else
begin

    DMC2.SQLD_MOV_BancoEspecifico.Active:=False;
    DMC2.CDS_MOV_BancoEspecifico.Active:=False;
    DMC2.SQLD_MOV_BancoEspecifico.Params[0].AsDate:=DateEdit3.Date;
    DMC2.SQLD_MOV_BancoEspecifico.Params[1].AsDate:=DateEdit4.Date;
    DMC2.SQLD_MOV_BancoEspecifico.Params[2].Value:= Edit2.Text;
    DMC2.SQLD_MOV_BancoEspecifico.Active:=True;
    DMC2.CDS_MOV_BancoEspecifico.Active:=True;

    DMC2.Qry_Saldo_ant_cc.Active:=False;
    DMC2.cds_saldo_ant_cc.Active:=False;
    DMC2.Qry_Saldo_ant_cc.Params[0].AsDate:=DateEdit3.Date;
    DMC2.Qry_Saldo_ant_cc.Params[1].AsInteger :=StrToInt(Edit2.Text);
    DMC2.Qry_Saldo_ant_cc.Active:=True;
    DMC2.cds_saldo_ant_cc.Active:=True;

SALDO := DMC2.CDS_Saldo_Ant_ccENTRADA.asfloat - DMC2.CDS_Saldo_Ant_ccSAIDA.asfloat;

  If  DMC2.CDS_MOV_BancoEspecifico.EOF then
  Begin
       RXLabel8.Caption:= '';
       RXLabel2.Caption:= '';
       RXLabel5.Caption:= '';
       BTRelatorio.Enabled:= False;
       DMC2.SQLD_MOV_BancoEspecifico.Active:=False;
       DMC2.CDS_MOV_BancoEspecifico.Active:=False;
       MsgNenhumRegistro.ShowModal;
       end else
begin
E:= E + DMC2.CDS_MOV_BancoEspecificoVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_BancoEspecificoVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_BancoEspecifico.Next;
T:= E - S;
RXLabel11.Caption:= FormatFloat('R$: ##,##0.00',saldo);
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',E);
RXLabel2.Caption:= FormatFloat('R$: ##,##0.00',S);
RXLabel5.Caption:= FormatFloat('R$: ##,##0.00',saldo + T);
//BTRelatorio.Enabled:= True;
While not DMC2.CDS_MOV_BancoEspecifico.Eof do
begin
E:= E + DMC2.CDS_MOV_BancoEspecificoVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_BancoEspecificoVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_BancoEspecifico.Next;
T:= E - S;
RXLabel11.Caption:= FormatFloat('R$: ##,##0.00',saldo);
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',E);
RXLabel2.Caption:= FormatFloat('R$: ##,##0.00',S);
RXLabel5.Caption:= FormatFloat('R$: ##,##0.00', saldo + T);
BTRelatorio.Enabled:= True;
end;
DMC2.CDS_MOV_BancoEspecifico.First;
end;
end;
end;

procedure TFormBancoEspecifico.FormShow(Sender: TObject);
begin
DM.SDS_Conta_Bancaria.Active:= False;
DM.SDS_Conta_Bancaria.Active:= True;
DMC2.SQLD_MOV_BancoEspecifico.Active:=False;
DMC2.CDS_MOV_BancoEspecifico.Active:=False;
RxLabel2.Caption:= '';
RxLabel5.Caption:= '';
RxLabel8.Caption:= '';
LCP.SetFocus;
end;

procedure TFormBancoEspecifico.DateEdit3Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormBancoEspecifico.DateEdit4Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormBancoEspecifico.DateEdit4Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormBancoEspecifico.DateEdit3Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormBancoEspecifico.BTRelatorioClick(Sender: TObject);
var
E, S, T, saldo: Real;
begin

If DateEdit4.Date < DateEdit3.Date then
begin
ShowMessage('Data inicial maior que a data final');
DateEdit4.Clear;
DateEdit4.SetFocus;
end else
begin

    DMC2.SQLD_MOV_BancoEspecifico.Active:=False;
    DMC2.CDS_MOV_BancoEspecifico.Active:=False;
    DMC2.SQLD_MOV_BancoEspecifico.Params[0].AsDate:=DateEdit3.Date;
    DMC2.SQLD_MOV_BancoEspecifico.Params[1].AsDate:=DateEdit4.Date;
    DMC2.SQLD_MOV_BancoEspecifico.Params[2].AsInteger:=StrToInt(Edit2.Text);
    DMC2.SQLD_MOV_BancoEspecifico.Active:=True;
    DMC2.CDS_MOV_BancoEspecifico.Active:=True;


    DMC2.Qry_Saldo_ant_cc.Active:=False;
    DMC2.cds_saldo_ant_cc.Active:=False;
    DMC2.Qry_Saldo_ant_cc.Params[0].AsDate:=DateEdit3.Date;
    DMC2.Qry_Saldo_ant_cc.Params[1].AsInteger :=StrToInt(Edit2.Text);
    DMC2.Qry_Saldo_ant_cc.Active:=True;
    DMC2.cds_saldo_ant_cc.Active:=True;

SALDO := DMC2.CDS_Saldo_Ant_ccENTRADA.asfloat - DMC2.CDS_Saldo_Ant_ccSAIDA.asfloat;

  If  DMC2.CDS_MOV_BancoEspecifico.EOF then
  Begin
       ShowMessage('Sem dados a Emitir');
       end else
begin
E:= E + DMC2.CDS_MOV_BancoEspecificoVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_BancoEspecificoVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_BancoEspecifico.Next;
T:= E - S;
While not DMC2.CDS_MOV_BancoEspecifico.Eof do
begin
E:= E + DMC2.CDS_MOV_BancoEspecificoVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_BancoEspecificoVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_BancoEspecifico.Next;
T:= E - S;
end;
DMC2.CDS_MOV_BancoEspecifico.First;

DMR.RvRelatorios.SetParam('datai',DateEdit3.Text);
DMR.RvRelatorios.SetParam('dataf',DateEdit4.Text);
DMR.RvRelatorios.SetParam('soma',FormatFloat('R$: ##,##0.00',SALDO + T ));
DMR.RvRelatorios.SelectReport('Rp_BancoEspecifico',False);
DMR.RvRelatorios.Execute;
end;
end;

{IF FormPrincipal.RBANCOS = 'S' THEN
BEGIN
DMR.RvRelatorios.SetParam('datai',DateEdit1.Text);
DMR.RvRelatorios.SetParam('dataf',DateEdit2.Text);
DMR.RvRelatorios.SetParam('soma',RXLabel5.Caption);
DMR.RvRelatorios.SelectReport('Rp_BancoEspecifico',False);
DMR.RvRelatorios.Execute;
end ELSE
BEGIN
FormPrincipal.MSG_NOT.Execute;
end;}
end;


procedure TFormBancoEspecifico.LCPEnter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormBancoEspecifico.LCPExit(Sender: TObject);
begin
 CorSaida(Sender);
 EDIT2.Text := DM.SDS_Conta_BancariaCODIGO.Text;
end;

procedure TFormBancoEspecifico.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormBancoEspecifico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
