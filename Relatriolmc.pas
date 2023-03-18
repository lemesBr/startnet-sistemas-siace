unit Relatriolmc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, TFlatPanelUnit,
  Buttons, DB, frxClass, DateUtils,
  frxDBSet, frxDesgn, Menus,  Grids, DBGrids, aDvGlowButton,
  RzButton,  IBCustomDataSet, IBQuery, IBTable, DBClient,
  SimpleDS, Data.DBXFirebird, RxToolEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormrelatLmc = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    LPRODUTO: TLabel;
    combo_produto: TComboBox;
    Label9: TLabel;
    DateEdit2: TDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    Bevel2: TBevel;
    fxLMC: TfrxReport;
    frxDesigner1: TfrxDesigner;
    Frxdbtanque: TfrxDBDataset;
    FrxDBMaster: TfrxDBDataset;
    frxDbEmpresa: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Bevel3: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    QryMaster: TFDQuery;
    Dts_Master: TDataSource;
    QryTanque: TSimpleDataSet;
    QryTanqueCOD_TANQUE: TIntegerField;
    QryTanqueID_TANQUE: TIntegerField;
    QryTanqueLITROS: TFMTBCDField;
    QryTanqueULTATUAL: TSQLTimeStampField;
    QryTanqueULTATUALCODSETOR: TIntegerField;
    QryTanqueULTATUALCODSETORUSER: TIntegerField;
    QryTanqueDATAHORA: TSQLTimeStampField;
    QryTanqueENABLED: TIntegerField;
    QryTanqueOBS: TStringField;
    QryTanqueCOD_PRODUTOS: TIntegerField;
    QryTanqueLITROS_ATUAL: TFMTBCDField;
    QryTanqueVLR_SAI: TFMTBCDField;
    QryTanqueVLR_ENT: TFMTBCDField;
    QryTanqueEST_INI: TFMTBCDField;
    QryTanqueEST_ATU: TFMTBCDField;
    QryTanqueDAT_ULT_ENT: TDateField;
    QryTanqueNUM_NF: TIntegerField;
    QryTanqueDAT_ULT_SAI: TDateField;
    QryTanqueDESCRICAO: TStringField;
    QryTanqueDESC_UNIDADE: TStringField;
    DateEdit1: TDateEdit;
    Qry_abert: TFDQuery;
    DataSource1: TDataSource;
    QryMasterCODIGO: TIntegerField;
    QryMasterTANQUE: TIntegerField;
    QryMasterBOMBA: TIntegerField;
    QryMasterBICO: TStringField;
    QryMasterABERTURA: TIntegerField;
    QryMasterENCERRANTE: TIntegerField;
    QryMasterCOMBUSTIVEL: TIntegerField;
    QryMasterDATA: TDateField;
    QryMasterPRECO: TFMTBCDField;
    QryMasterQUANTIDADE: TFMTBCDField;
    QryMasterTOTAL: TFMTBCDField;
    QryMasterSITUACAO: TIntegerField;
    QryMasterNR_NOTA: TIntegerField;
    QryMasterNOTAFISCAL1: TStringField;
    QryMasterNOTAFISCAL2: TStringField;
    QryMasterNOTAFISCAL3: TStringField;
    QryMasterNOTAFISCAL4: TStringField;
    QryMasterQUANTNF1: TIntegerField;
    QryMasterQUANTNF2: TIntegerField;
    QryMasterQUANTNF3: TIntegerField;
    QryMasterQUANTNF4: TIntegerField;
    QryMasterBICO1: TIntegerField;
    QryMasterBICO2: TIntegerField;
    QryMasterBICO3: TIntegerField;
    QryMasterBICO4: TIntegerField;
    QryMasterBICO5: TIntegerField;
    QryMasterBICO6: TIntegerField;
    QryMasterBICO7: TIntegerField;
    QryMasterBICO8: TIntegerField;
    QryMasterABER_BICO1: TIntegerField;
    QryMasterABER_BICO2: TIntegerField;
    QryMasterABER_BICO3: TIntegerField;
    QryMasterABER_BICO4: TIntegerField;
    QryMasterABER_BICO5: TIntegerField;
    QryMasterABER_BICO6: TIntegerField;
    QryMasterABER_BICO7: TIntegerField;
    QryMasterABER_BICO8: TIntegerField;
    QryMasterENC_BICO1: TIntegerField;
    QryMasterENC_BICO2: TIntegerField;
    QryMasterENC_BICO3: TIntegerField;
    QryMasterENC_BICO4: TIntegerField;
    QryMasterENC_BICO5: TIntegerField;
    QryMasterENC_BICO6: TIntegerField;
    QryMasterENC_BICO7: TIntegerField;
    QryMasterENC_BICO8: TIntegerField;
    QryMasterAFER_BICO1: TIntegerField;
    QryMasterAFER_BICO2: TIntegerField;
    QryMasterAFER_BICO3: TIntegerField;
    QryMasterAFER_BICO4: TIntegerField;
    QryMasterAFER_BICO5: TIntegerField;
    QryMasterAFER_BICO6: TIntegerField;
    QryMasterAFER_BICO7: TIntegerField;
    QryMasterAFER_BICO8: TIntegerField;
    QryMasterQTEVEND_1: TIntegerField;
    QryMasterQTEVEND_2: TIntegerField;
    QryMasterQTEVEND_3: TIntegerField;
    QryMasterQTEVEND_4: TIntegerField;
    QryMasterQTEVEND_5: TIntegerField;
    QryMasterQTEVEND_6: TIntegerField;
    QryMasterQTEVEND_7: TIntegerField;
    QryMasterQTEVEND_8: TIntegerField;
    QryMasterTOTALVEND_1: TFMTBCDField;
    QryMasterTOTALVEND_2: TFMTBCDField;
    QryMasterTOTALVEND_3: TFMTBCDField;
    QryMasterTOTALVEND_4: TFMTBCDField;
    QryMasterTOTALVEND_5: TFMTBCDField;
    QryMasterTOTALVEND_6: TFMTBCDField;
    QryMasterTOTALVEND_7: TFMTBCDField;
    QryMasterTOTALVEND_8: TFMTBCDField;
    QryMasterESTOQ_ABERTURA: TIntegerField;
    QryMasterESTOQ_ESCRITURAL: TIntegerField;
    QryMasterESTOQ_FECHAMENTO: TIntegerField;
    QryMasterPERDA_SOBRA: TIntegerField;
    QryMasterOBSERVACAO: TStringField;
    QryMasterPAGINA: TIntegerField;
    QryMasterID_BICO1: TStringField;
    QryMasterID_BICO2: TStringField;
    QryMasterID_BICO3: TStringField;
    QryMasterID_BICO4: TStringField;
    QryMasterID_BICO5: TStringField;
    QryMasterID_BICO6: TStringField;
    QryMasterID_BICO7: TStringField;
    QryMasterID_BICO8: TStringField;
    QryMasterVENDAS_DIA: TLargeintField;
    QryMasterRECEBIDO_DIA: TLargeintField;
    QryMasterDISPONIVEL_DIA: TLargeintField;
    QryMasterTOTALVENDAS_DIA: TFMTBCDField;
    QryMasterTOTALVENDAS_ACU: TFMTBCDField;
    Qry_abertCODIGO: TIntegerField;
    Qry_abertCOD_FILIAL: TStringField;
    Qry_abertFILIAL: TStringField;
    Qry_abertENDERECO: TStringField;
    Qry_abertBAIRRO: TStringField;
    Qry_abertCEP: TStringField;
    Qry_abertCIDADE: TStringField;
    Qry_abertUF: TStringField;
    Qry_abertIE: TStringField;
    Qry_abertCNPJ: TStringField;
    Qry_abertIM: TStringField;
    Qry_abertDISTRIBUIDORA: TStringField;
    Qry_abertCAPACIDADE: TIntegerField;
    Qry_abertCOD_COMBUSTIVEL: TIntegerField;
    Qry_abertNOME_COMBUSTIVEL: TStringField;
    Qry_abertNUMERO: TStringField;
    Qry_abertNUMERO_JUNTACOM: TStringField;
    Qry_abertDATA_ABERTURA: TDateField;
    Qry_abertNUMERO_ORDEM: TIntegerField;
    Qry_abertPAGINA_ATUAL: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_produtoChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormrelatLmc: TFormrelatLmc;

implementation

uses  ModulodeDados, ConsProdutos;

{$R *.dfm}

procedure TFormrelatLmc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFormrelatLmc.FormShow(Sender: TObject);
begin

 { QRPRODUTO.CLOSE;
  QRPRODUTO.SQL.CLEAR;
  QRPRODUTO.SQL.ADD('SELECT * FROM C000025');
  QRPRODUTO.OPEN; }

  combo_relatorio.ItemIndex := 0;
  combo_produto.itemindex := 0;

  dateedit1.Date := DATE;
  dateedit2.date := DATE;

end;

procedure TFormrelatLmc.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFormrelatLmc.combo_produtoChange(Sender: TObject);
begin
  IF combo_produto.Text = 'SELECIONAR' THEN
  BEGIN
    FormConsProdutos := tFormConsProdutos.create(self);
    FormConsProdutos.showmodal;

    RESULTADO_PESQUISA1 := DM.SDS_PRODUTOSCODIGO.TEXT;
    resultado_pesquisa2 := DM.SDS_PRODUTOSDESCRICAO.TEXT;

    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_produto.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_produto.ItemIndex := combo_produto.Items.Count - 1;
    END
    ELSE
      COMBO_produto.ItemIndex := 0;
  END;
end;

procedure TFormrelatLmc.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TFormrelatLmc.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure TFormrelatLmc.bimprimirClick(Sender: TObject);
var
PRODUTO, periodo,ordem: string;
begin

  DM.qrrelatorio.open;
  DM.qrrelatorio.edit;

  DM.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA8').ASSTRING := DateEdit1.Text;
  DM.QRRELATORIO.FIELDBYNAME('LINHA9').ASSTRING := DateEdit2.Text;
  if combo_produto.Text = ''  then
  begin
    ShowMessage('Selecione o Produto antes de emitir');
    Exit;
  end;

  if combo_produto.Text = 'TODOS'  then PRODUTO     := ''
  else
  begin
  PRODUTO := ' and CODPRODUTO = '''+copy(combo_PRODUTO.text,1,6)+''''; DM.qrrelatorio.fieldbyname('LINHA5').asstring := DM.qrrelatorio.fieldbyname('LINHA5').asstring+'PRODUTO: '+COMBO_PRODUTO.TEXT;
  end ;

  periodo := ' data >= :datai and data <= :dataf ';
  ordem := 'data, codigo';
  DM.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO: '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;

    if combo_produto.ItemIndex = 1 then
    begin
    QryMaster.close;
    QryMaster.SQL.Clear;
    QryMaster.SQL.Add('select * from lmc where data between :datai and :dataf and COMBUSTIVEL =:codpro order by data, COMBUSTIVEL');
    QryMaster.Params.ParamByName('DATAI').ASDATETIME := DATEEDIT1.DATE;
    QryMaster.Params.ParamByName('DATAF').ASDATETIME := DATEEDIT2.DATE;
    QryMaster.Params.ParamByName('CODPRO').AsString  := RESULTADO_PESQUISA1;
    QryMaster.open;
    QryMaster.FetchAll;
    end;

    if combo_produto.ItemIndex = 2 then
    begin
    QryMaster.close;
    QryMaster.SQL.Clear;
    QryMaster.SQL.Add('select * from lmc where data between :datai and :dataf and COMBUSTIVEL =:codpro order by data, COMBUSTIVEL');
    QryMaster.Params.ParamByName('DATAI').ASDATETIME := DATEEDIT1.DATE;
    QryMaster.Params.ParamByName('DATAF').ASDATETIME := DATEEDIT2.DATE;
   // QryMaster.Params.ParamByName('CODPRO').AsString  := RESULTADO_PESQUISA1;
    QryMaster.open;
    QryMaster.FetchAll;
    end;

    QryTanque.close;
    QryTanque.open;


    if combo_relatorio.ItemIndex = 0 then
    begin
     DM.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
     DM.qrrelatorio.fieldbyname('LINHA1').asstring := 'LIVRO MOV. DE COMBUSTÍVEIS (LMC)';
     fXlmc.LoadFromFile('\siace\rel\ImpressaoLMC.fr3');
     fXlmc.ShowReport;
    end;
   { if combo_relatorio.ItemIndex = 1 then
    begin
     DM.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
     DM.qrrelatorio.fieldbyname('LINHA1').asstring := 'MAPA RESUMO DO (LMC)';
     fXlmc.LoadFromFile('\siace\rel\MapaResumoCombustivel.fr3');
     fXlmc.ShowReport;
    end; }
end;


procedure TFormrelatLmc.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure TFormrelatLmc.BitBtn1Click(Sender: TObject);
begin  
   IF COMBO_RELATORIO.TEXT = 'LIVRO MOV. DE COMBUSTÍVEIS (LMC)'  THEN
   BEGIN
    fxLMC.LoadFromFile('\siace\rel\ImpressaoLMC.fr3');
    fxLMC.designreport;
   end;

   IF COMBO_RELATORIO.TEXT = 'MAPA RESUMO DO (LMC)'  THEN
   BEGIN
    fXlmc.LoadFromFile('\siace\rel\MapaResumoCombustivel.fr3');
    fxLMC.designreport;
   end;
end;

end.
