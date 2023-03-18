unit UrelInventarioCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLFilters, RLDraftFilter, RLParser, RLHTMLFilter, RLPDFFilter,
  RLReport;

type
  TFormRel_custoMedio = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel14: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    rlsbdtl1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    rldbtxtENC_FINANCEIRO: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    rlbl11: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult4: TRLDBResult;
    rlbl6: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLExpressionParser1: TRLExpressionParser;
    Matricial: TRLDraftFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRel_custoMedio: TFormRel_custoMedio;

implementation

{$R *.dfm}

end.
