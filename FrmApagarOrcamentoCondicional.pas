unit FrmApagarOrcamentoCondicional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons;

type
  TFApagaOrcamentoCondicional = class(TForm)
    Panel1: TPanel;
    GridItens: TDBGrid;
    edtCodigoItem: TEdit;
    Label1: TLabel;
    spbVoltar: TSpeedButton;
    procedure spbVoltarClick(Sender: TObject);
    procedure edtCodigoItemKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FApagaOrcamentoCondicional: TFApagaOrcamentoCondicional;

implementation

uses Vendas;

{$R *.dfm}

procedure TFApagaOrcamentoCondicional.spbVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TFApagaOrcamentoCondicional.edtCodigoItemKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    formVendas.Dts_orcamentos_itens.DataSet.Filter:= 'CODIGO_PRODUTO = '+ edtCodigoItem.Text;
    formVendas.Dts_orcamentos_itens.DataSet.Filtered:= True;

    if not formVendas.Dts_orcamentos_itens.DataSet.IsEmpty then
    begin
      formVendas.Dts_orcamentos_itens.DataSet.Delete;
      formVendas.Dts_orcamentos_itens.DataSet.Filtered:= False;
      IF formVendas.sds_pedidos_itens.Eof then
      begin
        if formVendas.DBGRID.COLUMNS.Grid.Fields[7].Text = '' then
        begin
          formVendas.NValor:=1;
          formVendas.NItem:=formVendas.NItem+formVendas.NValor;
          formVendas.Sds_pedidos_itens.Edit;
          formVendas.Sds_pedidos_itensCODIGO.AsInteger:=(formVendas.NItem);
          formVendas.Sds_pedidos_itensITEN.AsInteger :=(formVendas.NItem);
          formVendas.Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
          formVendas.Sds_pedidos_itensCODIGO_ID.Text := formVendas.N_venda.Text;
          formVendas.Sds_pedidos_itensQUANTIDADE.Text := '0,00';
          formVendas.Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
          formVendas.Sds_pedidos_itensDESCONTO.Text := '0,00';
          formVendas.Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
          formVendas.Sds_pedidos_itensFRACAO.Text := '1';
        end;
      end;

      formVendas.Sds_Orcamentos_itens.Last;

      formVendas.Sds_Orcamentos_itens.Edit;
      formVendas.ComboEdit2.Visible := True;
    end
    else
      formVendas.Dts_orcamentos_itens.DataSet.Filtered:= False;
  end;
end;

end.
