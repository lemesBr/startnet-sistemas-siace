unit RelLaticiniosFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser, RLRichText;

type
  TFormRelLaticiniosLinhas = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText2: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel16: TRLLabel;
    RLBand3: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel15: TRLLabel;
    linha: TRLLabel;
    RLLabel10: TRLLabel;
    RLExpressionParser1: TRLExpressionParser;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBImage1: TRLDBImage;
    rldbtxtSOMAQUANTIDADE: TRLDBText;
    RLLabel13: TRLLabel;
    RLBand4: TRLBand;
    RLLabel17: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    TOTAL: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult5: TRLDBResult;
    sub_total: TRLDBResult;
    RLLabel21: TRLLabel;
    Mes: TRLLabel;
    RLLabel24: TRLLabel;
    Ano: TRLLabel;
    procedure FormShow(Sender: TObject);
    procedure linhaAfterPrint(Sender: TObject);
    procedure TOTALAfterPrint(Sender: TObject);
    procedure sub_totalCompute(Sender: TObject; var Value: Variant;
      var Text: String; var ComputeIt: Boolean);
    procedure AnoAfterPrint(Sender: TObject);
    procedure MesAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelLaticiniosLinhas: TFormRelLaticiniosLinhas;

implementation

uses RelatorioProdLaticinios;

{$R *.dfm}

procedure TFormRelLaticiniosLinhas.FormShow(Sender: TObject);
begin
linha.Caption:= FormPordLaticinios.rxlabel1.Caption;
//dataf.Caption:= FormRelVendas.DateEdit2.Text;
end;

procedure TFormRelLaticiniosLinhas.linhaAfterPrint(Sender: TObject);
begin
linha.Caption := FormPordLaticinios.RxLabel1.Caption;
end;

procedure TFormRelLaticiniosLinhas.TOTALAfterPrint(Sender: TObject);
begin
Total.Caption := (RLDBResult3.Value - RLDBResult4.Value);
end;

procedure TFormRelLaticiniosLinhas.sub_totalCompute(Sender: TObject;
  var Value: Variant; var Text: String; var ComputeIt: Boolean);
begin
 sub_Total.Text := (RLDBResult1.Value - RLDBResult5.Value);
end;

procedure TFormRelLaticiniosLinhas.AnoAfterPrint(Sender: TObject);
begin
ANO.Caption := FormPordLaticinios.Edit2.Text;
end;

procedure TFormRelLaticiniosLinhas.MesAfterPrint(Sender: TObject);
begin
mes.Caption := FormPordLaticinios.Edit1.Text;
end;

end.
