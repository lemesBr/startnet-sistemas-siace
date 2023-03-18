unit DetClientesPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, SUIDBCtrls, RXCtrls, SUIButton, ExtCtrls;

type
  TFormDetCli = class(TForm)
    suiDBMemo1: TsuiDBMemo;
    Panel1: TPanel;
    NovaVenda: TsuiButton;
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
  FormDetCli: TFormDetCli;

implementation

uses ModulodeDados, Principal;

{$R *.dfm}

procedure TFormDetCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormDetCli:=nil;
end;

procedure TFormDetCli.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormDetCli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
