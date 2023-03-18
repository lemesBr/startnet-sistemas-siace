unit Configuracoes;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Buttons, Db, IBCustomDataSet, IBStoredProc,
  IBQuery, Grids, DBGrids, Mask, SUIStatusBar, SUIEdit, SUIButton,
  SUIPageControl, SUITabControl,  DBCtrls, SUIDBCtrls, RXCtrls,
  SUIDlg, ExtDlgs, SUIImagePanel, SUIGroupBox, SUIRadioGroup,
  RXDBCtrl, Menus, RzPanel, RzTabs, AlignEdit, wwdblook,
  Wwdbdlg, IniFiles, aDvGlowButton, RxToolEdit, sLabel,zlib, ACBrBase, ACBrDFe, XMLIntf, XMLDoc,
  ACBrUtil.FilesIO,   ACBrUtil.DateTime,  ACBrUtil.Strings,  ACBrUtil.XMLHTML,
  pcnNFe, pcnRetConsReciDFe,  ACBrDFeConfiguracoes, ACBrDFeSSL, ACBrDFeOpenSSL,
  ACBrNFeNotasFiscais, ACBrNFeConfiguracoes,
  pcnAuxiliar, OleCtrls, SHDocVw, blcksock,
  ACBrNFe, pcnConversao,  pcnConversaoNFe, ACBrNFeDANFEClass, ACBrUtil, WinINet,
  pcnNFeW, pcnNFeRTXT,   ACBrEAD,  ACBrDFeUtil, strutils, math, TypInfo, DateUtils, synacode,  FileCtrl,
  Printers, DBCtrlsEh;

type
  TFormConfiguracoes = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    RxLabel2: TRxLabel;
    suiDBEdit2: TDBEdit;
    suiDBEdit3: TDBEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    suiDBEdit4: TDBEdit;
    suiDBEdit5: TDBEdit;
    suiDBEdit6: TDBEdit;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    suiDBEdit7: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup9: TDBRadioGroup;
    RxLabel1: TRxLabel;
    Panel3: TPanel;
    RxLabel20: TRxLabel;
    E_Nome: TEdit;
    ECodigocli: TRxDBComboEdit;
    DBImage1: TDBImage;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxDBComboEdit1: TRxDBComboEdit;
    suiEdit1: TEdit;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup12: TDBRadioGroup;
    RxLabel10: TRxLabel;
    suiDBEdit8: TDBEdit;
    DBRadioGroup13: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup16: TDBRadioGroup;
    RxLabel11: TRxLabel;
    suiDBEdit9: TDBEdit;
    DBRadioGroup17: TDBRadioGroup;
    RxLabel12: TRxLabel;
    RxDBComboEdit2: TRxDBComboEdit;
    suiEdit2: TEdit;
    DBRadioGroup19: TDBRadioGroup;
    DBRadioGroup20: TDBRadioGroup;
    DBRadioGroup21: TDBRadioGroup;
    Edit3: TEdit;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    RzPanel1: TRzPanel;
    DBRadioGroup22: TDBRadioGroup;
    RxLabel13: TRxLabel;
    DBRichEdit1: TDBRichEdit;
    DBRichEdit2: TDBRichEdit;
    TabSheet5: TRzTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    DBRadioGroup23: TDBRadioGroup;
    DBRadioGroup24: TDBRadioGroup;
    OpenDialog1: TOpenPictureDialog;
    Label7: TLabel;
    GroupBox10: TGroupBox;
    BtnConsLocal: TSpeedButton;
    EdtNomeLocal: TEdit;
    GroupBox11: TGroupBox;
    BtnConsLocalOrigem: TSpeedButton;
    BtnConsLocalDestino: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    EdtNomeLocalOrigem: TEdit;
    EdtNomeLocalDestino: TEdit;
    DBDateEdit1: TDBDateEdit;
    EdtCodLocal: TDBEdit;
    EdtCodLocalOrigem: TDBEdit;
    EdtCodLocalDestino: TDBEdit;
    TabSheet6: TRzTabSheet;
    GroupBox18: TGroupBox;
    PageControl1: TPageControl;
    TabSheet12: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button1: TButton;
    Button2: TButton;
    TabSheet13: TTabSheet;
    Label56: TLabel;
    sbtnPathSalvar: TSpeedButton;
    TabSheet14: TTabSheet;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label66: TLabel;
    estado_nfe: TDBComboBox;
    EdtSenhaCertificado: TDBEdit;
    EdtNumeroSerieCertificado: TDBEdit;
    EdtCaminhoCertificado: TDBEdit;
    EdtLogoMarcaDanfe: TDBEdit;
    SpeedButton2: TSpeedButton;
    edtPathLogs: TDBEdit;
    suiDBRadioGroup1: TDBRadioGroup;
    suiDBRadioGroup2: TDBRadioGroup;
    suiDBRadioGroup3: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    DBMemo1: TDBMemo;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    SpeedButton6: TSpeedButton;
    TabSheet7: TRzTabSheet;
    Label3: TLabel;
    DBRadioGroup25: TDBRadioGroup;
    DBRadioGroup26: TDBRadioGroup;
    Label2: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBRadioGroup27: TDBRadioGroup;
    DBRadioGroup28: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit14: TDBEdit;
    Label5: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBRadioGroup29: TDBRadioGroup;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DbCCExtra: TDBRadioGroup;
    Panel5: TPanel;
    TabSheet8: TRzTabSheet;
    GroupBox16: TGroupBox;
    DBEdit28: TDBEdit;
    blocregiao: TBitBtn;
    DBEdit30: TDBEdit;
    DBEdit23: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit24: TDBEdit;
    BitBtn13: TBitBtn;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    GroupBox30: TGroupBox;
    DBEdit27: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit29: TDBEdit;
    BitBtn14: TBitBtn;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    GroupBox19: TGroupBox;
    DBEdit33: TDBEdit;
    BitBtn15: TBitBtn;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    GroupBox20: TGroupBox;
    DBEdit36: TDBEdit;
    BitBtn16: TBitBtn;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    GroupBox22: TGroupBox;
    DBEdit39: TDBEdit;
    BitBtn18: TBitBtn;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    GroupBox21: TGroupBox;
    DBEdit42: TDBEdit;
    BitBtn17: TBitBtn;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    GroupBox4: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cb_ecf_modelo: TDBComboBox;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBRadioGroup30: TDBRadioGroup;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    cbo_porta: TComboBox;
    edt_ip: TEdit;
    GroupBox7: TGroupBox;
    pic_model: TImage;
    cbo_modelo: TComboBox;
    btn_porta: TButton;
    Label68: TLabel;
    SpeedButton7: TSpeedButton;
    DBEdit45: TDBEdit;
    RzPageControl2: TRzPageControl;
    TabSheet9: TRzTabSheet;
    TabSheet10: TRzTabSheet;
    TabSheet11: TRzTabSheet;
    TabSheet16: TRzTabSheet;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBRadioGroup31: TDBRadioGroup;
    DBRadioGroup32: TDBRadioGroup;
    Button3: TButton;
    btnSalvar: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    cancelar: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Gravar: TMenuItem;
    Fechar1: TMenuItem;
    DBRadioGroup33: TDBRadioGroup;
    DBRadioGroup34: TDBRadioGroup;
    RxLabel14: TRxLabel;
    DBEdit48: TDBEdit;
    DBRadioGroup35: TDBRadioGroup;
    GroupBox8: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    ComboBalanca: TComboBox;
    ComboPortaBal: TComboBox;
    ComboBaudBal: TComboBox;
    DBRadioGroup37: TDBRadioGroup;
    DBRadioGroup38: TDBRadioGroup;
    TabSheet17: TRzTabSheet;
    GroupBox9: TGroupBox;
    BitBtn2: TBitBtn;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    BitBtn3: TBitBtn;
    Label28: TLabel;
    Label29: TLabel;
    GroupBox12: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    BitBtn4: TBitBtn;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    BitBtn5: TBitBtn;
    GroupBox13: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    BitBtn6: TBitBtn;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    BitBtn7: TBitBtn;
    GroupBox14: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    BitBtn8: TBitBtn;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    BitBtn9: TBitBtn;
    GroupBox15: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    BitBtn10: TBitBtn;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    BitBtn11: TBitBtn;
    myLabel3d1: TsLabelFX;
    Label51: TLabel;
    edtURLPFX: TDBEdit;
    lSSLLib: TLabel;
    lCryptLib: TLabel;
    lHttpLib: TLabel;
    lXmlSign: TLabel;
    lSSLLib1: TLabel;
    Button4: TButton;
    Label38: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    gbxRetornoEnvio: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    DBCheckBox3: TDBCheckBox;
    AdvGlowButton1: TAdvGlowButton;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    btnStatusServ: TButton;
    pgRespostas: TPageControl;
    TabSheet15: TTabSheet;
    MemoResp: TMemo;
    TabSheet18: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet19: TTabSheet;
    memoLog: TMemo;
    TabSheet20: TTabSheet;
    trvwDocumento: TTreeView;
    TabSheet21: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    cbModeloDF: TDBComboBox;
    Button5: TButton;
    cbCryptLib: TDBComboBoxEh;
    cbHttpLib: TDBComboBoxEh;
    cbXmlSignLib: TDBComboBoxEh;
    cbSSLType: TDBComboBoxEh;
    cbVersaoDF: TDBComboBoxEh;
    cbFormaEmissao: TDBComboBoxEh;
    cbSSLLib: TDBComboBoxEh;
    SpeedButton3: TSpeedButton;
    Label45: TLabel;
    DBEdit2: TDBEdit;
    SpeedButton4: TSpeedButton;
    Label46: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton5: TSpeedButton;
    Label47: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton8: TSpeedButton;
    Label48: TLabel;
    DBEdit81: TDBEdit;
    SpeedButton9: TSpeedButton;
    DBEdit82: TDBEdit;
    Label49: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure suiDBEdit1Enter(Sender: TObject);
    procedure suiDBEdit2Enter(Sender: TObject);
    procedure suiDBEdit3Enter(Sender: TObject);
    procedure suiDBEdit1Exit(Sender: TObject);
    procedure suiDBEdit2Exit(Sender: TObject);
    procedure suiDBEdit3Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ECodigocliButtonClick(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure Carregar1Click(Sender: TObject);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure RxDBComboEdit2ButtonClick(Sender: TObject);
    procedure ECodigocliExit(Sender: TObject);
    procedure ECodigocliChange(Sender: TObject);
    procedure RxDBComboEdit2Exit(Sender: TObject);
    procedure BtnConsLocalClick(Sender: TObject);
    procedure BtnConsLocalOrigemClick(Sender: TObject);
    procedure BtnConsLocalDestinoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure blocregiaoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure cbo_modeloChange(Sender: TObject);
    procedure btn_portaClick(Sender: TObject);
    Procedure GravarINI ;
    Procedure LerINI ;
    procedure cbo_portaChange(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cbSSLLib1Change(Sender: TObject);
    procedure cbCryptLibChange(Sender: TObject);
    procedure cbHttpLibChange(Sender: TObject);
    procedure cbXmlSignLibChange(Sender: TObject);
    procedure cbSSLTypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure btnStatusServClick(Sender: TObject);
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit2Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);

  private
    { Private declarations }
    procedure AtualizarSSLLibsCombo;
  public
    { Public declarations }
  end;

var
  i_retorno: integer;
  i_modelo:integer;
  s_porta: string;
  ret_funcao: string;
  
  FormConfiguracoes: TFormConfiguracoes;


implementation

uses  ModulodeDados, Principal, Z_RotinasGerais, ConsClientes, ConsProdutos,
  ConsCondPagamento, UConsLocaisEstoque, ConsPlanoContas,
  Z_DeclaracoesBemaFi32, Ubibli1, Biblioteca;

const
  SELDIRHELP = 1000;

{$R *.DFM}

procedure TFormConfiguracoes.AdvGlowButton1Click(Sender: TObject);
var
  vXmlsClientePath: string;
begin
  try

     dm.ProxCod.Close;
     dm.ProxCod.SQL.Clear;
     dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CONFIGURACOES');
     DM.ProxCod.Open;


    dm.SDS_CONFIGURACOES.Insert;
    dm.SDS_CONFIGURACOESCODIGO.AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
    dm.SDS_CONFIGURACOESCOD_EMPRESA.ASINTEGER:= IEMP;
    DM.SDS_CONFIGURACOESNFE_CAMINHO_XML.AsString:=

      ExtractFileDir(application.ExeName) + '\NFe';

   { if UpperCase(Trim(TBiblioteca.LerIni('SIACE.INI', 'DADOS', 'DATABASE'))) = 'C:\StartNet_Sistemas\STARTNET.FDB' then
    begin
      vXmlsClientePath:= TBiblioteca.LerIni('SIACE.INI', 'OUTROS', 'XMLS_CLIENTE_PATH');

      if (vXmlsClientePath = EmptyStr) and not DirectoryExists(vXmlsClientePath) then
        vXmlsClientePath:= ExtractFileDir(application.ExeName) + '\XMLS-CLIENTE';

      DM.SDS_CONFIGURACOESPASTA_CANCELADAS_DANFE.AsString:=
        vXmlsClientePath + '\CANCELADAS';
      DM.SDS_CONFIGURACOESPASTA_INUTILIZADAS_DANFE.AsString:=
        vXmlsClientePath + '\INUTILIZADAS';
      DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.AsString:=
        vXmlsClientePath + '\TRANSMITIDAS';
      DM.SDS_CONFIGURACOESCAMINHO_ARQUIVOS_PDF.AsString:=
        vXmlsClientePath + '\PDF';
      DM.SDS_CONFIGURACOESCAMINHO_RELATORIO_DANFE.AsString:=
        vXmlsClientePath + '\PDF';
    end;  }

    Panel1.Enabled:= TRUE;
    Panel3.Enabled:= TRUE;
    RZPanel1.Enabled:= False;
    BtnCancelar.Enabled:= TRUE;
    BtnSalvar.Enabled:= TRUE;
    Btneditar.Enabled:= FALSE;
    GroupBox18.Enabled := TRUE;
    Panel5.Enabled:= TRUE;

  except
    on Error: Exception do
    begin
      Application.MessageBox(PChar('O Seguinte Erro Ocorreu ao Tentar Gravar: ' +
      Error.message),'Error',MB_ICONERROR);
      Close;
    end;
  end;
end;

procedure TFormConfiguracoes.AtualizarSSLLibsCombo;
begin
  cbSSLLib.ItemIndex     := Integer(DM.ACBrNFe1.Configuracoes.Geral.SSLLib);
  cbCryptLib.ItemIndex   := Integer(DM.ACBrNFe1.Configuracoes.Geral.SSLCryptLib);
  cbHttpLib.ItemIndex    := Integer(DM.ACBrNFe1.configuracoes.Geral.SSLHttpLib);
  cbXmlSignLib.ItemIndex := Integer(DM.ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib);

  cbSSLType.Enabled := (DM.ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]);
end;

procedure TFormConfiguracoes.GravarINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     INI.WriteInteger('ECF_N','Modelo',cbo_Modelo.ItemIndex);
     INI.WriteString('ECF_N','Modelo1',cbo_modelo.text);
     INI.WriteString('ECF_N','Porta',cbo_Porta.Text);
     INI.WriteString('ECF_N','IP',edt_ip.Text);       
  finally
     INI.Free ;
  end ;
end;

procedure TFormConfiguracoes.LerINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     cbo_Modelo.ItemIndex := INI.ReadInteger('ECF_N','Modelo',cbo_Modelo.ItemIndex);
     cbo_ModeloChange(nil);
     cbo_Porta.Text := INI.ReadString('ECF_N','Porta',cbo_Porta.Text);
     edt_ip.Text := INI.ReadString('ECF_N','IP',edt_ip.Text);
  finally
     INI.Free ;
  end ;
end;
procedure TFormConfiguracoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

FechaPorta();

Action:=CaFree;
FormConfiguracoes:=nil;
end;

procedure TFormConfiguracoes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_CONFIGURACOES.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  // MessageCanClose.ShowModal;
   ShowMessage('Antes de sair você deve salvar ou cancelar!') ;
    CanClose := False;
  end;
end;

procedure TFormConfiguracoes.FormCreate(Sender: TObject);
var
  T: TSSLLib;
  I: TpcnTipoEmissao;
  J: TpcnModeloDF;
  K: TpcnVersaoDF;
  U: TSSLCryptLib;
  V: TSSLHttpLib;
  X: TSSLXmlSignLib;
  Y: TSSLType;
 //  N: TACBrPosPrinterModelo;
 // O: TACBrPosPaginaCodigo;
begin
{  cbSSLLib.Items.Clear;
  for T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) );
  cbSSLLib.ItemIndex := 0;

  cbCryptLib.Items.Clear;
  for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) );
  cbCryptLib.ItemIndex := 0;

  cbHttpLib.Items.Clear;
  for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) );
  cbHttpLib.ItemIndex := 0;

  cbXmlSignLib.Items.Clear;
  for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) );
  cbXmlSignLib.ItemIndex := 0;

  cbSSLType.Items.Clear;
  for Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) );
  cbSSLType.ItemIndex := 0;

  cbFormaEmissao.Items.Clear;
  for I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) );
  cbFormaEmissao.ItemIndex := 0;

  cbModeloDF.Items.Clear;
  for J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) );
  cbModeloDF.ItemIndex := 0;

  cbVersaoDF.Items.Clear;
  for K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) );
  cbVersaoDF.ItemIndex := 0;   }

  DM.ConfiguraNFe;

end;

procedure TFormConfiguracoes.FormShow(Sender: TObject);
begin
Panel1.Enabled:= False;
Panel3.Enabled:= False;
BtnCancelar.Enabled:= False;
BtnSalvar.Enabled:= False;
Btneditar.Enabled:= True;
//DM.SDS_Clientes.Open;
//DM.SDS_PRODUTOS.Open;
DM.SDS_CONFIGURACOES.Active := FALSE;
DM.SDS_CONFIGURACOES.Active := True;

DM.SDS_PlContas.Active := False;
DM.SDS_PlContas.Active := True;

dm.SDS_CondPagamento.Active := False;
dm.SDS_CondPagamento.Active := True;

  DM.SDS_PRODUTOS.Active:= FALSE;
  DM.Sds_produtos.sql.clear;
  DM.SDS_PRODUTOS.sql.add('select * from PRODUTOS where codigo ='+ RxDBComboEdit1.text +' ORDER BY CODIGO asc');
  DM.SDS_PRODUTOS.Active:= TRUE;

    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where codigo ='+ECodigocli.text+' order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;


  {DM.SDS_Clientes.Active:= False;
  DM.SDS_Clientes.Active:= True; }

dm.SDS_CST.Close;
dm.SDS_CST.open;

DM.qrcfop.Active := False;
DM.qrcfop.sql.Clear;
DM.qrcfop.sql.add('select * from TABELA_CFOP');
DM.qrcfop.Active := true;


if ECodigocli.Text > '' then
If DM.SDS_Clientes.locate('CODIGO',ECodigocli.Text,[])=True then
begin
   E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
end;

if RxDBComboEdit1.Text > '' then
If DM.SDS_PRODUTOS.locate('CODIGO',RxDBComboEdit1.Text,[])=True then
SUIEdit1.Text := DM.SDS_PRODUTOSDESCRICAO.Text;

if RxDBComboEdit2.Text > '' then
If DM.SDS_CondPagamento.locate('CODIGO',RxDBComboEdit2.Text,[])=True then
SUIEdit2.Text := DM.SDS_CondPagamentoDESCRICAO.Text;

end;

procedure TFormConfiguracoes.btnSalvarClick(Sender: TObject);
var
  vXmlsClientePath: string;
begin
  try
    dm.SDS_CONFIGURACOES.Edit;
    dm.SDS_CONFIGURACOESCOD_EMPRESA.TEXT:= DM.SDS_EmpresaCODIGO.Text;
    DM.SDS_CONFIGURACOESNFE_CAMINHO_XML.AsString:=
      ExtractFileDir(application.ExeName) + '\NFe';

    if UpperCase(Trim(TBiblioteca.LerIni('SIACE.INI', 'DADOS', 'DATABASE'))) = 'C:\StartNet_Sistemas\STARTNET.FDB' then
    begin
      vXmlsClientePath:= TBiblioteca.LerIni('SIACE.INI', 'OUTROS', 'XMLS_CLIENTE_PATH');

      if (vXmlsClientePath = EmptyStr) and not DirectoryExists(vXmlsClientePath) then
        vXmlsClientePath:= ExtractFileDir(application.ExeName) + '\XMLS-CLIENTE';

      DM.SDS_CONFIGURACOESPASTA_CANCELADAS_DANFE.AsString:=
        vXmlsClientePath + '\CANCELADAS';
      DM.SDS_CONFIGURACOESPASTA_INUTILIZADAS_DANFE.AsString:=
        vXmlsClientePath + '\INUTILIZADAS';
      DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.AsString:=
        vXmlsClientePath + '\TRANSMITIDAS';
      DM.SDS_CONFIGURACOESCAMINHO_ARQUIVOS_PDF.AsString:=
        vXmlsClientePath + '\PDF';
      DM.SDS_CONFIGURACOESCAMINHO_RELATORIO_DANFE.AsString:=
        vXmlsClientePath + '\PDF';
    end;

    DM.SDS_CONFIGURACOES.Post;
    DM.SDS_CONFIGURACOES.ApplyUpdates(0);
    Panel1.Enabled:= False;
    Panel3.Enabled:= False;
    RZPanel1.Enabled:= False;
    BtnCancelar.Enabled:= False;
    BtnSalvar.Enabled:= False;
    Btneditar.Enabled:= True;
    GroupBox18.Enabled := False;
    Panel5.Enabled:= False;
    GravarINI;
     dm.ConfiguraNFe;
  except
    on Error: Exception do
    begin
      Application.MessageBox(PChar('O Seguinte Erro Ocorreu ao Tentar Gravar: ' +
      Error.message),'Error',MB_ICONERROR);
      Close;
    end;
  end;
end;

procedure TFormConfiguracoes.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.FilesIO.WriteToTXT(PathWithDelim(ExtractFileDir(application.ExeName)) + 'temp.xml',
                      ACBrUtil.XMLHTML.ConverteXMLtoUTF8(RetWS), False, False);

  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName)) + 'temp.xml');

  if DM.ACBrNFe1.NotasFiscais.Count > 0then
    MemoResp.Lines.Add('Empresa: ' + DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome);
end;

procedure TFormConfiguracoes.btnStatusServClick(Sender: TObject);
begin

IF DM.ACBrNFe1.SSL.CertDataVenc < Now then
begin
 showmessage('Certificado vencido (data de validade expirada)');
 Exit;
end;
  DM.ACBrNFe1.Configuracoes.Certificados.URLPFX      := edtURLPFX.Text;
  DM.ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := EdtCaminhoCertificado.Text;
  DM.ACBrNFe1.Configuracoes.Certificados.Senha       := EdtSenhaCertificado.Text;
  DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := EdtNumeroSerieCertificado.Text;

   with DM.ACBrNFe1.Configuracoes.Geral do
  begin
    SSLLib        := TSSLLib(cbSSLLib.ItemIndex);
    SSLCryptLib   := TSSLCryptLib(cbCryptLib.ItemIndex);
    SSLHttpLib    := TSSLHttpLib(cbHttpLib.ItemIndex);
    SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
     IdCSC            := DBEdit46.Text;
    CSC              := DBEdit47.Text;
    VersaoQRCode     := veqr200;
  end;

  dm.ACBrNFe1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);

  DM.ACBrNFe1.Configuracoes.geral.ModeloDF :=  moNFE;
  DM.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
 // DM.ACBrNFe1.Configuracoes.Arquivos PathSchemas := edtPathSchemas.Text;
  DM.ACBrNFe1.Configuracoes.Arquivos.PathSchemas := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFE';

  DM.ACBrNFe1.WebServices.StatusServico.Executar;

  MemoResp.Lines.Text := DM.ACBrNFe1.WebServices.StatusServico.RetWS;
  memoRespWS.Lines.Text := DM.ACBrNFe1.WebServices.StatusServico.RetornoWS;
  LoadXML(DM.ACBrNFe1.WebServices.StatusServico.RetornoWS, WBResposta);

  pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Status Serviço');
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
  end;  }


end;

Procedure TFormConfiguracoes.btnCancelarClick(Sender: TObject);
begin
  try
    DM.SDS_CONFIGURACOES.Cancel;
    Panel1.Enabled:= False;
    Panel3.Enabled:= False;
    RZPanel1.Enabled:= False;
    BtnCancelar.Enabled:= False;
    BtnSalvar.Enabled:= False;
    Btneditar.Enabled:= True;
    GroupBox18.Enabled := False;
    Panel5.Enabled:= False;
  except
    on Error: Exception do
    begin
      Application.MessageBox(PChar('O Seguinte Erro Ocorreu ao Tentar Cancelar: ' +
      Error.message),'Error',MB_ICONERROR);
      Close;
    end;
  end;
end;

procedure TFormConfiguracoes.btnEditarClick(Sender: TObject);
begin
  if FormPrincipal.Label2.Caption = 'N'then
    Application.MessageBox('Usuário não Possui Permissão Para Editar Está Tela!',
    'Atenção',MB_ICONWARNING)
  else
  if FormPrincipal.Label2.Caption = 'S' then
  begin
    DM.SDS_CONFIGURACOES.Edit;
    Panel5.Enabled:= True;
    Panel1.Enabled:= True;
    GroupBox18.Enabled := True;
    Panel3.Enabled:= True;
    RZPanel1.Enabled:= True;
    BtnCancelar.Enabled:= True;
    BtnSalvar.Enabled:= True;
    Btneditar.Enabled:= False;
    LerINI;
  end;
end;


procedure TFormConfiguracoes.suiDBEdit1Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormConfiguracoes.suiDBEdit2Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormConfiguracoes.suiDBEdit3Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormConfiguracoes.suiDBEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConfiguracoes.suiDBEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConfiguracoes.suiDBEdit3Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConfiguracoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormConfiguracoes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConfiguracoes.ECodigocliButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

 FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.ShowModal;

      E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       ECodigocli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
end;

procedure TFormConfiguracoes.Limpar1Click(Sender: TObject);
begin
DM.SDS_CONFIGURACOESLOGOMARCA.Clear;
end;

procedure TFormConfiguracoes.Carregar1Click(Sender: TObject);
begin
Try
 if OpenDialog1.Execute then
  begin
    DBImage1.Picture.LoadFromFile(OpenDialog1.Filename);
  end;
  Except
     MessageDlg('Não foi possivel carregar a imagem, verifique o formato', mtError,[mbAbort],0);
   end;
end;

procedure TFormConfiguracoes.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
FormConsProdutos:=TFormConsProdutos.Create(self);
     FormConsProdutos.ShowModal;

      RxDBComboEdit1.Text:=DM.SDS_PRODUTOS.Fieldbyname('CODIGO').AsString;
       suiEdit1.Text:=DM.SDS_PRODUTOS.Fieldbyname('DESCRICAO').AsString;
end;

procedure TFormConfiguracoes.RxDBComboEdit2ButtonClick(Sender: TObject);
begin
FormConsCondPagamento:=TFormConsCondPagamento.Create(self);
     FormConsCondPagamento.ShowModal;

      RxDBComboEdit2.Text:=DM.SDS_CondPagamentoCODIGO.AsString;
       suiEdit2.Text:=DM.SDS_CondPagamentoDESCRICAO.AsString;
end;


procedure TFormConfiguracoes.ECodigocliExit(Sender: TObject);
 begin
  DM.SDS_Clientes.Filtered := False;

 if edit3.Text='LETRAS' THEN

  BEGIN
  ACHOU := DM.SDS_Clientes.locate('nome_rs',ECodigocli.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  ECodigocliButtonClick(sender);
  end;

  IF ACHOU=TRUE THEN
  begin
  E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
  end else

IF EDIT3.Text='NUMEROS' THEN
BEGIN
 IF ECodigocli.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 ECodigocli.Text := '';
 ECodigocli.SetFocus;
end else

//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', Ecodigocli.Text,[]);

IF ACHOU=FALSE THEN
begin
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',DBComboCliente.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
ECodigocli.SetFocus;
end else
 IF ACHOU=TRUE THEN
  begin
  E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
end;
end;

  //     ECodigocli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;

procedure TFormConfiguracoes.ECodigocliChange(Sender: TObject);
begin
IF (ECodigocli.Text>='A') AND (ECodigocli.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (ECodigocli.Text>='0') AND (ECodigocli.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF ECodigocli.Text='' THEN
EDIT3.Text:=''

end;

procedure TFormConfiguracoes.RxDBComboEdit2Exit(Sender: TObject);
begin
  if DM.SDS_CondPagamento.Locate('CODIGO', RxDBComboEdit2.Text,[]) = True then
  BEGIN
  suiEdit2.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;

end;
end;

procedure TFormConfiguracoes.BtnConsLocalClick(Sender: TObject);
begin
   Application.CreateForm(TFrmConsLocaisEstoque, FrmConsLocaisEstoque);
   FrmConsLocaisEstoque.Tag:= 3;
   FrmConsLocaisEstoque.ShowModal;
end;

procedure TFormConfiguracoes.BtnConsLocalOrigemClick(Sender: TObject);
begin
   Application.CreateForm(TFrmConsLocaisEstoque, FrmConsLocaisEstoque);
   FrmConsLocaisEstoque.Tag:= 9;
   FrmConsLocaisEstoque.ShowModal;
end;

procedure TFormConfiguracoes.BtnConsLocalDestinoClick(Sender: TObject);
begin
   Application.CreateForm(TFrmConsLocaisEstoque, FrmConsLocaisEstoque);
   FrmConsLocaisEstoque.Tag:= 10;
   FrmConsLocaisEstoque.ShowModal;
end;

procedure TFormConfiguracoes.Button1Click(Sender: TObject);
begin
   OpenDialog1.Title      := 'Selecione o Certificado';
   OpenDialog1.DefaultExt := '*.pfx';
   OpenDialog1.Filter     := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
   OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);

   if OpenDialog1.Execute then
      EdtCaminhoCertificado.Text:= OpenDialog1.FileName;
end;

procedure TFormConfiguracoes.Button2Click(Sender: TObject);
begin

  {$IFNDEF ACBrNFeOpenSSL}
   EdtNumeroSerieCertificado.Text:= dm.ACBrNFe1.ssl.SelecionarCertificado;
   {$ENDIF}
end;

procedure TFormConfiguracoes.sbtnPathSalvarClick(Sender: TObject);
begin
 OpenDialog1.Title      := 'Selecione o Logo';
   OpenDialog1.DefaultExt := '*.bmp';
   OpenDialog1.Filter     := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
   OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);

   if OpenDialog1.Execute then
      EdtLogoMarcaDanfe.Text := OpenDialog1.FileName;
end;

procedure TFormConfiguracoes.SpeedButton1Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(DBEdit2.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir :=DBEdit2.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    DBEdit2.Text := Dir;

end;

procedure TFormConfiguracoes.SpeedButton2Click(Sender: TObject);
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

procedure TFormConfiguracoes.SpeedButton5Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(DBEdit3.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir :=DBEdit3.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    DBEdit3.Text := Dir;
end;

procedure TFormConfiguracoes.SpeedButton6Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(DBEdit11.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := DBEdit11.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    DBEdit11.Text := Dir;

end;  

procedure TFormConfiguracoes.blocregiaoClick(Sender: TObject);
begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
     FormConsPlanoContas.ShowModal;
      dm.SDS_CONFIGURACOES.Edit;
       dm.SDS_CONFIGURACOESPLANO_VENDA_AV.ASSTRING := DM.SDS_PlContasCODIGO.Text;
end;

procedure TFormConfiguracoes.BitBtn1Click(Sender: TObject);
begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
     FormConsPlanoContas.ShowModal;
      dm.SDS_CONFIGURACOES.Edit;
       dm.SDS_CONFIGURACOESPLANO_VENDA_AP.ASSTRING := DM.SDS_PlContasCODIGO.Text;
end;

procedure TFormConfiguracoes.BitBtn13Click(Sender: TObject);
begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
     FormConsPlanoContas.ShowModal;
      dm.SDS_CONFIGURACOES.Edit;
       dm.SDS_CONFIGURACOESPLANO_DUPLICATA_NFE.ASSTRING := DM.SDS_PlContasCODIGO.Text;
end;

procedure TFormConfiguracoes.BitBtn14Click(Sender: TObject);
begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
     FormConsPlanoContas.ShowModal;
      dm.SDS_CONFIGURACOES.Edit;
       dm.SDS_CONFIGURACOESPLANO_OS_AV.ASSTRING := DM.SDS_PlContasCODIGO.Text;

end;

procedure TFormConfiguracoes.BitBtn15Click(Sender: TObject);
begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
     FormConsPlanoContas.ShowModal;
      dm.SDS_CONFIGURACOES.Edit;
       dm.SDS_CONFIGURACOESPLANO_OS_AP.ASSTRING := DM.SDS_PlContasCODIGO.Text;
end;

procedure TFormConfiguracoes.BitBtn18Click(Sender: TObject);
begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
     FormConsPlanoContas.ShowModal;
      dm.SDS_CONFIGURACOES.Edit;
      dm.SDS_CONFIGURACOESPLANO_RECEBIMENTO_CREDIARIO.ASSTRING := DM.SDS_PlContasCODIGO.Text;
end;

procedure TFormConfiguracoes.BitBtn16Click(Sender: TObject);
begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
     FormConsPlanoContas.ShowModal;
      dm.SDS_CONFIGURACOES.Edit;
      dm.SDS_CONFIGURACOESPLANO_OUTRAS_ENTRADAS.ASSTRING := DM.SDS_PlContasCODIGO.Text;
end;

procedure TFormConfiguracoes.BitBtn17Click(Sender: TObject);
begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
      FormConsPlanoContas.ShowModal;
      dm.SDS_CONFIGURACOES.Edit;
      dm.SDS_CONFIGURACOESPLANO_OUTRAS_SAIDAS.ASSTRING := DM.SDS_PlContasCODIGO.Text;
end;

procedure TFormConfiguracoes.cbCryptLibChange(Sender: TObject);
begin
  try
    if cbCryptLib.ItemIndex <> -1 then
      DM.ACBrNFe1.Configuracoes.Geral.SSLCryptLib := TSSLCryptLib(cbCryptLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TFormConfiguracoes.cbHttpLibChange(Sender: TObject);
begin
   try
    if cbHttpLib.ItemIndex <> -1 then
      DM.ACBrNFe1.Configuracoes.Geral.SSLHttpLib := TSSLHttpLib(cbHttpLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TFormConfiguracoes.cbo_modeloChange(Sender: TObject);
begin
  if cbo_modelo.Text > '' then
  begin
    if cbo_modelo.Text = 'MP 20 CI' then
    begin
      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\mi.bmp' );
      edt_ip.Enabled:= False;
      edt_ip.Color:= ClBtnFace;
      i_modelo:= 1
    end
    else
    if cbo_modelo.Text = 'MP 20 MI' then
    begin
      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\mi.bmp' );
      edt_ip.Enabled:= False;
      edt_ip.Color:= ClBtnFace;
      i_modelo:= 1;
    end
    else
    if cbo_modelo.Text = 'MP 20 TH' then
    begin
      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\mi.bmp' );
      edt_ip.Enabled:= False;
      edt_ip.Color:= ClBtnFace;
      i_modelo:= 0;
    end
    else
    if cbo_modelo.Text = 'MP 2000 CI' then
    begin
      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2100.bmp' );
      edt_ip.Enabled:= False;
      edt_ip.Color:= ClBtnFace;
      i_modelo:= 0;
    end
    else
    if cbo_modelo.Text = 'MP 2000 TH' then
    begin
      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2100.bmp' );
      edt_ip.Enabled:= False;
      edt_ip.Color:= ClBtnFace;
      i_modelo:= 0;
    end
    else
    if cbo_modelo.Text = 'MP 2100 TH' then
    begin
      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2100.bmp' );
      edt_ip.Enabled:= False;
      edt_ip.Color:= ClBtnFace;
      i_modelo:= 0;
    end
    else
    if cbo_modelo.Text = 'MP 4000 TH' then
    begin
      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\4000.bmp' );
      edt_ip.Enabled:= True;
      edt_ip.Color:= ClWhite;
      i_modelo:= 5;
    end
    else
    if cbo_modelo.Text = 'MP 4200 TH' then
    begin
      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\4000.bmp' );
      edt_ip.Enabled:= True;
      edt_ip.Color:= ClWhite;
      i_modelo:= 7;
    end
    else
    if cbo_modelo.Text = 'MP 2500 TH' then
    begin
      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2500.bmp' );
      edt_ip.Enabled:= True;
      edt_ip.Color:= ClWhite;
      i_modelo:= 8;
    end;
  end;
end;

procedure TFormConfiguracoes.btn_portaClick(Sender: TObject);
begin

ConfiguraModeloImpressora(i_modelo);

//COMANDO DE ABERTURA DA PORTA DE COMUNICAÇÃO

i_retorno:= IniciaPorta(pchar(s_porta));

//VALIDAÇÃO DE EXECUÇÃO DO COMANDO


if i_retorno=1 then
  Begin
    Application.MessageBox('Impressora conectada','Sucesso!',0);
  end
    Else
      Application.MessageBox('Erro de conexão','Erro!',0);

end;

procedure TFormConfiguracoes.cbo_portaChange(Sender: TObject);
begin
if cbo_porta.Text='COM1' then
    Begin
      edt_ip.Enabled:=False;
      edt_ip.Color:=ClBtnFace;
      s_porta:=cbo_porta.text;
    End
      Else
        if cbo_porta.Text='COM2' then
          Begin
            edt_ip.Enabled:=False;
            edt_ip.Color:=ClBtnFace;
            s_porta:=cbo_porta.text;
          End
            Else
              if cbo_porta.Text='COM3' then
                Begin
                  edt_ip.Enabled:=False;
                  edt_ip.Color:=ClBtnFace;
                  s_porta:=cbo_porta.text;
                End
                  Else
                    if cbo_porta.Text='COM4' then
                      Begin
                        edt_ip.Enabled:=False;
                        edt_ip.Color:=ClBtnFace;
                        s_porta:=cbo_porta.text;
                      End
                        Else
                           if cbo_porta.Text='LPT1' then
                            Begin
                              edt_ip.Enabled:=False;
                              edt_ip.Color:=ClBtnFace;
                              s_porta:=cbo_porta.text;
                            End
                              Else
                                if cbo_porta.Text='LPT2' then
                                  Begin
                                    edt_ip.Enabled:=False;
                                    edt_ip.Color:=ClBtnFace;
                                    s_porta:=cbo_porta.text;
                                  End
                                    Else
                                      if cbo_porta.Text='USB' then
                                        Begin
                                          edt_ip.Enabled:=False;
                                          edt_ip.Color:=ClBtnFace;
                                          s_porta:=cbo_porta.text;
                                        End
                                          Else
                                            if cbo_porta.Text='ETHERNET' then
                                              Begin
                                                edt_ip.Enabled:=True;
                                                edt_ip.Color:=ClWhite;
                                                s_porta:=edt_ip.text;

                                               End
                                  Else
                                    Application.MessageBox('Erro ao abrir porta de comunicação','Aviso!',1);

end;

procedure TFormConfiguracoes.cbSSLLib1Change(Sender: TObject);
begin
    try
    if cbSSLLib.ItemIndex <> -1 then
      dm.ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(cbSSLLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TFormConfiguracoes.cbSSLTypeChange(Sender: TObject);
begin
  if cbSSLType.ItemIndex <> -1 then
     DM.ACBrNFe1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);
end;

Procedure TFormConfiguracoes.cbXmlSignLibChange(Sender: TObject);
begin
     try
    if cbXmlSignLib.ItemIndex <> -1 then
      DM.ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TFormConfiguracoes.DBEdit2Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(DBEdit1.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir :=DBEdit1.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    DBEdit1.Text := Dir;

end;

procedure TFormConfiguracoes.SpeedButton7Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(DBEdit45.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir :=DBEdit45.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    DBEdit45.Text := Dir;

end;

procedure TFormConfiguracoes.SpeedButton8Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(DBEdit4.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir :=DBEdit4.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    DBEdit4.Text := Dir;
end;

procedure TFormConfiguracoes.SpeedButton9Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(DBEdit81.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir :=DBEdit81.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    DBEdit81.Text := Dir;
end;

procedure TFormConfiguracoes.Button3Click(Sender: TObject);

var
   StrPorta: string;
   StrVelocidade: string;

begin
  StrPorta:= StringOfChar(' ',20);
  StrVelocidade:= StringOfChar(' ',20);

  iRetorno:=eBuscarPortaVelocidade_DUAL_DarumaFramework();

  if(iRetorno = 1) then
    begin
      iRetorno:=regRetornaValorChave_DarumaFramework('DUAL','Velocidade', StrVelocidade);
      iRetorno:=regRetornaValorChave_DarumaFramework('DUAL','PortaComunicacao', StrPorta);
      ShowMessage('Comunicação estabelecida! Porta: ' + StrPorta +  ' Velocidade: ' + StrVelocidade);
    end
   else
    begin
      ShowMessage('Erro ao estabelecer comunicação!');
    end
end;

procedure TFormConfiguracoes.Button4Click(Sender: TObject);
begin
  OpenDialog1.Title      := 'Selecione o caminho';
   OpenDialog1.DefaultExt := '*.pfx';
   OpenDialog1.Filter     := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
   OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);

   if OpenDialog1.Execute then
      edtURLPFX.Text:= OpenDialog1.FileName;
end;

procedure TFormConfiguracoes.Button5Click(Sender: TObject);
begin
IF DM.ACBrNFe1.SSL.CertDataVenc < Now then
begin
 showmessage('Certificado vencido (data de validade expirada)');
 Exit;
end;
  DM.ACBrNFe1.Configuracoes.Certificados.URLPFX      := edtURLPFX.Text;
  DM.ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := EdtCaminhoCertificado.Text;
  DM.ACBrNFe1.Configuracoes.Certificados.Senha       := EdtSenhaCertificado.Text;
  DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := EdtNumeroSerieCertificado.Text;

   with DM.ACBrNFe1.Configuracoes.Geral do
  begin
    SSLLib        := TSSLLib(cbSSLLib.ItemIndex);
    SSLCryptLib   := TSSLCryptLib(cbCryptLib.ItemIndex);
    SSLHttpLib    := TSSLHttpLib(cbHttpLib.ItemIndex);
    SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
     IdCSC            := DBEdit46.Text;
    CSC              := DBEdit47.Text;
    VersaoQRCode     := veqr200;
  end;

  dm.ACBrNFe1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);

  DM.ACBrNFe1.Configuracoes.geral.modelodf := moNFce ;
  DM.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
 // DM.ACBrNFe1.Configuracoes.Arquivos PathSchemas := edtPathSchemas.Text;
  DM.ACBrNFe1.Configuracoes.Arquivos.PathSchemas := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFE';

  DM.ACBrNFe1.WebServices.StatusServico.Executar;

  MemoResp.Lines.Text := DM.ACBrNFe1.WebServices.StatusServico.RetWS;
  memoRespWS.Lines.Text := DM.ACBrNFe1.WebServices.StatusServico.RetornoWS;
  LoadXML(DM.ACBrNFe1.WebServices.StatusServico.RetornoWS, WBResposta);

  pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Status Serviço');
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
  end;  }


end;

End.
