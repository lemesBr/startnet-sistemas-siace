unit AberFechLMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TFlatPanelUnit, aDvGlowButton, Mask, DBCtrls,
  DB, RzEdit, RzDBEdit, RzDBBnEd, Menus, ComCtrls, RXDBCtrl, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RxToolEdit;

type
  TfrmLivroLMC = class(TForm)
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    pficha: TFlatPanel;
    Label14: TLabel;
    Bevel2: TBevel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label21: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    FDvGlowButton1: TAdvGlowButton;
    DBEdit5: TDBEdit;
    LRG: TLabel;
    DBEdit6: TDBEdit;
    Label27: TLabel;
    DBEdit7: TDBEdit;
    LCPF: TLabel;
    DBEdit8: TDBEdit;
    Label3: TLabel;
    DBEdit9: TDBEdit;
    Label4: TLabel;
    DBEdit10: TDBEdit;
    eproduto: TRzDBButtonEdit;
    Label5: TLabel;
    DBEdit11: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    gbTermo: TGroupBox;
    rdAbertura: TRadioButton;
    rdFechamento: TRadioButton;
    brelatorio: TAdvGlowButton;
    Label10: TLabel;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    DBEdit15: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    dbAbertura: TDBDateEdit;
    DBEdit13: TDBEdit;
    dsLivroLMC: TDataSource;
    DBEdit12: TDBEdit;
    qrCombustiveis: TFDQuery;
    DBAdvGlowButton2: TDBAdvGlowButton;
    qrCombustiveisCODIGO: TIntegerField;
    qrCombustiveisCODIGO_BARRAS: TStringField;
    qrCombustiveisDESCRICAO: TStringField;
    qrCombustiveisABREVIADO: TStringField;
    qrCombustiveisPRECO_CUSTO: TBCDField;
    qrCombustiveisMARGEM_LUCRO: TBCDField;
    qrCombustiveisCOMISSAO: TBCDField;
    qrCombustiveisUNIDADE: TIntegerField;
    qrCombustiveisFRETE: TBCDField;
    qrCombustiveisICMS: TBCDField;
    qrCombustiveisIPI_IRPJ: TBCDField;
    qrCombustiveisOUTROS_IMPOSTOS: TBCDField;
    qrCombustiveisDESCONTOS: TBCDField;
    qrCombustiveisCLASS_FISCAL: TStringField;
    qrCombustiveisSIT_TRIBUTARIA: TStringField;
    qrCombustiveisCUSTO_MEDIO: TBCDField;
    qrCombustiveisPRECO_VENDA: TBCDField;
    qrCombustiveisDESCONTO_MAXIMO: TBCDField;
    qrCombustiveisCODIGO_GRUPO: TIntegerField;
    qrCombustiveisCODIGO_SUBGRUPO: TIntegerField;
    qrCombustiveisCODIGO_MARCA: TIntegerField;
    qrCombustiveisNOME_GRUPO: TStringField;
    qrCombustiveisNOME_SUBGRUPO: TStringField;
    qrCombustiveisNOME_MARCA: TStringField;
    qrCombustiveisNOME_FORNECEDOR: TStringField;
    qrCombustiveisCODIGO_FORNECEDORES: TIntegerField;
    qrCombustiveisFOTO: TBlobField;
    qrCombustiveisESTOQUE_ATUAL: TBCDField;
    qrCombustiveisESTOQUE_VENDIDO: TBCDField;
    qrCombustiveisESTOQUE: TBCDField;
    qrCombustiveisVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    qrCombustiveisVALOR_ESTOQUE: TFMTBCDField;
    qrCombustiveisESTOQUE_MINIMO: TIntegerField;
    qrCombustiveisESTOQUE_MAXIMO: TIntegerField;
    qrCombustiveisDATACAD: TDateField;
    qrCombustiveisUSERCAD: TStringField;
    qrCombustiveisVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    qrCombustiveisULTIMACOMPRA: TDateField;
    qrCombustiveisVALOR_EST_CUSTO: TFMTBCDField;
    qrCombustiveisSECCAO: TIntegerField;
    qrCombustiveisCATEGORIA: TIntegerField;
    qrCombustiveisLOCALIZACAO: TStringField;
    qrCombustiveisAPLICACAO: TStringField;
    qrCombustiveisESP_COD_AUX: TStringField;
    qrCombustiveisGARANTIA: TIntegerField;
    qrCombustiveisBALANCA: TStringField;
    qrCombustiveisETIQUETA: TStringField;
    qrCombustiveisATIVO: TStringField;
    qrCombustiveisREFERENCIA: TStringField;
    qrCombustiveisCOD_EMPRESA: TIntegerField;
    qrCombustiveisDESC_UNIDADE: TStringField;
    qrCombustiveisPESOBRUTO: TBCDField;
    qrCombustiveisPESOLIQUIDO: TBCDField;
    qrCombustiveisFONETICO: TStringField;
    qrCombustiveisDATAULTALTERACAO: TDateField;
    qrCombustiveisCUSTOREPOSICAO: TBCDField;
    qrCombustiveisPRECO_ANT: TBCDField;
    qrCombustiveisPRECO_PROMOCAO: TBCDField;
    qrCombustiveisFLAG_PROMOCAO: TStringField;
    qrCombustiveisDT_INICIO_PROMO: TDateField;
    qrCombustiveisDT_FIM_PROMO: TDateField;
    qrCombustiveisCOD_LABORATORIO: TIntegerField;
    qrCombustiveisLABORATORIO: TStringField;
    qrCombustiveisPRINCIPIO_ATIVO: TStringField;
    qrCombustiveisMED_CONTROLADO: TStringField;
    qrCombustiveisQTD_FRACIONADA: TBCDField;
    qrCombustiveisQTD_CAIXA: TSmallintField;
    qrCombustiveisMED_GENERICO: TStringField;
    qrCombustiveisLOTE_MED: TStringField;
    qrCombustiveisVALIDADE: TDateField;
    qrCombustiveisCHEK_BOX: TStringField;
    qrCombustiveisPRECO_VENDA2: TBCDField;
    qrCombustiveisMARGEM_LUCRO2: TBCDField;
    qrCombustiveisVALIDADE_PRODUTO: TStringField;
    qrCombustiveisPROD_SERV: TStringField;
    qrCombustiveisUNIDADE_ENT: TIntegerField;
    qrCombustiveisDESC_UNID_ENT: TStringField;
    qrCombustiveisQUANT_SAIDA: TBCDField;
    qrCombustiveisQUANT_ENTRADA: TBCDField;
    qrCombustiveisESTOQUE_FRACAO: TBCDField;
    qrCombustiveisDATA_FABRICACAO: TDateField;
    qrCombustiveisFRACAO: TIntegerField;
    qrCombustiveisNCM_SH: TStringField;
    qrCombustiveisCOD_MS: TStringField;
    qrCombustiveisCONTOLAESTOQUE: TStringField;
    qrCombustiveisPRODUTOCOMPOSTO: TStringField;
    qrCombustiveisTIPO_ATIVIDADE: TStringField;
    qrCombustiveisCOD_PRODUTO_ESTOQUE: TIntegerField;
    qrCombustiveisCODIGO_LOCAL_ESTOQUE: TIntegerField;
    qrCombustiveisLISTA_ABC: TStringField;
    qrCombustiveisGRUPO_TRIBUTACAO: TIntegerField;
    qrCombustiveisCOMBUSTIVEL: TStringField;
    qrCombustiveisCOR: TIntegerField;
    qrCombustiveisENABLE_NUMSERIE: TIntegerField;
    qrCombustiveisID_PRODUTOS: TIntegerField;
    qrCombustiveisCOD_ANP: TStringField;
    qrCombustiveisCESTA: TStringField;
    qrCombustiveisML_QUANT_BEB: TBCDField;
    qrCombustiveisUND_TRIB: TStringField;
    qrCombustiveisCHASSI: TStringField;
    qrCombustiveisCOR_DESC: TStringField;
    qrCombustiveisN_MOTOR: TStringField;
    qrCombustiveisANO_FAB: TStringField;
    qrCombustiveisANO_MOD_FAB: TStringField;
    qrCombustiveisTIPO_VEIC: TStringField;
    qrCombustiveisN_SERIE: TStringField;
    qrCombustiveisCOD_MODELO: TStringField;
    qrCombustiveisESPECIE_VEICULO: TStringField;
    qrCombustiveisCOD_COR_DENATRAN: TStringField;
    qrCombustiveisTIPO_COMBUSTIVEL: TStringField;
    qrCombustiveisVEICULO: TStringField;
    qrCombustiveisUSA_RENTABILIDADE: TIntegerField;
    qrCombustiveisUSA_SERIAL: TIntegerField;
    qrCombustiveisUSA_GRADE: TIntegerField;
    qrCombustiveisPRODUTO_PROPRIEDADE: TIntegerField;
    qrCombustiveisMULTIP_FRACAO: TIntegerField;
    procedure bfecharClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure eprodutoButtonClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FDvGlowButton1Click(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLivroLMC: TfrmLivroLMC;
  xcodlmc: integer;
  xtermo : string;
  
implementation

uses xloc_combustivel, principal, TermoLMC,
  ModulodeDados, ConsCidades;

{$R *.dfm}

procedure TfrmLivroLMC.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLivroLMC.bincluirClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
//ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
Application.messagebox('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!!  ','Erro!',mb_ok+mb_iconerror);
End;
if FormPrincipal.Label3.Caption ='S'then
begin
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM LMC_ABERFECH');
   DM.ProxCod.Open;

  gbTermo.Enabled := False;
  dm.qrLivroLMC.insert;
  dm.qrLivroLMC.FieldByName('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
  pficha.Enabled := true;
  dm.SDS_Empresa.Open;

  dm.qrLivroLMC.FieldByName('filial').AsString    :=  DM.SDS_Empresa.FieldByName('razao_social').AsString;
  dm.qrLivroLMC.FieldByName('endereco').AsString  :=  DM.SDS_Empresa.FieldByName('endereco').AsString;
  dm.qrLivroLMC.FieldByName('bairro').AsString    :=  DM.SDS_Empresa.FieldByName('bairro').AsString;
  dm.qrLivroLMC.FieldByName('cep').AsString       :=  DM.SDS_Empresa.FieldByName('cep').AsString;
  dm.qrLivroLMC.FieldByName('cidade').AsString    :=  DM.SDS_Empresa.FieldByName('cidade').AsString;
  dm.qrLivroLMC.FieldByName('uf').AsString        :=  DM.SDS_Empresa.FieldByName('uf').AsString;
  dm.qrLivroLMC.FieldByName('ie').AsString        :=  DM.SDS_Empresa.FieldByName('ie').AsString;
  dm.qrLivroLMC.FieldByName('cnpj').AsString      :=  DM.SDS_Empresa.FieldByName('cnpj').AsString;
  dm.qrLivroLMC.FieldByName('im').AsString        :=  DM.SDS_Empresa.FieldByName('im').AsString;
  dm.qrLivroLMC.FieldByName('NUMERO').AsString    :=  DM.SDS_Empresa.FieldByName('NUMERO').AsString;
  dm.qrLivroLMC.FieldByName('COD_FILIAL').AsString    :=  DM.SDS_Empresa.FieldByName('CODIGO').AsString;

 // dm.qrFilial.Close;

  dbedit9.SetFocus;
  pgravar.Visible := true;
  PopupMenu := pop2;
end;
end;

procedure TfrmLivroLMC.balterarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
 Application.messagebox('O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! ','Erro!',mb_ok+mb_iconerror);
End;
if FormPrincipal.Label2.Caption ='S'then
begin
  IF dbedit1.Text <> '' THEN
  BEGIN

    dm.qrLivroLMC.Edit;
//    pficha.Enabled := true;
    eproduto.SetFocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;
end;
end;


procedure TfrmLivroLMC.bexcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
 Application.messagebox('O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! ','Erro!',mb_ok+mb_iconerror);
End;
if FormPrincipal.Label1.Caption ='S'then
begin
 // if frmprincipal.autentica('Excluir registro',4) then
  begin
    dm.qrLivroLMC.Delete;
   // dm.Conexao.commit;
  end;

end;
end;

procedure TfrmLivroLMC.eprodutoButtonClick(Sender: TObject);
begin
  IF dm.qrLivroLMC.State <> DSINSERT THEN dm.qrLivroLMC.Edit;

  frmxloc_combustivel := tfrmxloc_combustivel.Create(self);
  frmxloc_combustivel.ShowModal;
  dm.qrLivroLMC.fieldbyname('cod_combustivel').asstring := frmxloc_combustivel.query.fieldbyname('codigo').asstring;
  dm.qrLivroLMC.fieldbyname('nome_combustivel').AsString := frmxloc_combustivel.query.fieldbyname('descricao').AsString;

end;

procedure TfrmLivroLMC.bgravarClick(Sender: TObject);
begin
   if eproduto.Text = '' then
   begin
     application.messagebox('Favor informar um produto válido para este registro!','Atenção',mb_ok+mb_iconerror);
     eproduto.setfocus;
     exit;
   end;


  if (dm.qrLivroLMC.State = dsinsert) or (dm.qrLivroLMC.State = dsedit) then
  begin
      dm.qrLivroLMC.post;
  end;

 // dm.Conexao.Commit;
  
 // pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  gbTermo.Enabled := True;

end;

procedure TfrmLivroLMC.FormShow(Sender: TObject);
begin
  xtermo := 'A';
  dbAbertura.Date := date;
  pgravar.visible := false;
  pgravar.Align := alClient;

  dm.qrLivroLMC.close;
  dm.qrLivroLMC.SQL.clear;
  dm.qrLivroLMC.SQL.add('select * from LMC_ABERFECH order by codigo');
  dm.qrLivroLMC.open;
//  dm.qrLivroLMC.first;
//  pficha.Enabled := false;
  bincluir.SetFocus;
  xcodlmc := dm.qrLivroLMC.Fieldbyname('codigo').AsInteger;
  

end;

procedure TfrmLivroLMC.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.eprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLivroLMC.DBEdit2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit5Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit6Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit7Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit8Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit9Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit10Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit11Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit12Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit13Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLivroLMC.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLivroLMC.DBEdit3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLivroLMC.DBEdit4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLivroLMC.DBEdit5Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLivroLMC.DBEdit6Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLivroLMC.DBEdit7Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLivroLMC.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLivroLMC.bcancelarClick(Sender: TObject);
begin
  if (dm.qrLivroLMC.State = dsinsert) or (dm.qrLivroLMC.State = dsedit) then
  begin
     {   if (dm.qrLivroLMC.State = dsinsert) then
        begin
          frmprincipal.qrmestre.close;
          frmprincipal.qrmestre.sql.clear;
          frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''LIVROL''');
          frmprincipal.qrmestre.ExecSQL;
        end;  }


      dm.qrLivroLMC.cancel;

  end;
//  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  gbTermo.Enabled := True;

end;

procedure TfrmLivroLMC.FDvGlowButton1Click(Sender: TObject);
begin
  parametro_pesquisa := '';
    FormConscidades:=TFormConscidades.Create(self);
      FormConscidades.ShowModal;

 { frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal; }

  dm.qrLivroLMC.FieldByName('CIDADE').AsString := DM.Sds_cidadesNOME.Text;
  dm.qrLivroLMC.FieldByName('UF').AsString := DM.Sds_cidadesUF.Value;
  DBEdit5.SetFocus;

end;

procedure TfrmLivroLMC.brelatorioClick(Sender: TObject);
begin
  if rdFechamento.Checked then
    xtermo := 'F';
  xcodlmc := StrToInt(DBEdit1.text);
  frmTermoLMC := TfrmTermoLMC.Create(self);
  //frmTermoLMC.ShowModal;      
  frmTermoLMC.QuickRep1.Preview;

end;

procedure TfrmLivroLMC.eprodutoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  qrCombustiveis.Close;
  qrCombustiveis.SQL.Clear;
  qrCombustiveis.SQL.Add('select * from produtos where codigo = :codigo');
  qrCombustiveis.Params.ParamByName('codigo').AsInteger := StrToInt(Trim(eproduto.Text));
  qrCombustiveis.Open;

  if qrCombustiveis.RecordCount = 0 then
  begin
       application.messagebox('Produto não encontrado! Verifique...!','Atenção',mb_ok+mb_iconerror);
       eproduto.SetFocus;
  end
  else
  begin

    dm.qrLivroLMC.FieldByName('cod_combustivel').AsInteger := qrCombustiveis.Fieldbyname('codigo').asinteger;
    dm.qrLivroLMC.FieldByName('nome_combustivel').Asstring := qrCombustiveis.Fieldbyname('descricao').AsString;
  end;
end;

procedure TfrmLivroLMC.DBEdit10Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLivroLMC.DBEdit12Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

end.
