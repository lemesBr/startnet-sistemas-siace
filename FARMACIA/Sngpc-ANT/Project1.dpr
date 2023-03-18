program Project1;

uses
  Forms,
  uGeraSNGPC in 'uGeraSNGPC.pas' {frmSNGPC},
  sngpc in 'sngpc.pas',
  sngpc200711v1_0 in 'sngpc200711v1_0.pas',
  md5 in 'md5.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSNGPC, frmSNGPC);
  Application.Run;
end.
