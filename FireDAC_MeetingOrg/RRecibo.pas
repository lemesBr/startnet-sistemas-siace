unit RRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLDraftFilter, RLRichFilter, RLHTMLFilter,
  RLPDFFilter;

type
  TFormRelRecibo = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBMemo;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLBand3: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelRecibo: TFormRelRecibo;

implementation

uses Recibo;

{$R *.dfm}

end.
