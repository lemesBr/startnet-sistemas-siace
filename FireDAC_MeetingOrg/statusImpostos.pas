unit statusImpostos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPrgres, StdCtrls, ExtCtrls, SUIProgressBar, ComCtrls, sGauge;

type
  TFormStatusI = class(TForm)
    ProgressBar2: TsuiProgressBar;
    ProgressBar3: TProgressBar;
    Label18: TLabel;
    ProgressBar1: TsGauge;
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
