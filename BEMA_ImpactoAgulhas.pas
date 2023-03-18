unit BEMA_ImpactoAgulhas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, SUIButton, ExtCtrls;

type
  TFormImpactoAgulhas = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RxLabel1: TRxLabel;
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpactoAgulhas: TFormImpactoAgulhas;

implementation

uses Principal, Z_DeclaracoesBemaFi32;

{$R *.dfm}

procedure TFormImpactoAgulhas.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormImpactoAgulhas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormImpactoAgulhas:=nil;
end;

procedure TFormImpactoAgulhas.suiButton1Click(Sender: TObject);
  Var iForca: Integer;
  Begin
  Try
    iForca := 2;
    If RadioButton1.Checked = True Then Begin iForca := 1 End;
    If RadioButton2.Checked = True Then Begin iForca := 2 End;
    If RadioButton3.Checked = True Then Begin iForca := 3 End;
    iRetorno := Bematech_FI_ForcaImpactoAgulhas( iForca );
  FormPrincipal.Analisa_iRetorno();
  FormPrincipal.Retorno_Impressora();
  Close;
         except
       ShowMessage('Erro na Programação da Força de Impacto das Agulhas.!!');
end;
end;

procedure TFormImpactoAgulhas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormImpactoAgulhas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
