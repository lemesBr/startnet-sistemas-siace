program ICQf;

uses
  Forms,
  fmMain in 'fmMain.pas' {frmMain},
  fmSend in 'fmSend.pas' {frmSend},
  fmReceive in 'fmReceive.pas' {frmReceive};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Mensageiro';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
