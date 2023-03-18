program Teste;

uses
 Forms,
 Unit1 in 'Unit1.pas' {Form1},
 Unit_ECF_Sweda_IFS7000 in 'Unit_ECF_Sweda_IFS7000.pas',
 Unit_ECF_Bematech_Fi1 in '..\ECF_Bematech_Fi1\Unit_ECF_Bematech_Fi1.pas',
 Unit_ECF_Bematech_Fi2 in '..\ECF_Bematech_Fi2\Unit_ECF_Bematech_Fi2.pas';

{$R *.res}

begin
 Application.Initialize;
 Application.CreateForm(TForm1, Form1);
 Application.Run;
end.
