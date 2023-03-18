unit RelatorioProducaoLaticinios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichFilter, RLFilters, RLDraftFilter, RLXLSFilter,
  RLHTMLFilter, RLPDFFilter, RLParser;

type
  TFormRelProdLaticinios = class(TForm)
    RLReport1: TRLReport;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    RLDBText8: TRLDBText;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLBand3: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel16: TRLLabel;
    RLBand4: TRLBand;
    RLExpressionParser1: TRLExpressionParser;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLXLSFilter1: TRLXLSFilter;
    Matricial: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel23: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel28: TRLLabel;
    DATAI: TRLLabel;
    DATAF: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel22: TRLLabel;
    TOTAL: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    Mes: TRLLabel;
    RLLabel24: TRLLabel;
    Ano: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText15: TRLDBText;
    procedure FormShow(Sender: TObject);
    procedure TOTALAfterPrint(Sender: TObject);
    procedure DATAIAfterPrint(Sender: TObject);
    procedure DATAFAfterPrint(Sender: TObject);
    procedure MesAfterPrint(Sender: TObject);
    procedure AnoAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelProdLaticinios: TFormRelProdLaticinios;

implementation

uses ModulodeDados, RelatorioProdLaticinios;

{$R *.dfm}

procedure TFormRelProdLaticinios.FormShow(Sender: TObject);
begin
dm.SDS_Empresa.Open;
//FormPordLaticinios.SDS_CONTAS_PAGAS.Open;
//DATAI.Caption := FormPordLaticinios.DateEdit1.Text;
//DATAF.Caption := FormPordLaticinios.DateEdit1.Text;
end;

procedure TFormRelProdLaticinios.TOTALAfterPrint(Sender: TObject);
begin
Total.Caption := (RLDBResult2.Value - RLDBResult3.value);
end;

procedure TFormRelProdLaticinios.DATAIAfterPrint(Sender: TObject);
begin
 DATAI.Caption := FormPordLaticinios.DateEdit1.Text;
end;

procedure TFormRelProdLaticinios.DATAFAfterPrint(Sender: TObject);
begin
DATAF.Caption := FormPordLaticinios.DateEdit2.Text;
end;

procedure TFormRelProdLaticinios.MesAfterPrint(Sender: TObject);
begin
mes.Caption := FormPordLaticinios.Edit1.Text;
end;

procedure TFormRelProdLaticinios.AnoAfterPrint(Sender: TObject);
begin
Ano.Caption := FormPordLaticinios.Edit2.Text;
end;

end.
