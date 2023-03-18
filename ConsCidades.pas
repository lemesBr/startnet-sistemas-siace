unit ConsCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, DB, DBGrids, ExtCtrls, Grids;

type
  TFormConsCidades = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    cbxpesquisa: TComboBox;
    Edit1: TEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsCidades: TFormConsCidades;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal;

{$R *.dfm}

procedure TFormConsCidades.FormShow(Sender: TObject);
begin
dm.Sds_cidades.Active := False;
dm.Sds_cidades.Active := true;
DM.SDS_estados.Active := False;
DM.SDS_estados.Active := true;
Edit1.SetFocus;
end;

procedure TFormConsCidades.Edit1Change(Sender: TObject);
begin
if cbxpesquisa.ItemIndex = 0 then
begin
DM.Sds_cidades.Active := FALSE;
DM.Sds_cidades.sql.clear;
DM.Sds_cidades.sql.add('SELECT * FROM CIDADES order by NOME asc');
DM.Sds_cidades.Active := TRUE;
dm.Sds_cidades.locate('NOME',Edit1.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 1 then
begin
DM.Sds_cidades.Active := FALSE;
DM.Sds_cidades.sql.clear;
DM.Sds_cidades.sql.add('SELECT * FROM CIDADES WHERE NOME LIKE ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME asc');
DM.Sds_cidades.Active := TRUE;
end;

end;

procedure TFormConsCidades.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsCidades.Edit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsCidades.Edit1Exit(Sender: TObject);
begin
corsaida(Sender);
end;

procedure TFormConsCidades.DBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsCidades.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:= caFree;
FormConsCidades:= nil;
end;

procedure TFormConsCidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
