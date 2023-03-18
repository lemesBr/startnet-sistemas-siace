unit ConsSeccao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, StdCtrls, db, RXCtrls, ExtCtrls, 
  SUIEdit;

type
  TFormConsSeccao = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TsuiEdit;
    suiDBGrid1: TsuiDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suitempEdit1Change(Sender: TObject);
    procedure suitempEdit1Enter(Sender: TObject);
    procedure suitempEdit1Exit(Sender: TObject);
    procedure suitempEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suitempsuiDBGrid1DblClick(Sender: TObject);
    procedure suitempsuiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsSeccao: TFormConsSeccao;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal;

{$R *.dfm}

procedure TFormConsSeccao.FormShow(Sender: TObject);
begin
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TFormConsSeccao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsSeccao:=nil;
end;

procedure TFormConsSeccao.suitempEdit1Change(Sender: TObject);
begin
DM.SDS_Seccao.Locate('DESCRICAO',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsSeccao.suitempEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsSeccao.suitempEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsSeccao.suitempEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsSeccao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsSeccao.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsSeccao.suitempsuiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsSeccao.suitempsuiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;

end;
end;
procedure TFormConsSeccao.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not Odd(DM.SDS_SECCAO.RecNo) then
   if not(gdselected in State) then
   begin
    suiDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    suiDBGrid1.Canvas.FillRect(rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;
end;

procedure TFormConsSeccao.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key= VK_DOWN then
begin
  SuiDBGrid1.SetFocus;
end;
end;

end.
