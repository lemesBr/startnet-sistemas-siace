unit Backups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, backup, ExtCtrls, StdCtrls, FileCtrl, ComCtrls, Buttons;

type
  TFormBackup = class(TForm)
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    Backupfile: TBackupFile;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    FileListBox: TListBox;
    Label2: TLabel;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    DriveComboBox1: TDriveComboBox;
    Label3: TLabel;
    Edit2: TEdit;
    DirectoryListBox1: TDirectoryListBox;
    RadioGroup2: TRadioGroup;
    FileListBox1: TFileListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    rgRestoreMode: TRadioGroup;
    gbRestorepath: TGroupBox;
    rbOrigpath: TRadioButton;
    rbOtherPath: TRadioButton;
    EdPath: TEdit;
    CbFullPath: TCheckBox;
    procedure FileListBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure rbOtherPathClick(Sender: TObject);
    procedure BackupfileRestoreFile(Sender: TObject; var Filename: string;
      FA: Integer; var DoRestore: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBackup: TFormBackup;

implementation

{$R *.dfm}

procedure TFormBackup.FileListBox1Change(Sender: TObject);
var
files: tstringlist;
begin
// Edit2.Text:=BackupFile.GetArchiveTitle(FileListBox1.FileName);

Edit2.Text:=BackupFile.getArchiveTitle(Filelistbox1.filename, files);
end;

procedure TFormBackup.rbOtherPathClick(Sender: TObject);
begin
     EdPath.enabled     := rbOtherPath.checked;
     cbFullPath.enabled := rbOtherPath.checked;
end;


procedure TFormBackup.BackupfileRestoreFile(Sender: TObject;
  var Filename: string; FA: Integer; var DoRestore: Boolean);
begin
 if rgRestoreMode.ItemIndex = 1 then
     DoRestore:=InputQuery('Você quer Restaurar este Arquivo ?', 'Entre com o Caminho e a extensão do Arquivo!!!', FileName);
end;

procedure TFormBackup.BitBtn1Click(Sender: TObject);
var
   i: Integer;
begin
   if OpenDialog.Execute then
     with FileListbox.Items do
     begin
       beginupdate;
       for i := 0 to OpenDialog.files.count-1 do
         if indexof(LowerCase(OpenDialog.Files[i])) = -1 then
            Add(LowerCase(OpenDialog.Files[i]));
       endupdate;
    end;
end;

procedure TFormBackup.BitBtn2Click(Sender: TObject);
var
s: string;
begin
  s:='C:\StartNet_Sistemas\'+'*.FDB';
  if InputQuery('Adicionar Arquivos do Caminho...', 'Enter path + file mask', s) then
     FileListBox.items.add(s);
end;

procedure TFormBackup.BitBtn3Click(Sender: TObject);
begin
  FileListBox.Items.Clear;
end;

procedure TFormBackup.BitBtn4Click(Sender: TObject);
begin
  if FileListBox.Items.Count = 0 then
     Showmessage('Não há Arquivos Adicionados')
  else
    with SaveDialog do
      if execute then
      begin
        if UpperCase(Copy(FileName, 1, 1)) = 'A' then
        begin
          Showmessage('Drive A indicates a floppy drive - please a new empty disk');
          BackupFile.MaxSize := 1400000;  //backup to floppy
        end
        else
          BackupFile.MaxSize := 0;
        BackupFile.BackupTitle:= Edit1.text;
        BackupFile.BackupMode := TBackupMode(RadioGroup1.Itemindex);
        if BackupFile.Backup(FileListBox.Items, FileName) then
           Showmessage('Backup Gravado com Sucesso!!!')
        else
           Showmessage('ATENÇÃO!!! Backup Falhado ou Abortado');
      end;
  FileListBox.Items.Clear;
end;

procedure TFormBackup.BitBtn5Click(Sender: TObject);
begin
  if not BackupFile.busy then
     close
  else
    if MessageDlg('Você quer Cancelar essa Operação???',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
       Backupfile.Stop;
end;

procedure TFormBackup.BitBtn6Click(Sender: TObject);
var
   S: string;
begin
     backupfile.Restoremode  := TRestoreMode(rgRestoreMode.itemindex);
  {   if rbOrigpath.checked then S := ''
     else begin
          S := EdPath.text;
          if trim(s) = '' then
          begin
               showmessage('Por favor, entre em uma pasta');
               exit;
          end;
     end;    }
  //  OpenDialog.Execute;
    S:= EdPath.text ;
   //  backupfile.restoreFullpath := cbFullpath.enabled and cbFullpath.checked;
     backupfile.restore(filelistbox1.filename, S) ;
   // then showmessage('Restauração concluída com sucesso, '+inttostr(backupfile.FilesProcessed)+' arquivos de '+inttostr(backupfile.FilesTotal)+' restaurados')
   // else showmessage('A Restauração falhou tente novamente');

  //  BackupFile.Restore;
  //  BackupFile.Restoremode :=  TRestoreMode(rgRestoreMode.itemindex);
  // BackupFile.RestoreFromStream(InputQuery('Você quer Restaurar este Arquivo ?', 'Entre com o Caminho e a extensão do Arquivo!!!'))
  Showmessage('Restauração Finalizada');
  // Showmessage('Restauração Finalizada,  '+BoolToStr(BackupFile.Restore(FileListBox1.Filename,'') )+' Arquivos Restaurados!!!');

end;

end.
