program dll_test;

uses
  Forms,
  Principal in '..\Principal.pas' {Form1},
  dllcompanytec in '..\..\DLL\dllcompanytec.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
