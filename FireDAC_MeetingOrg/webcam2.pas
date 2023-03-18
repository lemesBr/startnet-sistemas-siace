unit webcam2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Camera, ExtCtrls, PiconeBarreTache;
type
  TTabImage = Array[0..230399] of byte;  

type
  Tfrmwebcam2 = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Camera1: TCamera;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
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

procedure Tfrmwebcam2.FormCreate(Sender: TObject);
var p : ^TTabImage;
begin
  Camera1.Actif:=True;
  New(p);
end;

procedure Tfrmwebcam2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
frmwebcam2 := nil;
end;

procedure Tfrmwebcam2.BitBtn1Click(Sender: TObject);
begin
  camera1.FichierImage := caminho_fotos_clientes+'\ft'+dm.sds_cli.fieldbyname('codigo').asstring+'.BMP';
  camera1.CaptureImageDisque;
  formclientes.image2.picture.loadfromfile(caminho_fotos_clientes+'\ft'+dm.sds_cli.fieldbyname('codigo').asstring+'.BMP');
  dm.sds_cli.FIELDBYNAME('FOTO').ASSTRING := caminho_fotos_clientes+'\ft'+dm.sds_cli.fieldbyname('codigo').asstring+'.BMP';
  FormClientes.DBImage1.Picture.LoadFromFile(caminho_fotos_clientes+'\ft'+dm.sds_cli.fieldbyname('codigo').asstring+'.BMP');
  Camera1.Destroy;
  close;
end;

end.
