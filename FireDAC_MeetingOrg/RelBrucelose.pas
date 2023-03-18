unit RelBrucelose;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormBrucelose = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLAngleLabel1: TRLAngleLabel;
    RLAngleLabel2: TRLAngleLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand3: TRLBand;
    RLLabel37: TRLLabel;
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
    RLLabel4: TRLLabel;
    RLLabel38: TRLLabel;
    RLBand2: TRLBand;
    RLLabel36: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLAngleLabel5: TRLAngleLabel;
    RLAngleLabel6: TRLAngleLabel;
    RLLabel15: TRLLabel;
    RLAngleLabel8: TRLAngleLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLAngleLabel15: TRLAngleLabel;
    RLAngleLabel18: TRLAngleLabel;
    RLAngleLabel19: TRLAngleLabel;
    RLAngleLabel20: TRLAngleLabel;
    RLDBText3: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText15: TRLDBText;
    RLAngleLabel3: TRLAngleLabel;
    RLAngleLabel4: TRLAngleLabel;
    RLAngleLabel7: TRLAngleLabel;
    RLAngleLabel9: TRLAngleLabel;
    RLAngleLabel10: TRLAngleLabel;
    RLAngleLabel11: TRLAngleLabel;
    RLLabel8: TRLLabel;
    RLDBText2: TRLDBText;
    datai: TRLLabel;
    RLDBText4: TRLDBText;
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBrucelose: TFormBrucelose;

implementation

uses relIndea;

{$R *.dfm}

procedure TFormBrucelose.RLReport1PageStarting(Sender: TObject);
var
  dtaux : TDateTime;
begin
dtAux := (StrToDate (FormRelIndea.DateEdit1.Text));
datai.Caption:= FormatDateTime('mm',dtAux) +'/'+ FormatDateTime('yyyy',dtAux);   
end;

end.
