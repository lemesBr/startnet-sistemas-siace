unit RelatorioClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLPDFFilter, RLParser, RLFilters, RLRichFilter, RLDraftFilter,
  RLReport;

type
  TFormRelatorioClientes = class(TForm)
    RLReport1: TRLReport;
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
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    rlbl1: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel2: TRLLabel;
    RLBand2: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    rldbtxtQUANTIDADE: TRLDBText;
    RLDBText11: TRLDBText;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw4: TRLDraw;
    RLDBText9: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioClientes: TFormRelatorioClientes;

implementation

uses ModulodeDadosConsultas;

{$R *.dfm}

end.
