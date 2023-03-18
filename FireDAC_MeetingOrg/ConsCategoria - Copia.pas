unit ConsCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ConsSeccao, Grids, DBGrids, SUIDBCtrls, StdCtrls, RXCtrls,
  ExtCtrls, DB;

type
  TFormConsCategoria = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    suiDBGrid1: TsuiDBGrid;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsCategoria: TFormConsCategoria;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal;
{$R *.dfm}



procedure TFormConsCategoria.Edit1Enter(Sender: TObject);
begin
  inherited;
CorEntrada(Sender);
end;

procedure TFormConsCategoria.Edit1Exit(Sender: TObject);
begin
  inherited;
CorSaida(Sender);
end;

procedure TFormConsCategoria.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;
procedure TFormConsCategoria.suiDBGrid1DblClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFormConsCategoria.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;
procedure TFormConsCategoria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsCategoria.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormConsCategoria.FormShow(Sender: TObject);
begin
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TFormConsCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
FormConsCategoria:=nil;
end;

procedure TFormConsCategoria.Edit1Change(Sender: TObject);
begin
  inherited;
DM.SDS_Categoria.Locate('DESCRICAO', Edit1.Text,[lopartialkey]);
end;

procedure TFormConsCategoria.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key= VK_DOWN then
begin
  SuiDBGrid1.SetFocus;
end;
end;

procedure TFormConsCategoria.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not Odd(DM.SDS_CATEGORIA.RecNo) then
   if not(gdselected in State) then
   begin
    suiDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    suiDBGrid1.Canvas.FillRect(rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;
end;

end.
