unit uBiblioteca;

interface

uses
  System.Win.Registry, Winapi.Windows, System.SysUtils, Winapi.ShellAPI,
  Winapi.TlHelp32, Vcl.Forms, IniFiles;

type
  TBiblioteca = class
    class function PararFirebird(bStart: boolean): boolean;
    class function BackupRestoreBanco(DB,Log,Backup: String; Status: Integer): Boolean;
    class function ProcessoExiste(ExeFileName: string): boolean;
    class function LerIni(sArqIni, sSecao, sVariavel: string): string;
    class procedure EscreverIni(sArqIni, sSecao, sVariavel, sValue: string);
  end;

implementation

{ TBiblioteca }

class function TBiblioteca.BackupRestoreBanco(DB, Log, Backup: String;
  Status: Integer): Boolean;
var
  szBuff: String;
begin
  with TRegistry.Create do
  begin
    RootKey:= HKEY_LOCAL_MACHINE;
    Result:= OpenKey('SOFTWARE\Firebird Project\Firebird Server\Instances', False);

    if Result then
    begin
      szBuff:= ReadString('DefaultInstance') + 'bin\gbak.exe';
      Result:= FileExists(szBuff);
      if Result then
      begin
        case Status of
          0:begin
            ShellExecute(0, nil, PChar(szBuff), PWideChar('-user sysdba -pass masterkey '+
            '-backup -verify -y ' + Log + ' localhost:' + DB + ' ' + Backup), nil, SW_HIDE);
          end;

          1:begin
            ShellExecute(0, nil, PChar(szBuff), PWideChar('-rep -v -user SYSDBA -password masterkey '+
            '-y ' + Log + ' ' + Backup + ' localhost:' + DB), nil, SW_HIDE);
          end;
        end;
      end;
      CloseKey;
    end;
    Free;
  end;
end;

class procedure TBiblioteca.EscreverIni(sArqIni, sSecao, sVariavel,
  sValue: string);
var
  ArqIni: TIniFile;
begin
  ArqIni:= TIniFile.Create(ExtractFilePath(Application.ExeName) + '\' + sArqIni);
  Try
    ArqIni.WriteString(sSecao, sVariavel, sValue);
  Finally
    ArqIni.Free;
  end;
end;

class function TBiblioteca.LerIni(sArqIni, sSecao, sVariavel: string): string;
var
  ArqIni: TIniFile;
  sString: string;
begin
  ArqIni:= TIniFile.Create(ExtractFilePath(Application.ExeName) + '\' + sArqIni);
  Try
    Result:= ArqIni.ReadString(sSecao, sVariavel, sString);
  Finally
    ArqIni.Free;
  end;
end;

class function TBiblioteca.PararFirebird(bStart: boolean): boolean;
var
  szBuff: String;
begin
  with TRegistry.Create do
  begin
    RootKey:= HKEY_LOCAL_MACHINE;
    Result:= OpenKey('SOFTWARE\Firebird Project\Firebird Server\Instances', False);

    if Result then
    begin
      szBuff:= ReadString('DefaultInstance') + 'bin\instsvc.exe';
      Result:= FileExists(szBuff);
      if Result then
        case bStart of
          True:
            ShellExecute(0, nil, PChar(szBuff), '-s start', nil, SW_HIDE);
          False:
            ShellExecute(0, nil, PChar(szBuff), '-s stop', nil, SW_HIDE);
        end;
      CloseKey;
    end;
    Free;
  end;
end;

class function TBiblioteca.ProcessoExiste(ExeFileName: string): boolean;
const
  PROCESS_TERMINATE=$0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32{declarar Uses Tlhelp32};
begin
  Result:= false;

  FSnapshotHandle:= CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize:= Sizeof(FProcessEntry32);
  ContinueLoop:= Process32First(FSnapshotHandle,FProcessEntry32);

  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = UpperCase(ExeFileName))
    or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
    begin
      Result:= true;
      Exit;
    end;
    ContinueLoop:= Process32Next(FSnapshotHandle,FProcessEntry32);
  end;

  CloseHandle(FSnapshotHandle);
end;

end.
