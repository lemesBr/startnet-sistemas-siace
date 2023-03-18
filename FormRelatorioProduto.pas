unit FormRelatorioProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxGradient,
  frxDBSet, Buttons, Mask, rxToolEdit;

type
  TFRelatorioProduto = class(TForm)
    rgbEstoque: TRadioGroup;
    frxDBDataset: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    frxReport: TfrxReport;
    qrRelatorio: TFDQuery;
    spbImprimirBoleto: TSpeedButton;
    rgbPorData: TGroupBox;
    edtDateInicio: TDateEdit;
    Label1: TLabel;
    edtDataFim: TDateEdit;
    Label2: TLabel;
    cbxPesquisaSimData: TCheckBox;
    rgbSituacao: TRadioGroup;
    procedure spbImprimirBoletoClick(Sender: TObject);
    procedure rgbSituacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioProduto: TFRelatorioProduto;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure TFRelatorioProduto.spbImprimirBoletoClick(Sender: TObject);
begin
  if (rgbSituacao.ItemIndex = 1) then
  begin
    frxReport.LoadFromFile('rel\RelatorioProdutos01.fr3');
    qrRelatorio.Close;
    qrRelatorio.SQL.Clear;
    qrRelatorio.SQL.Add('SELECT DISTINCT PR.CODIGO AS CODIGO_PRODUTO, PR.DESCRICAO AS PRODUTO,'+
                        'UN.ABREVIATURA AS UN, PR.ESTOQUE AS QUANTIDADE, PR.PRECO_CUSTO AS PRECO_CUSTO,'+
                        'PR.PRECO_VENDA AS PRECO_VENDA '+
                        'FROM PRODUTOS PR '+
                        'LEFT JOIN UNIDADES UN ON (UN.CODIGO = PR.UNIDADE) '+
                        'LEFT JOIN ESTOQUE  ES ON (ES.COD_PRO = PR.CODIGO )');

    if rgbSituacao.ItemIndex = 1 then
      qrRelatorio.SQL.Add('LEFT JOIN PEDIDOS_ITENS PT ON (PR.CODIGO = PT.CODIGO_PROD) WHERE PT.CODIGO_PROD Is Null');

    if (rgbEstoque.ItemIndex = 2) then
        qrRelatorio.SQL.Add('and PR.ESTOQUE > 0')
    else
    if (rgbEstoque.ItemIndex = 1) then
      qrRelatorio.SQL.Add('AND (PR.ESTOQUE = 0) OR (PR.ESTOQUE IS NULL)')
    else
    if (rgbEstoque.ItemIndex = 0) then
      qrRelatorio.SQL.Add('AND PR.ESTOQUE  < 0');

    qrRelatorio.Open;
  end;
  if (rgbSituacao.ItemIndex = 2) then
  begin
    frxReport.LoadFromFile('rel\RelatorioProdutos01.fr3');
    qrRelatorio.Close;
    qrRelatorio.SQL.Clear;
    qrRelatorio.SQL.Add('SELECT DISTINCT PR.CODIGO AS CODIGO_PRODUTO, PR.DESCRICAO AS PRODUTO,'+
                        'UN.ABREVIATURA AS UN, PR.ESTOQUE AS QUANTIDADE,PR.PRECO_CUSTO AS PRECO_CUSTO,'+
                        'PR.PRECO_VENDA AS PRECO_VENDA '+
                        'FROM PRODUTOS PR '+
                        'LEFT JOIN UNIDADES UN ON (UN.CODIGO = PR.UNIDADE)');


    if (rgbEstoque.ItemIndex = 2) then
        qrRelatorio.SQL.Add('where PR.ESTOQUE > 0')
    else
    if (rgbEstoque.ItemIndex = 1) then
      qrRelatorio.SQL.Add('where (PR.ESTOQUE = 0) OR (PR.ESTOQUE IS NULL)')
    else
    if (rgbEstoque.ItemIndex = 0) then
      qrRelatorio.SQL.Add('where PR.ESTOQUE  < 0');

    qrRelatorio.Open;
  end ;

  if (rgbSituacao.ItemIndex = 0) then
  begin
    frxReport.LoadFromFile('rel\RelatorioProdutos02.fr3');
    qrRelatorio.Close;
    qrRelatorio.SQL.Clear;
    qrRelatorio.SQL.Add('SELECT PR.CODIGO AS CODIGO_PRODUTO,PR.CODIGO_BARRAS AS CODIGO_EAN,'+
                        'PR.DESCRICAO AS PRODUTO,UN.ABREVIATURA AS UN, PN.QUANTIDADE AS QUANTIDADE_VENDIDO,'+
                        'PR.PRECO_VENDA AS PRECO_VENDA, PN.DESCONTO AS DESCONTO,PN.PRECO_TOTAL AS PRECO_TOTAL,'+
                        'PD.DATA_PEDIDO AS DATA_VENDIDO '+
                        'FROM PEDIDOS_ITENS PN '+
                        'LEFT JOIN PRODUTOS PR ON (PR.CODIGO = PN.CODIGO_PROD) '+
                        'LEFT JOIN UNIDADES UN ON (UN.CODIGO = PR.UNIDADE) '+
                        'LEFT JOIN PEDIDOS  PD ON (PD.CODIGO = PN.CODIGO_ID)');
    if (cbxPesquisaSimData.Checked = True) then
    begin
      qrRelatorio.SQL.Add('WHERE PD.DATA_PEDIDO between :INICIO AND :FIM');
      if (rgbEstoque.ItemIndex = 2) then
        qrRelatorio.SQL.Add('AND PR.ESTOQUE > 0')
      else
      if (rgbEstoque.ItemIndex = 1) then
        qrRelatorio.SQL.Add('AND (PR.ESTOQUE = 0) OR (PR.ESTOQUE IS NULL)')
      else
      if (rgbEstoque.ItemIndex = 0) then
        qrRelatorio.SQL.Add('AND PR.ESTOQUE < 0');

      qrRelatorio.ParamByName('INICIO').AsDateTime:= edtDateInicio.Date;
      qrRelatorio.ParamByName('FIM').AsDateTime:= edtDataFim.Date;
    end
    else
    begin
      if (rgbEstoque.ItemIndex = 2) then
        qrRelatorio.SQL.Add('WHERE PR.ESTOQUE > 0')
      else
      if (rgbEstoque.ItemIndex = 1) then
        qrRelatorio.SQL.Add('WHERE (PR.ESTOQUE = 0) OR (PR.ESTOQUE IS NULL)')
      else
      if (rgbEstoque.ItemIndex = 0) then
        qrRelatorio.SQL.Add('WHERE PR.ESTOQUE < 0');
    end;
    qrRelatorio.Open;
  end;
  frxReport.ShowReport;
end;

procedure TFRelatorioProduto.rgbSituacaoClick(Sender: TObject);
begin
  if rgbSituacao.ItemIndex = 2 then
  begin
    cbxPesquisaSimData.Checked:= False;
    rgbPorData.Enabled:= False;
  end
  else
  begin
    cbxPesquisaSimData.Checked:= False;
    rgbPorData.Enabled:= True;
  end;
end;

end.
