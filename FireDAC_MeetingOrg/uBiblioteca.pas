unit uBiblioteca;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Biblioteca = class

  private
    { Private declarations }
  public
    { Public declarations }
    function NomePlanoConta(ID: String): string;

  end;

var
  BibliotecaF: Biblioteca;

implementation

uses ModulodeDados;

{ Biblioteca }

function Biblioteca.NomePlanoConta(ID: String): string;
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(nil);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Add('SELECT CODIGO,NOME FROM PLANOCONTAS WHERE CODIGO = ' + ID);
  qr.Open;

  if not qr.IsEmpty then
    Result:= qr.fieldbyname('NOME').AsString;

  qr.Destroy;
end;

end.
