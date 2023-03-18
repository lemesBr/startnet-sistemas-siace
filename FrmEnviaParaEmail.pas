unit FrmEnviaParaEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls,ThreadEnviarVendaEmail, acPNG;

type
  TFEnviaParaEmail = class(TForm)
    Bevel1: TBevel;
    edtEmailPara: TEdit;
    Label1: TLabel;
    Bevel2: TBevel;
    edtAssunto: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    bevel11: TBevel;
    mmMensahem: TMemo;
    spbVoltar: TSpeedButton;
    spbEnviar: TSpeedButton;
    pnlLoading: TPanel;
    Image1: TImage;
    Label4: TLabel;
    TimerEnviar: TTimer;
    spbCancelarEnvio: TSpeedButton;
    procedure spbEnviarClick(Sender: TObject);
    procedure spbVoltarClick(Sender: TObject);
    procedure TimerEnviarTimer(Sender: TObject);
    procedure spbCancelarEnvioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Host: String;
    Usuario: string;
    Porta: Integer;
    Address: string;
    LocalArquivoPDF: String;
    LocalArquivoXML: String;
    Senha: String;

  end;

var
  FEnviaParaEmail: TFEnviaParaEmail;
  Enviar: TEnviarVendaEmail;

implementation

{$R *.dfm}

procedure TFEnviaParaEmail.spbEnviarClick(Sender: TObject);
begin
  if not (Trim(edtEmailPara.Text) = EmptyStr) then
  begin
    Enviar:= TEnviarVendaEmail.Create;

    with Enviar do
    begin
      ClienteSmtpHost:= Host;
      ClienteSmtpUserName:= Usuario;
      ClienteSmtpPorta:= Porta;
      MensagemAddress:= Address;
      MensagemName:= edtAssunto.Text;
      MensagemEMailAddresses:= edtEmailPara.Text;
      MensagemSubject:= edtAssunto.Text;
      MensagemBody:= mmMensahem.Text;
      LocalPDF:= LocalArquivoPDF;
      LocalXML:= LocalArquivoXML;
      ClienteSmtpPassword:= Senha;
    end;

    Enviar.Resume;
    TimerEnviar.Enabled:= True;
    pnlLoading.Visible:= True;
  end
  else
    ShowMessage('O campo de email deve conter um email válido.');
end;

procedure TFEnviaParaEmail.spbVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TFEnviaParaEmail.TimerEnviarTimer(Sender: TObject);
begin
  if Enviar.EmailEnviado = 'S' then
  begin
    TimerEnviar.Enabled:= False;
    Application.MessageBox('Email enviado com sucesso.', 'Sucesso', MB_ICONINFORMATION);
    Close;
  end
  else if Enviar.EmailEnviado = 'E' then
  begin
    TimerEnviar.Enabled:= False;
    Application.MessageBox(PWideChar(Enviar.MessageError), 'Erro', MB_ICONERROR);
    Close;
  end;
end;

procedure TFEnviaParaEmail.spbCancelarEnvioClick(Sender: TObject);
begin
  if Application.MESSAGEBOX('Deseja realmente cancelar o envio do email?',
    'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES
  then
    Close;
end;

procedure TFEnviaParaEmail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(Enviar) then FreeAndNil(Enviar);
end;

end.
