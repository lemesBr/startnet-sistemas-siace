unit ConsGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIImagePanel, ExtCtrls, RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB, DBTables;

type
  TFormConsGrupos = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    suiDBGrid1: TsuiDBGrid;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
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
  FormConsGrupos: TFormConsGrupos;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal;

{$R *.dfm}

procedure TFormConsGrupos.FormShow(Sender: TObject);
begin
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TFormConsGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsGrupos:=nil;
end;

procedure TFormConsGrupos.Edit1Change(Sender: TObject);
begin
DM.SDS_Grupos.Locate('DESCRICAO',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsGrupos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsGrupos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsGrupos.Edit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormConsGrupos.Edit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormConsGrupos.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsGrupos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsGrupos.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsGrupos.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key= VK_DOWN then
begin
  SuiDBGrid1.SetFocus;
end;
end;

procedure TFormConsGrupos.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not Odd(DM.SDS_Grupos.RecNo) then
   if not(gdselected in State) then
   begin
    suiDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    suiDBGrid1.Canvas.FillRect(rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;
end;

end.
