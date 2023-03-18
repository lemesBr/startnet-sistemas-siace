unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLParser, RLFilters,
  RLDraftFilter, RLPreviewForm;

type
  TForm2 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLPreviewSetup1: TRLPreviewSetup;
    RLDraftFilter1: TRLDraftFilter;
    RLLabel1: TRLLabel;
    RLAngleLabel1: TRLAngleLabel;
    RLExpressionParser1: TRLExpressionParser;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
