unit RelOrcamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLDraftFilter, RLParser, RLRichFilter,
  RLHTMLFilter, RLPDFFilter;

type
  TFormRelOrcamentos = class(TForm)
    RLReport1: TRLReport;
    RLBand5: TRLBand;
    RLDBText30: TRLDBText;
    RLLabel39: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLBand3: TRLBand;
    RLDBText18: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLBand2: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    rldbtxtQUANTIDADE: TRLDBText;
    RLBand1: TRLBand;
    RLLabel40: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel2: TRLLabel;
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
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText29: TRLDBText;
    rlbl1: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText19: TRLDBText;
    RLExpressionParser1: TRLExpressionParser;
    RLDraftFilter1: TRLDraftFilter;
    rlsbdtl1: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText35: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText33: TRLDBText;
    rldbtxtPAGAMENTO: TRLDBText;
    RLBand6: TRLBand;
    RLLabel41: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLLabel11: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel22: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelOrcamentos: TFormRelOrcamentos;

implementation

uses ModulodeDadosConsultas, ModulodeDados;

{$R *.dfm}

end.
