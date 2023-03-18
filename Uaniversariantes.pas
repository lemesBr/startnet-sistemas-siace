unit Uaniversariantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, NxCollection;

type
  TFormAniver = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    XDBGrid1: TXDBGrid;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAniver: TFormAniver;

implementation

uses ModulodeDadosConsultas;

{$R *.dfm}

procedure TFormAniver.FormKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY = #27 then Close;
end;

procedure TFormAniver.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FormAniver := nil;
end;

end.
