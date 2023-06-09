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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_Funcionario: Tfrmxloc_Funcionario;
  voltar: boolean;

implementation

uses ModulodeDados, uDMMovimentacao;

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
    if DMMovimentacao.query.RecNo > 0 then
    begin
      resultado_pesquisa1 := DMMovimentacao.query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := DMMovimentacao.query.fieldbyname('nome_rs').asstring;
      resultado_pesquisa3 := DMMovimentacao.query.fieldbyname('telefone').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_Funcionario.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if DMMovimentacao.query.RecNo > 0 then
    begin
      resultado_pesquisa1 := DMMovimentacao.query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := DMMovimentacao.query.fieldbyname('nome_rs').asstring;
      resultado_pesquisa3 := DMMovimentacao.query.fieldbyname('telefone').asstring;
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
  if Tag = 1 then
  begin
  DMMovimentacao.query.Close;
  DMMovimentacao.query.SQL.clear;
  DMMovimentacao.query.SQL.Add('select * from clientes where funcionario = 1 and codigo = ''-1''');
  DMMovimentacao.query.open;
  end;
  if Tag = 2 then
  begin
  DMMovimentacao.query.Close;
  DMMovimentacao.query.SQL.clear;
  DMMovimentacao.query.SQL.Add('select * from clientes where codigo = ''-1''');
  DMMovimentacao.query.open;
  end;

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
    0: TIPO := 'NOME_RS';
    1: TIPO := 'CODIGO';
    2: TIPO := 'CPF_CNPJ';
  end;

  if tag = 1 then
 begin
  try
    DMMovimentacao.query.close;
    DMMovimentacao.query.sql.clear;
    if loc.text = '' then
    DMMovimentacao.query.sql.Add('select * from clientes where funcionario = 1 and codigo = ''-1''')
    else
    DMMovimentacao.query.sql.Add('select * from clientes where funcionario = 1 and upper(' + tipo + ') like ''' + ref + loc.Text + '%'' order by ' + tipo);
    DMMovimentacao.query.open;
  except
  end;
 end;
  if tag = 2 then
 begin
  try
    DMMovimentacao.query.close;
    DMMovimentacao.query.sql.clear;
    if loc.text = '' then
    DMMovimentacao.query.sql.Add('select * from clientes where codigo = ''-1''')
    else
    DMMovimentacao.query.sql.Add('select * from clientes where upper(' + tipo + ') like ''' + ref + loc.Text + '%'' order by ' + tipo);
    DMMovimentacao.query.open;
  except
  end;
 end;

end;

procedure Tfrmxloc_Funcionario.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := DMMovimentacao.query.fieldbyname('codigo').asstring;
  resultado_pesquisa2 := DMMovimentacao.query.fieldbyname('nome_RS').asstring;
  resultado_pesquisa3 := DMMovimentacao.query.fieldbyname('telefone').asstring;
  close;
end;

procedure Tfrmxloc_Funcionario.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
