unit frmCadastroAlteracaoComprasMadeira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, acPNG, Mask, Grids, DBGrids,
  ActnList, Buttons, DB, rxToolEdit, System.Actions;

type
  TFCadastroAlteracaoComprasMadeiras = class(TForm)
    Panel1: TPanel;
    lblTituloForm: TLabel;
    lblValorTotalTitle: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    edtOrigemFlorestal: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    imgSearchOrigem: TImage;
    edtFornecedor: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    imgSearchFornecedor: TImage;
    edtCarregador: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    imgSearchCarregador: TImage;
    edtNRomaneio: TEdit;
    Label8: TLabel;
    edtNDocumento: TEdit;
    Label9: TLabel;
    edtSerie: TEdit;
    Label10: TLabel;
    edtDataCompra: TDateEdit;
    Label11: TLabel;
    edtDataNota: TDateEdit;
    Label12: TLabel;
    cbxCondicaoPagamento: TComboBox;
    Label13: TLabel;
    edtDataVencimento: TDateEdit;
    Label14: TLabel;
    edtValorPagarFornecedor: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    edtValorPagarCarregador: TEdit;
    imgSearchEsplanador: TImage;
    edtEsplanador: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    imgSearchPatio: TImage;
    edtPatio: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    imgSearchTransportadora: TImage;
    edtTransportadora: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    edtValorPagarTransportadora: TEdit;
    Label23: TLabel;
    edtValorPagarEsplanador: TEdit;
    Label24: TLabel;
    Grid: TDBGrid;
    Panel3: TPanel;
    Bevel2: TBevel;
    Panel4: TPanel;
    spbSalvar: TSpeedButton;
    spbCancelar: TSpeedButton;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    ActionList1: TActionList;
    ActionAdicionarItem: TAction;
    ActionAlterarItem: TAction;
    ActionExcluirItem: TAction;
    ActionCancelar: TAction;
    ActionSalvar: TAction;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    lblValorTransportadora: TLabel;
    lblValorCarregador: TLabel;
    lblValorEsplanador: TLabel;
    lblValorTotal: TLabel;
    cbxTipoDesconto: TComboBox;
    edtTotalDesconto: TEdit;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label34: TLabel;
    lblTotalLiquido: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    lblQuantidadeItens: TLabel;
    lblFlorestalm3: TLabel;
    lblComercialm3: TLabel;
    dsItems: TDataSource;
    Panel5: TPanel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label30: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    procedure spbIncluirClick(Sender: TObject);
    procedure imgSearchFornecedorClick(Sender: TObject);
    procedure imgSearchTransportadoraClick(Sender: TObject);
    procedure imgSearchCarregadorClick(Sender: TObject);
    procedure imgSearchEsplanadorClick(Sender: TObject);
    procedure edtFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtEsplanadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCarregadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtTransportadoraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imgSearchOrigemClick(Sender: TObject);
    procedure imgSearchPatioClick(Sender: TObject);
    procedure edtOrigemFlorestalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPatioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spbCancelarClick(Sender: TObject);
    procedure edtTotalDescontoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure SomaDesconto;

  published
     function ConvertCurrency(Text: String):Currency;

     procedure ConvertCurrencyString(Sender: TObject);

     procedure StringFormatCurrency2(Sender: TObject);

     procedure StringFormatCurrency3(Sender: TObject);

     procedure SomenteNumerosVirgulaPontoKeyPress(Sender: TObject; var Key: Char);
  end;

var
  FCadastroAlteracaoComprasMadeiras: TFCadastroAlteracaoComprasMadeiras;

implementation

uses xloc_fornecedor, Constransportador, ConsClientes, frmOrigemFlorestal,
  frmPatios, DMOS1, ModulodeDados, uDMMovimentacao;

{$R *.dfm}

procedure TFCadastroAlteracaoComprasMadeiras.spbIncluirClick(
  Sender: TObject);
begin
  //
end;

Function TFCadastroAlteracaoComprasMadeiras.ConvertCurrency(Text: String): Currency;
var
  VALOR: String;
begin
  //Se o text for diferente de vazio
  if Text <> '' then
  begin
    //Variavel valor recebe o mesmo
    VALOR:= Text;
    //Faz um loop para encontrar o ponto e se encontrar deleta o mesmo
    while Pos('.',VALOR) > 0 do
      Delete(VALOR,Pos('.',VALOR),1);

    while Pos('R$',VALOR) > 0 do
      Delete(VALOR,Pos('R$',VALOR),2);
    //Remove os espaços e convert para Currency
    Result:= StrToCurr(Trim(Valor));
  end
  //Se for vazio passa 0
  else
    Result:= 0;
end;

procedure TFCadastroAlteracaoComprasMadeiras.imgSearchFornecedorClick(
  Sender: TObject);
begin
  try
    frmxloc_fornecedor:= Tfrmxloc_fornecedor.Create(nil);
    frmxloc_fornecedor.ShowModal;
  finally
    edtFornecedor.Tag:= frmxloc_fornecedor.query.FieldByName('CODIGO').AsInteger;
    edtFornecedor.Text:= frmxloc_fornecedor.query.FieldByName('NOME').asString;
    FreeAndNil(frmxloc_fornecedor);
  end;
end;

procedure TFCadastroAlteracaoComprasMadeiras.imgSearchTransportadoraClick(
  Sender: TObject);
begin
  try
    FormConsTransp:= TFormConsTransp.Create(nil);
    FormConsTransp.ShowModal;
  finally
    edtTransportadora.tag:= DM.dts_transportador.DataSet.fieldbyname('CODIGO').AsInteger;
    edtTransportadora.Text:= DM.dts_transportador.DataSet.fieldbyname('NOME_TRANSP').AsString;
    FreeAndNil(FormConsTransp);
  end;
end;

procedure TFCadastroAlteracaoComprasMadeiras.imgSearchCarregadorClick(
  Sender: TObject);
begin
  try
    FormConsClientes:= TFormConsClientes.Create(nil);
    FormConsClientes.ShowModal;
  finally
    edtCarregador.tag:= DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger;
    edtCarregador.Text:= DM.DTS_Clientes.DataSet.fieldbyname('NOME_RS').AsString;
    FreeAndNil(FormConsClientes);
  end;
end;

procedure TFCadastroAlteracaoComprasMadeiras.imgSearchEsplanadorClick(
  Sender: TObject);
begin
  try
    FormConsClientes:= TFormConsClientes.Create(nil);
    FormConsClientes.ShowModal;
  finally
    edtEsplanador.tag:= DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger;
    edtEsplanador.Text:= DM.DTS_Clientes.DataSet.fieldbyname('NOME_RS').AsString;
    FreeAndNil(FormConsClientes);
  end;
end;

procedure TFCadastroAlteracaoComprasMadeiras.edtFornecedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_F1 then
    imgSearchFornecedorClick(Sender);
end;

procedure TFCadastroAlteracaoComprasMadeiras.edtEsplanadorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_F1 then
    imgSearchEsplanadorClick(Sender);
end;

procedure TFCadastroAlteracaoComprasMadeiras.edtCarregadorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_F1 then
    imgSearchCarregadorClick(Sender);
end;

procedure TFCadastroAlteracaoComprasMadeiras.edtTransportadoraKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_F1 then
    imgSearchTransportadoraClick(Sender);
end;

procedure TFCadastroAlteracaoComprasMadeiras.imgSearchOrigemClick(
  Sender: TObject);
begin
  try
    FOrigemFlorestal:= TFOrigemFlorestal.Create(nil);
    FOrigemFlorestal.Tag:= 1;
    FOrigemFlorestal.ShowModal;
  finally
    edtOrigemFlorestal.Tag:= FOrigemFlorestal.dsOrigem.DataSet.FieldByName('ID').AsInteger;
    edtOrigemFlorestal.Text:= FOrigemFlorestal.dsOrigem.DataSet.FieldByName('DESCRICAO').AsString;
    FreeAndNil(FOrigemFlorestal);
  end;
end;

procedure TFCadastroAlteracaoComprasMadeiras.imgSearchPatioClick(
  Sender: TObject);
begin
  try
    FPatios:= TFPatios.Create(nil);
    FPatios.Tag:= 1;
    FPatios.ShowModal;
  finally
    edtPatio.Tag:= FPatios.dsOrigem.DataSet.FieldByName('ID').AsInteger;
    edtPatio.Text:= FPatios.dsOrigem.DataSet.FieldByName('DESCRICAO').AsString;
    FreeAndNil(FPatios);
  end;
end;

procedure TFCadastroAlteracaoComprasMadeiras.edtOrigemFlorestalKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_F1 then
    imgSearchOrigemClick(Sender);
end;

procedure TFCadastroAlteracaoComprasMadeiras.edtPatioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_F1 then
    imgSearchPatioClick(Sender);
end;

procedure TFCadastroAlteracaoComprasMadeiras.spbCancelarClick(
  Sender: TObject);
begin
  DMMovimentacao.qrMD_ENTRADA_TORAS.Cancel;
  Close;
end;

procedure TFCadastroAlteracaoComprasMadeiras.SomaDesconto;
var
  Result,Fornecedor,Transportadora,Esplanador,Carregador,Diminuir: Currency;
begin
  if ConvertCurrency(lblValorTotal.Caption) > 0 then
  begin
    Diminuir:= ConvertCurrency(edtValorPagarFornecedor.Hint) + ConvertCurrency(lblValorTransportadora.Caption) +
    ConvertCurrency(lblValorCarregador.Caption) + ConvertCurrency(lblValorEsplanador.Caption);

    if ConvertCurrency(lblComercialm3.Caption) > 0 then
    begin
      Fornecedor:= ConvertCurrency(edtValorPagarFornecedor.Text);
      edtValorPagarFornecedor.Hint:= FloatToStrF(Fornecedor,ffNumber,12,2);
    end
    else
    begin
      Fornecedor:= 0;
      edtValorPagarFornecedor.Hint:= '0';
    end;

    Transportadora:= ConvertCurrency(edtValorPagarTransportadora.Text) * ConvertCurrency(lblComercialm3.Caption);
    lblValorTransportadora.Caption:= FloatToStrF(Transportadora,ffNumber,12,2);
    Esplanador:= ConvertCurrency(edtValorPagarEsplanador.Text) * ConvertCurrency(lblComercialm3.Caption);
    lblValorEsplanador.Caption:= FloatToStrF(Esplanador,ffNumber,12,2);
    Carregador:= ConvertCurrency(edtValorPagarCarregador.Text) * ConvertCurrency(lblComercialm3.Caption);
    lblValorCarregador.Caption:= FloatToStrF(Carregador,ffNumber,12,2);

    lblValorTotal.Caption:= FloatToStrF(ConvertCurrency(lblValorTotal.Caption) - Diminuir,ffCurrency,12,2);
    lblValorTotal.Caption:= FloatToStrF(ConvertCurrency(lblValorTotal.Caption) + Fornecedor +
    Transportadora + Esplanador + Carregador,ffCurrency,12,2);
  end;

  if cbxTipoDesconto.ItemIndex = 0 then
    Result:= ConvertCurrency(lblValorTotal.Caption) -
    ((ConvertCurrency(edtTotalDesconto.Text) / 100) * ConvertCurrency(lblValorTotal.Caption))
  else
    Result:= ConvertCurrency(lblValorTotal.Caption) - ConvertCurrency(edtTotalDesconto.Text);

  lblTotalLiquido.Caption:= FloatToStrF(Result,ffCurrency,12,2);
  lblValorTotalTitle.Caption:= lblTotalLiquido.Caption;
end;

procedure TFCadastroAlteracaoComprasMadeiras.edtTotalDescontoChange(
  Sender: TObject);
begin
  SomaDesconto;
end;

procedure TFCadastroAlteracaoComprasMadeiras.ConvertCurrencyString(
  Sender: TObject);
var
  VALOR: String;
begin
  if TLabeledEdit(Sender).Text <> '' then
  begin
    VALOR:= TLabeledEdit(Sender).Text;
    while Pos('.',VALOR) > 0 do
      Delete(VALOR,Pos('.',VALOR),1);

    TLabeledEdit(Sender).Text:= VALOR;
  end;
end;

procedure TFCadastroAlteracaoComprasMadeiras.StringFormatCurrency2(
  Sender: TObject);
begin
  if TEdit(Sender).Text <> '' then
  begin
    TEdit(Sender).Text:= FloatToStrF(ConvertCurrency(TLabeledEdit(Sender).Text),ffNumber,12,2);
  end;
end;

procedure TFCadastroAlteracaoComprasMadeiras.StringFormatCurrency3(
  Sender: TObject);
begin
  if TEdit(Sender).Text <> '' then
  begin
    TEdit(Sender).Text:= FloatToStrF(ConvertCurrency(TLabeledEdit(Sender).Text),ffNumber,12,3);
  end;
end;

procedure TFCadastroAlteracaoComprasMadeiras.SomenteNumerosVirgulaPontoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (not(Key in ['0'..'9','.',','])) and (ord(Key)<> 8) and (Key <> #0)then
    Key:= #0;
end;

end.
