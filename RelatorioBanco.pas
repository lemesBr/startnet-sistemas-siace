unit RelatorioBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls,ModulodeDadosRelatorios,ModulodeDados, ExtCtrls, ComCtrls, DBCtrls,
  SUIDBCtrls, SUIEdit, SUIImagePanel, SUIGroupBox, SUIButton,
  Mask, SUIDlg, RxLookup, sBitBtn, frxClass,
  frxDBSet, frxDesgn, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, 
  AdvGlowButton, RxToolEdit, AdvReflectionImage, sLabel;

type
  TFormRelatorioBanco = class(TForm)
    Bevel1: TBevel;
    Label3: TLabel;
    DateEdit3: TDateEdit;
    Label4: TLabel;
    DateEdit4: TDateEdit;
    Label8: TLabel;
    Bevel3: TBevel;
    Edit1: TDBLookupComboBox;
    Edit2: TEdit;
    img: TAdvReflectionImage;
    fxdesenhar: TfrxDesigner;
    fscliente: TfrxDBDataset;
    fxcontacorrente: TfrxReport;
    bimprimir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    myLabel3d1: TsLabelFX;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DateEdit3Enter(Sender: TObject);
    procedure DateEdit4Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DateEdit3Exit(Sender: TObject);
    procedure DateEdit4Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bcancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioBanco: TFormRelatorioBanco;

implementation

uses ModulodeDadosConsultas2, Z_RotinasGerais, Principal,
  ModulodeDadosBaixas, Ubibli1;

{$R *.dfm}

function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve está no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;

procedure TFormRelatorioBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMB.Extrato.Active:=False;
Action:=CaFree;
FormRelatorioBanco:=nil;
end;

procedure TFormRelatorioBanco.suiButton1Click(Sender: TObject);
var
E, S, T, SALDO: Real;
begin
{
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
end; }
end;

procedure TFormRelatorioBanco.suiButton4Click(Sender: TObject);
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
{ if  RadioButton1.Checked = True  then
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


    If  DMC2.CDS_MOV_BancoEspecifico.EOF then
    Begin
       ShowMessage('Sem dados a Emitir');
       end else
       begin
{DMC2.CDS_MOV_BancoEspecifico.First;
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
end;}
//DMC2.CDS_MOV_BancoEspecifico.First;

 { with DMC2.CDS_MOV_BancoEspecifico do
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
    // SALDO := ExatoCurrency(DMC2.cds_saldo_ant_ccSALDO.asfloat + E - S, 2);
       SALDO := ExatoCurrency(DMC2.cds_saldo_ant_ccSALDO.asfloat, 2);

DMR.RvRelatorios.SetParam('datai',DateEdit3.Text);
DMR.RvRelatorios.SetParam('dataf',DateEdit4.Text);
DMR.RvRelatorios.SetParam('soma',FormatFloat('R$: ##,##0.00',SALDO));
//DMR.RvRelatorios.SetParam('soma',FloatToStr(SALDO));
DMR.RvRelatorios.SelectReport('Rp_BancoEspecifico',False);
DMR.RvRelatorios.Execute;
end;
end;
  }
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

//end;
end;
end;
end;

procedure TFormRelatorioBanco.suiButton4KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormRelatorioBanco.FormShow(Sender: TObject);
begin
DM.SDS_Conta_Bancaria.Active:= False;
DM.SDS_Conta_Bancaria.Active:= True;
end;

procedure TFormRelatorioBanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormRelatorioBanco.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioBanco.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioBanco.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioBanco.DateEdit3Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioBanco.DateEdit4Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioBanco.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioBanco.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioBanco.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
EDIT2.Text := DM.SDS_Conta_BancariaCODIGO.Text;
end;

procedure TFormRelatorioBanco.DateEdit3Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioBanco.DateEdit4Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioBanco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormRelatorioBanco.bcancelarClick(Sender: TObject);
begin
close;
end;

end.
