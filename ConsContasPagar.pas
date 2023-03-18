unit ConsContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit,  ExtCtrls, RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB;

type
  TFormConsContasPagar = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    suiDBGrid1: TsuiDBGrid;
    Edit1: TEdit;
    RxLabel2: TRxLabel;
    Edit2: TEdit;
    RxLabel3: TRxLabel;
    Edit3: TEdit;
    Label1: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    suiDBGrid2: TsuiDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsContasPagar: TFormConsContasPagar;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal;

{$R *.dfm}

procedure TFormConsContasPagar.FormShow(Sender: TObject);
begin
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TFormConsContasPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsContasPagar:=nil;
end;

procedure TFormConsContasPagar.suiDBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFormConsContasPagar.Edit1Change(Sender: TObject);
begin
DM.SDS_ContasPagar.Locate('N_DOCUMENTO',Edit1.Text,[lopartialkey,loCaseinSensitive]);
end;

procedure TFormConsContasPagar.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsContasPagar.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsContasPagar.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsContasPagar.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsContasPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsContasPagar.Edit3Change(Sender: TObject);
begin
DM.SDS_ContasPagar.Locate('FORNECEDOR',Edit3.Text,[lopartialkey,loCaseinSensitive]);
end;

procedure TFormConsContasPagar.Edit2Change(Sender: TObject);
begin
DM.SDS_ContasPagar.Locate('TIPO_DOCUMENTO',Edit2.Text,[lopartialkey,loCaseinSensitive]);
end;

end.
