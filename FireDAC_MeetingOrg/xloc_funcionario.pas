unit xloc_funcionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  XDBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrmxloc_Funcionario = class(TForm)
    FlatPanel1: TFlatPanel;
    combo_localizar: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    combo_referencia: TComboBox;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    loc: TEdit;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    GRID: TXDBGrid;
    ds: TDataSource;
    query: TFDQuery;
    Bevel2: TBevel;
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Bevel3: TBevel;
    queryCODIGO: TIntegerField;
    queryNOME_RS: TStringField;
    queryENDERECO: TStringField;
    queryCIDADE: TStringField;
    queryUF: TStringField;
    queryCEP: TStringField;
    queryTELEFONE: TStringField;
    queryTELEFONE2: TStringField;
    queryEMAIL: TStringField;
    queryNASCIMENTO_IA: TDateField;
    querySEXO: TStringField;
    queryFOTO_LOGOMARCA: TBlobField;
    queryBAIRRO: TStringField;
    queryRG_IE: TStringField;
    queryFAX: TStringField;
    queryCELULAR: TStringField;
    queryUSERCAD: TStringField;
    queryDATACAD: TDateField;
    queryCPF_CNPJ: TStringField;
    queryOBSERVACOES: TBlobField;
    queryCREDIARIO: TStringField;
    queryESTADOCIVIL: TStringField;
    queryRESIDENCIA_SEDE: TStringField;
    queryPAI: TStringField;
    queryMAE: TStringField;
    queryNOME_CONJUGE: TStringField;
    queryCPF_CONJUGE: TStringField;
    queryNASCIMENTO_CONJUGE: TDateField;
    queryTRABALHO_CONJUGE: TStringField;
    queryPROFISSAO_CONJUGE: TStringField;
    queryLOCALTRABALHO: TStringField;
    queryPROFISSAO_RA: TStringField;
    queryTELEFONE_TRABALHO: TStringField;
    queryFAX_TRABALHO: TStringField;
    queryOBSERVACOES_TRABALHO: TBlobField;
    queryBANCO: TStringField;
    queryNOME_AGENCIA: TStringField;
    queryNUMERO_AGENCIA: TStringField;
    queryCONTA_CORRENTE: TIntegerField;
    queryNOME1_REFERENCIA: TStringField;
    queryNOME2_REFERENCIA: TStringField;
    queryTELEFONE1_REFERENCIA: TStringField;
    queryTELEFONE2_REFERENCIA: TStringField;
    queryBANCO_REFERENCIA: TStringField;
    queryAPELIDO: TStringField;
    queryTIPO: TStringField;
    queryOBSERVACOES_COMERCIAIS: TBlobField;
    queryOBSERVACOES_BANCO: TBlobField;
    queryPG_CREDIARIO: TStringField;
    queryPG_CHEQUE: TStringField;
    queryPG_FINANCEIRA: TStringField;
    queryREMUNERACAO: TBCDField;
    queryNUMERO: TStringField;
    queryCOMPLEMENTO: TStringField;
    queryCOD_EMPRESA: TIntegerField;
    queryORGAO_EMISSOR: TStringField;
    queryDATA_EMISSAO_RG: TDateField;
    queryNATURALIDADE: TStringField;
    queryNATURALIDADE_UF: TStringField;
    queryCOD_CIDADE: TIntegerField;
    queryCOD_BAIRRO: TIntegerField;
    queryDATA_ALTERACAO: TDateField;
    queryCOD_ZONA: TIntegerField;
    queryPONTO_REFERENCIA: TStringField;
    queryATIVO: TStringField;
    queryCONTATO1: TStringField;
    queryCONTATO2: TStringField;
    queryCX_POSTAL: TStringField;
    queryVALOR_ALUGUEL: TBCDField;
    queryTEMPO_RESIDENCIA: TStringField;
    queryNUMERO_DEPENDENTES: TIntegerField;
    queryENDERECO_REFERENCIA1: TStringField;
    queryENDERECO_REFERENCIA2: TStringField;
    queryDATA_ADMISSAO_REFERENCIA1: TDateField;
    queryDATA_ADMISSAO_REFERENCIA2: TDateField;
    queryRG_CONJUGUE: TStringField;
    queryRENDA_CONJUGUE: TBCDField;
    queryDATA_ADMINSSAO_CONJUGUE: TDateField;
    queryFONE_CONJUGUE: TStringField;
    queryENDERECO_COBRANCA: TStringField;
    queryCEP_COBRANCA: TStringField;
    queryCOD_CIDADE_COBRANCA: TIntegerField;
    queryCX_POSTAL_COBRANCA: TStringField;
    queryLIMITE_DE_CREDITO: TBCDField;
    queryINSC_MUNICIPAL: TStringField;
    queryPRODUTOR_RURAL: TStringField;
    queryINSC_PRODUTOR_RURAL: TStringField;
    queryCOD_BAIRRO_COBRANCA: TIntegerField;
    queryCIDADE_COBRANCA: TStringField;
    queryBAIRRO_COBRANCA: TStringField;
    queryUF_COBRANCA: TStringField;
    queryCONTA_BANCARIA: TStringField;
    queryNOME_PROPRIEDADE: TStringField;
    queryNOME_VETERINARIO: TStringField;
    querySOCIO1: TStringField;
    queryCPFSOCIO1: TStringField;
    queryDATANASCSOCIO1: TDateField;
    querySOCIO2: TStringField;
    queryCPFSOCIO2: TStringField;
    queryDATANASCSOCIO2: TDateField;
    querySOCIO3: TStringField;
    queryCPFSOCIO3: TStringField;
    queryDATANASCSOCIO3: TDateField;
    querySOCIO4: TStringField;
    queryCPFSOCIO4: TStringField;
    queryDATANASCSOCIO4: TDateField;
    queryDATAFUNDACAO: TDateField;
    queryCAPITALSOCIAL: TBCDField;
    queryFATURAMENTOBRUTO: TBCDField;
    queryREGJUNTACOM: TStringField;
    queryENDSOCIO1: TStringField;
    queryRGSOCIO1: TIntegerField;
    queryENDSOCIO2: TStringField;
    queryRGSOCIO2: TIntegerField;
    queryENDSOCIO3: TStringField;
    queryRGSOCIO3: TIntegerField;
    queryENDSOCIO4: TStringField;
    queryRGSOCIO4: TIntegerField;
    queryAUTORIZADO1: TStringField;
    queryAUTORIZADO2: TStringField;
    queryAUTORIZADO3: TStringField;
    queryCPF_AUT1: TStringField;
    queryCPF_AUT2: TStringField;
    queryCPF_AUT3: TStringField;
    queryFUNCIONARIO: TStringField;
    queryCTPS: TStringField;
    queryTESTA_CREDITO: TStringField;
    queryTESTA_LIMITE: TStringField;
    queryCOD_CONV: TIntegerField;
    queryFOTO: TStringField;
    queryDATA_ULTIMA_COMPRA: TDateField;
    queryFUNC_SALARIO: TBCDField;
    queryFUNC_DATA_ADMISSAO: TDateField;
    queryFUNC_SITUACAO: TStringField;
    queryFUNC_DEMISSAO: TDateField;
    queryFUNC_CARGO: TStringField;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_Funcionario: Tfrmxloc_Funcionario;
  voltar: boolean;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure Tfrmxloc_Funcionario.Localizarpor1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_Funcionario.Referncia1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_Funcionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmxloc_Funcionario.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    resultado_pesquisa3 := '';
    close;
  end;
end;

procedure Tfrmxloc_Funcionario.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_Funcionario.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      resultado_pesquisa3 := query.fieldbyname('telefone').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_Funcionario.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      resultado_pesquisa3 := query.fieldbyname('telefone').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_Funcionario.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_Funcionario.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_Funcionario.FormShow(Sender: TObject);
begin
  voltar := false;
  query.Close;
  query.SQL.clear;
  query.SQL.Add('select * from clientes where funcionario = 1 and codigo = ''XXXXXX''');
  query.open;

end;

procedure Tfrmxloc_Funcionario.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_Funcionario.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_Funcionario.locChange(Sender: TObject);
var ref, tipo: string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex of
    0: TIPO := 'NOME';
    1: TIPO := 'CODIGO';
    2: TIPO := 'CPF';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from clientes where funcionario = 1 and codigo = ''xxxxxx''')
    else
      query.sql.Add('select * from clientes where funcionario = 1 and upper(' + tipo + ') like ''' + ref + loc.Text + '%'' order by ' + tipo);
    query.open;
  except
  end;
end;

procedure Tfrmxloc_Funcionario.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
  resultado_pesquisa2 := query.fieldbyname('nome').asstring;
  resultado_pesquisa3 := query.fieldbyname('telefone').asstring;
  close;
end;

procedure Tfrmxloc_Funcionario.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
