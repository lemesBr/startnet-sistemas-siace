unit USendEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdBaseComponent, IdMessage, StdCtrls,
  IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, IdExplicitTLSClientServerBase,
  IdSMTPBase, IdAttachmentFile, IdCustomTCPServer, IdTCPServer,
  IdCmdTCPServer, IdPOP3Server;

type
  TFrmSendEmail = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    EdtPara: TEdit;
    Label2: TLabel;
    EdtCC: TEdit;
    Label3: TLabel;
    EdtCCO: TEdit;
    EdtAssunto: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    ComboPrioridade: TComboBox;
    CheckLeitura: TCheckBox;
    BtnAnexar: TButton;
    MemoMensagem: TMemo;
    Label7: TLabel;
    BtnEnviar: TButton;
    BtnCancelar: TButton;
    LbAnexos: TListBox;
    OpenDialog1: TOpenDialog;
    BtnRemover: TButton;
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    Panel2: TPanel;
    Panel3: TPanel;
    Memo1: TMemo;
    Label4: TLabel;
    Label8: TLabel;
    Button1: TButton;
    IdPOP3Server1: TIdPOP3Server;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnEnviarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAnexarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure IdSMTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSendEmail: TFrmSendEmail;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure TFrmSendEmail.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmSendEmail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:= cafree;
end;

procedure TFrmSendEmail.BtnEnviarClick(Sender: TObject);
var iAnexo : integer;
begin
   Memo1.Clear;
   Panel2.Visible := True;
   Panel1.Enabled := false;
   IdMessage.Recipients.EMailAddresses := EdtPara.Text;
   IdMessage.CCList.EMailAddresses     := edtCC.Text;
   IdMessage.BccList.EMailAddresses    := edtCCO.Text;

   //trata prioridade da mensagem
   case ComboPrioridade.ItemIndex of
     0: IdMessage.Priority := mpHigh;
     1: IdMessage.Priority := mpNormal;
     2: IdMessage.Priority := mpLow;
   end;

   IdMessage.Subject := edtAssunto.Text;
   IdMessage.Body    := MemoMensagem.Lines;

   if CheckLeitura.Checked then
      IdMessage.ReceiptRecipient.Text:= IdMessage.From.Text; //auto resposta

   //Manipulando os Anexos

   for iAnexo := 0 to LbAnexos.Items.Count - 1 do
       TIdAttachmentFile.Create(idmessage.MessageParts, LbAnexos.Items.Strings[iAnexo]);
      // TIdAttachment.Create(idmessage.MessageParts, LbAnexos.Items.Strings[iAnexo]);

   IdSMTP.Connect;

   try
     IdSMTP.Send(IdMessage);
   finally
     IdSMTP.Disconnect;
   end;

   if iCodigoNfe > 0 then
      dm.AtualizaStatusNfe(iCodigoNfe, 'STATUS_EMAIL', 'NULL') ;

   Application.MessageBox('Email enviado com sucesso!', 'Confirmação', MB_ICONINFORMATION +   MB_OK);

   //close;
end;

procedure TFrmSendEmail.FormShow(Sender: TObject);
var bConexaoSegura  : boolean;
    sServidorSmpt, sPortaSmtp, sUsuarioSmpt, sSenhaSmtp, sAssunto, sMensagem, sFromSMTP : string;
begin
   panel2.Visible := false;
   iEmp := dm.SDS_EmpresaCODIGO.Value;
   { busca os parametros }
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.Clear;
             sql.Add('SELECT SERVIDOR_SMTP, PORTA_SMTP, USUARIO_SMTP, SENHA_SMTP, FROM_SMTP, ' +
                     'ASSUNTO_EMAIL_DANFE, SMTP_CONEXAO_SEGURA, MENSAGEM_EMAIL_DANFE ' +
                     'FROM CONFIGURACOES ' +
                     'WHERE COD_EMPRESA = :CODEMP');
             Parambyname('codemp').AsInteger:= iEmp;
             Open;
             sServidorSmpt := trim(fieldbyname('servidor_smtp').AsString);
             sPortaSmtp    := trim(fieldbyname('porta_smtp').AsString);
             sUsuarioSmpt  := trim(fieldbyname('usuario_smtp').AsString);
             sSenhaSmtp    := trim(fieldbyname('senha_smtp').AsString);
             sAssunto      := trim(fieldbyname('assunto_email_danfe').AsString);
             sMensagem     := trim(fieldbyname('mensagem_email_danfe').AsString);
             sFromSMTP     := trim(fieldbyname('from_smtp').AsString);

             if trim(fieldbyname('smtp_conexao_segura').AsString) = 'S' then
                bConexaoSegura:= true
             else
                bConexaoSegura:= false;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('erro ao buscar os parâmetros do email');
     end;
   finally
     dm.QConsulta.Close;
   end;

   { configurando o idSMtp }
   IdSMTP.Username  := trim(sUsuarioSmpt);
   IdSMTP.Password  := trim(sSenhaSmtp);
   IdSMTP.Host      := trim(sServidorSmpt);
   IdSMTP.Port      := strtoint(sPortaSmtp);

   IdMessage.From.Address:= sFromSMTP;

   EdtAssunto.Text  := sAssunto;
   MemoMensagem.text:= sMensagem;

end;

procedure TFrmSendEmail.IdSMTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
   Statusbar1.Panels.Items[0].Text := AStatusText;
   Memo1.Lines.Add( '--> ' + AStatusText );
   Application.ProcessMessages;
end;

procedure TFrmSendEmail.BtnAnexarClick(Sender: TObject);
begin
   if OpenDialog1.Execute then
      LbAnexos.Items.Add(OpenDialog1.FileName);
end;

procedure TFrmSendEmail.BtnRemoverClick(Sender: TObject);
begin
   LbAnexos.Items.Delete(LbAnexos.ItemIndex);
end;

procedure TFrmSendEmail.Button1Click(Sender: TObject);
begin
   Memo1.Clear;
   Panel2.Visible := False;
   panel1.Enabled := True;
end;

end.
