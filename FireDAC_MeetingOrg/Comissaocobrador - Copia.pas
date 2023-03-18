unit Comissaocobrador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser;

type
  TFormComCobrador = class(TForm)
    RLExpressionParser1: TRLExpressionParser;
    RLLabel6: TRLLabel;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    rlbl9: TRLLabel;
    rlbl10: TRLLabel;
    datai: TRLLabel;
    dataf: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLLabel12: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel10: TRLLabel;
    RLDBText1: TRLDBText;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLBand3: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLLabel7: TRLLabel;
    RLLabel13: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure dataiAfterPrint(Sender: TObject);
    procedure datafAfterPrint(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBResult1AfterPrint(Sender: TObject);
    procedure RLDBText6AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormComCobrador: TFormComCobrador;
   COMISSAO: Currency;
implementation

uses Udmcob, RelatorioComissao, ModulodeDados;

{$R *.dfm}

procedure TFormComCobrador.FormCreate(Sender: TObject);
begin
//COMISSAO := FormRelatorioComissao.CurrencyEdit1.value;
end;

procedure TFormComCobrador.dataiAfterPrint(Sender: TObject);
begin
datai.Caption:= FormRelatorioComissao.DateEdit1.Text;
end;

procedure TFormComCobrador.datafAfterPrint(Sender: TObject);
begin
 dataf.Caption:= FormRelatorioComissao.DateEdit2.Text;
end;

procedure TFormComCobrador.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
// COMISSAO := FormRelatorioComissao.CurrencyEdit1.value;
end;

procedure TFormComCobrador.RLDBResult1AfterPrint(Sender: TObject);
begin
///COMISSAO :=(DMCOB.CDS_COBRANCA1vALOR_PAGO.Value * FormRelatorioComissao.CurrencyEdit1.Value) / 100;
//RLDBResult1.Caption :=  COMISSAO;
end;

procedure TFormComCobrador.RLDBText6AfterPrint(Sender: TObject);
begin
// RLDBText6.Text :=   FormRelatorioComissao.CurrencyEdit1.value;
end;

end.
