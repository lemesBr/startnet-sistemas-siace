unit selecTanques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RXCtrls, Grids, BaseGrid, DBAdvGrid,
  ExtCtrls,DB, AdvUtil, AdvObj, AdvGrid;

type
  TFormSelectanques = class(TForm)
    Panel2: TPanel;
    SuidbGrid1: TDBAdvGrid;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SuidbGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SuidbGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSelectanques: TFormSelectanques;

implementation

uses compra_menu;


{$R *.dfm}

procedure TFormSelectanques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormSelectanques := nil;
end;

procedure TFormSelectanques.Edit1Change(Sender: TObject);
begin
//DMp.SDS_Tanques.Locate('cod_tanque',Edit1.Text,[lopartialkey]);
end;

procedure TFormSelectanques.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  SuiDBGrid1.SetFocus;
end;
end;

procedure TFormSelectanques.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormSelectanques.SuidbGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormSelectanques.SuidbGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFormSelectanques.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
Close;
end;

end.
