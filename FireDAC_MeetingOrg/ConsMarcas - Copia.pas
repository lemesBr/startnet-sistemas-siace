unit ConsMarcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIImagePanel, ExtCtrls, RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB, DBTables;

type
  TFormConsMarcas = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    suiDBGrid1: TsuiDBGrid;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsMarcas: TFormConsMarcas;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal;

{$R *.dfm}

procedure TFormConsMarcas.FormShow(Sender: TObject);
begin
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TFormConsMarcas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsMarcas:=nil;
end;

procedure TFormConsMarcas.Edit1Change(Sender: TObject);
begin
DM.SDS_Marcas.Locate('DESCRICAO',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsMarcas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsMarcas.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsMarcas.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsMarcas.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsMarcas.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsMarcas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsMarcas.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key= VK_DOWN then
begin
  SuiDBGrid1.SetFocus;
end;
end;

procedure TFormConsMarcas.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsMarcas.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not Odd(DM.SDS_Marcas.RecNo) then
   if not(gdselected in State) then
   begin
    suiDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    suiDBGrid1.Canvas.FillRect(rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;
end;

end.
