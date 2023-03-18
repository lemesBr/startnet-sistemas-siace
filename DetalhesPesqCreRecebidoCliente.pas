unit DetalhesPesqCreRecebidoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, ExtCtrls, StdCtrls, SUIDlg, Mask, DBCtrls,
  SUIDBCtrls;

type
  TFormDetPesCreRecebidoCliente = class(TForm)
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
  FormDetPesCreRecebidoCliente: TFormDetPesCreRecebidoCliente;

implementation

uses ModulodeDadosBaixas, Acesso, Principal, ModulodeDadosConsultas5;

{$R *.dfm}

procedure TFormDetPesCreRecebidoCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormDetPesCreRecebidoCliente:=nil;
end;

procedure TFormDetPesCreRecebidoCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormDetPesCreRecebidoCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
