unit RelCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser, RLFilters, RLDraftFilter;

type
  TFormRelCaixa1 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    rlbl9: TRLLabel;
    rlbl10: TRLLabel;
    datai: TRLLabel;
    dataf: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel30: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel23: TRLLabel;
    RLBand7: TRLBand;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel34: TRLLabel;
    RLBand6: TRLBand;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLExpressionParser1: TRLExpressionParser;
    RLLabel2: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDraftFilter1: TRLDraftFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelCaixa1: TFormRelCaixa1;

implementation

uses RelatorioCaixa;

{$R *.dfm}

end.
