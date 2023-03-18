unit Relvendas_custos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLFilters, RLDraftFilter, RLParser, RLPDFFilter, RLReport,
  RLRichFilter, RLHTMLFilter;

type
  TFormRelVendas_custos = class(TForm)
    RLRichFilter1: TRLRichFilter;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    rlbl9: TRLLabel;
    rlbl10: TRLLabel;
    datai: TRLLabel;
    dataf: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLLabel12: TRLLabel;
    rlbl1: TRLLabel;
    rlbl3: TRLLabel;
    rlbl2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    rlbl11: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult1: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult5: TRLDBResult;
    rlbl6: TRLLabel;
    RLGroup1: TRLGroup;
    rlbnd1: TRLBand;
    rlbl4: TRLLabel;
    rldbtxtCODIGO: TRLDBText;
    rldbtxtCODIGO1: TRLDBText;
    rldbtxtCODIGO_CLIENTE: TRLDBText;
    rldbtxtCODIGO2: TRLDBText;
    rlbl8: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLExpressionParser1: TRLExpressionParser;
    Matricial: TRLDraftFilter;
    RLLabel7: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLLabel13: TRLLabel;
    RLDBResult7: TRLDBResult;
    RLDBText5: TRLDBText;
    RLDBText2: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelVendas_custos: TFormRelVendas_custos;

implementation

{$R *.dfm}

end.
