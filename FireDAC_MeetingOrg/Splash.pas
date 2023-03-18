unit Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Vcl.StdCtrls, Vcl.Samples.Gauges, acPNG;

type
  TFormSplash = class(TForm)
    Image1: TImage;
    Gauge: TGauge;
    Bevel3: TBevel;
    lblTitle: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.dfm}

{ TFormSplash }

end.
