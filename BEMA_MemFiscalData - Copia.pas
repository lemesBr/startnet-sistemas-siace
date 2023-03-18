unit BEMA_MemFiscalData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, SUIButton, ExtCtrls, ToolEdit, SUIDlg;

type
  TFormMemFiscalData = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    MsgData: TsuiMessageDialog;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton1Click(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMemFiscalData: TFormMemFiscalData;

implementation

uses Principal, Z_DeclaracoesBemaFi32, Z_RotinasGerais;

{$R *.dfm}

procedure TFormMemFiscalData.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormMemFiscalData.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormMemFiscalData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormMemFiscalData:=nil;
end;

procedure TFormMemFiscalData.suiButton1Click(Sender: TObject);
begin
   if   DateEdit1.Text='  /  /    ' then begin
        MsgData.Text:= 'Informe a Data Inicial';
        MsgData.ShowModal;
        DateEdit1.SetFocus;
        end
        else
   if   DateEdit2.Text='  /  /    ' then begin
        MsgData.Text:= 'Informe a Data Final';
        MsgData.ShowModal;
        DateEdit2.SetFocus;
        end
        else
        begin
         iRetorno := Bematech_FI_LeituraMemoriaFiscalData( pchar( DateEdit1.Text ), pchar( DateEdit2.Text));
         FormPrincipal.Analisa_iRetorno();
         FormPrincipal.Retorno_Impressora();
         Close;
end;
end;

procedure TFormMemFiscalData.DateEdit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormMemFiscalData.DateEdit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormMemFiscalData.DateEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormMemFiscalData.DateEdit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormMemFiscalData.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
