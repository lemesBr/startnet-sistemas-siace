unit consBomba;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RXCtrls, Grids, DB,  BaseGrid, DBAdvGrid,
  ExtCtrls, AdvUtil, AdvObj, AdvGrid;

type
  TFormConsBomba = class(TForm)
    Panel2: TPanel;
    SuidbGrid1: TDBAdvGrid;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SuidbGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SuidbGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsBomba: TFormConsBomba;

implementation

uses ModuledadosPostos;

{$R *.dfm}

procedure TFormConsBomba.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
Close;
end;

procedure TFormConsBomba.SuidbGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsBomba.SuidbGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFormConsBomba.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsBomba.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  SuiDBGrid1.SetFocus;
end;
end;

procedure TFormConsBomba.Edit1Change(Sender: TObject);
begin
DMp.SDS_BOMBA.Locate('cod_bomba',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsBomba.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := cafree;
FormConsBomba:= nil;
end;

end.
