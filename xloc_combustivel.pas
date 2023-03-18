unit xloc_combustivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  Menus, DB,  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrmxloc_combustivel = class(TForm)
    GRID: TwwDBGrid;
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
    queryCODIGO: TIntegerField;
    queryCODIGO_BARRAS: TStringField;
    queryDESCRICAO: TStringField;
    queryABREVIADO: TStringField;
    queryPRECO_CUSTO: TBCDField;
    queryMARGEM_LUCRO: TBCDField;
    queryCOMISSAO: TBCDField;
    queryUNIDADE: TIntegerField;
    queryFRETE: TBCDField;
    queryICMS: TBCDField;
    queryIPI_IRPJ: TBCDField;
    queryOUTROS_IMPOSTOS: TBCDField;
    queryDESCONTOS: TBCDField;
    queryCLASS_FISCAL: TStringField;
    querySIT_TRIBUTARIA: TStringField;
    queryCUSTO_MEDIO: TBCDField;
    queryPRECO_VENDA: TBCDField;
    queryDESCONTO_MAXIMO: TBCDField;
    queryCODIGO_GRUPO: TIntegerField;
    queryCODIGO_SUBGRUPO: TIntegerField;
    queryCODIGO_MARCA: TIntegerField;
    queryNOME_GRUPO: TStringField;
    queryNOME_SUBGRUPO: TStringField;
    queryNOME_MARCA: TStringField;
    queryNOME_FORNECEDOR: TStringField;
    queryCODIGO_FORNECEDORES: TIntegerField;
    queryFOTO: TBlobField;
    queryESTOQUE_ATUAL: TBCDField;
    queryESTOQUE_VENDIDO: TBCDField;
    queryESTOQUE: TBCDField;
    queryVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    queryVALOR_ESTOQUE: TFMTBCDField;
    queryESTOQUE_MINIMO: TIntegerField;
    queryESTOQUE_MAXIMO: TIntegerField;
    queryDATACAD: TDateField;
    queryUSERCAD: TStringField;
    queryVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    queryULTIMACOMPRA: TDateField;
    queryVALOR_EST_CUSTO: TFMTBCDField;
    querySECCAO: TIntegerField;
    queryCATEGORIA: TIntegerField;
    queryLOCALIZACAO: TStringField;
    queryAPLICACAO: TStringField;
    queryESP_COD_AUX: TStringField;
    queryGARANTIA: TIntegerField;
    queryBALANCA: TStringField;
    queryETIQUETA: TStringField;
    queryATIVO: TStringField;
    queryREFERENCIA: TStringField;
    queryCOD_EMPRESA: TIntegerField;
    queryDESC_UNIDADE: TStringField;
    queryPESOBRUTO: TBCDField;
    queryPESOLIQUIDO: TBCDField;
    queryFONETICO: TStringField;
    queryDATAULTALTERACAO: TDateField;
    queryCUSTOREPOSICAO: TBCDField;
    queryPRECO_ANT: TBCDField;
    queryPRECO_PROMOCAO: TBCDField;
    queryFLAG_PROMOCAO: TStringField;
    queryDT_INICIO_PROMO: TDateField;
    queryDT_FIM_PROMO: TDateField;
    queryCOD_LABORATORIO: TIntegerField;
    queryLABORATORIO: TStringField;
    queryPRINCIPIO_ATIVO: TStringField;
    queryMED_CONTROLADO: TStringField;
    queryQTD_FRACIONADA: TBCDField;
    queryQTD_CAIXA: TSmallintField;
    queryMED_GENERICO: TStringField;
    queryLOTE_MED: TStringField;
    queryVALIDADE: TDateField;
    queryCHEK_BOX: TStringField;
    queryPRECO_VENDA2: TBCDField;
    queryMARGEM_LUCRO2: TBCDField;
    queryVALIDADE_PRODUTO: TStringField;
    queryPROD_SERV: TStringField;
    queryUNIDADE_ENT: TIntegerField;
    queryDESC_UNID_ENT: TStringField;
    queryQUANT_SAIDA: TBCDField;
    queryQUANT_ENTRADA: TBCDField;
    queryESTOQUE_FRACAO: TBCDField;
    queryDATA_FABRICACAO: TDateField;
    queryFRACAO: TIntegerField;
    queryNCM_SH: TStringField;
    queryCOD_MS: TStringField;
    queryCONTOLAESTOQUE: TStringField;
    queryPRODUTOCOMPOSTO: TStringField;
    queryTIPO_ATIVIDADE: TStringField;
    queryCOD_PRODUTO_ESTOQUE: TIntegerField;
    queryCODIGO_LOCAL_ESTOQUE: TIntegerField;
    queryLISTA_ABC: TStringField;
    queryGRUPO_TRIBUTACAO: TIntegerField;
    queryCOMBUSTIVEL: TStringField;
    queryCOR: TIntegerField;
    queryENABLE_NUMSERIE: TIntegerField;
    queryID_PRODUTOS: TIntegerField;
    queryCOD_ANP: TStringField;
    queryCESTA: TStringField;
    queryML_QUANT_BEB: TBCDField;
    queryUND_TRIB: TStringField;
    queryCHASSI: TStringField;
    queryCOR_DESC: TStringField;
    queryN_MOTOR: TStringField;
    queryANO_FAB: TStringField;
    queryANO_MOD_FAB: TStringField;
    queryTIPO_VEIC: TStringField;
    queryN_SERIE: TStringField;
    queryCOD_MODELO: TStringField;
    queryESPECIE_VEICULO: TStringField;
    queryCOD_COR_DENATRAN: TStringField;
    queryTIPO_COMBUSTIVEL: TStringField;
    queryVEICULO: TStringField;
    queryUSA_RENTABILIDADE: TIntegerField;
    queryUSA_SERIAL: TIntegerField;
    queryUSA_GRADE: TIntegerField;
    queryPRODUTO_PROPRIEDADE: TIntegerField;
    queryMULTIP_FRACAO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure Localizarpor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_combustivel: Tfrmxloc_combustivel;
  voltar : boolean;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure Tfrmxloc_combustivel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;

end;

procedure Tfrmxloc_combustivel.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_combustivel.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;

end;

procedure Tfrmxloc_combustivel.GRIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('DESCRICAO').asstring;
      close;
    end;
  end;

end;

procedure Tfrmxloc_combustivel.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('DESCRICAO').asstring;
      close;
    end;
  end;

end;

procedure Tfrmxloc_combustivel.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;

end;

procedure Tfrmxloc_combustivel.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

end;

procedure Tfrmxloc_combustivel.FormShow(Sender: TObject);
var
comb :string;
begin
  xprod_escolh := '';
  xprod_escolh2 := '';
  comb :='S';

  voltar := false;
  query.Close;
  query.SQL.clear;
  query.SQL.Add('select * from produtos where codigo Is NOT NULL and combustivel='+QuotedStr(comb)+' ORDER BY DESCRICAO');
  query.open;

end;

procedure Tfrmxloc_combustivel.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';

end;

procedure Tfrmxloc_combustivel.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_combustivel.locChange(Sender: TObject);
var ref, tipo, TP : string;
begin
  TP:='S';
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex  OF
  0:TIPO := 'DESCRICAO';
  1:TIPO := 'CODIGO';
  end;

 // try
   // query.close;
 //   query.sql.clear;
    if loc.text = '' then
    BEGIN
    query.close;
    query.sql.clear;
    query.sql.Add('select * from PRODUTOS where codigo IS NOT NULL ORDER BY DESCRICAO asc');
    query.Filtered := False;
    query.Filter  :='COMBUSTIVEL='+QuotedStr(TP);
    query.Filtered := True;
    end else
    BEGIN
    query.close;
    query.sql.clear;
    query.sql.Add('select * from PRODUTOS where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
    query.open;
    query.Filtered := False;
    query.Filter  :='COMBUSTIVEL='+QuotedStr(TP);
    query.Filtered := True;
    end;
 { except
  end;  }
end;

procedure Tfrmxloc_combustivel.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('descricao').asstring;
      xprod_escolh := query.fieldbyname('codigo').asstring;
      xprod_escolh2 := query.fieldbyname('descricao').asstring;
{
      frmtanque.lbcombust.Caption := resultado_pesquisa2;
      frmBombas.lbcombust.Caption := resultado_pesquisa2;
      frmBicos.lbcombust.Caption := resultado_pesquisa2;
}
      close;
end;

procedure Tfrmxloc_combustivel.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;

end;

procedure Tfrmxloc_combustivel.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_combustivel.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
   X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1

end;

end.
