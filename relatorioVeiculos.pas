unit relatorioVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLFilters, RLDraftFilter, RLParser, RLHTMLFilter, RLPDFFilter,
  RLReport, RLRichFilter, RLXLSFilter;

type
  TFormRelatoriosVeic = class(TForm)
    RLXLSFilter1: TRLXLSFilter;
    RLRichFilter1: TRLRichFilter;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    rlbl12: TRLLabel;
    rlbl9: TRLLabel;
    datai: TRLLabel;
    rlbl10: TRLLabel;
    dataf: TRLLabel;
    RLLabel11: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel10: TRLLabel;
    rlbl3: TRLLabel;
    rlbl2: TRLLabel;
    rlbl1: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLLabel30: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLDraftFilter1: TRLDraftFilter;
    RLDBText1: TRLDBText;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatoriosVeic: TFormRelatoriosVeic;

implementation

uses relveiculos;

{$R *.dfm}

procedure TFormRelatoriosVeic.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
IF FormRelVeiculos.cds_relIpvaISENTO_IPVA.Text = 'F' then
begin
  RLLABEL29.Caption := 'Não(X) Sim ( )';
end else
IF FormRelVeiculos.cds_relIpvaISENTO_IPVA.text = 'T' then
begin
  RLLABEL29.Caption := 'Não( ) Sim (X)';
end;
end;

end.
