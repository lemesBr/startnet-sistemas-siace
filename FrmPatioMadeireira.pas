unit FrmPatioMadeireira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  ComCtrls;

type
  TFPatioMadeireira = class(TForm)
    pgcPatio: TPageControl;
    tbGrid: TTabSheet;
    pnlNav: TPanel;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    Grid: TDBGrid;
    tbEdit: TTabSheet;
    Bevel2: TBevel;
    Label1: TLabel;
    pnlFooterEdit: TPanel;
    spbCancelar: TSpeedButton;
    spbSalvar: TSpeedButton;
    Bevel1: TBevel;
    edtPatio: TDBEdit;
    dsPatio: TDataSource;
    procedure spbIncluirClick(Sender: TObject);
    procedure spbAlterarClick(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPatioMadeireira: TFPatioMadeireira;

implementation

uses uDMMovimentacao, clientes;

{$R *.dfm}

procedure TFPatioMadeireira.spbIncluirClick(Sender: TObject);
begin
  dsPatio.DataSet.Insert;
  pgcPatio.ActivePage:= tbEdit;
end;

procedure TFPatioMadeireira.spbAlterarClick(Sender: TObject);
begin
  if not dsPatio.DataSet.IsEmpty then
  begin
    dsPatio.DataSet.Edit;
    pgcPatio.ActivePage:= tbEdit;
  end;
end;

procedure TFPatioMadeireira.spbExcluirClick(Sender: TObject);
begin
  try
    if not dsPatio.DataSet.IsEmpty then
    begin
      if Application.MESSAGEBOX('Deseja realmente Excluir o item selecionado?',
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        dsPatio.DataSet.Delete;
      end;
    end;
  except
    Application.MessageBox('Erro ao tentar excluir!','Atenção',MB_ICONWARNING);
  end;
end;

procedure TFPatioMadeireira.spbCancelarClick(Sender: TObject);
begin
  dsPatio.DataSet.Cancel;
  pgcPatio.ActivePage:= tbGrid;
end;

procedure TFPatioMadeireira.spbSalvarClick(Sender: TObject);
begin
  if (edtPatio.Text = '') then
  begin
    Application.MessageBox('Nenhum campo pode ficar vazio!','Atenção',MB_ICONWARNING);
    Exit;
  end
  else
  begin
    dsPatio.DataSet.Post;
    pgcPatio.ActivePage:= tbGrid;
  end;
end;

procedure TFPatioMadeireira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsPatio.DataSet.Close;
  Action:=CaFree;
  FormClientes:=nil;
end;

procedure TFPatioMadeireira.FormCreate(Sender: TObject);
begin
  dsPatio.DataSet.Open;
  pgcPatio.ActivePage:= tbGrid;
end;

end.
