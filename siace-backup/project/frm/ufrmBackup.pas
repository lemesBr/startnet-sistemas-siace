unit ufrmBackup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, ThreadBackup, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.Imaging.pngimage, uBiblioteca;

type
  TfrmBackup = class(TForm)
    Timer: TTimer;
    ActivityIndicator1: TActivityIndicator;
    SaveDialog: TSaveDialog;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackup: TfrmBackup;
  BackupBanco: TThreadBackup;

implementation

{$R *.dfm}

procedure TfrmBackup.FormCreate(Sender: TObject);
var
  BACKUP_PATH: string;
begin
  BACKUP_PATH:= TBiblioteca.LerIni('SIACE.INI','OUTROS','BACKUP_PATH');
  if DirectoryExists(BACKUP_PATH) then
    SaveDialog.FileName:= BACKUP_PATH + '\SIACE-BK-'+ FormatDateTime('ddmmyyyy-hhmmss',Now)
  else
    SaveDialog.FileName:= 'STARTNET-BK-'+ FormatDateTime('ddmmyyyy-hhmmss',Now);

  if SaveDialog.Execute then
  begin
    TBiblioteca.EscreverIni('SIACE.INI','OUTROS','BACKUP_PATH', ExtractFileDir(SaveDialog.FileName));

    TBiblioteca.PararFirebird(True);
    BackupBanco:= TThreadBackup.Create;
    BackupBanco.FreeOnTerminate:= True;
    BackupBanco.Banco:= ExtractFilePath(Application.ExeName) + 'STARTNET.FDB';
    BackupBanco.Backup:= SaveDialog.FileName;
    BackupBanco.Status:= 0;
    BackupBanco.Start;
  end
  else
    Application.Terminate;
end;

procedure TfrmBackup.TimerTimer(Sender: TObject);
begin
  if Assigned(BackupBanco) then
  begin
    if (BackupBanco.Status = 1) and (not TBiblioteca.ProcessoExiste('gbak.exe')) then
    begin
      RenameFile(ExtractFilePath(Application.ExeName) + 'STARTNET-BACKUP.GDB',
      ExtractFilePath(Application.ExeName) + 'STARTNET.FDB');
      Application.Terminate;
    end;
  end;
end;

end.
