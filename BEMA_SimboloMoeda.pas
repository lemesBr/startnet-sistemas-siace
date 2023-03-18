unit BEMA_SimboloMoeda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, SUIEdit, SUIButton, ExtCtrls;

type
  TFormSimboloMoeda = class(TForm)
    Panel1: TPanel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    Edit1: TsuiEdit;
    RxLabel1: TRxLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
  FormSimboloMoeda: TFormSimboloMoeda;

implementation

uses Principal, Z_DeclaracoesBemaFi32, Z_RotinasGerais, ECFTeste1;

{$R *.dfm}

procedure TFormSimboloMoeda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormSimboloMoeda:=nil;
end;

procedure TFormSimboloMoeda.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormSimboloMoeda.suiButton1Click(Sender: TObject);
begin
 Try
  iRetorno := Bematech_FI_AlteraSimboloMoeda( Edit1.Text );
  FormPrincipal.Analisa_iRetorno();
  FormPrincipal.Retorno_Impressora();
  Close;
         except
       ShowMessage('Erro na Alteração do Simbolo da Moeda!!');
end;
end;

procedure TFormSimboloMoeda.suiButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormSimboloMoeda.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormSimboloMoeda.Edit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSimboloMoeda.Edit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSimboloMoeda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
