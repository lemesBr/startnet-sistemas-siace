unit RelCobrancaGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLHTMLFilter, RLPDFFilter, RLFilters, RLDraftFilter,
  RLRichFilter, RLParser;

type
  TFormCobrancaGeral = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    rlbl5: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    rlbl12: TRLLabel;
    rlbl1: TRLLabel;
    rlbl3: TRLLabel;
    rlbl2: TRLLabel;
    rlbl9: TRLLabel;
    datai: TRLLabel;
    rlbl10: TRLLabel;
    dataf: TRLLabel;
    RLLabel11: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel16: TRLLabel;
    RLBand3: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLBand4: TRLBand;
    RLLabel19: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    rlbnd1: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLExpressionParser1: TRLExpressionParser;
    RLRichFilter1: TRLRichFilter;
    RLDraftFilter1: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel21: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText31: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText22: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCobrancaGeral: TFormCobrancaGeral;

implementation

uses Udmcob;

{$R *.dfm}

end.
