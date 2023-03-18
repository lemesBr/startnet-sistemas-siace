unit ConsCrediario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, SUIDBCtrls, StdCtrls, RXCtrls, ExtCtrls;

type
  TFormConsCrediario = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    suiDBGrid1: TDBGrid;
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsCrediario: TFormConsCrediario;

implementation

uses LancCrediario;

{$R *.dfm}

procedure TFormConsCrediario.Edit1Change(Sender: TObject);
begin
FormLancCrediario.Sds_crediario.Locate('NOME_SACADO',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsCrediario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsCrediario.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsCrediario.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsCrediario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsCrediario:=nil;
end;

procedure TFormConsCrediario.FormShow(Sender: TObject);
begin
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TFormConsCrediario.Edit1Exit(Sender: TObject);
begin
suiDBGrid1.SetFocus;
end;

procedure TFormConsCrediario.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

end.
