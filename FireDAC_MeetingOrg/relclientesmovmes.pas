unit relclientesmovmes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichFilter, RLParser, RLFilters, RLDraftFilter,
  RLPDFFilter;

type
  TFormRelClientesMovMes = class(TForm)
    RLPDFFilter1: TRLPDFFilter;
    RLDraftFilter1: TRLDraftFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLRichFilter1: TRLRichFilter;
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText17: TRLDBText;
    rldbtxtQUANTIDADE: TRLDBText;
    RLDBText8: TRLDBText;
    RLDraw4: TRLDraw;
    RLDBText9: TRLDBText;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel20: TRLLabel;
    rlbl1: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText10: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelClientesMovMes: TFormRelClientesMovMes;

implementation

uses RelClientesSped, ModulodeDados;

{$R *.dfm}

end.
