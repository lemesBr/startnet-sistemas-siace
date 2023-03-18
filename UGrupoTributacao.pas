unit UGrupoTributacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, RXDBCtrl, SUIDBCtrls, SUIButton, ExtCtrls, StdCtrls,
  Mask, rxToolEdit, rxCurrEdit, DB, wwdblook, Wwdbdlg, aDvGroupBox,
  aDvOfficePager, RzEdit, RzDBEdit, AdvGlowButton;

type
  TFormTributacao = class(TForm)
    GroupBox1: TAdvGroupBox;
    GroupBox4: TAdvGroupBox;
    Panel3: TPanel;
    btnNovo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnExcluir: TAdvGlowButton;
    GroupBox2: TAdvGroupBox;
    RxDBComboEdit4: TRxDBComboEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Edit3: TEdit;
    Label2: TLabel;
    BTNLOCALIZAR: TAdvGlowButton;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    RxDBComboEdit7: TRxDBComboEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    DBCheckBox2: TDBCheckBox;
    EvDBNumEdit1: TRzDBNumericEdit;
    Label60: TLabel;
    Label3: TLabel;
    EvDBNumEdit2: TRzDBNumericEdit;
    GroupBox3: TAdvGroupBox;
    Label53: TLabel;
    Label54: TLabel;
    Edit18: TEdit;
    Edit19: TEdit;
    RxDBComboEdit2: TRxDBComboEdit;
    RxDBComboEdit3: TRxDBComboEdit;
    RxDBComboEdit9: TRxDBComboEdit;
    Label9: TLabel;
    Edit6: TEdit;
    DBCheckBox1: TDBCheckBox;
    Label55: TLabel;
    suiDBEdit10: TRzDBNumericEdit;
    DBCheckBox4: TDBCheckBox;
    Label11: TLabel;
    EvDBNumEdit4: TRzDBNumericEdit;
    Label12: TLabel;
    EvDBNumEdit5: TRzDBNumericEdit;
    DBCheckBox5: TDBCheckBox;
    Label13: TLabel;
    EvDBNumEdit6: TRzDBNumericEdit;
    Label14: TLabel;
    EvDBNumEdit7: TRzDBNumericEdit;
    Label15: TLabel;
    DBCheckBox7: TDBCheckBox;
    EvDBNumEdit8: TRzDBNumericEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Edit7: TEdit;
    Label10: TLabel;
    Edit9: TEdit;
    Label16: TLabel;
    Edit10: TEdit;
    Label17: TLabel;
    Edit11: TEdit;
    Label18: TLabel;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
    wwDBLookupComboDlg4: TwwDBLookupComboDlg;
    wwDBLookupComboDlg5: TwwDBLookupComboDlg;
    wwDBLookupComboDlg6: TwwDBLookupComboDlg;
    wwDBLookupComboDlg7: TwwDBLookupComboDlg;
    grupo2: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    EvDBNumEdit3: TRzDBNumericEdit;
    Edit12: TEdit;
    Label19: TLabel;
    wwDBLookupComboDlg8: TwwDBLookupComboDlg;
    wwDBLookupComboDlg9: TwwDBLookupComboDlg;
    Label20: TLabel;
    Edit13: TEdit;
    FDvOfficePager1: TAdvOfficePager;
    Compras: TAdvOfficePage;
    Vendas: TAdvOfficePage;
    g_cfop: TAdvGroupBox;
    Label51: TLabel;
    RxDBComboEdit1: TRxDBComboEdit;
    edit20: TEdit;
    Label21: TLabel;
    wwDBLookupComboDlg10: TwwDBLookupComboDlg;
    Edit14: TEdit;
    wwDBLookupComboDlg11: TwwDBLookupComboDlg;
    Label22: TLabel;
    Edit15: TEdit;
    Label34: TLabel;
    ComboEdit1: TwwDBLookupComboDlg;
    Edit2: TEdit;
    G_Compra_inter: TAdvGroupBox;
    G_pis_cofins: TAdvGroupBox;
    FDvGroupBox1: TAdvGroupBox;
    FDvGroupBox2: TAdvGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Edit16: TEdit;
    RxDBComboEdit5: TRxDBComboEdit;
    Edit17: TEdit;
    RxDBComboEdit6: TRxDBComboEdit;
    vendas_trib: TAdvOfficePage;
    G_devolucao: TAdvGroupBox;
    FDvGroupBox3: TAdvGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    RxDBComboEdit8: TRxDBComboEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    RxDBComboEdit10: TRxDBComboEdit;
    Label27: TLabel;
    EvDBNumEdit9: TRzDBNumericEdit;
    FDvGroupBox4: TAdvGroupBox;
    Label28: TLabel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    Label29: TLabel;
    RzDBNumericEdit2: TRzDBNumericEdit;
    Label30: TLabel;
    Label31: TLabel;
    RzDBNumericEdit3: TRzDBNumericEdit;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure dezabilitaNovo;
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTNLOCALIZARClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure RxDBComboEdit1Exit(Sender: TObject);
    procedure RxDBComboEdit4ButtonClick(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure wwDBLookupComboDlg1Exit(Sender: TObject);
    procedure wwDBLookupComboDlg2Exit(Sender: TObject);
    procedure wwDBLookupComboDlg3Exit(Sender: TObject);
    procedure wwDBLookupComboDlg4Exit(Sender: TObject);
    procedure wwDBLookupComboDlg5Exit(Sender: TObject);
    procedure wwDBLookupComboDlg6Exit(Sender: TObject);
    procedure wwDBLookupComboDlg7Exit(Sender: TObject);
    procedure RxDBComboEdit4Exit(Sender: TObject);
    procedure RxDBComboEdit7ButtonClick(Sender: TObject);
    procedure RxDBComboEdit7Exit(Sender: TObject);
    procedure RxDBComboEdit2Exit(Sender: TObject);
    procedure RxDBComboEdit2ButtonClick(Sender: TObject);
    procedure RxDBComboEdit3ButtonClick(Sender: TObject);
    procedure RxDBComboEdit3Exit(Sender: TObject);
    procedure RxDBComboEdit9ButtonClick(Sender: TObject);
    procedure RxDBComboEdit9Exit(Sender: TObject);
    procedure grupo2Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure wwDBLookupComboDlg8Exit(Sender: TObject);
    procedure wwDBLookupComboDlg9Exit(Sender: TObject);
    procedure wwDBLookupComboDlg10Exit(Sender: TObject);
    procedure wwDBLookupComboDlg11Exit(Sender: TObject);
    procedure RxDBComboEdit5ButtonClick(Sender: TObject);
    procedure RxDBComboEdit5Exit(Sender: TObject);
    procedure RxDBComboEdit6ButtonClick(Sender: TObject);
    procedure RxDBComboEdit6Exit(Sender: TObject);
    procedure RxDBComboEdit8ButtonClick(Sender: TObject);
    procedure RxDBComboEdit8Exit(Sender: TObject);
    procedure RxDBComboEdit10ButtonClick(Sender: TObject);
    procedure RxDBComboEdit10Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTributacao: TFormTributacao;

implementation

uses ModulodeDados, UConsGRP, Ubibli1, Principal, xloc_cfop;

{$R *.dfm}


Procedure TFormTributacao.AtualizaManutencao;
begin
//DBNavigator.Enabled:= (dm.Qry_Grupo_trib.State = dsBrowse);
BTNNOVO.Enabled:= (dm.sds_Grupo_trib.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dm.sds_Grupo_trib.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (dm.sds_Grupo_trib.State = dsBrowse);
BTNSALVAR.Enabled:= (dm.sds_Grupo_trib.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dm.sds_Grupo_trib.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (dm.sds_Grupo_trib.State = dsBrowse);
end;

procedure TFormTributacao.HabilitaPanel;
begin
GroupBox1.Enabled := True;
GroupBox2.Enabled := True;
GroupBox3.Enabled := True;
GroupBox4.Enabled := True;
Compras.Enabled := True;
Vendas.Enabled := True;
vendas_trib.Enabled := True;
end;

procedure TFormTributacao.DesabilitaPanel;
begin
GroupBox1.Enabled:= False;
GroupBox2.Enabled := false;
GroupBox3.Enabled := false;
GroupBox4.Enabled := false;
Compras.Enabled := false;
Vendas.Enabled := false;
vendas_trib.Enabled :=false;
end;

procedure TFormTributacao.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=true;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=True;
//BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormTributacao.dezabilitaNovo;
begin
BTNNOVO.Enabled:=false;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=True;
BTNSALVAR.Enabled:=True;
BTNEXCLUIR.Enabled:=FALSE;
//BTNLOCALIZAR.Enabled:= False;
end;
procedure TFormTributacao.btnNovoClick(Sender: TObject);
var
  cod : Integer;
begin
Try
   //Cod:= (DM.SPC_Bancos.ParamByName('ATUAL').AsInteger);
   dm.sds_Grupo_trib.Insert;
   //DBEdit1.Text:=IntTostr(Cod);
   dm.Sds_grupo_tribCOD_GRUPO.Text:= inttostr(prxcod('grupo_tributacao', 'cod_grupo', dm.IBTransaction, dm.QConsulta));
   HabilitaPanel;
   AtualizaManutencao;
  // dezabilitaNovo;
   dm.Sds_grupo_tribFLAG_SERVICO.Text := 'F';
   dm.Sds_grupo_tribFLAG_SUBSTITUICAO_TRIB.Text := 'F';
   dm.Sds_grupo_tribFLAG_FABRICACAO_PROPRIA.Text := 'F';
   dm.Sds_grupo_tribFLAG_PIS_COFINS.Text := 'F';
   dm.Sds_grupo_tribFLAG_ICMSGARANTIDO_INTEGRAL.Text := 'F';
   dm.Sds_grupo_tribFLAG_ICMS.Text := 'T';
   dm.Sds_grupo_tribPERC_RED_ICMS.Text := '0';
   dm.Sds_grupo_tribPERC_SUBST_TRIBUTARIA.Text := '0';
   dm.Sds_grupo_tribPERC_ALIQUOTA_ISS.Text := '0';
   dm.Sds_grupo_tribPERC_ALIQUOTA_PIS.Text := '0';
   dm.Sds_grupo_tribPERC_ALIQUOTA_IPI.Text := '0';
   dm.Sds_grupo_tribPERC_ALIQUOTA_COFINS.Text := '0';
   dm.Sds_grupo_tribPERC_ICMS_GARANTIDO_INTEGRAL.Text := '0';
   dm.Sds_grupo_tribPERC_ICMS_ESTADUAL.Text := '0';
   dm.Sds_grupo_tribPERC_ICMS_INTER_ESTADUAL.Text := '0';
   grupo2.SetFocus;
    Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;

procedure TFormTributacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormTributacao := nil;
end;

procedure TFormTributacao.FormShow(Sender: TObject);
begin

dm.sds_Grupo_trib.Close;
dm.sds_Grupo_trib.Open;

DM.qrcfop.Active := False;
DM.qrcfop.sql.Clear;
DM.qrcfop.sql.add('select * from TABELA_CFOP');
DM.qrcfop.Active := true;

DM.SDS_CST.Close;
DM.Sds_pis_cofins.Close;
DM.Sds_Cst_ipi.Close;
DM.SDS_CST.Open;
DM.Sds_pis_cofins.Open;
DM.Sds_Cst_ipi.Open;
end;

procedure TFormTributacao.BTNLOCALIZARClick(Sender: TObject);
begin
 try
if FormConsGrupoT=nil   then
    begin
    FormConsGrupoT:=TFormConsGrupoT.Create(self);
     FormConsGrupoT.ShowModal;
      end;
      except
     ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;

end;

procedure TFormTributacao.btnExcluirClick(Sender: TObject);
begin
if Application.MESSAGEBOX('Confirma a Exclusão do Registro?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 // Exit;
 begin
Try
 Begin
    dm.sds_Grupo_trib.Delete;
    dm.sds_Grupo_trib.ApplyUpdates(0);
 end;
 if  dm.sds_Grupo_trib.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
 Except
      ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');

end;
end;
end;

procedure TFormTributacao.btnSalvarClick(Sender: TObject);
begin
 Try
      begin
        dm.sds_Grupo_trib.Post;
        dm.sds_Grupo_trib.ApplyUpdates(0);
        AtualizaManutencao;
        DesabilitaPanel;
        HabilitaNovo;
        end;

   //raise Exception.CIDADE_JA_EXISTE('CIDADE JA CADASTRADA VERIFIQUE');
   Except
   {On E: Exception Do
    begin
      ShowMessage(E.Message); }
        on E: EDatabaseError do
                ShowMessage(E.Message);
end;
end;

procedure TFormTributacao.btnCancelarClick(Sender: TObject);
begin
 try
    dm.sds_Grupo_trib.Cancel;
 if dm.sds_Grupo_trib.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
    DesabilitaPanel;
    HabilitaNovo;
   Except
  ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;

procedure TFormTributacao.btnEditarClick(Sender: TObject);
begin
Try
     dm.sds_Grupo_trib.Edit;
     AtualizaManutencao;
     HabilitaPanel;
    // dezabilitaNovo;

   grupo2.SetFocus;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;

procedure TFormTributacao.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
{Try
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit20.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit1.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RxDBComboEdit1.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end;  }

  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit20.text := dm.qrcfopnatureza.text;
    RxDBComboEdit1.Text := dm.qrcfopCFOP.Text;
  end;
end;

procedure TFormTributacao.RxDBComboEdit1Exit(Sender: TObject);
begin
if RxDBComboEdit1.Text > '' then
begin
if dm.qrcfop.Locate('CFOP', RxDBComboEdit1.Text,[])=True then
 begin
   Edit20.Text := dm.qrcfopnatureza.Text;
   //RxDBComboEdit4.SetFocus;
 end else
 if not dm.qrcfop.Locate('CFOP', RxDBComboEdit1.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
   //RxDBComboEdit4.SetFocus;
 end;
end;
end;

procedure TFormTributacao.RxDBComboEdit4ButtonClick(Sender: TObject);
begin
{Try
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit1.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit4.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RxDBComboEdit4.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end; }
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit1.text := dm.qrcfopnatureza.text;
    RxDBComboEdit4.Text := dm.qrcfopCFOP.Text;
  end;
end;

procedure TFormTributacao.ComboEdit1Exit(Sender: TObject);
begin
 Edit2.Text := dm.qrcfopnatureza.Text;
end;

procedure TFormTributacao.wwDBLookupComboDlg1Exit(Sender: TObject);
begin
Edit3.Text := dm.qrcfopnatureza.Text;
end;

procedure TFormTributacao.wwDBLookupComboDlg2Exit(Sender: TObject);
begin
Edit7.Text := dm.qrcfopnatureza.Text;
end;

procedure TFormTributacao.wwDBLookupComboDlg3Exit(Sender: TObject);
begin
Edit9.Text := dm.qrcfopnatureza.Text;
end;

procedure TFormTributacao.wwDBLookupComboDlg4Exit(Sender: TObject);
begin
Edit12.Text := DM.Sds_pis_cofinsDESCRICAO.Text;
end;

procedure TFormTributacao.wwDBLookupComboDlg5Exit(Sender: TObject);
begin
Edit8.Text := DM.Sds_pis_cofinsDESCRICAO.Text;
end;

procedure TFormTributacao.wwDBLookupComboDlg6Exit(Sender: TObject);
begin
 Edit10.Text := DM.Sds_pis_cofinsDESCRICAO.Text;
end;

procedure TFormTributacao.wwDBLookupComboDlg7Exit(Sender: TObject);
begin
Edit11.Text := DM.Sds_pis_cofinsDESCRICAO.Text;
end;

procedure TFormTributacao.RxDBComboEdit4Exit(Sender: TObject);
begin
if RxDBComboEdit4.Text > '' then
begin
if DM.qrcfop.Locate('CFOP', RxDBComboEdit4.Text,[])=True then
 begin
   Edit1.Text := dm.qrcfopnatureza.Text;
   RxDBComboEdit6.SetFocus;
 end else
 if not DM.qrcfop.Locate('CFOP', RxDBComboEdit4.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
   RxDBComboEdit4.SetFocus;
 end;
end;

end;

procedure TFormTributacao.RxDBComboEdit7ButtonClick(Sender: TObject);
begin
{Try
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit4.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit7.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RxDBComboEdit7.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end;}
parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit4.text := dm.qrcfopnatureza.text;
    RxDBComboEdit7.Text := DM.qrcfopCFOP.Text;
  end;
end;

procedure TFormTributacao.RxDBComboEdit7Exit(Sender: TObject);
begin
if RxDBComboEdit7.Text > '' then
begin
if DM.qrcfop.Locate('CFOP', RxDBComboEdit7.Text,[])=True then
 begin
   Edit4.Text := dm.qrcfopnatureza.text;
  // RxDBComboEdit7.SetFocus;
 end else
 if not DM.qrcfop.Locate('CFOP', RxDBComboEdit7.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
  // RxDBComboEdit7.SetFocus;
 end;
end;
end;

procedure TFormTributacao.RxDBComboEdit2Exit(Sender: TObject);
begin
if RxDBComboEdit2.Text > '' then
begin
if DM.qrcfop.Locate('CFOP', RxDBComboEdit2.Text,[])=True then
 begin
   Edit19.Text := dm.qrcfopnatureza.text;
  // RxDBComboEdit2.SetFocus;
 end else
 if not DM.qrcfop.Locate('CODIGO_CFOP', RxDBComboEdit2.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
  // RxDBComboEdit2.SetFocus;
 end;
end;
end;

procedure TFormTributacao.RxDBComboEdit2ButtonClick(Sender: TObject);
begin
{ Try
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit19.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit2.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RxDBComboEdit2.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end;}
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit19.text := dm.qrcfopnatureza.text;
    RxDBComboEdit2.Text := DM.qrcfopCFOP.Text;
  end;
end;

procedure TFormTributacao.RxDBComboEdit3ButtonClick(Sender: TObject);
begin
{Try
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit18.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit3.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RxDBComboEdit3.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end; }

  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit18.text := dm.qrcfopnatureza.text;
    RxDBComboEdit3.Text := DM.qrcfopCFOP.Text;
  end;
end;

procedure TFormTributacao.RxDBComboEdit3Exit(Sender: TObject);
begin
if RxDBComboEdit3.Text > '' then
begin
if DM.qrcfop.Locate('CFOP', RxDBComboEdit3.Text,[])=True then
 begin
   Edit18.Text := dm.qrcfopnatureza.text;
   RxDBComboEdit5.SetFocus;
 end else
 if not DM.qrcfop.Locate('CFOP', RxDBComboEdit3.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
   RxDBComboEdit3.SetFocus;
 end;
end;
end;

procedure TFormTributacao.RxDBComboEdit9ButtonClick(Sender: TObject);
begin
 {Try
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit6.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit9.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RxDBComboEdit9.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end; }
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit6.text := dm.qrcfopnatureza.text;
    RxDBComboEdit9.Text := DM.qrcfopCFOP.Text;
  end;
end;

procedure TFormTributacao.RxDBComboEdit9Exit(Sender: TObject);
begin
if RxDBComboEdit9.Text > '' then
begin
if DM.qrCFOP.Locate('CFOP', RxDBComboEdit9.Text,[])=True then
 begin
   Edit6.Text := dm.qrcfopnatureza.text;
 //  RxDBComboEdit9.SetFocus;
 end else
 if not DM.qrCFOP.Locate('CFOP', RxDBComboEdit9.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
  // RxDBComboEdit9.SetFocus;
 end;
end;
end;

procedure TFormTributacao.grupo2Enter(Sender: TObject);
begin
DM.Sds_grupo_trib.Edit;
end;

procedure TFormTributacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormTributacao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.Sds_grupo_trib.State in [dsInsert, dsEdit, dsSetKey] then
  begin
   ShowMessage('Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!');
   CanClose := False;
  end;
end;

procedure TFormTributacao.wwDBLookupComboDlg8Exit(Sender: TObject);
begin
Edit12.Text := DM.Sds_Cst_ipiIPI_DESCRICAO.Text;
end;

procedure TFormTributacao.wwDBLookupComboDlg9Exit(Sender: TObject);
begin
Edit13.Text := DM.Sds_Cst_ipiIPI_DESCRICAO.Text;
end;

procedure TFormTributacao.wwDBLookupComboDlg10Exit(Sender: TObject);
begin
Edit14.text :=  DM.Sds_Cst_ipiIPI_DESCRICAO.Text;
end;

procedure TFormTributacao.wwDBLookupComboDlg11Exit(Sender: TObject);
begin
Edit15.Text := DM.Sds_pis_cofinsDESCRICAO.Text;
end;

procedure TFormTributacao.RxDBComboEdit5ButtonClick(Sender: TObject);
begin
{Try
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit16.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit5.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RxDBComboEdit6.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end;}

  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit16.text := dm.qrcfopnatureza.text;
    RxDBComboEdit5.Text := DM.qrcfopCFOP.Text;
  end;
end;

procedure TFormTributacao.RxDBComboEdit5Exit(Sender: TObject);
begin
if RxDBComboEdit5.Text > '' then
begin
if DM.qrcfop.Locate('CFOP', RxDBComboEdit5.Text,[])=True then
 begin
   Edit16.Text := dm.qrcfopnatureza.text;
   RxDBComboEdit7.SetFocus;
 end else
 if not DM.qrcfop.Locate('CFOP', RxDBComboEdit5.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
  // RxDBComboEdit4.SetFocus;
 end;
end;
end;

procedure TFormTributacao.RxDBComboEdit6ButtonClick(Sender: TObject);
begin
 { TRY
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit17.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit6.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RxDBComboEdit7.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end; }
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit17.text := dm.qrcfopnatureza.text;
    RxDBComboEdit6.Text := DM.qrcfopCFOP.Text;
  end;
end;

procedure TFormTributacao.RxDBComboEdit6Exit(Sender: TObject);
begin
if RxDBComboEdit6.Text > '' then
begin
if DM.qrCFOP.Locate('CFOP', RxDBComboEdit6.Text,[])=True then
 begin
   Edit17.Text := DM.qrCFOPnatureza.Text;
   RxDBComboEdit7.SetFocus;
 end else
 if not DM.qrCFOP.Locate('CFOP', RxDBComboEdit6.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
   RxDBComboEdit6.SetFocus;
 end;
end;
end;

procedure TFormTributacao.RxDBComboEdit8ButtonClick(Sender: TObject);
begin
{Try
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit21.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit8.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RxDBComboEdit10.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end;}
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit21.text := dm.qrcfopnatureza.text;
    RxDBComboEdit8.Text := DM.qrcfopCFOP.Text;
  end;

end;

procedure TFormTributacao.RxDBComboEdit8Exit(Sender: TObject);
begin
if RxDBComboEdit8.Text > '' then
begin
if DM.qrCFOP.Locate('CFOP', RxDBComboEdit8.Text,[])=True then
 begin
   Edit21.Text := DM.qrCFOPnatureza.Text;
   RxDBComboEdit10.SetFocus;
 end else
 if not DM.qrCFOP.Locate('CFOP', RxDBComboEdit8.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
  // RxDBComboEdit7.SetFocus;
 end;
end;
end;

procedure TFormTributacao.RxDBComboEdit10ButtonClick(Sender: TObject);
begin
 {Try
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit22.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit10.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RxDBComboEdit10.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end; }
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit22.text := dm.qrcfopnatureza.text;
    RxDBComboEdit10.Text := DM.qrcfopCFOP.Text;
  end;
end;

procedure TFormTributacao.RxDBComboEdit10Exit(Sender: TObject);
begin
if RxDBComboEdit10.Text > '' then
begin
if DM.qrCFOP.Locate('CFOP', RxDBComboEdit10.Text,[])=True then
 begin
   Edit21.Text := dm.qrcfopnatureza.text;
   RxDBComboEdit4.SetFocus;
 end else
 if not DM.qrCFOP.Locate('CFOP', RxDBComboEdit10.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
  // RxDBComboEdit7.SetFocus;
 end;
end;
end;

procedure TFormTributacao.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
