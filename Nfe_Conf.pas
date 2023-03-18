{$I ACBr.inc}

unit Nfe_conf;

interface

uses IniFiles, ShellAPI,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, pcnAuxiliar, ComCtrls, OleCtrls, SHDocVw,
  ACBrNFe, pcnConversao,  pcnConversaoNFe, ACBrNFeDANFEClass, ACBrUtil, WinINet,
  pcnNFeW, pcnNFeRTXT, Mask, ACBrEAD, DBCtrls, ACBrDFeUtil, sLabel,
  Vcl.Samples.Spin, zlib, ACBrBase, ACBrDFe, XMLIntf, XMLDoc,
  ACBrUtil.FilesIO,   ACBrUtil.DateTime,  ACBrUtil.Strings,  ACBrUtil.XMLHTML,
  pcnNFe, pcnRetConsReciDFe,  ACBrDFeConfiguracoes, ACBrDFeSSL, ACBrDFeOpenSSL,
  ACBrNFeNotasFiscais, ACBrNFeConfiguracoes;

type
  TFormNfe_Conf = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    edtCaminho: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    ckVisualizar: TCheckBox;
    cbUF: TComboBox;
    Label7: TLabel;
    sbtnLogoMarca: TSpeedButton;
    sbtnPathSalvar: TSpeedButton;
    ckSalvar: TCheckBox;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    OpenDialog1: TOpenDialog;
    btnSalvarConfig: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    btnImprimir: TButton;
    btnConsultar: TButton;
    btnValidarXML: TButton;
    btnStatusServ: TButton;
    btnCancNF: TButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    btnCriarEnviar: TButton;
    btnInutilizar: TButton;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    Label25: TLabel;
    rgTipoAmb: TRadioGroup;
    rgTipoDanfe: TRadioGroup;
    rgFormaEmissao: TRadioGroup;
    sbtnGetCert: TSpeedButton;
    btnGerarNFE: TButton;
    btnConsCad: TButton;
    btnGerarPDF: TButton;
    btnEnviarEmail: TButton;
    TabSheet7: TTabSheet;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    btnConsultarRecibo: TButton;
    btnEnvDPEC: TButton;
    btnConsultarDPEC: TButton;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    btnImportarXML: TButton;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    btnConsultarChave: TButton;
    btnCancelarChave: TButton;
    Dados: TTabSheet;
    MemoDados: TMemo;
    btnGerarTXT: TButton;
    GroupBox6: TGroupBox;
    btnAdicionarProtNFe: TButton;
    btnCarregarXMLEnviar: TButton;
    btnCartadeCorrecao: TButton;
    Label12: TLabel;
    edtNumSerie: TDBEdit;
    edtSenha: TDBEdit;
    edtLogoMarca: TDBEdit;
    edtPathLogs: TDBEdit;
    btnImprimirCCe: TButton;
    btnEnviarEvento: TButton;
    OpenDialog2: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    Memo: TMemo;
    myLabel3d1: TsLabelFX;
    cbSSLLib: TComboBox;
    lSSLLib: TLabel;
    cbCryptLib: TComboBox;
    lCryptLib: TLabel;
    lHttpLib: TLabel;
    cbHttpLib: TComboBox;
    lXmlSign: TLabel;
    cbXmlSignLib: TComboBox;
    edtURLPFX: TEdit;
    Label51: TLabel;
    btnDataValidade: TButton;
    btnNumSerie: TButton;
    btnIssuerName: TButton;
    btnSubName: TButton;
    btnCNPJ: TButton;
    btVersao: TButton;
    GroupBox7: TGroupBox;
    Edit1: TEdit;
    btnSha256: TButton;
    cbAssinar: TCheckBox;
    btnHTTPS: TButton;
    btnLeituraX509: TButton;
    lSSLLib1: TLabel;
    cbSSLType: TComboBox;
    cbxVisualizar: TCheckBox;
    cbxSalvarSOAP: TCheckBox;
    lTimeOut: TLabel;
    seTimeOut: TSpinEdit;
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure btnStatusServClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancNFClick(Sender: TObject);
    procedure btnValidarXMLClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnCriarEnviarClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure btnGerarNFEClick(Sender: TObject);
    procedure btnConsCadClick(Sender: TObject);
    procedure btnGerarPDFClick(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure btnConsultarReciboClick(Sender: TObject);
    procedure btnEnvDPECClick(Sender: TObject);
    procedure btnConsultarDPECClick(Sender: TObject);
    procedure ACBrNFe1GerarLog(const Mensagem: String);
    procedure btnImportarXMLClick(Sender: TObject);
    procedure lblMouseEnter(Sender: TObject);
    procedure lblMouseLeave(Sender: TObject);
    procedure lblColaboradorClick(Sender: TObject);
    procedure lblPatrocinadorClick(Sender: TObject);
    procedure lblDoar1Click(Sender: TObject);
    procedure btnConsultarChaveClick(Sender: TObject);
    procedure btnCancelarChaveClick(Sender: TObject);
    procedure btnGerarTXTClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAdicionarProtNFeClick(Sender: TObject);
    procedure btnCarregarXMLEnviarClick(Sender: TObject);
    procedure btnCartadeCorrecaoClick(Sender: TObject);
    procedure edtLogoMarcaEnter(Sender: TObject);
    procedure edtPathLogsEnter(Sender: TObject);
    procedure edtNumSerieEnter(Sender: TObject);
    procedure edtSenhaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEnviarEventoClick(Sender: TObject);
    procedure btnImprimirCCeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbSSLLibChange(Sender: TObject);
    procedure cbCryptLibChange(Sender: TObject);
    procedure cbHttpLibChange(Sender: TObject);
    procedure cbXmlSignLibChange(Sender: TObject);


  private
    { Private declarations }
    procedure GravarConfiguracao ;
    procedure LerConfiguracao ;
    procedure GerarNFe(NumNFe : String);
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
     procedure AtualizarSSLLibsCombo;

  public
    { Public declarations }
     FBarcodeComponent, FLinearComponent: TComponent;
  end;

var
  FormNfe_Conf: TFormNfe_Conf;
  iRetorno : Integer;

implementation

uses FileCtrl, ufrmStatus, DateUtils,
  ModulodeDados, gerNFE, VMXCCePrint, Z_DeclaracoesBemaFi32;

const
  SELDIRHELP = 1000;

{$R *.dfm}

procedure TFormNfe_Conf.AtualizarSSLLibsCombo;
begin
  cbSSLLib.ItemIndex     := Integer(dm.ACBrNFe1.Configuracoes.Geral.SSLLib);
  cbCryptLib.ItemIndex   := Integer(DM.ACBrNFe1.Configuracoes.Geral.SSLCryptLib);
  cbHttpLib.ItemIndex    := Integer(DM.ACBrNFe1.Configuracoes.Geral.SSLHttpLib);
  cbXmlSignLib.ItemIndex := Integer(DM.ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib);

  cbSSLType.Enabled := (DM.ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]);
end;

function TrocaVirgPPto(Valor: string): String;
   var i:integer;
begin
    if Valor <>'' then begin
        for i := 0 to Length(Valor) do begin
            if Valor[i]=',' then Valor[i]:='.';

        end;
     end;
     Result := valor;
end;


function StringToHex(S: String): String;
var i: Integer;
begin
  Result:= '';
  for i := 1 to length(S) do
    Result:= Result+IntToHex(ord(S[i]),2);
end;

function Iif(Condicao: Boolean; Verdadeiro, Falso: Variant): Variant;
begin
 if Condicao then
   Result := Verdadeiro
 else Result := Falso;
end;

function RemoveChar(Const Texto:String):String; 
  // 
  // Remove caracteres de uma string deixando apenas numeros
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;
  

procedure TFormNfe_Conf.GravarConfiguracao;
Var IniFile : String ;
    Ini     : TIniFile ;
    StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;
    
  Ini := TIniFile.Create( IniFile );
  try
      Ini.WriteString( 'Certificado','Caminho' ,edtCaminho.Text) ;
      //Ini.WriteString( 'Certificado','Senha'   ,edtSenha.Text) ;
      //Ini.WriteString( 'Certificado','NumSerie',edtNumSerie.Text) ;

      Ini.WriteInteger( 'Geral','DANFE'       ,rgTipoDanfe.ItemIndex) ;
      Ini.WriteInteger( 'Geral','FormaEmissao',rgFormaEmissao.ItemIndex) ;
      //Ini.WriteString( 'Geral','LogoMarca'   ,edtLogoMarca.Text) ;
      Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked) ;
      //Ini.WriteString( 'Geral','PathSalvar'  ,edtPathLogs.Text) ;

      Ini.WriteString( 'WebService','UF'        ,cbUF.Text) ;
      Ini.WriteInteger( 'WebService','Ambiente'  ,rgTipoAmb.ItemIndex) ;
      Ini.WriteBool(   'WebService','Visualizar',ckVisualizar.Checked) ;

      Ini.WriteString( 'Proxy','Host'   ,edtProxyHost.Text) ;
      Ini.WriteString( 'Proxy','Porta'  ,edtProxyPorta.Text) ;
      Ini.WriteString( 'Proxy','User'   ,edtProxyUser.Text) ;
      Ini.WriteString( 'Proxy','Pass'   ,edtProxySenha.Text) ;

      {Ini.WriteString( 'Emitente','CNPJ'       ,edtEmitCNPJ.Text) ;
      Ini.WriteString( 'Emitente','IE'         ,edtEmitIE.Text) ;
      Ini.WriteString( 'Emitente','RazaoSocial',edtEmitRazao.Text) ;
      Ini.WriteString( 'Emitente','Fantasia'   ,edtEmitFantasia.Text) ;
      Ini.WriteString( 'Emitente','Fone'       ,edtEmitFone.Text) ;
      Ini.WriteString( 'Emitente','CEP'        ,edtEmitCEP.Text) ;
      Ini.WriteString( 'Emitente','Logradouro' ,edtEmitLogradouro.Text) ;
      Ini.WriteString( 'Emitente','Numero'     ,edtEmitNumero.Text) ;
      Ini.WriteString( 'Emitente','Complemento',edtEmitComp.Text) ;
      Ini.WriteString( 'Emitente','Bairro'     ,edtEmitBairro.Text) ;
      Ini.WriteString( 'Emitente','CodCidade'  ,edtEmitCodCidade.Text) ;
      Ini.WriteString( 'Emitente','Cidade'     ,edtEmitCidade.Text) ;
      Ini.WriteString( 'Emitente','UF'         ,edtEmitUF.Text) ; }

      Ini.WriteString( 'Email','Host'    ,edtSmtpHost.Text) ;
      Ini.WriteString( 'Email','Port'    ,edtSmtpPort.Text) ;
      Ini.WriteString( 'Email','User'    ,edtSmtpUser.Text) ;
      Ini.WriteString( 'Email','Pass'    ,edtSmtpPass.Text) ;
      Ini.WriteString( 'Email','Assunto' ,edtEmailAssunto.Text) ;
      Ini.WriteBool(   'Email','SSL'     ,cbEmailSSL.Checked ) ;
      StreamMemo := TMemoryStream.Create;
      mmEmailMsg.Lines.SaveToStream(StreamMemo);
      StreamMemo.Seek(0,soFromBeginning);
      Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo) ;
      StreamMemo.Free;
  finally
     Ini.Free ;
  end;

end;

procedure TFormNfe_Conf.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
      {$IFDEF ACBrNFeOpenSSL}
         edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
         //edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
         DM.ACBrNFe1.Configuracoes.Certificados.Certificado  := edtCaminho.Text;
         DM.ACBrNFe1.Configuracoes.Certificados.Senha        := edtSenha.Text;
         edtNumSerie.Visible := False;
         Label25.Visible := False;
         sbtnGetCert.Visible := False;
      {$ELSE}
         //edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
         DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
         edtNumSerie.Text := DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
        { Label1.Caption := 'Informe o n�mero de s�rie do certificado'#13+
                           'Dispon�vel no Internet Explorer no menu'#13+
                           'Ferramentas - Op��es da Internet - Conte�do '#13+
                           'Certificados - Exibir - Detalhes - '#13+
                           'N�mero do certificado';  }
         Label2.Visible := False;
         edtCaminho.Visible := False;
         edtSenha.Visible   := False;
         sbtnCaminhoCert.Visible := False;
      {$ENDIF}

      rgFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao',0) ;
      ckSalvar.Checked    := Ini.ReadBool(   'Geral','Salvar'      ,True) ;
      //edtPathLogs.Text    := Ini.ReadString( 'Geral','PathSalvar'  ,'') ;
      DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(rgFormaEmissao.ItemIndex+1));
      DM.ACBrNFe1.Configuracoes.Geral.Salvar       := ckSalvar.Checked;
      DM.ACBrNFe1.Configuracoes.arquivos.Salvar       := ckSalvar.Checked;
      DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar   := edtPathLogs.Text;

      cbUF.ItemIndex       := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','MT')) ;
      rgTipoAmb.ItemIndex  := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
      ckVisualizar.Checked :=Ini.ReadBool(    'WebService','Visualizar',False) ;
      DM.ACBrNFe1.Configuracoes.WebServices.UF         := cbUF.Text;
      DM.ACBrNFe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
      DM.ACBrNFe1.Configuracoes.WebServices.Visualizar := ckVisualizar.Checked;

      edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
      edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
      edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
      edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;
      DM.ACBrNFe1.Configuracoes.WebServices.ProxyHost := edtProxyHost.Text;
      DM.ACBrNFe1.Configuracoes.WebServices.ProxyPort := edtProxyPorta.Text;
      DM.ACBrNFe1.Configuracoes.WebServices.ProxyUser := edtProxyUser.Text;
      DM.ACBrNFe1.Configuracoes.WebServices.ProxyPass := edtProxySenha.Text;
      DM.ACBRNFE1.Configuracoes.Geral.Idcsc := DM.SDS_CONFIGURACOESTOKEN.TEXT ;
      DM.ACBRNFE1.Configuracoes.Geral.csc   := DM.SDS_CONFIGURACOESID_TOKEN.TEXT;

      rgTipoDanfe.ItemIndex     := Ini.ReadInteger( 'Geral','DANFE'       ,0) ;
      //edtLogoMarca.Text         := Ini.ReadString( 'Geral','LogoMarca'   ,'') ;
      if DM.ACBrNFe1.DANFE <> nil then
       begin
         DM.ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(rgTipoDanfe.ItemIndex+1));
         DM.ACBrNFe1.DANFE.Logo       := edtLogoMarca.Text;
       end;  

     { edtEmitCNPJ.Text       := Ini.ReadString( 'Emitente','CNPJ'       ,'') ;
      edtEmitIE.Text         := Ini.ReadString( 'Emitente','IE'         ,'') ;
      edtEmitRazao.Text      := Ini.ReadString( 'Emitente','RazaoSocial','') ;
      edtEmitFantasia.Text   := Ini.ReadString( 'Emitente','Fantasia'   ,'') ;
      edtEmitFone.Text       := Ini.ReadString( 'Emitente','Fone'       ,'') ;
      edtEmitCEP.Text        := Ini.ReadString( 'Emitente','CEP'        ,'') ;
      edtEmitLogradouro.Text := Ini.ReadString( 'Emitente','Logradouro' ,'') ;
      edtEmitNumero.Text     := Ini.ReadString( 'Emitente','Numero'     ,'') ;
      edtEmitComp.Text       := Ini.ReadString( 'Emitente','Complemento','') ;
      edtEmitBairro.Text     := Ini.ReadString( 'Emitente','Bairro'     ,'') ;
      edtEmitCodCidade.Text  := Ini.ReadString( 'Emitente','CodCidade'  ,'') ;
      edtEmitCidade.Text     :=Ini.ReadString( 'Emitente','Cidade'     ,'') ;
      edtEmitUF.Text         := Ini.ReadString( 'Emitente','UF'         ,'') ;}

      edtSmtpHost.Text      := Ini.ReadString( 'Email','Host'   ,'') ;
      edtSmtpPort.Text      := Ini.ReadString( 'Email','Port'   ,'') ;
      edtSmtpUser.Text      := Ini.ReadString( 'Email','User'   ,'') ;
      edtSmtpPass.Text      := Ini.ReadString( 'Email','Pass'   ,'') ;
      edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','') ;
      cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False) ;
      StreamMemo := TMemoryStream.Create;
      Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
      mmEmailMsg.Lines.LoadFromStream(StreamMemo);
      StreamMemo.Free;
  finally
     Ini.Free ;
  end;

end;

procedure TFormNfe_Conf.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'\temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'\temp.xml');
end;

procedure TFormNfe_Conf.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure TFormNfe_Conf.sbtnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.FileName;
  end;
end;

procedure TFormNfe_Conf.sbtnPathSalvarClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(edtPathLogs.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := edtPathLogs.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    edtPathLogs.Text := Dir;
end;

procedure TFormNfe_Conf.FormCreate(Sender: TObject);
begin
 SetWindowPos(Handle,HWND_TOP,140,20,0,0,SWP_NOSIZE);
 LerConfiguracao;
end;

procedure TFormNfe_Conf.btnSalvarConfigClick(Sender: TObject);
begin
 DM.SDS_CONFIGURACOES.Edit;
 GravarConfiguracao;
 LerConfiguracao;
 DM.SDS_CONFIGURACOES.POST;
 DM.SDS_CONFIGURACOES.ApplyUpdates(0);
end;

procedure TFormNfe_Conf.btnStatusServClick(Sender: TObject);
begin

IF DM.ACBrNFe1.ssl.certDataVenc < Now then
begin
 showmessage('Certificado vencido (data de validade expirada)');
 Exit;
end;

 DM.ACBrNFe1.WebServices.StatusServico.Executar;

 MemoResp.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.StatusServico.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.StatusServico.RetornoWS);
 LoadXML(MemoResp, WBResposta);

 PageControl2.ActivePageIndex := 1;

 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Status Servi�o');
 MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(DM.ACBrNFe1.WebServices.StatusServico.tpAmb));
 MemoDados.Lines.Add('verAplic: ' +DM.ACBrNFe1.WebServices.StatusServico.verAplic);
 MemoDados.Lines.Add('cStat: '    +IntToStr(DM.ACBrNFe1.WebServices.StatusServico.cStat));
 MemoDados.Lines.Add('xMotivo: '  +DM.ACBrNFe1.WebServices.StatusServico.xMotivo);
 MemoDados.Lines.Add('cUF: '      +IntToStr(DM.ACBrNFe1.WebServices.StatusServico.cUF));
 MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(DM.ACBrNFe1.WebServices.StatusServico.dhRecbto));
 MemoDados.Lines.Add('tMed: '     +IntToStr(DM.ACBrNFe1.WebServices.StatusServico.TMed));
 MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(DM.ACBrNFe1.WebServices.StatusServico.dhRetorno));
 MemoDados.Lines.Add('xObs: '     +DM.ACBrNFe1.WebServices.StatusServico.xObs);
end;

procedure TFormNfe_Conf.btnConsultarClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    DM.ACBrNFe1.Consultar;
    ShowMessage(DM.ACBrNFe1.WebServices.Consulta.Protocolo);
    MemoResp.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.Consulta.RetWS);
    memoRespWS.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.Consulta.RetornoWS);    
    LoadXML(MemoResp, WBResposta);
  end;
end;

procedure TFormNfe_Conf.btnCancNFClick(Sender: TObject);
var
  vAux : String;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux)) then
       exit;
     DM.ACBrNFe1.Cancelamento(vAux);
 //    MemoResp.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Cancelamento.RetWS);
 //    memoRespWS.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Cancelamento.RetornoWS);
     LoadXML(MemoResp, WBResposta);
   //  ShowMessage(IntToStr(DM.ACBrNFe1.WebServices.Cancelamento.cStat));
   //  ShowMessage(DM.ACBrNFe1.WebServices.Cancelamento.Protocolo);
  end;
  
end;

procedure TFormNfe_Conf.btnValidarXMLClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    DM.ACBrNFe1.NotasFiscais.Validar;
    showmessage('Nota Fiscal Eletr�nica Valida');
  end;
end;

procedure TFormNfe_Conf.btnImprimirClick(Sender: TObject);
begin
//DM.ACBrNFeDANFEFR1.FastFile := 'C:\Siace\rel\DANFeRetrato.fr3';
//DM.ACBrNFeDANFEFR1.FastFileEvento := 'C:\Siace\rel\EVENTOS.fr3';
//DM.ACBrNFeDANFEFR1.tipoDanfe := tiRetrato;
//DM.ACBrNFeDANFEFR1.ShowDialog := True;
//DM.ACBrNFeDANFEFR1.MostrarPreview := TRUE;


  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
  {  if DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
     begin
       DM.ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
       DM.ACBrNFe1.WebServices.ConsultaDPEC.Executar;
       DM.ACBrNFe1.DANFE.ProtocoloNFe := DM.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(DM.ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
     end; }
    DM.ACBrNFe1.NotasFiscais.Imprimir;
  end;
end;


procedure TFormNfe_Conf.btnCriarEnviarClick(Sender: TObject);
var
 vAux, vNumLote : String;
begin
{  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;  }

  if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
    exit;

  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('N�mero do Lote inv�lido.',mtError,[mbok],0);
     exit;
   end;

  DM.ACBrNFe1.NotasFiscais.Clear;

  GerarNFe(vAux);

  DM.ACBrNFe1.Enviar(vNumLote);

  DM.SDS_NFE.Edit;
  DM.SDS_NFENR_LOTE_NFE.AsInteger := StrToInt(vNumLote);
  dm.SDS_NFESTATUS.Text :='A';
  dm.SDS_NFEFL_IMPRESSO.Text :='S';
  DM.SDS_NFENR_PROTOCOLO_NFE.Text :=  DM.ACBrNFe1.WebServices.Retorno.Protocolo;
  DM.SDS_NFENR_RECIBO_NFE.Text :=  DM.ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec;
  DM.SDS_NFECHAVE_ACESSO_NFE.TEXT := OnlyNumber(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.id);
  DM.SDS_NFE.Post;
  DM.SDS_NFE.ApplyUpdates(0);
  DM.sds_nfe_itens.ApplyUpdates(0);


  MemoResp.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.Retorno.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.Retorno.RetornoWS);
  LoadXML(MemoResp, WBResposta);

 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Envio NFe');
 MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(DM.ACBrNFe1.WebServices.Retorno.TpAmb));
 MemoDados.Lines.Add('verAplic: '+ DM.ACBrNFe1.WebServices.Retorno.verAplic);
 MemoDados.Lines.Add('cStat: '+ IntToStr(DM.ACBrNFe1.WebServices.Retorno.cStat));
 MemoDados.Lines.Add('cUF: '+ IntToStr(DM.ACBrNFe1.WebServices.Retorno.cUF));
 MemoDados.Lines.Add('xMotivo: '+ DM.ACBrNFe1.WebServices.Retorno.xMotivo);
 MemoDados.Lines.Add('cMsg: '+ IntToStr(DM.ACBrNFe1.WebServices.Retorno.cMsg));
 MemoDados.Lines.Add('xMsg: '+ DM.ACBrNFe1.WebServices.Retorno.xMsg);
 MemoDados.Lines.Add('Recibo: '+ DM.ACBrNFe1.WebServices.Retorno.Recibo);
 MemoDados.Lines.Add('Protocolo: '+ DM.ACBrNFe1.WebServices.Retorno.Protocolo);
// MemoDados.Lines.Add('cStat: '+ DM.ACBrNFe1.WebServices.Retorno.NFeRetorno;

  DM.ACBrNFe1.NotasFiscais.Clear;
end;

procedure TFormNfe_Conf.btnInutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
 if not(InputQuery('WebServices Inutiliza��o ', 'Ano',    Ano)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'Modelo', Modelo)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'Serie',  Serie)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'N�mero Inicial', NumeroInicial)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'N�mero Inicial', NumeroFinal)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'Justificativa', Justificativa)) then
    exit;
  DM.ACBrNFe1.WebServices.Inutiliza(dm.SDS_EmpresaCNPJ.Text, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
  MemoResp.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Inutilizacao.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Inutilizacao.RetornoWS);  
  LoadXML(MemoResp, WBResposta);
end;

procedure TFormNfe_Conf.ACBrNFe1StatusChange(Sender: TObject);
begin
  case DM.ACBrNFe1.Status of
    stIdle :
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide;
    end;
    stNFeStatusServico :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando pedido de Inutiliza��o...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCadastro :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
   { stNFeEnvDPEC :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando DPEC...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeConsultaDPEC :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando DPEC...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;  }
    stNFeEmail :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Email...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;
  Application.ProcessMessages;
end;

procedure TFormNfe_Conf.sbtnGetCertClick(Sender: TObject);
begin
   {$IFNDEF ACBrNFeOpenSSL}
   edtNumSerie.Text := DM.ACBrNFe1.ssl.SelecionarCertificado;
    DM.ACBrNFe1.ssl.certDataVenc;
   {$ENDIF}
end;

procedure TFormNfe_Conf.btnGerarNFEClick(Sender: TObject);
var
 vAux : String;
begin
{if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit; }

  DM.ACBrNFe1.NotasFiscais.Clear;

  GerarNFe(vAux);

  DM.ACBrNFe1.NotasFiscais.Assinar;

  DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
  ShowMessage('Arquivo gerado em: '+DM.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  MemoDados.Lines.Add('Arquivo gerado em: '+DM.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  MemoResp.Lines.LoadFromFile(DM.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  LoadXML(MemoResp, WBResposta);
  PageControl2.ActivePageIndex := 1;

  DM.SDS_NFE.Edit;
  DM.SDS_NFENR_LOTE_NFE.AsInteger := null;
  dm.SDS_NFESTATUS.Text :='A';
  dm.SDS_NFEFL_IMPRESSO.Text :='S';
  DM.SDS_NFENR_PROTOCOLO_NFE.Text :=  DM.ACBrNFe1.WebServices.Retorno.protocolo;
  DM.SDS_NFENR_RECIBO_NFE.Text :=  DM.ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec;
  DM.SDS_NFECHAVE_ACESSO_NFE.TEXT := OnlyNumber(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.id);
  DM.SDS_NFE.Post;
  DM.SDS_NFE.ApplyUpdates(0);
  DM.sds_nfe_itens.ApplyUpdates(0);
  end;

procedure TFormNfe_Conf.btnConsCadClick(Sender: TObject);
var
 UF, Documento : String;
begin
 {if not(InputQuery('WebServices Consulta Cadastro ', 'UF do Documento a ser Consultado:',    UF)) then
    exit;
 if not(InputQuery('WebServices Consulta Cadastro ', 'Documento(CPF/CNPJ)',    Documento)) then
    exit;
  Documento :=  Trim(NotaUtil.LimpaNumero(Documento));

  DM.ACBrNFe1.WebServices.ConsultaCadastro.UF  := UF;
  if Length(Documento) > 11 then
     DM.ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := Documento
  else
     DM.ACBrNFe1.WebServices.ConsultaCadastro.CPF := Documento;
  DM.ACBrNFe1.WebServices.ConsultaCadastro.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.ConsultaCadastro.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS);  
  LoadXML(MemoResp, WBResposta);

  ShowMessage(DM.ACBrNFe1.WebServices.ConsultaCadastro.xMotivo);
  ShowMessage(DM.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xNome);}
end;

procedure TFormNfe_Conf.btnGerarPDFClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  DM.ACBrNFe1.NotasFiscais.Clear;
  if OpenDialog1.Execute then
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

  DM.ACBrNFe1.NotasFiscais.ImprimirPDF;
end;

procedure TFormNfe_Conf.btnGerarTXTClick(Sender: TObject);
var
   vAux, vNumLote : String;
begin
  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;

  if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
    exit;

  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('N�mero do Lote inv�lido.',mtError,[mbok],0);
     exit;
   end;

  DM.ACBrNFe1.NotasFiscais.Clear;

  GerarNFe(vAux);
  GerarNFe(vAux);
  GerarNFe(vAux);

  DM.ACBrNFe1.NotasFiscais.gravarTXT({caminho e nome do arquivo TXT});
end;

procedure TFormNfe_Conf.btnEnviarEmailClick(Sender: TObject);
var
 Para : String;
 CC: Tstrings;
begin
  if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
    exit;

  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    CC:=TstringList.Create;
    CC.Add('email_1@provedor.com'); //especifique um email v�lido
    CC.Add('email_2@provedor.com'); //especifique um email v�lido
{    DM.ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(edtSmtpHost.Text
                                             , edtSmtpPort.Text
                                             , edtSmtpUser.Text
                                             , edtSmtpPass.Text
                                             , edtSmtpUser.Text
                                             , Para
                                             , edtEmailAssunto.Text
                                             , mmEmailMsg.Lines
                                             , cbEmailSSL.Checked
                                             , True //Enviar PDF junto
                                             , nil //Lista com emails que ser�o enviado c�pias - TStrings
                                             , nil // Lista de anexos - TStrings
                                             , False  //Pede confirma��o de leitura do email
                                             , False  //Aguarda Envio do Email(n�o usa thread)
                                             , 'ACBrNFe2' ); // Nome do Rementente
    CC.Free;  }
  end;
end;

procedure TFormNfe_Conf.btnConsultarReciboClick(Sender: TObject);
var
  aux : String;
begin
  if not(InputQuery('Consultar Recibo Lote', 'N�mero do Recibo', aux)) then
    exit;
  DM.ACBrNFe1.WebServices.Recibo.Recibo := aux;;
  DM.ACBrNFe1.WebServices.Recibo.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Recibo.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Recibo.RetornoWS);  
  LoadXML(MemoResp, WBResposta);
end;

procedure TFormNfe_Conf.btnEnvDPECClick(Sender: TObject);
var
 vAux : String;
begin
{if not(InputQuery('WebServices DPEC', 'Numero da Nota', vAux)) then
    exit;

  DM.ACBrNFe1.NotasFiscais.Clear;

  GerarNFe(vAux);

  DM.ACBrNFe1.NotasFiscais.SaveToFile();
  if DM.ACBrNFe1.WebServices.EnviarDPEC.Executar then
   begin
     //protocolo de envio ao DPEC e impress�o do DANFE
     DM.ACBrNFe1.DANFE.ProtocoloNFe:=DM.ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC+' '+
                                  DateTimeToStr(DM.ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
     DM.ACBrNFe1.NotasFiscais.Imprimir;

     ShowMessage(DateTimeToStr(DM.ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC));
     ShowMessage(DM.ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC);
   end;  

  MemoResp.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.EnviarDPEC.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.EnviarDPEC.RetornoWS);  
  LoadXML(MemoResp, WBResposta);

  DM.ACBrNFe1.NotasFiscais.Clear;  }
end;

procedure TFormNfe_Conf.btnConsultarDPECClick(Sender: TObject);
var
 vAux : String;
begin
{  if not(InputQuery('WebServices DPEC', 'Informe o Numero do Registro do DPEC ou a Chave da NFe', vAux)) then
    exit;

  if Length(Trim(vAux)) < 44 then
     DM.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC := vAux
  else
     DM.ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := vAux;
  DM.ACBrNFe1.WebServices.ConsultaDPEC.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.ConsultaDPEC.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.ConsultaDPEC.RetornoWS);
  LoadXML(MemoResp, WBResposta);
  }
end;

procedure TFormNfe_Conf.ACBrNFe1GerarLog(const Mensagem: String);
begin
 memoLog.Lines.Add(Mensagem);
end;

procedure TFormNfe_Conf.btnImportarXMLClick(Sender: TObject);
var
  NFeRTXT: TNFeRTXT;
begin
  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione a NFe';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFe (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';

  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    //tenta TXT
     DM.ACBrNFe1.NotasFiscais.Add;
    NFeRTXT := TNFeRTXT.Create( DM.ACBrNFe1.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
    if NFeRTXT.LerTxt then
       NFeRTXT.Free
    else
    begin
       NFeRTXT.Free;
       //tenta XML
        DM.ACBrNFe1.NotasFiscais.Clear;
       try
           DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
       except
          ShowMessage('Arquivo NFe Inv�lido');
          exit;
       end;
    end;
  end;
{  i, j, k, n  : integer;
  Nota, Node, NodePai, NodeItem: TTreeNode;
  NFeRTXT: TNFeRTXT;
begin
  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    //tenta TXT
    DM.ACBrNFe1.NotasFiscais.Add;
    NFeRTXT := TNFeRTXT.Create(DM.ACBrNFe1.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
    if NFeRTXT.LerTxt then
       NFeRTXT.Free
    else
    begin
       NFeRTXT.Free;
       //tenta XML
       DM.ACBrNFe1.NotasFiscais.Clear;
       try
          DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
       except
          ShowMessage('Arquivo NFe Inv�lido');
          exit;
       end;
    end;

    trvwNFe.Items.Clear;

    for n:=0 to DM.ACBrNFe1.NotasFiscais.Count-1 do
    begin
    with DM.ACBrNFe1.NotasFiscais.Items[n].NFe do
     begin

       Nota := trvwNFe.Items.Add(nil,infNFe.ID);
       trvwNFe.Items.AddChild(Nota,'ID= ' +infNFe.ID);
       Node := trvwNFe.Items.AddChild(Nota,'procNFe');
       trvwNFe.Items.AddChild(Node,'tpAmb= '     +TpAmbToStr(procNFe.tpAmb));
       trvwNFe.Items.AddChild(Node,'verAplic= '  +procNFe.verAplic);
       trvwNFe.Items.AddChild(Node,'chNFe= '     +procNFe.chNFe);
       trvwNFe.Items.AddChild(Node,'dhRecbto= '  +DateTimeToStr(procNFe.dhRecbto));
       trvwNFe.Items.AddChild(Node,'nProt= '     +procNFe.nProt);
       trvwNFe.Items.AddChild(Node,'digVal= '    +procNFe.digVal);
       trvwNFe.Items.AddChild(Node,'cStat= '     +IntToStr(procNFe.cStat));
       trvwNFe.Items.AddChild(Node,'xMotivo= '   +procNFe.xMotivo);

       Node := trvwNFe.Items.AddChild(Nota,'Ide');
       trvwNFe.Items.AddChild(Node,'cNF= '     +IntToStr(Ide.cNF));
       trvwNFe.Items.AddChild(Node,'natOp= '   +Ide.natOp );
       trvwNFe.Items.AddChild(Node,'indPag= '  +IndpagToStr(Ide.indPag));
       trvwNFe.Items.AddChild(Node,'modelo= '  +IntToStr(Ide.modelo));
       trvwNFe.Items.AddChild(Node,'serie= '   +IntToStr(Ide.serie));
       trvwNFe.Items.AddChild(Node,'nNF= '     +IntToStr(Ide.nNF));
       trvwNFe.Items.AddChild(Node,'dEmi= '    +DateToStr(Ide.dEmi));
       trvwNFe.Items.AddChild(Node,'dSaiEnt= ' +DateToStr(Ide.dSaiEnt));
       trvwNFe.Items.AddChild(Node,'hSaiEnt= ' +DateToStr(Ide.hSaiEnt));
       trvwNFe.Items.AddChild(Node,'tpNF= '    +tpNFToStr(Ide.tpNF));
       trvwNFe.Items.AddChild(Node,'finNFe= '  +FinNFeToStr(Ide.finNFe));
       trvwNFe.Items.AddChild(Node,'verProc= ' +Ide.verProc);
       trvwNFe.Items.AddChild(Node,'cUF= '     +IntToStr(Ide.cUF));
       trvwNFe.Items.AddChild(Node,'cMunFG= '  +IntToStr(Ide.cMunFG));
       trvwNFe.Items.AddChild(Node,'tpImp= '   +TpImpToStr(Ide.tpImp));
       trvwNFe.Items.AddChild(Node,'tpEmis= '  +TpEmisToStr(Ide.tpEmis));
       trvwNFe.Items.AddChild(Node,'cDV= '     +IntToStr(Ide.cDV));
       trvwNFe.Items.AddChild(Node,'tpAmb= '   +TpAmbToStr(Ide.tpAmb));
       trvwNFe.Items.AddChild(Node,'finNFe= '  +FinNFeToStr(Ide.finNFe));
       trvwNFe.Items.AddChild(Node,'procEmi= ' +procEmiToStr(Ide.procEmi));
       trvwNFe.Items.AddChild(Node,'verProc= ' +Ide.verProc);
       trvwNFe.Items.AddChild(Node,'dhCont= '  +DateTimeToStr(Ide.dhCont));
       trvwNFe.Items.AddChild(Node,'xJust= '   +Ide.xJust);

       for i:=0 to Ide.NFref.Count-1 do
        begin
          Node := trvwNFe.Items.AddChild(Node,'NFRef'+IntToStrZero(i+1,3));
          trvwNFe.Items.AddChild(Node,'refNFe= ' +Ide.NFref.Items[i].refNFe);
          trvwNFe.Items.AddChild(Node,'cUF= '    +IntToStr(Ide.NFref.Items[i].RefNF.cUF));
          trvwNFe.Items.AddChild(Node,'AAMM= '   +Ide.NFref.Items[i].RefNF.AAMM);
          trvwNFe.Items.AddChild(Node,'CNPJ= '   +Ide.NFref.Items[i].RefNF.CNPJ);
          trvwNFe.Items.AddChild(Node,'modelo= ' +IntToStr(Ide.NFref.Items[i].RefNF.modelo));
          trvwNFe.Items.AddChild(Node,'serie= '  +IntToStr(Ide.NFref.Items[i].RefNF.serie));
          trvwNFe.Items.AddChild(Node,'nNF= '    +IntToStr(Ide.NFref.Items[i].RefNF.nNF));
        end;

       Node := trvwNFe.Items.AddChild(Nota,'Emit');
       trvwNFe.Items.AddChild(Node,'CNPJCPF= ' +Emit.CNPJCPF);
       trvwNFe.Items.AddChild(Node,'IE='       +Emit.IE);
       trvwNFe.Items.AddChild(Node,'xNome='    +Emit.xNome);
       trvwNFe.Items.AddChild(Node,'xFant='    +Emit.xFant );
       trvwNFe.Items.AddChild(Node,'IEST='     +Emit.IEST);
       trvwNFe.Items.AddChild(Node,'IM='       +Emit.IM);
       trvwNFe.Items.AddChild(Node,'CNAE='     +Emit.CNAE);
       trvwNFe.Items.AddChild(Node,'CRT='      +CRTToStr(Emit.CRT));

       Node := trvwNFe.Items.AddChild(Node,'EnderEmit');
       trvwNFe.Items.AddChild(Node,'Fone='    +Emit.EnderEmit.fone);
       trvwNFe.Items.AddChild(Node,'CEP='     +IntToStr(Emit.EnderEmit.CEP));
       trvwNFe.Items.AddChild(Node,'xLgr='    +Emit.EnderEmit.xLgr);
       trvwNFe.Items.AddChild(Node,'nro='     +Emit.EnderEmit.nro);
       trvwNFe.Items.AddChild(Node,'xCpl='    +Emit.EnderEmit.xCpl);
       trvwNFe.Items.AddChild(Node,'xBairro=' +Emit.EnderEmit.xBairro);
       trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Emit.EnderEmit.cMun));
       trvwNFe.Items.AddChild(Node,'xMun='    +Emit.EnderEmit.xMun);
       trvwNFe.Items.AddChild(Node,'UF'       +Emit.EnderEmit.UF);
       trvwNFe.Items.AddChild(Node,'cPais='   +IntToStr(Emit.EnderEmit.cPais));
       trvwNFe.Items.AddChild(Node,'xPais='   +Emit.EnderEmit.xPais);

       if Avulsa.CNPJ  <> '' then
        begin
          Node := trvwNFe.Items.AddChild(Nota,'Avulsa');
          trvwNFe.Items.AddChild(Node,'CNPJ='    +Avulsa.CNPJ);
          trvwNFe.Items.AddChild(Node,'xOrgao='  +Avulsa.xOrgao);
          trvwNFe.Items.AddChild(Node,'matr='    +Avulsa.matr );
          trvwNFe.Items.AddChild(Node,'xAgente=' +Avulsa.xAgente);
          trvwNFe.Items.AddChild(Node,'fone='    +Avulsa.fone);
          trvwNFe.Items.AddChild(Node,'UF='      +Avulsa.UF);
          trvwNFe.Items.AddChild(Node,'nDAR='    +Avulsa.nDAR);
          trvwNFe.Items.AddChild(Node,'dEmi='    +DateToStr(Avulsa.dEmi));
          trvwNFe.Items.AddChild(Node,'vDAR='    +FloatToStr(Avulsa.vDAR));
          trvwNFe.Items.AddChild(Node,'repEmi='  +Avulsa.repEmi);
          trvwNFe.Items.AddChild(Node,'dPag='    +DateToStr(Avulsa.dPag));
        end;
       Node := trvwNFe.Items.AddChild(Nota,'Dest');
       trvwNFe.Items.AddChild(Node,'CNPJCPF= ' +Dest.CNPJCPF);
       trvwNFe.Items.AddChild(Node,'IE='       +Dest.IE);
       trvwNFe.Items.AddChild(Node,'ISUF='     +Dest.ISUF);
       trvwNFe.Items.AddChild(Node,'xNome='    +Dest.xNome);
       trvwNFe.Items.AddChild(Node,'email='    +Dest.Email);

       Node := trvwNFe.Items.AddChild(Node,'EnderDest');
       trvwNFe.Items.AddChild(Node,'Fone='    +Dest.EnderDest.Fone);
       trvwNFe.Items.AddChild(Node,'CEP='     +IntToStr(Dest.EnderDest.CEP));
       trvwNFe.Items.AddChild(Node,'xLgr='    +Dest.EnderDest.xLgr);
       trvwNFe.Items.AddChild(Node,'nro='     +Dest.EnderDest.nro);
       trvwNFe.Items.AddChild(Node,'xCpl='    +Dest.EnderDest.xCpl);
       trvwNFe.Items.AddChild(Node,'xBairro=' +Dest.EnderDest.xBairro);
       trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Dest.EnderDest.cMun));
       trvwNFe.Items.AddChild(Node,'xMun='    +Dest.EnderDest.xMun);
       trvwNFe.Items.AddChild(Node,'UF='      +Dest.EnderDest.UF );
       trvwNFe.Items.AddChild(Node,'cPais='   +IntToStr(Dest.EnderDest.cPais));
       trvwNFe.Items.AddChild(Node,'xPais='   +Dest.EnderDest.xPais);


       for I := 0 to Det.Count-1 do
        begin
          with Det.Items[I] do
           begin
               NodeItem := trvwNFe.Items.AddChild(Nota,'Produto'+IntToStrZero(I+1,3));
               trvwNFe.Items.AddChild(NodeItem,'nItem='  +IntToStr(Prod.nItem) );
               trvwNFe.Items.AddChild(NodeItem,'cProd='  +Prod.cProd );
               trvwNFe.Items.AddChild(NodeItem,'cEAN='   +Prod.cEAN);
               trvwNFe.Items.AddChild(NodeItem,'xProd='  +Prod.xProd);
               trvwNFe.Items.AddChild(NodeItem,'NCM='    +Prod.NCM);
               trvwNFe.Items.AddChild(NodeItem,'EXTIPI=' +Prod.EXTIPI);
               //trvwNFe.Items.AddChild(NodeItem,'genero=' +IntToStr(Prod.genero));
               trvwNFe.Items.AddChild(NodeItem,'CFOP='   +Prod.CFOP);
               trvwNFe.Items.AddChild(NodeItem,'uCom='   +Prod.uCom);
               trvwNFe.Items.AddChild(NodeItem,'qCom='   +FloatToStr(Prod.qCom)) ;
               trvwNFe.Items.AddChild(NodeItem,'vUnCom=' +FloatToStr(Prod.vUnCom)) ;
               trvwNFe.Items.AddChild(NodeItem,'vProd='  +FloatToStr(Prod.vProd)) ;

               trvwNFe.Items.AddChild(NodeItem,'cEANTrib=' +Prod.cEANTrib);
               trvwNFe.Items.AddChild(NodeItem,'uTrib='    +Prod.uTrib);
               trvwNFe.Items.AddChild(NodeItem,'qTrib='    +FloatToStr(Prod.qTrib));
               trvwNFe.Items.AddChild(NodeItem,'vUnTrib='  +FloatToStr(Prod.vUnTrib)) ;

               trvwNFe.Items.AddChild(NodeItem,'vFrete='      +FloatToStr(Prod.vFrete)) ;
               trvwNFe.Items.AddChild(NodeItem,'vSeg='        +FloatToStr(Prod.vSeg)) ;
               trvwNFe.Items.AddChild(NodeItem,'vDesc='       +FloatToStr(Prod.vDesc)) ;
               trvwNFe.Items.AddChild(NodeItem,'vOutro='      +FloatToStr(Prod.vOutro)) ;
               trvwNFe.Items.AddChild(NodeItem,'indTot='      +indTotToStr(Prod.IndTot)) ;
               trvwNFe.Items.AddChild(NodeItem,'xPed='        +Prod.xPed) ;
             //  trvwNFe.Items.AddChild(NodeItem,'nItemPedido=' +IntToStr(Prod.nItemPed)) ;

               trvwNFe.Items.AddChild(NodeItem,'infAdProd=' +infAdProd);

                for J:=0 to Prod.DI.Count-1 do
                begin
                  if Prod.DI.Items[j].nDi <> '' then
                   begin
                     with Prod.DI.Items[j] do
                      begin
                        NodePai := trvwNFe.Items.AddChild(NodeItem,'DI'+IntToStrZero(J+1,3));
                        trvwNFe.Items.AddChild(NodePai,'nDi='         +nDi);
                        trvwNFe.Items.AddChild(NodePai,'dDi='         +DateToStr(dDi));
                        trvwNFe.Items.AddChild(NodePai,'xLocDesemb='  +xLocDesemb);
                        trvwNFe.Items.AddChild(NodePai,'UFDesemb='    +UFDesemb);
                        trvwNFe.Items.AddChild(NodePai,'dDesemb='     +DateToStr(dDesemb));
                        trvwNFe.Items.AddChild(NodePai,'cExportador=' +cExportador);;

                        for K:=0 to FDi.Count-1 do
                         begin
                           with FDi.Items[K] do
                            begin
                              Node := trvwNFe.Items.AddChild(NodePai,'LADI'+IntToStrZero(K+1,3));
                              trvwNFe.Items.AddChild(Node,'nAdicao='     +IntToStr(nAdicao)) ;
                              trvwNFe.Items.AddChild(Node,'nSeqAdi='     +IntToStr(nSeqAdi)) ;
                              trvwNFe.Items.AddChild(Node,'cFabricante=' +cFabricante);
                              trvwNFe.Items.AddChild(Node,'vDescDI='     +FloatToStr(vDescDI));
                            end;
                         end;
                      end;
                   end
                  else
                    Break;
                end;

               if Prod.veicProd.chassi <> '' then
               begin
                 Node := trvwNFe.Items.AddChild(NodeItem,'Veiculo');
                 with Prod.veicProd do
                  begin
                    trvwNFe.Items.AddChild(Node,'tpOP='     +tpOPToStr(tpOP));
                    trvwNFe.Items.AddChild(Node,'chassi='   +chassi) ;
                    trvwNFe.Items.AddChild(Node,'cCor='     +cCor);
                    trvwNFe.Items.AddChild(Node,'xCor='     +xCor);
                    trvwNFe.Items.AddChild(Node,'pot='      +pot);
                    trvwNFe.Items.AddChild(Node,'Cilin='      +Cilin);
                    trvwNFe.Items.AddChild(Node,'pesoL='    +pesoL);
                    trvwNFe.Items.AddChild(Node,'pesoB='    +pesoB);
                    trvwNFe.Items.AddChild(Node,'nSerie='   +nSerie);
                    trvwNFe.Items.AddChild(Node,'tpComb='   +tpComb);
                    trvwNFe.Items.AddChild(Node,'nMotor='   +nMotor);
                    trvwNFe.Items.AddChild(Node,'CMT='     +CMT);
                    trvwNFe.Items.AddChild(Node,'dist='     +dist);
                //    trvwNFe.Items.AddChild(Node,'RENAVAM='  +RENAVAM);
                    trvwNFe.Items.AddChild(Node,'anoMod='   +IntToStr(anoMod));
                    trvwNFe.Items.AddChild(Node,'anoFab='   +IntToStr(anoFab));
                    trvwNFe.Items.AddChild(Node,'tpPint='   +tpPint);
                    trvwNFe.Items.AddChild(Node,'tpVeic='   +IntToStr(tpVeic));
                    trvwNFe.Items.AddChild(Node,'espVeic='  +IntToStr(espVeic));
                    trvwNFe.Items.AddChild(Node,'VIN='      +VIN);
                    trvwNFe.Items.AddChild(Node,'condVeic=' +condVeicToStr(condVeic));
                    trvwNFe.Items.AddChild(Node,'cMod='     +cMod);
                  end;
               end;

               for J:=0 to Prod.med.Count-1 do
                begin
                  Node := trvwNFe.Items.AddChild(NodeItem,'Medicamento'+IntToStrZero(J+1,3) );
                  with Prod.med.Items[J] do
                   begin
                     trvwNFe.Items.AddChild(Node,'nLote=' +nLote) ;
                     trvwNFe.Items.AddChild(Node,'qLote=' +FloatToStr(qLote)) ;
                     trvwNFe.Items.AddChild(Node,'dFab='  +DateToStr(dFab)) ;
                     trvwNFe.Items.AddChild(Node,'dVal='  +DateToStr(dVal)) ;
                     trvwNFe.Items.AddChild(Node,'vPMC='  +FloatToStr(vPMC)) ;
                    end;
                end;

               for J:=0 to Prod.arma.Count-1 do
                begin
                  Node := trvwNFe.Items.AddChild(NodeItem,'Arma'+IntToStrZero(J+1,3));
                  with Prod.arma.Items[J] do
                   begin
                     trvwNFe.Items.AddChild(Node,'nSerie=' +nSerie) ;
                     trvwNFe.Items.AddChild(Node,'tpArma=' +tpArmaToStr(tpArma)) ;
                     trvwNFe.Items.AddChild(Node,'nCano='  +nCano) ;
                     trvwNFe.Items.AddChild(Node,'descr='  +descr) ;
                    end;
                end;

               if (Prod.comb.cProdANP > 0) then
                begin
                 NodePai := trvwNFe.Items.AddChild(NodeItem,'Combustivel');
                 with Prod.comb do
                  begin
                    trvwNFe.Items.AddChild(NodePai,'cProdANP=' +IntToStr(cProdANP)) ;
                    trvwNFe.Items.AddChild(NodePai,'CODIF='    +CODIF) ;
                    trvwNFe.Items.AddChild(NodePai,'qTemp='    +FloatToStr(qTemp)) ;
                    trvwNFe.Items.AddChild(NodePai,'UFcons='    +UFCons) ;
                    Node := trvwNFe.Items.AddChild(NodePai,'CIDE'+IntToStrZero(I+1,3));
                    trvwNFe.Items.AddChild(Node,'qBCprod='   +FloatToStr(CIDE.qBCprod)) ;
                    trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(CIDE.vAliqProd)) ;
                    trvwNFe.Items.AddChild(Node,'vCIDE='     +FloatToStr(CIDE.vCIDE)) ;

                    Node := trvwNFe.Items.AddChild(NodePai,'ICMSComb'+IntToStrZero(I+1,3));
                    trvwNFe.Items.AddChild(Node,'vBCICMS='   +FloatToStr(ICMS.vBCICMS)) ;
                    trvwNFe.Items.AddChild(Node,'vICMS='     +FloatToStr(ICMS.vICMS)) ;
                    trvwNFe.Items.AddChild(Node,'vBCICMSST=' +FloatToStr(ICMS.vBCICMSST)) ;
                    trvwNFe.Items.AddChild(Node,'vICMSST='   +FloatToStr(ICMS.vICMSST)) ;
                    trvwNFe.Items.AddChild(Node,'Ufcons='    + ICMSCons.UFcons) ;

                    if (ICMSInter.vBCICMSSTDest>0) then
                     begin
                       Node := trvwNFe.Items.AddChild(NodePai,'ICMSInter'+IntToStrZero(I+1,3));
                       trvwNFe.Items.AddChild(Node,'vBCICMSSTDest=' +FloatToStr(ICMSInter.vBCICMSSTDest)) ;
                       trvwNFe.Items.AddChild(Node,'vICMSSTDest='   +FloatToStr(ICMSInter.vICMSSTDest)) ;
                     end;

                    if (ICMSCons.vBCICMSSTCons>0) then
                     begin
                       Node := trvwNFe.Items.AddChild(NodePai,'ICMSCons'+IntToStrZero(I+1,3));
                       trvwNFe.Items.AddChild(Node,'vBCICMSSTCons=' +FloatToStr(ICMSCons.vBCICMSSTCons)) ;
                       trvwNFe.Items.AddChild(Node,'vICMSSTCons='   +FloatToStr(ICMSCons.vICMSSTCons)) ;
                       trvwNFe.Items.AddChild(Node,'UFCons='        +ICMSCons.UFcons) ;
                     end;
                  end;
               end;

               with Imposto do
                begin
                   NodePai := trvwNFe.Items.AddChild(NodeItem,'Imposto');
                   Node := trvwNFe.Items.AddChild(NodePai,'ICMS');
                   with ICMS do
                    begin
                      trvwNFe.Items.AddChild(Node,'CST=' +CSTICMSToStr(CST));

                      if CST = cst00 then
                       begin
                         trvwNFe.Items.AddChild(Node,'orig='  +OrigToStr(ICMS.orig));
                         trvwNFe.Items.AddChild(Node,'modBC=' +modBCToStr(ICMS.modBC));
                         trvwNFe.Items.AddChild(Node,'vBC='   +FloatToStr(ICMS.vBC));
                         trvwNFe.Items.AddChild(Node,'pICMS=' +FloatToStr(ICMS.pICMS));
                         trvwNFe.Items.AddChild(Node,'vICMS=' +FloatToStr(ICMS.vICMS));
                       end
                      else if CST = cst10 then
                       begin
                         trvwNFe.Items.AddChild(Node,'orig='     +OrigToStr(ICMS.orig));
                         trvwNFe.Items.AddChild(Node,'modBC='    +modBCToStr(ICMS.modBC));
                         trvwNFe.Items.AddChild(Node,'vBC='      +FloatToStr(ICMS.vBC));
                         trvwNFe.Items.AddChild(Node,'pICMS='    +FloatToStr(ICMS.pICMS));
                         trvwNFe.Items.AddChild(Node,'vICMS='    +FloatToStr(ICMS.vICMS));
                         trvwNFe.Items.AddChild(Node,'modBCST='  +modBCSTToStr(ICMS.modBCST));
                         trvwNFe.Items.AddChild(Node,'pMVAST='   +FloatToStr(ICMS.pMVAST));
                         trvwNFe.Items.AddChild(Node,'pRedBCST=' +FloatToStr(ICMS.pRedBCST));
                         trvwNFe.Items.AddChild(Node,'vBCST='    +FloatToStr(ICMS.vBCST));
                         trvwNFe.Items.AddChild(Node,'pICMSST='  +FloatToStr(ICMS.pICMSST));
                         trvwNFe.Items.AddChild(Node,'vICMSST='  +FloatToStr(ICMS.vICMSST));
                       end
                      else if CST = cst20 then
                       begin
                         trvwNFe.Items.AddChild(Node,'orig='   +OrigToStr(ICMS.orig));
                         trvwNFe.Items.AddChild(Node,'modBC='  +modBCToStr(ICMS.modBC));
                         trvwNFe.Items.AddChild(Node,'pRedBC=' +FloatToStr(ICMS.pRedBC));
                         trvwNFe.Items.AddChild(Node,'vBC='    +FloatToStr(ICMS.vBC));
                         trvwNFe.Items.AddChild(Node,'pICMS='  +FloatToStr(ICMS.pICMS));
                         trvwNFe.Items.AddChild(Node,'vICMS='  +FloatToStr(ICMS.vICMS));
                       end
                      else if CST = cst30 then
                       begin
                         trvwNFe.Items.AddChild(Node,'orig='     +OrigToStr(ICMS.orig));
                         trvwNFe.Items.AddChild(Node,'modBCST='  +modBCSTToStr(ICMS.modBCST));
                         trvwNFe.Items.AddChild(Node,'pMVAST='   +FloatToStr(ICMS.pMVAST));
                         trvwNFe.Items.AddChild(Node,'pRedBCST=' +FloatToStr(ICMS.pRedBCST));
                         trvwNFe.Items.AddChild(Node,'vBCST='    +FloatToStr(ICMS.vBCST));
                         trvwNFe.Items.AddChild(Node,'pICMSST='  +FloatToStr(ICMS.pICMSST));
                         trvwNFe.Items.AddChild(Node,'vICMSST='  +FloatToStr(ICMS.vICMSST));
                       end
                      else if (CST = cst40) or (CST = cst41) or (CST = cst50) then
                       begin
                         trvwNFe.Items.AddChild(Node,'orig='    +OrigToStr(ICMS.orig));
                       end
                      else if CST = cst51 then
                         begin
                         trvwNFe.Items.AddChild(Node,'orig='    +OrigToStr(ICMS.orig));
                         trvwNFe.Items.AddChild(Node,'modBC='   +modBCToStr(ICMS.modBC));
                         trvwNFe.Items.AddChild(Node,'pRedBC='  +FloatToStr(ICMS.pRedBC));
                         trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(ICMS.vBC));
                         trvwNFe.Items.AddChild(Node,'pICMS='   +FloatToStr(ICMS.pICMS));
                         trvwNFe.Items.AddChild(Node,'vICMS='   +FloatToStr(ICMS.vICMS));
                       end
                      else if CST = cst60 then
                       begin
                         trvwNFe.Items.AddChild(Node,'orig='    +OrigToStr(ICMS.orig));
                         trvwNFe.Items.AddChild(Node,'vBCST='   +FloatToStr(ICMS.vBCST));
                         trvwNFe.Items.AddChild(Node,'vICMSST=' +FloatToStr(ICMS.vICMSST));
                       end
                      else if CST = cst70 then
                       begin
                         trvwNFe.Items.AddChild(Node,'orig='       +OrigToStr(ICMS.orig));
                         trvwNFe.Items.AddChild(Node,'modBC='      +modBCToStr(ICMS.modBC));
                         trvwNFe.Items.AddChild(Node,'pRedBC='     +FloatToStr(ICMS.pRedBC));
                         trvwNFe.Items.AddChild(Node,'vBC='        +FloatToStr(ICMS.vBC));
                         trvwNFe.Items.AddChild(Node,'pICMS='      +FloatToStr(ICMS.pICMS));
                         trvwNFe.Items.AddChild(Node,'vICMS='      +FloatToStr(ICMS.vICMS));
                         trvwNFe.Items.AddChild(Node,'modBCST='    +modBCSTToStr(ICMS.modBCST));
                         trvwNFe.Items.AddChild(Node,'pMVAST='     +FloatToStr(ICMS.pMVAST));
                         trvwNFe.Items.AddChild(Node,'pRedBCST='   +FloatToStr(ICMS.pRedBCST));
                         trvwNFe.Items.AddChild(Node,'vBCST='      +FloatToStr(ICMS.vBCST));
                         trvwNFe.Items.AddChild(Node,'pICMSST='    +FloatToStr(ICMS.pICMSST));
                         trvwNFe.Items.AddChild(Node,'vICMSST='    +FloatToStr(ICMS.vICMSST));
                       end
                      else if CST = cst90 then
                       begin
                         trvwNFe.Items.AddChild(Node,'orig='       +OrigToStr(ICMS.orig));
                         trvwNFe.Items.AddChild(Node,'modBC='      +modBCToStr(ICMS.modBC));
                         trvwNFe.Items.AddChild(Node,'pRedBC='     +FloatToStr(ICMS.pRedBC));
                         trvwNFe.Items.AddChild(Node,'vBC='        +FloatToStr(ICMS.vBC));
                         trvwNFe.Items.AddChild(Node,'pICMS='      +FloatToStr(ICMS.pICMS));
                         trvwNFe.Items.AddChild(Node,'vICMS='      +FloatToStr(ICMS.vICMS));
                         trvwNFe.Items.AddChild(Node,'modBCST='    +modBCSTToStr(ICMS.modBCST));
                         trvwNFe.Items.AddChild(Node,'pMVAST='     +FloatToStr(ICMS.pMVAST));
                         trvwNFe.Items.AddChild(Node,'pRedBCST='   +FloatToStr(ICMS.pRedBCST));
                         trvwNFe.Items.AddChild(Node,'vBCST='      +FloatToStr(ICMS.vBCST));
                         trvwNFe.Items.AddChild(Node,'pICMSST='    +FloatToStr(ICMS.pICMSST));
                         trvwNFe.Items.AddChild(Node,'vICMSST='    +FloatToStr(ICMS.vICMSST));
                       end;
                    end;

                   if (IPI.vBC > 0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'IPI');
                      with IPI do
                       begin
                         trvwNFe.Items.AddChild(Node,'CST='       +CSTIPIToStr(CST)) ;
                         trvwNFe.Items.AddChild(Node,'clEnq='    +clEnq);
                         trvwNFe.Items.AddChild(Node,'CNPJProd=' +CNPJProd);
                         trvwNFe.Items.AddChild(Node,'cSelo='    +cSelo);
                         trvwNFe.Items.AddChild(Node,'qSelo='    +IntToStr(qSelo));
                         trvwNFe.Items.AddChild(Node,'cEnq='     +cEnq);

                         trvwNFe.Items.AddChild(Node,'vBC='    +FloatToStr(vBC));
                         trvwNFe.Items.AddChild(Node,'qUnid='  +FloatToStr(qUnid));
                         trvwNFe.Items.AddChild(Node,'vUnid='  +FloatToStr(vUnid));
                         trvwNFe.Items.AddChild(Node,'pIPI='   +FloatToStr(pIPI));
                         trvwNFe.Items.AddChild(Node,'vIPI='   +FloatToStr(vIPI));
                       end;
                    end;

                   if (II.vBc > 0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'II');
                      with II do
                       begin
                         trvwNFe.Items.AddChild(Node,'vBc='      +FloatToStr(vBc));
                         trvwNFe.Items.AddChild(Node,'vDespAdu=' +FloatToStr(vDespAdu));
                         trvwNFe.Items.AddChild(Node,'vII='      +FloatToStr(vII));
                         trvwNFe.Items.AddChild(Node,'vIOF='     +FloatToStr(vIOF));
                       end;
                    end;

                   Node := trvwNFe.Items.AddChild(NodePai,'PIS');
                   with PIS do
                    begin
                      trvwNFe.Items.AddChild(Node,'CST=' +CSTPISToStr(CST));

                      if (CST = pis01) or (CST = pis02) then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='  +FloatToStr(PIS.vBC));
                         trvwNFe.Items.AddChild(Node,'pPIS=' +FloatToStr(PIS.pPIS));
                         trvwNFe.Items.AddChild(Node,'vPIS=' +FloatToStr(PIS.vPIS));
                       end
                      else if CST = pis03 then
                       begin
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(PIS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(PIS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(PIS.vPIS));
                       end
                      else if CST = pis99 then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(PIS.vBC));
                         trvwNFe.Items.AddChild(Node,'pPIS='      +FloatToStr(PIS.pPIS));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(PIS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(PIS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(PIS.vPIS));
                       end;
                    end;

                   if (PISST.vBc>0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'PISST');
                      with PISST do
                       begin
                         trvwNFe.Items.AddChild(Node,'vBc='       +FloatToStr(vBc));
                         trvwNFe.Items.AddChild(Node,'pPis='      +FloatToStr(pPis));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(vPIS));
                       end;
                      end;

                   Node := trvwNFe.Items.AddChild(NodePai,'COFINS');
                   with COFINS do
                    begin
                      trvwNFe.Items.AddChild(Node,'CST=' +CSTCOFINSToStr(CST));

                      if (CST = cof01) or (CST = cof02)   then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(COFINS.vBC));
                         trvwNFe.Items.AddChild(Node,'pCOFINS=' +FloatToStr(COFINS.pCOFINS));
                         trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(COFINS.vCOFINS));
                       end
                      else if CST = cof03 then
                       begin
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(COFINS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(COFINS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(COFINS.vCOFINS));
                       end
                      else if CST = cof99 then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(COFINS.vBC));
                         trvwNFe.Items.AddChild(Node,'pCOFINS='   +FloatToStr(COFINS.pCOFINS));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(COFINS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(COFINS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(COFINS.vCOFINS));
                       end;
                    end;

                   if (COFINSST.vBC > 0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'COFINSST');
                      with COFINSST do
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(vBC));
                         trvwNFe.Items.AddChild(Node,'pCOFINS='   +FloatToStr(pCOFINS));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(vCOFINS));
                       end;
                    end;

                   if (ISSQN.vBC > 0) then
                    begin
                     Node := trvwNFe.Items.AddChild(NodePai,'ISSQN');
                     with ISSQN do
                      begin
                        trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(vBC));
                        trvwNFe.Items.AddChild(Node,'vAliq='     +FloatToStr(vAliq));
                        trvwNFe.Items.AddChild(Node,'vISSQN='    +FloatToStr(vISSQN));
                        trvwNFe.Items.AddChild(Node,'cMunFG='    +IntToStr(cMunFG));
//                        trvwNFe.Items.AddChild(Node,'cListServ=' +IntToStr(cListServ));
                      end;
                    end;
                end;
             end;
          end ;

       NodePai := trvwNFe.Items.AddChild(Nota,'Total');
       Node := trvwNFe.Items.AddChild(NodePai,'ICMSTot');
       trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(Total.ICMSTot.vBC));
       trvwNFe.Items.AddChild(Node,'vICMS='   +FloatToStr(Total.ICMSTot.vICMS)) ;
       trvwNFe.Items.AddChild(Node,'vBCST='   +FloatToStr(Total.ICMSTot.vBCST)) ;
       trvwNFe.Items.AddChild(Node,'vST='     +FloatToStr(Total.ICMSTot.vST)) ;
       trvwNFe.Items.AddChild(Node,'vProd='   +FloatToStr(Total.ICMSTot.vProd)) ;
       trvwNFe.Items.AddChild(Node,'vFrete='  +FloatToStr(Total.ICMSTot.vFrete)) ;
       trvwNFe.Items.AddChild(Node,'vSeg='    +FloatToStr(Total.ICMSTot.vSeg)) ;
       trvwNFe.Items.AddChild(Node,'vDesc='   +FloatToStr(Total.ICMSTot.vDesc)) ;
       trvwNFe.Items.AddChild(Node,'vII='     +FloatToStr(Total.ICMSTot.vII)) ;
       trvwNFe.Items.AddChild(Node,'vIPI='    +FloatToStr(Total.ICMSTot.vIPI)) ;
       trvwNFe.Items.AddChild(Node,'vPIS='    +FloatToStr(Total.ICMSTot.vPIS)) ;
       trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(Total.ICMSTot.vCOFINS)) ;
       trvwNFe.Items.AddChild(Node,'vOutro='  +FloatToStr(Total.ICMSTot.vOutro)) ;
       trvwNFe.Items.AddChild(Node,'vNF='     +FloatToStr(Total.ICMSTot.vNF)) ;

       if Total.ISSQNtot.vServ > 0 then
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'ISSQNtot');
          trvwNFe.Items.AddChild(Node,'vServ='   +FloatToStr(Total.ISSQNtot.vServ)) ;
          trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(Total.ISSQNTot.vBC)) ;
          trvwNFe.Items.AddChild(Node,'vISS='    +FloatToStr(Total.ISSQNTot.vISS)) ;
          trvwNFe.Items.AddChild(Node,'vPIS='    +FloatToStr(Total.ISSQNTot.vPIS)) ;
          trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(Total.ISSQNTot.vCOFINS)) ;
        end;

       Node := trvwNFe.Items.AddChild(NodePai,'retTrib');
       trvwNFe.Items.AddChild(Node,'vRetPIS='   +FloatToStr(Total.retTrib.vRetPIS)) ;
       trvwNFe.Items.AddChild(Node,'vRetCOFINS='+FloatToStr(Total.retTrib.vRetCOFINS)) ;
       trvwNFe.Items.AddChild(Node,'vRetCSLL='  +FloatToStr(Total.retTrib.vRetCSLL)) ;
       trvwNFe.Items.AddChild(Node,'vBCIRRF='   +FloatToStr(Total.retTrib.vBCIRRF)) ;
       trvwNFe.Items.AddChild(Node,'vIRRF='     +FloatToStr(Total.retTrib.vIRRF)) ;
       trvwNFe.Items.AddChild(Node,'vBCRetPrev='+FloatToStr(Total.retTrib.vBCRetPrev)) ;
       trvwNFe.Items.AddChild(Node,'vRetPrev='  +FloatToStr(Total.retTrib.vRetPrev)) ;

       NodePai := trvwNFe.Items.AddChild(Nota,'Transp');
       Node := trvwNFe.Items.AddChild(NodePai,'Transporta');
       trvwNFe.Items.AddChild(Node,'modFrete=' +modFreteToStr(Transp.modFrete));
       trvwNFe.Items.AddChild(Node,'CNPJCPF='  +Transp.Transporta.CNPJCPF);
       trvwNFe.Items.AddChild(Node,'xNome='    +Transp.Transporta.xNome);
       trvwNFe.Items.AddChild(Node,'IE='       +Transp.Transporta.IE);
       trvwNFe.Items.AddChild(Node,'xEnder='   +Transp.Transporta.xEnder);
       trvwNFe.Items.AddChild(Node,'xMun='     +Transp.Transporta.xMun);
       trvwNFe.Items.AddChild(Node,'UF='       +Transp.Transporta.UF);

       Node := trvwNFe.Items.AddChild(NodePai,'retTransp');
       trvwNFe.Items.AddChild(Node,'vServ='    +FloatToStr(Transp.retTransp.vServ)) ;
       trvwNFe.Items.AddChild(Node,'vBCRet='   +FloatToStr(Transp.retTransp.vBCRet)) ;
       trvwNFe.Items.AddChild(Node,'pICMSRet=' +FloatToStr(Transp.retTransp.pICMSRet)) ;
       trvwNFe.Items.AddChild(Node,'vICMSRet=' +FloatToStr(Transp.retTransp.vICMSRet)) ;
       trvwNFe.Items.AddChild(Node,'CFOP='     +Transp.retTransp.CFOP);
       trvwNFe.Items.AddChild(Node,'cMunFG='   +FloatToStr(Transp.retTransp.cMunFG));

       Node := trvwNFe.Items.AddChild(NodePai,'veicTransp');
       trvwNFe.Items.AddChild(Node,'placa='  +Transp.veicTransp.placa);
       trvwNFe.Items.AddChild(Node,'UF='     +Transp.veicTransp.UF);
       trvwNFe.Items.AddChild(Node,'RNTC='   +Transp.veicTransp.RNTC);

       for I:=0 to Transp.Reboque.Count-1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'Reboque'+IntToStrZero(I+1,3));
          with Transp.Reboque.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'placa=' +placa) ;
             trvwNFe.Items.AddChild(Node,'UF='    +UF) ;
             trvwNFe.Items.AddChild(Node,'RNTC='  +RNTC) ;
           end;
        end;

       for I:=0 to Transp.Vol.Count-1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'Volume'+IntToStrZero(I+1,3));
          with Transp.Vol.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'qVol='  +IntToStr(qVol)) ;
             trvwNFe.Items.AddChild(Node,'esp='   +esp);
             trvwNFe.Items.AddChild(Node,'marca=' +marca);
             trvwNFe.Items.AddChild(Node,'nVol='  +nVol);
             trvwNFe.Items.AddChild(Node,'pesoL=' +FloatToStr(pesoL)) ;
             trvwNFe.Items.AddChild(Node,'pesoB'  +FloatToStr(pesoB)) ;

             for J:=0 to Lacres.Count-1 do
              begin
                Node := trvwNFe.Items.AddChild(Node,'Lacre'+IntToStrZero(I+1,3)+IntToStrZero(J+1,3) );
                trvwNFe.Items.AddChild(Node,'nLacre='+Lacres.Items[J].nLacre) ;
              end;
           end;
        end;

       NodePai := trvwNFe.Items.AddChild(Nota,'Cobr');
       Node    := trvwNFe.Items.AddChild(NodePai,'Fat');
       trvwNFe.Items.AddChild(Node,'nFat='  +Cobr.Fat.nFat);
       trvwNFe.Items.AddChild(Node,'vOrig=' +FloatToStr(Cobr.Fat.vOrig)) ;
       trvwNFe.Items.AddChild(Node,'vDesc=' +FloatToStr(Cobr.Fat.vDesc)) ;
       trvwNFe.Items.AddChild(Node,'vLiq='  +FloatToStr(Cobr.Fat.vLiq)) ;

       for I:=0 to Cobr.Dup.Count-1 do
        begin
          Node    := trvwNFe.Items.AddChild(NodePai,'Duplicata'+IntToStrZero(I+1,3));
          with Cobr.Dup.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'nDup='  +nDup) ;
             trvwNFe.Items.AddChild(Node,'dVenc=' +DateToStr(dVenc));
             trvwNFe.Items.AddChild(Node,'vDup='  +FloatToStr(vDup)) ;
           end;
        end;

       NodePai := trvwNFe.Items.AddChild(Nota,'InfAdic');
       trvwNFe.Items.AddChild(NodePai,'infCpl='     +InfAdic.infCpl);
       trvwNFe.Items.AddChild(NodePai,'infAdFisco=' +InfAdic.infAdFisco);

       for I:=0 to InfAdic.obsCont.Count-1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'obsCont'+IntToStrZero(I+1,3));
          with InfAdic.obsCont.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'xCampo=' +xCampo) ;
             trvwNFe.Items.AddChild(Node,'xTexto=' +xTexto);
           end;
        end;

         for I:=0 to InfAdic.obsFisco.Count-1 do
          begin
            Node := trvwNFe.Items.AddChild(NodePai,'obsFisco'+IntToStrZero(I+1,3));
            with InfAdic.obsFisco.Items[I] do
             begin
                trvwNFe.Items.AddChild(Node,'xCampo=' +xCampo) ;
                trvwNFe.Items.AddChild(Node,'xTexto=' +xTexto);
             end;
          end;

         for I:=0 to InfAdic.procRef.Count-1 do
          begin
            Node := trvwNFe.Items.AddChild(NodePai,'procRef'+IntToStrZero(I+1,3));
            with InfAdic.procRef.Items[I] do
             begin
               trvwNFe.Items.AddChild(Node,'nProc='   +nProc) ;
               trvwNFe.Items.AddChild(Node,'indProc=' +indProcToStr(indProc));
             end;
          end;

         if (exporta.UFembarq <> '') then
          begin
            Node := trvwNFe.Items.AddChild(Nota,'exporta');
            trvwNFe.Items.AddChild(Node,'UFembarq='   +exporta.UFembarq) ;
            trvwNFe.Items.AddChild(Node,'xLocEmbarq=' +exporta.xLocEmbarq);
          end;

         if (compra.xNEmp <> '') then
          begin
            Node := trvwNFe.Items.AddChild(Nota,'compra');
            trvwNFe.Items.AddChild(Node,'xNEmp=' +compra.xNEmp) ;
            trvwNFe.Items.AddChild(Node,'xPed='  +compra.xPed);
            trvwNFe.Items.AddChild(Node,'xCont=' +compra.xCont);
          end;
     end;
       PageControl2.ActivePageIndex := 3;
     end;

  end; }
end;

procedure TFormNfe_Conf.lblMouseEnter(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold,fsUnderline];
end;

procedure TFormNfe_Conf.lblMouseLeave(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold];
end;

procedure TFormNfe_Conf.lblColaboradorClick(Sender: TObject);
begin
  ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/5', Nil, Nil, SW_NORMAL);
end;

procedure TFormNfe_Conf.lblPatrocinadorClick(Sender: TObject);
begin
  ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/35', Nil, Nil, SW_NORMAL);
end;

procedure TFormNfe_Conf.lblDoar1Click(Sender: TObject);
begin
  ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/14', Nil, Nil, SW_NORMAL);
end;

procedure TFormNfe_Conf.GerarNFe(NumNFe : String);
begin
 { with DM.ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     Ide.cNF       := DM.SDS_NFENr_nota.text; // StrToInt(NumNFe); //Caso n�o seja preenchido ser� gerado um n�mero aleat�rio pelo componente
     Ide.natOp     := DM.SDS_NFECFOP_DESC.TEXT;
    // Ide.indPag    := ipVista;
     if DM.Sds_PedidosTP.TEXT ='A' then
     begin
     Ide.indPag    := ipVista;
     end else
     if DM.Sds_PedidosTP.TEXT ='C' then
     begin
     Ide.indPag    := ipPrazo;
     end else
     begin
     Ide.indPag    := ipOutras;
     end;

     Ide.modelo    := 55;
     Ide.serie     := DM.SDS_NFESERIE_NF.AsInteger;
     Ide.nNF       := StrToInt(NumNFe);
     Ide.dEmi      := Date;
     Ide.dSaiEnt   := Date;
     Ide.hSaiEnt   := Now;
     Ide.tpNF      := tnSaida;
     Ide.tpEmis    := teNormal;
     //Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta vari�vel quando for para ambiente de produ��o
     if rgTipoAmb.ItemIndex = 0 then
      begin
      Ide.tpAmb     := taProducao;
      end else
     if rgTipoAmb.ItemIndex = 1 then
      begin
      Ide.tpAmb     := taHomologacao;
      end;
     Ide.verProc   := '1.0.0.0'; //Vers�o do seu sistema
     Ide.cUF       := NotaUtil.UFtoCUF(edtEmitUF.Text);
     Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
     Ide.finNFe    := fnNormal;

//Para NFe referenciada use os campos abaixo
{     with Ide.NFref.Add do
      begin
        refNFe       := ''; //NFe Eletronica

        RefNF.cUF    := 0;  // |
        RefNF.AAMM   := ''; // |
        RefNF.CNPJ   := ''; // |
        RefNF.modelo := 1;  // |- NFe Modelo 1/1A
        RefNF.serie  := 1;  // |
        RefNF.nNF    := 0;  // |

        RefNFP.cUF     := 0;  // |
        RefNFP.AAMM    := ''; // |
        RefNFP.CNPJCPF := ''; // |
        RefNFP.IE      := ''; // |- NF produtor Rural
        RefNFP.modelo  := ''; // |
        RefNFP.serie   := 1;  // |
        RefNFP.nNF     := 0;  // |

        RefECF.modelo  := ECFModRef2B; // |
        RefECF.nECF    := '';          // |- Cupom Fiscal
        RefECF.nCOO    := '';          // |
      end;
}
     { Emit.CNPJCPF           := edtEmitCNPJ.Text;
      Emit.IE                := edtEmitIE.Text;
      Emit.xNome             := edtEmitRazao.Text;
      Emit.xFant             := edtEmitFantasia.Text;

      Emit.EnderEmit.fone    := edtEmitFone.Text;
      Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
      Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
      Emit.EnderEmit.nro     := edtEmitNumero.Text;
      Emit.EnderEmit.xCpl    := edtEmitComp.Text;
      Emit.EnderEmit.xBairro := edtEmitBairro.Text;
      Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
      Emit.EnderEmit.xMun    := edtEmitCidade.Text;
      Emit.EnderEmit.UF      := edtEmitUF.Text;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';
      Emit.IM                := ''; // Preencher no caso de existir servi�os na nota
      Emit.CNAE              := ''; // Verifique na cidade do emissor da NFe se � permitido
                                    // a inclus�o de servi�os na NFe
      Emit.CRT               := crtRegimeNormal;

//Para NFe Avulsa preencha os campos abaixo
{      Avulsa.CNPJ    := '';
      Avulsa.xOrgao  := '';
      Avulsa.matr    := '';
      Avulsa.xAgente := '';
      Avulsa.fone    := '';
      Avulsa.UF      := '';
      Avulsa.nDAR    := '';
      Avulsa.dEmi    := now;
      Avulsa.vDAR    := 0;
      Avulsa.repEmi  := '';
      Avulsa.dPag    := now;             }

      // dados do destinat�rio
      {Dest.CNPJCPF           := DM.Sds_PedidosCPF_CNPJ.Text;
      Dest.IE                := '687138770110';
      Dest.ISUF              := '';
      Dest.xNome             := 'D.J. COM. E LOCA��O DE SOFTWARES LTDA - ME';

      Dest.EnderDest.Fone    := '1532599600';
      Dest.EnderDest.CEP     := 18270410;
      Dest.EnderDest.xLgr    := 'Pra�a Anita Costa';
      Dest.EnderDest.nro     := '0034';
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro := 'Centro';
      Dest.EnderDest.cMun    := 3554003;
      Dest.EnderDest.xMun    := 'Tatu�';
      Dest.EnderDest.UF      := 'SP';
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';   }
      // dados do destinat�rio
  {  Dest.CNPJCPF           := DM.Sds_PedidosCPF_CNPJ.Text;
    if DM.Sds_PedidosTIPO.Text = 'F' then
    begin
     Dest.IE               := 'ISENTO';
    end else
    BEGIN
    Dest.IE                := DM.Sds_PedidosRG_IE.text;
    end;
    Dest.xNome             := DM.Sds_PedidosNOME_CLIENTE.TEXT;
    Dest.ISUF              := '';
    Dest.EnderDest.CEP     := StrToIntDef((Copy(DM.Sds_PedidosCEP.Text, 1, 5))+Copy(DM.Sds_PedidosCEP.Text, 6, 3), 0);
    Dest.EnderDest.xLgr    := DM.Sds_PedidosEndereco.Text;
    Dest.EnderDest.nro     := DM.Sds_PedidosNUMERO.Text;
    Dest.EnderDest.xCpl    := '';
    Dest.EnderDest.xBairro := DM.Sds_PedidosBAIRRO.Text;
    Dest.EnderDest.cMun    := StrToIntDef(DM.Sds_PedidosCOD_IBGE.TEXT,0);
    Dest.EnderDest.xMun    := DM.Sds_PedidosCIDADE.Text;
    Dest.EnderDest.UF      := DM.Sds_PedidosUF.Text;
    Dest.EnderDest.Fone    := DM.Sds_PedidosFONE.TEXT;
    Dest.EnderDest.cPais   := 1058;
    Dest.EnderDest.xPais   := 'BRASIL';

//Use os campos abaixo para informar o endere�o de retirada quando for diferente do Remetente/Destinat�rio
{      Retirada.CNPJCPF := '';
      Retirada.xLgr    := '';
      Retirada.nro     := '';
      Retirada.xCpl    := '';
      Retirada.xBairro := '';
      Retirada.cMun    := 0;
      Retirada.xMun    := '';
      Retirada.UF      := '';}

//Use os campos abaixo para informar o endere�o de entrega quando for diferente do Remetente/Destinat�rio
{      Entrega.CNPJCPF := '';
      Entrega.xLgr    := '';
      Entrega.nro     := '';
      Entrega.xCpl    := '';
      Entrega.xBairro := '';
      Entrega.cMun    := 0;
      Entrega.xMun    := '';
      Entrega.UF      := '';}

//FDicionando Produtos
  {  DM.sds_nfe_itens.First;
    Contador := DM.sds_nfe_itens.RecordCount;
    For E:=1 to Contador do
     begin
      with Det.Add do
       begin
         Prod.nItem    := DM.sds_nfe_itensITEN.AsInteger; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    := DM.sds_nfe_itensCODIGO_PROD.text;
         Prod.cEAN     := DM.sds_nfe_itensCOD_PRODUTO.text;
         Prod.xProd    := DM.sds_nfe_itensDESCRICAO_PRODUTO.TEXT;
         Prod.NCM      := DM.sds_nfe_itensCOD_NCM.Text; // Tabela NCM dispon�vel em
         Prod.EXTIPI   := '';
         Prod.CFOP     := dm.sds_nfe_itensCFOP.text;;
         Prod.uCom     := dm.sds_nfe_itensDESC_UNIDADE.text;
         Prod.qCom     := StrToFloatDef(dm.sds_nfe_itensQT_PRODUTO.Text,0.00);
         Prod.vUnCom   := StrToFloatDef(dm.sds_nfe_itensVL_UNITARIO.Text,0.00);
         Prod.vProd    := StrToFloatDef(dm.sds_nfe_itensVL_TOTAL.Text,0.00);

         Prod.cEANTrib  := '';
         Prod.uTrib     := dm.sds_nfe_itensDESC_UNIDADE.text;
         Prod.qTrib     := StrToFloatDef(dm.sds_nfe_itensQT_PRODUTO.Text,0.00);
         Prod.vUnTrib   := StrToFloatDef(dm.sds_nfe_itensVL_BASE_ICM.Text,0.00);;

         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         infAdProd      := '';
         InfAdic.infCpl := 'Vendedor: '+ DM.Sds_Pedidosusuario.text+';'+'Cond.Pagamento: '+ DM.Sds_PedidosPAGAMENTO.text+';'+'OBS: '+FormGefaNFe.edit6.text;

         //Declara��o de Importa��o. Pode ser FDicionada v�rias atrav�s do comando Prod.DI.Add
{         with Prod.DI.Add do
          begin
            nDi         := '';
            dDi         := now;
            xLocDesemb  := '';
            UFDesemb    := '';
            dDesemb     := now;
            cExportador := '';

            with FDi.Add do
             begin
               nAdicao     := 1;
               nSeqAdi     := 1;
               cFabricante := '';
               vDescDI     := 0;
             end;
          end;
}
//Campos para venda de ve�culos novos
{         with Prod.veicProd do
          begin
            tpOP    := toVendaConcessionaria;
            chassi  := '';
            cCor    := '';
            xCor    := '';
            pot     := '';
            Cilin   := '';
            pesoL   := '';
            pesoB   := '';
            nSerie  := '';
            tpComb  := '';
            nMotor  := '';
            CMT     := '';
            dist    := '';
            RENAVAM := '';
            anoMod  := 0;
            anoFab  := 0;
            tpPint  := '';
            tpVeic  := 0;
            espVeic := 0;
            VIN     := '';
            condVeic := cvAcabado;
            cMod    := '';
          end;
}
//Campos espec�ficos para venda de medicamentos
{         with Prod.med.Add do
          begin
            nLote := '';
            qLote := 0 ;
            dFab  := now ;
            dVal  := now ;
            vPMC  := 0 ;
          end;  }
//Campos espec�ficos para venda de armamento
{         with Prod.arma.Add do
          begin
            nSerie := 0;
            tpArma := taUsoPermitido ;
            nCano  := 0 ;
            descr  := '' ;
          end;      }
//Campos espec�ficos para venda de combust�vel(distribuidoras)
{         with Prod.comb do
          begin
            cProdANP := 0;
            CODIF    := '';
            qTemp    := 0;

            CIDE.qBCprod   := 0 ;
            CIDE.vAliqProd := 0 ;
            CIDE.vCIDE     := 0 ;

            ICMS.vBCICMS   := 0 ;
            ICMS.vICMS     := 0 ;
            ICMS.vBCICMSST := 0 ;
            ICMS.vICMSST   := 0 ;

            ICMSInter.vBCICMSSTDest := 0 ;
            ICMSInter.vICMSSTDest   := 0 ;

            ICMSCons.vBCICMSSTCons := 0 ;
            ICMSCons.vICMSSTCons   := 0 ;
            ICMSCons.UFcons        := '' ;
          end;}

    {     with Imposto do
          begin
            with ICMS do
             begin
               CST          := cst90;
               ICMS.orig    := oeNacional;
               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := StrToFloatDef(DM.sds_nfe_itensVL_TOTAL.Text,0.00);
               ICMS.pICMS   := StrToFloatDef(DM.sds_nfe_itensALIQ_ICM.Text,0.00);
               ICMS.vICMS   := StrToFloatDef(DM.sds_nfe_itensVL_ICM.Text,0.00);
               ICMS.modBCST := dbisMargemValorAgregado;
               ICMS.pMVAST  := 0;
               ICMS.pRedBCST:= 0;
               ICMS.vBCST   := 0;
               ICMS.pICMSST := 0;
               ICMS.vICMSST := 0;
               ICMS.pRedBC  := 0;
             end;

            with IPI do
             begin
               CST      := ipi99 ;
               clEnq    := '';
               CNPJProd := '';
               cSelo    := '';
               qSelo    := 0;
               cEnq     := '';

               vBC    := 0;
               qUnid  := 0;
               vUnid  := 0;
               pIPI   := 0;
               vIPI   := 0;
             end;

            with II do
             begin
               vBc      := 0;
               vDespAdu := 0;
               vII      := 0;
               vIOF     := 0;
             end;

            with PIS do
             begin
               CST      := pis99;
               PIS.vBC  := 0;
               PIS.pPIS := 0;
               PIS.vPIS := 0;

               PIS.qBCProd   := 0;
               PIS.vAliqProd := 0;
               PIS.vPIS      := 0;
             end;

            with PISST do
             begin
               vBc       := 0;
               pPis      := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vPIS      := 0;
             end;

            with COFINS do
             begin
               CST            := cof99;
               COFINS.vBC     := 0;
               COFINS.pCOFINS := 0;
               COFINS.vCOFINS := 0;

               COFINS.qBCProd   := 0;
               COFINS.vAliqProd := 0;
             end;

            with COFINSST do
             begin
               vBC       := 0;
               pCOFINS   := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vCOFINS   := 0;
             end;
//Grupo para servi�os
{            with ISSQN do
             begin
               vBC       := 0;
               vAliq     := 0;
               vISSQN    := 0;
               cMunFG    := 0;
               cListServ := 0; // Preencha este campo usando a tabela dispon�vel
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;}
        {  end;
       end ;
       DM.sds_nfe_itens.Next;
   end;

      Total.ICMSTot.vBC     := StrToFloatDef(DM.SDS_NFEVL_BASE_ICM.Text,0.00);
      Total.ICMSTot.vICMS   := StrToFloatDef(DM.SDS_NFEVL_ICM.Text,0.00);
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := StrToFloatDef(DM.SDS_NFEVL_MERCADORIAS.Text,0.00);
      Total.ICMSTot.vFrete  := StrToFloatDef(DM.SDS_NFEVL_FRETE.Text,0.00);
      Total.ICMSTot.vSeg    := StrToFloatDef(DM.SDS_NFEVL_SEGURO.Text,0.00);
      Total.ICMSTot.vDesc   := StrToFloatDef(DM.SDS_NFEVL_DESCONTOS.Text,0.00);
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := StrToFloatDef(DM.SDS_NFEVL_IPI.Text,0.00);
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := StrToFloatDef(DM.SDS_NFEVL_ACRESCIMOS.Text,0.00);
      Total.ICMSTot.vNF     := StrToFloatDef(DM.SDS_NFEVL_TOTAL.Text,0.00);

      Total.ISSQNtot.vServ   := StrToFloatDef(DM.SDS_NFEVL_SERVICOS.Text,0.00)
      Total.ISSQNTot.vBC     := StrToFloatDef(DM.SDS_NFEVL_BASE_ISS.Text,0.00);
      Total.ISSQNTot.vISS    := StrToFloatDef(DM.SDS_NFEVL_ISS.Text,0.00);
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;

      Transp.modFrete := mfContaEmitente;
      Transp.Transporta.CNPJCPF  := '';
      Transp.Transporta.xNome    := '';
      Transp.Transporta.IE       := '';
      Transp.Transporta.xEnder   := '';
      Transp.Transporta.xMun     := '';
      Transp.Transporta.UF       := '';

      Transp.retTransp.vServ    := 0;
      Transp.retTransp.vBCRet   := 0;
      Transp.retTransp.pICMSRet := 0;
      Transp.retTransp.vICMSRet := 0;
      Transp.retTransp.CFOP     := '';
      Transp.retTransp.cMunFG   := 0;

      Transp.veicTransp.placa := '';
      Transp.veicTransp.UF    := '';
      Transp.veicTransp.RNTC  := '';
//Dados do Reboque
{      with Transp.Reboque.Add do
       begin
         placa := '';
         UF    := '';
         RNTC  := '';
       end;}
 {
      with Transp.Vol.Add do
       begin
         qVol  := DM.SDS_NFEQt_volnumes.Text; // 1;
         esp   := DM.SDS_NFEespecie_volnumes.Text; //'Especie';
         marca := DM.SDS_NFEMarca_volnumes.Text; //'Marca';
         nVol  := DM.SDS_NFENr_volnumes.Text; //'Numero';
         pesoL := DM.SDS_NFEPEso_liquido.Text; //100;
         pesoB := DM.SDS_NFEpeso_liquido.Text''; //110;

         //Lacres do volume. Pode ser FDicionado v�rios
         //Lacres.Add.nLacre := '';
       end;

      Cobr.Fat.nFat  := 'Numero da Fatura';
      Cobr.Fat.vOrig := 100 ;
      Cobr.Fat.vDesc := 0 ;
      Cobr.Fat.vLiq  := 100 ;

      with Cobr.Dup.Add do
       begin
         nDup  := '1234';
         dVenc := now+10;
         vDup  := 100;
       end;

      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  '';

      with InfAdic.obsCont.Add do
       begin
         xCampo := 'ObsCont';
         xTexto := 'Texto';
       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo := 'ObsFisco';
         xTexto := 'Texto';
       end;
//Processo referenciado
{     with InfAdic.procRef.Add do
       begin
         nProc := '';
         indProc := ipSEFAZ;
       end;                 }

     { exporta.UFembarq   := '';;
      exporta.xLocEmbarq := '';

      compra.xNEmp := '';
      compra.xPed  := '';
      compra.xCont := '';
   end;             }

end;

procedure TFormNfe_Conf.btnConsultarChaveClick(Sender: TObject);
var
 vChave : String;
begin

  if not(InputQuery('WebServices Consultar', 'Chave da NF-e:', vChave)) then
    exit;

//DM.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
//DM.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;

  DM.ACBrNFe1.WebServices.Consulta.NFeChave := vChave;
  DM.ACBrNFe1.WebServices.Consulta.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Consulta.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Consulta.RetornoWS);
  LoadXML(MemoResp, WBResposta);
end;

procedure TFormNfe_Conf.btnCancelarChaveClick(Sender: TObject);
var
 Chave, Protocolo, Justificativa : string;
begin
 { if not(InputQuery('WebServices Cancelamento', 'Chave da NF-e', Chave)) then
     exit;
  if not(InputQuery('WebServices Cancelamento', 'Protocolo de Autoriza��o', Protocolo)) then
     exit;
  if not(InputQuery('WebServices Cancelamento', 'Justificativa', Justificativa)) then
     exit;
  DM.ACBrNFe1.WebServices.Cancelamento.NFeChave      := Chave;
  DM.ACBrNFe1.WebServices.Cancelamento.Protocolo     := Protocolo;
  DM.ACBrNFe1.WebServices.Cancelamento.Justificativa := Justificativa;
  DM.ACBrNFe1.WebServices.Cancelamento.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Cancelamento.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Cancelamento.RetornoWS);
  LoadXML(MemoResp, WBResposta);  }
end;

procedure TFormNfe_Conf.BitBtn1Click(Sender: TObject);
begin
{ if Application.MESSAGEBOX('Confirma a Importa��o dos Dados da Empresa, Ser�o Substituidos os dados Atuais?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
  edtEmitCNPJ.Text        := dm.SDS_EmpresaCNPJ.text;
  edtEmitIE.Text          := dm.SDS_EmpresaIE.text;
  edtEmitRazao.Text       := DM.SDS_EmpresaRAZAO_SOCIAL.Text;
  edtEmitFantasia.Text    := DM.SDS_EmpresaNOME_FANTASIA.text;
  edtEmitFone.Text        := DM.SDS_EmpresaTELEFONE.text;
  edtEmitCEP.Text         := RemoveChar(DM.SDS_EmpresaCEP.text);
  edtEmitLogradouro.Text  := DM.SDS_EmpresaENDERECO.text;
  edtEmitNumero.Text      := DM.SDS_EmpresaNUMERO.text;
  edtEmitBairro.Text      := DM.SDS_EmpresaBAIRRO.text;
  edtEmitCodCidade.Text   := DM.SDS_EmpresaCOD_CID_IBGE.text;
  edtEmitCidade.Text      := DM.SDS_EmpresaCIDADE.text;
  edtEmitUF.Text          := DM.SDS_EmpresaUF.text;
  end; }
end;

procedure TFormNfe_Conf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormNfe_Conf := nil;
end;

procedure TFormNfe_Conf.btnAdicionarProtNFeClick(Sender: TObject);
var
  NomeArq : String;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    DM.ACBrNFe1.Consultar;
    ShowMessage(DM.ACBrNFe1.WebServices.Consulta.Protocolo);
    MemoResp.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.Consulta.RetWS);
    memoRespWS.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.Consulta.RetornoWS);
    LoadXML(MemoResp, WBResposta);
    NomeArq := OpenDialog1.FileName;
    if pos(UpperCase('-nfe.xml'),UpperCase(NomeArq)) > 0 then
       NomeArq := StringReplace(NomeArq,'-nfe.xml','-procNfe.xml',[rfIgnoreCase]);
    DM.ACBrNFe1.NotasFiscais.Items[0].GravarXml(NomeArq);
    ShowMessage('Arquivo gravado em: '+NomeArq);
    memoLog.Lines.Add('Arquivo gravado em: '+NomeArq);
  end;
end;

procedure TFormNfe_Conf.btnCarregarXMLEnviarClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

 {   with DM.ACBrNFe1.NotasFiscais.Items[0].NFe do
     begin
       Emit.CNPJCPF           := edtEmitCNPJ.Text;
       Emit.IE                := edtEmitIE.Text;
       Emit.xNome             := edtEmitRazao.Text;
       Emit.xFant             := edtEmitFantasia.Text;

       Emit.EnderEmit.fone    := edtEmitFone.Text;
       Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
       Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
       Emit.EnderEmit.nro     := edtEmitNumero.Text;
       Emit.EnderEmit.xCpl    := edtEmitComp.Text;
       Emit.EnderEmit.xBairro := edtEmitBairro.Text;
       Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
       Emit.EnderEmit.xMun    := edtEmitCidade.Text;
       Emit.EnderEmit.UF      := edtEmitUF.Text;
       Emit.enderEmit.cPais   := 1058;
       Emit.enderEmit.xPais   := 'BRASIL';

       Emit.IEST              := '';
       Emit.IM                := ''; // Preencher no caso de existir servi�os na nota
       Emit.CNAE              := ''; // Verifique na cidade do emissor da NFe se � permitido
                                    // a inclus�o de servi�os na NFe
       Emit.CRT               := crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
    end;}
    DM.ACBrNFe1.NotasFiscais.GerarNFe;
    DM.ACBrNFe1.Enviar(1,True);

    MemoResp.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.Retorno.RetWS);
    memoRespWS.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.Retorno.RetornoWS);
    LoadXML(MemoResp, WBResposta);

   MemoDados.Lines.Add('');
   MemoDados.Lines.Add('Envio NFe');
   MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(DM.ACBrNFe1.WebServices.Retorno.TpAmb));
   MemoDados.Lines.Add('verAplic: '+ DM.ACBrNFe1.WebServices.Retorno.verAplic);
   MemoDados.Lines.Add('cStat: '+ IntToStr(DM.ACBrNFe1.WebServices.Retorno.cStat));
   MemoDados.Lines.Add('cUF: '+ IntToStr(DM.ACBrNFe1.WebServices.Retorno.cUF));
   MemoDados.Lines.Add('xMotivo: '+ DM.ACBrNFe1.WebServices.Retorno.xMotivo);
   MemoDados.Lines.Add('cMsg: '+ IntToStr(DM.ACBrNFe1.WebServices.Retorno.cMsg));
   MemoDados.Lines.Add('xMsg: '+ DM.ACBrNFe1.WebServices.Retorno.xMsg);
   MemoDados.Lines.Add('Recibo: '+ DM.ACBrNFe1.WebServices.Retorno.Recibo);
   MemoDados.Lines.Add('Protocolo: '+ DM.ACBrNFe1.WebServices.Retorno.Protocolo);
  end;
end;

procedure TFormNfe_Conf.btnCartadeCorrecaoClick(Sender: TObject);
var
 Chave, idLote, codOrgao, CNPJ, nSeqEvento, Correcao, data : string;
begin
{  if not(InputQuery('WebServices Carta de Corre��o', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
{  if not ValidarChave(Chave) then
   begin
     MessageDlg('Chave Inv�lida.',mtError,[mbok],0);
     exit;
   end;   }
  idLote := '1';
 // if not(InputQuery('WebServices Carta de Corre��o', 'Identificador de controle do Lote de envio do Evento', idLote)) then
 //    exit;
{  codOrgao := copy(Chave,1,2);
  if not(InputQuery('WebServices Carta de Corre��o', 'C�digo do �rg�o de recep��o do Evento', codOrgao)) then
     exit;
  CNPJ := copy(Chave,7,14);
  if not(InputQuery('WebServices Carta de Corre��o', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;
  nSeqEvento := '1';
  if not(InputQuery('WebServices Carta de Corre��o', 'Sequencial do evento para o mesmo tipo de evento', nSeqEvento)) then
     exit;
  Correcao := 'Corre��o a ser considerada, texto livre. A corre��o mais recente substitui as anteriores.';
  if not(InputQuery('WebServices Carta de Corre��o', 'Corre��o a ser considerada', Correcao)) then
     exit;
   data := DateTimeToStr(now);
  if not(InputQuery('WebServices Carta de Corre��o', 'Corre��o a ser considerada', data)) then
     exit;

  DM.ACBrNFe1.CartaCorrecao.CCe.Evento.Clear;
  with DM.ACBrNFe1.CartaCorrecao.CCe.Evento.Add do
   begin
     idLote           := idLote;
     infEvento.chNFe := Chave;
     infEvento.cOrgao := StrToInt(codOrgao);
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := StrToDateTime(data);
     infEvento.tpEvento := 110110;
     infEvento.nSeqEvento := StrToInt(nSeqEvento);
     infEvento.versaoEvento := '1.00';
     infEvento.detEvento.descEvento := 'Carta de Corre��o';
     infEvento.detEvento.xCorrecao := Correcao;
     infEvento.detEvento.xCondUso := ''; //Texto fixo conforme NT 2011.003 -  http://www.nfe.fazenda.gov.br/portal/exibirArquivo.aspx?conteudo=tsiloeZ6vBw=
   end;
  DM.ACBrNFe1.EnviarCartaCorrecao(StrToInt(idLote));

  MemoResp.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.CartaCorrecao.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(DM.ACBrNFe1.WebServices.CartaCorrecao.RetornoWS);
  LoadXML(MemoResp, WBResposta); }
end;


procedure TFormNfe_Conf.edtLogoMarcaEnter(Sender: TObject);
begin
DM.SDS_CONFIGURACOES.Edit;
end;

procedure TFormNfe_Conf.edtPathLogsEnter(Sender: TObject);
begin
DM.SDS_CONFIGURACOES.Edit;
end;

procedure TFormNfe_Conf.edtNumSerieEnter(Sender: TObject);
begin
DM.SDS_CONFIGURACOES.Edit;
end;

procedure TFormNfe_Conf.edtSenhaEnter(Sender: TObject);
begin
DM.SDS_CONFIGURACOES.Edit;
end;

procedure TFormNfe_Conf.FormShow(Sender: TObject);
begin
DM.SDS_CONFIGURACOES.Active := FALSE;
DM.SDS_CONFIGURACOES.Active := True;
DM.SDS_CONFIGURACOES.Edit;


dm.ConfiguraNFe;
{DM.ACBrNFeDANFEFR1.FastFile := 'C:\Siace\rel\DANFeRetrato.fr3';
DM.ACBrNFeDANFEFR1.FastFileEvento := 'C:\Siace\rel\EVENTOS.fr3';  }
end;

procedure TFormNfe_Conf.btnEnviarEventoClick(Sender: TObject);
var
 Para : String;
 CC, Evento: Tstrings;
begin
  if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
    exit;

  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione ao Evento';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    Evento := TStringList.Create;
    Evento.Clear;
    Evento.Add(OpenDialog1.FileName);
    DM.ACBrNFe1.EventoNFe.Evento.Clear;
    DM.ACBrNFe1.EventoNFe.LerXML(OpenDialog1.FileName) ;
    CC:=TstringList.Create;
    CC.Add('andrefmoraes@gmail.com'); //especifique um email v�lido
    CC.Add('anfm@zipmail.com.br');    //especifique um email v�lido
   { DM.ACBrNFe1.EnviarEmailEvento(edtSmtpHost.Text
                             , edtSmtpPort.Text
                             , edtSmtpUser.Text
                             , edtSmtpPass.Text
                             , edtSmtpUser.Text
                             , Para
                             , edtEmailAssunto.Text
                             , mmEmailMsg.Lines
                             , cbEmailSSL.Checked // SSL - Conex�o Segura
                             , True //Enviar PDF junto
                             , CC //Lista com emails que ser�o enviado c�pias - TStrings
                             , Evento // Lista de anexos - TStrings
                             , False  //Pede confirma��o de leitura do email
                             , False  //Aguarda Envio do Email(n�o usa thread)
                             , 'NFe2' // Nome do Rementente
                             , cbEmailSSL.Checked ); // Auto TLS  }
    CC.Free;
    Evento.Free;
  end;
end;

procedure TFormNfe_Conf.btnImprimirCCeClick(Sender: TObject);
var
 CCeImp1: TCCeImp;
begin
  {OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.EventoNFe.Evento.Clear;
    DM.ACBrNFe1.EventoNFe.LerXML(OpenDialog1.FileName) ;
    DM.ACBrNFe1.ImprimirEvento;
  end;     }
//  LoadXML(MemoResp, WBResposta);


 begin
 OpenDialog1.Title := 'Selecione a NFE';
 OpenDialog1.DefaultExt := '*.XML';
 OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
 if OpenDialog1.Execute then
 begin
 OpenDialog2.Title := 'Selecione o Evento';
  OpenDialog2.DefaultExt := '*.XML';
  OpenDialog2.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog2.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
 if OpenDialog2.Execute then
 begin
 CCeImp1 := TCCeImp.Create(nil);
 //CCeImp1.defineSaida(tps_PDF, ''+OpenDialog2.FileName+'.pdf'); // tps_PDF ou tps_Print
 CCeImp1.defineSaida(tps_preview,''+OpenDialog2.FileName+'.pdf'); // tps_PDF ou tps_Print ou tps_preview
 CCeImp1.defineLayOut(fp_Portrait); // implementado impress�o retrato
 CCeImp1.defineXMLNFe(OpenDialog1.FileName); // XML da NFe corrigida
 CCeImp1.defineXMLCCe(OpenDialog2.FileName); // XML da CCe
 CCeImp1.defineSoftHouse('Siace Sistemas');
 try
 CCeImp1.Execute;
 except
 // Tratamento
 end;
 CCeImp1.Free;
 end;
end;
end;

end;

procedure TFormNfe_Conf.Button1Click(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
  end;
    
  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.EventoNFe.Evento.Clear;
    DM.ACBrNFe1.EventoNFe.LerXML(OpenDialog1.FileName) ;
    DM.ACBrNFe1.ImprimirEvento;
  end;
end;

procedure TFormNfe_Conf.Button2Click(Sender: TObject);
var
  url, tpAmb, cDest, Hash_SHA1 : string;

begin
// DM.ACBrNFeDANFEFR1.FastFile := 'C:\Siace\rel\DANFeNFCe.fr3';
// DM.ACBrNFeDANFEFR1.tipoDanfe := tiNFCe;
// DM.ACBrNFeDANFEFR1.Detalhado := True;
// DM.ACBrNFeDANFEFR1.ShowDialog := False;
// DM.ACBrNFeDANFEFR1.MostrarPreview := False;

  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
   { if DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
     begin
       DM.ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
       DM.ACBrNFe1.WebServices.ConsultaDPEC.Executar;
       DM.ACBrNFe1.DANFE.ProtocoloNFe := DM.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(DM.ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
     end;  }

         {   if DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb = taProducao then
              URL := 'http://www.sefaz.mt.gov.br/nfce/consultanfce?'
            else
              URL := 'http://homologacao.sefaz.mt.gov.br/nfce/consultanfce?';

            if DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb = taProducao then
            begin
              tpAmb := '1';
              cDest := Iif(Length(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF) > 0, DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF, '');

            Memo.Lines.Clear;
            Memo.Text :=  URL +
                          'chNFe='     + DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe +
                          '&nVersao='  + '100' +
                          '&tpAmb='    + tpAmb +
                          Iif((Length(cDest) > 0),('&cDest=' + cDest), '') +
                          '&dhEmi='    + StringToHex(DateTimeTodhUTC(dm.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi,GetUTC(dm.ACBrNFe1.NotasFiscais.Items[0].NFe.emit.enderEmit.UF, dm.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi))) +
                          '&vNF='      + TrocaVirgPPto(FloatToStr(dm.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF)) +
                          '&vICMS='    + TrocaVirgPPto(FloatToStr(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS)) +
                          '&digVal='   + StringToHex(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.digVal) +
                          '&cIdToken=' + DM.sds_configuracoestoken.text;

            Hash_SHA1 := DM.ACBrEAD1.CalcularHash(UTF8Encode(Memo.Text),dgstSHA1);
            Memo.Text := Memo.Text + '&cHashQRCode=' + Hash_SHA1;


           // iRetorno := eGerarQrCodeArquivo_DUAL_DarumaFramework('C:\siace\qr.bmp', PAnsiChar(Memo.Text));

            DM.ACBrNFeDANFEFR1.ImgQrCode := 'C:\siace\qr.bmp';
          //  DM.ACBrNFeDANFEFR1.urlconsultapublica := Memo.Text;
            end else
            begin
            tpAmb := '2';
            cDest := Iif(Length(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF) > 0, DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF, '');

            Memo.Lines.Clear;
            Memo.Text :=  URL +
                          'chNFe='     + DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe +
                          '&nVersao='  + '100' +
                          '&tpAmb='    + tpAmb +
                          Iif((Length(cDest) > 0),('&cDest=' + cDest), '') +
                          '&dhEmi='    + StringToHex(DateTimeTodhUTC(dm.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi,GetUTC(dm.ACBrNFe1.NotasFiscais.Items[0].NFe.emit.enderEmit.UF, dm.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi))) +
                          '&vNF='      + TrocaVirgPPto(FloatToStr(dm.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF)) +
                          '&vICMS='    + TrocaVirgPPto(FloatToStr(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS)) +
                          '&digVal='   + StringToHex(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.digVal) +
                          '&cIdToken=' + '000001';

            Hash_SHA1 := DM.ACBrEAD1.CalcularHash(UTF8Encode(Memo.Text),dgstSHA1);
            Memo.Text := Memo.Text + '&cHashQRCode=' + Hash_SHA1;
            end;


         // eGerarQrCodeArquivo_DUAL_DarumaFramework('C:\Siace\qr.bmp', Memo.Text);
           // limpar
            {if FBarcodeComponent <> nil then TBarcode2D_QRCode(FBarcodeComponent).Clear;
            imgBarcode.Canvas.Brush.Color := clWhite;
            imgBarcode.Canvas.FillRect(imgBarcode.ClientRect);
            //gera
             imgBarcode.Picture.Bitmap.Width := imgBarcode.Width;
             imgBarcode.Picture.Bitmap.Height := imgBarcode.Height;
              if FBarcodeComponent <> nil then
              begin
                Barcode2D_QRCode1.Barcode := Memo.Text;
                Barcode2D_QRCode1.Draw;
              //  TBarcode2D_QRCode(FBarcodeComponent).Draw;
              end;
              Repaint; }

              //salvar

          {   NotaUtil.GetURLQRCode

              Barcode2D_QRCode1.Barcode := Memo.Text;
            //   Barcode2D_QRCode1.DrawToSize(400,400);
               Barcode2D_QRCode1.Draw;

               Save2D_Bmp1.Save('c:\siace\qr.bmp');
             //  Save2D_Png1.Save('c:\siace\qr.png');

            DM.ACBrNFeDANFEFR1.ImgQrCode := 'C:\Siace\qr.bmp';

         //   dm.ACBrNFeDANFEFR1.urlconsultapublica := Memo.Text;    }


            DM.ACBrNFe1.NotasFiscais.Imprimir;

    end;

end;

procedure TFormNfe_Conf.cbCryptLibChange(Sender: TObject);
begin
   try
    if cbCryptLib.ItemIndex <> -1 then
      DM.ACBrNFe1.Configuracoes.Geral.SSLCryptLib := TSSLCryptLib(cbCryptLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TFormNfe_Conf.cbHttpLibChange(Sender: TObject);
begin
   try
    if cbHttpLib.ItemIndex <> -1 then
      DM.ACBrNFe1.Configuracoes.Geral.SSLHttpLib := TSSLHttpLib(cbHttpLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TFormNfe_Conf.cbSSLLibChange(Sender: TObject);
begin
  try
    if cbSSLLib.ItemIndex <> -1 then
      DM.ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(cbSSLLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TFormNfe_Conf.cbXmlSignLibChange(Sender: TObject);
begin
   try
    if cbXmlSignLib.ItemIndex <> -1 then
      DM.ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

end.
