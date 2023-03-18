unit Configuracoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Buttons, Db, IBCustomDataSet, IBStoredProc,
  IBQuery, Grids, DBGrids, Mask, SUIStatusBar, SUIEdit, SUIButton,
  SUIPageControl, SUITabControl,  DBCtrls, SUIDBCtrls, RXCtrls,
  SUIDlg, DBXpress, ExtDlgs, SUIImagePanel, SUIGroupBox, SUIRadioGroup,
  Mylabel, ToolEdit, RXDBCtrl, Menus, RzPanel, RzTabs, AlignEdit, wwdblook,
  Wwdbdlg, IniFiles, FDvGlowButton;

type
  TFormConfiguracoes = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    RxLabel2: TRxLabel;
    suiDBEdit2: TDBEdit;
    suiDBEdit3: TDBEdit;
    RxLabel3: TRxLabel;
    myLabel3d1: TmyLabel3d;
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
    TabSheet15: TTabSheet;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label67: TLabel;
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
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
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
    Label6: TLabel;
    DBEdit19: TDBEdit;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
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

  private
    { Private declarations }
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

uses FileCtrl, ModulodeDados, Principal, Z_RotinasGerais, ConsClientes, ConsProdutos,
  ConsCondPagamento, UConsLocaisEstoque, ConsPlanoContas,
  Z_DeclaracoesBemaFi32, Ubibli1;

const
  SELDIRHELP = 1000;

{$R *.DFM}


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
  DM.SDS_PRODUTOS.DataSet.CommandText:= 'select * from PRODUTOS where codigo ='+ RxDBComboEdit1.text +' ORDER BY CODIGO asc';
  DM.SDS_PRODUTOS.Active:= TRUE;

    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where codigo ='+ECodigocli.text+' order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;


  {DM.SDS_Clientes.Active:= False;
  DM.SDS_Clientes.Active:= True; }

dm.SDS_CST.Close;
dm.SDS_CST.open;

dm.SDS_CFOP.Close;
dm.SDS_CFOP.open;


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
begin
 Try
      begin
          dm.SDS_CONFIGURACOES.Edit;
          dm.SDS_CONFIGURACOESCOD_EMPRESA.TEXT:= DM.SDS_EmpresaCODIGO.Text;
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
          GRAVARINI;
      end;
   Except
   // ErroGravacao.ShowModal;
   ShowMessage('Ocorreu um Erro! Tente Novamente!');
   end;

end;

procedure TFormConfiguracoes.btnCancelarClick(Sender: TObject);
begin
Try
DM.SDS_CONFIGURACOES.Cancel;
Panel1.Enabled:= False;
Panel3.Enabled:= False;
RZPanel1.Enabled:= False;
BtnCancelar.Enabled:= False;
BtnSalvar.Enabled:= False;
Btneditar.Enabled:= True;
GroupBox18.Enabled := False;
Panel5.Enabled:= False;
   Except
    // ErroGravacao.ShowModal;
   ShowMessage('Não Foi possive gravar as informações tente novamente');
   end;

end;

procedure TFormConfiguracoes.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
//PerEditar.ShowModal;
ShowMessage('Usuario não tem acesso para editar registro! Consulte o administrador do sistema.');
End;
if FormPrincipal.Label2.Caption ='S'then
begin
//Try
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
   //  suiDBEdit2.SetFocus;
 //  Except
  //   ErroGravacao.ShowModal;
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

procedure TFormConfiguracoes.SpeedButton1Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(DBEdit1.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := DBEdit1.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    DBEdit1.Text := Dir;

end;

procedure TFormConfiguracoes.SpeedButton3Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(DBEdit2.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := DBEdit2.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    DBEdit2.Text := Dir;
end;

procedure TFormConfiguracoes.SpeedButton4Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(DBEdit3.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := DBEdit3.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    DBEdit3.Text := Dir;

end;

procedure TFormConfiguracoes.SpeedButton5Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(DBEdit4.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := DBEdit4.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    DBEdit4.Text := Dir;

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

procedure TFormConfiguracoes.cbo_modeloChange(Sender: TObject);
begin
 if cbo_modelo.Text >'' then
 begin
   if cbo_modelo.Text='MP 20 CI' then
    Begin
      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\mi.bmp' );
      edt_ip.Enabled:=False;
      edt_ip.Color:=ClBtnFace;
      i_modelo:=1
    End
    Else
      if cbo_modelo.Text='MP 20 MI' then
      Begin
        pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\mi.bmp' );
        edt_ip.Enabled:=False;
        edt_ip.Color:=ClBtnFace;
        i_modelo:=1;
      End
        Else
          if cbo_modelo.Text='MP 20 TH' then
          Begin
            pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\mi.bmp' );
            edt_ip.Enabled:=False;
            edt_ip.Color:=ClBtnFace;
            i_modelo:=0;
          End
            Else
              if cbo_modelo.Text='MP 2000 CI' then
                Begin
                  pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2100.bmp' );
                  edt_ip.Enabled:=False;
                  edt_ip.Color:=ClBtnFace;
                  i_modelo:=0;
                End
                  Else
                    if cbo_modelo.Text='MP 2000 TH' then
                    Begin
                      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2100.bmp' );
                      edt_ip.Enabled:=False;
                      edt_ip.Color:=ClBtnFace;
                      i_modelo:=0;
                    End
                      Else
                        if cbo_modelo.Text='MP 2100 TH' then
                        Begin
                          pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2100.bmp' );
                          edt_ip.Enabled:=False;
                          edt_ip.Color:=ClBtnFace;
                          i_modelo:=0;
                        End
                          Else
                            if cbo_modelo.Text='MP 4000 TH' then
                            Begin
                              pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\4000.bmp' );
                              edt_ip.Enabled:=True;
                              edt_ip.Color:=ClWhite;
                              i_modelo:=5;
                            End
                              Else
                                if cbo_modelo.Text='MP 4200 TH' then
                                Begin
                                  pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\4000.bmp' );
                                  edt_ip.Enabled:=True;
                                  edt_ip.Color:=ClWhite;
                                  i_modelo:=7;
                                End
                                  Else
                                     if cbo_modelo.Text='MP 2500 TH' then
                                     Begin
                                        pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2500.bmp' );
                                        edt_ip.Enabled:=True;
                                        edt_ip.Color:=ClWhite;
                                        i_modelo:=8;
                                     End
                                    Else
                                      Application.MessageBox('Modelo incorreto ou não informado','Aviso!',1);

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

end.
