unit frmPatios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, Buttons,
  ComCtrls, DB;

type
  TFPatios = class(TForm)
    pgcOrigem: TPageControl;
    tbGrid: TTabSheet;
    pnlNav: TPanel;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    Grid: TDBGrid;
    pnlPesquisa: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edtPesquisa: TEdit;
    tbEdit: TTabSheet;
    Label1: TLabel;
    Bevel1: TBevel;
    spbCancelar: TSpeedButton;
    spbSalvar: TSpeedButton;
    edtDescricao: TDBEdit;
    dsOrigem: TDataSource;
    procedure spbIncluirClick(Sender: TObject);
    procedure spbAlterarClick(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure spbSalvarClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPatios: TFPatios;

implementation

uses uDMMovimentacao;

{$R *.dfm}

procedure TFPatios.spbIncluirClick(Sender: TObject);
begin
  pgcOrigem.ActivePage:= tbEdit;
  dsOrigem.DataSet.Insert;
  edtDescricao.SetFocus;
end;

procedure TFPatios.spbAlterarClick(Sender: TObject);
begin
  if not dsOrigem.DataSet.IsEmpty then
  begin
    dsOrigem.DataSet.Edit;
    pgcOrigem.ActivePage:= tbEdit;
  end;
end;

procedure TFPatios.spbExcluirClick(Sender: TObject);
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

procedure TFPatios.SpeedButton1Click(Sender: TObject);
begin
  if edtPesquisa.Text <> '' then
  begin
    dsOrigem.DataSet.Filter:= 'DESCRICAO LIKE ' + QuotedStr(edtPesquisa.Text + '%');
    dsOrigem.DataSet.Filtered:= True;
  end
  else
    dsOrigem.DataSet.Filtered:= False;  
end;

procedure TFPatios.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    SpeedButton1Click(Sender);  
end;

procedure TFPatios.GridDblClick(Sender: TObject);
begin
  if Self.tag = 1 then
  begin
    Close;
  end;
end;

procedure TFPatios.spbSalvarClick(Sender: TObject);
begin
  dsOrigem.DataSet.Post;
  pgcOrigem.ActivePage:= tbGrid;
end;

procedure TFPatios.spbCancelarClick(Sender: TObject);
begin
  dsOrigem.DataSet.Cancel;
  pgcOrigem.ActivePage:= tbGrid;
end;

procedure TFPatios.FormCreate(Sender: TObject);
begin
  dsOrigem.DataSet.Open;
  pgcOrigem.ActivePage:= tbGrid;
end;

procedure TFPatios.FormDestroy(Sender: TObject);
begin
  if (dsOrigem.DataSet.State = dsedit) or (dsOrigem.DataSet.State = dsInsert)  then
    dsOrigem.DataSet.Cancel;
  dsOrigem.DataSet.Close;
end;

end.
