unit ThreadEnviarVendaEmail;

interface

uses
  Classes, IdSMTP, IdSSLOpenSSL, IdMessage, IdAttachmentFile,
  IdExplicitTLSClientServerBase, SysUtils, Dialogs;

type
  TEnviarVendaEmail = class(TThread)
  private
    FHost: String;
    FUserName: String;
    FPassword: String;
    FPorta: Integer;
    FMensagemAddress: String;
    FMensagemName: String;
    FMensagemEMailAddresses: String;
    FMensagemSubject: String;
    FMensagemBody: String;
    FLocalPDF: String;
    FLocalXML: String;
    FEmailEnviado: String;
    FMessageError: String;
  public
    constructor Create; overload;

    procedure Execute; override;

    property ClienteSmtpHost: String read FHost write FHost;
    property ClienteSmtpUserName: String read FUserName write FUserName;
    property ClienteSmtpPassword: String read FPassword write FPassword;
    property ClienteSmtpPorta: Integer read FPorta write FPorta;
    property MensagemAddress: String read FMensagemAddress write FMensagemAddress;
    property MensagemName: String read FMensagemName write FMensagemName;
    property MensagemEMailAddresses: String read FMensagemEMailAddresses write FMensagemEMailAddresses;
    property MensagemSubject: String read FMensagemSubject write FMensagemSubject;
    property MensagemBody: String read FMensagemBody write FMensagemBody;
    property LocalPDF: String read FLocalPDF write FLocalPDF;
    property LocalXML: String read FLocalXML write FLocalXML;
    property EmailEnviado: String read FEmailEnviado;
    property MessageError: String read FMessageError;
  end;

implementation


constructor TEnviarVendaEmail.Create;
begin
  inherited Create(True);
end;

procedure TEnviarVendaEmail.Execute;
var
  ClienteSmtp: TIdSMTP;
  SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
  Mensagem: TIdMessage;
begin
  try
    FEmailEnviado:= 'A';
    FMessageError:= EmptyStr;
    try
      ClienteSmtp:= TIdSMTP.Create(nil);
      SSLHandler:= TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      Mensagem:= TIdMessage.Create(nil);

      with ClienteSmtp do
      begin
        Host:= ClienteSmtpHost;
        Username:= ClienteSmtpUserName;
        Password:= ClienteSmtpPassword;
        Port:= ClienteSmtpPorta;
        IOHandler:= SSLHandler;
        UseTLS:= utUseRequireTLS;
      end;

      with Mensagem do
      begin
        From.Address:= MensagemAddress;
        From.Name:= MensagemName;
        Recipients.EMailAddresses:= MensagemEMailAddresses;
        Subject:= MensagemSubject;
        Body.Add(MensagemBody);
      end;

      TIdAttachmentFile.Create(Mensagem.MessageParts,LocalPDF);
      TIdAttachmentFile.Create(Mensagem.MessageParts,LocalXML);
      ClienteSmtp.Connect;
      ClienteSmtp.Send(Mensagem);

      FEmailEnviado:= 'S';
    except on e: Exception do
      begin
        FMessageError:= 'Ocorreu um erro no envio do email. Erro: ' + e.Message;
        FEmailEnviado:= 'E';
      end;
    end;
  finally
    if Assigned(ClienteSmtp) then
    begin
      ClienteSmtp.Disconnect;
      FreeAndNil(ClienteSmtp);
    end;
    if Assigned(Mensagem) then FreeAndNil(Mensagem);
    if Assigned(SSLHandler) then FreeAndNil(SSLHandler);
  end;

  Suspend;
end;

end.
