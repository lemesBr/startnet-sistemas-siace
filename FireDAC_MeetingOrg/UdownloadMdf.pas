unit UdownloadMdf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, SUIButton;

type
  TFormDownloadaMFD = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EdtDataIni: TDateTimePicker;
    EdtDataFin: TDateTimePicker;
    Panel2: TPanel;
    BtnOk: TButton;
    BtnCancelar: TButton;
    StatusBar1: TStatusBar;
    Edit1: TEdit;
    suiButton2: TsuiButton;
    OpenDialog1: TOpenDialog;
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDownloadaMFD: TFormDownloadaMFD;

implementation

uses Principal, Z_DeclaracoesBemaFi32;

{$R *.dfm}

procedure TFormDownloadaMFD.BtnOkClick(Sender: TObject);
var
    cArquivo,cTipoDownload, cCOOInicial,cCOOFinal, cUsuario : string;
    iRetorno :Integer;
begin
 if edtdatafin.Date < edtdataini.Date then
      begin
         showmessage('A data final não pode ser menor que a data inicial');
         edtdataini.SetFocus;
         exit;
      end else
      begin
       cArquivo      := edit1.text;

       cTipoDownload := '1';

       cCOOInicial   := datetostr(edtdataini.Date);

       cCOOFinal     := datetostr(edtdatafin.Date);

       cUsuario      := '';

      iRetorno := Bematech_FI_DownloadMFD( pchar( cArquivo ), pchar( cTipoDownload ), pchar( cCOOInicial ), pchar( cCOOFinal ), pchar( cUsuario ) );
      formprincipal.Analisa_iRetorno();
      formprincipal.MsgInfiscal.HTMLText.Text:=  'Arquivo: '+ edit1.Text + #13 +'Gerrado com sucesso...' ;
      formprincipal.MsgInfiscal.Execute;
      formprincipal.Retorno_Impressora();

      end;
      
end;

procedure TFormDownloadaMFD.BtnCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFormDownloadaMFD.suiButton2Click(Sender: TObject);
begin
 { OpenDialog1.Execute;

  If OpenDialog1.FileName = '' then
     begin
       BtnCancelar.Enabled := True;
       exit;
     end;
  OpenDialog1.Files.SaveToFile('*.MFD');
//  OpenDialog1.FileName :=edit1.Text;
  edit1.Text  :='';
  edit1.Text  := OpenDialog1.FileName;}

OpenDialog1.Title := 'Download do arquivo MFD';
OpenDialog1.InitialDir := 'C:\siace\sped\';
if OpenDialog1.Execute then
Begin
//ImgProduto.Visible := True;
//ImgProduto.Picture.LoadFromFile(OpenDialog.FileName);
Edit1.Text := OpenDialog1.FileName;

end;
end;

procedure TFormDownloadaMFD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := cafree;
FormDownloadaMFD := nil;
end;

procedure TFormDownloadaMFD.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

end.
