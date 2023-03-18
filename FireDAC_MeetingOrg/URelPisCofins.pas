unit URelPisCofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichFilter, RLParser, RLHTMLFilter, RLFilters,
  RLPDFFilter, RLDraftFilter;

type
  TFormRelPisCofins = class(TForm)
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand3: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLBand4: TRLBand;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLReport1: TRLReport;
    RLExpressionParser1: TRLExpressionParser;
    RLLabel9: TRLLabel;
    RLBand5: TRLBand;
    RLLabel10: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelPisCofins: TFormRelPisCofins;

implementation

uses ModulodeDadosConsultas5;

{$R *.dfm}

end.
