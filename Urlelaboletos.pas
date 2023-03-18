unit Urlelaboletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLPDFFilter, RLFilters, RLRichFilter, RLParser, RLDraftFilter,
  RLReport;

type
  TFormRelaBoletos = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    rlbl5: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    rlbl12: TRLLabel;
    rlbl3: TRLLabel;
    rlbl2: TRLLabel;
    rlbl9: TRLLabel;
    datai: TRLLabel;
    rlbl10: TRLLabel;
    dataf: TRLLabel;
    RLLabel11: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel16: TRLLabel;
    RLBand4: TRLBand;
    RLLabel19: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLBand3: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDraftFilter1: TRLDraftFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelaBoletos: TFormRelaBoletos;

implementation

uses Urelboletos;

{$R *.dfm}

procedure TFormRelaBoletos.RLReport1PageStarting(Sender: TObject);
begin
datai.Caption:= FormRelBoletos.DateEdit3.Text;
dataf.Caption:= FormRelBoletos.DateEdit4.Text;
end;

end.
