unit UrelVendas_Resumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLFilters, RLDraftFilter, RLParser, RLHTMLFilter, RLPDFFilter,
  RLReport, RLRichFilter;

type
  TFormRel_vendasResumo = class(TForm)
    RLRichFilter1: TRLRichFilter;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
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
    rlbl1: TRLLabel;
    rlbl3: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    rlbl11: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult1: TRLDBResult;
    rlbl6: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLDBText7: TRLDBText;
    rldbtxtCODIGO: TRLDBText;
    rldbtxtCODIGO2: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText6: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLExpressionParser1: TRLExpressionParser;
    Matricial: TRLDraftFilter;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel6: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRel_vendasResumo: TFormRel_vendasResumo;

implementation

uses Urelvendasresumo;

{$R *.dfm}

end.
