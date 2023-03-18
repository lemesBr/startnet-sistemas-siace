unit xloc_caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  Menus, DB,  XDBGrids,  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormConsfechamento = class(TForm)
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
    GRID: TXDBGrid;
    querySEQ: TIntegerField;
    querySITUACAO: TIntegerField;
    querySALDO: TBCDField;
    queryCOD_USUARIO: TIntegerField;
    queryDATA_FECHAMENTO: TDateField;
    queryDATA_ABERTURA: TDateField;
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
  FormConsfechamento: TFormConsfechamento;
  voltar : boolean;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure TFormConsfechamento.FormShow(Sender: TObject);
begin
  xprod_escolh := '';
  xprod_escolh2 := '';

  voltar := false;
  query.Close;
  query.SQL.clear;
  query.SQL.Add('select * from CAIXA where SEQ Is NOT NULL ORDER BY SEQ');
  query.open;

end;

procedure TFormConsfechamento.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;

end;

procedure TFormConsfechamento.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

end;

procedure TFormConsfechamento.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;

end;

procedure TFormConsfechamento.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := IntToStr(query.fieldbyname('SEQ').asinteger);
      resultado_pesquisa2 := DateToStr(query.fieldbyname('DATA_FECHAMENTO').AsDateTime);
      close;
    end;
  end;

end;

procedure TFormConsfechamento.locChange(Sender: TObject);
var ref, tipo : string;
begin
if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex  OF
  0:TIPO := 'DATA_FECHAMENTO';
  1:TIPO := 'SEQ';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from CAIXA where SEQ IS NOT NULL ORDER BY SEQ')
    else
//      query.sql.Add('select * from cadcombustivel where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
      if TIPO = 'DATA_FECHAMENTO' then
      begin
        query.sql.Add('select * from LMC where data_fechamento = :data');
        query.params.parambyname('data').AsDate := StrToDate(Trim(loc.Text));
      end
      else
       query.sql.Add('select * from caixa where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);

    query.open;
  except
  end;

end;

procedure TFormConsfechamento.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := IntToStr(query.fieldbyname('SEQ').asinteger);
      resultado_pesquisa2 := DateToStr(query.fieldbyname('DATA_FECHAMENTO').asdatetime);
      close;

end;

procedure TFormConsfechamento.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := IntToStr(query.fieldbyname('SEQ').asinteger);
      resultado_pesquisa2 := DateToStr(query.fieldbyname('DATA_FECHAMENTO').asdatetime);
      close;
    end;
  end;

end;

procedure TFormConsfechamento.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';

end;

procedure TFormConsfechamento.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;

end;

procedure TFormConsfechamento.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1

end;

procedure TFormConsfechamento.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1


end;

procedure TFormConsfechamento.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;

end;

end.
