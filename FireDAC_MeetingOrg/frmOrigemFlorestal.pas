unit frmOrigemFlorestal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, Grids, DBGrids,
  Buttons, DB;

type
  TFOrigemFlorestal = class(TForm)
    pgcOrigem: TPageControl;
    tbGrid: TTabSheet;
    tbEdit: TTabSheet;
    Label1: TLabel;
    Bevel1: TBevel;
    edtDescricao: TDBEdit;
    pnlNav: TPanel;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    Grid: TDBGrid;
    pnlPesquisa: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edtPesquisa: TEdit;
    dsOrigem: TDataSource;
    spbCancelar: TSpeedButton;
    spbSalvar: TSpeedButton;
    procedure spbIncluirClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbSalvarClick(Sender: TObject);
    procedure spbAlterarClick(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOrigemFlorestal: TFOrigemFlorestal;

implementation

uses uDMMovimentacao;

{$R *.dfm}

procedure TFOrigemFlorestal.spbIncluirClick(Sender: TObject);
begin
  pgcOrigem.ActivePage:= tbEdit;
  dsOrigem.DataSet.Insert;
  edtDescricao.SetFocus;
end;

procedure TFOrigemFlorestal.spbCancelarClick(Sender: TObject);
begin
  dsOrigem.DataSet.Cancel;
  pgcOrigem.ActivePage:= tbGrid;
end;

procedure TFOrigemFlorestal.spbSalvarClick(Sender: TObject);
begin
  dsOrigem.DataSet.Post;
  pgcOrigem.ActivePage:= tbGrid;
end;

procedure TFOrigemFlorestal.spbAlterarClick(Sender: TObject);
begin
  if not dsOrigem.DataSet.IsEmpty then
  begin
    dsOrigem.DataSet.Edit;
    pgcOrigem.ActivePage:= tbEdit;
  end;
end;

procedure TFOrigemFlorestal.spbExcluirClick(Sender: TObject);
begin
  if not dsOrigem.DataSet.IsEmpty then
  begin
    if Application.MESSAGEBOX('Deseja realmente Excluir?',
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      try
        dsOrigem.DataSet.Delete;
      except
        ShowMessage('Erro ao Tentar Excluir Essa Origem Floretal. Contate o Suporte!');
      end;
    end;
  end;
end;

procedure TFOrigemFlorestal.SpeedButton1Click(Sender: TObject);
begin
  if edtPesquisa.Text <> '' then
  begin
    dsOrigem.DataSet.Filter:= 'DESCRICAO LIKE ' + QuotedStr(edtPesquisa.Text + '%');
    dsOrigem.DataSet.Filtered:= True;
  end
  else
    dsOrigem.DataSet.Filtered:= False;
end;

procedure TFOrigemFlorestal.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    SpeedButton1Click(Sender);
end;

procedure TFOrigemFlorestal.GridDblClick(Sender: TObject);
begin
  if Self.tag = 1 then
  begin
    Close;
  end;
end;

procedure TFOrigemFlorestal.FormCreate(Sender: TObject);
begin
  dsOrigem.DataSet.Open;
  pgcOrigem.ActivePage:= tbGrid;
end;

procedure TFOrigemFlorestal.FormDestroy(Sender: TObject);
begin
  if (dsOrigem.DataSet.State = dsedit) or (dsOrigem.DataSet.State = dsInsert)  then
    dsOrigem.DataSet.Cancel;
  dsOrigem.DataSet.Close;
end;

end.
