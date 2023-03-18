unit ConfBancos;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  RXDBCtrl, RXCtrls, SUIEdit, DBCtrls,
  StdCtrls, Mask,  SUIDBCtrls, SUIButton, ExtCtrls, SUIPageControl,
  SUITabControl,  SUIGroupBox, Buttons, ExtDlgs, RxDBComb,
  DB,  SUIDlg, AppEvnts, FormPadrai, SUIImagePanel,
  SUIRadioGroup,  TaskDialog, sDBNavigator, sBitBtn, sPanel,
  sCheckBox, sDBCheckBox, sDBMemo, sDBComboBox, sDBLookupComboBox,
  sGroupBox, sDBRadioGroup, sDBEdit, sLabel, RzEdit,  RzDBEdit,
  aDvSmoothMessageDialog, RxToolEdit, RxCurrEdit, AdvGlowButton, JvExStdCtrls,
  JvCombobox, JvDBCombobox, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, ACBrBase, ACBrBoleto,
  ACBrBoletoConversao, ACBrBoletoRetorno, TypInfo, DateUtils, pcnConversao,
  ACBrDFeSSL, NxPageControl;

type
  TFormLyBancos = class(TFormPadrao)
    GroupBox1: TsGroupBox;
    Label8: TsLabel;
    DBEdit6: TsDBEdit;
    Label10: TsLabel;
    DBEdit7: TsDBEdit;
    Label9: TsLabel;
    Label5: TsLabel;
    DBEdit8: TsDBEdit;
    DBEdit9: TsDBEdit;
    Label11: TsLabel;
    Label6: TsLabel;
    DBEdit5: TsDBEdit;
    Label12: TsLabel;
    DBEdit10: TsDBEdit;
    DBEdit11: TsDBEdit;
    Label13: TsLabel;
    GroupBox2: TsGroupBox;
    Label1: TLabel;
    Label4: TsLabel;
    Label2: TsLabel;
    DBEdit3: TsDBEdit;
    GroupBox3: TsGroupBox;
    GroupBox4: TGroupBox;
    Label14: TsLabel;
    DBEdit12: TsDBEdit;
    GroupBox5: TsGroupBox;
    Label15: TsLabel;
    Label16: TsLabel;
    Label17: TsLabel;
    Label18: TsLabel;
    Label19: TsLabel;
    Label20: TsLabel;
    Label21: TsLabel;
    DBEdit14: TRxDBCalcEdit;
    DBEdit15: TRxDBCalcEdit;
    DBEdit16: TRxDBCalcEdit;
    DBEdit18: TRzDBNumericEdit;
    DBEdit19: TRzDBNumericEdit;
    DBEdit20: TRzDBNumericEdit;
    suiDBCheckBox1: TsDBCheckBox;
    suiDBCheckBox2: TsDBCheckBox;
    DBEdit21: TsDBEdit;
    Label23: TsLabel;
    Label24: TsLabel;
    DBEdit22: TsDBEdit;
    Label25: TsLabel;
    Label26: TsLabel;
    DBEdit23: TsDBEdit;
    DBEdit1: TsDBEdit;
    DBEDIT13: TsDBMemo;
    DBEdit24: TsDBEdit;
    Label27: TsLabel;
    DBEdit25: TsDBEdit;
    Label28: TsLabel;
    DBEdit26: TsDBEdit;
    Label29: TsLabel;
    suiDBRadioGroup1: TsDBRadioGroup;
    Label7: TsLabel;
    DBEdit27: TsDBEdit;
    DBEdit28: TsDBEdit;
    DBEdit29: TsDBEdit;
    DBEdit30: TsDBEdit;
    Label30: TsLabel;
    Label31: TsLabel;
    Label32: TsLabel;
    DBEdit31: TsDBEdit;
    Label33: TsLabel;
    DBEdit32: TsDBEdit;
    Label34: TsLabel;
    DBEdit33: TsDBEdit;
    Label35: TsLabel;
    DBEdit34: TsDBEdit;
    Label36: TsLabel;
    Label37: TsLabel;
    Label38: TsLabel;
    OpenDialog1: TOpenPictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    ErroGravacao: TsuiMessageDialog;
    DBLookupComboBox1: TsDBLookupComboBox;
    DBLookupComboBox2: TsDBLookupComboBox;
    sLabel1: TsLabel;
    DBEdit17: TRxDBCalcEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    GroupBox6: TGroupBox;
    Label40: TLabel;
    sbtnGetCert: TSpeedButton;
    SpeedButton2: TSpeedButton;
    envia: TJvDBMaskEdit;
    recebe: TJvDBMaskEdit;
    Label42: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Label3: TsLabelFX;
    Label22: TLabel;
    Label43: TLabel;
    TIPOCOBRANCA: TJvDBComboBox;
    Label39: TLabel;
    DBComboBox1: TsDBComboBox;
    sDBComboBox1: TsDBComboBox;
    Label41: TLabel;
    sDBEdit1: TsDBEdit;
    Label44: TLabel;
    sDBEdit2: TsDBEdit;
    Label45: TLabel;
    Label46: TLabel;
    sDBEdit3: TsDBEdit;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    Panel3: TPanel;
    Label47: TLabel;
    sDBEdit4: TsDBEdit;
    Label48: TLabel;
    sDBEdit5: TsDBEdit;
    procedure AtualizaManutencao;
    procedure HabilitaNovo;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit20Enter(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit18Enter(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit19Enter(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBComboBox2Enter(Sender: TObject);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit22Enter(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit23Enter(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEDIT13Enter(Sender: TObject);
    procedure DBEDIT13Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormLyBancos: TFormLyBancos;


implementation

uses ModulodeDados, Z_RotinasGerais, Vcl.FileCtrl, principal, ConsLyBancos;

{$R *.dfm}

Procedure TFormlyBancos.AtualizaManutencao;
begin
DBNavigator.Enabled:= (dm.sds_lyBancos.State = dsBrowse);
BTNNOVO.Enabled:= (dm.sds_lyBancos.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dm.sds_lyBancos.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (dm.sds_lyBancos.State = dsBrowse);
BTNSALVAR.Enabled:= (dm.sds_lyBancos.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dm.sds_lyBancos.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (dm.sds_lyBancos.State = dsBrowse);
end;

procedure TFormlybancos.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;


procedure TFormLyBancos.FormShow(Sender: TObject);
begin
  inherited;
dm.sds_lyBancos.active := false;
dm.sds_lybancos.active := true;
DM.SDS_Bancos.Active := False;
DM.SDS_Bancos.Active := True;
DM.SDS_conta_bancaria.Active := False;
DM.SDS_conta_bancaria.Active := true;
NxPageControl1.enabled :=False;

AtualizaManutencao;
end;

procedure TFormLyBancos.btnNovoClick(Sender: TObject);
begin
  inherited;
If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Execute;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
        dm.ProxCod.SQL.Add('select max(codigo_boleto) as N_CODIGO FROM boleto');
        DM.ProxCod.Open;

        DM.SDS_Cli.Insert;
        DM.SDS_CliCODIGO.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;

   dm.sds_lyBancos.Insert;
   DBEDIT1.TEXT:=IntTostr(DM.ProxCodN_CODIGO.ASINTEGER + 1);
  // Label27.Caption:= dm.sds_lybancosCODIGO_BOLETO.TEXT;
   DM.sds_LyBancosCOD_EMPRESA.Text:= dm.SDS_EmpresaCodigo.text;
   dm.sds_lyBancosUSERCAD.Text:= FormPrincipal.UserLogado;
   dm.sds_lyBancosDATACAD.Text:= datetostr(now);
   AtualizaManutencao;
   Panel1.Enabled := True;
   DBLookupComboBox1.Color:= clWhite;
   DBEdit3.Color:= clWhite;
   DBLookupComboBox2.Color:= clWhite;
   DBEdit5.Color:= clWhite;
   DBEdit6.Color:= clWhite;
   DBEdit7.Color:= clWhite;
   DBEdit8.Color:= clWhite;
   DBEdit9.Color:= clWhite;
   DBEdit10.Color:= clWhite;
   DBEdit11.Color:= clWhite;
   DBEdit12.Color:= clWhite;
   DBEdit13.Color:= clWhite;
   DBEdit14.Color:= clWhite;
   DBEdit15.Color:= clWhite;
   DBEdit16.Color:= clWhite;
   DBEdit17.Color:= clWhite;
   DBEdit18.Color:= clWhite;
   DBEdit19.Color:= clWhite;
   DBEdit20.Color:= clWhite;
   DBEdit21.Color:= clWhite;
   DBEdit22.Color:= clWhite;
   DBEdit23.Color:= clWhite;
   DBEdit24.Color:= clWhite;
   DBEdit25.Color:= clWhite;
   DBEdit26.Color:= clWhite;
   DBEdit27.Color:= clWhite;
   DBEdit28.Color:= clWhite;
   DBEdit29.Color:= clWhite;
   DBEdit30.Color:= clWhite;
   DBEdit31.Color:= clWhite;
   DBEdit32.Color:= clWhite;
   DBEdit33.Color:= clWhite;
   DBEdit34.Color:= clWhite;
   DBcombobox1.Color:= clWhite;
  // DBcombobox2.Color:= clWhite;

   NxPageControl1.enabled :=true;
   DBLookupComboBox1.SetFocus;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
end;

procedure TFormLyBancos.btnEditarClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Execute;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
   dm.sds_lyBancos.Edit;
   AtualizaManutencao;
   Panel1.Enabled := True;
   DBLookupComboBox1.Color:= clWhite;
   DBEdit3.Color:= clWhite;
   DBLookupComboBox2.Color:= clWhite;
   DBEdit5.Color:= clWhite;
   DBEdit6.Color:= clWhite;
   DBEdit7.Color:= clWhite;
   DBEdit8.Color:= clWhite;
   DBEdit9.Color:= clWhite;
   DBEdit10.Color:= clWhite;
   DBEdit11.Color:= clWhite;
   DBEdit12.Color:= clWhite;
   DBEdit13.Color:= clWhite;
   DBEdit14.Color:= clWhite;
   DBEdit15.Color:= clWhite;
   DBEdit16.Color:= clWhite;
   DBEdit17.Color:= clWhite;
   DBEdit18.Color:= clWhite;
   DBEdit19.Color:= clWhite;
   DBEdit20.Color:= clWhite;
   DBEdit21.Color:= clWhite;
   DBEdit22.Color:= clWhite;
   DBEdit23.Color:= clWhite;
   DBEdit24.Color:= clWhite;
   DBEdit25.Color:= clWhite;
   DBEdit26.Color:= clWhite;
   DBEdit27.Color:= clWhite;
   DBEdit28.Color:= clWhite;
   DBEdit29.Color:= clWhite;
   DBEdit30.Color:= clWhite;
   DBEdit31.Color:= clWhite;
   DBEdit32.Color:= clWhite;
   DBEdit33.Color:= clWhite;
   DBEdit34.Color:= clWhite;
   DBcombobox1.Color:= clWhite;
  // DBcombobox2.Color:= clWhite;
   //  DBLookupComboBox1.SetFocus;
      NxPageControl1.enabled :=true;
   Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
   end;
end;

procedure TFormLyBancos.btnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     dm.sds_lyBancos.Cancel;
 if dm.sds_lyBancos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
   DBLookupComboBox1.Color:= $00E8E8E8;
   DBEdit3.Color:= $00E8E8E8;
   DBLookupComboBox2.Color:= $00E8E8E8;
   DBEdit5.Color:= $00E8E8E8;
   DBEdit6.Color:= $00E8E8E8;
   DBEdit7.Color:= $00E8E8E8;
   DBEdit8.Color:= $00E8E8E8;
   DBEdit9.Color:= $00E8E8E8;
   DBEdit10.Color:= $00E8E8E8;
   DBEdit11.Color:= $00E8E8E8;
   DBEdit12.Color:= $00E8E8E8;
   DBEdit13.Color:= $00E8E8E8;
   DBEdit14.Color:= $00E8E8E8;
   DBEdit15.Color:= $00E8E8E8;
   DBEdit16.Color:= $00E8E8E8;
   DBEdit17.Color:= $00E8E8E8;
   DBEdit18.Color:= $00E8E8E8;
   DBEdit19.Color:= $00E8E8E8;
   DBEdit20.Color:= $00E8E8E8;
   DBEdit21.Color:= $00E8E8E8;
   DBEdit22.Color:= $00E8E8E8;
   DBEdit23.Color:= $00E8E8E8;
   DBEdit24.Color:= $00E8E8E8;
   DBEdit25.Color:= $00E8E8E8;
   DBEdit26.Color:= $00E8E8E8;
   DBEdit27.Color:= $00E8E8E8;
   DBEdit28.Color:= $00E8E8E8;
   DBEdit29.Color:= $00E8E8E8;
   DBEdit30.Color:= $00E8E8E8;
   DBEdit31.Color:= $00E8E8E8;
   DBEdit32.Color:= $00E8E8E8;
   DBEdit33.Color:= $00E8E8E8;
   DBEdit34.Color:= $00E8E8E8;
   DBcombobox1.Color:= $00E8E8E8;
 //  DBcombobox2.Color:= $00E8E8E8;
   NxPageControl1.enabled :=false;
   Panel1.Enabled := false;
    Except
      MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;
end;


procedure TFormLyBancos.btnSalvarClick(Sender: TObject);
begin

// Try
   begin
   DM.SDS_lyBancos.Post;
   DM.SDS_lyBancos.ApplyUpdates(0);
   AtualizaManutencao;
   Panel1.Enabled := False;
   DBLookupComboBox1.Color:= $00E8E8E8;
   DBEdit3.Color:= $00E8E8E8;
   DBLookupComboBox2.Color:= $00E8E8E8;
   DBEdit5.Color:= $00E8E8E8;
   DBEdit6.Color:= $00E8E8E8;
   DBEdit7.Color:= $00E8E8E8;
   DBEdit8.Color:= $00E8E8E8;
   DBEdit9.Color:= $00E8E8E8;
   DBEdit10.Color:= $00E8E8E8;
   DBEdit11.Color:= $00E8E8E8;
   DBEdit12.Color:= $00E8E8E8;
   DBEdit13.Color:= $00E8E8E8;
   DBEdit14.Color:= $00E8E8E8;
   DBEdit15.Color:= $00E8E8E8;
   DBEdit16.Color:= $00E8E8E8;
   DBEdit17.Color:= $00E8E8E8;
   DBEdit18.Color:= $00E8E8E8;
   DBEdit19.Color:= $00E8E8E8;
   DBEdit20.Color:= $00E8E8E8;
   DBEdit21.Color:= $00E8E8E8;
   DBEdit22.Color:= $00E8E8E8;
   DBEdit23.Color:= $00E8E8E8;
   DBEdit24.Color:= $00E8E8E8;
   DBEdit25.Color:= $00E8E8E8;
   DBEdit26.Color:= $00E8E8E8;
   DBEdit27.Color:= $00E8E8E8;
   DBEdit28.Color:= $00E8E8E8;
   DBEdit29.Color:= $00E8E8E8;
   DBEdit30.Color:= $00E8E8E8;
   DBEdit31.Color:= $00E8E8E8;
   DBEdit32.Color:= $00E8E8E8;
   DBEdit33.Color:= $00E8E8E8;
   DBEdit34.Color:= $00E8E8E8;
   DBcombobox1.Color:= $00E8E8E8;
 //  DBcombobox2.Color:= $00E8E8E8;
  NxPageControl1.enabled :=false;
      end;
 {  Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.Execute;
   end;  }
end;
procedure TFormLyBancos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormLyBancos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if DM.SDS_lybancos.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.HTMLText.text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
     MsgInformacao.Execute;
   CanClose := False;
end;
end;

procedure TFormLyBancos.FormCreate(Sender: TObject);
var
I: TACBrTipoCobranca;
begin
  inherited;
   TIPOCOBRANCA.Items.Clear;
  TIPOCOBRANCA.Values.Clear;
  For I := Low(TACBrTipoCobranca) to High(TACBrTipoCobranca) do
  begin
    TIPOCOBRANCA.Items.Add(GetEnumName(TypeInfo(TACBrTipoCobranca),
      integer(I)));
    TIPOCOBRANCA.Values.Add(GetEnumName(TypeInfo(TACBrTipoCobranca),
      integer(I)));
  end;
end;

procedure TFormLyBancos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
FormlyBancos:=nil;
end;

procedure TFormLyBancos.btnExcluirClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if Application.MESSAGEBOX('Confirma a Exclusão?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then

begin

Try
 Begin
    DM.SDS_lyBancos.Delete;
    DM.SDS_lyBancos.ApplyUpdates(0);
 end;
 if DM.SDS_lyBancos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
            MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Execute;
end;
end;
end;
end;
procedure TFormLyBancos.btnLocalizarClick(Sender: TObject);
begin
  inherited;
Try
if FormConsLyBancos=nil   then
    begin
    FormConsLyBancos:=TFormConsLyBancos.Create(self);
      FormConsLyBancos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Consulta de Layout Bancarios!!');
end;
end;

procedure TFormLyBancos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
if (BtnLocalizar.Enabled = True)then
begin
   if (Key=VK_F2) then
      begin
      btnLocalizarClick(Sender);
      end;
      end;
end;

procedure TFormLyBancos.DBEdit2Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit2Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit3Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit3Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBComboBox1Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBComboBox1Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit4Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit4Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit5Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit5Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit6Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit6Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit7Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit7Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit8Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit8Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit9Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit9Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit10Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit10Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit11Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit11Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit12Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit12Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit14Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit14Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit15Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit15Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit16Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit16Exit(Sender: TObject);
begin
  inherited;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBEdit20Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBEdit20Exit(Sender: TObject);
begin
  inherited;
corsaida(sender);
end;

procedure TFormLyBancos.DBEdit17Enter(Sender: TObject);
begin
  inherited;
corentrada(sender);
end;

procedure TFormLyBancos.DBEdit17Exit(Sender: TObject);
begin
  inherited;
corsaida(sender);
end;

procedure TFormLyBancos.DBEdit18Enter(Sender: TObject);
begin
  inherited;
corentrada(sender);
end;

procedure TFormLyBancos.DBEdit18Exit(Sender: TObject);
begin
  inherited;
corsaida(sender);
end;

procedure TFormLyBancos.DBEdit19Enter(Sender: TObject);
begin
  inherited;
corentrada(sender);
end;

procedure TFormLyBancos.DBEdit19Exit(Sender: TObject);
begin
  inherited;
corsaida(sender);
end;

procedure TFormLyBancos.DBComboBox2Enter(Sender: TObject);
begin
  inherited;
corentrada(sender);
end;

procedure TFormLyBancos.DBComboBox2Exit(Sender: TObject);
begin
  inherited;
corsaida(sender);
end;

procedure TFormLyBancos.DBEdit21Enter(Sender: TObject);
begin
  inherited;
corentrada(sender);
end;

procedure TFormLyBancos.DBEdit21Exit(Sender: TObject);
begin
  inherited;
corsaida(sender);
end;

procedure TFormLyBancos.DBEdit22Enter(Sender: TObject);
begin
  inherited;
corentrada(sender);
end;

procedure TFormLyBancos.DBEdit22Exit(Sender: TObject);
begin
  inherited;
corsaida(sender);
end;

procedure TFormLyBancos.DBEdit23Enter(Sender: TObject);
begin
  inherited;
corentrada(sender);
end;

procedure TFormLyBancos.DBEdit23Exit(Sender: TObject);
begin
  inherited;
corsaida(sender);
end;

procedure TFormLyBancos.DBEDIT13Enter(Sender: TObject);
begin
  inherited;
corentrada(sender);
end;

procedure TFormLyBancos.DBEDIT13Exit(Sender: TObject);
begin
  inherited;
corsaida(sender);
end;

procedure TFormLyBancos.BitBtn6Click(Sender: TObject);
begin
 { inherited;
Try
 if OpenDialog1.Execute then
  begin
    DBImage1.Picture.LoadFromFile(OpenDialog1.Filename);
  end;
  Except
     ErroGravacao.ShowModal;
   end; }
end;

procedure TFormLyBancos.BitBtn2Click(Sender: TObject);
begin
  inherited;
DM.SDS_LybancosLOGO.Clear;
end;

procedure TFormLyBancos.DBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
DBEdit3.Text := DM.SDS_BancosNOME.Text;
CORSAIDA(SENDER);
end;

procedure TFormLyBancos.DBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
CORENTRADA(SENDER);
//DBLookupComboBox2.DropDown;
end;

procedure TFormLyBancos.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
//DBLookupComboBox1.DropDown;
CORENTRADA(SENDER);
end;

procedure TFormLyBancos.DBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  DBEdit24.Text := DM.SDS_Conta_BancariaCONTA.Text;
  DBEdit8.Text := DM.SDS_Conta_BancariaCONTA.Text;
  DBEdit25.Text := DM.strngfldSDS_Conta_BancariaDIGITO.Text;
  DBEdit9.Text := DM.strngfldSDS_Conta_BancariaDIGITO.Text;
  DBEdit6.Text := DM.SDS_Conta_BancariaAGENCIA.Text;
  CORSAIDA(SENDER);

end;

procedure TFormLyBancos.sbtnGetCertClick(Sender: TObject);
var
  Dir: String;
begin
      inherited;
  if SelectDirectory('Selecione um diretório', 'c:\', Dir) then
  begin
    if dm.Dts_lyBancos.DataSet.State in [dsBrowse] then
      dm.Dts_lyBancos.DataSet.Edit;

    DM.Dts_lyBancos.DataSet.FieldByName('DIRENVIA').AsString := Dir;
  end;

end;

procedure TFormLyBancos.SpeedButton2Click(Sender: TObject);
var
  Dir: String;
begin
  inherited;
  if SelectDirectory('Selecione um diretório', 'c:\', Dir) then
  begin
    if dm.Dts_lyBancos.DataSet.State in [dsBrowse] then
     DM.Dts_lyBancos.DataSet.Edit;

    dm.Dts_lyBancos.DataSet.FieldByName('DIRRECEBE').AsString := Dir;
  end;
end;


end.
