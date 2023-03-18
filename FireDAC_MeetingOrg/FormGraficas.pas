unit FormGraficas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RXCtrls, SUIButton, ExtCtrls, FMTBcd,
  DB, DBClient, Provider, SqlExpr, RxToolEdit;

type
  TFormGrafica = class(TForm)
    Bevel1: TBevel;
    Image1: TImage;
    Panel5: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    btnSuibtton1: TsuiButton;
    suiButton3: TsuiButton;
    suiButton1: TsuiButton;
    pnl1: TPanel;
    rxlbl1: TRxLabel;
    rxlbl2: TRxLabel;
    RxLabel2: TRxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    rxlbl3: TRxLabel;
    pnl2: TPanel;
    RXLabel6: TRxLabel;
    Cliente: TComboEdit;
    Panel4: TPanel;
    RxLabel1: TRxLabel;
    Panel6: TPanel;
    ComboEdit1: TComboEdit;
    Qry_Vendas: TSQLQuery;
    dsp_vendas: TDataSetProvider;
    cds_vendas: TClientDataSet;
    dts_vendas: TDataSource;
    Qry_VendasCODIGO: TIntegerField;
    Qry_VendasCODIGO_CLIENTE: TIntegerField;
    Qry_VendasDATA_COMPRA: TDateField;
    Qry_VendasDATA_VENCIMENTO: TDateField;
    Qry_VendasDATA_BAIXA: TDateField;
    Qry_VendasHISTORICO: TStringField;
    Qry_VendasUSUARIO_VENDA: TStringField;
    Qry_VendasUSUARIO_BAIXA: TStringField;
    Qry_VendasSITUACAO: TStringField;
    Qry_VendasVALOR_COMPRA: TFMTBCDField;
    Qry_VendasVALOR_JUROS: TFMTBCDField;
    Qry_VendasVALOR_ACRESCIMO: TFMTBCDField;
    Qry_VendasVALOR_DESCONTO: TFMTBCDField;
    Qry_VendasVALOR_PAGAR: TFMTBCDField;
    Qry_VendasVALOR_PAGO: TFMTBCDField;
    Qry_VendasVALOR_TOTAL: TFMTBCDField;
    Qry_VendasCODIGO_COMPRA: TIntegerField;
    Qry_VendasPARCELA: TStringField;
    Qry_VendasNUMBOLETO: TStringField;
    Qry_VendasBANCO_PORTADOR: TIntegerField;
    Qry_VendasREMESSA: TStringField;
    Qry_VendasDATACREDITO: TDateField;
    Qry_VendasID_PORTADOR: TIntegerField;
    Qry_VendasENVIADO: TStringField;
    Qry_VendasCOD_EMPRESA: TIntegerField;
    Qry_VendasNUMBOLETO1: TIntegerField;
    Qry_VendasCODIGOCEDENTE: TStringField;
    Qry_VendasTIPO: TStringField;
    Qry_VendasCHEK_BOX: TStringField;
    Qry_VendasNUM_NOTA: TIntegerField;
    Qry_VendasSERIE_NOTA: TStringField;
    Qry_VendasNOME_SACADO: TStringField;
    Qry_VendasANO: TStringField;
    Qry_VendasMES: TStringField;
    Qry_VendasTP_BAIXA: TStringField;
    Qry_VendasID_CONTRATO: TIntegerField;
    Qry_VendasNOME_ARQ: TStringField;
    Qry_VendasCOBRADOR: TIntegerField;
    Qry_VendasCOMISSAO: TFMTBCDField;
    Qry_VendasDT_PREVISAO_PGTO: TDateField;
    Qry_VendasDIAS_VENCIDO: TIntegerField;
    Qry_VendasN_OS: TStringField;
    Qry_VendasVLR_GRAFICA: TFMTBCDField;
    Qry_VendasVALOR_COMISAO: TFMTBCDField;
    cds_vendasCODIGO: TIntegerField;
    cds_vendasCODIGO_CLIENTE: TIntegerField;
    cds_vendasDATA_COMPRA: TDateField;
    cds_vendasDATA_VENCIMENTO: TDateField;
    cds_vendasDATA_BAIXA: TDateField;
    cds_vendasHISTORICO: TStringField;
    cds_vendasUSUARIO_VENDA: TStringField;
    cds_vendasUSUARIO_BAIXA: TStringField;
    cds_vendasSITUACAO: TStringField;
    cds_vendasVALOR_COMPRA: TFMTBCDField;
    cds_vendasVALOR_JUROS: TFMTBCDField;
    cds_vendasVALOR_ACRESCIMO: TFMTBCDField;
    cds_vendasVALOR_DESCONTO: TFMTBCDField;
    cds_vendasVALOR_PAGAR: TFMTBCDField;
    cds_vendasVALOR_PAGO: TFMTBCDField;
    cds_vendasVALOR_TOTAL: TFMTBCDField;
    cds_vendasCODIGO_COMPRA: TIntegerField;
    cds_vendasPARCELA: TStringField;
    cds_vendasNUMBOLETO: TStringField;
    cds_vendasBANCO_PORTADOR: TIntegerField;
    cds_vendasREMESSA: TStringField;
    cds_vendasDATACREDITO: TDateField;
    cds_vendasID_PORTADOR: TIntegerField;
    cds_vendasENVIADO: TStringField;
    cds_vendasCOD_EMPRESA: TIntegerField;
    cds_vendasNUMBOLETO1: TIntegerField;
    cds_vendasCODIGOCEDENTE: TStringField;
    cds_vendasTIPO: TStringField;
    cds_vendasCHEK_BOX: TStringField;
    cds_vendasNUM_NOTA: TIntegerField;
    cds_vendasSERIE_NOTA: TStringField;
    cds_vendasNOME_SACADO: TStringField;
    cds_vendasANO: TStringField;
    cds_vendasMES: TStringField;
    cds_vendasTP_BAIXA: TStringField;
    cds_vendasID_CONTRATO: TIntegerField;
    cds_vendasNOME_ARQ: TStringField;
    cds_vendasCOBRADOR: TIntegerField;
    cds_vendasCOMISSAO: TFMTBCDField;
    cds_vendasDT_PREVISAO_PGTO: TDateField;
    cds_vendasDIAS_VENCIDO: TIntegerField;
    cds_vendasN_OS: TStringField;
    cds_vendasVLR_GRAFICA: TFMTBCDField;
    cds_vendasVALOR_COMISAO: TFMTBCDField;
    rXLABEL7: TEdit;
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSuibtton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGrafica: TFormGrafica;

implementation

uses ModulodeDados, RelGraficas;

{$R *.dfm}

procedure TFormGrafica.suiButton3Click(Sender: TObject);
begin
DateEdit1.Clear;
DateEdit2.Clear;
Cliente.Clear;
ComboEdit1.clear;
end;

procedure TFormGrafica.suiButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormGrafica.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormGrafica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormGrafica := nil;
end;

procedure TFormGrafica.btnSuibtton1Click(Sender: TObject);
var
  inicio, final, codcli, Nvenda, vendedor,  produto :string;
  valor1, valor2 : Currency;

  begin

   If DateEdit2.Date < DateEdit1.Date Then
   begin
  Application.MESSAGEBOX('Intervalo de datas inválido, a data inicial é maior que a data final!', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
  DateEdit2.Date := DateEdit1.Date;
end
Else
begin
  // por data
inicio:=datetostr(DATE);
final:=datetostr(DATE);

inicio:=dateedit1.TexT;
final:=dateedit2.TexT;

//cliente
codcli:=Cliente.text;
//produto:= ComboEdit1.text;

 // por vernda e valor
//Nvenda := edit1.text;
//valor1:= EvNumEdit1.Value;
//valor2:= EvNumEdit2.Value;
vendedor:= RxLabel7.Text;

BEGIN
cds_vendas.Active :=FALSE;
Qry_Vendas.close;
Qry_Vendas.SQL.Clear;
Qry_Vendas.SQL.add('select * from Crediario where CODIGO >0'+'');
if codcli > '' then
Qry_Vendas.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if vendedor > '' then
Qry_Vendas.SQL.add('and Usuario_venda ='+(Vendedor)+'');
if inicio > ' / /   ' then
Qry_Vendas.SQL.add('and DATA_compra >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_compra <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
Qry_Vendas.SQL.add('order By Data_Compra asc');
Qry_Vendas.Open;
Cds_vendas.Active :=true;
FormRelGrafica := TFormRelGrafica.Create(self);
FormRelGrafica.RLReport1.Prepare;
FormRelGrafica.RLReport1.Preview();
end;
end;

end;

procedure TFormGrafica.FormShow(Sender: TObject);
begin
RxLabel7.Text :='';
RxLabel6.Caption :='';
end;

end.
