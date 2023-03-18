unit webcam2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  ExtCtrls, JvAVICapture;
type
  TTabImage = Array[0..230399] of byte;

type
  Tfrmwebcam2 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    CAMERA: TJvAVICapture;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwebcam2: Tfrmwebcam2;

implementation

uses clientes, ModulodeDados;

{$R *.dfm}

procedure Tfrmwebcam2.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmwebcam2.BitBtn3Click(Sender: TObject);
begin
    try
    camera.DriverIndex := 0;
  except
        on EInvalidDriverIndexError  do
        SHOWMESSAGE('DRIVE DA CAMARA INEXISTENTE')
  end;
end;

procedure Tfrmwebcam2.BitBtn4Click(Sender: TObject);
begin
     camera.Previewing  := True;
end;

procedure Tfrmwebcam2.FormCreate(Sender: TObject);
var
p : ^TTabImage;
begin
//  Camera1.Actif:=True;
//  New(p);
  //  Camera.Active :=True;
  // Camera.Capture;


end;

procedure Tfrmwebcam2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
frmwebcam2 := nil;
end;

procedure Tfrmwebcam2.BitBtn1Click(Sender: TObject);

begin


{Camera.Pause;
Camera.CapturedBitmap.SaveToFile(caminho_fotos_clientes+'\ft'+dm.sds_cli.fieldbyname('codigo').asstring+'.BMP');

  formclientes.image2.picture.loadfromfile(caminho_fotos_clientes+'\ft'+dm.sds_cli.fieldbyname('codigo').asstring+'.BMP');
  dm.sds_cli.FIELDBYNAME('FOTO').ASSTRING := caminho_fotos_clientes+'\ft'+dm.sds_cli.fieldbyname('codigo').asstring+'.BMP';
  FormClientes.DBImage1.Picture.LoadFromFile(caminho_fotos_clientes+'\ft'+dm.sds_cli.fieldbyname('codigo').asstring+'.BMP');
  Camera.Stop;   }

  Camera.StopPreview;
  Camera.SaveAs(caminho_fotos_clientes+'\ft'+dm.sds_cli.fieldbyname('codigo').asstring+'.BMP');
  dm.sds_cli.FIELDBYNAME('FOTO').ASSTRING := caminho_fotos_clientes+'\ft'+dm.sds_cli.fieldbyname('codigo').asstring+'.BMP';
  FormClientes.DBImage1.Picture.LoadFromFile(caminho_fotos_clientes+'\ft'+dm.sds_cli.fieldbyname('codigo').asstring+'.BMP');
 close;
end;

end.
