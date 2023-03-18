unit IBAdminUnit;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, IBServices, IBHeader, Buttons, ExtCtrls, ComCtrls,
 Placemnt;

type
 TInfoIBDBFrm = class(TForm)
   Memo1: TMemo;
   Panel1: TPanel;
   BitBtn1: TBitBtn;
   BitBtn2: TBitBtn;
   BitBtn3: TBitBtn;
   BitBtn5: TBitBtn;
   BitBtn4: TBitBtn;
   BitBtn6: TBitBtn;
   StatusBar1: TStatusBar;
   FormStorage1: TFormStorage;
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure BitBtn1Click(Sender: TObject);
   procedure BitBtn2Click(Sender: TObject);
   procedure BitBtn3Click(Sender: TObject);
   procedure BitBtn4Click(Sender: TObject);
   procedure Memo1Change(Sender: TObject);
   procedure FormCreate(Sender: TObject);
   procedure BitBtn5Click(Sender: TObject);
   procedure BitBtn6Click(Sender: TObject);
   procedure Memo1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 InfoIBDBFrm: TInfoIBDBFrm;
 DefaultFilename: string;

implementation

uses UnitDataM1, UnitFuncoes;

{$R *.dfm}

procedure TInfoIBDBFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action := cafree;
end;

procedure TInfoIBDBFrm.BitBtn1Click(Sender: TObject);
begin
 DefaultFilename := 'IBDBStatistic' + RemoveInvalid('/', datetostr(now)) + '.log';
 with Dm1.IBStatisticalService1 do
  begin
   Memo1.Lines.Clear;
   try
     statusbar1.SimpleText := 'Obtendo informações estatísticas da base de dados, aguarde...';
     Screen.Cursor := crHourGlass;
     Active := True;
     ServiceStart;
     while not EOF do
       memo1.Lines.Add(GetNextLine);
   finally
     Active := False;
     Screen.Cursor := crDefault;
     statusbar1.SimpleText := '';
    end;
  end;
end;

procedure TInfoIBDBFrm.BitBtn2Click(Sender: TObject);
begin
 DefaultFilename := 'IBDBLog' + RemoveInvalid('/', datetostr(now)) + '.log';
 with Dm1.IBLogService1 do
  begin
   Memo1.Lines.Clear;
   try
     statusbar1.SimpleText := 'Obtendo informações de log da base de dados, aguarde...';
     Screen.Cursor := crHourGlass;
     Active := True;
     ServiceStart;
     while not EOF do
       memo1.Lines.Add(GetNextLine);
   finally
     Active := False;
     Screen.Cursor := crdefault;
     statusbar1.SimpleText := '';
    end;
  end;
end;

procedure TInfoIBDBFrm.BitBtn3Click(Sender: TObject);
var
 I: integer;
 S: string;
begin
 DefaultFilename := 'IBDBProperties' + RemoveInvalid('/', datetostr(now)) + '.log';
 with Dm1.IBServerProperties1 do
  begin
   memo1.Lines.Clear;
   Active := True;
   try
     //--- Get and display the database info ---
     Screen.Cursor := crHourGlass;
     statusbar1.SimpleText := 'Obtendo informações de propriedades da base de dados, aguarde...';
     Options := [Database];
     FetchDatabaseInfo;
     memo1.Lines.Add('Number of attachments: ' + IntToStr(DatabaseInfo.NoOfAttachments));
     memo1.Lines.Add('Number of databases: ' + IntToStr(DatabaseInfo.NoOfDatabases));
     memo1.Lines.Add('--------------------------------------------------');
     memo1.Lines.Add('Database Files');
     for I := 0 to High(DatabaseInfo.DbName) do
       memo1.Lines.Add(DatabaseInfo.DbName[I]);
     memo1.Lines.Add('--------------------------------------------------');
     //--- Get and display the config info ---
     Options := [ConfigParameters];
     FetchConfigParams;
     memo1.Lines.Add('Base File Folder: ' + ConfigParams.BaseLocation);
     memo1.Lines.Add('Lock File Folder: ' + ConfigParams.LockFileLocation);
     memo1.Lines.Add('Message File Folder: ' + ConfigParams.MessageFileLocation);
     memo1.Lines.Add('Security Database: ' + ConfigParams.SecurityDatabaseLocation);
     memo1.Lines.Add('--------------------------------------------------');
     for I := 0 to High(ConfigParams.ConfigFileData.ConfigFileValue) do
      begin
       case ConfigParams.ConfigFileData.ConfigFileKey[I] of
         ISCCFG_LOCKMEM_KEY: S := 'LockMem';
         ISCCFG_LOCKSEM_KEY: S := 'LockSem';
         ISCCFG_LOCKSIG_KEY: S := 'LockSig';
         ISCCFG_EVNTMEM_KEY: S := 'EventMem';
         ISCCFG_DBCACHE_KEY: S := 'DbCache';
         ISCCFG_PRIORITY_KEY: S := 'Priority';
         ISCCFG_IPCMAP_KEY: S := 'IPCMap';
         ISCCFG_MEMMIN_KEY: S := 'MemMin';
         ISCCFG_MEMMAX_KEY: S := 'MemMax';
         ISCCFG_LOCKORDER_KEY: S := 'LockOrder';
         ISCCFG_ANYLOCKMEM_KEY: S := 'AnyLockMem';
         ISCCFG_ANYLOCKSEM_KEY: S := 'AnyLockSem';
         ISCCFG_ANYLOCKSIG_KEY: S := 'AnyLockSig';
         ISCCFG_ANYEVNTMEM_KEY: S := 'AnyEventMem';
         ISCCFG_LOCKHASH_KEY: S := 'LockHash';
         ISCCFG_DEADLOCK_KEY: S := 'Deadlock';
         ISCCFG_LOCKSPIN_KEY: S := 'LockSpin';
         ISCCFG_CONN_TIMEOUT_KEY: S := 'Conn Timout';
         ISCCFG_DUMMY_INTRVL_KEY: S := 'Dummy Interval';
        end;
       memo1.Lines.Add(S + ': ' + IntToStr(ConfigParams.ConfigFileData.ConfigFileValue[I]));
      end;
     //--- Get and display the version info ---
     memo1.Lines.Add('--------------------------------------------------');
     Options := [Version];
     FetchVersionInfo;
     memo1.Lines.Add('Server Version: ' + VersionInfo.ServerVersion);
     memo1.Lines.Add('Server Implementation: ' + VersionInfo.ServerImplementation);
     memo1.Lines.Add('Service Version: ' + IntToStr(VersionInfo.ServiceVersion));
   finally
     Screen.Cursor := crDefault;
     Active := False;
     Statusbar1.SimpleText := '';
    end;
  end;
end;

procedure TInfoIBDBFrm.BitBtn4Click(Sender: TObject);
begin
 with Dm1.SaveDialog1 do
  begin
   InitialDir := extractfiledir(application.Exename);
   FileName := extractfiledir(application.Exename) + '\' + DefaultFilename;
   Title := 'Salvando Arquivo de Informações...';
   Execute;
  end;
end;

procedure TInfoIBDBFrm.Memo1Change(Sender: TObject);
begin
 bitbtn4.Enabled := trim(memo1.Text) <> '';
end;

procedure TInfoIBDBFrm.FormCreate(Sender: TObject);
begin
 DefaultFilename := 'IBDB' + RemoveInvalid('/', datetostr(now)) + '.log';
 dm1.opendialog1.Filter := 'Arquivos de Log (*.log)|*.log|Todos os Arquivos (*.*)|*.*';
 dm1.Savedialog1.Filter := 'Arquivos de Log (*.log)|*.log|Todos os Arquivos (*.*)|*.*';
end;

procedure TInfoIBDBFrm.BitBtn5Click(Sender: TObject);
begin
 self.Close;
end;

procedure TInfoIBDBFrm.BitBtn6Click(Sender: TObject);
begin
 with Dm1.OpenDialog1 do
  begin
   InitialDir := extractfiledir(application.Exename);
   FileName := extractfiledir(application.Exename);
   Title := 'Selecione o Arquivo de Informações...';
   Execute;
  end; 
end;

procedure TInfoIBDBFrm.Memo1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;
end;

end.
