unit indeaVacinas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormIndeaVacinas = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLAngleLabel1: TRLAngleLabel;
    RLAngleLabel2: TRLAngleLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLAngleLabel3: TRLAngleLabel;
    RLAngleLabel4: TRLAngleLabel;
    RLLabel8: TRLLabel;
    RLBand2: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLAngleLabel5: TRLAngleLabel;
    RLAngleLabel6: TRLAngleLabel;
    RLAngleLabel7: TRLAngleLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLAngleLabel8: TRLAngleLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLAngleLabel9: TRLAngleLabel;
    RLLabel20: TRLLabel;
    RLAngleLabel10: TRLAngleLabel;
    RLAngleLabel11: TRLAngleLabel;
    RLAngleLabel12: TRLAngleLabel;
    RLAngleLabel13: TRLAngleLabel;
    RLAngleLabel14: TRLAngleLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLAngleLabel15: TRLAngleLabel;
    RLAngleLabel16: TRLAngleLabel;
    RLAngleLabel17: TRLAngleLabel;
    RLAngleLabel18: TRLAngleLabel;
    RLAngleLabel19: TRLAngleLabel;
    RLAngleLabel20: TRLAngleLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLBand3: TRLBand;
    RLLabel37: TRLLabel;
    RLAngleLabel21: TRLAngleLabel;
    RLAngleLabel22: TRLAngleLabel;
    RLAngleLabel23: TRLAngleLabel;
    RLAngleLabel24: TRLAngleLabel;
    RLAngleLabel25: TRLAngleLabel;
    RLAngleLabel26: TRLAngleLabel;
    RLAngleLabel27: TRLAngleLabel;
    RLAngleLabel28: TRLAngleLabel;
    RLAngleLabel29: TRLAngleLabel;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    datai: TRLLabel;
    dataf: TRLLabel;
    RLLabel38: TRLLabel;
    procedure dataiAfterPrint(Sender: TObject);
    procedure datafAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIndeaVacinas: TFormIndeaVacinas;

implementation

uses ModulodeDados, relIndea;

{$R *.dfm}

procedure TFormIndeaVacinas.dataiAfterPrint(Sender: TObject);
begin
datai.Caption:= FormRelIndea.DateEdit1.Text;
end;

procedure TFormIndeaVacinas.datafAfterPrint(Sender: TObject);
begin
dataF.Caption:= FormRelIndea.DateEdit2.Text;
end;

end.
