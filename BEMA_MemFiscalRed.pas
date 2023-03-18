unit BEMA_MemFiscalRed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIDlg, StdCtrls, SUIButton, ExtCtrls;

type
  TFormMemFiscalRed = class(TForm)
    Label2: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    Edit2: TEdit;
    Edit1: TEdit;
    MsgRed: TsuiMessageDialog;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMemFiscalRed: TFormMemFiscalRed;

implementation

uses Principal, Z_DeclaracoesBemaFi32, Z_RotinasGerais;

{$R *.dfm}

procedure TFormMemFiscalRed.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormMemFiscalRed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormMemFiscalRed:=nil;
end;

procedure TFormMemFiscalRed.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormMemFiscalRed.suiButton1Click(Sender: TObject);
begin
  if    Edit1.Text='' then begin
        MsgRed.Text:= 'Entre com a Redução Inicial';
        MsgRed.ShowModal;
        Edit1.SetFocus;
        end
        else
   if   Edit2.Text='' then begin
        MsgRed.Text:= 'Entre com a Redução Final';
        MsgRed.ShowModal;
        Edit2.SetFocus;
        end
        else
        begin
         iRetorno := Bematech_FI_LeituraMemoriaFiscalReducao( Edit1.Text, Edit2.Text);
         FormPrincipal.Analisa_iRetorno();
         FormPrincipal.Retorno_Impressora();
         Close;
end;
end;

procedure TFormMemFiscalRed.Edit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormMemFiscalRed.Edit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormMemFiscalRed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
