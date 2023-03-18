unit UnitDataM1;

interface

uses
  SysUtils, Classes, Controls, DB, IB, IBCustomDataSet, IBDatabase, Forms, Windows, QDialogs,
  IBQuery, Dialogs, IBDatabaseInfo, Variants, IBSQL, IBServices, Registry,  WinSvc, Messages
  , ShellApi, ScktComp, ExtCtrls, TypInfo, Graphics, StdCtrls, INIFIles;

type
  TDM1 = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    QryPermissaoUser: TIBQuery;
    QryPermissaoForm: TIBQuery;
    IBStatisticalService1: TIBStatisticalService;
    IBLogService1: TIBLogService;
    IBServerProperties1: TIBServerProperties;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    IBSQLGen_id: TIBSQL;
    sds_configuracoes: TIBQuery;

    Function IBConectado: boolean;

    procedure StartInterbase;
    procedure ShutDownInterbase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 DM1: TDM1;
 IBArray: array of TIBCustomDataSet;                          //Global Array to handle active DataSets

 RecPosIBArray: array of integer;
 ActiveIBSender: array of TIBCustomDataSet;


 
implementation

uses UnitFuncoes;

{$R *.dfm}

//------ Returns the last Windows error message as an ANSI string ------
function GetErrorMessage: String;
var
 ErrorCode:   DWORD;
 ErrorMsgStr: array[0..255] of Char;
begin
 ErrorCode := GetLastError;
 FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM, nil, ErrorCode, 0, ErrorMsgStr, 256, nil);
 Result := StrPas(ErrorMsgStr);
end;

//------ Returns the Interbase bin directory from the registry ------
function GetIBServerDirectory: String;
var
 Reg: TRegistry;
begin
 Reg := TRegistry.Create;
 try
  with Reg do
   begin
    RootKey := HKEY_LOCAL_MACHINE;
    if OpenKey('\Software\Borland\Interbase\CurrentVersion', False) then
     Result := ReadString('ServerDirectory');
   end;
 finally
  Reg.Free;
 end;
end;

//------ Returns a handle to the Interbase server service under Windows NT/2000 ------
function GetIBServiceHandle: SC_HANDLE;
var
 SCMHandle: SC_HANDLE;
begin
 Result := 0;
 SCMHandle := OpenSCManager(nil, nil, GENERIC_EXECUTE);
 if SCMHandle = 0 then
  application.messagebox(Pchar('Erro SCM: ' + GetErrorMessage), 'Atenção', mb_iconerror + mb_ok)
 else
  begin
   Result := OpenService(SCMHandle, 'InterbaseGuardian', SERVICE_ALL_ACCESS);
   if Result = 0 then
    application.messagebox(Pchar('Erro ao tentar abrir o serviço: ' + GetErrorMessage), 'Atenção', mb_iconerror + mb_ok)
  end;
end;

//------ Returns the Interbase root directory from the registry ------
function GetIBRootDirectory: String;
var
 Reg: TRegistry;
begin
 Reg := TRegistry.Create;
 try
  with Reg do
   begin
    RootKey := HKEY_LOCAL_MACHINE;
    if OpenKey('\Software\Borland\Interbase\CurrentVersion', False) then
     Result := ReadString('RootDirectory');
   end;
 finally
  Reg.Free;
 end;
 Exit;
end;

procedure TDm1.StartInterbase;
var
 GuardianPath:  String;
 Result:        THandle;
 SCMHandle:     SC_HANDLE;
 ServiceHandle: SC_HANDLE;
 ServiceArgs:   PAnsiChar;
begin
 ServiceArgs := nil;
 //--- If NT start the Interbase service otherwise execute the Interbase guardian ---
 if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
   ServiceHandle := GetIBServiceHandle;
   if ServiceHandle = 0 then Exit;
   if not StartService(ServiceHandle, 0, ServiceArgs) then
    application.messagebox(Pchar('Erro ao tentar iniciar o serviço: ' + GetErrorMessage), 'Atenção', mb_iconerror + mb_ok);
  end
 else
  begin
   //--- Execute the Interbase guardian on Win9x/Me ---
   GuardianPath := GetIBServerDirectory + 'ibguard.exe';
   Result := ShellExecute(Application.MainForm.Handle, nil,
             PChar(GuardianPath), '', PChar(GetIBRootDirectory), SW_NORMAL);
   if Result <= 32 then
    application.messagebox(Pchar('Impossível iniciar serviço do servidor de banco de dados. Erro: ' + IntToStr(Result)), 'Atenção', mb_iconerror + mb_ok);
  end;
end;

//------ Shutdown local interbase server task ------
Procedure TDm1.ShutdownInterbase;
var
 ServiceStatus:     _SERVICE_STATUS;
 SCMHandle:         SC_HANDLE;
 ServiceHandle:     SC_HANDLE;
 GuardianWinHandle: HWND;
 I:                 Integer;
begin
 if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
   ServiceHandle := GetIBServiceHandle;
   if ServiceHandle = 0 then
    Exit
   else
    begin
     //--- See if Interbase is running. ---
     if not QueryServiceStatus(ServiceHandle, ServiceStatus) then
      application.messagebox(Pchar('Erro de consulta de serviço: ' + GetErrorMessage), 'Atenção', mb_iconerror + mb_ok);
     if ServiceStatus.dwCurrentState <> SERVICE_STOPPED then
      begin
       if not ControlService(ServiceHandle, SERVICE_CONTROL_STOP, ServiceStatus) then
        application.messagebox(Pchar('Erro de Controle de Serviço: ' + GetErrorMessage), 'Atenção', mb_iconerror + mb_ok)
       else
        begin
         //--- Wait for the service to stop ---
         for I := 0 to 50 do
          begin
           QueryServiceStatus(ServiceHandle, ServiceStatus);
           if ServiceStatus.dwCurrentState = SERVICE_STOPPED then
            Break
           else
            Sleep(100);
          end;
        end;
      end;
    end;
  end
 else
  begin
   //--- If not running on NT/2000 get IB Guardian's handle and send it a close message ---
   GuardianWinHandle := FindWindow('IB_Guard', 'Interbase Guardian');
   if GuardianWinHandle <> 0 then
    SendMessage(GuardianWinHandle, WM_CLOSE, 0, 0);
  end;
end;

//------ Testa Qualidade de conexão com o Servidor ------
Function TDM1.IBConectado: Boolean;
begin
Result := False;
try
 if DM1.IBDatabase1.TestConnected then
  Result:= True;

 if not result then
  begin
   //HandleBtn(False,False,False,False,False,False,False,False,False,False,False);
   application.messagebox('Banco de dados indisponível, conexão com o banco de dados perdida...' + #13 +
                          'Este programa não funcionará corretamente, e deve ser fechado.' + #13#13 +
                          'Verifique o Servidor e as coneões de rede e tente abrir o programa novamente...',
                          'Atenção',mb_ok + mb_iconerror);
  end;
except
 {on EIBInterBaseError do     //desabilitado pois não está detectando o except
  begin
   Result := False;
   application.messagebox('Banco de dados indisponível, conexão com o banco de dados perdida...' + #13 +
                          'Este programa não funcionará corretamente, e deve ser fechado.' + #13#13 +
                          'Verifique o Servidor e as coneões de rede e tente abrir o programa novamente...',
                          'Atenção',mb_ok + mb_iconerror);
  end;}
end;
end;
end.
