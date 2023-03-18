unit ConsultaZonas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, SUIDBCtrls, StdCtrls, RXCtrls, ExtCtrls;

type
  TFormConsZonas = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    suiDBGrid1: TsuiDBGrid;
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsZonas: TFormConsZonas;

implementation

uses ModulodeDados, Z_RotinasGerais;

{$R *.dfm}

procedure TFormConsZonas.Edit1Change(Sender: TObject);
begin
DM.SDS_zonas.Locate('DESCRICAO',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsZonas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsZonas.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;
end;

procedure TFormConsZonas.suiDBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFormConsZonas.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;
end;

procedure TFormConsZonas.Edit1Exit(Sender: TObject);
begin
     CorSaida(Sender);
     suiDBGrid1.SetFocus;
end;

procedure TFormConsZonas.Edit1Enter(Sender: TObject);
begin
corEntrada(Sender);
end;

end.
