unit DocsFiscais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, StdCtrls, DB, ExtCtrls;

type
  TFormDocsFiscais = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    XDBGrid1: TXDBGrid;
    procedure XDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure XDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDocsFiscais: TFormDocsFiscais;

implementation

uses ModulodeDadosConsultas;

{$R *.dfm}

procedure TFormDocsFiscais.XDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#27 then
Close;
 if key =#13 then
Close;
end;

procedure TFormDocsFiscais.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if Key =#13 then
begin
   key:=#0;
   selectnext(activecontrol,True,True);
if Edit1.Text >'' then
begin
  DMC.Sds_DocsFiscais.Locate('descricao',Edit1.Text,[lopartialkey]);
  XDBGrid1.SetFocus;
  end;
end;
end;

procedure TFormDocsFiscais.XDBGrid1DblClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFormDocsFiscais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action :=caFree;
FormDocsFiscais:=nil;
end;

procedure TFormDocsFiscais.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
begin
  Close;
end;
end;

end.
