unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, OleCtrls, SHDocVw, stdActns,
  ShellAPI, ShlObj, IniFiles, Gauges;

type
  TF_downloadnfe = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PanTitulo: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    CheckProxy: TCheckBox;
    Label1: TLabel;
    EditProxyHost: TEdit;
    EditProxyPort: TEdit;
    Label2: TLabel;
    EditProxyPass: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EditProxyUser: TEdit;
    Image2: TImage;
    GroupBox2: TGroupBox;
    EditCertSerialNumber: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    ButBuscarCert: TBitBtn;
    GroupBox3: TGroupBox;
    EditLicencaLeitorCaptcha: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    EditDLLLicena: TEdit;
    Panel1: TPanel;
    Label9: TLabel;
    EditChave: TEdit;
    ImgCaptcha: TImage;
    ButCaptcha: TBitBtn;
    EditCaptcha: TEdit;
    Label10: TLabel;
    ButBaixar: TBitBtn;
    ShapeCaptcha: TShape;
    EditPasta: TEdit;
    Label11: TLabel;
    CheckHttps: TCheckBox;
    MemoListaChaves: TMemo;
    Label12: TLabel;
    Gauge1: TGauge;
    Shape1: TShape;
    ImgCaptcha2: TImage;
    ButCaptcha2: TBitBtn;
    ButBaixar2: TBitBtn;
    EditCaptcha2: TEdit;
    Label13: TLabel;
    BitBtn1: TBitBtn;
    EditPasta2: TEdit;
    Label14: TLabel;
    ButLerCaptcha: TBitBtn;
    Label15: TLabel;
    EditPosicao: TEdit;
    LabQtdLinhas: TLabel;
    ButImprimir: TBitBtn;
    ButPDF: TBitBtn;
    SaveDialog1: TSaveDialog;
    Timer1: TTimer;
    Panel2: TPanel;
    Web1: TWebBrowser;
    TabSheet3: TTabSheet;
    MemoListaChavesAuto: TMemo;
    Label16: TLabel;
    Gauge2: TGauge;
    ButBaixarXMLAuto: TBitBtn;
    EditPasta3: TEdit;
    Label17: TLabel;
    BitBtn3: TBitBtn;
    MemoLogs: TMemo;
    Label18: TLabel;
    LabQtdLinhasAuto: TLabel;
    procedure ButCaptchaClick(Sender: TObject);
    procedure CheckProxyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckHttpsClick(Sender: TObject);
    procedure ButBuscarCertClick(Sender: TObject);
    procedure ButBaixarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditDLLLicenaChange(Sender: TObject);
    procedure ButCaptcha2Click(Sender: TObject);
    procedure ButBaixar2Click(Sender: TObject);
    procedure EditPastaChange(Sender: TObject);
    procedure ButLerCaptchaClick(Sender: TObject);
    procedure EditCaptchaKeyPress(Sender: TObject; var Key: Char);
    procedure EditPosicaoExit(Sender: TObject);
    procedure MemoListaChavesChange(Sender: TObject);
    procedure EditCaptcha2KeyPress(Sender: TObject; var Key: Char);
    procedure EditPastaDblClick(Sender: TObject);
    procedure ButImprimirClick(Sender: TObject);
    procedure ButPDFClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButBaixarXMLAutoClick(Sender: TObject);
    procedure MemoListaChavesAutoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_downloadnfe: TF_downloadnfe;
  Ini: TIniFile;

implementation

uses
  JPEG, utils, UTDownloadXMLNFeDLL, U_Carregando, ModulodeDados;

var
  BaixarXMLNFe: TDownloadXMLNFeDLL;  

{$R *.dfm}

procedure TF_downloadnfe.ButBaixar2Click(Sender: TObject);
  procedure Pular;
  begin
    if StrToIntDef(EditPosicao.Text, 1) < MemoListaChaves.Lines.Count then begin
      EditPosicao.Text:= IntToStr(StrToIntDef(EditPosicao.Text, 1) + 1);
      EditPosicaoExit(Sender);
      ButCaptcha2Click(Sender);
    end else
      MsgInf('A lista chegou ao FIM.');
  end;

  var
    Arquivo: String;
begin
  F_Carregando.Show;
  try
    EditChave.Text:= MemoListaChaves.Lines.Strings[StrToIntDef(EditPosicao.Text, 1) -1];
    EditCaptcha.Text:= EditCaptcha2.Text;

    Arquivo:= EditPasta.Text + '\' + StrNumeros(EditChave.Text) + '.xml';


    if Trim(EditCertSerialNumber.Text) <> '' then begin

      //********** BAIXANDO NO MODO COM CERTIFICADO DIGITAL **********************
      if BaixarXMLNFe.BaixarXMLNFeComCert(EditChave.Text, EditCaptcha.Text, Arquivo) then begin
        Web1.Navigate(Arquivo);
        Pular;
      end else begin
        MsgInf(BaixarXMLNFe.Msg);
        ButCaptcha2Click(Sender);
      end;
      //********** BAIXANDO NO MODO COM CERTIFICADO DIGITAL **********************

    end else begin

      //********** BAIXANDO NO MODO SEM CERTIFICADO DIGITAL **********************
      if BaixarXMLNFe.BaixarXMLNFeSemCert(EditChave.Text, EditCaptcha.Text, Arquivo) then begin
        Web1.Navigate(Arquivo);
        Pular;
      end else begin
        MsgInf(BaixarXMLNFe.Msg);
        ButCaptcha2Click(Sender);
      end;
      //********** BAIXANDO NO MODO SEM CERTIFICADO DIGITAL **********************

    end;
  finally
    F_Carregando.Close;
  end;
end;

procedure TF_downloadnfe.ButBaixarClick(Sender: TObject);
  var
    Arquivo: String;

      CNPJ, ultNSU, ANSU, sUltimoNSU: string;
begin
{  F_Carregando.Show;
  try
    Arquivo:= EditPasta.Text + '\' + StrNumeros(EditChave.Text) + '.xml';

    if Trim(EditCertSerialNumber.Text) <> '' then begin

      //********** BAIXANDO NO MODO COM CERTIFICADO DIGITAL **********************
      if BaixarXMLNFe.BaixarXMLNFeComCert(EditChave.Text, EditCaptcha.Text, Arquivo) then begin
        Web1.Navigate(Arquivo);
        MsgInf('Baixado com certificado digital com validade jurídica.');
      end else
        MsgInf(BaixarXMLNFe.Msg);
      //********** BAIXANDO NO MODO COM CERTIFICADO DIGITAL **********************
    end else begin

      //********** BAIXANDO NO MODO SEM CERTIFICADO DIGITAL **********************
      if BaixarXMLNFe.BaixarXMLNFeSemCert(EditChave.Text, EditCaptcha.Text, Arquivo) then begin
        Web1.Navigate(Arquivo);
        MsgInf('Baixado sem certificado digital sem validade jurídica.');
      end else
        MsgInf(BaixarXMLNFe.Msg);
      //********** BAIXANDO NO MODO SEM CERTIFICADO DIGITAL **********************
    end;

    EditCaptcha.Clear;
  finally
    F_Carregando.Close;
  end;  }




//  CNPJ := '';
//  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'CNPJ/CPF do interessado no DF-e', CNPJ)) then
 //    exit;

//  ultNSU := '';
//  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'Último NSU recebido pelo ator', ultNSU)) then
//     exit;

 // ANSU := '';
 // if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'NSU específico', ANSU)) then
//     exit;

{  if ANSU = '' then
    dm.ACBrMDFe1.DistribuicaoDFePorUltNSU(CNPJ, ultNSU)
  else
   em.ACBrMDFe1.DistribuicaoDFePorNSU(CNPJ, ANSU);  }

  dm.ACBrNFe1.NotasFiscais.Clear;
  dm.ACBrNFe1.WebServices.Consulta.Executar;
  sUltimoNSU := dm.ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU;
  dm.ACBrNFe1.DistribuicaoDFePorUltNSU(51, cds.FieldByName('cnpj').AsString, sUltimoNSU);

  MemoResp.Lines.Text := dm.ACBrMDFe1.WebServices.DistribuicaoDFe.RetWS;
  memoRespWS.Lines.Text := ACBrMDFe1.WebServices.DistribuicaoDFe.RetornoWS;

  LoadXML(ACBrMDFe1.WebServices.DistribuicaoDFe.RetWS, WBResposta);
end;

procedure TF_downloadnfe.ButBuscarCertClick(Sender: TObject);
begin
  EditCertSerialNumber.Text:= BaixarXMLNFe.GetCertificadoDigital;
  if Trim(EditCertSerialNumber.Text) <> '' then
    BaixarXMLNFe.SetCertificadoDigital(EditCertSerialNumber.Text);
end;

procedure TF_downloadnfe.ButCaptcha2Click(Sender: TObject);
begin
  F_Carregando.Show;
  try
    //********Pode ser usado no final do nome do arquivo gif, jpg e bmp***********
    if BaixarXMLNFe.Captcha('Captcha.jpg') then begin
      ImgCaptcha2.Picture.LoadFromFile('Captcha.jpg');
      EditCaptcha2.Clear;
      EditCaptcha2.SetFocus;
    end else
      MsgErr('Erro quando foi baixar o captcha.' + BaixarXMLNFe.Msg);
  finally
    F_Carregando.Close;
  end;
end;

procedure TF_downloadnfe.ButCaptchaClick(Sender: TObject);
begin
  F_Carregando.Show;
  try
    //********Pode ser usado no final do nome do arquivo gif, jpg e bmp***********
    if BaixarXMLNFe.Captcha('Captcha.jpg') then begin
      ImgCaptcha.Picture.LoadFromFile('Captcha.jpg');
      EditCaptcha.Clear;
      EditCaptcha.SetFocus;
    end else
      MsgErr('Erro quando foi baixar o captcha.' + BaixarXMLNFe.Msg);
  finally
    F_Carregando.Close;
  end;
end;

procedure TF_downloadnfe.ButImprimirClick(Sender: TObject);
begin
  if Trim(EditChave.Text) <> '' then begin
    if not BaixarXMLNFe.Imprimir(EditPasta.Text + '\' + EditChave.Text + '.xml', '') then
      MsgInf(BaixarXMLNFe.Msg);
  end else
    MsgInf('É necessário digitar uma chave.');
end;

procedure TF_downloadnfe.ButLerCaptchaClick(Sender: TObject);
begin
  if BaixarXMLNFe.CaptchaLer(EditLicencaLeitorCaptcha.Text, 'Captcha.jpg') then
    EditCaptcha.Text:= BaixarXMLNFe.CaptchaLerTexto
  else
    MsgInf(BaixarXMLNFe.Msg);
end;

procedure TF_downloadnfe.ButPDFClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
    if Trim(EditChave.Text) <> '' then begin
      if not BaixarXMLNFe.ExportarPDF(EditPasta.Text + '\' + EditChave.Text + '.xml', '', SaveDialog1.FileName) then
        MsgInf(BaixarXMLNFe.Msg);
    end else
      MsgInf('É necessário digitar uma chave.');
end;

procedure TF_downloadnfe.CheckHttpsClick(Sender: TObject);
begin
  BaixarXMLNFe.Https(CheckHttps.Checked);
end;

procedure TF_downloadnfe.CheckProxyClick(Sender: TObject);
begin
  if Visible then
    if CheckProxy.Checked then
      BaixarXMLNFe.Proxy(EditProxyHost.Text, StrToIntDef(EditProxyPort.Text, 0), EditProxyUser.Text, EditProxyPass.Text)
    else
      BaixarXMLNFe.Proxy('', 0, '', '');
end;

procedure TF_downloadnfe.EditCaptcha2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ButBaixar2Click(Sender);  
end;

procedure TF_downloadnfe.EditCaptchaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ButBaixarClick(Sender);
end;

procedure TF_downloadnfe.EditDLLLicenaChange(Sender: TObject);
begin
  if Visible then
   // BaixarXMLNFe.DLLLicenca(EditDLLLicena.Text);
end;

procedure TF_downloadnfe.EditPastaChange(Sender: TObject);
begin
  EditPasta.Text:= TEdit(Sender).Text;
  EditPasta2.Text:= TEdit(Sender).Text;
  EditPasta3.Text:= TEdit(Sender).Text;
end;

procedure TF_downloadnfe.EditPastaDblClick(Sender: TObject);
  var
    Pasta: String;
begin
  Pasta:= PastaProcurar('Escolha onde o programa vai salvar os xmls.', BIF_RETURNONLYFSDIRS);
  if Trim(Pasta) <> '' then
    EditPasta.Text:= Pasta;
end;

procedure TF_downloadnfe.EditPosicaoExit(Sender: TObject);
  var
    Posi: Integer;
begin
  Posi:= StrToIntDef(StrNumeros(EditPosicao.Text), 0);
  if Posi = 0 then Posi:= 1;  

  if Posi <= MemoListaChaves.Lines.Count then begin
    EditPosicao.Text:= IntToStr(Posi);
    Gauge1.MaxValue:= MemoListaChaves.Lines.Count;
    Gauge1.Progress:= Posi;
  end else begin
    MsgInf('Insira um posição de linha inferior a quantidade total de linhas que é "' +
    IntToStr(MemoListaChaves.Lines.Count) + '"');
    EditPosicao.Text:= IntToStr(MemoListaChaves.Lines.Count);
  end;
end;

procedure TF_downloadnfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Ini.WriteString('Proxy', 'Host', EditProxyHost.Text);
  Ini.WriteString('Proxy', 'Port', EditProxyPort.Text);
  Ini.WriteString('Proxy', 'User', EditProxyUser.Text);
  Ini.WriteString('Proxy', 'Pass', EditProxyPass.Text);
  Ini.WriteBool('Proxy', 'Ativado', CheckProxy.Checked);
  if CheckProxy.Checked then CheckProxyClick(Sender);

 // Ini.WriteString('Licenca', 'DLL', EditDLLLicena.Text);
  Ini.WriteString('Licenca', 'LeitorCaptcha', EditLicencaLeitorCaptcha.Text);
  Ini.WriteString('Chave', 'Chave', EditChave.Text);
  Ini.WriteString('Pasta', 'Pasta', EditPasta.Text);

  Ini.WriteString('Certificado', 'Serial', EditCertSerialNumber.Text);

  MemoListaChaves.Lines.SaveToFile('ListaChaves.txt');
  MemoListaChavesAuto.Lines.SaveToFile('ListaChavesAuto.txt');
end;

procedure TF_downloadnfe.FormCreate(Sender: TObject);
begin
  PastaCriar(LocalDoExe+'XMLs_A_Importar');
  Ini:= TIniFile.Create(LocalDoExe + 'Siace.ini');

  PageControl1.ActivePageIndex:= 0;
 
end;

procedure TF_downloadnfe.FormShow(Sender: TObject);
begin
  Timer1.Enabled:= True;
end;

procedure TF_downloadnfe.MemoListaChavesChange(Sender: TObject);
begin
  LabQtdLinhas.Caption:= 'Quantidade total de linhas ' + FormatFloat(',0',
  MemoListaChaves.Lines.Count);
end;

procedure TF_downloadnfe.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:= False;

  Application.CreateForm(TF_Carregando, F_Carregando);
  F_Carregando.Show;
  F_Carregando.Panel1.Caption:= 'Carregando DLL...'; Application.ProcessMessages;
  try
    BaixarXMLNFe:= TDownloadXMLNFeDLL.Create;
//    BaixarXMLNFe.ArquivoRav('C:\Meus Arquivos\Meus Programas\Delphi\Baixar XML NFe DLL\print.rav');
//    BaixarXMLNFe.LogAtivo(False);

    EditProxyHost.Text:= Ini.ReadString('Proxy', 'Host', '');
    EditProxyPort.Text:= Ini.ReadString('Proxy', 'Port', '');
    EditProxyUser.Text:= Ini.ReadString('Proxy', 'User', '');
    EditProxyPass.Text:= Ini.ReadString('Proxy', 'Pass', '');
    CheckProxy.Checked:= Ini.ReadBool('Proxy', 'Ativado', False);
    EditProxyPass.Text:= Ini.ReadString('Proxy', 'Pass', '');

   // EditDLLLicena.Text:= Ini.ReadString('Licenca', 'DLL', 'DEMO');
    BaixarXMLNFe.DLLLicenca('FESIBN2SWCSQ0KG2UQL5');
    EditLicencaLeitorCaptcha.Text:= Ini.ReadString('Licenca', 'LeitorCaptcha', '');

    EditChave.Text:= Ini.ReadString('Chave', 'Chave', '');

    EditCertSerialNumber.Text:= Ini.ReadString('Certificado', 'Serial', '');

    EditPasta.Text:= Ini.ReadString('Pasta', 'Pasta', '');
    if Trim(EditPasta.Text) = '' then
      EditPasta.Text:= LocalDoExe + 'XMLs_A_Importar';

    if FileExists('ListaChaves.txt') then
      MemoListaChaves.Lines.LoadFromFile('ListaChaves.txt');
    if FileExists('ListaChavesAuto.txt') then
      MemoListaChavesAuto.Lines.LoadFromFile('ListaChavesAuto.txt');

    F_Carregando.Panel1.Caption:= 'Carregando'; Application.ProcessMessages;
    //ButCaptchaClick(Sender);
  finally
    F_Carregando.Close;
  end;
end;

procedure TF_downloadnfe.ButBaixarXMLAutoClick(Sender: TObject);
  var
    I: Integer;
    Chave, Arquivo: string;
begin
  Gauge2.MaxValue:= MemoListaChavesAuto.Lines.Count - 1;

  I:= 0;
  while I < MemoListaChavesAuto.Lines.Count do begin

    Chave:= StrNumeros(MemoListaChavesAuto.Lines.Strings[I]);
    Arquivo:= EditPasta3.Text + '\' + Chave + '.xml';
    if not FileExists(Arquivo) and (BaixarXMLNFe.Msg <> 'CANCELAR') then begin
      if Trim(EditCertSerialNumber.Text) <> '' then begin
        if not BaixarXMLNFe.BaixarXMLNFeComCertAuto(Chave, Arquivo, EditLicencaLeitorCaptcha.Text, 3, True) then
          if BaixarXMLNFe.Msg <> 'CANCELAR' then
            MemoLogs.Lines.Add(Chave + ' ' + BaixarXMLNFe.Msg);
      end else
        if not BaixarXMLNFe.BaixarXMLNFeSemCertAuto(Chave, Arquivo, EditLicencaLeitorCaptcha.Text, 3, True) then
          if BaixarXMLNFe.Msg <> 'CANCELAR' then
            MemoLogs.Lines.Add(Chave + ' ' + BaixarXMLNFe.Msg);

      if Pos('ERRO: Limite de uso de', BaixarXMLNFe.Msg) > 0 then
        I:= MemoListaChavesAuto.Lines.Count - 1;
    end;

    I:= I + 1;
    Gauge2.Progress:= I;
    Application.ProcessMessages;
  end;
end;

procedure TF_downloadnfe.MemoListaChavesAutoChange(Sender: TObject);
begin
  LabQtdLinhasAuto.Caption:= 'Quantidade total de linhas ' + FormatFloat(',0',
  MemoListaChavesAuto.Lines.Count);
end;

end.
