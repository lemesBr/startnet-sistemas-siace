unit Biblioteca;

interface

uses
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Windows,
  Inifiles, DBClient, DB ,SqlExpr, Grids, DBGrids,IdHashMessageDigest, Math,StrUtils,
  DateUtils, IdHTTP, IdSSLOpenSSL, Gauges,IdComponent, IdAntiFreezeBase, IdAntiFreeze,
  IdBaseComponent, IdTCPConnection, IdTCPClient, StdCtrls, VarUtils, Splash, Tlhelp32,
  Types;

type
  TBiblioteca = class
  private

  public
    class function RetiraMascara(Texto:String): String;
    class function MD5String(const texto: string): string;
    class function Criptografar(wStri: String): String;
    class function GetBuildInfo(Prog: string): string;
    class function VerificarVersaoDropBox : string ;
    class function LerIni(sArqIni: string; sSecao: string; sVariavel: string): string;
    class function RetornaString(Text,Parametro: String): String;
    class function ProcessoExiste(ExeFileName: string): boolean;
  end;

var
  varStartDate: TDateTime;

implementation

{ TBiblioteca }

class function TBiblioteca.RetiraMascara(Texto: String): String;
begin
  Result := Texto;
  Result := StringReplace(Result,'*','',[rfReplaceAll]);
  Result := StringReplace(Result,'.','',[rfReplaceAll]);
  Result := StringReplace(Result,'-','',[rfReplaceAll]);
  Result := StringReplace(Result,'/','',[rfReplaceAll]);
  Result := StringReplace(Result,'\','',[rfReplaceAll]);
  Result := StringReplace(Result,':','',[rfReplaceAll]);
  Result:= Trim(Result);
end;

class function TBiblioteca.MD5String(const texto: string): string;
var
  idmd5: TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    Result := LowerCase(idmd5.HashStringAsHex(texto));
  finally
    idmd5.Free;
  end;
end;

class function TBiblioteca.Criptografar(wStri: String): String;
var
  Simbolos : array [0..2] of String;
  x: Integer;
begin
  Simbolos[1]:= '3BC1EFGHIJL5MNOPQR';
  Simbolos[2]:= '0D2A4T6K8USV9XZYW7';

  for x := 1 to Length(Trim(wStri)) do
  begin
    if pos(copy(wStri,x,1),Simbolos[1])>0 then
      Result := Result+copy(Simbolos[2],pos(copy(wStri,x,1),Simbolos[1]),1)
    else
    if pos(copy(wStri,x,1),Simbolos[2])>0 then
      Result := Result+copy(Simbolos[1],pos(copy(wStri,x,1),Simbolos[2]),1)
  end;
end;

class function TBiblioteca.GetBuildInfo(Prog: string): string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
begin
  try
    VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
    with (VerValue^) do
    begin
      V1 := dwFileVersionMS shr 16;
      V2 := dwFileVersionMS and $FFFF;
      V3 := dwFileVersionLS shr 16;
      V4 := dwFileVersionLS and $FFFF;
    end;
    FreeMem(VerInfo, VerInfoSize);
    Result := Format('%d.%d.%d.%d', [v1, v2, v3, v4]);
  except
    Result := '0';
  end;
end;

class function TBiblioteca.VerificarVersaoDropBox : string ;
var
  IdHTTP : TIdHTTP;
  LHandler: TIdSSLIOHandlerSocketOpenSSL;
begin
  try
    try
      IdHTTP:= TIdHTTP.Create(nil);
      LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

      IdHTTP.IOHandler:= LHandler;
      IdHTTP.HandleRedirects:= True;
      IdHTTP.HTTPOptions:= [hoInProcessAuth,hoForceEncodeParams];
      IdHTTP.Request.Accept:= 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
      IdHTTP.Request.BasicAuthentication:= True;
      IdHTTP.Request.ContentLength:= -1;
      IdHTTP.Request.ContentRangeEnd:= -1;
      IdHTTP.Request.ContentRangeInstanceLength:= -1;
      IdHTTP.Request.ContentRangeStart:= -1;

      Result:= IdHTTP.Get('https://www.dropbox.com/s/wzhe5xshzk9hppp/Versao%20de%20Siace%20Sistemas.ini?dl=1');
    except
      on Error: Exception do
      begin
        Application.MessageBox
          (PChar('O seguinte erro ocorreu durante a verificação de atualização:' + #13 +
          Error.Message), 'Error', MB_ICONERROR);
      end;
    end;
  finally
    LHandler.Free;
    FreeAndNil(IdHTTP);
  end;
end;

class function TBiblioteca.LerIni(sArqIni, sSecao,
  sVariavel: string): string;
var
  ArqIni: TIniFile;
  sString: string;
begin
  ArqIni := tIniFile.Create( ExtractFilePath( Application.ExeName ) + '\' + sArqIni);
  Try
    result := ArqIni.ReadString(sSecao, sVariavel, sString);
  Finally
    ArqIni.Free;
  end;
end;

class function TBiblioteca.RetornaString(Text, Parametro: String): String;
var
  I: Integer;
begin
  for I := 0 to Length(Text) do
  begin
    if Copy(Text,I,Length(Parametro)) = Parametro then
    begin
      Result:= Copy(Text,0,I - 1);
      Break;
    end;
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
  result := false;

  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle,FProcessEntry32);

  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = UpperCase(ExeFileName))
    or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
    begin
      Result := true;
      exit;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle,FProcessEntry32);
  end;

  CloseHandle(FSnapshotHandle);
end;

end.
 