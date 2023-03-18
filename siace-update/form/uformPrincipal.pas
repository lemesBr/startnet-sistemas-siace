unit uformPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.DateUtils, System.Zip,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdComponent, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Samples.Gauges, IdAntiFreezeBase, Vcl.IdAntiFreeze,
  IdBaseComponent, IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, IniFiles,
  IdSSLOpenSSL, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Registry, ShellAPI, IBX.IBServices, FireDAC.Stan.Def,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper, FireDAC.Phys.FB, FireDAC.Phys,
  FireDAC.Phys.IBBase, FireDAC.Phys.FBDef, Tlhelp32;

type
  TformPrincipal = class(TForm)
    Gauge: TGauge;
    Image1: TImage;
    LblDownload: TLabel;
    lblSituacao: TLabel;
    lblVelocidades: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    lblStatus: TLabel;
    lblVelocidade: TLabel;
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function LerIni(sArqIni: string; sSecao: string; sVariavel: string): string;
    function UnZip(ZipName: string; Destination: string): boolean;
    function Zip(ZipName: string; Destination: string): boolean;

    procedure DownloadVersaoDropBox;
    procedure DownloadVersaoDropBoxUpdate;
    procedure IdHTTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdHTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdHTTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);

    procedure ExtraiEDelete(Arquivo, Local: String);
    procedure Subistituir;
    procedure SubistituirSiaceUpdate;
    procedure ListarArquivos(Diretorio: string; Sub: boolean;
      Lista: TStringList);

    procedure AtualizaVersoesBanco;
    procedure AtualizaBanco;

    procedure BackupBanco;
    procedure RestaurarBanco;

    function TemAtributo(Attr, Val: Integer): boolean;
    function Is64Bits: boolean;

    function GetBuildInfo(Prog: string): string;
    function VerificaVersaoDropBox: String;
    function PararFirebird(bStart: boolean): boolean;
    function LimpaOuRemoveDiretorio(_sDiretorio: String; _bRemoverDiretorio: Boolean): Boolean;
    function ProcessoExiste(ExeFileName: string): boolean;
    function DevolveInteiro(Const Texto:String):String;
  public
    { Public declarations }
    varStartDate: TDateTime;
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses uDM;

procedure TformPrincipal.ExtraiEDelete(Arquivo, Local: String);
begin
  try
    Gauge.Progress := 0;
    lblSituacao.Caption := 'Extraindo Arquivos...';
    lblStatus.Caption:= '...';
    lblVelocidade.Caption:= '...';
    Application.ProcessMessages;
    Sleep(500);
    Gauge.Progress := 50;
    Application.ProcessMessages;
    Sleep(500);
    UnZip(Arquivo, Local);
    Application.ProcessMessages;
    DeleteFile(Arquivo);
    Gauge.Progress := 100;
    Application.ProcessMessages;
  except
    on Error: Exception do
    begin
      Application.MessageBox
        (PChar('O seguinte erro ocorreu durante a extração do arquivo: ' +
        Error.Message), 'Error', MB_ICONERROR);
      Application.Terminate;
      Abort;
    end;
  end;
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  Sleep(10000);
  if ProcessoExiste('Siace.exe') then
    Application.Terminate;
end;

function TformPrincipal.Is64Bits: boolean;
const
  PROCESSOR_ARCHITECTURE_INTEL = $0000;
  PROCESSOR_ARCHITECTURE_IA64 = $0006;
  PROCESSOR_ARCHITECTURE_AMD64 = $0009;
  PROCESSOR_ARCHITECTURE_UNKNOWN = $FFFF;
var
  xSysInfo: TSystemInfo;
begin
  GetNativeSystemInfo(xSysInfo);
  case xSysInfo.wProcessorArchitecture of
    PROCESSOR_ARCHITECTURE_AMD64, PROCESSOR_ARCHITECTURE_IA64:
      Result := True;
  else
    Result := False;
  end;
end;

procedure TformPrincipal.IdHTTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
var
  ElapsedTime: TTime;
begin
  // a cada conjunto de bytes trazidos pelo componente, incrementamos o Gauge
  Gauge.Progress := AWorkCount;
  // mostra no label o total de bytes e o progresso do download em bytes
  lblStatus.Caption := FormatFloat('#0.00', (AWorkCount / 1024) / 1024) +
    'MB de ' + FormatFloat('#0.00', (Gauge.MaxValue / 1024) / 1024) + 'MB';

  { reescreve os valores no formulário }
  if AWorkMode = wmRead then
  begin
    // Marca o tempo percorrido
    ElapsedTime := SecondsBetween(Now, varStartDate);
    if ElapsedTime > 0 then
    begin
      // pbprogresso.Progress := trunc(AWorkCount/1024)/1024;
      // Calcula a velocidade com base nos arquivos transferidos e tempo percorrido
      lblVelocidade.Caption := Format('%s Kb/s',
        [FormatFloat('0.00', (AWorkCount / 1024) / ElapsedTime)]);
      Application.ProcessMessages;
    end;
  end;
end;

procedure TformPrincipal.IdHTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  { limpa a barra de progresso }
  Gauge.Progress := 0;
  { define o tamanho máximo para o Gauge }
  Gauge.MaxValue := AWorkCountMax;
  { Marcando o inicio do Download }
  varStartDate := Now;
end;

procedure TformPrincipal.IdHTTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  Application.ProcessMessages();
  TIdHTTP(ASender).Disconnect;
end;

function TformPrincipal.LerIni(sArqIni: string; sSecao: string;
  sVariavel: string): string;
var
  ArqIni: TIniFile;
  sString: string;
begin
  ArqIni := TIniFile.Create(sArqIni);
  Try
    Result := ArqIni.ReadString(sSecao, sVariavel, sString);
  Finally
    ArqIni.Free;
  end;
end;

procedure TformPrincipal.ListarArquivos(Diretorio: string; Sub: boolean;
  Lista: TStringList);
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
begin
  Ret := FindFirst(Diretorio + '\*.*', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') then
        begin
          if Sub = True then
          begin
            TempNome := Diretorio + '\' + F.Name;
            ListarArquivos(TempNome, True, Lista);
          end;
        end;
      end
      else
      begin
        Lista.Add(Diretorio + '\' + F.Name);
      end;
      Ret := FindNext(F);
    end;

  finally
    FindClose(F);
  end;
end;

function TformPrincipal.PararFirebird(bStart: boolean): boolean;
var
  szBuff: String;
begin
  with TRegistry.Create do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    Result := OpenKey
      ('SOFTWARE\Firebird Project\Firebird Server\Instances', False);
    if Result then
    begin
      szBuff := ReadString('DefaultInstance') + 'bin\instsvc.exe';
      Result := FileExists(szBuff);
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

procedure TformPrincipal.RestaurarBanco;
var
  StatusProgress: Integer;
begin
  try
    if DirectoryExists('C:\siace\Backup') = True then
    begin
      if Is64Bits = True then
        WinExec('C:\Program Files (x86)\Firebird\Firebird_2_5\bin\gbak.exe -rep -v -user SYSDBA -password masterkey -y C:\siace\Backup\restore.log C:\siace\Backup\siace-backup.gbk localhost:C:\siace\siace-backup.GDB',
          SW_HIDE)
      else
        WinExec('C:\Program Files (x86)\Firebird\Firebird_2_5\bin\gbak.exe -rep -v -user SYSDBA -password masterkey -y C:\siace\Backup\restore.log C:\siace\Backup\siace-backcup.gbk localhost:C:\siace\siace-backup.GDB',
          SW_HIDE);
    end;

    lblSituacao.Caption:= 'Restaurando Backup do Banco de Dados...';
    Application.ProcessMessages;
    Gauge.Progress:= 0;
    Application.ProcessMessages;

    while ProcessoExiste('gbak.exe') = True do
    begin
      Sleep(500);
      if Gauge.Progress > 98 then
        Gauge.Progress:= 0
      else
        Gauge.Progress:= Gauge.Progress + 1;

      if Gauge.Progress = 11 then
        StatusProgress:= StatusProgress + 1;

      if StatusProgress = 2 then
      begin
        Gauge.Progress:= 0;
        StatusProgress:= 0;
      end;

      Application.ProcessMessages;
    end;

    Gauge.Progress:= 100;
    Application.ProcessMessages;
  except
     on Error: Exception do
    begin
      Application.MessageBox
        (PChar('O seguinte erro ocorreu durante a restauração do banco de dados: '
        + Error.Message), 'Error', MB_ICONERROR);
      UnZip('C:\siace\siace-backup.zip','C:\siace\');
      RenameFile('C:\siace\siace-backup.gdb','C:\siace\siace.gdb');
      PararFirebird(True);
      Application.Terminate;
      Abort;
    end;
  end;
end;

function TformPrincipal.TemAtributo(Attr, Val: Integer): boolean;
begin
  Result := Attr and Val = Val;
end;

procedure TformPrincipal.TimerTimer(Sender: TObject);
var
  VersaoAtual, VersaoDropBox: String;
begin
  // Para o Timer
  Timer.Enabled := False;

  VersaoAtual:= DevolveInteiro(GetBuildInfo('C:\siace\SiaceUpdate.exe'));
  VersaoDropBox:= DevolveInteiro(VerificaVersaoDropBox);

  if VersaoAtual < VersaoDropBox then
  begin
    //Baixa Nova Versão do DropBox
    DownloadVersaoDropBoxUpdate;

    //Extrai e deleta Arquivo ZIP baixando
    ExtraiEDelete('C:\siace\update\SiaceUpdate.zip','C:\siace\update\');

    //Subistitui os arquivos da pasta update para siace
    SubistituirSiaceUpdate;
  end
  else
  begin
    // Baixa Nova Versão do DropBox
    DownloadVersaoDropBox;

    // Extrai e deleta Arquivo ZIP baixando
    ExtraiEDelete('C:\siace\update\update.zip','C:\siace\update\');

    // Subistitui os arquivos da pasta update para siace
    Subistituir;

    if UpperCase(trim(LerIni('C:\siace\siace.ini', 'DADOS', 'DATABASE'))) = UpperCase('C:\siace\siace.gdb') then
    begin
      //Faz um backup do banco de dados
      BackupBanco;

      //Restaura o backup do banco de dados
      RestaurarBanco;

      // Atualiza versões de banco de dados
      AtualizaVersoesBanco;

      // Atualiza o banco de dados
      AtualizaBanco;

      //Renomeia Banco
      RenameFile('C:\siace\siace-backup.gdb', 'C:\siace\siace.gdb');
    end;

    ShellExecute(Handle,'open', PChar('C:\siace\siace.exe'), nil, nil, SW_SHOWNORMAL);
    Application.Terminate;
  end;
end;

function TformPrincipal.UnZip(ZipName: string; Destination: string): boolean;
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

function TformPrincipal.VerificaVersaoDropBox: String;
var
  IdHTTP: TIdHTTP;
  LHandler: TIdSSLIOHandlerSocketOpenSSL;
begin
  try
    try
      IdHTTP := TIdHTTP.Create(nil);
      LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

      IdHTTP.IOHandler := LHandler;
      IdHTTP.HandleRedirects := True;
      IdHTTP.HTTPOptions := [hoInProcessAuth, hoForceEncodeParams];

      IdHTTP.OnWork := IdHTTPWork;
      IdHTTP.OnWorkBegin := IdHTTPWorkBegin;
      IdHTTP.OnWorkEnd := IdHTTPWorkEnd;

      IdHTTP.Request.Accept :=
        'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
      IdHTTP.Request.BasicAuthentication := True;
      IdHTTP.Request.ContentLength := -1;
      IdHTTP.Request.ContentRangeEnd := -1;
      IdHTTP.Request.ContentRangeInstanceLength := -1;
      IdHTTP.Request.ContentRangeStart := -1;

      Result := IdHTTP.Get
        ('https://www.dropbox.com/s/c5xumi7wx3q6nog/Versao%20de%20Siace%20Update.ini?dl=1');
    except
      on Error: Exception do
      begin
        Application.MessageBox
          (PChar('O seguinte erro ocorreu durante a verificação de atualização: '
          + #13 + Error.Message), 'Error', MB_ICONERROR);
        Application.Terminate;
        Abort;
      end;
    end;
  finally
    FreeAndNil(LHandler);
    FreeAndNil(IdHTTP);
  end;
end;

function TformPrincipal.Zip(ZipName: string; Destination: string): boolean;
var
  UnZipper: TZipFile;
begin
  UnZipper := TZipFile.Create();
  try
    UnZipper.Open(Destination, zmWrite);
    UnZipper.Add(ZipName);
    UnZipper.Close;
  finally
    FreeAndNil(UnZipper);
  end;
  Result := True;
end;

procedure TformPrincipal.Subistituir;
var
  siace, update: TStringList;
  I: Integer;
begin
  try
    try
      lblSituacao.Caption:= 'Substituindo arquivos...';
      Gauge.Progress:= 0;
      Application.ProcessMessages;
      siace := TStringList.Create;
      siace.LoadFromFile('C:\siace\update\siace.txt');
      Gauge.Progress:= 16;
      Application.ProcessMessages;
      siace.StrictDelimiter := True;
      siace.Delimiter := '?';
      siace.DelimitedText := siace.Text;

      update := TStringList.Create;
      update.LoadFromFile('C:\siace\update\update.txt');
      Gauge.Progress:= 41;
      Application.ProcessMessages;
      update.StrictDelimiter := True;
      update.Delimiter := '?';
      update.DelimitedText := update.Text;

      if not FileExists('C:\siace\versao') then
        forceDirectories('C:\siace\versao');

      for I := 0 to Pred(update.Count) do
      begin
        if FileExists(update[I]) = True then
          CopyFile(PWideChar(update[I]), PWideChar(siace[I]),True);

        Gauge.Progress:= Gauge.Progress + 3;
        Application.ProcessMessages;
      end;
      Gauge.Progress:= 100;
      Application.ProcessMessages;
    except
      on Error: Exception do
      begin
        Application.MessageBox
          (PChar('O seguinte erro ocorreu ao tentar subistituir Arquivos: ' +
          Error.Message), 'Error', MB_ICONERROR);
        Application.Terminate;
        Abort;
      end;
    end;
  finally
    FreeAndNil(update);
    FreeAndNil(siace);
  end;
end;

procedure TformPrincipal.SubistituirSiaceUpdate;
begin
  try
    lblSituacao.Caption:= 'Substituindo Arquivos...';
    Application.Terminate;
    CopyFile('C:\siace\update\SiaceUpdate.exe', 'C:\siace\SiaceUpdate.exe', True);
    Sleep(700);
    DeleteFile('C:\siace\update\SiaceUpdate.exe');
    ShellExecute(Handle,'open', PChar('C:\siace\SiaceUpdate.exe'), nil, nil, SW_SHOWNORMAL);
  except
    on Error: Exception do
    begin
      Application.MessageBox
        (PChar('O seguinte erro ocorreu ao tentar subistituir Arquivos do Siace Update: ' +
        Error.Message), 'Error', MB_ICONERROR);
      Application.Terminate;
      Abort;
    end;
  end;
end;

procedure TformPrincipal.AtualizaBanco;
var
  Versao: TStringList;
  qrSQLVersao, qrSQLUpdate: TFDQuery;
  I: Integer;
begin
  try
    try
      lblSituacao.Caption:= 'Atualizando Banco de Dados...';
      Gauge.Progress:= 0;
      Application.ProcessMessages;

      qrSQLVersao := TFDQuery.Create(nil);
      qrSQLVersao.Connection := DM.Connection;
      qrSQLVersao.SQL.Add('SELECT * FROM VERSAO_SIACE ORDER BY NUMERO');
      qrSQLVersao.Open;

      qrSQLUpdate := TFDQuery.Create(nil);
      qrSQLUpdate.Connection := DM.Connection;

      qrSQLVersao.First;
      while not qrSQLVersao.Eof do
      begin
        Gauge.Progress:= Gauge.Progress + 1;
        Application.ProcessMessages;

        if qrSQLVersao.FieldByName('STATUS').AsString = 'N' then
        begin
          Versao := TStringList.Create;
          Versao.LoadFromFile('C:\siace\versao\' + qrSQLVersao.FieldByName
            ('NUMERO').AsString + '.txt');
          Versao.StrictDelimiter := True;
          Versao.Delimiter := '?';
          Versao.DelimitedText := Versao.Text;

          try
            qrSQLUpdate.Connection.StartTransaction;
            for I := 0 to Pred(Versao.Count) do
            begin
              qrSQLUpdate.SQL.Clear;
              qrSQLUpdate.SQL.Add(Versao[I]);
              qrSQLUpdate.ExecSQL;
              Gauge.Progress:= Gauge.Progress + 4;
              Application.ProcessMessages;
            end;
            qrSQLUpdate.Connection.Commit;
          except
            on Error: Exception do
            begin
              qrSQLUpdate.Connection.Rollback;
              raise Exception.Create(Error.Message);
            end;
          end;
        end;

        qrSQLVersao.Next;
      end;

      Gauge.Progress:= 100;
      Application.ProcessMessages;
    except
      on Error: Exception do
      begin
        Application.MessageBox
          (PChar('O seguinte erro ocorreu durante a atualização do banco de dados: '
          + Error.Message), 'Error', MB_ICONERROR);
        UnZip('C:\siace\siace-backup.zip','C:\siace\');
        RenameFile('C:\siace\siace-backup.gdb','C:\siace\siace.gdb');
        Application.Terminate;
        Abort;
      end;
    end;
  finally
    FreeAndNil(Versao);
    FreeAndNil(qrSQLVersao);
    FreeAndNil(qrSQLVersao);
    DM.Connection.Connected:= False;
  end;
end;

procedure TformPrincipal.AtualizaVersoesBanco;
var
  qrSQLVersao: TFDQuery;
  ListaVersoes: TStringList;
  I: Integer;
begin
  try
    try
      lblSituacao.Caption:= 'Atualiza versões do banco de dados...';
      Application.ProcessMessages;
      Gauge.Progress:= 0;

      Application.ProcessMessages;
      DM.Connection.Params.Values['DATABASE']:= 'C:\siace\siace-backup.gdb';
      DM.Connection.Connected:= True;

      qrSQLVersao := TFDQuery.Create(nil);
      qrSQLVersao.Connection := DM.Connection;

      ListaVersoes := TStringList.Create;
      ListaVersoes.LoadFromFile('C:\siace\versao\versoes.txt');

      for I := 0 to Pred(ListaVersoes.Count) do
      begin
        qrSQLVersao.SQL.Clear;
        qrSQLVersao.SQL.Add('SELECT * FROM VERSAO_SIACE WHERE NUMERO = ' +
          QuotedStr(ListaVersoes[I]));
        qrSQLVersao.Open;

        Gauge.Progress:= Gauge.Progress + 1;
        Application.ProcessMessages;

        try
          qrSQLVersao.Connection.StartTransaction;
          if qrSQLVersao.IsEmpty then
          begin
            qrSQLVersao.Insert;
            qrSQLVersao.FieldByName('NUMERO').AsString := ListaVersoes[I];
            qrSQLVersao.FieldByName('STATUS').AsString := 'N';
            qrSQLVersao.Post;
          end;
          qrSQLVersao.Connection.Commit;
        except
          on Error: Exception do
          begin
            qrSQLVersao.Connection.Rollback;
            raise Exception.Create(Error.Message);
          end;
        end;

        qrSQLVersao.Close;
      end;

      Gauge.Progress:= 100;
      Application.ProcessMessages;
    except
      on Error: Exception do
      begin
        Application.MessageBox
          (PChar('O seguinte erro ocorreu durante a atualização das versões de banco de dados: '
          + Error.Message), 'Error', MB_ICONERROR);
        UnZip('C:\siace\siace-backup.zip','C:\siace\');
        RenameFile('C:\siace\siace-backup.gdb','C:\siace\siace.gdb');
        Application.Terminate;
        Abort;
      end;
    end;
  finally
    FreeAndNil(ListaVersoes);
    FreeAndNil(qrSQLVersao);
  end;
end;

procedure TformPrincipal.BackupBanco;
var
  StatusProgress: Integer;
begin
  try
    DM.Connection.Connected := False;
    if PararFirebird(False) then
    begin
      if FileExists('C:\siace\siace-backup.gdb') then
        DeleteFile('C:\siace\siace-backup.gdb');

      Sleep(4000);
      if not RenameFile('C:\siace\siace.gdb', 'C:\siace\siace-backup.gdb') then
      begin
        raise Exception.Create('Erro ao tentar renomear o banco de dados');
      end
      else
      begin
        lblSituacao.Caption:= 'Comprimindo Backup do Banco de Dados...';
        Application.ProcessMessages;
        Zip('C:\siace\siace-backup.gdb', 'C:\siace\siace-backup.zip');
      end;
    end;

    if DirectoryExists('C:\siace\Backup') = True then
      LimpaOuRemoveDiretorio('C:\siace\Backup',True);

    Sleep(1000);
    forceDirectories('C:\siace\Backup');
    Sleep(1000);

    if PararFirebird(True) then
    begin
      if Is64Bits = True then
        WinExec('C:\Program Files (x86)\Firebird\Firebird_2_5\bin\gbak.exe -user sysdba -pass masterkey -backup -verify -y C:\siace\Backup\backup.log localhost:C:\siace\siace-backup.gdb C:\siace\Backup\siace-backup.gbk',
          SW_HIDE)
      else
        WinExec('C:\Program Files\Firebird\Firebird_2_5\bin\gbak.exe -user sysdba -pass masterkey -backup -verify -y C:\siace\Backup\backup.log localhost:C:\siace\siace-backup.gdb C:\siace\Backup\siace-backup.gbk',
          SW_HIDE);
    end;

    lblSituacao.Caption:= 'Fazendo Backup do Banco de Dados...';
    Application.ProcessMessages;
    Gauge.Progress:= 0;
    Application.ProcessMessages;

    StatusProgress:= 0;
    while ProcessoExiste('gbak.exe') = True do
    begin
      Sleep(300);
      if Gauge.Progress > 98 then
        Gauge.Progress:= 0
      else
        Gauge.Progress:= Gauge.Progress + 1;

      if Gauge.Progress = 11 then
        StatusProgress:= StatusProgress + 1;

      if StatusProgress = 2 then
      begin
        Gauge.Progress:= 0;
        StatusProgress:= 0;
      end;

      Application.ProcessMessages;
    end;

    Gauge.Progress:= 100;
    Application.ProcessMessages;
  except
    on Error: Exception do
    begin
      Application.MessageBox
        (PChar('O seguinte erro ocorreu durante o backup do banco de dados: '
        + Error.Message), 'Error', MB_ICONERROR);
      UnZip('C:\siace\siace-backup.zip','C:\siace\');
      RenameFile('C:\siace\siace-backup.gdb','C:\siace\siace.gdb');
      PararFirebird(True);
      Application.Terminate;
      Abort;
    end;
  end;
end;

function TformPrincipal.DevolveInteiro(const Texto: String): String;
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if CharInSet((Texto[I]),['0'..'9']) then
    begin
      S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

procedure TformPrincipal.DownloadVersaoDropBox;
var
  IdHTTP: TIdHTTP;
  LHandler: TIdSSLIOHandlerSocketOpenSSL;
  SaveDialog: TSaveDialog;
  FromFile: TFileStream;
begin
  try
    try
      IdHTTP := TIdHTTP.Create(nil);
      SaveDialog := TSaveDialog.Create(nil);
      LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

      IdHTTP.OnWork := IdHTTPWork;
      IdHTTP.OnWorkBegin := IdHTTPWorkBegin;
      IdHTTP.OnWorkEnd := IdHTTPWorkEnd;

      IdHTTP.IOHandler := LHandler;
      IdHTTP.HandleRedirects := True;
      IdHTTP.HTTPOptions := [hoInProcessAuth, hoForceEncodeParams];
      IdHTTP.Request.Accept :=
        'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
      IdHTTP.Request.BasicAuthentication := True;
      IdHTTP.Request.ContentLength := -1;
      IdHTTP.Request.ContentRangeEnd := -1;
      IdHTTP.Request.ContentRangeInstanceLength := -1;
      IdHTTP.Request.ContentRangeStart := -1;

      lblSituacao.Caption := 'Baixando nova atualização...';

      if DirectoryExists('C:\siace\update') = True then
        RemoveDir('C:\siace\update');

      forceDirectories('C:\siace\update');

      SaveDialog.FileName := 'C:\siace\update\update.zip';
      FromFile := TFileStream.Create(SaveDialog.FileName, fmCreate);
      IdHTTP.Get('https://www.dropbox.com/s/87m7t72425lw688/Versao%20de%20Siace%20Sistemas.zip?dl=1',
        FromFile);
    except
      on Error: Exception do
      begin
        Application.MessageBox
          (PChar('O seguinte erro ocorreu durante a atualização: ' +
          Error.Message), 'Error', MB_ICONERROR);
        Application.Terminate;
        Abort;
      end;
    end;
  finally
    FreeAndNil(LHandler);
    FreeAndNil(SaveDialog);
    FreeAndNil(FromFile);
    FreeAndNil(IdHTTP);
  end;
end;

procedure TformPrincipal.DownloadVersaoDropBoxUpdate;
var
  IdHTTP: TIdHTTP;
  LHandler: TIdSSLIOHandlerSocketOpenSSL;
  SaveDialog: TSaveDialog;
  FromFile: TFileStream;
begin
  try
    try
      IdHTTP := TIdHTTP.Create(nil);
      SaveDialog := TSaveDialog.Create(nil);
      LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

      IdHTTP.OnWork := IdHTTPWork;
      IdHTTP.OnWorkBegin := IdHTTPWorkBegin;
      IdHTTP.OnWorkEnd := IdHTTPWorkEnd;

      IdHTTP.IOHandler := LHandler;
      IdHTTP.HandleRedirects := True;
      IdHTTP.HTTPOptions := [hoInProcessAuth, hoForceEncodeParams];
      IdHTTP.Request.Accept :=
        'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
      IdHTTP.Request.BasicAuthentication := True;
      IdHTTP.Request.ContentLength := -1;
      IdHTTP.Request.ContentRangeEnd := -1;
      IdHTTP.Request.ContentRangeInstanceLength := -1;
      IdHTTP.Request.ContentRangeStart := -1;

      lblSituacao.Caption := 'Baixando nova atualização de Siace Update...';
      Application.ProcessMessages;

      if DirectoryExists('C:\siace\update') = True then
        RemoveDir('C:\siace\update');

      forceDirectories('C:\siace\update');

      SaveDialog.FileName := 'C:\siace\update\SiaceUpdate.zip';
      FromFile := TFileStream.Create(SaveDialog.FileName, fmCreate);
      IdHTTP.Get('https://www.dropbox.com/s/w1o5y1ajdugw9nw/Versao%20de%20Siace%20Update.zip?dl=1',
        FromFile);
    except
      on Error: Exception do
      begin
        Application.MessageBox
          (PChar('O seguinte erro ocorreu durante a atualização: ' +
          Error.Message), 'Error', MB_ICONERROR);
        Application.Terminate;
        Abort;
      end;
    end;
  finally
    FreeAndNil(LHandler);
    FreeAndNil(SaveDialog);
    FreeAndNil(FromFile);
    FreeAndNil(IdHTTP);
  end;
end;

function TformPrincipal.GetBuildInfo(Prog: string): string;
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
    GetFileVersionInfo(PChar(Prog), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
    with (VerValue^) do
    begin
      V1 := dwFileVersionMS shr 16;
      V2 := dwFileVersionMS and $FFFF;
      V3 := dwFileVersionLS shr 16;
      V4 := dwFileVersionLS and $FFFF;
    end;
    FreeMem(VerInfo, VerInfoSize);
    Result := Format('%d.%d.%d.%d', [V1, V2, V3, V4]);
  except
    on Error: Exception do
    begin
      Application.MessageBox
        (PChar('O seguinte erro ocorreu pesquisa de versão do Siace Update: ' +
        Error.Message), 'Error', MB_ICONERROR);
      Application.Terminate;
      Abort;
    end;
  end;
end;

function TformPrincipal.LimpaOuRemoveDiretorio(_sDiretorio: String; _bRemoverDiretorio: Boolean): Boolean;
var
  oSearchRec : TSearchRec;
  iRetorno : Integer;
begin
  Result := False;

  _sDiretorio := IncludeTrailingPathDelimiter(_sDiretorio);
  if not(DirectoryExists(_sDiretorio)) then
    Exit;

  iRetorno := FindFirst(_sDiretorio + '*.*', faAnyFile, oSearchRec);
  while iRetorno = 0 do begin
    if (oSearchRec.Name <> '.') and (oSearchRec.Name <> '..') then
    if oSearchRec.Attr = faDirectory then
      LimpaOuRemoveDiretorio(_sDiretorio + oSearchRec.Name, True)
    else begin
      if GetFileAttributes(PWideChar(_sDiretorio + oSearchRec.Name)) > 0 then
        SetFileAttributes(PWideChar(_sDiretorio + oSearchRec.Name), 0);

      DeleteFile(PWideChar(_sDiretorio + oSearchRec.Name));
    end;

    iRetorno := FindNext(oSearchRec);
  end;

  FindClose(oSearchRec);

  if _bRemoverDiretorio then
    Result := RemoveDir(_sDiretorio)
  else
    Result := True;
end;

function TformPrincipal.ProcessoExiste(ExeFileName: string): boolean;
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
