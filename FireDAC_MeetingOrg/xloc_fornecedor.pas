unit xloc_fornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvGlowButton;

type
  Tfrmxloc_fornecedor = class(TForm)
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
    BITBTN1: TSpeedButton;
    CadastrarNovoFornecedor1: TMenuItem;
    Bevel3: TBevel;
    FDvGlowButton1: TAdvGlowButton;
    Bevel4: TBevel;
    queryCODIGO: TIntegerField;
    queryNOME: TStringField;
    queryFANTASIA: TStringField;
    queryENDERECO: TStringField;
    queryCIDADE: TStringField;
    queryESTADO: TStringField;
    queryCEP: TStringField;
    queryTELEFONE: TStringField;
    queryFAX: TStringField;
    queryEMAIL: TStringField;
    queryHOMEPAGE: TStringField;
    queryTIPO: TStringField;
    queryCNPJ: TStringField;
    queryIE: TStringField;
    queryBAIRRO: TStringField;
    queryREPRESCELULAR: TStringField;
    queryUSERCAD: TStringField;
    queryDATACADASTRO: TDateField;
    queryOBSERVACOES: TBlobField;
    queryREPRESNOME: TStringField;
    queryREPRESFONEFAX: TStringField;
    queryREPRESEMAIL: TStringField;
    queryREPRESOBSERVACOES: TBlobField;
    queryPRODUTOR_RURAL: TStringField;
    queryINSC_PRODUTOR: TStringField;
    queryCOD_LINHA: TIntegerField;
    queryLINHA: TStringField;
    queryCOD_EMPRESA: TIntegerField;
    queryVALOR_LEITE: TBCDField;
    querycodigo_ibge: TStringField;
    queryNUMERO: TIntegerField;
    queryCOMPLEMENTO: TStringField;
    queryTP: TStringField;
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
    procedure BITBTN1Click(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_fornecedor: Tfrmxloc_fornecedor;
  voltar: boolean;

implementation

uses ModulodeDados, Fornecedores;

{$R *.dfm}

procedure Tfrmxloc_fornecedor.Localizarpor1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_fornecedor.Referncia1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_fornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmxloc_fornecedor.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_fornecedor.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure Tfrmxloc_fornecedor.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_fornecedor.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_fornecedor.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_fornecedor.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_fornecedor.FormShow(Sender: TObject);
begin
  voltar := false;



  query.Close;
  query.SQL.clear;
  if parametro_pesquisa <> '' then
    query.SQL.Add(parametro_pesquisa)
  else
    query.SQL.Add('select * from fornecedores where codigo = ''-1''');

  query.open;


  if parametro_pesquisa <> '' then GRID.SetFocus;

end;

procedure Tfrmxloc_fornecedor.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_fornecedor.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_fornecedor.locChange(Sender: TObject);
var ref, tipo: string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex of
    0: TIPO := 'NOME';
    1: TIPO := 'CODIGO';
    2: TIPO := 'CNPJ';
    3: TIPO := 'FANTASIA';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from fornecedores where codigo = ''-1''')
    else
      query.sql.Add('select * from fornecedores where upper(' + tipo + ') like ''' + ref + loc.Text + '%'' order by ' + tipo);
    query.open;
  except
  end;
end;

procedure Tfrmxloc_fornecedor.GRIDDblClick(Sender: TObject);
begin
  if query.RecordCount = 0 then Exit;
  resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
  resultado_pesquisa2 := query.fieldbyname('nome').asstring;
  close;
end;

procedure Tfrmxloc_fornecedor.BITBTN1Click(Sender: TObject);
begin
{  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;  }
 FormFornecedores:=TFormFornecedores.Create(self);
 FormFornecedores.FormStyle := fsNormal;
 FormFornecedores.Visible:= False;
 FormFornecedores.Showmodal;

  query.Refresh;
end;

procedure Tfrmxloc_fornecedor.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
