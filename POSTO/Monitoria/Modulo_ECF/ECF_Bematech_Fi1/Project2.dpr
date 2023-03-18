program Project2;

uses
  Forms,
  Teste in 'Teste.pas' {Form1},
  Unit_ECF_Bematech_Fi1 in 'Unit_ECF_Bematech_Fi1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
