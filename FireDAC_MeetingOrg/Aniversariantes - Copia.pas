unit Aniversariantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser, RLRichFilter, RLFilters, RLPDFFilter,
  RLDraftFilter;

type
  TFormAniversariantes = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    rlbl5: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    rlbl12: TRLLabel;
    rlbl1: TRLLabel;
    rlbl3: TRLLabel;
    rlbl2: TRLLabel;
    rlbl9: TRLLabel;
    datai: TRLLabel;
    rlbl10: TRLLabel;
    dataf: TRLLabel;
    RLLabel11: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand5: TRLBand;
    RLLabel20: TRLLabel;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText1: TRLDBText;
    RLBand3: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDraftFilter1: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLExpressionParser1: TRLExpressionParser;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAniversariantes: TFormAniversariantes;

implementation

uses ModulodeDadosConsultas;

{$R *.dfm}

end.
