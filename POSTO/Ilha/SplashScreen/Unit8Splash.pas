unit Unit8Splash;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 StdCtrls, ExtCtrls, ComCtrls, jpeg, DBTables, RxGIF;

type
 TSplashFrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image3: TImage;
    Label2: TLabel;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    Image1: TImage;
    Image2: TImage;
   procedure FormShow(Sender: TObject);
   procedure FormDestroy(Sender: TObject);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SplashFrm: TSplashFrm;
 exestring: string;

implementation

{$R *.DFM}


procedure TSplashFrm.FormShow(Sender: TObject);
begin
 screen.cursor := crHourGlass;
end;

procedure TSplashFrm.FormDestroy(Sender: TObject);
begin
 screen.cursor := crDefault;
end;

end.
