unit Uconsabastecidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit, Grids, XDBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormConsAbastecidas = class(TForm)
    GRID: TXDBGrid;
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
    Query: TFDQuery;
    DataSource1: TDataSource;
    QuerySEQ: TIntegerField;
    QueryCOD_PRO: TIntegerField;
    QueryCOD_FOR: TIntegerField;
    QueryCOD_VEI: TIntegerField;
    QueryDATA: TDateField;
    QueryQUANT: TBCDField;
    QueryV_TOTAL: TBCDField;
    QueryKM_VEIC: TIntegerField;
    QueryOBS: TStringField;
    QueryV_UNIT: TFMTBCDField;
    QueryKM_L: TBCDField;
    QueryKM_ROD: TIntegerField;
    QueryCODIGO: TIntegerField;
    QueryNOME: TStringField;
    QueryANO: TStringField;
    QueryCOMBUSTIVEL: TStringField;
    QueryPLACA: TStringField;
    QueryUFPLACA: TStringField;
    QueryCOR: TStringField;
    QueryOBS1: TStringField;
    QueryOBS2: TStringField;
    QueryOBS3: TStringField;
    QueryCIDADE: TStringField;
    QueryCOD_CLIENTE: TIntegerField;
    QueryCHASSI: TStringField;
    QueryRENAVAM: TStringField;
    QueryISENTO_IPVA: TStringField;
    QueryCODIGO_1: TIntegerField;
    QueryNOME_1: TStringField;
    QueryFANTASIA: TStringField;
    QueryENDERECO: TStringField;
    QueryCIDADE_1: TStringField;
    QueryESTADO: TStringField;
    QueryCEP: TStringField;
    QueryTELEFONE: TStringField;
    QueryFAX: TStringField;
    QueryEMAIL: TStringField;
    QueryHOMEPAGE: TStringField;
    QueryTIPO: TStringField;
    QueryCNPJ: TStringField;
    QueryIE: TStringField;
    QueryBAIRRO: TStringField;
    QueryREPRESCELULAR: TStringField;
    QueryUSERCAD: TStringField;
    QueryDATACADASTRO: TDateField;
    QueryOBSERVACOES: TBlobField;
    QueryREPRESNOME: TStringField;
    QueryREPRESFONEFAX: TStringField;
    QueryREPRESEMAIL: TStringField;
    QueryREPRESOBSERVACOES: TBlobField;
    QueryPRODUTOR_RURAL: TStringField;
    QueryINSC_PRODUTOR: TStringField;
    QueryCOD_LINHA: TIntegerField;
    QueryLINHA: TStringField;
    QueryCOD_EMPRESA: TIntegerField;
    QueryVALOR_LEITE: TBCDField;
    Querycodigo_ibge: TStringField;
    QueryNUMERO: TIntegerField;
    QueryCOMPLEMENTO: TStringField;
    QueryTP: TStringField;
    procedure locChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GRIDDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsAbastecidas: TFormConsAbastecidas;
  voltar : boolean;
  
implementation

uses ModuleDados1, ModulodeDados;

{$R *.dfm}

procedure TFormConsAbastecidas.locChange(Sender: TObject);
var ref, tipo : string;
begin
 if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex  OF
  0:TIPO := 'V.NOME';
  1:TIPO := 'V.CODIGO';
  2:TIPO := 'V.PLACA';
  3:TIPO := 'A.SEQ' ;
  4:TIPO := 'A.DATA';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('SELECT A.*, V.*, F.* FROM VEICULO_ABAST A, VEICULO V, FORNECEDORES F WHERE A.COD_VEI = V.CODIGO AND A.COD_FOR = F.CODIGO ORDER BY SEQ')
    else
      query.sql.Add('SELECT A.*, V.*, F.* FROM VEICULO_ABAST A, VEICULO V, FORNECEDORES F WHERE upper('+tipo+') like '''+ref+loc.Text+'%''AND A.COD_VEI = V.CODIGO AND A.COD_FOR = F.CODIGO order by seq');
    query.open;
  except
  end;
end;

procedure TFormConsAbastecidas.FormShow(Sender: TObject);
begin
  voltar := false;
 loc.SetFocus;
end;

procedure TFormConsAbastecidas.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure TFormConsAbastecidas.locExit(Sender: TObject);
begin
 tedit(sender).color := clwindow;
end;

procedure TFormConsAbastecidas.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure TFormConsAbastecidas.locKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
        close;
    end;
end;

procedure TFormConsAbastecidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('SEQ').asstring;
      resultado_pesquisa2 := query.fieldbyname('NOME_1').asstring;
      resultado_pesquisa3 := query.fieldbyname('NOME').asstring;
      resultado_pesquisa4 := query.fieldbyname('COD_VEI').asstring;
    end;

  ACTION := CAFREE;
  FormConsAbastecidas := nil;
end;

procedure TFormConsAbastecidas.GRIDDblClick(Sender: TObject);
begin
Close;

end;

procedure TFormConsAbastecidas.GRIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = vk_return then
begin
  Close;
  end;
end;

end.
