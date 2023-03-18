unit FrmRelatorioEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, Buttons, StdCtrls,
  Mask, ExtCtrls, rxToolEdit;

type
  TFRelatorioEstoque = class(TForm)
    Bevel2: TBevel;
    Label1: TLabel;
    spbRelatorioContrato: TSpeedButton;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    qrRel: TFDQuery;
    Bevel1: TBevel;
    lblCliente: TLabel;
    cbxSelecione: TComboBox;
    edtInicial: TDateEdit;
    edtFinal: TDateEdit;
    Label2: TLabel;
    Bevel3: TBevel;
    edtQuantidade: TEdit;
    Label3: TLabel;
    procedure spbRelatorioContratoClick(Sender: TObject);
    procedure cbxSelecioneChange(Sender: TObject);
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioEstoque: TFRelatorioEstoque;

implementation

{$R *.dfm}

procedure TFRelatorioEstoque.spbRelatorioContratoClick(Sender: TObject);
var
  Parametro: string;
begin
  if edtQuantidade.Text = '' then
    edtQuantidade.Text:= '0';
    
  Parametro:= 'SELECT '+
    'PR.CODIGO_BARRAS AS CODIGO, '+
    'PR.DESCRICAO AS DESCRICAO,';

  if cbxSelecione.ItemIndex = 0 then
  begin
    Parametro:= Parametro +
    '(SELECT FIRST 1 COALESCE(ESTOQUE_POSTERIOR,0) FROM PRODUTOS_ESTOQUES_LOG WHERE ID_PRODUTO = PR.CODIGO AND ESTOQUE_POSTERIOR >= :ESTOQUE AND DATA BETWEEN :DTINI AND :DTFIM ORDER BY DATA DESC) AS ESTOQUE_POSTERIOR, '+
    '(SELECT FIRST 1 COALESCE(ESTOQUE_POSTERIOR * PR.PRECO_CUSTO,0) FROM PRODUTOS_ESTOQUES_LOG WHERE ID_PRODUTO = PR.CODIGO AND ESTOQUE_POSTERIOR >= :ESTOQUE AND DATA BETWEEN :DTINI AND :DTFIM ORDER BY DATA DESC) AS VALOR_TOTAL, ';
    qrRel.Filter:= 'ESTOQUE_POSTERIOR >= '+ edtQuantidade.text;
  end
  else
  begin
    Parametro:= Parametro +
    '(SELECT FIRST 1 COALESCE(ESTOQUE_POSTERIOR,0) FROM PRODUTOS_ESTOQUES_LOG WHERE ID_PRODUTO = PR.CODIGO AND ESTOQUE_POSTERIOR <= :ESTOQUE AND DATA BETWEEN :DTINI AND :DTFIM ORDER BY DATA DESC) AS ESTOQUE_POSTERIOR, '+
    '(SELECT FIRST 1 COALESCE(ESTOQUE_POSTERIOR * PR.PRECO_CUSTO,0) FROM PRODUTOS_ESTOQUES_LOG WHERE ID_PRODUTO = PR.CODIGO AND ESTOQUE_POSTERIOR <= :ESTOQUE AND DATA BETWEEN :DTINI AND :DTFIM ORDER BY DATA DESC) AS VALOR_TOTAL, ';
    qrRel.Filter:= 'ESTOQUE_POSTERIOR <= '+ edtQuantidade.text;
  end;

  Parametro:= Parametro +
    'PR.PRECO_CUSTO AS VALOR_UNITARIO, '+
    'EP.NOME_FANTASIA AS EMPRESA, '+
    'EP.CNPJ AS EMPRESA_CNPJ, '+
    'EP.TELEFONE AS EMPRESA_FONE, '+
    'EP.LOGOMARCA AS EMPRESA_LOGO  '+
  'FROM PRODUTOS PR '+
    'LEFT JOIN EMPRESA EP ON (EP.CODIGO = 1) ';

  frxReport.LoadFromFile('C:\siace\rel\RelatorioEstoqueMaiorMenor.fr3');
  qrRel.Close;
  qrRel.SQL.Clear;
  qrRel.SQL.Add(parametro);
  qrRel.ParamByName('DTINI').AsDate:= edtInicial.Date;
  qrRel.ParamByName('DTFIM').AsDate:= edtFinal.Date;
  qrRel.ParamByName('ESTOQUE').AsInteger:= StrToInt(edtQuantidade.text);
  qrRel.Open;
  qrRel.Filtered:= True;
  frxReport.ShowReport;
end;

procedure TFRelatorioEstoque.cbxSelecioneChange(Sender: TObject);
begin
  if cbxSelecione.ItemIndex = 0 then
    Label3.Caption:= 'Maior ou igual a:'
  else
    Label3.Caption:= 'Menor ou igual a:';
end;

procedure TFRelatorioEstoque.edtQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not( key in['0'..'9',#08] ) then
    key:=#0;
end;

end.
