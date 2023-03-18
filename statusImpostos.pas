unit statusImpostos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPrgres, StdCtrls, ExtCtrls, SUIProgressBar, ComCtrls, sGauge,
  sLabel;

type
  TFormStatusI = class(TForm)
    ProgressBar2: TsuiProgressBar;
    ProgressBar3: TProgressBar;
    ProgressBar1: TsGauge;
    sLabelFX1: TsLabelFX;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStatusI: TFormStatusI;

implementation

{$R *.dfm}

end.
