unit ufrmEFD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Gauges,
  ACBrGIF, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmEFD = class(TForm)
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEFD: TfrmEFD;

implementation

{$R *.dfm}

end.
