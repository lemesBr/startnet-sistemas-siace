unit xloc_LMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  Menus, DB,  XDBGrids,  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrmxloc_LMC = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    lvoltar: TLabel;
    combo_localizar: TComboBox;
    combo_referencia: TComboBox;
    loc: TEdit;
    ds: TDataSource;
    query: TFDQuery;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    qrCombustivel: TFDQuery;
    GRID: TXDBGrid;
    queryCODIGO: TIntegerField;
    queryTANQUE: TIntegerField;
    queryBOMBA: TIntegerField;
    queryBICO: TStringField;
    queryABERTURA: TIntegerField;
    queryENCERRANTE: TIntegerField;
    queryCOMBUSTIVEL: TIntegerField;
    queryDATA: TDateField;
    queryPRECO: TBCDField;
    queryQUANTIDADE: TBCDField;
    queryTOTAL: TBCDField;
    querySITUACAO: TIntegerField;
    queryNR_NOTA: TIntegerField;
    queryNOTAFISCAL1: TStringField;
    queryNOTAFISCAL2: TStringField;
    queryNOTAFISCAL3: TStringField;
    queryNOTAFISCAL4: TStringField;
    queryQUANTNF1: TIntegerField;
    queryQUANTNF2: TIntegerField;
    queryQUANTNF3: TIntegerField;
    queryQUANTNF4: TIntegerField;
    queryBICO1: TIntegerField;
    queryBICO2: TIntegerField;
    queryBICO3: TIntegerField;
    queryBICO4: TIntegerField;
    queryBICO5: TIntegerField;
    queryBICO6: TIntegerField;
    queryBICO7: TIntegerField;
    queryBICO8: TIntegerField;
    queryABER_BICO1: TIntegerField;
    queryABER_BICO2: TIntegerField;
    queryABER_BICO3: TIntegerField;
    queryABER_BICO4: TIntegerField;
    queryABER_BICO5: TIntegerField;
    queryABER_BICO6: TIntegerField;
    queryABER_BICO7: TIntegerField;
    queryABER_BICO8: TIntegerField;
    queryENC_BICO1: TIntegerField;
    queryENC_BICO2: TIntegerField;
    queryENC_BICO3: TIntegerField;
    queryENC_BICO4: TIntegerField;
    queryENC_BICO5: TIntegerField;
    queryENC_BICO6: TIntegerField;
    queryENC_BICO7: TIntegerField;
    queryENC_BICO8: TIntegerField;
    queryAFER_BICO1: TIntegerField;
    queryAFER_BICO2: TIntegerField;
    queryAFER_BICO3: TIntegerField;
    queryAFER_BICO4: TIntegerField;
    queryAFER_BICO5: TIntegerField;
    queryAFER_BICO6: TIntegerField;
    queryAFER_BICO7: TIntegerField;
    queryAFER_BICO8: TIntegerField;
    queryQTEVEND_1: TIntegerField;
    queryQTEVEND_2: TIntegerField;
    queryQTEVEND_3: TIntegerField;
    queryQTEVEND_4: TIntegerField;
    queryQTEVEND_5: TIntegerField;
    queryQTEVEND_6: TIntegerField;
    queryQTEVEND_7: TIntegerField;
    queryQTEVEND_8: TIntegerField;
    queryTOTALVEND_1: TBCDField;
    queryTOTALVEND_2: TBCDField;
    queryTOTALVEND_3: TBCDField;
    queryTOTALVEND_4: TBCDField;
    queryTOTALVEND_5: TBCDField;
    queryTOTALVEND_6: TBCDField;
    queryTOTALVEND_7: TBCDField;
    queryTOTALVEND_8: TBCDField;
    queryESTOQ_ABERTURA: TIntegerField;
    queryESTOQ_ESCRITURAL: TIntegerField;
    queryESTOQ_FECHAMENTO: TIntegerField;
    queryPERDA_SOBRA: TIntegerField;
    queryOBSERVACAO: TStringField;
    queryPAGINA: TIntegerField;
    queryID_BICO1: TStringField;
    queryID_BICO2: TStringField;
    queryID_BICO3: TStringField;
    queryID_BICO4: TStringField;
    queryID_BICO5: TStringField;
    queryID_BICO6: TStringField;
    queryID_BICO7: TStringField;
    queryID_BICO8: TStringField;
    queryVENDAS_DIA: TLargeintField;
    queryRECEBIDO_DIA: TLargeintField;
    queryDISPONIVEL_DIA: TLargeintField;
    queryTOTALVENDAS_DIA: TBCDField;
    queryTOTALVENDAS_ACU: TBCDField;
    qrCombustivelCODIGO: TIntegerField;
    qrCombustivelCODIGO_BARRAS: TStringField;
    qrCombustivelDESCRICAO: TStringField;
    qrCombustivelABREVIADO: TStringField;
    qrCombustivelPRECO_CUSTO: TBCDField;
    qrCombustivelMARGEM_LUCRO: TBCDField;
    qrCombustivelCOMISSAO: TBCDField;
    qrCombustivelUNIDADE: TIntegerField;
    qrCombustivelFRETE: TBCDField;
    qrCombustivelICMS: TBCDField;
    qrCombustivelIPI_IRPJ: TBCDField;
    qrCombustivelOUTROS_IMPOSTOS: TBCDField;
    qrCombustivelDESCONTOS: TBCDField;
    qrCombustivelCLASS_FISCAL: TStringField;
    qrCombustivelSIT_TRIBUTARIA: TStringField;
    qrCombustivelCUSTO_MEDIO: TBCDField;
    qrCombustivelPRECO_VENDA: TBCDField;
    qrCombustivelDESCONTO_MAXIMO: TBCDField;
    qrCombustivelCODIGO_GRUPO: TIntegerField;
    qrCombustivelCODIGO_SUBGRUPO: TIntegerField;
    qrCombustivelCODIGO_MARCA: TIntegerField;
    qrCombustivelNOME_GRUPO: TStringField;
    qrCombustivelNOME_SUBGRUPO: TStringField;
    qrCombustivelNOME_MARCA: TStringField;
    qrCombustivelNOME_FORNECEDOR: TStringField;
    qrCombustivelCODIGO_FORNECEDORES: TIntegerField;
    qrCombustivelFOTO: TBlobField;
    qrCombustivelESTOQUE_ATUAL: TBCDField;
    qrCombustivelESTOQUE_VENDIDO: TBCDField;
    qrCombustivelESTOQUE: TBCDField;
    qrCombustivelVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    qrCombustivelVALOR_ESTOQUE: TFMTBCDField;
    qrCombustivelESTOQUE_MINIMO: TIntegerField;
    qrCombustivelESTOQUE_MAXIMO: TIntegerField;
    qrCombustivelDATACAD: TDateField;
    qrCombustivelUSERCAD: TStringField;
    qrCombustivelVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    qrCombustivelULTIMACOMPRA: TDateField;
    qrCombustivelVALOR_EST_CUSTO: TFMTBCDField;
    qrCombustivelSECCAO: TIntegerField;
    qrCombustivelCATEGORIA: TIntegerField;
    qrCombustivelLOCALIZACAO: TStringField;
    qrCombustivelAPLICACAO: TStringField;
    qrCombustivelESP_COD_AUX: TStringField;
    qrCombustivelGARANTIA: TIntegerField;
    qrCombustivelBALANCA: TStringField;
    qrCombustivelETIQUETA: TStringField;
    qrCombustivelATIVO: TStringField;
    qrCombustivelREFERENCIA: TStringField;
    qrCombustivelCOD_EMPRESA: TIntegerField;
    qrCombustivelDESC_UNIDADE: TStringField;
    qrCombustivelPESOBRUTO: TBCDField;
    qrCombustivelPESOLIQUIDO: TBCDField;
    qrCombustivelFONETICO: TStringField;
    qrCombustivelDATAULTALTERACAO: TDateField;
    qrCombustivelCUSTOREPOSICAO: TBCDField;
    qrCombustivelPRECO_ANT: TBCDField;
    qrCombustivelPRECO_PROMOCAO: TBCDField;
    qrCombustivelFLAG_PROMOCAO: TStringField;
    qrCombustivelDT_INICIO_PROMO: TDateField;
    qrCombustivelDT_FIM_PROMO: TDateField;
    qrCombustivelCOD_LABORATORIO: TIntegerField;
    qrCombustivelLABORATORIO: TStringField;
    qrCombustivelPRINCIPIO_ATIVO: TStringField;
    qrCombustivelMED_CONTROLADO: TStringField;
    qrCombustivelQTD_FRACIONADA: TBCDField;
    qrCombustivelQTD_CAIXA: TSmallintField;
    qrCombustivelMED_GENERICO: TStringField;
    qrCombustivelLOTE_MED: TStringField;
    qrCombustivelVALIDADE: TDateField;
    qrCombustivelCHEK_BOX: TStringField;
    qrCombustivelPRECO_VENDA2: TBCDField;
    qrCombustivelMARGEM_LUCRO2: TBCDField;
    qrCombustivelVALIDADE_PRODUTO: TStringField;
    qrCombustivelPROD_SERV: TStringField;
    qrCombustivelUNIDADE_ENT: TIntegerField;
    qrCombustivelDESC_UNID_ENT: TStringField;
    qrCombustivelQUANT_SAIDA: TBCDField;
    qrCombustivelQUANT_ENTRADA: TBCDField;
    qrCombustivelESTOQUE_FRACAO: TBCDField;
    qrCombustivelDATA_FABRICACAO: TDateField;
    qrCombustivelFRACAO: TIntegerField;
    qrCombustivelNCM_SH: TStringField;
    qrCombustivelCOD_MS: TStringField;
    qrCombustivelCONTOLAESTOQUE: TStringField;
    qrCombustivelPRODUTOCOMPOSTO: TStringField;
    qrCombustivelTIPO_ATIVIDADE: TStringField;
    qrCombustivelCOD_PRODUTO_ESTOQUE: TIntegerField;
    qrCombustivelCODIGO_LOCAL_ESTOQUE: TIntegerField;
    qrCombustivelLISTA_ABC: TStringField;
    qrCombustivelGRUPO_TRIBUTACAO: TIntegerField;
    qrCombustivelCOMBUSTIVEL: TStringField;
    qrCombustivelCOR: TIntegerField;
    qrCombustivelENABLE_NUMSERIE: TIntegerField;
    qrCombustivelID_PRODUTOS: TIntegerField;
    qrCombustivelCOD_ANP: TStringField;
    qrCombustivelCESTA: TStringField;
    qrCombustivelML_QUANT_BEB: TBCDField;
    qrCombustivelUND_TRIB: TStringField;
    qrCombustivelCHASSI: TStringField;
    qrCombustivelCOR_DESC: TStringField;
    qrCombustivelN_MOTOR: TStringField;
    qrCombustivelANO_FAB: TStringField;
    qrCombustivelANO_MOD_FAB: TStringField;
    qrCombustivelTIPO_VEIC: TStringField;
    qrCombustivelN_SERIE: TStringField;
    qrCombustivelCOD_MODELO: TStringField;
    qrCombustivelESPECIE_VEICULO: TStringField;
    qrCombustivelCOD_COR_DENATRAN: TStringField;
    qrCombustivelTIPO_COMBUSTIVEL: TStringField;
    qrCombustivelVEICULO: TStringField;
    qrCombustivelUSA_RENTABILIDADE: TIntegerField;
    qrCombustivelUSA_SERIAL: TIntegerField;
    qrCombustivelUSA_GRADE: TIntegerField;
    qrCombustivelPRODUTO_PROPRIEDADE: TIntegerField;
    qrCombustivelMULTIP_FRACAO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_LMC: Tfrmxloc_LMC;
  voltar : boolean;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure Tfrmxloc_LMC.FormShow(Sender: TObject);
begin
  xprod_escolh := '';
  xprod_escolh2 := '';

  voltar := false;
  query.Close;
  query.SQL.clear;
  query.SQL.Add('select * from LMC where codigo Is NOT NULL ORDER BY DATA');
  query.open;

end;

procedure Tfrmxloc_LMC.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;

end;

procedure Tfrmxloc_LMC.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

end;

procedure Tfrmxloc_LMC.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;

end;

procedure Tfrmxloc_LMC.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := IntToStr(query.fieldbyname('codigo').asinteger);
      resultado_pesquisa2 := DateToStr(query.fieldbyname('data').AsDateTime);
      close;
    end;
  end;

end;

procedure Tfrmxloc_LMC.locChange(Sender: TObject);
var ref, tipo : string;
begin
if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex  OF
  0:TIPO := 'DATA';
  1:TIPO := 'NOME';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from LMC where DATA IS NOT NULL ORDER BY DATA')
    else
//      query.sql.Add('select * from cadcombustivel where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
      if TIPO = 'DATA' then
      begin
        query.sql.Add('select * from LMC where data = :data');
        query.params.parambyname('data').AsDate := StrToDate(Trim(loc.Text));
      end
      else
       query.sql.Add('select * from LMC where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);

    query.open;
  except
  end;

end;

procedure Tfrmxloc_LMC.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := IntToStr(query.fieldbyname('codigo').asinteger);
      resultado_pesquisa2 := DateToStr(query.fieldbyname('data').asdatetime);
      close;

end;

procedure Tfrmxloc_LMC.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := IntToStr(query.fieldbyname('codigo').asinteger);
      resultado_pesquisa2 := DateToStr(query.fieldbyname('data').asdatetime);
      close;
    end;
  end;

end;

procedure Tfrmxloc_LMC.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';

end;

procedure Tfrmxloc_LMC.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;

end;

procedure Tfrmxloc_LMC.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1

end;

procedure Tfrmxloc_LMC.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1


end;

procedure Tfrmxloc_LMC.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;

end;

end.
