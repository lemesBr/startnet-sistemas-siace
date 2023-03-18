unit BEMA_LinhasCupons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, ExtCtrls, SUIEdit;

type
  TFormLinhasCupons = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TsuiEdit;
    Image1: TImage;
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton1KeyPress(Sender: TObject; var Key: Char);
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
  FormLinhasCupons: TFormLinhasCupons;

implementation

uses Principal, Z_DeclaracoesBemaFi32, Z_RotinasGerais;

{$R *.dfm}

procedure TFormLinhasCupons.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormLinhasCupons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormLinhasCupons:=nil;
end;

procedure TFormLinhasCupons.suiButton1Click(Sender: TObject);
begin
 Try
  iRetorno := Bematech_FI_LinhasEntreCupons( StrToInt( Edit1.Text ) );
  FormPrincipal.Analisa_iRetorno();
  FormPrincipal.Retorno_Impressora();
  Close;
         except
       ShowMessage('Erro na Programação do Espaçamento de Linhas Entre os Cupons. .!!');
end;
end;

procedure TFormLinhasCupons.suiButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormLinhasCupons.Edit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormLinhasCupons.Edit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormLinhasCupons.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
