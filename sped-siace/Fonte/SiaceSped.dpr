program SiaceSped;

uses
  Vcl.Forms,
  udmEFD in 'udmEFD.pas' {dmEFD: TDataModule},
  ufrmEFD in 'ufrmEFD.pas' {frmEFD};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmEFD, dmEFD);
  Application.CreateForm(TfrmEFD, frmEFD);
  Application.Run;

end.
