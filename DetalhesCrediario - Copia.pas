unit DetalhesCrediario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, ExtCtrls,  StdCtrls, SUIDlg, Mask, DBCtrls,
  SUIDBCtrls, sDBEdit;

type
  TFormDetCrediario = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label16: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    suiDBEdit1: TsDBEdit;
    suiDBEdit2: TsDBEdit;
    suiDBEdit4: TsDBEdit;
    suiDBEdit5: TsDBEdit;
    suiDBEdit6: TsDBEdit;
    suiDBEdit7: TsDBEdit;
    suiDBEdit8: TsDBEdit;
    suiDBEdit9: TsDBEdit;
    suiDBEdit10: TsDBEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    suiDBEdit3: TsDBEdit;
    suiDBEdit11: TsDBEdit;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDetCrediario: TFormDetCrediario;

implementation

uses ModulodeDadosBaixas, Acesso, Principal;

{$R *.dfm}

procedure TFormDetCrediario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormDetCrediario:=nil;
end;

procedure TFormDetCrediario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormDetCrediario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
