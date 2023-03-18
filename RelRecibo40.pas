unit RelRecibo40;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLHTMLFilter, RLParser, RLPDFFilter, RLFilters,
  RLRichFilter, RLDraftFilter;

type
  TFormRelRecibo40 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText3: TRLDBMemo;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLBand3: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel31: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLHTMLFilter1: TRLHTMLFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelRecibo40: TFormRelRecibo40;

implementation

{$R *.dfm}

end.
