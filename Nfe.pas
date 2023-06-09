{$I ACBr.inc}
{$R 'ACBrNFeServicos.res' 'ACBrNFeServicos.rc'}
unit Nfe;

interface

uses IniFiles, ShellAPI,  ACBrDFeUtil, pcnConversao, pcnConversaoNFe, pcnNFeRTXT,
     ACBrNFe, ACBrUtil, ACBrNFeDANFEClass, ACBrBase, ACBrDFe, XMLIntf, XMLDoc, zlib,
     pcnNFeW,  ACBrEAD, FMTBcd,    FireDAC.Stan.Error, FireDAC.DatS,
     FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DB,
     IBCustomDataSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, SqlExpr, Dialogs,
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     StdCtrls, ExtCtrls, Buttons,   WinInet,  ComCtrls, OleCtrls, SHDocVw, Mask, DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, frxClass, AdvEdit,
  AdvGlowButton, sLabel;

type
  TFormNfe = class(TForm)
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
    btnImprimir: TAdvGlowButton;
    btnConsultar: TAdvGlowButton;
    btnStatusServ: TAdvGlowButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    btnCriarEnviar: TAdvGlowButton;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    Label25: TLabel;
    rgTipoAmb: TRadioGroup;
    rgTipoDanfe: TRadioGroup;
    rgFormaEmissao: TRadioGroup;
    sbtnGetCert: TSpeedButton;
    btnGerarPDF: TAdvGlowButton;
    btnEnviarEmail: TAdvGlowButton;
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
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    btnConsultarChave: TAdvGlowButton;
    Dados: TTabSheet;
    MemoDados: TMemo;
    GroupBox6: TGroupBox;
    SPC_N_NFE: TSQLStoredProc;
    edtLogoMarca: TDBEdit;
    edtPathLogs: TDBEdit;
    edtSenha: TDBEdit;
    edtNumSerie: TDBEdit;
    btnCriarEnviarNFCe: TAdvGlowButton;
    Button1: TAdvGlowButton;
    QBuscaItens: TFDQuery;
    DSQBuscaItens: TDataSource;
    Button3: TAdvGlowButton;
    Memo: TMemo;
    CheckBox3: TCheckBox;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    FDvEdit1: TAdvEdit;
    Label12: TLabel;
    CheckBox4: TCheckBox;
    frxReport1: TfrxReport;
    myLabel3d1: TsLabelFX;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensCODIGO_ID: TIntegerField;
    QBuscaItensITEN: TIntegerField;
    QBuscaItensCODIGO_PROD: TIntegerField;
    QBuscaItensCODIGO_PRODUTO: TStringField;
    QBuscaItensDESCRICAO_PRODUTO: TStringField;
    QBuscaItensPRECO_UNITARIO: TFMTBCDField;
    QBuscaItensDESCONTO: TFMTBCDField;
    QBuscaItensQUANTIDADE: TBCDField;
    QBuscaItensPRECO_TOTAL: TFMTBCDField;
    QBuscaItensCOMISSAO: TFMTBCDField;
    QBuscaItensDEV: TStringField;
    QBuscaItensQNT_DEV: TBCDField;
    QBuscaItensVAL_DEV: TFMTBCDField;
    QBuscaItensENC_FINANCEIRO: TFMTBCDField;
    QBuscaItensUNIDADE: TStringField;
    QBuscaItensSIT_TRIBUTARIA: TStringField;
    QBuscaItensVENDEDOR: TIntegerField;
    QBuscaItensFRACAO: TIntegerField;
    QBuscaItensCOD_NCM: TStringField;
    QBuscaItensPROD_SERV: TStringField;
    QBuscaItensPERC_ISS: TFMTBCDField;
    QBuscaItensBASE_ISS: TFMTBCDField;
    QBuscaItensVL_ISS: TFMTBCDField;
    QBuscaItensPERC_ICM: TFMTBCDField;
    QBuscaItensBASE_ICMS: TFMTBCDField;
    QBuscaItensVL_ICM: TFMTBCDField;
    QBuscaItensPERC_IPI: TFMTBCDField;
    QBuscaItensBASE_IPI: TFMTBCDField;
    QBuscaItensVL_IPI: TFMTBCDField;
    QBuscaItensPERC_COFINS: TFMTBCDField;
    QBuscaItensBASE_COFINS: TFMTBCDField;
    QBuscaItensVL_COFINS: TFMTBCDField;
    QBuscaItensPERC_ICMS_SUBST: TFMTBCDField;
    QBuscaItensBASE_ICMS_SUBST: TFMTBCDField;
    QBuscaItensVL_ICMS_SUBST: TFMTBCDField;
    QBuscaItensPERC_PIS: TFMTBCDField;
    QBuscaItensBASE_PIS: TFMTBCDField;
    QBuscaItensVL_PIS: TFMTBCDField;
    QBuscaItensIMPRIME: TStringField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensID_BICO: TIntegerField;
    QBuscaItensID_TANQUE: TStringField;
    QBuscaItensID_BOMBA: TStringField;
    QBuscaItensBICO: TStringField;
    QBuscaItensICMS: TFMTBCDField;
    QBuscaItensCOD_ANP: TStringField;
    QBuscaItensCOMBUSTIVEL: TStringField;
    QBuscaItensAPLICACAO: TStringField;
    QBuscaItensIPI_IRPJ: TFMTBCDField;
    QBuscaItensOUTROS_IMPOSTOS: TFMTBCDField;
    QBuscaItensNCM_SH: TStringField;
    QBuscaItensQTD_CAIXA: TSmallintField;
    QBuscaItensUND_TRIB: TStringField;
    QBuscaItensML_QUANT_BEB: TFMTBCDField;
    QBuscaItensSIT_COFINS_VENDA_EST: TStringField;
    QBuscaItensSIT_PIS_VENDA_INTER_EST: TStringField;
    QBuscaItensSIT_COFINS_VENDA_INTER_EST: TStringField;
    QBuscaItensSIT_PIS_VENDA_EST: TStringField;
    QBuscaItensCST_IPI_SAIDA: TStringField;
    QBuscaItensCST_VENDA_INTER: TStringField;
    QBuscaItensPERC_ALIQUOTA_PIS: TFMTBCDField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TFMTBCDField;
    QBuscaItensCFOP_INTER_VENDA: TStringField;
    QBuscaItensFLAG_PIS_COFINS: TStringField;
    QBuscaItensCFOP_EST_VENDA: TStringField;
    QBuscaItensCST_VENDA: TStringField;
    QBuscaItensNCM_SH_1: TStringField;
    QBuscaItensPERC_TRIBU: TFMTBCDField;
    QBuscaItensFONTE: TStringField;
    QBuscaItensALIC_NAC: TFMTBCDField;
    QBuscaItensALIC_IMP: TFMTBCDField;
    QBuscaItensVEICULO: TStringField;
    QBuscaItensCHASSI: TStringField;
    QBuscaItensCOR: TIntegerField;
    QBuscaItensCOR_DESC: TStringField;
    QBuscaItensN_MOTOR: TStringField;
    QBuscaItensANO_FAB: TStringField;
    QBuscaItensANO_MOD_FAB: TStringField;
    QBuscaItensTIPO_VEIC: TStringField;
    QBuscaItensN_SERIE: TStringField;
    QBuscaItensCOD_MODELO: TStringField;
    QBuscaItensESPECIE_VEICULO: TStringField;
    QBuscaItensCOD_COR_DENATRAN: TStringField;
    QBuscaItensTIPO_COMBUSTIVEL: TStringField;
    QBuscaItensPESOBRUTO: TFMTBCDField;
    QBuscaItensPESOLIQUIDO: TFMTBCDField;
    QBuscaItensCEST: TStringField;
    CheckBox5: TCheckBox;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAdicionarProtNFeClick(Sender: TObject);
    procedure btnCarregarXMLEnviarClick(Sender: TObject);
    procedure btnCartadeCorrecaoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CHE(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCriarEnviarNFCeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CONECTADO;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);


  private
    { Private declarations }
    procedure GravarConfiguracao ;
    procedure LerConfiguracao ;
    procedure GerarNFe(NumNFe : String);
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure GerarNFCe(NumNFe : String);

  public
    { Public declarations }
    function ConvertCurrency(Text: String): Currency;

 
  end;

var
  FormNfe: TFormNfe;

  IsGlobalOffline : Boolean;
  tempdata :string;

implementation

uses Ubibli1, FileCtrl, pcnNFe, ufrmStatus, ACBrNFeNotasFiscais, DateUtils, 
  ModulodeDados,  Principal, gerNFE, pcnProcNFe, gerNFce, UFuncoes,
  FrmEnviaParaEmail, ACBrNFeConfiguracoes, ACBrNFeWebServices, cst,
  ModulodeDadosConsultas;

const
  SELDIRHELP = 1000;

{$R *.dfm}

function TFormNfe.ConvertCurrency(Text: String): Currency;
var
  VALOR: String;
begin
  //Se o text for diferente de vazio
  if Text <> '' then
  begin
    //Variavel valor recebe o mesmo
    VALOR:= Text;
    //Faz um loop para encontrar o ponto e se encontrar deleta o mesmo
    while Pos('.',VALOR) > 0 do
      Delete(VALOR,Pos('.',VALOR),1);

    while Pos('R$',VALOR) > 0 do
      Delete(VALOR,Pos('R$',VALOR),2);
    //Remove os espa�os e convert para Currency
    Result:= StrToCurr(Trim(Valor));
  end
  //Se for vazio passa 0
  else
    Result:= 0;
end;

function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve est� no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;

function IsConectadoNaInternet: Boolean;
begin
Result := InternetCheckConnection('http://www.google.com.br/', 1, 0);
end;

procedure TFormNfe.CONECTADO;
var estado : Dword;
begin
if not InternetGetConnectedState(@estado, 0) then
 IsGlobalOffline := False
else
begin
if (estado and INTERNET_CONNECTION_LAN <> 0) OR (estado and INTERNET_CONNECTION_MODEM <> 0) or (Estado and INTERNET_CONNECTION_PROXY <> 0) then
IsGlobalOffline := True;
end; 
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

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inv�lidos e acrescentar caracteres � esquerda ou � direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante dever� ter
   AcrescentarADireita: Indica se o car�cter ser� acrescentado � direita ou � esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar �ltimos caracteres do texto
   CaracterAcrescentar: Car�cter que dever� ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{N�o faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'C';
            '�','�' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);


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

procedure TFormNfe.GravarConfiguracao;
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

procedure TFormNfe.LerConfiguracao;
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
        // edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;

      {      cbSSLLib.ItemIndex     := Ini.ReadInteger('Certificado', 'SSLLib',     0);
          cbCryptLib.ItemIndex   := Ini.ReadInteger('Certificado', 'CryptLib',   0);
          cbHttpLib.ItemIndex    := Ini.ReadInteger('Certificado', 'HttpLib',    0);
          cbXmlSignLib.ItemIndex := Ini.ReadInteger('Certificado', 'XmlSignLib', 0);
          edtURLPFX.Text         := Ini.ReadString( 'Certificado', 'URL',        '');
          edtCaminho.Text        := Ini.ReadString( 'Certificado', 'Caminho',    '');
          edtSenha.Text          := Ini.ReadString( 'Certificado', 'Senha',      '');
          edtNumSerie.Text       := Ini.ReadString( 'Certificado', 'NumSerie',   '');  }

          DM.ACBrNFe1.Configuracoes.Certificados.URLPFX := dm.SDS_CONFIGURACOESURLPFX.AsString;
          DM.ACBrNFe1.Configuracoes.Certificados.Certificado  := edtCaminho.Text;
          DM.ACBrNFe1.Configuracoes.Certificados.Senha        := edtSenha.Text;
          DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
          DM.ACBrNFe1.SSL.DescarregarCertificado;

          with ACBrNFe1.Configuracoes.Geral do
          begin
          SSLLib        := TSSLLib(dm.SDS_CONFIGURACOESSSLLib.Text);
          SSLCryptLib   := TSSLCryptLib(dm.SDS_CONFIGURACOESCryptLib.text);
          SSLHttpLib    := TSSLHttpLib(dm.SDS_CONFIGURACOESHttpLib.text);
          SSLXmlSignLib := TSSLXmlSignLib(dm.SDS_CONFIGURACOESXmlSignLib.text);
          end;



         edtNumSerie.Visible := False;
         Label25.Visible := False;
         sbtnGetCert.Visible := False;
      {$ELSE}
        // edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
         DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
         edtNumSerie.Text := DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
         Label1.Caption := 'Informe o n�mero de s�rie do certificado'#13+
                           'Dispon�vel no Internet Explorer no menu'#13+
                           'Ferramentas - Op��es da Internet - Conte�do '#13+
                           'Certificados - Exibir - Detalhes - '#13+
                           'N�mero do certificado';
         Label2.Visible := False;
         edtCaminho.Visible := False;
         edtSenha.Visible   := False;
         sbtnCaminhoCert.Visible := False;
      {$ENDIF}

      rgFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao',0) ;
      ckSalvar.Checked    := Ini.ReadBool(   'Geral','Salvar'      ,True) ;
     // edtPathLogs.Text    := Ini.ReadString( 'Geral','PathSalvar'  ,'') ;
      DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(rgFormaEmissao.ItemIndex+1));
      DM.ACBrNFe1.Configuracoes.Geral.Salvar       := ckSalvar.Checked;
      DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar   := edtPathLogs.Text;

      cbUF.ItemIndex       := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','SP')) ;
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

      DM.ACBrNFe1.Configuracoes.Geral.IdCSC := DM.SDS_CONFIGURACOESTOKEN.TEXT ;
      DM.ACBrNFe1.Configuracoes.Geral.CSC  := DM.SDS_CONFIGURACOESID_TOKEN.TEXT;

      rgTipoDanfe.ItemIndex     := Ini.ReadInteger( 'Geral','DANFE'       ,0) ;
     // edtLogoMarca.Text         := Ini.ReadString( 'Geral','LogoMarca'   ,'') ;
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
      edtEmitUF.Text         := Ini.ReadString( 'Emitente','UF'         ,'') ; }

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

procedure TFormNfe.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'\temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'\temp.xml');
end;

procedure TFormNfe.sbtnCaminhoCertClick(Sender: TObject);
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

procedure TFormNfe.sbtnLogoMarcaClick(Sender: TObject);
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

procedure TFormNfe.sbtnPathSalvarClick(Sender: TObject);
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

procedure TFormNfe.FormCreate(Sender: TObject);
begin
SetForegroundWindow(handle);
 LerConfiguracao;
 if dm.SDS_CONFIGURACOESNFCE_OFF.text ='2' then
 CheckBox2.Checked := True
 else
 CheckBox1.Checked := True;    

end;

procedure TFormNfe.btnSalvarConfigClick(Sender: TObject);
begin
 GravarConfiguracao;
 LerConfiguracao;
end;

procedure TFormNfe.btnStatusServClick(Sender: TObject);
begin
IF DM.ACBrNFe1.SSL.CertDataVenc < Now then
begin
 showmessage('Certificado vencido (data de validade expirada)');
 Exit;
end;

 dm.ConfiguraNFe;

{ DM.ACBrNFe1.WebServices.StatusServico.Executar;

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
 MemoDados.Lines.Add('xObs: '     +DM.ACBrNFe1.WebServices.StatusServico.xObs); }

  DM.ACBrNFe1.WebServices.StatusServico.Executar;

  MemoResp.Lines.Text := DM.ACBrNFe1.WebServices.StatusServico.RetWS;
  memoRespWS.Lines.Text := DM.ACBrNFe1.WebServices.StatusServico.RetornoWS;
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

 { if (DM.ACBrNFe1.Integrador = DM.ACBrIntegrador1) then
  begin
    if (DM.ACBrIntegrador1.ComandoIntegrador.IntegradorResposta.Codigo <> '') then
    begin
      MemoDados.Lines.Add('[Integrador]');
      MemoDados.Lines.Add('Codigo=' + DM.ACBrIntegrador1.ComandoIntegrador.IntegradorResposta.Codigo);
      MemoDados.Lines.Add('Valor=' + DM.ACBrIntegrador1.ComandoIntegrador.IntegradorResposta.Valor);

      DM.ACBrIntegrador1.ComandoIntegrador.IntegradorResposta.Codigo := '';
      DM.ACBrIntegrador1.ComandoIntegrador.IntegradorResposta.Valor := '';
    end;
   end; }
end;

procedure TFormNfe.btnConsultarClick(Sender: TObject);
begin
  { if Pos(RemoveChar(dm.SDS_EmpresaCNPJ.text), DM.ACBrNFe1.Configuracoes.Certificados.GetCertificado.SubjectName) = 0 then
    begin
      showmessage('Certificado pertencente a outra empresa / pessoa'+chr(13)+DM.ACBrNFe1.Configuracoes.Certificados.GetCertificado.SubjectName);
      exit;
    end;
 IF DM.ACBrNFe1.Configuracoes.Certificados.DataVenc < Now then
begin
 showmessage('Certificado vencido (data de validade expirada)');
 Exit;
end;  }


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

procedure TFormNfe.btnCancNFClick(Sender: TObject);
var
  vAux : String;
begin
{  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux)) then
       exit;
     DM.ACBrNFe1.Cancelamento(vAux);
     MemoResp.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Cancelamento.RetWS);
     memoRespWS.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Cancelamento.RetornoWS);     
     LoadXML(MemoResp, WBResposta);
     ShowMessage(IntToStr(DM.ACBrNFe1.WebServices.Cancelamento.cStat));
     ShowMessage(DM.ACBrNFe1.WebServices.Cancelamento.Protocolo);
  end; }
end;

procedure TFormNfe.btnValidarXMLClick(Sender: TObject);
begin
{  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    DM.ACBrNFe1.NotasFiscais.Valida;
    showmessage('Nota Fiscal Eletr�nica Valida');
  end; }
end;

procedure TFormNfe.btnImprimirClick(Sender: TObject);
begin

 

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
      // DM.ACBrNFe1.DANFE.ProtocoloNFe := DM.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(DM.ACBrNFe1.WebServices.ConsultaDPEC.retDPEC.dhRegDPEC);
       DM.ACBrNFe1.DANFE.ProtocoloNFe := DM.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(DM.ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
     end; }
    DM.ACBrNFe1.NotasFiscais.Imprimir;
  end;
end;

procedure TFormNfe.btnCriarEnviarClick(Sender: TObject);
var
 vAux, vNumLote : String;
 NFeRTXT: TNFeRTXT;
 arq: TextFile;
 linha: string;

 sCaminhoxml, sCaminhoPDF, sEmail: string;
 tempdata: string;
 Para , ano, mes, dia, ie : String;
 sMensagem, CC: Tstrings;
 bConexaoSegura  : boolean;
 sServidorSmpt, sPortaSmtp, sUsuarioSmpt, sSenhaSmtp, sAssunto,  sFromSMTP : string;

begin
  PODEFECHAR := FALSE;

   DM.ConfiguraNFe;

  if Pos(RemoveChar(dm.SDS_EmpresaCNPJ.text), DM.ACBrNFe1.ssl.CertSubjectName) = 0 then
  begin
    showmessage('Certificado pertencente a outra empresa / pessoa'+chr(13)+DM.ACBrNFe1.SSL.CertSubjectName);
    exit;
  end;

  IF DM.ACBrNFe1.SSL.CertDataVenc < Now then
  begin
    showmessage('Certificado vencido (data de validade expirada)');
    Exit;
  end;

  if IsConectadoNaInternet = False then
  BEGIN
    ShowMessage('Aten��o!!! Voc� n�o est� conectado � Internet, Verifique a conec��o.');
    Exit;
    Abort;
  end;



  DM.ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet := 15000;
  DM.ACBrNFe1.Configuracoes.WebServices.AjustaAguardaConsultaRet := True;
  DM.ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas := 1000;
  DM.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;

  valida_nfe := False;

  vAux    := dm.SDS_NFENR_NOTA.text;

  vAux := OnlyNumber(vAux);

  vNumLote := dm.SDS_NFENR_NOTA.text;   //FormGefaNFe.Edit1.Text;

  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
  begin
    MessageDlg('N�mero do Lote inv�lido.',mtError,[mbok],0);
    exit;
  end;

  DM.ACBrNFe1.NotasFiscais.Clear;


  GerarNFe(vAux);


{  if Dados.qryConfigFORMAEMISSAO.Value = 0 then
      begin

        try
          if DmNFe.ACBrNFe.Enviar(qryVendaCODIGO.Value, false) then
            sTransmitida;
        except
          on e: exception do
          begin

            case DmNFe.ACBrNFe.WebServices.Enviar.cStat of
              101: // cancelada
                begin
                  DmNFe.ACBrNFe.Consultar;
                  sCancelada;
                end;
              110, 302, 303: // denegada
                begin
                  sDenegada;
                end;
              204, 539: // duplicidade
                begin
                  DmNFe.ACBrNFe.Consultar;
                  if DmNFe.ACBrNFe.WebServices.Consulta.cStat = 100 then
                    sTransmitida
                  else
                    sDuplicidade;
                end;
              563: // inutilizada
                begin
                  sInutilizada;
                end
            else
              begin
                case DmNFe.ACBrNFe.WebServices.Retorno.cStat of
                  101: // cancelada
                    begin
                      sCancelada;
                    end;
                  302, 303: // denegada
                    begin
                      sDenegado;
                    end;
                  204, 539: // duplicidade
                    begin
                      sDuplicidade;
                    end;
                  563: // inutilizada
                    begin
                      sInutilizada;
                    end
                else
                  begin
                    ShowMessage('Retorno:' + DmNFe.ACBrNFe.WebServices.Retorno.
                      cStat.ToString + ' - ' +
                      DmNFe.ACBrNFe.WebServices.Retorno.xMotivo + sLineBreak +
                      'Erro:' + e.Message);
                    exit
                  end;
                end;
              end;
            end;
          end;
        end;
      end
      else   }


  DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML();

  DM.SDS_NFE.Edit;
  DM.SDS_NFENR_LOTE_NFE.Text:= (vNumLote);
  dm.SDS_NFESTATUS.Text :='N';
  DM.SDS_NFECHAVE_ACESSO_NFE.TEXT := copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
  DM.SDS_NFECHAVE2.TEXT := 'NFE'+ copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
  DM.SDS_NFEBXML.TEXT := DM.ACBrNFe1.NotasFiscais.Items[0].XML;
  DM.SDS_NFE.Post;
  DM.SDS_NFE.ApplyUpdates(0);

  DM.SDS_NFE_ITENS.EDIT;
  DM.SDS_NFE_ITENS.Post;
  DM.sds_nfe_itens.ApplyUpdates(0);

  IF CheckBox1.Checked = true then
  BEGIN
    DM.ACBrNFe1.WebServices.Consulta.NFeChave := copy(dm.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    dm.ACBrNFe1.WebServices.Consulta.Executar;

    if DM.ACBrNFe1.WebServices.Consulta.cStat = 105 then
    begin
      MemoDados.Lines.Add('');
      MemoDados.Lines.Add('Envio NFce');
      MemoDados.Lines.Add('Nf-e ja enviada para sefaz, AGUARDANDO VALIDA��O...');
      close;
    end;

    if (DM.ACBrNFe1.WebServices.Consulta.cStat = 100) then
    begin
      MemoDados.Lines.Add('');
      MemoDados.Lines.Add('Envio NFce');
      MemoDados.Lines.Add('Nf-e ja enviada para sefaz, base de dados ser� Atualizada...');
      DM.SDS_NFE.Edit;
      DM.SDS_NFENR_LOTE_NFE.Text := (vNumLote);
      dm.SDS_NFESTATUS.Text :='S';
      dm.SDS_NFEFL_IMPRESSO.Text :='S';
      dm.SDS_NFEDT_EMISSAO.asdatetime := Date;
      DM.SDS_NFENR_PROTOCOLO_NFE.Text := DM.ACBrNFe1.WebServices.Consulta.Protocolo;
      DM.SDS_NFENR_RECIBO_NFE.Text :=  DM.ACBrNFe1.WebServices.Retorno.Recibo;
      DM.SDS_NFECHAVE_ACESSO_NFE.TEXT := DM.ACBrNFe1.WebServices.Consulta.NFeChave;
      DM.SDS_NFECHAVE2.TEXT := 'NFE'+ DM.ACBrNFe1.WebServices.Consulta.NFeChave;
      DM.SDS_NFEMODELO.Text := '55';
      DM.SDS_NFE.Post;
      DM.SDS_NFE.ApplyUpdates(0);

      DM.ACBrNFe1.NotasFiscais.Imprimir;

      DM.ACBrNFe1.NotasFiscais.ImprimirPDF;

      valida_nfe :=True;
      btnCriarEnviar.Enabled := False;
      PODEFECHAR := True;
      CLOSE;
    end;
  end;

  if valida_nfe = False then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;

    GerarNFe(vAux);

    DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML();

    application.ProcessMessages;

    DM.SDS_NFE.Edit;
    DM.SDS_NFENR_LOTE_NFE.text := (vNumLote);
    dm.SDS_NFESTATUS.Text :='N';
    DM.SDS_NFECHAVE_ACESSO_NFE.TEXT := copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    DM.SDS_NFECHAVE2.TEXT := 'NFE'+ copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    DM.SDS_NFE.Post;
    DM.SDS_NFE.ApplyUpdates(0);

    iCodigoNfe := DM.SDS_NFENR_NOTA.AsInteger;

    application.ProcessMessages;

    DM.SDS_NFE_ITENS.EDIT;
    DM.SDS_NFE_ITENS.Post;
    DM.sds_nfe_itens.ApplyUpdates(0);


    DM.ACBrNFe1.Enviar(vNumLote);

    application.ProcessMessages;


    DM.SDS_NFE.Edit;
    DM.SDS_NFENR_LOTE_NFE.AsInteger := StrToInt(vNumLote);
    dm.SDS_NFESTATUS.Text :='S';
    dm.SDS_NFEFL_IMPRESSO.Text :='S';
    DM.SDS_NFENR_PROTOCOLO_NFE.Text :=  DM.ACBrNFe1.WebServices.retorno.Protocolo;
    DM.SDS_NFENR_RECIBO_NFE.Text :=  DM.ACBrNFe1.WebServices.Retorno.Recibo ;
    DM.SDS_NFECHAVE_ACESSO_NFE.TEXT := OnlyNumber(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.id);
    DM.SDS_NFECHAVE2.TEXT := OnlyNumber(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.id) + '-NFe.xml';
   // DM.SDS_NFEBXML.TEXT := MEMO.Text;
    DM.SDS_NFE.Post;
    DM.SDS_NFE.ApplyUpdates(0);

   // DM.ACBrNFe1.NotasFiscais.Imprimir;

    DM.ACBrNFe1.NotasFiscais.ImprimirPDF;

    application.ProcessMessages;


    if FormGefaNFe.combobox2.itemIndex = 0 then
    begin
      SPC_N_NFE.Params[0].AsInteger :=  StrToInt(DM.SDS_NFENR_PEDIDO.text);
      SPC_N_NFE.Params[1].AsInteger  := StrToInt(DM.SDS_NFENR_NOTA.text);
      SPC_N_NFE.Params[2].AsString  :=  DM.SDS_NFESERIE_NF.text;
      SPC_N_NFE.Params[3].AsInteger  := IEMP;
      SPC_N_NFE.ExecProc;
    end ;

    application.ProcessMessages;

    PageControl2.TabIndex := 5;

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

   { if Application.MESSAGEBOX('Confirma o envio do email ao destinat�rio da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      DM.ACBrNFe1.NotasFiscais.ImprimirPDF;
      iCodigoNfe:= DM.SDS_NFENR_NOTA.AsInteger;

      tempdata:= FormatDateTime('yyyymm', DM.SDS_NFEDT_EMISSAO.AsDateTime);

      sCaminhoXML:= DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text + '\' +
        sCNPJEmpresa +'\'+ ie + '\NFe\'+ ano +'\' + mes +'\' + Dia + '\' + Trim(dm.SDS_NFECHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

      sCaminhoPDF:= DM.ACBrNFe1.DANFE.PathPDF + '\' +
        Trim(DM.SDS_NFECHAVE_ACESSO_NFE.AsString) + '-nfe.pdf';

      if not FileExists(sCaminhoxml) then
        sCaminhoXML:= DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' +
          Trim(DM.SDS_NFECHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

      if not FileExists(sCaminhoxml) then
      begin
        ShowMessage('XML da NF-e inexistente.');
      end;

      if not fileexists(sCaminhoPDF) then
      begin
        ShowMessage('PDF da NF-e inexistente.');
      end;

     // iEmp:= DM.SDS_EmpresaCODIGO.Value;

      if DM.IBTransaction.Active then
        DM.IBTransaction.Commit;

      with DM.QConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select servidor_smtp, porta_smtp, usuario_smtp, senha_smtp, from_smtp,');
        SQL.Add('assunto_email_danfe, smtp_conexao_segura, mensagem_email_danfe ');
        SQL.Add('from configuracoes where cod_empresa = :codemp');
        Params.ParamByName('codemp').AsInteger:= iEmp;
        Open;

        sServidorSmpt:= Trim(FieldByName('servidor_smtp').AsString);
        sPortaSmtp:= Trim(FieldByName('porta_smtp').AsString);
        sUsuarioSmpt:= Trim(FieldByName('usuario_smtp').AsString);
        sSenhaSmtp:= Trim(FieldByName('senha_smtp').AsString);
        sAssunto:= Trim(FieldByName('assunto_email_danfe').AsString);
        sMensagem:= TstringList.Create;
        sMensagem.Add(Trim(FieldByName('mensagem_email_danfe').Text));
        sFromSMTP:= Trim(FieldByName('from_smtp').AsString);

        bConexaoSegura:= Trim(FieldByName('smtp_conexao_segura').AsString) = 'S';

      end;

      DM.SDS_Clientes.Active:= false;
      DM.SDS_Clientes.SQL.Clear;
      DM.SDS_Clientes.SQL.add('select * from clientes where codigo =:codigo order by nome_rs asc');
      DM.SDS_Clientes.Params.ParamByName('codigo').AsInteger:= DM.SDS_NFECOD_CLIENTE.AsInteger;
      DM.SDS_Clientes.Active:= True;
      Para:= DM.SDS_ClientesEMAIL.Text;

      if (sServidorSmpt = EmptyStr) or
        (sPortaSmtp = EmptyStr) or
        (sUsuarioSmpt = EmptyStr) or
        (sSenhaSmtp = EmptyStr)
      then
      begin
        ShowMessage('Dados para envio de email n�o foram configurados.');
        Exit;
      end;

      try
        FEnviaParaEmail:= TFEnviaParaEmail.Create(nil);
        FEnviaParaEmail.Host:= sServidorSmpt;
        FEnviaParaEmail.Usuario:= sUsuarioSmpt;
        FEnviaParaEmail.Porta:= StrToIntDef(sPortaSmtp, 0);
        FEnviaParaEmail.Address:= sUsuarioSmpt;
        FEnviaParaEmail.edtAssunto.text:= sAssunto;
        FEnviaParaEmail.edtEmailPara.text:= Para;
        FEnviaParaEmail.mmMensahem.Text:= sMensagem.Text;
        FEnviaParaEmail.LocalArquivoPDF:= sCaminhoPDF;
        FEnviaParaEmail.LocalArquivoXML:= sCaminhoXML;
        FEnviaParaEmail.Senha:= sSenhaSmtp;
        FEnviaParaEmail.ShowModal;
      finally
        FreeAndNil(FEnviaParaEmail);
      end;
    end;  }

  end;

  if not (Trim(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt) = EmptyStr) then
  begin
    valida_nfe := True ;
    btnCriarEnviar.Enabled := False;
    PODEFECHAR := True;
  end;

  DM.ACBrNFe1.NotasFiscais.Clear;
  Application.ProcessMessages;

  if PODEFECHAR = True then
  begin
   close;
  end;

end;

procedure TFormNfe.btnInutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
{ if not(InputQuery('WebServices Inutiliza��o ', 'Ano',    Ano)) then
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
  DM.ACBrNFe1.WebServices.Inutiliza(DM.SDS_EmpresaCNPJ.Text, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
  MemoResp.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Inutilizacao.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Inutilizacao.RetornoWS);  
  LoadXML(MemoResp, WBResposta); }
end;

procedure TFormNfe.ACBrNFe1StatusChange(Sender: TObject);
begin
{  case DM.ACBrNFe1.Status of
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
      frmStatus.lblStatus.Caption := 'Enviando dados da NFe/NFCe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Recebendo dados da NFe/NFCe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando NFe/NFCe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe/NFCe...';
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
    stNFeEnvDPEC :
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
    end;
    stNFeEmail :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Email...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;
  Application.ProcessMessages;    }
end;

procedure TFormNfe.sbtnGetCertClick(Sender: TObject);
begin
   {$IFNDEF ACBrNFeOpenSSL}
   edtNumSerie.Text := DM.ACBrNFe1.SSL.SelecionarCertificado;
   {$ENDIF}
end;

procedure TFormNfe.btnGerarNFEClick(Sender: TObject);
var
 vAux : String;
begin
{if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit; }

 { DM.ACBrNFe1.NotasFiscais.Clear;

  vAux    := dm.SDS_NFENR_NOTA.text;

  GerarNFe(vAux);

  DM.ACBrNFe1.NotasFiscais.Assinar;

  DM.ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
  ShowMessage('Arquivo gerado em: '+DM.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  MemoDados.Lines.Add('Arquivo gerado em: '+DM.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  MemoResp.Lines.LoadFromFile(DM.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  LoadXML(MemoResp, WBResposta);
  PageControl2.ActivePageIndex := 1;     }


  end;

procedure TFormNfe.btnConsCadClick(Sender: TObject);
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

procedure TFormNfe.btnGerarPDFClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.ARQUIVOS.PathSalvar;
  DM.ACBrNFe1.NotasFiscais.Clear;
  if OpenDialog1.Execute then
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

  DM.ACBrNFe1.NotasFiscais.ImprimirPDF;
end;

procedure TFormNfe.btnGerarTXTClick(Sender: TObject);
var
   vAux, vNumLote : String;
begin
 {  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
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
  GerarNFe(vAux);                                                   }

//  DM.ACBrNFe1.NotasFiscais.SaveToTXT({caminho e nome do arquivo TXT});
end;

procedure TFormNfe.btnEnviarEmailClick(Sender: TObject);
var
 Para : String;
 CC: Tstrings;
begin

end;

procedure TFormNfe.btnConsultarReciboClick(Sender: TObject);
var
  aux : String;
begin
{  if not(InputQuery('Consultar Recibo Lote', 'N�mero do Recibo', aux)) then
    exit;
  DM.ACBrNFe1.WebServices.Recibo.Recibo := aux;;
  DM.ACBrNFe1.WebServices.Recibo.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Recibo.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Recibo.RetornoWS);  
  LoadXML(MemoResp, WBResposta);  }
end;

procedure TFormNfe.btnEnvDPECClick(Sender: TObject);
var
 vAux : String;
begin
{if not(InputQuery('WebServices DPEC', 'Numero da Nota', vAux)) then
    exit;}

 { vAux    := dm.SDS_NFENR_NOTA.text;

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

  DM.ACBrNFe1.NotasFiscais.Clear;

  DM.SDS_NFE.Edit;
  DM.SDS_NFENR_LOTE_NFE.Value := null;
  dm.SDS_NFESTATUS.Text :='A';
  dm.SDS_NFEFL_IMPRESSO.Text :='S';
  DM.SDS_NFENR_PROTOCOLO_NFE.Text :=  DM.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt;
  DM.SDS_NFENR_RECIBO_NFE.Text :=  DM.ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec;
  DM.SDS_NFECHAVE_ACESSO_NFE.TEXT := DM.ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
  DM.SDS_NFE.Post;
  DM.SDS_NFE.ApplyUpdates(0);
  DM.sds_nfe_itens.ApplyUpdates(0);  }
end;

procedure TFormNfe.btnConsultarDPECClick(Sender: TObject);
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
  LoadXML(MemoResp, WBResposta);}

end;

procedure TFormNfe.ACBrNFe1GerarLog(const Mensagem: String);
begin
 memoLog.Lines.Add(Mensagem);
end;

procedure TFormNfe.btnImportarXMLClick(Sender: TObject);
var
  i, j, k, n  : integer;
  Nota, Node, NodePai, NodeItem: TTreeNode;
  NFeRTXT: TNFeRTXT;
begin
{  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Geral.PathSalvar;
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

       {if Retirada.CNPJ <> '' then
        begin
          Node := trvwNFe.Items.AddChild(Nota,'Retirada');
          trvwNFe.Items.AddChild(Node,'CNPJ='    +Retirada.CNPJ);
          trvwNFe.Items.AddChild(Node,'xLgr='    +Retirada.xLgr);
          trvwNFe.Items.AddChild(Node,'nro='     +Retirada.nro);
          trvwNFe.Items.AddChild(Node,'xCpl='    +Retirada.xCpl);
          trvwNFe.Items.AddChild(Node,'xBairro=' +Retirada.xBairro);
          trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Retirada.cMun));
          trvwNFe.Items.AddChild(Node,'xMun='    +Retirada.xMun);
          trvwNFe.Items.AddChild(Node,'UF='      +Retirada.UF);
        end;

       if Entrega.CNPJ <> '' then
        begin
          Node := trvwNFe.Items.AddChild(Nota,'Entrega');
          trvwNFe.Items.AddChild(Node,'CNPJ='    +Entrega.CNPJ);
          trvwNFe.Items.AddChild(Node,'xLgr='    +Entrega.xLgr);
          trvwNFe.Items.AddChild(Node,'nro='     +Entrega.nro);
          trvwNFe.Items.AddChild(Node,'xCpl='    +Entrega.xCpl);
          trvwNFe.Items.AddChild(Node,'xBairro=' +Entrega.xBairro);
          trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Entrega.cMun));
          trvwNFe.Items.AddChild(Node,'xMun='    +Entrega.xMun);
          trvwNFe.Items.AddChild(Node,'UF='      +Entrega.UF);
        end;}

   {    for I := 0 to Det.Count-1 do
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
               trvwNFe.Items.AddChild(NodeItem,'nItemPedido=' +IntToStr(Prod.nItemPed)) ;

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
                   // trvwNFe.Items.AddChild(Node,'RENAVAM='  +RENAVAM);
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

                    Node := trvwNFe.Items.AddChild(NodePai,'CIDE'+IntToStrZero(I+1,3));
                    trvwNFe.Items.AddChild(Node,'qBCprod='   +FloatToStr(CIDE.qBCprod)) ;
                    trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(CIDE.vAliqProd)) ;
                    trvwNFe.Items.AddChild(Node,'vCIDE='     +FloatToStr(CIDE.vCIDE)) ;

                    Node := trvwNFe.Items.AddChild(NodePai,'ICMSComb'+IntToStrZero(I+1,3));
                    trvwNFe.Items.AddChild(Node,'vBCICMS='   +FloatToStr(ICMS.vBCICMS)) ;
                    trvwNFe.Items.AddChild(Node,'vICMS='     +FloatToStr(ICMS.vICMS)) ;
                    trvwNFe.Items.AddChild(Node,'vBCICMSST=' +FloatToStr(ICMS.vBCICMSST)) ;
                    trvwNFe.Items.AddChild(Node,'vICMSST='   +FloatToStr(ICMS.vICMSST)) ;

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

  end;   }
end;

procedure TFormNfe.lblMouseEnter(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold,fsUnderline];
end;

procedure TFormNfe.lblMouseLeave(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold];
end;

procedure TFormNfe.lblColaboradorClick(Sender: TObject);
begin
  ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/5', Nil, Nil, SW_NORMAL);
end;

procedure TFormNfe.lblPatrocinadorClick(Sender: TObject);
begin
  ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/35', Nil, Nil, SW_NORMAL);
end;

procedure TFormNfe.lblDoar1Click(Sender: TObject);
begin
  ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/14', Nil, Nil, SW_NORMAL);
end;


procedure TFormNfe.GerarNFe(NumNFe : String);
var
e, contador, parcela: Integer;
tributo, tributo1, total_trib: Real;
tributos, FDic : string;

  FreteDividido,BaseICMS_T: Currency;
begin
  tributo1 :=0;
  total_trib :=0 ;

  Application.ProcessMessages;
  with DM.ACBrNFe1.NotasFiscais.Add.NFe do
   begin

     Ide.cNF       := GerarCodigoDFe(DM.SDS_NFENr_nota.Value); // StrToInt(NumNFe); //Caso n�o seja preenchido ser� gerado um n�mero aleat�rio pelo componente
     Ide.natOp     := DM.SDS_NFECFOP_DESC.TEXT;

     {InfoPgto := NotaF.NFe.pag.New;
     InfoPgto.indPag := ipVista;
     InfoPgto.tPag   := fpDinheiro;
     InfoPgto.vPag   := 50;

    // Exemplo de pagamento integrado.

      InfoPgto := NotaF.NFe.pag.New;
      InfoPgto.indPag := ipVista;
      InfoPgto.tPag   := fpCartaoCredito;    }


      //  abaixo o campo incluido no layout a partir da NT 2020/006

      {
        se tPag for fpOutro devemos incluir o campo xPag
      InfoPgto.xPag := 'Caderneta';

      InfoPgto.vPag   := 50;
      InfoPgto.tpIntegra := tiPagIntegrado;
      InfoPgto.CNPJ      := '05481336000137';
      InfoPgto.tBand     := bcVisa;
      InfoPgto.cAut      := '1234567890123456';}


     Ide.modelo    := 55;
     Ide.serie     := DM.SDS_NFESERIE_NF.AsInteger;
     Ide.nNF       := StrToInt(DM.SDS_NFENr_nota.text); //StrToInt(NumNFe);
     Ide.dEmi      := Date;


     if FormGefaNFe.combobox2.itemIndex = 0 then
     begin
     Ide.tpNF      := tnSaida;
     end else

     if FormGefaNFe.combobox2.itemIndex = 1 then
     begin
     Ide.tpNF      := tnEntrada;
     end ;

     Ide.dSaiEnt   := Date;
     Ide.hSaiEnt   := Now;
     //Ide.dhCont    := Now;

     if FormGefaNFe.combobox3.itemIndex = 0 then
     begin
     Ide.tpEmis    := teNormal;
     end else
     if FormGefaNFe.combobox3.itemIndex = 1 then
     begin
     Ide.tpEmis    := teContingencia;
     end;
     if FormGefaNFe.combobox3.itemIndex = 2 then
     begin
     Ide.tpEmis    := teSVCRS;
     end;
     //Ide.tpAmb   := taHomologacao;  //Lembre-se de trocar esta vari�vel quando for para ambiente de produ��o

     if DM.SDS_CONFIGURACOESAMBIENTE_DANFE.text = 'P' then
      Ide.tpAmb     := taProducao
      else
      Ide.tpAmb     := taHomologacao;

     Ide.verProc   := 'SIACE SISTEMAS 4.0'; //Vers�o do seu sistema
     if DM.SDS_Empresauf.Text = '' then
     ShowMessage('UF NO CADASTRO DA EMPRESA ESTA EM BRANCO FAVOR PREENCHER')
     else
     Ide.cUF       := UFtoCUF(DM.SDS_EMPRESAUF.Text);
     if DM.SDS_EmpresaCOD_CID_IBGE.Text = '' then
     ShowMessage('CODIGO DO IBGE NO CADASTRO DA EMPRESA ESTA EM BRANCO FAVOR PREENCHER')
     ELSE
     Ide.cMunFG    := StrToInt(DM.SDS_EmpresaCOD_CID_IBGE.Text);

     if FormGefaNFe.combobox4.itemIndex = 0 then
     begin
     Ide.finNFe    := fnNormal;
     end else
     if FormGefaNFe.combobox4.itemIndex = 1 then
     begin
     Ide.finNFe    := fnComplementar;
     end else
     if FormGefaNFe.combobox4.itemIndex = 2 then
     begin
     Ide.finNFe    := fnajuste;
     end;
     if FormGefaNFe.combobox4.itemIndex = 3 then
     begin
     Ide.finNFe    := fnDevolucao;
     end;



      // se a nota e interestadual ou n�o
      if FormGefaNFe.CheckBox4.Checked = True then
       ide.idDest := doInterestadual
       else
       Ide.idDest := doInterna;


     //Para NFe referenciada use os campos abaixo
     if FormGefaNFe.CheckBox2.Checked = True then
     begin
     with Ide.NFref.Add do
      begin
        refNFe       := FormGefaNFe.edit7.text; //NFe Eletronica

       {RefNF.cUF    := 0;  // |
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

        RefECF.modelo  := ECFModRef2D; // |
        RefECF.nECF    := '';          // |- Cupom Fiscal
        RefECF.nCOO    := '';          // |
      end;}
      end;
     end else
     if FormGefaNFe.CheckBox1.Checked = True then
     begin
     with Ide.NFref.Add do
      begin
        RefECF.modelo  := ECFModRef2D; // |
        RefECF.nECF    := FormGefaNFe.edit9.text;          // |- Cupom Fiscal
        RefECF.nCOO    := FormGefaNFe.edit8.text;          // |
      end;
      end;


      Emit.CNPJCPF           := DM.SDS_EMPRESACNPJ.Text;
      Emit.IE                := DM.SDS_EMPRESAIE.Text;
      Emit.xNome             := DM.SDS_EmpresaRAZAO_SOCIAL.Text;
      Emit.xFant             := DM.SDS_EmpresaNOME_FANTASIA.Text;
      Emit.EnderEmit.fone    := DM.SDS_EmpresaTELEFONE.Text;
      Emit.EnderEmit.CEP     := StrToInt(RemoveChar(DM.SDS_EMPRESACEP.Text));
      Emit.EnderEmit.xLgr    := DM.SDS_EmpresaENDERECO.Text;
      Emit.EnderEmit.nro     := DM.SDS_EmpresaNUMERO.Text;
      Emit.EnderEmit.xCpl    := DM.SDS_EmpresaCOMPLEMENTO.Text;
      Emit.EnderEmit.xBairro := DM.SDS_EMPRESABairro.Text;
      Emit.EnderEmit.cMun    := StrToInt(DM.SDS_EMPRESACOD_CID_IBGE.Text);
      Emit.EnderEmit.xMun    := DM.SDS_EMPRESACidade.Text;
      Emit.EnderEmit.UF      := DM.SDS_EMPRESAUF.Text;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';
      Emit.IM                := DM.SDS_EmpresaIM.Text; // Preencher no caso de existir servi�os na nota
      Emit.CNAE              := dm.SDS_EmpresaCNAE.Text; // Verifique na cidade do emissor da NFe se � permitido
                                    // a inclus�o de servi�os na NFe

     IF DM.SDS_EmpresaREGIME.Text = 'S' then
     begin
      Emit.CRT               := crtSimplesNacional;
     end ELSE
     IF DM.SDS_EmpresaREGIME.Text = 'P' then
     begin
      Emit.CRT               := crtRegimeNormal;
     end else
       IF DM.SDS_EmpresaREGIME.Text = 'R' then
     begin
      Emit.CRT               := crtRegimeNormal;
     end;
     // Emit.CRT               := crtSimplesExcessoReceita;


//Para NFe Avulsa preencha os campos abaixo
{     Avulsa.CNPJ    := '';
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
      {Dest.CNPJCPF           := formvendas.Sds_PedidosCPF_CNPJ.Text;
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

     Dest.CNPJCPF           :=   RemoveChar( dm.sds_nfeCPF_CNPJ_cliente_forn.Text);

    if dm.Sds_NfeTIPO_pessoa.Text = 'F' then
    begin
     if dm.sds_nfeProdutor_rural.Text = 'S' then
     begin
      Dest.IE               := dm.sds_nfeIE_PRODUTOR.text;
      Ide.indFinal          := cfConsumidorFinal;
     end  else
     begin
      Dest.IE               := '';
      Ide.indFinal          :=  cfConsumidorFinal;
      Dest.indIEDest        :=  inNaoContribuinte;
      end;
      {1=Contribuinte ICMS (informar a IE do destinat�rio);
                                                  2=Contribuinte isento de Inscri��o no cadastro de
                                                  Contribuintes do ICMS;
                                                  9=N�o Contribuinte, que pode ou n�o possuir Inscri��o
                                                  Estadual no Cadastro de Contribuintes do ICMS;
                                                  Nota 1: No caso de NFC-e informar indIEDest=9 e n�o
                                                  informar a tag IE do destinat�rio;
                                                  Nota 2: No caso de opera��o com o Exterior informar
                                                  indIEDest=9 e n�o informar a tag IE do destinat�rio;
                                                  Nota 3: No caso de Contribuinte Isento de Inscri��o
                                                  (indIEDest=2), n�o informar a tag IE do destinat�rio   }
    end else

    if dm.Sds_NfeTIPO_pessoa.Text = 'J' then
    begin
    if dm.sds_nfeIE_cliente_forn.text > '' then
    begin
    Dest.IE                := dm.sds_nfeIE_cliente_forn.text;
    Dest.indIEDest        :=  inContribuinte;
    Ide.indFinal           := cfNao;
    end else
    if (dm.sds_nfeIE_cliente_forn.text = '') or (dm.sds_nfeIE_cliente_forn.text = 'ISENTO')then
    begin
    Dest.IE                :='';
    Ide.indFinal           :=  cfConsumidorFinal;
    Dest.indIEDest         :=  inNaoContribuinte;   {1=Contribuinte ICMS (informar a IE do destinat�rio);
                                                2=Contribuinte isento de Inscri��o no cadastro de
                                                  Contribuintes do ICMS;
                                                  9=N�o Contribuinte, que pode ou n�o possuir Inscri��o
                                                  Estadual no Cadastro de Contribuintes do ICMS;
                                                  Nota 1: No caso de NFC-e informar indIEDest=9 e n�o
                                                  informar a tag IE do destinat�rio;
                                                  Nota 2: No caso de opera��o com o Exterior informar
                                                  indIEDest=9 e n�o informar a tag IE do destinat�rio;
                                                  Nota 3: No caso de Contribuinte Isento de Inscri��o
                                                  (indIEDest=2), n�o informar a tag IE do destinat�rio   }
    end;
    end;
    Dest.xNome             := dm.sds_nfeNOME_CLIENTE_FOR.TEXT;
    Dest.ISUF              := '';

  //  MessageDlg('Teste 1. cep'+RemoveChar(dm.sds_nfeCEP_CLIENTE_FORN.Text),mtError,[mbok],0);

    Dest.EnderDest.CEP     := StrToInt(RemoveChar(dm.sds_nfeCEP_CLIENTE_FORN.Text));//StrToIntDef((Copy(dm.sds_nfeCEP_CLIENTE_FORN.Text, 1, 5))+Copy(dm.sds_nfeCEP_CLIENTE_FORN.Text, 6, 3), 0);
    Dest.EnderDest.xLgr    := dm.sds_nfeEndereco_CLI_FORN.Text;
    Dest.EnderDest.nro     := dm.sds_nfeEND_NUM_CLIENTE.Text;
    Dest.EnderDest.xCpl    := '';
    Dest.EnderDest.xBairro := dm.sds_nfeBAIRRO_CLIENTE_FORN.Text;
    Dest.EnderDest.cMun    := StrToIntDef(dm.sds_nfeCOD_IBGE.TEXT,0);
    Dest.EnderDest.xMun    := dm.sds_nfeCIDADE_CLIENTE_FORN.Text;
    Dest.EnderDest.UF      := dm.sds_nfeUF_CLIENTE_FORN.Text;
    Dest.EnderDest.Fone    := dm.sds_nfeTELEFONE.TEXT;
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


    DM.sds_nfe_itens.First;
    Contador :=0;
    Contador := DM.sds_nfe_itens.RecordCount;
    FreteDividido:= DM.SDS_NFEVL_FRETE.Asfloat / Contador;
    For E:=1 to Contador do
     begin
      with Det.Add do
       begin
        //vendas
        if ((FormGefaNFe.combobox2.itemIndex = 0) or (FormGefaNFe.combobox2.itemIndex = 2))   then
        begin
         with FormGefaNFe.QBuscaItens do
            begin
               close;
               Parambyname('cod_ven').AsInteger:= strtoint(dm.sds_nfe_itensCD_ATUALIZACAO.Text);
               Parambyname('codpro').AsInteger:= strtoint(DM.sds_nfe_itensCODIGO_PROD.text);
               open;
               Last;
            end;
         end;


        //entrada
        if (FormGefaNFe.combobox2.itemIndex = 1)    then
        begin
         with FormGefaNFe.QBuscaItens1 do
            begin
               close;
               Parambyname('cod_nota').value := dm.sds_nfe_itensCD_ATUALIZACAO.value;
               Parambyname('codpro').value   := DM.sds_nfe_itensCODIGO_PROD.value;
               open;
               Last;
            end;
         end;

         Prod.nItem    := DM.sds_nfe_itensITEN.AsInteger; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    := DM.sds_nfe_itensCODIGO_PROD.text;
         Prod.cEAN     := dM.sds_nfe_itensCOD_PRODUTO.text;
         Prod.xProd    := DM.sds_nfe_itensDESCRICAO_PRODUTO.TEXT;
         Prod.NCM      := DM.sds_nfe_itensCOD_NCM.Text; // Tabela NCM dispon�vel em
         Prod.EXTIPI   := '';
         Prod.CFOP     := dm.sds_nfe_itensCFOP.text;

         Prod.uCom     := dm.sds_nfe_itensDESC_UNIDADE.text;
         Prod.qCom     := dm.sds_nfe_itensQT_PRODUTO.asfloat;
         Prod.vUnCom   := dm.sds_nfe_itensVL_UNITARIO.AsFloat;

         Prod.vProd    := dm.sds_nfe_itensVL_TOTAL.AsFloat;

         if Date > 04/01/2016 then
         prod.CEST     := DM.sds_nfe_itensCEST.Text;

      //   MessageDlg('Teste 2. qtde caixa '+FormGefaNFe.QBuscaItensQTD_CAIXA.text,mtError,[mbok],0);

         Prod.cEANTrib  := dM.sds_nfe_itensCOD_PRODUTO.text;
        //vendas
        if ((FormGefaNFe.combobox2.itemIndex = 0) or (FormGefaNFe.combobox2.itemIndex = 2))   then
        begin
          if FormGefaNFe.QBuscaItensML_QUANT_BEB.asfloat >= 0.001 then
          begin
            Prod.uTrib     := FormGefaNFe.QBuscaItensUND_TRIB.text;
            Prod.qTrib     := dm.sds_nfe_itensQT_PRODUTO.ASFLOAT * StrToIntDef(FormGefaNFe.QBuscaItensQTD_CAIXA.Text,0) * FormGefaNFe.QBuscaItensML_QUANT_BEB.ASFLOAT;
            Prod.vUnTrib   := dm.sds_nfe_itensVL_TOTAL.ASFLOAT / Prod.qTrib;
          end
          else
          begin
            Prod.uTrib     := dm.sds_nfe_itensDESC_UNIDADE.text;
            Prod.qTrib     := dm.sds_nfe_itensQT_PRODUTO.AsFloat;
            Prod.vUnTrib   := dm.sds_nfe_itensVL_UNITARIO.AsFloat;
          end;
        end;

        if (FormGefaNFe.combobox2.itemIndex = 1)    then
        begin
          if FormGefaNFe.QBuscaItens1ML_QUANT_BEB.asfloat >= 0.001 then
          begin
            Prod.uTrib     := FormGefaNFe.QBuscaItens1UND_TRIB.text;
            Prod.qTrib     := dm.sds_nfe_itensQT_PRODUTO.ASFLOAT * StrToIntDef(FormGefaNFe.QBuscaItensQTD_CAIXA.Text,0) * FormGefaNFe.QBuscaItens1ML_QUANT_BEB.ASFLOAT;
            Prod.vUnTrib   := dm.sds_nfe_itensVL_TOTAL.ASFLOAT / Prod.qTrib;
          end
          else
          begin
            Prod.uTrib     := dm.sds_nfe_itensDESC_UNIDADE.text;
            Prod.qTrib     := dm.sds_nfe_itensQT_PRODUTO.AsFloat;
            Prod.vUnTrib   := dm.sds_nfe_itensVL_UNITARIO.AsFloat;
          end;
        end;

         Prod.vFrete    := FreteDividido;
         Prod.vSeg      := 0;
         Prod.vDesc     := dm.sds_nfe_itensVL_DESCONTO.AsFloat;

         Prod.vOutro    := DM.sds_nfe_itensVL_OUTROS.AsFloat;

         tributo := 0;
         tributos :='';



//         if ConvertCurrency(edtBaseICMSST.Text) > 0  then
//          begin
//            dm.SDS_NFEVL_ICM_SUBST.AsFloat:= (ConvertCurrency(edtBaseICMSST.Text) / 100) * dm.SDS_NFEVL_TOTAL.AsFloat ;
//            dM.SDS_NFEVL_BASE_ICM_SUBST.AsFloat := (ConvertCurrency(edtPercentualICMSST.text) / 100) * dm.SDS_NFEVL_ICM_SUBST.AsFloat ;
//            edtBaseICMSST.hint:= FloatToStrF(dM.SDS_NFEVL_BASE_ICM_SUBST.AsFloat + ((dm.SDS_NFEVL_TOTAL.AsFloat / 100) * 4.11),ffNumber,12,2);
//            edtPercentualICMSST.hint:= FloatToStrF((ConvertCurrency(edtPercentualICMSST.text) / 100) * dm.SDS_NFEVL_ICM_SUBST.AsFloat,ffnumber,12,2);
//            dm.SDS_NFEVL_TOTAL.AsFloat:= dm.SDS_NFEVL_TOTAL.AsFloat + dM.SDS_NFEVL_BASE_ICM_SUBST.AsFloat;
//          end;
         //VENDAS


           if FormGefaNFe.QBuscaItensalic_nac.AsFloat > 0.01 then
           begin
             if ConvertCurrency(FormGefaNFe.edtBaseICMSST.Text) > 0  then
             begin
               BaseICMS_T:=  ((ConvertCurrency(FormGefaNFe.edtPercentualICMSST.text) / 100) * (ConvertCurrency(FormGefaNFe.edtBaseICMSST.Text) / 100)) * dm.sds_nfe_itensVL_TOTAL.ASFLOAT;
               tributo := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItensALIC_estadual.AsFloat / 100 + BaseICMS_T),2);
               tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo) + ' PERC ' + FloatToStr(FormGefaNFe.QBuscaItensALIC_estadual.AsFloat) +' Fonte: IBPT';
             end
             else
             begin
               tributo := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItensALIC_NAC.AsFloat / 100),2);
               tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo) + ' PERC ' + FloatToStr(FormGefaNFe.QBuscaItensALIC_NAC.AsFloat) +' Fonte: IBPT';
             end;
           end;
           // ENTRADAS
           if FormGefaNFe.QBuscaItens1alic_nac.AsFloat > 0.01 then
           begin
             if ConvertCurrency(FormGefaNFe.edtBaseICMSST.Text) > 0  then
             begin
               BaseICMS_T:=  ((ConvertCurrency(FormGefaNFe.edtPercentualICMSST.text) / 100) * (ConvertCurrency(FormGefaNFe.edtBaseICMSST.Text) / 100)) * dm.sds_nfe_itensVL_TOTAL.ASFLOAT;
               tributo := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItens1ALIC_estadual.ASFLOAT / 100+ BaseICMS_T),2);
               tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo) + ' PERC ' + FloatToStr(FormGefaNFe.QBuscaItens1ALIC_estadual.AsFloat) +' Fonte: IBPT';
             end
             else
             begin
               tributo := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItens1ALIC_NAC.AsFloat / 100),2);
               tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo) + ' PERC ' + FloatToStr(FormGefaNFe.QBuscaItens1ALIC_NAC.AsFloat) +' Fonte: IBPT';
             end;
           end;

       {  if FormGefaNFe.QBuscaItensPERC_TRIBU.AsFloat > 0.01 then
         begin
           tributo := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItensPERC_TRIBU.AsFloat / 100),2);
           tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo) + ' PERC ' + FloatToStr(FormGefaNFe.QBuscaItensPERC_TRIBU.AsFloat) +' Fonte: '+ FormGefaNFe.QBuscaItensfonte.text;
         end; }

        // prod.xPed := Tributos;
//         if FormGefaNFe.QBuscaItensAPLICACAO.asstring > '' then
//         begin
         FDic := FormGefaNFe.QBuscaItensAPLICACAO.text;
         infAdProd   := FDic +#13+#10+ tributos;
//         end else
//         infAdProd   := FDic +#13+#10+ tributos;



         
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
      if FormGefaNFe.QBuscaItensVEICULO.TEXT ='S' THEN
       BEGIN
         with Prod.veicProd do
          begin
            tpOP     := toOutros;
            chassi   := FormGefaNFe.QBuscaItensCHASSI.TEXT;
            cCor     := Trim(FormGefaNFe.QBuscaItensCOR.Text);
            xCor     := FormGefaNFe.QBuscaItensCOR_DESC.TEXT;
            pot      := '0';
            Cilin    := '0';
            pesoL    := FormGefaNFe.QBuscaItensPESOLIQUIDO.TEXT;
            pesoB    := FormGefaNFe.QBuscaItensPESOBRUTO.TEXT;
            nSerie   := FormGefaNFe.QBuscaItensN_SERIE.TEXT;
            tpComb   := FormGefaNFe.QBuscaItensTIPO_COMBUSTIVEL.TEXT;
            nMotor   := FormGefaNFe.QBuscaItensN_MOTOR.TEXT;
            CMT      := '0';
            dist     := '1';
           // RENAVAM := '';
            anoMod   := STRTOINT(FormGefaNFe.QBuscaItensANO_FAB.TEXT);
            anoFab   := STRTOINT(FormGefaNFe.QBuscaItensANO_MOD_FAB.TEXT);
            tpPint   := '0';
            tpVeic   := STRTOINT(FormGefaNFe.QBuscaItensTIPO_VEIC.TEXT);
            espVeic  := STRTOINT(FormGefaNFe.QBuscaItensESPECIE_VEICULO.TEXT);
            VIN      := 'N';
            condVeic := cvAcabado;
            cMod     := FormGefaNFe.QBuscaItensANO_FAB.TEXT;
            cCorDENATRAN := FormGefaNFe.QBuscaItensCOD_COR_DENATRAN.TEXT;
            lota         := 0;
            tpRest       := 0;
          end;
          end;



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


        IF  FormGefaNFe.QBuscaItensCombustivel.text = 'S' then
        BEGIN

          if FormGefaNFe.QBuscaItensCOD_ANP.TEXT ='' then
           begin
          ShowMessage('Favor Preencher o CODIGO ANP no cadastro do produto que est� em branco');
          Exit;
          Abort;
          end else

         with Prod.comb do
          begin

            // UF DE CONSUMO DO COMBUSTIVEL
            if checkbox5.checked = true then
            begin
            cProdANP := strtoint(FormGefaNFe.QBuscaItensCOD_ANP.TEXT);
            descANP  :=  FormGefaNFe.QBuscaItensDESC_PROD_ANP.TEXT ;
            UFCons   :=  dm.sds_empresauf.text

            end else
            begin
            cProdANP := strtoint(FormGefaNFe.QBuscaItensCOD_ANP.TEXT);
            CODIF    := '0';
            qTemp    :=  StrToFloatDef(dm.sds_nfe_itensQT_PRODUTO.Text,0.00);
            UFCons   :=  dm.sds_nfeUF_CLIENTE_FORN.Text;
            descANP  :=  FormGefaNFe.QBuscaItensDESC_PROD_ANP.TEXT ;

            CIDE.qBCprod   := 0 ;
            CIDE.vAliqProd := 0 ;
            CIDE.vCIDE     := 0 ;


            ICMS.vBCICMS   := 0 ;
            ICMS.vICMS     := 0 ;
            ICMS.vBCICMSST := 0 ;
            ICMS.vICMSST   := 0;

            ICMSInter.vBCICMSSTDest := 0 ;
            ICMSInter.vICMSSTDest   := 0 ;

            ICMSCons.vBCICMSSTCons := 0 ;
            ICMSCons.vICMSSTCons   := 0 ;
            ICMSCons.UFcons        := dm.sds_nfeUF_CLIENTE_FORN.Text;

            end;
          end;
         end;



         with Imposto do
          begin

           // vTotTrib := 0;
          //  lei dilma


          tributo := 0;
          tributos :='';
           // SAIDA
//           if ConvertCurrency(edtBaseICMSST.Text) > 0  then
//            begin
//              dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := (ConvertCurrency(edtBaseICMSST.Text) / 100) * dm.SDS_NFEVL_TOTAL.AsFloat;
//              dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := (ConvertCurrency(edtPercentualICMSST.text) / 100) * dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
//            end
//            else
//            begin
//              dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := formvendas.sds_pedidos_itensBASE_ICMS_SUBST.AsFloat ;
//              dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := formvendas.sds_pedidos_itensVL_ICMS_SUBST.AsFloat  ;
//            end;

             if FormGefaNFe.QBuscaItensalic_nac.AsFloat > 0.01 then
             begin
               if ConvertCurrency(FormGefaNFe.edtBaseICMSST.Text) > 0  then
               begin
                 BaseICMS_T:=  ((ConvertCurrency(FormGefaNFe.edtPercentualICMSST.text) / 100) * (ConvertCurrency(FormGefaNFe.edtBaseICMSST.Text) / 100)) * dm.sds_nfe_itensVL_TOTAL.ASFLOAT;
                 tributo := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItensALIC_estadual.AsFloat / 100 + BaseICMS_T),2);
                 tributo1 := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItensALIC_estadual.AsFloat / 100 + BaseICMS_T),2);
               end
               else
               begin
                 tributo := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItensALIC_NAC.AsFloat / 100),2);
                 tributo1 := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItensALIC_NAC.AsFloat / 100),2);
               end;

               tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo) + ' PERC ' + FloatToStr(FormGefaNFe.QBuscaItensALIC_NAC.AsFloat) +' Fonte: IBPT';
               vTotTrib := tributo;
               total_trib := total_trib + tributo1;
             end ;
              //ENTRADAS
              if FormGefaNFe.QBuscaItens1alic_nac.AsFloat > 0.01 then
             begin
               if ConvertCurrency(FormGefaNFe.edtBaseICMSST.Text) > 0  then
               begin
                 BaseICMS_T:=  ((ConvertCurrency(FormGefaNFe.edtPercentualICMSST.text) / 100) * (ConvertCurrency(FormGefaNFe.edtBaseICMSST.Text) / 100)) * dm.sds_nfe_itensVL_TOTAL.ASFLOAT;
                 tributo := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItens1ALIC_estadual.AsFloat / 100 + BaseICMS_T),2);
                 tributo1 := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItens1ALIC_estadual.AsFloat / 100 + BaseICMS_T),2);
               end
               else
               begin
                  tributo := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItens1ALIC_NAC.AsFloat / 100),2);
                  tributo1 := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItens1ALIC_NAC.AsFloat / 100),2);
               end;

               tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo) + ' PERC ' + FloatToStr(FormGefaNFe.QBuscaItens1ALIC_NAC.AsFloat) +' Fonte: IBPT';
               vTotTrib := tributo;
               total_trib := total_trib + tributo1;
             end ;

          { if FormGefaNFe.QBuscaItensPERC_TRIBU.AsFloat > 0.01 then
          begin
           tributo := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItensPERC_TRIBU.AsFloat / 100),2);
           tributo1 := ExatoCurrency((dm.sds_nfe_itensVL_TOTAL.ASFLOAT * FormGefaNFe.QBuscaItensPERC_TRIBU.AsFloat / 100),2);
           tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo) + ' PERC ' + FloatToStr(FormGefaNFe.QBuscaItensPERC_TRIBU.AsFloat) +' Fonte: '+ FormGefaNFe.QBuscaItensfonte.text;
           vTotTrib := tributo;
          end; }
          // vTotTrib := 0;



            with ICMS do
             begin
              if CHECKBOX5.CHECKED = TRUE  then
              begin

              orig    := oeNacional;
              CST := cstRep60;
              vBCSTRet:= 0;
              vICMSSTRet :=0;
              vBCSTDest := 0;
              vICMSSTDest :=0;
              end else
              BEGIN
                IF DM.SDS_EmpresaREGIME.Text = 'S' then
                begin
                if dm.sds_nfe_itensCST.Text = '101' then  CSOSN := csosn101;
                if dm.sds_nfe_itensCST.Text = '102' then  CSOSN := csosn102;
                if dm.sds_nfe_itensCST.Text = '103' then  CSOSN := csosn103;
                if dm.sds_nfe_itensCST.Text = '201' then  CSOSN := csosn201;
                if dm.sds_nfe_itensCST.Text = '202' then  CSOSN := csosn202;
                if dm.sds_nfe_itensCST.Text = '203' then  CSOSN := csosn203;
                if dm.sds_nfe_itensCST.Text = '300' then  CSOSN := csosn300;
                if dm.sds_nfe_itensCST.Text = '400' then  CSOSN := csosn400;
                if dm.sds_nfe_itensCST.Text = '500' then  CSOSN := csosn500;
                if dm.sds_nfe_itensCST.Text = '900' then  CSOSN := csosn900;
                 ICMS.orig    := oeNacional;
                 ICMS.modBC   := dbiValorOperacao;
                 ICMS.vBC     := StrToFloatDef(DM.sds_nfe_itensVL_base_icm.Text,0.00);
                 ICMS.pICMS   := StrToFloatDef(DM.sds_nfe_itensALIQ_ICM.Text,0.00);
                 ICMS.vICMS   := StrToFloatDef(DM.sds_nfe_itensVL_ICM.Text,0.00);
                 ICMS.modBCST := dbisMargemValorAgregado;
                 ICMS.pMVAST  := 0;
                 ICMS.pRedBCST:= 0;
                 ICMS.vBCST   := DM.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
                 ICMS.pICMSST := DM.sds_nfe_itensALIQ_ICM_SUBST.AsFloat;
                 ICMS.vICMSST := DM.sds_nfe_itensVL_ICM_SUBST.AsFloat;
                 ICMS.pRedBC  := 0;
                 end;

               IF DM.SDS_EmpresaREGIME.Text = 'P' then
               begin
                if dm.sds_nfe_itensCST.Text = '000' then  CST   := cst00;
                if dm.sds_nfe_itensCST.Text = '010' then  CST   := cst10;
                if dm.sds_nfe_itensCST.Text = '020' then  CST   := cst20;
                if dm.sds_nfe_itensCST.Text = '030' then  CST   := cst30;
                if dm.sds_nfe_itensCST.Text = '040' then  CST   := cst40;
                if dm.sds_nfe_itensCST.Text = '041' then  CST   := cst41;
                if dm.sds_nfe_itensCST.Text = '050' then  CST   := cst50;
                if dm.sds_nfe_itensCST.Text = '051' then  CST   := cst51;
                if dm.sds_nfe_itensCST.Text = '060' then  CST   := cst60;
                if dm.sds_nfe_itensCST.Text = '070' then  CST   := cst70;
                if dm.sds_nfe_itensCST.Text = '080' then  CST   := cst80;
                if dm.sds_nfe_itensCST.Text = '090' then  CST   := cst90;
               ICMS.orig    := oeNacional;
               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := StrToFloatDef(DM.sds_nfe_itensVL_base_icm.Text,0.00);
               ICMS.pICMS   := StrToFloatDef(DM.sds_nfe_itensALIQ_ICM.Text,0.00);
               ICMS.vICMS   := StrToFloatDef(DM.sds_nfe_itensVL_ICM.Text,0.00);
               ICMS.modBCST := dbisMargemValorAgregado;
               ICMS.pMVAST  := 0;
               ICMS.pRedBCST:= 0;
               ICMS.vBCST   := DM.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
               ICMS.pICMSST := DM.sds_nfe_itensALIQ_ICM_SUBST.AsFloat;
               ICMS.vICMSST := DM.sds_nfe_itensVL_ICM_SUBST.AsFloat;
               ICMS.pRedBC  := 0;
               end;



               IF DM.SDS_EmpresaREGIME.Text = 'R' then
               begin
                if dm.sds_nfe_itensCST.Text = '000' then  CST   := cst00;
                if dm.sds_nfe_itensCST.Text = '010' then  CST   := cst10;
                if dm.sds_nfe_itensCST.Text = '020' then  CST   := cst20;
                if dm.sds_nfe_itensCST.Text = '030' then  CST   := cst30;
                if dm.sds_nfe_itensCST.Text = '040' then  CST   := cst40;
                if dm.sds_nfe_itensCST.Text = '041' then  CST   := cst41;
                if dm.sds_nfe_itensCST.Text = '050' then  CST   := cst50;
                if dm.sds_nfe_itensCST.Text = '051' then  CST   := cst51;
                if dm.sds_nfe_itensCST.Text = '060' then  CST   := cst60;
                if dm.sds_nfe_itensCST.Text = '070' then  CST   := cst70;
                if dm.sds_nfe_itensCST.Text = '080' then  CST   := cst80;
                if dm.sds_nfe_itensCST.Text = '090' then  CST   := cst90;
               ICMS.orig    := oeNacional;
               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := StrToFloatDef(DM.sds_nfe_itensVL_base_icm.Text,0.00);
               ICMS.pICMS   := StrToFloatDef(DM.sds_nfe_itensALIQ_ICM.Text,0.00);
               ICMS.vICMS   := StrToFloatDef(DM.sds_nfe_itensVL_ICM.Text,0.00);
               ICMS.modBCST := dbisMargemValorAgregado;
               ICMS.pMVAST  := 0;
               ICMS.pRedBCST:= 0;
               ICMS.vBCST   := DM.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
               ICMS.pICMSST := DM.sds_nfe_itensALIQ_ICM_SUBST.AsFloat;
               ICMS.vICMSST := DM.sds_nfe_itensVL_ICM_SUBST.AsFloat;
               ICMS.pRedBC  := 0;
               end;
             end;
             end;

             with IPI do
             begin
               IF DM.SDS_EmpresaREGIME.Text = 'R' then
               begin
               IF  dm.sds_nfe_itensVL_BASE_IPI.VALUE > 0 THEN
               BEGIN
                if dm.sds_nfe_itensCST_IPI.Text = '00' then  CST   := ipi00;
                if dm.sds_nfe_itensCST_IPI.Text = '01' then  CST   := ipi01;
                if dm.sds_nfe_itensCST_IPI.Text = '02' then  CST   := ipi02;
                if dm.sds_nfe_itensCST_IPI.Text = '03' then  CST   := ipi03;
                if dm.sds_nfe_itensCST_IPI.Text = '04' then  CST   := ipi04;
                if dm.sds_nfe_itensCST_IPI.Text = '05' then  CST   := ipi05;
                if dm.sds_nfe_itensCST_IPI.Text = '49' then  CST   := ipi49;
                if dm.sds_nfe_itensCST_IPI.Text = '50' then  CST   := ipi50;
                if dm.sds_nfe_itensCST_IPI.Text = '51' then  CST   := ipi51;
                if dm.sds_nfe_itensCST_IPI.Text = '52' then  CST   := ipi52;
                if dm.sds_nfe_itensCST_IPI.Text = '53' then  CST   := ipi53;
                if dm.sds_nfe_itensCST_IPI.Text = '54' then  CST   := ipi54;
                if dm.sds_nfe_itensCST_IPI.Text = '55' then  CST   := ipi55;
                if dm.sds_nfe_itensCST_IPI.Text = '99' then  CST   := ipi99;
                clEnq    := '';
                CNPJProd := '';
                cSelo    := '';
                qSelo    := 0;
                cEnq     := '';

               vBC    := StrToFloatDef(dm.sds_nfe_itensVL_BASE_IPI.text,0.00);
               qUnid  := StrToFloatDef(dm.sds_nfe_itensQT_PRODUTO.Text,0.00);
               vUnid  := StrToFloatDef(dm.sds_nfe_itensVL_UNITARIO.Text,0.00);
               pIPI   := StrToFloatDef(dm.sds_nfe_itensALIQ_ipi.Text,0.00);
               vIPI   := StrToFloatDef(dm.sds_nfe_itensVL_ipi.Text,0.00);
               END;
               END else


               IF DM.SDS_EmpresaREGIME.Text = 'P' then
               begin
               IF  dm.sds_nfe_itensVL_BASE_IPI.VALUE > 0 THEN
               BEGIN
                if dm.sds_nfe_itensCST_IPI.Text = '00' then  CST   := ipi00;
                if dm.sds_nfe_itensCST_IPI.Text = '01' then  CST   := ipi01;
                if dm.sds_nfe_itensCST_IPI.Text = '02' then  CST   := ipi02;
                if dm.sds_nfe_itensCST_IPI.Text = '03' then  CST   := ipi03;
                if dm.sds_nfe_itensCST_IPI.Text = '04' then  CST   := ipi04;
                if dm.sds_nfe_itensCST_IPI.Text = '05' then  CST   := ipi05;
                if dm.sds_nfe_itensCST_IPI.Text = '49' then  CST   := ipi49;
                if dm.sds_nfe_itensCST_IPI.Text = '50' then  CST   := ipi50;
                if dm.sds_nfe_itensCST_IPI.Text = '51' then  CST   := ipi51;
                if dm.sds_nfe_itensCST_IPI.Text = '52' then  CST   := ipi52;
                if dm.sds_nfe_itensCST_IPI.Text = '53' then  CST   := ipi53;
                if dm.sds_nfe_itensCST_IPI.Text = '54' then  CST   := ipi54;
                if dm.sds_nfe_itensCST_IPI.Text = '55' then  CST   := ipi55;
                if dm.sds_nfe_itensCST_IPI.Text = '99' then  CST   := ipi99;
               clEnq    := '';
               CNPJProd := '';
               cSelo    := '';
               qSelo    := 0;
               cEnq     := '';

               vBC    := StrToFloatDef(dm.sds_nfe_itensVL_BASE_IPI.text,0.00);
               qUnid  := StrToFloatDef(dm.sds_nfe_itensQT_PRODUTO.Text,0.00);
               vUnid  := StrToFloatDef(dm.sds_nfe_itensVL_UNITARIO.Text,0.00);
               pIPI   := StrToFloatDef(dm.sds_nfe_itensALIQ_IPI.Text,0.00);
               vIPI   := StrToFloatDef(dm.sds_nfe_itensvl_ipi.Text,0.00);
               END;
               END else

               IF DM.SDS_EmpresaREGIME.Text = 'S' then
               begin
               IF  dm.sds_nfe_itensVL_BASE_IPI.VALUE > 0 THEN
               BEGIN
               CST      := ipi99 ;
               clEnq    := '';
               CNPJProd := '';
               cSelo    := '';
               qSelo    := 0;
               cEnq     := '';

               vBC    := StrToFloatDef(dm.sds_nfe_itensVL_BASE_IPI.text,0.00);
               qUnid  := StrToFloatDef(dm.sds_nfe_itensQT_PRODUTO.Text,0.00);
               vUnid  := StrToFloatDef(dm.sds_nfe_itensVL_UNITARIO.Text,0.00);
               pIPI   := StrToFloatDef(dm.sds_nfe_itensALIQ_IPI.Text,0.00);
               vIPI   := StrToFloatDef(dm.sds_nfe_itensvl_ipi.Text,0.00);
               end;
               end;
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
               IF DM.SDS_EmpresaREGIME.Text = 'S' then
               begin
               CST      := pis99;
               PIS.vBC  := 0;
               PIS.pPIS := 0;
               PIS.vPIS := 0;

               PIS.qBCProd   := 0;
               PIS.vAliqProd := 0;
               end else

                if dm.sds_nfe_itensCST_PIS.Text = '01' then  CST   := pis01;
                if dm.sds_nfe_itensCST_PIS.Text = '02' then  CST   := pis02;
                if dm.sds_nfe_itensCST_PIS.Text = '03' then  CST   := pis03;
                if dm.sds_nfe_itensCST_PIS.Text = '04' then  CST   := pis04;
                if dm.sds_nfe_itensCST_PIS.Text = '05' then  CST   := pis05;
                if dm.sds_nfe_itensCST_PIS.Text = '06' then  CST   := pis06;
                if dm.sds_nfe_itensCST_PIS.Text = '07' then  CST   := pis07;
                if dm.sds_nfe_itensCST_PIS.Text = '08' then  CST   := pis08;
                if dm.sds_nfe_itensCST_PIS.Text = '09' then  CST   := pis09;
                if dm.sds_nfe_itensCST_PIS.Text = '49' then  CST   := pis49;
                if dm.sds_nfe_itensCST_PIS.Text = '50' then  CST   := pis50;
                if dm.sds_nfe_itensCST_PIS.Text = '51' then  CST   := pis51;
                if dm.sds_nfe_itensCST_PIS.Text = '52' then  CST   := pis52;
                if dm.sds_nfe_itensCST_PIS.Text = '53' then  CST   := pis53;
                if dm.sds_nfe_itensCST_PIS.Text = '54' then  CST   := pis54;
                if dm.sds_nfe_itensCST_PIS.Text = '55' then  CST   := pis55;
                if dm.sds_nfe_itensCST_PIS.Text = '56' then  CST   := pis56;
                if dm.sds_nfe_itensCST_PIS.Text = '60' then  CST   := pis60;
                if dm.sds_nfe_itensCST_PIS.Text = '61' then  CST   := pis61;
                if dm.sds_nfe_itensCST_PIS.Text = '62' then  CST   := pis62;
                if dm.sds_nfe_itensCST_PIS.Text = '63' then  CST   := pis63;
                if dm.sds_nfe_itensCST_PIS.Text = '64' then  CST   := pis64;
                if dm.sds_nfe_itensCST_PIS.Text = '65' then  CST   := pis65;
                if dm.sds_nfe_itensCST_PIS.Text = '66' then  CST   := pis66;
                if dm.sds_nfe_itensCST_PIS.Text = '67' then  CST   := pis67;
                if dm.sds_nfe_itensCST_PIS.Text = '70' then  CST   := pis70;
                if dm.sds_nfe_itensCST_PIS.Text = '71' then  CST   := pis71;
                if dm.sds_nfe_itensCST_PIS.Text = '72' then  CST   := pis72;
                if dm.sds_nfe_itensCST_PIS.Text = '73' then  CST   := pis73;
                if dm.sds_nfe_itensCST_PIS.Text = '74' then  CST   := pis74;
                if dm.sds_nfe_itensCST_PIS.Text = '75' then  CST   := pis75;
                if dm.sds_nfe_itensCST_PIS.Text = '98' then  CST   := pis98;
                if dm.sds_nfe_itensCST_PIS.Text = '99' then  CST   := pis99;

               PIS.vBC  := StrToFloatDef(dm.sds_nfe_itensVL_base_pis.Text,0.00);
               PIS.pPIS := StrToFloatDef(dm.sds_nfe_itensALIQ_PIS.Text,0.00);
               PIS.vPIS := StrToFloatDef(dm.sds_nfe_itensVL_PIS.Text,0.00);
              { PIS.qBCProd   := StrToFloatDef(dm.sds_nfe_itensQT_PRODUTO.Text,0.00);
               PIS.vAliqProd := StrToFloatDef(dm.sds_nfe_itensALIQ_PIS.Text,0.00);  }
               PIS.qBCProd   := 0;
               PIS.vAliqProd := 0;

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
              IF DM.SDS_EmpresaREGIME.Text = 'S' then
               begin
               CST            := cof99;
               COFINS.vBC     := 0;
               COFINS.pCOFINS := 0;
               COFINS.vCOFINS := 0;

               COFINS.qBCProd   := 0;
               COFINS.vAliqProd := 0;
              end else

                if dm.sds_nfe_itensCST_COFINS.Text = '01' then  CST   := cof01;
                if dm.sds_nfe_itensCST_COFINS.Text = '02' then  CST   := cof02;
                if dm.sds_nfe_itensCST_COFINS.Text = '03' then  CST   := cof03;
                if dm.sds_nfe_itensCST_COFINS.Text = '04' then  CST   := cof04;
                if dm.sds_nfe_itensCST_COFINS.Text = '05' then  CST   := cof05;
                if dm.sds_nfe_itensCST_COFINS.Text = '06' then  CST   := cof06;
                if dm.sds_nfe_itensCST_COFINS.Text = '07' then  CST   := cof07;
                if dm.sds_nfe_itensCST_COFINS.Text = '08' then  CST   := cof08;
                if dm.sds_nfe_itensCST_COFINS.Text = '09' then  CST   := cof09;
                if dm.sds_nfe_itensCST_COFINS.Text = '49' then  CST   := cof49;
                if dm.sds_nfe_itensCST_COFINS.Text = '50' then  CST   := cof50;
                if dm.sds_nfe_itensCST_COFINS.Text = '51' then  CST   := cof51;
                if dm.sds_nfe_itensCST_COFINS.Text = '52' then  CST   := cof52;
                if dm.sds_nfe_itensCST_COFINS.Text = '53' then  CST   := cof53;
                if dm.sds_nfe_itensCST_COFINS.Text = '54' then  CST   := cof54;
                if dm.sds_nfe_itensCST_COFINS.Text = '55' then  CST   := cof55;
                if dm.sds_nfe_itensCST_COFINS.Text = '56' then  CST   := cof56;
                if dm.sds_nfe_itensCST_COFINS.Text = '60' then  CST   := cof60;
                if dm.sds_nfe_itensCST_COFINS.Text = '61' then  CST   := cof61;
                if dm.sds_nfe_itensCST_COFINS.Text = '62' then  CST   := cof62;
                if dm.sds_nfe_itensCST_COFINS.Text = '63' then  CST   := cof63;
                if dm.sds_nfe_itensCST_COFINS.Text = '64' then  CST   := cof64;
                if dm.sds_nfe_itensCST_COFINS.Text = '65' then  CST   := cof65;
                if dm.sds_nfe_itensCST_COFINS.Text = '66' then  CST   := cof66;
                if dm.sds_nfe_itensCST_COFINS.Text = '67' then  CST   := cof67;
                if dm.sds_nfe_itensCST_COFINS.Text = '70' then  CST   := cof70;
                if dm.sds_nfe_itensCST_COFINS.Text = '71' then  CST   := cof71;
                if dm.sds_nfe_itensCST_COFINS.Text = '72' then  CST   := cof72;
                if dm.sds_nfe_itensCST_COFINS.Text = '73' then  CST   := cof73;
                if dm.sds_nfe_itensCST_COFINS.Text = '74' then  CST   := cof74;
                if dm.sds_nfe_itensCST_COFINS.Text = '75' then  CST   := cof75;
                if dm.sds_nfe_itensCST_COFINS.Text = '98' then  CST   := cof98;
                if dm.sds_nfe_itensCST_COFINS.Text = '99' then  CST   := cof99;

               COFINS.vBC     := StrToFloatDef(dm.sds_nfe_itensVL_base_COFINS.Text,0.00);
               COFINS.pCOFINS := StrToFloatDef(dm.sds_nfe_itensALIQ_COFINS.Text,0.00);
               COFINS.vCOFINS := StrToFloatDef(dm.sds_nfe_itensVL_COFINS.Text,0.00);

               COFINS.qBCProd   := 0;
               COFINS.vAliqProd := 0;
              // COFINS.qBCProd   := StrToFloatDef(dm.sds_nfe_itensQT_PRODUTO.Text,0.00);
              // COFINS.vAliqProd := StrToFloatDef(dm.sds_nfe_itensALIQ_COFINS.Text,0.00);
             end;

            with COFINSST do
             begin
               vBC       := 0;
               pCOFINS   := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vCOFINS   := 0;
             end;


             {if FormGefaNFe.QBuscaItensPERC_TRIBU.AsFloat > 0 then
             begin
             vTotTrib :=  FormGefaNFe.QBuscaItensPERC_TRIBU.AsInteger;
             end; }

             //Grupo para servi�os
            {  with ISSQN do
             begin
               vBC       := 0;
               vAliq     := 0;
               vISSQN    := 0;
               cMunFG    := 0;
               cListServ := 0; // Preencha este campo usando a tabela dispon�vel
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;}


              //-- Grupo de Tributa��o do ICMS para a UF de destino -->
              if FormGefaNFe.CheckBox4.Checked = true then
              begin
              IF DM.SDS_EmpresaREGIME.Text = 'S' then
              begin
              with ICMSUFDest do
              begin
                  vBCUFDest      := 0 ;
                  pFCPUFDest     := 0;
                  pICMSUFDest    := 0;
                  pICMSInter     := 0;

                  //-- Percentual referente ao ano de 2016 (40%) -->
                  pICMSInterPart := 0;
                  vFCPUFDest     := 0;
                  vICMSUFDest    := 0;
                  vICMSUFRemet   := 0;
              end;
             end;
             end;
          end;
       end ;

       DM.sds_nfe_itens.Next;
   end;

   if FormGefaNFe.CheckBox4.Checked = true then
   begin
      IF DM.SDS_EmpresaREGIME.Text = 'S' then
      begin

    // Valor total do ICMS relativo Fundo de Combate � Pobreza (FCP) da UF de destino -->
        Total.ICMSTot.vFCPUFDest := 0;

    //- Valor total do ICMS Interestadual para a UF de destino -->
        Total.ICMSTot.vICMSUFDest := 0;

    //-- Valor total do ICMS Interestadual para a UF do remetente -->
        Total.ICMSTot.vICMSUFRemet := 0;
      end;
   end;
      Total.ICMSTot.vBC     := StrToFloatDef(DM.SDS_NFEVL_BASE_ICM.Text,0.00);
      Total.ICMSTot.vICMS   := StrToFloatDef(DM.SDS_NFEVL_ICM.Text,0.00);
      Total.ICMSTot.vBCST   := StrToFloatDef(DM.SDS_NFEVL_BASE_ICM_SUBST.Text,0.00);
      Total.ICMSTot.vST     := StrToFloatDef(DM.SDS_NFEVL_ICM_SUBST.Text,0.00);
      Total.ICMSTot.vProd   := StrToFloatDef(DM.SDS_NFEVL_MERCADORIAS.Text,0.00);
      Total.ICMSTot.vFrete  := StrToFloatDef(DM.SDS_NFEVL_FRETE.Text,0.00);
      Total.ICMSTot.vSeg    := StrToFloatDef(DM.SDS_NFEVL_SEGURO.Text,0.00);
      Total.ICMSTot.vDesc   := StrToFloatDef(DM.SDS_NFEVL_DESCONTOS.Text,0.00);
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := StrToFloatDef(DM.SDS_NFEVL_IPI.Text,0.00);
      Total.ICMSTot.vPIS    := StrToFloatDef(DM.SDS_NFEVL_PIS.Text,0.00);
      Total.ICMSTot.vCOFINS := StrToFloatDef(DM.SDS_NFEVL_COFINS.Text,0.00);
      Total.ICMSTot.vOutro  := StrToFloatDef(DM.SDS_NFEVL_ACRESCIMOS.Text,0.00);
      Total.ICMSTot.vNF     := StrToFloatDef(DM.SDS_NFEVL_TOTAL.Text,0.00);

      Total.ISSQNtot.vServ   := StrToFloatDef(DM.SDS_NFEVL_SERVICOS.Text,0.00);
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

      Total.ICMSTot.vTotTrib := total_trib;


      FDvEdit1.Text := FloatToStr(total_trib);

      if FormGefaNFe.SuiradioGroup1.itemIndex = 0 then
      begin
      Transp.modFrete := mfContaEmitente;
      end else
      if FormGefaNFe.SuiradioGroup1.itemIndex = 1 then
      begin
      Transp.modFrete := mfContaDestinatario;
      end;

     // DM.SDS_transportador.Locate('CD_TRANSPORTADOR',DM.SDS_NFECD_TRANSPORTADORA.Text, [loCaseInsensitive]);

      Transp.Transporta.CNPJCPF  := DM.SDS_NFECNPJ_TRANSP.Text;
      Transp.Transporta.xNome    := DM.SDS_NFENOME_TRANSP.Text;
      Transp.Transporta.IE       := DM.SDS_NFEIE_TRANSP.Text;
      Transp.Transporta.xEnder   := DM.SDS_NFEEND_TRANSPORTADOR.TEXT;
      Transp.Transporta.xMun     := DM.SDS_NFECIDADE_TRANSP.Text;
      Transp.Transporta.UF       := DM.SDS_NFEUF_TRANSP.Text;

      Transp.retTransp.vServ    := 0;
      Transp.retTransp.vBCRet   := 0;
      Transp.retTransp.pICMSRet := 0;
      Transp.retTransp.vICMSRet := 0;
      Transp.retTransp.CFOP     := '';
      Transp.retTransp.cMunFG   := 0;

      Transp.veicTransp.placa :=  DM.SDS_NFEPLACA_TRANSP.text;
      Transp.veicTransp.UF    :=  DM.SDS_NFEUF_PLACA_TRANSP.text;
      Transp.veicTransp.RNTC  :=  FormGefaNFe.Edit10.text;
      //Dados do Reboque
    IF FormGefaNFe.Edit11.text >'' then
      BEGIN
      with Transp.Reboque.Add do
       begin
         placa :=  FormGefaNFe.Edit11.text;
         UF    :=  FormGefaNFe.ComboBox5.text;;
         RNTC  :=  FormGefaNFe.Edit12.text;
       end;
      end;

      with Transp.Vol.Add do
       begin
         qVol  := StrToIntDef(DM.SDS_NFEQt_volumes.Text,1); // 1;
         esp   := DM.SDS_NFEespecie_volumes.Text; //'Especie';
         marca := DM.SDS_NFEMarca_volumes.Text; //'Marca';
         nVol  := DM.SDS_NFENr_volumes.Text; //'Numero';
         pesoL := StrToFloatDef(DM.SDS_NFEPEso_liquido.Text,0.00); //100;
         pesoB := StrToFloatDef(DM.SDS_NFEPEso_liquido.Text,0.00) //110;

         //Lacres do volume. Pode ser FDicionado v�rios
         //Lacres.Add.nLacre := '';
       end;

     if (FormGefaNFe.combobox4.itemIndex = 2) or (FormGefaNFe.combobox4.itemIndex =  3) then
     begin
     pag.New.tPag    := fpsempagamento;
     end;

     if (FormGefaNFe.combobox4.itemIndex = 0) or (FormGefaNFe.combobox4.itemIndex = 1 ) then
     begin
      if agrupado = true then
      begin
       pag.New.indPag    := ipPrazo;
       pag.New.tPag   := fpDuplicataMercantil;
       pag.New.vPag   := dm.SDS_NFEVL_total.AsFloat;
      end else
      if removeservico = true then
      begin
      pag.New.indPag    := ipPrazo;
      pag.New.tPag   := fpDuplicataMercantil;
      pag.New.vPag   := dm.SDS_NFEVL_total.AsFloat;
      end else
      begin
       if DM.SDS_NFEVL_AVISTA.VALUE > 0 then
       begin
       pag.New.indPag    := ipVista;
       pag.New.tPag   := fpDinheiro;
       pag.New.vPag   := dm.SDS_NFEVL_AVISTA.AsFloat;
       end else
       if DM.SDS_NFEVL_PRAZO.VALUE > 0 then
       begin
       pag.New.indPag    := ipPrazo;
       pag.New.tPag   := fpDuplicataMercantil;
       pag.New.vPag   := dm.SDS_NFEVL_PRAZO.AsFloat;
       end else

       begin
       pag.New.indPag :=  ipPrazo;
       pag.New.tPag   := fpDuplicataMercantil;
       pag.New.vPag   := dm.SDS_NFEVL_TOTAL.AsFloat;
       end;
       end;
       end;



    if (FormGefaNFe.combobox2.itemIndex = 0) or (FormGefaNFe.combobox2.itemIndex = 2) then
    begin
     if DM.SDS_NFEVL_PRAZO.AsFloat > 0 then
     begin
      Cobr.Fat.nFat  := DM.SDS_NFENR_NOTA.text; // DM.SDS_NFEPAGAMENTO.text; //'Numero da Fatura';
      Cobr.Fat.vOrig := StrToFloatDef(DM.SDS_NFEVL_mercadorias.Text,0.00) + StrToFloatDef(DM.SDS_NFEVL_acrescimos.Text,0.00) ; //100 ;
      Cobr.Fat.vDesc := StrToFloatDef(DM.SDS_NFEVL_DESCONTOS.Text,0.00); //0 ;
      Cobr.Fat.vLiq  := StrToFloatDef(DM.SDS_NFEVL_mercadorias.Text,0.00) + StrToFloatDef(DM.SDS_NFEVL_acrescimos.Text,0.00) - StrToFloatDef(DM.SDS_NFEVL_DESCONTOS.Text,0.00); //100 ;
     end;
    { begin
      Cobr.Fat.nFat  := 'Avista';
      Cobr.Fat.vOrig := StrToFloatDef(DM.SDS_NFEVL_TOTAL.Text,0.00); //100 ;
      Cobr.Fat.vDesc := 0; //0 ;
      Cobr.Fat.vLiq  := StrToFloatDef(DM.SDS_NFEVL_TOTAL.Text,0.00); //100 ;
     end;  }
    //DM.sds_crediario.last;




    if agrupado = false then
    begin

     DMC.QRY_COND_PAGTO.close;
     DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
     DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
     DMC.QRY_COND_PAGTO.Open;

    DMC.QRY_COND_PAGTO.First;
    Contador :=0;
    Contador := DMC.QRY_COND_PAGTO.RecordCount;
    if DM.SDS_NFEVL_PRAZO.AsFloat > 0 then
    IF  NOT DMC.QRY_COND_PAGTO.Eof THEN
    BEGIN
    begin
    For E:=1 to Contador do
     begin
      parcela := parcela + 1;// strtoint(Copy(DMC.QRY_COND_PAGTOPARCELA.Text ,1,1 ));
      StrZero(parcela,3) ;
      with Cobr.Dup.New do
       begin
         nDup  := StrZero(parcela,3) ; //DM.SDS_crediarioCodigo_compra.text +'-'+ DM.SDS_crediarioParcela.text; //'1234';
         if DMC.QRY_COND_PAGTOdata_Vencimento.TEXT = ''  then
          dVenc := NOW + 0
          ELSE
         dVenc := DMC.QRY_COND_PAGTOdata_Vencimento.asdatetime;//now+0;
        // vDup  := StrToFloatDef(DM.SDS_crediarioValor_compra.text,0.00);
         vDup  := DMC.QRY_COND_PAGTOvalor.asfloat;//(DM.SDS_NFEVL_TOTAL.ascurrency - DM.SDS_NFEVL_AVISTA.AsFloat) / parcela;
       end;
      DMC.QRY_COND_PAGTO.next;
       end;
       end;
     {  if dm.sds_nfevl_acrescimos.value then
        begin
          parcela :=parcela + 1:
          StrZero(parcela,3)
          nDup  := StrZero(parcela,3) ; //DM.SDS_crediarioCodigo_compra.text +'-'+ DM.SDS_crediarioParcela.text; //'1234';
          dVenc := DM.SDS_crediariodata_Vencimento.asdatetime;//now+0;
        // vDup  := StrToFloatDef(DM.SDS_crediarioValor_compra.text,0.00);
          vDup  := DM.SDS_crediario.asfloat;
        end; }
     END;
    end;
    end;
    {  END ELSE
      BEGIN
       with Cobr.Dup.New do
       begin
         nDup  := '001';
         dVenc := now+30;
         vDup  := (DM.SDS_NFEVL_TOTAL.ascurrency);
       end;
      end;
    end else
     BEGIN
       with Cobr.Dup.New do
       begin
         nDup  := '001';
         dVenc := now+30;
         vDup  := (DM.SDS_NFEVL_TOTAL.ascurrency);
       end;
     END;
    end else
    begin
      Cobr.Fat.nFat  := DM.SDS_NFENR_NOTA.text; // DM.SDS_NFEPAGAMENTO.text; //'Numero da Fatura';
      Cobr.Fat.vOrig := DM.SDS_NFEVL_TOTAL.ascurrency;
      Cobr.Fat.vDesc := 0 ;
      Cobr.Fat.vLiq  := DM.SDS_NFEVL_TOTAL.ascurrency;
        with Cobr.Dup.New do
       begin
         nDup  := '001';
         dVenc := now+30;
         vDup  := (DM.SDS_NFEVL_TOTAL.ascurrency);
       end;
     end;  }



      { if DM.SDS_NFEVL_AVISTA.AsFloat > 0 then
       begin
        with Cobr.Dup.Add do
       begin
         nDup  := 'Avista';  //DM.SDS_NFEPAGAMENTO.Text; //'1234';
         dVenc := now+0;
         vDup  := StrToFloatDef(DM.SDS_NFEVL_AVISTA.text,0.00);
       end;
       end; }




      InfAdic.infCpl := 'Obs: '+FormGefaNFe.edit6.text;

    // InfAdic.infAdFisco :=  'OBS: '+FormGefaNFe.edit6.text;

      with InfAdic.obsCont.Add do
       begin
         xCampo := 'Forma de Pagto:';
         xTexto := 'Pagto :'+ DM.SDS_NFEPAGAMENTO.text;
         xTexto := 'Vendedor:'+ FORMPRINCIPAL.USERLOGADO;

       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo :='Obs:';
         xTexto := '.' + FormGefaNFe.edit13.text;
       end;  

       //Processo referenciado
       {     with InfAdic.procRef.Add do
       begin
         nProc := '';
         indProc := ipSEFAZ;
       end;                 }

      exporta.UFembarq   := '';;
      exporta.xLocEmbarq := '';

      compra.xNEmp := '';
      compra.xPed  := '';
      compra.xCont := '';

      Application.ProcessMessages;

   end;

end;

procedure TFormNfe.btnConsultarChaveClick(Sender: TObject);
var
 vChave : String;
begin

   if Pos(RemoveChar(dm.SDS_EmpresaCNPJ.text), DM.ACBrNFe1.SSL.CertSubjectName) = 0 then
    begin
      showmessage('Certificado pertencente a outra empresa / pessoa'+chr(13)+DM.ACBrNFe1.SSL.CertSubjectName);
      exit;
    end;
 IF DM.ACBrNFe1.SSL.CertDataVenc < Now then
begin
 showmessage('Certificado vencido (data de validade expirada)');
 Exit;
end;

  if not(InputQuery('WebServices Consultar', 'Chave da NF-e:', vChave)) then
    exit;

  DM.ACBrNFe1.WebServices.Consulta.NFeChave := vChave;
  DM.ACBrNFe1.WebServices.Consulta.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Consulta.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(DM.ACBrNFe1.WebServices.Consulta.RetornoWS);
  LoadXML(MemoResp, WBResposta);
end;

procedure TFormNfe.btnCancelarChaveClick(Sender: TObject);
var
 Chave, Protocolo, Justificativa : string;
begin
{  if not(InputQuery('WebServices Cancelamento', 'Chave da NF-e', Chave)) then
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
  LoadXML(MemoResp, WBResposta);   }
end;

procedure TFormNfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{   if CheckBox1.Checked = True then
   begin
   if Tag = 1 then
   begin
   if valida_nfe = false then
   begin
   dm.SDS_NFE.Delete;
   DM.SDS_NFE.ApplyUpdates(0);
   end;
   end;

   if Tag = 2 then
   begin
   if valida_nfc = false then
   begin
   dm.SDS_NFcE.Delete;
   DM.SDS_NFcE.ApplyUpdates(0);
   end;
   end;
   end;   }

   Action := caFree;
   Application.OnException := nil;
   FormNfe := nil;
end;

procedure TFormNfe.btnAdicionarProtNFeClick(Sender: TObject);
var
  NomeArq : String;
begin
{  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Geral.PathSalvar;
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
    DM.ACBrNFe1.NotasFiscais.Items[0].SaveToFile(NomeArq);
    ShowMessage('Arquivo gravado em: '+NomeArq);
    memoLog.Lines.Add('Arquivo gravado em: '+NomeArq);
  end;
         }
end;

procedure TFormNfe.btnCarregarXMLEnviarClick(Sender: TObject);
begin
{ OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Geral.PathSalvar;
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
   { DM.ACBrNFe1.NotasFiscais.GerarNFe;
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
  end;   }
end;

procedure TFormNfe.btnCartadeCorrecaoClick(Sender: TObject);
var
 Chave, idLote, codOrgao, CNPJ, nSeqEvento, Correcao : string;
begin
{  if not(InputQuery('WebServices Carta de Corre��o', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
{  if not ValidarChave(Chave) then
   begin
     MessageDlg('Chave Inv�lida.',mtError,[mbok],0);
     exit;
   end;   }
{  idLote := '1';
  if not(InputQuery('WebServices Carta de Corre��o', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  codOrgao := copy(Chave,1,2);
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
  DM.ACBrNFe1.CartaCorrecao.CCe.Evento.Clear;
  with DM.ACBrNFe1.CartaCorrecao.CCe.Evento.Add do
   begin
     idLote           := idLote;
     infEvento.chNFe := Chave;
     infEvento.cOrgao := StrToInt(codOrgao);
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
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
  LoadXML(MemoResp, WBResposta);
     }
end;

procedure TFormNfe.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormNfe.CHE(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=vk_f2 then
begin
   btnStatusServClick(Sender);
end;

if Key=vk_f9 then
begin
   CHECKBOX3.CHECKED := True;
end;

if Key=vk_f3 then
begin
  IF btnCriarEnviar.Enabled = True THEN
   btnCriarEnviarClick(Sender);
end;

if Key=vk_f10 then
begin
   IF btnCriarEnviarNFCe.Enabled = True THEN
   btnCriarEnviarNFCeClick(Sender);
end;

if Key=vk_f5 then
begin
   Button3Click(Sender);
end;
end;


procedure TFormNfe.btnCriarEnviarNFCeClick(Sender: TObject);
var
  vAux, vNumLote, vSincrono, chave : String;
  Sincrono : boolean;
  url, tpAmb, cDest, Hash_SHA1 : string;
  IDEPEC, i, n, e: integer;
  Pag, cabecalho, pagamento,meio, itens, recibo: string;
  arq: TextFile;
  linha: string;
begin
  dm.ConfiguraNFCe;

  PODEFECHAR:= False;
  if Pos(RemoveChar(DM.SDS_EmpresaCNPJ.Text), DM.ACBrNFe1.SSL.CertSubjectName) = 0 then
  begin
    ShowMessage('Certificado pertencente a outra empresa / pessoa' + chr(13) + DM.ACBrNFe1.SSL.CertSubjectName);
    Exit;
  end;
  IF DM.ACBrNFe1.SSL.CertDataVenc < Now then
  begin
    ShowMessage('Certificado vencido (data de validade expirada)');
    Exit;
  end;
  valida_nfc:=true;

  DM.ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet:= 15000;
  DM.ACBrNFe1.Configuracoes.WebServices.AjustaAguardaConsultaRet:= True;
  DM.ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas:= 1000;
  DM.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  if DM.sds_configuracoesSERVICO_NFCE.asinteger = 0  then
    vSincrono:= '0'
  else
    vSincrono:= '1' ;
  vAux:= DM.SDS_NFCENR_NOTA.Text;
  vAux:= OnlyNumber(vAux);
  vNumLote:= '1';
  vNumLote:= OnlyNumber(vNumLote);
  if Trim(vNumLote) = EmptyStr then
  begin
    MessageDlg('N�mero do lote inv�lido.',mtError,[mbok],0);
    Exit;
  end;

  if (Trim(vSincrono) <> '1') and
    (Trim(vSincrono) <> '0')
  then
  begin
    MessageDlg('Valor inv�lido.',mtError,[mbok],0);
    Exit;
  end;
  Sincrono:= Trim(vSincrono) = '1';
  iCodigoNFe:= DM.SDS_NFCENR_NOTA.AsInteger;
  DM.ACBrNFe1.NotasFiscais.Clear;
  GerarNFCe(vAux);
  DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML();

  DM.SDS_NFCE.Edit;
  DM.SDS_NFCENR_LOTE_NFE.AsInteger:= StrToInt(vNumLote);
  dm.SDS_NFCESTATUS.Text:= 'N';
  DM.SDS_NFCECHAVE_ACESSO_NFE.Text:= Copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
  DM.SDS_NFCECHAVE2.Text:= 'NFE' + Copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
  DM.SDS_NFCEBXML.TEXT := DM.ACBrNFe1.NotasFiscais.Items[0].XML;
  DM.SDS_NFCE.Post;
  DM.SDS_NFCE.ApplyUpdates(0);

  DM.sds_nfce_itens.Edit;
  DM.sds_nfce_itens.Post;
  DM.sds_nfce_itens.ApplyUpdates(0);

  if CheckBox1.Checked then
  begin
    try
      DM.ACBrNFe1.WebServices.Consulta.NFeChave:= Copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
      dm.ACBrNFe1.WebServices.Consulta.Executar;
    except
      //--
    end;

    if DM.ACBrNFe1.WebServices.Consulta.cStat = 105 then
    begin
      MemoDados.Lines.Add('');
      MemoDados.Lines.Add('Envio NFC-e');
      MemoDados.Lines.Add('NFC-e ja enviada para sefaz. Aguardando...');
      Close;
    end;

    if (DM.ACBrNFe1.WebServices.Consulta.cStat = 100) then
    begin
      MemoDados.Lines.Add('');
      MemoDados.Lines.Add('Envio NFC-e');
      MemoDados.Lines.Add('NFC-e ja enviada para sefaz. Base de dados sera atualizada...');

      DM.SDS_NFCE.Edit;
      DM.SDS_NFCENR_LOTE_NFE.AsInteger:= StrToInt(vNumLote);
      dm.SDS_NFCESTATUS.Text:= 'S';
      dm.SDS_NFCEFL_IMPRESSO.Text:= 'S';
      dm.SDS_NFCEDT_EMISSAO.AsDateTime:= Date;
      DM.SDS_NFCENR_PROTOCOLO_NFE.Text:= DM.ACBrNFe1.WebServices.Consulta.Protocolo;
      DM.SDS_NFCENR_RECIBO_NFE.Text:= DM.ACBrNFe1.WebServices.Retorno.Recibo;
      DM.SDS_NFCECHAVE_ACESSO_NFE.Text:= DM.ACBrNFe1.WebServices.Consulta.NFeChave;
      DM.SDS_NFCECHAVE2.Text:= 'NFE'+ DM.ACBrNFe1.WebServices.Consulta.NFeChave;
      DM.SDS_NFCEMODELO.Text:= '65';
      DM.SDS_NFCE.Post;
        DM.SDS_NFCE.ApplyUpdates(0);

      valida_nfc:= True;
      btnCriarEnviarNFCe.Enabled:= False;
      PODEFECHAR:= True;
      Close;
    end;

  end;

  DM.ACBrNFe1.NotasFiscais.Clear;
  GerarNFCe(vAux);

  chave:= Copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);

  if (CheckBox1.Checked) or (CheckBox4.Checked) then
  begin
    if not IsConectadoNaInternet then
    begin
      ShowMessage('Aten��o!!! Voc� n�o est� conectado � Internet, Verifique a conec��o.');
      Exit;
    end;

    DM.ACBrNFe1.NotasFiscais.Assinar;
    DM.ACBrNFe1.NotasFiscais.Validar;
    
    try
      DM.ACBrNFe1.Enviar(vNumLote,False,Sincrono);
    except
      if DM.ACBrNFe1.WebServices.Consulta.cStat = 204 then
      begin
        DM.ACBrNFe1.WebServices.Consulta.NFeChave:= chave;
        DM.ACBrNFe1.WebServices.Consulta.Executar;

        MemoDados.Lines.Add('NFC-e n� '+ DM.SDS_NFCENR_NOTA.Text + 'ja enviada para sefaz, base de dados sera atualizada...');

        if DM.IBTransaction.Active then
          DM.IBTransaction.Commit;
        DM.IBTransaction.StartTransaction;

        with dm.QConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Text:= 'UPDATE NFECE_NOTA SET STATUS = :STATUS, FL_IMPRESSO = :IMP, DEPEC = :DEPEC, NR_PROTOCOLO_NFE =:PROT, CHAVE_ACESSO_NFE =:CHAVE, CHAVE2 =:CHAVE2, MODELO =:MOD WHERE NR_NOTA = :COD_NF';
          Parambyname('STATUS').AsString:= 'S';
          Parambyname('IMP').AsString:= 'S';
          Parambyname('DEPEC').AsString:= 'N';
          Parambyname('PROT').AsString:= DM.ACBrNFe1.WebServices.Consulta.Protocolo;
          Parambyname('CHAVE').AsString:= chave;
          Parambyname('CHAVE2').AsString:= 'NFE' + chave;
          Parambyname('MOD').AsString:= '65';
          Parambyname('COD_NF').AsInteger:= DM.SDS_NFCENR_NOTA.AsInteger;
          ExecSQL;
        end;
        DM.IBTransaction.Commit;
        DM.QConsulta.Close;

        valida_nfc:= True;
        btnCriarEnviarNFCe.Enabled:= False;
        PODEFECHAR:= True;
      end;
    end;
  end;

  Application.ProcessMessages;

  MemoResp.Lines.Text:= UTF8Encode(DM.ACBrNFe1.WebServices.Retorno.RetWS);
  memoRespWS.Lines.Text:= UTF8Encode(DM.ACBrNFe1.WebServices.Retorno.RetornoWS);
  LoadXML(MemoResp, WBResposta);

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio NFC-e');
  MemoDados.Lines.Add('tpAmb: ' + TpAmbToStr(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb));
  MemoDados.Lines.Add('verAplic: ' + DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.verAplic);
  MemoDados.Lines.Add('cStat: ' + IntToStr(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cStat));
  MemoDados.Lines.Add('cUF: ' +   IntToStr(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.IDE.cUF));
  MemoDados.Lines.Add('xMotivo: ' + DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.xMotivo);
  MemoDados.Lines.Add('Recibo: ' + DM.ACBrNFe1.WebServices.Recibo.Recibo);
  MemoDados.Lines.Add('Protocolo: ' + DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt);
  MemoDados.Lines.Add('Chave: ' + DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe);

  if DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt > '' then
  begin
    DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML();

    DM.SDS_NFCE.Edit;
    DM.SDS_NFCENR_LOTE_NFE.AsInteger:= StrToInt(vNumLote);
    DM.SDS_NFCESTATUS.Text:= 'S';
    DM.SDS_NFCEFL_IMPRESSO.Text:= 'S';
    DM.SDS_NFCEDT_EMISSAO.AsDateTime:= Date;
    DM.SDS_NFCENR_PROTOCOLO_NFE.Text:= DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
    DM.SDS_NFCENR_RECIBO_NFE.Text:= DM.ACBrNFe1.WebServices.Recibo.Recibo;
    DM.SDS_NFCECHAVE_ACESSO_NFE.Text:= DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
    DM.SDS_NFCECHAVE2.Text:= 'NFE' + DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.ChNFe;
    DM.SDS_NFCEMODELO.Text:= '65';
    DM.SDS_NFCE.Post;
    DM.SDS_NFCE.ApplyUpdates(0);

    valida_nfc:= True;
    btnCriarEnviarNFCe.Enabled:= False;
    PODEFECHAR:= True;
  end;

  if CheckBox2.Checked then
  begin
    DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML();

    DM.SDS_NFCE.Edit;
    DM.SDS_NFCENR_LOTE_NFE.AsInteger:= StrToInt(vNumLote);
    DM.SDS_NFCESTATUS.Text:= 'N';
    DM.SDS_NFCEFL_IMPRESSO.Text:= 'S';
    DM.SDS_NFCEDT_EMISSAO.AsDateTime:= Date;
    DM.SDS_NFCENR_PROTOCOLO_NFE.Text:= DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
    DM.SDS_NFCENR_RECIBO_NFE.Text:= DM.ACBrNFe1.WebServices.Retorno.Recibo;
    DM.SDS_NFCECHAVE_ACESSO_NFE.Text:= Copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    DM.SDS_NFCECHAVE2.Text:= 'NFE'+ Copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    DM.SDS_NFCEDEPEC.AsString:= 'S';
    DM.SDS_NFCEMODELO.Text:= '65';
    DM.SDS_NFCE.Post;
    DM.SDS_NFCE.ApplyUpdates(0);

    PageControl2.ActivePageIndex:= 5;

    valida_nfc:= True;
    btnCriarEnviarNFCe.Enabled := False;
    PODEFECHAR:= True;
  end;

  Application.ProcessMessages;

  if IMPRIME then
  begin
    if DM.SDS_UsuariosIMP_DARUMA_NFCE.Text ='S'then
    begin
      cabecalho := '<bmp></bmp>'+ DM.ACBrNFe1.NotasFiscais.items[0].nfe.Emit.xNome+'<l></l>'+
      'CNPJ: '+DM.ACBrNFe1.NotasFiscais.items[0].nfe.Emit.CNPJCPF+'   I.E:'+DM.ACBrNFe1.NotasFiscais.items[0].nfe.Emit.IE+'<l></l>'+
      ''+DM.ACBrNFe1.NotasFiscais.items[0].nfe.Emit.EnderEmit.xLgr+' n�:'+DM.ACBrNFe1.NotasFiscais.items[0].nfe.Emit.EnderEmit.nro +'<l></l>'+
      '------------------------------------------------<l></l>'+
      '      <b>DANFE NFC-e - Documento Auxiliar</b><l></l>'+
      '  <b>N�o permite aproveitamento de cr�dito de ICMS</b><l></l>'+
      '------------------------------------------------<l></l>'+
      '<c>Codigo    Descricao         Qtde Un   VlrUnit   VlrTotal</c><l></l>'+
      '------------------------------------------------<l></l>';
      Memo1.Clear;
      for n:=0 to DM.ACBrNFe1.NotasFiscais.Count-1 do
      begin
        with DM.ACBrNFe1.NotasFiscais.Items[n].NFe do
        begin
          for e := 0 to Det.Count-1 do
          begin
            with Det.Items[e] do
            begin
              Memo1.Lines.Add('<c>'+Prod.cProd+ '    '+Prod.xProd+'</c><l></l>'+
              '<c>'+FormatFloat('##,##0.00',Prod.qTrib)+'                         '+Prod.uTrib+'     X '+FormatFloat('##,##0.00',Prod.vUnCom)+'      '+Formatar(FormatFloat('##,##0.00',(Prod.vUnCom * Prod.qTrib)),8,false,' ')+'</c><l></l>');
            end;
          end;
        end;
      end;
      itens:= Memo1.Text;

      meio:=    '------------------------------------------------<l></l>'+
      'QTD. TOTAL DE ITENS                          '+FORMPRINCIPAL.texto_justifica(IntToStr(E),3,' ','E')+'<l></l>'+
      'VALOR TOTAL R$                        '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',DM.ACBrNFe1.NotasFiscais.items[0].nfe.Total.ICMSTot.vNF),10,' ','E')+'<l></l>'+
      'Descontos                             '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',DM.ACBrNFe1.NotasFiscais.items[0].nfe.Total.ICMSTot.vDesc),10,' ','E')+'<l></l>'+
      'Troco                                 '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',DM.SDS_NFcEVL_TROCO.asfloat),10,' ','E')+'<l></l>'+
      'FORMA DE PAGAMENTO                    Valor Pago<l></l>';

      if DM.SDS_NFcETP.TEXT ='A' then
      begin
        Pag := 'Dinheiro';
      end else
      if DM.SDS_NFcETP.TEXT ='C' then
      begin
        Pag := 'Crediario';
      end else
      if DM.SDS_NFcETP.TEXT ='H' then
      begin
        Pag := 'Cheque';
      end else
      if DM.SDS_NFcETP.TEXT ='F' then
      begin
        Pag := 'Cartao';
      end else
      begin
        Pag := 'Outros';
      end;
      
      pagamento:=  ''+pag+'                              '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',DM.ACBrNFe1.NotasFiscais.items[0].nfe.Total.ICMSTot.vNF),10,' ','E')+'<l></l>'+
      '------------------------------------------------<l></l>'+
      'Informa��o dos Tributos Totais Incidentes(Lei Federal 12.741/2012)                          0,00<l></l>' +
      '------------------------------------------------<l></l>'+
      '             AREA DE MENSAGEM FISCAL<l></l>'+
      '<c>N�mero: '+DM.SDS_NFcENR_NOTA.Text +' S�rie: 1 '+ 'Emiss�o: '+DM.SDS_NFcEDT_EMISSAO.Text+'<c><l></l>'+
      '------------------------------------------------<l></l>'+
      '<c>                     Via do consumidor</c><l></l>'+
      'Consulte pela Chave de Acesso em: http://www.sefaz.mt.gov.br/nfce/consultanfce<l></l>'+
      '                 CHAVE DE ACESSO<l></l>'+
      '<c>     '+Copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44)+'</c><l></l>'+
      '------------------------------------------------<l></l>'+
      '                  CONSUMIDOR<l></l>'+
      'Nome: '+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome+'<l></l>'+
      'Cpf: '+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF+'<l></l>'+
      'End: '+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr+ 'n�'+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro+'<l></l>'+
      'Bairro: '+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro+ 'Cid:'+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun+'UF:'+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF+'<l></l>'+
      '------------------------------------------------<l></l>'+
      '         Consulta via leitor de QR Code<l></l>'+
      '<ce><qrcode>http://www.desenvolvedoresdaruma.com.br</qrcode></ce><l></l>'+
      '<c>      Protocolo de Autoriza��o:'+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt+'</c><sl>4</sl><gui></gui><l></l>';


      iRetorno:=iImprimirTexto_DUAL_DarumaFramework(cabecalho+ itens + meio + pagamento, 0);
      if DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt  > '' then
      begin
        PODEFECHAR := True;
        CLOSE;
      end;
    end
    else
    begin
    {  if CheckBox2.Checked then
        DM.ACBrNFeDANFEFR1.desc := 'Emitida em conting�ncia'
      else
        DM.ACBrNFeDANFEFR1.DescricaoViaEstabelec:= EmptyStr; }

      DM.ACBrNFe1.NotasFiscais.Imprimir;

      if DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt > '' then
      begin
        PODEFECHAR:= True;
        Close;
      end;
    end;
  end;

  Application.ProcessMessages;
  DM.ACBrNFe1.NotasFiscais.Clear;

  if PODEFECHAR = True then
  begin
   close;
  end;
end;

procedure TFormNfe.GerarNFCe(NumNFe: String);
var
  e, contador: Integer;
  tributo,tributo1, total_trib: Real;
  tributos : string;
begin
  tributo1 :=0;
  total_trib :=0;

  with DM.ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     Ide.cNF       :=  StrToInt(DM.SDS_NFcENr_nota.text); //Caso n�o seja preenchido ser� gerado um n�mero aleat�rio pelo componente
     Ide.natOp     := DM.SDS_NFcECFOP_DESC.TEXT;

     if DM.SDS_NFcETP.TEXT ='A' then
     begin
     Ide.indPag    := ipVista;
     end else
     if DM.SDS_NFcETP.TEXT ='C' then
     begin
     Ide.indPag    := ipPrazo;
     end else
     begin
     Ide.indPag    := ipvista;
     end;

     Ide.modelo    := 65;
     Ide.serie     := DM.SDS_NFcESERIE_NF.AsInteger;;
     Ide.nNF       := StrToInt(DM.SDS_NFcENr_nota.AsString);
     Ide.dEmi      := now;
     Ide.dSaiEnt   := now;
     Ide.hSaiEnt   := now;

     Ide.tpNF      := tnSaida;

     if CheckBox1.Checked = True then
     begin
     Ide.tpEmis    := teNormal;
     end;
     
     if CheckBox2.Checked = True then
     begin
     Ide.tpEmis    := teOffLine;
     ide.xJust     := 'Sem Conec��o com a Internet';
     Ide.dhCont    :=  Date;
     DM.SDS_NFCE.Edit;
     DM.SDS_NFCEDEPEC.Text :='S';
     DM.SDS_NFCE.Post;
     end;

     if checkbox4.Checked = True then
     begin
     Ide.tpEmis    := teFSDA;
     ide.xJust     := 'Por Problemas tecnicos';
     Ide.dhCont    :=  Date;   
     end;

     Ide.tpAmb:= DM.ACBrNFe1.Configuracoes.WebServices.Ambiente;

     Ide.cUF       := UFtoCUF(dm.SDS_EmpresaUF.Text);
     if DM.SDS_EmpresaCOD_CID_IBGE.Text = '' then
     ShowMessage('CODIGO DO IBGE NO CADASTRO DA EMPRESA ESTA EM BRANCO FAVOR PREENCHER')
     ELSE
     Ide.cMunFG    := StrToInt(dm.SDS_EmpresaCOD_CID_IBGE.Text);

     Ide.finNFe    := fnNormal;

     Ide.tpImp     := tiNFCe;
     Ide.indFinal  := cfConsumidorFinal;
     Ide.indPres   := pcPresencial;
     Ide.verProc   := 'SIACE 1.0.0.61'; //Vers�o do seu sistema

      Emit.CNPJCPF           := DM.SDS_EMPRESACNPJ.Text;
      Emit.IE                := DM.SDS_EMPRESAIE.Text;
      Emit.xNome             := DM.SDS_EmpresaRAZAO_SOCIAL.Text;
      Emit.xFant             := DM.SDS_EmpresaNOME_FANTASIA.Text;

      Emit.EnderEmit.fone    := DM.SDS_EmpresaTELEFONE.Text;
      Emit.EnderEmit.CEP     := StrToInt(RemoveChar(DM.SDS_EMPRESACEP.Text));
      Emit.EnderEmit.xLgr    := DM.SDS_EmpresaENDERECO.Text;
      Emit.EnderEmit.nro     := DM.SDS_EmpresaNUMERO.Text;
      Emit.EnderEmit.xCpl    := DM.SDS_EmpresaCOMPLEMENTO.Text;
      Emit.EnderEmit.xBairro := DM.SDS_EMPRESABairro.Text;
      Emit.EnderEmit.cMun    := StrToInt(DM.SDS_EMPRESACOD_CID_IBGE.Text);
      Emit.EnderEmit.xMun    := DM.SDS_EMPRESACidade.Text;
      Emit.EnderEmit.UF      := DM.SDS_EMPRESAUF.Text;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';
      Emit.IM                := DM.SDS_EmpresaIM.Text; // Preencher no caso de existir servi�os na nota
      Emit.CNAE              := dm.SDS_EmpresaCNAE.Text; // Verifique na cidade do emissor da NFe se � permitido
                                    // a inclus�o de servi�os na NFe

//      Emit.IM                := '2648800'; // Preencher no caso de existir servi�os na nota
//      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se � permitido
                                    // a inclus�o de servi�os na NFe
      IF DM.SDS_EmpresaREGIME.Text = 'S' then
     begin
      Emit.CRT               := crtSimplesNacional;
     end ELSE
     IF DM.SDS_EmpresaREGIME.Text = 'P' then
     begin
      Emit.CRT               := crtRegimeNormal;
     end else
       IF DM.SDS_EmpresaREGIME.Text = 'R' then
     begin
      Emit.CRT               := crtRegimeNormal;
     end;


    // NFCE SEM DADOS DO CONSUMIDOR   VERIFICAR SE VAI FUNCIONAR
    IF (CheckBox3.Checked = True) or (DM.SDS_NFcEVL_MERCADORIAS.AsFloat > 9999) then
    BEGIN
    Dest.CNPJCPF           := dm.sds_nfceCPF_CNPJ_cliente_forn.Text;
    Dest.xNome             := Copy(dm.sds_nfceNOME_CLIENTE_FOR.TEXT, 1, 60);
    Dest.ISUF              := '';
  //  Dest.IE                := dm.SDS_NFCEIE_CLIENTE_FORN.Text;
   { if (dm.SDS_NFCEIE_CLIENTE_FORN.Text >'' ) or (dm.SDS_NFCEIE_PRODUTOR.Text >'' )
    Dest.IE                := '';  }
    Dest.indIEDest        := inNaoContribuinte;
                                                  {1=Contribuinte ICMS (informar a IE do destinat�rio);
                                                  2=Contribuinte isento de Inscri��o no cadastro de
                                                  Contribuintes do ICMS;
                                                  9=N�o Contribuinte, que pode ou n�o possuir Inscri��o
                                                  Estadual no Cadastro de Contribuintes do ICMS;
                                                  Nota 1: No caso de NFC-e informar indIEDest=9 e n�o
                                                  informar a tag IE do destinat�rio;
                                                  Nota 2: No caso de opera��o com o Exterior informar
                                                  indIEDest=9 e n�o informar a tag IE do destinat�rio;
                                                  Nota 3: No caso de Contribuinte Isento de Inscri��o
                                                  (indIEDest=2), n�o informar a tag IE do destinat�rio   }

    Dest.EnderDest.CEP     := StrToIntDef((Copy(dm.sds_nfceCEP_CLIENTE_FORN.Text, 1, 5))+Copy(dm.sds_nfceCEP_CLIENTE_FORN.Text, 6, 3), 0);
    Dest.EnderDest.xLgr    := dm.sds_nfceEndereco_CLI_FORN.Text;
    Dest.EnderDest.nro     := dm.sds_nfceEND_NUM_CLIENTE.Text;
    Dest.EnderDest.xCpl    := '';
    Dest.EnderDest.xBairro := dm.sds_nfceBAIRRO_CLIENTE_FORN.Text;
    Dest.EnderDest.cMun    := StrToIntDef(dm.sds_nfceCOD_IBGE.TEXT,0);
    Dest.EnderDest.xMun    := dm.sds_nfceCIDADE_CLIENTE_FORN.Text;
    Dest.EnderDest.UF      := dm.sds_nfceUF_CLIENTE_FORN.Text;
    Dest.EnderDest.Fone    := dm.sds_nfceTELEFONE.TEXT;
    Dest.EnderDest.cPais   := 1058;
    Dest.EnderDest.xPais   := 'BRASIL';
    end else
    begin
    Dest.CNPJCPF           := '';
    Dest.xNome             := '';
    Dest.ISUF              := '';
    Dest.EnderDest.CEP     := 78000000;
    Dest.EnderDest.xLgr    := '';
    Dest.EnderDest.nro     := '';
    Dest.EnderDest.xCpl    := '';
    Dest.EnderDest.xBairro := '';
    Dest.EnderDest.cMun    := 5103379;
    Dest.EnderDest.xMun    := '';
    Dest.EnderDest.UF      := '';
    Dest.EnderDest.Fone    := '';
    Dest.EnderDest.cPais   := 1058;
    Dest.EnderDest.xPais   := '';
    end;

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
   {   with Det.Add do
       begin
         Prod.nItem    := 1; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123456';
         Prod.cEAN     := '7896523206646';
         Prod.xProd    := 'Descri��o do Produto';
         Prod.NCM      := '94051010'; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5101';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '7896523206646';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vOutro    := 0;
         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;   }

//         infAdProd      := 'Informa��o FDicional do Produto';
  //  ShowMessage('teste1');

    DM.sds_nfce_itens.First;
    Contador :=0;
    Contador := DM.sds_nfce_itens.RecordCount;
    For E:=1 to Contador do
     begin
      with Det.Add do
       begin
         Prod.nItem    := DM.sds_nfce_itensITEN.AsInteger; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    := DM.sds_nfce_itensCODIGO_PROD.text;
         Prod.cEAN     := dM.sds_nfce_itensCOD_PRODUTO.text;
         Prod.xProd    := DM.sds_nfce_itensDESCRICAO_PRODUTO.TEXT;
         Prod.NCM      := DM.sds_nfce_itensCOD_NCM.Text; // Tabela NCM dispon�vel em

        // prod.cest :=  '';  // tabela cest vinculada ao ncm
        if Date > 04/01/2016 then
         prod.CEST     := DM.sds_nfce_itensCEST.Text;

         Prod.EXTIPI   := '';
         Prod.CFOP     := dm.sds_nfce_itensCFOP.text;

         Prod.uCom     := dm.sds_nfce_itensDESC_UNIDADE.text;
         Prod.qCom     := StrToFloatDef(dm.sds_nfce_itensQT_PRODUTO.Text,0.00);
         Prod.vUnCom   := StrToFloatDef(dm.sds_nfce_itensVL_UNITARIO.Text,0.00000000000);

         Prod.vProd    := StrToFloatDef(dm.sds_nfce_itensVL_TOTAL.Text,0.00);

         Prod.vOutro    := dm.sds_nfce_itensVL_OUTROS.AsFloat;

   //   if ((FormGefaNFe.combobox2.itemIndex = 0) or (FormGefaNFe.combobox2.itemIndex = 2))   then
        begin
         with QBuscaItens do
            begin
               close;
               Parambyname('cod_ven').AsInteger:= strtoint(dm.sds_nfce_itensCD_ATUALIZACAO.Text);
               Parambyname('codpro').AsInteger:= strtoint(DM.sds_nfce_itensCODIGO_PROD.text);
               open;
               Last;
            end;
         end;

         Prod.cEANTrib  := dM.sds_nfce_itensCOD_PRODUTO.text;


         if QBuscaItensML_QUANT_BEB.asfloat >= 0.001 then
         begin
         Prod.uTrib     := QBuscaItensUND_TRIB.text;
         Prod.qTrib     := dm.sds_nfce_itensQT_PRODUTO.ASFLOAT * QBuscaItensQTD_CAIXA.ASINTEGER * QBuscaItensML_QUANT_BEB.ASFLOAT;
         Prod.vUnTrib   := dm.sds_nfce_itensVL_TOTAL.ASFLOAT / Prod.qTrib;
         end else
         if (QBuscaItensML_QUANT_BEB.asfloat = null) or (QBuscaItensML_QUANT_BEB.asfloat = 0)  then
         begin
         Prod.uTrib     := dm.sds_nfce_itensDESC_UNIDADE.text;
         Prod.qTrib     := StrToFloatDef(dm.sds_nfce_itensQT_PRODUTO.Text,0.00);
         Prod.vUnTrib   := StrToFloatDef(dm.sds_nfce_itensVL_UNITARIO.Text,0.0000000000);
         end;
         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := StrToFloatDef(dm.sds_nfce_itensVL_DESCONTO.Text,0.00);

         tributo := 0;
         tributos :='';

         {if QBuscaItensALIC_NAC.AsFloat > 0.01 then
         begin
           tributo := ExatoCurrency((dm.sds_nfce_itensVL_TOTAL.ASFLOAT * QBuscaItensALIC_NAC.AsFloat / 100),2);
           tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo) + ' PERC ' + FloatToStr(QBuscaItensALIC_NAC.AsFloat) +' Fonte: '+ QBuscaItensfonte.text;
         end;   }

        // prod.xPed := Tributos;

         infAdProd   := ''; //tributos;
        {
       //combustivel
        IF  QBuscaItensCombustivel.text = 'S' then
        BEGIN

          if QBuscaItensCOD_ANP.TEXT ='' then
           begin
          ShowMessage('Favor Preencher o CODIGO ANP no cadastro do produto que est� em branco');
          Exit;
          Abort;
          end else

         with Prod.comb do
          begin
            cProdANP := strtoint(QBuscaItensCOD_ANP.TEXT);
            CODIF    := '0';
            qTemp    :=  StrToFloatDef(dm.sds_nfce_itensQT_PRODUTO.Text,0.00);
            UFCons   :=  dm.sds_nfceUF_CLIENTE_FORN.Text;

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
            ICMSCons.UFcons        := dm.sds_nfceUF_CLIENTE_FORN.Text;
          end;
         end;  }

         with Imposto do
          begin

          tributo := 0;
          tributos :='';

           if QBuscaItensalic_nac.AsFloat > 0.01 then
           begin
             tributo := ExatoCurrency((dm.sds_nfce_itensVL_TOTAL.ASFLOAT * QBuscaItensALIC_NAC.AsFloat / 100),2);
             tributo1 := ExatoCurrency((dm.sds_nfce_itensVL_TOTAL.ASFLOAT * QBuscaItensALIC_NAC.AsFloat / 100),2);

           //  tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo) + ' PERC ' + FloatToStr(QBuscaItensALIC_NAC.AsFloat) +' Fonte: IBPT';
             vTotTrib := tributo;

             total_trib := total_trib + tributo1;

           end;
          { if QBuscaItensPERC_TRIBU.AsFloat > 0.01 then
           begin
             tributo := ExatoCurrency((dm.sds_nfce_itensVL_TOTAL.ASFLOAT * QBuscaItensPERC_TRIBU.AsFloat / 100),2);
             tributo1 := ExatoCurrency((dm.sds_nfce_itensVL_TOTAL.ASFLOAT * QBuscaItensPERC_TRIBU.AsFloat / 100),2);
           //  tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo) + ' PERC ' + FloatToStr(QBuscaItensPERC_TRIBU.AsFloat) +' Fonte: '+ QBuscaItensfonte.text;
             vTotTrib := tributo;
           end;}
          // vTotTrib := 0;



          // vTotTrib := tributo;

            with ICMS do
             begin
               IF DM.SDS_EmpresaREGIME.Text = 'S' then
                begin
                if dm.sds_nfce_itensCST.Text = '101' then  CSOSN := csosn101;
                if dm.sds_nfce_itensCST.Text = '102' then  CSOSN := csosn102;
                if dm.sds_nfce_itensCST.Text = '103' then  CSOSN := csosn103;
                if dm.sds_nfce_itensCST.Text = '201' then  CSOSN := csosn201;
                if dm.sds_nfce_itensCST.Text = '202' then  CSOSN := csosn202;
                if dm.sds_nfce_itensCST.Text = '203' then  CSOSN := csosn203;
                if dm.sds_nfce_itensCST.Text = '300' then  CSOSN := csosn300;
                if dm.sds_nfce_itensCST.Text = '400' then  CSOSN := csosn400;
                if dm.sds_nfce_itensCST.Text = '500' then  CSOSN := csosn500;
                if dm.sds_nfce_itensCST.Text = '900' then  CSOSN := csosn900;
                 ICMS.orig    := oeNacional;
                 ICMS.modBC   := dbiValorOperacao;
                 ICMS.vBC     := StrToFloatDef(DM.sds_nfce_itensVL_base_icm.Text,0.00);
                 ICMS.pICMS   := StrToFloatDef(DM.sds_nfce_itensALIQ_ICM.Text,0.00);
                 ICMS.vICMS   := StrToFloatDef(DM.sds_nfce_itensVL_ICM.Text,0.00);
                 ICMS.modBCST := dbisMargemValorAgregado;
                 ICMS.pMVAST  := 0;
                 ICMS.pRedBCST:= 0;
                 ICMS.vBCST   := 0;
                 ICMS.pICMSST := 0;
                 ICMS.vICMSST := 0;
                 ICMS.pRedBC  := 0;
                 end else

               IF DM.SDS_EmpresaREGIME.Text = 'P' then
               begin
                if dm.sds_nfce_itensCST.Text = '000' then  CST   := cst00;
                if dm.sds_nfce_itensCST.Text = '010' then  CST   := cst10;
                if dm.sds_nfce_itensCST.Text = '020' then  CST   := cst20;
                if dm.sds_nfce_itensCST.Text = '030' then  CST   := cst30;
                if dm.sds_nfce_itensCST.Text = '040' then  CST   := cst40;
                if dm.sds_nfce_itensCST.Text = '041' then  CST   := cst41;
                if dm.sds_nfce_itensCST.Text = '050' then  CST   := cst50;
                if dm.sds_nfce_itensCST.Text = '051' then  CST   := cst51;
                if dm.sds_nfce_itensCST.Text = '060' then  CST   := cst60;
                if dm.sds_nfce_itensCST.Text = '070' then  CST   := cst70;
                if dm.sds_nfce_itensCST.Text = '080' then  CST   := cst80;
                if dm.sds_nfce_itensCST.Text = '090' then  CST   := cst90;
               ICMS.orig    := oeNacional;
               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := StrToFloatDef(DM.sds_nfce_itensVL_base_icm.Text,0.00);
               ICMS.pICMS   := StrToFloatDef(DM.sds_nfce_itensALIQ_ICM.Text,0.00);
               ICMS.vICMS   := StrToFloatDef(DM.sds_nfce_itensVL_ICM.Text,0.00);
               ICMS.modBCST := dbisMargemValorAgregado;
               ICMS.pMVAST  := 0;
               ICMS.pRedBCST:= 0;
               ICMS.vBCST   := 0;
               ICMS.pICMSST := 0;
               ICMS.vICMSST := 0;
               ICMS.pRedBC  := 0;
               end else

               IF DM.SDS_EmpresaREGIME.Text = 'R' then
               begin
                if dm.sds_nfce_itensCST.Text = '000' then  CST   := cst00;
                if dm.sds_nfce_itensCST.Text = '010' then  CST   := cst10;
                if dm.sds_nfce_itensCST.Text = '020' then  CST   := cst20;
                if dm.sds_nfce_itensCST.Text = '030' then  CST   := cst30;
                if dm.sds_nfce_itensCST.Text = '040' then  CST   := cst40;
                if dm.sds_nfce_itensCST.Text = '041' then  CST   := cst41;
                if dm.sds_nfce_itensCST.Text = '050' then  CST   := cst50;
                if dm.sds_nfce_itensCST.Text = '051' then  CST   := cst51;
                if dm.sds_nfce_itensCST.Text = '060' then  CST   := cst60;
                if dm.sds_nfce_itensCST.Text = '070' then  CST   := cst70;
                if dm.sds_nfce_itensCST.Text = '080' then  CST   := cst80;
                if dm.sds_nfce_itensCST.Text = '090' then  CST   := cst90;
               ICMS.orig    := oeNacional;
               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := StrToFloatDef(DM.sds_nfce_itensVL_base_icm.Text,0.00);
               ICMS.pICMS   := StrToFloatDef(DM.sds_nfce_itensALIQ_ICM.Text,0.00);
               ICMS.vICMS   := StrToFloatDef(DM.sds_nfce_itensVL_ICM.Text,0.00);
               ICMS.modBCST := dbisMargemValorAgregado;
               ICMS.pMVAST  := 0;
               ICMS.pRedBCST:= 0;
               ICMS.vBCST   := 0;
               ICMS.pICMSST := 0;
               ICMS.vICMSST := 0;
               ICMS.pRedBC  := 0;
               end;


              // partilha do ICMS e fundo de probreza
               with ICMSUFDest do
                begin
                  vBCUFDest      := 0.00;
                  pFCPUFDest     := 0.00;
                  pICMSUFDest    := 0.00;
                  pICMSInter     := 0.00;
                  pICMSInterPart := 0.00;
                  vFCPUFDest     := 0.00;
                  vICMSUFDest    := 0.00;
                  vICMSUFRemet   := 0.00;
                end;
               end;
           { with IPI do
             begin
               IF DM.SDS_EmpresaREGIME.Text = 'R' then
               begin
                if dm.sds_nfce_itensCST_IPI.Text = '00' then  CST   := ipi00;
                if dm.sds_nfce_itensCST_IPI.Text = '01' then  CST   := ipi01;
                if dm.sds_nfce_itensCST_IPI.Text = '02' then  CST   := ipi02;
                if dm.sds_nfce_itensCST_IPI.Text = '03' then  CST   := ipi03;
                if dm.sds_nfce_itensCST_IPI.Text = '04' then  CST   := ipi04;
                if dm.sds_nfce_itensCST_IPI.Text = '05' then  CST   := ipi05;
                if dm.sds_nfce_itensCST_IPI.Text = '49' then  CST   := ipi49;
                if dm.sds_nfce_itensCST_IPI.Text = '50' then  CST   := ipi50;
                if dm.sds_nfce_itensCST_IPI.Text = '51' then  CST   := ipi51;
                if dm.sds_nfce_itensCST_IPI.Text = '52' then  CST   := ipi52;
                if dm.sds_nfce_itensCST_IPI.Text = '53' then  CST   := ipi53;
                if dm.sds_nfce_itensCST_IPI.Text = '54' then  CST   := ipi54;
                if dm.sds_nfce_itensCST_IPI.Text = '55' then  CST   := ipi55;
                if dm.sds_nfce_itensCST_IPI.Text = '99' then  CST   := ipi99;
                clEnq    := '';
                CNPJProd := '';
                cSelo    := '';
                qSelo    := 0;
                cEnq     := '';

               vBC    := StrToFloatDef(dm.sds_nfce_itensVL_BASE_IPI.text,0.00);
               qUnid  := StrToFloatDef(dm.sds_nfce_itensQT_PRODUTO.Text,0.00);
               vUnid  := StrToFloatDef(dm.sds_nfce_itensVL_UNITARIO.Text,0.00);
               pIPI   := StrToFloatDef(dm.sds_nfce_itensALIQ_ipi.Text,0.00);
               vIPI   := StrToFloatDef(dm.sds_nfce_itensVL_ipi.Text,0.00);
               END else


               IF DM.SDS_EmpresaREGIME.Text = 'P' then
               begin
                if dm.sds_nfce_itensCST_IPI.Text = '00' then  CST   := ipi00;
                if dm.sds_nfce_itensCST_IPI.Text = '01' then  CST   := ipi01;
                if dm.sds_nfce_itensCST_IPI.Text = '02' then  CST   := ipi02;
                if dm.sds_nfce_itensCST_IPI.Text = '03' then  CST   := ipi03;
                if dm.sds_nfce_itensCST_IPI.Text = '04' then  CST   := ipi04;
                if dm.sds_nfce_itensCST_IPI.Text = '05' then  CST   := ipi05;
                if dm.sds_nfce_itensCST_IPI.Text = '49' then  CST   := ipi49;
                if dm.sds_nfce_itensCST_IPI.Text = '50' then  CST   := ipi50;
                if dm.sds_nfce_itensCST_IPI.Text = '51' then  CST   := ipi51;
                if dm.sds_nfce_itensCST_IPI.Text = '52' then  CST   := ipi52;
                if dm.sds_nfce_itensCST_IPI.Text = '53' then  CST   := ipi53;
                if dm.sds_nfce_itensCST_IPI.Text = '54' then  CST   := ipi54;
                if dm.sds_nfce_itensCST_IPI.Text = '55' then  CST   := ipi55;
                if dm.sds_nfce_itensCST_IPI.Text = '99' then  CST   := ipi99;
               clEnq    := '';
               CNPJProd := '';
               cSelo    := '';
               qSelo    := 0;
               cEnq     := '';

               vBC    := StrToFloatDef(dm.sds_nfce_itensVL_BASE_IPI.text,0.00);
               qUnid  := StrToFloatDef(dm.sds_nfce_itensQT_PRODUTO.Text,0.00);
               vUnid  := StrToFloatDef(dm.sds_nfce_itensVL_UNITARIO.Text,0.00);
               pIPI   := StrToFloatDef(dm.sds_nfce_itensALIQ_IPI.Text,0.00);
               vIPI   := StrToFloatDef(dm.sds_nfce_itensvl_ipi.Text,0.00);
               END else

               IF DM.SDS_EmpresaREGIME.Text = 'S' then
               begin
               CST      := ipi99 ;
               clEnq    := '';
               CNPJProd := '';
               cSelo    := '';
               qSelo    := 0;
               cEnq     := '';

               vBC    := StrToFloatDef(dm.sds_nfce_itensVL_BASE_IPI.text,0.00);
               qUnid  := StrToFloatDef(dm.sds_nfce_itensQT_PRODUTO.Text,0.00);
               vUnid  := StrToFloatDef(dm.sds_nfce_itensVL_UNITARIO.Text,0.00);
               pIPI   := StrToFloatDef(dm.sds_nfce_itensALIQ_IPI.Text,0.00);
               vIPI   := StrToFloatDef(dm.sds_nfce_itensvl_ipi.Text,0.00);
               end;
             end;    }

            with II do
             begin
               vBc      := 0;
               vDespAdu := 0;
               vII      := 0;
               vIOF     := 0;
             end;

             with PIS do
             begin
              { IF DM.SDS_EmpresaREGIME.Text = 'S' then
               begin
               CST      := pis99;
               PIS.vBC  := 0;
               PIS.pPIS := 0;
               PIS.vPIS := 0;

               PIS.qBCProd   := 0;
               PIS.vAliqProd := 0;
               end else }

                if dm.sds_nfce_itensCST_PIS.Text = '01' then  CST   := pis01;
                if dm.sds_nfce_itensCST_PIS.Text = '02' then  CST   := pis02;
                if dm.sds_nfce_itensCST_PIS.Text = '03' then  CST   := pis03;
                if dm.sds_nfce_itensCST_PIS.Text = '04' then  CST   := pis04;
                if dm.sds_nfce_itensCST_PIS.Text = '05' then  CST   := pis05;
                if dm.sds_nfce_itensCST_PIS.Text = '06' then  CST   := pis06;
                if dm.sds_nfce_itensCST_PIS.Text = '07' then  CST   := pis07;
                if dm.sds_nfce_itensCST_PIS.Text = '08' then  CST   := pis08;
                if dm.sds_nfce_itensCST_PIS.Text = '09' then  CST   := pis09;
                if dm.sds_nfce_itensCST_PIS.Text = '49' then  CST   := pis49;
                if dm.sds_nfce_itensCST_PIS.Text = '50' then  CST   := pis50;
                if dm.sds_nfce_itensCST_PIS.Text = '51' then  CST   := pis51;
                if dm.sds_nfce_itensCST_PIS.Text = '52' then  CST   := pis52;
                if dm.sds_nfce_itensCST_PIS.Text = '53' then  CST   := pis53;
                if dm.sds_nfce_itensCST_PIS.Text = '54' then  CST   := pis54;
                if dm.sds_nfce_itensCST_PIS.Text = '55' then  CST   := pis55;
                if dm.sds_nfce_itensCST_PIS.Text = '56' then  CST   := pis56;
                if dm.sds_nfce_itensCST_PIS.Text = '60' then  CST   := pis60;
                if dm.sds_nfce_itensCST_PIS.Text = '61' then  CST   := pis61;
                if dm.sds_nfce_itensCST_PIS.Text = '62' then  CST   := pis62;
                if dm.sds_nfce_itensCST_PIS.Text = '63' then  CST   := pis63;
                if dm.sds_nfce_itensCST_PIS.Text = '64' then  CST   := pis64;
                if dm.sds_nfce_itensCST_PIS.Text = '65' then  CST   := pis65;
                if dm.sds_nfce_itensCST_PIS.Text = '66' then  CST   := pis66;
                if dm.sds_nfce_itensCST_PIS.Text = '67' then  CST   := pis67;
                if dm.sds_nfce_itensCST_PIS.Text = '70' then  CST   := pis70;
                if dm.sds_nfce_itensCST_PIS.Text = '71' then  CST   := pis71;
                if dm.sds_nfce_itensCST_PIS.Text = '72' then  CST   := pis72;
                if dm.sds_nfce_itensCST_PIS.Text = '73' then  CST   := pis73;
                if dm.sds_nfce_itensCST_PIS.Text = '74' then  CST   := pis74;
                if dm.sds_nfce_itensCST_PIS.Text = '75' then  CST   := pis75;
                if dm.sds_nfce_itensCST_PIS.Text = '98' then  CST   := pis98;
                if dm.sds_nfce_itensCST_PIS.Text = '99' then  CST   := pis99;

               PIS.vBC  := StrToFloatDef(dm.sds_nfce_itensVL_base_pis.Text,0.00);
               PIS.pPIS := StrToFloatDef(dm.sds_nfce_itensALIQ_PIS.Text,0.00);
               PIS.vPIS := StrToFloatDef(dm.sds_nfce_itensVL_PIS.Text,0.00);
              { PIS.qBCProd   := StrToFloatDef(dm.sds_nfe_itensQT_PRODUTO.Text,0.00);
               PIS.vAliqProd := StrToFloatDef(dm.sds_nfe_itensALIQ_PIS.Text,0.00);  }
               PIS.qBCProd   := 0;
               PIS.vAliqProd := 0;

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
             { IF DM.SDS_EmpresaREGIME.Text = 'S' then
               begin
               CST            := cof99;
               COFINS.vBC     := 0;
               COFINS.pCOFINS := 0;
               COFINS.vCOFINS := 0;

               COFINS.qBCProd   := 0;
               COFINS.vAliqProd := 0;
              end else   }

                if dm.sds_nfce_itensCST_COFINS.Text = '01' then  CST   := cof01;
                if dm.sds_nfce_itensCST_COFINS.Text = '02' then  CST   := cof02;
                if dm.sds_nfce_itensCST_COFINS.Text = '03' then  CST   := cof03;
                if dm.sds_nfce_itensCST_COFINS.Text = '04' then  CST   := cof04;
                if dm.sds_nfce_itensCST_COFINS.Text = '05' then  CST   := cof05;
                if dm.sds_nfce_itensCST_COFINS.Text = '06' then  CST   := cof06;
                if dm.sds_nfce_itensCST_COFINS.Text = '07' then  CST   := cof07;
                if dm.sds_nfce_itensCST_COFINS.Text = '08' then  CST   := cof08;
                if dm.sds_nfce_itensCST_COFINS.Text = '09' then  CST   := cof09;
                if dm.sds_nfce_itensCST_COFINS.Text = '49' then  CST   := cof49;
                if dm.sds_nfce_itensCST_COFINS.Text = '50' then  CST   := cof50;
                if dm.sds_nfce_itensCST_COFINS.Text = '51' then  CST   := cof51;
                if dm.sds_nfce_itensCST_COFINS.Text = '52' then  CST   := cof52;
                if dm.sds_nfce_itensCST_COFINS.Text = '53' then  CST   := cof53;
                if dm.sds_nfce_itensCST_COFINS.Text = '54' then  CST   := cof54;
                if dm.sds_nfce_itensCST_COFINS.Text = '55' then  CST   := cof55;
                if dm.sds_nfce_itensCST_COFINS.Text = '56' then  CST   := cof56;
                if dm.sds_nfce_itensCST_COFINS.Text = '60' then  CST   := cof60;
                if dm.sds_nfce_itensCST_COFINS.Text = '61' then  CST   := cof61;
                if dm.sds_nfce_itensCST_COFINS.Text = '62' then  CST   := cof62;
                if dm.sds_nfce_itensCST_COFINS.Text = '63' then  CST   := cof63;
                if dm.sds_nfce_itensCST_COFINS.Text = '64' then  CST   := cof64;
                if dm.sds_nfce_itensCST_COFINS.Text = '65' then  CST   := cof65;
                if dm.sds_nfce_itensCST_COFINS.Text = '66' then  CST   := cof66;
                if dm.sds_nfce_itensCST_COFINS.Text = '67' then  CST   := cof67;
                if dm.sds_nfce_itensCST_COFINS.Text = '70' then  CST   := cof70;
                if dm.sds_nfce_itensCST_COFINS.Text = '71' then  CST   := cof71;
                if dm.sds_nfce_itensCST_COFINS.Text = '72' then  CST   := cof72;
                if dm.sds_nfce_itensCST_COFINS.Text = '73' then  CST   := cof73;
                if dm.sds_nfce_itensCST_COFINS.Text = '74' then  CST   := cof74;
                if dm.sds_nfce_itensCST_COFINS.Text = '75' then  CST   := cof75;
                if dm.sds_nfce_itensCST_COFINS.Text = '98' then  CST   := cof98;
                if dm.sds_nfce_itensCST_COFINS.Text = '99' then  CST   := cof99;

               COFINS.vBC     := StrToFloatDef(dm.sds_nfce_itensVL_base_COFINS.Text,0.00);
               COFINS.pCOFINS := StrToFloatDef(dm.sds_nfce_itensALIQ_COFINS.Text,0.00);
               COFINS.vCOFINS := StrToFloatDef(dm.sds_nfce_itensVL_COFINS.Text,0.00);

               COFINS.qBCProd   := 0;
               COFINS.vAliqProd := 0;
              // COFINS.qBCProd   := StrToFloatDef(dm.sds_nfe_itensQT_PRODUTO.Text,0.00);
              // COFINS.vAliqProd := StrToFloatDef(dm.sds_nfe_itensALIQ_COFINS.Text,0.00);
             end;

            with COFINSST do
             begin
               vBC       := 0;
               pCOFINS   := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vCOFINS   := 0;
             end;


             {if FormGefaNFe.QBuscaItensPERC_TRIBU.AsFloat > 0 then
             begin
             vTotTrib :=  FormGefaNFe.QBuscaItensPERC_TRIBU.AsInteger;
             end; }

             //Grupo para servi�os
            {  with ISSQN do
             begin
               vBC       := 0;
               vAliq     := 0;
               vISSQN    := 0;
               cMunFG    := 0;
               cListServ := 0; // Preencha este campo usando a tabela dispon�vel
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;}
          end;
       end ;
       DM.sds_nfce_itens.Next;
    end;



      Total.ICMSTot.vBC     := StrToFloatDef(DM.SDS_NFcEVL_BASE_ICM.Text,0.00);
      Total.ICMSTot.vICMS   := StrToFloatDef(DM.SDS_NFcEVL_ICM.Text,0.00);
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := StrToFloatDef(DM.SDS_NFcEVL_MERCADORIAS.Text,0.00);
      Total.ICMSTot.vFrete  := StrToFloatDef(DM.SDS_NFcEVL_FRETE.Text,0.00);
      Total.ICMSTot.vSeg    := StrToFloatDef(DM.SDS_NFcEVL_SEGURO.Text,0.00);
      Total.ICMSTot.vDesc   := StrToFloatDef(DM.SDS_NFcEVL_DESCONTOS.Text,0.00);
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0; //StrToFloatDef(DM.SDS_NFcEVL_IPI.Text,0.00);
      Total.ICMSTot.vPIS    := StrToFloatDef(DM.SDS_NFCEVL_PIS.Text,0.00);
      Total.ICMSTot.vCOFINS := StrToFloatDef(DM.SDS_NFCEVL_COFINS.Text,0.00);
      Total.ICMSTot.vOutro  := StrToFloatDef(DM.SDS_NFcEVL_ACRESCIMOS.Text,0.00);
      Total.ICMSTot.vNF     := StrToFloatDef(DM.SDS_NFcEVL_TOTAL.Text,0.00);

      Total.ISSQNtot.vServ   := StrToFloatDef(DM.SDS_NFcEVL_SERVICOS.Text,0.00);
      Total.ISSQNTot.vBC     := StrToFloatDef(DM.SDS_NFcEVL_BASE_ISS.Text,0.00);
      Total.ISSQNTot.vISS    := StrToFloatDef(DM.SDS_NFcEVL_ISS.Text,0.00);
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;

      // partilha do icms e fundo de probreza
      Total.ICMSTot.vFCPUFDest   := 0.00;
      Total.ICMSTot.vICMSUFDest  := 0.00;
      Total.ICMSTot.vICMSUFRemet := 0.00;

      Total.ICMSTot.vTotTrib := total_trib;


    //alteracao bugada do tonto do thiago da pau na nfc-e
    { if ConvertCurrency(FormGefaNFe.edtBaseICMSST.Text) > 0  then
      begin
        Total.ICMSTot.vTotTrib:= ConvertCurrency(FormGefaNFe.edtPercentualICMSST.hint);
      end;  }


      FDvEdit1.Text := FloatToStr(total_trib);

      Transp.modFrete := mfSemFrete; // NFC-e n�o pode ter FRETE

       with pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
          if DM.SDS_NFcETP.TEXT ='A' then
          begin
          tPag := fpDinheiro;
          end else
          if DM.SDS_NFcETP.TEXT ='C' then
          begin
          tPag := fpCreditoLoja;
          end else
          if DM.SDS_NFcETP.TEXT ='H' then
          begin
          tPag := fpCheque;
          end else
          if DM.SDS_NFcETP.TEXT ='F' then
          begin
          tPag := fpCartaoCredito;
          end else
          begin
          tPag := fpOutro;
          end;
          vPag := StrToFloatDef(DM.SDS_NFcEVL_TOTAL.Text,0.00);

       end;

       // mostra troco
   //    DM.ACBrNFeDANFEFR1.vTroco := StrToFloatDef(DM.SDS_NFCEVL_TROCO.Text,0.00);

     // InfAdic.infCpl := 'Vend:'+ FORMPRINCIPAL.USERLOGADO +' Obs: '+dm.SDS_CONFIGURACOESMSG_CUPOMFISCAL.Text + ' ' + FormGeraNFCe.EDIT6.TEXT;
      InfAdic.infAdFisco :=  '';
     // infNFeSupl.qrCode
   end;
//  DM.ACBrNFe1.NotasFiscais.GerarNFe;
end;

procedure TFormNfe.FormShow(Sender: TObject);
begin
//DM.ACBrNFeDANFEFR1.FastFile := 'C:\Siace\rel\DANFeRetrato.fr3';
//DM.ACBrNFeDANFEFR1.FastFileEvento := 'C:\Siace\rel\EVENTOS.fr3';

if FormGefaNFe.RxDBComboEdit2.Text = '5667' then
       begin
       CheckBox5.checked := True;
       end;
end;

procedure TFormNfe.Button1Click(Sender: TObject);
var
  url, tpAmb, cDest, Hash_SHA1 : string;
begin


//DM.ACBrNFeDANFEFR1.Detalhado := True;

  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    {if DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
     begin
       DM.ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
       DM.ACBrNFe1.WebServices.ConsultaDPEC.Executar;
      // DM.ACBrNFe1.DANFE.ProtocoloNFe := DM.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(DM.ACBrNFe1.WebServices.ConsultaDPEC.retDPEC.dhRegDPEC);
       DM.ACBrNFe1.DANFE.ProtocoloNFe := DM.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(DM.ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
     end; }

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
                          '&dhEmi='    + StringToHex(DateTimeTodhUTC(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi,GetUTC(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.emit.enderEmit.UF, DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi))) +
                          '&vNF='      + TrocaVirgPPto(FloatToStr(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF)) +
                          '&vICMS='    + TrocaVirgPPto(FloatToStr(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS)) +
                          '&digVal='   + StringToHex(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.digVal) +
                          '&cIdToken=' + DM.sds_configuracoestoken.text;

            Hash_SHA1 := DM.ACBrEAD1.CalcularHash(UTF8Encode(Memo.Text),dgstSHA1);
            Memo.Text := Memo.Text + '&cHashQRCode=' + Hash_SHA1;


           // iRetorno := eGerarQrCodeArquivo_DUAL_DarumaFramework('C:\siace\qr.bmp', PAnsiChar(Memo.Text));
             DM.ACBrNFeDANFEFR1.urlconsultapublica := Memo.Text;
         //  DM.ACBrNFeDANFEFR1.ImgQrCode := 'C:\siace\qr.bmp';
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
                          '&dhEmi='    + StringToHex(DateTimeTodhUTC(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi,GetUTC(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.emit.enderEmit.UF, DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi))) +
                          '&vNF='      + TrocaVirgPPto(FloatToStr(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF)) +
                          '&vICMS='    + TrocaVirgPPto(FloatToStr(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS)) +
                          '&digVal='   + StringToHex(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.digVal) +
                          '&cIdToken=' + '000001';

            Hash_SHA1 := DM.ACBrEAD1.CalcularHash(UTF8Encode(Memo.Text),dgstSHA1);
            Memo.Text := Memo.Text + '&cHashQRCode=' + Hash_SHA1;
            end;  }


         // eGerarQrCodeArquivo_DUAL_DarumaFramework('C:\Siace\qr.bmp', Memo.Text);

              //salvar
             {  Barcode2D_QRCode1.Barcode := Memo.Text;
               Barcode2D_QRCode1.Draw;

               Save2D_Bmp1.Save('c:\siace\qr.bmp');    }

           //  DM.ACBrNFeDANFEFR1.urlconsultapublica := Memo.Text;
           // DM.ACBrNFeDANFEFR1.ImgQrCode := 'C:\Siace\qr.bmp';

            DM.ACBrNFe1.NotasFiscais.Imprimir;


    

  end;
end;

procedure TFormNfe.Button3Click(Sender: TObject);
begin

IF DM.ACBrNFe1.SSL.CertDataVenc < Now then
begin
 showmessage('Certificado vencido (data de validade expirada)');
 Exit;
end;
   dm.ConfiguraNFCe;
{ DM.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;

 if RadioButton2.Checked = True then
begin
DM.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;
end else
if RadioButton1.Checked = True then
 begin
DM.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve300;
end;  }


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

procedure TFormNfe.CheckBox1Click(Sender: TObject);
begin
 IF CheckBox1.Checked = True then
 begin
  CheckBox2.Checked := False;
  CheckBox4.Checked := False;
 end;
 {IF CheckBox1.Checked = false then
 begin
  CheckBox1.Checked := True;
  end; }
end;

procedure TFormNfe.CheckBox2Click(Sender: TObject);
begin
IF CheckBox2.Checked = True then
begin
  CheckBox1.Checked := False;
  CheckBox4.Checked := False;
 end else
 IF CheckBox2.Checked = false then
 begin
  CheckBox1.Checked := True;
  end;
end;

procedure TFormNfe.CheckBox4Click(Sender: TObject);
begin
 IF CheckBox4.Checked = True then
 begin
  CheckBox2.Checked := False;
  CheckBox1.Checked := False;
 end else
 IF CheckBox4.Checked = false then
 begin
  CheckBox1.Checked := True;
  end;
end;

end.
