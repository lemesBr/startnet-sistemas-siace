unit ConsCst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, StdCtrls, DB, RXCtrls, ExtCtrls,
  XDBGrids;

type
  TFormConsCst = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    suiDBGrid1: TXDBGrid;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsCst: TFormConsCst;

implementation

uses ModulodeDados, Z_RotinasGerais;

{$R *.dfm}

procedure TFormConsCst.Edit1Change(Sender: TObject);
begin
DM.SDS_Cst.Locate('DESCRICAO_CST',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsCst.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
suiDBGrid1.SetFocus;
end;
end;

procedure TFormConsCst.Edit1Exit(Sender: TObject);
begin
corsaida(Sender);
suiDBGrid1.SetFocus;
end;

procedure TFormConsCst.Edit1Enter(Sender: TObject);
begin
corentrada(Sender);
end;

procedure TFormConsCst.suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsCst.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

end.
