unit Constransportador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RXCtrls, Grids,  BaseGrid, DBAdvGrid,
  ExtCtrls, DB, AdvUtil, AdvObj, AdvGrid;

type
  TFormConsTransp = class(TForm)
    Panel2: TPanel;
    SuidbGrid1: TDBAdvGrid;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SuidbGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SuidbGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsTransp: TFormConsTransp;

implementation

uses ModuledadosPostos, ModulodeDados;

{$R *.dfm}

procedure TFormConsTransp.Edit1Change(Sender: TObject);
begin
DM.Sds_Transportador.Locate('NOME_TRANSP',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsTransp.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsTransp.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  SuiDBGrid1.SetFocus;
end;
end;

procedure TFormConsTransp.SuidbGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsTransp.SuidbGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFormConsTransp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormConsTransp := nil;
end;

end.
