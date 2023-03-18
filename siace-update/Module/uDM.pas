unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, IniFiles, Vcl.Dialogs, Registry, ShellAPI,
  Winapi.Windows, Zip, Vcl.Forms;

type
  TDM = class(TDataModule)
    Connection: TFDConnection;
    Cursor: TFDGUIxWaitCursor;
    Link: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
     function LerIni(sArqIni: string; sSecao: string; sVariavel: string): string;
     function PararFirebird(bStart: Boolean): Boolean;
     function UnZip(ZipName: string; Destination: string): boolean;
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  if UpperCase(trim(LerIni('C:\siace\siace.ini', 'DADOS', 'DATABASE'))) = UpperCase('C:\siace\siace.gdb') then
  begin
    if not FileExists('C:\siace\siace.gdb') then
    begin
      if FileExists('C:\siace\siace-backup.zip') then
      begin
        UnZip('C:\siace\siace-backup.zip','C:\siace\');
        RenameFile('C:\siace\siace-backup.gdb','C:\siace\siace.gdb');
      end;
    end;

    try
      Connection.Params.Values['DATABASE']:= trim(LerIni('C:\siace\siace.ini', 'DADOS', 'DATABASE'));
      PararFirebird(True);
      Connection.Connected:= True;
    except
      on Error: Exception do
      begin
        Application.MessageBox
          (PChar('O seguinte erro ocorreu ao tentar abrir Banco de Dados: '
          + Error.Message), 'Error', MB_ICONERROR);
        Application.Terminate;
        Abort;
      end;
    end;
  end;
end;

function TDM.LerIni(sArqIni, sSecao, sVariavel: string): string;
var
  ArqIni: TIniFile;
  sString: string;
begin
  ArqIni := TIniFile.Create(sArqIni);
  Try
    result := ArqIni.ReadString(sSecao, sVariavel, sString);
  Finally
    ArqIni.Free;
  end;
end;

function TDM.PararFirebird(bStart: Boolean): Boolean;
var
  szBuff: String;
begin
  with TRegistry.Create do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    Result := OpenKey('SOFTWARE\Firebird Project\Firebird Server\Instances', False);
    if Result then
    begin
      szBuff := ReadString('DefaultInstance') + 'bin\instsvc.exe';
      Result := FileExists(szBuff);
      if Result then
        case bStart of
          True: ShellExecute(0, nil, PChar(szBuff), '-s start', nil, SW_HIDE);
          False: ShellExecute(0, nil, PChar(szBuff), '-s stop', nil, SW_HIDE);
      end;
      CloseKey;
    end;
    Free;
  end;
end;

function TDM.UnZip(ZipName: string; Destination: string): boolean;
var
  UnZipper: TZipFile;
begin
  UnZipper := TZipFile.Create();
  try
    UnZipper.Open(ZipName, zmRead);
    UnZipper.ExtractAll(Destination);
    UnZipper.Close;
  finally
    FreeAndNil(UnZipper);
  end;
  Result := True;
end;

end.
