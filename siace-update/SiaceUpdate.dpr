program SiaceUpdate;

uses
  Vcl.Forms,
  uformPrincipal in 'form\uformPrincipal.pas' {formPrincipal},
  uDM in 'Module\uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
