program EFDSIACE;

uses
  Vcl.Forms,
  Winapi.Windows,
  Vcl.Dialogs,
  System.Classes,
  System.SysUtils;

type TGeraefd = function () : Integer;

{$R *.res}
{$R EFD.RES}

var
  PathToSave : String;
  Res : TResourceStream;
  Handle : THandle;
  geraefd: TGeraefd;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar:= True;

  PathToSave:= ExtractFilePath(Application.ExeName)+'\SPEDSIACE.dll';
  if (not FileExists(PathToSave)) or DeleteFile(PathToSave) then
  begin
     Res:= TResourceStream.Create(Hinstance, 'SPEDSIACEDLL', 'DLLFILE');
     Try
       Res.SavetoFile(PathToSave);
     Finally
       Res.Free;
     End;
  end;

  Handle:= LoadLibrary('SPEDSIACE.dll');
  if Handle <> 0 then
  begin
    geraefd:= GetProcAddress(Handle, 'geraefd');
    geraefd();
    FreeLibrary(Handle);
  end;
  Application.Terminate;
end.
