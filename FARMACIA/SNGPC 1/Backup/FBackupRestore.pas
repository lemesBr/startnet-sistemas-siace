unit FBackupRestore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IBServices, DB, MDOServices;

type
  TFrmBackupRestore = class(TForm)
    PainelMsg: TPanel;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    BtnSair: TBitBtn;
    BtnRestore: TBitBtn;
    BtnBackup: TBitBtn;
    LOG: TListBox;
    IBBackup: TMDOBackupService;
    IBRestore: TMDORestoreService;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnBackupClick(Sender: TObject);
    procedure BtnRestoreClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBackupRestore: TFrmBackupRestore;

implementation

uses Menu, Senha;

{$R *.dfm}

procedure TFrmBackupRestore.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFrmBackupRestore.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If key=VK_ESCAPE then
      close;
end;

procedure TFrmBackupRestore.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmBackupRestore.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2);
  Top  := ((Screen.Height - Height) div 2)+36;
  Log.clear;
end;

procedure TFrmBackupRestore.BtnBackupClick(Sender: TObject);
begin

  if not DirectoryExists(ExtractFilePath(fMenu.Conexao.DatabaseName)+'\'+'BKP') then
    ForceDirectories(Pchar(ExtractFilePath(fMenu.Conexao.DatabaseName)+'\'+'BKP'));

  SaveDialog1.InitialDir := Pchar(ExtractFilePath(fMenu.Conexao.DatabaseName)+'\'+'BKP');
  SaveDialog1.FileName := FormatDateTime('BKP_dd_mm_yyyy',Date)+FormatDateTime('[hhmmss]',Time);
  
  if not SaveDialog1.Execute then
    Exit;

  if MessageDlg('ATENÇÃO!! Deseja Criar o BACKUP: '+SaveDialog1.FileName+'  ?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  BtnBackup.Enabled  := False;
  BtnRestore.Enabled := False;
  BtnSair.Enabled    := False;

  PainelMsg.caption:='ATENÇÃO!! Criando o BACKUP, não Interrompa...';

  Log.clear;
  with IBBackup do
  begin
    Attach;
    DatabaseName := fMenu.Conexao.DatabaseName;
    BackupFile.Clear;
    BackupFile.Add(SaveDialog1.FileName);
    Active := True;
    ServiceStart;
    While not Eof do
    Begin
      Update;
      Log.Items.Add(GetNextLine);
      Log.ItemIndex:=Log.ItemIndex+1;
    end;
    Log.Items.Add(' ');
    Log.Items.Add('BACKUP Realizado com Sucesso');
    Log.ItemIndex:=Log.ItemIndex+2;
    Active := False;
  end;
  BtnBackup.Enabled  := True;
  BtnRestore.Enabled := True;
  BtnSair.Enabled    := True;
end;

procedure TFrmBackupRestore.BtnRestoreClick(Sender: TObject);
begin
  fSenha.Label1.Caption := 'Digite a Senha para RESTAURAR O BACKUP';
  fsenha.ShowModal;
  if (fSenha.Senha.Text <> '110784') then
  begin
    ShowMessage('ATENÇÃO! Senha Invalida.');
    Exit;
  end;

  OpenDialog1.InitialDir := '';
  If OpenDialog1.Execute then
  begin
    if MessageDlg('ATENÇÃO!! Deseja Realmente Restaurar esse BACKUP, os Dados atuais serão PERDIDOS: '+OpenDialog1.FileName+'  ?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;

    BtnBackup.Enabled  := False;
    BtnRestore.Enabled := False;
    BtnSair.Enabled    := False;

    fMenu.Conexao.Connected := False;

    Log.clear;
    PainelMsg.caption:='ATENÇÃO!! Restaurando o BACKUP, não Interrompa...';
    Update;

    with IBRestore do
    begin
      Attach;
      DatabaseName.Clear;
      DatabaseName.Add( fMenu.Conexao.DatabaseName );

      BackupFile.Clear;
      BackupFile.Add( OpenDialog1.FileName );
      Active := True;
      ServiceStart;

      While not Eof do
      Begin
        Update;
        Log.Items.Add(GetNextLine);
        Log.ItemIndex:=Log.ItemIndex+1;
      end;
      Log.Items.Add(' ');
      Log.Items.Add('Restauração realizada com sucesso');
      Log.ItemIndex:=Log.ItemIndex+2;
      Active := False;

      fMenu.Conexao.Connected  := True;
      fMenu.qryEmpresa.Active  := True;
    end;
    BtnBackup.Enabled  := True;
    BtnRestore.Enabled := True;
    BtnSair.Enabled    := True;
  end;
end;

procedure TFrmBackupRestore.FormDestroy(Sender: TObject);
begin
  FrmBackupRestore := Nil;
end;

end.
