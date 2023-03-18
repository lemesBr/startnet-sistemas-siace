unit frmCompraMadeira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, DB;

type
  TFCompraMadeira = class(TForm)
    pnlNav: TPanel;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    Grid: TDBGrid;
    pnlPesquisa: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    edtPesquisa: TEdit;
    cbxTipoContrato: TComboBox;
    dsCompra: TDataSource;
    procedure spbIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCompraMadeira: TFCompraMadeira;

implementation

uses uDMMovimentacao, frmCadastroAlteracaoComprasMadeira;

{$R *.dfm}

procedure TFCompraMadeira.spbIncluirClick(Sender: TObject);
begin
  try
    FCadastroAlteracaoComprasMadeiras:= TFCadastroAlteracaoComprasMadeiras.Create(nil);
    dsCompra.DataSet.Insert;
    FCadastroAlteracaoComprasMadeiras.ShowModal;
  finally
    FreeAndNil(FCadastroAlteracaoComprasMadeiras);
    dsCompra.DataSet.Refresh;
  end;
end;

end.
