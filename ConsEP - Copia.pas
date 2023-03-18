unit ConsEP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIImagePanel, ExtCtrls, SUIForm, RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB, DBTables;

type
  TFormConsEP = class(TForm)
    suiForm1: TsuiForm;
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
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsEP: TFormConsEP;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal;

{$R *.dfm}

procedure TFormConsEP.FormShow(Sender: TObject);
begin
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TFormConsEP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsEP:=nil;
end;

procedure TFormConsEP.Edit1Change(Sender: TObject);
begin
DM.SDS_EP.Locate('NUMERO',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsEP.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsEP.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsEP.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsEP.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsEP.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsEP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
