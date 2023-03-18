unit Fornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls, rxToolEdit, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls,Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  SUIRadioGroup,  MaskUtils, sGroupBox, sDBRadioGroup,
  sPanel, sDBNavigator, AdvGlowButton;


  type
  TFormFornecedores = class(TForm)
    Panel1: TPanel;
    DBNavigator: TsDBNavigator;
    pnldados: TPanel;
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    DBText3: TDBText;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel17: TRxLabel;
    RxLabel22: TRxLabel;
    dbt_codigo: TDBEdit;
    RxLabel11: TRxLabel;
    GroupBox1: TGroupBox;
    RxLabel16: TRxLabel;
    RxLabel18: TRxLabel;
    RxLabel19: TRxLabel;
    RxLabel20: TRxLabel;
    DBMemo1: TDBMemo;
    RxLabel21: TRxLabel;
    DBMemo2: TDBMemo;
    suiDBEdit11: TDBEdit;
    suiDBEdit13: TDBEdit;
    suiDBEdit14: TDBEdit;
    suiDBEdit15: TDBEdit;
    db_nome: TDBEdit;
    suiDBEdit3: TDBEdit;
    suiDBEdit2: TDBEdit;
    suiDBEdit4: TDBEdit;
    suiDBEdit6: TDBEdit;
    suiDBEdit7: TDBEdit;
    suiDBEdit8: TDBEdit;
    suiDBEdit9: TDBEdit;
    suiDBEdit10: TDBEdit;
    suiDBEdit12: TDBEdit;
    suiDBEdit1: TDBEdit;
    suiDBComboBox5: TDBComboBox;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    RxLabel2: TRxLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    RxLabel13: TRxLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    RxLabel24: TRxLabel;
    RxLabel25: TRxLabel;
    DBEdit2: TDBEdit;
    RxLabel26: TRxLabel;
    DBEdit3: TDBEdit;
    RxLabel27: TRxLabel;
    DBEdit4: TDBEdit;
    DBComboBox2: TsDBRadioGroup;
    RxLabel23: TRxLabel;
    DBEdit5: TDBEdit;
    RxLabel28: TRxLabel;
    DBEdit6: TDBEdit;
    btnNovo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnexcluir: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnLocalizar: TAdvGlowButton;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure db_nomeEnter(Sender: TObject);
    procedure db_nomeExit(Sender: TObject);
    procedure suiDBEdit2Enter(Sender: TObject);
    procedure suiDBEdit2Exit(Sender: TObject);
    procedure suiDBEdit3Enter(Sender: TObject);
    procedure suiDBEdit3Exit(Sender: TObject);
    procedure suiDBComboBox1Enter(Sender: TObject);
    procedure suiDBComboBox1Exit(Sender: TObject);
    procedure suiDBComboBox2Enter(Sender: TObject);
    procedure suiDBComboBox2Exit(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure suiDBComboBox3Enter(Sender: TObject);
    procedure suiDBComboBox3Exit(Sender: TObject);
    procedure suiDBEdit4Exit(Sender: TObject);
    procedure suiDBEdit4Enter(Sender: TObject);
    procedure suiDBEdit5Enter(Sender: TObject);
    procedure suiDBEdit5Exit(Sender: TObject);
    procedure suiDBEdit6Enter(Sender: TObject);
    procedure suiDBEdit6Exit(Sender: TObject);
    procedure suiDBEdit7Exit(Sender: TObject);
    procedure suiDBEdit7Enter(Sender: TObject);
    procedure suiDBEdit8Enter(Sender: TObject);
    procedure suiDBEdit8Exit(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure suiDBEdit9Enter(Sender: TObject);
    procedure suiDBEdit9Exit(Sender: TObject);
    procedure suiDBEdit10Enter(Sender: TObject);
    procedure suiDBEdit10Exit(Sender: TObject);
    procedure suiDBEdit11Enter(Sender: TObject);
    procedure suiDBEdit11Exit(Sender: TObject);
    procedure suiDBEdit12Enter(Sender: TObject);
    procedure suiDBEdit12Exit(Sender: TObject);
    procedure suiDBMemo1Enter(Sender: TObject);
    procedure suiDBMemo1Exit(Sender: TObject);
    procedure PageControl1Exit(Sender: TObject);
    procedure DBImage1Enter(Sender: TObject);
    procedure DBImage1Exit(Sender: TObject);
    procedure suiDBEdit14Enter(Sender: TObject);
    procedure suiDBEdit14Exit(Sender: TObject);
    procedure suiDBEdit15Enter(Sender: TObject);
    procedure suiDBEdit15Exit(Sender: TObject);
    procedure suiDBEdit13Enter(Sender: TObject);
    procedure suiDBEdit13Exit(Sender: TObject);
    procedure suiDBEdit16Enter(Sender: TObject);
    procedure suiDBEdit16Exit(Sender: TObject);
    procedure DBDateEdit2Enter(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure suiDBEdit25Enter(Sender: TObject);
    procedure suiDBEdit25Exit(Sender: TObject);
    procedure suiDBEdit26Enter(Sender: TObject);
    procedure suiDBEdit26Exit(Sender: TObject);
    procedure suiDBEdit17Enter(Sender: TObject);
    procedure suiDBEdit17Exit(Sender: TObject);
    procedure suiDBEdit18Enter(Sender: TObject);
    procedure suiDBEdit18Exit(Sender: TObject);
    procedure suiDBEdit19Enter(Sender: TObject);
    procedure suiDBEdit19Exit(Sender: TObject);
    procedure suiDBEdit20Enter(Sender: TObject);
    procedure suiDBEdit20Exit(Sender: TObject);
    procedure suiDBEdit30Enter(Sender: TObject);
    procedure suiDBEdit30Exit(Sender: TObject);
    procedure suiDBMemo3Enter(Sender: TObject);
    procedure suiDBMemo3Exit(Sender: TObject);
    procedure suiDBLookupComboBox1Enter(Sender: TObject);
    procedure suiDBLookupComboBox1Exit(Sender: TObject);
    procedure suiDBLookupComboBox2Enter(Sender: TObject);
    procedure suiDBLookupComboBox2Exit(Sender: TObject);
    procedure suiDBMemo2Enter(Sender: TObject);
    procedure suiDBMemo2Exit(Sender: TObject);
    procedure suiDBEdit23Enter(Sender: TObject);
    procedure suiDBEdit23Exit(Sender: TObject);
    procedure suiDBEdit24Enter(Sender: TObject);
    procedure suiDBEdit24Exit(Sender: TObject);
    procedure suiDBEdit27Enter(Sender: TObject);
    procedure suiDBEdit27Exit(Sender: TObject);
    procedure suiDBEdit28Enter(Sender: TObject);
    procedure suiDBEdit28Exit(Sender: TObject);
    procedure suiDBLookupComboBox3Enter(Sender: TObject);
    procedure suiDBLookupComboBox3Exit(Sender: TObject);
    procedure suiDBEdit29Enter(Sender: TObject);
    procedure suiDBEdit29Exit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure suiDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBEdit1Exit(Sender: TObject);
    procedure suiDBEdit1Enter(Sender: TObject);
    procedure suiDBComboBox5Enter(Sender: TObject);
    procedure suiDBComboBox5Exit(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DesabilitaFisico;
    procedure HabilitaFisico;
    procedure DBComboBox2Exit(Sender: TObject);
    procedure DBComboBox2Enter(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormFornecedores: TFormFornecedores;


implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso,
  xloc_fornecedor, Ubibli1;



{$R *.dfm}

const
 strErrorCNPJ='Este não é um número de CNPJ válido.';

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

procedure TFormFornecedores.DesabilitaFisico;
begin
RxLabel4.Caption:= 'Razão Social:';
RxLabel5.Caption:= 'CNPJ:';
RxLabel6.Caption:= 'I.E.:';
DM.SDS_FornecedoresCNPJ.EditMask:= '99.999.999/9999-99;1;_';
DBComboBox1.Enabled := False;
DBEdit1.Enabled := False;
//DBLookupComboBox1.Enabled := False;
end;

procedure TFormFornecedores.HabilitaFisico;
begin
RxLabel4.Caption:= 'Nome:';
RxLabel5.Caption:= 'CPF:';
RxLabel6.Caption:= 'R.G.:';
DM.SDS_FornecedoresCNPJ.EditMask:= '999.999.999-99;1;_';
dbedit1.Enabled := true;
DBComboBox1.Enabled := true;
DBLookupComboBox1.Enabled := true;
end;



Procedure TFormFornecedores.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Fornecedores.State = dsBrowse);
BTNNOVO.Enabled:= (DM.SDS_Fornecedores.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Fornecedores.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Fornecedores.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Fornecedores.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Fornecedores.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Fornecedores.State = dsBrowse);
//Excluir1.Enabled:=(DM.SDS_Fornecedores.State = dsBrowse)
end;


procedure TFormFornecedores.HabilitaPanel;
begin
pnldados.Enabled:= True;
end;

procedure TFormFornecedores.DesabilitaPanel;
begin
pnldados.Enabled:= False;

end;

procedure TFormFornecedores.HabilitaNovo;
begin
//Novo1.Enabled:=True;
//Editar1.Enabled:=False;
//Excluir1.Enabled:=False;
//Localizar1.Enabled:=False;
//Salvar1.Enabled:= False;
//Cancelar1.Enabled:=False;
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormFornecedores.db_nomeEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormFornecedores.db_nomeExit(Sender: TObject);
begin
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
     if DBComboBox2.ItemIndex = 0 then
BEGIN
//suiDBEdit2.Text := FormatMaskText('999.999.999-99;1;_',suiDBEdit2.Text);
DM.SDS_FornecedoresCNPJ.EditMask:= '999.999.999-99;1;_';
end;
if DBComboBox2.ItemIndex = 1 then
BEGIN
DM.SDS_FornecedoresCNPJ.EditMask:= '99.999.999/9999-99;1;_';
end;
end;

procedure TFormFornecedores.suiDBEdit2Exit(Sender: TObject);
begin
     CorSaida(Sender);
if DBComboBox2.ItemIndex = 0 then
BEGIN
//suiDBEdit2.Text := FormatMaskText('999.999.999-99;1;_',suiDBEdit2.Text);
DM.SDS_FornecedoresCNPJ.EditMask:= '999.999.999-99;1;_';
end;
if DBComboBox2.ItemIndex = 1 then
BEGIN
//suiDBEdit2.Text := FormatMaskText('99.999.999/9999-99;1;_',suiDBEdit2.Text);
DM.SDS_FornecedoresCNPJ.EditMask:= '99.999.999/9999-99;1;_';
end;
end;

procedure TFormFornecedores.suiDBEdit3Enter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBComboBox2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBComboBox2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.DBDateEdit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.DBDateEdit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBComboBox3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBComboBox3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit4Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit4Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit5Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit5Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit6Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit6Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit7Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit7Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit8Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit8Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
if DM.Sds_cidades.locate('nome',suiDBEdit8.Text,[loCaseInsensitive]) = True then;
begin
DM.SDS_Fornecedorescodigo_ibge.text := DM.Sds_cidadesCOD_IBGE.Text;
DM.SDS_FornecedoresESTADO.Text := DM.Sds_cidadesUF.Text;
dm.SDS_FornecedoresCEP.Text := DM.Sds_cidadesCEP.Text;
end;
end;

procedure TFormFornecedores.DBComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.DBComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
     if DBComboBox1.Text = 'S' then
     begin
       DBEdit1.Enabled := True;
       DBEdit2.Enabled := True;
     end;
end;

procedure TFormFornecedores.suiDBEdit9Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit9Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit10Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit10Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit11Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit11Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit12Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit12Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBMemo1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBMemo1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.PageControl1Exit(Sender: TObject);
begin
Corsaida(Sender)
end;

procedure TFormFornecedores.DBImage1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.DBImage1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit14Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit14Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit15Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit15Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit13Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit13Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit16Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit16Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.DBDateEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.DBDateEdit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit25Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit25Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit26Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit26Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit17Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit17Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit18Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit18Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit19Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit19Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit20Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit20Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit30Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit30Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBMemo3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBMemo3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBMemo2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBMemo2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit23Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit23Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit24Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit24Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit27Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit27Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit28Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit28Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBLookupComboBox3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit29Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBEdit29Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.btnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   //DM.SPC_Fornecedores.ExecProc;
   //Cod:= (DM.SPC_Fornecedores.ParamByName('ATUAL').AsInteger);
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM FORNECEDORES');
   DM.ProxCod.Open;

   DM.SDS_Fornecedores.Insert;
   DM.SDS_FornecedoresCODIGO.AsInteger :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
   DM.SDS_FornecedoresUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_FornecedoresDATACADASTRO.Text:= datetostr(now);
   DM.SDS_FornecedoresCod_empresa.text := DM.SDS_EmpresaCODIGO.Text;
   dm.SDS_FornecedoresTP.Text := 'J';
   HabilitaPanel;
   AtualizaManutencao;
   db_nome.Color:= ClWhite;
   suiDBEdit2.Color:= ClWhite;
   suiDBEdit3.Color:= ClWhite;
   suiDBEdit4.Color:= ClWhite;
   suiDBEdit6.Color:= ClWhite;
   suiDBEdit7.Color:= ClWhite;
   suiDBEdit8.Color:= ClWhite;
   suiDBComboBox5.Color:= ClWhite;
   suiDBEdit9.Color:= ClWhite;
   suiDBEdit10.Color:= ClWhite;
   suiDBEdit12.Color:= ClWhite;
   suiDBEdit1.Color:= ClWhite;
   DBMemo2.Color:= ClWhite;
   suiDBEdit11.Color:= ClWhite;
   suiDBEdit13.Color:= ClWhite;
   suiDBEdit14.Color:= ClWhite;
   suiDBEdit15.Color:= ClWhite;
   DBMemo1.Color:= ClWhite;
   DBComboBox1.Color := clWhite;
  // DBComboBox2.Color := clWhite;
   DBLookupComboBox1.Color := clWhite;
   DBEdit1.Color := clWhite; 
   DBEdit3.Color := clWhite;
   db_nome.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormFornecedores.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_Fornecedores.Edit;
     AtualizaManutencao;
     HabilitaPanel;
        db_nome.Color:= ClWhite;
   suiDBEdit2.Color:= ClWhite;
   suiDBEdit3.Color:= ClWhite;
   suiDBEdit4.Color:= ClWhite;
   suiDBEdit6.Color:= ClWhite;
   suiDBEdit7.Color:= ClWhite;
   suiDBEdit8.Color:= ClWhite;
   suiDBComboBox5.Color:= ClWhite;
   suiDBEdit9.Color:= ClWhite;
   suiDBEdit10.Color:= ClWhite;
   suiDBEdit12.Color:= ClWhite;
   suiDBEdit1.Color:= ClWhite;
   DBMemo2.Color:= ClWhite;
   suiDBEdit11.Color:= ClWhite;
   suiDBEdit13.Color:= ClWhite;
   suiDBEdit14.Color:= ClWhite;
   suiDBEdit15.Color:= ClWhite;
   DBComboBox1.Color := clWhite;
  // DBComboBox2.Color := clWhite;
   DBLookupComboBox1.Color := clWhite;
   DBEdit1.Color := clWhite;
   DBMemo1.Color:= ClWhite;
   DBEdit3.Color := clWhite;
     db_nome.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormFornecedores.btnSalvarClick(Sender: TObject);
begin
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);
 //Try
   begin
          

          DM.SDS_Fornecedores.Post;
          AtualizaManutencao;
          DesabilitaPanel;
                  db_nome.Color:= $00E8E8E8;
   suiDBEdit2.Color:= $00E8E8E8;
   suiDBEdit3.Color:= $00E8E8E8;
   suiDBEdit4.Color:= $00E8E8E8;
   suiDBEdit6.Color:= $00E8E8E8;
   suiDBEdit7.Color:= $00E8E8E8;
   suiDBEdit8.Color:= $00E8E8E8;
   suiDBComboBox5.Color:= $00E8E8E8;
   suiDBEdit9.Color:= $00E8E8E8;
   suiDBEdit10.Color:= $00E8E8E8;
   suiDBEdit12.Color:= $00E8E8E8;
   suiDBEdit1.Color:= $00E8E8E8;
   DBMemo2.Color:= $00E8E8E8;
   suiDBEdit11.Color:= $00E8E8E8;
   suiDBEdit13.Color:= $00E8E8E8;
   suiDBEdit14.Color:= $00E8E8E8;
   suiDBEdit15.Color:= $00E8E8E8;
   DBMemo1.Color:= $00E8E8E8;
   DBComboBox1.Color := $00E8E8E8;
   DBEdit1.Color := $00E8E8E8;
   //DBComboBox2.Color := $00E8E8E8;
   DBLookupComboBox1.Color := $00E8E8E8;
   DBEdit3.Color := $00E8E8E8;
  end;
 {  Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end; }

end;

procedure TFormFornecedores.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_Fornecedores.Cancel;
 if DM.SDS_Fornecedores.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
        db_nome.Color:= $00E8E8E8;
   suiDBEdit2.Color:= $00E8E8E8;
   suiDBEdit3.Color:= $00E8E8E8;
   suiDBEdit4.Color:= $00E8E8E8;
   suiDBEdit6.Color:= $00E8E8E8;
   suiDBEdit7.Color:= $00E8E8E8;
   suiDBEdit8.Color:= $00E8E8E8;
   suiDBComboBox5.Color:= $00E8E8E8;
   suiDBEdit9.Color:= $00E8E8E8;
   suiDBEdit10.Color:= $00E8E8E8;
   suiDBEdit12.Color:= $00E8E8E8;
   suiDBEdit1.Color:= $00E8E8E8;
   DBMemo2.Color:= $00E8E8E8;
   suiDBEdit11.Color:= $00E8E8E8;
   suiDBEdit13.Color:= $00E8E8E8;
   suiDBEdit14.Color:= $00E8E8E8;
   suiDBEdit15.Color:= $00E8E8E8;
   DBMemo1.Color:= $00E8E8E8;
    DBComboBox1.Color := $00E8E8E8;
   DBEdit1.Color := $00E8E8E8;
  // DBComboBox2.Color := $00E8E8E8;
   DBLookupComboBox1.Color := $00E8E8E8;
   DBEdit3.Color := $00E8E8E8;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormFornecedores.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.ShowModal = mryes then
begin
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);
Try
 Begin
    DM.SDS_Fornecedores.Delete;
  //  DM.SDS_Fornecedores.ApplyUpdates(0);
    //DM.SQLC.Commit(TD);
 end;
 if DM.SDS_Fornecedores.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
     // DM.SQLC.Rollback(TD);
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
END;

procedure TFormFornecedores.FormShow(Sender: TObject);
begin
dm.SDS_Fornecedores.Active := false;
dm.SDS_Fornecedores.SQL.Clear;
dm.SDS_Fornecedores.sql.add('select * from fornecedores order by NOME ASC');
dm.SDS_Fornecedores.Active := True;

DM.SDS_zonas.Open;
DM.SDS_Empresa.Open;
dm.Sds_cidades.Open;

DESABILITAPANEL;
IF DM.SDS_Fornecedores.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;

end;


procedure TFormFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormFornecedores:=nil;
end;

procedure TFormFornecedores.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Fornecedores.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;


procedure TFormFornecedores.suiDBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
 with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;
    if (tbIsCPForCNPJ(suiDBEdit2.Text))=False then
    begin
      MsgAtencao.Text:= 'Este não é um número de CPF/CNPJ válido!';
      MsgAtencao.ShowModal;
      suiDBEdit2.SetFocus;
      end
      else
      begin
      suiDBEdit3.SetFocus;
end;
end;
end;

procedure TFormFornecedores.btnLocalizarClick(Sender: TObject);
begin
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);
end;

procedure TFormFornecedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

      if (Key=VK_F3) then
      begin
       btnNovoClick(Sender);
      end;
      if (Key=VK_F4) then
      begin
       btnEditarClick(Sender);
      end;
     if (Key=VK_F5) then
      begin
       btnCancelarClick(Sender);
      end;
       if (Key=VK_F6) then
      begin
       btnExcluirClick(Sender);
      end;
      if (Key=VK_F10) then
      begin
       btnSalvarClick(Sender);
      end;

if (BtnLocalizar.Enabled = True)then
begin
   if (Key=VK_F7) then
      begin
      btnLocalizarClick(Sender);
      end;
      end;

end;

procedure TFormFornecedores.DBMemo1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.DBMemo1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormFornecedores.suiDBEdit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.suiDBEdit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBComboBox5Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormFornecedores.suiDBComboBox5Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormFornecedores.DBComboBox1Change(Sender: TObject);
begin
  if DBComboBox1.Text = 'S' then
     begin
       DBEdit1.Enabled := True;
       DBEdit2.Enabled := True;
     end;
end;

procedure TFormFornecedores.DBLookupComboBox1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormFornecedores.DBLookupComboBox1Exit(Sender: TObject);
begin
CorSaida(sender);
end;

procedure TFormFornecedores.DBComboBox2Exit(Sender: TObject);
begin
CorSaida(sender);
end;

procedure TFormFornecedores.DBComboBox2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormFornecedores.DBComboBox2Change(Sender: TObject);
begin
if DBComboBox2.ItemIndex = 0 then
begin
  habilitafisico;
    dbt_codigo.Text:=IntTostr(Cod);
   DM.SDS_FornecedoresUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_FornecedoresDATACADASTRO.Text:= datetostr(now);
   DM.SDS_FornecedoresCod_empresa.text := DM.SDS_EmpresaCODIGO.Text;
end else
  if DBComboBox2.ItemIndex = 1 then

begin
  DesabilitaFisico;
   dbt_codigo.Text:=IntTostr(Cod);
   DM.SDS_FornecedoresUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_FornecedoresDATACADASTRO.Text:= datetostr(now);
   DM.SDS_FornecedoresCod_empresa.text := DM.SDS_EmpresaCODIGO.Text;
end;
end;

end.
