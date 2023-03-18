unit RRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB;

type
  TFormRelRecibo = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBMemo;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLBand3: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelRecibo: TFormRelRecibo;

implementation

uses Recibo;

{$R *.dfm}

end.
