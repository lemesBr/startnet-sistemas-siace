unit xloc_veiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls, FMTBcd,
  DB, SqlExpr, Menus, Grids, Wwdbigrd, Wwdbgrid, TFlatPanelUnit,
  IBCustomDataSet, IBQuery, XDBGrids;

type
  Tfrmxloc_veiculo = class(TForm)
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
    Bevel2: TBevel;
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Bevel3: TBevel;
    query: TIBQuery;
    queryCODIGO: TIntegerField;
    queryNOME: TIBStringField;
    queryANO: TIBStringField;
    queryCOMBUSTIVEL: TIBStringField;
    queryPLACA: TIBStringField;
    queryUFPLACA: TIBStringField;
    queryCOR: TIBStringField;
    queryOBS1: TIBStringField;
    queryOBS2: TIBStringField;
    queryOBS3: TIBStringField;
    queryCIDADE: TIBStringField;
    queryCOD_CLIENTE: TIntegerField;
    queryCHASSI: TIBStringField;
    queryRENAVAM: TIBStringField;
    queryISENTO_IPVA: TIBStringField;
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
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_veiculo: Tfrmxloc_veiculo;
  voltar : boolean;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure Tfrmxloc_veiculo.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_veiculo.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_veiculo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 { case tag of
    1: begin
    if query.RecordCount >0 then
    begin
    FormTransferencias.edit1.text := query.fieldbyname('codigo').asstring;
    end;
    end;
    2: begin
    if query.RecordCount >0 then
    begin
    FormHistoricoTranf.edit1.text := query.fieldbyname('codigo').asstring;
    end;
    end;
    3: begin
    if query.RecordCount >0 then
    begin
    FormCadastroIpva.edit1.text := query.fieldbyname('codigo').asstring;
    end;
    end;
    4: begin
    if query.RecordCount >0 then
    begin
    FormBaixaIpva.edit1.text := query.fieldbyname('codigo').asstring;
    end;
    end;
    5: begin
    if query.RecordCount >0 then
    begin
    FormHistoricoIpva.edit1.text := query.fieldbyname('codigo').asstring;
    end;
    end;
    6: begin
    if query.RecordCount >0 then
    begin
    FrmTransfPlacas.edit1.text := query.fieldbyname('codigo').asstring;
    end;
    end;
    7: begin
    if query.RecordCount >0 then
    begin
    FormHistplaca.edit1.text := query.fieldbyname('codigo').asstring;
    end;
    end;
  end; }
  ACTION := CAFREE;
  frmxloc_veiculo := nil;
  end;

procedure Tfrmxloc_veiculo.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_veiculo.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_veiculo.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecordCount > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('NOME').asstring;
      resultado_pesquisa3 := query.fieldbyname('placa').asstring;
      resultado_pesquisa4 := query.fieldbyname('COD_CLIENTE').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_veiculo.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('NOME').asstring;
      resultado_pesquisa3 := query.fieldbyname('placa').asstring;
      resultado_pesquisa4 := query.fieldbyname('COD_CLIENTE').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_veiculo.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_veiculo.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_veiculo.FormShow(Sender: TObject);
begin
  voltar := false;
{  query.Close;
  query.SQL.clear;
  query.SQL.Add('select * from VEICULOS where codigo Is NOT NULL ORDER BY NOME');
  query.open;}
 loc.SetFocus;
end;

procedure Tfrmxloc_veiculo.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_veiculo.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_veiculo.locChange(Sender: TObject);
var ref, tipo : string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex  OF
  0:TIPO := 'NOME';
  1:TIPO := 'CODIGO';
  2:TIPO := 'PLACA'
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from VEICULO where codigo IS NOT NULL ORDER BY NOME')
    else
      query.sql.Add('select * from VEICULO where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
    query.open;
  except
  end;
end;

procedure Tfrmxloc_veiculo.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('NOME').asstring;
      resultado_pesquisa3 := query.fieldbyname('placa').asstring;
      resultado_pesquisa4 := query.fieldbyname('COD_CLIENTE').asstring;

      close;

end;

procedure Tfrmxloc_veiculo.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

procedure Tfrmxloc_veiculo.GRIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = vk_return then
begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('NOME').asstring;
      resultado_pesquisa3 := query.fieldbyname('placa').asstring;
      resultado_pesquisa4 := query.fieldbyname('COD_CLIENTE').asstring;
      close;

end;
end;

procedure Tfrmxloc_veiculo.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
begin
      if query.RecordCount >0 then
      begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('NOME').asstring;
      resultado_pesquisa3 := query.fieldbyname('placa').asstring;
      resultado_pesquisa4 := query.fieldbyname('COD_CLIENTE').asstring;
      end;
end;
end;

end.
