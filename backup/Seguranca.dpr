program Seguranca;

uses
  Forms,
  Backups in 'Backups.pas' {FormBackup};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormBackup, FormBackup);
  Application.Run;
end.
