unit BEMA_HorarioVerao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIButton, StdCtrls;

type
  TFormHorarioVerao = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHorarioVerao: TFormHorarioVerao;

implementation

uses Principal, Z_DeclaracoesBemaFi32;

{$R *.dfm}

procedure TFormHorarioVerao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormHorarioVerao:=nil;
end;

procedure TFormHorarioVerao.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormHorarioVerao.suiButton1Click(Sender: TObject);
begin
 Try
  iRetorno := Bematech_FI_ProgramaHorarioVerao();
  FormPrincipal.Analisa_iRetorno();
  FormPrincipal.Retorno_Impressora();
  Close;
         except
       ShowMessage('Erro na Programação e Desprogramação do Horário de Verão.!!');
end;
end;

procedure TFormHorarioVerao.suiButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormHorarioVerao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
