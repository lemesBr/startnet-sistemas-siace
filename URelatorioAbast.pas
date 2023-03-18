unit URelatorioAbast;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser;

type
  TFormRelatorioAbast = class(TForm)
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
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLBand3: TRLBand;
    RLExpressionParser1: TRLExpressionParser;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    procedure RLReport1PageStarting(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioAbast: TFormRelatorioAbast;

implementation

uses URelAbastecimentos;

{$R *.dfm}

procedure TFormRelatorioAbast.RLReport1PageStarting(Sender: TObject);
begin
datai.Caption := FormRelAbastecimentos.DateEdit1.Text;
dataf.Caption := FormRelAbastecimentos.DateEdit2.Text;
end;

procedure TFormRelatorioAbast.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

end.
