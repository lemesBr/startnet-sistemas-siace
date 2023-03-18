unit Itensdavenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,  Grids, XDBGrids;

type
  TFormItensVenda = class(TForm)
    XDBGrid1: TXDBGrid;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormItensVenda: TFormItensVenda;

implementation

uses Principal, ModulodeDadosBaixas;

{$R *.dfm}

procedure TFormItensVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormItensVenda := nil;
end;

procedure TFormItensVenda.FormShow(Sender: TObject);
begin
DMB.Sds_Itens_venda.Open;
end;

procedure TFormItensVenda.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
if not odd(DMB.Sds_Itens_venda.RecNo) then
  if not (gdselected in State) then
    begin
    xDBGrid1.Canvas.Brush.Color := $00FFEFDF;
    xDBGrid1.Canvas.FillRect(Rect);
    xDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

procedure TFormItensVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

end.
