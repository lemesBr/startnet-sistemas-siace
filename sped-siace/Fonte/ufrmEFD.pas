unit ufrmEFD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Gauges,
  ACBrGIF, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, sLabel;

type
  TfrmEFD = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    sLabelFX1: TsLabelFX;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEFD: TfrmEFD;

implementation

uses
  udmEFD,
  System.Math;

{$R *.dfm}


procedure TfrmEFD.BitBtn1Click(Sender: TObject);
begin
 Application.Terminate;
end;

end.
