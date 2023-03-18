unit UConferenciaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichFilter, RLHTMLFilter, RLFilters, RLPDFFilter,
  RLParser, RLDraftFilter;

type
  TFormRelConfEstoque = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel8: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    rlsbdtl1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    rlbl11: TRLLabel;
    RLLabel10: TRLLabel;
    rlbl6: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLDraftFilter1: TRLDraftFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLLabel9: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText6: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelConfEstoque: TFormRelConfEstoque;

implementation

uses ConferenciaEstoque;

{$R *.dfm}

end.
