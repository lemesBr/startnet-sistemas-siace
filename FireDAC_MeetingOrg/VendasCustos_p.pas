unit VendasCustos_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLRichFilter, RLReport, RLPDFFilter, DB, RLFilters, RLHTMLFilter,
  RLParser, RLDraftFilter;

type
  TFormVendas_CustosP = class(TForm)
    Matricial: TRLDraftFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
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
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand3: TRLBand;
    rlbl11: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult1: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult5: TRLDBResult;
    rlbl6: TRLLabel;
    RLRichFilter1: TRLRichFilter;
    RLLabel7: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBText9: TRLDBText;
    RLDBText5: TRLDBText;
    procedure RLDBResult6AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendas_CustosP: TFormVendas_CustosP;

implementation

{$R *.dfm}

procedure TFormVendas_CustosP.RLDBResult6AfterPrint(Sender: TObject);
begin
//RLDBResult6.Text := (RLDBResult6.Value);
end;

end.
