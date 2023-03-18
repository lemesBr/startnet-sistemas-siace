program NfeImportSiace;

uses
  Vcl.Forms,
  uFPrincipal in 'Frm\uFPrincipal.pas' {FPrincipal},
  uDM in 'Dm\uDM.pas' {DM: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  Winapi.Windows,
  System.Classes,
  System.SysUtils;

{$R *.res}
{$R NFE-IMPORT-SIACE.RES}

var
  Hwnd: THandle;
  DllPath: String;
  Res: TResourceStream;
begin
  Hwnd:= FindWindow('TFPrincipal',nil);

  if (Hwnd = 0) then
  begin
    Application.Initialize;
    Application.MainFormOnTaskbar:= True;

    DllPath:= ExtractFilePath(Application.ExeName)+'\fbclient.dll';
    if not FileExists(DllPath) then
    begin
       Res:= TResourceStream.Create(Hinstance, 'FBCLIENTDLL', 'DLLFILE');
       Try
         Res.SavetoFile(DllPath);
       Finally
         Res.Free;
       End;
    end;

    DllPath:= ExtractFilePath(Application.ExeName)+'\libmysql.dll';
    if not FileExists(DllPath) then
    begin
       Res:= TResourceStream.Create(Hinstance, 'LIBMYSQLDLL', 'DLLFILE');
       Try
         Res.SavetoFile(DllPath);
       Finally
         Res.Free;
       End;
    end;

    Application.Title:= 'Nfe Import Siace';
    TStyleManager.TrySetStyle('TabletDark');
    Application.CreateForm(TFPrincipal, FPrincipal);
    Application.Run;
  end
  else
    SetForegroundWindow(Hwnd);
end.
