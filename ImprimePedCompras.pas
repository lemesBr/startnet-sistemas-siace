unit ImprimePedCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser, RLRichFilter, RLHTMLFilter, RLFilters,
  RLPDFFilter;

type
  TFormRelPedidocompra = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    rlbl12: TRLLabel;
    RLLabel11: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLBand5: TRLBand;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLBand3: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLBand4: TRLBand;
    RLLabel19: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLLabel9: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLExpressionParser1: TRLExpressionParser;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelPedidocompra: TFormRelPedidocompra;

implementation

uses RelPedidoCompras, ModulodeDados;

{$R *.dfm}

end.
