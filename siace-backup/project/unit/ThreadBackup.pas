unit ThreadBackup;

interface

uses
  Classes, IdSMTP, IdSSLOpenSSL, IdMessage, IdAttachmentFile,
  IdExplicitTLSClientServerBase, SysUtils, Dialogs, Vcl.Forms,
  Winapi.Windows, DateUtils, uBiblioteca;

type
  TThreadBackup = class(TThread)
  private
    FStatus: Integer;
    FBackup: String;
    FBanco: String;
  public
    constructor Create; overload;
    procedure Execute; override;

    property Backup: String read FBackup write FBackup;
    property Banco: String read FBanco write FBanco;
    property Status: Integer read FStatus write FStatus;
  end;


implementation

{ TThreadBackup }

constructor TThreadBackup.Create;
begin
  inherited Create(True);
end;

procedure TThreadBackup.Execute;
begin
  try
    try
      if TBiblioteca.PararFirebird(False) then
      begin
        if not RenameFile(Banco,ExtractFilePath(Application.ExeName) + 'STARTNET-BACKUP.FDB') then
          raise Exception.Create('Erro ao renomear o banco!');

        Banco:= ExtractFilePath(Application.ExeName) + 'STARTNET-BACKUP.FDB';
      end;

      if FileExists(Backup+'.log') then
        DeleteFile(PWideChar(Backup+'.log'));

      if FileExists(Backup+'.gbk') then
        DeleteFile(PWideChar(Backup+'.gbk'));

      if TBiblioteca.PararFirebird(True) then
        TBiblioteca.BackupRestoreBanco(Banco, Backup + '.log', Backup + '.gbk', 0);
    finally
      Status:= 1;
      Terminate;
    end;
  except
    on Error: Exception do
    begin
      Application.MessageBox
        (PChar('O seguinte error ocorreu durante o backup: '
        + Error.Message), 'Error', MB_ICONERROR);

      RenameFile(Banco,ExtractFilePath(Application.ExeName) + 'STARTNET.FDB');
      TBiblioteca.PararFirebird(True);
    end;
  end;
end;

end.
