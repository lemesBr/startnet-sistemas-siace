unit DetalhesPesqCreRecebidoPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, ExtCtrls,  StdCtrls, SUIDlg, Mask, DBCtrls,
  SUIDBCtrls;

type
  TFormDetPesCreRecebidoPeriodo = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label14: TLabel;
    Label6: TLabel;
    suiDBEdit1: TsuiDBEdit;
    suiDBEdit2: TsuiDBEdit;
    suiDBEdit5: TsuiDBEdit;
    suiDBEdit6: TsuiDBEdit;
    suiDBEdit7: TsuiDBEdit;
    suiDBEdit8: TsuiDBEdit;
    suiDBEdit9: TsuiDBEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    suiDBEdit3: TsuiDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    suiDBEdit4: TsuiDBEdit;
    Label7: TLabel;
    suiDBEdit10: TsuiDBEdit;
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
  FormDetPesCreRecebidoPeriodo: TFormDetPesCreRecebidoPeriodo;

implementation

uses ModulodeDadosBaixas, Acesso, Principal, ModulodeDadosConsultas5;

{$R *.dfm}

procedure TFormDetPesCreRecebidoPeriodo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormDetPesCreRecebidoPeriodo:=nil;
end;

procedure TFormDetPesCreRecebidoPeriodo.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormDetPesCreRecebidoPeriodo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
