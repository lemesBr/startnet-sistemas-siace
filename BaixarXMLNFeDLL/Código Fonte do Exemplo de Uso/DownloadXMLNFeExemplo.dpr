program DownloadXMLNFeExemplo;

uses
  Forms, SysUtils, ShellAPI, Windows,
  U_Principal in 'U_Principal.pas' {F_Principal},
  utils in 'utils.pas',
  U_Carregando in 'U_Carregando.pas',
  UTDownloadXMLNFeDLL in 'UTDownloadXMLNFeDLL.pas';

{$R *.res}
begin
  if FileExists(PathSystem + '\capicom.dll') and
  FileExists(PathSystem + '\libeay32.dll') and
  FileExists(PathSystem + '\msxml5.dll') and
  FileExists(PathSystem + '\msxml5r.dll') and
  FileExists(PathSystem + '\ssleay32.dll')  then else
    ShellExecute(0, 'runas', PChar(LocalDoExe + '\InstalarDLL.exe'), nil, nil, SW_SHOWNORMAL);

  Application.Initialize;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TF_Carregando, F_Carregando);
  Application.Run;
end.
