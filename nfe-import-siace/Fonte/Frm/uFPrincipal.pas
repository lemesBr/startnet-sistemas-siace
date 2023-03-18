unit uFPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.Menus, Vcl.Imaging.pngimage, MidasLib;

type
  TFPrincipal = class(TForm)
    Image: TImage;
    TrayIcon: TTrayIcon;
    Timer: TTimer;
    pop: TPopupMenu;
    Sair1: TMenuItem;
    ImageList: TImageList;
    ActionList: TActionList;
    ActionSair: TAction;
    Importar: TTimer;
    procedure ActionSairExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImportarTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses uDM;

procedure TFPrincipal.ActionSairExecute(Sender: TObject);
var
  Password: string;
begin
  Password:= InputBox('Acesso','Password:','');
  if Password = EmptyStr then
    Exit
  else if Password = FormatDateTime('ddmmyyyy',Now) then
    Application.Terminate
  else
    ShowMessage('Unauthorized System Access.');
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TDM, DM);

  Importar.Interval:= 10000;
  Importar.Enabled:= True;
end;

procedure TFPrincipal.ImportarTimer(Sender: TObject);
begin
  Importar.Enabled:= False;
  Importar.Interval:= 3600000;

  try
    DM.Importar();
  except
    //--
  end;

  Importar.Enabled:= True;
end;

procedure TFPrincipal.TimerTimer(Sender: TObject);
begin
  Timer.Enabled:= False;
  Application.Minimize;
  Self.Hide;
end;

initialization
  ReportMemoryLeaksOnShutdown:= True;

end.
