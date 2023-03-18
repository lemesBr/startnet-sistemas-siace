unit consbicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RXCtrls, Grids,  DB, BaseGrid, aDvGrid, DBAdvGrid,
  ExtCtrls, AdvUtil, AdvObj;

type
  TFormConsBicos = class(TForm)
    Panel2: TPanel;
    SuidbGrid1: TDBAdvGrid;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SuidbGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SuidbGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsBicos: TFormConsBicos;

implementation

uses ModuledadosPostos;

{$R *.dfm}

procedure TFormConsBicos.Edit1Change(Sender: TObject);
begin
DMp.SDS_BICOS.Locate('cod_bico',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsBicos.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  SuiDBGrid1.SetFocus;
end;
end;

procedure TFormConsBicos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsBicos.SuidbGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsBicos.SuidbGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFormConsBicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormConsBicos := nil;
end;

end.
