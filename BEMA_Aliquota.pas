unit BEMA_Aliquota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, Mask, ExtCtrls, Buttons, sBitBtn;

type
  TFormAliquota = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    suiButton1: TsBitBtn;
    suiButton2: TsBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAliquota: TFormAliquota;

implementation

uses Principal, Z_DeclaracoesBemaFi32, Z_RotinasGerais;

{$R *.dfm}

procedure TFormAliquota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormAliquota:=nil;
end;

procedure TFormAliquota.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormAliquota.suiButton1Click(Sender: TObject);
Var iSituacao: Integer;
begin
 Try
    iSituacao := 0;

    If RadioButton1.Checked = True Then Begin iSituacao := 0 End;
    If RadioButton2.Checked = True Then Begin iSituacao := 1 End;

    iRetorno := Bematech_FI_ProgramaAliquota( MaskEdit1.Text, iSituacao );
    FormPrincipal.Analisa_iRetorno();
    FormPrincipal.Retorno_Impressora();
    Close;
         except
       ShowMessage('Erro na Programação de Alíquota Tributária na Impressora Fiscal.!!');
end;
end;

procedure TFormAliquota.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormAliquota.MaskEdit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAliquota.MaskEdit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAliquota.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
