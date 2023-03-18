unit UBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IBServices, Mask, SUIPageControl, ExtCtrls,
  SUITabControl, SUITitleBar, ComCtrls, sPageControl, RxToolEdit;

type
  TFormBackup = class(TForm)
    pc: TsPageControl;
    TAgregados: TsTabSheet;
    Tprodutos: TsTabSheet;
    FeBanco: TFilenameEdit;
    deBackup: TDirectoryEdit;
    feRestaurar: TFilenameEdit;
    IBBackupService1: TIBBackupService;
    IBRestoreService1: TIBRestoreService;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MmBackup: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    feRestbanco: TFilenameEdit;
    Button1: TButton;
    Button2: TButton;
    mmRestaurar: TMemo;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBackup: TFormBackup;

implementation

uses Principal;

{$R *.dfm}

procedure TFormBackup.Button2Click(Sender: TObject);
begin
if febanco.FileName = '' then
  begin
    Showmessage('Indique onde esta seu Banco');
    febanco.SetFocus;
    Abort;
  end;
  if debackup.Text = '' then
  begin
    Showmessage('Indique onde irá Gravar o Backup');
    deBackup.SetFocus;
    Abort;
  end;
  with IBBackupService1 do
  begin
    Params.Clear;
    BackupFile.Clear;
    ServerName := 'localhost';
    LoginPrompt := False;
    Params.Add('user_name=SYSDBA');
    Params.Add('password=masterkey');
    Active := True;
    try
      Verbose := True;
      Options := [NonTransportable, IgnoreLimbo];
      DatabaseName := feBanco.FileName;
      BackupFile.Add(deBackup.Text+'/'+'Backup.gbk');
      ServiceStart;
      While not Eof do
        mmBackup.Lines.Add(GetNextLine);
    finally
      Active := False;
    end;
  end;
  ShowMessage('Backup Efetuado com Sucesso');
end;


procedure TFormBackup.Button1Click(Sender: TObject);
begin
  if feRestaurar.FileName = '' then
  begin
    Showmessage('Indique onde esta o seu Arquivo de Backup');
    feRestaurar.SetFocus;
    Abort;
  end;
  if feRestBanco.Text = '' then
  begin
    Showmessage('Indique onde irá Restaurar o seu Backup ');
    feRestBanco.SetFocus;
    Abort;
  end;
  with IBRestoreService1 do
  begin
    Params.Clear;
    BackupFile.Clear;
    ServerName := 'localhost';
    LoginPrompt := False;
    Params.Add('user_name=SYSDBA');
    Params.Add('password=masterkey');
    Active := True;
    try
      Verbose := True;
      Options := [Replace, UseAllSpace];
      PageBuffers := 3000;
      PageSize := 4096;
      DatabaseName.Add(feRestBanco.FileName);
      BackupFile.Add(feRestaurar.FileName);
      ServiceStart;
      While not Eof do
        mmRestaurar.Lines.Add(GetNextLine);
    finally
      Active := False;
    end;
  end;
  Showmessage('Restauração Efetuada com Sucesso');
end;


procedure TFormBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
Formbackup:=nil;
end;

end.
