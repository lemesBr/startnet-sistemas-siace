program Backup;

uses
  Vcl.Forms,
  ufrmBackup in 'frm\ufrmBackup.pas' {frmBackup},
  ThreadBackup in 'unit\ThreadBackup.pas',
  uBiblioteca in 'unit\uBiblioteca.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBackup, frmBackup);
  Application.Run;
end.
