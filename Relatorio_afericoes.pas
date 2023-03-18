unit Relatorio_afericoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser, RLFilters, RLDraftFilter, RLPDFFilter,
  RLRichFilter, RLHTMLFilter;

type
  TFormRelAfericoes = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
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
    RLBand4: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLBand5: TRLBand;
    RLLabel23: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLLabel19: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    Matricial: TRLDraftFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLLabel25: TRLLabel;
    RLLabel7: TRLLabel;
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelAfericoes: TFormRelAfericoes;

implementation

uses afericao_rel;

{$R *.dfm}

procedure TFormRelAfericoes.RLReport1PageStarting(Sender: TObject);
begin
datai.Caption:= FormRelAfercao.DateEdit1.Text;
dataf.Caption:= FormRelAfercao.DateEdit2.Text;
end;

end.
