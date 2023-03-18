unit xloc_cfop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrmxloc_cfop = class(TForm)
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
    GRID: TwwDBGrid;
    ds: TDataSource;
    query: TFDQuery;
    Bevel2: TBevel;
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Bevel3: TBevel;
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
    procedure BuscaValorEmTodosCamposTabela(Tabela,Busca : String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_cfop: Tfrmxloc_cfop;
  voltar: boolean;

implementation

uses  ModulodeDados;

{$R *.dfm}

procedure Tfrmxloc_cfop.BuscaValorEmTodosCamposTabela(Tabela, Busca : String);
var
  Query : TFDQuery;
begin
  Query:= TFDQuery.Create(nil);
  Query.Connection := DM.Coneccao;
  Query.SQL.Add('SELECT R.RDB$RELATION_NAME, R.RDB$FIELD_NAME ');
  Query.SQL.Add('FROM RDB$RELATION_FIELDS R, RDB$FIELDS F ');
  Query.SQL.Add('WHERE F.RDB$FIELD_NAME = R.RDB$FIELD_SOURCE ');
  Query.SQL.Add('AND R.RDB$RELATION_NAME = '+QuotedStr(Tabela));
  Query.SQL.Add('ORDER BY R.RDB$FIELD_POSITION, R.RDB$FIELD_NAME');
  Query.Open;

  while not Query.Eof do
  begin
    if Busca <> '' then
    begin
      ds.DataSet.Filter:= Query.Fields[1].AsString+' LIKE '+QuotedStr(Busca+'%');
      ds.DataSet.Filtered:= True;
    end
    else
      ds.DataSet.Filtered:= False;

    if ds.DataSet.IsEmpty then
    begin
      ds.DataSet.Filtered:= False;
    end
    else
      Exit;

    Query.Next;
  end;

  Query.Destroy;
end;

procedure Tfrmxloc_cfop.Localizarpor1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_cfop.Referncia1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_cfop.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  PARAMETRO_PESQUISA := '';
  ACTION := CAFREE;
end;

procedure Tfrmxloc_cfop.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    resultado_pesquisa3 := '';
    RESULTADO_PESQUISA4 := '';
    close;
  end;
end;

procedure Tfrmxloc_cfop.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_cfop.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('cfop').asstring;
      resultado_pesquisa2 := query.fieldbyname('natureza').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_cfop.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('cfop').asstring;
      resultado_pesquisa2 := query.fieldbyname('natureza').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_cfop.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_cfop.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_cfop.FormShow(Sender: TObject);
begin
  voltar := false;
  query.Close;
  query.SQL.clear;
  if parametro_pesquisa = '' then
  begin
    query.SQL.Add('select * from TABELA_CFOP where cfop Is NOT NULL and  TIPO ' + PARAMETRO_PESQUISA + '  ORDER BY NATUREZA');
    query.open;

  end
  else
  begin
    query.SQL.Add('select * from TABELA_CFOP where cfop Is NOT NULL AND TIPO ' + PARAMETRO_PESQUISA + ' ORDER BY NATUREZA');
    query.open;

  end;
  LOC.SETFOCUS;

end;

procedure Tfrmxloc_cfop.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_cfop.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_cfop.locChange(Sender: TObject);
var ref, tipo: string;
begin
  IF combo_localizar.ItemIndex = 2 then
  BEGIN
  BuscaValorEmTodosCamposTabela('TABELA_CFOP', loc.Text) ;
  end ELSE
  BEGIN
  if combo_referencia.ItemIndex = 0 then
   ref := '' else ref := '%';
  case combo_localizar.ItemIndex of
    0: TIPO := 'NATUREZA';
    1: TIPO := 'CFOP';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from TABELA_CFOP where cfop IS NOT NULL and tipo ' + parametro_pesquisa + ' ORDER BY NATUREZA')
    else
      query.sql.Add('select * from TABELA_CFOP where upper(' + tipo + ') like ''' + ref + loc.Text + '%'' and tipo ' + parametro_pesquisa + ' order by ' + tipo);
    query.open;
  except
  end;

  end;
end;

procedure Tfrmxloc_cfop.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := query.fieldbyname('cfop').asstring;
  resultado_pesquisa2 := query.fieldbyname('NATUREZA').asstring;
  close;

end;

procedure Tfrmxloc_cfop.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
