unit ConsBairros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, RXCtrls, ExtCtrls, DB;

type
  TFormConsBairros = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    cbxpesquisa: TComboBox;
    Edit1: TEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsBairros: TFormConsBairros;

implementation

uses ModulodeDados, Z_RotinasGerais;

{$R *.dfm}

procedure TFormConsBairros.Edit1Change(Sender: TObject);
begin
if cbxpesquisa.ItemIndex = 0 then
begin
DM.Sds_bairros.Active := FALSE;
DM.Sds_BAIRROS.DataSet.CommandText:= 'SELECT * FROM BAIRRO order by DESCRICAO asc';
DM.sds_bairros.Active := TRUE;
dm.sds_bairros.locate('DESCRICAO',Edit1.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 1 then
begin
DM.Sds_cidades.Active := FALSE;
DM.Sds_cidades.DataSet.CommandText:= 'SELECT * FROM BAIRRO WHERE DESCRICAO LIKE ' + #39 + '%' + Edit1.Text + '%' + #39+'order by DESCRICAO asc';
DM.Sds_cidades.Active := TRUE;
end;
end;

procedure TFormConsBairros.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsBairros.Edit1Enter(Sender: TObject);
begin
corentrada(Sender);
end;

procedure TFormConsBairros.Edit1Exit(Sender: TObject);
begin
corsaida(Sender)
end;

procedure TFormConsBairros.DBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsBairros.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsBairros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormConsBairros := nil;
end;

procedure TFormConsBairros.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFormConsBairros.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormConsBairros.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  DBGrid1.SetFocus;
end;
end;

end.
