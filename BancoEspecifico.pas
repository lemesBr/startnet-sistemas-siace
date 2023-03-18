unit BancoEspecifico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, RXCtrls, ExtCtrls, 
  StdCtrls, Mask,  SUIButton, SUIDlg, DBCtrls, Buttons,
  frxDesgn, frxClass, frxDBSet, Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvGlowButton, RxToolEdit, sLabel;

type
  TFormBancoEspecifico = class(TForm)
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    RxLabel3: TRxLabel;
    RxLabel5: TRxLabel;
    Panel1: TPanel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel9: TRxLabel;
    BTVisualizar: TBitBtn;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    myLabel3d1: TsLabelFX;
    LCP: TDBLookupComboBox;
    Edit2: TEdit;
    fxcontacorrente: TfrxReport;
    fscliente: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    BTRelatorio: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    E1: TMenuItem;
    consulta: TFDQuery;
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
    procedure bcancelarClick(Sender: TObject);
    procedure E1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBancoEspecifico: TFormBancoEspecifico;

implementation

uses ModulodeDadosConsultas2, Z_RotinasGerais, ModulodeDadosBaixas,
  ModulodeDadosRelatorios, ModulodeDados, Principal, Ubibli1;

{$R *.dfm}

function RemoveChar(Const Texto:String):String;
  //
  // Remove caracteres de uma string deixando apenas numeros
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;
 function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve está no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;

procedure TFormBancoEspecifico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DMB.Extrato.Active:=False;
Action:=CaFree;
FormBancoEspecifico:=nil;
end;

procedure TFormBancoEspecifico.BTVisualizarClick(Sender: TObject);
var
E, S, T, SALDO: Real;
begin

If DateEdit4.Date < DateEdit3.Date then
begin
ShowMessage('Data final deve ser maior que a data inicial...');
DateEdit4.Clear;
DateEdit4.SetFocus;
end else
begin
{if  RadioButton1.Checked = True  then
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
      // RXLabel8.Caption:= '';
      // RXLabel2.Caption:= '';
       RXLabel5.Caption:= '';
       BTRelatorio.Enabled:= False;
       DMC2.SQLD_MOV_BancoEspecifico.Active:=False;
       DMC2.CDS_MOV_BancoEspecifico.Active:=False;
      // MsgNenhumRegistro.ShowModal;
       ShowMessage('SEM MOVIMENTO NO PERÍODO');
       end else
begin
E:= E + DMC2.CDS_MOV_BancoEspecificoVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_BancoEspecificoVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_BancoEspecifico.Next;
T:= E - S;
//RXLabel11.Caption:= FormatFloat('R$: ##,##0.00',saldo);
//RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',E);
//RXLabel2.Caption:= FormatFloat('R$: ##,##0.00',S);
RXLabel5.Caption:= FormatFloat('R$: ##,##0.00',saldo + T);
//BTRelatorio.Enabled:= True;
While not DMC2.CDS_MOV_BancoEspecifico.Eof do
begin
E:= E + DMC2.CDS_MOV_BancoEspecificoVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_BancoEspecificoVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_BancoEspecifico.Next;
T:= E - S;
//RXLabel11.Caption:= FormatFloat('R$: ##,##0.00',saldo);
//RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',E);
//RXLabel2.Caption:= FormatFloat('R$: ##,##0.00',S);
RXLabel5.Caption:= FormatFloat('R$: ##,##0.00', saldo + T);
BTRelatorio.Enabled:= True;
end;
DMC2.CDS_MOV_BancoEspecifico.First;
end;
end;
end;
}

    DMB.Extrato.Active:=False;
    DMB.Extrato.Params[0].AsDate:=DateEdit3.Date;
    DMB.Extrato.Params[1].AsDate:=DateEdit4.Date;
    DMB.Extrato.Params[2].AsInteger:=StrToInt(Edit2.Text);
    DMB.Extrato.Active:=True;
    DMB.Extrato.last;
  If not DMB.Extrato.EOF then
  Begin
       RXLabel5.Caption:= '';
       BTRelatorio.Enabled:= False;
       ShowMessage('SEM MOVIMENTO NO PERÍODO');
  end else
   BEGIN
    RXLabel5.Caption:= FormatFloat('R$: ##,##0.00', DMB.ExtratoSALDO.AsFloat);
    BTRelatorio.Enabled:= TRUE;
  end;
 end;
end;


procedure TFormBancoEspecifico.FormShow(Sender: TObject);
begin
DM.SDS_Conta_Bancaria.Active:= False;
DM.SDS_Conta_Bancaria.Active:= True;
DMC2.SQLD_MOV_BancoEspecifico.Active:=False;
DMC2.CDS_MOV_BancoEspecifico.Active:=False;
//RxLabel2.Caption:= '';
RxLabel5.Caption:= '';
//RxLabel8.Caption:= '';
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
{  if  RadioButton1.Checked = True  then
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

    SALDO := DMC2.cds_saldo_ant_ccSALDO.asfloat;

  If  DMC2.CDS_MOV_BancoEspecifico.EOF then
  Begin
       ShowMessage('Sem dados a Emitir');
  end else
  begin
  with DMC2.CDS_MOV_BancoEspecifico do
      begin
         First;
         while not eof do
            begin
               e:= e + DMC2.CDS_MOV_BancoEspecificoVALOR_ENTRADA.AsCurrency;
               S:= S + DMC2.CDS_MOV_BancoEspecificoVALOR_SAIDA.AsCurrency;
              next;
            end;

      end;
     // T:= E - S;
     SALDO := ExatoCurrency(DMC2.cds_saldo_ant_ccSALDO.asfloat + E - S,2);



DMR.RvRelatorios.SetParam('datai',DateEdit3.Text);
DMR.RvRelatorios.SetParam('dataf',DateEdit4.Text);
DMR.RvRelatorios.SetParam('soma',FormatFloat('R$: ##,##0.00',SALDO));
DMR.RvRelatorios.SelectReport('Rp_BancoEspecifico',False);
DMR.RvRelatorios.Execute;
end;
end;
end;}

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
// if  RadioButton2.Checked = True  then
 begin
  dm.qrrelatorio.open;
  dm.qrrelatorio.edit;

  dm.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';
  dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DO EXTRATO BANCÁRIO: ' + DATEEDIT3.TEXT + ' A ' + DATEEDIT4.TEXT;


    DMB.Extrato.Active:=False;
    DMB.Extrato.Params[0].AsDate:=DateEdit3.Date;
    DMB.Extrato.Params[1].AsDate:=DateEdit4.Date;
    DMB.Extrato.Params[2].AsInteger:=StrToInt(Edit2.Text);
    DMB.Extrato.Active:=True;

    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'EXTRATO BANCÁRIO';
    fxcontacorrente.LoadFromFile(ExtractFilePath(Application.ExeName) + '\rel\extrato.fr3');
    fxcontacorrente.ShowReport;
  end;
end;
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

procedure TFormBancoEspecifico.bcancelarClick(Sender: TObject);
begin

close;
end;

procedure TFormBancoEspecifico.E1Click(Sender: TObject);
var
  lanc : string;
begin
if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if Application.MESSAGEBOX('Confirma Exclusão do lançamento?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
            LANC := IntToStr(DMB.ExtratoLCTO.AsInteger);

            Consulta.CLOSE;
            Consulta.SQL.Clear;
            Consulta.SQL.add('delete from MOVIMENTO_DIARIO where codigo ='+(LANC));
            Consulta.ExecSQL;

            BTVisualizarClick(Sender);
 end;
end;
end;

end.
